uint64_t sub_22022A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
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

  return (v14 + 1);
}

uint64_t sub_22022A49C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22022A5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_22026A514(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22022A698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_22026A514(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_22022A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
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

uint64_t sub_22022A854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
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

uint64_t sub_22022A910(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
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

  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618, &type metadata for AdEngagementData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_22022ABC0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  sub_22035F2B0(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
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

  sub_22035F2B0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_22035F2B0(0, &qword_27CF27FF0, sub_2202DD5C4, sub_2202DD618, &type metadata for AdEngagementData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_22035F2B0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v22 = a1 + a4[8];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_22022AE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
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

uint64_t sub_22022AF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
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

uint64_t sub_22022B04C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_42:

    return v9(v10, a2, v8);
  }

  sub_220230718(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_41:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_42;
  }

  sub_220362F1C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v12 = *(v27 - 8);
    v13 = a3[19];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  if (*(*(v28 - 8) + 84) == a2)
  {
    v8 = v28;
    v12 = *(v28 - 8);
    v13 = a3[20];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  if (*(*(v29 - 8) + 84) == a2)
  {
    v8 = v29;
    v12 = *(v29 - 8);
    v13 = a3[21];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266780, sub_2202DC188, sub_2202DC1E0, &type metadata for ReferringArticleData);
  if (*(*(v30 - 8) + 84) == a2)
  {
    v8 = v30;
    v12 = *(v30 - 8);
    v13 = a3[22];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  if (*(*(v31 - 8) + 84) == a2)
  {
    v8 = v31;
    v12 = *(v31 - 8);
    v13 = a3[23];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v34 = v33;
  v35 = *(*(v33 - 8) + 48);
  v36 = a1 + a3[24];

  return v35(v36, a2, v34);
}

uint64_t sub_22022BAC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_42:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_41:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_42;
  }

  sub_220362F1C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[19];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  if (*(*(v30 - 8) + 84) == a3)
  {
    v10 = v30;
    v14 = *(v30 - 8);
    v15 = a4[20];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  if (*(*(v31 - 8) + 84) == a3)
  {
    v10 = v31;
    v14 = *(v31 - 8);
    v15 = a4[21];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266780, sub_2202DC188, sub_2202DC1E0, &type metadata for ReferringArticleData);
  if (*(*(v32 - 8) + 84) == a3)
  {
    v10 = v32;
    v14 = *(v32 - 8);
    v15 = a4[22];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  if (*(*(v33 - 8) + 84) == a3)
  {
    v10 = v33;
    v14 = *(v33 - 8);
    v15 = a4[23];
    goto LABEL_41;
  }

  sub_220362F1C(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v36 = v35;
  v37 = *(*(v35 - 8) + 56);
  v38 = a1 + a4[24];

  return v37(v38, a2, a2, v36);
}

uint64_t sub_22022C548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
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

uint64_t sub_22022C658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
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

uint64_t sub_22022C764(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
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

  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214, &type metadata for SubscribeButtonContextData);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}

uint64_t sub_22022CC94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  sub_220368518(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
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

  sub_220368518(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  sub_220368518(0, &qword_27CF298D0, sub_2203571BC, sub_220357214, &type metadata for SubscribeButtonContextData);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v27 = a1 + a4[13];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_22022D1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
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

uint64_t sub_22022D290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
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

uint64_t sub_22022D34C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
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

  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88, &type metadata for VideoAdEngagementData);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_22022D6FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_22036BCCC(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
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

  sub_22036BCCC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_22036BCCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_22036BCCC(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_22036BCCC(0, &qword_27CF29970, sub_22030AB30, sub_22030AB88, &type metadata for VideoAdEngagementData);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_22036BCCC(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_22022DAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
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

uint64_t sub_22022DB78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
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

uint64_t NewsArticleData.articleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NewsArticleData.articleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NewsArticleData.publicationName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NewsArticleData.publicationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NewsArticleData.publishDate.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t NewsArticleData.init(articleID:publicationName:articleAccessType:publishDate:publisherArticleVersion:articleType:isVideoInFeedEligible:role:isAudio:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char a11, char *a12, char a13)
{
  v13 = *a5;
  v14 = *a10;
  v15 = *a12;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v13;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = v14;
  *(a9 + 65) = a11;
  *(a9 + 66) = v15;
  *(a9 + 67) = a13;
  return result;
}

uint64_t sub_22022DF10(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x49656C6369747261;
    v6 = 0xD000000000000011;
    if (a1 != 2)
    {
      v6 = 0x446873696C627570;
    }

    if (a1)
    {
      v5 = 0x746163696C627570;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 1701605234;
    if (a1 != 7)
    {
      v2 = 0x6F696475417369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 4)
    {
      v3 = 0x54656C6369747261;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22022E068()
{
  v1 = *v0;
  sub_220370108();
  MEMORY[0x223D79F30](v1);
  return sub_220370128();
}

uint64_t sub_22022E0DC(uint64_t a1)
{
  v2 = *v1;
  sub_220370108();
  MEMORY[0x223D79F30](v2);
  return sub_220370128();
}

uint64_t sub_22022E128@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22022F318(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22022E168(uint64_t a1)
{
  v2 = sub_22022E4F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22022E1A4(uint64_t a1)
{
  v2 = sub_22022E4F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsArticleData.encode(to:)(void *a1)
{
  sub_22022EB7C(0, &qword_281261C88, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v8;
  v19 = *(v1 + 32);
  v18 = *(v1 + 40);
  v17 = *(v1 + 48);
  v16 = *(v1 + 56);
  LODWORD(v8) = *(v1 + 64);
  v14 = *(v1 + 65);
  v15 = v8;
  LODWORD(v8) = *(v1 + 66);
  v12 = *(v1 + 67);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22022E4F4();
  sub_220370168();
  v34 = 0;
  v9 = v22;
  sub_22036FFB8();
  if (!v9)
  {
    v10 = v19;
    v33 = 1;
    sub_22036FFB8();
    v32 = v10;
    v31 = 2;
    sub_22022E548();
    sub_22036FFF8();
    v30 = 3;
    sub_22036FFA8();
    v29 = 4;
    sub_220370018();
    v28 = v15;
    v27 = 5;
    sub_22022E59C();
    sub_22036FFF8();
    v26 = 6;
    sub_22036FFC8();
    v25 = v13;
    v24 = 7;
    sub_22022E5F0();
    sub_22036FFF8();
    v23 = 8;
    sub_22036FFC8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22022E4F4()
{
  result = qword_281265570[0];
  if (!qword_281265570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281265570);
  }

  return result;
}

unint64_t sub_22022E548()
{
  result = qword_281264E58;
  if (!qword_281264E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E58);
  }

  return result;
}

unint64_t sub_22022E59C()
{
  result = qword_281266080;
  if (!qword_281266080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266080);
  }

  return result;
}

unint64_t sub_22022E5F0()
{
  result = qword_2812622E8[0];
  if (!qword_2812622E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812622E8);
  }

  return result;
}

uint64_t NewsArticleData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22022EB7C(0, &qword_281261DE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22022E4F4();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44[0]) = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v60 = a2;
  v13 = v10;
  LOBYTE(v44[0]) = 1;
  v14 = sub_22036FEE8();
  *(&v39 + 1) = v15;
  *&v39 = v14;
  LOBYTE(v40[0]) = 2;
  sub_22022EBE0();
  sub_22036FF28();
  v38 = LOBYTE(v44[0]);
  LOBYTE(v44[0]) = 3;
  v37 = sub_22036FED8();
  v58 = v16 & 1;
  LOBYTE(v44[0]) = 4;
  v36 = sub_22036FF48();
  LOBYTE(v40[0]) = 5;
  sub_22022EC34();
  sub_22036FF28();
  v17 = LOBYTE(v44[0]);
  LOBYTE(v44[0]) = 6;
  v18 = sub_22036FEF8();
  v34 = v17;
  v35 = v18;
  LOBYTE(v40[0]) = 7;
  sub_22022EC88();
  sub_22036FF28();
  v33 = LOBYTE(v44[0]);
  v56 = 8;
  v19 = sub_22036FEF8();
  v35 &= 1u;
  LOBYTE(v17) = v35;
  (*(v7 + 8))(v9, v6);
  v32 = v19 & 1;
  *&v40[0] = v13;
  *(&v40[0] + 1) = v12;
  v40[1] = v39;
  v20 = v38;
  LOBYTE(v41) = v38;
  *(&v41 + 1) = v59[0];
  DWORD1(v41) = *(v59 + 3);
  v21 = v37;
  *(&v41 + 1) = v37;
  v31 = v58;
  LOBYTE(v42) = v58;
  *(&v42 + 1) = *v57;
  DWORD1(v42) = *&v57[3];
  v22 = v36;
  *(&v42 + 1) = v36;
  v23 = v34;
  LOBYTE(v43) = v34;
  BYTE1(v43) = v17;
  LOBYTE(v17) = v33;
  BYTE2(v43) = v33;
  HIBYTE(v43) = v32;
  v24 = v40[0];
  v25 = v39;
  v26 = v41;
  v27 = v42;
  v28 = v60;
  *(v60 + 64) = v43;
  v28[2] = v26;
  v28[3] = v27;
  *v28 = v24;
  v28[1] = v25;
  sub_22022ECDC(v40, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44[0] = v13;
  v44[1] = v12;
  v45 = v39;
  v46 = v20;
  *v47 = v59[0];
  *&v47[3] = *(v59 + 3);
  v48 = v21;
  v49 = v31;
  *v50 = *v57;
  *&v50[3] = *&v57[3];
  v51 = v22;
  v52 = v23;
  v53 = v35;
  v54 = v17;
  v55 = v32;
  return sub_22022ED14(v44);
}

void sub_22022EB7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22022E4F4();
    v7 = a3(a1, &type metadata for NewsArticleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22022EBE0()
{
  result = qword_281264E48;
  if (!qword_281264E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E48);
  }

  return result;
}

unint64_t sub_22022EC34()
{
  result = qword_281266070;
  if (!qword_281266070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266070);
  }

  return result;
}

unint64_t sub_22022EC88()
{
  result = qword_2812622D8;
  if (!qword_2812622D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622D8);
  }

  return result;
}

unint64_t sub_22022ED48()
{
  result = qword_281265540;
  if (!qword_281265540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265540);
  }

  return result;
}

unint64_t sub_22022EDA0()
{
  result = qword_281265548;
  if (!qword_281265548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265548);
  }

  return result;
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22022EE7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
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

uint64_t sub_22022EEC4(uint64_t result, int a2, int a3)
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
      *(result + 68) = 1;
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

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22022EF58()
{
  result = qword_27CF25D18;
  if (!qword_27CF25D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25D18);
  }

  return result;
}

uint64_t sub_22022EFB4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x223D799E0](a1, &v6);
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

uint64_t sub_22022F008(uint64_t a1, uint64_t a2)
{
  v3 = sub_22036FBD8();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_22022F060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22036FBE8();
  *a1 = result;
  return result;
}

void *sub_22022F088@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22022F098(uint64_t a1)
{
  sub_22022F1A0(&qword_27CF25D38, &unk_220370E88);
  sub_22022F1A0(&unk_27CF25D40, &unk_220370E28);
  return sub_22036FE68();
}

uint64_t sub_22022F1A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIBackgroundTaskIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22022F26C()
{
  result = qword_281265558;
  if (!qword_281265558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265558);
  }

  return result;
}

unint64_t sub_22022F2C4()
{
  result = qword_281265560;
  if (!qword_281265560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265560);
  }

  return result;
}

uint64_t sub_22022F318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746163696C627570 && a2 == 0xEF656D614E6E6F69 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390080 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002203900A0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54656C6369747261 && a2 == 0xEB00000000657079 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203900C0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F696475417369 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t getEnumTagSinglePayload for PlaybackData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackData(uint64_t result, int a2, int a3)
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

StocksAnalytics::MediaType_optional __swiftcall MediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7972656C6C6167;
  v4 = 0x6F69647561;
  if (v1 != 4)
  {
    v4 = 7364973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F65646976;
  if (v1 != 1)
  {
    v5 = 0x6567616D69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_22022F780()
{
  result = qword_27CF25E10;
  if (!qword_27CF25E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25E10);
  }

  return result;
}

uint64_t sub_22022F7DC(uint64_t a1)
{
  sub_22036FB08();
}

void sub_22022F8CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x7972656C6C6167;
  v7 = 0xE500000000000000;
  v8 = 0x6F69647561;
  if (v2 != 4)
  {
    v8 = 7364973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6F65646976;
  if (v2 != 1)
  {
    v9 = 0x6567616D69;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22022FB78()
{
  result = qword_281261FD0;
  if (!qword_281261FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FD0);
  }

  return result;
}

StocksAnalytics::ArticleType_optional __swiftcall ArticleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticleType.rawValue.getter()
{
  v1 = 0x647261646E617473;
  if (*v0 != 1)
  {
    v1 = 0x6C65527373657270;
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

uint64_t sub_22022FC94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x647261646E617473;
  v4 = 0xEB00000000464E41;
  if (v2 != 1)
  {
    v3 = 0x6C65527373657270;
    v4 = 0xEC00000065736165;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x647261646E617473;
  v8 = 0xEB00000000464E41;
  if (*a2 != 1)
  {
    v7 = 0x6C65527373657270;
    v8 = 0xEC00000065736165;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_22022FDBC()
{
  result = qword_27CF25E18;
  if (!qword_27CF25E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25E18);
  }

  return result;
}

uint64_t sub_22022FE10()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22022FEC4(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22022FF64(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220230020(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000464E41;
  v5 = 0x647261646E617473;
  if (v2 != 1)
  {
    v5 = 0x6C65527373657270;
    v4 = 0xEC00000065736165;
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

uint64_t getEnumTagSinglePayload for ArticleAccessType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArticleAccessType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220230290()
{
  result = qword_281266078;
  if (!qword_281266078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266078);
  }

  return result;
}

uint64_t sub_220230374(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_220230438()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF25E50);
  __swift_project_value_buffer(v0, qword_27CF25E50);
  return sub_22036F108();
}

uint64_t sub_2202304BC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
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

void sub_220230578(uint64_t a1)
{
  if (!qword_281266700)
  {
    sub_22036F388();
    v1 = MEMORY[0x277CEAEB0];
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    sub_2202307E4(&qword_2812666A8, v1, MEMORY[0x277CEAEB8]);
    v2 = sub_22036EE38();
    if (!v3)
    {
      atomic_store(v2, &qword_281266700);
    }
  }
}

uint64_t SymbolDetailsViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void sub_220230718(uint64_t a1)
{
  if (!qword_2812666F8)
  {
    sub_22036F3C8();
    v1 = MEMORY[0x277CEAED0];
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    sub_2202307E4(&qword_281266690, v1, MEMORY[0x277CEAED8]);
    v2 = sub_22036EE38();
    if (!v3)
    {
      atomic_store(v2, &qword_2812666F8);
    }
  }
}

uint64_t sub_2202307E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SymbolDetailsViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolDetailsViewEvent.symbolPriceChangeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 24);
  sub_220231004(0, &qword_27CF25E68, sub_2202309A4, sub_2202309F8, &type metadata for SymbolPriceChangeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_2202309A4()
{
  result = qword_2812638A0;
  if (!qword_2812638A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812638A0);
  }

  return result;
}

unint64_t sub_2202309F8()
{
  result = qword_2812638A8[0];
  if (!qword_2812638A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812638A8);
  }

  return result;
}

uint64_t SymbolDetailsViewEvent.symbolPriceChangeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 24);
  sub_220231004(0, &qword_27CF25E68, sub_2202309A4, sub_2202309F8, &type metadata for SymbolPriceChangeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolDetailsViewEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 28);
  sub_220231004(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220230BFC()
{
  result = qword_2812660E8;
  if (!qword_2812660E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660E8);
  }

  return result;
}

unint64_t sub_220230C50()
{
  result = qword_2812660F0;
  if (!qword_2812660F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660F0);
  }

  return result;
}

uint64_t SymbolDetailsViewEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 28);
  sub_220231004(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolDetailsViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 32);
  sub_220231004(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolDetailsViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 32);
  sub_220231004(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolDetailsViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 36);
  sub_220231004(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220231004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220231080()
{
  result = qword_281265DE0;
  if (!qword_281265DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DE0);
  }

  return result;
}

unint64_t sub_2202310D4()
{
  result = qword_281265DE8;
  if (!qword_281265DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DE8);
  }

  return result;
}

uint64_t SymbolDetailsViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolDetailsViewEvent(0) + 36);
  sub_220231004(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolDetailsViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SymbolDetailsViewEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220231004(0, &qword_27CF25E68, sub_2202309A4, sub_2202309F8, &type metadata for SymbolPriceChangeData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_220231004(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_220231004(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_220231004(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t sub_2202314E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_220231580@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SymbolDetailsViewEvent.Model.symbolPriceChangeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SymbolDetailsViewEvent.Model(0) + 24);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
}

uint64_t SymbolDetailsViewEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SymbolDetailsViewEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t SymbolDetailsViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SymbolDetailsViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SymbolDetailsViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SymbolDetailsViewEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SymbolDetailsViewEvent.Model.init(eventData:timedData:symbolPriceChangeData:symbolData:orientationData:viewEndData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, __int16 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v14 = a4[1];
  v25 = *a4;
  v15 = *(a4 + 16);
  v16 = a4[3];
  v17 = a4[4];
  v26 = *a5;
  v27 = *a6;
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a7, a1, v18);
  v19 = type metadata accessor for SymbolDetailsViewEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F3C8();
  result = (*(*(v21 - 8) + 32))(a7 + v20, a2, v21);
  v23 = (a7 + v19[6]);
  *v23 = v10;
  v23[1] = v11;
  v23[2] = v12;
  v23[3] = v13;
  v24 = a7 + v19[7];
  *v24 = v25;
  *(v24 + 8) = v14;
  *(v24 + 16) = v15;
  *(v24 + 24) = v16;
  *(v24 + 32) = v17;
  *(a7 + v19[8]) = v26;
  *(a7 + v19[9]) = v27;
  return result;
}

uint64_t sub_220231884()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x61446C6F626D7973;
  v4 = 0x7461746E6569726FLL;
  if (v1 != 4)
  {
    v4 = 0x44646E4577656976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22023195C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220232D8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220231990(uint64_t a1)
{
  v2 = sub_220231DAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202319CC(uint64_t a1)
{
  v2 = sub_220231DAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolDetailsViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22023244C(0, &qword_27CF25E70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220231DAC();
  sub_220370168();
  LOBYTE(v20) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SymbolDetailsViewEvent.Model(0);
    LOBYTE(v20) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = (v3 + v10[6]);
    v12 = *(v11 + 2);
    v13 = *(v11 + 3);
    v20 = *v11;
    v21 = v12;
    v22 = v13;
    v24 = 2;
    sub_2202309F8();

    sub_22036FFF8();

    v14 = v3 + v10[7];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    *&v20 = *v14;
    *(&v20 + 1) = v15;
    LOBYTE(v21) = v16;
    v22 = v17;
    v23 = v18;
    v24 = 3;
    sub_220230C50();

    sub_22036FFF8();

    LOWORD(v20) = *(v3 + v10[8]);
    v24 = 4;
    sub_2201F8860();
    sub_22036FFF8();
    LOBYTE(v20) = *(v3 + v10[9]);
    v24 = 5;
    sub_2202310D4();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220231DAC()
{
  result = qword_27CF25E78;
  if (!qword_27CF25E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25E78);
  }

  return result;
}

uint64_t SymbolDetailsViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_22036F3C8();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22023244C(0, &qword_27CF25E80, MEMORY[0x277D844C8]);
  v39 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for SymbolDetailsViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220231DAC();
  v38 = v9;
  v13 = v40;
  sub_220370148();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v31 = v10;
  v40 = v12;
  v16 = v34;
  v15 = v35;
  v17 = v36;
  LOBYTE(v41) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  v18 = v5;
  v19 = v40;
  (*(v15 + 32))(v40, v37, v18);
  LOBYTE(v41) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  v20 = v14;
  v21 = v31;
  (*(v33 + 32))(v19 + v31[5], v20, v17);
  v45 = 2;
  sub_2202309A4();
  v37 = 0;
  sub_22036FF28();
  v22 = v42;
  v23 = v43;
  v24 = v19 + v21[6];
  *v24 = v41;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v45 = 3;
  sub_220230BFC();
  sub_22036FF28();
  v25 = *(&v41 + 1);
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v19 + v21[7];
  *v29 = v41;
  *(v29 + 8) = v25;
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  *(v29 + 32) = v28;
  v45 = 4;
  sub_2201F8808();
  sub_22036FF28();
  *(v19 + v21[8]) = v41;
  v45 = 5;
  sub_220231080();
  sub_22036FF28();
  (*(v16 + 8))(v38, v39);
  *(v19 + v21[9]) = v41;
  sub_2202324B0(v19, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220232514(v19);
}

void sub_22023244C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220231DAC();
    v7 = a3(a1, &type metadata for SymbolDetailsViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202324B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolDetailsViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220232514(uint64_t a1)
{
  v2 = type metadata accessor for SymbolDetailsViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22023264C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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

uint64_t sub_220232710@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220231004(0, &qword_27CF25E68, sub_2202309A4, sub_2202309F8, &type metadata for SymbolPriceChangeData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220231004(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_220231004(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_220231004(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_2202329D8(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220231004(319, &qword_27CF25E68, sub_2202309A4, sub_2202309F8, &type metadata for SymbolPriceChangeData);
      if (v3 <= 0x3F)
      {
        sub_220231004(319, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
        if (v4 <= 0x3F)
        {
          sub_220231004(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
          if (v5 <= 0x3F)
          {
            sub_220231004(319, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220232BC4(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    result = sub_22036F3C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_220232C88()
{
  result = qword_27CF25EA8;
  if (!qword_27CF25EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25EA8);
  }

  return result;
}

unint64_t sub_220232CE0()
{
  result = qword_27CF25EB0;
  if (!qword_27CF25EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25EB0);
  }

  return result;
}

unint64_t sub_220232D38()
{
  result = qword_27CF25EB8;
  if (!qword_27CF25EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25EB8);
  }

  return result;
}

uint64_t sub_220232D8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203901B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t SessionData.languageCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SessionData.languageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionData.countryCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SessionData.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SessionData.productType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SessionData.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SessionData.userSegmentationTreatmentIDs.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t SessionData.userSegmentationSegmentSetIDs.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t SessionData.isStoreDemoUser.getter()
{
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  sub_22036F188();
  return v1;
}

void *sub_220233308@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  result = sub_22036F188();
  *a1 = v3;
  return result;
}

uint64_t sub_220233388(char *a1)
{
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  return sub_22036F198();
}

uint64_t SessionData.isStoreDemoUser.setter(char a1)
{
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  return sub_22036F198();
}

uint64_t (*SessionData.isStoreDemoUser.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  *(v3 + 32) = sub_22036F178();
  return sub_220233524;
}

uint64_t SessionData.isPersonalizedAdsEnabled.getter()
{
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  sub_22036F188();
  return v1;
}

void *sub_220233594@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  result = sub_22036F188();
  *a1 = v3;
  return result;
}

uint64_t sub_220233614(char *a1)
{
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  return sub_22036F198();
}

uint64_t SessionData.isPersonalizedAdsEnabled.setter(char a1)
{
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  return sub_22036F198();
}

uint64_t (*SessionData.isPersonalizedAdsEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SessionData(0);
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  *(v3 + 32) = sub_22036F178();
  return sub_220234854;
}

void sub_2202337B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t SessionData.appIntentType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SessionData(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t SessionData.appIntentType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SessionData(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t SessionData.init(utcOffset:languageCode:countryCode:iCloudAccountState:startMethod:productType:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:isStoreDemoUser:isPersonalizedAdsEnabled:appIntentType:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, char a13, char *a14)
{
  v17 = *a6;
  v18 = *a7;
  v27 = *a14;
  v19 = type metadata accessor for SessionData(0);
  v20 = MEMORY[0x277D839B0];
  sub_22036F168();
  sub_22036F168();
  v21 = *(v19 + 56);
  *(a9 + v21) = 5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v17;
  *(a9 + 41) = v18;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  sub_220200C1C(0, &qword_2812666C8, v20, MEMORY[0x277CEAE00]);
  sub_22036F198();
  result = sub_22036F198();
  *(a9 + v21) = v27;
  return result;
}

uint64_t sub_220233A24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202344B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220233A58(uint64_t a1)
{
  v2 = sub_220204F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220233A94(uint64_t a1)
{
  v2 = sub_220204F10();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_220233AD0()
{
  result = qword_281265CF8;
  if (!qword_281265CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265CF8);
  }

  return result;
}

uint64_t SessionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
  v54 = v3;
  v52 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  sub_220204A84(0, &qword_281261E08, MEMORY[0x277D844C8]);
  v49 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for SessionData(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v14[14];
  LOBYTE(v57) = 2;
  v53 = v17;
  sub_22036F168();
  v18 = v14[15];
  LOBYTE(v57) = 2;
  v51 = v18;
  sub_22036F168();
  v19 = v14[16];
  v55 = v16;
  v16[v19] = 5;
  v20 = v19;
  v21 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_220204F10();
  v22 = v56;
  sub_220370148();
  if (v22)
  {
    v56 = v22;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_4:
    v32 = v55;
    goto LABEL_5;
  }

  v46 = v6;
  v47 = v8;
  v23 = v10;
  LOBYTE(v57) = 0;
  v24 = v49;
  v25 = sub_22036FF38();
  v32 = v55;
  *v55 = v25;
  LOBYTE(v57) = 1;
  *(v32 + 1) = sub_22036FE98();
  *(v32 + 2) = v33;
  LOBYTE(v57) = 2;
  v34 = sub_22036FE98();
  v56 = 0;
  *(v32 + 3) = v34;
  *(v32 + 4) = v35;
  v58 = 3;
  sub_220234310();
  v36 = v56;
  sub_22036FF28();
  v56 = v36;
  if (v36)
  {
    goto LABEL_13;
  }

  *(v32 + 40) = v57;
  v58 = 4;
  sub_220234364();
  v37 = v56;
  sub_22036FF28();
  if (v37)
  {
    v56 = v37;
LABEL_13:
    (*(v23 + 8))(v12, v24);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_5;
  }

  *(v32 + 41) = v57;
  LOBYTE(v57) = 5;
  v38 = sub_22036FEE8();
  v56 = 0;
  *(v32 + 6) = v38;
  *(v32 + 7) = v39;
  sub_220200C1C(0, &qword_281261EA8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
  v58 = 6;
  sub_2202056E8(&qword_281261E98, MEMORY[0x277D84A58], MEMORY[0x277D83978]);
  v40 = v56;
  sub_22036FF28();
  v56 = v40;
  if (v40)
  {
    (*(v23 + 8))(v12, v24);
    v27 = 0;
    v28 = 0;
    v26 = 1;
    goto LABEL_5;
  }

  *(v32 + 8) = v57;
  sub_220200C1C(0, &qword_281261EC0, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
  v58 = 7;
  sub_2202057CC(&qword_281261EB0, MEMORY[0x277D849D8], MEMORY[0x277D83978]);
  v41 = v56;
  sub_22036FF28();
  if (v41)
  {
    v56 = v41;
    (*(v23 + 8))(v12, v24);
    v28 = 0;
    v26 = 1;
    v27 = 1;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v50);

    if (v26)
    {

      if (!v27)
      {
LABEL_7:
        if (!v28)
        {
LABEL_9:
          v29 = *(v52 + 8);
          v30 = v54;
          v29(v32 + v53, v54);
          return (v29)(v32 + v51, v30);
        }

LABEL_8:

        goto LABEL_9;
      }
    }

    else if (!v27)
    {
      goto LABEL_7;
    }

    if (!v28)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v32 + 9) = v57;
  LOBYTE(v57) = 8;
  sub_22036FE88();
  v56 = 0;
  v42 = *(v52 + 40);
  v42(v32 + v53, v47, v54);
  LOBYTE(v57) = 9;
  v43 = v56;
  sub_22036FE88();
  v56 = v43;
  if (v43 || (v42(v55 + v51, v46, v54), v58 = 10, sub_2202343B8(), v44 = v56, sub_22036FEB8(), (v56 = v44) != 0))
  {
    (*(v23 + 8))(v12, v49);
    v26 = 1;
    v27 = 1;
    v28 = 1;
    goto LABEL_4;
  }

  (*(v23 + 8))(v12, v49);
  v45 = v55;
  *(v55 + v20) = v57;
  sub_220202E28(v45, v48);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_220202F1C(v45);
}

unint64_t sub_220234310()
{
  result = qword_281264938;
  if (!qword_281264938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264938);
  }

  return result;
}

unint64_t sub_220234364()
{
  result = qword_281265E10;
  if (!qword_281265E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265E10);
  }

  return result;
}

unint64_t sub_2202343B8()
{
  result = qword_281265CF0;
  if (!qword_281265CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265CF0);
  }

  return result;
}

unint64_t sub_220234460()
{
  result = qword_27CF25EC0;
  if (!qword_27CF25EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25EC0);
  }

  return result;
}

uint64_t sub_2202344B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657366664F637475 && a2 == 0xE900000000000074;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002203901D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74654D7472617473 && a2 == 0xEB00000000646F68 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002203901F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220390210 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4465726F74537369 && a2 == 0xEF726573556F6D65 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220390230 == a2 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E65746E49707061 && a2 == 0xED00006570795474)
  {

    return 10;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_220234858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2202348E0(a3, v7);
  v6[2] = v7[2];
  v6[3] = v7[3];
  v6[4] = v7[4];
  v6[0] = v7[0];
  v6[1] = v7[1];
  v4 = sub_22036EF08();
  sub_22023501C(v6, a1, v4);

  return sub_22023538C(v7);
}

uint64_t sub_2202348E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v86 = a2;
  v3 = sub_22036F758();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x28223BE20](v3);
  v88 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036E508();
  v6 = *(v5 - 8);
  v94 = v5;
  v95 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v92 = &v73 - v9;
  v10 = sub_22036F578();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v73 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - v18;
  v20 = sub_22036F5A8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v81 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v79 = &v73 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v73 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v73 - v32;
  sub_2201FB1F4(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v93 = a1;
  sub_22036F678();
  sub_22036F598();
  v34 = *(v21 + 8);
  v76 = v20;
  v91 = v34;
  v34(v33, v20);
  v35 = sub_22036F588();
  v37 = v36;
  v38 = *(v11 + 8);
  v87 = v10;
  v85 = v11 + 8;
  v78 = v38;
  v38(v19, v10);
  if (v37)
  {
    if (v35 == 0x746567646977 && v37 == 0xE600000000000000)
    {

LABEL_6:
      v77 = 0x80000002203902C0;
      v73 = 0xD000000000000017;
      goto LABEL_8;
    }

    v39 = sub_220370048();

    if (v39)
    {
      goto LABEL_6;
    }
  }

  v73 = 0;
  v77 = 0xE000000000000000;
LABEL_8:
  sub_22036F678();
  v40 = v82;
  sub_22036F568();
  v41 = v76;
  v42 = v91;
  v91(v31, v76);
  sub_22036E4C8();
  v43 = *(v95 + 8);
  v95 += 8;
  v82 = v43;
  (v43)(v40, v94);
  sub_22036F678();
  v44 = v80;
  sub_22036F598();
  v42(v28, v41);
  v75 = sub_22036F588();
  v74 = v45;
  v46 = v44;
  v47 = v87;
  v48 = v78;
  v78(v46, v87);
  v49 = v79;
  sub_22036F678();
  v50 = v83;
  sub_22036F598();
  v51 = v91;
  v91(v49, v41);
  v52 = sub_22036F588();
  v79 = v53;
  v80 = v52;
  v48(v50, v47);
  v54 = v81;
  sub_22036F678();
  v55 = v84;
  sub_22036F598();
  v51(v54, v41);
  v56 = sub_22036F588();
  v58 = v57;
  v48(v55, v47);
  v59 = v88;
  sub_22036F668();
  v60 = sub_22036F748();
  v62 = v61;
  (*(v89 + 8))(v59, v90);
  if (v62)
  {

    v63 = v60;
    v64 = v62;
  }

  else
  {
    v64 = v77;
    v63 = v73;
  }

  v65 = v92;
  v66 = sub_22036E4D8();
  v68 = v67;
  result = (v82)(v65, v94);
  v70 = v86;
  v71 = v74;
  *v86 = v75;
  v70[1] = v71;
  v72 = v79;
  v70[2] = v80;
  v70[3] = v72;
  v70[4] = v56;
  v70[5] = v58;
  v70[6] = v63;
  v70[7] = v64;
  v70[8] = v66;
  v70[9] = v68;
  return result;
}

uint64_t sub_22023501C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v22[3] = a3;
  v25 = a2;
  sub_2202353E0(0);
  v26 = v4;
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v7 = a1[3];
  v35 = a1[2];
  v36 = v7;
  v8 = a1[3];
  v37 = a1[4];
  v9 = a1[1];
  v33 = *a1;
  v34 = v9;
  v30 = v35;
  v31 = v8;
  v32 = a1[4];
  v28 = v33;
  v29 = v6;
  sub_2201FB1F4(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v22[2] = v10;
  v11 = sub_22036EE48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220371600;
  v16 = *MEMORY[0x277CEAD10];
  v17 = *(v12 + 104);
  v17(v15 + v14, v16, v11);
  v22[1] = "isPersonalizedAdsEnabled";
  sub_22023543C();
  sub_22036F328();

  v30 = v35;
  v31 = v36;
  v32 = v37;
  v28 = v33;
  v29 = v34;
  sub_220235490(&v33, v27);
  v18 = v23;
  sub_22036ECD8();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_220371610;
  v20 = v19 + v14;
  v17(v19 + v14, v16, v11);
  v17(v20 + v13, *MEMORY[0x277CEAD18], v11);
  sub_22036F028();

  return (*(v24 + 8))(v18, v26);
}

void sub_2202353E0(uint64_t a1)
{
  if (!qword_2812668F8)
  {
    sub_22023543C();
    v1 = sub_22036ECE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2812668F8);
    }
  }
}

unint64_t sub_22023543C()
{
  result = qword_281265D20;
  if (!qword_281265D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D20);
  }

  return result;
}

uint64_t sub_2202354F4()
{
  v0 = sub_22036F868();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = sub_22023574C;
  v3[1] = 0;
  v4 = *MEMORY[0x277D6D278];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_22036F888();
  v6 = *(v1 + 8);
  v6(v3, v0);
  *v3 = sub_220235758;
  v3[1] = 0;
  v5(v3, v4, v0);
  sub_22036F888();
  v6(v3, v0);
  *v3 = sub_220235764;
  v3[1] = 0;
  v5(v3, v4, v0);
  sub_22036F888();
  v6(v3, v0);
  *v3 = sub_2202357D0;
  v3[1] = 0;
  v5(v3, v4, v0);
  sub_22036F888();
  return (v6)(v3, v0);
}

void sub_220235770(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D6D028]) init];
  [v2 *a1];
}

uint64_t Tracker.realtimeSubmit<A>(_:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22036F2E8();
  sub_22036F348();

  return MEMORY[0x28213D6D0](0x656D69746C616572, 0xE800000000000000);
}

uint64_t AccessTracker.realtimeSubmit<A>(_:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22036ED78();
  memset(v5, 0, sizeof(v5));
  sub_22036EDC8();
  sub_220235924(v5);
  return sub_22036ED88();
}

uint64_t sub_220235924(uint64_t a1)
{
  sub_220235980();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220235980()
{
  if (!qword_281261AD8)
  {
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_281261AD8);
    }
  }
}

StocksAnalytics::EndReason_optional __swiftcall EndReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EndReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6976614E72657375;
  v4 = 0x6873617263;
  if (v1 != 3)
  {
    v4 = 0x6975516563726F66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676B636142707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_220235AF4()
{
  result = qword_27CF25EC8;
  if (!qword_27CF25EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25EC8);
  }

  return result;
}

uint64_t sub_220235B48()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220235C44(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220235D2C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220235E30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEE006E6F69746167;
  v6 = 0x6976614E72657375;
  v7 = 0xE500000000000000;
  v8 = 0x6873617263;
  if (v2 != 3)
  {
    v8 = 0x6975516563726F66;
    v7 = 0xE900000000000074;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676B636142707061;
    v3 = 0xED0000646E756F72;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_220235FA8()
{
  result = qword_281262080;
  if (!qword_281262080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262080);
  }

  return result;
}

StocksAnalytics::AudioEngagementStatus_optional __swiftcall AudioEngagementStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AudioEngagementStatus.rawValue.getter()
{
  v1 = 0x64656761676E65;
  if (*v0 != 1)
  {
    v1 = 0x6761676E45746F6ELL;
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

uint64_t sub_2202360B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656761676E65;
  if (v2 != 1)
  {
    v5 = 0x6761676E45746F6ELL;
    v4 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64656761676E65;
  if (*a2 != 1)
  {
    v8 = 0x6761676E45746F6ELL;
    v3 = 0xEA00000000006465;
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
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_2202361C4()
{
  result = qword_27CF25ED0;
  if (!qword_27CF25ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25ED0);
  }

  return result;
}

uint64_t sub_220236218()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202362C0(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220236354(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220236404(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656761676E65;
  if (v2 != 1)
  {
    v5 = 0x6761676E45746F6ELL;
    v4 = 0xEA00000000006465;
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

unint64_t sub_220236528()
{
  result = qword_27CF25ED8;
  if (!qword_27CF25ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25ED8);
  }

  return result;
}

uint64_t sub_220236644()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF25F10);
  __swift_project_value_buffer(v0, qword_27CF25F10);
  return sub_22036F108();
}

uint64_t sub_2202366E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22036F388();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngagementCompletedEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 20);
  sub_220237BA0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 20);
  sub_220237BA0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 24);
  sub_220237BA0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220236A30()
{
  result = qword_281266048;
  if (!qword_281266048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266048);
  }

  return result;
}

unint64_t sub_220236A84()
{
  result = qword_281266050;
  if (!qword_281266050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266050);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 24);
  sub_220237BA0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 28);
  sub_220237BA0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220236C88()
{
  result = qword_281262050;
  if (!qword_281262050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262050);
  }

  return result;
}

unint64_t sub_220236CDC()
{
  result = qword_281262058;
  if (!qword_281262058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262058);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 28);
  sub_220237BA0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 32);
  sub_220237BA0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 32);
  sub_220237BA0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 36);
  sub_220237BA0(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220237090()
{
  result = qword_27CF25F30;
  if (!qword_27CF25F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25F30);
  }

  return result;
}

unint64_t sub_2202370E4()
{
  result = qword_27CF25F38;
  if (!qword_27CF25F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25F38);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 36);
  sub_220237BA0(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 40);
  sub_220237BA0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementCompletedEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 40);
  sub_220237BA0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 44);
  sub_220237BA0(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220237498()
{
  result = qword_27CF25F48;
  if (!qword_27CF25F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25F48);
  }

  return result;
}

unint64_t sub_2202374EC()
{
  result = qword_27CF25F50;
  if (!qword_27CF25F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25F50);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 44);
  sub_220237BA0(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 48);
  sub_220237BA0(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_2202376F0()
{
  result = qword_281262010;
  if (!qword_281262010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262010);
  }

  return result;
}

unint64_t sub_220237744()
{
  result = qword_281262018;
  if (!qword_281262018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262018);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 48);
  sub_220237BA0(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 52);
  sub_220237BA0(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220237948()
{
  result = qword_27CF25F60;
  if (!qword_27CF25F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25F60);
  }

  return result;
}

unint64_t sub_22023799C()
{
  result = qword_27CF25F68;
  if (!qword_27CF25F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25F68);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 52);
  sub_220237BA0(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 56);
  sub_220237BA0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220237BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220237C1C()
{
  result = qword_281265978;
  if (!qword_281265978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265978);
  }

  return result;
}

unint64_t sub_220237C70()
{
  result = qword_281265980;
  if (!qword_281265980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265980);
  }

  return result;
}

uint64_t AudioEngagementCompletedEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementCompletedEvent(0) + 56);
  sub_220237BA0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementCompletedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngagementCompletedEvent(0);
  v5 = v4[5];
  sub_220237BA0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220237BA0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_220237BA0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_220237BA0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_220237BA0(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_220237BA0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_220237BA0(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_220237BA0(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_220237BA0(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_220237BA0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t AudioEngagementCompletedEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t AudioEngagementCompletedEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

void AudioEngagementCompletedEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

void sub_22023846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }
}

uint64_t AudioEngagementCompletedEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t AudioEngagementCompletedEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngagementCompletedEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngagementCompletedEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 44));
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 10) = *(v3 + 26);
  v5 = *(v9 + 10);
  *a1 = v8;
  a1[1] = v4;
  *(a1 + 26) = v5;
  return sub_2202385EC(&v8, &v7);
}

uint64_t AudioEngagementCompletedEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngagementCompletedEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngagementCompletedEvent.Model(0) + 52));
  *a1 = result;
  return result;
}

