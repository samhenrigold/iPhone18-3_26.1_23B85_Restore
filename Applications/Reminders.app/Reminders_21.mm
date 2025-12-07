uint64_t sub_100237E0C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_100237EDC(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_100238008(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_10023819C(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_1002382C8(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_100238484(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t sub_1002384EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t sub_10023855C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t destroy for TTRIRemindersCommonPresenter.ParamsForPresentingDetails(uint64_t a1)
{
  sub_100004758((a1 + 8));

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TTRIRemindersCommonPresenter.ParamsForPresentingDetails(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  v6 = v5;
  v7 = **(v5 - 8);
  v8 = v4;
  v7(a1 + 8, a2 + 8, v6);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersCommonPresenter.ParamsForPresentingDetails(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  sub_100079CB0((a1 + 8), (a2 + 8));
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 56) = v7;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 initializeWithTake for TTRIRemindersCommonPresenter.ParamsForPresentingDetails(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for TTRIRemindersCommonPresenter.ParamsForPresentingDetails(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  sub_100004758((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  swift_unknownObjectRelease();
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersCommonPresenter.ParamsForPresentingDetails(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersCommonPresenter.ParamsForPresentingDetails(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_100238870(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v9 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_10023896C(void **a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *a1;
  }

  else
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.Item();
    v5 = *(*(v4 - 8) + 8);

    v5(a1, v4);
  }
}

void **sub_1002389FC(void **a1, void **a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    *a1 = *a2;
    v6 = v5;
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_100238AAC(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10022E05C(a1, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = v5;
    }

    else
    {
      v7 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_100238B80(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_100238C4C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10022E05C(a1, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_100238D3C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_100238DD0(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    *a1 = v5;
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v8 = a2[1];
    *a1 = v5;
    *(a1 + 8) = v8;
    v39 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v39;
    v9 = *(a2 + 9);
    *(a1 + 72) = v9;
    v10 = v9;
    v11 = **(v9 - 8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v11(a1 + 48, a2 + 6, v10);
    v12 = a2[12];
    *(a1 + 88) = a2[11];
    *(a1 + 96) = v12;
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 120) = *(a2 + 120);
    v13 = a2[17];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = v13;
    *(a1 + 144) = *(a2 + 9);
    v14 = *(a2 + 23);
    *(a1 + 184) = v14;
    v15 = v14;
    v16 = **(v14 - 8);

    v17 = v12;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v16(a1 + 160, a2 + 20, v15);
    v18 = *(a2 + 14);
    *(a1 + 224) = v18;
    (**(v18 - 8))(a1 + 200, a2 + 25);
    *(a1 + 240) = *(a2 + 15);
    v19 = a2[35];
    *(a1 + 280) = v19;
    v20 = **(v19 - 8);
    swift_unknownObjectRetain();
    v20(a1 + 256, a2 + 32, v19);
    *(a1 + 288) = *(a2 + 18);
    v21 = a2[41];
    *(a1 + 328) = v21;
    v22 = **(v21 - 8);
    swift_unknownObjectRetain();
    v22(a1 + 304, a2 + 38, v21);
    v23 = *(a2 + 22);
    *(a1 + 336) = *(a2 + 21);
    *(a1 + 352) = v23;
    v25 = a2[49];
    v24 = a2[50];
    *(a1 + 392) = v25;
    *(a1 + 400) = v24;
    v26 = **(v25 - 8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v26(a1 + 368, a2 + 46, v25);
    v27 = a2[52];
    *(a1 + 408) = a2[51];
    *(a1 + 416) = v27;
    v28 = a2[54];
    *(a1 + 424) = a2[53];
    *(a1 + 432) = v28;
    v29 = a3[24];
    v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v32(a2 + v29, 1, v30))
    {
      v33 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
      memcpy((a1 + v29), a2 + v29, *(*(v33 - 8) + 64));
    }

    else
    {
      (*(v31 + 16))(a1 + v29, a2 + v29, v30);
      (*(v31 + 56))(a1 + v29, 0, 1, v30);
    }

    v34 = a3[25];
    v35 = *(a2 + v34 + 24);
    *(a1 + v34 + 24) = v35;
    (**(v35 - 8))();
    v36 = a3[26];
    v37 = *(a2 + v36 + 24);
    *(a1 + v36 + 24) = v37;
    (**(v37 - 8))();
    *(a1 + a3[27]) = *(a2 + a3[27]);
  }

  return a1;
}

uint64_t sub_100239290(uint64_t a1, int *a2)
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004758((a1 + 48));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100004758((a1 + 160));
  sub_100004758((a1 + 200));
  swift_unknownObjectRelease();
  sub_100004758((a1 + 256));
  swift_unknownObjectRelease();
  sub_100004758((a1 + 304));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004758((a1 + 368));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = a2[24];
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  sub_100004758((a1 + a2[25]));
  return sub_100004758((a1 + a2[26]));
}

uint64_t sub_1002393F8(uint64_t a1, __int128 *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = a2[2];
  v7 = *(a2 + 72);
  *(a1 + 72) = v7;
  v8 = v7;
  v9 = **(v7 - 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9(a1 + 48, a2 + 3, v8);
  v10 = *(a2 + 12);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 96) = v10;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v11 = *(a2 + 17);
  *(a1 + 128) = *(a2 + 16);
  *(a1 + 136) = v11;
  *(a1 + 144) = a2[9];
  v12 = *(a2 + 184);
  *(a1 + 184) = v12;
  v13 = v12;
  v14 = **(v12 - 8);

  v15 = v10;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v14(a1 + 160, a2 + 10, v13);
  v16 = a2[14];
  *(a1 + 224) = v16;
  (**(v16 - 8))(a1 + 200, a2 + 200);
  *(a1 + 240) = a2[15];
  v17 = *(a2 + 35);
  *(a1 + 280) = v17;
  v18 = **(v17 - 8);
  swift_unknownObjectRetain();
  v18(a1 + 256, a2 + 16, v17);
  *(a1 + 288) = a2[18];
  v19 = *(a2 + 41);
  *(a1 + 328) = v19;
  v20 = **(v19 - 8);
  swift_unknownObjectRetain();
  v20(a1 + 304, a2 + 19, v19);
  v21 = a2[22];
  *(a1 + 336) = a2[21];
  *(a1 + 352) = v21;
  v23 = *(a2 + 49);
  v22 = *(a2 + 50);
  *(a1 + 392) = v23;
  *(a1 + 400) = v22;
  v24 = **(v23 - 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24(a1 + 368, a2 + 23, v23);
  v25 = *(a2 + 52);
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 416) = v25;
  v26 = *(a2 + 54);
  *(a1 + 424) = *(a2 + 53);
  *(a1 + 432) = v26;
  v27 = a3[24];
  v28 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v30(a2 + v27, 1, v28))
  {
    v31 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
    memcpy((a1 + v27), a2 + v27, *(*(v31 - 8) + 64));
  }

  else
  {
    (*(v29 + 16))(a1 + v27, a2 + v27, v28);
    (*(v29 + 56))(a1 + v27, 0, 1, v28);
  }

  v32 = a3[25];
  v33 = *(a2 + v32 + 24);
  *(a1 + v32 + 24) = v33;
  (**(v33 - 8))();
  v34 = a3[26];
  v35 = *(a2 + v34 + 24);
  *(a1 + v34 + 24) = v35;
  (**(v35 - 8))();
  *(a1 + a3[27]) = *(a2 + a3[27]);
  return a1;
}

uint64_t *sub_100239874(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v6;
  v7 = a2[3];
  a1[2] = a2[2];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[3] = v7;
  v8 = a2[5];
  a1[4] = a2[4];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[5] = v8;
  sub_100079CB0(a1 + 6, a2 + 6);
  a1[11] = a2[11];

  v9 = a2[12];
  v10 = a1[12];
  a1[12] = v9;
  v11 = v9;

  v12 = a2[14];
  a1[13] = a2[13];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[14] = v12;
  *(a1 + 120) = *(a2 + 120);
  a1[16] = a2[16];

  a1[17] = a2[17];

  v13 = a2[19];
  a1[18] = a2[18];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[19] = v13;
  sub_100079CB0(a1 + 20, a2 + 20);
  sub_100079CB0(a1 + 25, a2 + 25);
  v14 = a2[31];
  a1[30] = a2[30];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[31] = v14;
  sub_100079ECC(a1 + 32, a2 + 32);
  v15 = a2[37];
  a1[36] = a2[36];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[37] = v15;
  sub_100079ECC(a1 + 38, a2 + 38);
  v16 = a2[43];
  a1[42] = a2[42];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[43] = v16;
  v17 = a2[45];
  a1[44] = a2[44];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[45] = v17;
  sub_100079CB0(a1 + 46, a2 + 46);
  v18 = a2[52];
  a1[51] = a2[51];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[52] = v18;
  v19 = a2[54];
  a1[53] = a2[53];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[54] = v19;
  v20 = a3[24];
  v21 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  LODWORD(v19) = v23(a1 + v20, 1, v21);
  v24 = v23(a2 + v20, 1, v21);
  if (!v19)
  {
    if (!v24)
    {
      (*(v22 + 24))(a1 + v20, a2 + v20, v21);
      goto LABEL_7;
    }

    (*(v22 + 8))(a1 + v20, v21);
    goto LABEL_6;
  }

  if (v24)
  {
LABEL_6:
    v25 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
    memcpy(a1 + v20, a2 + v20, *(*(v25 - 8) + 64));
    goto LABEL_7;
  }

  (*(v22 + 16))(a1 + v20, a2 + v20, v21);
  (*(v22 + 56))(a1 + v20, 0, 1, v21);
LABEL_7:
  sub_100079CB0((a1 + a3[25]), (a2 + a3[25]));
  sub_100079CB0((a1 + a3[26]), (a2 + a3[26]));
  *(a1 + a3[27]) = *(a2 + a3[27]);
  return a1;
}

uint64_t sub_100239BFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  v10 = *(a2 + 240);
  v11 = *(a2 + 256);
  v12 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v12;
  *(a1 + 240) = v10;
  *(a1 + 256) = v11;
  v13 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v13;
  v14 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v14;
  v15 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v15;
  v16 = *(a2 + 408);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = v16;
  v17 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v17;
  v18 = a3[24];
  v19 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a2 + v18, 1, v19))
  {
    v21 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
    memcpy((a1 + v18), (a2 + v18), *(*(v21 - 8) + 64));
  }

  else
  {
    (*(v20 + 32))(a1 + v18, a2 + v18, v19);
    (*(v20 + 56))(a1 + v18, 0, 1, v19);
  }

  v22 = a3[25];
  v23 = a3[26];
  v24 = a1 + v22;
  v25 = a2 + v22;
  v26 = *(v25 + 16);
  *v24 = *v25;
  *(v24 + 16) = v26;
  *(v24 + 32) = *(v25 + 32);
  v27 = a1 + v23;
  v28 = a2 + v23;
  *(v27 + 32) = *(v28 + 32);
  v29 = *(v28 + 16);
  *v27 = *v28;
  *(v27 + 16) = v29;
  *(a1 + a3[27]) = *(a2 + a3[27]);
  return a1;
}

uint64_t *sub_100239DF4(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRelease();
  v7 = a2[2];
  v8 = a2[3];
  a1[1] = v6;
  a1[2] = v7;
  swift_unknownObjectRelease();
  v9 = a2[4];
  v10 = a2[5];
  a1[3] = v8;
  a1[4] = v9;
  swift_unknownObjectRelease();
  a1[5] = v10;
  sub_100004758(a1 + 6);
  v11 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v11;
  v12 = a2[11];
  a1[10] = a2[10];
  a1[11] = v12;

  v13 = a1[12];
  a1[12] = a2[12];

  v14 = a2[14];
  a1[13] = a2[13];
  swift_unknownObjectRelease();
  a1[14] = v14;
  *(a1 + 120) = *(a2 + 120);
  a1[16] = a2[16];

  a1[17] = a2[17];

  v15 = a2[19];
  a1[18] = a2[18];
  swift_unknownObjectRelease();
  a1[19] = v15;
  sub_100004758(a1 + 20);
  v16 = *(a2 + 11);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = v16;
  a1[24] = a2[24];
  sub_100004758(a1 + 25);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 27) = *(a2 + 27);
  v17 = a2[30];
  v18 = a2[31];
  a1[29] = a2[29];
  a1[30] = v17;
  swift_unknownObjectRelease();
  a1[31] = v18;
  sub_100004758(a1 + 32);
  v19 = *(a2 + 17);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = v19;
  v20 = a2[37];
  a1[36] = a2[36];
  swift_unknownObjectRelease();
  a1[37] = v20;
  sub_100004758(a1 + 38);
  v21 = *(a2 + 20);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = v21;
  v22 = a2[43];
  a1[42] = a2[42];
  swift_unknownObjectRelease();
  v23 = a2[44];
  v24 = a2[45];
  a1[43] = v22;
  a1[44] = v23;
  swift_unknownObjectRelease();
  a1[45] = v24;
  sub_100004758(a1 + 46);
  v25 = *(a2 + 24);
  *(a1 + 23) = *(a2 + 23);
  *(a1 + 24) = v25;
  v26 = a2[51];
  v27 = a2[52];
  a1[50] = a2[50];
  a1[51] = v26;
  swift_unknownObjectRelease();
  v28 = a2[53];
  v29 = a2[54];
  a1[52] = v27;
  a1[53] = v28;
  swift_unknownObjectRelease();
  a1[54] = v29;
  v30 = a3[24];
  v31 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  LODWORD(v29) = v33(a1 + v30, 1, v31);
  v34 = v33(a2 + v30, 1, v31);
  if (!v29)
  {
    if (!v34)
    {
      (*(v32 + 40))(a1 + v30, a2 + v30, v31);
      goto LABEL_7;
    }

    (*(v32 + 8))(a1 + v30, v31);
    goto LABEL_6;
  }

  if (v34)
  {
LABEL_6:
    v35 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
    memcpy(a1 + v30, a2 + v30, *(*(v35 - 8) + 64));
    goto LABEL_7;
  }

  (*(v32 + 32))(a1 + v30, a2 + v30, v31);
  (*(v32 + 56))(a1 + v30, 0, 1, v31);
LABEL_7:
  v36 = a3[25];
  v37 = a1 + v36;
  v38 = a2 + v36;
  sub_100004758((a1 + v36));
  v39 = *(v38 + 1);
  *v37 = *v38;
  *(v37 + 1) = v39;
  *(v37 + 4) = *(v38 + 4);
  v40 = a3[26];
  v41 = a1 + v40;
  v42 = a2 + v40;
  sub_100004758((a1 + v40));
  v43 = *(v42 + 1);
  *v41 = *v42;
  *(v41 + 1) = v43;
  *(v41 + 4) = *(v42 + 4);
  *(a1 + a3[27]) = *(a2 + a3[27]);
  return a1;
}

void sub_10023A178(uint64_t a1)
{
  sub_100218244(319, &qword_100774300, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_10023A290()
{
  result = qword_100775D78;
  if (!qword_100775D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100775D78);
  }

  return result;
}

uint64_t sub_10023A494(uint64_t a1)
{
  result = type metadata accessor for TTRITreeViewExpandedState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10023A594(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 144);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  (*(*(v2 + 88) + 24))(v3);
  return (*(v4 + 8))(v6, v3);
}

void sub_10023A6E8()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();

  v3 = 0;
  if (!Strong)
  {
    return;
  }

  v4 = v1;
  while (1)
  {
    v5 = __OFADD__(v3++, 1);
    if (v5)
    {
      goto LABEL_23;
    }

    v6 = Strong;
    swift_beginAccess();
    v7 = *(Strong + 64);

    if (Array.endIndex.getter())
    {
      break;
    }

LABEL_3:

LABEL_4:
    Strong = swift_weakLoadStrong();

    v4 = v6;
    if (!Strong)
    {
      return;
    }
  }

  v8 = 4;
  while (1)
  {
    v9 = v8 - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v11 = *(v7 + 8 * v8);

    v5 = __OFADD__(v9, 1);
    v13 = v8 - 3;
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (v11 == v4)
    {

      goto LABEL_4;
    }

    v14 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v15 = sub_10023C1B8(v12);

    v5 = __OFADD__(v14, v15);
    v3 = v14 + v15;
    if (v5)
    {
      goto LABEL_22;
    }

    ++v8;
    if (v13 == Array.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  v12 = _ArrayBuffer._getElementSlowPath(_:)();
  v11 = v12;
  v5 = __OFADD__(v9, 1);
  v13 = v8 - 3;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_10023A8CC(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = *v1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  swift_beginAccess();
  v26[3] = v2[8];
  v25 = v3;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100775D80);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Expand should begin with no child nodes", v14, 2u);
    }
  }

  v15 = qword_1007A84C0;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v15, v4);
  v23 = *(v5 + 104);
  v23(v7, enum case for TTRITreeViewExpandedState.collapsed(_:), v4);
  sub_10023D4FC();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  if ((v16 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100775D80);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Expand should begin with collapsed state", v21, 2u);
    }
  }

  v23(v10, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  swift_beginAccess();
  (*(v5 + 40))(v2 + v15, v10, v4);
  swift_endAccess();
  v2[8] = v24;

  v26[0] = Array.init()();
  sub_10023B044(v26);
  sub_10023CA94(sub_10023D494);
  return v26[0];
}

uint64_t sub_10023AD08()
{
  v1 = v0;
  v20[1] = *v0;
  v2 = type metadata accessor for TTRITreeViewExpandedState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = qword_1007A84C0;
  swift_beginAccess();
  (*(v3 + 16))(v8, v0 + v9, v2);
  v20[0] = *(v3 + 104);
  (v20[0])(v5, enum case for TTRITreeViewExpandedState.expanded(_:), v2);
  sub_10023D4FC();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = (v11)(v8, v2);
  if ((v10 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100775D80);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Collapse should begin with expanded state", v16, 2u);
    }
  }

  v17 = sub_10023C1B8(v12);
  (v20[0])(v8, enum case for TTRITreeViewExpandedState.collapsed(_:), v2);
  swift_beginAccess();
  (*(v3 + 40))(v1 + v9, v8, v2);
  swift_endAccess();
  v18 = static Array._allocateUninitialized(_:)();
  swift_beginAccess();
  v1[8] = v18;

  v1[5] = 0;
  *(v1 + 48) = 0;
  sub_10023CA94(sub_10023D494);
  return v17;
}

uint64_t sub_10023B044(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  result = Array.count.getter();
  v12 = *(v2 + 24);
  if (*(v2 + 32))
  {
    v12 = -1;
  }

  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v22[0] = result;
  v14 = qword_1007A84C0;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v14, v4);
  (*(v5 + 104))(v7, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  LOBYTE(v14) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v16 = *(v2 + 64);

  if (!Array.endIndex.getter())
  {
    goto LABEL_14;
  }

  v17 = 4;
  while (1)
  {
    v18 = v17 - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v20 = *(v16 + 8 * v17);

    v21 = v17 - 3;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    *(v20 + 24) = v13;
    *(v20 + 32) = 0;
    v22[1] = v20;
    type metadata accessor for Array();

    Array.append(_:)();
    sub_10023B044(a1);

    ++v17;
    if (v21 == Array.endIndex.getter())
    {
      goto LABEL_14;
    }
  }

  v20 = _ArrayBuffer._getElementSlowPath(_:)();
  v21 = v17 - 3;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:

LABEL_15:
  result = Array.count.getter();
  if (!__OFSUB__(result, v22[0]))
  {
    *(v2 + 40) = result - v22[0];
    *(v2 + 48) = 0;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10023B340(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = qword_1007A84C0;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v11, v4);
  (*(v5 + 104))(v7, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  sub_10023D4FC();
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11)
  {
    goto LABEL_6;
  }

  if (qword_100767010 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100775D80);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Remove requires expanded state", v16, 2u);
    }

LABEL_6:
    swift_beginAccess();
    Array.subscript.getter();
    swift_endAccess();
    v17 = sub_10023CB04(a1);
    v18 = sub_10023C1B8(v17);
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    swift_beginAccess();
    type metadata accessor for Array();
    Array.remove(at:)();
    swift_endAccess();

    if ((*(v2 + 48) & 1) == 0)
    {
      break;
    }

LABEL_10:
    sub_10023CA94(sub_10023D494);

    if (__OFADD__(v17, v19))
    {
      goto LABEL_14;
    }

    if (v17 + v19 >= v17)
    {
      return;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v20 = *(v2 + 40);
  v21 = __OFSUB__(v20, v19);
  v22 = v20 - v19;
  if (!v21)
  {
    *(v2 + 40) = v22;
    *(v2 + 48) = 0;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10023B6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29[-1] - v11;
  v13 = qword_1007A84C0;
  swift_beginAccess();
  (*(v7 + 16))(v12, v3 + v13, v6);
  (*(v7 + 104))(v9, enum case for TTRITreeViewExpandedState.expanded(_:), v6);
  sub_10023D4FC();
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100775D80);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Insert requires expanded state", v18, 2u);
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong || (v20 = Strong, , v20 != v3))
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_100775D80);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Subtree parent is not set correctly before calling insert.", v24, 2u);
    }
  }

  sub_10023CB04(a2);
  v29[3] = a1;
  swift_beginAccess();
  type metadata accessor for Array();

  Array.insert(_:at:)();
  swift_endAccess();
  v29[0] = Array.init()();
  sub_10023C310(v29);
  v25 = v29[0];
  if (*(v3 + 48))
  {
    goto LABEL_17;
  }

  v26 = *(v3 + 40);
  result = Array.count.getter();
  if (!__OFADD__(v26, result))
  {
    *(v3 + 40) = v26 + result;
    *(v3 + 48) = 0;
LABEL_17:
    sub_10023CA94(sub_10023D494);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10023BABC(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a2;
  v33 = *v3;
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v29 - v11;
  v13 = qword_1007A84C0;
  swift_beginAccess();
  v32 = v7[2];
  v32(v12, &v4[v13], v6);
  v14 = v7[13];
  v31 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v30 = v14;
  v14(v9);
  v29[1] = sub_10023D4FC();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v7[1];
  v16(v9, v6);
  v16(v12, v6);
  if ((v15 & 1) == 0 || (v17 = qword_1007A84C0, v29[0] = a3, v18 = v35, swift_beginAccess(), v19 = &v18[v17], a3 = v29[0], v32(v12, v19, v6), v30(v9, v31, v6), LOBYTE(v17) = dispatch thunk of static Equatable.== infix(_:_:)(), v16(v9, v6), v16(v12, v6), (v17 & 1) == 0))
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_100775D80);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Move requires expanded state", v23, 2u);
    }
  }

  result = a3;
  v25 = v34;
  if (v35 == v4 && (result = a3, v34 < a3) && (result = a3 + 1, __OFADD__(a3, 1)))
  {
    __break(1u);
  }

  else
  {
    sub_10023CB04(result);
    swift_beginAccess();
    Array.subscript.getter();
    v26 = v36;
    swift_endAccess();
    sub_10023B340(v25);
    v28 = v27;
    swift_weakAssign();
    sub_10023B6B0(v26, a3);

    return v28;
  }

  return result;
}

uint64_t sub_10023BE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(*v2 + 80);
  v21 = *(v3 - 8);
  __chkstk_darwin(a1);
  v5 = v20 - v4;
  v7 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = v20 - v9;
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 24);
  if (*(v2 + 32))
  {
    v15 = 0;
  }

  v20[1] = v15;
  v16 = qword_1007A84C0;
  swift_beginAccess();
  (*(v12 + 16))(v14, v2 + v16, v11);
  v17 = *(*v2 + 144);
  swift_beginAccess();
  v18 = v21;
  (*(v21 + 16))(v5, v2 + v17, v3);
  (*(v7 + 24))(v3, v7);
  (*(v18 + 8))(v5, v3);
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  (*(v22 + 8))(v10, AssociatedTypeWitness);
  return TTRITreeViewCellModel.init(level:expandedState:itemIdentifier:)();
}

uint64_t sub_10023C1B8(uint64_t a1)
{
  if (*(v1 + 48) != 1)
  {
    return *(v1 + 40);
  }

  __chkstk_darwin(a1);
  sub_10023C808(sub_10023D284);
  result = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_10023C248()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100775D80);
  v1 = sub_100003E30(v0, qword_100775D80);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10023C310(void *a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v5 = *(Strong + 24), v6 = *(Strong + 32), , v6 == 1))
  {
    v5 = -1;
  }

  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = v5 + 1;
    *(v2 + 32) = 0;
    type metadata accessor for Array();

    Array.append(_:)();
    sub_10023B044(a1);
  }
}

