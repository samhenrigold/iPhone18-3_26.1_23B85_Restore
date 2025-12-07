uint64_t sub_23B4BEE50()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_73_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4BEF58()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v13 = OUTLINED_FUNCTION_8_27(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_1_39(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    v0 = type metadata accessor for DailyWeatherStatisticsQuery(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_88_1(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_42_9();
    while (v3 != v4)
    {
      v22 = OUTLINED_FUNCTION_9_30(*(v2 + 8 * v4));
      v24 = type metadata accessor for DailyWeatherStatisticsQuery(v22, v23);
      OUTLINED_FUNCTION_193_1(v24);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    OUTLINED_FUNCTION_164_1();
  }

  v1[25] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[26] = v25;
  v26 = OUTLINED_FUNCTION_13_22();
  v27 = OUTLINED_FUNCTION_141_1(v26);
  v28 = type metadata accessor for StatisticsSpanFactory(v27);
  OUTLINED_FUNCTION_3(v28);
  v1[28] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4BF078()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_146();
  v4(v3);
  sub_23B4E6214();
  v5 = OUTLINED_FUNCTION_179_0();
  *(v1 + 232) = v5;
  if (v0)
  {
    v6 = OUTLINED_FUNCTION_159_1();
    memcpy(v6, v7, v2);
  }

  v35 = v5;
  v39 = swift_task_alloc();
  *(v1 + 240) = v39;
  if (v0)
  {
    OUTLINED_FUNCTION_132_1();
    do
    {
      OUTLINED_FUNCTION_188_1();
      v8 = OUTLINED_FUNCTION_12_25();
      type metadata accessor for DailyWeatherStatisticsQuery(v8, v9);
      OUTLINED_FUNCTION_2();
      v10 = OUTLINED_FUNCTION_187_1();
      v12 = v11(v10);
      OUTLINED_FUNCTION_186_1(v12, v13, v14, v15, v16, v17, v18, v19, v35, v36, v37, v38, v39);
    }

    while (!v20);
  }

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_56_4(v21);
  *v22 = v23;
  v24 = OUTLINED_FUNCTION_78_2(v22);
  OUTLINED_FUNCTION_113_1(v24);
  OUTLINED_FUNCTION_158_1(v25, v26, v27, v28, v29, v30, v31, v32, v35);
  OUTLINED_FUNCTION_3_25();

  return sub_23B4CA484();
}

uint64_t sub_23B4BF250()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_73_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4BF358()
{
  OUTLINED_FUNCTION_188();
  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_7_39();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_45_0();

  return v3();
}

uint64_t sub_23B4BF3E4()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_7_39();
  sub_23B393E24(v0, v1);
  v2 = OUTLINED_FUNCTION_90_1();
  v3(v2);

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_232_1();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t WeatherService.monthlyStatistics<each A>(for:startMonth:endMonth:including:)()
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_213_1();
  v2[35] = v7;
  v2[36] = v0;
  v2[33] = v8;
  v2[34] = v5;
  v2[31] = v9;
  v2[32] = v10;
  v2[29] = v11;
  v2[30] = v12;
  v2[27] = v13;
  v2[28] = v14;
  v2[26] = v15;
  if (v9 == 1)
  {
    v16 = OUTLINED_FUNCTION_1_39(*(v1 & 0xFFFFFFFFFFFFFFFELL));
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_251_1();
    OUTLINED_FUNCTION_153_1();
    while (v4 != v3)
    {
      v19 = OUTLINED_FUNCTION_9_30(*(v6 + 8 * v3));
      v21 = type metadata accessor for MonthlyWeatherStatisticsQuery(v19, v20);
      OUTLINED_FUNCTION_211_1(v21);
    }

    OUTLINED_FUNCTION_96_1();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v2[37] = TupleTypeMetadata;
  v23 = *(TupleTypeMetadata - 8);
  v22 = TupleTypeMetadata - 8;
  v2[38] = v23;
  v2[39] = OUTLINED_FUNCTION_13_22();
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_34_11();
    v25 = OUTLINED_FUNCTION_77_2(v24);
    v27 = type metadata accessor for MonthlyWeatherStatistics(v25, v26);
  }

  else
  {
    OUTLINED_FUNCTION_251_1();
    OUTLINED_FUNCTION_183_1();
    while (v4 != v22)
    {
      v28 = OUTLINED_FUNCTION_76_1(*(v1 + 8 * v22));
      v30 = type metadata accessor for MonthlyWeatherStatistics(v28, v29);
      OUTLINED_FUNCTION_211_1(v30);
    }

    OUTLINED_FUNCTION_96_1();
    OUTLINED_FUNCTION_74_1();
    v27 = swift_getTupleTypeMetadata();
  }

  v2[40] = v27;
  OUTLINED_FUNCTION_151_1();
  v2[41] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_129_0();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4BF658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_129_1();
  v26 = *(v15 + 224);
  v25 = *(v15 + 232);
  if ((v25 - 13) >= 0xFFFFFFFFFFFFFFF4 && (v26 - 13) >= 0xFFFFFFFFFFFFFFF4)
  {
    if (*(v15 + 248))
    {
      OUTLINED_FUNCTION_5_29();
      do
      {
        OUTLINED_FUNCTION_150_1();
        if (v28)
        {
          v29 = 0;
        }

        else
        {
          v29 = *(*(v15 + 296) + v16);
        }

        OUTLINED_FUNCTION_17_19();
        v30 = *(v15 + 312);
        v31 = OUTLINED_FUNCTION_75_1();
        type metadata accessor for MonthlyWeatherStatisticsQuery(v31, v32);
        OUTLINED_FUNCTION_2();
        (*(v33 + 16))(v30 + v29, v14);
        OUTLINED_FUNCTION_64_2();
      }

      while (!v28);
      v34 = *(v15 + 248);
      v26 = *(v15 + 224);
      v25 = *(v15 + 232);
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v15 + 312);
    v36 = *(v15 + 288);
    v37 = *(v15 + 216);
    v38 = swift_task_alloc();
    *(v15 + 336) = v38;
    v39 = *(v15 + 256);
    v40 = *(v15 + 272);
    *(v38 + 16) = v34;
    *(v38 + 24) = v39;
    *(v38 + 40) = v40;
    *(v38 + 56) = v36;
    *(v38 + 64) = v37;
    *(v38 + 72) = v26;
    *(v38 + 80) = v25;
    *(v38 + 88) = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    *(v15 + 344) = v41;
    *v41 = v42;
    OUTLINED_FUNCTION_218_1(v41);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_99_1();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4BF7E4()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 352) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_168_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4BF8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_129_1();
  if (*(v12 + 248))
  {
    OUTLINED_FUNCTION_5_29();
    do
    {
      OUTLINED_FUNCTION_150_1();
      OUTLINED_FUNCTION_17_19();
      v13 = OUTLINED_FUNCTION_74_2();
      type metadata accessor for MonthlyWeatherStatistics(v13, v14);
      OUTLINED_FUNCTION_2();
      v15 = OUTLINED_FUNCTION_204_1();
      v16(v15);
      OUTLINED_FUNCTION_64_2();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_99_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_23B4BF9C4()
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_213_1();
  v2[39] = v7;
  v2[40] = v0;
  v2[37] = v8;
  v2[38] = v5;
  v2[35] = v9;
  v2[36] = v10;
  v2[33] = v11;
  v2[34] = v12;
  v2[31] = v13;
  v2[32] = v14;
  v2[30] = v15;
  if (v9 == 1)
  {
    v16 = OUTLINED_FUNCTION_1_39(*(v1 & 0xFFFFFFFFFFFFFFFELL));
    TupleTypeMetadata = type metadata accessor for DailyWeatherSummaryQuery(v16, v17);
  }

  else
  {
    OUTLINED_FUNCTION_251_1();
    OUTLINED_FUNCTION_153_1();
    while (v4 != v3)
    {
      v19 = OUTLINED_FUNCTION_9_30(*(v6 + 8 * v3));
      v21 = type metadata accessor for DailyWeatherSummaryQuery(v19, v20);
      OUTLINED_FUNCTION_211_1(v21);
    }

    OUTLINED_FUNCTION_96_1();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v2[41] = TupleTypeMetadata;
  v23 = *(TupleTypeMetadata - 8);
  v22 = TupleTypeMetadata - 8;
  v2[42] = v23;
  v2[43] = OUTLINED_FUNCTION_13_22();
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_34_11();
    v25 = OUTLINED_FUNCTION_77_2(v24);
    v27 = type metadata accessor for DailyWeatherSummary(v25, v26);
  }

  else
  {
    OUTLINED_FUNCTION_251_1();
    OUTLINED_FUNCTION_183_1();
    while (v4 != v22)
    {
      v28 = OUTLINED_FUNCTION_76_1(*(v1 + 8 * v22));
      v30 = type metadata accessor for DailyWeatherSummary(v28, v29);
      OUTLINED_FUNCTION_211_1(v30);
    }

    OUTLINED_FUNCTION_96_1();
    OUTLINED_FUNCTION_74_1();
    v27 = swift_getTupleTypeMetadata();
  }

  v2[44] = v27;
  OUTLINED_FUNCTION_151_1();
  v2[45] = OUTLINED_FUNCTION_13_22();
  v31 = sub_23B50AE84();
  v2[46] = v31;
  OUTLINED_FUNCTION_28_0(v31);
  v2[47] = v32;
  v2[48] = OUTLINED_FUNCTION_13_22();
  v33 = sub_23B50AD24();
  v2[49] = v33;
  OUTLINED_FUNCTION_28_0(v33);
  v2[50] = v34;
  v2[51] = OUTLINED_FUNCTION_145_1();
  v2[52] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v35);
  v2[53] = OUTLINED_FUNCTION_13_22();
  v36 = sub_23B50AEF4();
  v2[54] = v36;
  OUTLINED_FUNCTION_28_0(v36);
  v2[55] = v37;
  v2[56] = OUTLINED_FUNCTION_145_1();
  v2[57] = swift_task_alloc();
  v38 = sub_23B50AC34();
  v2[58] = v38;
  OUTLINED_FUNCTION_28_0(v38);
  v2[59] = v39;
  v2[60] = OUTLINED_FUNCTION_13_22();
  v40 = sub_23B50AC04();
  v2[61] = v40;
  OUTLINED_FUNCTION_28_0(v40);
  v2[62] = v41;
  v2[63] = OUTLINED_FUNCTION_13_22();
  v42 = sub_23B50ABE4();
  v2[64] = v42;
  OUTLINED_FUNCTION_28_0(v42);
  v2[65] = v43;
  v2[66] = OUTLINED_FUNCTION_13_22();
  v44 = sub_23B50ABF4();
  v2[67] = v44;
  OUTLINED_FUNCTION_28_0(v44);
  v2[68] = v45;
  v2[69] = OUTLINED_FUNCTION_145_1();
  v2[70] = swift_task_alloc();
  v46 = sub_23B50AC84();
  v2[71] = v46;
  OUTLINED_FUNCTION_28_0(v46);
  v2[72] = v47;
  v2[73] = OUTLINED_FUNCTION_145_1();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_129_0();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4BFE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 528);
  v16 = *(v14 + 520);
  v18 = *(v14 + 504);
  v17 = *(v14 + 512);
  v19 = *(v14 + 488);
  v20 = *(v14 + 496);
  v21 = *(v14 + 472);
  v22 = *(v14 + 464);
  v23 = *(v14 + 424);
  v81 = *(v14 + 480);
  v83 = *(v14 + 432);
  v77 = *MEMORY[0x277CC9460];
  v79 = (*(v14 + 544) + 104);
  v75 = *v79;
  (*v79)(*(v14 + 560));
  (*(v16 + 104))(v15, *MEMORY[0x277CC9458], v17);
  (*(v20 + 104))(v18, *MEMORY[0x277CC9468], v19);
  (*(v21 + 104))(v81, *MEMORY[0x277CC9480], v22);
  sub_23B50AEA4();
  v24 = OUTLINED_FUNCTION_51(v23, 1, v83);
  if (v32)
  {
    __break(1u);
  }

  else
  {
    v33 = *(v14 + 608);
    v34 = *(v14 + 600);
    v35 = *(v14 + 592);
    v36 = *(v14 + 584);
    v37 = *(v14 + 576);
    v38 = *(v14 + 568);
    v67 = *(v14 + 544);
    v63 = *(v14 + 536);
    v66 = *(v14 + 440);
    v64 = *(v14 + 552);
    v65 = *(v14 + 432);
    v39 = *(v14 + 416);
    v70 = *(v14 + 400);
    v68 = *(v14 + 448);
    v69 = *(v14 + 392);
    v72 = *(v14 + 384);
    v73 = *(v14 + 376);
    v74 = *(v14 + 368);
    v82 = *(v14 + 280);
    v84 = *(v14 + 264);
    (*(v66 + 32))(*(v14 + 456), *(v14 + 424));
    sub_23B50AC14();
    sub_23B50AC54();
    v40 = *(v37 + 8);
    *(v14 + 624) = v40;
    *(v14 + 632) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v36, v38);
    sub_23B50AC64();
    v40(v35, v38);
    sub_23B50AC44();
    v40(v34, v38);
    (v75)(v64, v77, v63);
    sub_23B50AC24();
    (*(v67 + 8))(v64, v63);
    v40(v33, v38);
    (*(v66 + 16))(v68, v84, v65);
    sub_23B50AC74();
    sub_23B50AA14();
    sub_23B391884(&qword_27E1338E8, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
    sub_23B50AD04();
    v41 = *(v70 + 8);
    *(v14 + 640) = v41;
    *(v14 + 648) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(v39, v69);
    v78 = *(v14 + 208);
    v80 = *(v14 + 216);
    *(v14 + 656) = v80;
    sub_23B50A9F4();
    sub_23B50AD04();
    v41(v39, v69);
    v71 = *(v14 + 224);
    v76 = *(v14 + 232);
    *(v14 + 664) = v76;
    sub_23B50AE04();
    sub_23B50AA14();
    sub_23B50ADE4();
    v41(v39, v69);
    (*(v73 + 8))(v72, v74);
    if (v82)
    {
      v42 = 0;
      OUTLINED_FUNCTION_221_1();
      v43 = 32;
      do
      {
        v44 = *(v14 + 280);
        if (v44 == 1)
        {
          v45 = 0;
        }

        else
        {
          v45 = *(*(v14 + 328) + v43);
        }

        v46 = *(*(v14 + 272) + 8 * v42);
        v47 = *(v14 + 344);
        v48 = OUTLINED_FUNCTION_75_1();
        type metadata accessor for DailyWeatherSummaryQuery(v48, v49);
        OUTLINED_FUNCTION_2();
        (*(v50 + 16))(v47 + v45, v46);
        ++v42;
        v43 += 16;
      }

      while (v42 != v44);
    }

    v51 = *(v14 + 408);
    v52 = *(v14 + 344);
    v53 = *(v14 + 320);
    v54 = *(v14 + 280);
    v55 = *(v14 + 264);
    v56 = *(v14 + 248);
    v57 = swift_task_alloc();
    *(v14 + 672) = v57;
    v58 = *(v14 + 288);
    v59 = *(v14 + 304);
    *(v57 + 16) = v54;
    *(v57 + 24) = v58;
    *(v57 + 40) = v59;
    *(v57 + 56) = v53;
    *(v57 + 64) = v56;
    *(v57 + 72) = v78;
    *(v57 + 80) = v80;
    *(v57 + 88) = v71;
    *(v57 + 96) = v76;
    *(v57 + 104) = v51;
    *(v57 + 112) = v55;
    *(v57 + 120) = v52;
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    *(v14 + 680) = v60;
    *v60 = v61;
    v60[1] = sub_23B4C0440;
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_79_2();
  }

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C0440()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v3[86] = v0;

  if (!v0)
  {
    (*(v3[42] + 8))(v3[43], v3[41]);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C0590()
{
  if (*(v0 + 280))
  {
    OUTLINED_FUNCTION_221_1();
    do
    {
      v1 = OUTLINED_FUNCTION_74_2();
      type metadata accessor for DailyWeatherSummary(v1, v2);
      OUTLINED_FUNCTION_2();
      v3 = OUTLINED_FUNCTION_204_1();
      v4(v3);
      OUTLINED_FUNCTION_64_2();
    }

    while (!v5);
  }

  v6 = *(v0 + 640);
  v7 = *(v0 + 408);
  v8 = *(v0 + 392);
  (*(v0 + 624))(*(v0 + 616), *(v0 + 568));
  v6(v7, v8);

  OUTLINED_FUNCTION_45_0();

  return v9();
}

uint64_t sub_23B4C07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_238_0();
  v27 = *(v26 + 640);
  v42 = *(v26 + 608);
  v43 = *(v26 + 600);
  v44 = *(v26 + 592);
  v45 = *(v26 + 584);
  v46 = *(v26 + 560);
  v47 = *(v26 + 552);
  v48 = *(v26 + 528);
  v49 = *(v26 + 504);
  v50 = *(v26 + 480);
  v51 = *(v26 + 456);
  v52 = *(v26 + 448);
  v53 = *(v26 + 424);
  v28 = *(v26 + 408);
  v54 = *(v26 + 416);
  v29 = *(v26 + 392);
  v55 = *(v26 + 384);
  v56 = *(v26 + 360);
  v31 = *(v26 + 336);
  v30 = *(v26 + 344);
  v32 = *(v26 + 328);
  (*(v26 + 624))(*(v26 + 616), *(v26 + 568));
  (*(v31 + 8))(v30, v32);
  v27(v28, v29);

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_231_1();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, a24, a25, a26);
}

void sub_23B4C0958()
{
  type metadata accessor for WeatherService(0);
  WeatherService.__allocating_init()();
  qword_280B43240 = v0;
}

uint64_t static WeatherService.shared.getter()
{
  if (qword_280B43238 != -1)
  {
    swift_once();
  }
}

uint64_t WeatherService.attribution.getter()
{
  OUTLINED_FUNCTION_71();
  v1[28] = v2;
  v1[29] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v3);
  v1[30] = OUTLINED_FUNCTION_13_22();
  v4 = sub_23B50AAE4();
  v1[31] = v4;
  OUTLINED_FUNCTION_28_0(v4);
  v1[32] = v5;
  v1[33] = OUTLINED_FUNCTION_13_22();
  v6 = sub_23B50AB34();
  v1[34] = v6;
  OUTLINED_FUNCTION_28_0(v6);
  v1[35] = v7;
  v8 = OUTLINED_FUNCTION_145_1();
  v9 = OUTLINED_FUNCTION_247_1(v8);
  v1[38] = OUTLINED_FUNCTION_246_1(v9);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_23B4C0B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_181_1();
  v44 = *(v20 + 352);
  v21 = *(v20 + 344);
  v22 = *(v20 + 280);
  v48 = *(v20 + 272);
  v49 = *(v20 + 360);
  v23 = *(v20 + 256);
  v24 = *(v20 + 264);
  v25 = *(v20 + 248);
  v26 = sub_23B50AD84();
  v46 = v27;
  v47 = v26;
  *(v20 + 368) = OBJC_IVAR____TtC10WeatherKit14WeatherService_endpoint;
  WDSEndpoint.url.getter(v21);
  *(v20 + 144) = 0x7475626972747461;
  *(v20 + 152) = 0xEB000000006E6F69;
  v28 = *MEMORY[0x277CC91D8];
  *(v20 + 472) = v28;
  HIDWORD(a12) = v28;
  v45 = *(v23 + 104);
  *(v20 + 376) = v45;
  *(v20 + 384) = (v23 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v45(v24, v28, v25);
  v43 = sub_23B3B6C10();
  *(v20 + 392) = v43;
  sub_23B50AB24();
  v29 = *(v23 + 8);
  *(v20 + 400) = v29;
  *(v20 + 408) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v24, v25);
  v30 = v22 + 8;
  v31 = *(v22 + 8);
  v42 = v30;
  *(v20 + 416) = v31;
  *(v20 + 424) = v30 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v21, v48);
  *(v20 + 160) = v47;
  *(v20 + 168) = v46;
  v45(v24, HIDWORD(a12), v25);
  sub_23B50AB24();
  v29(v24, v25);
  v31(v44, v48);

  *(v20 + 432) = [objc_opt_self() sharedSession];
  v32 = swift_task_alloc();
  *(v20 + 440) = v32;
  *v32 = v20;
  v32[1] = sub_23B4C0DD0;
  OUTLINED_FUNCTION_144_1();

  return MEMORY[0x28211ED00](v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, a12, v45, v46, v47, v48, v49, a18, a19, a20);
}

uint64_t sub_23B4C0DD0()
{
  OUTLINED_FUNCTION_188();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_21_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_50_3();
  *v8 = v7;
  v11[56] = v9;
  v11[57] = v10;
  v11[58] = v0;

  v12 = *(v4 + 432);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C0F04()
{
  v1 = *(v0 + 464);
  v2 = sub_23B50A9A4();
  OUTLINED_FUNCTION_45(v2);
  sub_23B50A994();
  sub_23B4D5BB4();
  sub_23B50A984();
  if (v1)
  {
    v4 = *(v0 + 448);
    v3 = *(v0 + 456);
    (*(v0 + 416))(*(v0 + 360), *(v0 + 272));

    sub_23B40EC64(v4, v3);

    OUTLINED_FUNCTION_67_1();
  }

  else
  {
    v46 = *(v0 + 416);
    v45 = *(v0 + 400);
    v6 = *(v0 + 472);
    v7 = *(v0 + 376);
    v8 = *(v0 + 352);
    v39 = *(v0 + 336);
    v48 = *(v0 + 328);
    v42 = *(v0 + 312);
    v43 = *(v0 + 304);
    v44 = *(v0 + 296);
    v40 = *(v0 + 320);
    v41 = *(v0 + 280);
    v38 = *(v0 + 272);
    v9 = *(v0 + 264);
    v10 = *(v0 + 248);

    v11 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v11;
    v12 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v12;

    WDSEndpoint.url.getter(v8);
    v13 = *(v0 + 120);
    *(v0 + 176) = *(v0 + 112);
    *(v0 + 184) = v13;
    v7(v9, v6, v10);

    OUTLINED_FUNCTION_25_4();
    sub_23B50AB24();
    v14 = OUTLINED_FUNCTION_227_0();
    v45(v14);

    v46(v8);
    OUTLINED_FUNCTION_243_1();
    v15 = *(v0 + 88);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 200) = v15;
    v16 = OUTLINED_FUNCTION_192_1();
    v17(v16);

    OUTLINED_FUNCTION_25_4();
    sub_23B50AB24();
    v18 = OUTLINED_FUNCTION_227_0();
    v45(v18);

    (v46)(v8, v38);
    OUTLINED_FUNCTION_243_1();
    *(v0 + 208) = *(v0 + 96);
    *(v0 + 216) = *(v0 + 104);
    v19 = OUTLINED_FUNCTION_192_1();
    v20(v19);

    OUTLINED_FUNCTION_25_4();
    sub_23B50AB24();
    sub_23B443C88(v0 + 80);
    v21 = OUTLINED_FUNCTION_227_0();
    v45(v21);

    (v46)(v8, v38);
    v22 = *(v41 + 16);
    v22(v42, v39, v38);
    v22(v43, v48, v38);
    v22(v44, v40, v38);
    sub_23B50AB04();
    v23 = OUTLINED_FUNCTION_44_0();
    result = OUTLINED_FUNCTION_51(v23, v24, v38);
    if (v26)
    {
      __break(1u);
      return result;
    }

    v27 = *(v0 + 416);
    v29 = *(v0 + 320);
    v28 = *(v0 + 328);
    v30 = *(v0 + 288);
    v31 = *(v0 + 272);
    v32 = *(v0 + 280);
    v33 = *(v0 + 240);
    v47 = *(v0 + 224);
    sub_23B40EC64(*(v0 + 448), *(v0 + 456));
    v27(v29, v31);
    v27(v28, v31);
    v34 = OUTLINED_FUNCTION_65();
    (v27)(v34);
    v35 = OUTLINED_FUNCTION_65();
    (v27)(v35);
    (*(v32 + 32))(v30, v33, v31);
    v36 = type metadata accessor for WeatherAttribution.Storage(0);
    OUTLINED_FUNCTION_45(v36);
    sub_23B42E3E8();
    *v47 = v37;

    OUTLINED_FUNCTION_45_0();
  }

  return v5();
}

