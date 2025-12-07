void *sub_1C4605674()
{
  sub_1C440962C(v0 + 2);
  sub_1C440962C(v0 + 7);
  sub_1C440962C(v0 + 12);

  sub_1C440962C(v0 + 21);
  return v0;
}

uint64_t sub_1C46056BC()
{
  sub_1C4605674();

  return swift_deallocClassInstance();
}

void sub_1C4605764(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = -1;
  sub_1C4605810(a2, v8, 0x100000000);
  if (!v3 && v7 != 0.0)
  {
    sub_1C4605810(a2, a1, a3 | ((HIDWORD(a3) & 1) << 32));
  }
}

void sub_1C4605810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  sub_1C442DD80();
  if (v12)
  {
    v16 = -1;
  }

  else
  {
    v26 = v11;
    v27 = v10;
    v13 = *(v8 + 32);
    v14 = *(v8 + 16);
    v31[0] = *v8;
    v31[1] = v14;
    v32 = v13;
    v33 = v9;
    sub_1C461C100(v31);
    if (v4)
    {
      return;
    }

    v16 = v15;
    v11 = v26;
    v10 = v27;
  }

  if (v7 == 255)
  {
    v18 = -1;
    if ((a3 & 0x100000000) != 0)
    {
LABEL_11:
      v24 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
      sub_1C440F1BC();
      swift_beginAccess();
      sub_1C444FC44(*(v3 + v24), sel_lookupUnsmoothedA_b_);
      goto LABEL_12;
    }

LABEL_9:
    v19 = sub_1C4405898();
    v20 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v22 = v21 / v19;
    sub_1C440F1BC();
    swift_beginAccess();
    *&v23 = v22;
    [*(v3 + v20) lookupSmoothedWithBucketCount:200 distanceScale:v16 a:v18 b:v23];
LABEL_12:
    sub_1C460700C();
    sub_1C43FEC1C(v25);
    return;
  }

  v28[0] = v10;
  v28[1] = v11;
  v29 = v6;
  v30 = v7;
  sub_1C461C100(v28);
  if (!v4)
  {
    v18 = v17;
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }
}

void sub_1C46059D4()
{
  sub_1C440CAD8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10[1];
  v30 = *v10;
  v31 = v11;
  v12 = *(v10 + 4);
  v13 = *(v10 + 40);
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  if (v13 == 255)
  {
    v19 = -1;
  }

  else
  {
    v32[0] = v30;
    v32[1] = v31;
    v33 = v12;
    v34 = v13;
    v18 = v5(v32);
    if (v1)
    {
      goto LABEL_13;
    }

    v19 = v18;
  }

  sub_1C4607C70(v9, v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v20 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v17, 1, v20) == 1)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  sub_1C4607CD4(v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if ((v7 & 0x100000000) != 0)
  {
    v28 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    sub_1C440F1BC();
    swift_beginAccess();
    v27 = [*(v0 + v28) lookupUnsmoothedA:v19 b:v21];
  }

  else
  {
    v22 = sub_1C4405898();
    v23 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v25 = v24 / v22;
    sub_1C440F1BC();
    swift_beginAccess();
    *&v26 = v25;
    v27 = [*(v0 + v23) lookupSmoothedWithBucketCount:1 distanceScale:v19 a:v21 b:v26];
  }

  v29 = v3(v27);
  sub_1C43FEC1C(v29);
LABEL_13:
  sub_1C4402144();
  sub_1C441D144();
}

void sub_1C4605BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440C360();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1C442DD80();
  if (v37)
  {
    v39 = -1;
    if ((v33 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C441915C(v36);
    sub_1C461C100(v38);
    if (v27)
    {
      goto LABEL_11;
    }

    v39 = v36;
    if ((v33 & 1) == 0)
    {
LABEL_8:
      a10 = v35;
      v36 = sub_1C4616D1C(&a10);
      v40 = v36;
      if ((v31 & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  v40 = -1;
  if ((v31 & 0x100000000) == 0)
  {
LABEL_9:
    v42 = sub_1C4405898();
    v43 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v45 = v44 / v42;
    sub_1C4411868(v46);
    *&v47 = v45;
    [*(v26 + v43) lookupSmoothedWithBucketCount:7 distanceScale:v39 a:v40 b:v47];
    goto LABEL_10;
  }

LABEL_6:
  v41 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  sub_1C4411868(v36);
  sub_1C444FC44(*(v26 + v41), sel_lookupUnsmoothedA_b_);
LABEL_10:
  sub_1C460700C();
  sub_1C43FEC1C(v48);
LABEL_11:
  sub_1C443F0F8();
}

void sub_1C4605CC4()
{
  sub_1C440C360();
  sub_1C4402C8C();
  if (v6)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C43FE990();
    v5 = sub_1C461BFE4();
    if (v0)
    {
      goto LABEL_12;
    }

    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868(v5);
    sub_1C444FC44(*(v1 + v11), sel_lookupUnsmoothedA_b_);
    goto LABEL_11;
  }

  sub_1C441915C(v5);
  sub_1C461C118(v7);
  v0 = v2;
  if (v2)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v3 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1C4405898();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C4411868(v9);
  sub_1C440F320(*(v1 + v8), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v10);
LABEL_11:
  sub_1C4607458();
  sub_1C43FEC1C(v12);
LABEL_12:
  sub_1C443F0F8();
}

void sub_1C4605D9C()
{
  sub_1C440C360();
  sub_1C4402C8C();
  if (v6)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C43FE990();
    v5 = sub_1C461BFE4();
    if (v0)
    {
      goto LABEL_12;
    }

    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868(v5);
    sub_1C444FC44(*(v1 + v11), sel_lookupUnsmoothedA_b_);
    goto LABEL_11;
  }

  sub_1C441915C(v5);
  sub_1C461C118(v7);
  v0 = v2;
  if (v2)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v3 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1C4405898();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C4411868(v9);
  sub_1C440F320(*(v1 + v8), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v10);
LABEL_11:
  sub_1C460700C();
  sub_1C43FEC1C(v12);
LABEL_12:
  sub_1C443F0F8();
}

void sub_1C4605E84()
{
  sub_1C440C360();
  sub_1C4402C8C();
  if (v6)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C43FE990();
    v5 = sub_1C461BFE4();
    if (v0)
    {
      goto LABEL_12;
    }

    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868(v5);
    sub_1C444FC44(*(v1 + v11), sel_lookupUnsmoothedA_b_);
    goto LABEL_11;
  }

  sub_1C441915C(v5);
  sub_1C461C118(v7);
  v0 = v2;
  if (v2)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v3 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1C4405898();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C4411868(v9);
  sub_1C440F320(*(v1 + v8), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v10);
LABEL_11:
  v12 = sub_1C4607208();
  sub_1C43FEC1C(v12);
LABEL_12:
  sub_1C443F0F8();
}

void sub_1C4605F5C()
{
  sub_1C440CAD8();
  v36 = v2;
  v4 = v3[1];
  v31 = *v3;
  v32 = v4;
  v5 = *(v3 + 4);
  v6 = *(v3 + 40);
  v7 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  if (v6 == 255)
  {
    v19 = -1;
  }

  else
  {
    v33[0] = v31;
    v33[1] = v32;
    v34 = v5;
    v35 = v6;
    sub_1C461C118(v33);
    if (v1)
    {
      goto LABEL_15;
    }

    v19 = v18;
  }

  v20 = sub_1C4415864();
  sub_1C4607C70(v20, v21, v22, v23);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4607CD4(v10, &qword_1EC0B9DC8, &unk_1C4F124A0);
    v24 = -1;
  }

  else
  {
    v25 = sub_1C43FD018();
    v26(v25);
    v27 = sub_1C4613268(v17);
    if (v1)
    {
      (*(v13 + 8))(v17, v11);
      goto LABEL_15;
    }

    v24 = v27;
    (*(v13 + 8))(v17, v11);
  }

  v28 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  if ((v36 & 0x100000000) != 0)
  {
    [*(v0 + v28) lookupUnsmoothedA:v19 b:v24];
  }

  else
  {
    *&v29 = 1.0 / *&v36;
    [*(v0 + v28) lookupSmoothedWithBucketCount:30 distanceScale:v19 a:v24 b:v29];
  }

  sub_1C4607458();
  sub_1C43FEC1C(v30);
LABEL_15:
  sub_1C4402144();
  sub_1C441D144();
}

void sub_1C4606218(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v9 = v7;
  sub_1C442DD80();
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    if ((a4 & 0x100000000) != 0)
    {
LABEL_10:
      v20 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
      sub_1C4411868(v13);
      sub_1C444FC44(*(v6 + v20), sel_lookupUnsmoothedA_b_);
      goto LABEL_11;
    }

LABEL_8:
    sub_1C4405898();
    v17 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868(v18);
    sub_1C440F320(*(v6 + v17), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v19);
LABEL_11:
    sub_1C460700C();
    sub_1C43FEC1C(v21);
    return;
  }

  v15 = sub_1C441915C(v13);
  v13 = v16(v15);
  v9 = v7;
  if (v7)
  {
    return;
  }

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = a6(a2);
  if (!v9)
  {
    if ((a4 & 0x100000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }
}

void sub_1C460632C()
{
  sub_1C440C360();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1C442DD80();
  if (v10)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_1C441915C(v9);
    sub_1C461C118(v11);
    v2 = v1;
    if (v1)
    {
      goto LABEL_12;
    }

    if ((v6 & 1) == 0)
    {
LABEL_4:
      v9 = sub_1C461C130(v8);
      if (v2)
      {
        goto LABEL_12;
      }

      if ((v4 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  if ((v4 & 0x100000000) != 0)
  {
LABEL_10:
    v15 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868(v9);
    sub_1C444FC44(*(v0 + v15), sel_lookupUnsmoothedA_b_);
    goto LABEL_11;
  }

LABEL_8:
  sub_1C4405898();
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C4411868(v13);
  sub_1C440F320(*(v0 + v12), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v14);
LABEL_11:
  sub_1C4607458();
  sub_1C43FEC1C(v16);
LABEL_12:
  sub_1C443F0F8();
}

void sub_1C460649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440CAD8();
  sub_1C4425910(v17, v18, v19, v20, v21, v22);
  v23 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v23);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C442EAA4();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  if (v16 == 255)
  {
    v28 = -1;
  }

  else
  {
    v26 = sub_1C4404C0C();
    v27 = v14(v26);
    if (v11)
    {
      goto LABEL_13;
    }

    v28 = v27;
  }

  sub_1C4607C70(v38, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C446BE1C(v15);
  if (v29)
  {
    sub_1C4607CD4(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v13 = -1;
  }

  else
  {
    v30 = sub_1C4415F70();
    v31(v30);
    v37(v12);
    v32 = sub_1C4402184();
    v33(v32);
  }

  v34 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  if ((a10 & 0x100000000) != 0)
  {
    [*(v10 + v34) lookupUnsmoothedA:v28 b:v13];
  }

  else
  {
    sub_1C440BB70(*(v10 + v34), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v35);
  }

  sub_1C4607620();
  sub_1C43FEC1C(v36);
LABEL_13:
  sub_1C4402144();
  sub_1C441D144();
}

void sub_1C4606718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440CAD8();
  sub_1C4425910(v17, v18, v19, v20, v21, v22);
  v23 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v23);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C442EAA4();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  if (v16 == 255)
  {
    v28 = -1;
  }

  else
  {
    v26 = sub_1C4404C0C();
    v27 = v14(v26);
    if (v11)
    {
      goto LABEL_13;
    }

    v28 = v27;
  }

  sub_1C4607C70(v38, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C446BE1C(v15);
  if (v29)
  {
    sub_1C4607CD4(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v13 = -1;
  }

  else
  {
    v30 = sub_1C4415F70();
    v31(v30);
    v37(v12);
    v32 = sub_1C4402184();
    v33(v32);
  }

  v34 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  if ((a10 & 0x100000000) != 0)
  {
    [*(v10 + v34) lookupUnsmoothedA:v28 b:v13];
  }

  else
  {
    sub_1C440BB70(*(v10 + v34), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v35);
  }

  sub_1C460700C();
  sub_1C43FEC1C(v36);
LABEL_13:
  sub_1C4402144();
  sub_1C441D144();
}

double sub_1C460691C()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  swift_beginAccess();
  v12 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4607C70(v11 + *(v12 + 20), v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    sub_1C4607CD4(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 1.0;
  }

  else
  {
    v14 = (*(v5 + 32))(v10, v3, v4);
    (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource))(v14);
    sub_1C4EF9B78();
    v13 = 1.0;
    if (v15 > 0.0)
    {
      v13 = exp2(v15 / -1209600.0);
    }

    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
  }

  return v13;
}

double sub_1C4606B6C()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  swift_beginAccess();
  v12 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4607C70(v11 + *(v12 + 20), v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    sub_1C4607CD4(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 1.0;
  }

  else
  {
    v14 = (*(v5 + 32))(v10, v3, v4);
    (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource))(v14);
    sub_1C4EF9B78();
    v13 = 1.0;
    if (v15 > 0.0)
    {
      v13 = exp2(v15 / -21600.0);
    }

    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
  }

  return v13;
}

double sub_1C4606DBC()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  swift_beginAccess();
  v12 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4607C70(v11 + *(v12 + 20), v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    sub_1C4607CD4(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 1.0;
  }

  else
  {
    v14 = (*(v5 + 32))(v10, v3, v4);
    (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource))(v14);
    sub_1C4EF9B78();
    v13 = 1.0;
    if (v15 > 0.0)
    {
      v13 = exp2(v15 / -604800.0);
    }

    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
  }

  return v13;
}

void sub_1C460700C()
{
  sub_1C43FEC28();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-v7];
  v9 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23[-v14];
  v16 = v0 + *v4;
  sub_1C440F1BC();
  swift_beginAccess();
  v17 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4607C70(v16 + *(v17 + 20), v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C440582C(v8);
  if (v18)
  {
    sub_1C4607CD4(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v19 = (*(v11 + 32))(v15, v8, v9);
    (*(v0 + *v2))(v19);
    sub_1C4EF9B78();
    if (v20 > 0.0)
    {
      exp2(v20 / -2592000.0);
    }

    v21 = *(v11 + 8);
    v22 = sub_1C43FD024();
    v21(v22);
    (v21)(v15, v9);
  }

  sub_1C440C378();
  sub_1C44086C4();
}

double sub_1C4607208()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  swift_beginAccess();
  v12 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4607C70(v11 + *(v12 + 20), v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    sub_1C4607CD4(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 1.0;
  }

  else
  {
    v14 = (*(v5 + 32))(v10, v3, v4);
    (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource))(v14);
    sub_1C4EF9B78();
    v13 = 1.0;
    if (v15 > 0.0)
    {
      v13 = exp2(v15 / -15768000.0);
    }

    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v10, v4);
  }

  return v13;
}

void sub_1C4607458()
{
  sub_1C43FEC28();
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4460188();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  sub_1C440F1BC();
  swift_beginAccess();
  v12 = type metadata accessor for DecayingHistogramState(0);
  sub_1C441C0D8(v12);
  sub_1C440582C(v1);
  if (v13)
  {
    sub_1C4607CD4(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v14 = sub_1C441584C();
    v16 = v15(v14);
    (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource))(v16);
    sub_1C4EF9B78();
    if (v17 > 0.0)
    {
      exp2(v17 / -3456000.0);
    }

    v18 = *(v6 + 8);
    v18(v10, v4);
    v19 = sub_1C43FD024();
    (v18)(v19);
  }

  sub_1C440C378();
  sub_1C44086C4();
}

void sub_1C4607620()
{
  sub_1C43FEC28();
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4460188();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  sub_1C440F1BC();
  swift_beginAccess();
  v12 = type metadata accessor for DecayingHistogramState(0);
  sub_1C441C0D8(v12);
  sub_1C440582C(v1);
  if (v13)
  {
    sub_1C4607CD4(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v14 = sub_1C441584C();
    v16 = v15(v14);
    (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource))(v16);
    sub_1C4EF9B78();
    if (v17 > 0.0)
    {
      exp2(v17 / -5184000.0);
    }

    v18 = *(v6 + 8);
    v18(v10, v4);
    v19 = sub_1C43FD024();
    (v18)(v19);
  }

  sub_1C440C378();
  sub_1C44086C4();
}

uint64_t sub_1C4607804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C460784C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1C43FCE64();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v58[3] = v21;
  v58[4] = v22;
  v45 = sub_1C4422F90(v58);
  (*(v16 + 32))(v45, a1, a6);
  v57[3] = a8;
  v57[4] = a11;
  sub_1C4422F90(v57);
  sub_1C440A6B8();
  (*(v23 + 32))();
  v56[3] = a7;
  v56[4] = a10;
  sub_1C4422F90(v56);
  sub_1C440A6B8();
  (*(v24 + 32))();
  sub_1C448BD48(v58, v55);
  sub_1C448BD48(v57, v54);
  sub_1C448BD48(v56, v53);
  sub_1C448BD48(v57, v50);
  sub_1C4418280(v50, v51);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v27 = sub_1C443FA8C(v26);
  v28(v27);
  v29 = *a1;
  (*(v16 + 16))(v20, v45, a6);
  v30 = sub_1C469A798(v20, v29, a6, a9);
  sub_1C440962C(v50);
  sub_1C4418280(v54, v54[3]);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v33 = sub_1C443FA8C(v32);
  v34(v33);
  v35 = *a1;
  v36 = type metadata accessor for BehaviorDatabaseEventTracker();
  v51 = v36;
  v52 = &off_1F43E2390;
  v50[0] = v35;
  v48 = type metadata accessor for BehaviorEventTimeIntervalCalculator();
  v49 = &off_1F43E6980;
  *&v47 = v30;
  v37 = swift_allocObject();
  sub_1C4418280(v50, v36);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v41 = (v40 - v39);
  (*(v42 + 16))(v40 - v39);
  v43 = *v41;
  v37[10] = v36;
  v37[11] = &off_1F43E2390;
  v37[7] = v43;
  v37[18] = 0x413BAF8000000000;
  sub_1C440962C(v56);
  sub_1C440962C(v57);
  sub_1C440962C(v58);
  v37[19] = 0xD000000000000023;
  v37[20] = 0x80000001C4F8DA80;
  sub_1C441D670(v55, (v37 + 2));
  sub_1C441D670(v53, (v37 + 12));
  v37[17] = a4;
  sub_1C441D670(&v47, (v37 + 21));
  sub_1C440962C(v50);
  sub_1C440962C(v54);
  return v37;
}

uint64_t sub_1C4607C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C440A6B8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4607CD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C456902C(a2, a3);
  sub_1C440A6B8();
  (*(v4 + 8))(a1);
  return a1;
}