uint64_t sub_10023C3E0()
{
  swift_weakAssign();
  swift_beginAccess();
  type metadata accessor for Array();
  Array.removeAll(keepingCapacity:)(0);
  return swift_endAccess();
}

uint64_t sub_10023C47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  swift_weakAssign();
  v7 = *(*v3 + 144);
  swift_beginAccess();
  (*(*(*(v6 + 80) - 8) + 24))(v3 + v7, a1);
  swift_endAccess();
  v8 = qword_1007A84C0;
  swift_beginAccess();
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  (*(*(v9 - 8) + 24))(v3 + v8, a3, v9);
  return swift_endAccess();
}

uint64_t sub_10023C5B0(uint64_t a1, void *a2, void (*a3)(uint64_t, void *))
{
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  v13 = qword_1007A84C0;
  swift_beginAccess();
  (*(v7 + 16))(v12, a1 + v13, v6);
  (*(v7 + 104))(v9, enum case for TTRITreeViewExpandedState.expanded(_:), v6);
  LOBYTE(v13) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  result = (v14)(v12, v6);
  if (v13)
  {
    result = swift_beginAccess();
    v16 = *(a1 + 64);
    if (v16 >> 62)
    {
      goto LABEL_14;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      while (v17 >= 1)
      {

        v18 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v19 = *(v16 + 8 * v18 + 32);
          }

          if (__OFADD__(*a2, 1))
          {
            break;
          }

          ++v18;
          ++*a2;
          a3(v19, a2);

          if (v17 == v18)
          {
          }
        }

        __break(1u);
LABEL_14:
        result = _CocoaArrayWrapper.endIndex.getter();
        v17 = result;
        if (!result)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10023C808(double (*a1)(uint64_t))
{
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = qword_1007A84C0;
  swift_beginAccess();
  (*(v4 + 16))(v9, v1 + v10, v3);
  (*(v4 + 104))(v6, enum case for TTRITreeViewExpandedState.expanded(_:), v3);
  LOBYTE(v10) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  result = (v11)(v9, v3);
  if ((v10 & 1) == 0)
  {
    return result;
  }

  swift_beginAccess();
  v13 = *(v1 + 64);

  if (!Array.endIndex.getter())
  {
  }

  for (i = 4; ; ++i)
  {
    v15 = i - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v17 = *(v13 + 8 * i);

    v18 = i - 3;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_10;
    }

LABEL_6:
    a1(v17);
    sub_10023C808(a1);

    if (v18 == Array.endIndex.getter())
    {
    }
  }

  v17 = _ArrayBuffer._getElementSlowPath(_:)();
  v18 = i - 3;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_10023CA94(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    do
    {

      a1(v3);
      Strong = swift_weakLoadStrong();
    }

    while (Strong);
  }

  return result;
}

uint64_t sub_10023CB04(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    Array.subscript.getter();
    v1 = swift_endAccess();
    __chkstk_darwin(v1);
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Sequence.reduce<A>(_:_:)();
    swift_unknownObjectRelease();
    return v2;
  }

  return result;
}

char *sub_10023CC60()
{
  v1 = *v0;
  swift_weakDestroy();

  v2 = qword_1007A84C0;
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_10023CD30()
{
  sub_10023CC60();

  return swift_deallocClassInstance();
}

void sub_10023CDA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v9 = &v35 - v8;
  if (v2[32])
  {
    countAndFlagsBits = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v11 = *(v2 + 3);
  countAndFlagsBits = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    if ((v6 & 1) == 0)
    {
      countAndFlagsBits = 0;
LABEL_8:
      object = 0xE000000000000000;
LABEL_9:
      v15 = 7104878;
      v16 = *(v7 + 144);
      swift_beginAccess();
      (*(v5 + 16))(v9, &v2[v16], v4);
      v17 = (*(*(v3 + 88) + 32))(v4);
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      if (v2[32])
      {
        v20 = 0xE300000000000000;
        v21 = 7104878;
        if ((v2[48] & 1) == 0)
        {
LABEL_11:
          v36 = *(v2 + 5);
          v15 = dispatch thunk of CustomStringConvertible.description.getter();
          v23 = v22;
LABEL_14:
          v36 = 0;
          v37 = 0xE000000000000000;
          _StringGuts.grow(_:)(58);
          v25._countAndFlagsBits = countAndFlagsBits;
          v25._object = object;
          String.append(_:)(v25);

          v26._countAndFlagsBits = 0x3D64692865646F4ELL;
          v26._object = 0xE800000000000000;
          String.append(_:)(v26);
          v35 = *(v2 + 2);
          v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v27);

          v28._countAndFlagsBits = 0x203A6D657469202CLL;
          v28._object = 0xE900000000000022;
          String.append(_:)(v28);
          v29._countAndFlagsBits = v17;
          v29._object = v19;
          String.append(_:)(v29);

          v30._countAndFlagsBits = 0x6C6576656C202C22;
          v30._object = 0xE90000000000003DLL;
          String.append(_:)(v30);
          v31._countAndFlagsBits = v21;
          v31._object = v20;
          String.append(_:)(v31);

          v32._object = 0x8000000100678F80;
          v32._countAndFlagsBits = 0xD000000000000015;
          String.append(_:)(v32);
          v33._countAndFlagsBits = v15;
          v33._object = v23;
          String.append(_:)(v33);

          v34._countAndFlagsBits = 41;
          v34._object = 0xE100000000000000;
          String.append(_:)(v34);
          return;
        }
      }

      else
      {
        v36 = *(v2 + 3);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v24;
        if ((v2[48] & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v23 = 0xE300000000000000;
      goto LABEL_14;
    }

LABEL_6:
    v12._countAndFlagsBits = 9;
    v12._object = 0xE100000000000000;
    v13 = String.init(repeating:count:)(v12, countAndFlagsBits);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
    v7 = *v2;
    goto LABEL_9;
  }

  __break(1u);
}

Swift::Int sub_10023D178()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int sub_10023D204(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10023D138();
  return Hasher._finalize()();
}

void sub_10023D284()
{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
  }
}

uint64_t sub_10023D2A0()
{
  type metadata accessor for TTRCounterBasedIdentifierGenerator();
  result = TTRCounterBasedIdentifierGenerator.__allocating_init()();
  qword_100775D98 = result;
  return result;
}

uint64_t *sub_10023D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v3[3] = 0;
  *(v3 + 32) = 1;
  v3[5] = 0;
  *(v3 + 48) = 1;
  swift_weakInit();
  v3[8] = Array.init()();
  if (qword_100767018 != -1)
  {
    swift_once();
  }

  v3[2] = TTRCounterBasedIdentifierGenerator.allocID()();
  swift_weakAssign();
  (*(*(*(v7 + 80) - 8) + 32))(v3 + *(*v3 + 144), a1);
  v8 = qword_1007A84C0;
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  (*(*(v9 - 8) + 32))(v4 + v8, a3, v9);
  return v4;
}

uint64_t sub_10023D494(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

void *sub_10023D4A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_10023C1B8(result);
    if (!__OFADD__(v3, result))
    {
      *a2 = result + v3;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10023D4FC()
{
  result = qword_10076B990;
  if (!qword_10076B990)
  {
    type metadata accessor for TTRITreeViewExpandedState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076B990);
  }

  return result;
}

uint64_t sub_10023D554()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100775E20);
  v1 = sub_100003E30(v0, qword_100775E20);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023D61C()
{
  v1 = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((v0 + 88), *(v0 + 112));
  dispatch thunk of TTREditSectionsInteractorType.lastFetchedSections.getter();
  type metadata accessor for TTREditSectionsViewModel();
  TTREditSectionsViewModel.__allocating_init(shouldHideEmptySections:sections:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:)();
  v5 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_optimisticApply;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);

  v6 = TTREditSectionsViewModel.applying(_:)();

  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_10023D7BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentSectionDisplayName + 8);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionDisplayName + 8);
  v3 = (v1 | v2) == 0;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (*(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentSectionDisplayName) == *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionDisplayName) && v1 == v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionOrdering);
  sub_10000C36C((v0 + 88), *(v0 + 112));

  v7 = dispatch thunk of TTREditSectionsInteractorType.currentSectionOrdering.getter();
  if (v6)
  {
    if (v7)
    {
      v8 = sub_100126950(v6, v7);

      v9 = v8 ^ 1;
      goto LABEL_17;
    }
  }

  else if (!v7)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  if (*(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_hideEmptySectionsToggleChanged))
  {
    v10 = 1;
  }

  else
  {
    v10 = v3 ^ 1 | v9;
  }

  return v10 & 1;
}

uint64_t sub_10023D8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListLayout();
  v12 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    swift_unknownObjectRelease();
    return (*(v12 + 32))(a1, v5, v3);
  }

  else
  {
    v9 = enum case for TTRRemindersListLayout.list(_:);
    v10 = *(v12 + 104);

    return v10(a1, v9, v3);
  }
}

uint64_t sub_10023DA48(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v5 = v4;
  v46 = a3;
  v57 = a2;
  v58 = a1;
  v53 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((v4 + 88), *(v4 + 112));
  result = dispatch thunk of TTREditSectionsInteractorType.lastFetchedSections.getter();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = v53;
  v64 = *(result + 16);
  if (!v64)
  {
  }

  v16 = 0;
  v49 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_optimisticApply;
  v45 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentRemListSection;
  v44 = (v4 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName);
  v55 = (v4 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionDisplayName);
  v62 = v10 + 8;
  v63 = v10 + 16;
  v61 = (v6 + 88);
  v60 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
  v48 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
  v47 = (v6 + 96);
  v51 = v12;
  v52 = v9;
  v50 = result;
  while (v16 < *(v14 + 16))
  {
    (*(v10 + 16))(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v9);
    REMRemindersListDataView.SectionLite.type.getter();
    (*(v10 + 8))(v12, v9);
    v17 = (*v61)(v8, v15);
    if (v17 == v60)
    {
      v18 = v15;
      (*v47)(v8, v15);
      v19 = *v8;
      v20 = *(v8 + 3);
      v59 = *(v8 + 4);

      sub_10000C36C((v5 + 88), *(v5 + 112));
      v21 = v19;
      v22 = dispatch thunk of TTREditSectionsInteractorType.sectionForUserAction(with:)();
      swift_beginAccess();
      v23 = TTREditSectionsViewModel.OptimisticApply.renamedSections.getter();
      v24 = *(v23 + 16);
      v56 = v20;
      if (v24 && (v25 = sub_1002613B0(v21), (v26 & 1) != 0))
      {
        v27 = (*(v23 + 56) + 16 * v25);
        v28 = v27[1];
        v54 = *v27;
      }

      else
      {

        v54 = 0;
        v28 = 0;
      }

      swift_endAccess();

      v15 = v18;
      if (v22)
      {
        v29 = v5;
        v30 = [v22 displayName];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        if (v31 == v58 && v33 == v57)
        {

          v5 = v29;
          goto LABEL_18;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v29;
        v15 = v53;
        if (v34)
        {

LABEL_18:
          v12 = v51;
          goto LABEL_25;
        }
      }

      if (v28)
      {
        v12 = v51;
        if (v54 == v58 && v28 == v57)
        {

          goto LABEL_25;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v35)
        {
LABEL_25:
          v36 = *(v5 + v45);
          *(v5 + v45) = v22;
          v37 = v22;

          v38 = v44;
          v39 = v59;
          *v44 = v56;
          v38[1] = v39;

          if (v39)
          {
            v40 = String._bridgeToObjectiveC()();
          }

          else
          {
            v40 = 0;
          }

          v9 = v52;
          [v46 setPlaceholder:v40];

          v15 = v53;
        }

        else
        {

          v9 = v52;
        }
      }

      else
      {

        v12 = v51;
        v9 = v52;
      }

      v14 = v50;
      if (!v55[1])
      {
        v41 = v57;
        v42 = v55;
        *v55 = v58;
        v42[1] = v41;
      }

      goto LABEL_5;
    }

    if (v17 != v48)
    {
      goto LABEL_35;
    }

LABEL_5:
    if (v64 == ++v16)
    {
    }
  }

  __break(1u);
LABEL_35:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10023DFCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentRemListSection;
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentRemListSection);
  if (v5)
  {
    v6 = v3;
    v8 = qword_100767020;
    v9 = v5;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100775E20);
    v11 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Edit Sections Rename Section", 28, 2, v11);

    v23 = String.validatedSectionName()();
    object = v23.name._object;
    if (v23.isValid)
    {
      countAndFlagsBits = v23.name._countAndFlagsBits;
    }

    else
    {

      if (*(v6 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName + 8))
      {
        countAndFlagsBits = *(v6 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName);
        object = *(v6 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName + 8);
      }

      else
      {
        v14 = [v9 displayName];
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v15;
      }

      swift_bridgeObjectRetain_n();
      v16 = String._bridgeToObjectiveC()();
      [a3 setText:v16];
    }

    v17 = [v9 objectID];
    swift_beginAccess();
    v18 = TTREditSectionsViewModel.OptimisticApply.renamedSections.modify();
    sub_10023F078(countAndFlagsBits, object, v17);
    v18(v22, 0);
    swift_endAccess();

    sub_10000C36C((v6 + 88), *(v6 + 112));
    dispatch thunk of TTREditSectionsInteractorType.rename(_:to:)();

    v19._object = 0x8000000100679110;
    v19._countAndFlagsBits = 0xD000000000000019;
    TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v19);

    v20 = (v6 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentSectionDisplayName);
    *v20 = countAndFlagsBits;
    v20[1] = object;

    v21 = *(v6 + v4);
    *(v6 + v4) = 0;
  }
}

uint64_t sub_10023E27C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100775FD8, &qword_100637450);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_100058000(&qword_100775FE0, &unk_1006364D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  if (qword_100767020 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100775E20);
  v12 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Edit Sections Reorder Sections", 30, 2, v12);

  sub_10001DF64();
  sub_1001288B4();

  OrderedSet.init(_:)();
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_beginAccess();
  TTREditSectionsViewModel.OptimisticApply.sectionOrdering.setter();
  swift_endAccess();
  if (!*(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionOrdering))
  {
    *(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionOrdering) = a2;
  }

  *(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel) = sub_10023D61C();

  sub_10000C36C((v2 + 88), *(v2 + 112));

  dispatch thunk of TTREditSectionsInteractorType.setSectionOrdering(_:initialOrderedSectionIDs:)();

  return (*(v8 + 8))(v10, v7);
}

void sub_10023E540(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRIPopoverAnchor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767020 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100775E20);
  v10 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Edit Sections Cancel", 20, 2, v10);

  if (sub_10023D7BC())
  {
    static TTRLocalizableStrings.Common.confirmationMessageForDiscardingChanges.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() alertControllerWithTitle:0 message:v11 preferredStyle:0];

    static TTRLocalizableStrings.Common.alertDiscardChangesButton.getter();
    v13 = swift_allocObject();
    swift_weakInit();

    v14 = String._bridgeToObjectiveC()();
    v28 = a1;
    v15 = v14;

    aBlock[4] = sub_10023F320;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001762CC;
    aBlock[3] = &unk_10071CC38;
    v16 = _Block_copy(aBlock);

    v17 = objc_opt_self();
    v27 = v5;
    v18 = [v17 actionWithTitle:v15 style:2 handler:v16];
    _Block_release(v16);

    [v12 addAction:v18];
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v17 actionWithTitle:v19 style:1 handler:0];

    [v12 addAction:v20];
    static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    (*(v6 + 8))(v8, v27);
    sub_10000C36C((v3 + 48), *(v3 + 72));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = [Strong navigationController];

      if (v23)
      {
        [v23 presentViewController:v12 animated:1 completion:0];
      }
    }
  }

  else
  {
    sub_10000C36C((v2 + 48), *(v2 + 72));
    if (qword_1007674C8 != -1)
    {
      swift_once();
    }

    sub_100003E30(v9, qword_100790F18);
    sub_1003F99F4(0x6365532074696445, 0xED0000736E6F6974);
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v28 = [v24 presentingViewController];

      if (v28)
      {
        [v28 dismissViewControllerAnimated:1 completion:0];
        v26 = v28;
      }
    }
  }
}

uint64_t sub_10023E9E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10000B0D8(Strong + 88, v8);

    sub_10000C36C(v8, v9);
    dispatch thunk of TTREditSectionsInteractorType.editSectionsDidCancel()();
    sub_100004758(v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000B0D8(result + 48, v8);

    sub_10000C36C(v8, v9);
    if (qword_1007674C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100790F18);
    sub_1003F99F4(0x6365532074696445, 0xED0000736E6F6974);
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 presentingViewController];

      if (v7)
      {
        [v7 dismissViewControllerAnimated:1 completion:0];
      }
    }

    return sub_100004758(v8);
  }

  return result;
}