uint64_t sub_23B4C142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  (*(v14 + 416))(*(v14 + 360), *(v14 + 272));
  v24 = *(v14 + 264);
  v25 = *(v14 + 240);
  v26 = *(v14 + 464);

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_129_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, a12, a13, a14);
}

uint64_t WeatherService.internalAttributionURL.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_1();
  sub_23B50AB04();
  v2 = sub_23B50AB34();
  v3 = OUTLINED_FUNCTION_44_0();
  result = OUTLINED_FUNCTION_51(v3, v4, v2);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_26_16();
    v7 = OUTLINED_FUNCTION_65();
    return v8(v7);
  }

  return result;
}

uint64_t sub_23B4C15EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23B4C1610, 0, 0);
}

uint64_t sub_23B4C1610()
{
  OUTLINED_FUNCTION_168();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 64), *(*(v0 + 32) + 88));
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_71_2();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_23B4D814C;
  OUTLINED_FUNCTION_112_1();

  return v5();
}

uint64_t sub_23B4C1728(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23B4C174C, 0, 0);
}

uint64_t sub_23B4C174C()
{
  OUTLINED_FUNCTION_168();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 64), *(*(v0 + 32) + 88));
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_71_2();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_23B4C1864;
  OUTLINED_FUNCTION_112_1();

  return v5();
}

uint64_t sub_23B4C1864()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  OUTLINED_FUNCTION_67_1();

  return v3();
}

void WeatherService.__allocating_init(caching:attributionBundleIdentifier:)()
{
  OUTLINED_FUNCTION_21();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_1();
  v4 = type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_171();
  if (qword_280B45350 != -1)
  {
    OUTLINED_FUNCTION_19_17(&qword_280B45350);
  }

  sub_23B50AB04();
  v6 = sub_23B50AB34();
  v7 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_51(v7, v8, v6);
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_48();
    (*(v10 + 32))(v1, v0, v6);
    v11 = (v1 + *(v4 + 20));
    *v11 = 0;
    v11[1] = 0;
    v12 = sub_23B50C2E4();
    OUTLINED_FUNCTION_45(v12);
    sub_23B50C2D4();
    WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:attributionBundleIdentifier:)();
    OUTLINED_FUNCTION_20();
  }
}

void WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:attributionBundleIdentifier:)()
{
  OUTLINED_FUNCTION_21();
  v61 = v0;
  v3 = v2;
  v5 = v4;
  v64 = v6;
  v65 = v7;
  v9 = v8;
  v63 = v10;
  v11 = type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_0();
  v60 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v55 = &v50 - v16;
  v17 = sub_23B50AB34();
  v18 = OUTLINED_FUNCTION_3(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v62 = sub_23B50BE34();
  OUTLINED_FUNCTION_5();
  v59 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v23 = v22 - v21;
  LODWORD(v22) = *v9;
  v57 = v9[1];
  v58 = v22;
  v56 = v9[2];
  if (qword_280B45430 != -1)
  {
    OUTLINED_FUNCTION_106_1(&qword_280B45430);
  }

  v77[0] = xmmword_280B4EA08;
  v77[1] = *&word_280B4EA18;
  v77[2] = unk_280B4EA28;
  v77[3] = *&qword_280B4EA38;
  v24 = type metadata accessor for StaticServiceConfigurationProvider();
  v53 = v24;
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_215_1(v25);
  *(v26 + 80) = v5;
  *(v26 + 88) = v3;
  *(&v74 + 1) = v24;
  *&v75 = &off_284E0EE38;
  *&v73 = v26;
  v27 = type metadata accessor for WeatherServiceClientSettingsProvider();
  v28 = swift_allocObject();
  v54 = v5;
  v29 = v28;
  sub_23B399858(&v73, v28 + 16);
  v66[3] = v27;
  OUTLINED_FUNCTION_97_1();
  v66[4] = sub_23B391884(v30, v31, &unk_23B5103D8);
  v66[0] = v29;
  v32 = sub_23B50C8E4();
  OUTLINED_FUNCTION_45(v32);
  sub_23B3918CC(v77, &v73);

  sub_23B50C8D4();
  type metadata accessor for GeocodeService();
  v33 = swift_allocObject();
  GeocodeService.init()();
  OUTLINED_FUNCTION_34_0();
  type metadata accessor for GeocodeManager();
  v34 = swift_allocObject();
  v35 = v33;
  v36 = v34;
  GeocodeManager.init(service:store:)(v35, sub_23B4C2208, 0);
  OUTLINED_FUNCTION_34_0();
  type metadata accessor for WeatherServiceFetchOptionsProvider();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = 0;
  v51 = v3;
  v38 = v64;
  WDSEndpoint.url.getter(v1);
  sub_23B3943D8(*(v38 + *(v11 + 20)), *(v38 + *(v11 + 20) + 8));
  sub_23B50BE24();
  v39 = v55;
  sub_23B3943E8(v38, v55);
  v52 = v23;
  v40 = v39;
  sub_23B3923E8(v65, v72);
  sub_23B50C8C4();
  v41 = v71;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v69[3] = v41;
  __swift_allocate_boxed_opaque_existential_0(v69);
  OUTLINED_FUNCTION_48();
  (*(v42 + 16))();
  v73 = xmmword_280B4EA08;
  v74 = *&word_280B4EA18;
  v75 = unk_280B4EA28;
  v76 = *&qword_280B4EA38;
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_215_1(v43);
  v44 = v51;
  *(v45 + 80) = v54;
  *(v45 + 88) = v44;
  v46 = v60;
  sub_23B3943E8(v40, v60);
  sub_23B3923E8(v72, v68);
  sub_23B3923E8(v69, v67);
  v47 = OUTLINED_FUNCTION_45(v61);

  sub_23B3918CC(&v73, v66);
  if (v56)
  {
    v48 = 0x10000;
  }

  else
  {
    v48 = 0;
  }

  if (v57)
  {
    v49 = 256;
  }

  else
  {
    v49 = 0;
  }

  sub_23B3947EC(v63, v46, v49 | v58 | v48, v68, v67, v37, v43, v47);

  __swift_destroy_boxed_opaque_existential_1(v65);
  sub_23B393E24(v38, type metadata accessor for WDSEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v72);
  sub_23B393E24(v40, type metadata accessor for WDSEndpoint);
  (*(v59 + 8))(v52, v62);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_20();
}

void WeatherService.__allocating_init(endpoint:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_171();
  v5 = type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  if (qword_280B45350 != -1)
  {
    OUTLINED_FUNCTION_19_17(&qword_280B45350);
  }

  sub_23B50AB04();
  v7 = sub_23B50AB34();
  OUTLINED_FUNCTION_51(v2, 1, v7);
  if (v8)
  {
    __break(1u);
  }

  else
  {

    OUTLINED_FUNCTION_48();
    v9 = OUTLINED_FUNCTION_90_1();
    v10(v9);
    OUTLINED_FUNCTION_39_8(*(v5 + 20));
    if (qword_280B45360 != -1)
    {
      OUTLINED_FUNCTION_53_3(&qword_280B45360);
    }

    OUTLINED_FUNCTION_173_0();
    v11 = sub_23B50C2E4();
    OUTLINED_FUNCTION_45(v11);
    sub_23B50C2D4();
    v12 = OUTLINED_FUNCTION_36();
    WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:)(v12, v13, v14, v15);
  }
}

uint64_t sub_23B4C2208()
{
  type metadata accessor for GeocodeStore();
  swift_allocObject();
  return GeocodeStore.init()();
}

void WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:authenticator:fetchOptionsProvider:attributionBundleIdentifier:)()
{
  OUTLINED_FUNCTION_21();
  v17 = v3;
  v18 = v4;
  OUTLINED_FUNCTION_148_0();
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v7);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_180_1(v9);
  v11(v10);
  v12 = OUTLINED_FUNCTION_195_1();
  sub_23B4D5D50(v12, v13, v14, v15, v16, v0, v17, v18, v1, v7, v6);
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_20();
}

void WeatherService.__allocating_init(endpoint:fetchOptionsProvider:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_171();
  v8 = sub_23B50AB34();
  v9 = OUTLINED_FUNCTION_3(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v13 = sub_23B50BE34();
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  if (qword_280B45430 != -1)
  {
    OUTLINED_FUNCTION_106_1(&qword_280B45430);
  }

  v42[0] = xmmword_280B4EA08;
  v42[1] = *&word_280B4EA18;
  v42[2] = unk_280B4EA28;
  v42[3] = *&qword_280B4EA38;
  v17 = type metadata accessor for StaticServiceConfigurationProvider();
  v18 = swift_allocObject();
  v19 = *&word_280B4EA18;
  *(v18 + 16) = xmmword_280B4EA08;
  *(v18 + 32) = v19;
  v20 = *&qword_280B4EA38;
  *(v18 + 48) = unk_280B4EA28;
  *(v18 + 64) = v20;
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  v39 = v17;
  v40 = &off_284E0EE38;
  *&v38 = v18;
  v21 = type metadata accessor for WeatherServiceClientSettingsProvider();
  v22 = swift_allocObject();
  sub_23B399858(&v38, v22 + 16);
  v41[3] = v21;
  OUTLINED_FUNCTION_97_1();
  v41[4] = sub_23B391884(v23, v24, &unk_23B5103D8);
  v41[0] = v22;
  v25 = sub_23B50C8E4();
  OUTLINED_FUNCTION_45(v25);
  sub_23B3918CC(v42, &v38);
  sub_23B50C8D4();
  WDSEndpoint.url.getter(v12);
  sub_23B3943D8(*(v5 + *(v6 + 20)), *(v5 + *(v6 + 20) + 8));
  sub_23B50BE24();
  type metadata accessor for WeatherAQIScaleCacheManager();
  swift_allocObject();
  WeatherAQIScaleCacheManager.init(store:)(sub_23B4C26EC, 0);
  v26 = OUTLINED_FUNCTION_16_16();
  sub_23B3943E8(v26, v0);
  if (qword_280B45360 != -1)
  {
    OUTLINED_FUNCTION_53_3(&qword_280B45360);
  }

  OUTLINED_FUNCTION_173_0();
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v30 = sub_23B50C2E4();
  OUTLINED_FUNCTION_45(v30);
  v34[7] = v30;
  v34[4] = sub_23B50C2D4();
  sub_23B50C8C4();
  v31 = v39;
  __swift_project_boxed_opaque_existential_1(&v38, v39);
  v34[3] = v31;
  __swift_allocate_boxed_opaque_existential_0(v34);
  OUTLINED_FUNCTION_48();
  (*(v32 + 16))();
  sub_23B393B54(v3, v41);
  WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:authenticator:fetchOptionsProvider:)();

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_6_25();
  sub_23B393E24(v5, v33);
  (*(v15 + 8))(v1, v13);
  __swift_destroy_boxed_opaque_existential_1(&v38);
  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_20();
}

void WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:authenticator:fetchOptionsProvider:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for WDSEndpoint(0);
  v13 = OUTLINED_FUNCTION_3(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v14 = *v9;
  v15 = v9[1];
  LOBYTE(v9) = v9[2];
  v16 = OUTLINED_FUNCTION_16_16();
  sub_23B3943E8(v16, v1);
  v34[37] = v14;
  v34[38] = v15;
  v34[39] = v9;
  sub_23B3923E8(v7, v34);
  sub_23B3923E8(v5, &v33);
  sub_23B393B54(v3, v30);
  v17 = v31;
  v18 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v24 = OUTLINED_FUNCTION_195();
  sub_23B4D5D50(v24, v25, v26, v27, v28, v22, 0, 0, v0, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_6_25();
  sub_23B393E24(v11, v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherService.weather(for:)()
{
  OUTLINED_FUNCTION_71();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
  v1[22] = v4;
  OUTLINED_FUNCTION_3(v4);
  v1[23] = OUTLINED_FUNCTION_13_22();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  v1[24] = v5;
  OUTLINED_FUNCTION_3(v5);
  v1[25] = OUTLINED_FUNCTION_13_22();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
  v1[26] = v6;
  OUTLINED_FUNCTION_3(v6);
  v1[27] = OUTLINED_FUNCTION_13_22();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  v1[28] = v7;
  OUTLINED_FUNCTION_3(v7);
  v1[29] = OUTLINED_FUNCTION_13_22();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  v1[30] = v8;
  OUTLINED_FUNCTION_3(v8);
  v1[31] = OUTLINED_FUNCTION_13_22();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  v1[32] = v9;
  OUTLINED_FUNCTION_3(v9);
  v1[33] = OUTLINED_FUNCTION_13_22();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  v1[34] = v10;
  OUTLINED_FUNCTION_3(v10);
  v1[35] = OUTLINED_FUNCTION_13_22();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  v1[36] = v11;
  OUTLINED_FUNCTION_3(v11);
  v1[37] = OUTLINED_FUNCTION_13_22();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v12);
  v1[38] = OUTLINED_FUNCTION_145_1();
  v1[39] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v13);
  v1[40] = OUTLINED_FUNCTION_145_1();
  v1[41] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_3(v14);
  v1[42] = OUTLINED_FUNCTION_13_22();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_3(v15);
  v1[43] = OUTLINED_FUNCTION_13_22();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v16);
  v1[44] = OUTLINED_FUNCTION_145_1();
  v1[45] = swift_task_alloc();
  v17 = type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_3(v17);
  v1[46] = OUTLINED_FUNCTION_13_22();
  v18 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_23B4C2BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_239_1();
  v23 = v22[22].i64[1];
  v24 = v22[20].i64[1];
  v25 = v22[19].i64[1];
  v27 = v22[18].i64[0];
  v26 = v22[18].i64[1];
  v29 = v22[17].i64[0];
  v28 = v22[17].i64[1];
  v31 = v22[16].i64[0];
  v30 = v22[16].i64[1];
  v32 = v22[15].i64[1];
  v121 = v22[15].i64[0];
  v122 = v22[14].i64[1];
  v123 = v22[14].i64[0];
  v124 = v22[13].i64[1];
  v125 = v22[13].i64[0];
  v126 = v22[12].i64[1];
  v127 = v22[12].i64[0];
  v128 = v22[11].i64[1];
  v22[1].i64[0] = v22[23].i64[0];
  v22[1].i64[1] = v23;
  v22[2] = vextq_s8(v22[21], v22[21], 8uLL);
  v22[3].i64[0] = v22[9].i64;
  v22[3].i64[1] = &v22[24].i64[1];
  v22[4].i64[0] = v24;
  v22[4].i64[1] = v25;
  v33 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  v40 = v26 + v27[8];
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = 1;
  OUTLINED_FUNCTION_174_1(v26 + v27[9]);
  v41 = v26 + v27[10];
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = v42;
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  v44 = v43;
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v43);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_1();
  v49 = v48;
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v48);
  v22[5].i64[0] = v26;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v33);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v33);
  v59 = v28 + v29[8];
  *v59 = 0;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  OUTLINED_FUNCTION_174_1(v28 + v29[9]);
  v60 = v28 + v29[10];
  *v60 = 0;
  *(v60 + 8) = 0;
  *(v60 + 16) = v61;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v44);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v49);
  v22[5].i64[1] = v28;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v33);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v33);
  OUTLINED_FUNCTION_39_8(v31[8]);
  *(v74 + 16) = 1;
  OUTLINED_FUNCTION_174_1(v30 + v31[9]);
  OUTLINED_FUNCTION_39_8(v31[10]);
  *(v75 + 16) = v76;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v44);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v49);
  v22[6].i64[0] = v30;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v33);
  OUTLINED_FUNCTION_11_21();
  *(v86 + 16) = 2;
  OUTLINED_FUNCTION_87_0();
  *(v87 + 16) = 2;
  OUTLINED_FUNCTION_37_10();
  v22[6].i64[1] = v32;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v33);
  OUTLINED_FUNCTION_11_21();
  *(v91 + 16) = 2;
  OUTLINED_FUNCTION_87_0();
  *(v92 + 16) = v93;
  OUTLINED_FUNCTION_37_10();
  v22[7].i64[0] = v122;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v33);
  OUTLINED_FUNCTION_11_21();
  *(v97 + 16) = 2;
  OUTLINED_FUNCTION_87_0();
  *(v98 + 16) = 2;
  OUTLINED_FUNCTION_37_10();
  v22[7].i64[1] = v124;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v33);
  OUTLINED_FUNCTION_11_21();
  *(v102 + 16) = 2;
  OUTLINED_FUNCTION_87_0();
  *(v103 + 16) = v104;
  OUTLINED_FUNCTION_37_10();
  v22[8].i64[0] = v126;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v33);
  OUTLINED_FUNCTION_11_21();
  *(v108 + 16) = 2;
  OUTLINED_FUNCTION_87_0();
  *(v109 + 16) = 2;
  OUTLINED_FUNCTION_37_10();
  v22[8].i64[1] = v128;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v22[23].i64[1] = v110;
  *v110 = v111;
  v110[1] = sub_23B4C2F74;
  OUTLINED_FUNCTION_234_1();

  return v115(v112, v113, v114, v115, v116, v117, v118, v119, v121, v122, v123, v124, v125, v126, v127, v22 + 5, v128, sub_23B4C36E0, v22 + 1, a20, a21, a22);
}

uint64_t sub_23B4C2F74()
{
  OUTLINED_FUNCTION_244_0();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v3[48] = v0;

  if (!v0)
  {
    v7 = v3[37];
    v8 = v3[35];
    v9 = v3[33];
    v10 = v3[31];
    v11 = v3[29];
    v12 = v3[27];
    v13 = v3[25];
    sub_23B4D7720(v3[23], &qword_27E132F08, &unk_23B51CB30);
    sub_23B4D7720(v13, &qword_27E132EE8, &qword_23B515820);
    sub_23B4D7720(v12, &qword_27E132EE0, &unk_23B51CB40);
    sub_23B4D7720(v11, &qword_27E132ED8, &qword_23B515818);
    sub_23B4D7720(v10, &qword_27E131F20, &unk_23B51CB20);
    sub_23B4D7720(v9, &qword_27E131F10, &unk_23B51CB10);
    sub_23B4D7720(v8, &qword_27E132ED0, &qword_23B515810);
    sub_23B4D7720(v7, &qword_27E132EC8, &unk_23B51CB00);
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_242_1();

  return MEMORY[0x2822009F8](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_23B4C3150()
{
  v1 = *(v0 + 360);
  v41 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v40 = v2;
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v35 = v5;
  v36 = v4;
  v6 = *(v0 + 320);
  v34 = *(v0 + 304);
  v7 = *(v0 + 152);
  v37 = *(v0 + 144);
  v38 = *(v0 + 394);
  v39 = *(v0 + 392);
  sub_23B3943E8(v41, v7);
  sub_23B3EB900(v1, v3, &qword_27E131C90, &unk_23B514EC0);
  v8 = type metadata accessor for Weather(0);
  sub_23B3EB900(v2, v7 + v8[6], &qword_27E131CA8, &unk_23B50ED70);
  sub_23B3EB900(v4, v7 + v8[7], &qword_27E131CB0, &qword_23B516B60);
  sub_23B3EB900(v5, v6, &qword_27E131C78, &qword_23B50ED40);
  v9 = OUTLINED_FUNCTION_90_1();
  sub_23B3EB900(v9, v10, v11, v12);
  v13 = v8[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = v8[8];
  v19 = v8[10];
  type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = v8[11];
  type metadata accessor for WeatherChanges(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_23B3EB988(v3, v7 + v13, &qword_27E131C90, &unk_23B514EC0);
  *(v7 + v18) = v37;
  v29 = v7 + v8[9];
  *v29 = v39;
  *(v29 + 2) = v38;
  sub_23B3EB988(v6, v7 + v19, &qword_27E131C78, &qword_23B50ED40);
  sub_23B3EB988(v34, v7 + v24, &qword_27E131EF0, &unk_23B50F220);
  *(v7 + v8[12]) = 0;
  v30 = OUTLINED_FUNCTION_226();
  sub_23B4D7720(v30, v31, &unk_23B50F220);
  sub_23B4D7720(v35, &qword_27E131C78, &qword_23B50ED40);
  sub_23B4D7720(v36, &qword_27E131CB0, &qword_23B516B60);
  sub_23B4D7720(v40, &qword_27E131CA8, &unk_23B50ED70);
  sub_23B4D7720(v1, &qword_27E131C90, &unk_23B514EC0);
  sub_23B393E24(v41, type metadata accessor for CurrentWeather);

  OUTLINED_FUNCTION_45_0();

  return v32();
}

uint64_t sub_23B4C34FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_181_1();
  v37 = v20[45];
  v38 = v20[44];
  v39 = v20[43];
  v40 = v20[42];
  v41 = v20[41];
  v42 = v20[40];
  v21 = v20[37];
  v43 = v20[39];
  v44 = v20[38];
  v22 = v20[35];
  v23 = v20[33];
  v24 = v20[31];
  v25 = v20[29];
  v26 = v20[27];
  v27 = v20[25];
  sub_23B4D7720(v20[23], &qword_27E132F08, &unk_23B51CB30);
  sub_23B4D7720(v27, &qword_27E132EE8, &qword_23B515820);
  sub_23B4D7720(v26, &qword_27E132EE0, &unk_23B51CB40);
  sub_23B4D7720(v25, &qword_27E132ED8, &qword_23B515818);
  sub_23B4D7720(v24, &qword_27E131F20, &unk_23B51CB20);
  sub_23B4D7720(v23, &qword_27E131F10, &unk_23B51CB10);
  sub_23B4D7720(v22, &qword_27E132ED0, &qword_23B515810);
  sub_23B4D7720(v21, &qword_27E132EC8, &unk_23B51CB00);

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_144_1();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, v39, v40, v41, v42, v43, v44, a18, a19, a20);
}

uint64_t sub_23B4C36E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  v4[7] = swift_task_alloc();
  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353B0, &qword_23B523828);
  v4[9] = swift_task_alloc();
  type metadata accessor for WeatherServiceFetchOptions(0);
  v6 = swift_task_alloc();
  v4[10] = v6;
  v7 = swift_task_alloc();
  v4[11] = v7;
  *v7 = v4;
  v7[1] = sub_23B4C3834;

  return sub_23B4C15EC(v6, a2);
}

uint64_t sub_23B4C3834()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C3918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_129_1();
  v15 = v14[10];
  v17 = v14[6];
  v16 = v14[7];
  v19 = v14[4];
  v18 = v14[5];
  v20 = v14[3];
  v21 = type metadata accessor for CurrentWeather(0);
  type metadata accessor for WeatherQuery(0, v21, v22, v23);
  OUTLINED_FUNCTION_2();
  v24 = OUTLINED_FUNCTION_146();
  v25(v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  type metadata accessor for WeatherQuery(0, v26, v27, v28);
  OUTLINED_FUNCTION_2();
  v29 = OUTLINED_FUNCTION_154_1();
  v30(v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  type metadata accessor for WeatherQuery(0, v31, v32, v33);
  OUTLINED_FUNCTION_2();
  v34 = OUTLINED_FUNCTION_154_1();
  v35(v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  type metadata accessor for WeatherQuery(0, v36, v37, v38);
  OUTLINED_FUNCTION_2();
  v39 = OUTLINED_FUNCTION_154_1();
  v40(v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC8, &unk_23B50F1F0);
  type metadata accessor for WeatherQuery(0, v41, v42, v43);
  OUTLINED_FUNCTION_2();
  v44 = OUTLINED_FUNCTION_154_1();
  v45(v44);
  type metadata accessor for WeatherQuery(0, &type metadata for WeatherAvailability, v46, v47);
  OUTLINED_FUNCTION_2();
  v48 = OUTLINED_FUNCTION_154_1();
  v49(v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  type metadata accessor for WeatherQuery(0, v50, v51, v52);
  OUTLINED_FUNCTION_2();
  v53 = OUTLINED_FUNCTION_154_1();
  v54(v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  v56 = *(v19 + 56);
  v57 = *(v17 + 144);
  type metadata accessor for WeatherQuery(0, v55, v58, v59);
  OUTLINED_FUNCTION_2();
  (*(v60 + 16))(v16 + v57, v56);
  v61 = swift_task_alloc();
  v14[12] = v61;
  v61[2] = v18;
  v61[3] = v20;
  v61[4] = v16;
  v61[5] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[13] = v62;
  *v62 = v63;
  v62[1] = sub_23B4C3C4C;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2822008A0](v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C3C4C()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    sub_23B4D7720(*(v3 + 56), &qword_27E1353A8, &qword_23B523820);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C3D80()
{
  OUTLINED_FUNCTION_188();
  v1 = *(v0 + 80);
  sub_23B4D7720(*(v0 + 56), &qword_27E1353A8, &qword_23B523820);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4C3E20()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  sub_23B4D7504(v1, *v4);
  sub_23B4D7774(v1 + v3[12], *(v4 + 8), &qword_27E131C90, &unk_23B514EC0);
  sub_23B4D7774(v1 + v3[16], *(v4 + 16), &qword_27E131CA8, &unk_23B50ED70);
  sub_23B4D7774(v1 + v3[20], *(v4 + 24), &qword_27E131CB0, &qword_23B516B60);
  **(v4 + 32) = *(v1 + v3[24]);
  v5 = *(v4 + 40);
  v6 = v1 + v3[28];
  v7 = *v6;
  LOBYTE(v6) = *(v6 + 2);
  *v5 = v7;
  *(v5 + 2) = v6;
  sub_23B4D7774(v1 + v3[32], *(v4 + 48), &qword_27E131C78, &qword_23B50ED40);
  sub_23B4D7774(v1 + v3[36], *(v4 + 56), &qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v2, v8);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_232_1();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t WeatherService.weather<each A>(for:including:)()
{
  OUTLINED_FUNCTION_244_0();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_131_1(v3, v4, v5, v6, v7);
  if (v10)
  {
    OUTLINED_FUNCTION_198_1(v8, v9, (v2 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v13 = OUTLINED_FUNCTION_248_1();
    for (i = 0; v0 != i; ++i)
    {
      *(v13 + 8 * i) = type metadata accessor for WeatherQuery(255, *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8 * i), v11, v12);
    }

    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_208_1();
  v1[9] = v15;
  v1[10] = OUTLINED_FUNCTION_13_22();
  if (v0 == 1)
  {
    TupleTypeMetadata = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_248_1();
    for (j = 0; v0 != j; ++j)
    {
      *(v17 + 8 * j) = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
    }

    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v1[11] = TupleTypeMetadata;
  v1[12] = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v1[13] = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[14] = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_12_23(v20);
  OUTLINED_FUNCTION_242_1();

  return sub_23B4C15EC(v22, v23);
}

uint64_t sub_23B4C4160()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C4244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  if (*(v14 + 40))
  {
    OUTLINED_FUNCTION_107_1();
    do
    {
      OUTLINED_FUNCTION_118_0();
      type metadata accessor for WeatherQuery(0, v15, v16, v17);
      OUTLINED_FUNCTION_2();
      v18 = OUTLINED_FUNCTION_206_1();
      v19(v18);
      OUTLINED_FUNCTION_104_1();
    }

    while (!v20);
  }

  v21 = OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_142_1(v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 128) = v22;
  *v22 = v23;
  v22[1] = sub_23B4C4388;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C4388()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_169_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t WeatherService.weather<A>(for:including:)()
{
  OUTLINED_FUNCTION_188();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v1[7] = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[8] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_12_23(v7);

  return sub_23B4C15EC(v9, v10);
}

uint64_t sub_23B4C4550()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C4634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 56);
  v16 = swift_task_alloc();
  *(v14 + 72) = v16;
  v17 = *(v14 + 24);
  *(v16 + 16) = *(v14 + 40);
  *(v16 + 32) = v17;
  *(v16 + 48) = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 80) = v18;
  *v18 = v19;
  v18[1] = sub_23B4C4720;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C4720()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C4820()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_45_0();

  return v3();
}

uint64_t sub_23B4C4888()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4C48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v8 = sub_23B50D364();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  (*(v9 + 16))(v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  (*(v9 + 32))(v14 + v13, v12, v8);
  WeatherService.fetchWeather<A>(for:including:options:completion:)();
}

uint64_t sub_23B4C4A90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v2);
}

uint64_t sub_23B4C4AF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23B50D954();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v16, v8);
    return sub_23B50D344();
  }

  else
  {
    (*(v4 + 32))(v6, v16, v3);
    return sub_23B50D354();
  }
}

uint64_t WeatherService.weather<A, B>(for:including:_:)()
{
  OUTLINED_FUNCTION_188();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v1[10] = TupleTypeMetadata2;
  OUTLINED_FUNCTION_3(TupleTypeMetadata2);
  v1[11] = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v1[12] = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[13] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_12_23(v11);

  return sub_23B4C15EC(v13, v14);
}

uint64_t sub_23B4C4E28()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C4F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v14 = *(v13 + 96);
  v15 = *(v13 + 72);
  v16 = *(v13 + 48);
  v17 = swift_task_alloc();
  *(v13 + 112) = v17;
  v18 = *(v13 + 32);
  *(v17 + 16) = *(v13 + 56);
  *(v17 + 32) = v15;
  *(v17 + 40) = v18;
  *(v17 + 56) = v16;
  *(v17 + 64) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v13 + 120) = v19;
  *v19 = v20;
  v19[1] = sub_23B4C5004;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_232_1();

  return MEMORY[0x2822008A0](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_23B4C5004()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C5104()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[3];
  v5 = *(v0[10] + 48);
  OUTLINED_FUNCTION_25_11();
  (*(v6 + 32))();
  OUTLINED_FUNCTION_26_16();
  (*(v7 + 32))(v4, v1 + v5, v3);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v2, v8);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_232_1();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_23B4C51DC()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4C5258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a5;
  v23 = a6;
  v24 = a2;
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v13 = sub_23B50D364();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  (*(v14 + 32))(v19 + v18, v17, v13);
  WeatherService.fetchWeather<A, B>(for:including:_:options:completion:)(a3, a4, v22, v23, sub_23B4D72B4, v19, a7, a8);
}

