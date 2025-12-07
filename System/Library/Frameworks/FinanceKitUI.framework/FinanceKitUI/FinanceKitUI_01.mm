uint64_t sub_238416B1C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238416B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FB08, &qword_238773D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238416BD4()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_238416C3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238416C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387595E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238416CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387595E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238416D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_238416E18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238416EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238416F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238416FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCD8, &unk_238774360);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23841706C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCD8, &unk_238774360);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23841711C()
{
  v1 = (type metadata accessor for FetchedExtractedOrderDetails(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FCD8, &unk_238774360);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238417234()
{
  v1 = v0;
  v2 = *(type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0) - 8);
  v34 = *(v2 + 80);
  v32 = *(v2 + 64);
  v33 = (v34 + 16) & ~v34;
  v3 = v0 + v33;

  v4 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v5 = v3 + v4[5];

  v6 = *(type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0) + 24);
  v7 = sub_238757F50();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v4[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v11 = *(*(v10 - 8) + 8);
  v11(v3 + v9, v10);
  v12 = v3 + v4[7];
  v13 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v31 = v1;
    v14 = sub_2387581B0();
    (*(*(v14 - 8) + 8))(v12, v14);
    v15 = v12 + *(v13 + 20);
    v11(v15, v10);
    v16 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
    v17 = v16[5];
    v18 = sub_238757FA0();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v15 + v17, 1, v18))
    {
      (*(v19 + 8))(v15 + v17, v18);
    }

    v20 = v16[6];
    v21 = sub_238757F70();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v15 + v20, 1, v21))
    {
      (*(v22 + 8))(v15 + v20, v21);
    }

    v23 = v16[7];
    v24 = sub_238757F90();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v15 + v23, 1, v24))
    {
      (*(v25 + 8))(v15 + v23, v24);
    }

    v1 = v31;
  }

  v26 = v3 + v4[9];

  v27 = *(type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0) + 36);
  v28 = sub_238758090();
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v26 + v27, 1, v28))
  {
    (*(v29 + 8))(v26 + v27, v28);
  }

  return MEMORY[0x2821FE8E8](v1, v33 + v32, v34 | 7);
}

uint64_t sub_23841774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23841780C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2384178FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OrderImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v4 + v7;

  v10 = v5[9];
  v11 = sub_23875AF90();
  (*(*(v11 - 8) + 8))(v4 + v7 + v10, v11);

  v12 = v5[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C450();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  else
  {
  }

  v14 = v5[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C8A0();
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_238417AEC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[14]];

  return v15(v16, a2, v14);
}