uint64_t sub_10023EB7C()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758((v0 + 48));
  sub_100004758((v0 + 88));
  v1 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_list;
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_optimisticApply;
  v4 = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10023ECD8()
{
  sub_10023EB7C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIEditSectionsPresenter(uint64_t a1)
{
  result = qword_100775EC0;
  if (!qword_100775EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023ED84(uint64_t a1)
{
  result = type metadata accessor for TTRListOrCustomSmartList();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10023EEAC()
{
  v1 = sub_100058000(&qword_100775FD8, &qword_100637450);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100775FE0, &unk_1006364D0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10023F1A0(_swiftEmptyArrayStorage);
  TTREditSectionsViewModel.OptimisticApply.init(sectionOrdering:renamedSections:)();
  v9 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_optimisticApply;
  swift_beginAccess();
  (*(v5 + 40))(v0 + v9, v7, v4);
  swift_endAccess();
  v10._object = 0x8000000100679110;
  v10._countAndFlagsBits = 0xD000000000000019;
  TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v10);
}

uint64_t sub_10023F078(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_1002613B0(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_100549E64(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1002613B0(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    sub_10001DF64();
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_1003AE8BC();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_10054F594(v11, a3, a1, a2, v10);
    v21 = a3;
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = (v10[7] + 16 * v11);
  result = *v18;
  *v18 = a1;
  v18[1] = a2;
LABEL_11:
  *v5 = v10;
  return result;
}

unint64_t sub_10023F1A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100775FE8, &qword_10063F9C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1002613B0(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10023F2A0()
{
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel) = sub_10023D61C();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result isViewLoaded])
    {
      sub_1002FEDCC(1u);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for TTRIRemindersListContentConfigurationCell(uint64_t a1)
{
  result = qword_100776008;
  if (!qword_100776008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *sub_10023F3D8(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  v9 = &a1[qword_100775FF0];
  *v9 = 0;
  v9[1] = 0;
  *&a1[qword_100775FF8] = _swiftEmptyArrayStorage;
  a1[qword_100776000] = 1;
  v12.receiver = a1;
  v12.super_class = type metadata accessor for TTRIRemindersListContentConfigurationCell(0);
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
  sub_10023F8EC();

  return v10;
}

void sub_10023F498(uint64_t a1)
{
  v1 = (a1 + qword_100775FF0);
  *v1 = 0;
  v1[1] = 0;
  *(a1 + qword_100775FF8) = _swiftEmptyArrayStorage;
  *(a1 + qword_100776000) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10023F528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  v17 = method lookup function for TTRIRemindersListIntermediateViewModelObservingCell();
  v17(a1, a2);
  sub_100058000(&unk_10076B040, &qword_100637BB0);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  TTRIRemindersListItemIntermediateViewModel.item.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v18 = &qword_100772140;
    v19 = &qword_10062D9F0;
    v20 = v8;
    return sub_1000079B4(v20, v18, v19);
  }

  (*(v10 + 32))(v12, v8, v9);
  v22 = *(v3 + qword_100775FF0);
  if (v22)
  {
    v23 = *(v3 + qword_100775FF0 + 8);

    v22(&v28, v12);
    if (!v29)
    {
      v26 = sub_1000301AC(v22, v23);
      (*(v10 + 8))(v12, v9, v26);
      (*(v14 + 8))(v16, v13);
      v18 = &unk_100776060;
      v19 = &unk_1006365E0;
      v20 = &v28;
      return sub_1000079B4(v20, v18, v19);
    }

    v27 = v13;
    v24 = v30;
    sub_100005FD0(&v28, v31);
    v32 = v24;
    sub_100005FD0(v31, v33);
    sub_10000B0D8(v33, v31);
    UICollectionViewCell.contentConfiguration.setter();
    v25 = *(v3 + qword_100776000);
    *(v3 + qword_100776000) = v24;
    if (v24 != v25)
    {
      sub_10023F8EC();
    }

    sub_1000301AC(v22, v23);
    sub_100004758(v33);
    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v16, v27);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v16, v13);
  }
}

void sub_10023F8EC()
{
  v1 = v0;
  if (v0[qword_100776000] > 1u)
  {
    if (v0[qword_100776000] == 2)
    {
      v3 = [v0 layoutMarginsGuide];
      v4 = [v3 leadingAnchor];

      v5 = v4;
      v6 = 0;
    }

    else
    {
      v7 = [v0 layoutMarginsGuide];
      v8 = [v7 leadingAnchor];

      v4 = v8;
      v9 = [v1 layoutMarginsGuide];
      v6 = [v9 trailingAnchor];

      v5 = v6;
    }
  }

  else
  {
    if (v0[qword_100776000])
    {
      v2 = [v0 leadingAnchor];
    }

    else
    {
      v2 = [v0 trailingAnchor];
    }

    v5 = v2;
    v6 = 0;
    v4 = v5;
  }

  v10 = v5;
  v11 = objc_opt_self();
  v12 = qword_100775FF8;
  swift_beginAccess();
  sub_100177300();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 deactivateConstraints:isa];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D420;
  v15 = [v1 separatorLayoutGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v16 constraintEqualToAnchor:v4];
  *(v14 + 32) = v17;
  *&v1[v12] = v14;

  if (v6)
  {
    v18 = [v1 separatorLayoutGuide];
    v19 = [v18 trailingAnchor];

    v20 = [v19 constraintEqualToAnchor:v6];
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:v21];
}

uint64_t sub_10023FC60()
{
  sub_1000301AC(*(v0 + qword_100775FF0), *(v0 + qword_100775FF0 + 8));
}

id sub_10023FCA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListContentConfigurationCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10023FCDC(uint64_t a1)
{
  sub_1000301AC(*(a1 + qword_100775FF0), *(a1 + qword_100775FF0 + 8));
}

unint64_t sub_10023FD48()
{
  result = qword_100776058;
  if (!qword_100776058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776058);
  }

  return result;
}

BOOL sub_10023FD9C(unint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_15:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v19 = a1 & 0xC000000000000001;
  v15 = (v3 + 16);
  v7 = (v3 + 8);
  do
  {
    v3 = v6;
    if (v20 == v6)
    {
      break;
    }

    if (v19)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v18 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_100003540(0, &qword_100775690, NSObject_ptr);
    v10 = v16;
    (*v15)(v5, v17, v16);
    v11 = TTRRemindersListViewModel.Reminder.objectID.getter();
    (*v7)(v5, v10);
    v12 = static NSObject.== infix(_:_:)();

    v6 = v3 + 1;
  }

  while ((v12 & 1) == 0);
  return v20 != v3;
}

void *sub_10023FFA0(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(type metadata accessor for TTRRemindersListViewModel.LeadingActionConfiguration() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v20 = *(v6 + 72);
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = a1(&v22, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v22;
    v11 = *(v22 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_100547CB8(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for TTRReminderSwipeAction();
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_25;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v20;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1002401A8(char a1, uint64_t a2, char a3)
{
  *(v4 + 501) = a3;
  *(v4 + 232) = a2;
  *(v4 + 240) = v3;
  *(v4 + 500) = a1;
  *(v4 + 248) = *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  *(v4 + 256) = v5;
  *(v4 + 264) = *(v5 - 8);
  *(v4 + 272) = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  v7 = type metadata accessor for DispatchTime();
  *(v4 + 304) = v7;
  *(v4 + 312) = *(v7 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  *(v4 + 336) = v8;
  *(v4 + 344) = *(v8 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  *(v4 + 368) = swift_task_alloc();
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v4 + 376) = v9;
  *(v4 + 384) = *(v9 - 8);
  *(v4 + 392) = swift_task_alloc();
  v10 = type metadata accessor for REMAnalyticsEvent();
  *(v4 + 400) = v10;
  *(v4 + 408) = *(v10 - 8);
  *(v4 + 416) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 424) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 432) = v12;
  *(v4 + 440) = v11;

  return _swift_task_switch(sub_1002404D4, v12, v11);
}

uint64_t sub_1002404D4()
{
  v1 = v0;
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);
  v79 = *(v0 + 501);
  v5 = *(v0 + 232);
  v6 = *(v0 + 500);
  v7 = type metadata accessor for Logger();
  v1[56] = sub_100003E30(v7, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 32) = 0x6574656C706D6F63;
  *(inited + 16) = xmmword_10062D3F0;
  v10 = 1702195828;
  if (!v6)
  {
    v10 = 0x65736C6166;
  }

  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = v10;
  v11 = 0xE400000000000000;
  if (!v6)
  {
    v11 = 0xE500000000000000;
  }

  *(inited + 56) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(v9 + 96) = v5;

  v12 = sub_100008E04(v9);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder List set completed {completed: %@, items: %@}", 54, 2, v12);

  type metadata accessor for TTRUserDefaults();
  v1[57] = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v13 = sub_100058000(&qword_1007757E8, &unk_100635E60);
  v14 = (v2 + *(v13 + 48));
  v15 = (v2 + *(v13 + 80));
  v16 = enum case for REMUserOperation.markReminderCompletedUI(_:);
  v17 = type metadata accessor for REMUserOperation();
  (*(*(v17 - 8) + 104))(v2, v16, v17);
  *v14 = TTRUserDefaults.activitySessionId.getter();
  v14[1] = v18;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v15 = _typeName(_:qualified:)();
  v15[1] = v19;
  (*(v3 + 104))(v2, enum case for REMAnalyticsEvent.userOperation(_:), v4);
  REMAnalyticsManager.post(event:)();

  (*(v3 + 8))(v2, v4);
  if (v79)
  {

    v21 = v1[29];
    v20 = v1[30];
    v22 = *(v1 + 500);
    sub_100058000(&qword_100776298, &qword_100636860);
    v23 = swift_allocBox();
    v25 = v24;
    v26 = sub_100058000(&qword_10076DF30, &qword_100631A00);
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    v27 = static TTRLocalizableStrings.UndoAction.completionChange.getter();
    v29 = v28;
    v30 = swift_task_alloc();
    *(v30 + 16) = v21;
    *(v30 + 24) = v22;
    *(v30 + 32) = v20;
    *(v30 + 40) = v23;
    sub_1002597AC(v21, v27, v29, sub_100262920, v30);
    v32 = v31;

    if (v32 >= 1)
    {
      TTRDebouncedAction.schedule()();
    }

    v33 = v1[57];
    if (*(v1 + 500) == 1)
    {
      v34 = v1 + 18;
      v36 = v1[39];
      v35 = v1[40];
      v37 = v1[38];
      v70 = v1[37];
      v71 = v1[41];
      v77 = v1[36];
      v78 = v1[35];
      v38 = v1;
      v39 = v1[34];
      v75 = v38[33];
      v73 = v38[32];
      v74 = v33;
      v40 = v38[30];
      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
      v72 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v41 = *(v36 + 8);
      v41(v35, v37);
      v38[22] = sub_100262930;
      v38[23] = v40;
      v38[18] = _NSConcreteStackBlock;
      v38[19] = 1107296256;
      v38[20] = sub_10001047C;
      v38[21] = &unk_10071CEF8;
      v42 = _Block_copy(v34);

      static DispatchQoS.unspecified.getter();
      v38[28] = _swiftEmptyArrayStorage;
      sub_10026263C(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50, &qword_100635D30);
      sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

      _Block_release(v42);
      v43 = v39;
      v1 = v38;
      (*(v75 + 8))(v43, v73);
      (*(v77 + 8))(v70, v78);
      v41(v71, v37);
    }

    else
    {
    }

    v55 = v1[1];

    return v55(v32 > 0);
  }

  else
  {
    v44 = v1[29];
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = v1[48];
      swift_getObjectType();
      v47 = *(v46 + 16);
      v46 += 16;
      v76 = v47;
      v48 = v44 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
      v49 = *(v46 + 56);
      v50 = (v46 - 8);
      do
      {
        v51 = v1[49];
        v52 = v1;
        v53 = v1[47];
        v76(v51, v48, v53);
        v54 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
        (*v50)(v51, v53);
        if (v54)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v48 += v49;
        --v45;
        v1 = v52;
      }

      while (v45);
    }

    v1[58] = _swiftEmptyArrayStorage;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v57 = v1[30];
      v58 = *(v57 + 24);
      ObjectType = swift_getObjectType();
      v60 = (*(v58 + 32))(v57, ObjectType, v58);
      v62 = v61;
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v1[59] = v60;
    v63 = v1[45];
    v64 = v1[46];
    v65 = *(v1[30] + 72);
    v66 = swift_getObjectType();
    (*(v65 + 16))(v66, v65);
    v67 = *(v63 + 20);
    *(v1 + 124) = v67;
    v68 = swift_task_alloc();
    v1[60] = v68;
    *v68 = v1;
    v68[1] = sub_100240DF4;
    v69 = *(v1 + 500);

    return TTRSetReminderCompletedPresenterCapability.presenterUserConfirmation(forSettingCompletedTo:reminders:completionBehavior:with:)(v69, _swiftEmptyArrayStorage, v64 + v67, v60, v62);
  }
}

uint64_t sub_100240DF4(char a1)
{
  v4 = *v2;
  *(v4 + 488) = v1;

  v5 = *(v4 + 496);
  v6 = *(v4 + 368);
  if (v1)
  {
    v7 = type metadata accessor for TTRReminderListCompletionBehavior();
    (*(*(v7 - 8) + 8))(v6 + v5, v7);
    v8 = *(v4 + 432);
    v9 = *(v4 + 440);
    v10 = sub_100241448;
  }

  else
  {
    *(v4 + 502) = a1 & 1;
    v11 = type metadata accessor for TTRReminderListCompletionBehavior();
    (*(*(v11 - 8) + 8))(v6 + v5, v11);
    v8 = *(v4 + 432);
    v9 = *(v4 + 440);
    v10 = sub_100240FC8;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100240FC8()
{
  v1 = *(v0 + 502);

  if (v1)
  {
    swift_unknownObjectRelease();
    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 500);
    sub_100058000(&qword_100776298, &qword_100636860);
    v5 = swift_allocBox();
    v7 = v6;
    v8 = sub_100058000(&qword_10076DF30, &qword_100631A00);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = static TTRLocalizableStrings.UndoAction.completionChange.getter();
    v11 = v10;
    v12 = swift_task_alloc();
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
    *(v12 + 32) = v2;
    *(v12 + 40) = v5;
    sub_1002597AC(v3, v9, v11, sub_100262920, v12);
    v14 = v13;

    v15 = v14 > 0;
    if (v14 >= 1)
    {
      TTRDebouncedAction.schedule()();
    }

    if (*(v0 + 500) == 1)
    {
      v16 = *(v0 + 320);
      v17 = *(v0 + 304);
      v18 = *(v0 + 312);
      v30 = *(v0 + 296);
      v31 = *(v0 + 328);
      v36 = *(v0 + 288);
      v37 = *(v0 + 280);
      v33 = *(v0 + 272);
      v34 = *(v0 + 456);
      v19 = *(v0 + 256);
      v35 = *(v0 + 264);
      v20 = *(v0 + 240);
      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
      v32 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v21 = *(v18 + 8);
      v21(v16, v17);
      *(v0 + 176) = sub_100262930;
      *(v0 + 184) = v20;
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_10001047C;
      *(v0 + 168) = &unk_10071CEF8;
      v22 = _Block_copy((v0 + 144));

      static DispatchQoS.unspecified.getter();
      *(v0 + 224) = _swiftEmptyArrayStorage;
      sub_10026263C(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50, &qword_100635D30);
      sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

      _Block_release(v22);
      (*(v35 + 8))(v33, v19);
      (*(v36 + 8))(v30, v37);
      v21(v31, v17);
    }

    else
    {
    }
  }

  else
  {
    v23 = *(v0 + 456);
    v25 = *(v0 + 344);
    v24 = *(v0 + 352);
    v26 = *(v0 + 336);
    v27 = *(v0 + 232);
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    sub_1004F1000(v24, v27);

    swift_unknownObjectRelease();
    (*(v25 + 8))(v24, v26);
    v15 = 0;
  }

  v28 = *(v0 + 8);

  return v28(v15);
}

uint64_t sub_100241448()
{
  v16 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = Error.rem_errorDescription.getter();
    v7 = sub_100004060(v5, v6, &v15);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "TTRRemindersListPresenterCapability: error setting completed {error: %{public}s}", v3, 0xCu);
    sub_100004758(v4);
  }

  else
  {
  }

  v8 = v0[57];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[42];
  v12 = v0[29];
  static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
  sub_1004F1000(v9, v12);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13(0);
}

void sub_10024167C()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  isEscapingClosureAtFileLocation = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10026263C(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v9 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminder List confirm SiriFoundInApps reminder {item: %@}", 57, 2, v11);

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v12 = (*(isEscapingClosureAtFileLocation + 88))(v6, v3);
  if (v12 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    goto LABEL_7;
  }

  (*(isEscapingClosureAtFileLocation + 96))(v6, v3);
  v14 = v25;
  v13 = v26;
  (*(v25 + 32))(v2, v6, v26);
  v15 = v24;
  v16 = *(v24 + 72);
  ObjectType = swift_getObjectType();
  v18 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v19 = (*(v16 + 256))(v18, ObjectType, v16);

  if (!v19)
  {
    (*(v14 + 8))(v2, v13);
    return;
  }

  static TTRLocalizableStrings.UndoAction.addSiriSuggestedReminder.getter();
  v20 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v19;
  v6 = swift_allocObject();
  *(v6 + 2) = sub_1002628DC;
  *(v6 + 3) = v21;
  aBlock[4] = sub_100068444;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10071CED0;
  v22 = _Block_copy(aBlock);

  v23 = v19;

  [v20 withActionName:v3 block:v22];
  _Block_release(v22);

  (*(v14 + 8))(v2, v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_7:
    if (v12 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v12 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(isEscapingClosureAtFileLocation + 8))(v6, v3);
    }

    else if (v12 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

BOOL sub_100241BB8(uint64_t a1)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100253A84(a1);
  if (v10 <= 1u)
  {
    if (!v10)
    {

      return 1;
    }

    v12 = 1;
LABEL_15:
    sub_1002625C0(v7, v8, v9, v12);
    return 1;
  }

  v11 = v7;
  if (v10 != 2)
  {
    if (v10 != 3)
    {
      return 0;
    }

    v12 = 3;
    goto LABEL_15;
  }

  v13 = v8;

  v14 = v11[2];

  result = v14 != 0;
  if (!v14 && (v13 & 1) != 0)
  {
    v16 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    if ((*(v16 + 104))(ObjectType, v16))
    {
      (*(v4 + 104))(v6, enum case for TTRSectionID.sectionless(_:), v3);
      v18 = sub_1002E3A40(v6, 0);
      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
      if (!(v18 >> 62))
      {
LABEL_11:
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

        return v19 != 0;
      }
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_11;
      }
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100241DC4(uint64_t a1, char a2)
{
  *(v3 + 272) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 208) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 216) = v6;
  *(v3 + 224) = v5;

  return _swift_task_switch(sub_100241ED4, v6, v5);
}

uint64_t sub_100241ED4()
{
  v76 = v0;
  if (qword_100767028 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v1 = v0[19];
    v67 = type metadata accessor for Logger();
    sub_100003E30(v67, qword_100776068);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 1835365481;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 72) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
    *(inited + 48) = v1;

    v3 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Reminder List delete {item: %@}", 31, 2, v3);

    v7 = sub_100253A84(v1);
    v8 = v4;
    v9 = v5;
    v0[29] = v7;
    v0[30] = v4;
    v0[31] = v5;
    if (v6 > 1u)
    {
      break;
    }

    if (!v6)
    {
      sub_1002537A4(v4);
      v26 = swift_task_alloc();
      v0[32] = v26;
      *v26 = v0;
      v26[1] = sub_100242798;
      v27 = *(v0 + 272);

      return sub_1002552B0(v7, v8, v9 & 1, v27);
    }

    sub_1002537A4(v7);
    v31 = v7[2];
    if (!v31)
    {
      v30 = 1;
      v56 = v7;
      v57 = v8;
      v58 = v9;
LABEL_35:
      sub_1002625C0(v56, v57, v58, 1u);
      goto LABEL_36;
    }

    v63 = v8;
    v65 = v9;
    v32 = v0[22];
    v33 = *(v32 + 16);
    v32 += 16;
    v69 = v33;
    v61 = v7;
    v34 = v7 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v72 = (v32 - 8);
    v74 = *(v0[20] + 128);
    v68 = *(v32 + 56);
    while (1)
    {
      v40 = v0[25];
      v69(v40, v34, v0[21]);
      v41 = *(v74 + 40);
      ObjectType = swift_getObjectType();
      v43 = (*(v41 + 440))(v40, ObjectType, v41);
      (*(v41 + 400))(v40, ObjectType, v41);
      if (v43)
      {
        if (qword_1007673E0 != -1)
        {
          swift_once();
        }

        v70 = v31;
        sub_100003E30(v67, qword_100788800);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = v0[24];
          v47 = v0[21];
          v48 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v75 = v66;
          *v48 = 136315138;
          TTRRemindersListEditingSessionState.item.getter();
          sub_10026263C(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
          v49 = TTRTreeStorageItem.treeItemDescription.getter();
          v51 = v50;
          (*v72)(v46, v47);
          v52 = sub_100004060(v49, v51, &v75);

          *(v48 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v44, v45, "TTRReminderListEditingPresenter: register undo for discarding uncommitted reminder {item: %s}", v48, 0xCu);
          sub_100004758(v66);
        }

        v35 = objc_opt_self();
        static TTRLocalizableStrings.UndoAction.deleteReminder.getter();
        v36 = String._bridgeToObjectiveC()();

        v37 = swift_allocObject();
        *(v37 + 16) = v74;
        *(v37 + 24) = v43;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_100262634;
        *(v38 + 24) = v37;
        v0[16] = sub_100068444;
        v0[17] = v38;
        v0[12] = _NSConcreteStackBlock;
        v0[13] = 1107296256;
        v0[14] = sub_100026440;
        v0[15] = &unk_10071CDE0;
        v39 = _Block_copy(v0 + 12);

        swift_unknownObjectRetain();

        [v35 withActionName:v36 block:v39];

        _Block_release(v39);
        LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

        v31 = v70;
        if (v36)
        {
          break;
        }
      }

      (*v72)(v0[25], v0[21]);
      v34 += v68;
      if (!--v31)
      {
        v30 = 1;
        v56 = v61;
        v57 = v63;
        v58 = v65;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {

      sub_1002537A4(v7);
      v10 = v7[2];
      if (v10)
      {
        v62 = v8;
        v64 = v9;
        v11 = v0[22];
        v12 = *(v0[20] + 128);
        v13 = *(v11 + 16);
        v11 += 16;
        v73 = v13;
        v60 = v7;
        v14 = v7 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
        v15 = *(v11 + 56);
        v16 = (v11 - 8);
        v71 = v12;
        v13(v0[23], v14, v0[21]);
        while (1)
        {
          v17 = *(v12 + 40);
          v18 = swift_getObjectType();
          v19 = (*(v17 + 104))(v18, v17);
          if (v19)
          {
            v20 = v19;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v21 = v15;
              v22 = v0[23];
              v23 = *(v20 + 64);
              v24 = swift_getObjectType();
              v25 = v22;
              v15 = v21;
              v12 = v71;
              (*(v23 + 56))(v25, v24, v23);
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          (*v16)(v0[23], v0[21]);
          v14 += v15;
          if (!--v10)
          {
            break;
          }

          v73(v0[23], v14, v0[21]);
        }

        v53 = v60;
        v54 = v62;
        v55 = v64;
      }

      else
      {
        v53 = v7;
        v54 = v8;
        v55 = v9;
      }

      sub_1002625C0(v53, v54, v55, 3u);
      v30 = 1;
    }

    else
    {

      v30 = 0;
    }

LABEL_36:

    v59 = v0[1];

    return v59(v30);
  }

  sub_1002537A4(v5);
  v29 = swift_task_alloc();
  v0[33] = v29;
  *v29 = v0;
  v29[1] = sub_100242AD4;

  return sub_1002559A0(v7, v8 & 1, v9);
}

uint64_t sub_100242798(char a1)
{
  v2 = *v1;
  *(*v1 + 273) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_1002428E4, v4, v3);
}

uint64_t sub_1002428E4()
{
  v1 = *(v0 + 273);

  if (v1 == 1 && (*(v0 + 272) & 1) == 0)
  {
    v2 = *(v0 + 160);
    *(v0 + 144) = *(v0 + 232);
    sub_100058000(&qword_10076BB08, &unk_10062FDB0);
    sub_100003540(0, &qword_100776230, REMAccountCapabilities_ptr);
    sub_10000E188(&unk_1007758B0, &qword_10076BB08, &unk_10062FDB0, &protocol conformance descriptor for [A]);
    sub_1000072CC(&qword_100776238, &qword_100776230, REMAccountCapabilities_ptr, &protocol conformance descriptor for NSObject);
    v3 = Sequence.compactMapToSet<A>(_:)();

    sub_10000C36C((v2 + 184), *(v2 + 208));
    sub_1000E987C(v3);

    dispatch thunk of TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded(for:)();
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_100242AD4(char a1)
{
  v2 = *v1;
  *(*v1 + 274) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_100242C3C, v4, v3);
}

uint64_t sub_100242C3C()
{

  v1 = *(v0 + 274);

  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::Int sub_100242CC8(char a1, Swift::OpaquePointer a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 32) = 0x64656767616C66;
  *(inited + 16) = xmmword_10062D3F0;
  v7 = a1 & 1;
  v8 = 1702195828;
  if (!v7)
  {
    v8 = 0x65736C6166;
  }

  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v8;
  v9 = 0xE400000000000000;
  if (!v7)
  {
    v9 = 0xE500000000000000;
  }

  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  v6[12]._rawValue = a2._rawValue;

  v10 = sub_100008E04(v6);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder List set flagged {flagged: %@, items: %@}", 50, 2, v10);

  return TTRRemindersListPresenterCapabilityCore.request(setFlaggedTo:for:)(v7, a2);
}

uint64_t sub_100242E78(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xEF72656767697254;
  v13[5] = a1;
  sub_100058000(&qword_1007762D8, &qword_1006368A8);
  *(inited + 48) = Optional.descriptionOrNil.getter();
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a2;

  v7 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder List set locationTrigger {locationTrigger: %@, items: %@}", 66, 2, v7);

  v8 = static TTRLocalizableStrings.UndoAction.locationChange.getter();
  v10 = v9;
  __chkstk_darwin(v8);
  v13[2] = a1;
  sub_1002597AC(a2, v11, v10, sub_100262A50, v13);
}

uint64_t sub_100243084(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "vehicleTrigger");
  *(inited + 47) = -18;
  sub_100058000(&qword_1007762D0, &qword_1006368A0);
  *(inited + 48) = Optional.descriptionOrNil.getter();
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a2;

  v6 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder List set vehicleTrigger {vehicleTrigger: %@, items: %@}", 64, 2, v6);

  return TTRRemindersListPresenterCapabilityCore.request(setVehicleTriggerTo:for:)();
}

uint64_t sub_100243288(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), ...)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x67617468736168;
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a3;

  v13 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44(a4, a5, 2, v13);

  return a6(a1, a2, a3);
}

uint64_t sub_10024343C(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x7367617468736168;
  *(inited + 40) = 0xE800000000000000;
  v6 = sub_100058000(&qword_1007762A0, &unk_100636868);
  *(inited + 48) = a1;
  *(inited + 72) = v6;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a2;

  v7 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List update  {hashtags: %@, items: %@}", 48, 2, v7);

  return TTRRemindersListPresenterCapabilityCore.request(updateHashtagsToMatch:for:)();
}

uint64_t sub_1002435DC()
{
  v35 = type metadata accessor for REMRemindersListBatchDeleteInvocation.CompletionDatePredicate();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = v32 - v4;
  v5 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = sub_100058000(&qword_100776388, &unk_100641E50);
  v12 = *(*(type metadata accessor for TTRRemindersListViewModel.DeleteCompletedMenuItem() - 8) + 72);
  v32[1] = v11;
  v32[2] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  v14._countAndFlagsBits = 0xD00000000000002ELL;
  v15._countAndFlagsBits = 0x706D6F43206C6C41;
  v15._object = 0xED0000646574656CLL;
  v14._object = 0x8000000100679AF0;
  v16._object = 0x8000000100679B20;
  v16._countAndFlagsBits = 0xD000000000000031;
  TTRLocalizedString(_:value:comment:)(v14, v15, v16);
  v36 = v13;
  TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)();
  v17 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  if (!(*(v17 + 56))(ObjectType, v17))
  {
    return v36;
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceDeleteCompletedContextType.listForBatchDelete.getter();
  swift_unknownObjectRelease();
  (*(v37 + 32))(v10, v7, v5);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.completionDatePredicateForDeletingCompletedReminders(in:)();
  v32[0] = v5;
  v19 = v33;
  (*(v33 + 32))(v34, v2, v35);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10062F800;
  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x8000000100679B60;
  v22._object = 0x8000000100679B20;
  v22._countAndFlagsBits = 0xD000000000000031;
  TTRLocalizedString(_:comment:)(v21, v22);
  TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)();
  v23._countAndFlagsBits = 0xD000000000000013;
  v23._object = 0x8000000100679B80;
  v24._object = 0x8000000100679B20;
  v24._countAndFlagsBits = 0xD000000000000031;
  TTRLocalizedString(_:comment:)(v23, v24);
  TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)();
  v25._countAndFlagsBits = 0xD000000000000011;
  v25._object = 0x8000000100679BA0;
  v26._object = 0x8000000100679B20;
  v26._countAndFlagsBits = 0xD000000000000031;
  TTRLocalizedString(_:comment:)(v25, v26);
  v27 = TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)();
  __chkstk_darwin(v27);
  v28 = v34;
  v32[-2] = v34;
  sub_1004B4D00(sub_100263308, &v32[-4], v20);
  v38 = v29;
  sub_100081628(v36);
  (*(v37 + 8))(v10, v32[0]);
  v30 = v38;
  (*(v19 + 8))(v28, v35);
  return v30;
}

void *sub_100243BE4(uint64_t a1)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  result = (*(v6 + 104))(ObjectType, v6);
  if (!result)
  {
    return result;
  }

  v10 = sub_1002E2EA8(v9)[2];

  if (!v10 || (v19[1] = a1, sub_100058000(&qword_10076E0B0, &unk_100631BD0), sub_100003540(0, &qword_10076BA50, REMObjectID_ptr), sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]), (v11 = Sequence.completeCompactMap<A>(_:)()) == 0))
  {
LABEL_12:
    swift_unknownObjectRelease();
    return 0;
  }

  if (v11 >> 62)
  {
    v17 = v11;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v17;
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  v12 = sub_10001D5F8(v11);

  sub_1002E28FC(v12);

  (*(v6 + 152))(ObjectType, v6);
  v13 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    v15.n128_f64[0] = (*(v14 + 8))(v5, v13);
  }

  v16 = sub_1002E2EA8(v15);
  sub_1002E31CC();
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_100243ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v72 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = v61 - v8;
  v9 = sub_100058000(&unk_100775960, &unk_100634F40);
  __chkstk_darwin(v9 - 8);
  v65 = v61 - v10;
  v64 = type metadata accessor for TTRSection();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRSectionID();
  v76 = *(v12 - 8);
  __chkstk_darwin(v12);
  v75 = (v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType(0);
  __chkstk_darwin(v14 - 8);
  v78 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TTRRemindersListViewModel.Item();
  v79 = *(v83 - 8);
  __chkstk_darwin(v83);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6E6F6974636573;
  *(inited + 40) = 0xE700000000000000;
  sub_10026263C(&qword_100776318, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
  v73 = a2;
  v77 = v12;
  *(inited + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 56) = v20;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a1;

  v21 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List set  {section: %@, items: %@}", 44, 2, v21);

  v22 = _swiftEmptyArrayStorage;
  v84 = _swiftEmptyArrayStorage;
  v23 = *(a1 + 16);
  v74 = v4;
  if (v23)
  {
    v24 = *(v4 + 64);
    v81 = *(v4 + 72);
    v82 = v24;
    ObjectType = swift_getObjectType();
    v25 = v79 + 16;
    v79 = *(v79 + 16);
    v26 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v27 = *(v25 + 56);
    v28 = (v25 - 8);
    do
    {
      v29 = v83;
      (v79)(v17, v26, v83);
      v30 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      (*v28)(v17, v29);
      if (v30)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v61[1] = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = v84;
      }

      v26 += v27;
      --v23;
    }

    while (v23);
  }

  v31 = v22;
  if (v22 >> 62)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v78;
    v34 = v77;
    v35 = v76;
    v36 = v75;
    if (v60)
    {
      goto LABEL_12;
    }
  }

  v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = v78;
  v34 = v77;
  v35 = v76;
  v36 = v75;
  if (!v32)
  {
  }