uint64_t sub_23B4C5410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v5 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v5);
}

uint64_t WeatherService.weather<A, B, C>(for:including:_:_:)()
{
  OUTLINED_FUNCTION_188();
  v1[11] = v19;
  v1[12] = v0;
  v1[9] = v2;
  v1[10] = v18;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  OUTLINED_FUNCTION_226_1();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v1[13] = TupleTypeMetadata3;
  OUTLINED_FUNCTION_3(TupleTypeMetadata3);
  v1[14] = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v1[15] = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[16] = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_12_23(v12);

  return sub_23B4C15EC(v14, v15);
}

uint64_t sub_23B4C5594()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C5678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 120);
  v16 = swift_task_alloc();
  *(v14 + 136) = v16;
  OUTLINED_FUNCTION_184_1(v16, *(v14 + 72), *(v14 + 88), *(v14 + 40), *(v14 + 56))[5].n128_u64[0] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 144) = v17;
  *v17 = v18;
  v17[1] = sub_23B4C5768;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C5768()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C5868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_244_0();
  OUTLINED_FUNCTION_83_2();
  v12 = v10[14];
  v11 = v10[15];
  v13 = v10[13];
  v15 = v10[10];
  v14 = v10[11];
  v17 = v10[3];
  v16 = v10[4];
  v18 = *(v13 + 48);
  v19 = *(v13 + 64);
  OUTLINED_FUNCTION_25_11();
  (*(v20 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v21 + 32))(v17, v12 + v18, v15);
  OUTLINED_FUNCTION_26_16();
  (*(v22 + 32))(v16, v12 + v19, v14);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v11, v23);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_242_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_23B4C597C()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4C59F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a2;
  v25 = a7;
  v22 = a5;
  v23 = a6;
  swift_getTupleTypeMetadata3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v14 = sub_23B50D364();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a8;
  *(v20 + 3) = a9;
  *(v20 + 4) = a10;
  (*(v15 + 32))(&v20[v19], v18, v14);
  WeatherService.fetchWeather<A, B, C>(for:including:_:_:options:completion:)(a3, a4, v22, v23, v25, sub_23B4D7200, v20, a8, a9, a10, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_23B4C5BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getTupleTypeMetadata3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v6 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v6);
}

uint64_t WeatherService.weather<A, B, C, D>(for:including:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  v1[18] = v23;
  v1[19] = v0;
  v1[16] = v21;
  v1[17] = v22;
  v1[14] = v19;
  v1[15] = v20;
  v1[12] = v2;
  v1[13] = v3;
  v1[10] = v4;
  v1[11] = v5;
  v1[8] = v6;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  OUTLINED_FUNCTION_109_1();
  v1[5] = v10;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v1[20] = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  v1[21] = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v1[22] = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[23] = v13;
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_12_23(v13);

  return sub_23B4C15EC(v15, v16);
}

uint64_t sub_23B4C5D54()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C5E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v14 = *(v13 + 176);
  v15 = *(v13 + 152);
  v16 = *(v13 + 112);
  v17 = swift_task_alloc();
  *(v13 + 192) = v17;
  v18 = *(v13 + 136);
  v19 = *(v13 + 80);
  v20 = *(v13 + 96);
  *(v17 + 16) = *(v13 + 120);
  *(v17 + 32) = v18;
  *(v17 + 48) = v15;
  *(v17 + 56) = v19;
  *(v17 + 72) = v20;
  *(v17 + 88) = v16;
  *(v17 + 96) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v13 + 200) = v21;
  *v21 = v22;
  v21[1] = sub_23B4C5F38;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_232_1();

  return MEMORY[0x2822008A0](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_23B4C5F38()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C6038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  v16 = v14[21];
  v15 = v14[22];
  v17 = v14[20];
  v18 = v14[17];
  v19 = v14[16];
  v20 = v14[8];
  v21 = v14[7];
  v22 = v17[12];
  v23 = v17[16];
  v38 = v17[20];
  v39 = v14[9];
  OUTLINED_FUNCTION_25_11();
  (*(v24 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v25 + 32))(v21, v16 + v22, v19);
  OUTLINED_FUNCTION_48();
  (*(v26 + 32))(v20, v16 + v23, v18);
  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_194_1();
  v27();
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v15, v28);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_129_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, a12, a13, a14);
}

uint64_t sub_23B4C6180()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4C61FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a7;
  v28 = a8;
  v24 = a5;
  v25 = a6;
  v22 = a3;
  v23 = a4;
  v26 = a2;
  v29 = a9;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v13 = sub_23B50D364();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a9;
  *(v19 + 3) = a10;
  *(v19 + 4) = a11;
  *(v19 + 5) = a12;
  (*(v14 + 32))(&v19[v18], v17, v13);
  WeatherService.fetchWeather<A, B, C, D>(for:including:_:_:_:options:completion:)(v22, v23, v24, v25, v27, v28, sub_23B4D7138, v19, a9, a10, a11, a12, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_23B4C63C8(uint64_t a1)
{
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v2);
}

uint64_t WeatherService.weather<A, B, C, D, E>(for:including:_:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  *(v1 + 176) = v28;
  *(v1 + 184) = v0;
  *(v1 + 160) = v26;
  *(v1 + 168) = v27;
  *(v1 + 144) = v24;
  *(v1 + 152) = v25;
  *(v1 + 136) = v23;
  *(v1 + 120) = v22;
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  *(v1 + 56) = v8;
  *(v1 + 64) = v9;
  OUTLINED_FUNCTION_109_1();
  *(v1 + 40) = v10;
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 192) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  v13 = OUTLINED_FUNCTION_13_22();
  v14 = OUTLINED_FUNCTION_230_1(v13);
  Options = type metadata accessor for WeatherServiceFetchOptions(v14);
  OUTLINED_FUNCTION_3(Options);
  *(v1 + 208) = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 216) = v16;
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_12_23(v16);

  return sub_23B4C15EC(v18, v19);
}

uint64_t sub_23B4C6574()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C6658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 208);
  v16 = swift_task_alloc();
  *(v14 + 224) = v16;
  v17 = *(v14 + 160);
  v18 = *(v14 + 176);
  v19 = *(v14 + 96);
  v20 = *(v14 + 112);
  v21 = *(v14 + 128);
  *(v16 + 16) = *(v14 + 144);
  *(v16 + 32) = v17;
  *(v16 + 48) = v18;
  *(v16 + 64) = v19;
  *(v16 + 80) = v20;
  *(v16 + 96) = v21;
  *(v16 + 112) = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 232) = v22;
  *v22 = v23;
  v22[1] = sub_23B4C674C;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C674C()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C684C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_237_0();
  OUTLINED_FUNCTION_140_1();
  v17 = v16[25];
  v18 = v16[24];
  v19 = v16[21];
  v21 = v16[19];
  v20 = v16[20];
  v44 = v16[11];
  v45 = v16[26];
  v42 = v16[10];
  v22 = v16[8];
  v23 = v16[9];
  v24 = v18[12];
  v25 = v18[16];
  v41 = v18[20];
  v43 = v18[24];
  OUTLINED_FUNCTION_25_11();
  (*(v26 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v27 + 32))(v22, v17 + v24, v21);
  OUTLINED_FUNCTION_48();
  (*(v28 + 32))(v23, v17 + v25, v20);
  OUTLINED_FUNCTION_48();
  (*(v29 + 32))(v42, v17 + v41, v19);
  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_194_1();
  v30();
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v45, v31);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_25();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, a14, a15, a16);
}

uint64_t sub_23B4C69E0()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 208);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4C6A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v30 = a7;
  v31 = a8;
  v27 = a5;
  v28 = a6;
  v25 = a3;
  v26 = a4;
  v29 = a2;
  v24 = a9;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v36 = a14;
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v15 = sub_23B50D364();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  (*(v16 + 16))(&v23 - v18, a1, v15, v17);
  v20 = (*(v16 + 80) + 56) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a10;
  *(v21 + 3) = a11;
  *(v21 + 4) = a12;
  *(v21 + 5) = a13;
  *(v21 + 6) = a14;
  (*(v16 + 32))(&v21[v20], v19, v15);
  WeatherService.fetchWeather<A, B, C, D, E>(for:including:_:_:_:_:options:completion:)(v25, v26, v27, v28, v30, v31, v24, sub_23B4D705C, v21, a10, a11, a12, a13, a14, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_23B4C6C3C(uint64_t a1)
{
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v2);
}

uint64_t WeatherService.weather<A, B, C, D, E, F>(for:including:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  *(v1 + 208) = v30;
  *(v1 + 216) = v0;
  *(v1 + 192) = v28;
  *(v1 + 200) = v29;
  *(v1 + 176) = v26;
  *(v1 + 184) = v27;
  *(v1 + 160) = v24;
  *(v1 + 168) = v25;
  *(v1 + 128) = v22;
  *(v1 + 144) = v23;
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  *(v1 + 80) = v6;
  *(v1 + 88) = v7;
  *(v1 + 64) = v8;
  *(v1 + 72) = v9;
  OUTLINED_FUNCTION_109_1();
  *(v1 + 40) = v10;
  *(v1 + 48) = v11;
  *(v1 + 56) = v12;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 224) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  *(v1 + 232) = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  *(v1 + 240) = OUTLINED_FUNCTION_13_22();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_56_4(v15);
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_12_23(v16);

  return sub_23B4C15EC(v18, v19);
}

uint64_t sub_23B4C6DF4()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C6ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v14 = *(v13 + 240);
  v15 = *(v13 + 216);
  v16 = *(v13 + 160);
  v17 = swift_task_alloc();
  *(v13 + 256) = v17;
  v18 = *(v13 + 184);
  v19 = *(v13 + 200);
  v20 = *(v13 + 112);
  v21 = *(v13 + 128);
  v22 = *(v13 + 144);
  *(v17 + 16) = *(v13 + 168);
  *(v17 + 32) = v18;
  *(v17 + 48) = v19;
  *(v17 + 64) = v15;
  *(v17 + 72) = v20;
  *(v17 + 88) = v21;
  *(v17 + 104) = v22;
  *(v17 + 120) = v16;
  *(v17 + 128) = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v13 + 264) = v23;
  *v23 = v24;
  v23[1] = sub_23B4C6FE0;
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_232_1();

  return MEMORY[0x2822008A0](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_23B4C6FE0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C70E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_181_1();
  v21 = v20[29];
  v22 = v20[28];
  v23 = v20[25];
  v53 = v20[26];
  v25 = v20[23];
  v24 = v20[24];
  v26 = v20[22];
  v54 = v20[13];
  v55 = v20[30];
  v51 = v20[12];
  v27 = v20[10];
  v28 = v20[9];
  v29 = v22[12];
  v30 = v22[16];
  v48 = v22[20];
  v49 = v20[11];
  v50 = v22[24];
  v52 = v22[28];
  OUTLINED_FUNCTION_25_11();
  (*(v31 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v32 + 32))(v28, v21 + v29, v26);
  OUTLINED_FUNCTION_48();
  (*(v33 + 32))(v27, v21 + v30, v25);
  OUTLINED_FUNCTION_48();
  (*(v34 + 32))(v49, v21 + v48, v24);
  OUTLINED_FUNCTION_48();
  (*(v35 + 32))(v51, v21 + v50, v23);
  OUTLINED_FUNCTION_25_11();
  (*(v36 + 32))(v54, v21 + v37);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v55, v38);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_144_1();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, v48, v49, v50, v51, v52, v53, v54, v55, a18, a19, a20);
}

uint64_t sub_23B4C72B4()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 240);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4C7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v38 = a7;
  v39 = a8;
  v35 = a5;
  v36 = a6;
  v31 = a3;
  v32 = a4;
  v37 = a2;
  v33 = a10;
  v34 = a9;
  v29 = a16;
  v30 = a15;
  v40 = a11;
  v41 = a12;
  v28 = a11;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v45 = a16;
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v17 = sub_23B50D364();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  (*(v18 + 16))(&v27 - v20, a1, v17, v19);
  v22 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a11;
  *(v23 + 3) = a12;
  *(v23 + 4) = a13;
  *(v23 + 5) = a14;
  v25 = v29;
  v24 = v30;
  *(v23 + 6) = v30;
  *(v23 + 7) = v25;
  (*(v18 + 32))(&v23[v22], v21, v17);
  WeatherService.fetchWeather<A, B, C, D, E, F>(for:including:_:_:_:_:_:options:completion:)(v31, v32, v35, v36, v38, v39, v34, v33, sub_23B4D6F80, v23, v28, a12, a13, a14, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_23B4C7544(uint64_t a1)
{
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v2);
}

uint64_t sub_23B4C75D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v71 = a3;
  v72 = a5;
  v73 = a2;
  v70 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353B8, &qword_23B523830);
  v6 = *(v69 - 8);
  v68 = *(v6 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  v12 = type metadata accessor for CurrentWeather(0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v14 = v9[14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v16 = v9[18];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v59 = v9[22];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC8, &unk_23B50F1F0);
  v18 = v9[30];
  v61 = v9[26];
  v62 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  v20 = v9[34];
  v63 = v19;
  v64 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  v22 = v9[38];
  v65 = v21;
  v66 = v22;
  v25 = type metadata accessor for WeatherQuery(0, v12, v23, v24);
  (*(*(v25 - 8) + 16))(v11, a4, v25);
  v74[0] = v11;
  v26 = &v11[v9[14]];
  v29 = type metadata accessor for WeatherQuery(0, v13, v27, v28);
  (*(*(v29 - 8) + 16))(v26, a4 + v14, v29);
  v74[1] = v26;
  v30 = &v11[v9[18]];
  v33 = type metadata accessor for WeatherQuery(0, v15, v31, v32);
  (*(*(v33 - 8) + 16))(v30, a4 + v16, v33);
  v74[2] = v30;
  v34 = &v11[v9[22]];
  v37 = type metadata accessor for WeatherQuery(0, v17, v35, v36);
  (*(*(v37 - 8) + 16))(v34, a4 + v59, v37);
  v74[3] = v34;
  v38 = &v11[v9[26]];
  v41 = type metadata accessor for WeatherQuery(0, v60, v39, v40);
  (*(*(v41 - 8) + 16))(v38, a4 + v61, v41);
  v74[4] = v38;
  v42 = &v11[v9[30]];
  v45 = type metadata accessor for WeatherQuery(0, &type metadata for WeatherAvailability, v43, v44);
  (*(*(v45 - 8) + 16))(v42, a4 + v62, v45);
  v74[5] = v42;
  v46 = &v11[v9[34]];
  v49 = type metadata accessor for WeatherQuery(0, v63, v47, v48);
  (*(*(v49 - 8) + 16))(v46, a4 + v64, v49);
  v74[6] = v46;
  v50 = &v11[v9[38]];
  v53 = type metadata accessor for WeatherQuery(0, v65, v51, v52);
  (*(*(v53 - 8) + 16))(v50, a4 + v66, v53);
  v74[7] = v50;
  v54 = v67;
  v55 = v69;
  (*(v6 + 16))(v67, v70, v69);
  v56 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v57 = swift_allocObject();
  (*(v6 + 32))(v57 + v56, v54, v55);
  sub_23B4BD954(v71, v74, v72, sub_23B4D75C8, v57);

  return sub_23B4D7720(v11, &qword_27E1353A8, &qword_23B523820);
}

uint64_t sub_23B4C7AF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353B0, &qword_23B523828);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C0, &qword_23B523838);
  MEMORY[0x28223BE20](v5);
  v7 = (v9 - v6);
  sub_23B3EB900(a1, v9 - v6, &qword_27E1353C0, &qword_23B523838);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353B8, &qword_23B523830);
    return sub_23B50D344();
  }

  else
  {
    sub_23B4D7774(v7, v4, &qword_27E1353B0, &qword_23B523828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353B8, &qword_23B523830);
    return sub_23B50D354();
  }
}