_OWORD *sub_1C4607D48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v228 = a2;
  v229 = a1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBFDC();
  v220 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  v222 = &v214 - v7;
  v8 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v223 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v224 = (&v214 - v14);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  v221 = &v214 - v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v214 - v18;
  v227 = v3;
  v20 = v3[2];
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  sub_1C440F1BC();
  swift_beginAccess();
  v22 = v10 + 16;
  v23 = *(v10 + 16);
  v225 = v21;
  v24 = sub_1C442593C();
  v23(v24);
  sub_1C4498DE4(&qword_1EDDFCD70, MEMORY[0x1E6969548]);
  LOBYTE(v21) = sub_1C4F01068();
  v218 = v10;
  v25 = v10 + 8;
  v26 = *(v10 + 8);
  v26(v19, v8);
  v226 = v23;
  if ((v21 & 1) == 0)
  {
    v27 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
    sub_1C440F1BC();
    swift_beginAccess();
    v217 = v27;
    v28 = sub_1C442593C();
    v23(v28);
    v29 = sub_1C4F01068();
    v26(v19, v8);
    if ((v29 & 1) == 0)
    {
      v223 = v19;
      v224 = v26;
      v219 = v22;
      v106 = v8;
      v229 = v25;
      v107 = v20;
      v108 = v227;
      sub_1C440F1BC();
      swift_beginAccess();
      sub_1C44600A0((v108 + 20), &v233, &qword_1EC0B9DD0, &qword_1C4F12550);
      if (v234)
      {
        sub_1C460986C(&v233, &v235);
        return sub_1C460986C(&v235, v228);
      }

      sub_1C4423A0C(&v233, &qword_1EC0B9DD0, &qword_1C4F12550);
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v119 = sub_1C4F00978();
      v120 = sub_1C442B738(v119, qword_1EDE2DDE0);
      v121 = sub_1C4F00968();
      v122 = sub_1C4F01CC8();
      if (sub_1C43FD0E8(v122))
      {
        v123 = sub_1C43FCED0();
        sub_1C4433150(v123);
        sub_1C440A62C(&dword_1C43F8000, v124, v125, "CachedBehaviorFeaturizerProvider: Creating new featurizer since one was not already cached");
        sub_1C4412D04();
      }

      sub_1C442E860((v108 + 3), &v235);
      v127 = v108[18];
      v126 = v108[19];
      sub_1C442B95C();
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v128);
      v130 = sub_1C441917C(v129, v214);
      v131(v130);
      v132 = *v29;

      v215 = v127;
      v133 = sub_1C46093E4(v107, v132, v126, v127);
      sub_1C440962C(&v235);
      v216 = v133;
      v134 = v222;
      sub_1C446FB00();
      if (sub_1C44157D4(v134, 1, v106) == 1)
      {
        v135 = sub_1C4F00968();
        v136 = sub_1C4F01CF8();
        if (sub_1C43FD0E8(v136))
        {
          v137 = sub_1C43FCED0();
          sub_1C4433150(v137);
          sub_1C440A62C(&dword_1C43F8000, v138, v139, "CachedBehaviorFeaturizerProvider: Creating new featurizer without cached context since the featurizer has no stored state indicating what interval it will query over.");
          sub_1C4412D04();
        }

        v229 = type metadata accessor for BehaviorFeaturizer();
        sub_1C442E860(v107 + 16, &v235);
        sub_1C442E860((v108 + 3), &v233);
        sub_1C442E860(v107 + 16, v232);
        sub_1C442E860((v108 + 13), v231);
        sub_1C442E860((v108 + 8), v230);
        sub_1C440DF00();
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v140);
        v142 = sub_1C441917C(v141, v214);
        v143(v142);
        sub_1C43FBFF0();
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v144);
        sub_1C43FBCC4();
        v146 = sub_1C43FFE0C(v145);
        v147(v146);
        v148 = sub_1C4411888();
        v152 = sub_1C45EC8F8(v148, v149, v150, v151, v120);
        sub_1C440962C(v232);
        sub_1C440962C(v230);
        v153 = v236;
        v154 = v237;
        sub_1C442B95C();
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v155);
        sub_1C43FBCC4();
        v157 = sub_1C4412CF0(v156);
        v158(v157);
        sub_1C4418280(&v233, v234);
        sub_1C43FCE64();
        MEMORY[0x1EEE9AC00](v159);
        sub_1C43FBCC4();
        v161 = sub_1C4402CB8(v160);
        v162(v161);
        v232[0] = v152;
        v163 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
        v164 = type metadata accessor for BehaviorDatabaseEventTracker();
        v165 = v215;

        v166 = v165;
        v167 = v229;
        sub_1C460784C(v120, &v214, v232, v166, v229, v153, v163, v164, v154, &off_1F43E24F0, &off_1F43E2390);
        sub_1C440F340();
        sub_1C440962C(&v235);
        v168 = v228;
        v228[3] = v167;
        v168[4] = &off_1F43E2F70;
        v168[5] = &off_1F43E2F40;

        *v168 = v153;
LABEL_25:
        v169 = v222;
        return sub_1C4423A0C(v169, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }

      v170 = v220;
      sub_1C44600A0(v134, v220, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (sub_1C44157D4(v170, 1, v106) == 1)
      {
        sub_1C4423A0C(v170, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }

      else
      {
        (*(v218 + 32))(v221, v170, v106);
        v174 = v226;
        v220 = v107;
        v175 = v223;
        v226(v223, &v225[v107], v106);
        v176 = sub_1C4EF9C18();
        v177 = v224;
        v224(v175, v106);
        if (v176 & 1) != 0 || (v174(v175, v220 + v217, v106), v178 = sub_1C4EF9C08(), v177(v175, v106), (v178))
        {
          v226 = v106;
          v179 = sub_1C4F00968();
          v180 = sub_1C4F01CF8();
          if (sub_1C43FD0E8(v180))
          {
            v181 = sub_1C43FCED0();
            sub_1C4433150(v181);
            sub_1C440A62C(&dword_1C43F8000, v182, v183, "CachedBehaviorFeaturizerProvider: Creating new featurizer without cached context since the featurizer's state doesn't match the cache provider.");
            sub_1C4412D04();
          }

          v184 = type metadata accessor for BehaviorFeaturizer();
          sub_1C442E860(v107 + 16, &v235);
          sub_1C442E860((v108 + 3), &v233);
          sub_1C442E860(v107 + 16, v232);
          sub_1C442E860((v108 + 13), v231);
          sub_1C442E860((v108 + 8), v230);
          sub_1C440DF00();
          sub_1C43FCE64();
          MEMORY[0x1EEE9AC00](v185);
          v187 = sub_1C441917C(v186, v214);
          v188(v187);
          v189 = v232[4];
          sub_1C4418280(v232, v232[3]);
          sub_1C43FEC44();
          sub_1C43FCE64();
          MEMORY[0x1EEE9AC00](v190);
          sub_1C43FBCC4();
          v192 = sub_1C43FFE0C(v191);
          v193(v192);
          v194 = sub_1C4411888();
          v198 = sub_1C45EC8F8(v194, v195, v196, v197, v189);
          sub_1C440962C(v232);
          sub_1C440962C(v230);
          v199 = v236;
          v200 = v237;
          sub_1C442B95C();
          v227 = &v214;
          sub_1C43FCE64();
          MEMORY[0x1EEE9AC00](v201);
          sub_1C43FBCC4();
          v204 = (v203 - v202);
          (*(v205 + 16))(v203 - v202);
          sub_1C4418280(&v233, v234);
          sub_1C43FEC44();
          sub_1C43FCE64();
          MEMORY[0x1EEE9AC00](v206);
          sub_1C43FBCC4();
          v208 = sub_1C4402CB8(v207);
          v209(v208);
          v232[0] = v198;
          v210 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
          v211 = type metadata accessor for BehaviorDatabaseEventTracker();
          v212 = v215;

          sub_1C460784C(v204, &v214, v232, v212, v184, v199, v210, v211, v200, &off_1F43E24F0, &off_1F43E2390);
          sub_1C440F340();
          sub_1C440962C(&v235);
          v213 = v228;
          v228[3] = v184;
          v213[4] = &off_1F43E2F70;
          v213[5] = &off_1F43E2F40;

          *v213 = v199;
          v224(v221, v226);
          goto LABEL_25;
        }

        v177(v221, v106);
      }

      v171 = type metadata accessor for BehaviorFeaturizer();
      v237 = &off_1F43E2F70;
      v238 = &off_1F43E2F40;
      v236 = v171;
      v172 = v216;
      *&v235 = v216;
      sub_1C4434E40();

      sub_1C46097FC(&v235, (v108 + 20));
      swift_endAccess();
      v173 = v228;
      v228[3] = v171;
      v173[4] = &off_1F43E2F70;
      v173[5] = &off_1F43E2F40;
      *v173 = v172;
      v169 = v134;
      return sub_1C4423A0C(v169, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  v30 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
  sub_1C440F1BC();
  swift_beginAccess();
  v31 = sub_1C442593C();
  v23(v31);
  v32 = sub_1C4EF9C08();
  v26(v19, v8);
  if (v32)
  {
    v33 = v25;
    v34 = v26;
    v35 = sub_1C442593C();
    v37 = v36;
    v38 = v226;
    (v226)(v35);
    v39 = v8;
    v229 = v33;
    v40 = v224;
    v38(v224, &v225[v37], v8);
    sub_1C4EF9B78();
    v34(v40, v8);
    v41 = sub_1C440A6C4();
    (v34)(v41);
    v38(v19, (v37 + v30), v8);
    v222 = v30;
    v42 = v223;
    v219 = v22;
    v38(v223, (v37 + v30), v39);
    v43 = v38;
    sub_1C4EF9BE8();
    v34(v42, v39);
    v44 = v34;
    v45 = v37;
    sub_1C466A824(v19, v40);
    v44(v40, v39);
    v46 = sub_1C440A6C4();
    v224 = v44;
    (v44)(v46);
    v47 = v227;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v48 = sub_1C4F00978();
    sub_1C442B738(v48, qword_1EDE2DDE0);

    v49 = sub_1C4F00968();
    v50 = sub_1C4F01CB8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      LODWORD(v221) = v50;
      v52 = v51;
      v223 = swift_slowAlloc();
      *&v235 = v223;
      *v52 = 136315394;
      v53 = sub_1C440D0DC();
      v43(v53);
      v220 = sub_1C4498DE4(&qword_1EDDFCD50, MEMORY[0x1E6969570]);
      v225 = v49;
      v54 = sub_1C4F02858();
      v56 = v55;
      v57 = sub_1C440A6C4();
      v58 = v224;
      (v224)(v57);
      v59 = sub_1C441D828(v54, v56, &v235);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      v60 = sub_1C440D0DC();
      (v226)(v60);
      v61 = sub_1C4F02858();
      v63 = v62;
      v64 = sub_1C440A6C4();
      v58(v64);
      v65 = sub_1C441D828(v61, v63, &v235);

      *(v52 + 14) = v65;
      v66 = v225;
      _os_log_impl(&dword_1C43F8000, v225, v221, "CachedBehaviorFeaturizerProvider: Moving cache forward to %s until %s", v52, 0x16u);
      v67 = v223;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v67, -1, -1);
      sub_1C4412D04();
    }

    else
    {
    }

    sub_1C442E860((v47 + 3), &v235);
    v110 = v47[18];
    v109 = v47[19];
    sub_1C4418280(&v235, v236);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v111);
    sub_1C43FBCC4();
    v113 = sub_1C4412CF0(v112);
    v114(v113);
    v115 = *v39;

    v116 = sub_1C46093E4(v45, v115, v109, v110);
    sub_1C440962C(&v235);
    v117 = type metadata accessor for BehaviorFeaturizer();
    v237 = &off_1F43E2F70;
    v238 = &off_1F43E2F40;
    v236 = v117;
    *&v235 = v116;
    sub_1C4434E40();

    sub_1C46097FC(&v235, (v47 + 20));
    result = swift_endAccess();
    v118 = v228;
    v228[3] = v117;
    v118[4] = &off_1F43E2F70;
    v118[5] = &off_1F43E2F40;
    *v118 = v116;
  }

  else
  {
    v68 = v227;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v69 = sub_1C4F00978();
    sub_1C442B738(v69, qword_1EDE2DDE0);
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v71))
    {
      v72 = sub_1C43FCED0();
      sub_1C4433150(v72);
      sub_1C440A62C(&dword_1C43F8000, v73, v74, "CachedBehaviorFeaturizerProvider error: Received non-sequential date");
      sub_1C4412D04();
    }

    v229 = type metadata accessor for BehaviorFeaturizer();
    sub_1C442E860(v20 + 16, &v235);
    sub_1C442E860(v68 + 24, &v233);
    sub_1C442E860(v20 + 16, v232);
    sub_1C442E860(v68 + 104, v231);
    sub_1C442E860(v68 + 64, v230);
    sub_1C440DF00();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v75);
    v77 = sub_1C441917C(v76, v214);
    v78(v77);
    sub_1C43FBFF0();
    sub_1C43FEC44();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v79);
    sub_1C43FBCC4();
    v81 = sub_1C43FFE0C(v80);
    v82(v81);
    v83 = sub_1C4411888();
    v87 = sub_1C45EC8F8(v83, v84, v85, v86, v68);
    sub_1C440962C(v232);
    sub_1C440962C(v230);
    v88 = *(v68 + 144);
    v89 = v236;
    v90 = v237;
    sub_1C442B95C();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v91);
    sub_1C43FBCC4();
    v93 = sub_1C4412CF0(v92);
    v94(v93);
    sub_1C4418280(&v233, v234);
    sub_1C43FEC44();
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v95);
    sub_1C43FBCC4();
    v98 = v97 - v96;
    (*(v99 + 16))(v97 - v96);
    v232[0] = v87;
    v100 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
    v101 = type metadata accessor for BehaviorDatabaseEventTracker();

    v102 = v88;
    v103 = v229;
    sub_1C460784C(v68, v98, v232, v102, v229, v89, v100, v101, v90, &off_1F43E24F0, &off_1F43E2390);
    sub_1C440F340();
    result = sub_1C440962C(&v235);
    v105 = v228;
    v228[3] = v103;
    v105[4] = &off_1F43E2F70;
    v105[5] = &off_1F43E2F40;
    *v105 = v89;
  }

  return result;
}

uint64_t sub_1C460924C()
{
  sub_1C440F1BC();
  swift_beginAccess();
  if (!*(v0 + 184) || (sub_1C4609884(v0 + 160, &v5), v2 = *(&v6 + 1), v3 = *(&v7 + 1), sub_1C4409678(&v5, *(&v6 + 1)), (*(v3 + 16))(v2, v3), result = sub_1C440962C(&v5), !v1))
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    swift_beginAccess();
    sub_1C46097FC(&v5, v0 + 160);
    return swift_endAccess();
  }

  return result;
}

void *sub_1C460932C()
{

  sub_1C440962C(v0 + 3);
  sub_1C440962C(v0 + 8);
  sub_1C440962C(v0 + 13);

  sub_1C4423A0C((v0 + 20), &qword_1EC0B9DD0, &qword_1C4F12550);
  return v0;
}

uint64_t sub_1C460938C()
{
  sub_1C460932C();

  return swift_deallocClassInstance();
}