LABEL_12:
  v37 = sub_100058000(&qword_100776320, &qword_1006368F0);
  v38 = *(*(v37 - 8) + 56);
  v38(v33, 2, 2, v37);
  (*(v35 + 16))(v36, v73, v34);
  v39 = (*(v35 + 88))(v36, v34);
  if (v39 == enum case for TTRSectionID.sectioned(_:))
  {
    (*(v35 + 96))(v36, v34);
    v40 = *v36;
    v41 = *(v74 + 72);
    v42 = swift_getObjectType();
    v43 = (*(v41 + 104))(v42, v41);
    if (v43)
    {
      v44 = v43;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v45 = *(v44 + 64);
        v46 = swift_getObjectType();
        (*(v45 + 16))(v46, v45);
        swift_unknownObjectRelease();
        v47 = v65;
        TTRSection.init(with:store:)();
        swift_unknownObjectRelease();
        sub_100262C74(v33, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
        v48 = v63;
        v49 = v64;
        if ((*(v63 + 48))(v47, 1, v64) == 1)
        {

          return sub_1000079B4(v47, &unk_100775960, &unk_100634F40);
        }

        v58 = *(v48 + 32);
        v59 = v62;
        v58(v62, v47, v49);
        v58(v33, v59, v49);
        v50 = 0;
LABEL_19:
        v38(v33, v50, 2, v37);
        v51 = v67;
        v52 = v66;
        v53 = v68;
        (*(v67 + 104))(v66, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v68);
        v54 = *(v74 + 72);
        v55 = swift_getObjectType();
        v56 = v69;
        (*(v54 + 576))(v55, v54);
        sub_1002599EC(v31, v33, v52, v56, v71);

        (*(v70 + 8))(v56, v72);
        (*(v51 + 8))(v52, v53);
        return sub_100262C74(v33, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
      }

      swift_unknownObjectRelease();

      sub_100262C74(v33, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
    }

    else
    {
      sub_100262C74(v33, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
    }

    v47 = v65;
    (*(v63 + 56))(v65, 1, 1, v64);
    return sub_1000079B4(v47, &unk_100775960, &unk_100634F40);
  }

  if (v39 == enum case for TTRSectionID.sectionless(_:))
  {
    sub_100262C74(v33, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
    v50 = 1;
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100244974(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v5 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
  v6 = v5;
  if (v5)
  {
    v5 = sub_100003540(0, &qword_1007756E0, REMReminderChangeItem_ptr);
    v7 = &protocol witness table for REMReminderChangeItem;
  }

  else
  {
    v7 = 0;
  }

  v43[0] = v6;
  v43[1] = 0;
  v43[2] = 0;
  v43[3] = v5;
  v43[4] = v7;
  sub_10000794C(v43, &v39, &qword_1007699B8, &unk_10062E3F0);
  if (v40)
  {
    sub_100005FD0(&v39, v41);
    sub_10000C36C(v41, v42);
    dispatch thunk of TTRReminderProtocol.ttrList.getter();
    if (v35)
    {
      sub_10000C36C(v34, v35);
      dispatch thunk of TTRListProtocol.ttrGroceryContext.getter();
      sub_100004758(v34);
      if (*(&v37 + 1))
      {
        sub_100005FD0(&v36, &v39);
        sub_10000C36C(&v39, v40);
        if (dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter())
        {
          v8 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_reminderIDsPreviouslyShownWithSuggestedSection;
          swift_beginAccess();
          v9 = *(v2 + v8);
          sub_10000C36C(v41, v42);

          v10 = dispatch thunk of TTRReminderProtocol.objectID.getter();
          v11 = sub_1000A9F28(v10, v9);

          if (v11)
          {
            if (qword_100767028 != -1)
            {
              swift_once();
            }

            v12 = type metadata accessor for Logger();
            sub_100003E30(v12, qword_100776068);
            v13 = Logger.logObject.getter();
            v14 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v13, v14))
            {
              goto LABEL_40;
            }

            v15 = swift_slowAlloc();
            *v15 = 0;
            v16 = "CheckBeforeFetchingSuggestedSection: Shouldn't fetch suggested section for reminder that was previously shown a suggested section in this session";
          }

          else
          {
            if ((*(v3 + 120))(ObjectType, v3))
            {
              swift_getObjectType();
              v26 = dispatch thunk of TTRRemindersListDataModelSourceNewReminderContextType.newlyInsertedReminderIDs.getter();
              sub_10000C36C(v41, v42);
              v27 = dispatch thunk of TTRReminderProtocol.objectID.getter();
              v28 = sub_1000A9F28(v27, v26);

              if (v28)
              {
                sub_10000C36C(v41, v42);
                if ((TTRReminderProtocol.isSubtask.getter() & 1) == 0)
                {
                  sub_10025AD2C(v29);

                  PassthroughSubject.send(_:)();
                  swift_unknownObjectRelease();

                  goto LABEL_41;
                }

                if (qword_100767028 != -1)
                {
                  swift_once();
                }

                v30 = type metadata accessor for Logger();
                sub_100003E30(v30, qword_100776068);
                v13 = Logger.logObject.getter();
                v31 = static os_log_type_t.info.getter();
                if (!os_log_type_enabled(v13, v31))
                {

                  swift_unknownObjectRelease();
                  goto LABEL_41;
                }

                v32 = swift_slowAlloc();
                *v32 = 0;
                _os_log_impl(&_mh_execute_header, v13, v31, "CheckBeforeFetchingSuggestedSection: Shouldn't fetch suggested section for subtask", v32, 2u);

                swift_unknownObjectRelease();
LABEL_40:

LABEL_41:
                sub_1000079B4(v43, &qword_1007699B8, &unk_10062E3F0);
                sub_100004758(&v39);
                return sub_100004758(v41);
              }

              swift_unknownObjectRelease();
            }

            if (qword_100767028 != -1)
            {
              swift_once();
            }

            v33 = type metadata accessor for Logger();
            sub_100003E30(v33, qword_100776068);
            v13 = Logger.logObject.getter();
            v14 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v13, v14))
            {
              goto LABEL_40;
            }

            v15 = swift_slowAlloc();
            *v15 = 0;
            v16 = "CheckBeforeFetchingSuggestedSection: Shouldn't fetch suggested section for reminder that wasn't recently created";
          }

          _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

          goto LABEL_40;
        }

        sub_100004758(&v39);
LABEL_21:
        if (qword_100767028 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_100003E30(v22, qword_100776068);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "CheckBeforeFetchingSuggestedSection: Shouldn't fetch suggested section in list that doesn't support categorization of grocery items", v25, 2u);
        }

        sub_1000079B4(v43, &qword_1007699B8, &unk_10062E3F0);
        return sub_100004758(v41);
      }
    }

    else
    {
      sub_1000079B4(v34, &unk_100775680, &qword_10062E3B0);
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
    }

    sub_1000079B4(&v36, &qword_1007757E0, &qword_100636780);
    goto LABEL_21;
  }

  sub_1000079B4(&v39, &qword_1007699B8, &unk_10062E3F0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100776068);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "CheckBeforeFetchingSuggestedSection: Couldn't get reminder for item", v20, 2u);
  }

  return sub_1000079B4(v43, &qword_1007699B8, &unk_10062E3F0);
}