uint64_t WeatherService.weather<each A>(for:including:with:)()
{
  OUTLINED_FUNCTION_168();
  v6 = v5;
  v8 = v7;
  v1[7] = v5;
  v1[8] = v0;
  v1[5] = v4;
  v1[6] = v7;
  v1[3] = v9;
  v1[4] = v3;
  v10 = 8 * v7;
  v1[2] = v11;
  if (v7 == 1)
  {
    v2 = OUTLINED_FUNCTION_198_1(v3, v4, (v5 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    OUTLINED_FUNCTION_253_1();
    OUTLINED_FUNCTION_160_0();
    while (v8 != v2)
    {
      v14 = type metadata accessor for WeatherQuery(255, *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * v2), v12, v13);
      OUTLINED_FUNCTION_157_1(v14);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_250_1();
  }

  v1[9] = v2;
  OUTLINED_FUNCTION_111_0();
  v1[10] = v15;
  v1[11] = OUTLINED_FUNCTION_13_22();
  if (v8 == 1)
  {
    v10 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_253_1();
    for (i = 0; v8 != i; ++i)
    {
      *(v16 + 8 * i) = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_120_1();
  }

  v1[12] = v10;
  OUTLINED_FUNCTION_151_1();
  v1[13] = OUTLINED_FUNCTION_13_22();
  v18 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_23B4C7DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  if (*(v14 + 48))
  {
    do
    {
      OUTLINED_FUNCTION_118_0();
      type metadata accessor for WeatherQuery(0, v15, v16, v17);
      OUTLINED_FUNCTION_2();
      v18 = OUTLINED_FUNCTION_206_1();
      v19(v18);
      OUTLINED_FUNCTION_104_1();
    }

    while (!v20);
    v21 = *(v14 + 48);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v14 + 88);
  v23 = *(v14 + 40);
  v24 = *(v14 + 24);
  v25 = OUTLINED_FUNCTION_202_1();
  *(v14 + 112) = v25;
  v26 = *(v14 + 56);
  *(v25 + 16) = v21;
  *(v25 + 24) = v26;
  *(v25 + 40) = v24;
  *(v25 + 48) = v22;
  *(v25 + 56) = v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 120) = v27;
  *v27 = v28;
  v27[1] = sub_23B4C7F48;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822008A0](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C7F48()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v3[16] = v0;

  if (!v0)
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C8058()
{
  OUTLINED_FUNCTION_188();
  if (*(v0 + 48))
  {
    v1 = (*(v0 + 56) & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      if (*(v0 + 48) == 1)
      {
        v2 = 0;
      }

      else
      {
        v2 = *(*(v0 + 96) + 32);
      }

      (*(*(*v1 - 8) + 32))(**(v0 + 16), *(v0 + 104) + v2);
      OUTLINED_FUNCTION_115_1();
    }

    while (!v3);
  }

  OUTLINED_FUNCTION_45_0();

  return v4();
}

uint64_t sub_23B4C8144()
{
  OUTLINED_FUNCTION_188();
  v0 = OUTLINED_FUNCTION_216_0();
  v1(v0);

  OUTLINED_FUNCTION_67_1();

  return v2();
}

uint64_t WeatherService.marineWeather<each A>(for:including:)()
{
  OUTLINED_FUNCTION_244_0();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_131_1(v3, v4, v5, v6, v7);
  if (v10)
  {
    OUTLINED_FUNCTION_198_1(v8, v9, (v2 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    v13 = OUTLINED_FUNCTION_248_1();
    for (i = 0; v0 != i; ++i)
    {
      *(v13 + 8 * i) = type metadata accessor for WeatherQuery(255, *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8 * i), v11, v12);
    }

    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_208_1();
  v1[9] = v15;
  v1[10] = OUTLINED_FUNCTION_13_22();
  if (v0 == 1)
  {
    TupleTypeMetadata = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_248_1();
    for (j = 0; v0 != j; ++j)
    {
      *(v17 + 8 * j) = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
    }

    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v1[11] = TupleTypeMetadata;
  v1[12] = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v1[13] = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[14] = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_12_23(v20);
  OUTLINED_FUNCTION_242_1();

  return sub_23B4C1728(v22, v23);
}

uint64_t sub_23B4C83A0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C8484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  if (*(v14 + 40))
  {
    OUTLINED_FUNCTION_107_1();
    do
    {
      OUTLINED_FUNCTION_118_0();
      type metadata accessor for WeatherQuery(0, v15, v16, v17);
      OUTLINED_FUNCTION_2();
      v18 = OUTLINED_FUNCTION_206_1();
      v19(v18);
      OUTLINED_FUNCTION_104_1();
    }

    while (!v20);
  }

  v21 = OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_142_1(v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 128) = v22;
  *v22 = v23;
  v22[1] = sub_23B4C85C8;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C85C8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_169_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C86D0()
{
  OUTLINED_FUNCTION_188();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_220_1();
    do
    {
      v1 = OUTLINED_FUNCTION_139_1();
      (*(v2 + 32))(v1, v4 + v3);
      OUTLINED_FUNCTION_115_1();
    }

    while (!v5);
  }

  v6 = *(v0 + 104);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v6, v7);

  OUTLINED_FUNCTION_45_0();

  return v8();
}

uint64_t sub_23B4C87B4()
{
  OUTLINED_FUNCTION_188();
  v1 = *(v0 + 104);
  v2 = OUTLINED_FUNCTION_214_1();
  v3(v2);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v4);

  OUTLINED_FUNCTION_67_1();

  return v5();
}

uint64_t WeatherService.dailyStatistics<each A>(for:forDaysIn:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v12 = OUTLINED_FUNCTION_18_20(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v17)
  {
    OUTLINED_FUNCTION_130_1();
    v19 = OUTLINED_FUNCTION_1_39(v18);
    v0 = type metadata accessor for DailyWeatherStatisticsQuery(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_101_1(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_24_13();
    while (v2 != v3)
    {
      v21 = OUTLINED_FUNCTION_4_37();
      v23 = type metadata accessor for DailyWeatherStatisticsQuery(v21, v22);
      OUTLINED_FUNCTION_138_1(v23);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[24] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[25] = v24;
  v1[26] = OUTLINED_FUNCTION_13_22();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v25);
  v26 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v26);
  v27 = sub_23B50AEF4();
  v1[28] = v27;
  OUTLINED_FUNCTION_28_0(v27);
  v1[29] = v28;
  v1[30] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4C89AC()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_56_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_45_6(v5);

  return sub_23B4C8D78(v7, v8, v9);
}

uint64_t sub_23B4C8A38()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  *(v8 + 256) = v0;

  sub_23B4D7720(v5, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C8C70()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_108_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C8D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for WeatherServiceFetchOptions(0);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4C8E54, 0, 0);
}

uint64_t sub_23B4C8E54()
{
  OUTLINED_FUNCTION_168();
  v1 = v0[9];
  sub_23B3EB900(v0[4], v1, &qword_27E131F68, &unk_23B50F2A0);
  v2 = sub_23B50AEF4();
  v0[10] = v2;
  OUTLINED_FUNCTION_51(v1, 1, v2);
  if (v3)
  {
    v4 = v0[5];
    sub_23B4D7720(v0[9], &qword_27E131F68, &unk_23B50F2A0);
    __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
    OUTLINED_FUNCTION_120_1();
    OUTLINED_FUNCTION_71_2();
    v11 = (v5 + *v5);
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v0[11] = v6;
    *v6 = v7;
    v6[1] = sub_23B4C9058;
    OUTLINED_FUNCTION_112_1();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_48();
    (*(v9 + 32))();

    OUTLINED_FUNCTION_45_0();

    return v10();
  }
}

uint64_t sub_23B4C9058()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4C913C()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v1 = v0[10];
  v2 = v0[8];
  sub_23B3EB900(v0[7] + *(v0[6] + 20), v2, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_51(v2, 1, v1);
  if (v3)
  {
    v4 = v0[7];
    sub_23B4D7720(v0[8], &qword_27E131F68, &unk_23B50F2A0);
    sub_23B3E3D54();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_0_54();
    sub_23B393E24(v4, v6);

    OUTLINED_FUNCTION_67_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_54();
    sub_23B393E24(v7, v8);
    OUTLINED_FUNCTION_25_11();
    (*(v9 + 32))();

    OUTLINED_FUNCTION_45_0();
  }

  OUTLINED_FUNCTION_232_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t WeatherService.dailyStatistics<each A>(for:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_47_5(v3, v4, v5, v6, v7, v8, v9, v10);
  if (v12)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = OUTLINED_FUNCTION_1_39(v13);
    v0 = type metadata accessor for DailyWeatherStatisticsQuery(v14, v15);
  }

  else
  {
    v16 = v11;
    OUTLINED_FUNCTION_13_22();
    OUTLINED_FUNCTION_24_13();
    while (v16 != v2)
    {
      v17 = OUTLINED_FUNCTION_4_37();
      v19 = type metadata accessor for DailyWeatherStatisticsQuery(v17, v18);
      OUTLINED_FUNCTION_138_1(v19);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[23] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[24] = v20;
  v21 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_230_1(v21);
  v22 = sub_23B50AA24();
  v1[26] = v22;
  OUTLINED_FUNCTION_28_0(v22);
  v1[27] = v23;
  v1[28] = OUTLINED_FUNCTION_13_22();
  v24 = sub_23B50AE64();
  v1[29] = v24;
  OUTLINED_FUNCTION_28_0(v24);
  v1[30] = v25;
  v1[31] = OUTLINED_FUNCTION_13_22();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v26);
  v1[32] = OUTLINED_FUNCTION_145_1();
  v1[33] = swift_task_alloc();
  v27 = sub_23B50AD24();
  v1[34] = v27;
  OUTLINED_FUNCTION_28_0(v27);
  v1[35] = v28;
  v29 = OUTLINED_FUNCTION_145_1();
  v30 = OUTLINED_FUNCTION_247_1(v29);
  v1[38] = OUTLINED_FUNCTION_246_1(v30);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v31 = sub_23B50AE84();
  v1[41] = v31;
  OUTLINED_FUNCTION_28_0(v31);
  v1[42] = v32;
  v1[43] = OUTLINED_FUNCTION_13_22();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v33);
  v1[44] = OUTLINED_FUNCTION_13_22();
  v34 = sub_23B50AEF4();
  v1[45] = v34;
  OUTLINED_FUNCTION_28_0(v34);
  v1[46] = v35;
  v1[47] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_23B4C959C()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v0 + 384) = v5;
  *v5 = v6;
  v5[1] = sub_23B4C9638;
  OUTLINED_FUNCTION_170_1();

  return sub_23B4C8D78(v7, v8, v9);
}

uint64_t sub_23B4C9638()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  *(v8 + 392) = v0;

  sub_23B4D7720(v5, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C975C()
{
  OUTLINED_FUNCTION_140_1();
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[35];
  v31 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  sub_23B50AE04();
  sub_23B50B9D4();
  sub_23B50B994();
  sub_23B50ADE4();
  v6 = *(v3 + 8);
  v0[50] = v6;
  v0[51] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v32 = *MEMORY[0x277CC9968];
  v33 = *(v4 + 104);
  v33(v5);
  sub_23B50AE24();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_195();
  v7(v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v2);
  v11 = v0[33];
  v10 = v0[34];
  if (EnumTagSinglePayload == 1)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_51(v11, 1, v10);
    if (!v12)
    {
      sub_23B4D7720(v0[33], &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    (*(v0[35] + 32))(v0[38], v0[33], v0[34]);
  }

  v13 = v0[34];
  v15 = v0[31];
  v14 = v0[32];
  (v33)(v15, v32, v0[29]);
  sub_23B50AE24();
  v16 = OUTLINED_FUNCTION_187_1();
  v7(v16);
  if (__swift_getEnumTagSinglePayload(v14, 1, v13) == 1)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_55_4();
    if (!v12)
    {
      sub_23B4D7720(v0[32], &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_178_1();
    v17();
  }

  v18 = v0[39];
  v19 = v0[37];
  OUTLINED_FUNCTION_166_1();
  v7(v18);
  v20 = OUTLINED_FUNCTION_226();
  v7(v20);
  OUTLINED_FUNCTION_25_4();
  sub_23B50AA04();
  v0[52] = OUTLINED_FUNCTION_197_1();
  if (v15)
  {
    v21 = OUTLINED_FUNCTION_159_1();
    memcpy(v21, v22, v19);
  }

  v34 = swift_task_alloc();
  v0[53] = v34;
  if (v15)
  {
    OUTLINED_FUNCTION_29_11();
    do
    {
      OUTLINED_FUNCTION_203_1();
      OUTLINED_FUNCTION_28_10();
      v23 = OUTLINED_FUNCTION_3_45();
      type metadata accessor for DailyWeatherStatisticsQuery(v23, v24);
      OUTLINED_FUNCTION_2();
      v25 = OUTLINED_FUNCTION_90_1();
      v26(v25);
      OUTLINED_FUNCTION_27_14(v34);
    }

    while (!v12);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[54] = v27;
  *v27 = v28;
  v27[1] = sub_23B4C9B18;
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_3_25();

  return sub_23B4BEF58();
}

uint64_t sub_23B4C9B18()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_165_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C9C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_238_0();
  v47 = v26[53];
  v48 = v26[52];
  v27 = v26[50];
  v28 = v26[46];
  v29 = v26[47];
  v30 = v26[42];
  v45 = v26[43];
  v46 = v26[45];
  v44 = v26[41];
  v31 = v26[38];
  v49 = v26[44];
  v50 = v26[39];
  v32 = v26[37];
  v33 = v26[34];
  v51 = v26[36];
  v52 = v26[33];
  v54 = v26[32];
  v55 = v26[31];
  v53 = v26[28];
  v56 = v26[25];
  (*(v26[27] + 8))();
  v27(v32, v33);
  v27(v31, v33);
  v34 = OUTLINED_FUNCTION_227_0();
  (v27)(v34);
  (*(v30 + 8))(v45, v44);
  (*(v28 + 8))(v29, v46);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_231_1();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v45, v46, v32, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, a24, a25, a26);
}

uint64_t sub_23B4C9DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_237_0();
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_128_1();
  v29 = v18;
  v30 = v17;
  v31 = *(v16 + 200);
  v32 = v19;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_3_25();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, v31, v32, a14, a15, a16);
}

uint64_t sub_23B4C9E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_181_1();
  v21 = v20[50];
  v22 = v20[46];
  v45 = v20[45];
  v47 = v20[47];
  v23 = v20[42];
  v24 = v20[40];
  v41 = v20[41];
  v42 = v20[43];
  v26 = v20[37];
  v25 = v20[38];
  v27 = v20[34];
  v28 = v20[24];
  v43 = v20[23];
  v44 = v20[25];
  (*(v20[27] + 8))(v20[28], v20[26]);
  v21(v26, v27);
  v21(v25, v27);
  v21(v24, v27);
  (*(v23 + 8))(v42, v41);
  (*(v22 + 8))(v47, v45);
  (*(v28 + 8))(v44, v43);

  OUTLINED_FUNCTION_128_1();
  v46 = v30;
  v48 = v29;
  v49 = v20[25];
  v50 = v31;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_144_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, v46, v48, v49, v50, a18, a19, a20);
}

uint64_t WeatherService.dailyStatistics<each A>(for:startDay:endDay:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v13 = OUTLINED_FUNCTION_8_27(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_1_39(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    v0 = type metadata accessor for DailyWeatherStatisticsQuery(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_88_1(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_42_9();
    while (v3 != v4)
    {
      v22 = OUTLINED_FUNCTION_9_30(*(v2 + 8 * v4));
      v24 = type metadata accessor for DailyWeatherStatisticsQuery(v22, v23);
      OUTLINED_FUNCTION_193_1(v24);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    OUTLINED_FUNCTION_164_1();
  }

  v1[25] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[26] = v25;
  v1[27] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

void sub_23B4CA118()
{
  if ((v1[17] - 367) < 0xFFFFFFFFFFFFFE92 || (v1[16] - 367) < 0xFFFFFFFFFFFFFE92)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_129_1();
    v2 = OUTLINED_FUNCTION_241_1();
    v1[28] = v2;
    if (v0)
    {
      OUTLINED_FUNCTION_116_1();
    }

    v20 = swift_task_alloc();
    v1[29] = v20;
    if (v0)
    {
      OUTLINED_FUNCTION_29_11();
      do
      {
        OUTLINED_FUNCTION_28_10();
        OUTLINED_FUNCTION_188_1();
        v3 = OUTLINED_FUNCTION_3_45();
        type metadata accessor for DailyWeatherStatisticsQuery(v3, v4);
        OUTLINED_FUNCTION_2();
        v5 = OUTLINED_FUNCTION_90_1();
        v6(v5);
        OUTLINED_FUNCTION_27_14(v20);
      }

      while (!v7);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v1[30] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_78_2(v8);
    OUTLINED_FUNCTION_113_1(v10);
    OUTLINED_FUNCTION_217_1(v11, v12, v13, v14, v15, v16, v17, v18, v2);
    OUTLINED_FUNCTION_99_1();

    sub_23B4CA484();
  }
}

uint64_t sub_23B4CA280()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_73_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CA388()
{
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_45_0();

  return v0();
}

uint64_t sub_23B4CA3F4()
{
  OUTLINED_FUNCTION_188();
  v0 = OUTLINED_FUNCTION_216_0();
  v1(v0);

  OUTLINED_FUNCTION_67_1();

  return v2();
}

uint64_t sub_23B4CA484()
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_89_0(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_1_39(*(v0 & 0xFFFFFFFFFFFFFFFELL));
    v3 = type metadata accessor for DailyWeatherStatisticsQuery(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_160_0();
    OUTLINED_FUNCTION_229_1();
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_227_1();
      v17 = OUTLINED_FUNCTION_9_30(v16);
      v19 = type metadata accessor for DailyWeatherStatisticsQuery(v17, v18);
      OUTLINED_FUNCTION_157_1(v19);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_250_1();
  }

  v2[37] = v3;
  OUTLINED_FUNCTION_111_0();
  v2[38] = v20;
  v2[39] = OUTLINED_FUNCTION_13_22();
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_39_9();
    v22 = OUTLINED_FUNCTION_77_2(v21);
    v1 = type metadata accessor for DailyWeatherStatistics(v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_160_0();
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_227_1();
      v25 = OUTLINED_FUNCTION_76_1(v24);
      v27 = type metadata accessor for DailyWeatherStatistics(v25, v26);
      OUTLINED_FUNCTION_157_1(v27);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_120_1();
  }

  v2[40] = v1;
  OUTLINED_FUNCTION_151_1();
  v2[41] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_129_0();
  return OUTLINED_FUNCTION_240_1();
}

uint64_t sub_23B4CA600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  if (v15[31])
  {
    OUTLINED_FUNCTION_5_29();
    do
    {
      OUTLINED_FUNCTION_150_1();
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v15[37] + v16);
      }

      OUTLINED_FUNCTION_17_19();
      v19 = v15[39];
      v20 = OUTLINED_FUNCTION_75_1();
      type metadata accessor for DailyWeatherStatisticsQuery(v20, v21);
      OUTLINED_FUNCTION_2();
      (*(v22 + 16))(v19 + v18, v14);
      OUTLINED_FUNCTION_64_2();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_149_1();
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_95_0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v15[43] = v33;
  *v33 = v34;
  OUTLINED_FUNCTION_218_1(v33);
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_129_0();

  return MEMORY[0x2822008A0](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4CA744()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 352) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_168_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_129_1();
  if (*(v12 + 248))
  {
    OUTLINED_FUNCTION_5_29();
    do
    {
      OUTLINED_FUNCTION_150_1();
      OUTLINED_FUNCTION_17_19();
      v13 = OUTLINED_FUNCTION_74_2();
      type metadata accessor for DailyWeatherStatistics(v13, v14);
      OUTLINED_FUNCTION_2();
      v15 = OUTLINED_FUNCTION_204_1();
      v16(v15);
      OUTLINED_FUNCTION_64_2();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_99_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_23B4CA924()
{
  OUTLINED_FUNCTION_188();
  v0 = OUTLINED_FUNCTION_216_0();
  v1(v0);

  OUTLINED_FUNCTION_67_1();

  return v2();
}

uint64_t sub_23B4CA9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(v80) = a6;
  v81 = a4;
  v82 = a5;
  v77 = a1;
  v14 = a12;
  v15 = a9;
  v78 = a11;
  v79 = a3;
  v16 = 8 * a8;
  v85 = a12;
  v86 = a9;
  v87 = a10;
  v83 = a2;
  v89 = (a11 & 0xFFFFFFFFFFFFFFFELL);
  if (a8 == 1)
  {
    v17 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v18 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *(a12 & 0xFFFFFFFFFFFFFFFELL);
    v90 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v91 = v17;
    v92 = v18;
    v93 = v19;
    type metadata accessor for DailyWeatherStatistics(255, &v90);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v20 = 0;
    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
    while (a8 != v20)
    {
      v23 = *(v22 + 8 * v20);
      v24 = v89[v20];
      v25 = *((a12 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v90 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v91 = v23;
      v92 = v24;
      v93 = v25;
      *(&v70 + 8 * v20++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherStatistics(255, &v90);
    }

    swift_getTupleTypeMetadata();
    v14 = v85;
    v15 = v86;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v26 = sub_23B50D364();
  v75 = *(v26 - 8);
  v76 = v26;
  v73 = *(v75 + 64);
  MEMORY[0x28223BE20](v26);
  v74 = &v70 - v28;
  if (a8 == 1)
  {
    v29 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
    v30 = *v89;
    v31 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    v90 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    v91 = v29;
    v92 = v30;
    v93 = v31;
    TupleTypeMetadata = type metadata accessor for DailyWeatherStatisticsQuery(0, &v90);
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v33 = 0;
    v34 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v35 = v87 & 0xFFFFFFFFFFFFFFFELL;
    v36 = v14 & 0xFFFFFFFFFFFFFFFELL;
    while (a8 != v33)
    {
      v37 = *(v35 + 8 * v33);
      v38 = v89[v33];
      v39 = *(v36 + 8 * v33);
      v90 = *(v34 + 8 * v33);
      v91 = v37;
      v92 = v38;
      v93 = v39;
      *(&v70 + 8 * v33++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherStatisticsQuery(255, &v90);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v14 = v85;
    v15 = v86;
  }

  v72 = &v70;
  v71 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v88 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = &v70;
  MEMORY[0x28223BE20](v41);
  v43 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v42;
  if (a8)
  {
    v44 = 0;
    v45 = (v42 + 32);
    do
    {
      if (a8 == 1)
      {
        v46 = 0;
      }

      else
      {
        v46 = *v45;
      }

      *&v43[8 * v44++] = a7 + v46;
      v45 += 4;
    }

    while (a8 != v44);
    MEMORY[0x28223BE20](v42);
    v47 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = 0;
    v49 = v86 & 0xFFFFFFFFFFFFFFFELL;
    v51 = v50 & 0xFFFFFFFFFFFFFFFELL;
    v52 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v53 = (v84 + 32);
    do
    {
      if (a8 == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = *v53;
      }

      v55 = *(v51 + 8 * v48);
      v56 = v89[v48];
      v57 = *(v52 + 8 * v48);
      v58 = *&v43[8 * v48];
      v59 = &v88[v54];
      v90 = *(v49 + 8 * v48);
      v91 = v55;
      v92 = v56;
      v93 = v57;
      v60 = type metadata accessor for DailyWeatherStatisticsQuery(0, &v90);
      (*(*(v60 - 8) + 16))(v59, v58, v60);
      *&v47[8 * v48++] = v59;
      v53 += 4;
    }

    while (a8 != v48);
    v61 = v47;
    v14 = v85;
    v15 = v86;
  }

  else
  {
    v61 = &v94;
  }

  v89 = v61;
  v62 = v74;
  v63 = v75;
  v64 = v76;
  (*(v75 + 16))(v74, v77, v76);
  v65 = (*(v63 + 80) + 56) & ~*(v63 + 80);
  v66 = swift_allocObject();
  *(v66 + 2) = a8;
  *(v66 + 3) = swift_allocateMetadataPack();
  v67 = v87;
  *(v66 + 4) = swift_allocateWitnessTablePack();
  v68 = v78;
  *(v66 + 5) = swift_allocateWitnessTablePack();
  *(v66 + 6) = swift_allocateWitnessTablePack();
  (*(v63 + 32))(&v66[v65], v62, v64);
  WeatherService.fetchDailyStatistics<each A>(for:start:end:shouldFilterOutLeapDay:including:completion:)(v79, v81, v82, BYTE4(v80) & 1, v89, sub_23B4D6E4C, v66, a8, v15, v67, v68, v14, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);

  return (*(v71 + 8))(v88, v84);
}

uint64_t WeatherService.dailySummary<each A>(for:forDaysIn:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v12 = OUTLINED_FUNCTION_18_20(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v17)
  {
    OUTLINED_FUNCTION_130_1();
    v19 = OUTLINED_FUNCTION_1_39(v18);
    v0 = type metadata accessor for DailyWeatherSummaryQuery(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_101_1(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_24_13();
    while (v2 != v3)
    {
      v21 = OUTLINED_FUNCTION_4_37();
      v23 = type metadata accessor for DailyWeatherSummaryQuery(v21, v22);
      OUTLINED_FUNCTION_138_1(v23);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[24] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[25] = v24;
  v1[26] = OUTLINED_FUNCTION_13_22();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v25);
  v26 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v26);
  v27 = sub_23B50AEF4();
  v1[28] = v27;
  OUTLINED_FUNCTION_28_0(v27);
  v1[29] = v28;
  v1[30] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4CB108()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_56_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_45_6(v5);

  return sub_23B4C8D78(v7, v8, v9);
}

uint64_t sub_23B4CB194()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  *(v8 + 256) = v0;

  sub_23B4D7720(v5, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CB3CC()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_108_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CB4D4()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v0 = OUTLINED_FUNCTION_216_0();
  v1(v0);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_232_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23B4CB574()
{
  OUTLINED_FUNCTION_188();

  OUTLINED_FUNCTION_67_1();

  return v0();
}

uint64_t sub_23B4CB5EC()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = OUTLINED_FUNCTION_90_1();
  v2(v1);

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_232_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23B4CB6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v90 = a8;
  v86 = a5;
  v87 = a6;
  v84 = a3;
  v85 = a4;
  v88 = a2;
  v16 = a15;
  v17 = a13;
  v82 = a1;
  v83 = a14;
  v18 = 8 * a11;
  v92 = a15;
  v93 = a13;
  v94 = a12;
  v96 = (a14 & 0xFFFFFFFFFFFFFFFELL);
  if (a11 == 1)
  {
    v19 = *(a13 & 0xFFFFFFFFFFFFFFFELL);
    v20 = *(a14 & 0xFFFFFFFFFFFFFFFELL);
    v21 = *(a15 & 0xFFFFFFFFFFFFFFFELL);
    v97 = *(a12 & 0xFFFFFFFFFFFFFFFELL);
    v98 = v19;
    v99 = v20;
    v100 = v21;
    type metadata accessor for DailyWeatherSummary(255, &v97);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v22 = 0;
    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    while (a11 != v22)
    {
      v25 = *((a13 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v26 = v96[v22];
      v27 = *((a15 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v97 = *(v24 + 8 * v22);
      v98 = v25;
      v99 = v26;
      v100 = v27;
      *(&v73 + 8 * v22++ - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherSummary(255, &v97);
    }

    swift_getTupleTypeMetadata();
    v16 = v92;
    v17 = v93;
  }

  v81 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v80 = sub_23B50D364();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = (&v73 - v29);
  v77 = v30;
  if (a11 == 1)
  {
    v31 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    v32 = *v96;
    v33 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    v97 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
    v98 = v31;
    v99 = v32;
    v100 = v33;
    TupleTypeMetadata = type metadata accessor for DailyWeatherSummaryQuery(0, &v97);
  }

  else
  {
    MEMORY[0x28223BE20](v28);
    v35 = 0;
    v36 = v94 & 0xFFFFFFFFFFFFFFFELL;
    v37 = v17 & 0xFFFFFFFFFFFFFFFELL;
    v38 = v16 & 0xFFFFFFFFFFFFFFFELL;
    while (a11 != v35)
    {
      v39 = *(v37 + 8 * v35);
      v40 = v96[v35];
      v41 = *(v38 + 8 * v35);
      v97 = *(v36 + 8 * v35);
      v98 = v39;
      v99 = v40;
      v100 = v41;
      *(&v73 + 8 * v35++ - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherSummaryQuery(255, &v97);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v16 = v92;
    v17 = v93;
  }

  v76 = &v73;
  v75 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v95 = &v73 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = &v73;
  MEMORY[0x28223BE20](v43);
  v45 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a7;
  v91 = v44;
  if (a11)
  {
    v46 = 0;
    v47 = (v44 + 32);
    do
    {
      if (a11 == 1)
      {
        v48 = 0;
      }

      else
      {
        v48 = *v47;
      }

      *&v45[8 * v46++] = a10 + v48;
      v47 += 4;
    }

    while (a11 != v46);
    MEMORY[0x28223BE20](v44);
    v49 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = 0;
    v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
    v53 = v93 & 0xFFFFFFFFFFFFFFFELL;
    v54 = v16 & 0xFFFFFFFFFFFFFFFELL;
    v55 = (v91 + 32);
    do
    {
      if (a11 == 1)
      {
        v56 = 0;
      }

      else
      {
        v56 = *v55;
      }

      v57 = *(v53 + 8 * v50);
      v58 = v96[v50];
      v59 = *(v54 + 8 * v50);
      v60 = *&v45[8 * v50];
      v61 = &v95[v56];
      v97 = *(v52 + 8 * v50);
      v98 = v57;
      v99 = v58;
      v100 = v59;
      v62 = type metadata accessor for DailyWeatherSummaryQuery(0, &v97);
      (*(*(v62 - 8) + 16))(v61, v60, v62);
      *&v49[8 * v50++] = v61;
      v55 += 4;
    }

    while (a11 != v50);
    v63 = v49;
    v16 = v92;
    v17 = v93;
  }

  else
  {
    v63 = &v101;
  }

  v96 = v63;
  v64 = v79;
  v65 = v78;
  v66 = v80;
  (*(v79 + 16))(v78, v82, v80);
  v67 = (*(v64 + 80) + 56) & ~*(v64 + 80);
  v68 = swift_allocObject();
  *(v68 + 2) = a11;
  v69 = v94;
  *(v68 + 3) = swift_allocateMetadataPack();
  *(v68 + 4) = swift_allocateWitnessTablePack();
  v70 = v83;
  *(v68 + 5) = swift_allocateWitnessTablePack();
  *(v68 + 6) = swift_allocateWitnessTablePack();
  (*(v64 + 32))(&v68[v67], v65, v66);
  WeatherService.fetchDailySummary<each A>(for:start:end:startDate:timeZone:including:completion:)(v84, v85, v86, v87, v89, v90, v81, v96, sub_23B4D6C1C, v68, a11, v69, v17, v70, v16, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);

  return (*(v75 + 8))(v95, v91);
}

uint64_t WeatherService.dailySummary<each A>(for:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_47_5(v3, v4, v5, v6, v7, v8, v9, v10);
  if (v12)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = OUTLINED_FUNCTION_1_39(v13);
    v0 = type metadata accessor for DailyWeatherSummaryQuery(v14, v15);
  }

  else
  {
    v16 = v11;
    OUTLINED_FUNCTION_13_22();
    OUTLINED_FUNCTION_24_13();
    while (v16 != v2)
    {
      v17 = OUTLINED_FUNCTION_4_37();
      v19 = type metadata accessor for DailyWeatherSummaryQuery(v17, v18);
      OUTLINED_FUNCTION_138_1(v19);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[23] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[24] = v20;
  v21 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_230_1(v21);
  v22 = sub_23B50AA24();
  v1[26] = v22;
  OUTLINED_FUNCTION_28_0(v22);
  v1[27] = v23;
  v1[28] = OUTLINED_FUNCTION_13_22();
  v24 = sub_23B50AE64();
  v1[29] = v24;
  OUTLINED_FUNCTION_28_0(v24);
  v1[30] = v25;
  v1[31] = OUTLINED_FUNCTION_13_22();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v26);
  v1[32] = OUTLINED_FUNCTION_13_22();
  v27 = sub_23B50AD24();
  v1[33] = v27;
  OUTLINED_FUNCTION_28_0(v27);
  v1[34] = v28;
  v1[35] = OUTLINED_FUNCTION_145_1();
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_247_1(v29);
  v1[38] = OUTLINED_FUNCTION_246_1(v30);
  v31 = sub_23B50AE84();
  v1[39] = v31;
  OUTLINED_FUNCTION_28_0(v31);
  v1[40] = v32;
  v1[41] = OUTLINED_FUNCTION_13_22();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v33);
  v1[42] = OUTLINED_FUNCTION_13_22();
  v34 = sub_23B50AEF4();
  v1[43] = v34;
  OUTLINED_FUNCTION_28_0(v34);
  v1[44] = v35;
  v1[45] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_23B4CBFB8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v0 + 368) = v5;
  *v5 = v6;
  v5[1] = sub_23B4CC054;
  OUTLINED_FUNCTION_170_1();

  return sub_23B4C8D78(v7, v8, v9);
}

uint64_t sub_23B4CC054()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  *(v8 + 376) = v0;

  sub_23B4D7720(v5, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CC438()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_165_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CC540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_239_1();
  v42 = v22[51];
  v43 = v22[50];
  v23 = v22[48];
  v25 = v22[44];
  v24 = v22[45];
  v26 = v22[40];
  v27 = v22[41];
  v28 = v22[38];
  v40 = v22[39];
  v41 = v22[43];
  v29 = v22[36];
  v44 = v22[42];
  v45 = v22[37];
  v30 = v22[33];
  v48 = v22[32];
  v49 = v22[31];
  v46 = v22[35];
  v47 = v22[28];
  v50 = v22[25];
  (*(v22[27] + 8))();
  v23(v29, v30);
  v23(v28, v30);
  (*(v26 + 8))(v27, v40);
  (*(v25 + 8))(v24, v41);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_234_1();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, a20, a21, a22);
}

uint64_t sub_23B4CC6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_136_0();
  v25 = v14;
  v26 = v15;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_129_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t sub_23B4CC760()
{
  v5 = v0[48];
  v6 = v0[44];
  v18 = v0[43];
  v19 = v0[45];
  v7 = v0[40];
  v8 = OUTLINED_FUNCTION_189_1();
  v17 = v9;
  v10 = v0[24];
  v15 = v11;
  v16 = v0[23];
  (*(v12 + 8))(v8);
  v5(v3, v4);
  v5(v2, v4);
  (*(v7 + 8))(v15, v1);
  (*(v6 + 8))(v19, v18);
  (*(v10 + 8))(v17, v16);

  OUTLINED_FUNCTION_136_0();

  OUTLINED_FUNCTION_67_1();

  return v13();
}

uint64_t WeatherService.hourlyStatistics<each A>(for:forHoursIn:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v12 = OUTLINED_FUNCTION_18_20(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v17)
  {
    OUTLINED_FUNCTION_130_1();
    v19 = OUTLINED_FUNCTION_1_39(v18);
    v0 = type metadata accessor for HourlyWeatherStatisticsQuery(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_101_1(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_24_13();
    while (v2 != v3)
    {
      v21 = OUTLINED_FUNCTION_4_37();
      v23 = type metadata accessor for HourlyWeatherStatisticsQuery(v21, v22);
      OUTLINED_FUNCTION_138_1(v23);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[24] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[25] = v24;
  v1[26] = OUTLINED_FUNCTION_13_22();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v25);
  v26 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v26);
  v27 = sub_23B50AEF4();
  v1[28] = v27;
  OUTLINED_FUNCTION_28_0(v27);
  v1[29] = v28;
  v1[30] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4CCA34()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_56_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_45_6(v5);

  return sub_23B4C8D78(v7, v8, v9);
}

uint64_t sub_23B4CCAC0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  *(v8 + 256) = v0;

  sub_23B4D7720(v5, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t WeatherService.hourlyStatistics<each A>(for:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_47_5(v3, v4, v5, v6, v7, v8, v9, v10);
  if (v12)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = OUTLINED_FUNCTION_1_39(v13);
    v0 = type metadata accessor for HourlyWeatherStatisticsQuery(v14, v15);
  }

  else
  {
    v16 = v11;
    OUTLINED_FUNCTION_13_22();
    OUTLINED_FUNCTION_24_13();
    while (v16 != v2)
    {
      v17 = OUTLINED_FUNCTION_4_37();
      v19 = type metadata accessor for HourlyWeatherStatisticsQuery(v17, v18);
      OUTLINED_FUNCTION_138_1(v19);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[23] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[24] = v20;
  v21 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_230_1(v21);
  v22 = sub_23B50AA24();
  v1[26] = v22;
  OUTLINED_FUNCTION_28_0(v22);
  v1[27] = v23;
  v1[28] = OUTLINED_FUNCTION_13_22();
  v24 = sub_23B50AE64();
  v1[29] = v24;
  OUTLINED_FUNCTION_28_0(v24);
  v1[30] = v25;
  v1[31] = OUTLINED_FUNCTION_13_22();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v26);
  v1[32] = OUTLINED_FUNCTION_13_22();
  v27 = sub_23B50AD24();
  v1[33] = v27;
  OUTLINED_FUNCTION_28_0(v27);
  v1[34] = v28;
  v1[35] = OUTLINED_FUNCTION_145_1();
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_247_1(v29);
  v1[38] = OUTLINED_FUNCTION_246_1(v30);
  v31 = sub_23B50AE84();
  v1[39] = v31;
  OUTLINED_FUNCTION_28_0(v31);
  v1[40] = v32;
  v1[41] = OUTLINED_FUNCTION_145_1();
  v1[42] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v33);
  v1[43] = OUTLINED_FUNCTION_145_1();
  v1[44] = swift_task_alloc();
  v34 = sub_23B50AEF4();
  v1[45] = v34;
  OUTLINED_FUNCTION_28_0(v34);
  v1[46] = v35;
  v1[47] = OUTLINED_FUNCTION_145_1();
  v1[48] = swift_task_alloc();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_23B4CCFF8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v0 + 392) = v5;
  *v5 = v6;
  v5[1] = sub_23B4CD094;
  OUTLINED_FUNCTION_170_1();

  return sub_23B4C8D78(v7, v8, v9);
}

uint64_t sub_23B4CD094()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  *(v8 + 400) = v0;

  sub_23B4D7720(v5, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CD510()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 480) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_165_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CD618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_236_1();
  v45 = v28[55];
  v46 = v28[56];
  v48 = v28[54];
  v49 = v28[58];
  v47 = v28[53];
  v29 = v28[51];
  v30 = v28[48];
  v50 = v28[47];
  v51 = v28[57];
  v31 = v28[45];
  v52 = v28[44];
  v53 = v28[43];
  v32 = v28[38];
  v54 = v28[41];
  v55 = v28[37];
  v56 = v28[35];
  v33 = v28[33];
  v58 = v28[32];
  v59 = v28[31];
  v57 = v28[28];
  v60 = v28[25];
  (*(v28[27] + 8))();
  v34 = OUTLINED_FUNCTION_187_1();
  v29(v34);
  (v29)(v32, v33);
  v35 = OUTLINED_FUNCTION_25_4();
  v45(v35);
  v47(v30, v31);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_233_1();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, a26, a27, a28);
}

uint64_t sub_23B4CD798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_237_0();
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_155_1();
  v29 = v18;
  v30 = v17;
  v31 = *(v16 + 224);
  v32 = *(v16 + 200);
  v33 = v19;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_3_25();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32, v33, a14, a15, a16);
}

uint64_t sub_23B4CD87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_181_1();
  v46 = v20[55];
  v48 = v20[53];
  v24 = v20[51];
  v44 = v20[45];
  v45 = v20[48];
  v25 = OUTLINED_FUNCTION_189_1();
  v43 = v26;
  v27 = v20[23];
  v28 = v20[24];
  (*(v29 + 8))(v25);
  v24(v22, v23);
  v24(v21, v23);
  v30 = OUTLINED_FUNCTION_195();
  v46(v30);
  v48(v45, v44);
  (*(v28 + 8))(v43, v27);

  OUTLINED_FUNCTION_155_1();
  v47 = v32;
  v49 = v31;
  v50 = v20[28];
  v51 = v20[25];
  v52 = v33;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_144_1();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, v49, v50, v51, v52, a18, a19, a20);
}

uint64_t WeatherService.hourlyStatistics<each A>(for:startHour:endHour:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v13 = OUTLINED_FUNCTION_8_27(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_1_39(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    v0 = type metadata accessor for HourlyWeatherStatisticsQuery(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_88_1(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_42_9();
    while (v3 != v4)
    {
      v22 = OUTLINED_FUNCTION_9_30(*(v2 + 8 * v4));
      v24 = type metadata accessor for HourlyWeatherStatisticsQuery(v22, v23);
      OUTLINED_FUNCTION_193_1(v24);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    OUTLINED_FUNCTION_164_1();
  }

  v1[25] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[26] = v25;
  v1[27] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

void sub_23B4CDB04()
{
  if ((v1[17] - 8785) >= 0xFFFFFFFFFFFFDDB0 && (v1[16] - 8785) >= 0xFFFFFFFFFFFFDDB0)
  {
    OUTLINED_FUNCTION_129_1();
    v3 = OUTLINED_FUNCTION_241_1();
    v1[28] = v3;
    if (v0)
    {
      OUTLINED_FUNCTION_116_1();
    }

    v21 = swift_task_alloc();
    v1[29] = v21;
    if (v0)
    {
      OUTLINED_FUNCTION_29_11();
      do
      {
        OUTLINED_FUNCTION_28_10();
        OUTLINED_FUNCTION_188_1();
        v4 = OUTLINED_FUNCTION_3_45();
        type metadata accessor for HourlyWeatherStatisticsQuery(v4, v5);
        OUTLINED_FUNCTION_2();
        v6 = OUTLINED_FUNCTION_90_1();
        v7(v6);
        OUTLINED_FUNCTION_27_14(v21);
      }

      while (!v8);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v1[30] = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_78_2(v9);
    OUTLINED_FUNCTION_113_1(v11);
    OUTLINED_FUNCTION_217_1(v12, v13, v14, v15, v16, v17, v18, v19, v3);
    OUTLINED_FUNCTION_99_1();

    sub_23B4CDD74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23B4CDC6C()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_73_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CDD74()
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_89_0(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_1_39(*(v0 & 0xFFFFFFFFFFFFFFFELL));
    v3 = type metadata accessor for HourlyWeatherStatisticsQuery(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_160_0();
    OUTLINED_FUNCTION_229_1();
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_227_1();
      v17 = OUTLINED_FUNCTION_9_30(v16);
      v19 = type metadata accessor for HourlyWeatherStatisticsQuery(v17, v18);
      OUTLINED_FUNCTION_157_1(v19);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_250_1();
  }

  v2[37] = v3;
  OUTLINED_FUNCTION_111_0();
  v2[38] = v20;
  v2[39] = OUTLINED_FUNCTION_13_22();
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_39_9();
    v22 = OUTLINED_FUNCTION_77_2(v21);
    v1 = type metadata accessor for HourlyWeatherStatistics(v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_160_0();
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_227_1();
      v25 = OUTLINED_FUNCTION_76_1(v24);
      v27 = type metadata accessor for HourlyWeatherStatistics(v25, v26);
      OUTLINED_FUNCTION_157_1(v27);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_120_1();
  }

  v2[40] = v1;
  OUTLINED_FUNCTION_151_1();
  v2[41] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_129_0();
  return OUTLINED_FUNCTION_240_1();
}

uint64_t sub_23B4CDEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  if (v15[31])
  {
    OUTLINED_FUNCTION_5_29();
    do
    {
      OUTLINED_FUNCTION_150_1();
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v15[37] + v16);
      }

      OUTLINED_FUNCTION_17_19();
      v19 = v15[39];
      v20 = OUTLINED_FUNCTION_75_1();
      type metadata accessor for HourlyWeatherStatisticsQuery(v20, v21);
      OUTLINED_FUNCTION_2();
      (*(v22 + 16))(v19 + v18, v14);
      OUTLINED_FUNCTION_64_2();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_149_1();
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_95_0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v15[43] = v33;
  *v33 = v34;
  OUTLINED_FUNCTION_218_1(v33);
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_129_0();

  return MEMORY[0x2822008A0](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4CE034()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 352) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_168_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CE13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_129_1();
  if (*(v12 + 248))
  {
    OUTLINED_FUNCTION_5_29();
    do
    {
      OUTLINED_FUNCTION_150_1();
      OUTLINED_FUNCTION_17_19();
      v13 = OUTLINED_FUNCTION_74_2();
      type metadata accessor for HourlyWeatherStatistics(v13, v14);
      OUTLINED_FUNCTION_2();
      v15 = OUTLINED_FUNCTION_204_1();
      v16(v15);
      OUTLINED_FUNCTION_64_2();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_99_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_23B4CE214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(v80) = a6;
  v81 = a4;
  v82 = a5;
  v77 = a1;
  v14 = a12;
  v15 = a9;
  v78 = a11;
  v79 = a3;
  v16 = 8 * a8;
  v85 = a12;
  v86 = a9;
  v87 = a10;
  v83 = a2;
  v89 = (a11 & 0xFFFFFFFFFFFFFFFELL);
  if (a8 == 1)
  {
    v17 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v18 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *(a12 & 0xFFFFFFFFFFFFFFFELL);
    v90 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v91 = v17;
    v92 = v18;
    v93 = v19;
    type metadata accessor for HourlyWeatherStatistics(255, &v90);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v20 = 0;
    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
    while (a8 != v20)
    {
      v23 = *(v22 + 8 * v20);
      v24 = v89[v20];
      v25 = *((a12 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v90 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v91 = v23;
      v92 = v24;
      v93 = v25;
      *(&v70 + 8 * v20++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for HourlyWeatherStatistics(255, &v90);
    }

    swift_getTupleTypeMetadata();
    v14 = v85;
    v15 = v86;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v26 = sub_23B50D364();
  v75 = *(v26 - 8);
  v76 = v26;
  v73 = *(v75 + 64);
  MEMORY[0x28223BE20](v26);
  v74 = &v70 - v28;
  if (a8 == 1)
  {
    v29 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
    v30 = *v89;
    v31 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    v90 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    v91 = v29;
    v92 = v30;
    v93 = v31;
    TupleTypeMetadata = type metadata accessor for HourlyWeatherStatisticsQuery(0, &v90);
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v33 = 0;
    v34 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v35 = v87 & 0xFFFFFFFFFFFFFFFELL;
    v36 = v14 & 0xFFFFFFFFFFFFFFFELL;
    while (a8 != v33)
    {
      v37 = *(v35 + 8 * v33);
      v38 = v89[v33];
      v39 = *(v36 + 8 * v33);
      v90 = *(v34 + 8 * v33);
      v91 = v37;
      v92 = v38;
      v93 = v39;
      *(&v70 + 8 * v33++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for HourlyWeatherStatisticsQuery(255, &v90);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v14 = v85;
    v15 = v86;
  }

  v72 = &v70;
  v71 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v88 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = &v70;
  MEMORY[0x28223BE20](v41);
  v43 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v42;
  if (a8)
  {
    v44 = 0;
    v45 = (v42 + 32);
    do
    {
      if (a8 == 1)
      {
        v46 = 0;
      }

      else
      {
        v46 = *v45;
      }

      *&v43[8 * v44++] = a7 + v46;
      v45 += 4;
    }

    while (a8 != v44);
    MEMORY[0x28223BE20](v42);
    v47 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = 0;
    v49 = v86 & 0xFFFFFFFFFFFFFFFELL;
    v51 = v50 & 0xFFFFFFFFFFFFFFFELL;
    v52 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v53 = (v84 + 32);
    do
    {
      if (a8 == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = *v53;
      }

      v55 = *(v51 + 8 * v48);
      v56 = v89[v48];
      v57 = *(v52 + 8 * v48);
      v58 = *&v43[8 * v48];
      v59 = &v88[v54];
      v90 = *(v49 + 8 * v48);
      v91 = v55;
      v92 = v56;
      v93 = v57;
      v60 = type metadata accessor for HourlyWeatherStatisticsQuery(0, &v90);
      (*(*(v60 - 8) + 16))(v59, v58, v60);
      *&v47[8 * v48++] = v59;
      v53 += 4;
    }

    while (a8 != v48);
    v61 = v47;
    v14 = v85;
    v15 = v86;
  }

  else
  {
    v61 = &v94;
  }

  v89 = v61;
  v62 = v74;
  v63 = v75;
  v64 = v76;
  (*(v75 + 16))(v74, v77, v76);
  v65 = (*(v63 + 80) + 56) & ~*(v63 + 80);
  v66 = swift_allocObject();
  *(v66 + 2) = a8;
  *(v66 + 3) = swift_allocateMetadataPack();
  v67 = v87;
  *(v66 + 4) = swift_allocateWitnessTablePack();
  v68 = v78;
  *(v66 + 5) = swift_allocateWitnessTablePack();
  *(v66 + 6) = swift_allocateWitnessTablePack();
  (*(v63 + 32))(&v66[v65], v62, v64);
  WeatherService.fetchHourlyStatistics<each A>(for:start:end:shouldFilterOutLeapDay:including:completion:)(v79, v81, v82, BYTE4(v80) & 1, v89, sub_23B4D6BAC, v66, a8, v15, v67, v68, v14, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);

  return (*(v71 + 8))(v88, v84);
}

uint64_t WeatherService.monthlyStatistics<each A>(for:including:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_129_1();
  v17 = v13;
  v11[21] = v16;
  v11[22] = v10;
  v11[19] = v14;
  v11[20] = v15;
  v11[17] = v12;
  v11[18] = v13;
  v11[15] = v18;
  v11[16] = v19;
  v11[14] = v20;
  if (v12 == 1)
  {
    v21 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    v22 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    v23 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    v11[2] = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    v11[3] = v21;
    v11[4] = v22;
    v11[5] = v23;
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery(0, (v11 + 2));
    v25 = 8;
    v26 = 16;
  }

  else
  {
    v27 = v12;
    v25 = 8 * v12;
    v26 = (8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    v28 = swift_task_alloc();
    v29 = 0;
    v30 = v17 & 0xFFFFFFFFFFFFFFFELL;
    while (v27 != v29)
    {
      v31 = OUTLINED_FUNCTION_9_30(*(v30 + 8 * v29));
      *(v28 + 8 * v29++) = type metadata accessor for MonthlyWeatherStatisticsQuery(v31, v32);
    }

    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v11[23] = v26;
  v11[24] = v25;
  v11[25] = TupleTypeMetadata;
  v11[26] = *(TupleTypeMetadata - 8);
  v11[27] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2822009F8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t WeatherService.monthlyStatistics<each A>(for:forMonthsIn:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v12 = OUTLINED_FUNCTION_18_20(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v17)
  {
    OUTLINED_FUNCTION_130_1();
    v19 = OUTLINED_FUNCTION_1_39(v18);
    v0 = type metadata accessor for MonthlyWeatherStatisticsQuery(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_101_1(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_24_13();
    while (v2 != v3)
    {
      v21 = OUTLINED_FUNCTION_4_37();
      v23 = type metadata accessor for MonthlyWeatherStatisticsQuery(v21, v22);
      OUTLINED_FUNCTION_138_1(v23);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[24] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[25] = v24;
  v1[26] = OUTLINED_FUNCTION_13_22();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v25);
  v26 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v26);
  v27 = sub_23B50AEF4();
  v1[28] = v27;
  OUTLINED_FUNCTION_28_0(v27);
  v1[29] = v28;
  v1[30] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4CEC44()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_56_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_45_6(v5);

  return sub_23B4C8D78(v7, v8, v9);
}

uint64_t sub_23B4CECD0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v7 = v6;
  *(v8 + 256) = v0;

  sub_23B4D7720(v5, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CEF08()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v13 = OUTLINED_FUNCTION_8_27(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_1_39(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    v0 = type metadata accessor for MonthlyWeatherStatisticsQuery(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_88_1(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_42_9();
    while (v3 != v4)
    {
      v22 = OUTLINED_FUNCTION_9_30(*(v2 + 8 * v4));
      v24 = type metadata accessor for MonthlyWeatherStatisticsQuery(v22, v23);
      OUTLINED_FUNCTION_193_1(v24);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    OUTLINED_FUNCTION_164_1();
  }

  v1[25] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[26] = v25;
  v26 = OUTLINED_FUNCTION_13_22();
  v27 = OUTLINED_FUNCTION_141_1(v26);
  v28 = type metadata accessor for StatisticsSpanFactory(v27);
  OUTLINED_FUNCTION_3(v28);
  v1[28] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4CF028()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_146();
  v2(v1);
  sub_23B4E6DD4();
  v3 = v0[19];
  v0[29] = swift_task_alloc();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_159_1();
    memcpy(v4, v5, 8 * v3);
  }

  v19 = swift_task_alloc();
  v0[30] = v19;
  if (v3)
  {
    do
    {
      OUTLINED_FUNCTION_188_1();
      v8 = v7 + v6;
      v9 = OUTLINED_FUNCTION_12_25();
      type metadata accessor for MonthlyWeatherStatisticsQuery(v9, v10);
      OUTLINED_FUNCTION_2();
      v11 = OUTLINED_FUNCTION_195();
      v12(v11);
      *v19 = v8;
      OUTLINED_FUNCTION_115_1();
    }

    while (!v13);
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_56_4(v14);
  *v15 = v16;
  v15[1] = sub_23B4BEE50;
  OUTLINED_FUNCTION_3_25();

  return WeatherService.monthlyStatistics<each A>(for:startMonth:endMonth:including:)();
}

uint64_t sub_23B4CF250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v82 = a4;
  v83 = a5;
  v79 = a1;
  v15 = a11;
  v80 = a10;
  v81 = a3;
  v16 = 8 * a7;
  v87 = a9;
  v88 = a8;
  v86 = a11;
  v90 = (a10 & 0xFFFFFFFFFFFFFFFELL);
  if (a7 == 1)
  {
    v17 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v18 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v91 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v92 = v17;
    v93 = v18;
    v94 = v19;
    type metadata accessor for MonthlyWeatherStatistics(255, &v91);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v20 = 0;
    v21 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
    while (a7 != v20)
    {
      v24 = *(v23 + 8 * v20);
      v25 = v90[v20];
      v26 = *((a11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v91 = *(v21 + 8 * v20);
      v92 = v24;
      v93 = v25;
      v94 = v26;
      *(&v71 + 8 * v20++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for MonthlyWeatherStatistics(255, &v91);
    }

    swift_getTupleTypeMetadata();
    v11 = v88;
    v15 = v86;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v27 = sub_23B50D364();
  v77 = *(v27 - 8);
  v78 = v27;
  v75 = *(v77 + 64);
  MEMORY[0x28223BE20](v27);
  v76 = &v71 - v29;
  v84 = a2;
  if (a7 == 1)
  {
    v30 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
    v31 = *v90;
    v32 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    v91 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    v92 = v30;
    v93 = v31;
    v94 = v32;
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v91);
  }

  else
  {
    MEMORY[0x28223BE20](v28);
    v34 = 0;
    v35 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v36 = v87 & 0xFFFFFFFFFFFFFFFELL;
    v37 = v15 & 0xFFFFFFFFFFFFFFFELL;
    while (a7 != v34)
    {
      v38 = *(v36 + 8 * v34);
      v39 = v90[v34];
      v40 = *(v37 + 8 * v34);
      v91 = *(v35 + 8 * v34);
      v92 = v38;
      v93 = v39;
      v94 = v40;
      *(&v71 + 8 * v34++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for MonthlyWeatherStatisticsQuery(255, &v91);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v11 = v88;
    v15 = v86;
  }

  v74 = &v71;
  v73 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v89 = &v71 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = &v71;
  MEMORY[0x28223BE20](v42);
  v44 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v43;
  if (a7)
  {
    v45 = 0;
    v46 = (v43 + 32);
    do
    {
      if (a7 == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = *v46;
      }

      *&v44[8 * v45++] = a6 + v47;
      v46 += 4;
    }

    while (a7 != v45);
    MEMORY[0x28223BE20](v43);
    v48 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
    v53 = v86 & 0xFFFFFFFFFFFFFFFELL;
    v54 = (v85 + 32);
    do
    {
      if (a7 == 1)
      {
        v55 = 0;
      }

      else
      {
        v55 = *v54;
      }

      v56 = *(v52 + 8 * v49);
      v57 = v90[v49];
      v58 = *(v53 + 8 * v49);
      v59 = *&v44[8 * v49];
      v60 = &v89[v55];
      v91 = *(v50 + 8 * v49);
      v92 = v56;
      v93 = v57;
      v94 = v58;
      v61 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v91);
      (*(*(v61 - 8) + 16))(v60, v59, v61);
      *&v48[8 * v49++] = v60;
      v54 += 4;
    }

    while (a7 != v49);
    v15 = v86;
  }

  else
  {
    v48 = &v95;
  }

  v62 = v76;
  v63 = v77;
  v64 = v78;
  (*(v77 + 16))(v76, v79, v78);
  v65 = (*(v63 + 80) + 56) & ~*(v63 + 80);
  v66 = swift_allocObject();
  *(v66 + 2) = a7;
  *(v66 + 3) = swift_allocateMetadataPack();
  v67 = v87;
  *(v66 + 4) = swift_allocateWitnessTablePack();
  v68 = v80;
  *(v66 + 5) = swift_allocateWitnessTablePack();
  *(v66 + 6) = swift_allocateWitnessTablePack();
  (*(v63 + 32))(&v66[v65], v62, v64);
  WeatherService.fetchMonthlyStatistics<each A>(for:start:end:including:completion:)(v81, v82, v83, v48, sub_23B4D8110, v66, a7, v88, v67, v68, v15, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);

  return (*(v73 + 8))(v89, v85);
}

void sub_23B4CF880()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_207_0();
  if (v4 == 1)
  {
    v6 = OUTLINED_FUNCTION_44_5(*(v5 & 0xFFFFFFFFFFFFFFFELL));
    v2(v6);
    swift_checkMetadataState();
  }

  else
  {
    v7 = v4;
    v13[1] = v13;
    MEMORY[0x28223BE20](v3);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_171();
    v8 = 0;
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    while (v7 != v8)
    {
      v11 = OUTLINED_FUNCTION_44_5(*(v10 + 8 * v8));
      *(v0 + 8 * v8++) = (v2)(v11);
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v12 = sub_23B50D364();
  OUTLINED_FUNCTION_245_0(v12);
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G>(for:including:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  *(v1 + 240) = v32;
  *(v1 + 248) = v0;
  *(v1 + 224) = v30;
  *(v1 + 232) = v31;
  *(v1 + 208) = v28;
  *(v1 + 216) = v29;
  *(v1 + 192) = v26;
  *(v1 + 200) = v27;
  *(v1 + 184) = v25;
  *(v1 + 168) = v24;
  *(v1 + 152) = v23;
  *(v1 + 136) = v22;
  *(v1 + 120) = v2;
  *(v1 + 128) = v3;
  *(v1 + 104) = v4;
  *(v1 + 112) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v7;
  *(v1 + 72) = v8;
  *(v1 + 80) = v9;
  OUTLINED_FUNCTION_109_1();
  *(v1 + 40) = v10;
  *(v1 + 48) = v11;
  *(v1 + 56) = v12;
  *(v1 + 64) = v13;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 256) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  *(v1 + 264) = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  *(v1 + 272) = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 280) = v16;
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_12_23(v16);

  return sub_23B4C15EC(v18, v19);
}

uint64_t sub_23B4CFAF4()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4CFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = v14[17].n128_u64[0];
  v16 = swift_task_alloc();
  v14[18].n128_u64[0] = v16;
  v17 = OUTLINED_FUNCTION_184_1(v16, v14[12], v14[13], v14[14], v14[15]);
  v17[5] = v18;
  v17[6] = v19;
  v17[7] = v20;
  v17[8] = v21;
  v17[9].n128_u64[0] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[18].n128_u64[1] = v22;
  *v22 = v23;
  v22[1] = sub_23B4CFCC8;
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4CFCC8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CFDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_239_1();
  v23 = v22[33];
  v24 = v22[32];
  v58 = v22[30];
  v55 = v22[29];
  v26 = v22[27];
  v25 = v22[28];
  v28 = v22[25];
  v27 = v22[26];
  v59 = v22[15];
  v60 = v22[34];
  v56 = v22[14];
  v29 = v22[10];
  v30 = v22[11];
  v31 = v24[12];
  v32 = v24[16];
  v53 = v24[20];
  v54 = v22[12];
  OUTLINED_FUNCTION_219_1();
  v57 = *(v33 + 128);
  OUTLINED_FUNCTION_25_11();
  (*(v34 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v35 + 32))(v29, v23 + v31, v28);
  OUTLINED_FUNCTION_48();
  (*(v36 + 32))(v30, v23 + v32, v27);
  OUTLINED_FUNCTION_48();
  (*(v37 + 32))(v54, v23 + v53, v26);
  OUTLINED_FUNCTION_48();
  (*(v38 + 32))(a12, v23 + a11, v25);
  OUTLINED_FUNCTION_25_11();
  (*(v39 + 32))(v56, v23 + v40);
  OUTLINED_FUNCTION_25_11();
  (*(v41 + 32))(v59, v23 + v42);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v60, v43);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_234_1();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v53, v54, a11, a12, a13, v55, v56, v57, v58, v59, v60, a20, a21, a22);
}

uint64_t sub_23B4CFFD4()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 272);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4D0050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v44 = a7;
  v45 = a8;
  v41 = a5;
  v42 = a6;
  v37 = a3;
  v38 = a4;
  v43 = a2;
  v39 = a10;
  v40 = a9;
  v33 = a17;
  v34 = a18;
  v35 = a16;
  v36 = a11;
  v46 = a12;
  v47 = a13;
  v31 = a12;
  v48 = a14;
  v49 = a15;
  v50 = a16;
  v51 = a17;
  v52 = a18;
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v32 = sub_23B50D364();
  v19 = *(v32 - 8);
  v20 = MEMORY[0x28223BE20](v32);
  v22 = &v30 - v21;
  (*(v19 + 16))(&v30 - v21, a1, v20);
  v23 = (*(v19 + 80) + 72) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = a12;
  *(v24 + 3) = a13;
  *(v24 + 4) = a14;
  *(v24 + 5) = a15;
  v25 = v34;
  v26 = v35;
  v27 = v32;
  v28 = v33;
  *(v24 + 6) = v35;
  *(v24 + 7) = v28;
  *(v24 + 8) = v25;
  (*(v19 + 32))(&v24[v23], v22, v27);
  WeatherService.fetchWeather<A, B, C, D, E, F, G>(for:including:_:_:_:_:_:_:options:completion:)(v37, v38, v41, v42, v44, v45, v40, v39, v36, sub_23B4D6AB0, v24, v31, a13, a14, a15, v26, v28, v25, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_23B4D027C(uint64_t a1)
{
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v2);
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  *(v1 + 272) = v31;
  *(v1 + 280) = v0;
  *(v1 + 256) = v29;
  *(v1 + 264) = v30;
  *(v1 + 240) = v27;
  *(v1 + 248) = v28;
  *(v1 + 224) = v25;
  *(v1 + 232) = v26;
  *(v1 + 208) = v23;
  *(v1 + 216) = v24;
  *(v1 + 200) = v22;
  *(v1 + 184) = v21;
  *(v1 + 168) = v20;
  *(v1 + 152) = v19;
  *(v1 + 136) = v2;
  *(v1 + 144) = v18;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 16) = v24;
  *(v1 + 24) = v25;
  *(v1 + 32) = v26;
  *(v1 + 40) = v27;
  *(v1 + 48) = v28;
  *(v1 + 56) = v29;
  *(v1 + 64) = v30;
  *(v1 + 72) = v31;
  *(v1 + 80) = v9;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 288) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  *(v1 + 296) = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  *(v1 + 304) = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 312) = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_12_23(v12);

  return sub_23B4C15EC(v14, v15);
}

uint64_t sub_23B4D0468()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4D054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168();
  v15 = *(v14 + 304);
  v16 = *(v14 + 280);
  v17 = *(v14 + 208);
  v18 = swift_task_alloc();
  *(v14 + 320) = v18;
  v19 = OUTLINED_FUNCTION_184_1(v18, *(v14 + 216), *(v14 + 232), *(v14 + 248), *(v14 + 264));
  v19[5].n128_u64[0] = v16;
  *(v19 + 88) = v20;
  *(v19 + 104) = v21;
  *(v19 + 120) = v22;
  *(v19 + 136) = v23;
  v19[9].n128_u64[1] = v17;
  v19[10].n128_u64[0] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 328) = v24;
  *v24 = v25;
  v24[1] = sub_23B4D0664;
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D0664()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D0764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_238_0();
  v27 = v26[37];
  v73 = v26[38];
  v28 = v26[36];
  v71 = v26[34];
  v68 = v26[33];
  v29 = v26[31];
  v65 = v26[32];
  v31 = v26[29];
  v30 = v26[30];
  v32 = v26[28];
  v72 = v26[17];
  v70 = v26[16];
  v33 = v26[12];
  v61 = v26[13];
  v34 = v26[11];
  v35 = *(v28 + 48);
  v36 = *(v28 + 64);
  OUTLINED_FUNCTION_176_1();
  v62 = v37;
  v63 = v38;
  v64 = v39[28];
  v66 = v40;
  v67 = v39[32];
  v69 = v39[36];
  OUTLINED_FUNCTION_25_11();
  (*(v41 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v42 + 32))(v34, v27 + v35, v32);
  OUTLINED_FUNCTION_48();
  (*(v43 + 32))(v33, v27 + v36, v31);
  OUTLINED_FUNCTION_48();
  (*(v44 + 32))(v61, v27 + a10, v30);
  OUTLINED_FUNCTION_48();
  (*(v45 + 32))(v63, v27 + v62, v29);
  OUTLINED_FUNCTION_25_11();
  (*(v46 + 32))(v66, v27 + v47);
  OUTLINED_FUNCTION_25_11();
  (*(v48 + 32))(v70, v27 + v49);
  OUTLINED_FUNCTION_25_11();
  (*(v50 + 32))(v72, v27 + v69);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v73, v51);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_231_1();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, a24, a25, a26);
}

uint64_t sub_23B4D09B8()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 304);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:with:)()
{
  OUTLINED_FUNCTION_71();
  *(v1 + 280) = v27;
  *(v1 + 288) = v0;
  *(v1 + 264) = v25;
  *(v1 + 272) = v26;
  *(v1 + 248) = v23;
  *(v1 + 256) = v24;
  *(v1 + 232) = v21;
  *(v1 + 240) = v22;
  *(v1 + 216) = v19;
  *(v1 + 224) = v20;
  *(v1 + 208) = v18;
  *(v1 + 176) = v16;
  *(v1 + 192) = v17;
  *(v1 + 144) = v14;
  *(v1 + 160) = v15;
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  *(v1 + 80) = v8;
  *(v1 + 88) = v9;
  *(v1 + 16) = v20;
  *(v1 + 24) = v21;
  *(v1 + 32) = v22;
  *(v1 + 40) = v23;
  *(v1 + 48) = v24;
  *(v1 + 56) = v25;
  *(v1 + 64) = v26;
  *(v1 + 72) = v27;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 296) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  *(v1 + 304) = OUTLINED_FUNCTION_13_22();
  v11 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_23B4D0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 288);
  v16 = swift_task_alloc();
  *(v14 + 312) = v16;
  v17 = *(v14 + 240);
  v18 = *(v14 + 256);
  v19 = *(v14 + 272);
  v20 = *(v14 + 144);
  v21 = *(v14 + 160);
  v22 = *(v14 + 176);
  v23 = *(v14 + 192);
  v24 = *(v14 + 208);
  *(v16 + 16) = *(v14 + 224);
  *(v16 + 32) = v17;
  *(v16 + 48) = v18;
  *(v16 + 64) = v19;
  *(v16 + 80) = v15;
  *(v16 + 88) = v20;
  *(v16 + 104) = v21;
  *(v16 + 120) = v22;
  *(v16 + 136) = v23;
  *(v16 + 152) = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 320) = v25;
  *v25 = v26;
  v25[1] = sub_23B4D0C20;
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D0C20()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D0D20()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[29];
  v27 = v0[17];
  v26 = v0[16];
  v6 = v0[12];
  v7 = v0[11];
  v8 = v1[12];
  v9 = v1[16];
  v22 = v1[24];
  v23 = v0[14];
  v24 = v0[15];
  v25 = v1[36];
  OUTLINED_FUNCTION_25_11();
  (*(v10 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v11 + 32))(v7, v2 + v8, v5);
  OUTLINED_FUNCTION_48();
  (*(v12 + 32))(v6, v2 + v9, v4);
  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_194_1();
  v13();
  OUTLINED_FUNCTION_48();
  (*(v14 + 32))(v23, v2 + v22, v3);
  OUTLINED_FUNCTION_25_11();
  (*(v15 + 32))(v24, v2 + v16);
  OUTLINED_FUNCTION_25_11();
  (*(v17 + 32))(v26, v2 + v18);
  OUTLINED_FUNCTION_25_11();
  (*(v19 + 32))(v27, v2 + v25);

  OUTLINED_FUNCTION_45_0();

  return v20();
}

uint64_t sub_23B4D0F6C()
{
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_67_1();

  return v0();
}

void sub_23B4D0FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21();
  v55 = v35;
  v56 = v36;
  v53 = v37;
  v54 = v38;
  v51 = v39;
  v52 = v40;
  v42 = v41;
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v49 = sub_23B50D364();
  OUTLINED_FUNCTION_7_4();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_27_3();
  (*(v44 + 16))(v34, v42);
  v46 = (*(v44 + 80) + 80) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = a25;
  *(v47 + 3) = a26;
  *(v47 + 4) = a27;
  *(v47 + 5) = a28;
  *(v47 + 6) = a29;
  *(v47 + 7) = a30;
  *(v47 + 8) = a31;
  *(v47 + 9) = a32;
  (*(v44 + 32))(&v47[v46], v34, v49);
  WeatherService.fetchWeather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:options:completion:)(v51, v52, v53, v54, v55, v56, a21, a22, a23, a24, a34, v47, a25, a26, a27, a28, a29, a30, a31, a32, v48, a27, v49, a31, a30, a32, a29, a34, a23, a24, v50, v51);

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4D1230()
{
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v0 = sub_23B50D364();
  return OUTLINED_FUNCTION_245_0(v0);
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  *(v1 + 304) = v33;
  *(v1 + 312) = v0;
  *(v1 + 288) = v31;
  *(v1 + 296) = v32;
  *(v1 + 272) = v29;
  *(v1 + 280) = v30;
  *(v1 + 256) = v27;
  *(v1 + 264) = v28;
  *(v1 + 240) = v25;
  *(v1 + 248) = v26;
  *(v1 + 232) = v24;
  *(v1 + 216) = v23;
  *(v1 + 200) = v22;
  *(v1 + 184) = v21;
  *(v1 + 168) = v20;
  *(v1 + 152) = v18;
  *(v1 + 160) = v19;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 104) = v6;
  *(v1 + 112) = v7;
  *(v1 + 88) = v8;
  *(v1 + 96) = v9;
  *(v1 + 16) = v25;
  *(v1 + 24) = v26;
  *(v1 + 32) = v27;
  *(v1 + 40) = v28;
  *(v1 + 48) = v29;
  *(v1 + 56) = v30;
  *(v1 + 64) = v31;
  *(v1 + 72) = v32;
  *(v1 + 80) = v33;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 320) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  *(v1 + 328) = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  *(v1 + 336) = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 344) = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_12_23(v12);

  return sub_23B4C15EC(v14, v15);
}

uint64_t sub_23B4D1408()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4D14EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 336);
  v16 = swift_task_alloc();
  *(v14 + 352) = v16;
  v17 = *(v14 + 256);
  v18 = *(v14 + 272);
  v19 = *(v14 + 288);
  v20 = *(v14 + 304);
  v21 = *(v14 + 160);
  v22 = *(v14 + 176);
  v23 = *(v14 + 192);
  v24 = *(v14 + 208);
  v25 = *(v14 + 224);
  *(v16 + 16) = *(v14 + 240);
  *(v16 + 32) = v17;
  *(v16 + 48) = v18;
  *(v16 + 64) = v19;
  *(v16 + 80) = v20;
  *(v16 + 96) = v21;
  *(v16 + 112) = v22;
  *(v16 + 128) = v23;
  *(v16 + 144) = v24;
  *(v16 + 160) = v25;
  *(v16 + 176) = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 360) = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_218_1(v26);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D15E4()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D16E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_236_1();
  v29 = v28[41];
  v74 = v28[42];
  v30 = v28[40];
  v72 = v28[38];
  v70 = v28[37];
  v67 = v28[36];
  v63 = v28[35];
  v31 = v28[33];
  v32 = v28[34];
  v34 = v28[31];
  v33 = v28[32];
  v73 = v28[19];
  v71 = v28[18];
  v68 = v28[17];
  v62 = v28[14];
  v35 = v28[12];
  v36 = v28[13];
  v37 = v30[12];
  v38 = v30[16];
  v61 = v30[20];
  OUTLINED_FUNCTION_219_1();
  v64 = v40;
  v65 = v39[32];
  v66 = v39[36];
  v69 = v39[40];
  OUTLINED_FUNCTION_25_11();
  (*(v41 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v42 + 32))(v35, v29 + v37, v34);
  OUTLINED_FUNCTION_26_16();
  (*(v43 + 32))(v36, v29 + v38, v33);
  OUTLINED_FUNCTION_48();
  (*(v44 + 32))(v62, v29 + v61, v31);
  OUTLINED_FUNCTION_48();
  (*(v45 + 32))(a12, v29 + a11, v32);
  OUTLINED_FUNCTION_25_11();
  (*(v46 + 32))(v64, v29 + v47);
  OUTLINED_FUNCTION_25_11();
  (*(v48 + 32))();
  OUTLINED_FUNCTION_25_11();
  (*(v49 + 32))();
  OUTLINED_FUNCTION_25_11();
  (*(v50 + 32))();
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v74, v51);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_233_1();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, v61, v62, a11, a12, a13, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, a26, a27, a28);
}

uint64_t sub_23B4D1970()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 336);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:with:)()
{
  OUTLINED_FUNCTION_71();
  *(v1 + 312) = v29;
  *(v1 + 320) = v0;
  *(v1 + 296) = v27;
  *(v1 + 304) = v28;
  *(v1 + 280) = v25;
  *(v1 + 288) = v26;
  *(v1 + 264) = v23;
  *(v1 + 272) = v24;
  *(v1 + 248) = v21;
  *(v1 + 256) = v22;
  *(v1 + 240) = v20;
  *(v1 + 208) = v18;
  *(v1 + 224) = v19;
  *(v1 + 176) = v16;
  *(v1 + 192) = v17;
  *(v1 + 168) = v15;
  *(v1 + 152) = v14;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 104) = v6;
  *(v1 + 112) = v7;
  *(v1 + 88) = v8;
  *(v1 + 96) = v9;
  *(v1 + 16) = v21;
  *(v1 + 24) = v22;
  *(v1 + 32) = v23;
  *(v1 + 40) = v24;
  *(v1 + 48) = v25;
  *(v1 + 56) = v26;
  *(v1 + 64) = v27;
  *(v1 + 72) = v28;
  *(v1 + 80) = v29;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 328) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  *(v1 + 336) = OUTLINED_FUNCTION_13_22();
  v11 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_23B4D1AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 240);
  v16 = swift_task_alloc();
  *(v14 + 344) = v16;
  v17 = OUTLINED_FUNCTION_184_1(v16, *(v14 + 248), *(v14 + 264), *(v14 + 280), *(v14 + 296));
  v17[5] = v18;
  v17[6] = v19;
  v17[7] = v20;
  v17[8] = v21;
  v17[9] = v22;
  v17[10] = v23;
  v17[11].n128_u64[0] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 352) = v24;
  *v24 = v25;
  v24[1] = sub_23B4D1BEC;
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D1BEC()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D1CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_236_1();
  v29 = v28[41];
  v30 = v28[42];
  v74 = v28[39];
  v72 = v28[38];
  v69 = v28[37];
  v65 = v28[36];
  v31 = v28[34];
  v33 = v28[32];
  v32 = v28[33];
  v75 = v28[19];
  v73 = v28[18];
  v70 = v28[17];
  v61 = v28[14];
  v35 = v28[12];
  v34 = v28[13];
  v36 = *(v29 + 48);
  v37 = *(v29 + 64);
  OUTLINED_FUNCTION_176_1();
  v62 = v38;
  v63 = v39;
  v64 = v40[28];
  v66 = v41;
  v67 = v40[32];
  v68 = v40[36];
  v71 = v40[40];
  OUTLINED_FUNCTION_25_11();
  (*(v42 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v43 + 32))(v35, v30 + v36, v33);
  OUTLINED_FUNCTION_48();
  (*(v44 + 32))(v34, v30 + v37, v32);
  OUTLINED_FUNCTION_48();
  (*(v45 + 32))(v61, v30 + a10, v31);
  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_194_1();
  v46();
  OUTLINED_FUNCTION_25_11();
  (*(v47 + 32))(v66, v30 + v48);
  OUTLINED_FUNCTION_25_11();
  (*(v49 + 32))();
  OUTLINED_FUNCTION_25_11();
  (*(v50 + 32))(v73, v30 + v68);
  OUTLINED_FUNCTION_25_11();
  (*(v51 + 32))();

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_233_1();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, a26, a27, a28);
}

uint64_t sub_23B4D1F5C()
{
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_67_1();

  return v0();
}

void sub_23B4D1FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_21();
  v56 = v37;
  v57 = v38;
  v54 = v39;
  v55 = v40;
  v52 = v41;
  v53 = v42;
  v44 = v43;
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v50 = sub_23B50D364();
  OUTLINED_FUNCTION_7_4();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_27_3();
  (*(v46 + 16))(v36, v44);
  v48 = (*(v46 + 80) + 88) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = a26;
  *(v49 + 3) = a27;
  *(v49 + 4) = a28;
  *(v49 + 5) = a29;
  *(v49 + 6) = a30;
  *(v49 + 7) = a31;
  *(v49 + 8) = a32;
  *(v49 + 9) = a33;
  *(v49 + 10) = a34;
  (*(v46 + 32))(&v49[v48], v36, v50);
  WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:options:completion:)(v52, v53, v54, v55, v56, v57, a21, a22, a23, a24, a25, a36, v49, a26, a27, a28, a29, a30, a31, a32, a33, a34, a26, v50, a33, a32, a31, a34, a25, a36, a23, a24, v51, v52);

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4D225C()
{
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v0 = sub_23B50D364();
  return OUTLINED_FUNCTION_245_0(v0);
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  *(v23 + 336) = a22;
  *(v23 + 344) = v22;
  *(v23 + 320) = a20;
  *(v23 + 328) = a21;
  *(v23 + 304) = a18;
  *(v23 + 312) = a19;
  *(v23 + 288) = a16;
  *(v23 + 296) = a17;
  *(v23 + 272) = a14;
  *(v23 + 280) = a15;
  *(v23 + 256) = a11;
  *(v23 + 264) = a13;
  *(v23 + 248) = a10;
  *(v23 + 232) = *&v49;
  *(v23 + 216) = v48;
  *(v23 + 200) = v47;
  *(v23 + 184) = v45;
  *(v23 + 192) = v46;
  *(v23 + 168) = v43;
  *(v23 + 176) = v44;
  *(v23 + 152) = v24;
  *(v23 + 160) = v42;
  *(v23 + 136) = v25;
  *(v23 + 144) = v26;
  *(v23 + 120) = v27;
  *(v23 + 128) = v28;
  *(v23 + 104) = v29;
  *(v23 + 112) = v30;
  *(v23 + 16) = a13;
  *(v23 + 24) = a14;
  *(v23 + 32) = a15;
  *(v23 + 40) = a16;
  *(v23 + 48) = a17;
  *(v23 + 56) = a18;
  *(v23 + 64) = a19;
  *(v23 + 72) = a20;
  *(v23 + 80) = a21;
  *(v23 + 88) = a22;
  *(v23 + 96) = v31;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v23 + 352) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  *(v23 + 360) = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  *(v23 + 368) = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v23 + 376) = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_114_1(v34);
  OUTLINED_FUNCTION_129_0();

  return sub_23B4D2AC4(v36, v37, v38, v39);
}

uint64_t sub_23B4D2464()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4D2548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168();
  v15 = *(v14 + 368);
  v16 = *(v14 + 344);
  v17 = *(v14 + 256);
  v18 = swift_task_alloc();
  *(v14 + 384) = v18;
  v19 = OUTLINED_FUNCTION_184_1(v18, *(v14 + 264), *(v14 + 280), *(v14 + 296), *(v14 + 312));
  v19[5] = v20;
  v19[6].n128_u64[0] = v16;
  *(v19 + 104) = v21;
  *(v19 + 120) = v22;
  *(v19 + 136) = v23;
  *(v19 + 152) = v24;
  *(v19 + 168) = v25;
  v19[11].n128_u64[1] = v17;
  v19[12].n128_u64[0] = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 392) = v26;
  *v26 = v27;
  v26[1] = sub_23B4D2668;
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D2668()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 400) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D2768(uint64_t a1)
{
  v2 = v1[45];
  v3 = v1[44];
  v27 = v1[46];
  v4 = v1[37];
  v5 = v1[35];
  v6 = v1[34];
  v26 = v1[16];
  v7 = v1[14];
  v8 = *(v3 + 48);
  v9 = *(v3 + 64);
  OUTLINED_FUNCTION_176_1();
  v25 = v10;
  v11 = v1[13];
  OUTLINED_FUNCTION_48();
  (*(v12 + 32))();
  OUTLINED_FUNCTION_48();
  (*(v13 + 32))(v11, v2 + v8, v6);
  OUTLINED_FUNCTION_48();
  (*(v14 + 32))(v7, v2 + v9, v5);
  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_194_1();
  v15();
  OUTLINED_FUNCTION_48();
  (*(v16 + 32))(v26, v2 + v25, v4);
  OUTLINED_FUNCTION_25_11();
  (*(v17 + 32))();
  OUTLINED_FUNCTION_25_11();
  (*(v18 + 32))();
  OUTLINED_FUNCTION_25_11();
  (*(v19 + 32))();
  OUTLINED_FUNCTION_25_11();
  (*(v20 + 32))();
  OUTLINED_FUNCTION_25_11();
  (*(v21 + 32))();
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v27, v22);

  OUTLINED_FUNCTION_45_0();

  return v23();
}

uint64_t sub_23B4D2A48()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 368);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4D2AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A0, &qword_23B523818);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4D2B64, 0, 0);
}