void *sub_1C46093E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = type metadata accessor for CachedContextProvider(0);
  v49[3] = v7;
  v49[4] = &off_1F43E5FE8;
  v49[0] = a1;
  v8 = type metadata accessor for BehaviorDatabaseEventTracker();
  v48[3] = v8;
  v48[4] = &off_1F43E2390;
  v48[0] = a2;
  v47[3] = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
  v47[4] = &off_1F43E24F0;
  v47[0] = a3;
  sub_1C442E860(v49, v46);
  sub_1C442E860(v48, v45);
  sub_1C442E860(v47, v44);
  sub_1C442E860(v48, v41);
  v9 = sub_1C4418280(v41, v42);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  v39 = v7;
  v40 = &off_1F43E5FE8;
  v37[4] = &off_1F43E2390;
  *&v38 = a1;
  v37[3] = v8;
  v37[0] = v14;
  v15 = type metadata accessor for BehaviorEventTimeIntervalCalculator();
  v16 = swift_allocObject();
  v17 = sub_1C4418280(v37, v8);
  v18 = *(v8 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = *(v18 + 16);
  v22(&v35 - v21, v20);
  v23 = *(&v35 - v21);
  v16[10] = v8;
  v16[11] = &off_1F43E2390;
  v16[7] = v23;
  sub_1C441D670(&v38, (v16 + 2));

  sub_1C440962C(v37);
  sub_1C440962C(v41);
  v24 = sub_1C4418280(v45, v45[3]);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v42 = v8;
  v43 = &off_1F43E2390;
  v41[0] = v29;
  v39 = v15;
  v40 = &off_1F43E6980;
  *&v38 = v16;
  type metadata accessor for BehaviorFeaturizer();
  v30 = swift_allocObject();
  v31 = sub_1C4418280(v41, v8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v22(&v35 - v21, v32);
  v33 = *(&v35 - v21);
  v30[10] = v8;
  v30[11] = &off_1F43E2390;
  v30[7] = v33;
  v30[18] = 0x413BAF8000000000;
  sub_1C440962C(v47);
  sub_1C440962C(v48);
  sub_1C440962C(v49);
  v30[19] = 0xD000000000000023;
  v30[20] = 0x80000001C4F8DA80;
  sub_1C441D670(v46, (v30 + 2));
  sub_1C441D670(v44, (v30 + 12));
  v30[17] = v36;
  sub_1C441D670(&v38, (v30 + 21));
  sub_1C440962C(v41);
  sub_1C440962C(v45);
  return v30;
}

uint64_t sub_1C46097FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9DD0, &qword_1C4F12550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C460986C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1C4609884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C46098E8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B01C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4618BE4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C4609954(char a1)
{
  switch(a1)
  {
    case 1:
      result = type metadata accessor for DayOfWeekBehaviorHistogram(0);
      break;
    case 2:
      result = type metadata accessor for TrendingBehaviorHistogram(0);
      break;
    case 3:
      result = type metadata accessor for ShortTermTrendingBehaviorHistogram(0);
      break;
    case 4:
      result = type metadata accessor for LongTermTrendingBehaviorHistogram(0);
      break;
    case 5:
      result = type metadata accessor for PreviousBehaviorHistogram(0);
      break;
    case 6:
      result = type metadata accessor for MicroLocationBehaviorHistogram(0);
      break;
    case 7:
      result = type metadata accessor for SpecificGeoHashBehaviorHistogram(0);
      break;
    case 8:
      result = type metadata accessor for CoarseGeoHashBehaviorHistogram(0);
      break;
    case 9:
      result = type metadata accessor for LargeGeoHashBehaviorHistogram(0);
      break;
    case 10:
      result = type metadata accessor for LocationOfInterestBehaviorHistogram(0);
      break;
    case 11:
      result = type metadata accessor for WiFiBehaviorHistogram(0);
      break;
    case 12:
      result = type metadata accessor for FocusModeBehaviorHistogram(0);
      break;
    case 13:
      result = type metadata accessor for MotionStateBehaviorHistogram(0);
      break;
    case 14:
      result = type metadata accessor for PartOfDayBehaviorHistogram(0);
      break;
    case 15:
      result = type metadata accessor for PartOfWeekBehaviorHistogram(0);
      break;
    default:
      result = type metadata accessor for TimeOfDayBehaviorHistogram(0);
      break;
  }

  return result;
}

void sub_1C4609AC8()
{
  sub_1C43FE628();
  v2 = v1;
  v169 = v3;
  v157 = v4;
  v170 = v5;
  sub_1C44016B0(v6);
  v7 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v168 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v165 = v10;
  v167 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v163 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v164 = v15;
  sub_1C43FBE44();
  v16 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD230();
  v158 = v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C440D100();
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v146 - v29;
  v31 = *(v2 + 16);
  if (v31)
  {
    v154 = v28;
    v159 = v27;
    v160 = v26;
    v161 = v7;
    v171 = v0;
    v172 = v2;
    v32 = *(v2 + 40);
    swift_getObjectType();
    v174 = v18;
    v175 = v16;
    v33 = *(v32 + 64);
    swift_unknownObjectRetain();
    v34 = sub_1C4404C28();
    v33(v34);
    v36 = v174;
    v35 = v175;
    swift_unknownObjectRelease();
    v37 = v36 + 32;
    v38 = sub_1C44191B8();
    v173 = v39;
    v40 = (v39)(v38);
    MEMORY[0x1EEE9AC00](v40);
    *(&v146 - 2) = v30;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v41 = v171;
    sub_1C4B344BC();
    v43 = *(v42 + 16);

    if (v43 == v31)
    {
      MEMORY[0x1EEE9AC00](v44);
      v45 = v170;
      *(&v146 - 2) = v170;
      sub_1C4D37344(sub_1C46184A0, (&v146 - 4), v46);
      v171 = v41;
      v47 = *(v36 + 16);
      v156 = v36 + 16;
      v155 = v47;
      v47(v154, v30, v35);
      v48 = sub_1C4402CD0();
      v50 = v49(v48);
      v51 = *MEMORY[0x1E69A9420];
      v166 = v30;
      if (v50 == v51)
      {
        v52 = v168[2];
        v53 = sub_1C440C384((v168 + 2));
        v52(v53);
        sub_1C4409A84();
        sub_1C440BAA8(v54, v55, v56, v57);
        v58 = v163;
        v153 = v52;
        (v52)(v163, v170, v41);
        sub_1C4409A84();
        sub_1C440BAA8(v59, v60, v61, v62);
        sub_1C44191B8();
        v63 = v169;
        sub_1C466A96C();
        v65 = v64;
        sub_1C4420C3C(v58, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v66 = sub_1C44191B8();
        sub_1C4420C3C(v66, v67, qword_1C4F0D2D0);
        sub_1C44016B0(v65);
      }

      else
      {
        v152 = v157[3];
        v151 = v157[4];
        v157 = sub_1C4409678(v157, v152);
        v79 = v168[2];
        v80 = sub_1C440C384((v168 + 2));
        v79(v80);
        sub_1C4409A84();
        sub_1C440BAA8(v81, v82, v83, v84);
        v85 = v163;
        v153 = v79;
        (v79)(v163, v45, v41);
        v36 = v174;
        v35 = v175;
        sub_1C4409A84();
        sub_1C440BAA8(v86, v87, v88, v89);
        v90 = sub_1C44191B8();
        v92 = v91(v90);
        sub_1C44016B0(v92);
        sub_1C4420C3C(v85, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C4420C3C(v30, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v93 = *(v36 + 8);
        sub_1C44016B0(v162);
        v94 = sub_1C4402CD0();
        v93(v94);
        v63 = v169;
      }

      v157 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested;
      *(v63 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested) = 0;

      v95 = swift_allocObject();
      v164 = v95;
      *(v95 + 16) = 0;
      v154 = (v95 + 16);
      v96 = swift_allocObject();
      v163 = v96;
      *(v96 + 16) = 0;
      v147 = (v96 + 16);
      v152 = objc_autoreleasePoolPush();
      v97 = v159;
      sub_1C442A36C();
      sub_1C461C16C();
      v98();
      v99 = *(v36 + 80);
      v149 = v99 | 7;
      v100 = swift_allocObject();
      (v173)(v100 + ((v99 + 16) & ~v99), v97, v35);
      v182 = sub_1C46184BC;
      v183 = v100;
      v178 = MEMORY[0x1E69E9820];
      v179 = 1107296256;
      v150 = &v180;
      v180 = sub_1C44405F8;
      v181 = &unk_1F43E3E40;
      v151 = _Block_copy(&v178);

      v148 = v37;
      v101 = v161;
      v153(v167, v170, v161);
      sub_1C442A36C();
      sub_1C461C16C();
      v102();
      v103 = v168;
      v104 = (*(v168 + 80) + 24) & ~*(v168 + 80);
      v105 = (v165 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
      v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
      v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      *(v108 + 16) = v172;
      (v103[4])(v108 + v104, v167, v101);
      v109 = v169;
      *(v108 + v105) = v169;
      *(v108 + v106) = v163;
      v110 = v175;
      *(v108 + v107) = v164;
      (v173)(v108 + ((v99 + v107 + 8) & ~v99), v159, v110);
      v182 = sub_1C4618524;
      v183 = v108;
      v178 = MEMORY[0x1E69E9820];
      v179 = 1107296256;
      v180 = sub_1C45DFE08;
      v181 = &unk_1F43E3E90;
      v111 = _Block_copy(&v178);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v112 = v109;

      v113 = v162;
      v114 = v151;
      v115 = [v162 sinkWithCompletion:v151 receiveInput:v111];
      _Block_release(v111);
      _Block_release(v114);

      objc_autoreleasePoolPop(v152);
      v116 = v154;
      sub_1C440F1BC();
      swift_beginAccess();
      v117 = v113;
      if (*v116 >= 1)
      {
        v118 = v147;
        sub_1C440F1BC();
        swift_beginAccess();
        v119 = *v118;
        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406758();
          swift_once();
        }

        v120 = sub_1C4F00978();
        sub_1C442B738(v120, qword_1EDE2DDE0);
        v121 = v158;
        v155(v158, v166, v110);
        v122 = sub_1C4F00968();
        v123 = sub_1C4F01CB8();
        if (os_log_type_enabled(v122, v123))
        {
          sub_1C44357DC();
          v124 = swift_slowAlloc();
          sub_1C43FEC60();
          v125 = swift_slowAlloc();
          v176 = v125;
          *v124 = 136315394;
          sub_1C441F518();
          sub_1C461861C(v126, v127, MEMORY[0x1E69A94A8]);
          sub_1C4F02858();
          (*(v174 + 8))(v121, v175);
          v128 = sub_1C43FBC98();
          v131 = sub_1C441D828(v128, v129, v130);

          *(v124 + 4) = v131;
          *(v124 + 12) = 2048;
          *(v124 + 14) = v119;
          _os_log_impl(&dword_1C43F8000, v122, v123, "[tracking %s]: Skipped %f%% behavior events during digest due to missing context", v124, 0x16u);
          sub_1C440962C(v125);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {

          (*(v174 + 8))(v121, v110);
        }

        v117 = v162;
      }

      *(v157 + v112) = 0;

      v140 = (v172 + 40);
      do
      {
        v141 = *v140;
        swift_getObjectType();
        v142 = *(v141 + 136);
        swift_unknownObjectRetain();
        v143 = sub_1C4404C28();
        v142(v143);
        swift_unknownObjectRelease();
        v140 += 2;
        --v31;
      }

      while (v31);

      v144 = sub_1C43FD258();
      v145(v144);
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v68 = sub_1C4F00978();
      sub_1C442B738(v68, qword_1EDE2DDE0);
      v69 = v172;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v70 = sub_1C4F00968();
      v71 = sub_1C4F01CE8();

      if (os_log_type_enabled(v70, v71))
      {
        LODWORD(v170) = v71;
        v171 = v70;
        v166 = v30;
        v72 = swift_slowAlloc();
        sub_1C43FEC60();
        v168 = swift_slowAlloc();
        v178 = v168;
        v169 = v72;
        *v72 = 136315138;
        v177 = MEMORY[0x1E69E7CC0];
        sub_1C459D1E0();
        v73 = v177;
        v74 = (v69 + 40);
        do
        {
          v75 = *v74;
          swift_getObjectType();
          v76 = *(v75 + 64);
          swift_unknownObjectRetain();
          v77 = sub_1C4404C28();
          v76(v77);
          swift_unknownObjectRelease();
          v177 = v73;
          v78 = *(v73 + 16);
          if (v78 >= *(v73 + 24) >> 1)
          {
            sub_1C459D1E0();
            v73 = v177;
          }

          *(v73 + 16) = v78 + 1;
          v36 = v174;
          v35 = v175;
          sub_1C442A36C();
          v173();
          v74 += 2;
          --v31;
        }

        while (v31);
        MEMORY[0x1C6940380](v73, v35);

        v132 = sub_1C43FBC98();
        v135 = sub_1C441D828(v132, v133, v134);

        v136 = v169;
        *(v169 + 1) = v135;
        v137 = v171;
        _os_log_impl(&dword_1C43F8000, v171, v170, "Mismatch histogram behavior types. Skipping digest of histograms: %s", v136, 0xCu);
        sub_1C440962C(v168);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();

        v30 = v166;
      }

      else
      {
      }

      sub_1C461844C();
      sub_1C441C114();
      v138 = swift_allocError();
      sub_1C440ED9C(v138, v139);
      swift_willThrow();
      (*(v36 + 8))(v30, v35);
    }
  }

  sub_1C44109F8();
}

void sub_1C460A8F4()
{
  sub_1C43FE628();
  v40 = v2;
  v37 = v3;
  v5 = v4;
  v6 = *v4;
  v34 = *(v4 + 16);
  v35 = v6;
  v33 = *(v4 + 32);
  v32 = *(v4 + 40);
  v38 = *(v7 + 16);
  swift_getAssociatedTypeWitness();
  sub_1C442A8A4();
  v8 = sub_1C4F01F48();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v31 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4425958();
  sub_1C43FCE64();
  v36 = v12;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = sub_1C4422248();
  v17(v16);
  if (sub_1C44157D4(v1, 1, v0) == 1)
  {
    v18 = sub_1C43FFE24();
    v19(v18);
  }

  else
  {
    v30 = v8;
    v20 = v36;
    sub_1C442A36C();
    v21();
    v22 = v31;
    (*(v20 + 16))(v31, v15, v0);
    sub_1C43FBD94();
    sub_1C440BAA8(v23, v24, v25, v0);
    v42[1] = v34;
    v42[0] = v35;
    v43 = v33;
    v44 = v32;
    sub_1C45A2358(v5, &v41);
    sub_1C4462768();
    sub_1C46B7B6C(v22, v42, v26, v39, v27);
    sub_1C45EC75C(v5);
    v28 = sub_1C44416E4();
    v29(v28);
    (*(v20 + 8))(v15, v0);
  }

  sub_1C4402144();
  sub_1C44109F8();
}

void sub_1C460ABD4()
{
  sub_1C43FE628();
  v41 = v1;
  v38 = v2;
  v4 = v3;
  v5 = *v3;
  v34 = *(v3 + 16);
  v35 = v5;
  v33 = *(v3 + 32);
  v32 = *(v3 + 40);
  v39 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1C4F01F48();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4425958();
  sub_1C43FCE64();
  v37 = v14;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v36 = v31 - v16;
  v17 = sub_1C4422248();
  v18(v17);
  sub_1C4414160(v0);
  if (v19)
  {
    v29 = sub_1C43FFE24();
  }

  else
  {
    v31[1] = v8;
    v21 = v36;
    v20 = v37;
    (*(v37 + 32))(v36, v0, AssociatedTypeWitness);
    v43[1] = v34;
    v43[0] = v35;
    v44 = v33;
    v45 = v32;
    (*(v20 + 16))(v12, v21, AssociatedTypeWitness);
    sub_1C43FBD94();
    sub_1C440BAA8(v22, v23, v24, AssociatedTypeWitness);
    sub_1C45A2358(v4, &v42);
    sub_1C4462768();
    sub_1C46B79C0(v43, v12, v25, v40, v26);
    v27 = sub_1C443E140();
    v28(v27);
    sub_1C45EC75C(v4);
    v29 = sub_1C440CAF0();
  }

  v30(v29);
  sub_1C4402144();
  sub_1C44109F8();
}

unint64_t sub_1C460AEA8(char a1)
{
  result = 0x6144664F656D6954;
  switch(a1)
  {
    case 1:
      result = 0x656557664F796144;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x636F4C6F7263694DLL;
      break;
    case 7:
      result = 0x6369666963657053;
      break;
    case 8:
      result = 0x6547657372616F43;
      break;
    case 9:
      result = 0x6F6547656772614CLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 1766222167;
      break;
    case 12:
      result = 0x646F4D7375636F46;
      break;
    case 13:
      result = 0x74536E6F69746F4DLL;
      break;
    case 14:
      result = 0x6144664F74726150;
      break;
    case 15:
      result = 0x6557664F74726150;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C460B094(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = byte_1F43D1348[v4++ + 32];
    v6 = 0xE900000000000079;
    v7 = 0x6144664F656D6954;
    switch(v5)
    {
      case 1:
        v7 = 0x656557664F796144;
        v6 = 0xE90000000000006BLL;
        break;
      case 2:
        v7 = 0xD000000000000011;
        v6 = 0x80000001C4F8DA60;
        break;
      case 3:
        v7 = 0xD00000000000001ALL;
        v6 = 0x80000001C4F8DA40;
        break;
      case 4:
        v7 = 0xD000000000000019;
        v6 = 0x80000001C4F8DA20;
        break;
      case 5:
        v7 = 0xD000000000000011;
        v6 = 0x80000001C4F8DA00;
        break;
      case 6:
        v7 = 0x636F4C6F7263694DLL;
        v8 = 0x6E6F697461;
        goto LABEL_18;
      case 7:
        v7 = 0x6369666963657053;
        v6 = 0xEF687361486F6547;
        break;
      case 8:
        v7 = 0x6547657372616F43;
        v8 = 0x687361486FLL;
LABEL_18:
        v6 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 9:
        v7 = 0x6F6547656772614CLL;
        v6 = 0xEC00000068736148;
        break;
      case 10:
        v7 = 0xD000000000000012;
        v6 = 0x80000001C4F8D9E0;
        break;
      case 11:
        v6 = 0xE400000000000000;
        v7 = 1766222167;
        break;
      case 12:
        v6 = 0xE900000000000065;
        v7 = 0x646F4D7375636F46;
        break;
      case 13:
        v7 = 0x74536E6F69746F4DLL;
        v6 = 0xEB00000000657461;
        break;
      case 14:
        v7 = 0x6144664F74726150;
        break;
      case 15:
        v6 = 0xEA00000000006B65;
        v7 = 0x6557664F74726150;
        break;
      default:
        break;
    }

    if (v7 == a1 && v6 == a2)
    {
      break;
    }

    v10 = sub_1C4F02938();

    if (v10)
    {
      goto LABEL_28;
    }

    if (v4 == 16)
    {
      v5 = 16;
      goto LABEL_28;
    }
  }

LABEL_28:

  return v5;
}

unint64_t sub_1C460B42C(uint64_t a1, SEL *a2)
{
  sub_1C442A8A4();
  sub_1C4EF9FD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v6 = *v3;
  sub_1C440F1BC();
  swift_beginAccess();
  v7 = [*(v2 + v6) *a2];
  sub_1C4EF9FA8();

  v8 = sub_1C4EF9FB8();
  v9 = sub_1C43FFE3C();
  result = v10(v9);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v8 >> 16))
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_1C460B534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v74 = v20;
  v81 = v25;
  v83 = v26;
  v82 = v27;
  v29 = v28;
  v31 = v30;
  v91 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v78 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  v76 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v77 = v36;
  v37 = sub_1C43FBE44();
  type metadata accessor for DecayingHistogramState(v37);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  v75 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v73 - v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C440D100();
  v44 = objc_autoreleasePoolPush();
  sub_1C4EF9348();
  sub_1C43FD23C();
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C4431FA4();
  sub_1C461861C(v45, v46, &unk_1C4F1E4B0);
  v79 = v31;
  v80 = v29;
  sub_1C4EF9328();

  objc_autoreleasePoolPop(v44);
  if (v21)
  {
    sub_1C4428958();
    sub_1C440962C(v81);
    sub_1C440962C(v83);
    (*(v78 + 8))(v82, v91);
  }

  else
  {
    v73[4] = v22;
    v73[2] = v42;
    sub_1C461B8B4(v22, v42);
    v47 = v78;
    v48 = *(v78 + 16);
    v73[5] = 0;
    v48(v77, v82, v91);
    sub_1C442E860(v83, v88);
    sub_1C442E860(v81, v87);
    sub_1C4418280(v88, v88[3]);
    v73[3] = v73;
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v49);
    sub_1C43FBCC4();
    sub_1C4405820();
    (*(v50 + 16))(0);
    v51 = MEMORY[0];
    v73[1] = MEMORY[0];
    sub_1C461B8B4(v42, v75);
    v52 = sub_1C4466CCC(&v89);
    (v48)(v52);
    sub_1C442E860(v87, v86);
    v53 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v85[3] = v53;
    v85[4] = &off_1F43E2510;
    v85[0] = v51;
    sub_1C43FD23C();
    v54 = swift_allocObject();
    sub_1C4418280(v85, v53);
    v74 = v73;
    sub_1C43FCE64();
    v56 = v55;
    v58 = *(v57 + 64);
    v60 = MEMORY[0x1EEE9AC00](v59);
    v61 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
    v62 = *(v56 + 16);
    v62(v73 - v61, v60);
    v63 = *(v73 - v61);
    v84[4] = &off_1F43E2510;
    v84[3] = v53;
    v84[0] = v63;
    v64 = sub_1C4418280(v84, v53);
    v65 = MEMORY[0x1EEE9AC00](v64);
    v62(v73 - v61, v65);
    v66 = *(v73 - v61);
    v67 = (v54 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource);
    v67[3] = v53;
    v67[4] = &off_1F43E2510;
    *v67 = v66;
    sub_1C44191A0();
    sub_1C461B9D8(v75, v54 + v68);
    (*(v47 + 32))(v54 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType, v76, v91);
    sub_1C443FA18(v86, v54 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource);
    v69 = (v54 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
    *v69 = sub_1C461C054;
    v69[1] = 0;

    sub_1C440962C(v84);
    sub_1C440962C(v85);
    sub_1C4428958();
    sub_1C440962C(v81);
    sub_1C440962C(v83);
    v70 = *(v47 + 8);
    v71 = sub_1C4466CCC(&a13);
    v70(v71);
    sub_1C440962C(v87);
    v72 = sub_1C4466CCC(&v90);
    v70(v72);
    sub_1C461B820();
    sub_1C4466CCC(v88);
    sub_1C461B820();

    sub_1C440962C(v88);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C460BB78()
{
  type metadata accessor for DecayingHistogramState(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44109B4();
  sub_1C4EF93D8();
  sub_1C43FD23C();
  swift_allocObject();
  sub_1C4EF93C8();
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C4412D20();
  sub_1C461B8B4(v0 + v3, v1);
  sub_1C4431FA4();
  sub_1C461861C(v4, v5, &unk_1C4F1E488);
  sub_1C4EF93B8();
  sub_1C440DF1C();
  sub_1C461B820();

  return sub_1C44A1BCC();
}

void sub_1C460BC84()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = v0;
  sub_1C442A8A4();
  v5 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C45D5A24(v10 - v9);
  sub_1C441F518();
  sub_1C461861C(v12, v13, MEMORY[0x1E69A9490]);
  v14 = sub_1C4F010B8();
  (*(v7 + 8))(v11, v5);
  if (v14)
  {
    v15 = v4 + *v3;
    sub_1C4414918();
    swift_beginAccess();
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);
    sub_1C4418280(v15, v16);
    (*(v17 + 8))(v1, v16, v17);
    swift_endAccess();
  }

  else
  {
    sub_1C461B7AC();
    sub_1C441C114();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C460BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4440CCC();
  sub_1C456902C(&qword_1EC0B87A0, &unk_1C4F0DB90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  *(v7 + 32) = v5;
  *(v7 + 40) = a5;

  sub_1C4609AC8();
}

uint64_t sub_1C460BED8(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4467FE0(v13 + *(v14 + 20), v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = *v13;
  sub_1C4EF9B78();
  v17 = v18;
  LODWORD(v18) = 1.0;
  if (v17 > 0.0)
  {
    v18 = exp2(v17 / -15768000.0);
    *&v18 = v18;
  }

  [v16 decayByFactor_];

  (*(v10 + 8))(v12, v9);
  (*(v10 + 16))(v5, a1, v9);
  sub_1C440BAA8(v5, 0, 1, v9);
  swift_beginAccess();
  sub_1C45AD734(v5, v13 + *(v14 + 20));
  return swift_endAccess();
}

uint64_t sub_1C460C18C(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4467FE0(v13 + *(v14 + 20), v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = *v13;
  sub_1C4EF9B78();
  v17 = v18;
  LODWORD(v18) = 1.0;
  if (v17 > 0.0)
  {
    v18 = exp2(v17 / -604800.0);
    *&v18 = v18;
  }

  [v16 decayByFactor_];

  (*(v10 + 8))(v12, v9);
  (*(v10 + 16))(v5, a1, v9);
  sub_1C440BAA8(v5, 0, 1, v9);
  swift_beginAccess();
  sub_1C45AD734(v5, v13 + *(v14 + 20));
  return swift_endAccess();
}

void sub_1C460C440()
{
  sub_1C43FBD3C();
  v3 = v2;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FC010();
  v7 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v9 = (v0 + *v3);
  sub_1C440F1BC();
  swift_beginAccess();
  v10 = type metadata accessor for DecayingHistogramState(0);
  sub_1C448DF88(v10);
  sub_1C4413EA8();
  if (v11)
  {
    sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v12 = sub_1C4424F64();
    v13(v12);
    v14 = sub_1C4EF9C18();
    if (v14)
    {
      v15 = *v9;
      sub_1C4416A8C();
      *&v16 = sub_1C4417F7C();
      if (!v11 & v18)
      {
        v16 = exp2(v17 / -2592000.0);
        *&v16 = v16;
      }

      [v1 decayByFactor_];

      v19 = sub_1C443452C();
      v20(v19);
      v21 = sub_1C44601A8();
      v22(v21);
      v23 = sub_1C43FC024();
      sub_1C440BAA8(v23, v24, v25, v7);
      sub_1C4414918();
      swift_beginAccess();
      sub_1C44A172C();
      swift_endAccess();
    }

    else
    {
      v26 = sub_1C4422A18();
      v27(v26);
    }
  }

  sub_1C43FE9F0();
}

void sub_1C460C630()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FC010();
  v5 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v7 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  sub_1C440F1BC();
  swift_beginAccess();
  v8 = type metadata accessor for DecayingHistogramState(0);
  sub_1C448DF88(v8);
  sub_1C4413EA8();
  if (v9)
  {
    sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v10 = sub_1C4424F64();
    v11(v10);
    v12 = sub_1C4EF9C18();
    if (v12)
    {
      v13 = *v7;
      sub_1C4416A8C();
      *&v14 = sub_1C4417F7C();
      if (!v9 & v16)
      {
        v14 = exp2(v15 / -5184000.0);
        *&v14 = v14;
      }

      [v1 decayByFactor_];

      v17 = sub_1C443452C();
      v18(v17);
      v19 = sub_1C44601A8();
      v20(v19);
      v21 = sub_1C43FC024();
      sub_1C440BAA8(v21, v22, v23, v5);
      sub_1C4414918();
      swift_beginAccess();
      sub_1C44A172C();
      swift_endAccess();
    }

    else
    {
      v24 = sub_1C4422A18();
      v25(v24);
    }
  }

  sub_1C43FE9F0();
}

void sub_1C460C820()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FC010();
  v5 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v7 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
  sub_1C440F1BC();
  swift_beginAccess();
  v8 = type metadata accessor for DecayingHistogramState(0);
  sub_1C448DF88(v8);
  sub_1C4413EA8();
  if (v9)
  {
    sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v10 = sub_1C4424F64();
    v11(v10);
    v12 = sub_1C4EF9C18();
    if (v12)
    {
      v13 = *v7;
      sub_1C4416A8C();
      *&v14 = sub_1C4417F7C();
      if (!v9 & v16)
      {
        v14 = exp2(v15 / -3456000.0);
        *&v14 = v14;
      }

      [v1 decayByFactor_];

      v17 = sub_1C443452C();
      v18(v17);
      v19 = sub_1C44601A8();
      v20(v19);
      v21 = sub_1C43FC024();
      sub_1C440BAA8(v21, v22, v23, v5);
      sub_1C4414918();
      swift_beginAccess();
      sub_1C44A172C();
      swift_endAccess();
    }

    else
    {
      v24 = sub_1C4422A18();
      v25(v24);
    }
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C460CA10(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4467FE0(v13 + *(v14 + 20), v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = *v13;
  sub_1C4EF9B78();
  v17 = v18;
  LODWORD(v18) = 1.0;
  if (v17 > 0.0)
  {
    v18 = exp2(v17 / -1209600.0);
    *&v18 = v18;
  }

  [v16 decayByFactor_];

  (*(v10 + 8))(v12, v9);
  (*(v10 + 16))(v5, a1, v9);
  sub_1C440BAA8(v5, 0, 1, v9);
  swift_beginAccess();
  sub_1C45AD734(v5, v13 + *(v14 + 20));
  return swift_endAccess();
}

uint64_t sub_1C460CCC4(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4467FE0(v13 + *(v14 + 20), v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = *v13;
  sub_1C4EF9B78();
  v17 = v18;
  LODWORD(v18) = 1.0;
  if (v17 > 0.0)
  {
    v18 = exp2(v17 / -21600.0);
    *&v18 = v18;
  }

  [v16 decayByFactor_];

  (*(v10 + 8))(v12, v9);
  (*(v10 + 16))(v5, a1, v9);
  sub_1C440BAA8(v5, 0, 1, v9);
  swift_beginAccess();
  sub_1C45AD734(v5, v13 + *(v14 + 20));
  return swift_endAccess();
}

uint64_t sub_1C460CF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - v9;
  v10 = sub_1C4EF9CD8();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = *(a1 + 64);
  sub_1C4617C00();
  if (v17)
  {
    v18 = *(a1 + 32);
    v47 = *(a1 + 16);
    v48[0] = v18;
    *(v48 + 9) = *(a1 + 41);
    sub_1C460BC84();
    if (v4)
    {
    }

    LODWORD(v41) = v19;
    v22 = sub_1C4613044();
    v39 = *(v44 + 16);
    v40 = v44 + 16;
    v39(v15, v16 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v45);
    sub_1C4EF9B78();
    v24 = 1.0;
    if (v23 > 0.0)
    {
      v24 = exp2(v23 / -15768000.0);
    }

    v25 = v44;
    v26 = v15;
    v27 = v45;
    v38 = *(v44 + 8);
    v38(v26, v45);
    v28 = (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
    swift_beginAccess();
    *&v29 = v24;
    [*v28 add:v41 a:v22 b:v29];
    v30 = type metadata accessor for DecayingHistogramState(0);
    v31 = v43;
    sub_1C4467FE0(v28 + *(v30 + 20), v43);
    if (sub_1C44157D4(v31, 1, v27) == 1)
    {

      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v32 = v42;
      v39(v42, v46, v27);
      sub_1C440BAA8(v32, 0, 1, v27);
      swift_beginAccess();
      v33 = *(v30 + 20);
LABEL_13:
      sub_1C45AD734(v32, v28 + v33);
      return swift_endAccess();
    }

    v41 = v30;
    (*(v25 + 32))(v12, v31, v27);
    v34 = v27;
    v35 = v46;
    v36 = sub_1C4EF9C18();

    result = (v38)(v12, v34);
    if (v36)
    {
      v32 = v42;
      v39(v42, v35, v34);
      sub_1C440BAA8(v32, 0, 1, v34);
      swift_beginAccess();
      v33 = *(v41 + 20);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C461844C();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C460D3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v45 = a2;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = sub_1C4EF9CD8();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = *(a1 + 64);
  sub_1C4616B08(a3, v46);
  if (v48 == 255)
  {
    sub_1C461844C();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  else
  {
    v49 = v46[0];
    v50 = v46[1];
    v51 = v47;
    v52 = v48;
    v20 = *(a1 + 32);
    v53 = *(a1 + 16);
    v54[0] = v20;
    *(v54 + 9) = *(a1 + 41);
    sub_1C460BC84();
    if (v4)
    {
      return sub_1C4420C3C(v46, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    v22 = v21;
    sub_1C460BC84();
    v42 = v25;
    v26 = *(v44 + 16);
    v41 = v44 + 16;
    v40 = v26;
    v26(v18, v19 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v13);
    sub_1C4EF9B78();
    v28 = 1.0;
    if (v27 > 0.0)
    {
      v28 = exp2(v27 / -2592000.0);
    }

    v29 = v44;
    v39 = *(v44 + 8);
    v39(v18, v13);
    v30 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
    swift_beginAccess();
    *&v31 = v28;
    [*v30 add:v22 a:v42 b:v31];
    v32 = type metadata accessor for DecayingHistogramState(0);
    sub_1C4467FE0(v30 + *(v32 + 20), v12);
    if (sub_1C44157D4(v12, 1, v13) == 1)
    {
      sub_1C4420C3C(v46, &qword_1EC0B9A20, &unk_1C4F10DF0);
      sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v33 = v43;
      v34 = v43;
      v35 = v45;
LABEL_13:
      v40(v34, v35, v13);
      sub_1C440BAA8(v33, 0, 1, v13);
      swift_beginAccess();
      sub_1C45AD734(v33, v30 + *(v32 + 20));
      return swift_endAccess();
    }

    (*(v29 + 32))(v15, v12, v13);
    v36 = v45;
    v37 = sub_1C4EF9C18();
    sub_1C4420C3C(v46, &qword_1EC0B9A20, &unk_1C4F10DF0);
    result = (v39)(v15, v13);
    if (v37)
    {
      v33 = v43;
      v34 = v43;
      v35 = v36;
      goto LABEL_13;
    }
  }

  return result;
}

void sub_1C460D874(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1C4EF9CD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = *(a1 + 32);
  v40 = *(a1 + 16);
  v41[0] = v18;
  *(v41 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v3)
  {
    v20 = v19;
    v37 = v2;
    v38 = 0;
    v35 = v14;
    v36 = v7;
    v21 = *(v12 + 16);
    v21(v17, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v11);
    sub_1C4EF9B78();
    v23 = 1.0;
    if (v22 > 0.0)
    {
      v23 = exp2(v22 / -604800.0);
    }

    v34 = *(v12 + 8);
    v34(v17, v11);
    v24 = &v37[OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state];
    swift_beginAccess();
    *&v25 = v23;
    [*v24 add:v20 a:0 b:v25];
    v26 = type metadata accessor for DecayingHistogramState(0);
    sub_1C4467FE0(v24 + *(v26 + 20), v10);
    if (sub_1C44157D4(v10, 1, v11) == 1)
    {
      sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v27 = v36;
      v21(v36, v39, v11);
      sub_1C440BAA8(v27, 0, 1, v11);
      swift_beginAccess();
      v28 = *(v26 + 20);
    }

    else
    {
      v33 = v26;
      v37 = v21;
      v29 = v35;
      (*(v12 + 32))(v35, v10, v11);
      v30 = v39;
      v31 = sub_1C4EF9C18();
      v34(v29, v11);
      if ((v31 & 1) == 0)
      {
        return;
      }

      v27 = v36;
      (v37)(v36, v30, v11);
      sub_1C440BAA8(v27, 0, 1, v11);
      swift_beginAccess();
      v28 = *(v33 + 20);
    }

    sub_1C45AD734(v27, v24 + v28);
    swift_endAccess();
  }
}

uint64_t sub_1C460DC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - v9;
  v10 = sub_1C4EF9CD8();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = *(a1 + 64);
  sub_1C4617EC4();
  if (v17)
  {
    v18 = *(a1 + 32);
    v47 = *(a1 + 16);
    v48[0] = v18;
    *(v48 + 9) = *(a1 + 41);
    sub_1C460BC84();
    if (v4)
    {
    }

    LODWORD(v41) = v19;
    v22 = sub_1C4613044();
    v39 = *(v44 + 16);
    v40 = v44 + 16;
    v39(v15, v16 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v45);
    sub_1C4EF9B78();
    v24 = 1.0;
    if (v23 > 0.0)
    {
      v24 = exp2(v23 / -2592000.0);
    }

    v25 = v44;
    v26 = v15;
    v27 = v45;
    v38 = *(v44 + 8);
    v38(v26, v45);
    v28 = (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
    swift_beginAccess();
    *&v29 = v24;
    [*v28 add:v41 a:v22 b:v29];
    v30 = type metadata accessor for DecayingHistogramState(0);
    v31 = v43;
    sub_1C4467FE0(v28 + *(v30 + 20), v43);
    if (sub_1C44157D4(v31, 1, v27) == 1)
    {

      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v32 = v42;
      v39(v42, v46, v27);
      sub_1C440BAA8(v32, 0, 1, v27);
      swift_beginAccess();
      v33 = *(v30 + 20);
LABEL_13:
      sub_1C45AD734(v32, v28 + v33);
      return swift_endAccess();
    }

    v41 = v30;
    (*(v25 + 32))(v12, v31, v27);
    v34 = v27;
    v35 = v46;
    v36 = sub_1C4EF9C18();

    result = (v38)(v12, v34);
    if (v36)
    {
      v32 = v42;
      v39(v42, v35, v34);
      sub_1C440BAA8(v32, 0, 1, v34);
      swift_beginAccess();
      v33 = *(v41 + 20);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C461844C();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1C460E078()
{
  sub_1C43FE628();
  v46[6] = v4;
  v48 = v5;
  v49 = v1;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v47 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v46[8] = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v46[7] = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v46[5] = v46 - v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C441D15C();
  v19 = sub_1C443DF3C();
  v2(v19);
  sub_1C447544C();
  v20 = v49;
  sub_1C460BC84();
  if (v20)
  {
    v22 = sub_1C440CAF0();
    v23(v22);
    goto LABEL_11;
  }

  v24 = sub_1C4422A24(v21);
  v26 = v25(v24);
  v27 = sub_1C441B2FC(v26);
  v2(v27);
  sub_1C4EF9B78();
  v46[1] = v3;
  if (v28 > 0.0)
  {
    exp2(v28 / -2592000.0);
  }

  v29 = sub_1C4401694();
  v30(v29);
  v31 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C44609F0(*v31, sel_add_a_b_, v32);
  v33 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4424C5C(v33);
  sub_1C4414160(v13);
  v34 = v47;
  if (v35)
  {
    v36 = sub_1C44EB860();
    v2(v36);
    sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_10:
    sub_1C443EEA0();
    v42();
    sub_1C43FBD94();
    sub_1C440BAA8(v43, v44, v45, v11);
    sub_1C4414918();
    swift_beginAccess();
    sub_1C45AD734(v34, v31 + *(v0 + 20));
    swift_endAccess();
    goto LABEL_11;
  }

  v37 = sub_1C442900C();
  v38(v37);
  v39 = sub_1C44ADFF0();
  v40 = sub_1C440CAF0();
  v2(v40);
  v41 = sub_1C44EB860();
  v2(v41);
  if (v39)
  {
    sub_1C4404044();
    goto LABEL_10;
  }

LABEL_11:
  sub_1C44109F8();
}

void sub_1C460E380()
{
  sub_1C43FE628();
  v46[6] = v4;
  v48 = v5;
  v49 = v1;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v47 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v46[8] = v10;
  sub_1C43FBE44();
  v11 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v46[7] = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v46[5] = v46 - v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C441D15C();
  v19 = sub_1C443DF3C();
  v2(v19);
  sub_1C447544C();
  v20 = v49;
  sub_1C460BC84();
  if (v20)
  {
    v22 = sub_1C440CAF0();
    v23(v22);
    goto LABEL_11;
  }

  v24 = sub_1C4422A24(v21);
  v26 = v25(v24);
  v27 = sub_1C441B2FC(v26);
  v2(v27);
  sub_1C4EF9B78();
  v46[1] = v3;
  if (v28 > 0.0)
  {
    exp2(v28 / -5184000.0);
  }

  v29 = sub_1C4401694();
  v30(v29);
  v31 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C44609F0(*v31, sel_add_a_b_, v32);
  v33 = type metadata accessor for DecayingHistogramState(0);
  sub_1C4424C5C(v33);
  sub_1C4414160(v13);
  v34 = v47;
  if (v35)
  {
    v36 = sub_1C44EB860();
    v2(v36);
    sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_10:
    sub_1C443EEA0();
    v42();
    sub_1C43FBD94();
    sub_1C440BAA8(v43, v44, v45, v11);
    sub_1C4414918();
    swift_beginAccess();
    sub_1C45AD734(v34, v31 + *(v0 + 20));
    swift_endAccess();
    goto LABEL_11;
  }

  v37 = sub_1C442900C();
  v38(v37);
  v39 = sub_1C44ADFF0();
  v40 = sub_1C440CAF0();
  v2(v40);
  v41 = sub_1C44EB860();
  v2(v41);
  if (v39)
  {
    sub_1C4404044();
    goto LABEL_10;
  }

LABEL_11:
  sub_1C44109F8();
}

void sub_1C460E688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v41 = a2;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = sub_1C4EF9CD8();
  v40 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = *(a1 + 64);
  sub_1C4616C88(&v42, v19, a3);
  if (v43)
  {
    sub_1C461844C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    return;
  }

  v44 = v42;
  v21 = *(a1 + 32);
  v45 = *(a1 + 16);
  v46[0] = v21;
  *(v46 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v4)
  {
    v23 = v22;
    v38 = sub_1C4616D1C(&v44);
    v36 = *(v40 + 16);
    v37 = v40 + 16;
    v36(v18, v19 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v13);
    sub_1C4EF9B78();
    v25 = 1.0;
    if (v24 > 0.0)
    {
      v25 = exp2(v24 / -2592000.0);
    }

    v26 = v40;
    v35 = *(v40 + 8);
    v35(v18, v13);
    v27 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
    swift_beginAccess();
    *&v28 = v25;
    [*v27 add:v23 a:v38 b:v28];
    v29 = type metadata accessor for DecayingHistogramState(0);
    sub_1C4467FE0(v27 + *(v29 + 20), v12);
    if (sub_1C44157D4(v12, 1, v13) == 1)
    {
      sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v30 = v39;
      v31 = v39;
      v32 = v41;
    }

    else
    {
      (*(v26 + 32))(v15, v12, v13);
      v33 = v41;
      v34 = sub_1C4EF9C18();
      v35(v15, v13);
      if ((v34 & 1) == 0)
      {
        return;
      }

      v30 = v39;
      v31 = v39;
      v32 = v33;
    }

    v36(v31, v32, v13);
    sub_1C440BAA8(v30, 0, 1, v13);
    swift_beginAccess();
    sub_1C45AD734(v30, v27 + *(v29 + 20));
    swift_endAccess();
  }
}

void sub_1C460EA60()
{
  sub_1C43FE628();
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v47 = v9;
  v11 = v10;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v44 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FC010();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v45 = v16;
  v46 = v17;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440D100();
  v22 = *(v11 + 64);
  v23 = v5(v22, v8);
  if (v24)
  {
    sub_1C461844C();
    sub_1C441C114();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  else
  {
    v26 = v23;
    sub_1C460BC84();
    if (!v1)
    {
      v28 = v27;
      v43 = sub_1C4613148(v26);
      v42 = *(v46 + 16);
      v42(v3, v22 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v45);
      sub_1C4EF9B78();
      v30 = 1.0;
      if (v29 > 0.0)
      {
        v30 = exp2(v29 / -2592000.0);
      }

      v41 = *(v46 + 8);
      v41(v3, v45);
      v31 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
      sub_1C440F1BC();
      swift_beginAccess();
      *&v32 = v30;
      [*v31 add:v28 a:v43 b:v32];
      v33 = type metadata accessor for DecayingHistogramState(0);
      sub_1C4467FE0(v31 + *(v33 + 20), v2);
      if (sub_1C44157D4(v2, 1, v45) == 1)
      {
        sub_1C4420C3C(v2, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v34 = v44;
        v42(v44, v47, v45);
        sub_1C4409A84();
      }

      else
      {
        (*(v46 + 32))(v20, v2, v45);
        v39 = sub_1C4EF9C18();
        v41(v20, v45);
        if ((v39 & 1) == 0)
        {
          goto LABEL_11;
        }

        v34 = v44;
        v40 = sub_1C43FBC98();
        (v42)(v40);
        v35 = sub_1C43FC024();
        v38 = v45;
      }

      sub_1C440BAA8(v35, v36, v37, v38);
      sub_1C4414918();
      swift_beginAccess();
      sub_1C45AD734(v34, v31 + *(v33 + 20));
      swift_endAccess();
    }
  }

LABEL_11:
  sub_1C44109F8();
}

uint64_t sub_1C460EDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - v9;
  v10 = sub_1C4EF9CD8();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = *(a1 + 64);
  sub_1C4616F28();
  if (v17)
  {
    v18 = *(a1 + 32);
    v47 = *(a1 + 16);
    v48[0] = v18;
    *(v48 + 9) = *(a1 + 41);
    sub_1C460BC84();
    if (v4)
    {
    }

    LODWORD(v41) = v19;
    v22 = sub_1C4613044();
    v39 = *(v44 + 16);
    v40 = v44 + 16;
    v39(v15, v16 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v45);
    sub_1C4EF9B78();
    v24 = 1.0;
    if (v23 > 0.0)
    {
      v24 = exp2(v23 / -3456000.0);
    }

    v25 = v44;
    v26 = v15;
    v27 = v45;
    v38 = *(v44 + 8);
    v38(v26, v45);
    v28 = (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
    swift_beginAccess();
    *&v29 = v24;
    [*v28 add:v41 a:v22 b:v29];
    v30 = type metadata accessor for DecayingHistogramState(0);
    v31 = v43;
    sub_1C4467FE0(v28 + *(v30 + 20), v43);
    if (sub_1C44157D4(v31, 1, v27) == 1)
    {

      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v32 = v42;
      v39(v42, v46, v27);
      sub_1C440BAA8(v32, 0, 1, v27);
      swift_beginAccess();
      v33 = *(v30 + 20);
LABEL_13:
      sub_1C45AD734(v32, v28 + v33);
      return swift_endAccess();
    }

    v41 = v30;
    (*(v25 + 32))(v12, v31, v27);
    v34 = v27;
    v35 = v46;
    v36 = sub_1C4EF9C18();

    result = (v38)(v12, v34);
    if (v36)
    {
      v32 = v42;
      v39(v42, v35, v34);
      sub_1C440BAA8(v32, 0, 1, v34);
      swift_beginAccess();
      v33 = *(v41 + 20);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C461844C();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1C460F250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v49 = a2;
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v10;
  v48 = sub_1C4EF9CD8();
  v11 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = *(a1 + 64);
  sub_1C4617138();
  if (v19)
  {
    sub_1C461844C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    return;
  }

  v21 = v18;
  v22 = *(a1 + 32);
  v50 = *(a1 + 16);
  v51[0] = v22;
  *(v51 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v4)
  {
    v24 = v23;
    v45 = sub_1C4613148(v21);
    v25 = v17 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
    v26 = v48;
    v43 = *(v11 + 16);
    v44 = v11 + 16;
    v43(v16, v25, v48);
    sub_1C4EF9B78();
    v28 = 1.0;
    if (v27 > 0.0)
    {
      v28 = exp2(v27 / -3456000.0);
    }

    v29 = v11;
    v30 = *(v11 + 8);
    v30(v16, v26);
    v31 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
    swift_beginAccess();
    *&v32 = v28;
    [*v31 add:v24 a:v45 b:v32];
    v33 = type metadata accessor for DecayingHistogramState(0);
    v34 = v47;
    sub_1C4467FE0(v31 + *(v33 + 20), v47);
    if (sub_1C44157D4(v34, 1, v26) == 1)
    {
      sub_1C4420C3C(v34, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v35 = v26;
      v36 = v46;
      v43(v46, v49, v35);
      v37 = v36;
      v38 = v35;
    }

    else
    {
      (*(v29 + 32))(v13, v34, v26);
      v39 = v49;
      v40 = v26;
      v41 = sub_1C4EF9C18();
      v30(v13, v40);
      if ((v41 & 1) == 0)
      {
        return;
      }

      v36 = v46;
      v43(v46, v39, v40);
      v37 = v36;
      v38 = v40;
    }

    sub_1C440BAA8(v37, 0, 1, v38);
    swift_beginAccess();
    sub_1C45AD734(v36, v31 + *(v33 + 20));
    swift_endAccess();
  }
}

void sub_1C460F65C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1C4EF9CD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = *(a1 + 32);
  v40 = *(a1 + 16);
  v41[0] = v18;
  *(v41 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v3)
  {
    v20 = v19;
    v37 = v2;
    v38 = 0;
    v35 = v14;
    v36 = v7;
    v21 = *(v12 + 16);
    v21(v17, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v11);
    sub_1C4EF9B78();
    v23 = 1.0;
    if (v22 > 0.0)
    {
      v23 = exp2(v22 / -1209600.0);
    }

    v34 = *(v12 + 8);
    v34(v17, v11);
    v24 = &v37[OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state];
    swift_beginAccess();
    *&v25 = v23;
    [*v24 add:v20 a:0 b:v25];
    v26 = type metadata accessor for DecayingHistogramState(0);
    sub_1C4467FE0(v24 + *(v26 + 20), v10);
    if (sub_1C44157D4(v10, 1, v11) == 1)
    {
      sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v27 = v36;
      v21(v36, v39, v11);
      sub_1C440BAA8(v27, 0, 1, v11);
      swift_beginAccess();
      v28 = *(v26 + 20);
    }

    else
    {
      v33 = v26;
      v37 = v21;
      v29 = v35;
      (*(v12 + 32))(v35, v10, v11);
      v30 = v39;
      v31 = sub_1C4EF9C18();
      v34(v29, v11);
      if ((v31 & 1) == 0)
      {
        return;
      }

      v27 = v36;
      (v37)(v36, v30, v11);
      sub_1C440BAA8(v27, 0, 1, v11);
      swift_beginAccess();
      v28 = *(v33 + 20);
    }

    sub_1C45AD734(v27, v24 + v28);
    swift_endAccess();
  }
}

void sub_1C460FA08(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1C4EF9CD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = *(a1 + 32);
  v40 = *(a1 + 16);
  v41[0] = v18;
  *(v41 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v3)
  {
    v20 = v19;
    v37 = v2;
    v38 = 0;
    v35 = v14;
    v36 = v7;
    v21 = *(v12 + 16);
    v21(v17, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v11);
    sub_1C4EF9B78();
    v23 = 1.0;
    if (v22 > 0.0)
    {
      v23 = exp2(v22 / -21600.0);
    }

    v34 = *(v12 + 8);
    v34(v17, v11);
    v24 = &v37[OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state];
    swift_beginAccess();
    *&v25 = v23;
    [*v24 add:v20 a:0 b:v25];
    v26 = type metadata accessor for DecayingHistogramState(0);
    sub_1C4467FE0(v24 + *(v26 + 20), v10);
    if (sub_1C44157D4(v10, 1, v11) == 1)
    {
      sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v27 = v36;
      v21(v36, v39, v11);
      sub_1C440BAA8(v27, 0, 1, v11);
      swift_beginAccess();
      v28 = *(v26 + 20);
    }

    else
    {
      v33 = v26;
      v37 = v21;
      v29 = v35;
      (*(v12 + 32))(v35, v10, v11);
      v30 = v39;
      v31 = sub_1C4EF9C18();
      v34(v29, v11);
      if ((v31 & 1) == 0)
      {
        return;
      }

      v27 = v36;
      (v37)(v36, v30, v11);
      sub_1C440BAA8(v27, 0, 1, v11);
      swift_beginAccess();
      v28 = *(v33 + 20);
    }

    sub_1C45AD734(v27, v24 + v28);
    swift_endAccess();
  }
}

uint64_t sub_1C460FDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v45 - v8;
  v9 = sub_1C4EF9CD8();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - v15;
  v17 = sub_1C4EF9D38();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 64);
  sub_1C4617984();
  if (sub_1C44157D4(v16, 1, v17) == 1)
  {
    sub_1C4420C3C(v16, &qword_1EC0B9DC8, &unk_1C4F124A0);
    sub_1C461844C();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  (*(v18 + 32))(v20, v16, v17);
  v24 = *(a1 + 32);
  v57 = *(a1 + 16);
  v58[0] = v24;
  *(v58 + 9) = *(a1 + 41);
  v25 = v56;
  sub_1C460BC84();
  if (v25)
  {
    return (*(v18 + 8))(v20, v17);
  }

  v27 = v26;
  LODWORD(v49) = sub_1C4613268(v20);
  v56 = v3;
  v28 = *(v53 + 16);
  v48 = v53 + 16;
  v47 = v28;
  v28(v13, v21 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v54);
  sub_1C4EF9B78();
  v30 = 1.0;
  if (v29 > 0.0)
  {
    v30 = exp2(v29 / -3456000.0);
  }

  v32 = v53;
  v31 = v54;
  v46 = *(v53 + 8);
  v46(v13, v54);
  v33 = (v56 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
  swift_beginAccess();
  *&v34 = v30;
  [*v33 add:v27 a:v49 b:v34];
  v56 = type metadata accessor for DecayingHistogramState(0);
  v35 = v52;
  sub_1C4467FE0(v33 + *(v56 + 20), v52);
  if (sub_1C44157D4(v35, 1, v31) == 1)
  {
    (*(v18 + 8))(v20, v17);
    sub_1C4420C3C(v35, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v36 = v31;
    v37 = v51;
    v47(v51, v55, v36);
    sub_1C440BAA8(v37, 0, 1, v36);
    swift_beginAccess();
    v38 = v33 + *(v56 + 20);
    v39 = v37;
LABEL_13:
    sub_1C45AD734(v39, v38);
    return swift_endAccess();
  }

  v49 = v33;
  v40 = v50;
  (*(v32 + 32))(v50, v35, v31);
  v41 = v55;
  v42 = sub_1C4EF9C18();
  v46(v40, v31);
  result = (*(v18 + 8))(v20, v17);
  if (v42)
  {
    v43 = v51;
    v47(v51, v41, v31);
    sub_1C440BAA8(v43, 0, 1, v31);
    v44 = v49;
    swift_beginAccess();
    v38 = v44 + *(v56 + 20);
    v39 = v43;
    goto LABEL_13;
  }

  return result;
}

void sub_1C4610378()
{
  sub_1C4456250();
  if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, &selRef_aSet) < 0xBB9u)
  {
    goto LABEL_9;
  }

  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, &selRef_aSet);
  sub_1C444C20C();
  if (v2)
  {
    sub_1C44D44D8(v1);
    sub_1C441AE48();
    if (v0)
    {
      sub_1C440F1BC();
      swift_beginAccess();
      do
      {
        sub_1C447EF58();
        sub_1C44B8F04();
      }

      while (!v2);
    }

LABEL_9:
    if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, &selRef_bSet) >= 0x1Fu)
    {
      v3 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, &selRef_bSet) - 30;
      if ((v3 & 0xFFFF0000) != 0)
      {
        goto LABEL_16;
      }

      sub_1C44AB104(v3);
      sub_1C441AE48();
      if (v0)
      {
        sub_1C4425948();
        swift_beginAccess();
        do
        {
          sub_1C4402198();
          --v0;
        }

        while (v0);
      }
    }

    sub_1C4475D64();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

unint64_t sub_1C46104B0()
{
  if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet) >= 0x3E9u)
  {
    result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
    if (((result - 1000) & 0xFFFF0000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v2 = sub_1C4610B78((result - 1000), 0);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
      swift_beginAccess();
      v5 = 32;
      do
      {
        [*(v0 + v4) deleteWhereA:*(v2 + v5) b:0xFFFFLL];
        v5 += 2;
        --v3;
      }

      while (v3);
    }
  }

  result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet);
  if (result < 5u)
  {
    return result;
  }

  result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet);
  if (((result - 4) & 0xFFFF0000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = sub_1C4610B78((result - 4), 1);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v9 = (v6 + 32);
    swift_beginAccess();
    do
    {
      v10 = *v9++;
      [*(v0 + v8) deleteWhereA:0xFFFFLL b:v10];
      --v7;
    }

    while (v7);
  }
}

void sub_1C4610648()
{
  sub_1C4456250();
  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C4462390();
  if (v1 >= 0x3E9)
  {
    v2 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet) - 1000;
    if ((v2 & 0xFFFF0000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_1C44D44D8(v2);
    sub_1C441AE48();
    if (v0)
    {
      sub_1C440F1BC();
      swift_beginAccess();
      do
      {
        sub_1C447EF58();
        sub_1C44B8F04();
      }

      while (!v3);
    }
  }

  if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) < 0xC9u)
  {
LABEL_14:
    sub_1C4475D64();
    return;
  }

  v4 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) - 200;
  if ((v4 & 0xFFFF0000) == 0)
  {
    sub_1C44AB104(v4);
    sub_1C441AE48();
    if (v0)
    {
      sub_1C4425948();
      swift_beginAccess();
      do
      {
        sub_1C4402198();
        --v0;
      }

      while (v0);
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

unint64_t sub_1C4610780()
{
  if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet) >= 0xBB9u)
  {
    result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
    if (((result - 3000) & 0xFFFF0000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v2 = sub_1C4610B78((result - 3000), 0);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
      swift_beginAccess();
      v5 = 32;
      do
      {
        [*(v0 + v4) deleteWhereA:*(v2 + v5) b:0xFFFFLL];
        v5 += 2;
        --v3;
      }

      while (v3);
    }
  }

  result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet);
  if (result < 3u)
  {
    return result;
  }

  result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet);
  if (((result - 2) & 0xFFFF0000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = sub_1C4610B78((result - 2), 1);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v9 = (v6 + 32);
    swift_beginAccess();
    do
    {
      v10 = *v9++;
      [*(v0 + v8) deleteWhereA:0xFFFFLL b:v10];
      --v7;
    }

    while (v7);
  }
}

void sub_1C4610918()
{
  sub_1C4456250();
  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C4462390();
  if (v1 < 0xBB9)
  {
    goto LABEL_9;
  }

  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C444C20C();
  if (v3)
  {
    sub_1C44D44D8(v2);
    sub_1C441AE48();
    if (v0)
    {
      sub_1C440F1BC();
      swift_beginAccess();
      do
      {
        sub_1C447EF58();
        sub_1C44B8F04();
      }

      while (!v3);
    }

LABEL_9:
    if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) >= 8u)
    {
      v4 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) - 7;
      if ((v4 & 0xFFFF0000) != 0)
      {
        goto LABEL_16;
      }

      sub_1C44AB104(v4);
      sub_1C441AE48();
      if (v0)
      {
        sub_1C4425948();
        swift_beginAccess();
        do
        {
          sub_1C4402198();
          --v0;
        }

        while (v0);
      }
    }

    sub_1C4475D64();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C4610A48()
{
  sub_1C4456250();
  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C4462390();
  if (v1 < 0xBB9)
  {
    goto LABEL_9;
  }

  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C444C20C();
  if (v3)
  {
    sub_1C44D44D8(v2);
    sub_1C441AE48();
    if (v0)
    {
      sub_1C440F1BC();
      swift_beginAccess();
      do
      {
        sub_1C447EF58();
        sub_1C44B8F04();
      }

      while (!v3);
    }

LABEL_9:
    if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) >= 2u)
    {
      v4 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) - 1;
      if ((v4 & 0xFFFF0000) != 0)
      {
        goto LABEL_16;
      }

      sub_1C44AB104(v4);
      sub_1C441AE48();
      if (v0)
      {
        sub_1C4425948();
        swift_beginAccess();
        do
        {
          sub_1C4402198();
          --v0;
        }

        while (v0);
      }
    }

    sub_1C4475D64();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1C4610B78(uint64_t a1, char a2)
{
  sub_1C44158BC();
  sub_1C4EF9F98();
  sub_1C43FCDF8();
  v77 = v7;
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v82 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C441D15C();
  v10 = sub_1C4EF9FD8();
  sub_1C43FCDF8();
  v80 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v17 = MEMORY[0x1E69E7CC0];
  v18 = sub_1C4F00F28();
  v79 = v3;
  sub_1C440F1BC();
  if ((a2 & 1) == 0)
  {
    v30 = v19;
    swift_beginAccess();
    v31 = [*(v2 + v30) aSet];
    sub_1C4EF9FA8();

    sub_1C441C0FC();
    sub_1C461861C(v32, v33, MEMORY[0x1E6969B88]);
    sub_1C4404044();
    v34 = sub_1C4F01BA8();
    if (v34)
    {
      v35 = v34;
      sub_1C4458664(v34);
      v17 = v84;
      sub_1C4404044();
      sub_1C4F01B98();
      if (v35 < 0)
      {
        goto LABEL_70;
      }

      v81 = v18;
      while (1)
      {
        sub_1C4F01BE8();
        v36 = sub_1C449DA30();
        v37(v36);
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v3 >> 16)
        {
          goto LABEL_61;
        }

        v38 = v10;
        v39 = v4;
        v40 = v17;
        v84 = v17;
        v42 = *(v17 + 16);
        v41 = *(v17 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1C459D488((v41 > 1), v42 + 1, 1);
          v40 = v84;
        }

        *(v40 + 16) = v42 + 1;
        v17 = v40;
        *(v40 + 2 * v42 + 32) = v3;
        v4 = v39;
        v10 = v38;
        sub_1C4F01BB8();
        --v35;
        v18 = v81;
        if (!v35)
        {
          (*(v77 + 8))(v4, v78);
          break;
        }
      }
    }

    v55 = sub_1C43FFE24();
    v56(v55);
    v3 = *(v17 + 16);
    if (v3)
    {
      v57 = 0;
      while (v57 < *(v17 + 16))
      {
        [sub_1C441D688() lookupUnsmoothedA:v10 b:0xFFFFLL];
        v59 = v58;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C444BFB8();
        sub_1C4404C54();
        if (v48)
        {
          goto LABEL_64;
        }

        v62 = v60;
        v63 = v61;
        v64 = sub_1C456902C(&qword_1EC0B9DF8, &qword_1C4F12D50);
        if (sub_1C4485E9C(v64))
        {
          v65 = sub_1C457AF20(v10);
          if ((v63 & 1) != (v66 & 1))
          {
            goto LABEL_71;
          }

          v62 = v65;
        }

        v18 = v83[0];
        if (v63)
        {
          *(*(v83[0] + 56) + 4 * v62) = v59;
        }

        else
        {
          sub_1C443FAA4();
          if (v48)
          {
            goto LABEL_67;
          }

          *(v83[0] + 16) = v67;
        }

        if (v3 == ++v57)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_63;
    }

LABEL_44:

    v83[0] = sub_1C4618984(v18, sub_1C497EB7C, sub_1C4619C24, sub_1C449BB08);
    v3 = 0;
    sub_1C46098E8(v83);

    if (*(v83[0] + 16) >= v79)
    {
      v68 = v79;
    }

    else
    {
      v68 = *(v83[0] + 16);
    }

    if ((v79 & 0x8000000000000000) == 0)
    {
      if (v68)
      {
        v69 = (v83[0] + 32);
        v70 = MEMORY[0x1E69E7CC0];
        do
        {
          v72 = *v69;
          v69 += 4;
          v71 = v72;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458B26C();
            v70 = v74;
          }

          v73 = *(v70 + 16);
          if (v73 >= *(v70 + 24) >> 1)
          {
            sub_1C458B26C();
            v70 = v75;
          }

          *(v70 + 16) = v73 + 1;
          *(v70 + 2 * v73 + 32) = v71;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = MEMORY[0x1E69E7CC0];
      }

      return v70;
    }

    goto LABEL_68;
  }

  v20 = v19;
  swift_beginAccess();
  v21 = [*(v2 + v20) bSet];
  sub_1C4EF9FA8();

  sub_1C441C0FC();
  sub_1C461861C(v22, v23, MEMORY[0x1E6969B88]);
  sub_1C43FC034();
  v24 = sub_1C4F01BA8();
  if (!v24)
  {
LABEL_19:
    (*(v80 + 8))(v15, v10);
    v3 = *(v17 + 16);
    if (v3)
    {
      v43 = 0;
      while (v43 < *(v17 + 16))
      {
        [sub_1C441D688() lookupUnsmoothedA:0xFFFFLL b:v10];
        v45 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C444BFB8();
        sub_1C4404C54();
        if (v48)
        {
          goto LABEL_65;
        }

        v49 = v46;
        v50 = v47;
        v51 = sub_1C456902C(&qword_1EC0B9DF8, &qword_1C4F12D50);
        if (sub_1C4485E9C(v51))
        {
          v52 = sub_1C457AF20(v10);
          if ((v50 & 1) != (v53 & 1))
          {
            goto LABEL_71;
          }

          v49 = v52;
        }

        v18 = v83[0];
        if (v50)
        {
          *(*(v83[0] + 56) + 4 * v49) = v45;
        }

        else
        {
          sub_1C443FAA4();
          if (v48)
          {
            goto LABEL_66;
          }

          *(v83[0] + 16) = v54;
        }

        if (v3 == ++v43)
        {
          goto LABEL_44;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    goto LABEL_44;
  }

  v25 = v24;
  sub_1C4458664(v24);
  v17 = v84;
  sub_1C43FC034();
  sub_1C4F01B98();
  if ((v25 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      sub_1C4F01BE8();
      v26 = sub_1C449DA30();
      v27(v26);
      if ((v3 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v3 >> 16)
      {
        goto LABEL_60;
      }

      v84 = v17;
      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C459D488((v28 > 1), v29 + 1, 1);
        v17 = v84;
      }

      *(v17 + 16) = v29 + 1;
      *(v17 + 2 * v29 + 32) = v3;
      sub_1C4F01BB8();
      if (!--v25)
      {
        (*(v77 + 8))(v82, v78);
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  sub_1C4F029F8();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C46112E4(void *a1)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C44058BC();
  v6 = (v1 + *a1);
  sub_1C440F1BC();
  swift_beginAccess();
  [*v6 clear];
  v7 = sub_1C4EF9CD8();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4414918();
  swift_beginAccess();
  v8 = type metadata accessor for DecayingHistogramState(0);
  sub_1C45AD734(v2, v6 + *(v8 + 20));
  return swift_endAccess();
}

uint64_t sub_1C46113D0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  *(v5 + 136) = a1;
  *(v5 + 144) = a3;
  v7 = sub_1C4EF9CD8();
  *(v5 + 168) = v7;
  sub_1C43FCF7C(v7);
  *(v5 + 176) = v8;
  *(v5 + 184) = swift_task_alloc();
  v9 = sub_1C4EFDAB8();
  *(v5 + 192) = v9;
  sub_1C43FCF7C(v9);
  *(v5 + 200) = v10;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C461151C, 0, 0);
}

void sub_1C461151C()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 264) = v2;
  v3 = *(v0 + 232);
  if (v2)
  {
    v4 = *(v0 + 200);
    v54 = *(v0 + 192);
    v5 = *(v1 + 40);
    v51 = *(v0 + 240);
    swift_getObjectType();
    v6 = *(v5 + 64);
    swift_unknownObjectRetain();
    v7 = sub_1C440CAF0();
    v8 = v1;
    v6(v7);
    swift_unknownObjectRelease();
    v53 = *(v4 + 32);
    v53(v51, v3, v54);
    *(swift_task_alloc() + 16) = v51;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4B344BC();
    v10 = v9;

    v11 = *(v10 + 16);

    if (v11 == v2)
    {
      v12 = *(v0 + 248);
      v14 = *(v0 + 152);
      v13 = *(v0 + 160);
      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      v17 = swift_task_alloc();
      *(v17 + 16) = v16;
      sub_1C4D37344(sub_1C461C07C, v17, v13);

      v18 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested;
      *(v0 + 272) = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested;
      *(v15 + v18) = v14;

      v12(v19);
      *(v0 + 280) = *(v0 + 88);
      *(v0 + 304) = 0;
      *(v0 + 312) = 0;
      *(v0 + 296) = 0;
      v20 = swift_task_alloc();
      *(v0 + 320) = v20;
      *v20 = v0;
      sub_1C441E214(v20);
      sub_1C4409A94();

      __asm { BRAA            X1, X16 }
    }

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CE8();

    if (os_log_type_enabled(v26, v27))
    {
      v49 = v27;
      log = v26;
      v52 = *(v0 + 200);
      v28 = swift_slowAlloc();
      sub_1C43FEC60();
      v47 = swift_slowAlloc();
      v55 = v47;
      buf = v28;
      *v28 = 136315138;
      v56 = MEMORY[0x1E69E7CC0];
      sub_1C459D1E0();
      v29 = v56;
      v30 = (v8 + 40);
      do
      {
        v31 = *v30;
        ObjectType = swift_getObjectType();
        v33 = *(v31 + 64);
        swift_unknownObjectRetain();
        v33(ObjectType, v31);
        swift_unknownObjectRelease();
        v56 = v29;
        v34 = *(v29 + 16);
        if (v34 >= *(v29 + 24) >> 1)
        {
          sub_1C459D1E0();
          v29 = v56;
        }

        v35 = *(v0 + 208);
        v36 = *(v0 + 192);
        *(v29 + 16) = v34 + 1;
        v53(v29 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v34, v35, v36);
        v30 += 2;
        --v2;
      }

      while (v2);
      v37 = MEMORY[0x1C6940380](v29, *(v0 + 192));
      v39 = v38;

      v40 = sub_1C441D828(v37, v39, &v55);

      *(buf + 4) = v40;
      v26 = log;
      _os_log_impl(&dword_1C43F8000, log, v49, "Mismatch histogram behavior types. Skipping digest of histograms: %s", buf, 0xCu);
      sub_1C440962C(v47);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C461844C();
    sub_1C441C114();
    v41 = swift_allocError();
    sub_1C440ED9C(v41, v42);
    swift_willThrow();
    v43 = sub_1C4461F20();
    v44(v43);

    sub_1C4409A94();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4409A94();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C4611AA0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1C46124A8;
  }

  else
  {
    v2 = sub_1C4611BB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C4611BD0()
{
  v85 = v0;
  v2 = *(v0 + 336);
  if (!v2)
  {
    v49 = *(v0 + 312);

    if (v49 < 1)
    {
LABEL_26:
      *(*(v0 + 144) + *(v0 + 272)) = 0;

      v67 = 0;
      v68 = 0;
      while (v68 != *(v0 + 264))
      {
        ++v68;
        v69 = *(*(v0 + 160) + v67 + 40);
        swift_getObjectType();
        v70 = *(v69 + 136);
        swift_unknownObjectRetain();
        v71 = sub_1C4404C28();
        v70(v71);
        swift_unknownObjectRelease();
        v67 += 16;
      }

      (*(*(v0 + 200) + 8))(*(v0 + 240), *(v0 + 192));
      v72 = *(v0 + 296);

      v73 = *(v0 + 8);

      return v73(v72);
    }

    v1 = *(v0 + 304);
    if (qword_1EDDFA668 == -1)
    {
LABEL_23:
      v50 = sub_1C4F00978();
      sub_1C442B738(v50, qword_1EDE2DDE0);
      v51 = sub_1C43FBC98();
      v52(v51);
      v53 = sub_1C4F00968();
      v54 = sub_1C4F01CB8();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 216);
      v57 = *(v0 + 192);
      v58 = *(v0 + 200);
      if (v55)
      {
        sub_1C44357DC();
        v59 = swift_slowAlloc();
        sub_1C43FEC60();
        v60 = swift_slowAlloc();
        v84[0] = v60;
        *v59 = 136315394;
        sub_1C441F518();
        sub_1C461861C(v61, v62, MEMORY[0x1E69A94A8]);
        sub_1C4F02858();
        (*(v58 + 8))(v56, v57);
        v63 = sub_1C43FD258();
        v66 = sub_1C441D828(v63, v64, v65);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2048;
        *(v59 + 14) = v1;
        _os_log_impl(&dword_1C43F8000, v53, v54, "[tracking %s]: Skipped %f%% behavior events during digest due to missing context", v59, 0x16u);
        sub_1C440962C(v60);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        (*(v58 + 8))(v56, v57);
      }

      goto LABEL_26;
    }

LABEL_36:
    sub_1C4406758();
    swift_once();
    goto LABEL_23;
  }

  v3 = *(v0 + 296);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v75 = v5;
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 168);
  v74 = objc_autoreleasePoolPush();
  type metadata accessor for BehaviorEvent();
  v9 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);
  *(v0 + 16) = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
  *(v0 + 24) = v9;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 17;
  (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date, v8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45D644C(v0 + 16, v6);
  v10 = 0;
  v11 = 0;
  v12 = *(v0 + 328);
  v76 = *(v0 + 312);
  v80 = *(v0 + 304);
  v81 = v13;
  do
  {
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v82 = v10;
    v16 = *(*(v0 + 160) + v10 + 40);
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 120);
    swift_unknownObjectRetain();
    v18(v81, v14, v15, ObjectType, v16);
    if (v12)
    {
      *(v0 + 120) = v12;
      v19 = v12;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 57) & 1) == 0)
      {

        swift_unknownObjectRelease();
        if (__OFADD__(v76, 1))
        {
          goto LABEL_33;
        }

        if (__OFADD__(v80, 1))
        {
          goto LABEL_34;
        }

        ++v76;
        ++v80;
      }

      else
      {

        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406758();
          swift_once();
        }

        v20 = sub_1C4F00978();
        sub_1C442B738(v20, qword_1EDE2DDE0);
        v21 = sub_1C43FBC98();
        v22(v21);
        swift_unknownObjectRetain();
        v23 = v12;

        v24 = sub_1C4F00968();
        v25 = sub_1C4F01CD8();
        swift_unknownObjectRelease();

        v26 = os_log_type_enabled(v24, v25);
        v79 = *(v0 + 224);
        v28 = *(v0 + 192);
        v27 = *(v0 + 200);
        if (v26)
        {
          v78 = v25;
          v29 = swift_slowAlloc();
          v84[0] = swift_slowAlloc();
          *v29 = 136315906;
          swift_getObjectType();
          log = v24;
          v30 = (*(v16 + 24))();
          v31 = sub_1C460AEA8(v30);
          v33 = sub_1C441D828(v31, v32, v84);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2080;
          sub_1C441F518();
          sub_1C461861C(&qword_1EDDEFFB0, v34, MEMORY[0x1E69A94A8]);
          sub_1C4F02858();
          (*(v27 + 8))(v79, v28);
          v35 = sub_1C43FFE24();
          v38 = sub_1C441D828(v35, v36, v37);

          *(v29 + 14) = v38;
          *(v29 + 22) = 2080;

          v39 = sub_1C45D62A8();
          v41 = v40;

          v42 = sub_1C441D828(v39, v41, v84);

          *(v29 + 24) = v42;
          *(v29 + 32) = 2080;
          swift_getErrorValue();
          v43 = sub_1C4F02A38();
          v45 = sub_1C441D828(v43, v44, v84);

          *(v29 + 34) = v45;
          _os_log_impl(&dword_1C43F8000, log, v78, "[%s histogram, tracking %s]: Skipping event %s due to failure getting histogram key for behavior - %s", v29, 0x2Au);
          swift_arrayDestroy();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          (*(v27 + 8))(v79, v28);
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
      if (__OFADD__(v80, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      ++v80;
    }

    v12 = 0;
    ++v11;
    v10 = v82 + 16;
  }

  while (v11 != *(v0 + 264));
  *(*(v0 + 144) + *(v0 + 272)) = v81;

  objc_autoreleasePoolPop(v74);

  *(v0 + 304) = v80;
  *(v0 + 312) = v76;
  *(v0 + 296) = v75;
  v83 = (*(v0 + 280) + **(v0 + 280));
  v46 = swift_task_alloc();
  *(v0 + 320) = v46;
  *v46 = v0;
  v47 = sub_1C441E214(v46);

  return v83(v47);
}

uint64_t sub_1C46124BC()
{
  *(v0 + 112) = *(v0 + 328);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1C4612550, 0, 0);
}

uint64_t sub_1C4612550()
{

  v1 = sub_1C4461F20();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

BOOL sub_1C461260C()
{
  sub_1C43FBE94();
  v2 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v6 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v6 + 64))(ObjectType, v6);
  sub_1C441F518();
  sub_1C461861C(v8, v9, MEMORY[0x1E69A9498]);
  sub_1C4F01578();
  sub_1C4F01578();
  (*(v4 + 8))(v1, v2);
  return v12 == v11;
}

uint64_t sub_1C4612754(void *a1, uint64_t a2)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v3 + 128))(a2, ObjectType, v3);
}

void sub_1C46127B4(void *a1, uint64_t a2)
{
  v4 = sub_1C4EFDAB8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 error];
  if (v9)
  {
    v10 = v9;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DDE0);
    (*(v5 + 16))(v8, a2, v4);
    v12 = v10;
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315394;
      sub_1C461861C(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
      v17 = sub_1C4F02858();
      v19 = v18;
      (*(v5 + 8))(v8, v4);
      v20 = sub_1C441D828(v17, v19, &v25);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_1C4F02A38();
      v23 = sub_1C441D828(v21, v22, &v25);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1C43F8000, v13, v14, "[tracking %s]: At digest, Biome sink completed with error- %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_1C4612AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1C4EFDAB8();
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(a2 + 16);
  if (v8)
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v9 = (a2 + 40);
    while (1)
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 120);
      swift_unknownObjectRetain();
      v12(a1, a3, a4, ObjectType, v10);
      result = swift_unknownObjectRelease();
      v14 = *(a5 + 16);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        break;
      }

      *(a5 + 16) = v16;
      v9 += 2;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_5:
    *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested) = a1;
  }

  return result;
}

uint64_t sub_1C4613044()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C4425948();
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16))
  {
LABEL_5:
    v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C46133B8(v9);

    if ((v10 & 0x10000) == 0)
    {
      v8 = v10 + 1;
      if ((v8 & 0x10000) == 0)
      {
LABEL_9:
        sub_1C4414918();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1C4434E60(isUniquelyReferenced_nonNull_native);
        *(v1 + v2) = v13;
        swift_endAccess();
        return v8;
      }

      __break(1u);
    }

    v8 = 0;
    goto LABEL_9;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C43FE5F8();
  v6 = sub_1C445FAA8(v4, v5);
  if ((v7 & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = *(*(v3 + 56) + 2 * v6);

  return v8;
}

uint64_t sub_1C4613148(uint64_t a1)
{
  v2 = v1;
  sub_1C4F02858();
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C4425948();
  swift_beginAccess();
  v4 = *(v1 + v3);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C43FE5F8();
  v7 = sub_1C465C230(v5, v6, v4);

  if ((v7 & 0x10000) != 0)
  {
    v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C46133B8(v8);

    if ((v9 & 0x10000) == 0)
    {
      v7 = v9 + 1;
      if ((v7 & 0x10000) == 0)
      {
LABEL_7:
        sub_1C4414918();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1C4434E60(isUniquelyReferenced_nonNull_native);
        *(v2 + v3) = v12;

        swift_endAccess();
        return v7;
      }

      __break(1u);
    }

    v7 = 0;
    goto LABEL_7;
  }

  return v7;
}

uint64_t sub_1C4613268(uint64_t a1)
{
  v2 = v1;
  sub_1C4EF9CF8();
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C4425948();
  swift_beginAccess();
  v4 = *(v1 + v3);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C43FE5F8();
  v7 = sub_1C465C230(v5, v6, v4);

  if ((v7 & 0x10000) != 0)
  {
    v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C46133B8(v8);

    if ((v9 & 0x10000) == 0)
    {
      v7 = v9 + 1;
      if ((v7 & 0x10000) == 0)
      {
LABEL_7:
        sub_1C4414918();
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1C4434E60(isUniquelyReferenced_nonNull_native);
        *(v2 + v3) = v12;

        swift_endAccess();
        return v7;
      }

      __break(1u);
    }

    v7 = 0;
    goto LABEL_7;
  }

  return v7;
}

uint64_t sub_1C4613374(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C46133B8(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 2 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = *(v11 + ((v13 << 7) | (2 * v14)));
      if (v12 <= v15)
      {
        v12 = v15;
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = v12;
        return v17 | (v16 << 16);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        break;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 16);
  }

  return result;
}

uint64_t sub_1C46134D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_1C4613518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

void sub_1C4613570()
{
  sub_1C43FBD3C();
  v2 = v0;
  sub_1C4EF9FD8();
  sub_1C43FCDF8();
  v29 = v4;
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44144F4();
  sub_1C4610378();
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  v6 = [*(v2 + v5) bSet];
  v32 = v1;
  sub_1C4EF9FA8();

  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C440F1BC();
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    sub_1C43FE644();
    v16 = (*(v8 + 48) + 16 * (v15 | (v13 << 6)));
    v18 = *v16;
    v17 = v16[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (sub_1C4EF9FC8())
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v31 = v21;
      }

      v19 = v31[2];
      if (v19 >= v31[3] >> 1)
      {
        sub_1C443D664();
        v31 = v22;
      }

      v31[2] = v19 + 1;
      v20 = &v31[2 * v19];
      v20[4] = v18;
      v20[5] = v17;
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v23 = v31[2];
  if (v23)
  {
    v24 = v31 + 5;
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      sub_1C4414918();
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445FAA8(v25, v26);
      v28 = v27;

      if (v28)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v2 + v7);
        *(v2 + v7) = 0x8000000000000000;
        sub_1C456902C(&qword_1EC0B9E10, &unk_1C4F12D68);
        sub_1C4F02458();

        sub_1C4F02478();
        *(v2 + v7) = v33;
      }

      swift_endAccess();
      v24 += 2;
      --v23;
    }

    while (v23);
  }

  (*(v29 + 8))(v32, v30);

  sub_1C43FE9F0();
}

void sub_1C46138B4()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  sub_1C4418280(v8, v8[3]);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v16 = sub_1C443E2C0(v15);
  v17(v16);
  v18 = *v0;
  v19 = (v13 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource);
  v19[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v19[4] = &off_1F43E2510;
  *v19 = v18;
  sub_1C44191A0();
  sub_1C461B9D8(v12, v13 + v20);
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v22 + 32))(v13 + v21, v10);
  sub_1C443FA18(v6, v13 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource);
  v23 = (v13 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
  *v23 = v4;
  v23[1] = v2;
  sub_1C440962C(v8);
  sub_1C4495188();
  sub_1C43FE9F0();
}

uint64_t sub_1C4613A34()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource));

  sub_1C440DF1C();
  sub_1C461B820();
  return v0;
}