void sub_100245068(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v5 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID;
    v6 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      v9 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      if (!v9)
      {
        break;
      }

      v10 = v9;
      swift_beginAccess();
      if (*(v3 + v5))
      {
        v11 = v10;
        v12 = sub_1002613B0(v11);
        if (v13)
        {
          v14 = v12;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = *(v3 + v5);
          *(v3 + v5) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1003AE8BC();
          }

          sub_1003ACBC4(v14, v16);

          *(v3 + v5) = v16;
        }

        else
        {
        }
      }

      swift_endAccess();

      v7 += v8;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1002451DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 72);
  ObjectType = swift_getObjectType();
  (*(v7 + 496))(&v23, a2, a3, ObjectType, v7);
  if (v24)
  {
    sub_100005FD0(&v23, v26);
    v9 = sub_10057EEDC(a1, ObjectType, v7);
    if (v9)
    {
      v10 = v9;
      v11 = v27;
      v12 = v28;
      sub_10000C36C(v26, v27);
      (*(v12 + 32))(&v23, v10, v11, v12);

      v14 = v24;
      v13 = v25;
      sub_10000C36C(&v23, v24);
      LOBYTE(v14) = (v13[2])(v14, v13) ^ 1;
LABEL_10:
      sub_100004758(&v23);
      sub_100004758(v26);
      return v14 & 1;
    }

    sub_100004758(v26);
  }

  else
  {
    sub_1000079B4(&v23, &qword_100775A10, &qword_100636020);
  }

  v14 = (*(v7 + 104))(ObjectType, v7);
  if (v14)
  {
    sub_1002E5744(a2, a3, &v23);
    if (v24)
    {
      sub_100005FD0(&v23, v26);
      *&v23 = a1;
      sub_100058000(&qword_10076E0B0, &unk_100631BD0);
      sub_100058000(&qword_10076F9F8, &unk_100632760);
      sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
      v15 = Sequence.completeCompactMap<A>(_:)();
      if (v15)
      {
        v16 = v15;
        v17 = *sub_10000C36C(v26, v27);
        v18 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.SectionsInsertionPlan(0);
        v19 = swift_allocObject();
        *(v19 + 16) = _swiftEmptyArrayStorage;
        *(v19 + 24) = 1;
        v20 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan____lazy_storage___position;
        v21 = sub_100058000(&unk_100775A30, &qword_1006326E0);
        (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
        *(v19 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredMoveSubjects) = 0;
        *(v19 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredLocalItems) = 0;
        *(v19 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_insertionRequest) = v17;

        sub_100156D70(v16);

        v24 = v18;
        v25 = &off_1007182F0;
        swift_unknownObjectRelease();
        *&v23 = v19;
        LOBYTE(v14) = *(*sub_10000C36C(&v23, v18) + 24) ^ 1;
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
      sub_100004758(v26);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1000079B4(&v23, &unk_100775A20, &unk_100636030);
    }

    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

BOOL sub_100245568(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v13 = &v19 - v11;
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  (*(v7 + 16))(&v19 - v11, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6, v12);
  v14 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  v16 = v5[*(v3 + 32)];
  sub_100262C74(v5, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    v17 = (*(v7 + 88))(v9, v6) == enum case for TTRRemindersListViewModel.Item.reminder(_:);
    v13 = v9;
  }

  (*(v7 + 8))(v13, v6);
  return v17;
}

uint64_t sub_10024579C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  (*(v5 + 504))(&v12, a2, ObjectType, v5);
  if (v13)
  {
    sub_100005FD0(&v12, v15);
    v7 = sub_10057EEDC(a1, ObjectType, v5);
    if (v7)
    {
      v8 = v16;
      v9 = v17;
      sub_10000C36C(v15, v16);
      (*(v9 + 32))(&v12, v7, v8, v9);

      v7 = v13;
      v10 = v14;
      sub_10000C36C(&v12, v13);
      LOBYTE(v7) = (*(v10 + 16))(v7, v10) ^ 1;
      sub_100004758(&v12);
    }

    sub_100004758(v15);
  }

  else
  {
    sub_1000079B4(&v12, &qword_100775A10, &qword_100636020);
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

void sub_1002458E8(char **a1)
{
  v217 = a1;
  v2 = type metadata accessor for DateComponents();
  v206 = *(v2 - 8);
  v207 = v2;
  __chkstk_darwin(v2);
  v204 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = v3;
  __chkstk_darwin(v4);
  v205 = &v190 - v5;
  v203 = type metadata accessor for TTRSection();
  v200 = *(v203 - 8);
  __chkstk_darwin(v203);
  v198 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v7 - 8);
  v197 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v210 = &v190 - v10;
  __chkstk_darwin(v11);
  v199 = &v190 - v12;
  __chkstk_darwin(v13);
  v196 = &v190 - v14;
  v15 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v211 = *(v15 - 8);
  v212 = v15;
  __chkstk_darwin(v15);
  v190 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v209 = &v190 - v18;
  __chkstk_darwin(v19);
  v192 = &v190 - v20;
  __chkstk_darwin(v21);
  v191 = &v190 - v22;
  v23 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v219 = *(v23 - 1);
  v220 = v23;
  __chkstk_darwin(v23);
  v194 = &v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v195 = &v190 - v26;
  __chkstk_darwin(v27);
  v29 = &v190 - v28;
  __chkstk_darwin(v30);
  v201 = &v190 - v31;
  __chkstk_darwin(v32);
  v34 = &v190 - v33;
  __chkstk_darwin(v35);
  v37 = &v190 - v36;
  __chkstk_darwin(v38);
  v40 = &v190 - v39;
  v41 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  __chkstk_darwin(v41);
  v193 = &v190 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = (&v190 - v44);
  __chkstk_darwin(v46);
  v48 = (&v190 - v47);
  v49 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v215 = *(v49 - 8);
  v216 = v49;
  __chkstk_darwin(v49);
  v208 = &v190 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v190 - v52;
  v214 = v1;
  v54 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v56 = *(v54 + 576);
  v218 = v53;
  v213 = ObjectType;
  v56(ObjectType, v54);
  v57 = v217;
  sub_100262D10(v217, v48, type metadata accessor for TTRRemindersListMovingRemindersParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v59 = *v48;
  if (EnumCaseMultiPayload <= 3)
  {
    v204 = v40;
    v205 = v37;
    v77 = v209;
    v76 = v210;
    v206 = v34;
    v207 = v59;
    if (EnumCaseMultiPayload > 1)
    {
      v91 = v219;
      if (EnumCaseMultiPayload == 2)
      {

        v92 = sub_100058000(&qword_100773398, &unk_100634F70);
        v93 = v91;
        v94 = v92;
        v95 = *(v92 + 64);
        v210 = *(v48 + *(v92 + 80));
        v96 = v48 + v95;
        v97 = v93;
        v98 = v220;
        (v93[4])(v206, v96, v220);
        sub_100262D10(v57, v45, type metadata accessor for TTRRemindersListMovingRemindersParams);
        v99 = swift_getEnumCaseMultiPayload();
        if (v99 == 2)
        {

          v153 = *(v94 + 64);

          (v97)[1](v45 + v153, v98);
        }

        else
        {
          sub_100262C74(v45, type metadata accessor for TTRRemindersListMovingRemindersParams);
        }

        v82 = v215;
        v83 = v216;
        v154 = v98;
        v155 = v196;
        (*(v54 + 608))(v213, v54);
        v156 = v211;
        if ((*(v211 + 48))(v155, 1, v212) == 1)
        {

          sub_1000079B4(v155, &qword_10076DF30, &qword_100631A00);
          v157 = v206;
        }

        else
        {
          LODWORD(v216) = v99 != 2;
          v167 = v191;
          v168 = (*(v156 + 32))();
          v217 = &v190;
          __chkstk_darwin(v168);
          v157 = v206;
          v169 = v207;
          *(&v190 - 8) = v214;
          *(&v190 - 7) = v169;
          v170 = v210;
          *(&v190 - 6) = v157;
          *(&v190 - 5) = v170;
          *(&v190 - 32) = v216;
          *(&v190 - 3) = v218;
          *(&v190 - 2) = v167;

          sub_1002614C8(v171, sub_100263028, (&v190 - 10));
          swift_bridgeObjectRelease_n();

          v154 = v220;
          v172 = v208;
          (*(v82 + 104))(v208, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v83);
          (*(v54 + 592))(v172, 0, v213, v54);
          (*(v82 + 8))(v172, v83);
          (*(v156 + 8))(v167, v212);
        }

        (v219)[1](v157, v154);
        v71 = 0;
        v69 = 0;
        v74 = 0;
        v75 = 0;
        goto LABEL_41;
      }

      v123 = v48[1];
      v124 = v48 + *(sub_100058000(&qword_10076E908, &unk_100636940) + 64);
      v125 = v29;
      v126 = v29;
      v127 = v220;
      (v91[4])(v126, v124, v220);
      (*(v54 + 616))(v123, v213, v54);
      v129 = v211;
      v128 = v212;
      if ((*(v211 + 48))(v76, 1, v212) == 1)
      {

        sub_1000079B4(v76, &qword_10076DF30, &qword_100631A00);
        v82 = v215;
        v83 = v216;
        v130 = v125;
        v85 = v218;
      }

      else
      {
        v162 = v77;
        v163 = (*(v129 + 32))(v77, v76, v128);
        __chkstk_darwin(v163);
        v164 = v207;
        *(&v190 - 6) = v214;
        *(&v190 - 5) = v164;
        *(&v190 - 4) = v125;
        *(&v190 - 24) = 0;
        v165 = v125;
        v85 = v218;
        *(&v190 - 2) = v218;
        *(&v190 - 1) = v162;

        sub_1002614C8(v166, sub_100262FE4, (&v190 - 8));
        swift_bridgeObjectRelease_n();

        (*(v129 + 8))(v162, v128);
        v82 = v215;
        v83 = v216;
        v130 = v165;
      }

      (v219)[1](v130, v127);
LABEL_49:
      v71 = 0;
      v69 = 0;
      v74 = 0;
      v75 = 0;
      goto LABEL_50;
    }

    v78 = v219;
    if (!EnumCaseMultiPayload)
    {
      v217 = v48[1];
      v79 = sub_100058000(&qword_100776370, &unk_100642660);
      v80 = *(v48 + *(v79 + 80));
      v81 = v204;
      (v78[4])(v204, v48 + *(v79 + 64), v220);
      v82 = v215;
      v83 = v216;
      v84 = v208;
      (*(v215 + 104))(v208, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v216);
      v85 = v218;
      v86 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
      v87 = (*(v82 + 8))(v84, v83);
      if (v86)
      {
        __chkstk_darwin(v87);
        v88 = v207;
        *(&v190 - 6) = v214;
        *(&v190 - 5) = v88;
        v89 = v217;
        *(&v190 - 4) = v217;
        *(&v190 - 3) = v81;
        *(&v190 - 2) = v80;

        sub_1002614C8(v90, sub_100264838, (&v190 - 8));
LABEL_29:

        swift_bridgeObjectRelease_n();

        (v78)[1](v81, v220);
        goto LABEL_49;
      }

      v89 = v217;
      v149 = (*(v54 + 624))(v217, v85, v213, v54);
      if (v149)
      {
        v213 = &v190;
        __chkstk_darwin(v149);
        v150 = v207;
        *(&v190 - 6) = v214;
        *(&v190 - 5) = v150;
        v81 = v204;
        *(&v190 - 4) = v89;
        *(&v190 - 3) = v81;
        *(&v190 - 2) = v80;
        *(&v190 - 1) = v151;

        sub_1002614C8(v152, sub_100263098, (&v190 - 8));

        goto LABEL_29;
      }

      (v78)[1](v204, v220);
      v71 = 0;
LABEL_53:
      v69 = 0;
      v74 = 0;
      v75 = 0;
      goto LABEL_50;
    }

    v115 = v48[1];
    v116 = sub_100058000(&qword_100776368, &unk_100636950);
    v117 = v205;
    (v78[4])(v205, v48 + *(v116 + 64), v220);
    v82 = v215;
    v83 = v216;
    v118 = v208;
    (*(v215 + 104))(v208, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v216);
    v85 = v218;
    v119 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v120 = (*(v82 + 8))(v118, v83);
    if (v119)
    {
      __chkstk_darwin(v120);
      v121 = v207;
      *(&v190 - 4) = v214;
      *(&v190 - 3) = v121;
      *(&v190 - 2) = v115;
      *(&v190 - 1) = v117;

      sub_1002614C8(v122, sub_100264834, (&v190 - 6));
    }

    else
    {
      v158 = [v115 list];
      v71 = (*(v54 + 624))();

      if (!v71)
      {

        (v78)[1](v205, v220);
        goto LABEL_53;
      }

      __chkstk_darwin(v159);
      v160 = v207;
      *(&v190 - 6) = v214;
      *(&v190 - 5) = v160;
      v117 = v205;
      *(&v190 - 4) = v115;
      *(&v190 - 3) = v117;
      *(&v190 - 2) = v71;

      sub_1002614C8(v161, sub_100264830, (&v190 - 8));
    }

    swift_bridgeObjectRelease_n();
    (v78)[1](v117, v220);
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v207 = *v48;
    v100 = v219;
    if (EnumCaseMultiPayload == 4)
    {

      v101 = sub_100058000(&qword_100776360, &unk_100642650);
      v102 = v220;
      (v100[4])(v201, v48 + *(v101 + 64), v220);
      v103 = v193;
      sub_100262D10(v57, v193, type metadata accessor for TTRRemindersListMovingRemindersParams);
      LODWORD(v217) = swift_getEnumCaseMultiPayload();
      if (v217 == 2)
      {

        v173 = *(sub_100058000(&qword_100773398, &unk_100634F70) + 64);

        v100[1](v103 + v173, v102);
      }

      else
      {
        sub_100262C74(v103, type metadata accessor for TTRRemindersListMovingRemindersParams);
      }

      v82 = v215;
      v83 = v216;
      v85 = v218;
      v175 = v211;
      v174 = v212;
      v176 = v199;
      (*(v54 + 608))(v213, v54);
      if ((*(v175 + 48))(v176, 1, v174) == 1)
      {

        sub_1000079B4(v176, &qword_10076DF30, &qword_100631A00);
        v177 = v201;
      }

      else
      {
        LODWORD(v217) = v217 != 2;
        v184 = v192;
        v185 = (*(v175 + 32))();
        __chkstk_darwin(v185);
        v186 = v207;
        *(&v190 - 6) = v214;
        *(&v190 - 5) = v186;
        v177 = v201;
        *(&v190 - 4) = v201;
        *(&v190 - 24) = v217;
        *(&v190 - 2) = v218;
        *(&v190 - 1) = v184;

        sub_1002614C8(v187, sub_100262FF0, (&v190 - 8));
        swift_bridgeObjectRelease_n();
        v188 = v208;
        (*(v82 + 104))(v208, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v83);
        (*(v54 + 592))(v188, 0, v213, v54);
        (*(v82 + 8))(v188, v83);
        v189 = v184;
        v100 = v219;
        (*(v175 + 8))(v189, v212);
        v85 = v218;
      }

      (v100)[1](v177, v220);
    }

    else
    {
      v141 = v48[1];

      v142 = v48 + *(sub_100058000(&qword_100776358, &unk_100636930) + 80);
      v143 = v195;
      (v100[4])(v195, v142, v220);
      v144 = v197;
      v145 = v213;
      (*(v54 + 608))(v213, v54);
      v147 = v211;
      v146 = v212;
      if ((*(v211 + 48))(v144, 1, v212) == 1)
      {

        sub_1000079B4(v144, &qword_10076DF30, &qword_100631A00);
        v148 = v143;
        v82 = v215;
        v83 = v216;
      }

      else
      {
        v178 = v190;
        v179 = (*(v147 + 32))(v190, v144, v146);
        __chkstk_darwin(v179);
        v180 = v141;
        v181 = v207;
        *(&v190 - 6) = v214;
        *(&v190 - 5) = v181;
        *(&v190 - 4) = v180;
        *(&v190 - 3) = v143;
        *(&v190 - 2) = v218;
        *(&v190 - 1) = v178;

        sub_1002614C8(v182, sub_10026482C, (&v190 - 8));
        swift_bridgeObjectRelease_n();
        v148 = v143;
        v82 = v215;
        v83 = v216;
        v183 = v208;
        (*(v215 + 104))(v208, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v216);
        (*(v54 + 592))(v183, 0, v145, v54);

        (*(v82 + 8))(v183, v83);
        (*(v211 + 8))(v178, v212);
      }

      v85 = v218;
      (v100)[1](v148, v220);
    }

    goto LABEL_49;
  }

  v60 = v219;
  if (EnumCaseMultiPayload == 6)
  {
    v104 = *v48;
    v105 = sub_100058000(&qword_100773378, &qword_100634F50);
    v106 = v105[16];
    v107 = *(v48 + v105[20]);
    v108 = v200;
    v109 = v198;
    (*(v200 + 32))(v198, v48 + v105[12], v203);
    v110 = v48 + v106;
    v111 = v194;
    v112 = v220;
    v113 = (v60[4])(v194, v110, v220);
    LOBYTE(aBlock) = 0;
    __chkstk_darwin(v113);
    *(&v190 - 8) = &aBlock;
    *(&v190 - 7) = v214;
    *(&v190 - 6) = v104;
    *(&v190 - 5) = v109;
    *(&v190 - 4) = v111;
    v85 = v218;
    *(&v190 - 3) = v218;
    *(&v190 - 2) = v107;

    sub_1002614C8(v114, sub_100264828, (&v190 - 10));
    swift_bridgeObjectRelease_n();

    (v60)[1](v111, v112);
    (*(v108 + 8))(v109, v203);
    v71 = 0;
    v69 = 0;
    v74 = 0;
    v75 = 0;
    v82 = v215;
    v83 = v216;
LABEL_50:
    (*(v82 + 8))(v85, v83);
    sub_1000301AC(v71, v69);
    sub_1000301AC(v74, v75);
    return;
  }

  v61 = *v48;
  if (EnumCaseMultiPayload == 7)
  {
    v62 = sub_100058000(&qword_100776350, &unk_100636920);
    v63 = v206;
    v64 = v207;
    v65 = *(v206 + 4);
    v66 = v205;
    v65(v205, v48 + *(v62 + 48), v207);
    v220 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
    v219 = String._bridgeToObjectiveC()();

    v67 = v204;
    (*(v63 + 2))(v204, v66, v64);
    v68 = (v63[80] + 32) & ~v63[80];
    v69 = swift_allocObject();
    *(v69 + 16) = v214;
    *(v69 + 24) = v61;
    v65((v69 + v68), v67, v64);
    v70 = swift_allocObject();
    v71 = sub_100264824;
    *(v70 + 16) = sub_100264824;
    *(v70 + 24) = v69;
    v225 = sub_100068444;
    v226 = v70;
    aBlock = _NSConcreteStackBlock;
    v222 = 1107296256;
    v223 = sub_100026440;
    v224 = &unk_10071D240;
    v72 = _Block_copy(&aBlock);

    v73 = v219;
    [v220 withActionName:v219 block:v72];
    _Block_release(v72);

    (*(v63 + 1))(v66, v64);
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if ((v63 & 1) == 0)
    {
      v74 = 0;
      v75 = 0;
LABEL_24:
      v82 = v215;
      v83 = v216;
LABEL_41:
      v85 = v218;
      goto LABEL_50;
    }

    __break(1u);
  }

  else
  {
    v131 = sub_100058000(&qword_100776350, &unk_100636920);
    v132 = v206;
    v133 = v207;
    v134 = *(v206 + 4);
    v135 = v205;
    v134(v205, v48 + *(v131 + 48), v207);
    v220 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
    v219 = String._bridgeToObjectiveC()();

    v136 = v204;
    (*(v132 + 2))(v204, v135, v133);
    v137 = (v132[80] + 32) & ~v132[80];
    v75 = swift_allocObject();
    *(v75 + 16) = v214;
    *(v75 + 24) = v61;
    v134((v75 + v137), v136, v133);
    v138 = swift_allocObject();
    v74 = sub_100264820;
    *(v138 + 16) = sub_100264820;
    *(v138 + 24) = v75;
    v225 = sub_100068444;
    v226 = v138;
    aBlock = _NSConcreteStackBlock;
    v222 = 1107296256;
    v223 = sub_100026440;
    v224 = &unk_10071D1C8;
    v139 = _Block_copy(&aBlock);

    v140 = v219;
    [v220 withActionName:v219 block:v139];
    _Block_release(v139);

    (*(v132 + 1))(v135, v133);
    LOBYTE(v132) = swift_isEscapingClosureAtFileLocation();

    if ((v132 & 1) == 0)
    {
      v71 = 0;
      v69 = 0;
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_100247324(uint64_t a1)
{
  v3 = sub_100058000(&qword_10076FA08, &qword_100632780);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24[-v5];
  v7 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
  __chkstk_darwin(v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = 0;
  sub_100262D10(a1, v9, type metadata accessor for TTRRemindersListMovingSectionsParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  v12 = *(v9 + 1);
  v13 = *(v4 + 32);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = sub_100058000(&qword_10076FA18, &qword_100632790);
      v15 = v13(v6, &v9[*(v14 + 64)], v3);
      __chkstk_darwin(v15);
      v16 = &v24[-64];
      *&v24[-48] = &v25;
      *&v24[-40] = v1;
      *&v24[-32] = v11;
      *&v24[-24] = v12;
      *&v24[-16] = v6;

      v18 = sub_100263188;
    }

    else
    {
      v21 = sub_100058000(&qword_10076FA10, &qword_100632788);
      v22 = v13(v6, &v9[*(v21 + 64)], v3);
      __chkstk_darwin(v22);
      v16 = &v24[-64];
      *&v24[-48] = &v25;
      *&v24[-40] = v1;
      *&v24[-32] = v11;
      *&v24[-24] = v12;
      *&v24[-16] = v6;

      v18 = sub_10026317C;
    }
  }

  else
  {
    v19 = sub_100058000(&qword_10076FA20, &qword_100632798);
    v20 = v13(v6, &v9[*(v19 + 64)], v3);
    __chkstk_darwin(v20);
    v16 = &v24[-64];
    *&v24[-48] = &v25;
    *&v24[-40] = v1;
    *&v24[-32] = v11;
    *&v24[-24] = v12;
    *&v24[-16] = v6;

    v18 = sub_1002631BC;
  }

  sub_100261648(v17, v18, v16);

  swift_bridgeObjectRelease_n();
  (*(v4 + 8))(v6, v3);
  return v25;
}

uint64_t sub_100247638(uint64_t a1)
{
  v155 = a1;
  v2 = type metadata accessor for DateComponents();
  v148 = *(v2 - 8);
  v149 = v2;
  v3 = v148[8];
  __chkstk_darwin(v2);
  v147 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v150 = &v138 - v5;
  v144 = type metadata accessor for TTRSection();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v7 - 8);
  v139 = &v138 - v8;
  v146 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v142 = *(v146 - 8);
  __chkstk_darwin(v146);
  v140 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v152 = *(v10 - 1);
  v153 = v10;
  __chkstk_darwin(v10);
  v145 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v138 - v13;
  __chkstk_darwin(v15);
  v17 = &v138 - v16;
  v18 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  __chkstk_darwin(v18);
  v20 = (&v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v156 = *(v154 - 8);
  __chkstk_darwin(v154);
  v22 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v151 = v1;
  v24 = *(v1 + 72);
  v26 = &v138 - v25;
  ObjectType = swift_getObjectType();
  (*(v24 + 72))(ObjectType, v24);
  sub_100262D10(v155, v20, type metadata accessor for TTRRemindersListMovingRemindersParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *v20;
  v157 = v26;
  if (EnumCaseMultiPayload <= 3)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v155 = v29;
      v113 = v20[2];
      v150 = v20[1];

      v114 = sub_100058000(&qword_100776358, &unk_100636930);
      v116 = v152;
      v115 = v153;
      v117 = ObjectType;
      v118 = v145;
      (*(v152 + 4))(v145, v20 + *(v114 + 80), v153);
      v119 = *(v24 + 76);
      v120 = v139;
      v149 = v117;
      v119(v117, v24);
      v121 = v142;
      v122 = v146;
      v123 = (*(v142 + 48))(v120, 1, v146);
      v17 = v156;
      if (v123 != 1)
      {
        v132 = (*(v121 + 32))(v140, v120, v122);
        v148 = &v138;
        __chkstk_darwin(v132);
        v133 = v150;
        v134 = v155;
        *(&v138 - 6) = v151;
        *(&v138 - 5) = v134;
        *(&v138 - 4) = v133;
        *(&v138 - 3) = v118;
        v135 = v140;
        *(&v138 - 2) = v157;
        *(&v138 - 1) = v135;

        sub_1002614C8(v136, sub_100262DAC, (&v138 - 8));
        swift_bridgeObjectRelease_n();
        v137 = v154;
        (*(v17 + 13))(v22, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v154);
        (*(v24 + 74))(v22, 0, v149, v24);

        (*(v17 + 1))(v22, v137);
        (*(v121 + 8))(v135, v146);
        v116[1](v145, v153);
        v84 = v137;
        v36 = 0;
        v14 = 0;
        v46 = 0;
        v47 = 0;
        v38 = 1;
        goto LABEL_45;
      }

      sub_1000079B4(v120, &qword_10076DF30, &qword_100631A00);
      v116[1](v118, v115);
      goto LABEL_42;
    }

    v62 = v20[1];
    v17 = v156;
    if (qword_100767028 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v73 = sub_100058000(&qword_100773378, &qword_100634F50);
    v74 = v73[16];
    v75 = *(v20 + v73[20]);
    v76 = v143;
    v77 = v141;
    v78 = v144;
    (*(v143 + 32))(v141, v20 + v73[12], v144);
    v79 = v152;
    v80 = v20 + v74;
    v81 = v153;
    v82 = (*(v152 + 4))(v17, v80, v153);
    LOBYTE(aBlock) = 0;
    __chkstk_darwin(v82);
    *(&v138 - 8) = &aBlock;
    *(&v138 - 7) = v151;
    *(&v138 - 6) = v29;
    *(&v138 - 5) = v77;
    *(&v138 - 4) = v17;
    *(&v138 - 3) = v157;
    *(&v138 - 2) = v75;

    sub_1002614C8(v83, sub_100262DA8, (&v138 - 10));
    swift_bridgeObjectRelease_n();

    v38 = aBlock;
    v79[1](v17, v81);
    (*(v76 + 8))(v77, v78);
    v36 = 0;
    v14 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_21;
  }

  v155 = v29;
  if (EnumCaseMultiPayload != 7)
  {
    v104 = sub_100058000(&qword_100776350, &unk_100636920);
    v105 = v148;
    v106 = v149;
    v107 = v148[4];
    v108 = v150;
    v107(v150, v20 + *(v104 + 48), v149);
    v153 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
    v152 = String._bridgeToObjectiveC()();

    v109 = v147;
    (v105[2])(v147, v108, v106);
    v110 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v47 = swift_allocObject();
    v111 = v155;
    *(v47 + 16) = v151;
    *(v47 + 24) = v111;
    v107((v47 + v110), v109, v106);
    v62 = swift_allocObject();
    v46 = sub_100262D78;
    v62[2] = sub_100262D78;
    v62[3] = v47;
    v163 = sub_100068444;
    v164 = v62;
    aBlock = _NSConcreteStackBlock;
    v160 = 1107296256;
    v161 = sub_100026440;
    v162 = &unk_10071D088;
    v20 = _Block_copy(&aBlock);

    v112 = v152;
    [v153 withActionName:v152 block:v20];

    _Block_release(v20);
    (v105[1])(v150, v106);
    v38 = 1;
    LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

    v17 = v156;
    if ((v105 & 1) == 0)
    {
      v36 = 0;
      v14 = 0;
LABEL_44:
      v84 = v154;
      goto LABEL_45;
    }

    __break(1u);
LABEL_49:
    swift_once();
LABEL_18:
    v63 = type metadata accessor for Logger();
    sub_100003E30(v63, qword_100776068);
    v64 = v62;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v152;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      v71 = [v64 objectID];
      *(v69 + 4) = v71;
      *v70 = v71;
      _os_log_impl(&_mh_execute_header, v65, v66, "Unexpected moveInTemplate param for dropping into item {template: %@}", v69, 0xCu);
      sub_1000079B4(v70, &unk_10076DF80, &qword_10062F730);

      v72 = v65;
    }

    else
    {
      v72 = v64;
      v64 = v65;
    }

    v130 = sub_100058000(&qword_100776360, &unk_100642650);
    v68[1](v20 + *(v130 + 64), v153);
LABEL_42:
    v38 = 0;
    v36 = 0;
    v14 = 0;
    goto LABEL_43;
  }

  v30 = sub_100058000(&qword_100776350, &unk_100636920);
  v31 = v148;
  v29 = v149;
  v32 = v148[4];
  v24 = v150;
  v32(v150, v20 + *(v30 + 48), v149);
  v153 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
  v152 = String._bridgeToObjectiveC()();

  v33 = v147;
  (v31[2])(v147, v24, v29);
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v14 = swift_allocObject();
  v35 = v155;
  *(v14 + 2) = v151;
  *(v14 + 3) = v35;
  v32(&v14[v34], v33, v29);
  v20 = swift_allocObject();
  v36 = sub_100262D90;
  v20[2] = sub_100262D90;
  v20[3] = v14;
  v163 = sub_100068444;
  v164 = v20;
  aBlock = _NSConcreteStackBlock;
  v160 = 1107296256;
  v161 = sub_100026440;
  v162 = &unk_10071D100;
  v37 = _Block_copy(&aBlock);

  v22 = v152;
  [v153 withActionName:v152 block:v37];

  _Block_release(v37);
  (v31[1])(v24, v29);
  v38 = 1;
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  v17 = v156;
  if ((v31 & 1) == 0)
  {
LABEL_43:
    v46 = 0;
    v47 = 0;
    goto LABEL_44;
  }

  __break(1u);
LABEL_7:
  if (EnumCaseMultiPayload > 1)
  {
    v48 = v152;
    if (EnumCaseMultiPayload == 2)
    {

      v49 = v20[1];
      v50 = sub_100058000(&qword_100773398, &unk_100634F70);

      v17 = v156;
      if (qword_100767028 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100003E30(v51, qword_100776068);
      v52 = v49;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v155 = v50;
        v56 = v55;
        v57 = swift_slowAlloc();
        v158 = v52;
        aBlock = v57;
        *v56 = 136315138;
        type metadata accessor for REMSmartListType(0);
        v58 = v52;
        v59 = String.init<A>(describing:)();
        v61 = sub_100004060(v59, v60, &aBlock);
        v48 = v152;

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v53, v54, "Unexpected moveToList param for dropping into item {smartListType: %s}", v56, 0xCu);
        sub_100004758(v57);

        v50 = v155;
      }

      else
      {
      }

      v124 = *(v50 + 64);
    }

    else
    {

      v95 = v20[1];
      v17 = v156;
      if (qword_100767028 != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      sub_100003E30(v96, qword_100776068);
      v97 = v95;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v100 = 138412290;
        v102 = [v97 objectID];
        *(v100 + 4) = v102;
        *v101 = v102;
        _os_log_impl(&_mh_execute_header, v98, v99, "Unexpected moveToSmartList param for dropping into item {target: %@}", v100, 0xCu);
        sub_1000079B4(v101, &unk_10076DF80, &qword_10062F730);

        v103 = v98;
      }

      else
      {
        v103 = v97;
        v97 = v98;
      }

      v124 = *(sub_100058000(&qword_10076E908, &unk_100636940) + 64);
    }

    v48[1](v20 + v124, v153);
    goto LABEL_42;
  }

  v39 = v152;
  if (!EnumCaseMultiPayload)
  {
    v40 = v20[1];
    v41 = sub_100058000(&qword_100776370, &unk_100642660);
    v42 = *(v20 + *(v41 + 80));
    v43 = v153;
    v44 = v39[4](v17, v20 + *(v41 + 64), v153);
    __chkstk_darwin(v44);
    *(&v138 - 6) = v151;
    *(&v138 - 5) = v29;
    *(&v138 - 4) = v40;
    *(&v138 - 3) = v17;
    *(&v138 - 2) = v42;

    sub_1002614C8(v45, sub_100262DCC, (&v138 - 8));

    swift_bridgeObjectRelease_n();

    (v39[1])(v17, v43);
    v36 = 0;
    v14 = 0;
    v46 = 0;
    v47 = 0;
    v38 = 1;
LABEL_21:
    v84 = v154;
    v17 = v156;
    goto LABEL_45;
  }

  v155 = v29;
  v150 = v20[1];
  v85 = sub_100058000(&qword_100776368, &unk_100636950);
  v86 = v14;
  v39[4](v14, v20 + *(v85 + 64), v153);
  v17 = v156;
  v87 = v154;
  (*(v156 + 13))(v22, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v154);
  v88 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v89 = v22;
  v90 = v87;
  v91 = (*(v17 + 1))(v89, v87);
  if (v88)
  {
    __chkstk_darwin(v91);
    v92 = v150;
    v93 = v155;
    *(&v138 - 4) = v151;
    *(&v138 - 3) = v93;
    *(&v138 - 2) = v92;
    *(&v138 - 1) = v86;

    sub_1002614C8(v94, sub_100262DC8, (&v138 - 6));

    swift_bridgeObjectRelease_n();
    (v39[1])(v86, v153);
  }

  else
  {
    v125 = v150;
    v126 = [v150 list];
    v36 = (*(v24 + 78))();

    if (!v36)
    {

      (v39[1])(v14, v153);
      v38 = 0;
      v14 = 0;
      v46 = 0;
      v47 = 0;
      v84 = v90;
      goto LABEL_45;
    }

    __chkstk_darwin(v127);
    v128 = v155;
    *(&v138 - 6) = v151;
    *(&v138 - 5) = v128;
    *(&v138 - 4) = v125;
    *(&v138 - 3) = v14;
    *(&v138 - 2) = v36;

    sub_1002614C8(v129, sub_100262DB0, (&v138 - 8));

    swift_bridgeObjectRelease_n();
    (v39[1])(v14, v153);
  }

  v36 = 0;
  v14 = 0;
  v46 = 0;
  v47 = 0;
  v38 = 1;
  v84 = v90;
LABEL_45:
  (*(v17 + 1))(v157, v84);
  sub_1000301AC(v36, v14);
  sub_1000301AC(v46, v47);
  return v38;
}

uint64_t sub_100248A8C(uint64_t a1, __n128 a2)
{
  v35 = a1;
  v36 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v30 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v34 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  v33 = *(v15 + 16);
  v33(ObjectType, v15);
  LOBYTE(v10) = v14[*(v10 + 44)];
  sub_100262C74(v14, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v10)
  {
    return 0;
  }

  v17 = v34;
  v33(ObjectType, v15);
  v18 = *v17;
  sub_100262C74(v17, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v18 == 2)
  {
    return 0;
  }

  v28 = 0;
  v20 = 0;
  v21 = *(v35 + 16);
  v34 = (v6 + 16);
  v22 = (v30 + 11);
  LODWORD(v33) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v32 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v31 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  v29 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  v23 = (v6 + 8);
  ++v30;
  while (2)
  {
    if (v20 != v21)
    {
      while (1)
      {
        if (v20 >= v21)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*(v6 + 16))(v8, v35 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v5);
        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_23;
        }

        TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
        v25 = (*v22)(v4, v36);
        if (v25 == v33 || v25 == v32)
        {
          break;
        }

        if (v25 == v31)
        {
          (*v23)(v8, v5);
          (*v30)(v4, v36);
        }

        else
        {
          if (v25 != v29)
          {
            goto LABEL_24;
          }

          (*v23)(v8, v5);
        }

        ++v20;
        if (v24 == v21)
        {
          return v28;
        }
      }

      (*v23)(v8, v5);
      (*v30)(v4, v36);
      ++v20;
      if (!__OFADD__(v28++, 1))
      {
        continue;
      }

      __break(1u);
    }

    return v28;
  }
}

uint64_t sub_100248EAC(uint64_t a1, __n128 a2)
{
  v34 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  v16 = v13[*(v11 + 48)];
  sub_100262C74(v13, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  result = 0;
  if ((v16 & 1) == 0)
  {
    v27 = 0;
    v18 = 0;
    v19 = *(a1 + 16);
    v33 = v7 + 16;
    v20 = (v4 + 88);
    v32 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    v31 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v30 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v28 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
    v21 = (v7 + 8);
    v29 = (v4 + 8);
    while (2)
    {
      if (v18 != v19)
      {
        while (1)
        {
          if (v18 >= v19)
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          v22 = a1;
          (*(v7 + 16))(v9, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v35);
          v23 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_22;
          }

          TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
          v24 = (*v20)(v6, v34);
          v25 = v24 == v32 || v24 == v31;
          if (v25)
          {
            break;
          }

          if (v24 == v30)
          {
            (*v21)(v9, v35);
            (*v29)(v6, v34);
          }

          else
          {
            if (v24 != v28)
            {
              goto LABEL_23;
            }

            (*v21)(v9, v35);
          }

          ++v18;
          v25 = v23 == v19;
          a1 = v22;
          if (v25)
          {
            return v27;
          }
        }

        (*v21)(v9, v35);
        (*v29)(v6, v34);
        ++v18;
        v26 = __OFADD__(v27++, 1);
        a1 = v22;
        if (!v26)
        {
          continue;
        }

        __break(1u);
      }

      return v27;
    }
  }

  return result;
}

uint64_t sub_100249258(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v103 = &v88 - v4;
  v96 = type metadata accessor for TTRReminderCopyPasteItem.Reminder();
  v5 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v88 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v117 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v88 - v13;
  __chkstk_darwin(v15);
  v100 = &v88 - v16;
  v17 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v19 = (*(v17 + 208))(ObjectType, v17);
  v21 = v20;
  v22 = swift_getObjectType();
  v95 = v19;
  v92 = v22;
  v93 = v21;
  v104 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v88 = v23;

  v25 = sub_1004B602C(v24);

  v26 = (*(v17 + 264))(a1, 1, ObjectType, v17);
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = 0;
    v30 = *(v10 + 16);
    v29 = v10 + 16;
    v108 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v121 = *(v29 + 56);
    v122 = v30;
    v31 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 < 0)
    {
      v31 = v26;
    }

    v109 = v31;
    v114 = (v29 + 40);
    v115 = v26 & 0xC000000000000001;
    v118 = v25 + 56;
    v119 = v25;
    v32 = (v29 - 8);
    v90 = v5;
    v97 = (v5 + 32);
    v105 = _swiftEmptyArrayStorage;
    v33 = v96;
    v120 = v29;
    v34 = v100;
    v35 = v26;
    v91 = v27;
    v107 = v26;
    do
    {
      v116 = v28;
      v122(v34, v108 + v121 * v28, v9);
      v37 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      if (!v37)
      {
        goto LABEL_7;
      }

      v36 = v37;
      if (v115)
      {
        v38 = __CocoaDictionary.lookup(_:)();
        if (!v38)
        {
          goto LABEL_6;
        }

        v125 = v38;
        sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
        swift_dynamicCast();
        v39 = v126;
        if (!v126)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!*(v35 + 16))
        {
          goto LABEL_6;
        }

        v40 = v33;
        v41 = v37;
        v42 = sub_1002613B0(v37);
        v36 = v41;
        v33 = v40;
        if ((v43 & 1) == 0)
        {
          goto LABEL_6;
        }

        v39 = *(*(v35 + 56) + 8 * v42);
        if (!v39)
        {
          goto LABEL_6;
        }
      }

      v102 = v36;
      v101 = v39;
      v44 = [v39 parentReminder];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 objectID];
        v47 = v46;
        if (v115)
        {
          v48 = v46;
          v49 = __CocoaDictionary.lookup(_:)();

          if (v49)
          {
            v125 = v49;
            sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
            swift_dynamicCast();
            v50 = v126;
            goto LABEL_24;
          }
        }

        else if (*(v35 + 16))
        {
          v51 = sub_1002613B0(v46);
          if (v52)
          {
            v50 = *(*(v35 + 56) + 8 * v51);
LABEL_24:

            v27 = v91;
            v33 = v96;
            if (v50)
            {

              v36 = v102;
LABEL_6:

LABEL_7:
              (*v32)(v34, v9);
              goto LABEL_8;
            }

            goto LABEL_27;
          }
        }

        v27 = v91;
        v33 = v96;
      }

LABEL_27:
      if ((dispatch thunk of TTRRemindersListTreeContentsQueryable.hasSubtasks.getter() & 1) == 0)
      {
        goto LABEL_58;
      }

      v53 = v104;
      v54 = swift_getObjectType();
      v126 = v53;
      v55 = v103;
      v122(v103, v34, v9);
      v112 = *v114;
      v112(v55, 0, 1, v9);
      v56 = *(v88 + 8);
      v113 = v54;
      v111 = v56;
      v57 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
      sub_1000079B4(v55, &qword_100772140, &qword_10062D9F0);
      v110 = v57;
      if (v57 < 1)
      {
        v33 = v96;
        goto LABEL_58;
      }

      v58 = 0;
      v125 = _swiftEmptyArrayStorage;
      v126 = _swiftEmptyArrayStorage;
      v89 = _swiftEmptyArrayStorage;
      v98 = _swiftEmptyArrayStorage;
      do
      {
        v124 = v53;
        v122(v55, v34, v9);
        v112(v55, 0, 1, v9);
        dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
        sub_1000079B4(v55, &qword_100772140, &qword_10062D9F0);
        v59 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        if (v59)
        {
          v60 = v59;
          if (v115)
          {
            v61 = __CocoaDictionary.lookup(_:)();
            if (!v61)
            {
              goto LABEL_30;
            }

            v123 = v61;
            sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
            swift_dynamicCast();
            v62 = v124;
            if (!v124)
            {
              goto LABEL_30;
            }
          }

          else if (!*(v107 + 16) || (v63 = sub_1002613B0(v59), (v64 & 1) == 0) || (v62 = *(*(v107 + 56) + 8 * v63)) == 0)
          {
LABEL_30:
            (*v32)(v14, v9);

            goto LABEL_31;
          }

          v65 = v14;
          v106 = REMReminder.codable.getter();

          v66 = v119;
          if (*(v119 + 16) && (sub_10026263C(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item), v67 = dispatch thunk of Hashable._rawHashValue(seed:)(), v68 = -1 << *(v66 + 32), v69 = v67 & ~v68, ((*(v118 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) != 0))
          {
            v70 = ~v68;
            while (1)
            {
              v71 = v117;
              v122(v117, *(v66 + 48) + v69 * v121, v9);
              sub_10026263C(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
              v72 = dispatch thunk of static Equatable.== infix(_:_:)();
              v73 = *v32;
              (*v32)(v71, v9);
              if (v72)
              {
                break;
              }

              v69 = (v69 + 1) & v70;
              v66 = v119;
              if (((*(v118 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            v77 = v106;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v14 = v65;
            v73(v65, v9);
            v75 = v126;
            v76 = &v121;
          }

          else
          {
LABEL_46:
            v74 = v106;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v14 = v65;
            (*v32)(v65, v9);
            v75 = v125;
            v76 = &v127;
          }

          *(v76 - 32) = v75;
          v55 = v103;
          v53 = v104;
          v34 = v100;
        }

        else
        {
          (*v32)(v14, v9);
        }

LABEL_31:
        ++v58;
      }

      while (v58 != v110);
      if (v89 >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      v33 = v96;
      v27 = v91;

LABEL_58:
      v78 = v101;
      REMReminder.codable.getter();
      v79 = v94;
      TTRReminderCopyPasteItem.Reminder.init(reminder:children:)();

      (*v32)(v34, v9);
      v80 = *v97;
      (*v97)(v99, v79, v33);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v81 = v105;
      }

      else
      {
        v81 = sub_10054762C(0, v105[2] + 1, 1, v105);
      }

      v83 = v81[2];
      v82 = v81[3];
      if (v83 >= v82 >> 1)
      {
        v81 = sub_10054762C((v82 > 1), v83 + 1, 1, v81);
      }

      v81[2] = v83 + 1;
      v84 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v105 = v81;
      v80(v81 + v84 + *(v90 + 72) * v83, v99, v33);
      v35 = v107;
LABEL_8:
      v28 = v116 + 1;
    }

    while (v116 + 1 != v27);
  }

  v85 = objc_allocWithZone(type metadata accessor for TTRReminderCopyPasteItem());
  v86 = TTRReminderCopyPasteItem.init(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v86;
}

uint64_t sub_100249E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPostponeType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "postponeType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  (*(v5 + 16))(v7, a2, v4);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a1;

  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List Postpone {postponeType: %@, items: %@}", 53, 2, v11);

  static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
  v12 = TTRRemindersListPresenterCapabilityCore.request(postpone:to:undoActionName:)();

  return v12;
}

uint64_t sub_10024A0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPostponeType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "postponeType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  (*(v5 + 16))(v7, a2, v4);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  sub_100058000(&qword_100772150, &unk_100635D00);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  (*(v12 + 16))(v14 + v13, a1, v11);
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = v14;
  v15 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List Relative To DueDate Postpone {postponeType: %@, item: %@}", 72, 2, v15);

  static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
  v16 = TTRRemindersListPresenterCapabilityCore.request(postponeRelativeToDueDate:to:undoActionName:)();

  return v16 & 1;
}

uint64_t sub_10024A3F4(unint64_t a1)
{
  v2 = v1;
  v45 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v38 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v35 - v7;
  v9 = type metadata accessor for TTRRemindersListPostponeType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
LABEL_30:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  strcpy((inited + 32), "postponeType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v15 = *(v10 + 16);
  v10 += 16;
  v35[1] = a1;
  v15(v12, a1, v9);
  v16 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  v18 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List Mark All Overdue to {postponeType: %@}", 53, 2, v18);

  v12 = *(v2 + 64);
  v9 = *(v2 + 72);
  v35[0] = v2;
  ObjectType = swift_getObjectType();
  (*(v9 + 208))(ObjectType, v9);
  swift_getObjectType();
  v20 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v48 = v20;
  TTRTreeContentsQueryable.allItems.getter();
  swift_unknownObjectRelease();
  v21 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v22 = (*(v9 + 264))(v21, 0, ObjectType, v9);
  v44 = *(v21 + 16);
  v41 = v22;
  if (v44)
  {
    v23 = 0;
    v42 = v22 & 0xC000000000000001;
    v43 = v4 + 16;
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 < 0)
    {
      v24 = v22;
    }

    v40 = v24;
    v37 = (v4 + 32);
    v2 = v4 + 8;
    v39 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v10 = *(v4 + 72);
      (*(v4 + 16))(v8, v21 + v9 + v10 * v23, v45);
      v25 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      if (!v25)
      {
        goto LABEL_7;
      }

      v12 = v25;
      if (v42)
      {
        v26 = __CocoaDictionary.lookup(_:)();
        if (!v26)
        {
          goto LABEL_6;
        }

        v46 = v26;
        sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
        swift_dynamicCast();
        v27 = v47;
        if (!v47)
        {
          goto LABEL_6;
        }
      }

      else if (!*(v41 + 16) || (v28 = sub_1002613B0(v25), (v29 & 1) == 0) || (v27 = *(*(v41 + 56) + 8 * v28)) == 0)
      {
LABEL_6:

        goto LABEL_7;
      }

      a1 = [v27 isOverdue];

      if (a1)
      {
        v36 = *v37;
        v36(v38, v8, v45);
        v30 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1C48(0, v30[2] + 1, 1);
          v30 = v48;
        }

        a1 = v30[2];
        v32 = v30[3];
        v12 = (a1 + 1);
        if (a1 >= v32 >> 1)
        {
          sub_1004A1C48((v32 > 1), a1 + 1, 1);
          v30 = v48;
        }

        v30[2] = v12;
        v39 = v30;
        v36(v30 + v9 + a1 * v10, v38, v45);
        goto LABEL_8;
      }

LABEL_7:
      (*v2)(v8, v45);
LABEL_8:
      if (v44 == ++v23)
      {
        goto LABEL_25;
      }
    }
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_25:

  if (v39[2])
  {
    static TTRLocalizableStrings.UndoAction.markOverdueToToday.getter();
    v33 = TTRRemindersListPresenterCapabilityCore.request(postpone:to:undoActionName:)();
  }

  else
  {

    return 0;
  }

  return v33;
}

uint64_t sub_10024A9F4(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "priorityLevel");
  *(inited + 46) = -4864;
  v5 = NSStringFromPriorityLevel();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a2;

  v9 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder List set priorityLevel {priorityLevel: %@, items: %@}", 62, 2, v9);

  return TTRRemindersListPresenterCapabilityCore.request(setPriorityLevelTo:for:)();
}

uint64_t sub_10024ABB8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v63 = v2;
  v65 = v4;
  v5 = type metadata accessor for TTRSectionID();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100058000(&qword_100776288, &unk_100636840);
  __chkstk_darwin(v58);
  v8 = &v58 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v64);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  __chkstk_darwin(v18);
  v20 = &v58 - v19;
  v62 = a1;
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  TTRRemindersListViewModel.Item.SectionCasesItem.id.getter();
  (*(v10 + 8))(v12, v9);
  sub_10000794C(v20, v17, &qword_10076B070, &unk_100637140);
  v21 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v17, 1, v21) == 1)
  {
    sub_1000079B4(v17, &qword_10076B070, &unk_100637140);
    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
LABEL_5:
    if (qword_100767028 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100003E30(v27, qword_100776068);
    sub_10000794C(v20, v14, &qword_10076B070, &unk_100637140);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v30 = 136315650;
      v31 = _typeName(_:qualified:)();
      v33 = sub_100004060(v31, v32, &v66);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_100004060(0xD000000000000026, 0x80000001006799B0, &v66);
      *(v30 + 22) = 2080;
      v34 = Optional.descriptionOrNil.getter();
      v36 = v35;
      sub_1000079B4(v14, &qword_10076B070, &unk_100637140);
      v37 = sub_100004060(v34, v36, &v66);

      *(v30 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: %s - Attempted to create a new section for invalid section item %s", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000079B4(v14, &qword_10076B070, &unk_100637140);
    }

    v38 = v20;
LABEL_11:
    sub_1000079B4(v38, &qword_10076B070, &unk_100637140);
    return 0;
  }

  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v22 + 8))(v17, v21);
  v24 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v8, 0, 1, v24);
  v26 = (*(v25 + 88))(v8, v24);
  if (v26 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    (*(v25 + 8))(v8, v24);
    goto LABEL_5;
  }

  if (v26 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
  {
    if (v26 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
    {
      sub_1000079B4(v20, &qword_10076B070, &unk_100637140);
      (*(v25 + 8))(v8, v24);
      return 1;
    }

    if (v26 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
    {
      goto LABEL_5;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_21:
    if (qword_100767028 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003E30(v51, qword_100776068);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v54 = 136315394;
      v55 = _typeName(_:qualified:)();
      v57 = sub_100004060(v55, v56, &v66);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_100004060(0xD000000000000026, 0x80000001006799B0, &v66);
      _os_log_impl(&_mh_execute_header, v52, v53, "%s: %s - Attempted to create a new section from the sectionless section without having a valid sections context", v54, 0x16u);
      swift_arrayDestroy();
    }

    v38 = v20;
    goto LABEL_11;
  }

  (*(v25 + 8))(v8, v24);
  v40 = v63;
  v41 = v63[9];
  ObjectType = swift_getObjectType();
  if (!(*(v41 + 104))(ObjectType, v41))
  {
    goto LABEL_21;
  }

  v44 = v59;
  v43 = v60;
  v45 = v61;
  (*(v60 + 104))(v59, enum case for TTRSectionID.sectionless(_:), v61);
  v46 = sub_1002E3A40(v44, 0);
  v47 = (*(v43 + 8))(v44, v45);
  __chkstk_darwin(v47);
  v48 = v62;
  *(&v58 - 2) = v40;
  *(&v58 - 1) = v48;
  v49 = sub_10007D8C0(sub_100262CF4, (&v58 - 4), v46);

  v50 = sub_100243BE4(v49);
  swift_unknownObjectRelease();
  sub_1000079B4(v20, &qword_10076B070, &unk_100637140);
  if (!v50)
  {

    return 0;
  }

  return v49;
}

uint64_t sub_10024B534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v6 = type metadata accessor for TTRSectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076DF38, &qword_100631A08);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for TTRSectionLite();
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13);
  v58 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 72);
  ObjectType = swift_getObjectType();
  result = (*(v15 + 104))(ObjectType, v15);
  if (result)
  {
    v18 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
    if (v18)
    {
      v19 = v18;
      v45 = v9;
      v46 = v7;
      v47 = v6;
      v20 = sub_100058000(&qword_100772150, &unk_100635D00);
      v21 = type metadata accessor for TTRRemindersListViewModel.Item();
      v48 = a3;
      v22 = v21;
      v23 = *(v21 - 8);
      v24 = *(v23 + 80);
      v25 = a1;
      v26 = (v24 + 32) & ~v24;
      v52 = *(v23 + 72);
      v49 = v24;
      v55 = v20;
      v27 = swift_allocObject();
      v51 = xmmword_10062D400;
      *(v27 + 16) = xmmword_10062D400;
      v28 = *(v23 + 16);
      v57 = v25;
      v53 = v28;
      v54 = v23 + 16;
      v28(v27 + v26, v25, v22);
      sub_100245068(v27);
      swift_setDeallocating();
      v29 = *(v23 + 8);
      v56 = v22;
      v44 = v29;
      v29(v27 + v26, v22);
      swift_deallocClassInstance();
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D420;
      *(inited + 32) = v19;
      v50 = v19;
      v31 = sub_10001D5F8(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v32 = sub_1002E28FC(v31);

      v33 = v61;
      v34 = v48;
      sub_1002E4288(v61, v48, v12);
      v36 = v59;
      v35 = v60;
      if ((*(v59 + 48))(v12, 1, v60) == 1)
      {
        sub_1000079B4(v12, &qword_10076DF38, &qword_100631A08);
        v37 = v33;
        v38 = swift_allocObject();
        *(v38 + 16) = v51;
        v39 = v56;
        v53(v38 + v26, v57, v56);
        sub_10024F488(v38, v37, v34, v32, 1, 0, 1, 0, 0);
        swift_unknownObjectRelease();

        swift_setDeallocating();
        v44(v38 + v26, v39);
        return swift_deallocClassInstance();
      }

      else
      {
        v40 = v58;
        (*(v36 + 32))(v58, v12, v35);
        v41 = v45;
        TTRSectionLite.sectionID.getter();
        v42 = swift_allocObject();
        *(v42 + 16) = v51;
        v53(v42 + v26, v57, v56);
        sub_100243ECC(v42, v41, v32);

        swift_unknownObjectRelease();

        (*(v46 + 8))(v41, v47);
        return (*(v36 + 8))(v40, v35);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_10024BAEC(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  (*(v7 + 192))(ObjectType, v7);
  v9 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    result = (*(v7 + 104))(ObjectType, v7);
    if (!result)
    {
      return result;
    }

    v16[1] = a1;
    sub_100058000(&qword_10076E0B0, &unk_100631BD0);
    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
    v11 = Sequence.completeCompactMap<A>(_:)();
    if (v11)
    {
      if (v11 >> 62)
      {
        v14 = v11;
        v15 = _CocoaArrayWrapper.endIndex.getter();
        v11 = v14;
        if (v15)
        {
          goto LABEL_6;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        v12 = sub_10001D5F8(v11);

        v13 = sub_1002E28FC(v12);

        swift_unknownObjectRelease();
        return v13;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_10024BD54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_100058000(&qword_1007761F8, &unk_100636770);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v54 = &v52 - v14;
  v15 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v23 = v22;
  v25 = v24;
  sub_10000794C(v21, v17, &qword_100772140, &qword_10062D9F0);
  v26 = *(v23 + 48);
  v56 = v25;
  v27 = v26(v17, 1, v25);
  v55 = v2;
  if (v27 == 1)
  {
    v28 = &qword_100772140;
    v29 = &qword_10062D9F0;
    v30 = v17;
LABEL_5:
    sub_1000079B4(v30, v28, v29);
    v33 = *(v55 + 72);
    ObjectType = swift_getObjectType();
    (*(v33 + 152))(ObjectType, v33);
    v35 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v6, 1, v35) != 1)
    {
      ShouldCategorizeGrocery = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
      (*(v36 + 8))(v6, v35);
      return ShouldCategorizeGrocery & 1;
    }

    v37 = &unk_10078A380;
    v38 = &qword_10062DE60;
    v39 = v6;
    goto LABEL_7;
  }

  (*(v23 + 32))(v20, v17, v56);
  v31 = *(v2 + 72);
  v32 = swift_getObjectType();
  (*(v31 + 320))(v20, v32, v31);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v23 + 8))(v20, v56);
    v28 = &qword_1007761F8;
    v29 = &unk_100636770;
    v30 = v9;
    goto LABEL_5;
  }

  v41 = v10;
  v42 = v54;
  (*(v11 + 32))(v54, v9, v10);
  v43 = v53;
  (*(v11 + 16))(v53, v42, v10);
  v44 = (*(v11 + 88))(v43, v10);
  if (v44 == enum case for TTRRemindersListTargetContainer.TargetList.listID(_:))
  {
    v45 = v11;
    (*(v11 + 96))(v43, v41);
    v46 = *v43;
    swift_getObjectType();
    v47 = dispatch thunk of TTRRemindersListInteractorType.fetchList(with:)();

    v48 = v47;
    if (!v47)
    {
      goto LABEL_17;
    }

LABEL_19:
    REMList.ttrGroceryContext.getter();

    if (v58)
    {
      sub_10000C36C(v57, v58);
      ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();

      (*(v45 + 8))(v54, v41);
      (*(v23 + 8))(v20, v56);
      sub_100004758(v57);
      return ShouldCategorizeGrocery & 1;
    }

    (*(v45 + 8))(v54, v41);
    (*(v23 + 8))(v20, v56);
    v37 = &qword_1007757E0;
    v38 = &qword_100636780;
    v39 = v57;
LABEL_7:
    sub_1000079B4(v39, v37, v38);
LABEL_8:
    ShouldCategorizeGrocery = 0;
    return ShouldCategorizeGrocery & 1;
  }

  if (v44 == enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:) || v44 == enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:))
  {
    v45 = v11;
    (*(v11 + 96))(v43, v41);
    v47 = *v43;
    v50 = *v43;
    if (v47)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v44 == enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:))
  {
    v45 = v11;
    swift_getObjectType();
    v47 = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultList()();
    v49 = v47;
    if (v47)
    {
      goto LABEL_19;
    }

LABEL_17:
    (*(v45 + 8))(v54, v41);
    (*(v23 + 8))(v20, v56);
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10024C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v33 = a2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v8 = *(v4 + 72);
  ObjectType = swift_getObjectType();
  v10 = TTRRemindersListViewModel.Reminder.objectID.getter();
  v37 = (*(v8 + 256))(v10, ObjectType, v8);

  if (!v37)
  {
    return;
  }

  v11 = [v37 siriFoundInAppsData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    sub_100003540(0, &qword_100776380, SGRecordId_ptr);
    v16 = static SGRecordId.createFrom(data:)();
    if (v16)
    {
      v32 = v16;
      sub_100003540(0, &qword_100775690, NSObject_ptr);
      v17 = [v37 list];
      v18 = [v17 objectID];

      v19 = [objc_opt_self() siriFoundInAppsListID];
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        v21 = [*(v5 + 240) objectForKey:v32];
        if (!v21)
        {
          v31 = [objc_opt_self() serviceForReminders];
          v24 = v34;
          (*(v34 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v6);
          v25 = (*(v24 + 80) + 48) & ~*(v24 + 80);
          v26 = swift_allocObject();
          *(v26 + 2) = v32;
          *(v26 + 3) = v5;
          v27 = v36;
          *(v26 + 4) = v35;
          *(v26 + 5) = v27;
          (*(v24 + 32))(&v26[v25], &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          aBlock[4] = sub_1002631C8;
          aBlock[5] = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10025C35C;
          aBlock[3] = &unk_10071D2E0;
          v28 = _Block_copy(aBlock);
          v29 = v32;

          [v31 foundInStringForRecordId:v29 style:0 withCompletion:v28];

          sub_100139D84(v13, v15);
          _Block_release(v28);
          swift_unknownObjectRelease();
          return;
        }

        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        TTRRemindersListViewModel.Reminder.siriFoundInAppsDescription.setter();
        sub_100139D84(v13, v15);
        v23 = v32;
        goto LABEL_10;
      }
    }

    sub_100139D84(v13, v15);
  }

  v23 = v37;
LABEL_10:
}

uint64_t sub_10024C804(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSectionID();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076DF38, &qword_100631A08);
  __chkstk_darwin(v6 - 8);
  v56 = &v48 - v7;
  v8 = type metadata accessor for TTRSectionLite();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100776378, &unk_100636960);
  __chkstk_darwin(v17 - 8);
  v19 = (&v48 - v18);
  v20 = enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.hide(_:);
  v21 = type metadata accessor for TTRRemindersListViewModel.SuggestedSectionDisplayStyle();
  v22 = *(v21 - 8);
  v59 = *(v22 + 104);
  v60 = v22 + 104;
  v59(v19, v20, v21);
  v61 = *(v22 + 56);
  v62 = v21;
  v61(v19, 0, 1, v21);
  v63 = a1;
  TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.setter();
  v23 = *(v2 + 72);
  v64 = v2;
  ObjectType = swift_getObjectType();
  (*(v23 + 152))(ObjectType, v23);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000079B4(v12, &unk_10078A380, &qword_10062DE60);
  }

  (*(v14 + 32))(v16, v12, v13);
  if ((TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter() & 1) == 0)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v50 = v16;
  v51 = v14;
  v26 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID;
  v27 = v64;
  swift_beginAccess();
  v28 = *(v27 + v26);
  if (!v28)
  {
    goto LABEL_13;
  }

  v64 = v13;
  v29 = TTRRemindersListViewModel.Reminder.objectID.getter();
  v30 = v29;
  if (!*(v28 + 16) || (v31 = sub_1002613B0(v29), (v32 & 1) == 0))
  {

    v13 = v64;
LABEL_13:
    swift_endAccess();
    return (*(v51 + 8))(v50, v13);
  }

  v33 = (*(v28 + 56) + 16 * v31);
  v34 = *v33;
  v35 = v33[1];

  swift_endAccess();

  v36 = (*(v23 + 104))(ObjectType, v23);
  v37 = v63;
  v13 = v64;
  if (!v36)
  {
LABEL_10:
    *v19 = v34;
    v19[1] = v35;
    v19[2] = 0;
    v19[3] = 0;
    v41 = v62;
    v59(v19, enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.show(_:), v62);
    v61(v19, 0, 1, v41);
    TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.setter();
    return (*(v51 + 8))(v50, v13);
  }

  v38 = v56;
  v49 = v34;
  sub_1002E4288(v34, v35, v56);
  v40 = v57;
  v39 = v58;
  if ((*(v57 + 48))(v38, 1, v58) == 1)
  {
    swift_unknownObjectRelease();
    sub_1000079B4(v38, &qword_10076DF38, &qword_100631A08);
    v34 = v49;
    goto LABEL_10;
  }

  v42 = v55;
  (*(v40 + 32))(v55, v38, v39);
  v43 = v52;
  TTRSectionLite.sectionID.getter();
  v44 = sub_1002E3A40(v43, 1);
  (*(v53 + 8))(v43, v54);
  LOBYTE(v43) = sub_10023FD9C(v44, v37);

  if (v43)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = TTRSectionLite.displayName.getter();
    *v19 = v49;
    v19[1] = v35;
    v19[2] = v45;
    v19[3] = v46;
    v47 = v62;
    v59(v19, enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.show(_:), v62);
    v61(v19, 0, 1, v47);
    TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.setter();
    swift_unknownObjectRelease();
  }

  (*(v40 + 8))(v42, v39);
  return (*(v51 + 8))(v50, v64);
}