uint64_t AudioEngagementCompletedEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

__n128 AudioEngagementCompletedEvent.Model.init(eventData:newsArticleData:channelData:groupData:feedData:trackData:viewData:audioEngagementData:issueData:playbackData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, int *a11, char *a12)
{
  v39 = *a3;
  v17 = *(a3 + 2);
  v18 = *(a3 + 3);
  v19 = *(a3 + 32);
  v20 = *(a3 + 33);
  v21 = *(a4 + 5);
  v40 = *(a4 + 4);
  v42 = *a5;
  v41 = *(a5 + 2);
  v44 = *a6;
  v43 = *(a6 + 4);
  v47 = *a7;
  v46 = a7[1];
  v45 = *(a7 + 8);
  v48 = a10[1];
  v49 = *a10;
  v22 = *a11;
  v50 = *a12;
  v23 = sub_22036F388();
  v37 = a4[1];
  v38 = *a4;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  v25 = a9 + v24[5];
  v26 = *(a2 + 48);
  *(v25 + 32) = *(a2 + 32);
  *(v25 + 48) = v26;
  *(v25 + 64) = *(a2 + 64);
  v27 = *(a2 + 16);
  *v25 = *a2;
  *(v25 + 16) = v27;
  v28 = a9 + v24[6];
  *v28 = v39;
  *(v28 + 16) = v17;
  *(v28 + 24) = v18;
  *(v28 + 32) = v19;
  *(v28 + 33) = v20;
  v29 = a9 + v24[7];
  *v29 = v38;
  *(v29 + 16) = v37;
  *(v29 + 32) = v40;
  *(v29 + 40) = v21;
  v30 = a9 + v24[8];
  *v30 = v42;
  *(v30 + 16) = v41;
  v31 = a9 + v24[9];
  *v31 = v44;
  *(v31 + 4) = v43;
  v32 = a9 + v24[10];
  *v32 = v47;
  *(v32 + 8) = v46;
  *(v32 + 16) = v45;
  v33 = a9 + v24[11];
  v34 = *(a8 + 16);
  *v33 = *a8;
  *(v33 + 16) = v34;
  result = *(a8 + 26);
  *(v33 + 26) = result;
  v36 = (a9 + v24[12]);
  *v36 = v49;
  v36[1] = v48;
  *(a9 + v24[13]) = v22;
  *(a9 + v24[14]) = v50;
  return result;
}