uint64_t sub_23B4D2B64()
{
  OUTLINED_FUNCTION_168();
  sub_23B3EB900(v0[3], v0[6], &qword_27E1353A0, &qword_23B523818);
  type metadata accessor for WeatherServiceFetchOptions(0);
  v1 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v2, v3);
  v5 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    v6 = v0[4];
    sub_23B4D7720(v5, &qword_27E1353A0, &qword_23B523818);
    __swift_project_boxed_opaque_existential_1((v6 + 64), *(v6 + 88));
    OUTLINED_FUNCTION_120_1();
    OUTLINED_FUNCTION_71_2();
    v12 = (v7 + *v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v0[7] = v8;
    *v8 = v9;
    v8[1] = sub_23B4D2D2C;
    OUTLINED_FUNCTION_112_1();

    return v12();
  }

  else
  {
    sub_23B4D7504(v5, v0[2]);

    OUTLINED_FUNCTION_67_1();

    return v11();
  }
}

uint64_t sub_23B4D2D2C()
{
  OUTLINED_FUNCTION_71();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23B4D2E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v49 = a7;
  v50 = a8;
  v46 = a5;
  v47 = a6;
  v43 = a4;
  v42 = a3;
  v48 = a2;
  v44 = a10;
  v45 = a9;
  v41 = a11;
  v40 = a12;
  v39 = a13;
  v37 = a23;
  v38 = a22;
  v51 = a17;
  v52 = a16;
  v53 = a15;
  v54 = a14;
  v55 = a14;
  v56 = a15;
  v57 = a16;
  v58 = a17;
  v59 = a18;
  v60 = a19;
  v61 = a20;
  v62 = a21;
  v63 = a22;
  v64 = a23;
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v36 = sub_23B50D364();
  v24 = *(v36 - 8);
  v25 = MEMORY[0x28223BE20](v36);
  v27 = &v35 - v26;
  (*(v24 + 16))(&v35 - v26, a1, v25);
  v28 = (*(v24 + 80) + 96) & ~*(v24 + 80);
  v29 = swift_allocObject();
  v30 = v53;
  *(v29 + 2) = v54;
  *(v29 + 3) = v30;
  v31 = v51;
  *(v29 + 4) = v52;
  *(v29 + 5) = v31;
  *(v29 + 6) = a18;
  *(v29 + 7) = a19;
  *(v29 + 8) = a20;
  *(v29 + 9) = a21;
  v32 = v38;
  v33 = v37;
  *(v29 + 10) = v38;
  *(v29 + 11) = v33;
  (*(v24 + 32))(&v29[v28], v27, v36);
  WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:completion:)(v42, v43, v46, v47, v49, v50, v45, v44, v41, *(&v41 + 1), v40, v39, sub_23B4D6660, v29, v54, v53, v52, v51, a18, a19, a20, a21, v32, v33, v35, v36, v37, v38, v39, v40, v41, *(&v41 + 1), v42, v43, v44, v45);
}