uint64_t sub_10024CEB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v55 = a1;
  v56 = a2;
  v60 = a3;
  v5 = type metadata accessor for TTRSharedWithYouHighlight();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v8 - 8);
  v59 = &v52 - v9;
  v10 = sub_100058000(&qword_1007762A8, &qword_100636878);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_100058000(&qword_1007762B0, &unk_100636880);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  v17 = sub_100058000(&qword_100775700, &unk_10062E390);
  v18 = __chkstk_darwin(v17 - 8);
  v57 = v6;
  v58 = v5;
  v19 = *(v6 + 56);
  v61 = &v52 - v20;
  v19(v18);
  v63 = _swiftEmptyArrayStorage;
  TTRRemindersListViewModel.SharingStatus.highlightToShow.getter();
  v21 = type metadata accessor for TTRSharedWithYouModel();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_1000079B4(v16, &qword_1007762B0, &unk_100636880);
    v23 = _swiftEmptyArrayStorage;
LABEL_7:
    v29 = v58;
    v28 = v59;
    goto LABEL_8;
  }

  v24 = TTRSharedWithYouModel.remList.getter();
  v25 = v21;
  v26 = v24;
  (*(v22 + 8))(v16, v25);
  TTRSharedWithYouProvider.highlightInfo(for:)();
  v27 = (*(v11 + 88))(v13, v10);
  if (v27 == enum case for REMAsyncOperationState.running<A>(_:))
  {
    (*(v11 + 96))(v13, v10);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v63;
    goto LABEL_7;
  }

  if (v27 != enum case for REMAsyncOperationState.succeeded<A>(_:))
  {
    if (v27 != enum case for REMAsyncOperationState.failed<A>(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v11 + 8))(v13, v10);
    v28 = v59;
    if (qword_100767028 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_100776068);
    v42 = v26;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    v45 = os_log_type_enabled(v43, v44);
    v29 = v58;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62[0] = v53;
      *v46 = 136315138;
      v47 = [v42 displayName];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_100004060(v48, v50, v62);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "fetchHighlight: No highlight for: %s", v46, 0xCu);
      sub_100004758(v53);
    }

    else
    {
    }

    v23 = _swiftEmptyArrayStorage;