uint64_t sub_2202388E4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x446C656E6E616863;
    v8 = 0x74614470756F7267;
    if (a1 != 3)
    {
      v8 = 0x6174614464656566;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x697472417377656ELL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7461446575737369;
    v2 = 0x6B63616279616C70;
    if (a1 != 9)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7461446B63617274;
    v4 = 0x6174614477656976;
    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_220238A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22023AA58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220238A8C(uint64_t a1)
{
  v2 = sub_220239184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220238AC8(uint64_t a1)
{
  v2 = sub_220239184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementCompletedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220239C74(0, &qword_27CF25F70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220239184();
  sub_220370168();
  v68 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = *v11;
    v64[1] = v11[1];
    v13 = v11[1];
    v14 = v11[3];
    v65 = v11[2];
    v66 = v14;
    v64[0] = *v11;
    v60 = v13;
    v61 = v65;
    v62 = v11[3];
    v67 = *(v11 + 16);
    v63 = *(v11 + 16);
    v59 = v12;
    v58 = 1;
    sub_22022ECDC(v64, v56);
    sub_22022EDA0();
    sub_22036FFF8();
    v56[1] = v60;
    v56[2] = v61;
    v56[3] = v62;
    v57 = v63;
    v56[0] = v59;
    sub_22022ED14(v56);
    v69 = v10;
    v15 = (v3 + *(v10 + 24));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = *(v15 + 32);
    LOBYTE(v15) = *(v15 + 33);
    *&v54 = v16;
    *(&v54 + 1) = v17;
    *&v55[0] = v18;
    *(&v55[0] + 1) = v19;
    LOBYTE(v55[1]) = v20;
    BYTE1(v55[1]) = v15;
    LOBYTE(v48) = 2;
    sub_220236A84();

    sub_22036FFF8();

    v21 = v69;
    v22 = (v3 + v69[7]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v27 = v22[5];
    *&v54 = *v22;
    *(&v54 + 1) = v23;
    *&v55[0] = v24;
    *(&v55[0] + 1) = v25;
    *&v55[1] = v26;
    *(&v55[1] + 1) = v27;
    LOBYTE(v48) = 3;
    sub_22023846C(v54, v23, v24, v25, v26, v27);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v54, *(&v54 + 1), *&v55[0], *(&v55[0] + 1), *&v55[1], *(&v55[1] + 1));
    v28 = (v3 + v21[8]);
    v29 = *(v28 + 2);
    v54 = *v28;
    *&v55[0] = v29;
    LOBYTE(v48) = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v30 = (v3 + v21[9]);
    v31 = *v30;
    LOBYTE(v30) = *(v30 + 4);
    LODWORD(v54) = v31;
    BYTE4(v54) = v30;
    LOBYTE(v48) = 5;
    sub_2202370E4();
    sub_22036FFF8();
    v32 = (v3 + v21[10]);
    v33 = *v32;
    v34 = v32[1];
    LOWORD(v32) = *(v32 + 8);
    v51 = v33;
    v52 = v34;
    v53 = v32;
    v50 = 6;
    sub_220202110();

    sub_22036FF88();

    v35 = (v3 + v21[11]);
    v36 = v35[1];
    v54 = *v35;
    v55[0] = v36;
    *(v55 + 10) = *(v35 + 26);
    v37 = v35[1];
    v48 = *v35;
    v49[0] = v37;
    *(v49 + 10) = *(v35 + 26);
    v47 = 7;
    sub_2202385EC(&v54, &v45);
    sub_2202374EC();
    sub_22036FFF8();
    v45 = v48;
    *v46 = v49[0];
    *&v46[10] = *(v49 + 10);
    sub_22023921C(&v45);
    v38 = (v3 + v21[12]);
    v39 = v38[1];
    v43 = *v38;
    v44 = v39;
    v42 = 8;
    sub_220237744();

    sub_22036FF88();

    LODWORD(v43) = *(v3 + v21[13]);
    v42 = 9;
    sub_22023799C();
    sub_22036FFF8();
    LOBYTE(v43) = *(v3 + v21[14]);
    v42 = 10;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220239184()
{
  result = qword_27CF25F78;
  if (!qword_27CF25F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25F78);
  }

  return result;
}

void sub_2202391D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }
}

void AudioEngagementCompletedEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_22036F388();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220239C74(0, &qword_27CF25F80, MEMORY[0x277D844C8]);
  v42 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v35 - v7;
  v9 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220239184();
  v54 = v8;
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v40;
    v13 = a1;
    v36 = v9;
    v37 = v11;
    LOBYTE(v49) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    v14 = v41;
    sub_22036FF28();
    v15 = v37;
    (*(v39 + 32))(v37, v14, v4);
    v48 = 1;
    sub_22022ED48();
    sub_22036FF28();
    v41 = 0;
    v35[1] = v4;
    v16 = v36;
    v17 = &v15[v36[5]];
    v18 = v52;
    *(v17 + 2) = v51;
    *(v17 + 3) = v18;
    *(v17 + 16) = v53;
    v19 = v50;
    *v17 = v49;
    *(v17 + 1) = v19;
    LOBYTE(v44) = 2;
    sub_220236A30();
    sub_22036FF28();
    v20 = *v47;
    v21 = v47[16];
    v22 = v47[17];
    v23 = &v15[v16[6]];
    *v23 = v46;
    *(v23 + 1) = v20;
    v23[32] = v21;
    v23[33] = v22;
    LOBYTE(v44) = 3;
    sub_220236C88();
    sub_22036FEB8();
    v24 = &v15[v16[7]];
    v25 = *v47;
    *v24 = v46;
    *(v24 + 1) = v25;
    *(v24 + 2) = *&v47[16];
    LOBYTE(v44) = 4;
    sub_2201FBCC4();
    sub_22036FEB8();
    v26 = *v47;
    v27 = &v15[v16[8]];
    *v27 = v46;
    *(v27 + 2) = v26;
    LOBYTE(v44) = 5;
    sub_220237090();
    sub_22036FF28();
    v28 = BYTE4(v46);
    v29 = &v15[v16[9]];
    *v29 = v46;
    v29[4] = v28;
    LOBYTE(v44) = 6;
    sub_2202020B8();
    sub_22036FEB8();
    v30 = *v47;
    v31 = &v15[v16[10]];
    *v31 = v46;
    *(v31 + 8) = v30;
    v45 = 7;
    sub_220237498();
    sub_22036FF28();
    v32 = &v37[v36[11]];
    v33 = *v47;
    *v32 = v46;
    *(v32 + 1) = v33;
    *(v32 + 26) = *&v47[10];
    v43 = 8;
    sub_2202376F0();
    sub_22036FEB8();
    *&v37[v36[12]] = v44;
    v43 = 9;
    sub_220237948();
    sub_22036FF28();
    *&v37[v36[13]] = v44;
    v43 = 10;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v12 + 8))(v54, v42);
    v34 = v37;
    v37[v36[14]] = v44;
    sub_220239CD8(v34, v38);
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_220239D3C(v34);
  }
}