uint64_t sub_23B4D3100(uint64_t a1)
{
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v2);
}

uint64_t WeatherService.instantWeathers(for:spanning:stride:)()
{
  OUTLINED_FUNCTION_188();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 24) = v5;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v7 = OUTLINED_FUNCTION_13_22();
  v8 = *v3;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  *(v1 + 96) = *(v3 + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 64) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_114_1(v9);

  return sub_23B4C15EC(v11, v12);
}

uint64_t sub_23B4D3270()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4D3354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168();
  v15 = *(v14 + 96);
  v17 = *(v14 + 48);
  v16 = *(v14 + 56);
  v18 = *(v14 + 40);
  v19 = OUTLINED_FUNCTION_202_1();
  *(v14 + 72) = v19;
  v20 = *(v14 + 24);
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  *(v19 + 40) = v16;
  *(v19 + 48) = v15;
  *(v19 + 56) = v17;
  v21 = swift_task_alloc();
  *(v14 + 80) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F78, &unk_23B50F2B0);
  OUTLINED_FUNCTION_167_1();
  *v21 = v22;
  v21[1] = sub_23B4D3464;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D3464()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D3564()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[6];
  v2 = v0[2];
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v3);

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_23B4D35DC()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4D3650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v18[1] = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135398, &qword_23B523810);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v18[2] = a5;
  v19 = a6 & 1;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  WeatherService.fetchInstantWeather(for:spanning:stride:with:completion:)();
}