char *sub_238417C70(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[14]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_238417DF4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_23875C450();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_23875C8A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_238417F60(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_23875C450();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_23875C8A0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2384180CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OrderImageInternalContainer(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23875C610();
  type metadata accessor for OrderImageModel(255);
  swift_getWitnessTable();
  sub_2385CAFDC(&qword_27DF0ECC0, type metadata accessor for OrderImageModel, &protocol conformance descriptor for OrderImageModel);
  sub_23875E270();
  swift_getWitnessTable();
  sub_23875C730();
  return swift_getWitnessTable();
}

uint64_t sub_23841821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderImageModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2384182D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderImageModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void *sub_2384183D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2385CA78C(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

uint64_t sub_238418478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderImageModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238418538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderImageModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2384185F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OrderImageInternal(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_238418640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OrderImageInternal(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v6 + 48) & ~v6;
  v34 = *(*(v5 - 1) + 64);
  v8 = sub_238758960();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 80);
  v33 = *(v38 + 64);
  v10 = sub_238758970();
  v36 = *(v10 - 8);
  v37 = v10;
  v32 = *(v36 + 80);
  v31 = *(v36 + 64);
  v35 = sub_2387589C0();
  v11 = *(v35 - 8);
  v12 = *(v11 + 80);
  v30 = *(v11 + 64);
  swift_unknownObjectRelease();
  v13 = v4 + v7;

  v14 = type metadata accessor for OrderImageModel(0);
  v15 = v14[6];
  v16 = sub_23875AF90();
  (*(*(v16 - 8) + 8))(v4 + v7 + v15, v16);
  v17 = v14[9];
  v18 = sub_23875C450();
  (*(*(v18 - 8) + 8))(v4 + v7 + v17, v18);
  v19 = v14[10];
  v20 = sub_23875C8A0();
  (*(*(v20 - 8) + 8))(v4 + v7 + v19, v20);
  __swift_destroy_boxed_opaque_existential_1((v4 + v7 + v5[9]));

  v21 = *(v4 + v7 + v5[11]);
  if (v21 >= 2)
  {
  }

  v22 = *(v13 + v5[12]);
  if (v22 >= 2)
  {
  }

  v23 = v13 + v5[13];
  if (*(v23 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
  }

  v24 = v6 | v9 | v32 | v12;
  v25 = (v9 + ((((((v34 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9;
  v26 = (v25 + v33 + v32) & ~v32;
  v27 = (v26 + v31 + v12) & ~v12;
  v28 = (v30 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2384348B8(*(v13 + v5[14]), *(v13 + v5[14] + 8));

  (*(v38 + 8))(v4 + v25, v39);
  (*(v36 + 8))(v4 + v26, v37);
  (*(v11 + 8))(v4 + v27, v35);
  __swift_destroy_boxed_opaque_existential_1((v4 + v28));

  return MEMORY[0x2821FE8E8](v4, v28 + 40, v24 | 7);
}

uint64_t sub_238418A30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238418A68(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0FFC8, &qword_238774A38);
  sub_23875D1C0();
  sub_23875D1C0();
  sub_23875D6E0();
  sub_23875C8C0();
  sub_23875C6E0();
  sub_23875C8C0();
  sub_23875C8C0();
  sub_2385CADE4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2385CAFDC(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_2385CAFDC(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23875E2C0();
  return swift_getWitnessTable();
}

uint64_t sub_238418C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_23875C880();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_238418DB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23875C880();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238418F2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_238418FE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238419098()
{
  v1 = type metadata accessor for BankConnectTermsAndConditionsHeroView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_2383FC164(*(v5 + 8), *(v5 + 16));
  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C450();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238419248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CB20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2384192B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2384192F8()
{
  v1 = type metadata accessor for BankConnectTermsAndConditionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  sub_2383FC164(*(v0 + v3), *(v0 + v3 + 8));

  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C880();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 36);
  v9 = sub_23875C880();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841948C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E48, &qword_238761CD0);
  sub_2385D5938();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841950C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_238419558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2384195C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238419634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23875B940();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_23875AD80();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_238419780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_23875B940();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_23875AD80();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2384198D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238419A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238419B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23875B940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_23875AF90();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_238419C64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23875B940();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23875AF90();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238419D88()
{
  v1 = (type metadata accessor for OrderProviderLogoButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v6 = *(v5 + 24);
  v7 = sub_23875B940();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v5 + 28);
  v9 = sub_23875AF90();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v0 + v3 + v1[9];

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C6D0();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238419F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23841A0B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F18, &unk_2387756C0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23841A1E4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_23841A368(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23875AF90();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23841A534()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10490, &qword_2387755F8);
  sub_23875C950();
  sub_23843A3E8(&qword_27DF104A0, &qword_27DF10490, &qword_2387755F8, MEMORY[0x277CDF028]);
  sub_2385DEEA8(&qword_27DF0A778, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841A614()
{
  v1 = type metadata accessor for OrderProviderLogo(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = sub_23875AF90();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v0 + v3 + v1[9];

  v9 = v0 + v3 + v1[10];
  if (*(v9 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
  }

  v10 = v5 + v1[11];
  if (*(v10 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
  }

  v11 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C450();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C8A0();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841A850()
{
  v1 = (type metadata accessor for OrderImageModel(0) - 8);
  v28 = *(*v1 + 80);
  v2 = (v28 + 32) & ~v28;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for OrderProviderLogo(0);
  v27 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v27) & ~v27;
  v26 = *(*(v4 - 1) + 64);
  swift_unknownObjectRelease();
  v6 = v0 + v2;

  v7 = v1[8];
  v8 = sub_23875AF90();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v10 = v1[11];
  v11 = sub_23875C450();
  v25 = *(*(v11 - 8) + 8);
  v25(v6 + v10, v11);
  v12 = v1[12];
  v13 = sub_23875C8A0();
  v14 = v6 + v12;
  v15 = v5;
  v16 = *(*(v13 - 8) + 8);
  v16(v14, v13);
  v17 = v0 + v15;

  v9(v0 + v15 + v4[6], v8);
  v18 = v0 + v15 + v4[9];

  v19 = v0 + v15 + v4[10];
  if (*(v19 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
  }

  v20 = v17 + v4[11];
  if (*(v20 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
  }

  v21 = v4[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25(v17 + v21, v11);
  }

  else
  {
  }

  v22 = v4[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16(v17 + v22, v13);
  }

  else
  {
  }

  v23 = (v26 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + v23));

  return MEMORY[0x2821FE8E8](v0, v23 + 40, v28 | v27 | 7);
}

uint64_t sub_23841ABB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_23875AD80();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7] + 8);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_23841AD14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875B940();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_23875AD80();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = -a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23841AEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10610, &qword_2387759B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10608, &qword_2387759B0);
  sub_23875D2E0();
  v0 = MEMORY[0x277CDF028];
  sub_23843A3E8(&qword_27DF10618, &qword_27DF10608, &qword_2387759B0, MEMORY[0x277CDF028]);
  sub_2385DEEA8(&qword_27DF0F7C0, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  swift_getOpaqueTypeConformance2();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841B044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CBD0();
  *a1 = result;
  return result;
}

uint64_t sub_23841B0A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CA50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23841B0E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10630, &qword_238775A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23841B1C0(void *a1)
{

  sub_2385E3634(v1, v2);
}

uint64_t sub_23841B208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23841B280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23841B2FC()
{
  v1 = *(type metadata accessor for OrderListDoneButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23875C600();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841B408()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23841B454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23841B510(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875B940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23841B5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23841B6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23841B7E4()
{
  v1 = type metadata accessor for OrderFileAttachmentPreview(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_23875B940();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C600();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841B9A0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_23875B0A0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_23841BB18(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23875B0A0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23841BC90(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_23875B0A0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2387590B0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_23841BDFC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23875B0A0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2387590B0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23841BF68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  v11 = sub_23875BC40();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  v14 = type metadata accessor for MerchantImage.ViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  v15 = type metadata accessor for OrderActionsMenuContext(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  v16 = sub_23875B0A0();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  v18 = type metadata accessor for ProductImage.ViewModel(0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_15;
  }

  v20 = *(a1 + a3[12]);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

uint64_t sub_23841C1E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875A710();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_23875BC40();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for MerchantImage.ViewModel(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = type metadata accessor for OrderActionsMenuContext(0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          v18 = sub_23875B0A0();
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[9];
          }

          else
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
            if (*(*(v19 - 8) + 84) == a3)
            {
              v10 = v19;
              v14 = *(v19 - 8);
              v15 = a4[10];
            }

            else
            {
              result = type metadata accessor for ProductImage.ViewModel(0);
              if (*(*(result - 8) + 84) != a3)
              {
                *(a1 + a4[12]) = (a2 - 1);
                return result;
              }

              v10 = result;
              v14 = *(result - 8);
              v15 = a4[11];
            }
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23841C464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v7 = *(active - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, active);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23841C5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23841C704(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875B0A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for ProductImage.ViewModel(0);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = type metadata accessor for OrderNavigationDestination(0);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8]);
          if (v17 >= 2)
          {
            return v17 - 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_23841C8A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875B0A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for ProductImage.ViewModel(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for OrderNavigationDestination(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23841CA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23875DA00();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23841CB8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23875DA00();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23841CCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875B0A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23841CD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875B0A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23841CDD0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_23875BB40();
  [v2 setStoredArchiveDate_];
}

id sub_23841CE4C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 year];
  *a2 = result;
  return result;
}

uint64_t sub_23841CE9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5] + 40);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_23841D0D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 40) = -a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B118, &qword_23876F450);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[11];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23841D31C()
{
  v1 = type metadata accessor for OrderListContent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C1E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[5];
  if (*(v7 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
  }

  sub_2384B4E98(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C880();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  v12 = *(*(v11 - 8) + 8);
  v12(v5 + v10, v11);
  v12(v5 + v1[9], v11);
  v13 = v1[10];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_23875C6D0();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841D608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C48, &qword_238776AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23841D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OrderListRow.ViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23841D7D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23875A710();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for OrderListRow.ViewModel(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23841D938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23841DA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A710();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_23841DAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23841DB80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A710();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23841DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderPaymentViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_23875A710();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23841DD2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OrderPaymentViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_23875A710();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23841DE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNavigationDestination(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23841DE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNavigationDestination(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23841DF08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238757B60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23841DFB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_238757B60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23841E074(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_23841E22C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD58, &unk_238774490);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD50, &unk_2387774D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FAF8, &unk_238774480);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23841E460()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_23841E4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238759510();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23841E534(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_238759510();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23841E5B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_23841E670(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23841E7B4()
{
  v1 = *(type metadata accessor for AccountListView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841E8D4()
{
  v1 = (type metadata accessor for SelectAccountsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[9];
  v6 = sub_23875D530();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23841EA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238758680();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23841EB74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_238758680();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23841EC8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115D0, &qword_238778A70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115C8, &qword_238778A68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115C0, &qword_238778A60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115B8, &qword_238778A58);
  sub_23875D310();
  sub_23843A3E8(&qword_27DF11600, &qword_27DF115B8, &qword_238778A58, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841EE34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11770, &qword_238778D30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11780, &unk_238778D48);
  sub_23861F244();
  type metadata accessor for AccountInfoView(255);
  sub_23861C5F4(&qword_27DF117A0, type metadata accessor for AccountInfoView, &protocol conformance descriptor for AccountInfoView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23841EF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23841EFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23841F03C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2387590B0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_23875B0A0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_23841F1A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2387590B0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_23875B0A0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ProductImage.ViewModel(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void *sub_23841F338@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_23844ACFC(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

__n128 sub_23841F3F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_23841F404()
{
  v110 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  v113 = *(*(v110 - 8) + 80);
  v111 = *(*(v110 - 8) + 64);
  v112 = (v113 + 16) & ~v113;
  v114 = v0;
  v1 = v0 + v112;

  v2 = type metadata accessor for MerchantImage.ViewModel(0);
  v3 = *(v2 + 20);
  v4 = sub_23875AF90();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);

  v6 = type metadata accessor for OrderDetails.ViewModel(0);
  v7 = v1 + v6[5];
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v109 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
      v107 = v5;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = sub_23875AF00();
        (*(*(v9 - 8) + 8))(v7, v9);
        v10 = v7 + *(type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0) + 20);
        v11 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 2)
          {

            v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
            v28 = sub_23875AD80();
            (*(*(v28 - 8) + 8))(v10 + v27, v28);
          }

          else if (EnumCaseMultiPayload <= 1)
          {
          }
        }

        v29 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);

        v30 = v29[10];
        v31 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
        if (!(*(*(v31 - 8) + 48))(v7 + v30, 1, v31))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v32 = sub_23875B940();
            (*(*(v32 - 8) + 8))(v7 + v30, v32);
          }

          else
          {
          }
        }

        v33 = v7 + v29[11];
        v34 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
        if (!(*(*(v34 - 1) + 48))(v33, 1, v34))
        {

          v35 = v34[5];
          v36 = sub_23875B290();
          (*(*(v36 - 8) + 8))(v33 + v35, v36);

          v37 = v34[7];
          v38 = sub_23875AEB0();
          v39 = *(v38 - 8);
          if (!(*(v39 + 48))(v33 + v37, 1, v38))
          {
            (*(v39 + 8))(v33 + v37, v38);
          }

          v40 = v34[8];
          v41 = sub_23875B1D0();
          v42 = *(v41 - 8);
          if (!(*(v42 + 48))(v33 + v40, 1, v41))
          {
            (*(v42 + 8))(v33 + v40, v41);
          }

          v43 = v33 + v34[11];

          v107(v43 + *(v2 + 20), v109);
        }
      }

      else
      {
        v117 = v2;
        v14 = sub_23875AE10();
        (*(*(v14 - 8) + 8))(v7, v14);
        v15 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
        v16 = v7 + v15[5];
        v17 = sub_23875B120();
        (*(*(v17 - 8) + 8))(v16, v17);
        v18 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
        v19 = *(v18 + 20);
        v20 = sub_23875AD80();
        v21 = *(*(v20 - 8) + 8);
        v22 = v16 + v19;
        v23 = v20;
        v21(v22, v20);
        v24 = v16 + *(v18 + 24);
        v25 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
        {
          v26 = swift_getEnumCaseMultiPayload();
          if (v26 == 2)
          {

            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
            v21(v24 + *(v44 + 64), v23);
          }

          else if (v26 <= 1)
          {
          }
        }

        v115 = v23;
        v106 = v21;
        v21(v7 + v15[6], v23);

        v45 = v15[9];
        v46 = sub_23875B940();
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(v7 + v45, 1, v46))
        {
          (*(v47 + 8))(v7 + v45, v46);
        }

        v48 = v7 + v15[13];
        v49 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
        v2 = v117;
        if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
        {
          v50 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
          if ((*(*(v50 - 8) + 48))(v48, 1, v50))
          {
            (*(v47 + 8))(v48 + *(v49 + 20), v46);
          }

          else
          {

            v105 = *(v47 + 8);
            v105(v48 + *(v50 + 24), v46);
            v107(v48 + *(v50 + 28), v109);
            v105(v48 + *(v49 + 20), v46);
          }

          v106(v48 + *(v49 + 24), v115);
        }
      }

      v5 = v107;
      v4 = v109;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
    (*(*(v13 - 8) + 8))(v7, v13);
    type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  }

  v51 = v1 + v6[6];

  v52 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v53 = v51 + *(v52 + 20);

  v5(v53 + *(v2 + 20), v4);

  v54 = *(v52 + 24);
  v55 = sub_23875BC40();
  v56 = *(v55 - 8);
  v118 = *(v56 + 8);
  v119 = v55;
  v118(v51 + v54);

  v57 = v1 + v6[8];
  v58 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v116 = v6;
  if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
  {
    v108 = v5;
    v59 = sub_23875B940();
    v60 = *(v59 - 8);
    v61 = *(v60 + 8);
    v61(v57, v59);

    v62 = *(v58 + 24);
    if (!(*(v60 + 48))(v57 + v62, 1, v59))
    {
      v61(v57 + v62, v59);
    }

    v63 = *(v58 + 28);
    v6 = v116;
    v5 = v108;
    if (!(*(v56 + 48))(v57 + v63, 1, v119))
    {
      (v118)(v57 + v63, v119);
    }
  }

  v64 = v1 + v6[10];

  v65 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v66 = v65[5];
  v67 = sub_238758090();
  v68 = *(v67 - 8);
  if (!(*(v68 + 48))(v64 + v66, 1, v67))
  {
    (*(v68 + 8))(v64 + v66, v67);
  }

  v69 = v64 + v65[7];
  v70 = type metadata accessor for OrderPaymentDestination(0);
  if (!(*(*(v70 - 8) + 48))(v69, 1, v70))
  {
    (v118)(v69, v119);
    v71 = type metadata accessor for OrderPaymentViewModel(0);
    v72 = v5;
    v73 = v71;
    v72(v69 + *(v71 + 20), v109);

    (*(v68 + 8))(v69 + v73[9], v67);
    v74 = v73[10];
    v75 = sub_238758D30();
    v76 = *(v75 - 8);
    if (!(*(v76 + 48))(v69 + v74, 1, v75))
    {
      (*(v76 + 8))(v69 + v74, v75);
    }

    v77 = v73[13];
    v78 = sub_23875B290();
    v79 = *(v78 - 8);
    if (!(*(v79 + 48))(v69 + v77, 1, v78))
    {
      (*(v79 + 8))(v69 + v77, v78);
    }

    v80 = *(v70 + 20);
    v81 = sub_23875A710();
    (*(*(v81 - 8) + 8))(v69 + v80, v81);
  }

  v82 = v64 + v65[8];
  v83 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
  {

    v84 = *(v83 + 20);
    v85 = sub_23875AD80();
    (*(*(v85 - 8) + 8))(v82 + v84, v85);
  }

  v86 = v64 + v65[9];

  v87 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v88 = v87[5];
  v89 = sub_23875B940();
  v90 = *(v89 - 8);
  v91 = *(v90 + 8);
  v91(v86 + v88, v89);
  v91(v86 + v87[6], v89);

  v92 = v87[8];
  v93 = *(v90 + 48);
  if (!v93(v86 + v92, 1, v89))
  {
    v91(v86 + v92, v89);
  }

  v94 = v87[9];
  if (!v93(v86 + v94, 1, v89))
  {
    v91(v86 + v94, v89);
  }

  v95 = v116[12];
  v96 = sub_23875A710();
  v97 = *(*(v96 - 8) + 8);
  v97(v1 + v95, v96);

  v98 = v1 + *(v110 + 20);
  v97(v98, v96);
  v99 = type metadata accessor for OrderShareLink.ViewModel(0);

  v100 = *(v99 + 28);
  v101 = sub_2387590B0();
  (*(*(v101 - 8) + 8))(v98 + v100, v101);
  (v118)(v98 + *(v99 + 32), v119);

  v102 = *(v110 + 28);
  v103 = type metadata accessor for OrderActionsMenuContext(0);
  v97(v1 + v102 + *(v103 + 20), v96);

  return MEMORY[0x2821FE8E8](v114, v112 + v111, v113 | 7);
}

uint64_t sub_2384205D0()
{
  v104 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  v107 = *(*(v104 - 8) + 80);
  v105 = *(*(v104 - 8) + 64);
  swift_unknownObjectRelease();

  v108 = v0;
  v106 = (v107 + 81) & ~v107;
  v1 = v0 + v106;

  v2 = type metadata accessor for MerchantImage.ViewModel(0);
  v3 = *(v2 + 20);
  v4 = sub_23875AF90();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);

  v6 = type metadata accessor for OrderDetails.ViewModel(0);
  v7 = v1 + v6[5];
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v110 = v6;
  v102 = v5;
  v103 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = sub_23875AF00();
        (*(*(v9 - 8) + 8))(v7, v9);
        v10 = v7 + *(type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0) + 20);
        v11 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 2)
          {

            v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
            v26 = sub_23875AD80();
            (*(*(v26 - 8) + 8))(v10 + v25, v26);
          }

          else if (EnumCaseMultiPayload <= 1)
          {
          }
        }

        v27 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);

        v28 = v27[10];
        v29 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
        if (!(*(*(v29 - 8) + 48))(v7 + v28, 1, v29))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v30 = sub_23875B940();
            (*(*(v30 - 8) + 8))(v7 + v28, v30);
          }

          else
          {
          }
        }

        v31 = v7 + v27[11];
        v32 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
        if (!(*(*(v32 - 1) + 48))(v31, 1, v32))
        {

          v33 = v32[5];
          v34 = sub_23875B290();
          (*(*(v34 - 8) + 8))(v31 + v33, v34);

          v35 = v32[7];
          v36 = sub_23875AEB0();
          v37 = *(v36 - 8);
          if (!(*(v37 + 48))(v31 + v35, 1, v36))
          {
            (*(v37 + 8))(v31 + v35, v36);
          }

          v38 = v32[8];
          v39 = sub_23875B1D0();
          v40 = *(v39 - 8);
          if (!(*(v40 + 48))(v31 + v38, 1, v39))
          {
            (*(v40 + 8))(v31 + v38, v39);
          }

          v41 = v31 + v32[11];

          v102(v41 + *(v2 + 20), v103);
        }
      }

      else
      {
        v14 = sub_23875AE10();
        (*(*(v14 - 8) + 8))(v7, v14);
        v15 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
        v16 = v7 + v15[5];
        v17 = sub_23875B120();
        (*(*(v17 - 8) + 8))(v16, v17);
        v18 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
        v19 = *(v18 + 20);
        v20 = sub_23875AD80();
        v21 = *(*(v20 - 8) + 8);
        v21(v16 + v19, v20);
        v22 = v16 + *(v18 + 24);
        v23 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
        {
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 == 2)
          {

            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
            v21(v22 + *(v42 + 64), v20);
          }

          else if (v24 <= 1)
          {
          }
        }

        v111 = v21;
        v21(v7 + v15[6], v20);

        v43 = v15[9];
        v44 = sub_23875B940();
        v45 = *(v44 - 8);
        if (!(*(v45 + 48))(v7 + v43, 1, v44))
        {
          (*(v45 + 8))(v7 + v43, v44);
        }

        v46 = v7 + v15[13];
        v47 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
        if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
        {
          v48 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
          if ((*(*(v48 - 8) + 48))(v46, 1, v48))
          {
            (*(v45 + 8))(v46 + *(v47 + 20), v44);
          }

          else
          {

            v49 = *(v45 + 8);
            v49(v46 + *(v48 + 24), v44);
            v102(v46 + *(v48 + 28), v103);
            v49(v46 + *(v47 + 20), v44);
          }

          v111(v46 + *(v47 + 24), v20);
        }
      }

      v6 = v110;
      v5 = v102;
      v4 = v103;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
    (*(*(v13 - 8) + 8))(v7, v13);
    type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  }

  v50 = v1 + v6[6];

  v51 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v52 = v50 + *(v51 + 20);

  v5(v52 + *(v2 + 20), v4);

  v53 = *(v51 + 24);
  v54 = sub_23875BC40();
  v55 = *(v54 - 8);
  v112 = v54;
  v109 = *(v55 + 8);
  v109(v50 + v53);

  v56 = v1 + v6[8];
  v57 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
  {
    v58 = sub_23875B940();
    v59 = *(v58 - 8);
    v60 = *(v59 + 8);
    v60(v56, v58);

    v61 = *(v57 + 24);
    if (!(*(v59 + 48))(v56 + v61, 1, v58))
    {
      v60(v56 + v61, v58);
    }

    v62 = *(v57 + 28);
    v6 = v110;
    if (!(*(v55 + 48))(v56 + v62, 1, v112))
    {
      (v109)(v56 + v62, v112);
    }
  }

  v63 = v1 + v6[10];

  v64 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v65 = v64[5];
  v66 = sub_238758090();
  v67 = *(v66 - 8);
  if (!(*(v67 + 48))(v63 + v65, 1, v66))
  {
    (*(v67 + 8))(v63 + v65, v66);
  }

  v68 = v63 + v64[7];
  v69 = type metadata accessor for OrderPaymentDestination(0);
  if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
  {
    (v109)(v68, v112);
    v70 = type metadata accessor for OrderPaymentViewModel(0);
    v102(v68 + v70[5], v103);

    (*(v67 + 8))(v68 + v70[9], v66);
    v71 = v70[10];
    v72 = sub_238758D30();
    v73 = *(v72 - 8);
    if (!(*(v73 + 48))(v68 + v71, 1, v72))
    {
      (*(v73 + 8))(v68 + v71, v72);
    }

    v74 = v70[13];
    v75 = sub_23875B290();
    v76 = *(v75 - 8);
    if (!(*(v76 + 48))(v68 + v74, 1, v75))
    {
      (*(v76 + 8))(v68 + v74, v75);
    }

    v77 = *(v69 + 20);
    v78 = sub_23875A710();
    (*(*(v78 - 8) + 8))(v68 + v77, v78);
  }

  v79 = v63 + v64[8];
  v80 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
  {

    v81 = *(v80 + 20);
    v82 = sub_23875AD80();
    (*(*(v82 - 8) + 8))(v79 + v81, v82);
  }

  v83 = v63 + v64[9];

  v84 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v85 = v84[5];
  v86 = sub_23875B940();
  v87 = *(v86 - 8);
  v88 = *(v87 + 8);
  v88(v83 + v85, v86);
  v88(v83 + v84[6], v86);

  v89 = v84[8];
  v90 = *(v87 + 48);
  if (!v90(v83 + v89, 1, v86))
  {
    v88(v83 + v89, v86);
  }

  v91 = v84[9];
  if (!v90(v83 + v91, 1, v86))
  {
    v88(v83 + v91, v86);
  }

  v92 = v110[12];
  v93 = sub_23875A710();
  v94 = *(*(v93 - 8) + 8);
  v94(v1 + v92, v93);

  v95 = v1 + *(v104 + 20);
  v94(v95, v93);
  v96 = type metadata accessor for OrderShareLink.ViewModel(0);

  v97 = *(v96 + 28);
  v98 = sub_2387590B0();
  (*(*(v98 - 8) + 8))(v95 + v97, v98);
  (v109)(v95 + *(v96 + 32), v112);

  v99 = *(v104 + 28);
  v100 = type metadata accessor for OrderActionsMenuContext(0);
  v94(v1 + v99 + *(v100 + 20), v93);

  return MEMORY[0x2821FE8E8](v108, v106 + v105, v107 | 7);
}

uint64_t sub_2384217C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E78, &unk_238761D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238421844()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842187C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238421920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MerchantImage.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2387590B0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_23875B0A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_238421A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MerchantImage.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2387590B0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_23875B0A0();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_238421BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderListRow.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238421CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OrderListRow.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238421DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238421EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A710();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_238421F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_238422098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2384221D0()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  swift_unknownObjectRelease();
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v8, v1);

  v11 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C1E0();
    (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_23842239C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CD80();
  *a1 = result;
  return result;
}

uint64_t sub_2384223F4()
{
  v1 = (type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_23875A710();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C1E0();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238422558()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BD8, &qword_238779820);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0CC48, &unk_23876C048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BE0, &qword_238779828);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BE8, &qword_238779830);
  sub_23843A3E8(&qword_27DF11BF0, &qword_27DF11BE0, &qword_238779828, MEMORY[0x277CE04B0]);
  v0 = MEMORY[0x277CE14C0];
  sub_23843A3E8(&qword_27DF11BF8, &qword_27DF11BE8, &qword_238779830, MEMORY[0x277CE14C0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(OpaqueTypeConformance2, v2, v3);
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048, v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238422708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238422830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23842295C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2384229AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CC10();
  *a1 = result;
  return result;
}

uint64_t sub_238422A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CF0, &qword_238779B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238422A9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238422ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11C88, &qword_238779AA0);
  type metadata accessor for MenuButton.SharingStartDate(255);
  sub_23863B3B0();
  sub_23863A85C(&qword_27DF11C60, type metadata accessor for MenuButton.SharingStartDate, &unk_2387799CC);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238422B98(void *a1)
{
  v1 = a1;

  return sub_238757B70();
}

uint64_t sub_238422BD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CD40();
  *a1 = result & 1;
  return result;
}

uint64_t sub_238422C28()
{
  v1 = (type metadata accessor for InstitutionConsentManagementView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C1E0();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238422D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238422E88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238422FA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_238423188(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_238423370(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_23875AAF0();
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[11]];

  return v16(v17, a2, v15);
}

char *sub_238423548(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_23875AAF0();
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[11]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_238423720()
{
  v1 = sub_238757B60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for InstitutionConsentManagementListView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;

  v11 = v6[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  v13 = v0 + v8 + v6[7];
  if (*(v13 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
  }

  v14 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C1E0();
    (*(*(v15 - 8) + 8))(v10 + v14, v15);
  }

  else
  {
  }

  v16 = v10 + v6[10];
  v17 = sub_238758BB0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v16, 1, v17))
  {
    (*(v18 + 8))(v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);

  v19 = v6[11];
  v20 = sub_23875AAF0();
  (*(*(v20 - 8) + 8))(v10 + v19, v20);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_238423A44()
{
  v1 = type metadata accessor for InstitutionConsentManagementListView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v0 + v3 + v1[7];
  if (*(v8 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23875C1E0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v5 + v1[10];
  v12 = sub_238758BB0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);

  v14 = v1[11];
  v15 = sub_23875AAF0();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238423CF8()
{
  v1 = sub_238758BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for InstitutionConsentManagementListView(0);
  v7 = *(*(v6 - 1) + 80);
  v20 = *(*(v6 - 1) + 64);
  v8 = (v4 + v5 + v7) & ~v7;
  v19 = *(v2 + 8);
  v19(v0 + v4, v1);
  v9 = v0 + v8;

  v10 = v6[6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);
  v12 = v0 + v8 + v6[7];
  if (*(v12 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
  }

  v13 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23875C1E0();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
  }

  else
  {
  }

  v15 = v9 + v6[10];
  if (!(*(v2 + 48))(v15, 1, v1))
  {
    v19(v15, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);

  v16 = v6[11];
  v17 = sub_23875AAF0();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  return MEMORY[0x2821FE8E8](v0, v8 + v20, v3 | v7 | 7);
}

uint64_t sub_238423FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CD40();
  *a1 = result & 1;
  return result;
}

__n128 sub_238424060(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_238424070()
{
  v1 = type metadata accessor for MultipleConsentManagementListView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  else
  {
  }

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C1E0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[8];
  v9 = sub_238758BB0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);

  v11 = v1[9];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[10];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v14 - 8) + 8))(v5 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384242FC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_238757B60();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = sub_238758BB0();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_2384244C0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_238757B60();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_238758BB0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_238424688(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_238757B60();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[7];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_2384247CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DF8, &unk_23876BF30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = sub_238757B60();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_238424904(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238757B60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_238758BB0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_238424AA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238757B60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_238758BB0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_238424C74()
{
  v1 = type metadata accessor for MultipleConsentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v16 = v0;
  v4 = v0 + v3;
  v5 = sub_238757B60();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[5];
  v7 = sub_238758BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = v0 + v3 + v1[6];

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30) + 32);
  if (!(*(v8 + 48))(v10 + v11, 1, v7))
  {
    v9(v10 + v11, v7);
  }

  v12 = v1[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v13 - 8) + 8))(v4 + v12, v13);

  return MEMORY[0x2821FE8E8](v16, v3 + v15, v2 | 7);
}

uint64_t sub_238424E84()
{
  v1 = type metadata accessor for RevokeConsentSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C1E0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_238757B60();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238425068()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12238, &qword_23877A540);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_238425098()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384250D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238425110()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12278, &qword_23877A560);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2384251E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238425234(uint64_t *a1)
{
  type metadata accessor for ExtensionUIServiceHostViewControllerRepresentable(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_238425284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2384253C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF124E0, &unk_23877A860);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238425500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2384255C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2384256F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_23875C880();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 16);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_238425810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23875C880();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238425938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12658, &qword_23877AD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384259FC()
{
  swift_unknownObjectRelease();

  sub_23865E454(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_238425A48()
{
  sub_23865E454(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_238425AA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238425ADC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238425B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238425BD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_238425C80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_238425CBC()
{
  v1 = (type metadata accessor for TransactionUnitList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238425DFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238425E34()
{
  v1 = (type metadata accessor for TransactionUnitList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_238758F50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_238426008()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12958, qword_23877B6B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12950, &qword_23877B6A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12948, &qword_23877B6A0);
  sub_23843A3E8(&qword_27DF12990, &qword_27DF12948, &qword_23877B6A0, MEMORY[0x277CDE5A0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(OpaqueTypeConformance2, v0, v1);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842614C(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C718, &qword_2387708F0);
  sub_2384397A8(v1, v2, v3);
  sub_2384E2C4C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2384261F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BC40();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23842625C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BC40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2384262E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF129D0, &qword_23877B890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23842634C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF129D0, &qword_23877B890);
  sub_238669C78();
  return swift_getOpaqueTypeConformance2();
}

void *sub_2384263D8@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_238672904(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

uint64_t sub_238426438()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238426488()
{
  v1 = sub_23875B940();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23842655C()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_238426658()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_238426768()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2384267C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384267F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238426830()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238426868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2384268E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23842695C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238426A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238426B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875B940();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238426C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875B940();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_238426CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238426D94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238426E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DA0, &qword_23877C0D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238426EC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CBF0();
  *a1 = result;
  return result;
}

uint64_t sub_238426F14()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238426FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2387587A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238427074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2387587A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238427118()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238427168()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384271A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2384271D8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13148, &qword_23877C500);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

__n128 sub_23842725C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_238427268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13150, &unk_23877C560);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238427394(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238758680();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13150, &unk_23877C560);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2384274D4()
{
  v1 = type metadata accessor for AccountConsentManagementAllDataView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_238758680();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(v1 + 20);
  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }

  v7 = *(v1 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13150, &unk_23877C560);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238427638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2384276B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23842772C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_238758B60();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_23875A9F0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_238757AD0();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_238427898(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_238758B60();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_23875A9F0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_238757AD0();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_238427A58(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_238687E14(v1);
}

uint64_t sub_238427A90()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238427AD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238427BA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238427BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238757B60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238427C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238757B60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_238427D30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875AD40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_23875A710();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_238427E94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875AD40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_23875A710();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238427FF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC40, &qword_238771880);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7] + 8);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_238428160(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B928, &unk_23876DFC0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC40, &qword_238771880);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = -a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2384282D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BE20();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238428340(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BE20();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2384283B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ProductImage.ViewModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2384284E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ProductImage.ViewModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238428620()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF134F0, &qword_23877D0C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF134E8, &qword_23877D0C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF134E0, &qword_23877D0B8);
  sub_23875D5F0();
  sub_23843A3E8(&qword_27DF13508, &qword_27DF134E0, &qword_23877D0B8, MEMORY[0x277CDD6E0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2384287C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135B0, &qword_23877D2D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135A8, &qword_23877D2D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF135A0, &qword_23877D2C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13598, &qword_23877D2C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13590, &qword_23877D2B8);
  v0 = sub_23843A3E8(&qword_2814F08E8, &qword_27DF13590, &qword_23877D2B8, MEMORY[0x277CE3D88]);
  sub_2384397A8(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238428978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09338, &unk_23876A0D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238428A74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09338, &unk_23876A0D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238428CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875BCB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23875A9F0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238428DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23875BCB0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_23875A9F0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

double sub_238428EF0@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2384D5B2C(a2, a3, a4);
  sub_23875CDC0();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_238428F8C()
{

  sub_238530F7C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_238428FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF137C8, &qword_23877DE98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238429038()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF137C8, &qword_23877DE98);
  sub_23869ABAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875AD40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2384292E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23875AD40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_238429448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC40, &qword_238771880);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238429544(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC40, &qword_238771880);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23842969C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[8];
    goto LABEL_13;
  }

  v16 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_238429880(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13888, &qword_23877E2F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_238429A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238429AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238429B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238429C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238429E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238758090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_238429F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_238758090();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13880, &qword_23877E2E8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23842A074()
{

  sub_2384348B8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23842A0BC()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
  sub_2385A8F14(v3, v0, v1);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23842A2A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23842A3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23842A498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842A564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for RoundedButton(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23842A664()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
  sub_23875CE80();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
  sub_2386A7704();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842A714(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13B68, &qword_23877EA00);
  sub_23843A3E8(&qword_27DF13B70, &qword_27DF13B68, &qword_23877EA00, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842A7BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23842A82C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CC30();
  *a1 = result;
  return result;
}

uint64_t sub_23842A884(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23875BC40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_23875AF90();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_238758090();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[13];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_23842AAA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23875BC40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23875AF90();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_238758090();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BF0, &unk_23877EAD0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_23842ACC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderPaymentViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23842AD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderPaymentViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23842ADD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238758090();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23842AE7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238758090();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842AF28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238758D30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_238758090();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23842B0A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_238758D30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_238758090();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_23842B288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875BC40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_238758090();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23842B3B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875BC40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_238758090();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23842B530()
{
  v1 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = sub_23875BC40();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for OrderPaymentViewModel(0);
  v8 = v7[5];
  v9 = sub_23875AF90();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v7[9];
  v11 = sub_238758090();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = v7[10];
  v13 = sub_238758D30();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v7[13];
  v16 = sub_23875B290();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23842B7D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842B810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E80, &qword_23877F1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842B8C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B9F8, &qword_238768E50);
  sub_2386B79C8(&qword_27DF0BA00, &qword_27DF0B9F8, &qword_238768E50, sub_2384BE7C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842B9D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842BA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23842BAD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23842BBA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140A8, &qword_23877F410);
  sub_23843A3E8(&qword_27DF140C0, &qword_27DF140A8, &qword_23877F410, MEMORY[0x277CDD6E0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842BC38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E90, &qword_23877F430);
  sub_23843A3E8(&qword_27DF14158, &qword_27DF08E90, &qword_23877F430, MEMORY[0x277CDD978]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842BCE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842BD2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141B0, &qword_23877F800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842BD9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141B0, &qword_23877F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23842BE04()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23842BE54()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23842BEA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842BEE8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23842BF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142D8, &unk_23877FA98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842C048()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842C080()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23842C0C4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842C100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23842C1BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A710();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23842C28C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842C2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23842C348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23842C3DC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ProductImage.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2387590B0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_23875B0A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_23842C548(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ProductImage.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2387590B0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_23875B0A0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23842C6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  v7 = *(active - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, active);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23842C7B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  active = type metadata accessor for OrderSearchActiveRow.ViewModel(0);
  v9 = *(active - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, active);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void *sub_23842C8DC@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_2386D61C8(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

uint64_t sub_23842C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConnectedCardsTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23842CA2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ConnectedCardsTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23842CB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14590, &qword_2387804F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for WidgetAccount(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23842CC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for WidgetAccount(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23842CCE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF145C0, &unk_238780740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842CD70()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13148, &qword_23877C500);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23842CDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23842CE5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842CF2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23842CF64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842CFAC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842CFF0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23842D038(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23842D0F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842D1A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14698, &qword_238780B78);
  sub_2386E2C84();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842D2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14730, &qword_238780D78);
  sub_23875D310();
  sub_23843A3E8(&qword_27DF14748, &qword_27DF14730, &qword_238780D78, MEMORY[0x277CDE5A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842D368()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23842D3B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842D3F4()
{
  sub_2383FC164(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23842D430()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842D474()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23842D4BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23842D644(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_23842D7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2387581B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23842D8EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2387581B0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s19ShippingFulfillmentO12StatusValuesVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23842D9F8()
{
  v1 = type metadata accessor for ExtractedOrderDetailsShippingFulfillment(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v24 = *(*(v1 - 1) + 64);
  v25 = v0;
  v4 = v0 + v3;
  v5 = sub_2387581B0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(type metadata accessor for ExtractedOrderDetailsShippingFulfillment.ViewModel(0) + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v9 = v8[5];
  v10 = sub_238757FA0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v8[6];
  v13 = sub_238757F70();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v8[7];
  v16 = sub_238757F90();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_23875C880();
    (*(*(v19 - 8) + 8))(v4 + v18, v19);
  }

  else
  {
  }

  sub_2385A9698(*(v4 + v1[6]), *(v4 + v1[6] + 8));
  v20 = v4 + v1[7];
  v21 = sub_23875B940();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v20, 1, v21))
  {
    (*(v22 + 8))(v20, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D100, &qword_23876CA08);

  return MEMORY[0x2821FE8E8](v25, v3 + v24, v2 | 7);
}

id sub_23842DE74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicAccountObject];
  *a2 = result;
  return result;
}

void sub_23842DEB4(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_23875EA50();
  [v2 setDisplayName_];
}

uint64_t sub_23842DFA0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23842E05C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842E10C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A00, &unk_238781790);
  type metadata accessor for SelectedTransactionsView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14A08, &qword_2387817A0);
  sub_23875CE80();
  sub_2386EEE2C();
  sub_2386F3860(&qword_27DF0B740, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  swift_getOpaqueTypeConformance2();
  sub_2386F3860(&qword_27DF14A18, type metadata accessor for SelectedTransactionsView, &unk_23878186C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842E250()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842E2F4()
{
  v1 = type metadata accessor for SelectedTransactionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 8) + 64);
  v4 = sub_238758F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C600();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  v10 = (v3 + v12 + v6) & ~v6;

  (*(v5 + 8))(v0 + v10, v4);

  return MEMORY[0x2821FE8E8](v0, v10 + v7, v2 | v6 | 7);
}

uint64_t sub_23842E544(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_23842E704(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ExtractedOrderDetailsHeaderView.ViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14B18, &unk_238781A20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ExtractedOrderDetailsInfo.ViewModel(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_23842E8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23842EA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 80) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23842EB60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B58, &qword_238781AD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B88, &qword_238781AF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B50, &qword_238781AD0);
  sub_2386FAF38();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14B90, &qword_238781B00);
  sub_23843A3E8(&qword_27DF14B98, &qword_27DF14B90, &qword_238781B00, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842ECB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23842ED88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23842EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductImage.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23842EF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ProductImage.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23842F05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875AF90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23842F118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875AF90();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23842F1D0()
{
  v1 = (type metadata accessor for ProductImage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_23875AF90();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for ProductImage.ViewModel(0);

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C450();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23842F344()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23842F37C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238757B60();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_23875BCB0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23842F4A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_238757B60();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23875BCB0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23842F5C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238757B60();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_23875BCB0();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_23842F6D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238757B60();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_23875BCB0();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_23842F7D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23842F890(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9F0, &unk_23876DD40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23842FB90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23842FBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08EA8, &unk_238761D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842FC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FD8, &qword_2387826F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23842FCC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F88, &unk_238782668);
  sub_238710774();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23842FD2C()
{
  MEMORY[0x23EE64EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23842FD64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842FDA4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_23842FE5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23842FE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for TransactionPicker(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[12], v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23842FFA4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23842FFFC(void *a1)
{
  sub_23875E240();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15070, &qword_2387827F0);
  swift_getWitnessTable();
  sub_2387192A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23843009C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15070, &qword_2387827F0);
  sub_2387192A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_238430110()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23843014C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238430208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2384302C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238430320()
{
  v1 = (type metadata accessor for TransactionSearchList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_238758F50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v1[9];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_238430558(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875A9A0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2384305C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875A9A0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238430634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A9A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_23875B940();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238430724(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23875A9A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_23875B940();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238430820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A9A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2384308E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23875A9A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23843099C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384309E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC28, &unk_238768CA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_238430B68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC28, &unk_238768CA0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_238430CF4()
{
  v1 = _s5LargeVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 + 20);
  v8 = sub_23875BC40();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_23875E8A0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875E7A0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238430F84()
{
  v1 = _s5LargeVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 + 20);
  v8 = sub_23875BC40();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_23875E8A0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875E7A0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384311FC()
{
  v1 = _s5LargeVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 + 20);
  v8 = sub_23875BC40();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_23875E8A0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875E7A0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_238431474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238431528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2384315E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23875C450();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_23875C8A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_238431704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23875C450();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23875C8A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238431838(uint64_t *a1)
{
  type metadata accessor for OrderImageStyleModifier(255);
  sub_23875C8C0();
  sub_2387365E0();
  return swift_getWitnessTable();
}

uint64_t sub_2384318A4(uint64_t a1)
{
  sub_23875E3F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  sub_23875C8C0();
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_238431A24(uint64_t a1)
{
  sub_23875E3F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  sub_23875C8C0();
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_238431BA4(uint64_t a1)
{
  sub_23875E3F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  sub_23875C8C0();
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_238431D24(void *a1)
{
  sub_23875E3F0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  sub_23875C8C0();
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_238431EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_238431FDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092A0, &unk_238762FB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238432238()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238432280()
{
  sub_2383FC164(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2384322BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2384323DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238432510(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238432644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238432754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238432898()
{
  v1 = type metadata accessor for ReturnDetailsContentsSection(0);
  v23 = *(*(v1 - 8) + 80);
  v21 = *(*(v1 - 8) + 64);
  v22 = (v23 + 16) & ~v23;
  v24 = v0;
  v2 = v0 + v22;

  v3 = *(type metadata accessor for MerchantImage.ViewModel(0) + 20);
  v4 = sub_23875AF90();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v6 = sub_23875BC40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  v9 = v2 + *(type metadata accessor for ReturnDetailsContentsSection.ViewModel(0) + 20);
  v10 = sub_23875AD40();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v12 = *(v11 + 20);
  if (!v8(v9 + v12, 1, v6))
  {
    (*(v7 + 8))(v9 + v12, v6);
  }

  v13 = v9 + *(v11 + 24);
  v14 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v17 = sub_23875AD80();
      (*(*(v17 - 8) + 8))(v13 + v16, v17);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }
  }

  v18 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_23875C880();
    (*(*(v19 - 8) + 8))(v2 + v18, v19);
  }

  else
  {
  }

  sub_2385A9698(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return MEMORY[0x2821FE8E8](v24, ((v21 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v23 | 7);
}

uint64_t sub_238432D08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC28, &unk_238768CA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_238432E90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC28, &unk_238768CA0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_23843301C()
{
  v1 = _s6MediumVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v7 = *(v6 + 20);
  v8 = sub_23875BC40();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v6 + 28);
  v10 = sub_23875E8A0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_2384348B8(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v14 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875E7A0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}