void sub_220239C74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220239184();
    v7 = a3(a1, &type metadata for AudioEngagementCompletedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220239CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220239D3C(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngagementCompletedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220239E70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220237BA0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220237BA0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_220237BA0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_220237BA0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_220237BA0(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_220237BA0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_220237BA0(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_220237BA0(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_220237BA0(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_220237BA0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_22023A3DC(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220237BA0(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_220237BA0(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_220237BA0(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_220237BA0(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_220237BA0(319, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
            if (v6 <= 0x3F)
            {
              sub_220237BA0(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
              if (v7 <= 0x3F)
              {
                sub_220237BA0(319, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
                if (v8 <= 0x3F)
                {
                  sub_220237BA0(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                  if (v9 <= 0x3F)
                  {
                    sub_220237BA0(319, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
                    if (v10 <= 0x3F)
                    {
                      sub_220237BA0(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
                      if (v11 <= 0x3F)
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

void sub_22023A790(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF25FA8, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262008, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281265970, &type metadata for WatchlistData);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22023A8F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22036FCC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22023A954()
{
  result = qword_27CF25FB0;
  if (!qword_27CF25FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25FB0);
  }

  return result;
}

unint64_t sub_22023A9AC()
{
  result = qword_27CF25FB8;
  if (!qword_27CF25FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25FB8);
  }

  return result;
}

unint64_t sub_22023AA04()
{
  result = qword_27CF25FC0;
  if (!qword_27CF25FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25FC0);
  }

  return result;
}

uint64_t sub_22023AA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390370 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

StocksAnalytics::WatchlistType_optional __swiftcall WatchlistType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WatchlistType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_22023AE94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_220370048();
  }

  return v8 & 1;
}

unint64_t sub_22023AF3C()
{
  result = qword_27CF25FC8;
  if (!qword_27CF25FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF25FC8);
  }

  return result;
}

uint64_t sub_22023AF90()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22023B010(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22023B07C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22023B0F8@<X0>(char *a2@<X8>)
{
  v3 = sub_22036FE78();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22023B158(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22023B260()
{
  result = qword_281265960;
  if (!qword_281265960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265960);
  }

  return result;
}

uint64_t sub_22023B37C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26000);
  __swift_project_value_buffer(v0, qword_27CF26000);
  return sub_22036F108();
}

uint64_t ShareSymbolEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ShareSymbolEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSymbolEvent(0) + 20);
  sub_22023B724(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSymbolEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSymbolEvent(0) + 20);
  sub_22023B724(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSymbolEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSymbolEvent(0) + 24);
  sub_22023B724(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22023B724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22023B7A0()
{
  result = qword_281266AF0;
  if (!qword_281266AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266AF0);
  }

  return result;
}

unint64_t sub_22023B7F4()
{
  result = qword_281266AF8;
  if (!qword_281266AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266AF8);
  }

  return result;
}

uint64_t ShareSymbolEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSymbolEvent(0) + 24);
  sub_22023B724(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSymbolEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ShareSymbolEvent(0);
  v5 = *(v4 + 20);
  sub_22023B724(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_22023B724(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ShareSymbolEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShareSymbolEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t ShareSymbolEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShareSymbolEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ShareSymbolEvent.Model.init(eventData:symbolData:actionData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = a2[3];
  v10 = a2[4];
  v11 = *a3;
  v12 = sub_22036F388();
  (*(*(v12 - 8) + 32))(a4, a1, v12);
  result = type metadata accessor for ShareSymbolEvent.Model(0);
  v14 = a4 + *(result + 20);
  *v14 = v6;
  *(v14 + 8) = v7;
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v14 + 32) = v10;
  *(a4 + *(result + 24)) = v11;
  return result;
}

uint64_t sub_22023BC34()
{
  v1 = 0x61446C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x61446E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_22023BC9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22023CA5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22023BCD0(uint64_t a1)
{
  v2 = sub_22023BFB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22023BD0C(uint64_t a1)
{
  v2 = sub_22023BFB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShareSymbolEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22023C3F8(0, &qword_27CF26018, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22023BFB0();
  sub_220370168();
  LOBYTE(v18) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for ShareSymbolEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = v11[1];
    v13 = *(v11 + 16);
    v14 = v11[3];
    v15 = v11[4];
    v18 = *v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    HIBYTE(v17) = 1;
    sub_220230C50();

    sub_22036FFF8();

    LOBYTE(v18) = *(v3 + *(v10 + 24));
    HIBYTE(v17) = 2;
    sub_22023B7F4();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22023BFB0()
{
  result = qword_27CF26020;
  if (!qword_27CF26020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26020);
  }

  return result;
}

uint64_t ShareSymbolEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_22036F388();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22023C3F8(0, &qword_27CF26028, MEMORY[0x277D844C8]);
  v29 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ShareSymbolEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22023BFB0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v26;
  v12 = v27;
  v23 = v9;
  v24 = v11;
  LOBYTE(v30) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v28;
  v14 = v29;
  sub_22036FF28();
  (*(v12 + 32))(v24, v15, v4);
  v35 = 1;
  sub_220230BFC();
  sub_22036FF28();
  v16 = v31;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v20 = &v24[*(v23 + 20)];
  *v20 = v30;
  *(v20 + 1) = v16;
  v20[16] = v17;
  *(v20 + 3) = v18;
  *(v20 + 4) = v19;
  v35 = 2;
  sub_22023B7A0();
  sub_22036FF28();
  (*(v13 + 8))(v8, v14);
  v21 = v24;
  v24[*(v23 + 24)] = v30;
  sub_22023C45C(v21, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22023C4C0(v21);
}

void sub_22023C3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22023BFB0();
    v7 = a3(a1, &type metadata for ShareSymbolEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22023C45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSymbolEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22023C4C0(uint64_t a1)
{
  v2 = type metadata accessor for ShareSymbolEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22023C5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_22023B724(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_22023B724(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_22023C78C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22023B724(319, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
    if (v2 <= 0x3F)
    {
      sub_22023B724(319, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22023C8C0(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22023C958()
{
  result = qword_27CF26050;
  if (!qword_27CF26050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26050);
  }

  return result;
}

unint64_t sub_22023C9B0()
{
  result = qword_27CF26058;
  if (!qword_27CF26058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26058);
  }

  return result;
}

unint64_t sub_22023CA08()
{
  result = qword_27CF26060;
  if (!qword_27CF26060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26060);
  }

  return result;
}

uint64_t sub_22023CA5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_22023CBE0()
{
  sub_220370108();
  MEMORY[0x223D79F30](0);
  return sub_220370128();
}

uint64_t sub_22023CC4C(uint64_t a1)
{
  sub_220370108();
  MEMORY[0x223D79F30](0);
  return sub_220370128();
}

uint64_t sub_22023CCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22023CD24(uint64_t a1)
{
  v2 = sub_22023CEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22023CD60(uint64_t a1)
{
  v2 = sub_22023CEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdStateData.encode(to:)(void *a1)
{
  sub_22023D138(0, &qword_281261D10, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22023CEF8();
  sub_220370168();
  v11 = v8;
  sub_22023CF4C();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22023CEF8()
{
  result = qword_2812660A8;
  if (!qword_2812660A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660A8);
  }

  return result;
}

unint64_t sub_22023CF4C()
{
  result = qword_2812622D0;
  if (!qword_2812622D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622D0);
  }

  return result;
}

uint64_t AdStateData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22023D138(0, &qword_27CF26068, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22023CEF8();
  sub_220370148();
  if (!v2)
  {
    sub_22023D19C();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22023D138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22023CEF8();
    v7 = a3(a1, &type metadata for AdStateData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22023D19C()
{
  result = qword_27CF26070;
  if (!qword_27CF26070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26070);
  }

  return result;
}

unint64_t sub_22023D1F4()
{
  result = qword_281266088;
  if (!qword_281266088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266088);
  }

  return result;
}

unint64_t sub_22023D24C()
{
  result = qword_281266090;
  if (!qword_281266090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266090);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FeedType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22023D434()
{
  result = qword_27CF26078;
  if (!qword_27CF26078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26078);
  }

  return result;
}

unint64_t sub_22023D48C()
{
  result = qword_281266098;
  if (!qword_281266098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266098);
  }

  return result;
}

unint64_t sub_22023D4E4()
{
  result = qword_2812660A0;
  if (!qword_2812660A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660A0);
  }

  return result;
}

uint64_t sub_22023D600()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF260B0);
  __swift_project_value_buffer(v0, qword_27CF260B0);
  return sub_22036F108();
}

uint64_t EditWatchListExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EditWatchListExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EditWatchListExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EditWatchListExposureEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EditWatchListExposureEvent(0) + 24);
  sub_22023D8B0(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22023D8B0(uint64_t a1)
{
  if (!qword_281266770)
  {
    sub_22023D918();
    sub_22023D96C();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_281266770);
    }
  }
}

unint64_t sub_22023D918()
{
  result = qword_281263870;
  if (!qword_281263870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263870);
  }

  return result;
}

unint64_t sub_22023D96C()
{
  result = qword_281263878;
  if (!qword_281263878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263878);
  }

  return result;
}

uint64_t EditWatchListExposureEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EditWatchListExposureEvent(0) + 24);
  sub_22023D8B0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EditWatchListExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EditWatchListExposureEvent(0);
  v5 = *(v4 + 20);
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_22023D8B0(0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t sub_22023DBD0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EditWatchListExposureEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for EditWatchListExposureEvent.Model(0) + 24));
}

uint64_t EditWatchListExposureEvent.Model.init(eventData:timedData:watchedSymbolListData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for EditWatchListExposureEvent.Model(0);
  v10 = *(v9 + 20);
  v11 = sub_22036F3C8();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

unint64_t sub_22023DD8C()
{
  v1 = 0x74614464656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_22023DDEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22023EBA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22023DE14(uint64_t a1)
{
  v2 = sub_22023E0F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22023DE50(uint64_t a1)
{
  v2 = sub_22023E0F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditWatchListExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22023E618(0, &qword_27CF260C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22023E0F8();
  sub_220370168();
  v15 = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for EditWatchListExposureEvent.Model(0);
    v14 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v13 = *(v3 + *(v10 + 24));
    v12[15] = 2;
    sub_22023D96C();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22023E0F8()
{
  result = qword_27CF260D0;
  if (!qword_27CF260D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF260D0);
  }

  return result;
}

uint64_t EditWatchListExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_22036F3C8();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22036F388();
  v24 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22023E618(0, &qword_27CF260D8, MEMORY[0x277D844C8]);
  v29 = v8;
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for EditWatchListExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22023E0F8();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v22 = a1;
  v14 = v13;
  v16 = v25;
  v15 = v26;
  v17 = v27;
  v34 = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  (*(v24 + 32))(v14, v28, v30);
  v33 = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v15 + 32))(v14 + *(v21 + 20), v6, v17);
  v32 = 2;
  sub_22023D918();
  sub_22036FF28();
  v18 = v22;
  (*(v16 + 8))(v10, v29);
  *(v14 + *(v21 + 24)) = v31;
  sub_22023E67C(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_22023E6E0(v14);
}

void sub_22023E618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22023E0F8();
    v7 = a3(a1, &type metadata for EditWatchListExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22023E67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditWatchListExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22023E6E0(uint64_t a1)
{
  v2 = type metadata accessor for EditWatchListExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22023E814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_22023D8B0(0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_22023E93C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_22023D8B0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22023EA00(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    result = sub_22036F3C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22023EAA0()
{
  result = qword_27CF26100;
  if (!qword_27CF26100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26100);
  }

  return result;
}

unint64_t sub_22023EAF8()
{
  result = qword_27CF26108;
  if (!qword_27CF26108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26108);
  }

  return result;
}

unint64_t sub_22023EB50()
{
  result = qword_27CF26110;
  if (!qword_27CF26110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26110);
  }

  return result;
}

uint64_t sub_22023EBA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::CellularRadioAccessTechnology_optional __swiftcall CellularRadioAccessTechnology.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CellularRadioAccessTechnology.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1851881335;
  v4 = 0x67356E617777;
  if (v1 != 3)
  {
    v4 = 0x6863616552746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1768319351;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_22023EDD0()
{
  result = qword_27CF26118;
  if (!qword_27CF26118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26118);
  }

  return result;
}

uint64_t sub_22023EE24()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22023EEFC(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22023EFC0(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22023F0A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1851881335;
  v7 = 0xE600000000000000;
  v8 = 0x67356E617777;
  if (v2 != 3)
  {
    v8 = 0x6863616552746F6ELL;
    v7 = 0xEC000000656C6261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1768319351;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_22023F1F4()
{
  result = qword_281262908;
  if (!qword_281262908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262908);
  }

  return result;
}

uint64_t sub_22023F310()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26150);
  __swift_project_value_buffer(v0, qword_27CF26150);
  return sub_22036F108();
}

uint64_t UnwatchSymbolEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnwatchSymbolEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnwatchSymbolEvent(0) + 20);
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnwatchSymbolEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnwatchSymbolEvent(0) + 20);
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnwatchSymbolEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnwatchSymbolEvent(0) + 24);
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnwatchSymbolEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnwatchSymbolEvent(0) + 24);
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnwatchSymbolEvent.watchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnwatchSymbolEvent(0) + 28);
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22023F868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t UnwatchSymbolEvent.watchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnwatchSymbolEvent(0) + 28);
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnwatchSymbolEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnwatchSymbolEvent(0);
  v5 = v4[5];
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t UnwatchSymbolEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UnwatchSymbolEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t UnwatchSymbolEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for UnwatchSymbolEvent.Model(0) + 24));
}

uint64_t UnwatchSymbolEvent.Model.watchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UnwatchSymbolEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *UnwatchSymbolEvent.Model.init(eventData:symbolData:watchedSymbolListData:watchlistData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = a2[3];
  v11 = a2[4];
  v12 = *a3;
  v13 = *a4;
  v14 = sub_22036F388();
  (*(*(v14 - 8) + 32))(a5, a1, v14);
  result = type metadata accessor for UnwatchSymbolEvent.Model(0);
  v16 = a5 + result[5];
  *v16 = v7;
  *(v16 + 8) = v8;
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  *(v16 + 32) = v11;
  *(a5 + result[6]) = v12;
  *(a5 + result[7]) = v13;
  return result;
}

unint64_t sub_22023FDA0()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x73696C6863746177;
  }

  if (*v0)
  {
    v1 = 0x61446C6F626D7973;
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

uint64_t sub_22023FE34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220240D20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22023FE68(uint64_t a1)
{
  v2 = sub_2202401AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22023FEA4(uint64_t a1)
{
  v2 = sub_2202401AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnwatchSymbolEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220240678(0, &qword_27CF26168, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202401AC();
  sub_220370168();
  LOBYTE(v18) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for UnwatchSymbolEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v13 = *(v11 + 16);
    v14 = v11[3];
    v15 = v11[4];
    v18 = *v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    HIBYTE(v17) = 1;
    sub_220230C50();

    sub_22036FFF8();

    v18 = *(v3 + v10[6]);
    HIBYTE(v17) = 2;
    sub_22023D96C();

    sub_22036FFF8();

    LOBYTE(v18) = *(v3 + v10[7]);
    HIBYTE(v17) = 3;
    sub_220237C70();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202401AC()
{
  result = qword_27CF26170;
  if (!qword_27CF26170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26170);
  }

  return result;
}

uint64_t UnwatchSymbolEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_22036F388();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220240678(0, &qword_27CF26178, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for UnwatchSymbolEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202401AC();
  v29 = v9;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = a1;
  v13 = v12;
  v14 = v25;
  LOBYTE(v30) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v26;
  v16 = v27;
  sub_22036FF28();
  (*(v14 + 32))(v13, v15, v4);
  v35 = 1;
  sub_220230BFC();
  sub_22036FF28();
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  v21 = v13 + v10[5];
  *v21 = v30;
  *(v21 + 8) = v17;
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *(v21 + 32) = v20;
  v35 = 2;
  sub_22023D918();
  sub_22036FF28();
  *(v13 + v10[6]) = v30;
  v35 = 3;
  sub_220237C1C();
  sub_22036FF28();
  (*(v28 + 8))(v29, v16);
  *(v13 + v10[7]) = v30;
  sub_2202406DC(v13, v24);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_220240740(v13);
}

void sub_220240678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202401AC();
    v7 = a3(a1, &type metadata for UnwatchSymbolEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202406DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnwatchSymbolEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220240740(uint64_t a1)
{
  v2 = type metadata accessor for UnwatchSymbolEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220240874@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_220240A84(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22023F868(319, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
    if (v2 <= 0x3F)
    {
      sub_22023F868(319, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
      if (v3 <= 0x3F)
      {
        sub_22023F868(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_220240C1C()
{
  result = qword_27CF26190;
  if (!qword_27CF26190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26190);
  }

  return result;
}

unint64_t sub_220240C74()
{
  result = qword_27CF26198;
  if (!qword_27CF26198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26198);
  }

  return result;
}

unint64_t sub_220240CCC()
{
  result = qword_27CF261A0;
  if (!qword_27CF261A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF261A0);
  }

  return result;
}

uint64_t sub_220240D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73696C6863746177 && a2 == 0xED00006174614474)
  {

    return 3;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::AdJournalEntryError_optional __swiftcall AdJournalEntryError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AdJournalEntryError.rawValue.getter()
{
  v1 = 0x6F5464656C696166;
  v2 = 0x4674736575716572;
  if (*v0 != 2)
  {
    v2 = 0x726568746FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

unint64_t sub_220240FA4()
{
  result = qword_27CF261A8;
  if (!qword_27CF261A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF261A8);
  }

  return result;
}

uint64_t sub_220240FF8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202410D4(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22024119C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220241280(unint64_t *a1@<X8>)
{
  v2 = 0xEE007265646E6552;
  v3 = 0x6F5464656C696166;
  v4 = 0xED000064656C6961;
  v5 = 0x4674736575716572;
  if (*v1 != 2)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x800000022038F510;
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

unint64_t sub_2202413D8()
{
  result = qword_281264648;
  if (!qword_281264648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264648);
  }

  return result;
}

uint64_t sub_2202414F4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF261E0);
  __swift_project_value_buffer(v0, qword_27CF261E0);
  return sub_22036F108();
}

uint64_t DeleteWatchlistEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeleteWatchlistEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t DeleteWatchlistEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_22024172C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2202417BC(uint64_t a1)
{
  v2 = sub_2202419A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202417F8(uint64_t a1)
{
  v2 = sub_2202419A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeleteWatchlistEvent.Model.encode(to:)(void *a1)
{
  sub_220241C94(0, &qword_27CF261F8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202419A8();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202419A8()
{
  result = qword_27CF26200;
  if (!qword_27CF26200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26200);
  }

  return result;
}

uint64_t DeleteWatchlistEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22036F388();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220241C94(0, &qword_27CF26208, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for DeleteWatchlistEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202419A8();
  sub_220370148();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_220241D18(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220241C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202419A8();
    v7 = a3(a1, &type metadata for DeleteWatchlistEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220241D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteWatchlistEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220241D94(void *a1)
{
  sub_220241C94(0, &qword_27CF261F8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202419A8();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_220241FB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_2202421A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22024222C()
{
  result = qword_27CF26230;
  if (!qword_27CF26230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26230);
  }

  return result;
}

unint64_t sub_220242284()
{
  result = qword_27CF26238;
  if (!qword_27CF26238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26238);
  }

  return result;
}

unint64_t sub_2202422DC()
{
  result = qword_27CF26240;
  if (!qword_27CF26240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26240);
  }

  return result;
}

uint64_t sub_220242330()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_281263528);
  v1 = __swift_project_value_buffer(v0, qword_281263528);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_22024241C()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_281263500);
  v1 = __swift_project_value_buffer(v0, qword_281263500);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2202424DC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26248);
  __swift_project_value_buffer(v0, qword_27CF26248);
  return sub_22036F108();
}

uint64_t BannerAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BannerAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 24);
  sub_2202437E4(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 24);
  sub_2202437E4(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 28);
  sub_2202437E4(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 28);
  sub_2202437E4(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adStateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 32);
  sub_2202437E4(0, &qword_281266860, sub_22023D1F4, sub_22023D24C, &type metadata for AdStateData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adStateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 32);
  sub_2202437E4(0, &qword_281266860, sub_22023D1F4, sub_22023D24C, &type metadata for AdStateData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 36);
  sub_2202437E4(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220242CD4()
{
  result = qword_2812656D8;
  if (!qword_2812656D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656D8);
  }

  return result;
}

unint64_t sub_220242D28()
{
  result = qword_2812656E0;
  if (!qword_2812656E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656E0);
  }

  return result;
}

uint64_t BannerAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 36);
  sub_2202437E4(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 40);
  sub_2202437E4(0, &qword_281266888, sub_220242F2C, sub_220242F80, &type metadata for AdSizeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220242F2C()
{
  result = qword_2812661A8;
  if (!qword_2812661A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661A8);
  }

  return result;
}

unint64_t sub_220242F80()
{
  result = qword_2812661B0;
  if (!qword_2812661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661B0);
  }

  return result;
}

uint64_t BannerAdImpressionEvent.adSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 40);
  sub_2202437E4(0, &qword_281266888, sub_220242F2C, sub_220242F80, &type metadata for AdSizeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 44);
  sub_2202437E4(0, &qword_281266800, sub_220243184, sub_2202431D8, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220243184()
{
  result = qword_2812658F8;
  if (!qword_2812658F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812658F8);
  }

  return result;
}

unint64_t sub_2202431D8()
{
  result = qword_281265900;
  if (!qword_281265900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265900);
  }

  return result;
}

uint64_t BannerAdImpressionEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 44);
  sub_2202437E4(0, &qword_281266800, sub_220243184, sub_2202431D8, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 48);
  sub_2202437E4(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 48);
  sub_2202437E4(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.bannerAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 52);
  sub_2202437E4(0, &qword_281266838, sub_22024358C, sub_2202435E0, &type metadata for BannerAdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_22024358C()
{
  result = qword_281265DB8;
  if (!qword_281265DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DB8);
  }

  return result;
}

unint64_t sub_2202435E0()
{
  result = qword_281265DC0;
  if (!qword_281265DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DC0);
  }

  return result;
}

uint64_t BannerAdImpressionEvent.bannerAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 52);
  sub_2202437E4(0, &qword_281266838, sub_22024358C, sub_2202435E0, &type metadata for BannerAdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 56);
  sub_2202437E4(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202437E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220243860()
{
  result = qword_2812660B0;
  if (!qword_2812660B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660B0);
  }

  return result;
}

unint64_t sub_2202438B4()
{
  result = qword_2812660B8;
  if (!qword_2812660B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660B8);
  }

  return result;
}

uint64_t BannerAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 56);
  sub_2202437E4(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BannerAdImpressionEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202437E4(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_2202437E4(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_2202437E4(0, &qword_281266860, sub_22023D1F4, sub_22023D24C, &type metadata for AdStateData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_2202437E4(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_2202437E4(0, &qword_281266888, sub_220242F2C, sub_220242F80, &type metadata for AdSizeData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2202437E4(0, &qword_281266800, sub_220243184, sub_2202431D8, &type metadata for AdPositionData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_2202437E4(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_2202437E4(0, &qword_281266838, sub_22024358C, sub_2202435E0, &type metadata for BannerAdData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_2202437E4(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v10, v25);
}

uint64_t sub_220243F5C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t BannerAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void BannerAdImpressionEvent.Model.channelData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  sub_2202440A8(v4, v5, v6, v7);
}

void sub_2202440A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t BannerAdImpressionEvent.Model.adStateData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

double BannerAdImpressionEvent.Model.adSizeData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 40));
  *a1 = result;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t BannerAdImpressionEvent.Model.bannerAdData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

__n128 BannerAdImpressionEvent.Model.init(eventData:timedData:adUserData:channelData:adStateData:adPlacementData:adSizeData:adPositionData:adFeedData:bannerAdData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, char *a12)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = *(a4 + 32);
  v20 = *a5;
  v21 = a6[1];
  v35 = *a6;
  v37 = *a8;
  v36 = *(a8 + 4);
  v41 = *a11;
  v40 = a11[1];
  v38 = *a10;
  v39 = a11[2];
  v42 = *a12;
  v22 = sub_22036F388();
  v23 = *a7;
  v33 = *(a4 + 16);
  v34 = *a4;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v24 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v25 = v24[5];
  v26 = sub_22036F3C8();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = (a9 + v24[6]);
  *v27 = v17;
  v27[1] = v18;
  v28 = a9 + v24[7];
  result = v34;
  *v28 = v34;
  *(v28 + 16) = v33;
  *(v28 + 32) = v19;
  *(a9 + v24[8]) = v20;
  v30 = (a9 + v24[9]);
  *v30 = v35;
  v30[1] = v21;
  *(a9 + v24[10]) = v23;
  v31 = a9 + v24[11];
  *v31 = v37;
  *(v31 + 4) = v36;
  *(a9 + v24[12]) = v38;
  v32 = (a9 + v24[13]);
  *v32 = v41;
  v32[1] = v40;
  v32[2] = v39;
  *(a9 + v24[14]) = v42;
  return result;
}

uint64_t sub_220244458(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x6144726573556461;
    v8 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v8 = 0x4465746174536461;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x74614464656D6974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6144646565466461;
    v2 = 0x644172656E6E6162;
    if (a1 != 9)
    {
      v2 = 0x4470756F72476461;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D6563616C506461;
    v4 = 0x6144657A69536461;
    if (a1 != 6)
    {
      v4 = 0x697469736F506461;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_220244600@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202461C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220244628(uint64_t a1)
{
  v2 = sub_220244BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220244664(uint64_t a1)
{
  v2 = sub_220244BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202454B0(0, &qword_27CF26260, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220244BB4();
  sub_220370168();
  LOBYTE(v27) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for BannerAdImpressionEvent.Model(0);
    LOBYTE(v27) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v27 = *v11;
    v28 = v12;
    v32 = 2;
    sub_2201F9420();

    sub_22036FFF8();

    v13 = v3 + v10[7];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v27 = *v13;
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    v32 = 3;
    sub_2202440A8(v27, v14, v15, v16);
    sub_220236A84();
    sub_22036FF88();
    sub_220244C08(v27, v28, v29, v30);
    LOBYTE(v27) = *(v3 + v10[8]);
    v32 = 4;
    sub_22023D24C();
    sub_22036FFF8();
    v19 = (v3 + v10[9]);
    v20 = v19[1];
    v27 = *v19;
    v28 = v20;
    v32 = 5;
    sub_220242D28();

    sub_22036FFF8();

    v27 = *(v3 + v10[10]);
    v32 = 6;
    sub_220242F80();
    sub_22036FFF8();
    v21 = (v3 + v10[11]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 4);
    LODWORD(v27) = v22;
    BYTE4(v27) = v21;
    v32 = 7;
    sub_2202431D8();
    sub_22036FF88();
    LOBYTE(v27) = *(v3 + v10[12]);
    v32 = 8;
    sub_220202B7C();
    sub_22036FF88();
    v23 = (v3 + v10[13]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v23) = v23[2];
    LOBYTE(v27) = v24;
    BYTE1(v27) = v25;
    BYTE2(v27) = v23;
    v32 = 9;
    sub_2202435E0();
    sub_22036FFF8();
    LOBYTE(v27) = *(v3 + v10[14]);
    v32 = 10;
    sub_2202438B4();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220244BB4()
{
  result = qword_27CF26268;
  if (!qword_27CF26268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26268);
  }

  return result;
}

void sub_220244C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void BannerAdImpressionEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_22036F3C8();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202454B0(0, &qword_27CF26270, MEMORY[0x277D844C8]);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  v11 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220244BB4();
  v45 = v10;
  v14 = v46;
  sub_220370148();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v46 = v11;
    v37 = v13;
    v15 = a1;
    LOBYTE(v47) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v42;
    sub_22036FF28();
    v17 = *(v41 + 32);
    v18 = v37;
    v42 = v6;
    v17(v37, v16);
    LOBYTE(v47) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v19 = v5;
    v20 = v40;
    sub_22036FF28();
    v21 = v46;
    (*(v39 + 32))(&v18[v46[5]], v19, v20);
    v50 = 2;
    sub_2201F93C8();
    v36[1] = 0;
    sub_22036FF28();
    v36[0] = v15;
    v22 = *(&v47 + 1);
    v23 = &v18[v21[6]];
    *v23 = v47;
    *(v23 + 1) = v22;
    v50 = 3;
    sub_220236A30();
    sub_22036FEB8();
    v24 = v49;
    v25 = &v18[v21[7]];
    v26 = v48;
    *v25 = v47;
    *(v25 + 1) = v26;
    *(v25 + 16) = v24;
    v50 = 4;
    sub_22023D1F4();
    sub_22036FF28();
    v18[v21[8]] = v47;
    v50 = 5;
    sub_220242CD4();
    sub_22036FF28();
    v27 = *(&v47 + 1);
    v28 = &v18[v21[9]];
    *v28 = v47;
    *(v28 + 1) = v27;
    v50 = 6;
    sub_220242F2C();
    sub_22036FF28();
    *&v18[v21[10]] = v47;
    v50 = 7;
    sub_220243184();
    sub_22036FEB8();
    v29 = BYTE4(v47);
    v30 = &v18[v46[11]];
    *v30 = v47;
    v30[4] = v29;
    v50 = 8;
    sub_220202B10();
    sub_22036FEB8();
    v18[v46[12]] = v47;
    v50 = 9;
    sub_22024358C();
    sub_22036FF28();
    v31 = BYTE1(v47);
    v32 = BYTE2(v47);
    v33 = &v37[v46[13]];
    *v33 = v47;
    v33[1] = v31;
    v33[2] = v32;
    v50 = 10;
    sub_220243860();
    sub_22036FEB8();
    (*(v43 + 8))(v45, v44);
    v35 = v37;
    v34 = v38;
    v37[v46[14]] = v47;
    sub_220245514(v35, v34);
    __swift_destroy_boxed_opaque_existential_1(v15);
    sub_220245578(v35);
  }
}

void sub_2202454B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220244BB4();
    v7 = a3(a1, &type metadata for BannerAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220245514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220245578(uint64_t a1)
{
  v2 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202456AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202437E4(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_2202437E4(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_2202437E4(0, &qword_281266860, sub_22023D1F4, sub_22023D24C, &type metadata for AdStateData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_2202437E4(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_2202437E4(0, &qword_281266888, sub_220242F2C, sub_220242F80, &type metadata for AdSizeData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_2202437E4(0, &qword_281266800, sub_220243184, sub_2202431D8, &type metadata for AdPositionData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_2202437E4(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_2202437E4(0, &qword_281266838, sub_22024358C, sub_2202435E0, &type metadata for BannerAdData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_2202437E4(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v11, v26);
}

void sub_220245BE0(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_2202437E4(319, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
      if (v3 <= 0x3F)
      {
        sub_2202437E4(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_2202437E4(319, &qword_281266860, sub_22023D1F4, sub_22023D24C, &type metadata for AdStateData);
          if (v5 <= 0x3F)
          {
            sub_2202437E4(319, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
            if (v6 <= 0x3F)
            {
              sub_2202437E4(319, &qword_281266888, sub_220242F2C, sub_220242F80, &type metadata for AdSizeData);
              if (v7 <= 0x3F)
              {
                sub_2202437E4(319, &qword_281266800, sub_220243184, sub_2202431D8, &type metadata for AdPositionData);
                if (v8 <= 0x3F)
                {
                  sub_2202437E4(319, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
                  if (v9 <= 0x3F)
                  {
                    sub_2202437E4(319, &qword_281266838, sub_22024358C, sub_2202435E0, &type metadata for BannerAdData);
                    if (v10 <= 0x3F)
                    {
                      sub_2202437E4(319, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
                      if (v11 <= 0x3F)
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

void sub_220245F5C(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF26288, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF26290, &type metadata for AdPositionData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF26298, &type metadata for AdFeedData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_27CF262A0, &type metadata for AdGroupData);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2202460C0()
{
  result = qword_27CF262A8;
  if (!qword_27CF262A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF262A8);
  }

  return result;
}

unint64_t sub_220246118()
{
  result = qword_27CF262B0;
  if (!qword_27CF262B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF262B0);
  }

  return result;
}

unint64_t sub_220246170()
{
  result = qword_27CF262B8;
  if (!qword_27CF262B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF262B8);
  }

  return result;
}

uint64_t sub_2202461C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4465746174536461 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144657A69536461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x644172656E6E6162 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 10;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

StocksAnalytics::BadgeType_optional __swiftcall BadgeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BadgeType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x79726F7473;
  }

  if (*v0)
  {
    v1 = 1701736302;
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

unint64_t sub_220246648()
{
  result = qword_27CF262C0;
  if (!qword_27CF262C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF262C0);
  }

  return result;
}

uint64_t sub_22024669C()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220246758(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220246800(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202468C4(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x800000022038F550;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x79726F7473;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1701736302;
    v2 = 0xE400000000000000;
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

unint64_t sub_2202469FC()
{
  result = qword_2812620B0;
  if (!qword_2812620B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620B0);
  }

  return result;
}

void __swiftcall ReferralData.init(originatingCampaignID:originatingCampaignType:originatingCreativeID:referringApplication:referringInboundUrl:)(StocksAnalytics::ReferralData *__return_ptr retstr, Swift::String_optional originatingCampaignID, Swift::String_optional originatingCampaignType, Swift::String_optional originatingCreativeID, Swift::String referringApplication, Swift::String referringInboundUrl)
{
  retstr->originatingCampaignID = originatingCampaignID;
  retstr->originatingCampaignType = originatingCampaignType;
  retstr->originatingCreativeID = originatingCreativeID;
  retstr->referringApplication = referringApplication;
  retstr->referringInboundUrl = referringInboundUrl;
}

uint64_t ReferralData.originatingCampaignID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReferralData.originatingCampaignID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReferralData.originatingCampaignType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReferralData.originatingCampaignType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ReferralData.originatingCreativeID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReferralData.originatingCreativeID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ReferralData.referringApplication.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ReferralData.referringApplication.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ReferralData.referringInboundUrl.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ReferralData.referringInboundUrl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

unint64_t sub_220246D1C()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD000000000000014;
  if (v2 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v2 == 2)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_220246DA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220247790(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220246DDC(uint64_t a1)
{
  v2 = sub_220247064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220246E18(uint64_t a1)
{
  v2 = sub_220247064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralData.encode(to:)(void *a1)
{
  sub_22024746C(0, &qword_281261CD0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = v1[2];
  v14[7] = v1[3];
  v14[8] = v8;
  v9 = v1[4];
  v14[5] = v1[5];
  v14[6] = v9;
  v10 = v1[6];
  v14[3] = v1[7];
  v14[4] = v10;
  v11 = v1[8];
  v14[1] = v1[9];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220247064();
  sub_220370168();
  v19 = 0;
  v12 = v14[9];
  sub_22036FF68();
  if (!v12)
  {
    v18 = 1;
    sub_22036FF68();
    v17 = 2;
    sub_22036FF68();
    v16 = 3;
    sub_22036FFB8();
    v15 = 4;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220247064()
{
  result = qword_281265D38;
  if (!qword_281265D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D38);
  }

  return result;
}

uint64_t ReferralData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22024746C(0, &qword_27CF262C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220247064();
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v43[0]) = 0;
    v10 = sub_22036FE98();
    v12 = v11;
    v13 = v10;
    LOBYTE(v43[0]) = 1;
    v14 = sub_22036FE98();
    v16 = v15;
    v35 = v14;
    v36 = v13;
    LOBYTE(v43[0]) = 2;
    v17 = sub_22036FE98();
    v19 = v18;
    v34 = v17;
    LOBYTE(v43[0]) = 3;
    v33 = sub_22036FEE8();
    v37 = v20;
    v44 = 4;
    v21 = sub_22036FEE8();
    v22 = *(v7 + 8);
    v32 = v21;
    v23 = v9;
    v25 = v24;
    v22(v23, v6);
    *&v38 = v36;
    *(&v38 + 1) = v12;
    v26 = v35;
    *&v39 = v35;
    *(&v39 + 1) = v16;
    *&v40 = v34;
    *(&v40 + 1) = v19;
    v27 = v37;
    *&v41 = v33;
    *(&v41 + 1) = v37;
    *&v42 = v32;
    *(&v42 + 1) = v25;
    v28 = v41;
    a2[2] = v40;
    a2[3] = v28;
    a2[4] = v42;
    v29 = v39;
    *a2 = v38;
    a2[1] = v29;
    sub_220235490(&v38, v43);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v43[0] = v36;
    v43[1] = v12;
    v43[2] = v26;
    v43[3] = v16;
    v43[4] = v34;
    v43[5] = v19;
    v43[6] = v33;
    v43[7] = v27;
    v43[8] = v32;
    v43[9] = v25;
    return sub_22023538C(v43);
  }
}

void sub_22024746C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220247064();
    v7 = a3(a1, &type metadata for ReferralData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202474D4()
{
  result = qword_281265D10;
  if (!qword_281265D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D10);
  }

  return result;
}

unint64_t sub_22024752C()
{
  result = qword_281265D18;
  if (!qword_281265D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D18);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2202475CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220247614(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_22024768C()
{
  result = qword_27CF262D0;
  if (!qword_27CF262D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF262D0);
  }

  return result;
}

unint64_t sub_2202476E4()
{
  result = qword_281265D28;
  if (!qword_281265D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D28);
  }

  return result;
}

unint64_t sub_22024773C()
{
  result = qword_281265D30;
  if (!qword_281265D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D30);
  }

  return result;
}

uint64_t sub_220247790(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000002203903D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002203903F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220390410 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220390430 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390450 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_220370048();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}