uint64_t sub_23B4D37D4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135398, &qword_23B523810);
    return sub_23B50D344();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135398, &qword_23B523810);
    return sub_23B50D354();
  }
}

uint64_t WeatherService.instantWeather(for:at:)()
{
  OUTLINED_FUNCTION_188();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v1[6] = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[7] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_12_23(v6);

  return sub_23B4C15EC(v8, v9);
}

uint64_t sub_23B4D3910()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4D39F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v16 = *(v14 + 40);
  v15 = *(v14 + 48);
  v17 = swift_task_alloc();
  *(v14 + 64) = v17;
  v18 = *(v14 + 24);
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 40) = v15;
  v19 = swift_task_alloc();
  *(v14 + 72) = v19;
  type metadata accessor for InstantWeather(0);
  OUTLINED_FUNCTION_167_1();
  *v19 = v20;
  v19[1] = sub_23B4D3AE8;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D3AE8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D3BE8()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_45_0();

  return v3();
}

uint64_t sub_23B4D3C50()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4D3CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135390, &qword_23B523808);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  WeatherService.fetchInstantWeather(for:at:with:completion:)();
}

uint64_t sub_23B4D3E2C(uint64_t a1)
{
  v2 = type metadata accessor for InstantWeather(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133948, &qword_23B5194F8);
  MEMORY[0x28223BE20](v5);
  v7 = (v9 - v6);
  sub_23B3EB900(a1, v9 - v6, &qword_27E133948, &qword_23B5194F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135390, &qword_23B523808);
    return sub_23B50D344();
  }

  else
  {
    sub_23B4D7504(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135390, &qword_23B523808);
    return sub_23B50D354();
  }
}

uint64_t WeatherService.weather(for:dataSets:)()
{
  OUTLINED_FUNCTION_188();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v5;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v7 = OUTLINED_FUNCTION_13_22();
  v8 = *v3;
  v1[5] = v7;
  v1[6] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[7] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_114_1(v9);

  return sub_23B4C15EC(v11, v12);
}

uint64_t sub_23B4D4068()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_23B4D414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v16 = *(v14 + 40);
  v15 = *(v14 + 48);
  v17 = swift_task_alloc();
  *(v14 + 64) = v17;
  v17[1] = vextq_s8(*(v14 + 24), *(v14 + 24), 8uLL);
  v17[2].i64[0] = v15;
  v17[2].i64[1] = v16;
  v18 = swift_task_alloc();
  *(v14 + 72) = v18;
  type metadata accessor for WatchWeather(0);
  OUTLINED_FUNCTION_167_1();
  *v18 = v19;
  v18[1] = sub_23B4D4240;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D4240()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D4340()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_45_0();

  return v3();
}

uint64_t sub_23B4D43A8()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4D441C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135388, &qword_23B523800);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v18 = a4;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_23B481CD0(a3, &v18, a5, sub_23B4D6504, v15);
}

uint64_t sub_23B4D458C(uint64_t a1)
{
  v2 = type metadata accessor for WatchWeather(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  MEMORY[0x28223BE20](v5);
  v7 = (v9 - v6);
  sub_23B3EB900(a1, v9 - v6, qword_27E133BE8, &unk_23B51A660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135388, &qword_23B523800);
    return sub_23B50D344();
  }

  else
  {
    sub_23B4D7504(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135388, &qword_23B523800);
    return sub_23B50D354();
  }
}

uint64_t WeatherService.weatherWithoutReverseGeocoding<each A>(for:dataSet:)()
{
  OUTLINED_FUNCTION_168();
  v5 = v4;
  v7 = v6;
  v1[6] = v4;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v6;
  v8 = 8 * v6;
  v1[2] = v9;
  v1[3] = v10;
  if (v6 == 1)
  {
    v2 = OUTLINED_FUNCTION_198_1(v3, 1, (v4 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    OUTLINED_FUNCTION_253_1();
    OUTLINED_FUNCTION_160_0();
    while (v7 != v2)
    {
      v13 = type metadata accessor for WeatherQuery(255, *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8 * v2), v11, v12);
      OUTLINED_FUNCTION_157_1(v13);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_250_1();
  }

  v1[8] = v2;
  OUTLINED_FUNCTION_111_0();
  v1[9] = v14;
  v1[10] = OUTLINED_FUNCTION_13_22();
  if (v7 == 1)
  {
    v8 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_253_1();
    for (i = 0; v7 != i; ++i)
    {
      *(v15 + 8 * i) = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_120_1();
  }

  v1[11] = v8;
  OUTLINED_FUNCTION_151_1();
  v1[12] = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_3(Options);
  v1[13] = OUTLINED_FUNCTION_13_22();
  v18 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_23B4D4890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v15 = *(v14 + 56);
  v16 = *(v14 + 40);
  v17 = *(v14 + 24);
  v18 = v15[11];
  v19 = v15[12];
  __swift_project_boxed_opaque_existential_1(v15 + 8, v18);
  (*(v19 + 16))(v17, v18, v19);
  if (v16)
  {
    OUTLINED_FUNCTION_107_1();
    do
    {
      OUTLINED_FUNCTION_118_0();
      type metadata accessor for WeatherQuery(0, v20, v21, v22);
      OUTLINED_FUNCTION_2();
      v23 = OUTLINED_FUNCTION_206_1();
      v24(v23);
      OUTLINED_FUNCTION_104_1();
    }

    while (!v25);
  }

  v26 = *(v14 + 104);
  v27 = *(v14 + 80);
  v28 = *(v14 + 40);
  v29 = *(v14 + 24);
  v30 = OUTLINED_FUNCTION_202_1();
  *(v14 + 112) = v30;
  v31 = *(v14 + 48);
  *(v30 + 16) = v28;
  *(v30 + 24) = v31;
  *(v30 + 40) = v29;
  *(v30 + 48) = v27;
  *(v30 + 56) = v26;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 120) = v32;
  *v32 = v33;
  v32[1] = sub_23B4D4A2C;
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822008A0](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D4A2C()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_169_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D4B34()
{
  OUTLINED_FUNCTION_188();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_220_1();
    do
    {
      v1 = OUTLINED_FUNCTION_139_1();
      (*(v2 + 32))(v1, v4 + v3);
      OUTLINED_FUNCTION_115_1();
    }

    while (!v5);
  }

  v6 = *(v0 + 104);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v6, v7);

  OUTLINED_FUNCTION_45_0();

  return v8();
}

uint64_t sub_23B4D4C18()
{
  OUTLINED_FUNCTION_188();
  v1 = *(v0 + 104);
  v2 = OUTLINED_FUNCTION_214_1();
  v3(v2);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v4);

  OUTLINED_FUNCTION_67_1();

  return v5();
}

void sub_23B4D4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v93 = v30;
  v94 = v29;
  v91 = v32;
  v92 = v31;
  v90 = v22;
  if (v25 == 1)
  {
    OUTLINED_FUNCTION_249_0();
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_110_1();
    v35 = v33 - v34;
      ;
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  sub_23B50D364();
  OUTLINED_FUNCTION_5();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  v88 = v40;
  v89 = a21;
  v86 = v44;
  v87 = &v80 - v43;
  if (v26 == 1)
  {
    OUTLINED_FUNCTION_198_1(v41, v42, (v24 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    MEMORY[0x28223BE20](v40);
    OUTLINED_FUNCTION_110_1();
    v47 = v24;
    v50 = v48 - v49;
    v51 = 0;
    v52 = v47;
    v21 = v47 & 0xFFFFFFFFFFFFFFFELL;
    while (v26 != v51)
    {
      *(v50 + 8 * v51) = type metadata accessor for WeatherQuery(255, *(v21 + 8 * v51), v45, v46);
      ++v51;
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    v24 = v52;
  }

  v84 = &v80;
  OUTLINED_FUNCTION_5();
  v83 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v82 = &v80;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_110_1();
  v59 = v57 - v58;
  v85 = v56;
  if (v26)
  {
    v60 = 0;
    v61 = (v56 + 32);
    do
    {
      if (v26 == 1)
      {
        v62 = 0;
      }

      else
      {
        v62 = *v61;
      }

      *(v59 + 8 * v60++) = v28 + v62;
      v61 += 4;
    }

    while (v26 != v60);
    MEMORY[0x28223BE20](v56);
    OUTLINED_FUNCTION_110_1();
    v67 = (v65 - v66);
    v68 = 0;
    v81 = v24;
    v69 = v24 & 0xFFFFFFFFFFFFFFFELL;
    v71 = (v70 + 32);
    do
    {
      if (v26 == 1)
      {
        v72 = 0;
      }

      else
      {
        v72 = *v71;
      }

      v73 = v21 + v72;
      v74 = *(v59 + 8 * v68);
      type metadata accessor for WeatherQuery(0, *(v69 + 8 * v68), v63, v64);
      OUTLINED_FUNCTION_2();
      (*(v75 + 16))(v73, v74);
      v67[v68++] = v73;
      v71 += 4;
    }

    while (v26 != v68);
    v24 = v81;
  }

  else
  {
    v67 = &v95;
  }

  v77 = v87;
  v76 = v88;
  (*(v38 + 16))(v87, v90, v88);
  v78 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v79 = swift_allocObject();
  *(v79 + 16) = v26;
  *(v79 + 24) = swift_allocateMetadataPack();
  (*(v38 + 32))(v79 + v78, v77, v76);
  WeatherService.fetchWeather<each A>(for:including:options:completion:)(v92, v67, v93, v89, v79, v26, v24);

  (*(v83 + 8))(v21, v85);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4D50BC()
{
  OUTLINED_FUNCTION_207_0();
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_249_0();
  }

  else
  {
    MEMORY[0x28223BE20](v0);
    OUTLINED_FUNCTION_27();
    v6 = v5 - v4;
    for (i = 0; v2 != i; ++i)
    {
      *(v6 + 8 * i) = *((v3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v8 = sub_23B50D364();
  return OUTLINED_FUNCTION_245_0(v8);
}

Swift::Bool __swiftcall WeatherService.cachedLocation(_:representsRequestedLocation:)(CLLocation _, CLLocation representsRequestedLocation)
{
  internal = _._internal;
  isa = _.super.isa;
  [(objc_class *)_.super.isa coordinate:representsRequestedLocation.super.isa];
  v5 = v4;
  [(objc_class *)isa coordinate];
  v7 = v6;
  [internal coordinate];
  v9 = v8;
  [internal coordinate];
  v10 = vabdd_f64(v5, v9) <= 0.001;
  return vabdd_f64(v7, v11) <= 0.001 && v10;
}

void WeatherService.cachedWeather(for:dataSets:)()
{
  OUTLINED_FUNCTION_21();
  v74 = v1;
  v75 = v0;
  v3 = v2;
  v73 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135380, &qword_23B523780);
  v6 = OUTLINED_FUNCTION_3(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v71 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v72 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_0();
  v15 = v13 - v14;
  v69 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  v23 = v21 - v22;
  v63 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  v28 = (Options - 8);
  MEMORY[0x28223BE20](Options);
  OUTLINED_FUNCTION_27();
  v31 = (v30 - v29);
  v70 = *v3;
  sub_23B50AEE4();
  v32 = sub_23B50AEF4();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v32);
  v33 = type metadata accessor for WeatherNetworkActivity(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  sub_23B3EB900(v26, v23, &qword_27E131F68, &unk_23B50F2A0);
  sub_23B3EB900(v18, v15, &qword_27E1338B0, &unk_23B519390);
  v81 = 1;
  WeatherServiceCaching.Options.cacheReadPolicy.getter(&v76);
  v66 = v76;
  v68 = v79;
  v67 = v78;
  v37 = v28[7];
  v64 = v80;
  v65 = v77;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v32);
  v41 = v31 + v28[8];
  *v41 = 0;
  *(v41 + 4) = 768;
  v42 = v28[11];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v33);
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = v28[16];
  sub_23B4D7720(v18, &qword_27E1338B0, &unk_23B519390);
  sub_23B4D7720(v26, &qword_27E131F68, &unk_23B50F2A0);
  v51 = MEMORY[0x277D84F90];
  *(v31 + v50) = MEMORY[0x277D84F90];
  v52 = v71;
  *v31 = 0;
  v31[1] = 0;
  sub_23B3EB988(v63, v31 + v37, &qword_27E131F68, &unk_23B50F2A0);
  *v41 = 3;
  *(v41 + 4) = 512;
  v53 = 1;
  *(v31 + v28[9]) = 1;
  *(v31 + v28[10]) = v51;
  sub_23B3EB988(v69, v31 + v42, &qword_27E1338B0, &unk_23B519390);
  *(v31 + v28[12]) = 0;
  *(v31 + v28[13]) = 0;
  v54 = v31 + v28[15];
  *v54 = v66;
  v55 = v64;
  *(v54 + 2) = v65;
  v54[30] = v55;
  v56 = v67;
  *(v54 + 14) = v68;
  *(v54 + 6) = v56;
  *(v31 + v28[17]) = 0;
  *&v76 = v70;
  v57 = v72;
  sub_23B484A6C(v73, &v76, v31, v72);
  v58 = v74;
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v31, v59);
  sub_23B4D7774(v57, v52, &qword_27E135380, &qword_23B523780);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  OUTLINED_FUNCTION_55_4();
  if (!v60)
  {
    OUTLINED_FUNCTION_226();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23B4D7720(v52, qword_27E133BE8, &unk_23B51A660);
      v53 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_98_1();
      v53 = 0;
    }
  }

  v61 = type metadata accessor for WatchWeather(0);
  __swift_storeEnumTagSinglePayload(v58, v53, 1, v61);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather(for:dataSets:cacheReadPolicy:)()
{
  OUTLINED_FUNCTION_21();
  v63 = v2;
  v64 = v0;
  v4 = v3;
  v6 = v5;
  v66 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135380, &qword_23B523780);
  v9 = OUTLINED_FUNCTION_3(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v62 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v15);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v19);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v25 = *v6;
  v26 = *v4;
  v27 = v4[1];
  v60 = v4[2];
  v61 = v25;
  v28 = *(v4 + 6) | ((*(v4 + 14) | (*(v4 + 30) << 16)) << 32);
  sub_23B50AEE4();
  v29 = sub_23B50AEF4();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v29);
  v65 = v12;
  v58 = v26;
  v59 = v27;
  if ((v28 & 0xFF00) == 0x200)
  {
    v30 = 8;
  }

  else
  {
    v30 = (v28 >> 7) & 2 | v27 & (v26 == 0) | (v28 >> 14) & 4;
  }

  v31 = type metadata accessor for WeatherNetworkActivity(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  v35 = Options[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v29);
  v39 = v1 + Options[6];
  *v39 = 0;
  *(v39 + 4) = 768;
  v40 = Options[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v31);
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = MEMORY[0x277D84F90];
  *(v1 + Options[14]) = MEMORY[0x277D84F90];
  *v1 = 0;
  v1[1] = 0;
  sub_23B3EB988(v22, v1 + v35, &qword_27E131F68, &unk_23B50F2A0);
  *v39 = 3;
  *(v39 + 4) = 512;
  *(v1 + Options[7]) = v30;
  *(v1 + Options[8]) = v48;
  v49 = 1;
  sub_23B3EB988(v18, v1 + v40, &qword_27E1338B0, &unk_23B519390);
  *(v1 + Options[10]) = 0;
  *(v1 + Options[11]) = 0;
  v50 = v1 + Options[13];
  v51 = v59;
  *v50 = v58;
  *(v50 + 1) = v51;
  *(v50 + 2) = v60;
  v50[30] = BYTE6(v28);
  *(v50 + 14) = WORD2(v28);
  *(v50 + 6) = v28;
  *(v1 + Options[15]) = 0;
  v52 = v62;
  v67 = v61;
  sub_23B484A6C(v63, &v67, v1, v62);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v53);
  v54 = v65;
  sub_23B4D7774(v52, v65, &qword_27E135380, &qword_23B523780);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  OUTLINED_FUNCTION_55_4();
  v55 = v66;
  if (!v56)
  {
    OUTLINED_FUNCTION_226();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23B4D7720(v54, qword_27E133BE8, &unk_23B51A660);
    }

    else
    {
      OUTLINED_FUNCTION_98_1();
      v49 = 0;
    }
  }

  v57 = type metadata accessor for WatchWeather(0);
  __swift_storeEnumTagSinglePayload(v55, v49, 1, v57);
  OUTLINED_FUNCTION_20();
}