LABEL_8:
    v30 = v57;
    if (!(v23 >> 62))
    {
      goto LABEL_9;
    }

LABEL_13:
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v61;
    if (v35)
    {
      goto LABEL_10;
    }

LABEL_14:

    goto LABEL_15;
  }

  (*(v11 + 96))(v13, v10);
  v34 = v61;
  sub_1000079B4(v61, &qword_100775700, &unk_10062E390);
  v30 = v57;
  v29 = v58;
  (*(v57 + 32))(v34, v13, v58);
  (v19)(v34, 0, 1, v29);
  v23 = _swiftEmptyArrayStorage;
  v28 = v59;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_13;
  }

LABEL_9:
  v31 = v61;
  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_100058000(&qword_1007762B8, &qword_100636890);
  v62[0] = v23;
  sub_100058000(&qword_1007762C0, &qword_100636898);
  sub_10000E188(&qword_1007762C8, &qword_1007762C0, &qword_100636898, &protocol conformance descriptor for [A]);
  static Promise.all<A>(_:)();

  v32 = swift_allocObject();
  *(v32 + 16) = v55;
  *(v32 + 24) = v56;

  v33 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_15:
  v36 = 1;
  if (!(*(v30 + 48))(v31, 1, v29))
  {
    v37 = v54;
    (*(v30 + 16))(v54, v31, v29);
    TTRSharedWithYouHighlight.ckShareURL.getter();
    (*(v30 + 8))(v37, v29);
    v36 = 0;
  }

  v38 = type metadata accessor for URL();
  (*(*(v38 - 8) + 56))(v28, v36, 1, v38);
  v39 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_currentShareURL;
  swift_beginAccess();
  sub_10000D184(v28, v4 + v39, &unk_100775660, &qword_10062F6B0);
  swift_endAccess();
  sub_10000794C(v31, v60, &qword_100775700, &unk_10062E390);
  return sub_1000079B4(v31, &qword_100775700, &unk_10062E390);
}

uint64_t sub_10024D72C(void *a1, __n128 a2)
{
  v3 = v2;
  v65 = a1;
  v67 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v60 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TTRRemindersListViewModel.Item();
  v70 = *(v54 - 8);
  __chkstk_darwin(v54);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v49 - v7;
  __chkstk_darwin(v8);
  v53 = &v49 - v9;
  v10 = type metadata accessor for TTRReminderListCompletionBehavior();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = *(v2 + 64);
  v21 = *(v3 + 72);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 16);
  v68 = v21;
  v69 = v20;
  v66 = ObjectType;
  v23(ObjectType, v21);
  LOBYTE(v20) = v19[*(v14 + 44)];
  sub_100262C74(v19, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v20)
  {
    return 512;
  }

  v24 = v65;
  v25 = v65[2];
  if (!v25)
  {
    return 512;
  }

  v23(v66, v68);
  (*(v11 + 32))(v13, &v16[*(v14 + 20)], v10);
  v26 = (*(v11 + 88))(v13, v10);
  if (v26 == enum case for TTRReminderListCompletionBehavior.disallowed(_:))
  {
    (*(v11 + 96))(v13, v10);
    sub_1000079B4(v13, &qword_100776290, &qword_100636850);
    return 512;
  }

  if (v26 == enum case for TTRReminderListCompletionBehavior.default(_:) || v26 == enum case for TTRReminderListCompletionBehavior.requireConfirmationForRemindersWithSubtasks(_:))
  {
    v64 = *(v70 + 16);
    v28 = *(v70 + 72);
    v52 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v29 = v24 + v52;
    v59 = (v60 + 11);
    v58 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    v57 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v56 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v55 = v60 + 1;
    v60 = (v70 + 8);
    v70 += 16;
    v51 = (v70 + 16);
    v65 = _swiftEmptyArrayStorage;
    v50 = v25;
    v30 = v67;
    v31 = v53;
    v32 = v54;
    v33 = v62;
    v64(v53, v29, v54);
    while (1)
    {
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v34 = (*v59)(v33, v30);
      if (v34 != v58 && v34 != v57 && v34 != v56)
      {
        if (v34 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
        {
          goto LABEL_45;
        }

LABEL_37:
        (*v60)(v31, v32);

        return 512;
      }

      (*v55)(v33, v30);
      v37 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
      if (v37)
      {
        v38 = v37;
        if ([v37 isCompleted])
        {
          v64(v63, v31, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_100547094(0, v65[2] + 1, 1, v65);
          }

          v40 = v65[2];
          v39 = v65[3];
          if (v40 >= v39 >> 1)
          {
            v65 = sub_100547094((v39 > 1), v40 + 1, 1, v65);
          }

          (*v60)(v31, v32);
          v41 = v65;
          v65[2] = v40 + 1;
          (*v51)(&v41[v52 + v40 * v28], v63, v32);
          v33 = v62;
        }

        else
        {
          (*v60)(v31, v32);
        }
      }

      else
      {
        v42 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
        if (!v42)
        {
          goto LABEL_37;
        }

        v43 = v42;
        if ([v42 isCompleted])
        {
          v64(v61, v31, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_100547094(0, v65[2] + 1, 1, v65);
          }

          v45 = v65[2];
          v44 = v65[3];
          if (v45 >= v44 >> 1)
          {
            v65 = sub_100547094((v44 > 1), v45 + 1, 1, v65);
          }

          (*v60)(v31, v32);
          v46 = v65;
          v65[2] = v45 + 1;
          (*v51)(&v46[v52 + v45 * v28], v61, v32);
          v33 = v62;
        }

        else
        {
          (*v60)(v31, v32);
        }
      }

      v30 = v67;
      v29 += v28;
      if (!--v25)
      {
        break;
      }

      v64(v31, v29, v32);
    }

    v47 = v65[2];

    if (v50 == v47)
    {
      v48 = 1;
    }

    else
    {
      v48 = 258;
    }

    if (v47)
    {
      return v48;
    }

    else
    {
      return 256;
    }
  }

  else
  {
    if (v26 == enum case for TTRReminderListCompletionBehavior.requireConfirmationForRecoverReminders(_:))
    {
      return 512;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_45:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10024DEE4(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  (*(v8 + 152))(ObjectType, v8);
  v10 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_1000079B4(v7, &unk_10078A380, &qword_10062DE60);
    LODWORD(v7) = 0;
  }

  else
  {
    v12 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
    v13 = v7;
    LODWORD(v7) = v12;
    (*(v11 + 8))(v13, v10);
  }

  (*(v8 + 16))(ObjectType, v8);
  v14 = v4[*(v2 + 44)];
  sub_100262C74(v4, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v14 == 1 && (v7 & 1) == 0)
  {
    return 0;
  }

  sub_1002521EC(v26);
  type metadata accessor for TTRListEditor();
  v15 = static TTRListEditor.filterOutSubtasksWithParents(in:)();
  LOBYTE(v17) = v16;

  if (v15 >> 62)
  {
LABEL_21:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
LABEL_22:

      return 0;
    }
  }

  if (!(v7 & 1 | ((v17 & 1) == 0)))
  {
    goto LABEL_22;
  }

  LODWORD(v26) = v7;
  v19 = 0;
  v7 = &selRef_layoutIfNeeded;
  do
  {
    v17 = v19;
    if (v18 == v19)
    {
      break;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v20 = *(v15 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v22 = [v20 account];
    v23 = [v22 capabilities];

    LODWORD(v22) = [v23 supportsSubtasks];
    v19 = v17 + 1;
  }

  while (!v22);
  return v15;
}

void sub_10024E244(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v67 = *v3;
  v7 = type metadata accessor for REMAnalyticsEvent();
  v69 = *(v7 - 8);
  __chkstk_darwin(v7);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for TTRRemindersListViewModel.Item();
  v70 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v14 = sub_100003E30(v10, qword_100776068);
  v15 = *(v11 + 16);
  v73 = v14;
  v15(v13);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  v17 = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 48) = a1;
  *(inited + 72) = v17;
  *(inited + 80) = 0x44497473696CLL;
  *(inited + 88) = 0xE600000000000000;
  if (a2)
  {
    v18 = a1;

    v19 = [a2 objectID];
    v78 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *&aBlock = v19;
    sub_100007DD8(&aBlock, (inited + 96));
  }

  else
  {
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = 7104878;
    *(inited + 104) = 0xE300000000000000;
    v18 = a1;
  }

  v20 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder List recover deleted reminders to list {items: %@, listID: %@}", 71, 2, v20);

  (*(v11 + 8))(v13, v10);
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    swift_getObjectType();
    Fallback = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultListOrCreateFallbackList()();
    if (!Fallback)
    {
      v21 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v21, v61, "Failed to fetch default list for reminder recovery", v62, 2u);
      }

      goto LABEL_21;
    }

    v21 = Fallback;
  }

  v23 = a2;
  v24 = REMList.accountCapabilities.getter();

  v25 = [v24 supportsRecentlyDeletedList];
  if (!v25)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Reminder recovery for target list is not supported, should be part of CloudKit account.", v37, 2u);
    }

LABEL_21:
    return;
  }

  v63 = v21;
  v64 = v7;
  *&aBlock = _swiftEmptyArrayStorage;
  v26 = *(v18 + 16);
  v65 = v4;
  if (v26)
  {
    v27 = v4[8];
    v72 = v4[9];
    v73 = v27;
    ObjectType = swift_getObjectType();
    v28 = v70[2];
    v29 = v18 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v30 = v70[9];
    v31 = (v70 + 1);
    v70 = _swiftEmptyArrayStorage;
    v32 = v75;
    do
    {
      v33 = v74;
      v28(v74, v29, v32);
      v34 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      (*v31)(v33, v32);
      if (v34)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v70 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v70 = aBlock;
      }

      v29 += v30;
      --v26;
    }

    while (v26);
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for TTRUserDefaults();
  v38 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v39 = sub_100058000(&qword_1007757E8, &unk_100635E60);
  v40 = v68;
  v41 = (v68 + *(v39 + 48));
  v42 = (v68 + *(v39 + 80));
  sub_10000794C(v66, v68, &qword_100775608, &qword_1006367C0);
  v43 = enum case for REMUserOperation.recoverReminder(_:);
  v44 = type metadata accessor for REMUserOperation();
  (*(*(v44 - 8) + 104))(v40, v43, v44);
  *v41 = TTRUserDefaults.activitySessionId.getter();
  v41[1] = v45;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v46 = _typeName(_:qualified:)();
  v48 = v47;

  *&aBlock = v46;
  *(&aBlock + 1) = v48;
  v49._object = 0x8000000100679500;
  v49._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v49);
  v50 = *(&aBlock + 1);
  *v42 = aBlock;
  v42[1] = v50;
  v51 = v69;
  v52 = v64;
  (*(v69 + 104))(v40, enum case for REMAnalyticsEvent.userOperation(_:), v64);
  REMAnalyticsManager.post(event:)();

  (*(v51 + 8))(v40, v52);
  v53 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.recoverReminder.getter();
  v54 = String._bridgeToObjectiveC()();

  v55 = swift_allocObject();
  v56 = v70;
  v55[2] = v65;
  v55[3] = v56;
  v57 = v63;
  v55[4] = v63;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_100262570;
  *(v58 + 24) = v55;
  v79 = sub_100026410;
  v80 = v58;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v77 = sub_100026440;
  v78 = &unk_10071CD68;
  v59 = _Block_copy(&aBlock);

  v60 = v57;

  [v53 withActionName:v54 block:v59];

  _Block_release(v59);
  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

  if (v59)
  {
    __break(1u);
  }
}

