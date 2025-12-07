uint64_t sub_217AB60E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_217D04A08(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_217D04A08(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217D04A08(0, &qword_27CBA4808, sub_217B71028, sub_217B71080, &type metadata for InteractivePuzzleTeaserEngagementData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217AB651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AB65DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AB6698(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_217AB6948(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_217AB6C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AB6CC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AB6D80(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8, &type metadata for SearchSelectionData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217AB70B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217D0C208(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_217D0C208(0, &qword_27CBA49E8, sub_217BA2E90, sub_217BA2EE8, &type metadata for SearchSelectionData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_27CBA1D20, sub_217B09D84, sub_217B09DDC, &type metadata for SearchResultsData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217D0C208(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217AB73EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AB74AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AB7578()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_217AB75C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217AB76D0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680, &type metadata for EmailShareResultData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[12];

  return v23(v24, a2, v22);
}

uint64_t sub_217AB7B80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  sub_217D13EE0(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  sub_217D13EE0(0, &qword_27CBA4B80, sub_217B40628, sub_217B40680, &type metadata for EmailShareResultData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  sub_217D13EE0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[12];

  return v25(v26, a2, a2, v24);
}

uint64_t sub_217AB803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_217AB8108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_217AB81C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC, &type metadata for AppLaunchTakeoverTriggerData);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217AB8374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_217D16F0C(0, &qword_2811C8850, sub_217CFD294, sub_217CFD2EC, &type metadata for AppLaunchTakeoverTriggerData);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217D16F0C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217AB8530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_217AB85FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  return result;
}

uint64_t sub_217AB86B8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  sub_217A608E0(0);
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

  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_217AB8AB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_217D19D30(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217D19D30(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217AB8EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AB8FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AB90D0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217A608E0(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217AB95C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_217D1DD8C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D1DD8C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217AB9ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AB9BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AB9CE8(uint64_t a1, uint64_t a2)
{
  sub_217D22308(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_217AB9D54(uint64_t a1, uint64_t a2)
{
  sub_217D22308(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_217AB9DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D889CC();
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

uint64_t sub_217AB9E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D889CC();
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

uint64_t sub_217AB9F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_217A608E0(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217D25828(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217ABA090(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217D25828(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217ABA1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 16);
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

uint64_t sub_217ABA2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217ABA404(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_217A608E0(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_217ABA6FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_217A608E0(0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_217ABAA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217ABAB28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  else
  {
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217ABAC94(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_34:

    return v9(v10, a2, v8);
  }

  sub_217A608E0(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_33:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_34;
  }

  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC, &type metadata for ExposedPaywallContentData);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v12 = *(v27 - 8);
    v13 = a3[19];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v30 = v29;
  v31 = *(*(v29 - 8) + 48);
  v32 = a1 + a3[20];

  return v31(v32, a2, v30);
}

uint64_t sub_217ABB50C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_34:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_33:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_34;
  }

  sub_217D2BEC0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8578, sub_217CB56A4, sub_217CB56FC, &type metadata for ExposedPaywallContentData);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[19];
    goto LABEL_33;
  }

  sub_217D2BEC0(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v32 = v31;
  v33 = *(*(v31 - 8) + 56);
  v34 = a1 + a4[20];

  return v33(v34, a2, a2, v32);
}

uint64_t sub_217ABBD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217ABBEA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217ABC010(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_217ABC2C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_217D37668(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_217D37668(0, &qword_2811C8560, sub_217B37EF8, sub_217B37F4C, &type metadata for NotificationSubscribedData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_217D37668(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_217D37668(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_217ABC57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217ABC63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217ABC6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0, &type metadata for BadgeOriginationData);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217ABC8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_217A62ED4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217A62ED4(0, &qword_27CBA50D0, sub_217BB03D8, sub_217A69CD0, &type metadata for BadgeOriginationData);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217ABCA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_217ABCB30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  return result;
}

uint64_t sub_217ABCBEC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v24 = v23;
  v25 = *(*(v23 - 8) + 48);
  v26 = a1 + a3[14];

  return v25(v26, a2, v24);
}

uint64_t sub_217ABD19C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  sub_217D3D708(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  sub_217D3D708(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  sub_217D3D708(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v28 = a1 + a4[14];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_217ABD758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217ABD818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217ABD8D4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217ABDE04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217ABE340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217ABE400(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217ABE4BC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217D454DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217A6018C(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_217D454DC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217A608E0(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217ABE9B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217D454DC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217A6018C(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_217D454DC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217A608E0(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D454DC(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217ABEEB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217D8899C();
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
      v13 = sub_217D889CC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_217ABEFDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_217D8899C();
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
      v13 = sub_217D889CC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_217ABF138(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_28:

    return v9(v10, a2, v8);
  }

  sub_217D49AC4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_27:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_28;
  }

  sub_217D49AC4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_27;
  }

  sub_217A608E0(0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v27 = v26;
  v28 = *(*(v26 - 8) + 48);
  v29 = a1 + a3[17];

  return v28(v29, a2, v27);
}

uint64_t sub_217ABF830(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_28:

    return v11(v12, a2, a2, v10);
  }

  sub_217D49AC4(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_27:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_28;
  }

  sub_217D49AC4(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_27;
  }

  sub_217A608E0(0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_27;
  }

  sub_217D49AC4(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v29 = v28;
  v30 = *(*(v28 - 8) + 56);
  v31 = a1 + a4[17];

  return v30(v31, a2, a2, v29);
}

uint64_t sub_217ABFF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_217AC005C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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
    v11 = sub_217D889CC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_217AC01C0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_30:

    return v9(v10, a2, v8);
  }

  sub_217A608E0(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_29:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_30;
  }

  sub_217D4F388(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  v28 = v27;
  v29 = *(*(v27 - 8) + 48);
  v30 = a1 + a3[18];

  return v29(v30, a2, v28);
}

uint64_t sub_217AC0938(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_30:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_29:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_30;
  }

  sub_217D4F388(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_29;
  }

  sub_217D4F388(0, &qword_2811C8680, sub_217C818E8, sub_217C81940, &type metadata for RecipeScienceData);
  v30 = v29;
  v31 = *(*(v29 - 8) + 56);
  v32 = a1 + a4[18];

  return v31(v32, a2, a2, v30);
}

uint64_t sub_217AC10BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
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

uint64_t sub_217AC11CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
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

uint64_t sub_217AC12D8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217AC1808(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217AC1D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AC1E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AC1F20(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217AC2450(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217AC298C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AC2A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AC2B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D87C9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 64) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217AC2C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D87C9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 64) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217AC2CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_217D5D264(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_217D5D264(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_217AC2E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_217D5D264(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_217D5D264(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_217AC302C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AC30EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AC31E4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_30:

    return v9(v10, a2, v8);
  }

  sub_217A608E0(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_29:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_30;
  }

  sub_217D648FC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C86D8, sub_217BABA38, sub_217BABA90, &type metadata for ScrollStartData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8758, sub_217C553E8, sub_217C55440, &type metadata for ScrollEndData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v28 = v27;
  v29 = *(*(v27 - 8) + 48);
  v30 = a1 + a3[18];

  return v29(v30, a2, v28);
}

uint64_t sub_217AC395C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_30:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_29:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_30;
  }

  sub_217D648FC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C86D8, sub_217BABA38, sub_217BABA90, &type metadata for ScrollStartData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8758, sub_217C553E8, sub_217C55440, &type metadata for ScrollEndData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_29;
  }

  sub_217D648FC(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v30 = v29;
  v31 = *(*(v29 - 8) + 56);
  v32 = a1 + a4[18];

  return v31(v32, a2, a2, v30);
}

uint64_t sub_217AC40E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AC41F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AC42FC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_217D699F4(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_217D699F4(0, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC, &type metadata for DownloadLocationData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0, &type metadata for DownloadStateData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C, &type metadata for DownloadData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AC46AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_217D699F4(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_217D699F4(0, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC, &type metadata for DownloadLocationData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0, &type metadata for DownloadStateData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C, &type metadata for DownloadData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217D699F4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AC4A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AC4B28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AC4BE4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217D6D008(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_217A6018C(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_217A608E0(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8550, sub_217C9C618, sub_217C9C670, &type metadata for SubscriptionAdLocationData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_217AC50DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217D6D008(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_217A6018C(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  sub_217A608E0(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_217D6D008(0, &qword_2811C8550, sub_217C9C618, sub_217C9C670, &type metadata for SubscriptionAdLocationData);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_217AC55E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_217D8899C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_217D889CC();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_217AC56EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_217D8899C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_217D889CC();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_217AC57F4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_217D70598(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_217D70598(0, &qword_27CBA5840, sub_217B354F0, sub_217B35548, &type metadata for NotificationStatusData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_217D7078C(0);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_217AC5B6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_217D70598(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_217D70598(0, &qword_27CBA5840, sub_217B354F0, sub_217B35548, &type metadata for NotificationStatusData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_217D70598(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_217D7078C(0);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_217AC5EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AC5FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AC60B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_28:

    return v9(v10, a2, v8);
  }

  sub_217A608E0(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_27:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_28;
  }

  sub_217A607BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8670, sub_217A5D48C, sub_217A5D580, &type metadata for ReferralGroupData);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184, &type metadata for ReferralFeedData);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v27 = v26;
  v28 = *(*(v26 - 8) + 48);
  v29 = a1 + a3[17];

  return v28(v29, a2, v27);
}

uint64_t sub_217AC67A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_28:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_27:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_28;
  }

  sub_217A607BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C8670, sub_217A5D48C, sub_217A5D580, &type metadata for ReferralGroupData);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184, &type metadata for ReferralFeedData);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_27;
  }

  sub_217A607BC(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v29 = v28;
  v30 = *(*(v28 - 8) + 56);
  v31 = a1 + a4[17];

  return v30(v31, a2, a2, v29);
}

uint64_t sub_217AC6EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AC6FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_217AC70C8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  sub_217D7D038(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
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

  sub_217D7D038(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8, &type metadata for VideoAdEngagementData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v21 = v20;
  v22 = *(*(v20 - 8) + 48);
  v23 = a1 + a3[11];

  return v22(v23, a2, v21);
}

uint64_t sub_217AC74F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  sub_217D7D038(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  sub_217D7D038(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8, &type metadata for VideoAdEngagementData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  sub_217D7D038(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v25 = a1 + a4[11];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_217AC7934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
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

uint64_t sub_217AC79F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217D8899C();
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

uint64_t sub_217AC7AB0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217A6018C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  sub_217A608E0(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  sub_217D802D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[12];

  return v23(v24, a2, v22);
}

uint64_t sub_217AC7F28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217A6018C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  sub_217A608E0(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  sub_217D802D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  sub_217D802D8(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[12];

  return v25(v26, a2, a2, v24);
}

uint64_t sub_217AC83AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217D8899C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_217D889CC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_217AC84BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_217D8899C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_217D889CC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_13NewsAnalytics20WidgetEngagementDataVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t BannerAdData.init(traits:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217AC8850(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-v11];
  sub_217AC88A8(a1, &v22[-v11]);
  v13 = sub_217D88F5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_217AC890C(v12);
    v16 = 0;
  }

  else
  {
    v16 = sub_217D88F4C();
    (*(v14 + 8))(v12, v13);
  }

  v23 = v16 & 1;
  sub_217AC88A8(a1, v10);
  if (v15(v10, 1, v13) == 1)
  {
    sub_217AC890C(v10);
    v17 = 0;
  }

  else
  {
    v17 = sub_217D88F3C();
    (*(v14 + 8))(v10, v13);
  }

  v18 = v17 & 1;
  v24 = v17 & 1;
  sub_217AC88A8(a1, v7);
  if (v15(v7, 1, v13) == 1)
  {
    sub_217AC890C(a1);
    result = sub_217AC890C(v7);
    v20 = 0;
  }

  else
  {
    v20 = sub_217D88F2C();
    sub_217AC890C(a1);
    result = (*(v14 + 8))(v7, v13);
    v18 = v24;
  }

  v21 = v23;
  *a2 = v20 & 1;
  a2[1] = v18;
  a2[2] = v21;
  return result;
}

void sub_217AC8850(uint64_t a1)
{
  if (!qword_2811BCF08)
  {
    sub_217D88F5C();
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811BCF08);
    }
  }
}

uint64_t sub_217AC88A8(uint64_t a1, uint64_t a2)
{
  sub_217AC8850(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217AC890C(uint64_t a1)
{
  sub_217AC8850(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217AC89A4()
{
  v1 = *v0;
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](v1);
  return sub_217D89E3C();
}

uint64_t sub_217AC89EC(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](v2);
  return sub_217D89E3C();
}

uint64_t sub_217AC8A30(uint64_t a1, id *a2)
{
  result = sub_217D8952C();
  *a2 = 0;
  return result;
}

uint64_t sub_217AC8AA8(uint64_t a1, id *a2)
{
  v3 = sub_217D8953C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_217AC8B28@<X0>(uint64_t *a2@<X8>)
{
  sub_217D8954C();
  v3 = sub_217D8951C();

  *a2 = v3;
  return result;
}

uint64_t sub_217AC8B74(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21CEACDE0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_217AC8BC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_217D8977C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_217AC8C20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217D8978C();
  *a1 = result;
  return result;
}

uint64_t sub_217AC8C48(void *a1, uint64_t *a2)
{
  v2 = sub_217D8954C();
  v4 = v3;
  if (v2 == sub_217D8954C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

uint64_t sub_217AC8CD0(uint64_t a1)
{
  sub_217A572CC(&qword_2811BCC40, type metadata accessor for NSKeyValueChangeKey, &unk_217D8CF0C);
  sub_217A572CC(&qword_27CB9E618, type metadata accessor for NSKeyValueChangeKey, &unk_217D8CCFC);

  return sub_217D89AFC();
}

uint64_t sub_217AC8E1C(uint64_t a1)
{
  sub_217A572CC(&qword_27CB9E6E8, type metadata accessor for UIContentSizeCategory, &unk_217D8D104);
  sub_217A572CC(&qword_27CB9E6F0, type metadata accessor for UIContentSizeCategory, &unk_217D8D0A4);

  return sub_217D89AFC();
}

uint64_t sub_217AC8ED8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_217D8951C();

  *a2 = v3;
  return result;
}

uint64_t sub_217AC8F20(uint64_t a1)
{
  sub_217A572CC(&qword_27CB9E6D8, type metadata accessor for OpenURLOptionsKey, &unk_217D8D31C);
  sub_217A572CC(&qword_27CB9E6E0, type metadata accessor for OpenURLOptionsKey, &unk_217D8D270);

  return sub_217D89AFC();
}

uint64_t sub_217AC8FDC(uint64_t a1)
{
  sub_217A572CC(&qword_27CB9E600, type metadata accessor for UIBackgroundTaskIdentifier, &unk_217D8CE7C);
  sub_217A572CC(&unk_27CB9E608, type metadata accessor for UIBackgroundTaskIdentifier, &unk_217D8CE1C);
  return sub_217D89AFC();
}

uint64_t sub_217AC9128()
{
  v0 = sub_217D8954C();
  v1 = MEMORY[0x21CEACCC0](v0);

  return v1;
}

uint64_t sub_217AC9164(uint64_t a1)
{
  sub_217D8954C();
  sub_217D895CC();
}

uint64_t sub_217AC9210(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217AC9230(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedPositionData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedPositionData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t StartMethodData.sessionStartSource.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StartMethodData.sessionStartSource.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217AC95E0()
{
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](0);
  return sub_217D89E3C();
}

uint64_t sub_217AC964C(uint64_t a1)
{
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](0);
  return sub_217D89E3C();
}

uint64_t sub_217AC96A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000217DCCAE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217AC973C(uint64_t a1)
{
  v2 = sub_217AC9900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AC9778(uint64_t a1)
{
  v2 = sub_217AC9900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartMethodData.encode(to:)(void *a1)
{
  sub_217AC9AD8(0, &qword_2811BC738, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AC9900();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217AC9900()
{
  result = qword_2811C60C0;
  if (!qword_2811C60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60C0);
  }

  return result;
}

uint64_t StartMethodData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217AC9AD8(0, &qword_27CB9E9B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AC9900();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217AC9AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217AC9900();
    v7 = a3(a1, &type metadata for StartMethodData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217AC9B88(void *a1)
{
  sub_217AC9AD8(0, &qword_2811BC738, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AC9900();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_217AC9CD4(uint64_t a1, int a2)
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

unint64_t sub_217AC9D40()
{
  result = qword_27CB9E9B8;
  if (!qword_27CB9E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9B8);
  }

  return result;
}

unint64_t sub_217AC9D98()
{
  result = qword_2811C60B0;
  if (!qword_2811C60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60B0);
  }

  return result;
}

unint64_t sub_217AC9DF0()
{
  result = qword_2811C60B8;
  if (!qword_2811C60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60B8);
  }

  return result;
}

uint64_t sub_217AC9EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x76416D6574497369 && a2 == 0xEF656C62616C6961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217AC9F38(uint64_t a1)
{
  v2 = sub_217ACA0F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AC9F74(uint64_t a1)
{
  v2 = sub_217ACA0F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfflineModeData.encode(to:)(void *a1)
{
  sub_217ACA2D0(0, &qword_2811BC758, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACA0F8();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217ACA0F8()
{
  result = qword_2811C6600[0];
  if (!qword_2811C6600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C6600);
  }

  return result;
}

uint64_t OfflineModeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217ACA2D0(0, &qword_2811BCAB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACA0F8();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B9C();
    (*(v7 + 8))(v9, v6);
    *a2 = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217ACA2D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ACA0F8();
    v7 = a3(a1, &type metadata for OfflineModeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217ACA338()
{
  result = qword_2811C65E0;
  if (!qword_2811C65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65E0);
  }

  return result;
}

unint64_t sub_217ACA390()
{
  result = qword_2811C65E8;
  if (!qword_2811C65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65E8);
  }

  return result;
}

uint64_t sub_217ACA3FC(void *a1)
{
  sub_217ACA2D0(0, &qword_2811BC758, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACA0F8();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t getEnumTagSinglePayload for OfflineModeData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_217ACA608()
{
  result = qword_27CB9E9C0;
  if (!qword_27CB9E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9C0);
  }

  return result;
}

unint64_t sub_217ACA660()
{
  result = qword_2811C65F0;
  if (!qword_2811C65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65F0);
  }

  return result;
}

unint64_t sub_217ACA6B8()
{
  result = qword_2811C65F8;
  if (!qword_2811C65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65F8);
  }

  return result;
}

NewsAnalytics::CacheState_optional __swiftcall CacheState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CacheState.rawValue.getter()
{
  v1 = 7629160;
  if (*v0 != 1)
  {
    v1 = 1936943469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217ACA7B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7629160;
  if (v2 != 1)
  {
    v4 = 1936943469;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7629160;
  if (*a2 != 1)
  {
    v8 = 1936943469;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217ACA89C()
{
  result = qword_27CB9E9C8;
  if (!qword_27CB9E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9C8);
  }

  return result;
}

uint64_t sub_217ACA8F0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217ACA984(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217ACAA04(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217ACAAA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7629160;
  if (v2 != 1)
  {
    v5 = 1936943469;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for CacheState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CacheState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217ACACF0()
{
  result = qword_2811C7FA8;
  if (!qword_2811C7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FA8);
  }

  return result;
}

NewsAnalytics::LiveActivityDismissal_optional __swiftcall LiveActivityDismissal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LiveActivityDismissal.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C69546F63736964;
  if (*v0 != 2)
  {
    v2 = 0x6465626D45626577;
  }

  if (*v0)
  {
    v1 = 0x6D6574737973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217ACAE2C()
{
  result = qword_27CB9E9D0;
  if (!qword_27CB9E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9D0);
  }

  return result;
}

uint64_t sub_217ACAE80()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217ACAF44(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217ACAFF4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217ACB0C0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE900000000000065;
  v5 = 0x6C69546F63736964;
  if (*v1 != 2)
  {
    v5 = 0x6465626D45626577;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6574737973;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for LiveActivityDismissal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveActivityDismissal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217ACB340()
{
  result = qword_27CB9E9D8;
  if (!qword_27CB9E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9E9D8);
  }

  return result;
}

uint64_t sub_217ACB424(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_217ACB4E8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EA10);
  __swift_project_value_buffer(v0, qword_27CB9EA10);
  return sub_217D8866C();
}

uint64_t sub_217ACB56C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
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

uint64_t PersonalizedAdsEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PersonalizedAdsEngagementEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.userSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 24);
  sub_217ACBAD8(0, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4, &type metadata for PersonalizedAdsUserSelectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACB880()
{
  result = qword_27CB9EA30;
  if (!qword_27CB9EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA30);
  }

  return result;
}

unint64_t sub_217ACB8D4()
{
  result = qword_27CB9EA38;
  if (!qword_27CB9EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA38);
  }

  return result;
}

uint64_t PersonalizedAdsEngagementEvent.userSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 24);
  sub_217ACBAD8(0, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4, &type metadata for PersonalizedAdsUserSelectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 28);
  sub_217ACBAD8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217ACBAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t PersonalizedAdsEngagementEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 28);
  sub_217ACBAD8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PersonalizedAdsEngagementEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217ACBAD8(0, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4, &type metadata for PersonalizedAdsUserSelectionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217ACBAD8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217ACBE20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_217ACBEBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PersonalizedAdsEngagementEvent.Model.userSelectionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PersonalizedAdsEngagementEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PersonalizedAdsEngagementEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 PersonalizedAdsEngagementEvent.Model.init(eventData:timedData:userSelectionData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = sub_217D8899C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  v12 = v11[5];
  v13 = sub_217D889CC();
  (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = v9;
  v14 = a5 + v11[7];
  v15 = *(a4 + 16);
  *v14 = *a4;
  *(v14 + 16) = v15;
  result = *(a4 + 32);
  *(v14 + 32) = result;
  *(v14 + 48) = *(a4 + 48);
  return result;
}

uint64_t sub_217ACC164()
{
  v1 = *v0;
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](v1);
  return sub_217D89E3C();
}

uint64_t sub_217ACC1D8(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](v2);
  return sub_217D89E3C();
}

unint64_t sub_217ACC21C()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217ACC29C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217ACD320(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ACC2D0(uint64_t a1)
{
  v2 = sub_217ACC648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ACC30C(uint64_t a1)
{
  v2 = sub_217ACC648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizedAdsEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217ACCC48(0, &qword_27CB9EA40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACC648();
  sub_217D89E7C();
  LOBYTE(v22[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
    LOBYTE(v22[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v26 = *(v3 + *(v10 + 24));
    v25 = 2;
    sub_217ACB8D4();
    sub_217D89CAC();
    v11 = (v3 + *(v10 + 28));
    v12 = v11[1];
    v22[0] = *v11;
    v22[1] = v12;
    v14 = *v11;
    v13 = v11[1];
    v22[2] = v11[2];
    v23 = *(v11 + 48);
    v18 = v14;
    v19 = v13;
    v20 = v11[2];
    v21 = *(v11 + 48);
    v24 = 3;
    sub_217ACC004(v22, v16);
    sub_217A55B98();
    sub_217D89CAC();
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v17 = v21;
    sub_217ACC69C(v16);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217ACC648()
{
  result = qword_27CB9EA48;
  if (!qword_27CB9EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA48);
  }

  return result;
}

uint64_t PersonalizedAdsEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_217D889CC();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217ACCC48(0, &qword_27CB9EA50, MEMORY[0x277D844C8]);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACC648();
  v29 = v9;
  v13 = v30;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v10;
  v14 = v24;
  v15 = v25;
  LOBYTE(v31) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v16 = *(v14 + 32);
  v17 = v28;
  v28 = v5;
  v16(v12, v17);
  LOBYTE(v31) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v23 + 32))(&v12[*(v30 + 20)], v4, v15);
  v35 = 2;
  sub_217ACB880();
  sub_217D89BCC();
  v18 = v30;
  v12[*(v30 + 24)] = v31;
  v35 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v26 + 8))(v29, v27);
  v19 = &v12[*(v18 + 28)];
  v20 = v32;
  *v19 = v31;
  *(v19 + 1) = v20;
  *(v19 + 2) = v33;
  v19[48] = v34;
  sub_217ACCCAC(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217ACCD10(v12);
}

void sub_217ACCC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ACC648();
    v7 = a3(a1, &type metadata for PersonalizedAdsEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217ACCCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ACCD10(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217ACCE48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217ACBAD8(0, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4, &type metadata for PersonalizedAdsUserSelectionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217ACBAD8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217ACD020(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217ACBAD8(319, &qword_27CB9EA28, sub_217ACB880, sub_217ACB8D4, &type metadata for PersonalizedAdsUserSelectionData);
      if (v3 <= 0x3F)
      {
        sub_217ACBAD8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217ACD16C(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217ACD21C()
{
  result = qword_27CB9EA78;
  if (!qword_27CB9EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA78);
  }

  return result;
}

unint64_t sub_217ACD274()
{
  result = qword_27CB9EA80;
  if (!qword_27CB9EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA80);
  }

  return result;
}

unint64_t sub_217ACD2CC()
{
  result = qword_27CB9EA88;
  if (!qword_27CB9EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA88);
  }

  return result;
}

uint64_t sub_217ACD320(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCCB90 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ReferralData.referringApplication.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReferralData.referringApplication.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReferralData.referringUrl.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReferralData.referringUrl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ReferralData.userActivityType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReferralData.userActivityType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall ReferralData.init(referringApplication:referringUrl:userActivityType:)(NewsAnalytics::ReferralData *__return_ptr retstr, Swift::String referringApplication, Swift::String referringUrl, Swift::String_optional userActivityType)
{
  retstr->referringApplication = referringApplication;
  retstr->referringUrl = referringUrl;
  retstr->userActivityType = userActivityType;
}

unint64_t sub_217ACD648()
{
  v1 = 0x6E69727265666572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_217ACD6B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217ACDEA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ACD6EC(uint64_t a1)
{
  v2 = sub_217ACD914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ACD728(uint64_t a1)
{
  v2 = sub_217ACD914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralData.encode(to:)(void *a1)
{
  sub_217ACDBF0(0, &qword_2811BC7F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACD914();
  sub_217D89E7C();
  v15 = 0;
  v10 = v12[5];
  sub_217D89C6C();
  if (!v10)
  {
    v14 = 1;
    sub_217D89C6C();
    v13 = 2;
    sub_217D89C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217ACD914()
{
  result = qword_2811C7920;
  if (!qword_2811C7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7920);
  }

  return result;
}

uint64_t ReferralData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217ACDBF0(0, &qword_2811BCB08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217ACD914();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v23 = v10;
  v25 = 1;
  v21 = sub_217D89B8C();
  v22 = v13;
  v24 = 2;
  v14 = sub_217D89B2C();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v9, v6);
  v18 = v22;
  *a2 = v23;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217ACDBF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217ACD914();
    v7 = a3(a1, &type metadata for ReferralData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217ACDC58()
{
  result = qword_2811C78F8;
  if (!qword_2811C78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78F8);
  }

  return result;
}

unint64_t sub_217ACDCB0()
{
  result = qword_2811C7900;
  if (!qword_2811C7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7900);
  }

  return result;
}

uint64_t sub_217ACDD34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

unint64_t sub_217ACDDA0()
{
  result = qword_27CB9EA90;
  if (!qword_27CB9EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA90);
  }

  return result;
}

unint64_t sub_217ACDDF8()
{
  result = qword_2811C7910;
  if (!qword_2811C7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7910);
  }

  return result;
}

unint64_t sub_217ACDE50()
{
  result = qword_2811C7918;
  if (!qword_2811C7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7918);
  }

  return result;
}

uint64_t sub_217ACDEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000217DCCBE0 == a2;
  if (v3 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69727265666572 && a2 == 0xEC0000006C725567 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCC00 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t UserData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserData.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserData.userStorefrontID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t UserData.userStorefrontID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t UserData.init(userID:isUserIDTemporary:userType:userStartDate:ageBracket:ageBracketConfidenceLevel:gender:genderConfidenceLevel:userStorefrontID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12)
{
  v12 = *a4;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v12;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 36) = a10;
  *(a9 + 40) = a7;
  *(a9 + 44) = a11;
  *(a9 + 48) = a8;
  *(a9 + 56) = a12;
  return result;
}

uint64_t sub_217ACE270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217ACE8A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ACE2A4(uint64_t a1)
{
  v2 = sub_217A63D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ACE2E0(uint64_t a1)
{
  v2 = sub_217A63D38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217A63CBC(0, &qword_2811BC8E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A63D38();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  LOBYTE(v37[0]) = 1;
  v53 = sub_217D89B3C();
  LOBYTE(v33) = 2;
  sub_217ACE70C();
  sub_217D89BCC();
  v52 = LOBYTE(v37[0]);
  LOBYTE(v37[0]) = 3;
  v32 = sub_217D89BEC();
  LOBYTE(v37[0]) = 4;
  v31 = sub_217D89BDC();
  LOBYTE(v37[0]) = 5;
  sub_217D89BBC();
  v15 = v14;
  LOBYTE(v37[0]) = 6;
  v30 = sub_217D89BDC();
  LOBYTE(v37[0]) = 7;
  sub_217D89BBC();
  HIDWORD(v28) = v16;
  v49 = 8;
  v17 = sub_217D89B8C();
  v29 = v18;
  v19 = v17;
  (*(v7 + 8))(v9, v6);
  *&v33 = v13;
  *(&v33 + 1) = v12;
  v20 = v53;
  LOBYTE(v34) = v53;
  BYTE1(v34) = v52;
  *(&v34 + 2) = v50;
  WORD3(v34) = v51;
  v21 = v32;
  *(&v34 + 1) = v32;
  v22 = v31;
  *&v35 = __PAIR64__(v15, v31);
  *(&v35 + 1) = __PAIR64__(HIDWORD(v28), v30);
  v23 = HIDWORD(v28);
  *&v36 = v19;
  *(&v36 + 1) = v29;
  v24 = v33;
  v25 = v34;
  v26 = v36;
  a2[2] = v35;
  a2[3] = v26;
  *a2 = v24;
  a2[1] = v25;
  sub_217A6395C(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v13;
  v37[1] = v12;
  v38 = v20;
  v39 = v52;
  v40 = v50;
  v41 = v51;
  v42 = v21;
  v43 = v22;
  v44 = v15;
  v45 = v30;
  v46 = v23;
  v47 = v19;
  v48 = v29;
  return sub_217ACE760(v37);
}

unint64_t sub_217ACE70C()
{
  result = qword_2811BD230;
  if (!qword_2811BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD230);
  }

  return result;
}

uint64_t sub_217ACE7A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_217ACE7F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_217ACE854()
{
  result = qword_27CB9EA98;
  if (!qword_27CB9EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EA98);
  }

  return result;
}

uint64_t sub_217ACE8A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCCC20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00006574614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B63617242656761 && a2 == 0xEA00000000007465 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCCC40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DCCC60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCC80 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

NewsAnalytics::ICloudAccountState_optional __swiftcall ICloudAccountState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ICloudAccountState.rawValue.getter()
{
  v1 = 0x6E496E6567676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x754F646567676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217ACEC54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E496E6567676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x754F646567676F6CLL;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E496E6567676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x754F646567676F6CLL;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217ACED64()
{
  result = qword_27CB9EAA0;
  if (!qword_27CB9EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EAA0);
  }

  return result;
}

uint64_t sub_217ACEDB8()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217ACEE60(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217ACEEF4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217ACEFA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E496E6567676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x754F646567676F6CLL;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217ACF0C8()
{
  result = qword_2811C3328;
  if (!qword_2811C3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3328);
  }

  return result;
}

uint64_t sub_217ACF1E4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CB9EAD8);
  __swift_project_value_buffer(v0, qword_27CB9EAD8);
  return sub_217D8866C();
}

uint64_t ReplicaAdvertisementViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReplicaAdvertisementViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 24);
  sub_217AD0CA8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACF4D8()
{
  result = qword_2811C7DC0;
  if (!qword_2811C7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DC0);
  }

  return result;
}

unint64_t sub_217ACF52C()
{
  result = qword_2811C7DC8;
  if (!qword_2811C7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7DC8);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 24);
  sub_217AD0CA8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 28);
  sub_217AD0CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 28);
  sub_217AD0CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 32);
  sub_217AD0CA8(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACF8E0()
{
  result = qword_2811C7CB8;
  if (!qword_2811C7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CB8);
  }

  return result;
}

unint64_t sub_217ACF934()
{
  result = qword_2811C7CC0;
  if (!qword_2811C7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7CC0);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 32);
  sub_217AD0CA8(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 36);
  sub_217AD0CA8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACFB38()
{
  result = qword_2811C01D0;
  if (!qword_2811C01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C01D0);
  }

  return result;
}

unint64_t sub_217ACFB8C()
{
  result = qword_2811C01D8;
  if (!qword_2811C01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C01D8);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 36);
  sub_217AD0CA8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 40);
  sub_217AD0CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 40);
  sub_217AD0CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 44);
  sub_217AD0CA8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217ACFF40()
{
  result = qword_2811BD118;
  if (!qword_2811BD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD118);
  }

  return result;
}

unint64_t sub_217ACFF94()
{
  result = qword_2811BD120;
  if (!qword_2811BD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD120);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 44);
  sub_217AD0CA8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 48);
  sub_217AD0CA8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD0198()
{
  result = qword_2811C71B0;
  if (!qword_2811C71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71B0);
  }

  return result;
}

unint64_t sub_217AD01EC()
{
  result = qword_2811C71B8;
  if (!qword_2811C71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71B8);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 48);
  sub_217AD0CA8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.issueExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 52);
  sub_217AD0CA8(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD03F0()
{
  result = qword_2811BF968;
  if (!qword_2811BF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF968);
  }

  return result;
}

unint64_t sub_217AD0444()
{
  result = qword_2811BF970;
  if (!qword_2811BF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF970);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.issueExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 52);
  sub_217AD0CA8(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 56);
  sub_217AD0CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicaAdvertisementViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 56);
  sub_217AD0CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 60);
  sub_217AD0CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD07F8()
{
  result = qword_2811C7D78;
  if (!qword_2811C7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D78);
  }

  return result;
}

unint64_t sub_217AD084C()
{
  result = qword_2811C7D80;
  if (!qword_2811C7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D80);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 60);
  sub_217AD0CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.issueViewContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 64);
  sub_217AD0CA8(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217AD0A50()
{
  result = qword_2811C1EE8;
  if (!qword_2811C1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EE8);
  }

  return result;
}

unint64_t sub_217AD0AA4()
{
  result = qword_2811C1EF0;
  if (!qword_2811C1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1EF0);
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.issueViewContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 64);
  sub_217AD0CA8(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 68);
  sub_217AD0CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217AD0CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ReplicaAdvertisementViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent(0) + 68);
  sub_217AD0CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicaAdvertisementViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReplicaAdvertisementViewEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217AD0CA8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217AD0CA8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217AD0CA8(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217AD0CA8(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217AD0CA8(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_217AD0CA8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v18 - 8) + 104))(a1 + v17, v2, v18);
  v19 = v4[12];
  v20 = *MEMORY[0x277CEACF0];
  sub_217AD0CA8(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v21 - 8) + 104))(a1 + v19, v20, v21);
  v22 = v4[13];
  sub_217AD0CA8(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v20, v23);
  v24 = v4[14];
  sub_217AD0CA8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217AD0CA8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217AD0CA8(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4, &type metadata for IssueViewContextData);
  (*(*(v29 - 8) + 104))(a1 + v28, v20, v29);
  v30 = v4[17];
  sub_217AD0CA8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v20, v31);
}

uint64_t sub_217AD14E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ReplicaAdvertisementViewEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ReplicaAdvertisementViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ReplicaAdvertisementViewEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 32);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t ReplicaAdvertisementViewEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ReplicaAdvertisementViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ReplicaAdvertisementViewEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}

uint64_t ReplicaAdvertisementViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ReplicaAdvertisementViewEvent.Model.issueExposureContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ReplicaAdvertisementViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 56);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t ReplicaAdvertisementViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 60);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t ReplicaAdvertisementViewEvent.Model.issueViewContextData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t ReplicaAdvertisementViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReplicaAdvertisementViewEvent.Model(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t sub_217AD1A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 ReplicaAdvertisementViewEvent.Model.init(eventData:timedData:articleData:viewData:articleScienceData:userChannelContextData:orientationData:issueData:issueViewData:issueExposureContextData:userBundleSubscriptionContextData:channelData:issueViewContextData:feedData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, const void *a5@<X4>, char *a6@<X5>, __int16 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t *a13, char *a14, __n128 *a15)
{
  v20 = *a4;
  v19 = a4[1];
  v21 = *(a4 + 8);
  v42 = a6[1];
  v43 = *a6;
  v22 = *(a6 + 1);
  v44 = *a7;
  v48 = a8[1];
  v49 = *a8;
  v46 = *(a8 + 17);
  v47 = *(a8 + 16);
  v45 = a8[3];
  v50 = a10[1];
  v51 = *a10;
  v52 = a11[1];
  v53 = *a11;
  v60 = *a13;
  v59 = a13[1];
  v58 = *(a13 + 16);
  v57 = *(a13 + 17);
  v55 = a13[4];
  v56 = a13[3];
  v61 = *a14;
  v63 = *a15;
  v62 = a15[1].n128_u64[0];
  v23 = sub_217D8899C();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  v25 = v24[5];
  v26 = sub_217D889CC();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = a9 + v24[6];
  v28 = *(a3 + 112);
  *(v27 + 96) = *(a3 + 96);
  *(v27 + 112) = v28;
  *(v27 + 127) = *(a3 + 127);
  v29 = *(a3 + 48);
  *(v27 + 32) = *(a3 + 32);
  *(v27 + 48) = v29;
  v30 = *(a3 + 80);
  *(v27 + 64) = *(a3 + 64);
  *(v27 + 80) = v30;
  v31 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v31;
  v32 = a9 + v24[7];
  *v32 = v20;
  *(v32 + 8) = v19;
  *(v32 + 16) = v21;
  memcpy((a9 + v24[8]), a5, 0x111uLL);
  v33 = a9 + v24[9];
  *v33 = v43;
  *(v33 + 1) = v42;
  *(v33 + 2) = v22;
  *(a9 + v24[10]) = v44;
  v34 = a9 + v24[11];
  *v34 = v49;
  *(v34 + 8) = v48;
  *(v34 + 16) = v47;
  *(v34 + 17) = v46;
  *(v34 + 24) = v45;
  v35 = (a9 + v24[12]);
  *v35 = v51;
  v35[1] = v50;
  v36 = (a9 + v24[13]);
  *v36 = v53;
  v36[1] = v52;
  v37 = a9 + v24[14];
  v38 = *(a12 + 16);
  *v37 = *a12;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(a12 + 32);
  *(v37 + 48) = *(a12 + 48);
  v39 = a9 + v24[15];
  *v39 = v60;
  *(v39 + 8) = v59;
  *(v39 + 16) = v58;
  *(v39 + 17) = v57;
  *(v39 + 24) = v56;
  *(v39 + 32) = v55;
  *(a9 + v24[16]) = v61;
  v40 = (a9 + v24[17]);
  result = v63;
  *v40 = v63;
  v40[1].n128_u64[0] = v62;
  return result;
}

unint64_t sub_217AD1D18(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x44656C6369747261;
      break;
    case 3:
      result = 0x6174614477656976;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x7461746E6569726FLL;
      break;
    case 7:
      result = 0x7461446575737369;
      break;
    case 8:
      result = 0x6569566575737369;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x446C656E6E616863;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6174614464656566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217AD1ED0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217AD45D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217AD1F04(uint64_t a1)
{
  v2 = sub_217AD2810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217AD1F40(uint64_t a1)
{
  v2 = sub_217AD2810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReplicaAdvertisementViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217AD34F8(0, &qword_27CB9EAF0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AD2810();
  sub_217D89E7C();
  v76[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
    v98[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v99 = v10;
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 96);
    v13 = *(v11 + 64);
    v95 = *(v11 + 80);
    v96 = v12;
    v14 = *(v11 + 96);
    *v97 = *(v11 + 112);
    v15 = *(v11 + 16);
    v16 = *(v11 + 48);
    v92 = *(v11 + 32);
    v93 = v16;
    v17 = *(v11 + 48);
    v94 = *(v11 + 64);
    v18 = *(v11 + 16);
    v91[0] = *v11;
    v91[1] = v18;
    v88 = v95;
    v89 = v14;
    v90[0] = *(v11 + 112);
    v85 = v92;
    v86 = v17;
    v87 = v13;
    *&v97[15] = *(v11 + 127);
    *(v90 + 15) = *(v11 + 127);
    v83 = v91[0];
    v84 = v15;
    v82 = 2;
    sub_217AD1630(v91, v76);
    sub_217ACF52C();
    sub_217D89CAC();
    v80[5] = v88;
    v80[6] = v89;
    *v81 = v90[0];
    *&v81[15] = *(v90 + 15);
    v80[2] = v85;
    v80[3] = v86;
    v80[4] = v87;
    v80[0] = v83;
    v80[1] = v84;
    sub_217AD2864(v80);
    v19 = v99;
    v20 = v99[7];
    v53 = v3;
    v21 = (v3 + v20);
    v22 = *v21;
    v23 = v21[1];
    LOWORD(v21) = *(v21 + 8);
    v77 = v22;
    v78 = v23;
    v79 = v21;
    v76[279] = 3;
    sub_217A5E790();

    sub_217D89CAC();

    v24 = v19[8];
    v25 = v53;
    memcpy(v76, (v53 + v24), 0x111uLL);
    memcpy(v75, (v53 + v24), sizeof(v75));
    v74[279] = 4;
    sub_217AD1744(v76, v74);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v74, v75, 0x111uLL);
    sub_217AD28B8(v74);
    v26 = (v25 + v19[9]);
    v27 = *v26;
    v28 = v26[1];
    LOWORD(v26) = *(v26 + 1);
    LOBYTE(v67) = v27;
    BYTE1(v67) = v28;
    WORD1(v67) = v26;
    LOBYTE(v63) = 5;
    sub_217ACFB8C();
    sub_217D89CAC();
    LOWORD(v67) = *(v25 + v19[10]);
    LOBYTE(v63) = 6;
    sub_217A4CF88();
    sub_217D89CAC();
    v29 = v25 + v19[11];
    v30 = *(v29 + 8);
    v31 = *(v29 + 16);
    v32 = *(v29 + 17);
    v33 = *(v29 + 24);
    *&v67 = *v29;
    *(&v67 + 1) = v30;
    LOBYTE(v68) = v31;
    BYTE1(v68) = v32;
    *(&v68 + 1) = v33;
    LOBYTE(v63) = 7;
    sub_217ACFF94();

    sub_217D89CAC();

    v34 = (v25 + v19[12]);
    v35 = v34[1];
    *&v67 = *v34;
    *(&v67 + 1) = v35;
    LOBYTE(v63) = 8;
    sub_217AD01EC();

    sub_217D89C3C();

    v36 = (v25 + v19[13]);
    v37 = v36[1];
    v72 = *v36;
    v73 = v37;
    v71 = 9;
    sub_217AD0444();

    sub_217D89C3C();

    v38 = (v25 + v19[14]);
    v39 = v38[1];
    v67 = *v38;
    v68 = v39;
    v41 = *v38;
    v40 = v38[1];
    v69 = v38[2];
    v70 = *(v38 + 48);
    v63 = v41;
    v64 = v40;
    v65 = v38[2];
    v66 = *(v38 + 48);
    v62 = 10;
    sub_217ACC004(&v67, v60);
    sub_217A55B98();
    sub_217D89CAC();
    v60[0] = v63;
    v60[1] = v64;
    v60[2] = v65;
    v61 = v66;
    sub_217ACC69C(v60);
    v43 = v53 + v99[15];
    v44 = *(v43 + 8);
    v45 = *(v43 + 16);
    v46 = *(v43 + 17);
    v47 = *(v43 + 24);
    v48 = *(v43 + 32);
    v55 = *v43;
    v56 = v44;
    LOBYTE(v57) = v45;
    BYTE1(v57) = v46;
    v58 = v47;
    v59 = v48;
    v54 = 11;
    sub_217AD084C();

    sub_217D89CAC();

    LOBYTE(v55) = *(v53 + v99[16]);
    v54 = 12;
    sub_217AD0AA4();
    sub_217D89C3C();
    v49 = (v53 + v99[17]);
    v50 = v49[1];
    v51 = v49[2];
    v55 = *v49;
    v56 = v50;
    v57 = v51;
    v54 = 13;
    sub_217AD1A68(v55, v50, v51);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v55, v56, v57);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217AD2810()
{
  result = qword_27CB9EAF8;
  if (!qword_27CB9EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB9EAF8);
  }

  return result;
}

uint64_t sub_217AD290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t ReplicaAdvertisementViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_217D889CC();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v59 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217AD34F8(0, &qword_27CB9EB00, MEMORY[0x277D844C8]);
  v62 = v8;
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for ReplicaAdvertisementViewEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217AD2810();
  v63 = v10;
  v15 = v64;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v16 = v60;
  v55 = v11;
  v64 = v13;
  LOBYTE(v85[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v17 = v61;
  sub_217D89BCC();
  v18 = v6;
  v19 = *(v59 + 32);
  v20 = v64;
  v61 = v18;
  v19(v64, v17);
  LOBYTE(v85[0]) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v21 = v5;
  v22 = v58;
  sub_217D89BCC();
  v54 = 0;
  v23 = v21;
  v24 = v55;
  (*(v57 + 32))(&v20[v55[5]], v23, v22);
  v76 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  v25 = &v20[v24[6]];
  v26 = *v84;
  *(v25 + 6) = v83;
  *(v25 + 7) = v26;
  *(v25 + 127) = *&v84[15];
  v27 = v80;
  *(v25 + 2) = v79;
  *(v25 + 3) = v27;
  v28 = v82;
  *(v25 + 4) = v81;
  *(v25 + 5) = v28;
  v29 = v78;
  *v25 = v77;
  *(v25 + 1) = v29;
  LOBYTE(v71) = 3;
  sub_217A5E738();
  sub_217D89BCC();
  v30 = v85[1];
  v31 = v85[2];
  v32 = &v20[v24[7]];
  *v32 = v85[0];
  *(v32 + 1) = v30;
  *(v32 + 8) = v31;
  v75 = 4;
  sub_217ACF8E0();
  sub_217D89BCC();
  memcpy(&v20[v24[8]], v85, 0x111uLL);
  LOBYTE(v66) = 5;
  sub_217ACFB38();
  sub_217D89BCC();
  v33 = BYTE1(v71);
  v34 = WORD1(v71);
  v35 = &v20[v24[9]];
  *v35 = v71;
  v35[1] = v33;
  *(v35 + 1) = v34;
  LOBYTE(v66) = 6;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v20[v24[10]] = v71;
  LOBYTE(v66) = 7;
  sub_217ACFF40();
  sub_217D89BCC();
  v36 = *(&v71 + 1);
  v37 = v72;
  v38 = BYTE1(v72);
  v39 = *(&v72 + 1);
  v40 = &v20[v24[11]];
  *v40 = v71;
  *(v40 + 1) = v36;
  v40[16] = v37;
  v40[17] = v38;
  *(v40 + 3) = v39;
  LOBYTE(v66) = 8;
  sub_217AD0198();
  sub_217D89B5C();
  *&v64[v55[12]] = v71;
  LOBYTE(v66) = 9;
  sub_217AD03F0();
  sub_217D89B5C();
  *&v64[v55[13]] = v71;
  v70 = 10;
  sub_217A54D08();
  sub_217D89BCC();
  v41 = &v64[v55[14]];
  v42 = v72;
  *v41 = v71;
  *(v41 + 1) = v42;
  *(v41 + 2) = v73;
  v41[48] = v74;
  v65 = 11;
  sub_217AD07F8();
  sub_217D89BCC();
  v43 = *(&v66 + 1);
  v44 = v67;
  v45 = BYTE1(v67);
  v46 = v68;
  v47 = v69;
  v48 = &v64[v55[15]];
  *v48 = v66;
  *(v48 + 1) = v43;
  v48[16] = v44;
  v48[17] = v45;
  *(v48 + 3) = v46;
  *(v48 + 4) = v47;
  v65 = 12;
  sub_217AD0A50();
  sub_217D89B5C();
  v64[v55[16]] = v66;
  v65 = 13;
  sub_217A5B978();
  sub_217D89B5C();
  (*(v16 + 8))(v63, v62);
  v49 = v67;
  v50 = v56;
  v51 = v64;
  v52 = &v64[v55[17]];
  *v52 = v66;
  *(v52 + 2) = v49;
  sub_217AD355C(v51, v50);
  __swift_destroy_boxed_opaque_existential_1(v86);
  return sub_217AD35C0(v51);
}