void *WeatherService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  OUTLINED_FUNCTION_6_25();
  sub_23B393E24(v0 + v1, v2);

  return v0;
}

uint64_t WeatherService.__deallocating_deinit()
{
  WeatherService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_23B4D5BB4()
{
  result = qword_27E135378;
  if (!qword_27E135378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135378);
  }

  return result;
}

void *sub_23B4D5C08(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a5;
  v22 = a6;
  v15 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a7, a9);
  v19 = sub_23B398F80(a1, a2, a3, a4, v21, v22, v17, v18, a9, a10);
  (*(v15 + 8))(a7, a9);
  return v19;
}

void *sub_23B4D5D50(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a5;
  v46 = a4;
  v47 = a2;
  v44 = a1;
  v43 = a11;
  v15 = type metadata accessor for WDSEndpoint(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a10 - 8);
  MEMORY[0x28223BE20](v19);
  v42 = &v38[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v38[-v23];
  (*(v18 + 32))(&v38[-v23], a6, a10, v22);
  v41 = *a3;
  v40 = a3[1];
  v39 = a3[2];
  if (qword_280B45430 != -1)
  {
    swift_once();
  }

  v51[0] = xmmword_280B4EA08;
  v51[1] = *&word_280B4EA18;
  v51[2] = unk_280B4EA28;
  v51[3] = *&qword_280B4EA38;
  type metadata accessor for StaticServiceConfigurationProvider();
  v25 = swift_allocObject();
  v26 = *&word_280B4EA18;
  *(v25 + 16) = xmmword_280B4EA08;
  *(v25 + 32) = v26;
  v27 = *&qword_280B4EA38;
  *(v25 + 48) = unk_280B4EA28;
  *(v25 + 64) = v27;
  *(v25 + 80) = a7;
  *(v25 + 88) = a8;
  v28 = v47;
  sub_23B3943E8(v47, v17);
  v29 = v46;
  sub_23B3923E8(v46, v50);
  v30 = v17;
  v31 = v45;
  sub_23B3923E8(v45, v49);
  v32 = swift_allocObject();
  v33 = v42;
  (*(v18 + 16))(v42, v24, a10);
  sub_23B3918CC(v51, v48);
  if (v39)
  {
    v34 = 0x10000;
  }

  else
  {
    v34 = 0;
  }

  if (v40)
  {
    v35 = 256;
  }

  else
  {
    v35 = 0;
  }

  v36 = sub_23B4D77BC(v44, v30, v35 | v41 | v34, v50, v49, v33, v25, v32, a10, v43);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_23B393E24(v28, type metadata accessor for WDSEndpoint);
  (*(v18 + 8))(v24, a10);
  return v36;
}

uint64_t sub_23B4D6554(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v6);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, v8);
}

uint64_t sub_23B4D65D8(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135398, &qword_23B523810);
  OUTLINED_FUNCTION_3(v4);

  return sub_23B4D37D4(a1, a2 & 1);
}

uint64_t sub_23B4D6660(uint64_t a1)
{
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v1 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v1);
  return sub_23B4D3100(a1);
}

uint64_t objectdestroy_103Tm()
{
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 88) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B4D6818()
{
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v0 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v0);
  return sub_23B4D225C();
}

uint64_t objectdestroy_109Tm()
{
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B4D69C4()
{
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v0 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_54_3();
  return sub_23B4D1230();
}

uint64_t sub_23B4D6AB0()
{
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v0 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_54_3();
  return sub_23B4D027C(v1);
}

void sub_23B4D6C48()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_130_1();
    v10 = OUTLINED_FUNCTION_44_5(v9);
    v4(v10);
    swift_checkMetadataState();
  }

  else
  {
    v17[4] = v1;
    v17[5] = v2;
    v17[0] = v17;
    v17[1] = v8;
    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_27();
    v13 = v12 - v11;
    v14 = 0;
    v17[2] = v7;
    v17[3] = v6;
    while (v5 != v14)
    {
      v15 = OUTLINED_FUNCTION_44_5(*((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * v14));
      *(v13 + 8 * v14++) = (v4)(v15);
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v16 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v16);
  sub_23B4CF880();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4D6E7C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_249_0();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    v5 = v4 - v3;
      ;
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v7 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_36_10();
  return sub_23B4D50BC();
}

uint64_t sub_23B4D6F80()
{
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v0 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v0);
  v1 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C7544(v1);
}

uint64_t sub_23B4D705C()
{
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v0 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v0);
  v1 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C6C3C(v1);
}

uint64_t sub_23B4D7138()
{
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_96_1();
  v0 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v0);
  v1 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C63C8(v1);
}

uint64_t sub_23B4D7200()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_226_1();
  swift_getTupleTypeMetadata3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_84_0();
  v2 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v2);
  v3 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C5BBC(v3, v4, v5, v6, v1);
}

uint64_t sub_23B4D72B4()
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v0 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v0);
  v1 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C5410(v1, v2, v3, v4);
}

uint64_t sub_23B4D7360(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v2 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v2);

  return sub_23B4C4A90(a1);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    OUTLINED_FUNCTION_249_0();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    v5 = v4 - v3;
      ;
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v7 + 8))(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B4D7504(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return a2;
}

uint64_t objectdestroy_90Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_40_7();

  return swift_deallocObject();
}

uint64_t sub_23B4D75F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_23B50AD24();
  OUTLINED_FUNCTION_28_0(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  OUTLINED_FUNCTION_28_0(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v9 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v16 = v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_23B4BDD28(a1, a2, v2 + v7, *(v2 + v9), v2 + v15, *v16, *(v16 + 8));
}

uint64_t sub_23B4D7720(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B4D7774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return v4;
}

void *sub_23B4D77BC(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v79 = a5;
  v77 = a4;
  v60 = a3;
  v15 = sub_23B50AB34();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_23B50BE34();
  v65 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v72 = &v58 - v20;
  v75 = sub_23B50B774();
  v64 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v62 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v69 = &v58 - v23;
  v73 = sub_23B50B7C4();
  v63 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v67 = &v58 - v26;
  v70 = sub_23B50B614();
  v61 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v58 - v29;
  v89[3] = a9;
  v89[4] = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v89);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a6, a9);
  v88[3] = type metadata accessor for StaticServiceConfigurationProvider();
  v88[4] = &off_284E0EE38;
  v88[0] = a7;
  v32 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  type metadata accessor for WeatherModelFactory();
  swift_allocObject();
  *(a8 + v32) = sub_23B39523C();
  v33 = OBJC_IVAR____TtC10WeatherKit14WeatherService_shouldShowSimulatedAlert;
  type metadata accessor for Automation();
  *(a8 + v33) = static Automation.shouldShowSimulatedAlert.getter() & 1;
  a8[7] = a1;
  sub_23B393B54(v89, (a8 + 8));
  v78 = a2;
  sub_23B3943E8(a2, a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_endpoint);
  sub_23B50AFE4();
  v71 = a1;

  sub_23B50AFD4();
  sub_23B50AF04();
  sub_23B50AFC4();

  if (v85 == 1)
  {
    v34 = sub_23B50B644();
    swift_allocObject();
    v35 = sub_23B50B634();
    v36 = MEMORY[0x277D7ABF0];
    a8[5] = v34;
    a8[6] = v36;
    a8[2] = v35;
    v37 = v77;
  }

  else
  {
    v38 = v60;
    v39 = v30;
    v59 = v30;
    sub_23B39530C(v60 & 0x10101, v30);
    v40 = v17;
    v41 = v67;
    sub_23B395450(v38 & 1, v67);
    v42 = v69;
    sub_23B39551C(v38 & 0x101, v69);
    v43 = v78;
    WDSEndpoint.url.getter(v40);
    v44 = (v43 + *(type metadata accessor for WDSEndpoint(0) + 20));
    sub_23B3943D8(*v44, v44[1]);
    v45 = v72;
    sub_23B50BE24();
    v46 = v65;
    (*(v65 + 16))(v74, v45, v76);
    v47 = v61;
    (*(v61 + 16))(v66, v39, v70);
    v48 = v63;
    (*(v63 + 16))(v68, v41, v73);
    v49 = v64;
    (*(v64 + 16))(v62, v42, v75);
    v37 = v77;
    sub_23B3923E8(v77, v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C8, &qword_23B523840);
    swift_dynamicCast();
    sub_23B3923E8(v79, &v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353D0, &qword_23B523848);
    swift_dynamicCast();
    sub_23B393B54(v88, &v80);
    v50 = type metadata accessor for WeatherServiceClientSettingsProvider();
    v51 = swift_allocObject();
    sub_23B399858(&v80, v51 + 16);
    v81 = v50;
    v82 = sub_23B391884(qword_280B45810, type metadata accessor for WeatherServiceClientSettingsProvider, &unk_23B5103D8);
    *&v80 = v51;
    v52 = sub_23B50B764();
    v53 = objc_allocWithZone(v52);
    v54 = sub_23B50B754();
    v86 = v52;
    v87 = MEMORY[0x277D7AC40];
    *&v85 = v54;
    (*(v46 + 8))(v72, v76);
    (*(v49 + 8))(v69, v75);
    (*(v48 + 8))(v67, v73);
    (*(v47 + 8))(v59, v70);
    sub_23B399858(&v85, (a8 + 2));
  }

  v55 = v79;
  sub_23B393B54((a8 + 2), &v85);
  type metadata accessor for WeatherAQIScaleService();
  v56 = swift_allocObject();
  *(v56 + 16) = v71;
  sub_23B399858(&v85, v56 + 24);
  *(a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService) = v56;

  sub_23B395624();

  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_23B393E24(v78, type metadata accessor for WDSEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v88);
  return a8;
}

void objectdestroy_122Tm()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *(v0 + 16);
  if (v4 == 1)
  {
    v5 = OUTLINED_FUNCTION_44_5(*(*(v0 + 24) & 0xFFFFFFFFFFFFFFFELL));
    v3(v5);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27_3();
    v6 = 0;
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    while (v4 != v6)
    {
      v9 = OUTLINED_FUNCTION_44_5(*(v8 + 8 * v6));
      *(v1 + 8 * v6++) = (v3)(v9);
    }

    OUTLINED_FUNCTION_177_1();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D364();
  OUTLINED_FUNCTION_10();
  (*(v10 + 8))(v0 + ((*(v10 + 80) + 56) & ~*(v10 + 80)));
  OUTLINED_FUNCTION_40_7();
  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

uint64_t OUTLINED_FUNCTION_75_1()
{
  v4[18] = v0;
  v4[19] = v1;
  v4[20] = v2;
  v4[21] = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  v4 = v1 + *(v2 + 44);

  return __swift_getEnumTagSinglePayload(v4, 1, v0);
}

uint64_t OUTLINED_FUNCTION_81_2@<X0>(uint64_t a1@<X8>)
{

  return __swift_getEnumTagSinglePayload(v2 + a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_88_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v10[2];
  v11 = v10[3];
  *(v9 + 280) = v10[4];
  *(v9 + 288) = v8;
  *(v9 + 264) = v12;
  *(v9 + 272) = v11;
  *(v9 + 248) = a7;
  *(v9 + 256) = a8;
  *(v9 + 232) = a4;
  *(v9 + 240) = a6;
  *(v9 + 360) = a5;
  *(v9 + 216) = a2;
  *(v9 + 224) = a3;
  *(v9 + 208) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_143_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_145_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_164_1()
{
}

uint64_t OUTLINED_FUNCTION_196_1()
{
}

uint64_t OUTLINED_FUNCTION_199_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_201_0()
{

  return sub_23B50D364();
}

uint64_t OUTLINED_FUNCTION_202_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_241_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_245_0(uint64_t a1)
{

  return sub_23B4C4AF8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_246_1(uint64_t a1)
{
  *(v1 + 296) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_247_1(uint64_t a1)
{
  *(v1 + 288) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_249_0()
{

  return swift_checkMetadataState();
}

uint64_t WeatherServicePeriodicRelativeRange.init(periodStart:periodEnd:periodLengths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23B50AD24();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for WeatherServicePeriodicRelativeRange(0);
  result = (v9)(a4 + *(v10 + 20), a2, v8);
  *(a4 + *(v10 + 24)) = a3;
  return result;
}

uint64_t Array<A>.dayWeather(for:timeZone:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_23B50AE84();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v11 = v10 - v9;
  sub_23B50ADF4();
  sub_23B4949A0(sub_23B4D8974, a2, a3);
  return (*(v7 + 8))(v11, v5);
}

uint64_t Array<A>.humidity(for:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = type metadata accessor for DayPartForecast(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  v9 = sub_23B50AE84();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133828, &qword_23B518D00);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - v17;
  v19 = type metadata accessor for DayWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v23 = v22 - v21;
  sub_23B50ADF4();
  v28 = v15;
  v29 = a1;
  sub_23B4949A0(sub_23B4D8AD0, a3, v18);
  (*(v11 + 8))(v15, v9);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_23B4D89AC(v18);
    return 0;
  }

  else
  {
    sub_23B48945C(v18, v23);
    sub_23B4D8A14(v23 + *(v19 + 132), v8);
    sub_23B4D8A78(v23, type metadata accessor for DayWeather);
    v24 = *(v8 + *(v27 + 100));
    sub_23B4D8A78(v8, type metadata accessor for DayPartForecast);
  }

  return v24;
}

uint64_t sub_23B4D89AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133828, &qword_23B518D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4D8A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPartForecast(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4D8A78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

double static TideEvents.mock()@<D0>(uint64_t a1@<X8>)
{
  sub_23B50B9D4();
  sub_23B50B994();
  if (qword_27E131C30 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1353D8;
  v3 = qword_27E131C38;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1353E0;
  v5 = type metadata accessor for TideEvents(0);
  v6 = v5[8];

  static WeatherMetadata.mock()((a1 + v6));
  *(a1 + v5[5]) = v2;
  *(a1 + v5[6]) = v4;
  result = 36.55;
  *(a1 + v5[7]) = xmmword_23B523880;
  return result;
}

uint64_t sub_23B4D8BE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v45 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v34 - v1;
  v44 = sub_23B50AD24();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132A78, &qword_23B514118);
  v6 = (type metadata accessor for TideEvent(0) - 8);
  v7 = *v6;
  v39 = *(*v6 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v40 = v9;
  *(v9 + 16) = xmmword_23B523890;
  v10 = v9 + v8;
  v11 = v5;
  sub_23B50AB94();
  v42 = objc_opt_self();
  v12 = [v42 feet];
  v41 = sub_23B3E3A54();
  sub_23B50A9B4();
  v37 = *(v3 + 32);
  v38 = v3 + 32;
  v13 = v44;
  v37(v10, v5, v44);
  *(v10 + v6[7]) = 0;
  v14 = v6[8];
  v15 = *(v45 + 32);
  v35 = v0;
  v36 = v15;
  v45 += 32;
  v43 = v10;
  v15(v10 + v14, v2, v0);
  v16 = v39;
  v17 = v10 + v39;
  v18 = v11;
  sub_23B50AB94();
  v19 = v42;
  v20 = [v42 feet];
  v34 = v2;
  sub_23B50A9B4();
  v21 = v13;
  v22 = v37;
  v37(v17, v18, v21);
  *(v17 + v6[7]) = 1;
  v23 = v0;
  v24 = v36;
  v36(v17 + v6[8], v2, v23);
  v25 = v43 + 2 * v16;
  sub_23B50AB94();
  v26 = [v19 feet];
  v27 = v34;
  sub_23B50A9B4();
  v28 = v44;
  v22(v25, v18, v44);
  *(v25 + v6[7]) = 0;
  v29 = v25 + v6[8];
  v30 = v35;
  v24(v29, v27, v35);
  v31 = v43 + 3 * v16;
  sub_23B50AB94();
  v32 = [v42 feet];
  sub_23B50A9B4();
  v22(v31, v18, v28);
  *(v31 + v6[7]) = 1;
  result = (v24)(v31 + v6[8], v27, v30);
  qword_27E1353D8 = v40;
  return result;
}

uint64_t sub_23B4D9010()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v35 - v2;
  v48 = sub_23B50AD24();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132A70, &qword_23B514110);
  v7 = type metadata accessor for HourTide(0);
  v8 = *(v7 - 8);
  v43 = *(v8 + 72);
  v9 = v7 - 8;
  v41 = v7 - 8;
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v44 = v11;
  *(v11 + 16) = xmmword_23B523890;
  v12 = v11 + v10;
  sub_23B50AB94();
  v13 = objc_opt_self();
  v14 = [v13 feet];
  v46 = sub_23B3E3A54();
  sub_23B50A9B4();
  v42 = *(v4 + 32);
  v45 = v4 + 32;
  v47 = v12;
  v15 = v48;
  v42(v12, v6, v48);
  v16 = *(v9 + 28);
  v38 = *(v1 + 32);
  v39 = v1 + 32;
  v36 = v3;
  v37 = v0;
  v38(v12 + v16, v3, v0);
  v17 = v43;
  v18 = v12 + v43;
  v19 = v6;
  sub_23B50AB94();
  v40 = v13;
  v20 = [v13 feet];
  sub_23B50A9B4();
  v21 = v15;
  v22 = v42;
  v42(v12 + v17, v6, v21);
  v23 = v41;
  v24 = v0;
  v25 = v38;
  v38(v18 + *(v41 + 28), v3, v24);
  v26 = v47 + 2 * v17;
  sub_23B50AB94();
  v27 = [v13 feet];
  v28 = v36;
  sub_23B50A9B4();
  v29 = v48;
  v22(v26, v19, v48);
  v30 = v26 + *(v23 + 28);
  v31 = v37;
  v25(v30, v28, v37);
  v32 = v47 + 3 * v17;
  sub_23B50AB94();
  v33 = [v40 feet];
  sub_23B50A9B4();
  v22(v32, v19, v29);
  result = (v25)(v32 + *(v23 + 28), v28, v31);
  qword_27E1353E0 = v44;
  return result;
}

uint64_t LocationInfo.init(date:expiration:primaryName:secondaryName:preciseName:countryCode:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = type metadata accessor for LocationInfo(0);
  v17 = (a9 + v16[7]);
  v18 = (a9 + v16[8]);
  v19 = (a9 + v16[9]);
  v20 = sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v22 = *(v21 + 32);
  v22(a9, a1, v20);
  result = (v22)(a9 + v16[5], a2, v20);
  v24 = (a9 + v16[6]);
  *v24 = a3;
  v24[1] = a4;
  *v17 = a5;
  v17[1] = a6;
  *v18 = a7;
  v18[1] = a8;
  *v19 = a10;
  v19[1] = a11;
  v25 = (a9 + v16[10]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t LocationInfo.date.getter()
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_65();

  return v1(v0);
}

uint64_t LocationInfo.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t LocationInfo.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationInfo(0) + 20);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LocationInfo.expiration.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for LocationInfo(v2) + 20);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t LocationInfo.expiration.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for LocationInfo(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.primaryName.getter()
{
  type metadata accessor for LocationInfo(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.primaryName.setter()
{
  OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.primaryName.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for LocationInfo(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.secondaryName.getter()
{
  type metadata accessor for LocationInfo(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.secondaryName.setter()
{
  OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.secondaryName.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for LocationInfo(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.preciseName.getter()
{
  type metadata accessor for LocationInfo(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.preciseName.setter()
{
  OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.preciseName.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for LocationInfo(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.countryCode.getter()
{
  type metadata accessor for LocationInfo(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.countryCode.setter()
{
  OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.countryCode.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for LocationInfo(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.timeZone.getter()
{
  type metadata accessor for LocationInfo(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.timeZone.setter()
{
  OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.timeZone.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for LocationInfo(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B4D9A7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E7972616D697270 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E6F636573 && a2 == 0xED0000656D614E79;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4E65736963657270 && a2 == 0xEB00000000656D61;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_23B50D834();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B4D9CC4(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0x4E7972616D697270;
      break;
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 4:
      result = 0x4E65736963657270;
      break;
    case 5:
      result = 0x437972746E756F63;
      break;
    case 6:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}