uint64_t sub_1C4613B14(uint64_t a1)
{
  result = sub_1C4EFDAB8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DecayingHistogramState(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4613BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172676F74736968 && a2 == 0xEE0065746174536DLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEB0000000070614DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4613CCC(char a1)
{
  if (a1)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x6172676F74736968;
  }
}

uint64_t sub_1C4613D18(void *a1)
{
  v3 = v1;
  sub_1C456902C(&qword_1EC0B9E48, &qword_1C4F12F98);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C4409678(a1, a1[3]);
  sub_1C461BCA8();
  sub_1C4F02BF8();
  v19 = 0;
  type metadata accessor for DecayingHistogramState(0);
  sub_1C4431FA4();
  v8 = sub_1C461861C(v6, v7, &unk_1C4F1E488);
  sub_1C447F7A8(v3, &v19, v9, v10, v8);
  if (!v2)
  {
    v18 = *(v3 + *(type metadata accessor for CategoricalBehaviorHistogramBase.Snapshot(0) + 20));
    v17 = 1;
    sub_1C456902C(&qword_1EC0B9E40, &qword_1C4F12F90);
    v11 = sub_1C461BCFC(&qword_1EDDF06D8, MEMORY[0x1E69E6160], MEMORY[0x1E69E7600], MEMORY[0x1E69E5E38]);
    sub_1C447F7A8(&v18, &v17, v12, v13, v11);
  }

  v14 = sub_1C43FD024();
  return v15(v14);
}

void sub_1C4613EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v27 = v26;
  v39 = v28;
  type metadata accessor for DecayingHistogramState(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v42 = v31 - v30;
  sub_1C456902C(&qword_1EC0B9E38, &qword_1C4F12F88);
  sub_1C43FCDF8();
  v40 = v33;
  v41 = v32;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4405820();
  v35 = type metadata accessor for CategoricalBehaviorHistogramBase.Snapshot(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4409678(v27, v27[3]);
  sub_1C461BCA8();
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v27);
  }

  else
  {
    sub_1C4431FA4();
    sub_1C461861C(v37, v38, &unk_1C4F1E4B0);
    sub_1C4F026C8();
    sub_1C44191A0();
    sub_1C461B9D8(v42, v24);
    sub_1C456902C(&qword_1EC0B9E40, &qword_1C4F12F90);
    sub_1C461BCFC(&qword_1EDDF06D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E7628], MEMORY[0x1E69E5E58]);
    sub_1C4F026C8();
    (*(v40 + 8))(v25, v41);
    *(v24 + *(v35 + 20)) = v43;
    sub_1C461B8B4(v24, v39);
    sub_1C440962C(v27);
    sub_1C461B820();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C46141F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4614248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4613BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4614270(uint64_t a1)
{
  v2 = sub_1C461BCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46142AC(uint64_t a1)
{
  v2 = sub_1C461BCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4614318()
{
  sub_1C43FBD3C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1C4440CCC();
  v12 = swift_allocObject();
  sub_1C4418280(v11, v11[3]);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v15 = sub_1C4414900(v14);
  v16(v15);
  v17 = *v3;
  v18 = (v12 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_behaviorKeySource);
  v18[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v18[4] = &off_1F43E2510;
  *v18 = v17;
  sub_1C44191A0();
  sub_1C461B9D8(v2, v12 + v19);
  *(v12 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap) = v1;
  v20 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_trackedBehaviorType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v21 + 32))(v12 + v20, v0);
  sub_1C443FA18(v9, v12 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource);
  v22 = (v12 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource);
  *v22 = v7;
  v22[1] = v5;
  sub_1C440962C(v11);
  sub_1C4495188();
  sub_1C43FE9F0();
}

void sub_1C46144A0()
{
  sub_1C43FE96C();
  v32 = v4;
  v33 = v3;
  v36 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v31 = v15 - v14;
  v16 = sub_1C43FBE44();
  v17 = type metadata accessor for DecayingHistogramState(v16);
  v18 = sub_1C43FBD18(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v19 = type metadata accessor for CategoricalBehaviorHistogramBase.Snapshot(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  v24 = objc_autoreleasePoolPush();
  sub_1C4EF9348();
  sub_1C43FD23C();
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C444FC5C();
  sub_1C461861C(v25, v26, &unk_1C4F12EDC);
  sub_1C4EF9328();

  objc_autoreleasePoolPop(v24);
  if (v1)
  {
    sub_1C4434000(v9, v7);
    sub_1C440962C(v32);
    sub_1C440962C(v33);
    (*(v12 + 8))(v36, v10);
  }

  else
  {
    sub_1C4412D20();
    v27 = sub_1C440CAF0();
    sub_1C461B8B4(v27, v28);
    v29 = *(v23 + *(v19 + 20));
    (*(v12 + 16))(v31, v36, v10);
    sub_1C442E860(v33, v35);
    sub_1C442E860(v32, v34);
    v30 = *(v0 + 200);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v30(v2, v29, v31, v35, v34, sub_1C461C054, 0);
    sub_1C4434000(v9, v7);
    sub_1C440962C(v32);
    sub_1C440962C(v33);
    (*(v12 + 8))(v36, v10);
    sub_1C440BB94();
    sub_1C461B820();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C461477C()
{
  v2 = type metadata accessor for CategoricalBehaviorHistogramBase.Snapshot(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44109B4();
  sub_1C4EF93D8();
  sub_1C43FD23C();
  swift_allocObject();
  sub_1C4EF93C8();
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C4412D20();
  sub_1C461B8B4(v0 + v4, v1);
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C440F1BC();
  swift_beginAccess();
  *(v1 + *(v2 + 20)) = *(v0 + v5);
  sub_1C444FC5C();
  sub_1C461861C(v6, v7, &unk_1C4F12EB4);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF93B8();
  sub_1C440BB94();
  sub_1C461B820();

  return sub_1C44A1BCC();
}

uint64_t sub_1C46148B8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_trackedBehaviorType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_behaviorKeySource));

  sub_1C440DF1C();
  sub_1C461B820();

  return v0;
}

uint64_t sub_1C4614990(uint64_t a1)
{
  result = sub_1C4EFDAB8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DecayingHistogramState(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1C4614A80()
{
  sub_1C442A8A4();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  v3 = sub_1C4404044();
  v4(v3);
  v5 = objc_autoreleasePoolPush();
  sub_1C4EF9E78();
  sub_1C4EF9B78();
  v6 = sub_1C4422A18();
  v7(v6);
  v8 = sub_1C447F4CC(432.0);
  if (!(v10 ^ v11 | v9))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 <= -9.22337204e18)
  {
    goto LABEL_8;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v8;
  objc_autoreleasePoolPop(v5);
  v13 = sub_1C43FFE3C();
  v14(v13);
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v12 >> 16)
  {
LABEL_11:
    __break(1u);
  }
}

void sub_1C4614C70()
{
  sub_1C43FBD3C();
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C44144F4();
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v18 = objc_autoreleasePoolPush();
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  v12 = sub_1C43FD258();
  v13(v12);
  sub_1C4EF9CC8();
  sub_1C4EF9E78();
  v14 = *(v4 + 8);
  v14(v8, v2);
  v15 = sub_1C4404C28();
  v16(v15);
  v19 = v11;
  v20 = 0x407B000000000000;
  sub_1C45D9A84();
  v14(v11, v2);
  objc_autoreleasePoolPop(v18);
  sub_1C43FE9F0();
}

void sub_1C4614F38()
{
  sub_1C442A8A4();
  v1 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4425958();
  v6 = objc_autoreleasePoolPush();
  sub_1C4EF9E78();
  sub_1C4EF9BE8();
  sub_1C4EF9B78();
  v7 = *(v3 + 8);
  v8 = sub_1C43FFE3C();
  v7(v8);
  (v7)(v0, v1);
  v9 = sub_1C447F4CC(21600.0);
  if (!(v11 ^ v12 | v10))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v9 < 65536.0)
  {
    objc_autoreleasePoolPop(v6);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C46150A0()
{
  sub_1C4614F38();
  v1 = &byte_1F43D2B78[v0];
  result = 0x746867696ELL;
  switch(v1[32])
  {
    case 1:
      v3 = 1852993389;
      goto LABEL_5;
    case 2:
      result = sub_1C44D3F60();
      break;
    case 3:
      v3 = 1852143205;
LABEL_5:
      result = v3 | 0x676E6900000000;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4615124()
{
  sub_1C442F0C4();
  sub_1C44158BC();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - v4;
  v6 = objc_autoreleasePoolPush();
  sub_1C4EF9E78();
  sub_1C4EF9BE8();
  v7 = *(v1 + 8);
  v8 = sub_1C43FD024();
  v7(v8);
  v10[2] = v5;
  v10[3] = 0x40D5180000000000;
  sub_1C45D9A84();
  v9 = sub_1C43FFE3C();
  v7(v9);
  objc_autoreleasePoolPop(v6);
  sub_1C4422220();
}

void sub_1C461526C()
{
  sub_1C442F0C4();
  sub_1C4403FC0();
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v2);
  sub_1C44690A8();
  v4(v2, v3);
  sub_1C4402CD0();
  sub_1C4614F38();
  v5 = sub_1C442F104();
  v6(v5);
  sub_1C4422220();
}

void sub_1C4615350()
{
  sub_1C43FBD3C();
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44109B4();
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4EF9CC8();
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  sub_1C44690A8();
  v7 = sub_1C43FFE24();
  v8(v7);
  sub_1C4615124();
  v9 = sub_1C43FD024();
  v10(v9);
  (*(v5 + 8))(v1, v3);
  sub_1C43FE9F0();
}

void sub_1C461552C()
{
  sub_1C442F0C4();
  v2 = v1;
  v4 = v3;
  sub_1C4418280(v3, *(v3 + 24));
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C4405820();
  (*(v6 + 16))(v0);
  v7 = sub_1C43FE5F8();
  v2(v7);
  sub_1C440962C(v4);
  sub_1C445AB74();
  sub_1C4422220();
}

void sub_1C4615670()
{
  sub_1C43FBD3C();
  sub_1C44158BC();
  v3 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v7 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  v11 = sub_1C4404044();
  v12(v11);
  v13 = objc_autoreleasePoolPush();
  (*(v5 + 104))(v1, *MEMORY[0x1E6969AB0], v3);
  v14 = sub_1C4EF9F78();
  v15 = sub_1C43FFE3C();
  v16(v15);
  v17 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v13);
  (*(v9 + 8))(v2, v7);
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(v17 >> 16))
  {
    sub_1C43FE9F0();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C4615834()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C4615884(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1C4615884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1C4EF9F68();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v39 - v6;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = sub_1C4EF9F88();
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24);
  v17 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((a1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v18);
  (*(v17 + 8))(v18, v17);
  sub_1C4EF9CC8();
  v41 = v13;
  sub_1C4EF9E78();
  v19 = *(v8 + 8);
  v48 = v8 + 8;
  v49 = v7;
  v44 = v19;
  v19(v10, v7);
  v20 = *MEMORY[0x1E6969AB0];
  v21 = v42;
  v22 = v43;
  v23 = *(v43 + 104);
  v23(v42, v20, v3);
  v40 = sub_1C4EF9F78();
  v24 = *(v22 + 8);
  v24(v21, v3);
  v23(v21, v20, v3);
  v25 = v45;
  v23(v45, *MEMORY[0x1E6969A10], v3);
  v26 = v41;
  v27 = v16;
  v28 = sub_1C4EF9F48();
  v43 = v29;
  LOBYTE(v16) = v30;
  v24(v25, v3);
  v31 = (v24)(v21, v3);
  if (v16)
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v31);
    v33 = v40;
    *(&v39 - 4) = v27;
    *(&v39 - 3) = v33;
    *(&v39 - 2) = v26;
    sub_1C49BFC78(sub_1C461B9B8, (&v39 - 6), v28, v43, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  *v51 = v32;
  v44(v26, v49);
  return (*(v46 + 8))(v27, v47);
}

uint64_t sub_1C4615C88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C4EF9F68();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  result = (*(v7 + 104))(v10, *MEMORY[0x1E6969A48], v6, v8);
  if (__OFSUB__(v11, a3))
  {
    __break(1u);
  }

  else
  {
    sub_1C4EF9F28();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

BOOL sub_1C4615E88(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1C4EF9EC8();
  objc_autoreleasePoolPop(v1);
  return (v2 & 1) == 0;
}

uint64_t sub_1C4615ED8(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4615F2C(a2, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4615F2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v66 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v72 = v58 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v58 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v58 - v11;
  v13 = sub_1C4EF9F68();
  v73 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v69 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4EF9CD8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v71 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v58 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v58 - v22;
  sub_1C4EF9CC8();
  sub_1C4EF9E78();
  v67 = v15;
  v68 = v16;
  v62 = *(v16 + 8);
  v63 = v16 + 8;
  v62(v20, v15);
  v24 = *MEMORY[0x1E6969AB0];
  v25 = v73;
  v26 = *(v73 + 104);
  v58[1] = v73 + 104;
  v27 = v69;
  v26(v69, v24, v13);
  v65 = v23;
  v58[2] = a1;
  v28 = sub_1C4EF9F78();
  v29 = v25 + 8;
  v30 = *(v25 + 8);
  v73 = v29;
  v30(v27, v13);
  v31 = v30;
  v32 = v27;
  v33 = *MEMORY[0x1E6969A48];
  v59 = v13;
  v61 = v26;
  result = (v26)(v32, v33, v13);
  v60 = v28;
  if (__OFSUB__(0, v28))
  {
    __break(1u);
  }

  else
  {
    sub_1C4EF9F28();
    v35 = v33;
    v36 = v59;
    v31(v32, v59);
    v61(v32, v35, v36);
    sub_1C4EF9F28();
    v31(v32, v36);
    sub_1C456902C(&qword_1EC0B8F38, &qword_1C4F0EA08);
    v37 = *(v66 + 72);
    v38 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C4F0CE60;
    v61 = v39;
    v40 = v39 + v38;
    sub_1C4467FE0(v12, v39 + v38);
    sub_1C4467FE0(v9, v40 + v37);
    v41 = 0;
    v42 = 0;
    v43 = v67;
    v69 = (v68 + 32);
    v73 = MEMORY[0x1E69E7CC0];
    v66 = v40;
    do
    {
      v44 = v12;
      v45 = v9;
      v46 = v41;
      v47 = v72;
      sub_1C4467FE0(v40 + v42 * v37, v72);
      v48 = v70;
      sub_1C44973B8(v47, v70, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (sub_1C44157D4(v48, 1, v43) == 1)
      {
        sub_1C4420C3C(v48, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v12 = v44;
      }

      else
      {
        v49 = *v69;
        (*v69)(v71, v48, v43);
        v50 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458B150(0, *(v50 + 16) + 1, 1, v50);
          v50 = v56;
        }

        v52 = *(v50 + 16);
        v51 = *(v50 + 24);
        v53 = v68;
        if (v52 >= v51 >> 1)
        {
          sub_1C458B150(v51 > 1, v52 + 1, 1, v50);
          v53 = v68;
          v50 = v57;
        }

        *(v50 + 16) = v52 + 1;
        v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v73 = v50;
        v55 = v50 + v54 + *(v53 + 72) * v52;
        v43 = v67;
        v49(v55, v71, v67);
        v9 = v45;
        v12 = v44;
        v40 = v66;
      }

      v41 = 1;
      v42 = 1;
    }

    while ((v46 & 1) == 0);
    swift_setDeallocating();
    sub_1C49E1570();
    sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = (v62)(v65, v43);
    *v64 = v73;
  }

  return result;
}

void sub_1C4616548()
{
  sub_1C442F0C4();
  sub_1C4403FC0();
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v2);
  sub_1C44690A8();
  v4(v2, v3);
  v5 = sub_1C4402CD0();
  sub_1C4615E88(v5);
  v6 = sub_1C442F104();
  v7(v6);
  sub_1C4422220();
}

void sub_1C461662C()
{
  sub_1C43FBD3C();
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44109B4();
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4EF9CC8();
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  sub_1C44690A8();
  v8 = sub_1C43FFE24();
  v10 = v9(v8);
  sub_1C4615ED8(v10, v1);
  v11 = sub_1C43FD024();
  v12(v11);
  (*(v6 + 8))(v2, v4);
  sub_1C43FE9F0();
}

uint64_t sub_1C461697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, a1 + v4, v5);
  sub_1C43FBD94();

  return sub_1C440BAA8(v7, v8, v9, v5);
}

uint64_t sub_1C4616A94()
{
  v1 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource);
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C4409678(v1, v1[3]);
  return sub_1C45EA5B4();
}

uint64_t sub_1C4616B08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 && (v4 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested)) != 0)
  {
    v10 = *(v4 + 32);
    v11 = *(v4 + 16);
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    result = sub_1C45D7F78(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v5, v6);
    v9 = v10;
    v8 = v11;
  }

  else
  {
    result = sub_1C45D72D0(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType, (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v12);
    v8 = v12[0];
    v9 = v12[1];
    v5 = v13;
    v6 = v14;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  return result;
}

double sub_1C4616C04@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_1C4616B08(a1, &v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

unint64_t sub_1C4616D1C(unint64_t *a1)
{
  result = *a1;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >> 16)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1C4616D5C()
{
  sub_1C43FBD3C();
  v1 = v0;
  sub_1C4418280(v0, *(v0 + 24));
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v4 = sub_1C443E2C0(v3);
  v5(v4);
  sub_1C461B5AC();
  sub_1C440962C(v1);
  sub_1C43FE9F0();
}

void sub_1C4616F28()
{
  sub_1C442F0C4();
  sub_1C4441424();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44144F4();
  if (v0)
  {
    v5 = sub_1C43FEC50();
    v6(v5);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v7 = sub_1C44109E8();
    v8(v7);
    if (!v1)
    {
      goto LABEL_9;
    }

    sub_1C445C110();
    v9 = *(v1 + 56);
    v10 = sub_1C44086E0();
    sub_1C45D7F78(v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = sub_1C43FEC50();
    v17(v16);
    sub_1C4404C34();
    v18 = sub_1C44109E8();
    v19(v18);
    v9 = v27;
    if (v27 == 255)
    {
      goto LABEL_9;
    }

    v3 = v26;
  }

  if (v9 != 7 || (v3 & 1) == 0)
  {
    v20 = sub_1C44086E0();
    sub_1C45A23B4(v20, v21, v22, v23, v24, v25);
  }

LABEL_9:
  sub_1C43FBC98();
  sub_1C4422220();
}

void sub_1C46170C4(void *a1@<X8>)
{
  sub_1C4616F28();
  *a1 = v2;
  a1[1] = v3;
}

void sub_1C4617138()
{
  sub_1C442F0C4();
  sub_1C4441424();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44144F4();
  if (v0)
  {
    v3 = sub_1C43FEC50();
    v4(v3);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v5 = sub_1C44109E8();
    v6(v5);
    if (!v1)
    {
      goto LABEL_8;
    }

    sub_1C445C110();
    v7 = *(v1 + 56);
    v8 = sub_1C441189C();
    sub_1C45D7F78(v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v14 = sub_1C43FEC50();
    v15(v14);
    sub_1C4404C34();
    v16 = sub_1C44109E8();
    v17(v16);
    v7 = v24;
    if (v24 == 255)
    {
      goto LABEL_8;
    }

    sub_1C44605FC();
  }

  if (v7 != 18)
  {
    v18 = sub_1C441189C();
    sub_1C45A23B4(v18, v19, v20, v21, v22, v23);
  }

LABEL_8:
  sub_1C445AB74();
  sub_1C4422220();
}

void sub_1C461729C()
{
  sub_1C43FBD3C();
  v28 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1C4440CCC();
  v11 = swift_allocObject();
  sub_1C4418280(v10, v10[3]);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v14 = sub_1C4414900(v13);
  v15(v14);
  v16 = *v3;
  v17 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v29[3] = v17;
  v29[4] = &off_1F43E2510;
  v29[0] = v16;
  sub_1C4418280(v29, v17);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v20 = sub_1C4414900(v19);
  v21(v20);
  v22 = *v16;
  v23 = (v11 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_behaviorKeySource);
  v23[3] = v17;
  v23[4] = &off_1F43E2510;
  *v23 = v22;
  sub_1C44191A0();
  sub_1C461B9D8(v2, v11 + v24);
  *(v11 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap) = v1;
  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_trackedBehaviorType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v26 + 32))(v11 + v25, v0);
  sub_1C443FA18(v8, v11 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource);
  v27 = (v11 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource);
  *v27 = v6;
  v27[1] = v28;
  sub_1C440962C(v29);
  sub_1C440962C(v10);
  sub_1C43FE9F0();
}

void sub_1C46174E0(uint64_t a1@<X8>)
{
  sub_1C4617138();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_1C4617554()
{
  sub_1C442F0C4();
  sub_1C4441424();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44144F4();
  if (v0)
  {
    v3 = sub_1C43FEC50();
    v4(v3);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v5 = sub_1C44109E8();
    v6(v5);
    if (!v1)
    {
      goto LABEL_8;
    }

    sub_1C445C110();
    v7 = *(v1 + 56);
    v8 = sub_1C441189C();
    sub_1C45D7F78(v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v14 = sub_1C43FEC50();
    v15(v14);
    sub_1C4404C34();
    v16 = sub_1C44109E8();
    v17(v16);
    v7 = v24;
    if (v24 == 255)
    {
      goto LABEL_8;
    }

    sub_1C44605FC();
  }

  if (v7 != 19)
  {
    v18 = sub_1C441189C();
    sub_1C45A23B4(v18, v19, v20, v21, v22, v23);
  }

LABEL_8:
  sub_1C445AB74();
  sub_1C4422220();
}

void sub_1C46176E0(uint64_t a1@<X8>)
{
  sub_1C4617554();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_1C4617768()
{
  sub_1C442F0C4();
  sub_1C4441424();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44144F4();
  if (v0)
  {
    v3 = sub_1C43FEC50();
    v4(v3);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v5 = sub_1C44109E8();
    v6(v5);
    if (!v1)
    {
      goto LABEL_8;
    }

    sub_1C445C110();
    v7 = *(v1 + 56);
    v8 = sub_1C441189C();
    sub_1C45D7F78(v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v14 = sub_1C43FEC50();
    v15(v14);
    sub_1C4404C34();
    v16 = sub_1C44109E8();
    v17(v16);
    v7 = v24;
    if (v24 == 255)
    {
      goto LABEL_8;
    }

    sub_1C44605FC();
  }

  if (v7 != 20)
  {
    v18 = sub_1C441189C();
    sub_1C45A23B4(v18, v19, v20, v21, v22, v23);
  }

LABEL_8:
  sub_1C445AB74();
  sub_1C4422220();
}

void sub_1C46178FC(uint64_t a1@<X8>)
{
  sub_1C4617768();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_1C4617984()
{
  sub_1C442F0C4();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v10 = *MEMORY[0x1E69A9458];
  if (v3)
  {
    (*(v8 + 104))(v1, v10, v6);

    sub_1C466B77C();
    v12 = v11;

    v13 = sub_1C442F104();
    v14(v13);
    if (!v12)
    {
      goto LABEL_11;
    }

    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v17 = *(v12 + 56);
    v18 = sub_1C44058A4();
    sub_1C45D7F78(v18, v19, v20, v21, v22, v17);
  }

  else
  {
    (*(v8 + 104))(v1, v10, v6);
    sub_1C45D72D0(v1, (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource), v36);
    v23 = sub_1C442F104();
    v24(v23);
    v17 = v37;
    if (v37 == 255)
    {
      goto LABEL_11;
    }

    v15 = v36[1];
    v16 = v36[2];
  }

  if (v17 != 14)
  {
LABEL_10:
    v25 = sub_1C44058A4();
    sub_1C45A23B4(v25, v26, v27, v28, v29, v17);
    goto LABEL_11;
  }

  if (v15)
  {
    if ((v16 & 0x100000000) != 0)
    {
      sub_1C43FE5F8();
      sub_1C4EF9CE8();
      v31 = sub_1C44058A4();
      sub_1C45A23B4(v31, v32, v33, v34, v35, 14);
      goto LABEL_12;
    }

    LOBYTE(v17) = 14;
    goto LABEL_10;
  }

LABEL_11:
  v30 = sub_1C4EF9D38();
  sub_1C440BAA8(v5, 1, 1, v30);
LABEL_12:
  sub_1C4422220();
}

void sub_1C4617C00()
{
  sub_1C442F0C4();
  sub_1C4441424();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44144F4();
  if (v0)
  {
    v5 = sub_1C43FEC50();
    v6(v5);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v7 = sub_1C44109E8();
    v8(v7);
    if (!v1)
    {
      goto LABEL_9;
    }

    sub_1C445C110();
    v9 = *(v1 + 56);
    v10 = sub_1C44086E0();
    sub_1C45D7F78(v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = sub_1C43FEC50();
    v17(v16);
    sub_1C4404C34();
    v18 = sub_1C44109E8();
    v19(v18);
    v9 = v27;
    if (v27 == 255)
    {
      goto LABEL_9;
    }

    v3 = v26;
  }

  if (v9 != 9 || (v3 & 1) == 0)
  {
    v20 = sub_1C44086E0();
    sub_1C45A23B4(v20, v21, v22, v23, v24, v25);
  }

LABEL_9:
  sub_1C43FBC98();
  sub_1C4422220();
}

void sub_1C4617DB8(void *a1@<X8>)
{
  sub_1C4617C00();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C4617E2C(uint64_t *a1, char a2)
{
  if (*(a1 + 40) != 4)
  {
    return 0;
  }

  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) != 0 && (*(a1 + 20) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1C463C1B4(*(a1 + 4));
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  MEMORY[0x1C6940010](v2, v3);
  return v5;
}

void sub_1C4617EC4()
{
  sub_1C43FBD3C();
  v2 = v1;
  sub_1C442A8A4();
  v3 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = *MEMORY[0x1E69A9438];
  if (v2)
  {
    (*(v5 + 104))(v9, v10, v3);

    sub_1C466B77C();
    v12 = v11;

    v13 = sub_1C43FC034();
    v14(v13);
    if (v12)
    {
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 32);
      v18 = *(v12 + 40);
      v19 = *(v12 + 48);
      v20 = *(v12 + 56);
      v21 = sub_1C4401D1C();
      sub_1C45D7F78(v21, v22, v23, v24, v25, v26);
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = -1;
    }
  }

  else
  {
    (*(v5 + 104))(v9, v10, v3);
    sub_1C45D72D0(v9, (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource), v35);
    v15 = v35[0];
    v16 = v35[1];
    v17 = v35[2];
    v18 = v35[3];
    v19 = v35[4];
    v20 = v36;
    v27 = sub_1C43FC034();
    v28(v27);
  }

  v37[0] = v15;
  v37[1] = v16;
  v37[2] = v17;
  v37[3] = v18;
  v37[4] = v19;
  v38 = v20;
  sub_1C4617E2C(v37, 1);
  v29 = sub_1C4401D1C();
  sub_1C45D8070(v29, v30, v31, v32, v33, v34);
  sub_1C43FE9F0();
}

uint64_t sub_1C46180A0(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for BehaviorHistogramKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C461823C()
{
  result = qword_1EC0B9DD8;
  if (!qword_1EC0B9DD8)
  {
    sub_1C4572308(&qword_1EC0B9DE0, qword_1C4F12900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DD8);
  }

  return result;
}

unint64_t sub_1C46182A4()
{
  result = qword_1EC0B9DE8;
  if (!qword_1EC0B9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DE8);
  }

  return result;
}

uint64_t sub_1C4618300@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

void sub_1C461836C(void *a1@<X8>)
{
  sub_1C4617EC4();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C46183D8@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C4412D20();
  return sub_1C461B8B4(v2 + v4, a2);
}

unint64_t sub_1C461844C()
{
  result = qword_1EDDDFF78[0];
  if (!qword_1EDDDFF78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDFF78);
  }

  return result;
}

void sub_1C46184BC()
{
  sub_1C4403FC0();
  v2 = sub_1C4EFDAB8();
  sub_1C43FBD18(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1C46127B4(v0, v4);
}

uint64_t sub_1C4618524()
{
  sub_1C4403FC0();
  v2 = sub_1C4EF9CD8();
  sub_1C43FCF7C(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1C4EFDAB8();
  sub_1C43FBD18(v8);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C4612AAC(v0, v10, v1 + v4, v9, v11, v12);
}

uint64_t sub_1C461861C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4618664(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      sub_1C44166F4(v8);
    }

    if (v4 != a3)
    {
      v9 = type metadata accessor for TextMessageData(0);
      sub_1C4456960(v9);
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C461871C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1C497EB30((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

size_t sub_1C4618808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C497ED48(*(a1 + 16), 0);
  v4 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  sub_1C43FBD18(v4);
  sub_1C4619D54(&v9, v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v1, a1);
  v7 = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C449BB0C();
  if (v7 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1C4618984(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = a3(&v12, v8 + 32, v4, a1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C43FFE24();
  a4(v10);
  if (v9 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

void sub_1C4618A54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      sub_1C44166F4(v8);
    }

    if (v4 != a3)
    {
      v9 = sub_1C4461BB8(0, &qword_1EDDFA448, 0x1E698F358);
      sub_1C4456960(v9);
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1C4618B1C(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1C4F02128();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C49802A8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v1 = sub_1C461AA24(&v5, (v3 + 32), v2, v1, &qword_1EC0B9E18, 0x1E6978A38);
    sub_1C449BB0C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1C4618BE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C456902C(&qword_1EC0B9E00, &qword_1C4F12D58);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4618D5C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C4618CE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4618CE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3 + 4);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 4) = v10;
        *(v9 - 1) = v7;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4618D5C(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 8 * v9 + 4);
        v11 = *a3 + 8 * v7;
        v12 = 8 * v7;
        v13 = *(v11 + 4);
        v14 = (v11 + 20);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 8 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = *(v24 + 1);
                *v24 = *(v25 - 8);
                *(v25 - 8) = v26;
                *(v25 - 4) = v27;
              }

              ++v22;
              v20 -= 8;
              v12 += 8;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 8 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 8 * v9 + 4);
              v32 = v30;
              v33 = v29;
              do
              {
                if (v31 >= *(v33 - 1))
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 4) = v34;
                *(v33 - 1) = v31;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 8;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v83 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458A358();
        v8 = v79;
      }

      v36 = v8[2];
      v37 = v36 + 1;
      if (v36 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v80;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v84 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_56:
            if (v46)
            {
              goto LABEL_96;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_99;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_104;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v37 < 2)
          {
            goto LABEL_98;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_71:
          if (v61)
          {
            goto LABEL_101;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_103;
          }

          if (v68 < v60)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_1C4619370((*a3 + 8 * *v72), (*a3 + 8 * *v74), (*a3 + 8 * v75), v84);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v75 < v73)
          {
            goto LABEL_91;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_92;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_93;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_85;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_94;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_95;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_97;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_100;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_105;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C4619244(&v86, *a1, a3);
LABEL_89:
}

uint64_t sub_1C4619244(uint64_t *a1, float *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C4619370((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C4619370(char *a1, float *a2, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C4474DD4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[1] >= v4[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 2;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 2;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C4474DD4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v15 = v6 - 2;
      v13 = v5 + 2 == v6;
      v6 -= 2;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v16 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[2 * v16])
  {
    memmove(v6, v4, 8 * v16);
  }

  return 1;
}

char *sub_1C461950C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1C4619538(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C456902C(&qword_1EC0B87B8, &qword_1C4F12D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1C4619638()
{
  sub_1C43FBD3C();
  sub_1C44263B0();
  v4 = sub_1C4403FC0();
  v5 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(v4);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44256F8();
  sub_1C4EF97F8();
  if (!v3 || !v2)
  {
LABEL_11:
    sub_1C461B9D8(v1, v0);
    sub_1C4495188();
    sub_1C43FE9F0();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      sub_1C4EF97D8(v9);
      if (!v9[3])
      {
        break;
      }

      v7 = sub_1C4461BB8(0, &qword_1EDDF0578, off_1E81EC5C8);
      if (sub_1C445BCE4(v7))
      {
        sub_1C442A69C();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    sub_1C4420C3C(v9, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1C461975C()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&qword_1EC0B9D20, &qword_1C4F117D0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C44058BC();
  v12 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  sub_1C43FCDF8();
  v19 = v13;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4405820();
  v15 = *(v3 + 16);
  if (v15)
  {
    v16 = sub_1C4F01728();
    *(v16 + 16) = v15;
    bzero((v16 + 32), 8 * v15);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v7 && v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v18 = v9;
      for (i = 0; i < v5; ++i)
      {
        if (__OFADD__(i, 1))
        {
          goto LABEL_18;
        }

        sub_1C45F6EC8();
        if (sub_1C44157D4(v0, 1, v12) == 1)
        {
          sub_1C4420C3C(v0, &qword_1EC0B9D20, &qword_1C4F117D0);
LABEL_15:
          v9 = v18;
          goto LABEL_16;
        }

        sub_1C44973B8(v0, v1, &qword_1EC0B9CF8, &unk_1C4F11660);
        sub_1C44973B8(v1, v7, &qword_1EC0B9CF8, &unk_1C4F11660);
        if (i + 1 == v5)
        {
          goto LABEL_15;
        }

        v7 += *(v19 + 72);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    *v9 = v3;
    v9[1] = v16;
    sub_1C43FE9F0();
  }
}

void *sub_1C461996C(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        result = sub_1C4D295BC();
        if (!result)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v5++) = result;
        if (v8 == a3)
        {
          v5 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *v4 = v3;
    return v5;
  }

  return result;
}

void sub_1C46199EC()
{
  sub_1C43FBD3C();
  sub_1C44263B0();
  v4 = sub_1C4403FC0();
  v5 = type metadata accessor for PhotosMetadataSequence.Iterator(v4);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44256F8();
  sub_1C4EFFAB8();
  if (!v3 || !v2)
  {
LABEL_11:
    sub_1C461B9D8(v1, v0);
    sub_1C4495188();
    sub_1C43FE9F0();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      sub_1C4EFFA98();
      if (!v9[3])
      {
        break;
      }

      v7 = sub_1C4461BB8(0, &qword_1EDDDB860, 0x1E6978630);
      if (sub_1C445BCE4(v7))
      {
        sub_1C442A69C();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    sub_1C4420C3C(v9, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1C4619B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C44263B0();
  v8 = v7;
  v9 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  v10 = sub_1C4F01FC8();
  objc_autoreleasePoolPop(v9);

  if (!v6)
  {
    v5 = 0;
    goto LABEL_12;
  }

  if (!v5)
  {
LABEL_12:
    *v8 = v10;
    v8[1] = v5;
    return v5;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = *(v10 + 16);
    for (i = (v10 + 40); ; i += 2)
    {
      if (v13 == v12)
      {
        v5 = v13;
        goto LABEL_12;
      }

      if (v12 >= *(v10 + 16))
      {
        break;
      }

      v15 = *i;
      *v6 = *(i - 1);
      v6[1] = v15;
      if (v5 - 1 == v12)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        goto LABEL_12;
      }

      v6 += 2;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      ++v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C4619C24(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = *(*(a4 + 56) + 4 * v12);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + 2 * v12);
      *(a2 + 4) = v13;
      a2 += 8;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C4619D54(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v36 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  v33 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v29 - v10;
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  if (!a2)
  {
    v17 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v17;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = a2;
    v30 = -1 << *(a4 + 32);
    v31 = a1;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v12) >> 6;
    v32 = a3;
    while (1)
    {
      if (v16 >= a3)
      {
        goto LABEL_24;
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_25;
      }

      if (!v14)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v14 = 0;
            goto LABEL_19;
          }

          v14 = *(v11 + 8 * v20);
          ++v17;
          if (v14)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v20 = v17;
LABEL_15:
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v22 = v21 | (v20 << 6);
      v23 = *(a4 + 48);
      v24 = sub_1C4EF9DD8();
      v25 = *(v24 - 8);
      v26 = v23 + *(v25 + 72) * v22;
      v27 = v35;
      (*(v25 + 16))(v35, v26, v24);
      *(v27 + *(v36 + 48)) = *(*(a4 + 56) + 8 * v22);
      v28 = v34;
      sub_1C44973B8(v27, v34, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      sub_1C44973B8(v28, v15, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      a3 = v32;
      if (v19 == v32)
      {
        break;
      }

      v15 += *(v33 + 72);
      v16 = v19;
      v17 = v20;
    }

    v17 = v20;
LABEL_19:
    v12 = v30;
    a1 = v31;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void *sub_1C4619FFC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C461A084()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1C4403FC0();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  sub_1C440D0F0();
  v13 = v12 & v11;
  if (!v7)
  {
    v16 = 0;
LABEL_18:
    sub_1C444AC74(v16);
    sub_1C43FE9F0();
    return;
  }

  if (!v5)
  {
    v16 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v23 = v10;
    sub_1C443315C();
    v15 = sub_1C443F534(v14);
    while (v17 < v15)
    {
      if (__OFADD__(v17, 1))
      {
        goto LABEL_22;
      }

      if (!v13)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= v5)
          {
            goto LABEL_18;
          }

          v13 = *(v23 + 8 * v18);
          ++v16;
          if (v13)
          {
            v25 = v17 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v25 = v17 + 1;
      v18 = v16;
LABEL_13:
      sub_1C444092C();
      v19 = sub_1C441830C();
      v20(v19);
      v21 = sub_1C44418B4();
      v3(v21);
      v22 = sub_1C43FD024();
      v3(v22);
      v15 = v24;
      v17 = v25;
      if (v25 == v24)
      {
        v16 = v18;
        goto LABEL_18;
      }

      v7 += v1;
      v16 = v18;
      v3 = v0;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

void *sub_1C461A260(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C461A3C0()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1C4403FC0();
  sub_1C4EFF318();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  sub_1C440D0F0();
  v13 = v12 & v11;
  if (!v7)
  {
    v16 = 0;
LABEL_18:
    sub_1C444AC74(v16);
    sub_1C43FE9F0();
    return;
  }

  if (!v5)
  {
    v16 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v23 = v10;
    sub_1C443315C();
    v15 = sub_1C443F534(v14);
    while (v17 < v15)
    {
      if (__OFADD__(v17, 1))
      {
        goto LABEL_22;
      }

      if (!v13)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= v5)
          {
            goto LABEL_18;
          }

          v13 = *(v23 + 8 * v18);
          ++v16;
          if (v13)
          {
            v25 = v17 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v25 = v17 + 1;
      v18 = v16;
LABEL_13:
      sub_1C444092C();
      v19 = sub_1C441830C();
      v20(v19);
      v21 = sub_1C44418B4();
      v3(v21);
      v22 = sub_1C43FD024();
      v3(v22);
      v15 = v24;
      v17 = v25;
      if (v25 == v24)
      {
        v16 = v18;
        goto LABEL_18;
      }

      v7 += v1;
      v16 = v18;
      v3 = v0;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

void *sub_1C461A59C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = *(a4 + 48) + 24 * (__clz(__rbit64(v9)) | (v15 << 6));
      v17 = *(v16 + 16);
      v9 &= v9 - 1;
      *v11 = *v16;
      *(v11 + 16) = v17;
      if (v14 == v10)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 24;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}