void *sub_10024EC18(uint64_t a1)
{
  v75 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v80 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v80 - 8);
  __chkstk_darwin(v80);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v53 - v12;
  __chkstk_darwin(v13);
  v58 = &v53 - v14;
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 208);
  v66 = ObjectType;
  v67 = v15;
  v55 = v16;
  v19 = v18(ObjectType, v16);
  v62 = v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    v61 = swift_getObjectType();
    v22 = 0;
    v24 = *(v8 + 16);
    v23 = v8 + 16;
    v78 = v24;
    v54 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v72 = a1 + v54;
    v25 = *(v23 + 56);
    v26 = (v3 + 8);
    v76 = (v23 - 8);
    v77 = v25;
    v59 = v21;
    v68 = v21 + 1;
    v57 = _swiftEmptyArrayStorage;
    v27 = v58;
    v60 = v19;
    while (1)
    {
      v63 = v22;
      v78(v27, v72 + v77 * v22, v80);
      if ((dispatch thunk of TTRRemindersListTreeContentsQueryable.isReminderWithSubtasks(_:)() & 1) == 0 || (v65 = *(v55 + 8), (v29 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)()) == 0))
      {
        (*v76)(v27, v80);
        goto LABEL_4;
      }

      v56 = v29;
      result = dispatch thunk of TTRRemindersListTreeContentsQueryable.subtasks(of:)();
      v81 = _swiftEmptyArrayStorage;
      v71 = result[2];
      if (v71)
      {
        v31 = 0;
        v69 = result + v54;
        v70 = result;
        v64 = _swiftEmptyArrayStorage;
        do
        {
          if (v31 >= result[2])
          {
            __break(1u);
            return result;
          }

          v32 = v23;
          v78(v79, &v69[v31 * v77], v80);
          v73 = v31 + 1;
          v33 = v68;
          v34 = v72;
          while (--v33)
          {
            v35 = v34 + v77;
            v36 = v80;
            (v78)(v10);
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v37 = v74;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v38 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
            v39 = *v26;
            v40 = v37;
            v41 = v75;
            (*v26)(v40, v75);
            v39(v7, v41);
            v42 = *v76;
            (*v76)(v10, v36);
            v34 = v35;
            if (v38)
            {
              v42(v79, v80);
              v23 = v32;
              goto LABEL_11;
            }
          }

          v43 = v79;
          v44 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
          (*v76)(v43, v80);
          v23 = v32;
          if (v44)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v64 = v81;
          }

LABEL_11:
          result = v70;
          v31 = v73;
        }

        while (v73 != v71);

        v45 = v64;
        if (v64 >> 62)
        {
          goto LABEL_29;
        }
      }

      else
      {

        v45 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage >> 62)
        {
LABEL_29:
          v46 = v45;
          v47 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }
      }

      v46 = v45;
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
      (*v76)(v58, v80);
      if (v47)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v48 = v57;
        }

        else
        {
          v48 = sub_1005480A8(0, v57[2] + 1, 1, v57);
        }

        v50 = v48[2];
        v49 = v48[3];
        v28 = v63;
        if (v50 >= v49 >> 1)
        {
          v52 = sub_1005480A8((v49 > 1), v50 + 1, 1, v48);
          v28 = v63;
          v48 = v52;
        }

        v48[2] = v50 + 1;
        v57 = v48;
        v51 = &v48[2 * v50];
        v51[4] = v56;
        v51[5] = v46;
        v27 = v58;
        goto LABEL_5;
      }

      v27 = v58;
LABEL_4:
      v28 = v63;
LABEL_5:
      v22 = v28 + 1;
      if (v22 == v59)
      {
        swift_unknownObjectRelease();
        return v57;
      }
    }
  }

  swift_unknownObjectRelease();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10024F250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAssigneeCandidate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x65656E6769737361;
  *(inited + 40) = 0xE800000000000000;
  (*(v5 + 16))(v7, a1, v4);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a2;

  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List set  {assignee: %@, items: %@}", 45, 2, v11);

  return TTRRemindersListPresenterCapabilityCore.request(setAssigned:for:pendingMoveTargetListForHostingReminder:)();
}

void sub_10024F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, void (*a8)(void), char *a9)
{
  v209 = a8;
  v178 = a7;
  v177 = a6;
  v191 = a5;
  v195 = a4;
  v201 = a3;
  v200 = a2;
  v192 = type metadata accessor for REMManualOrdering.ChangeReason();
  v185 = *(v192 - 8);
  __chkstk_darwin(v192);
  v182 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v181 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v12 - 8);
  v180 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v179 = &v172 - v15;
  v197 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v188 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v187 = &v172 - v18;
  v199 = sub_100058000(&unk_100775620, &unk_1006305B0);
  v194 = *(v199 - 8);
  __chkstk_darwin(v199);
  v193 = &v172 - v19;
  v20 = sub_100058000(&qword_100776310, &unk_1006368E0);
  __chkstk_darwin(v20 - 8);
  v175 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v174 = &v172 - v23;
  __chkstk_darwin(v24);
  v186 = &v172 - v25;
  v190 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection(0);
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v173 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v172 = &v172 - v28;
  __chkstk_darwin(v29);
  v176 = &v172 - v30;
  v31 = sub_100058000(&qword_100775970, &qword_100632680);
  __chkstk_darwin(v31 - 8);
  v33 = &v172 - v32;
  v205 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v198 = (&v172 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v202 = &v172 - v36;
  v215 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v37 = *(v215 - 8);
  __chkstk_darwin(v215);
  v39 = &v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v172 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v222 = &v172 - v45;
  __chkstk_darwin(v46);
  v223 = &v172 - v47;
  __chkstk_darwin(v48);
  v50 = &v172 - v49;
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v203 = v33;
  v206 = v43;
  v51 = type metadata accessor for Logger();
  v52 = sub_100003E30(v51, qword_100776068);
  v53 = sub_100008E04(_swiftEmptyArrayStorage);
  v207 = v52;
  sub_10000FD44("Reminders List new section from items", 37, 2, v53);

  v54 = *(a1 + 16);
  v224 = v40;
  v210 = v41;
  if (v54)
  {
    v56 = *(v41 + 16);
    v55 = v41 + 16;
    ObjectType = v56;
    v214 = (*(v55 + 64) + 32) & ~*(v55 + 64);
    v57 = a1 + v214;
    v58 = *(v55 + 56);
    v59 = v37;
    v60 = (v37 + 88);
    LODWORD(v219) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    LODWORD(v218) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v213 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v211 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
    v212 = (v55 - 8);
    v221 = v55;
    v216 = (v59 + 8);
    v217 = (v55 + 16);
    v61 = _swiftEmptyArrayStorage;
    v62 = v215;
    while (1)
    {
      v63 = v58;
      ObjectType(v50, v57, v40);
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v64 = (*v60)(v39, v62);
      if (v64 == v219 || v64 == v218)
      {
        (*v216)(v39, v62);
        v66 = *v217;
        (*v217)(v222, v50, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v225 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1C48(0, v61[2] + 1, 1);
          v61 = v225;
        }

        v69 = v61[2];
        v68 = v61[3];
        v70 = v61;
        if (v69 >= v68 >> 1)
        {
          sub_1004A1C48((v68 > 1), v69 + 1, 1);
          v70 = v225;
        }

        v70[2] = v69 + 1;
        v71 = v70 + v214 + v69 * v63;
        v40 = v224;
        v66(v71, v222, v224);
        v61 = v70;
        v58 = v63;
        v62 = v215;
      }

      else
      {
        if (v64 == v213)
        {
          (*v216)(v39, v62);
        }

        else if (v64 != v211)
        {
          goto LABEL_97;
        }

        (*v212)(v50, v40);
      }

      v57 += v58;
      if (!--v54)
      {
        goto LABEL_22;
      }
    }
  }

  v61 = _swiftEmptyArrayStorage;
LABEL_22:
  v225 = _swiftEmptyArrayStorage;
  v72 = v61[2];
  v217 = v72;
  v218 = v61;
  if (v72)
  {
    v73 = v208[8];
    v221 = v208[9];
    v222 = v73;
    ObjectType = swift_getObjectType();
    v74 = *(v210 + 16);
    v75 = v61 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
    v76 = *(v210 + 72);
    v77 = (v210 + 8);
    v219 = _swiftEmptyArrayStorage;
    do
    {
      v79 = v223;
      v78 = v224;
      v74(v223, v75, v224);
      v80 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      (*v77)(v79, v78);
      if (v80)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v219 = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v219 = v225;
      }

      v75 += v76;
      v72 = (v72 - 1);
    }

    while (v72);
  }

  else
  {
    v219 = _swiftEmptyArrayStorage;
  }

  v81 = v219;
  if (v219 >> 62)
  {
    v168 = _CocoaArrayWrapper.endIndex.getter();
    v82 = v224;
    if (!v168)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v82 = v224;
    if (!*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_89;
    }
  }

  if ((v81 & 0xC000000000000001) != 0)
  {
    v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_96;
    }

    v83 = *(v81 + 32);
  }

  v84 = v83;
  v85 = [v83 list];

  if (v85)
  {
    if (!v217)
    {

      goto LABEL_49;
    }

    v222 = a9;
    v223 = v85;
    v86 = v218;
    if (*(v218 + 16))
    {
      v87 = v206;
      (*(v210 + 16))(v206, v218 + ((*(v210 + 80) + 32) & ~*(v210 + 80)), v82);
      v88 = v208[8];
      v89 = v208[9];
      v90 = swift_getObjectType();
      v91 = *(v89 + 104);
      v92 = v91(v90, v89);
      if (v92)
      {
        v93 = v92;
        v94 = v210;
        v95 = v91(v90, v89);
        if (!v95)
        {
          (*(v94 + 8))(v206, v224);
          swift_unknownObjectRelease();

          v100 = v203;
          (*(v204 + 56))(v203, 1, 1, v205);
          v85 = v223;
LABEL_48:
          sub_1000079B4(v100, &qword_100775970, &qword_100632680);
          goto LABEL_49;
        }

        v96 = v95;
        v97 = v90;
        v221 = v93;
        Strong = swift_unknownObjectWeakLoadStrong();
        v99 = v204;
        v100 = v203;
        if (!Strong)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          (*(v99 + 56))(v100, 1, 1, v205);
          goto LABEL_47;
        }

        v217 = v97;
        ObjectType = v88;
        v101 = *(v96 + 64);
        swift_unknownObjectRelease();
        v102 = swift_getObjectType();
        (*(v101 + 32))(v206, v102, v101);
        swift_unknownObjectRelease();
        v103 = v205;
        if ((*(v99 + 48))(v100, 1, v205) == 1)
        {
          swift_unknownObjectRelease();

LABEL_47:
          v85 = v223;
          (*(v94 + 8))(v206, v224);
          goto LABEL_48;
        }

        v104 = v202;
        (*(v99 + 32))(v202, v100, v103);
        v105 = v198;
        (*(v99 + 16))(v198, v104, v103);
        v106 = (*(v99 + 88))(v105, v103);
        v107 = v223;
        if (v106 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:))
        {
          v108 = *(v99 + 8);
          v108(v105, v103);
          v109 = v221;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v110 = *(v109 + 64);
            v111 = v186;
            sub_1002E4564(v200, v201, v109, v186);
            v112 = v190;
            if ((*(v189 + 48))(v111, 1, v190) != 1)
            {
              v126 = v111;
              v127 = v176;
              sub_100262C10(v126, v176, v113);
              v128 = swift_getObjectType();
              (*(v110 + 64))(v127, v127 + *(v112 + 24), v86, v177 & 1, v178 & 1, v128, v110);
              swift_unknownObjectRelease();

              v125 = *(v127 + *(v112 + 20));
              sub_100262C74(v127, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
              goto LABEL_71;
            }

            swift_unknownObjectRelease();

            sub_1000079B4(v111, &qword_100776310, &unk_1006368E0);
          }

          else
          {
          }

          v125 = 0;
LABEL_71:
          swift_getObjectType();
          v129 = v194;
          v130 = v193;
          v131 = v199;
          (*(v194 + 104))(v193, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v199);
          v132 = v223;
          dispatch thunk of TTRRemindersListInteractorType.move(reminders:toNewSection:sectionID:targetList:position:initialSectionIDByReminderID:isFromSuggestion:moveSectionCompletion:)();
          swift_unknownObjectRelease();

          (*(v129 + 8))(v130, v131);
          v108(v202, v205);
LABEL_87:
          (*(v94 + 8))(v206, v224);
          return;
        }

        if (v106 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:))
        {
          (*(v99 + 96))(v105, v103);
          v114 = *v105;
          v115 = v179;
          (*(v89 + 608))(v217, v89);
          v116 = v196;
          v117 = v197;
          if ((*(v196 + 48))(v115, 1, v197) == 1)
          {

            sub_1000079B4(v115, &qword_10076DF30, &qword_100631A00);
            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              *v120 = 0;
              v121 = "Unable to get manual ordering for custom smart list when moving reminders.";
LABEL_64:
              _os_log_impl(&_mh_execute_header, v118, v119, v121, v120, 2u);
              v103 = v205;

              goto LABEL_65;
            }

            goto LABEL_65;
          }

          v216 = v114;
          (*(v116 + 32))(v187, v115, v117);
          v133 = v221;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v134 = *(v133 + 64);
            v135 = v174;
            sub_1002E4564(v200, v201, v133, v174);
            v136 = v190;
            v138 = v89;
            if ((*(v189 + 48))(v135, 1, v190) != 1)
            {
              v149 = v135;
              v150 = v172;
              sub_100262C10(v149, v172, v137);
              v151 = swift_getObjectType();
              (*(v134 + 64))(v150, v150 + *(v136 + 24), v86, v177 & 1, v178 & 1, v151, v134);
              swift_unknownObjectRelease();

              v147 = *(v150 + *(v136 + 20));
              sub_100262C74(v150, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
              goto LABEL_83;
            }

            swift_unknownObjectRelease();

            sub_1000079B4(v135, &qword_100776310, &unk_1006368E0);
          }

          else
          {
            v138 = v89;
          }

          v147 = 0;
LABEL_83:
          v222 = v208[6];
          v218 = swift_getObjectType();
          v152 = v194;
          v153 = v193;
          (*(v194 + 104))(v193, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v199);
          v154 = v181;
          (*(v138 + 576))(v217, v138);
          v155 = v185;
          v156 = v182;
          (*(v185 + 104))(v182, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v192);
          v157 = v147;
          v158 = v216;
          dispatch thunk of TTRRemindersListInteractorType.move(reminders:toSmartListNewSection:sectionID:targetSmartList:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:moveSectionCompletion:)();
          swift_unknownObjectRelease();

          (*(v155 + 8))(v156, v192);
          (*(v183 + 8))(v154, v184);
          (*(v152 + 8))(v153, v199);
          (*(v196 + 8))(v187, v197);
LABEL_86:
          (*(v204 + 8))(v202, v205);
          goto LABEL_87;
        }

        if (v106 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.template(_:))
        {
          (*(v99 + 96))(v105, v103);
          v114 = *v105;
          v122 = v180;
          (*(v89 + 608))(v217, v89);
          v123 = v196;
          v124 = v197;
          if ((*(v196 + 48))(v122, 1, v197) == 1)
          {

            sub_1000079B4(v122, &qword_10076DF30, &qword_100631A00);
            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              *v120 = 0;
              v121 = "Unable to get manual ordering for template when moving reminders.";
              goto LABEL_64;
            }

LABEL_65:

            if (v209)
            {
              v209(0);
            }

            swift_unknownObjectRelease();

            (*(v204 + 8))(v202, v103);
            goto LABEL_87;
          }

          (*(v123 + 32))(v188, v122, v124);
          v139 = v221;
          v140 = swift_unknownObjectWeakLoadStrong();
          v216 = v114;
          if (v140)
          {
            v141 = *(v139 + 64);
            v142 = v175;
            sub_1002E4564(v200, v201, v139, v175);
            v143 = v190;
            v145 = v86;
            v146 = v89;
            if ((*(v189 + 48))(v142, 1, v190) != 1)
            {
              v159 = v173;
              sub_100262C10(v142, v173, v144);
              v160 = swift_getObjectType();
              (*(v141 + 64))(v159, v159 + *(v143 + 24), v145, v177 & 1, v178 & 1, v160, v141);
              swift_unknownObjectRelease();

              v148 = *(v159 + *(v143 + 20));
              sub_100262C74(v159, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
              goto LABEL_85;
            }

            swift_unknownObjectRelease();

            sub_1000079B4(v142, &qword_100776310, &unk_1006368E0);
          }

          else
          {
            v146 = v89;
          }

          v148 = 0;
LABEL_85:
          v218 = v208[6];
          v215 = swift_getObjectType();
          v161 = v194;
          v162 = v193;
          (*(v194 + 104))(v193, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v199);
          v163 = v181;
          (*(v146 + 576))(v217, v146);
          v164 = v185;
          v165 = v182;
          (*(v185 + 104))(v182, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v192);
          v166 = v148;
          v167 = v216;
          dispatch thunk of TTRRemindersListInteractorType.move(reminders:toTemplateNewSection:sectionID:targetTemplate:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:moveSectionCompletion:)();
          swift_unknownObjectRelease();

          (*(v164 + 8))(v165, v192);
          (*(v183 + 8))(v163, v184);
          (*(v161 + 8))(v162, v199);
          (*(v196 + 8))(v188, v197);
          goto LABEL_86;
        }

LABEL_98:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      (*(v210 + 8))(v87, v82);

      v85 = v223;
LABEL_49:
      if (v209)
      {
        v209(0);
      }

      return;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_98;
  }

LABEL_89:

  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    *v171 = 0;
    _os_log_impl(&_mh_execute_header, v169, v170, "Unable to get reminder's list to proceed with creating New Section within list.", v171, 2u);
  }

  if (v209)
  {
    v209(0);
  }
}

uint64_t sub_100250F84(uint64_t a1, __n128 a2)
{
  v34 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v28 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-v11];
  v13 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  (*(v13 + 152))(ObjectType, v13);
  v15 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_1000079B4(v12, &unk_10078A380, &qword_10062DE60);
  }

  else
  {
    v17 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
    (*(v16 + 8))(v12, v15);
    if (v17)
    {
      v18 = *(a1 + 16);
      if (v18)
      {
        v19 = v7 + 16;
        v33 = *(v7 + 16);
        v20 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v31 = *(v19 + 56);
        v21 = (v28 + 88);
        v32 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
        v30 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
        v29 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
        v27 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
        v22 = (v19 - 8);
        v23 = (v28 + 8);
        v33(v9, v20, v6);
        while (1)
        {
          TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
          v24 = (*v21)(v5, v34);
          if (v24 == v32)
          {
            (*v22)(v9, v6);
            (*v23)(v5, v34);
            return 1;
          }

          if (v24 == v30 || v24 == v29)
          {
            (*v22)(v9, v6);
            (*v23)(v5, v34);
          }

          else
          {
            if (v24 != v27)
            {
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }

            (*v22)(v9, v6);
          }

          v20 += v31;
          if (!--v18)
          {
            return 0;
          }

          v33(v9, v20, v6);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100251370(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "listObjectID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v5 = TTRListOrCustomSmartList.objectID.getter();
  v6 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a2;

  v7 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminder List add to list {listObjectID: %@, items: %@}", 55, 2, v7);

  return TTRRemindersListPresenterCapabilityCore.request(addToList:for:)();
}

uint64_t sub_100251524(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076C6B8, &unk_100630540);
  __chkstk_darwin(v4);
  v6 = &v12[-v5];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "dateComponents");
  *(inited + 47) = -18;
  sub_10000794C(a1, v6, &qword_10076C6B8, &unk_100630540);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a2;

  v10 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List set due date {dateComponents: %@, items: %@}", 59, 2, v10);

  return TTRRemindersListPresenterCapabilityCore.request(setDueDateTo:for:)();
}

void sub_100251738(Swift::OpaquePointer a1, Swift::OpaquePointer a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6E65727275636572;
  *(inited + 40) = 0xEF73656C75526563;
  type metadata accessor for TTRRecurrenceRuleModel();
  *(inited + 48) = Array.description.getter();
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  *(inited + 96) = a2;

  v7 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders List set  {recurrenceRules: %@, items: %@}", 52, 2, v7);

  TTRRemindersListPresenterCapabilityCore.request(setRecurrenceRulesTo:for:)(a1, a2);
}

uint64_t sub_1002518E4(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v72 = *(v3 - 8);
  __chkstk_darwin(v3);
  v71 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = &v60 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v68 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_1007757C0, &qword_100635E20);
  __chkstk_darwin(v11 - 8);
  v13 = &v60 - v12;
  v14 = type metadata accessor for TTRDateChangeType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v73 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100003E30(v17, qword_100776068);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v64 = sub_10026263C(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v20 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v20;
  *(inited + 56) = v21;
  v22 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List Create New Instance of Recurring Reminder {item: %@ postponeType: %@}", 84, 2, v22);

  v23 = v75;
  TTRRemindersListPresenterCapabilityCore.postponeType(relativeToDueDate:from:)();
  v24 = a1;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &qword_1007757C0, &qword_100635E20);
    v26 = v71;
    v25 = v72;
    (*(v72 + 16))(v71, v24, v3);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v76 = v30;
      *v29 = 136315138;
      v31 = TTRTreeStorageItem.treeItemDescription.getter();
      v33 = v32;
      (*(v25 + 8))(v26, v3);
      v34 = sub_100004060(v31, v33, &v76);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Couldn't get dateChangeType to update instance of a recurring reminder {item: %s}", v29, 0xCu);
      sub_100004758(v30);
    }

    else
    {

      (*(v25 + 8))(v26, v3);
    }

    return 0;
  }

  v74 = v18;
  v35 = v73;
  (*(v15 + 32))(v73, v13, v14);
  v36 = v68;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v38 = v69;
  v37 = v70;
  v39 = (*(v69 + 88))(v36, v70);
  if (v39 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    v61 = v24;
    v62 = v15;
    v71 = v14;
    (*(v38 + 96))(v36, v37);
    v41 = v66;
    v40 = v67;
    v42 = v65;
    (*(v66 + 32))(v65, v36, v67);
    v43 = *(v23 + 72);
    ObjectType = swift_getObjectType();
    v45 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v46 = (*(v43 + 256))(v45, ObjectType, v43);

    if (v46)
    {
      swift_getObjectType();
      v47 = v73;
      dispatch thunk of TTRRemindersListInteractorType.advanceForwardAndCreateIncompleteClone(_:with:)();

      (*(v41 + 8))(v42, v40);
      (*(v62 + 8))(v47, v71);
      return 1;
    }

    v49 = v72;
    v50 = v63;
    (*(v72 + 16))(v63, v61, v3);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v76 = v54;
      *v53 = 136315138;
      v55 = TTRTreeStorageItem.treeItemDescription.getter();
      v56 = v50;
      v58 = v57;
      (*(v49 + 8))(v56, v3);
      v59 = sub_100004060(v55, v58, &v76);

      *(v53 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "Reminders List is requesting to update instance of a recurring reminder that doesn't exist {item: %s}", v53, 0xCu);
      sub_100004758(v54);
    }

    else
    {

      (*(v49 + 8))(v50, v3);
    }

    (*(v66 + 8))(v65, v67);
    (*(v62 + 8))(v73, v71);
    return 0;
  }

  if (v39 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v39 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v15 + 8))(v35, v14);
    (*(v38 + 8))(v36, v37);
    return 0;
  }

  if (v39 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    (*(v15 + 8))(v35, v14);
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}