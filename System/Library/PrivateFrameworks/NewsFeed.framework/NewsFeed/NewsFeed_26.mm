uint64_t sub_1D5DAE1A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DebugFormatWorkspace(0);
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

uint64_t sub_1D5DAE25C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAE29C()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DAE2EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  v16[8] = v3[10];
  v7 = v3[8];
  v16[7] = v3[9];
  v8 = v3[3];
  v10 = v3[5];
  v9 = v3[6];
  v16[2] = v3[4];
  v16[3] = v10;
  v16[5] = v4;
  v16[6] = v5;
  v16[4] = v9;
  v16[0] = v3[2];
  v16[1] = v8;
  a2[6] = v7;
  a2[7] = v6;
  a2[8] = v3[10];
  v11 = v3[5];
  a2[2] = v3[4];
  a2[3] = v11;
  v12 = v3[7];
  a2[4] = v3[6];
  a2[5] = v12;
  v13 = v3[3];
  *a2 = v3[2];
  a2[1] = v13;
  return sub_1D5E9E6F8(v16, v15);
}

uint64_t sub_1D5DAE39C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_1D5DAE3EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_1D5DAE43C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  swift_beginAccess();
  return sub_1D6A405D0(v3 + v4, a2);
}

uint64_t sub_1D5DAE49C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D725891C();
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
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1D72585BC();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_1D72577EC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D5DAE614(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D725891C();
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
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_1D72577EC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D5DAE78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D5B5B2A0(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D5DAE87C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D5B5B2A0(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D5DAE978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DAE9C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5DAEA18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5DAEA68()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAEAB0()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DAEAF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DAEB04(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

unint64_t sub_1D5DAEB48@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return sub_1D5C82CD8(v2);
}

unint64_t sub_1D5DAEB54(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  sub_1D5C82CD8(*a1);
  result = sub_1D5C92A8C(v4);
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D5DAEBA4(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

double sub_1D5DAEC00@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = v2;
  return sub_1D5EB1500(v2);
}

void sub_1D5DAEC0C(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  sub_1D5EB1500(*a1);
  sub_1D5EB15C4(v4);
  *(a2 + 48) = v3;
}

uint64_t sub_1D5DAEC74(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1D5DAECB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAECF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DAED40(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5DAED98()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAEDE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FeedContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DAEE8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FeedContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DAEF30()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAEF78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DAEF84(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D5DAEFD4(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1D5DAF018()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF060()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DAF0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725A34C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D5DAF174(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725A34C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D5DAF234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedSponsorshipBannerAd(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DAF2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedSponsorshipBannerAd(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DAF314()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF35C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 40);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D6A5DD4C(0, a4);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5DAF408(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    sub_1D6A5DD4C(0, a5);
    v9 = v8;
    v10 = *(*(v8 - 8) + 56);
    v11 = v6 + *(a4 + 20);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D5DAF4F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF548(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5DAF58C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF5D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatButtonNodeDataAction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D6A649A0(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D5DAF70C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatButtonNodeDataAction(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D6A649A0(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D5DAF808()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAF850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B7B5E0(0, &qword_1EDF3BF68, MEMORY[0x1E69D7358], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1D5DAF940(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5B7B5E0(0, &qword_1EDF3BF68, MEMORY[0x1E69D7358], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

__n128 sub_1D5DAFA40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DAFB50()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DAFB88()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DAFBC8()
{

  sub_1D607F09C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5DAFC0C()
{
  v1 = *(*(type metadata accessor for FormatInspectionFeedGroupItem(0) - 8) + 80);

  v2 = v0 + ((v1 + 24) & ~v1);
  type metadata accessor for FeedGroupItem(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      swift_unknownObjectRelease();

      break;
    case 1u:

      if (*(v2 + 80) != 1)
      {
      }

      if (*(v2 + 128) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      break;
    case 2u:
      goto LABEL_94;
    case 3u:

      v20 = type metadata accessor for FeedWeather(0);
      v21 = *(v20 + 28);
      v22 = sub_1D7261CAC();
      (*(*(v22 - 8) + 8))(v2 + v21, v22);
      v23 = v2 + *(v20 + 36);
      sub_1D6A7DA3C(0, &qword_1EDF43B60, &qword_1EDF3C740, 0x1E696B080, MEMORY[0x1E6968070]);
      v25 = v24;
      v26 = *(*(v24 - 8) + 8);
      v26(v23, v24);
      v27 = type metadata accessor for FeedWeather.Temperature(0);
      v26(v23 + v27[5], v25);
      v26(v23 + v27[6], v25);
      v26(v23 + v27[7], v25);
      goto LABEL_96;
    case 4u:

      if (*(v2 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v2 + 240) < 0x12uLL)
      {
        break;
      }

      goto LABEL_96;
    case 5u:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v28 = type metadata accessor for FeedHeadline(0);
      v29 = v28[10];
      v30 = v2 + v29 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v31 = type metadata accessor for SharedItem(0);
      if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
      {
        v32 = sub_1D725891C();
        (*(*(v32 - 8) + 8))(v30, v32);

        v33 = *(v31 + 28);
        v34 = sub_1D72585BC();
        (*(*(v34 - 8) + 8))(v30 + v33, v34);
      }

      v35 = v28[11];
      v36 = sub_1D726045C();
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(v2 + v35, 1, v36))
      {
        (*(v37 + 8))(v2 + v35, v36);
      }

      if (*(v2 + v28[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v2 + v28[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      if (*(v2 + 32) >= 0x12uLL)
      {
      }

      v47 = type metadata accessor for FeedWebEmbed(0);
      v48 = v47[8];
      v49 = sub_1D72585BC();
      v50 = *(v49 - 8);
      v79 = *(v50 + 8);
      v79(v2 + v48, v49);
      v51 = v47[9];
      if (!(*(v50 + 48))(v2 + v51, 1, v49))
      {
        v79(v2 + v51, v49);
      }

      v52 = v2 + v47[12];
      v53 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v53 - 1) + 48))(v52, 1, v53))
      {
        v78 = v49;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v54 = v53[10];
        v55 = v52 + v54 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v56 = type metadata accessor for SharedItem(0);
        if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
        {
          v57 = sub_1D725891C();
          (*(*(v57 - 8) + 8))(v55, v57);

          v79(v55 + *(v56 + 28), v78);
        }

        v58 = v53[11];
        v59 = sub_1D726045C();
        v60 = *(v59 - 8);
        if (!(*(v60 + 48))(v52 + v58, 1, v59))
        {
          (*(v60 + 8))(v52 + v58, v59);
        }

        if (*(v52 + v53[12] + 8) >= 0x12uLL)
        {
        }

        v49 = v78;
        if (*(v52 + v53[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v61 = v2 + v47[13];
      v62 = type metadata accessor for WebEmbedDataVisualization(0);
      if (!(*(*(v62 - 8) + 48))(v61, 1, v62))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v63 = type metadata accessor for GenericDataVisualization(0);
          v79(v61 + *(v63 + 20), v49);
        }

        else
        {
        }
      }

      goto LABEL_96;
    case 7u:

      break;
    case 8u:
      goto LABEL_80;
    case 9u:
      if (*(v2 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v2 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1((v2 + 88));
      }

      if (*(v2 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1((v2 + 128));
      }

      if (!*(v2 + 192))
      {
        break;
      }

      v19 = (v2 + 168);
      goto LABEL_60;
    case 0xAu:
      if (*(v2 + 32) >= 0x12uLL)
      {
      }

LABEL_80:

      swift_unknownObjectRelease();
      break;
    case 0xBu:
      if (*(v2 + 32) >= 0x12uLL)
      {
      }

      v3 = v2 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      swift_unknownObjectRelease();
      v2 = v3 + *(type metadata accessor for PuzzleStatistic(0) + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v72 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v72 - 8) + 48))(v2, 1, v72))
          {
            v73 = sub_1D725891C();
            (*(*(v73 - 8) + 8))(v2, v73);
            v74 = type metadata accessor for PuzzleLeaderboardEntry(0);

            v75 = v2 + *(v74 + 24);

            v76 = *(v75 + 40);
            if (v76 >> 60 != 15)
            {
              sub_1D5B952F8(*(v75 + 32), v76);
            }

LABEL_94:

LABEL_96:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v64 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v65 = *(v64 + 28);
          v66 = type metadata accessor for PuzzleStreak(0);
          v67 = *(*(v66 - 8) + 48);
          if (!v67(v2 + v65, 1, v66))
          {
            v68 = sub_1D7257ADC();
            (*(*(v68 - 8) + 8))(v2 + v65, v68);
          }

          v17 = *(v64 + 32);
          if (!v67(v2 + v17, 1, v66))
          {
            v18 = sub_1D7257ADC();
LABEL_25:
            (*(*(v18 - 8) + 8))(v2 + v17, v18);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          type metadata accessor for PuzzleStatisticValue(0);
          v5 = swift_getEnumCaseMultiPayload();
          if (v5 == 6 || v5 == 5)
          {
            v6 = type metadata accessor for PuzzleStreak(0);
            if (!(*(*(v6 - 8) + 48))(v2, 1, v6))
            {
              v7 = sub_1D7257ADC();
              (*(*(v7 - 8) + 8))(v2, v7);
            }
          }

          v8 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
          v9 = *(v8 + 20);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 == 6 || v10 == 5)
          {
            v11 = type metadata accessor for PuzzleStreak(0);
            if (!(*(*(v11 - 8) + 48))(v2 + v9, 1, v11))
            {
              v12 = sub_1D7257ADC();
              (*(*(v12 - 8) + 8))(v2 + v9, v12);
            }
          }

          v13 = *(v8 + 24);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 == 6 || v14 == 5)
          {
            v15 = type metadata accessor for PuzzleStreak(0);
            if (!(*(*(v15 - 8) + 48))(v2 + v13, 1, v15))
            {
              v16 = sub_1D7257ADC();
              (*(*(v16 - 8) + 8))(v2 + v13, v16);
            }
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v69 = swift_getEnumCaseMultiPayload();
        if (v69 == 6 || v69 == 5)
        {
          v70 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v70 - 8) + 48))(v2, 1, v70))
          {
            v71 = sub_1D7257ADC();
            (*(*(v71 - 8) + 8))(v2, v71);
          }
        }
      }

      break;
    case 0xCu:

      v17 = *(type metadata accessor for FeedSponsorshipBannerAd(0) + 20);
      v18 = sub_1D72608BC();
      goto LABEL_25;
    case 0xDu:

      if (*(v2 + 40) >= 0x12uLL)
      {
      }

      if (*(v2 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v38 = type metadata accessor for FeedRecipe(0);
      v39 = v38[9];
      v40 = v2 + v39 + *(type metadata accessor for FeedRecipe.State(0) + 20);
      v41 = type metadata accessor for SharedItem(0);
      if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
      {
        v42 = sub_1D725891C();
        (*(*(v42 - 8) + 8))(v40, v42);

        v43 = *(v41 + 28);
        v44 = sub_1D72585BC();
        (*(*(v44 - 8) + 8))(v40 + v43, v44);
      }

      v45 = (v2 + v38[10]);
      if (v45[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v46 = (v2 + v38[12]);
      if (v46[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v46);
      }

      v19 = (v2 + v38[13]);
      if (v19[3])
      {
LABEL_60:
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB0B90()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB0C00()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB0C38()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5DB0C7C()
{
  v1 = *(type metadata accessor for DebugFormatPackagesDelta(0) - 8);
  v2 = (*(v1 + 80) + 361) & ~*(v1 + 80);

  sub_1D6A86438(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16));
  sub_1D6A86060(0);
  v4 = v0 + v2 + *(v3 + 28);
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v6(v4 + *(v7 + 20), v5);

  return swift_deallocObject();
}

uint64_t sub_1D5DB0F24()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB0FE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB110C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1148()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1180()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB11C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1290(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D68FF2F0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DB133C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D68FF2F0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DB13E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DB144C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DB14BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB14FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DB154C()
{
  v1 = (type metadata accessor for FormatDerivedDataCompilerSettings(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  type metadata accessor for FormatVersioningModeSelection(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v3 += *(type metadata accessor for FormatVersioningModeRelease(0) + 20);
  }

  v5 = sub_1D725BD1C();
  (*(*(v5 - 8) + 8))(v3, v5);
LABEL_5:

  return swift_deallocObject();
}

uint64_t sub_1D5DB169C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB16E4()
{

  sub_1D6AA8948(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DB1738()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1770()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB17B0()
{
  v1 = (type metadata accessor for FormatDerivedDataCompilerSettings(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  type metadata accessor for FormatVersioningModeSelection(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v3 += *(type metadata accessor for FormatVersioningModeRelease(0) + 20);
  }

  v5 = sub_1D725BD1C();
  (*(*(v5 - 8) + 8))(v3, v5);
LABEL_5:

  return swift_deallocObject();
}

uint64_t sub_1D5DB1928()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1970()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB19B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1A00()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1A80()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1AD0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB1B14()
{
  sub_1D6ABBB80();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DB1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *(a1 + 40);
    if (v4 > 5)
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
    sub_1D6ABBC8C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DB1C50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *(result + 40) = -a2;
  }

  else
  {
    sub_1D6ABBC8C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DB1F04()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1F4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB1F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C8F9E0(0);
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

void sub_1D5DB2050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5C8F9E0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D5DB2118()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB2150()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB21E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2220()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB2280()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2320()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedItem(0);
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
    v11 = sub_1D725D80C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D5DB2490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedItem(0);
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
    v11 = sub_1D725D80C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D5DB25B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2600()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB2658@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DB26A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

double sub_1D5DB26F8@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

void sub_1D5DB2748(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

void sub_1D5DB2790(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

uint64_t sub_1D5DB27D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5DB2824()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB285C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2894()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB28D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2914()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB2968(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5DB29B8(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D5DB2A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7259F5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 2)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D5DB2AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7259F5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1D5DB2BAC()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB2BE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DB2C1C()
{

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB2C8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2CD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2D14()
{

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB2D7C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB2DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatAction(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D5DB2E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatAction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D5DB2F54()
{
  v1 = type metadata accessor for GroupLayoutContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

void sub_1D5DB3180(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

void sub_1D5DB31C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_1D5DB320C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5DB325C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DB32AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DB32FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB3338()
{

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1D6ADCDFC(*(v0 + 48), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB33B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D726117C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DB3408()
{

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1D6ADCDFC(*(v0 + 48), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB3480(uint64_t a1, uint64_t a2)
{
  sub_1D5DEF594(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DB34E4(uint64_t a1)
{
  sub_1D5DEF594(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5DB3558(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DB3604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB36C0(uint64_t *a1)
{
  sub_1D5DEFC10();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1D726101C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1D5DB37E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1D5DB3834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DB38E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB3984()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB39E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB3A1C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB3A5C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DB3B08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB3BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_1D5E04CC4(v3, v2, v4);
}

uint64_t sub_1D5DB3BE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB3C28()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB3C70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1D72585BC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DB3D28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D5DB3DCC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

void sub_1D5DB3E18(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 17);
}

uint64_t sub_1D5DB3E9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB3EE0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB3F18()
{
  v1 = (type metadata accessor for FormatVideoPlayerData(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  swift_unknownObjectRelease();
  v3 = v1[11];
  v4 = sub_1D72585BC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB4088()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB40C0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB40F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB4134(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DB41E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB4294@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1D7264BCC();
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_1D5DB42DC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D5DB4308()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB4364@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DB43C0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8NewsFeed29PuzzleEmbedSubmitScoreHandler_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5DB4444()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB4480()
{

  if (*(v0 + 120) != 1)
  {
  }

  if (*(v0 + 168) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 184);
  if (v1)
  {

    if (*(v0 + 264) != 1)
    {
    }

    if (*(v0 + 312) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 328));

  return swift_deallocObject();
}

uint64_t sub_1D5DB45B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB4600()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB4650()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB46C0()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  if (*(v0 + 208))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB4750()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB47CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FormatContentSubgroup(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DB4878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatContentSubgroup(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB491C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB4964@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContentSubgroup(0) + 24));
}

uint64_t sub_1D5DB49B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContentSubgroup(0) + 28));
}

uint64_t sub_1D5DB49FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContentSubgroup(0) + 32));
}

uint64_t sub_1D5DB4A48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContentSubgroup(0) + 36));
}

uint64_t sub_1D5DB4A98(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for FormatContentSubgroup(0) + 40);

  return sub_1D6B243A0(a1, v3);
}

uint64_t sub_1D5DB4AE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContentSubgroup(0) + 44));
}

uint64_t sub_1D5DB4B2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContentSubgroup(0) + 48));
}

uint64_t sub_1D5DB4B78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B5971C(0);
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
      sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D5DB4CD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B5971C(0);
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
      sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5DB4E30()
{
  sub_1D5FBAC60(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB4F0C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D5DB4F5C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D5DB4FA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB5024()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB5060()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB5098()
{
  v1 = (type metadata accessor for DebugGroupLayoutKey(0) - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + v2 + 16));
  v4 = v0 + v2 + v1[8];
  __swift_destroy_boxed_opaque_existential_1((v4 + 8));

  v5 = *(type metadata accessor for GroupLayoutBindingContext(0) + 52);
  v6 = sub_1D725A0AC();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  v7 = v0 + v2 + v1[9];
  v8 = sub_1D7259F5C();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for GroupLayoutContext(0);
  v10 = *(v9 + 20);
  v11 = sub_1D7259CFC();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = v7 + *(v9 + 24);
  if (*(v12 + 24) >= 2uLL)
  {
  }

  v13 = type metadata accessor for FeedLayoutSolverOptions(0);
  v14 = *(v13 + 36);
  v15 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v15 - 8) + 48))(v12 + v14, 1, v15))
  {
    v16 = sub_1D725E23C();
    (*(*(v16 - 8) + 8))(v12 + v14, v16);
  }

  if (*(v12 + *(v13 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB5384()
{
  v1 = (type metadata accessor for DebugGroupLayoutKey(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + v2 + 16));
  v3 = v0 + v2 + v1[8];
  __swift_destroy_boxed_opaque_existential_1((v3 + 8));

  v4 = *(type metadata accessor for GroupLayoutBindingContext(0) + 52);
  v5 = sub_1D725A0AC();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v0 + v2 + v1[9];
  v7 = sub_1D7259F5C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for GroupLayoutContext(0);
  v9 = *(v8 + 20);
  v10 = sub_1D7259CFC();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = v6 + *(v8 + 24);
  if (*(v11 + 24) >= 2uLL)
  {
  }

  v12 = type metadata accessor for FeedLayoutSolverOptions(0);
  v13 = *(v12 + 36);
  v14 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v14 - 8) + 48))(v11 + v13, 1, v14))
  {
    v15 = sub_1D725E23C();
    (*(*(v15 - 8) + 8))(v11 + v13, v15);
  }

  if (*(v11 + *(v12 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB5688()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB56C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB5710()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DB5748()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5DB5790()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB57E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB5858()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB58AC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D725E3BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DB5958(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725E3BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB59FC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
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
      v13 = type metadata accessor for GroupLayoutContext(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D5DB5B20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
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
      v13 = type metadata accessor for GroupLayoutContext(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5DB5C54(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DB5D00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB5DA4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB5DE8()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));

  return swift_deallocObject();
}

uint64_t sub_1D5DB5F0C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB5F70(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DB601C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB60EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D5BB1554(0, qword_1EDF34EF0, type metadata accessor for FeedItem);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5DB61C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1D5BB1554(0, qword_1EDF34EF0, type metadata accessor for FeedItem);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

float sub_1D5DB6294@<S0>(_DWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&dword_1EC8924C0;
  *a1 = dword_1EC8924C0;
  return result;
}

void sub_1D5DB62E0(int *a1)
{
  v1 = *a1;
  swift_beginAccess();
  dword_1EC8924C0 = v1;
}

uint64_t sub_1D5DB633C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 72) = v3;
  return result;
}

uint64_t sub_1D5DB638C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB63CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB6408()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB6440()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DB6478()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB64C0(uint64_t a1, uint64_t a2)
{
  sub_1D6B4FCB0(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DB6548(uint64_t a1, uint64_t a2)
{
  sub_1D6B4FCB0(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DB65D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DB6680(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB6734()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB678C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5DB67D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_1D5E04CC4(v3, v2, v4);
}

uint64_t sub_1D5DB67F8(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5DB6848(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5DB6898(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1D5DB68F4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB6A2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB6A6C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB6AA4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB6AE8(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5DB6B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatVideoData.Assets(0);
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

uint64_t sub_1D5DB6BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatVideoData.Assets(0);
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

uint64_t sub_1D5DB6CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1D5B54AD4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D5DB6DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1D5B54AD4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1D5DB6EF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB6FB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B5CFA0(0);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5DB706C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1D5B5CFA0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DB7110(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D69F80E4(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DB71BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D69F80E4(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DB7264(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D725C9DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DB7310(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725C9DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB73DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB7420()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB7470()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB74A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB74E4()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DB7530()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB7580()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB75C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB7600()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB7874()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB78AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB78E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB791C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB797C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DB7A28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DB7ACC()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));

  return swift_deallocObject();
}

uint64_t sub_1D5DB7BF0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB7C64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5DB7CB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5DB7FCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB800C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  sub_1D6BB3158(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_1D5DB80B8()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB811C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB8158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DB81A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_1D5DB81F8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

void sub_1D5DB8240(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

double sub_1D5DB8284@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

void sub_1D5DB82D4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

void sub_1D5DB831C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

void sub_1D5DB8360(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 97);
}

void sub_1D5DB83A8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 97) = v2;
}

uint64_t sub_1D5DB83EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_1D5DB843C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 136);
  *a2 = *(v3 + 128);
  a2[1] = v4;
}

uint64_t sub_1D5DB848C()
{
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);

  swift_unownedRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D5DB8594()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB85CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB86D4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB870C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemResolution(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DB8778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemResolution(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DB87E8()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v34 = *(v0 + 16);
  v1 = v34;
  v35 = *(v0 + 24);
  v32 = v35;
  v36 = *(v0 + 40);
  v37 = *(v0 + 56);
  v27 = v37;
  v38 = v2;
  v39 = v3;
  inserted = type metadata accessor for FeedNativeAdInsertBlueprintModifier(0, &v34);
  v5 = *(*(inserted - 1) + 80);
  v24 = *(*(inserted - 1) + 64);
  v6 = sub_1D725CE8C();
  v30 = *(v6 - 8);
  v31 = v6;
  v23 = *(v30 + 80);
  v22 = *(v30 + 64);
  v34 = v1;
  v28 = vzip1q_s64(v32, v27);
  v35 = v28;
  *&v36 = v3;
  v33 = sub_1D725D68C();
  v26 = *(v33 - 8);
  v7 = *(v26 + 80);
  v21 = *(v26 + 64);
  v34 = v1;
  v35 = v28;
  *&v36 = v3;
  v29 = sub_1D725FACC();
  v25 = *(v29 - 8);
  v8 = *(v25 + 80);
  v9 = (v0 + ((v5 + 88) & ~v5));
  __swift_destroy_boxed_opaque_existential_1(v9);
  v10 = v9 + inserted[23];
  v11 = sub_1D7260E3C();
  (*(*(v11 - 8) + 8))(v10, v11);
  type metadata accessor for FeedNativeAdInsertion(0);

  v12 = (v9 + inserted[24]);

  v13 = type metadata accessor for FeedContext(0);
  v14 = v12 + v13[5];
  v15 = type metadata accessor for BundleSession(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v20 = *(v15 + 20);
    v16 = sub_1D725891C();
    (*(*(v16 - 8) + 8))(&v14[v20], v16);
  }

  if (*(v12 + v13[12] + 8) - 1 >= 3)
  {
  }

  v17 = (((v5 + 88) & ~v5) + v24 + v23) & ~v23;
  v18 = (v17 + v22 + v7) & ~v7;

  __swift_destroy_boxed_opaque_existential_1((v9 + inserted[25]));
  __swift_destroy_boxed_opaque_existential_1((v9 + inserted[26]));

  (*(v30 + 8))(v0 + v17, v31);
  (*(v26 + 8))(v0 + v18, v33);

  (*(v25 + 8))(v0 + ((((((v21 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8), v29);
  return swift_deallocObject();
}

uint64_t sub_1D5DB8C7C()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v23 = *(v0 + 16);
  v1 = v23;
  v4 = *(v0 + 40);
  v24 = *(v0 + 24);
  v21 = v24;
  v25 = v4;
  v26 = *(v0 + 56);
  v20 = v26;
  v27 = v2;
  v28 = v3;
  inserted = type metadata accessor for FeedNativeAdInsertBlueprintModifier(0, &v23);
  v6 = *(*(inserted - 1) + 80);
  v19 = *(*(inserted - 1) + 64);
  v23 = v1;
  v24 = vzip1q_s64(v21, v20);
  *&v25 = v3;
  v22 = sub_1D725FACC();
  v7 = *(v22 - 8);
  v8 = *(v7 + 80);
  v9 = (v0 + ((v6 + 88) & ~v6));
  __swift_destroy_boxed_opaque_existential_1(v9);
  v10 = v9 + inserted[23];
  v11 = sub_1D7260E3C();
  (*(*(v11 - 8) + 8))(v10, v11);
  type metadata accessor for FeedNativeAdInsertion(0);

  v12 = (v9 + inserted[24]);

  v13 = type metadata accessor for FeedContext(0);
  v14 = v12 + v13[5];
  v15 = type metadata accessor for BundleSession(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v18 = *(v15 + 20);
    v16 = sub_1D725891C();
    (*(*(v16 - 8) + 8))(&v14[v18], v16);
  }

  if (*(v12 + v13[12] + 8) - 1 >= 3)
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v9 + inserted[25]));
  __swift_destroy_boxed_opaque_existential_1((v9 + inserted[26]));

  (*(v7 + 8))(v0 + ((((v19 + ((v6 + 88) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8), v22);
  return swift_deallocObject();
}

uint64_t sub_1D5DB8FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FeedNativeAdInsertion(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 92);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedContext(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 96);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D5DB90D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for FeedNativeAdInsertion(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 92);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedContext(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 96);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5DB9200(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D6BC8C54(0, &qword_1EDF281C8, type metadata accessor for FormatPostPurchaseData, MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5DB92EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1D6BC8C54(0, &qword_1EDF281C8, type metadata accessor for FormatPostPurchaseData, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DB93C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9430()
{
  sub_1D5B54B8C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DB9590()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB95E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB9620()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB9664()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB969C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB96D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB970C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB97E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9828@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DB9834(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5DB9A58()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9A98()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9B08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9B5C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DB9B94()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DB9BD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9C08()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB9C68()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9CB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9CF0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9D30()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DB9D70()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DB9DB8()
{
  sub_1D6BEBEC0(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DB9E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
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

uint64_t sub_1D5DB9EC4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D72585BC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

double sub_1D5DB9F48@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1D5DB9F54(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DB9F60@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D5DB9F74(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 8) = *result;
  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_1D5DB9FAC(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5DB9FFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D614F57C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DBA0A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D614F57C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DBA164()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBA19C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D5DBA234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FormatServiceOptions(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D5DBA340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FormatServiceOptions(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D5DBA448()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DBA4C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContent(0) + 48));
}

uint64_t sub_1D5DBA50C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContent(0) + 52));
}

uint64_t sub_1D5DBA558@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContent(0) + 56));
}

uint64_t sub_1D5DBA5A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContent(0) + 60));
}

uint64_t sub_1D5DBA5F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContent(0) + 72));
}

uint64_t sub_1D5DBA63C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatContent(0) + 76));
}

uint64_t sub_1D5DBA688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D725891C();
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
      sub_1D5B49800(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5DBA7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedGroupConfigSidecar(0);
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

uint64_t sub_1D5DBA86C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedGroupConfigSidecar(0);
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

uint64_t sub_1D5DBA928()
{

  if (*(v0 + 24) != 1)
  {

    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_1D5D2F2C4(*(v0 + 80), *(v0 + 88), v1 & 1);
    }

    v2 = *(v0 + 136);
    if (v2 != 255)
    {
      sub_1D618909C(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v2 & 1);
    }

    v3 = *(v0 + 160);
    if (v3 != 255)
    {
      sub_1D5D2F2C4(*(v0 + 144), *(v0 + 152), v3 & 1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBA9E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBAA2C()
{

  sub_1D66761BC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_1D66761BC(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));

  return swift_deallocObject();
}

uint64_t sub_1D5DBAABC()
{
  sub_1D6086768(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DBAAF4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBAB34()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBAB88()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBABC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D5DBAC14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5DBAC64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DBACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  sub_1D5E3B6E0(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D5DBAD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  sub_1D5E3B6E0(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D5DBADA8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBAE34()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBAE6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DBAEB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBAEE8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DBAF28()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBB05C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBB094()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBB0E8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DBB194(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBB248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DBB298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D5DBB2E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5DBB338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DBB388()
{
  v1 = type metadata accessor for GroupLayoutContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBB5C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBB5FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DBB64C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5DBB69C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5DBB6EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1D5DBB73C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5DBB78C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

void sub_1D5DBB7DC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
}

void sub_1D5DBB824(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
}

double sub_1D5DBB868@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5DBB8B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_1D5DBB908()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBB940()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DBB984()
{
  v1 = type metadata accessor for GroupLayoutContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBBBB0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DBBC5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBBD5C(uint64_t a1)
{
  sub_1D6C2E4B8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5DBBDBC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBBE04()
{
  sub_1D6C2E824(255);
  sub_1D6C2E670(255);
  sub_1D6C2E4B8(255);
  sub_1D6C2E6F4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D5DBBEB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBBF00()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBBF38()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBBF8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBBFC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DBBFFC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBC058()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DBC0B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBC0FC(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D6C49444(0, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5DBC160(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D6C49444(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5DBC1C4(uint64_t a1, __n128 a2)
{
  sub_1D6C49444(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5DBC27C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBC2D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBC318()
{
  sub_1D6007D9C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5DBC354()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBC38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DBC438(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBC4DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBC520()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return swift_deallocObject();
}

uint64_t sub_1D5DBC5B0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DBC5F0()
{

  if (*(v0 + 152) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 256) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBC6A0()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBC718()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBC7E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBC818()
{

  sub_1D5EB15C4(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DBC9E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DBCA2C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DBCA64()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBCAC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBCB10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DBCB60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DBCBB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1D5DBCCC0()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DBCD10()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed37PuzzleImageShareAttributeProviderType_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5DBCD98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1D5DBCDE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DBCE38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DBCE88()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBCEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DBCF6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBD010()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBD054()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return swift_deallocObject();
}

uint64_t sub_1D5DBD184()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBD1CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBD204()
{
  v1 = type metadata accessor for FeedRecipe(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 40) >= 0x12uLL)
  {
  }

  if (*(v2 + 48) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  v3 = v1[9];
  v4 = v2 + v3 + *(type metadata accessor for FeedRecipe.State(0) + 20);
  v5 = type metadata accessor for SharedItem(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_1D725891C();
    (*(*(v6 - 8) + 8))(v4, v6);

    v7 = *(v5 + 28);
    v8 = sub_1D72585BC();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  v9 = (v2 + v1[10]);
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v10 = (v2 + v1[12]);
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v11 = (v2 + v1[13]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBD3FC()
{
  v1 = type metadata accessor for FeedPuzzleStatistic(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 32) >= 0x12uLL)
  {
  }

  v3 = v2 + *(v1 + 32);
  swift_unknownObjectRelease();
  v4 = v3 + *(type metadata accessor for PuzzleStatistic(0) + 20);
  type metadata accessor for PuzzleStatisticCategory(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
      if (!(*(*(v28 - 8) + 48))(v4, 1, v28))
      {
        v29 = sub_1D725891C();
        (*(*(v29 - 8) + 8))(v4, v29);
        v30 = type metadata accessor for PuzzleLeaderboardEntry(0);

        v31 = v4 + *(v30 + 24);

        v32 = *(v31 + 40);
        if (v32 >> 60 != 15)
        {
          sub_1D5B952F8(*(v31 + 32), v32);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v18 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
      v19 = *(v18 + 28);
      v20 = type metadata accessor for PuzzleStreak(0);
      v21 = *(*(v20 - 8) + 48);
      if (!v21(v4 + v19, 1, v20))
      {
        v22 = sub_1D7257ADC();
        (*(*(v22 - 8) + 8))(v4 + v19, v22);
      }

      v23 = *(v18 + 32);
      if (!v21(v4 + v23, 1, v20))
      {
        v24 = sub_1D7257ADC();
        (*(*(v24 - 8) + 8))(v4 + v23, v24);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for PuzzleStatisticValue(0);
      v6 = swift_getEnumCaseMultiPayload();
      if (v6 == 6 || v6 == 5)
      {
        v7 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v7 - 8) + 48))(v4, 1, v7))
        {
          v8 = sub_1D7257ADC();
          (*(*(v8 - 8) + 8))(v4, v8);
        }
      }

      v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
      v10 = *(v9 + 20);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 == 6 || v11 == 5)
      {
        v12 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v12 - 8) + 48))(v4 + v10, 1, v12))
        {
          v13 = sub_1D7257ADC();
          (*(*(v13 - 8) + 8))(v4 + v10, v13);
        }
      }

      v14 = *(v9 + 24);
      v15 = swift_getEnumCaseMultiPayload();
      if (v15 == 6 || v15 == 5)
      {
        v16 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v16 - 8) + 48))(v4 + v14, 1, v16))
        {
          v17 = sub_1D7257ADC();
          (*(*(v17 - 8) + 8))(v4 + v14, v17);
        }
      }
    }
  }

  else
  {
    type metadata accessor for PuzzleStatisticValue(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 == 6 || v25 == 5)
    {
      v26 = type metadata accessor for PuzzleStreak(0);
      if (!(*(*(v26 - 8) + 48))(v4, 1, v26))
      {
        v27 = sub_1D7257ADC();
        (*(*(v27 - 8) + 8))(v4, v27);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBD970()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DBD9C0()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  if (*(v0 + 208))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBDA60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DBDA98()
{
  v1 = type metadata accessor for FeedHeadline(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = v2 + v3 + *(type metadata accessor for FeedHeadline.State(0) + 24);
  v5 = type metadata accessor for SharedItem(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_1D725891C();
    (*(*(v6 - 8) + 8))(v4, v6);

    v7 = *(v5 + 28);
    v8 = sub_1D72585BC();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  v9 = v1[11];
  v10 = sub_1D726045C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  if (*(v2 + v1[12] + 8) >= 0x12uLL)
  {
  }

  if (*(v2 + v1[13]) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBDD90()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBDDC8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DBDE08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBDE48()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBDE90()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBE1CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBE204()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBE248()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DBE290(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DBE33C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBE3E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DBE48C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBE530()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DBE568()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBE5A8()
{
  v1 = *(type metadata accessor for DebugFormatCanvasBindResult(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = v0 + v2;
  if (*(v0 + v2) != 1)
  {
  }

  v5 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for DebugFormatCanvasBindRequest(0);
  v7 = *(v6 + 20);
  v8 = sub_1D7259F5C();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = *(v6 + 24);
  v10 = sub_1D7259CFC();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1D5DBE7DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBE8C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DBE910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DBE960(char a1)
{
  if (a1)
  {
    return 0x704F676E69646F63;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1D5DBE99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DBEA48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBEAFC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBEB40()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return swift_deallocObject();
}

uint64_t sub_1D5DBEBC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatCustomItem(0) + 32));
}

uint64_t sub_1D5DBEC0C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D631F8C0(0, a4);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5DBECB8(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D631F8C0(0, a5);
    v9 = v8;
    v10 = *(*(v8 - 8) + 56);
    v11 = v6 + *(a4 + 24);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D5DBED5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutBindingContext(0);
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
      v13 = type metadata accessor for GroupLayoutContext(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D5DBEE80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutBindingContext(0);
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
      v13 = type metadata accessor for GroupLayoutContext(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5DBEFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WebEmbedDataVisualization(0);
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

uint64_t sub_1D5DBF060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WebEmbedDataVisualization(0);
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

uint64_t sub_1D5DBF158()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBF1C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FeedRecipe.State(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DBF274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FeedRecipe.State(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBF318()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBF360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DBF36C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5DBF3B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DBF3BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5DBF424(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1D5DBF474(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1D5DBF4C4(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_1D5DBF514(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_1D5DBF564(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 104) = v3;
  return result;
}

uint64_t sub_1D5DBF5B4(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 112) = v3;
  return result;
}

uint64_t sub_1D5DBF604(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 120) = v3;
  return result;
}

uint64_t sub_1D5DBF66C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 136) = v3;
  return result;
}

uint64_t sub_1D5DBF6B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DBF75C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBF800(uint64_t a1, uint64_t a2)
{
  sub_1D61B90AC(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DBF86C(uint64_t a1, uint64_t a2)
{
  sub_1D61B90AC(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DBF8E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FormatContentSubgroup(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DBF98C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatContentSubgroup(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DBFA40()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBFA90()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBFAC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBFB08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DBFB40()
{

  sub_1D5D05694(*(v0 + 24));

  return swift_deallocObject();
}

double sub_1D5DBFBB0@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1D5DBFBBC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DBFBC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D5DBFBDC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 8) = *result;
  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_1D5DBFBF0()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DBFC6C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5DBFCB0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B57CA0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5DBFD5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D5B57CA0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DBFE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D725BD1C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D5DBFF0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D725BD1C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D5DC0014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DC0020(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5DC0064@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DC0070(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5DC00C0(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_1D5DC0110(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 72) = v3;
  return result;
}

uint64_t sub_1D5DC0160(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_1D5DC01B0(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_1D5DC0200(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 104) = v3;
  return result;
}

uint64_t sub_1D5DC0250(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 112) = v3;
  return result;
}

uint64_t sub_1D5DC0294(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DC0340(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC03E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC041C()
{

  swift_unknownObjectRelease();

  if (v0[14] != 1)
  {

    if (v0[18])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 15);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return swift_deallocObject();
}

uint64_t sub_1D5DC04CC()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));

  return swift_deallocObject();
}

uint64_t sub_1D5DC0638()
{
  sub_1D6CBCE58(0, &unk_1EC894B80, sub_1D6CBB984);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC06DC()
{
  sub_1D6CBCE58(0, &qword_1EC894B90, sub_1D6CBB34C);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC0794()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC07CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC080C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC0858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspace(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DC08C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspace(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DC093C()
{
  sub_1D6CBDB4C(255);
  sub_1D6CBDCCC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D5DC0994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DC09E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1D5DC0A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

unint64_t sub_1D5DC0A84@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t sub_1D5DC0AD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5DC0B24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_1D5DC0B74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
}

uint64_t sub_1D5DC0BC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC0C10()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DC0C48()
{
  v1 = type metadata accessor for FormatDebuggerContext(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);

  v6 = v0 + v2;

  v7 = *(v0 + v2 + 32);
  if (v7 >= 4)
  {
  }

  v8 = *(v1 + 24);
  v9 = MEMORY[0x1E69D6AD8];
  sub_1D6CC4AAC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  (*(*(v10 - 8) + 8))(v6 + v8, v10);
  v11 = *(v1 + 28);
  sub_1D6CC4AAC(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v9);
  (*(*(v12 - 8) + 8))(v6 + v11, v12);

  v13 = v0 + v5 + *(v4 + 24);
  type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  LODWORD(v11) = swift_getEnumCaseMultiPayload();

  if (v11 == 1)
  {
    sub_1D6324784(0);
    v15 = *(v14 + 48);
    sub_1D5EB9994(0);
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC0EE0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DC0F20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DC0F58()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC0FCC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC1004()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC1058()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC1090()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC10E0()
{
  v1 = *(type metadata accessor for WebEmbedDataVisualization(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = *(type metadata accessor for GenericDataVisualization(0) + 20);
    v4 = sub_1D72585BC();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC1220()
{
  sub_1D6CD33BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC12A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DC1434@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1D5DC1484()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC14BC()
{
  v1 = sub_1D725ECFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC1578()
{
  v1 = type metadata accessor for FormatDecorationContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v0 + v2);

  if (*(v0 + v2 + 48))
  {
  }

  v8 = (v2 + v3 + v6) & ~v6;

  v9 = *(v1 + 28);
  v10 = sub_1D7259F5C();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v1 + 32);
  v12 = sub_1D7259CFC();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);

  (*(v5 + 8))(v0 + v8, v4);

  return swift_deallocObject();
}

uint64_t sub_1D5DC17A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC17E8()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC18A0()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC18F0()
{
  if (*(v0 + 48) >= 0x12uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  if (*(v0 + 208))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC1980()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC19F0()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

double sub_1D5DC1A68(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D5DC1A98()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC1B58()
{
  v1 = type metadata accessor for GroupLayoutContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC1D84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DC1DD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1D5DC1E24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1D5DC1E74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1D5DC1EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5DC1F14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_1D5DC1F64()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC1FA4()
{
  sub_1D6007D9C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5DC1FE0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC2018()
{
  v1 = sub_1D725FACC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  return swift_deallocObject();
}

uint64_t sub_1D5DC20F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC2130()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC2168(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1D725E9DC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5DC2214(void *result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D725E9DC();
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 72);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DC22B8()
{
  sub_1D5BE1514(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC234C()
{
  sub_1D5BE1514(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC23D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC2428()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC2460@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  v3 = *(v2 + 24);
  *a2 = *(v2 + 16);
  a2[1] = v3;
}

uint64_t sub_1D5DC24E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC2580()
{
  sub_1D6D17354(255);
  sub_1D6D17140(255);
  sub_1D6D17098(255);
  sub_1D6D171C4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D5DC2678()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC26C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC2704(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725C42C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DC2770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725C42C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DC27E8()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DC2820()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC2860()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC28D0()
{

  return swift_deallocObject();
}

double sub_1D5DC2908@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = v3;
  a2[1] = v2;
  return sub_1D62B50D4(v3);
}

void sub_1D5DC2918(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_1D62B50D4(*a1);
  sub_1D62B5230(v5, v6);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
}

uint64_t sub_1D5DC296C()
{

  if (*(v0 + 80))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC2A10()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(*(type metadata accessor for DebugFormatCacheFileMetadata(0) - 8) + 80);
  v6 = (v3 + v4 + v5) & ~v5;

  (*(v2 + 8))(v0 + v3, v1);
  v7 = sub_1D725BD1C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1D5DC2B84()
{
  v1 = *(type metadata accessor for DebugFormatCacheFileMetadata(0) - 8);
  v2 = (*(v1 + 80) + 49) & ~*(v1 + 80);

  v3 = sub_1D725BD1C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1D5DC2C74()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC2CAC()
{

  sub_1D5B952F8(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DC2CF4()
{
  v1 = *(type metadata accessor for DebugFormatManagerIndex(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2 + *(type metadata accessor for DebugFormatFileDirectory(0) + 20);
  v4 = sub_1D725BD1C();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v5(v3 + *(v6 + 20), v4);

  return swift_deallocObject();
}

uint64_t sub_1D5DC2E44()
{
  v1 = type metadata accessor for FormatPackage(0);
  v44 = *(*(v1 - 8) + 80);
  v2 = (v44 + 16) & ~v44;
  v3 = *(*(v1 - 8) + 64) + v2 + 7;
  v43 = type metadata accessor for DebugFormatCacheFile(0);
  v49 = *(*(v43 - 8) + 80);
  v47 = v0;
  v4 = v0 + v2;

  if (*(v0 + v2 + 168) >= 3uLL)
  {
  }

  v46 = v1;
  v5 = v4 + *(v1 + 92);

  v45 = type metadata accessor for FormatCompilerOptions(0);
  v6 = v5 + *(v45 + 24);
  if (*(v6 + 8) != 1)
  {
  }

  v7 = (v3 & 0xFFFFFFFFFFFFFFF8) + v49;
  v42 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  v8 = *(v42 + 20);
  v9 = sub_1D725B76C();
  v48 = *(v9 - 8);
  v10 = *(v48 + 48);
  if (!v10(v6 + v8, 1, v9))
  {
    (*(v48 + 8))(v6 + v8, v9);
  }

  v11 = v7 + 8;
  v12 = *(v45 + 28);
  if (!v10(v5 + v12, 1, v9))
  {
    (*(v48 + 8))(v5 + v12, v9);
  }

  v13 = v11 & ~v49;

  v14 = v46[24];
  v15 = sub_1D725BD1C();
  v16 = *(*(v15 - 8) + 8);
  v16(v4 + v14, v15);
  v17 = v46[25];
  v41 = v10;
  if (!v10(v4 + v17, 1, v9))
  {
    (*(v48 + 8))(v4 + v17, v9);
  }

  v16(v47 + v13 + *(v43 + 28), v15);
  type metadata accessor for DebugFormatCacheFileMetadata(0);

  v18 = v47 + v13 + *(v43 + 32);
  type metadata accessor for FormatFile(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v19 = type metadata accessor for FormatContent(0);
      v20 = *(v19 + 20);
      v21 = sub_1D725891C();
      (*(*(v21 - 8) + 8))(v18 + v20, v21);

      v22 = *(v19 + 44);
      v23 = sub_1D72608BC();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(v18 + v22, 1, v23))
      {
        (*(v24 + 8))(v18 + v22, v23);
      }

      goto LABEL_14;
    case 1u:

      if (*(v18 + 106) != 255)
      {
        v32 = *(v18 + 104) | (*(v18 + 106) << 16);
        sub_1D60CF684(*(v18 + 96), v32, SBYTE2(v32));
      }

      break;
    case 2u:

      if (*(v18 + 72) >= 3uLL)
      {
      }

      goto LABEL_44;
    case 3u:

      if (*(v18 + 56) >= 0x10uLL)
      {
      }

      goto LABEL_44;
    case 4u:

      goto LABEL_44;
    case 5u:
      v40 = v15;

      if (*(v18 + 168) >= 3uLL)
      {
      }

      v33 = v18 + v46[23];

      v34 = v33 + *(v45 + 24);
      if (*(v34 + 8) != 1)
      {
      }

      v35 = *(v42 + 20);
      if (!v41(v34 + v35, 1, v9))
      {
        (*(v48 + 8))(v34 + v35, v9);
      }

      v36 = *(v45 + 28);
      if (!v41(v33 + v36, 1, v9))
      {
        (*(v48 + 8))(v33 + v36, v9);
      }

      v16(v18 + v46[24], v40);
      v37 = v46[25];
      if (!v41(v18 + v37, 1, v9))
      {
        (*(v48 + 8))(v18 + v37, v9);
      }

      goto LABEL_44;
    case 6u:

      goto LABEL_44;
    case 7u:

      break;
    case 8u:

      goto LABEL_44;
    case 9u:

      goto LABEL_44;
    case 0xAu:

      sub_1D60CF6F4(*(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72), *(v18 + 80));
      break;
    case 0xBu:

      v25 = v18 + *(type metadata accessor for FormatBindingContent(0) + 28);

      v26 = type metadata accessor for FormatContent(0);
      v27 = *(v26 + 20);
      v28 = sub_1D725891C();
      (*(*(v28 - 8) + 8))(v25 + v27, v28);

      v29 = *(v26 + 44);
      v30 = sub_1D72608BC();
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(v25 + v29, 1, v30))
      {
        (*(v31 + 8))(v25 + v29, v30);
      }

LABEL_14:

      goto LABEL_44;
    case 0xCu:

LABEL_44:

      break;
    default:
      break;
  }

  sub_1D60CF7A4(0);
  sub_1D5B952F8(*(v18 + *(v38 + 44)), *(v18 + *(v38 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_1D5DC3A68()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC3AF0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC3B38()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC3B80(uint64_t a1, uint64_t a2)
{
  sub_1D6D4C0E0(0, qword_1EDF2A668, type metadata accessor for FormatViewBackground);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DC3C08(uint64_t a1, uint64_t a2)
{
  sub_1D6D4C0E0(0, qword_1EDF2A668, type metadata accessor for FormatViewBackground);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DC3C94(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 126)
  {
    v4 = *a1 >> 57;
    v5 = v4 & 0x38 | *a1 & 7;
    if (v5)
    {
      return 128 - ((v4 >> 6) | (2 * v5));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D6D4C0E0(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

unint64_t *sub_1D5DC3D70(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 126)
  {
    v6 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    sub_1D6D4C0E0(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 56);
    v11 = v5 + *(a4 + 20);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D5DC3E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725D5FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 64);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D5DC3EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725D5FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 64) = -a2;
  }

  return result;
}

uint64_t sub_1D5DC3FD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4020()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F0B948();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D5DC4350(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B59654(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 108);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5DC4430(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D5B59654(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 108);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DC45C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DC4618@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DC4668()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC46B0()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DC46F4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC4744()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4780()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC47B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC47F0()
{
  v1 = v0[3];
  v2 = *(type metadata accessor for FeedItemFilterWrapperMatcher(0, v0[2], v1, v0[4]) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC48F0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4930()
{

  return swift_deallocObject();
}

double sub_1D5DC496C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1D5DC4978(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DC4990(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D5DC49EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4A34()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4B04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DC4BB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC4C9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4CD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4D0C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC4D4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DC4D58(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D5DC4D9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DC4DA8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5DC4DEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DC4DF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5DC4E48(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1D5DC4E98(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1D5DC4EE8(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_1D5DC4F2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DC4F7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DC4FCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DC501C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5DC506C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5DC50BC()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DC5100()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC5138()
{
  v1 = type metadata accessor for GroupLayoutContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC5364(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1D6D9F168();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 56);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5DC5410(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D6D9F168();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 56);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DC5568(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    sub_1D5B5B2A0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DC5614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1D5B5B2A0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DC56B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DebugInspectionArticleData(0);
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

uint64_t sub_1D5DC5778(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DebugInspectionArticleData(0);
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

uint64_t sub_1D5DC5834()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

id sub_1D5DC586C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DC58C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AA4C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D5DC590C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC5944@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DC5950(uint64_t a1, uint64_t a2)
{
  sub_1D6DAA658(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DC59B4(uint64_t a1, uint64_t a2)
{
  sub_1D6DAA238(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DC5A6C(__n128 a1)
{
  sub_1D6DAAC14(255, a1);
  sub_1D6DAAA60(255, v1);
  sub_1D6DAA924(255, v2);
  sub_1D6DAAAE4(v3);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D5DC5B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D725A19C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DC5BD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725A19C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC5C74()
{
  sub_1D60D6740(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_1D5DC5CD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DC5D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DC5D78()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC5DC0()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DC5E04()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DC5E44()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC5E94()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC5EE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC5F20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DC5F58()
{
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_1D6DB9DC8(0, &qword_1EDF3A908, MEMORY[0x1E69B4438]);
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    sub_1D6DB9E90(0);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC60C8()
{
  sub_1D6DB9DC8(0, &qword_1EDF3AA40, MEMORY[0x1E69B3F80]);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_1D6DB9DC8(0, &qword_1EDF3A908, MEMORY[0x1E69B4438]);
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    sub_1D6DB9E90(0);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC622C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC626C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC62A4()
{
  v1 = sub_1D726044C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC637C()
{
  v1 = sub_1D726044C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DC644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D604426C(0);
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

void sub_1D5DC6508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D604426C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D5DC65C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D6DBE520(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DC666C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D6DBE520(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DC6710(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D5C42D18(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DC67F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5C42D18(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DC68C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC6910()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5DC6960()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC699C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC69DC()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5DC6A78()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC6AB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DC6AE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC6B40()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC6BD8()
{
  sub_1D6DF0D78(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomLayoutData, sub_1D6DF00D4);
  v2 = v1;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v4 = type metadata accessor for DebugNewsroomLayoutData(0);
  v5 = *(v4 + 52);
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v3 + *(v2 + 36);

  v10 = *(v4 + 52);
  if (!v8(v9 + v10, 1, v6))
  {
    (*(v7 + 8))(v9 + v10, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC6E40()
{
  sub_1D6DF0D78(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomThemeData, sub_1D6DF0DE8);
  v2 = v1;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v4 = type metadata accessor for DebugNewsroomThemeData(0);
  v5 = *(v4 + 48);
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v3 + *(v2 + 36);

  v10 = *(v4 + 48);
  if (!v8(v9 + v10, 1, v6))
  {
    (*(v7 + 8))(v9 + v10, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DC7074()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC70AC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FormatFile(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DC7158(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatFile(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC7214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FormatContentPool(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D5DC7320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FormatContentPool(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D5DC7428()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC74A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC74E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC752C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC7574()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC75C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DC7614@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_1D5DC7664(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

void sub_1D5DC76AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
}

double sub_1D5DC76F0@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 192);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

void sub_1D5DC7740(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 200);
}

void sub_1D5DC7788(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 200) = v2;
}

uint64_t sub_1D5DC77CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 224);
}

uint64_t sub_1D5DC781C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 240);
  *a2 = *(v3 + 232);
  a2[1] = v4;
}

uint64_t sub_1D5DC786C()
{
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  swift_unownedRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D5DC7980()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC7A20@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1DA6F87C0]();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DC7A88()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC7AC0(uint64_t a1, uint64_t a2)
{
  sub_1D6E08CE4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DC7B40()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DC7B80()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC7BD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D725C08C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DC7C7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725C08C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC7D20(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DC7DCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC7E70()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC7EA8()
{

  swift_unknownObjectRelease();

  if (v0[14] != 1)
  {

    if (v0[18])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 15);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return swift_deallocObject();
}

uint64_t sub_1D5DC7F58()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));

  return swift_deallocObject();
}

uint64_t sub_1D5DC80C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC80FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC813C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC8174(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DC8220(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC82D4(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5DC8364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B7B644(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 64);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DC8430(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    sub_1D5B7B644(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 64);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DC84F0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC8530(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DC85DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC883C()
{
  sub_1D60D6740(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

void sub_1D5DC88A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

void sub_1D5DC88E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
}

uint64_t sub_1D5DC892C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC8964()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DC899C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC89F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FormatContent(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DC8A9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DC8C08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC8C40()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DC8C78()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC8CB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DC8D0C()
{

  return swift_deallocObject();
}

__n128 sub_1D5DC8D5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DC8D68()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC8DB0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DC8E00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DC8E50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_1D5DC8EA0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

void sub_1D5DC8EE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

double sub_1D5DC8F2C@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

void sub_1D5DC8F7C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

void sub_1D5DC8FC4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
}