unint64_t sub_220812458()
{
  result = qword_27CF5A218;
  if (!qword_27CF5A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A218);
  }

  return result;
}

double sub_2208124BC@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = sub_2208854FC();
  v6 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v7);
  v90 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[3];
  v11 = *(a2 + 5);
  sub_220891A6C();
  v13 = v9 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v72 = v9 - v12;
    v73 = v10;
    v74 = v11;
    v75 = a2;
    v76 = a3;
    *&v92 = MEMORY[0x277D84F90];
    sub_22070BDA4(0, v14, 0);
    v84 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
    v15 = v92;
    v83 = *MEMORY[0x277D740A8];
    v82 = *MEMORY[0x277D76968];
    v81 = *MEMORY[0x277D740C0];
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v80 = v17;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v79 = *(v16 + 56);
    v78 = (v16 - 8);
    v77 = xmmword_220899920;
    v85 = v16;
    v19 = v81;
    do
    {
      v88 = v14;
      v89 = v15;
      v80(v90, v18, v91);
      v87 = ChartRange.label.getter();
      v20 = *__swift_project_boxed_opaque_existential_1((v86 + 16), *(v86 + 40));
      sub_2204A5DF0(0);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      v22 = v83;
      *(inited + 32) = v83;
      v23 = v22;
      v24 = v84;
      *(inited + 40) = sub_220891F3C();
      *(inited + 64) = v24;
      *(inited + 72) = v19;
      v26 = v20[5];
      v25 = v20[6];
      __swift_project_boxed_opaque_existential_1(v20 + 2, v26);
      v27 = *(v25 + 16);
      v28 = *(v27 + 40);
      v29 = v19;
      v30 = v28(v26, v27);
      *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
      *(inited + 80) = v30;
      sub_2204A5EAC(inited);
      swift_setDeallocating();
      sub_2204A5D84(0);
      swift_arrayDestroy();
      v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v32 = sub_22089132C();

      type metadata accessor for Key(0);
      sub_2204A63B8();
      v33 = sub_22089125C();

      v34 = [v31 initWithString:v32 attributes:v33];

      sub_220891D7C();
      v36 = v35;
      v38 = v37;
      sub_220891A6C();
      v40 = v36 + v39;
      if (v40 > 36.0)
      {
        v41 = v40;
      }

      else
      {
        v41 = 36.0;
      }

      sub_220891A7C();
      v43 = v42;

      v15 = v89;
      (*v78)(v90, v91);
      if (v38 + v43 > 32.0)
      {
        v44 = v38 + v43;
      }

      else
      {
        v44 = 32.0;
      }

      *&v92 = v15;
      v46 = *(v15 + 16);
      v45 = *(v15 + 24);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        sub_22070BDA4((v45 > 1), v46 + 1, 1);
        v15 = v92;
      }

      *(v15 + 16) = v47;
      v48 = v15 + 16 * v46;
      *(v48 + 32) = v41;
      *(v48 + 40) = v44;
      v18 += v79;
      v14 = v88 - 1;
    }

    while (v88 != 1);
    v10 = v73;
    v13 = v72;
    if (v47 <= 1)
    {
LABEL_13:
      v49 = 0;
      v50 = 0.0;
      a3 = v76;
      a2 = v75;
LABEL_19:
      v55 = v47 - v49;
      v56 = 16 * v49 + 32;
      do
      {
        v50 = v50 + *(v15 + v56);
        v56 += 16;
        --v55;
      }

      while (v55);
      goto LABEL_21;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    v47 = *(MEMORY[0x277D84F90] + 16);
    if (!v47)
    {
      v50 = 0.0;
      goto LABEL_21;
    }

    v75 = a2;
    v76 = a3;
    if (v47 <= 1)
    {
      goto LABEL_13;
    }
  }

  v49 = v47 & 0xFFFFFFFFFFFFFFFELL;
  v51 = (v15 + 48);
  v50 = 0.0;
  v52 = v47 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v53 = *(v51 - 2);
    v54 = *v51;
    v51 += 4;
    v50 = v50 + v53 + v54;
    v52 -= 2;
  }

  while (v52);
  a3 = v76;
  a2 = v75;
  if (v47 != v49)
  {
    goto LABEL_19;
  }

LABEL_21:
  v57 = 15.0;
  v58 = (v47 + -1.0) * 15.0 + v50;
  if (v58 < v13)
  {
    v57 = (v13 - v58) / (v47 - 1) + 15.0;
  }

  sub_220812E40(v15, v86, v9);
  v60 = v59;
  v61 = sub_220812ED0(v15, v10, v59, v57);

  v64 = *(v61 + 16);
  if (v64)
  {
    v65 = v61 + 56;
    v66 = 0.0;
    do
    {
      MaxX = CGRectGetMaxX(*(v65 - 24));
      if (v66 <= MaxX)
      {
        v66 = MaxX;
      }

      v65 += 32;
      --v64;
    }

    while (v64);
  }

  else
  {
    v60 = 0.0;
  }

  *(&v71 - 4) = MEMORY[0x28223BE20](v62, v63).n128_u64[0];
  *(&v71 - 3) = v60;
  *(&v71 - 2) = a2;
  *(&v71 - 1) = v61;
  sub_22088C18C();

  v68 = v94;
  result = *&v92;
  v70 = v93;
  *a3 = v92;
  *(a3 + 16) = v70;
  *(a3 + 32) = v68;
  return result;
}

void sub_220812BD0(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = sub_22088ABEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_22088ABCC();
  v17 = v16;
  v19 = v18;
  v20 = *(a3 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v39 = a4;
    v43 = MEMORY[0x277D84F90];
    sub_22070BD84(0, v20, 0);
    v21 = v43;
    v41 = *MEMORY[0x277D6D320];
    v23 = *(v12 + 104);
    v22 = v12 + 104;
    v40 = v23;
    v24 = (v22 - 96);
    v25 = a3 + 56;
    do
    {
      v26 = v22;
      v40(v15, v41, v11);
      sub_22088ABDC();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      (*v24)(v15, v11);
      v43 = v21;
      v36 = *(v21 + 16);
      v35 = *(v21 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22070BD84((v35 > 1), v36 + 1, 1);
        v21 = v43;
      }

      *(v21 + 16) = v36 + 1;
      v37 = (v21 + 32 * v36);
      v37[4] = v28;
      v37[5] = v30;
      v37[6] = v32;
      v37[7] = v34;
      v25 += 32;
      --v20;
      v22 = v26;
    }

    while (v20);
    a4 = v39;
  }

  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  *(a4 + 32) = v21;
}

void sub_220812E40(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    v7 = 0.0;
    do
    {
      v8 = *v6;
      v6 += 2;
      v9 = v8;
      if (v7 <= v8)
      {
        v7 = v9;
      }

      --v5;
    }

    while (v5);
  }

  sub_220891A7C();
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  sub_22072B8D8(a3);
}

uint64_t sub_220812ED0(uint64_t a1, CGFloat a2, double a3, double a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v20 = MEMORY[0x277D84F90];
    sub_22070BD84(0, v4, 0);
    v5 = v20;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = (a3 - *v10) * 0.5;
      v21.origin.x = a2;
      v21.origin.y = v13;
      v21.size.width = v11;
      v21.size.height = *v10;
      MaxX = CGRectGetMaxX(v21);
      v16 = *(v20 + 16);
      v15 = *(v20 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = MaxX;
        sub_22070BD84((v15 > 1), v16 + 1, 1);
        MaxX = v18;
      }

      *(v20 + 16) = v16 + 1;
      v17 = (v20 + 32 * v16);
      v17[4] = a2;
      v17[5] = v13;
      v17[6] = v11;
      v17[7] = v12;
      v10 += 2;
      a2 = MaxX + a4;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_220812FFC()
{
  v1 = [*(v0 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_22056D130(&v12);
    goto LABEL_9;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v9;
  v3 = [v9 integerValue];
  if (v3 == -1)
  {

    goto LABEL_21;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_22056D130(&v12);
LABEL_18:

    if ((v4 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
    v7 = sub_22088613C();
    return v7 & 1;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  if ((v6 ^ v4))
  {
    goto LABEL_21;
  }

LABEL_19:
  v7 = 0;
  return v7 & 1;
}

void *sub_2208131DC(uint64_t a1, __int128 *a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_220884CAC();
  v9 = v8;

  v2[8] = v7;
  v2[9] = v9;
  v2[2] = a1;
  sub_220458198(a2, (v2 + 3));
  return v2;
}

uint64_t sub_2208132B8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

id sub_220813300()
{
  result = sub_220813384(0x64204D4D4D4DLL, 0xE600000000000000);
  qword_28128FEA0 = result;
  return result;
}

id sub_220813354()
{
  result = sub_220813384(0x64204D4D4DLL, 0xE500000000000000);
  qword_27CF5A228 = result;
  return result;
}

id sub_220813384(uint64_t a1, uint64_t a2)
{
  v2 = sub_2208852DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088528C();
  sub_2208851EC();
  (*(v3 + 8))(v6, v2);
  v7 = sub_22089132C();
  v8 = sub_22089132C();

  v9 = [objc_opt_self() dateFormatterWithFormat:v7 localeIdentifier:v8 forReuse:1];

  if (v9)
  {
    v10 = v9;
    v11 = sub_22089132C();
    [v10 setLocalizedDateFormatFromTemplate_];
  }

  return v9;
}

id sub_220813528(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = *a2;
  v4 = *a2;
  return v3;
}

id sub_2208135A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22046F80C(0);
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220453B1C(0);
    result = sub_2208884CC();
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for ExtendedLaunchToForYouTestCase();
      v6 = objc_allocWithZone(v5);
      v7 = &v6[OBJC_IVAR____TtC8StocksUI30ExtendedLaunchToForYouTestCase_testName];
      *v7 = 0xD000000000000016;
      *(v7 + 1) = 0x80000002208D8520;
      *&v6[OBJC_IVAR____TtC8StocksUI30ExtendedLaunchToForYouTestCase_timeoutInSeconds] = 0x403E000000000000;
      *&v6[OBJC_IVAR____TtC8StocksUI30ExtendedLaunchToForYouTestCase_aggregate] = 1;
      *&v6[OBJC_IVAR____TtC8StocksUI30ExtendedLaunchToForYouTestCase_stockListPrewarmState] = v3;
      *&v6[OBJC_IVAR____TtC8StocksUI30ExtendedLaunchToForYouTestCase_forYouPrewarmState] = v4;
      v8.receiver = v6;
      v8.super_class = v5;
      return objc_msgSendSuper2(&v8, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220813740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  sub_220584B74(0);
  v7 = swift_allocObject();
  a5(v7, v8);
  return sub_22088B66C();
}

uint64_t sub_2208137AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  updated = type metadata accessor for StockSearchResultsUpdateModifier(0);
  MEMORY[0x28223BE20](updated, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v23 - v16;
  v19 = *(v18 + 24);
  v20 = sub_220886A4C();
  (*(*(v20 - 8) + 16))(&v17[v19], a4, v20);
  *v17 = 0xD000000000000013;
  *(v17 + 1) = 0x80000002208D8580;
  *(v17 + 2) = a1;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  *&v17[*(updated + 28)] = a5;
  sub_220813CB0(v17, v13);
  sub_220584B74(0);
  swift_allocObject();
  sub_220813D14(&qword_281283E18, type metadata accessor for StockSearchResultsUpdateModifier, &unk_22089D32C);

  v21 = sub_22088B66C();
  sub_220813D5C(v17);
  return v21;
}

uint64_t sub_220813978(uint64_t a1)
{
  sub_22046DA2C(*v1 + 56, &v7);
  v6[0] = 0x6974634177656956;
  v6[1] = 0xEA00000000006E6FLL;
  v6[2] = a1;
  sub_220813BAC(v6, &v5);
  sub_220584B74(0);
  swift_allocObject();
  sub_220813C08();

  v3 = sub_22088B66C();
  sub_220813C5C(v6);
  return v3;
}

uint64_t sub_220813A34(uint64_t a1)
{
  sub_220584B74(0);
  swift_allocObject();
  sub_220813B58();

  return sub_22088B66C();
}

unint64_t sub_220813B58()
{
  result = qword_281299880;
  if (!qword_281299880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299880);
  }

  return result;
}

unint64_t sub_220813C08()
{
  result = qword_27CF5A238;
  if (!qword_27CF5A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A238);
  }

  return result;
}

uint64_t sub_220813CB0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for StockSearchResultsUpdateModifier(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_220813D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220813D5C(uint64_t a1)
{
  updated = type metadata accessor for StockSearchResultsUpdateModifier(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_220813DB8()
{
  result = qword_27CF5A240;
  if (!qword_27CF5A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A240);
  }

  return result;
}

unint64_t sub_220813E0C()
{
  result = qword_281299888;
  if (!qword_281299888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299888);
  }

  return result;
}

void *sub_220813E60(uint64_t a1)
{
  v28 = a1;
  v3 = *v1;
  v4 = v1[5];
  v32 = v1[6];
  v33 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v30 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v28 - v30;
  (*(*(v32 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v29 = v1[11];
  v11 = v29;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (*(*(v11 + 8) + 8))(v28, v10, v16);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v21 = v31;
  v22 = &v28 - v30;
  v23 = (*(v31 + 16))(&v28 - v30, v9, v4, v20);
  v25 = MEMORY[0x28223BE20](v23, v24);
  (*(v13 + 16))(&v28 - v17, &v28 - v17, v10, v25);
  v26 = sub_220814958(v22, &v28 - v17, v33, v4, v10, v32, v29);
  (*(v13 + 8))(&v28 - v17, v10);
  (*(v21 + 8))(v9, v4);
  return v26;
}

void sub_220814104(char *a1, double a2)
{
  v3 = v2;
  v5 = sub_220814334(v2, a2);
  v6 = *&a1[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLayer];
  v8 = *(v2 + 40);
  v7 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1(v3 + 2, v8);
  v9 = (*(*(v7 + 16) + 80))(v8);
  v10 = [v9 CGColor];

  [v6 setStrokeColor_];
  v11 = [v5 CGColor];
  [v6 setFillColor_];

  [v6 setLineWidth_];
  v12 = [v6 path];
  [v6 setShadowPath_];

  [v6 setShadowRadius_];
  LODWORD(v13) = 1036831949;
  [v6 setShadowOpacity_];
  [v6 setShadowOffset_];
  v15 = v3[5];
  v14 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v15);
  v16 = (*(*(v14 + 16) + 40))(v15);
  v17 = [v16 CGColor];

  [v6 setShadowColor_];
  v18 = [v5 CGColor];
  [a1 setBackgroundColor_];
}

uint64_t sub_220814334(uint64_t a1, double a2)
{
  if (a2 > 0.0)
  {
    v2 = __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
    v3 = *v2;
    __swift_project_boxed_opaque_existential_1((*v2 + 16), *(*v2 + 40));
    v4 = sub_2208882FC();
    v5 = v3[10];
    v6 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v5);
    v7 = *(v6 + 16);
    if (v4)
    {
      return (*(v7 + 328))(v5);
    }

    return (*(v7 + 312))(v5);
  }

  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  if (a2 < 0.0)
  {
    __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
    v11 = sub_2208882FC();
    v5 = v10[10];
    v12 = v10[11];
    __swift_project_boxed_opaque_existential_1(v10 + 7, v5);
    v7 = *(v12 + 16);
    if ((v11 & 1) == 0)
    {
      return (*(v7 + 328))(v5);
    }

    return (*(v7 + 312))(v5);
  }

  v13 = v10[10];
  v14 = v10[11];
  __swift_project_boxed_opaque_existential_1(v10 + 7, v13);
  return (*(*(v14 + 16) + 344))(v13);
}

id sub_22081447C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v7 = v5;
  v8 = sub_220891F3C();
  v9 = MEMORY[0x277D740C0];
  *(inited + 40) = v8;
  v10 = *v9;
  *(inited + 64) = v6;
  *(inited + 72) = v10;
  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 40);
  v15 = v10;
  v16 = v14(v11, v13);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v19 = sub_22089125C();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

id sub_220814678(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v9 = v7;
  *(inited + 40) = sub_220891F3C();
  v10 = *MEMORY[0x277D740C0];
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  if (a3 <= 0.0)
  {
    v16 = v4[5];
    v17 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v16);
    if (a3 >= 0.0)
    {
      v20 = *(v17 + 16);
      v21 = *(v20 + 208);
      v22 = v10;
      v15 = v21(v16, v20);
    }

    else
    {
      v18 = *(v17 + 32);
      v19 = v10;
      v15 = v18(v16, v17);
    }
  }

  else
  {
    v11 = v4[5];
    v12 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v11);
    v13 = *(v12 + 24);
    v14 = v10;
    v15 = v13(v11, v12);
  }

  v23 = v15;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v23;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v26 = sub_22089125C();

  v27 = [v24 initWithString:v25 attributes:v26];

  return v27;
}

void *sub_22081492C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220813E60(a1);
  *a2 = result;
  return result;
}

void *sub_220814958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v27 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v23 = a5;
  v24 = a7;
  v13 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a5 - 8) + 32))(v13, a2, a5);
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v14[10] = type metadata accessor for StockChartStyler();
  v14[11] = &off_283413188;
  v14[7] = v20;
  sub_220457328(&v25, (v14 + 2));
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v14;
}

void sub_220814B10(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_220884CAC();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  v8 = [v3 bundleForClass_];
  v9 = sub_220884CAC();
  v11 = v10;

  a1[2] = v9;
  a1[3] = v11;
  v12 = [v3 bundleForClass_];
  v13 = sub_220884CAC();
  v15 = v14;

  a1[4] = v13;
  a1[5] = v15;
}

void sub_220814D54()
{
  v1 = OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_mainQuoteView;
  v2 = type metadata accessor for QuoteView();
  *(v0 + v1) = [objc_allocWithZone(v2) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_separatorBarView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI16QuoteSummaryView_offHoursQuoteView;
  *(v0 + v4) = [objc_allocWithZone(v2) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

void sub_220814E5C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a5;
  v71 = a6;
  v69 = a4;
  v62 = a3;
  sub_22051D888(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v58 - v12;
  sub_2204FA2D0(0);
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v76 = v58 - v20;
  sub_2205252E0(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v58[3] = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v27);
  v64 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80[0] = 0;
  v58[2] = sub_22088E6FC();
  v58[1] = v29;
  v30 = sub_22044E3F4(&unk_281296EB0, sub_2204F1480, MEMORY[0x277D6EC70]);
  v31 = sub_22089197C();
  v63 = a2;
  v61 = v9;
  v60 = v10;
  v59 = v13;
  if (v31)
  {
    v79 = MEMORY[0x277D84F90];
    v72 = v31;
    sub_22070C334(0, v31 & ~(v31 >> 63), 0);
    v77 = v79;
    v75 = v30;
    sub_22089193C();
    if ((v72 & 0x8000000000000000) == 0)
    {
      v32 = 0;
      v66 = (v73 + 16);
      v67 = (v73 + 8);
      v65 = v73 + 32;
      v68 = v17;
      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v34 = v26;
        v35 = a1;
        v36 = v25;
        v37 = sub_2208919BC();
        v38 = v74;
        (*v66)(v17);
        v37(v78, 0);
        sub_220815694(v17, v71, v80, v76);
        (*v67)(v17, v38);
        v39 = v77;
        v79 = v77;
        v41 = *(v77 + 16);
        v40 = *(v77 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_22070C334((v40 > 1), v41 + 1, 1);
          v39 = v79;
        }

        *(v39 + 16) = v41 + 1;
        v42 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v77 = v39;
        (*(v73 + 32))(v39 + v42 + *(v73 + 72) * v41, v76, v38);
        a1 = v35;
        v25 = v36;
        sub_2208919AC();
        ++v32;
        v26 = v34;
        v17 = v68;
        if (v33 == v72)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
    (*v67)(v17, a1);

    __break(1u);
  }

  else
  {
    v77 = MEMORY[0x277D84F90];
LABEL_10:
    v43 = sub_22044E3F4(&qword_281297E78, sub_2204FA2D0, MEMORY[0x277D6D720]);
    v44 = sub_22044E3F4(&qword_281297E80, sub_2204FA2D0, MEMORY[0x277D6D718]);
    MEMORY[0x223D80A20](v77, v74, v43, v44);
    v45 = type metadata accessor for ForYouFeedSectionDescriptor(0);
    type metadata accessor for ForYouFeedModel(0);
    sub_22044E3F4(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
    sub_22044E3F4(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
    v77 = v45;
    sub_22088E6EC();
    v46 = sub_2205BF5D0();
    sub_22088FA1C();
    sub_22088FA0C();
    type metadata accessor for ForYouFeedServiceConfig(0);
    sub_22044E3F4(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    v47 = sub_22088F9EC();

    v48 = 0;
    if (v47)
    {
      v48 = sub_22088F45C();
    }

    else
    {
      v78[1] = 0;
      v78[2] = 0;
    }

    v49 = v59;
    v78[0] = v47;
    v78[3] = v48;
    v50 = v64;
    sub_22088E7BC();
    sub_22062782C(v46);
    if (v80[0] == 1)
    {
      sub_220816D8C(0);
      v52 = *(v51 + 64);
      (*(v26 + 16))(v49, v50, v25);
      sub_22044E3F4(&unk_281288480, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B1724);
      sub_22088BDEC();
      v53 = *MEMORY[0x277D6D868];
      v54 = sub_22088B64C();
      (*(*(v54 - 8) + 104))(&v49[v52], v53, v54);
      v55 = MEMORY[0x277D6DF78];
    }

    else
    {
      v55 = MEMORY[0x277D6DF80];
    }

    v56 = v60;
    v57 = v61;
    (*(v60 + 104))(v49, *v55, v61);
    v63(v49);
    (*(v56 + 8))(v49, v57);
    (*(v26 + 8))(v50, v25);
  }
}

uint64_t sub_220815694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void (*a3)(char *, char *, uint64_t, __n128)@<X4>, uint64_t a4@<X8>)
{
  v178 = a3;
  v202 = a2;
  v210 = a4;
  v185 = sub_2208852DC();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v5);
  v195 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_2208857EC();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v7);
  v188 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22088699C();
  v176 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v9);
  v187 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v197 = &v166 - v13;
  v194 = sub_220885D4C();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v14);
  v192 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204545BC(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v196 = &v166 - v18;
  sub_220522FA4(0);
  v20 = v19;
  MEMORY[0x28223BE20](v19, v21);
  v186 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204545BC(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v179 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v175 = &v166 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v174 = &v166 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v177 = &v166 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v190 = &v166 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v166 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v166 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v166 - v48;
  v199 = sub_22088676C();
  v203 = *(v199 - 8);
  MEMORY[0x28223BE20](v199, v50);
  v52 = &v166 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v166 - v55;
  MEMORY[0x28223BE20](v57, v58);
  v201 = &v166 - v59;
  sub_2204545BC(0, &qword_281296C60, MEMORY[0x277D31C50]);
  MEMORY[0x28223BE20](v60 - 8, v61);
  v205 = &v166 - v62;
  v198 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v198, v63);
  v191 = &v166 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v66);
  v208 = &v166 - v67;
  v68 = sub_22088685C();
  v206 = *(v68 - 8);
  v207 = v68;
  MEMORY[0x28223BE20](v68, v69);
  v200 = &v166 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71, v72);
  v204 = &v166 - v73;
  v74 = type metadata accessor for ForYouFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v74, v75);
  v181 = &v166 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77, v78);
  v80 = &v166 - v79;
  sub_2204FA2D0(0);
  v209 = v81;
  v211 = a1;
  sub_22088B2AC();
  v180 = v74;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      return (*(*(v209 - 8) + 16))(v210, v211);
    }

LABEL_10:
    sub_2204FC344(v80, type metadata accessor for ForYouFeedSectionDescriptor);
    return (*(*(v209 - 8) + 16))(v210, v211);
  }

  if (!EnumCaseMultiPayload)
  {
    sub_22051F3D0(v80, &qword_281296C60, MEMORY[0x277D31C50]);
    return (*(*(v209 - 8) + 16))(v210, v211);
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_10;
  }

  v173 = v41;
  sub_22045849C(0);
  v84 = *(v83 + 48);
  v172 = v83;
  v85 = *(v83 + 64);
  (*(v206 + 32))(v204, v80, v207);
  sub_22050381C(&v80[v84], v208);
  sub_2204FBAC4(&v80[v85], v205);
  v86 = sub_22088681C();
  v88 = v202;
  if (!*(v202 + 16))
  {

    goto LABEL_14;
  }

  v89 = sub_2204AF97C(v86, v87);
  v91 = v90;

  if ((v91 & 1) == 0)
  {
LABEL_14:
    v109 = MEMORY[0x277D31C50];
    v110 = v205;
LABEL_15:
    sub_22051F3D0(v110, &qword_281296C60, v109);
    sub_2204FC344(v208, type metadata accessor for StockViewModel);
    (*(v206 + 8))(v204, v207);
    return (*(*(v209 - 8) + 16))(v210, v211);
  }

  v92 = *(v88 + 56) + *(v203 + 72) * v89;
  v93 = v203;
  v94 = (v203 + 16);
  v95 = *(v203 + 16);
  v96 = v199;
  v95(v56, v92, v199);
  v97 = (v93 + 32);
  v98 = *(v93 + 32);
  v99 = v201;
  v167 = v97;
  v166 = v98;
  v98(v201, v56, v96);
  v171 = v94;
  v170 = v95;
  v95(v49, v99, v96);
  v100 = v203;
  v101 = *(v203 + 56);
  v169 = v203 + 56;
  v168 = v101;
  v101(v49, 0, 1, v96);
  v102 = *(v198 + 20);
  v103 = *(v20 + 48);
  v104 = MEMORY[0x277D697F8];
  v105 = v186;
  sub_2204B2B80(v49, v186, &qword_2812990C0, MEMORY[0x277D697F8]);
  v202 = v103;
  sub_2204B2B80(v208 + v102, v105 + v103, &qword_2812990C0, v104);
  v107 = v100 + 48;
  v106 = *(v100 + 48);
  if (v106(v105, 1, v96) == 1)
  {
    sub_22051F3D0(v49, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v106(v105 + v202, 1, v96) == 1)
    {
      sub_22051F3D0(v105, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v203 + 8))(v201, v96);
LABEL_36:
      v109 = MEMORY[0x277D31C50];
      v110 = v205;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  sub_2204B2B80(v105, v45, &qword_2812990C0, MEMORY[0x277D697F8]);
  v111 = v202;
  if (v106(v105 + v202, 1, v96) == 1)
  {
    sub_22051F3D0(v49, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v203 + 8))(v45, v96);
LABEL_18:
    sub_2204FC344(v105, sub_220522FA4);
    goto LABEL_19;
  }

  v166(v52, v105 + v111, v96);
  sub_22044E3F4(&qword_2812990C8, MEMORY[0x277D697F8], MEMORY[0x277D69800]);
  LODWORD(v202) = sub_2208912FC();
  v164 = *(v203 + 8);
  v164(v52, v96);
  v165 = MEMORY[0x277D697F8];
  sub_22051F3D0(v49, &qword_2812990C0, MEMORY[0x277D697F8]);
  v164(v45, v96);
  sub_22051F3D0(v105, &qword_2812990C0, v165);
  if (v202)
  {
    v164(v201, v96);
    goto LABEL_36;
  }

LABEL_19:
  *v178 = 1;
  v202 = v107;
  v167 = v106;
  v112 = v206 + 16;
  v113 = *(v206 + 16);
  v114 = v208;
  (v113)(v200, v208, v207);
  v115 = v173;
  v170(v173, v201, v96);
  v168(v115, 0, 1, v96);
  v116 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v116 - 8) + 56))(v196, 1, 1, v116);
  v117 = v198;
  v118 = *(v198 + 32);
  v171 = *(v193 + 16);
  v119 = v192;
  v120 = v194;
  v171(v192, v114 + v118, v194);
  v121 = v191;
  v186 = v112;
  v178 = v113;
  (v113)(v191, v200, v207);
  v122 = v167;
  v123 = MEMORY[0x277D697F8];
  sub_2204B2B80(v115, v121 + v117[5], &qword_2812990C0, MEMORY[0x277D697F8]);
  sub_2204B2B80(v196, v121 + v117[6], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v124 = v120;
  v125 = v199;
  v171((v121 + v117[8]), v119, v124);
  *(v121 + v117[9]) = 0;
  v126 = v115;
  v127 = v190;
  sub_2204B2B80(v126, v190, &qword_2812990C0, v123);
  sub_2208867CC();
  v128 = v177;
  sub_2204B2B80(v127, v177, &qword_2812990C0, v123);
  if (v122(v128, 1, v125) == 1)
  {
    sub_22051F3D0(v128, &qword_2812990C0, MEMORY[0x277D697F8]);
    v171 = 0;
    LODWORD(v170) = 1;
  }

  else
  {
    v171 = sub_22088675C();
    LODWORD(v170) = v129;
    (*(v203 + 8))(v128, v125);
  }

  v130 = v176;
  v131 = v187;
  v132 = v175;
  v133 = v174;
  sub_2204B2B80(v127, v174, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v122(v133, 1, v125) == 1)
  {
    sub_22051F3D0(v133, &qword_2812990C0, MEMORY[0x277D697F8]);
    v177 = 0;
    LODWORD(v176) = 1;
  }

  else
  {
    v177 = sub_22088666C();
    LODWORD(v176) = v134;
    (*(v203 + 8))(v133, v125);
  }

  sub_2204B2B80(v127, v132, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v122(v132, 1, v125) == 1)
  {
    sub_22051F3D0(v132, &qword_2812990C0, MEMORY[0x277D697F8]);
    v175 = 0;
    LODWORD(v174) = 1;
  }

  else
  {
    v175 = sub_22088671C();
    LODWORD(v174) = v135;
    (*(v203 + 8))(v132, v125);
  }

  v136 = v179;
  sub_2204B2B80(v127, v179, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v122(v136, 1, v125) == 1)
  {
    sub_22051F3D0(v136, &qword_2812990C0, MEMORY[0x277D697F8]);
    v202 = 0;
    v137 = 0;
  }

  else
  {
    v202 = sub_22088668C();
    v137 = v138;
    (*(v203 + 8))(v136, v125);
  }

  v139 = v188;
  v140 = v121 + *(v198 + 28);
  v198 = *(v130 + 16);
  (v198)(v131, v197, v189);
  v141 = v182;
  v142 = v183;
  (*(v182 + 104))(v139, *MEMORY[0x277D69288], v183);
  v143 = v131;
  v144 = v195;
  sub_22088524C();
  *v140 = v171;
  *(v140 + 8) = v170 & 1;
  *(v140 + 16) = v177;
  *(v140 + 24) = v176 & 1;
  *(v140 + 32) = v175;
  *(v140 + 40) = v174 & 1;
  *(v140 + 48) = v202;
  *(v140 + 56) = v137;
  v145 = type metadata accessor for PriceViewModel(0);
  v146 = v143;
  v147 = v189;
  (v198)(v140 + v145[10], v146, v189);
  *(v140 + 64) = 9666786;
  *(v140 + 72) = 0xA300000000000000;
  (*(v141 + 16))(v140 + v145[9], v139, v142);
  v148 = v184;
  v149 = v140 + v145[11];
  v150 = v185;
  (*(v184 + 16))(v149, v144, v185);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v151 = qword_2812B6B48;
  (*(v141 + 8))(v188, v142);
  v152 = *(v130 + 8);
  v152(v187, v147);
  v152(v197, v147);
  v153 = MEMORY[0x277D697F8];
  sub_22051F3D0(v190, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v193 + 8))(v192, v194);
  sub_22051F3D0(v196, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_22051F3D0(v173, &qword_2812990C0, v153);
  v154 = v207;
  v206 = *(v206 + 8);
  (v206)(v200, v207);
  v155 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v148 + 40))(v151 + v155, v195, v150);
  swift_endAccess();
  v156 = *(v172 + 48);
  v157 = *(v172 + 64);
  v158 = v181;
  v159 = v204;
  (v178)(v181, v204, v154);
  v160 = v158 + v156;
  v161 = v191;
  sub_220527BCC(v191, v160);
  v162 = MEMORY[0x277D31C50];
  v163 = v205;
  sub_2204B2B80(v205, v158 + v157, &qword_281296C60, MEMORY[0x277D31C50]);
  swift_storeEnumTagMultiPayload();
  sub_22088B2DC();
  sub_2204FC344(v158, type metadata accessor for ForYouFeedSectionDescriptor);
  sub_2204FC344(v161, type metadata accessor for StockViewModel);
  (*(v203 + 8))(v201, v199);
  sub_22051F3D0(v163, &qword_281296C60, v162);
  sub_2204FC344(v208, type metadata accessor for StockViewModel);
  return (v206)(v159, v154);
}

unint64_t sub_220816CA8()
{
  result = qword_281280678;
  if (!qword_281280678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280678);
  }

  return result;
}

void sub_220816D8C(uint64_t a1)
{
  if (!qword_281296EC8)
  {
    sub_2204F1480(255);
    sub_220816E18();
    sub_22088B64C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281296EC8);
    }
  }
}

unint64_t sub_220816E18()
{
  result = qword_281297D50;
  if (!qword_281297D50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281297D50);
  }

  return result;
}

uint64_t sub_220816E7C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v36 = sub_220889B0C();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D697F8];
  sub_2204D067C(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v33 - v19;
  sub_220789D3C(&v33 - v19);
  sub_2204B2CC0(v20, v16, &qword_2812990C0, v4);
  v21 = sub_22088676C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v16, 1, v21) == 1)
  {
    sub_2204B3CFC(v16, &qword_2812990C0, MEMORY[0x277D697F8]);
  }

  else
  {
    sub_22088675C();
    (*(v22 + 8))(v16, v21);
  }

  sub_2204B2CC0(v20, v12, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v23(v12, 1, v21) == 1)
  {
    sub_2204B3CFC(v12, &qword_2812990C0, MEMORY[0x277D697F8]);
  }

  else
  {
    sub_22088666C();
    (*(v22 + 8))(v12, v21);
  }

  sub_2204B2CC0(v20, v8, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v23(v8, 1, v21) == 1)
  {
    sub_2204B3CFC(v8, &qword_2812990C0, MEMORY[0x277D697F8]);
LABEL_10:

    goto LABEL_11;
  }

  sub_22088668C();
  v25 = v24;
  (*(v22 + 8))(v8, v21);
  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_11:
  v26 = v33;
  sub_220889AFC();
  sub_2204D067C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v27 = sub_220886F8C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_220899360;
  (*(v28 + 104))(v30 + v29, *MEMORY[0x277CEAD10], v27);
  sub_22081FE3C(&qword_2812983A0, MEMORY[0x277D68A70], MEMORY[0x277D68A68]);
  v31 = v36;
  sub_2208872CC();

  (*(v34 + 8))(v26, v31);
  return sub_2204B3CFC(v20, &qword_2812990C0, MEMORY[0x277D697F8]);
}

uint64_t sub_220817410(uint64_t a1)
{
  v2 = v1;
  v28 = sub_22088A02C();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088A01C();
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088916C();
  v29 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v28 - v20;
  sub_2208177E8(v2, a1, &v28 - v20);
  sub_22088D68C();
  (*(v4 + 104))(v7, *MEMORY[0x277D68F20], v28);
  (*(v14 + 16))(v17, v21, v13);
  sub_22088A00C();
  sub_2204D067C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v22 = sub_220886F8C();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_220899360;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x277CEAD10], v22);
  sub_22081FE3C(&unk_2812982B0, MEMORY[0x277D68F18], MEMORY[0x277D68F10]);
  v26 = v30;
  sub_2208872CC();

  (*(v31 + 8))(v12, v26);
  sub_22088725C();
  return (*(v14 + 8))(v21, v29);
}

void sub_2208177E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a2;
  v5 = sub_22088D81C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D68300];
  sub_2204D067C(0, &qword_281298570, MEMORY[0x277D68300], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v28 - v17;
  v19 = OBJC_IVAR____TtC8StocksUI16StockFeedTracker_onDeckViewAction;
  swift_beginAccess();
  sub_2204B2CC0(a1 + v19, v18, &qword_281298570, v10);
  v20 = sub_22088916C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) != 1)
  {
    (*(v21 + 32))(a3, v18, v20);
    (*(v21 + 56))(v14, 1, 1, v20);
    swift_beginAccess();
    sub_220744B60(v14, a1 + v19);
    swift_endAccess();
    return;
  }

  sub_2204B3CFC(v18, &qword_281298570, MEMORY[0x277D68300]);
  sub_22088D6AC();
  v22 = (*(v6 + 88))(v9, v5);
  if (v22 == *MEMORY[0x277D6E830])
  {
    v23 = MEMORY[0x277D682F8];
LABEL_11:
    v25 = *v23;
    v26 = *(v21 + 104);
    goto LABEL_12;
  }

  if (v22 == *MEMORY[0x277D6E840] || v22 == *MEMORY[0x277D6E848])
  {
    v23 = MEMORY[0x277D682E8];
    goto LABEL_11;
  }

  if (v22 != *MEMORY[0x277D6E838])
  {
    (*(v21 + 104))(a3, *MEMORY[0x277D682E8], v20);
    (*(v6 + 8))(v9, v5);
    return;
  }

  v27 = sub_22088D69C();
  v26 = *(v21 + 104);
  if (v27)
  {
    v25 = *MEMORY[0x277D682C8];
  }

  else
  {
    v25 = *MEMORY[0x277D682F8];
  }

LABEL_12:
  v26(a3, v25, v20);
}

void sub_220817B78(uint64_t a1)
{
  v72 = a1;
  v88 = sub_22088FF2C();
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v2);
  v93 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v89 = v65 - v6;
  v71 = sub_22088CE3C();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v7);
  v67 = v8;
  v68 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_220889B9C();
  v70 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v9);
  v66 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[1] = v10;
  MEMORY[0x28223BE20](v11, v12);
  v76 = v65 - v13;
  sub_22081F878(0, &qword_281297DE0, MEMORY[0x277D6D710]);
  v15 = v14;
  v86 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v65 - v17;
  sub_22055D1DC(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v27);
  v29 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = v65 - v32;
  v75 = v1;
  v94[4] = *(v1 + 24);
  sub_2205E9B98(0);
  sub_22081FE3C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();
  v74 = v26;
  v34 = *(v26 + 16);
  v73 = v33;
  v34(v29, v33, v25);
  sub_22081FE3C(&qword_281296F28, sub_22055CF9C, MEMORY[0x277D6EC68]);
  sub_2208915BC();
  v35 = *(v20 + 44);
  v36 = v88;
  v37 = sub_22081FE3C(&qword_281296F20, sub_22055CF9C, MEMORY[0x277D6EC70]);
  v38 = 0;
  v84 = v15;
  v85 = (v86 + 16);
  v90 = v91 + 16;
  v92 = (v91 + 32);
  v87 = (v91 + 8);
  v78 = (v86 + 8);
  v79 = v37;
  v82 = v23;
  v83 = v18;
  v80 = v35;
  v81 = v25;
  while (1)
  {
    v86 = v38;
    sub_22089199C();
    if (*&v23[v35] == v94[0])
    {
      break;
    }

    v42 = sub_2208919BC();
    (*v85)(v18);
    v42(v94, 0);
    sub_2208919AC();
    sub_22081FE3C(qword_281288C20, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A2014);
    sub_22081FE3C(&qword_281293DC8, type metadata accessor for StockFeedModel, &unk_2208B4B48);
    v43 = sub_22088B37C();
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = 0;
      v39 = MEMORY[0x277D84F90];
      v46 = v89;
      while (v45 < *(v43 + 16))
      {
        v47 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v48 = *(v91 + 72);
        (*(v91 + 16))(v46, v43 + v47 + v48 * v45, v36);
        if (sub_22088FF1C())
        {
          swift_unknownObjectRelease();
          v49 = *v92;
          (*v92)(v93, v46, v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94[0] = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22070C19C(0, *(v39 + 16) + 1, 1);
            v39 = v94[0];
          }

          v52 = *(v39 + 16);
          v51 = *(v39 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_22070C19C((v51 > 1), v52 + 1, 1);
            v39 = v94[0];
          }

          *(v39 + 16) = v52 + 1;
          v36 = v88;
          v49((v39 + v47 + v52 * v48), v93, v88);
          v46 = v89;
        }

        else
        {
          (*v87)(v46, v36);
        }

        if (v44 == ++v45)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v39 = MEMORY[0x277D84F90];
LABEL_3:
    v18 = v83;
    (*v78)(v83, v84);

    v40 = *(v39 + 16);

    v41 = __OFADD__(v86, v40);
    v38 = v86 + v40;
    v25 = v81;
    v23 = v82;
    v35 = v80;
    if (v41)
    {
      goto LABEL_20;
    }
  }

  sub_22081F818(v23, sub_22055D1DC);
  (*(v74 + 8))(v73, v25);
  v53 = v75;
  __swift_project_boxed_opaque_existential_1((v75 + 256), *(v75 + 280));
  sub_22088618C();
  if (v86 < 0xFFFFFFFF80000000)
  {
    goto LABEL_21;
  }

  if (v86 <= 0x7FFFFFFF)
  {
    v54 = v76;
    sub_220889B8C();
    v93 = *(v53 + 16);
    v55 = v69;
    v56 = v68;
    v57 = v71;
    (*(v69 + 16))(v68, v72, v71);
    v58 = v70;
    v59 = v66;
    (*(v70 + 16))(v66, v54, v77);
    v60 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v61 = (v67 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (*(v58 + 80) + v61 + 8) & ~*(v58 + 80);
    v63 = swift_allocObject();
    (*(v55 + 32))(v63 + v60, v56, v57);
    *(v63 + v61) = v53;
    v64 = v77;
    (*(v58 + 32))(v63 + v62, v59, v77);

    sub_22088726C();

    (*(v58 + 8))(v76, v64);
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_220818508(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v75 = a3;
  v76 = a1;
  v72 = sub_22088685C();
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v5);
  v71 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088516C();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088944C();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10, v11);
  *&v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v59 = &v57 - v15;
  v60 = sub_220886A4C();
  v58 = *(v60 - 1);
  MEMORY[0x28223BE20](v60, v16);
  v57 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088943C();
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v64 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088A06C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22088D81C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088928C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  sub_22088CE0C();
  v36 = (*(v27 + 88))(v30, v26);
  if (v36 == *MEMORY[0x277D6E830])
  {
    v37 = MEMORY[0x277D68F60];
  }

  else
  {
    v37 = MEMORY[0x277D68F68];
    if (v36 != *MEMORY[0x277D6E840] && v36 != *MEMORY[0x277D6E848] && v36 != *MEMORY[0x277D6E838])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }
  }

  (*(v22 + 104))(v25, *v37, v21);
  sub_22088927C();
  sub_22081FE3C(&qword_281298540, MEMORY[0x277D683C0], MEMORY[0x277D683B8]);
  sub_220886F1C();
  (*(v32 + 8))(v35, v31);
  __swift_project_boxed_opaque_existential_1(v75 + 27, v75[30]);
  v38 = v57;
  sub_2208863EC();
  v39 = sub_2208869AC();
  v40 = MEMORY[0x277D68560];
  if ((v39 & 1) == 0)
  {
    v40 = MEMORY[0x277D68558];
  }

  v42 = v62;
  v41 = v63;
  v43 = v59;
  (*(v62 + 104))(v59, *v40, v63);
  (*(v42 + 16))(v61, v43, v41);
  v44 = v64;
  sub_22088942C();
  (*(v42 + 8))(v43, v41);
  (*(v58 + 8))(v38, v60);
  sub_2204D067C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v63 = v45;
  v46 = sub_220886F8C();
  v47 = *(v46 - 8);
  v62 = *(v47 + 72);
  v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v49 = swift_allocObject();
  v61 = xmmword_220899360;
  *(v49 + 16) = xmmword_220899360;
  v50 = *MEMORY[0x277CEAD18];
  v60 = *(v47 + 104);
  v60(v49 + v48, v50, v46);
  sub_22081FE3C(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v51 = v66;
  sub_220886F1C();

  (*(v65 + 8))(v44, v51);
  v52 = swift_allocObject();
  *(v52 + 16) = v61;
  v60(v52 + v48, v50, v46);
  sub_220889B9C();
  sub_22081FE3C(&qword_281298380, MEMORY[0x277D68AD0], MEMORY[0x277D68AC8]);
  sub_220886F1C();

  sub_2208893EC();
  v53 = v68;
  sub_22088CE2C();
  sub_22081FE3C(&qword_2812984F8, MEMORY[0x277D68488], MEMORY[0x277D68470]);
  sub_220886ECC();
  v54 = v74;
  v55 = *(v73 + 8);
  v55(v53, v74);
  sub_22088CE1C();
  (*(v69 + 16))(v71, v75 + OBJC_IVAR____TtC8StocksUI16StockFeedTracker_stock, v72);
  v77[3] = sub_22088A77C();
  __swift_allocate_boxed_opaque_existential_1(v77);
  sub_22088A76C();
  sub_220886EEC();
  v55(v53, v54);
  return sub_22081F818(v77, sub_22055F87C);
}

uint64_t sub_220818F2C()
{
  sub_2204D067C(0, &unk_281299020, MEMORY[0x277D69858], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v29 - v2;
  v4 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088698C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v29 - v21;
  sub_22081F878(0, &qword_281297728, MEMORY[0x277D6E1E0]);
  sub_22088CB9C();
  sub_22088AD8C();
  (*(v10 + 8))(v13, v9);
  sub_2207A9748(v3);
  sub_22081F818(v7, type metadata accessor for StockFeedModel);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    return sub_2204B3CFC(v3, &unk_281299020, MEMORY[0x277D69858]);
  }

  (*(v15 + 32))(v22, v3, v14);
  (*(v15 + 16))(v18, v22, v14);
  v24 = (*(v15 + 88))(v18, v14);
  if (v24 == *MEMORY[0x277D69850])
  {
    (*(v15 + 96))(v18, v14);
    swift_unknownObjectRelease();
    sub_22052EC94(0);
    v26 = *(v25 + 48);
    __swift_project_boxed_opaque_existential_1((v30 + 176), *(v30 + 200));
    sub_2208868DC();
    sub_220887DCC();
    swift_unknownObjectRelease();
    (*(v15 + 8))(v22, v14);
    v27 = sub_220885CDC();
    return (*(*(v27 - 8) + 8))(&v18[v26], v27);
  }

  else if (v24 == *MEMORY[0x277D69840])
  {
    v28 = *(v15 + 8);
    v28(v22, v14);
    return (v28)(v18, v14);
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2208193D0(uint64_t a1)
{
  v2 = sub_22088FFFC();
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088FEFC();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088698C();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v69 = &v65 - v13;
  sub_220454720(0);
  v70 = v14;
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22081F878(0, &qword_281297B40, MEMORY[0x277D6DA48]);
  v18 = v17;
  v84 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v83 = &v65 - v20;
  v21 = type metadata accessor for StockEarningsModel(0);
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v81 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v65 - v26;
  v28 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328(0);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  sub_22088BBEC();
  sub_22088AD8C();
  v38 = v33;
  v39 = v31;
  (*(v34 + 8))(v37, v38);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 4)
  {
    v51 = v81;
    v50 = v82;
    v53 = v83;
    v52 = v84;
    if (result <= 1)
    {
      v57 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_14;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        v60 = v18;
        v65 = v27;
        sub_22064A10C(v39, v27);
        v79 = *(v79 + 16);
        v61 = v51;
        sub_220649AF0(v27, v51);
        v52[2](v53, v80, v60);
        v62 = (*(v50 + 80) + 16) & ~*(v50 + 80);
        v63 = (v22 + *(v52 + 80) + v62) & ~*(v52 + 80);
        v64 = swift_allocObject();
        sub_22064A10C(v61, v64 + v62);
        v52[4]((v64 + v63), v53, v60);
        sub_22088726C();

        v58 = type metadata accessor for StockEarningsModel;
        v59 = v65;
        return sub_22081F818(v59, v58);
      }

      sub_2204597F0(0);
      v55 = *(v54 + 48);
      sub_2204B3CFC(&v31[*(v54 + 64)], &qword_281299370, MEMORY[0x277D69178]);
      sub_2204B3CFC(&v31[v55], &qword_2812990C0, MEMORY[0x277D697F8]);
    }

    v56 = sub_22088685C();
    return (*(*(v56 - 8) + 8))(v31, v56);
  }

  if (result <= 7)
  {
    if (result == 6)
    {
      v41 = v68;
      v42 = v67;
      v43 = v70;
      (*(v68 + 32))(v67, v31, v70);
      v44 = v69;
      sub_22088FF6C();
      v45 = v74;
      sub_22088FF7C();
      v46 = v66;
      sub_22088FF6C();
      sub_2208868DC();
      v47 = v72;
      v84 = *(v71 + 8);
      (v84)(v46, v72);
      sub_22088FF8C();
      v48 = v73;
      sub_22088FFEC();
      swift_unknownObjectRelease();
      v49.n128_f64[0] = (*(v77 + 8))(v45, v78);
      sub_220819BB4(v80, v44, v48, v49);
      (*(v75 + 8))(v48, v76);
      (v84)(v44, v47);
      return (*(v41 + 8))(v42, v43);
    }

    goto LABEL_12;
  }

  if (result == 8)
  {
    sub_220459914(0);

    v56 = sub_22089030C();
    return (*(*(v56 - 8) + 8))(v31, v56);
  }

  if (result == 9)
  {
LABEL_12:
    v57 = type metadata accessor for StockFeedModel;
LABEL_14:
    v58 = v57;
    v59 = v31;
    return sub_22081F818(v59, v58);
  }

  return result;
}

uint64_t sub_220819BB4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v34 = a3;
  v38 = a2;
  v31 = a1;
  v33 = sub_22088FEFC();
  v37 = *(v33 - 8);
  v35 = *(v37 + 64);
  MEMORY[0x28223BE20](v33, v6);
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088698C();
  v29 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22081F878(0, &qword_281297B40, MEMORY[0x277D6DA48]);
  v13 = v12;
  v28 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v18 = &v27 - v17;
  v32 = v5[2];
  v19 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v18, v31, v13);
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v8);
  v20 = v37;
  v21 = v33;
  (*(v37 + 16))(v36, v34, v33);
  v22 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v23 = (v15 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = (v10 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  (*(v14 + 32))(v25 + v22, v18, v28);
  (*(v9 + 32))(v25 + v23, v30, v29);
  (*(v37 + 32))(v25 + v24, v36, v21);

  sub_22088726C();

  __swift_project_boxed_opaque_existential_1(v5 + 6, v5[9]);
  sub_2208863AC();
  __swift_project_boxed_opaque_existential_1(v5 + 22, v5[25]);
  sub_2208868DC();
  sub_220887DDC();
  return swift_unknownObjectRelease();
}

uint64_t sub_220819F6C(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a1;
  v54 = a3;
  v41 = sub_22088A10C();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208891DC();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220889BFC();
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v52 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088993C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  ObjectType = swift_getObjectType();
  sub_2206F6C58();
  sub_2204D067C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v49 = v18;
  v47 = sub_220886F8C();
  v19 = *(v47 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v48 = xmmword_220899360;
  *(v21 + 16) = xmmword_220899360;
  v46 = *MEMORY[0x277CEAD18];
  v45 = *(v19 + 104);
  v45(v21 + v20);
  sub_22081FE3C(&qword_27CF58950, MEMORY[0x277D688C8], MEMORY[0x277D688C0]);
  sub_220886F1C();

  (*(v14 + 8))(v17, v13);
  v22 = v54;
  v23 = v52;
  v24 = v50;
  sub_2206F69A0(*(v54 + 128));
  v25 = swift_allocObject();
  *(v25 + 16) = v48;
  (v45)(v25 + v20, v46, v47);
  sub_22081FE3C(&qword_281298370, MEMORY[0x277D68B40], MEMORY[0x277D68B38]);
  v26 = v55;
  sub_220886F1C();

  (*(v56 + 8))(v23, v26);
  v27 = [v24 sourceChannel];
  if (v27)
  {
    v28 = v27;
    __swift_project_boxed_opaque_existential_1((v22 + 88), *(v22 + 112));
    v29 = v42;
    sub_2206EC95C(v28, v30);
    sub_22081FE3C(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v31 = v44;
    sub_2208872CC();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v29, v31);
  }

  if ([v24 respondsToSelector_])
  {
    v32 = [v24 parentIssue];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 identifier];
      sub_22089136C();

      v35 = v39;
      sub_22088A0FC();
      sub_22081FE3C(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
      v36 = v41;
      sub_2208872CC();

      (*(v40 + 8))(v35, v36);
    }
  }

  sub_220889EBC();
  sub_22081FE3C(&unk_27CF59380, MEMORY[0x277D68E00], MEMORY[0x277D68DF8]);
  memset(v57, 0, 32);
  sub_220886F3C();
  return sub_22081F818(v57, sub_22055F87C);
}

uint64_t sub_22081A674(unint64_t a1)
{
  sub_22055D328(0);
  v3 = v2;
  v62 = *(v2 - 8);
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088698C();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v69 = v56 - v11;
  sub_22055CF9C(0);
  v70 = v12;
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v64 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v67 = v56 - v17;
  sub_220454720(0);
  v65 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v63 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v56 - v24;
  v26 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_22088AD8C();
  result = swift_getEnumCaseMultiPayload();
  if (result <= 4)
  {
    if (result <= 1)
    {
      v55 = type metadata accessor for StockFeedMastheadModel;
      return sub_22081F818(v29, v55);
    }

    if (result != 2)
    {
      if (result != 3)
      {
        v55 = type metadata accessor for StockEarningsModel;
        return sub_22081F818(v29, v55);
      }

      sub_2204597F0(0);
      v53 = *(v52 + 48);
      sub_2204B3CFC(&v29[*(v52 + 64)], &qword_281299370, MEMORY[0x277D69178]);
      sub_2204B3CFC(&v29[v53], &qword_2812990C0, MEMORY[0x277D697F8]);
    }

    v54 = sub_22088685C();
    return (*(*(v54 - 8) + 8))(v29, v54);
  }

  if (result > 7)
  {
    if (result != 8)
    {
      if (result != 9)
      {
        return result;
      }

      goto LABEL_12;
    }

    sub_220459914(0);

    v54 = sub_22089030C();
    return (*(*(v54 - 8) + 8))(v29, v54);
  }

  if (result == 6)
  {
    v58 = v19;
    v59 = v25;
    v31 = *(v19 + 32);
    v56[2] = v19 + 32;
    v57 = v31;
    v32 = v65;
    v31(v25, v29, v65);
    v74 = *(v73 + 24);
    sub_2205E9B98(0);
    sub_22081FE3C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
    v33 = v67;
    sub_22088BF9C();
    v34 = v69;
    v35 = v32;
    v36 = v59;
    sub_22088FF6C();
    v56[1] = *(v73 + 16);
    (*(v71 + 16))(v66, v34, v72);
    v37 = v61;
    (*(v61 + 16))(v64, v33, v70);
    v38 = v62;
    (*(v62 + 16))(v68, v60, v3);
    v39 = v58;
    (*(v58 + 16))(v63, v36, v35);
    v40 = v71;
    v41 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v42 = (v7 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = (v13 + *(v38 + 80) + v42) & ~*(v38 + 80);
    v60 = (v4 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (*(v39 + 80) + v60 + 8) & ~*(v39 + 80);
    v45 = swift_allocObject();
    v46 = v40;
    v47 = v45 + v41;
    v48 = v72;
    (*(v40 + 32))(v47, v66, v72);
    v49 = v45 + v42;
    v50 = v70;
    (*(v37 + 32))(v49, v64, v70);
    (*(v38 + 32))(v45 + v43, v68, v3);
    *(v45 + v60) = v73;
    v51 = v65;
    v57(v45 + v44, v63, v65);

    sub_22088726C();

    (*(v46 + 8))(v69, v48);
    (*(v37 + 8))(v67, v50);
    return (*(v58 + 8))(v59, v51);
  }

LABEL_12:
  v55 = type metadata accessor for StockFeedModel;
  return sub_22081F818(v29, v55);
}

uint64_t sub_22081AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v108 = a6;
  v128 = a5;
  v125 = a3;
  v126 = a4;
  v111 = sub_220889BFC();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v9);
  v109 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22088698C();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v11);
  v97 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22088FFFC();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v13);
  v98 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22088FEFC();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v15);
  v96 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22088A04C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v17);
  v105 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22088A10C();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v19);
  v87 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2208891DC();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v21);
  v90 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2208899AC();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v23);
  v93 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22088971C();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v25);
  v112 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22088916C();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v124 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22088A02C();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v30);
  v120 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22088519C();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v32);
  v116 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22088A01C();
  v127 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v34);
  v117 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2208895EC();
  v115 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a2;
  sub_2208868DC();
  swift_getObjectType();
  sub_2206F61F0(v39);
  swift_unknownObjectRelease();
  sub_2204D067C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v131 = v40;
  v41 = sub_220886F8C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = *(v42 + 80);
  v130 = (v44 + 32) & ~v44;
  v45 = swift_allocObject();
  v138 = xmmword_220899360;
  *(v45 + 16) = xmmword_220899360;
  v132 = *MEMORY[0x277CEAD18];
  v134 = *(v42 + 104);
  v134(v45 + ((v44 + 32) & ~v44));
  v135 = "_TtC8StocksUI16StockFeedTracker";
  sub_22081FE3C(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  sub_220886F1C();

  v46 = v44;
  (*(v115 + 8))(v39, v36);
  v47 = v116;
  sub_22088518C();
  sub_22088517C();
  (*(v118 + 8))(v47, v119);
  (*(v121 + 104))(v120, *MEMORY[0x277D68F28], v122);
  (*(v136 + 104))(v124, *MEMORY[0x277D682B8], v137);
  v48 = v117;
  v49 = v130;
  sub_22088A00C();
  v124 = v43;
  v136 = v46;
  v50 = swift_allocObject();
  *(v50 + 16) = v138;
  v133 = v41;
  (v134)(v50 + v49, v132, v41);
  sub_22081FE3C(&unk_2812982B0, MEMORY[0x277D68F18], MEMORY[0x277D68F10]);
  v51 = v123;
  v137 = a1;
  sub_220886F1C();

  (*(v127 + 8))(v48, v51);
  sub_22055CF9C(0);
  sub_22081FE3C(&qword_281293DE0, type metadata accessor for StockFeedModel, &unk_2208B4CC8);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v53 = v112;
  sub_22088970C();
  v54 = swift_allocObject();
  v55 = v49;
  *(v54 + 16) = v138;
  v56 = *MEMORY[0x277CEAD10];
  v127 = v42 + 104;
  (v134)(v54 + v55, v56, v133);
  sub_22081FE3C(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v57 = v114;
  sub_220886F1C();

  (*(v113 + 8))(v53, v57);
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v58 = v93;
  sub_22088999C();
  v59 = v130;
  v60 = swift_allocObject();
  *(v60 + 16) = v138;
  v61 = v133;
  v62 = v134;
  (v134)(v60 + v59, v56, v133);
  sub_22081FE3C(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
  v63 = v95;
  sub_220886F1C();

  (*(v94 + 8))(v58, v63);
  v64 = [sub_2208868DC() sourceChannel];
  swift_unknownObjectRelease();
  if (v64)
  {
    __swift_project_boxed_opaque_existential_1((v128 + 88), *(v128 + 112));
    v65 = v90;
    sub_2206EC95C(v64, v66);
    v67 = swift_allocObject();
    *(v67 + 16) = v138;
    (v62)(v67 + v59, v132, v61);
    sub_22081FE3C(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v68 = v92;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v91 + 8))(v65, v68);
  }

  v69 = sub_2208868DC();
  if ([v69 respondsToSelector_])
  {
    v70 = v133;
    v71 = [v69 parentIssue];
    swift_unknownObjectRelease();
    if (v71)
    {
      v72 = [v71 identifier];
      sub_22089136C();

      v73 = v87;
      sub_22088A0FC();
      sub_22081FE3C(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
      v74 = v89;
      sub_2208872CC();

      (*(v88 + 8))(v73, v74);
    }
  }

  else
  {
    v70 = v133;
    swift_unknownObjectRelease();
  }

  sub_220454720(0);
  v75 = v98;
  sub_22088FF7C();
  v76 = v97;
  sub_22088FF6C();
  sub_2208868DC();
  (*(v101 + 8))(v76, v103);
  sub_22088FF8C();
  v77 = v96;
  sub_22088FFEC();
  swift_unknownObjectRelease();
  (*(v102 + 8))(v75, v104);
  v78 = v105;
  sub_220605740();
  (*(v99 + 8))(v77, v100);
  v79 = v130;
  v80 = swift_allocObject();
  *(v80 + 16) = v138;
  v81 = v134;
  (v134)(v80 + v79, v132, v70);
  sub_22081FE3C(&unk_2812982A0, MEMORY[0x277D68F38], MEMORY[0x277D68F30]);
  v82 = v107;
  sub_220886F1C();

  (*(v106 + 8))(v78, v82);
  sub_2208868DC();
  swift_getObjectType();
  v83 = v109;
  sub_2206F69A0(*(v128 + 128));
  swift_unknownObjectRelease();
  v84 = swift_allocObject();
  *(v84 + 16) = v138;
  (v81)(v84 + v79, v132, v133);
  sub_22081FE3C(&qword_281298370, MEMORY[0x277D68B40], MEMORY[0x277D68B38]);
  v85 = v111;
  sub_220886F1C();

  (*(v110 + 8))(v83, v85);
  sub_220889DEC();
  sub_22081FE3C(&qword_281298310, MEMORY[0x277D68D38], MEMORY[0x277D68D30]);
  memset(v139, 0, sizeof(v139));
  sub_220886F3C();
  return sub_22081F818(v139, sub_22055F87C);
}

uint64_t sub_22081C0C8(uint64_t a1, __n128 a2)
{
  v4 = sub_2208899AC();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088971C();
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v2 + 24);
  sub_2205E9B98(0);
  sub_22081FE3C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();
  v47 = *(v2 + 16);
  v19 = sub_22081FE3C(&qword_281293DE0, type metadata accessor for StockFeedModel, &unk_2208B4CC8);
  v46 = a1;
  v48 = v18;
  v49 = v14;
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v39 = v15;
  v40 = v7;
  v41 = v4;
  v21 = v12;
  sub_22088970C();
  sub_2204D067C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v23 = v22;
  v24 = sub_220886F8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v42 = v19;
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v36 = v26;
  v38 = v23;
  v28 = swift_allocObject();
  v35 = xmmword_220899360;
  *(v28 + 16) = xmmword_220899360;
  v29 = *MEMORY[0x277CEAD10];
  v30 = *(v25 + 104);
  v30(v28 + v27, v29, v24);
  sub_22081FE3C(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v37 = "_TtC8StocksUI16StockFeedTracker";
  v31 = v44;
  sub_2208872CC();

  (*(v45 + 8))(v21, v31);
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result <= 0x7FFFFFFF)
  {
    v32 = v40;
    sub_22088999C();
    v33 = swift_allocObject();
    *(v33 + 16) = v35;
    v30(v33 + v27, v29, v24);
    sub_22081FE3C(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
    v34 = v41;
    sub_2208872CC();

    (*(v43 + 8))(v32, v34);
    return (*(v39 + 8))(v48, v49);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22081C600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v25 = a2;
  v26 = a1;
  v27 = sub_22088990C();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_220889C2C();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220889A6C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208898FC();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v25, v11, v19);
  sub_2208898EC();
  sub_22081FE3C(&qword_27CF5A260, MEMORY[0x277D68880], MEMORY[0x277D68878]);
  sub_220886F1C();
  (*(v17 + 8))(v21, v16);
  (*(v3 + 16))(v6, v29, v27);
  sub_220889C1C();
  sub_22081FE3C(&qword_27CF5A268, MEMORY[0x277D68B60], MEMORY[0x277D68B58]);
  v22 = v28;
  sub_220886F1C();
  (*(v7 + 8))(v10, v22);
  sub_220889D7C();
  sub_22081FE3C(&unk_27CF5A270, MEMORY[0x277D68CC0], MEMORY[0x277D68CB8]);
  memset(v30, 0, sizeof(v30));
  sub_220886F3C();
  return sub_22081F818(v30, sub_22055F87C);
}

uint64_t sub_22081C9FC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  sub_2204B3CFC(v0 + OBJC_IVAR____TtC8StocksUI16StockFeedTracker_onDeckViewAction, &qword_281298570, MEMORY[0x277D68300]);
  v1 = OBJC_IVAR____TtC8StocksUI16StockFeedTracker_stock;
  v2 = sub_22088685C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI16StockFeedTracker_feedDismissingManager));
  return v0;
}

uint64_t sub_22081CAF0()
{
  sub_22081C9FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockFeedTracker(uint64_t a1)
{
  result = qword_281291FD0;
  if (!qword_281291FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22081CB9C(uint64_t a1)
{
  sub_2204D067C(319, &qword_281298570, MEMORY[0x277D68300], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22088685C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22081CD5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  (a3)(0, a2);
  sub_22081FE3C(a4, a5, a6);
  return sub_22088730C();
}

uint64_t sub_22081CE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v228 = a5;
  v248 = a4;
  v254 = a3;
  v261 = a1;
  v220 = sub_22088993C();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v5);
  v218 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_22088516C();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242, v7);
  v240 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_22088824C();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205, v9);
  v203 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_22088944C();
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v11);
  v217 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v234 = &v190 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v229 = &v190 - v18;
  v236 = sub_220886A4C();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236, v19);
  v215 = &v190 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v227 = &v190 - v23;
  v24 = sub_22088943C();
  v239 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v216 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v230 = &v190 - v29;
  v226 = sub_22088A04C();
  v224 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v30);
  v225 = &v190 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_22088FEFC();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223, v32);
  v221 = &v190 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_22088A10C();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v34);
  v191 = &v190 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_2208891DC();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v36);
  v194 = &v190 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_2208898CC();
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v38);
  v212 = &v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_220889BFC();
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211, v40);
  v209 = &v190 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2208895EC();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v42);
  v206 = &v190 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_22088698C();
  v244 = *(v245 - 8);
  MEMORY[0x28223BE20](v245, v44);
  v246 = &v190 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_2208899AC();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233, v46);
  v231 = &v190 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328(0);
  v249 = v48;
  v49 = *(v48 - 1);
  MEMORY[0x28223BE20](v48, v50);
  v52 = &v190 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v54 = v53;
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v56);
  v58 = &v190 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22088971C();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v61);
  v63 = &v190 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v253 = result;
  if (!result)
  {
    return result;
  }

  v202 = v24;
  sub_22081F878(0, &qword_281297B40, MEMORY[0x277D6DA48]);
  v66 = v65;
  sub_22088BC0C();
  v243 = v66;
  sub_22088BBEC();
  v67 = sub_22081FE3C(&qword_281293DE0, type metadata accessor for StockFeedModel, &unk_2208B4CC8);
  v68 = sub_22088E7FC();
  if (v68 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v68 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_22088970C();
  v69 = *(v49 + 8);
  v200 = v49 + 8;
  v198 = v69;
  v69(v52, v249);
  v70 = *(v55 + 8);
  v199 = v55 + 8;
  v197 = v70;
  v70(v58, v54);
  sub_2204D067C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v201 = v67;
  v72 = v71;
  v73 = sub_220886F8C();
  v74 = *(v73 - 8);
  v75 = *(v74 + 72);
  v76 = *(v74 + 80);
  v77 = (v76 + 32) & ~v76;
  v257 = v72;
  v258 = v75;
  v250 = v76;
  v78 = swift_allocObject();
  v260 = xmmword_220899360;
  *(v78 + 16) = xmmword_220899360;
  v79 = *MEMORY[0x277CEAD18];
  v80 = *(v74 + 104);
  v247 = v77;
  v255 = v79;
  v259 = v73;
  v256 = v74 + 104;
  v251 = v80;
  v80(v78 + v77);
  sub_22081FE3C(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v252 = "_TtC8StocksUI16StockFeedTracker";
  sub_220886F1C();

  (*(v60 + 8))(v63, v59);
  sub_22088BC0C();
  sub_22088BBEC();
  v81 = sub_22088E80C();
  if (v81 < 0xFFFFFFFF80000000)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v81 > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v82 = v231;
  sub_22088999C();
  v198(v52, v249);
  v197(v58, v54);
  v83 = v247;
  v84 = swift_allocObject();
  *(v84 + 16) = v260;
  v85 = v251;
  v251(v84 + v83, v255, v259);
  sub_22081FE3C(&qword_2812983F0, MEMORY[0x277D68928], MEMORY[0x277D68920]);
  v86 = v233;
  sub_220886F1C();

  (*(v232 + 8))(v82, v86);
  v87 = v244;
  v88 = v246;
  v89 = v245;
  (*(v244 + 16))(v246, v248, v245);
  v90 = (*(v87 + 88))(v88, v89);
  if (v90 == *MEMORY[0x277D69850])
  {
    (*(v87 + 96))(v88, v89);
    v249 = *v88;
    ObjectType = swift_getObjectType();
    v92 = v206;
    sub_2206F61F0(v206);
    v93 = swift_allocObject();
    *(v93 + 16) = v260;
    v85(v93 + v83, v255, v259);
    sub_22081FE3C(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
    v94 = v208;
    sub_220886F1C();

    (*(v207 + 8))(v92, v94);
    v95 = *(v253 + 128);
    v96 = v209;
    v245 = ObjectType;
    sub_2206F69A0(v95);

    v97 = swift_allocObject();
    *(v97 + 16) = v260;
    v98 = v255;
    v85(v97 + v83, v255, v259);
    sub_22081FE3C(&qword_281298370, MEMORY[0x277D68B40], MEMORY[0x277D68B38]);
    v99 = v211;
    sub_220886F1C();

    (*(v210 + 8))(v96, v99);
    v100 = v212;
    sub_22057BB68();
    v101 = swift_allocObject();
    *(v101 + 16) = v260;
    v102 = v101 + v83;
    v103 = v98;
    v251(v102, v98, v259);
    sub_22081FE3C(&qword_281298430, MEMORY[0x277D68860], MEMORY[0x277D68858]);
    v104 = v214;
    v105 = v253;
    sub_220886F1C();
    v106 = v249;

    (*(v213 + 8))(v100, v104);
    v107 = [v106 sourceChannel];
    if (v107)
    {
      v108 = v107;
      __swift_project_boxed_opaque_existential_1((v105 + 88), *(v105 + 112));
      v109 = v194;
      sub_2206EC95C(v108, v110);
      v111 = v247;
      v112 = swift_allocObject();
      *(v112 + 16) = v260;
      v251(v112 + v111, v103, v259);
      sub_22081FE3C(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
      v113 = v196;
      sub_220886F1C();
      swift_unknownObjectRelease();

      v106 = v249;
      (*(v195 + 8))(v109, v113);
    }

    v114 = v259;
    if ([v106 respondsToSelector_])
    {
      v115 = [v106 parentIssue];
      if (v115)
      {
        v116 = v115;
        v117 = [v115 identifier];
        sub_22089136C();

        v118 = v191;
        sub_22088A0FC();
        sub_22081FE3C(&qword_281298280, MEMORY[0x277D69030], MEMORY[0x277D69028]);
        v119 = v193;
        sub_2208872CC();

        (*(v192 + 8))(v118, v119);
      }
    }

    v120 = v222;
    v121 = v221;
    v122 = v223;
    (*(v222 + 104))(v221, *MEMORY[0x277D32D70], v223);
    sub_22081FE3C(&unk_281296970, MEMORY[0x277D32D88], MEMORY[0x277D32D90]);
    v123 = sub_2208912FC();
    (*(v120 + 8))(v121, v122);
    v125 = (v224 + 8);
    v126 = v225;
    if (v123)
    {
      sub_2206F722C(v245, v124);
    }

    else
    {
      sub_220605740();
    }

    v159 = v247;
    v160 = swift_allocObject();
    *(v160 + 16) = v260;
    v161 = v251;
    v251(v160 + v159, v255, v114);
    sub_22081FE3C(&unk_2812982A0, MEMORY[0x277D68F38], MEMORY[0x277D68F30]);
    v162 = v226;
    sub_220886F1C();

    (*v125)(v126, v162);
    v163 = v253;
    __swift_project_boxed_opaque_existential_1((v253 + 216), *(v253 + 240));
    v164 = v227;
    sub_2208863EC();
    v165 = sub_2208869AC();
    v166 = MEMORY[0x277D68560];
    if ((v165 & 1) == 0)
    {
      v166 = MEMORY[0x277D68558];
    }

    v167 = v237;
    v168 = v229;
    v169 = v238;
    (*(v237 + 104))(v229, *v166, v238);
    (*(v167 + 16))(v234, v168, v169);
    v170 = v230;
    sub_22088942C();
    (*(v167 + 8))(v168, v169);
    v171 = v164;
    v172 = v259;
    (*(v235 + 8))(v171, v236);
    v173 = swift_allocObject();
    *(v173 + 16) = v260;
    v161(v173 + v159, v255, v172);
    sub_22081FE3C(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
    v174 = v202;
    sub_220886F1C();

    (*(v239 + 8))(v170, v174);
    v175 = OBJC_IVAR____TtC8StocksUI16StockFeedTracker_feedDismissingManager;
    v176 = sub_22088691C();
    if (v177)
    {
      v178 = v176;
      v179 = v177;
      __swift_project_boxed_opaque_existential_1((v163 + v175), *(v163 + v175 + 24));
      v180 = sub_22088FDBC();
      sub_22056F244(v178, v179, v180);

      v181 = v203;
      sub_22088823C();
      v182 = v247;
      v183 = swift_allocObject();
      *(v183 + 16) = v260;
      v161(v183 + v182, v255, v172);
      sub_22081FE3C(&unk_27CF5A280, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
      v184 = v205;
      sub_220886F1C();

      (*(v204 + 8))(v181, v184);
    }

    sub_22052EC94(0);
    *&v260 = *(v185 + 48);
    sub_220889D5C();
    v186 = v240;
    sub_22088BC1C();
    sub_22081FE3C(&qword_281298338, MEMORY[0x277D68C90], MEMORY[0x277D68C88]);
    sub_220886ECC();
    v187 = *(v241 + 8);
    v188 = v242;
    v187(v186, v242);
    sub_22088BBFC();
    sub_220886EDC();
    swift_unknownObjectRelease();

    v187(v186, v188);
    v189 = sub_220885CDC();
    return (*(*(v189 - 8) + 8))(&v246[v260], v189);
  }

  v127 = v83;
  v128 = v259;
  if (v90 != *MEMORY[0x277D69840])
  {
LABEL_32:
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  (*(v244 + 96))(v88, v245);
  v249 = *v88;
  swift_getObjectType();
  v129 = v218;
  sub_2206F6C58();
  v130 = swift_allocObject();
  *(v130 + 16) = v260;
  v251(v130 + v83, v255, v128);
  sub_22081FE3C(&qword_27CF58950, MEMORY[0x277D688C8], MEMORY[0x277D688C0]);
  v131 = v220;
  sub_220886F1C();

  (*(v219 + 8))(v129, v131);
  v132 = v253;
  __swift_project_boxed_opaque_existential_1((v253 + 216), *(v253 + 240));
  v133 = v215;
  sub_2208863EC();
  v134 = sub_2208869AC();
  v135 = v237;
  v136 = MEMORY[0x277D68560];
  if ((v134 & 1) == 0)
  {
    v136 = MEMORY[0x277D68558];
  }

  v137 = v217;
  v138 = v238;
  (*(v237 + 104))(v217, *v136, v238);
  (*(v135 + 16))(v234, v137, v138);
  v139 = v216;
  sub_22088942C();
  (*(v135 + 8))(v137, v138);
  (*(v235 + 8))(v133, v236);
  v140 = swift_allocObject();
  *(v140 + 16) = v260;
  v251(v140 + v83, v255, v259);
  sub_22081FE3C(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v141 = v202;
  sub_220886F1C();
  v142 = v249;

  (*(v239 + 8))(v139, v141);
  sub_22046DA2C(v132 + OBJC_IVAR____TtC8StocksUI16StockFeedTracker_feedDismissingManager, v262);
  v143 = [v142 respondsToSelector_];
  v144 = v242;
  v145 = v241;
  if (v143)
  {
    v146 = [v142 dismissingIdentifier];
    if (v146)
    {
      v147 = v146;
      v148 = sub_22089136C();
      v150 = v149;

      v151 = v145;
      __swift_project_boxed_opaque_existential_1(v262, v262[3]);
      v152 = sub_22088FDBC();
      sub_22056F244(v148, v150, v152);

      v153 = v203;
      sub_22088823C();
      v154 = swift_allocObject();
      *(v154 + 16) = v260;
      v251(v154 + v127, v255, v259);
      sub_22081FE3C(&unk_27CF5A280, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
      v155 = v205;
      sub_220886F1C();

      v156 = v153;
      v145 = v151;
      (*(v204 + 8))(v156, v155);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v262);
  sub_220889E4C();
  v157 = v240;
  sub_22088BC1C();
  sub_22081FE3C(&unk_27CF593B0, MEMORY[0x277D68D80], MEMORY[0x277D68D78]);
  sub_220886ECC();
  v158 = *(v145 + 8);
  v158(v157, v144);
  sub_22088BBFC();
  sub_220886EDC();

  swift_unknownObjectRelease();
  return (v158)(v157, v144);
}

uint64_t sub_22081EEC8()
{
  v0 = sub_22088516C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088933C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22083A4D4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    sub_22088932C();
    sub_22081FE3C(&qword_281298518, MEMORY[0x277D683F0], MEMORY[0x277D683E8]);
    sub_220886F1C();
    sub_220889CDC();
    v13 = v5;
    sub_22081F878(0, &qword_281297B40, MEMORY[0x277D6DA48]);
    v12 = v9;
    sub_22088BC1C();
    sub_22081FE3C(&unk_281298350, MEMORY[0x277D68C18], MEMORY[0x277D68C10]);
    sub_220886ECC();
    v11 = *(v1 + 8);
    v11(v4, v0);
    sub_22088BBFC();
    sub_220886EDC();
    v11(v4, v0);
    return (*(v6 + 8))(v12, v13);
  }

  __break(1u);
  return result;
}

char *sub_22081F1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v61 = a8;
  v51 = a7;
  v53 = a5;
  v50 = a4;
  v56 = a2;
  v59 = a10;
  v60 = a9;
  v57 = a13;
  v58 = a12;
  v54 = sub_220889B0C();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v22);
  v52 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a15;
  v67 = a17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  (*(*(a15 - 8) + 32))(boxed_opaque_existential_1, a6, a15);
  v64[3] = a16;
  v64[4] = a18;
  v25 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(a16 - 8) + 32))(v25, a11, a16);
  v26 = swift_allocObject();
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v28 = MEMORY[0x28223BE20](v27, v27);
  v30 = (&v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v32 = *v30;
  v63[3] = type metadata accessor for AnalyticsChannelDataFactory();
  v63[4] = &off_28341D2B0;
  v63[0] = v32;
  v33 = OBJC_IVAR____TtC8StocksUI16StockFeedTracker_onDeckViewAction;
  v34 = sub_22088916C();
  (*(*(v34 - 8) + 56))(&v26[v33], 1, 1, v34);
  v35 = v56;
  *(v26 + 2) = a1;
  *(v26 + 3) = v35;
  v36 = v50;
  *(v26 + 4) = a3;
  *(v26 + 5) = v36;
  sub_22046DA2C(a5, (v26 + 48));
  sub_22046DA2C(v63, (v26 + 88));
  v37 = v51;
  *(v26 + 16) = v51;
  sub_22046DA2C(v61, (v26 + 136));
  sub_22046DA2C(v60, (v26 + 176));
  sub_22046DA2C(v59, (v26 + 216));
  sub_22046DA2C(v64, (v26 + 256));
  v38 = OBJC_IVAR____TtC8StocksUI16StockFeedTracker_stock;
  v39 = sub_22088685C();
  v40 = *(v39 - 8);
  (*(v40 + 16))(&v26[v38], v58, v39);
  sub_22046DA2C(v57, &v26[OBJC_IVAR____TtC8StocksUI16StockFeedTracker_feedDismissingManager]);

  v41 = v37;
  v42 = v52;
  sub_220889AFC();
  sub_2204D067C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v43 = sub_220886F8C();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_220899360;
  (*(v44 + 104))(v46 + v45, *MEMORY[0x277CEAD10], v43);
  sub_22081FE3C(&qword_2812983A0, MEMORY[0x277D68A70], MEMORY[0x277D68A68]);
  v47 = v54;
  sub_2208872CC();

  (*(v55 + 8))(v42, v47);
  sub_22088B70C();

  sub_22088868C();

  __swift_project_boxed_opaque_existential_1(v62, v62[3]);

  sub_2208882EC();

  __swift_destroy_boxed_opaque_existential_1(v57);
  (*(v40 + 8))(v58, v39);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v65);
  return v26;
}

uint64_t sub_22081F818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22081F878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_22081FE3C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_22081FE3C(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22081F96C(uint64_t a1)
{
  v3 = *(sub_22088698C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_22055CF9C(0);
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_22055D328(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_220454720(0);
  v14 = *(v1 + v11);
  v15 = v1 + ((v11 + *(*(v13 - 8) + 80) + 8) & ~*(*(v13 - 8) + 80));

  return sub_22081AD84(a1, v1 + v4, v1 + v7, v1 + v10, v14, v15, v12);
}

uint64_t sub_22081FB10(uint64_t a1)
{
  v3 = *(sub_22088CE3C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_220889B9C() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_220818508(a1, v1 + v4, v7, v8);
}

uint64_t sub_22081FBF4()
{
  type metadata accessor for StockEarningsModel(0);
  sub_22081F878(0, &qword_281297B40, MEMORY[0x277D6DA48]);

  return sub_22081EEC8();
}

uint64_t sub_22081FCE4(uint64_t a1)
{
  sub_22081F878(0, &qword_281297B40, MEMORY[0x277D6DA48]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_22088698C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_22088FEFC() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_22081CE20(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_22081FE3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22081FE84()
{
  v1 = OBJC_IVAR____TtC8StocksUI28ComputeAdsEnabledStartupTask_group;
  v2 = sub_22088885C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI28ComputeAdsEnabledStartupTask_featureAvailability));

  return swift_deallocClassInstance();
}

uint64_t static StartupTaskGroup.computeAdsEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281298838 != -1)
  {
    swift_once();
  }

  v2 = sub_22088885C();
  v3 = __swift_project_value_buffer(v2, qword_281298840);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_220820198(uint64_t a1, uint64_t a2)
{
  sub_220889EDC();
  sub_2208203E4(&qword_27CF5A2A0, MEMORY[0x277D68E10], MEMORY[0x277D68E08]);
  sub_220886F1C();
  sub_220889EAC();
  memset(v3, 0, sizeof(v3));
  sub_2208203E4(&qword_27CF5A298, MEMORY[0x277D68DF0], MEMORY[0x277D68DE8]);

  sub_220886F3C();

  return sub_22056D130(v3);
}

uint64_t sub_2208202D4()
{
  sub_220889EDC();
  sub_2208203E4(&qword_27CF5A2A0, MEMORY[0x277D68E10], MEMORY[0x277D68E08]);
  return sub_220886EAC();
}

uint64_t sub_22082036C()
{
  sub_220889EAC();
  sub_2208203E4(&qword_27CF5A298, MEMORY[0x277D68DF0], MEMORY[0x277D68DE8]);
  return sub_2208872EC();
}

uint64_t sub_2208203E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220820444()
{
  if (*v0)
  {
    return 0x6157657461657263;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_220820494(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if ((*a2 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2208204B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_22088ACDC();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D6D390];
  if (!v3)
  {
    v6 = MEMORY[0x277D6D3A0];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_22082053C(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_2208877BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088743C();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v33 = v10;
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v33 - v13;
  v15 = v1[12];
  v35 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v15);
  v16 = MEMORY[0x277D2FBB0];
  sub_220821338(0, &unk_27CF5A400, MEMORY[0x277D2FBB0], MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_220899360;
  sub_2208877AC();
  aBlock[0] = v17;
  sub_220820FA4(&qword_27CF599B0, 255, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
  sub_220821338(0, &qword_27CF5A410, v16, MEMORY[0x277D83940]);
  sub_22055F7F4();
  sub_2208923FC();
  sub_2208875FC();
  (*(v4 + 8))(v7, v3);
  v18 = sub_220820A0C(v14, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v20 = Strong, sub_22088810C(), sub_220820FA4(&qword_27CF5A2B0, 255, MEMORY[0x277D30298], MEMORY[0x277D30290]), v21 = sub_22088ADFC(), v20, !v21) || (v21, !sub_220820FEC(v14)))
  {
    __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
    sub_220887F0C();
    goto LABEL_7;
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_7:

    v25 = v37;
    v31 = v38;
    return (*(v25 + 8))(v14, v31);
  }

  v23 = v22;
  v25 = v37;
  v24 = v38;
  v26 = v34;
  (*(v37 + 16))(v34, v14, v38);
  v27 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v28 = (v33 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  (*(v25 + 32))(v29 + v27, v26, v24);
  *(v29 + v28) = v18;
  aBlock[4] = sub_220821278;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_51;
  v30 = _Block_copy(aBlock);

  [v23 dismissViewControllerAnimated:1 completion:v30];
  _Block_release(v30);

  v31 = v24;
  return (*(v25 + 8))(v14, v31);
}

uint64_t sub_220820A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_220889ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v32 - v11;
  v13 = sub_22088743C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, v13, v16);
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 == *MEMORY[0x277D2F978])
  {
LABEL_2:
    (*(v14 + 8))(v18, v13);
LABEL_5:
    v21 = *(a2 + 64);

    return v21;
  }

  if (v19 == *MEMORY[0x277D2F968])
  {
    (*(v14 + 96))(v18, v13);
    v20 = sub_220884E9C();
    (*(*(v20 - 8) + 8))(v18, v20);
    goto LABEL_5;
  }

  if (v19 == *MEMORY[0x277D2F960])
  {
    (*(v14 + 96))(v18, v13);
    sub_220786F34(0);
    v24 = 48;
  }

  else
  {
    if (v19 != *MEMORY[0x277D2F970])
    {
      if (v19 != *MEMORY[0x277D2F958])
      {
        if (v19 == *MEMORY[0x277D2F950])
        {
          (*(v14 + 96))(v18, v13);

          sub_220786FA0(0);
          sub_22047C4E4(&v18[*(v30 + 48)]);
          goto LABEL_5;
        }

        if (v19 != *MEMORY[0x277D2F948] && v19 != *MEMORY[0x277D2F940])
        {
          v21 = *(a2 + 64);
          v31 = *(v14 + 8);

          v31(v18, v13);
          return v21;
        }
      }

      goto LABEL_2;
    }

    (*(v14 + 96))(v18, v13);

    sub_220786E8C(0);
    v24 = 64;
  }

  v25 = *(v23 + v24);
  v26 = sub_220887C9C();
  (*(*(v26 - 8) + 8))(&v18[v25], v26);
  v21 = sub_2208872FC();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = sub_2208880FC();

    if (v29)
    {
      swift_getObjectType();
      FCHeadlineProviding.referringArticleData2()();
      swift_unknownObjectRelease();
      (*(v5 + 32))(v12, v8, v4);
      sub_220820FA4(&qword_27CF5A2B8, 255, MEMORY[0x277D68A10], MEMORY[0x277D68A08]);
      sub_2208872CC();
      (*(v5 + 8))(v12, v4);
    }
  }

  return v21;
}

uint64_t sub_220820ED4()
{
  MEMORY[0x223D8B910](v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_220820FA4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_220820FEC(uint64_t a1)
{
  v2 = sub_22088743C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 != *MEMORY[0x277D2F978])
  {
    if (v8 == *MEMORY[0x277D2F968])
    {
      (*(v3 + 96))(v7, v2);
      v9 = sub_220884E9C();
      (*(*(v9 - 8) + 8))(v7, v9);
      return 0;
    }

    if (v8 == *MEMORY[0x277D2F960])
    {
      (*(v3 + 96))(v7, v2);

      sub_220786F34(0);
      v12 = *(v11 + 48);
    }

    else
    {
      if (v8 != *MEMORY[0x277D2F970])
      {
        if (v8 != *MEMORY[0x277D2F958])
        {
          v15 = v8 == *MEMORY[0x277D2F948];
          (*(v3 + 8))(v7, v2);
          return v15;
        }

        goto LABEL_2;
      }

      (*(v3 + 96))(v7, v2);

      sub_220786E8C(0);
      v12 = *(v13 + 64);
    }

    v14 = sub_220887C9C();
    (*(*(v14 - 8) + 8))(&v7[v12], v14);
    return 1;
  }

LABEL_2:
  (*(v3 + 8))(v7, v2);
  return 1;
}

uint64_t sub_220821278()
{
  sub_22088743C();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  return sub_220887F0C();
}

void sub_220821338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Stock.joinedSymbolAndStockName.getter(__n128 a1)
{
  v5 = sub_22088684C();

  MEMORY[0x223D89680](548913696, 0xA400000000000000);

  v1 = sub_2208867BC();
  v3 = v2;

  MEMORY[0x223D89680](v1, v3);

  return v5;
}

uint64_t sub_220821490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedPage(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_220547CD4);
}

uint64_t sub_2208214E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StockFeedPage(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_220547D40);
}

uint64_t type metadata accessor for StockFeedViewerPage(uint64_t a1)
{
  result = qword_28128F998;
  if (!qword_28128F998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22082159C(uint64_t a1)
{
  v2 = type metadata accessor for StockFeedPage(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = sub_22088685C();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2208216B0()
{
  v1 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205CC630(v0, v8);
  sub_220615770(v8, v4);
  v9 = sub_22088677C();
  sub_2206157D4(v4);
  return v9;
}

uint64_t sub_220821794(uint64_t a1, uint64_t a2)
{
  v4 = sub_220821A04(&qword_28128F9D8, &unk_2208B9A44);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2208217FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - v10;
  sub_22063C5E4(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  sub_2205CC630(a1, v15);
  sub_2205CC630(a2, &v15[v17]);
  sub_220615770(v15, v11);
  sub_220615770(&v15[v17], v7);
  LOBYTE(a2) = MEMORY[0x223D7E940](v11, v7);
  sub_2206157D4(v7);
  sub_2206157D4(v11);
  return a2 & 1;
}

uint64_t sub_220821A04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockFeedViewerPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220821A48()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_220821AB4()
{
  if (qword_281298E78 != -1)
  {
    swift_once();
  }

  sub_220821BC8(&qword_27CF5A2C8, &unk_2208B9B74);
  sub_220886C6C();
  swift_getObjectType();
  return sub_220889D4C();
}

uint64_t sub_220821BC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WelcomeInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220821C08(uint64_t a1)
{
  v2 = v1;
  v23 = sub_2204FA2D0;
  v4 = MEMORY[0x277D83D88];
  sub_2204D06E0(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v23 - v7;
  sub_2204D06E0(0, &unk_281299810, type metadata accessor for ForYouFeedRouteModel, v4);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ForYouFeedRouteModel(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2[5];
  ObjectType = swift_getObjectType();
  sub_2204FA2D0(0);
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v24 = 0;
  sub_220714854(a1, v8, &v24, ObjectType, v18);
  sub_220822B48(v8, &unk_281297E50, v23);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_220822B48(v12, &unk_281299810, type metadata accessor for ForYouFeedRouteModel);
    return 0;
  }

  else
  {
    sub_22071B210(v12, v17);
    __swift_project_boxed_opaque_existential_1(v2 + 6, v2[9]);
    v22 = sub_2207C6894(v17);
    sub_220822A34(v17, type metadata accessor for ForYouFeedRouteModel);
    return v22;
  }
}

void sub_220821EC4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = [Strong presentedViewController];

    if (v4)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        [v3 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

uint64_t sub_220821F80()
{
  sub_22054B9F8((v0 + 2));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_220821FD8(uint64_t a1)
{
  sub_2204D06E0(0, &qword_281298570, MEMORY[0x277D68300], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_2208871DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 88), *(a1 + 112));
  *v10 = 0x656E696C64616568;
  v10[1] = 0xE800000000000000;
  (*(v7 + 104))(v10, *MEMORY[0x277CEAE48], v6);
  sub_2208872DC();
  (*(v7 + 8))(v10, v6);
  v12 = *MEMORY[0x277D682D0];
  v13 = sub_22088916C();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v5, v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  v15 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_onDeckViewAction;
  swift_beginAccess();
  sub_220744B60(v5, v11 + v15);
  swift_endAccess();
  return result;
}

void *sub_220822224(uint64_t a1, uint64_t a2)
{
  v3 = sub_22089030C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if ((sub_22088F0DC() & 1) != 0 && (v9 = [v8 traitCollection], v10 = objc_msgSend(v9, sel_horizontalSizeClass), v9, v10 == 1))
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
      v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      (*(v4 + 32))(v12 + v11, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      swift_unknownObjectRetain();
      sub_220888FEC();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2208223F4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v60 = a4;
  v61 = a3;
  v59 = a2;
  v5 = sub_2208877BC();
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088743C();
  v57 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220884E9C();
  v58 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for ForYouFeedRouteModel(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = (&v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v61) = *v61;
  sub_2208229D0(a1, v24);
  if (swift_getEnumCaseMultiPayload())
  {
    v25 = type metadata accessor for ForYouFeedRouteModel;
LABEL_9:
    sub_220822A34(v24, v25);
    v29 = v60;
    goto LABEL_10;
  }

  v50 = v16;
  v51 = v5;
  v27 = v58;
  v26 = v59;
  v52 = v8;
  v53 = v12;
  v54 = v20;
  v55 = v13;
  type metadata accessor for StocksActivity.Article(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for StocksActivity.Article;
    goto LABEL_9;
  }

  v28 = *v24;
  v29 = v60;
  __swift_project_boxed_opaque_existential_1(v60 + 11, v60[14]);
  sub_220740B3C(v26, v30);
  v31 = [v28 contentURL];
  if (v31)
  {
    v49 = v28;
    v59 = a1;
    v32 = v50;
    v33 = v31;
    sub_220884E4C();

    v34 = v27;
    v35 = v54;
    (*(v27 + 32))(v54, v32, v55);
    v36 = v29[19];
    v50 = v29[20];
    v48 = __swift_project_boxed_opaque_existential_1(v29 + 16, v36);
    v37 = MEMORY[0x277D2FBB0];
    sub_2204D06E0(0, &unk_27CF5A400, MEMORY[0x277D2FBB0], MEMORY[0x277D84560]);
    v38 = v56;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_220899360;
    sub_2208877AC();
    v62 = v39;
    sub_220822B00(&qword_27CF599B0, MEMORY[0x277D2FBB0], MEMORY[0x277D2FBC8]);
    sub_2204D06E0(0, &qword_27CF5A410, v37, MEMORY[0x277D83940]);
    sub_22055F7F4();
    v40 = v52;
    v41 = v51;
    sub_2208923FC();
    v42 = v53;
    sub_2208875FC();
    (*(v38 + 8))(v40, v41);
    v43 = v57;
    v44 = (*(v57 + 88))(v42, v9);
    if (v44 == *MEMORY[0x277D2F978] || v44 == *MEMORY[0x277D2F948])
    {
      (*(v43 + 8))(v42, v9);
      v46 = *__swift_project_boxed_opaque_existential_1(v29 + 11, v29[14]);
      v47 = swift_allocObject();
      *(v47 + 16) = v49;
      *(v47 + 24) = v46;
      swift_unknownObjectRetain();

      sub_22088726C();
      swift_unknownObjectRelease();

      (*(v34 + 8))(v35, v55);
    }

    else
    {
      (*(v34 + 8))(v35, v55);
      swift_unknownObjectRelease();
      (*(v43 + 8))(v42, v9);
    }

    a1 = v59;
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_project_boxed_opaque_existential_1(v29 + 6, v29[9]);
  v63 = v61;
  return sub_2207C4374(a1, &v63);
}

uint64_t sub_2208229D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedRouteModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220822A34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_220822A9C()
{
  sub_22089030C();
  v1 = *(v0 + 16);

  return sub_2207F6C50(v1);
}

uint64_t sub_220822B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220822B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204D06E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220822BDC(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v59 = sub_22088516C();
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v3);
  v67 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v68 = &v51 - v7;
  sub_22082378C(0, &qword_281296D68, MEMORY[0x277D2D1D8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v60 = &v51 - v10;
  v11 = sub_2208892CC();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v63 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208890BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088EC8C();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v21 = sub_220889F7C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v74 = sub_2208891AC();
  v64 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22088954C();
  v61 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v26);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088EE3C();
  v70 = v28;
  sub_22088953C();
  sub_22088EE2C();
  sub_220889F6C();
  v72 = v25;
  sub_22088919C();
  v75 = a2;
  sub_22088EE5C();
  Width = CGRectGetWidth(v76);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (Width <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (Width >= 2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22088EE5C();
  Height = CGRectGetHeight(v77);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (Height <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Height < 2147483650.0)
  {
    sub_2208890AC();
    v58 = "_TtC8StocksUI15BannerAdTracker";
    sub_2208237F0(&qword_281298588, MEMORY[0x277D68220], MEMORY[0x277D68218]);
    sub_220886F1C();
    (*(v15 + 8))(v18, v14);
    sub_22082378C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v32 = v31;
    v33 = sub_220886F8C();
    v34 = *(v33 - 8);
    v35 = *(v34 + 72);
    v53 = *(v34 + 80);
    v36 = (v53 + 32) & ~v53;
    v55 = v35;
    v56 = v32;
    v37 = swift_allocObject();
    v69 = xmmword_220899360;
    *(v37 + 16) = xmmword_220899360;
    v38 = *MEMORY[0x277CEAD18];
    v52 = *(v34 + 104);
    v54 = v38;
    v57 = v33;
    v52(v37 + v36, v38, v33);
    sub_2208237F0(&qword_2812984C0, MEMORY[0x277D68600], MEMORY[0x277D685F8]);
    sub_220886F1C();

    v39 = swift_allocObject();
    *(v39 + 16) = v69;
    v40 = v38;
    v41 = v52;
    v52(v39 + v36, v40, v33);
    sub_2208237F0(&qword_281298568, MEMORY[0x277D68320], MEMORY[0x277D68318]);
    sub_220886F1C();

    v42 = v60;
    sub_22088EE6C();
    v43 = sub_22088EC9C();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    v44 = v63;
    sub_2208892BC();
    v45 = swift_allocObject();
    *(v45 + 16) = v69;
    v41(v45 + v36, v54, v57);
    sub_2208237F0(&qword_281298538, MEMORY[0x277D683D0], MEMORY[0x277D683C8]);
    v46 = v66;
    sub_220886F1C();

    (*(v65 + 8))(v44, v46);
    sub_220889C3C();
    v47 = v67;
    sub_22088EE4C();
    sub_22088EE7C();
    v48 = v68;
    sub_2208850CC();
    v49 = *(v62 + 8);
    v50 = v59;
    v49(v47, v59);
    sub_2208237F0(&qword_281298368, MEMORY[0x277D68B70], MEMORY[0x277D68B68]);
    sub_220886ECC();
    v49(v48, v50);
    sub_22088EE4C();
    sub_220886EDC();
    v49(v48, v50);
    (*(v64 + 8))(v72, v74);
    (*(v61 + 8))(v70, v73);
    return;
  }

LABEL_13:
  __break(1u);
}

double sub_2208235B0(uint64_t a1)
{
  v3 = sub_22088EE8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  if (sub_220889D0C())
  {
    (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    (*(v4 + 32))(v9 + v8, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_22088726C();
  }

  return result;
}

void sub_22082371C(uint64_t a1)
{
  v3 = *(sub_22088EE8C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_220822BDC(a1, v4);
}

void sub_22082378C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2208237F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220823838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  (*(v5 + 48))(a1, v5);
  (*(v5 + 160))(a1, v5);
  v6 = sub_22088AB6C();
  v7 = MEMORY[0x277D6D2E8];
  a3[3] = v6;
  a3[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_22088AB5C();
}

uint64_t sub_2208238DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  (*(v5 + 56))(a1, v5);
  (*(v5 + 160))(a1, v5);
  v6 = sub_22088AB6C();
  v7 = MEMORY[0x277D6D2E8];
  a3[3] = v6;
  a3[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_22088AB5C();
}

uint64_t sub_220823980@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208250C0(v3, v18, type metadata accessor for StockSearchModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v20 = v19;
    v29 = v6;
    v21 = a2;
    v22 = *(v19 + 48);
    sub_2204C9FBC(v18, v14, type metadata accessor for StockViewModel);
    v23 = *(v7 + 32);
    v24 = &v18[v22];
    v25 = v29;
    v23(v10, v24, v29);
    v26 = *(v20 + 48);
    sub_2206B99EC(a1, v21);
    sub_2204D61E8(v14, type metadata accessor for StockViewModel);
    v23((v21 + v26), v10, v25);
  }

  else
  {
    sub_2204C9FBC(v18, v14, type metadata accessor for StockViewModel);
    sub_2206B99EC(a1, a2);
    sub_2204D61E8(v14, type metadata accessor for StockViewModel);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_220823C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x28223BE20](a1, a2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208250C0(v3, v5, type metadata accessor for StockSearchModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v11 = *(v10 + 48);
    sub_2204C9FBC(v5, v9, type metadata accessor for StockViewModel);
    v12 = sub_220886A4C();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    sub_2204C9FBC(v5, v9, type metadata accessor for StockViewModel);
  }

  v13 = sub_22088677C();
  sub_2204D61E8(v9, type metadata accessor for StockViewModel);
  return v13;
}

uint64_t sub_220823DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_220495580(&qword_281291EA0, &unk_2208B9D84);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_220823E20()
{
  v1 = v0;
  v2 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208250C0(v1, v5, type metadata accessor for StockSearchModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v11 = *(v10 + 48);
    sub_2204C9FBC(v5, v9, type metadata accessor for StockViewModel);
    v12 = sub_220886A4C();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    sub_2204C9FBC(v5, v9, type metadata accessor for StockViewModel);
  }

  v13 = v9[*(v6 + 36)];
  sub_2204D61E8(v9, type metadata accessor for StockViewModel);
  if (v13 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = MEMORY[0x277D84560];
  sub_22082505C(0, &qword_281299538, MEMORY[0x277D6DB00], MEMORY[0x277D84560]);
  v15 = sub_22088BCCC();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_220899360;
  v19 = (v18 + v17);
  sub_22067957C(0, xmmword_220899360);
  v21 = *(v20 + 48);
  v38 = *(v20 + 64);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_220884CAC();
  v26 = v25;

  *v19 = v24;
  v19[1] = v26;
  v27 = *MEMORY[0x277D6DA78];
  v28 = sub_22088BC8C();
  (*(*(v28 - 8) + 104))(v19 + v21, v27, v28);
  sub_22082505C(0, qword_281299698, MEMORY[0x277D6DAF8], v14);
  v29 = sub_22088BCBC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_220899920;
  v34 = v33 + v32;
  v35 = *(v30 + 104);
  v35(v34, *MEMORY[0x277D6DAD8], v29);
  v35(v34 + v31, *MEMORY[0x277D6DAE0], v29);
  *(v19 + v38) = v33;
  (*(v16 + 104))(v19, *MEMORY[0x277D6DA90], v15);
  return v18;
}

uint64_t sub_2208242C4()
{
  v1 = v0;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v88 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22088685C();
  v5 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v6);
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockSearchModel(0);
  v95 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v97 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v94 = v87 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v91 = v87 - v17;
  v96 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v22 = v87 - v21;
  v23 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v23, v24);
  v92 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v93 = v87 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v89 = v87 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v90 = v87 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = v87 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = v87 - v41;
  sub_22082505C(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_22089B140;
  v98 = v1;
  sub_2208250C0(v1, v22, type metadata accessor for StockSearchModel);
  v100 = v9;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v87[0] = v43;
  if (EnumCaseMultiPayload == 1)
  {
    sub_22049550C(0);
    v46 = *(v45 + 48);
    sub_2204C9FBC(v22, v38, type metadata accessor for StockViewModel);
    v47 = sub_220886A4C();
    (*(*(v47 - 8) + 8))(&v22[v46], v47);
  }

  else
  {
    sub_2204C9FBC(v22, v38, type metadata accessor for StockViewModel);
  }

  sub_2204C9FBC(v38, v42, type metadata accessor for StockViewModel);
  v48 = *(v5 + 16);
  v49 = v8;
  v50 = v101;
  v48(v8, v42, v101);
  v51 = v88;
  sub_2208250C0(&v42[*(v23 + 20)], v88, sub_22045987C);
  v52 = type metadata accessor for StockShareActivityItemSource(0);
  v53 = objc_allocWithZone(v52);
  v99 = v48;
  v87[1] = v5 + 16;
  v48(&v53[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v49, v50);
  sub_2208250C0(v51, &v53[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], sub_22045987C);
  v102.receiver = v53;
  v102.super_class = v52;
  v54 = objc_msgSendSuper2(&v102, sel_init);
  sub_2204D61E8(v51, sub_22045987C);
  v55 = *(v5 + 8);
  v55(v49, v50);
  sub_2204D61E8(v42, type metadata accessor for StockViewModel);
  v57 = sub_22076D084(v54, 0, v56);

  v58 = 0;
  if (v57)
  {
    v58 = sub_22088B17C();
    v59 = MEMORY[0x277D6D630];
    v60 = v98;
    v61 = v91;
    v62 = v87[0];
  }

  else
  {
    v59 = 0;
    v62 = v87[0];
    *(v87[0] + 40) = 0;
    v62[6] = 0;
    v60 = v98;
    v61 = v91;
  }

  v63 = MEMORY[0x277D6D630];
  v62[4] = v57;
  v62[7] = v58;
  v62[8] = v59;
  sub_2208250C0(v60, v61, type metadata accessor for StockSearchModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v65 = *(v64 + 48);
    v66 = v89;
    sub_2204C9FBC(v61, v89, type metadata accessor for StockViewModel);
    v67 = sub_220886A4C();
    (*(*(v67 - 8) + 8))(v61 + v65, v67);
  }

  else
  {
    v66 = v89;
    sub_2204C9FBC(v61, v89, type metadata accessor for StockViewModel);
  }

  v68 = v94;
  v69 = v90;
  sub_2204C9FBC(v66, v90, type metadata accessor for StockViewModel);
  v70 = v101;
  v99(v49, v69, v101);
  sub_2204D61E8(v69, type metadata accessor for StockViewModel);
  v72 = _s5TeaUI15ContextMenuItemC06StocksB0E8copyLink5stockAC0F4Core5StockV_tFZ_0(v49, v71);
  v55(v49, v70);
  v73 = sub_22088B17C();
  v62[12] = v73;
  v62[13] = v63;
  v62[9] = v72;
  sub_2208250C0(v60, v68, type metadata accessor for StockSearchModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v75 = *(v74 + 48);
    v76 = v92;
    sub_2204C9FBC(v68, v92, type metadata accessor for StockViewModel);
    v77 = sub_220886A4C();
    v78 = v68 + v75;
    v63 = MEMORY[0x277D6D630];
    (*(*(v77 - 8) + 8))(v78, v77);
  }

  else
  {
    v76 = v92;
    sub_2204C9FBC(v68, v92, type metadata accessor for StockViewModel);
  }

  v79 = v76;
  v80 = v93;
  sub_2204C9FBC(v79, v93, type metadata accessor for StockViewModel);
  v81 = v101;
  v99(v49, v80, v101);
  sub_2204D61E8(v80, type metadata accessor for StockViewModel);
  v82 = sub_2207E451C(v49);
  v55(v49, v81);
  v62[17] = v73;
  v62[18] = v63;
  v62[14] = v82;
  v83 = v97;
  sub_2208250C0(v60, v97, type metadata accessor for StockSearchModel);
  v84 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v85 = swift_allocObject();
  sub_2204C9FBC(v83, v85 + v84, type metadata accessor for StockSearchModel);
  sub_22088AB2C();
  swift_allocObject();
  return sub_22088AACC();
}

id sub_220824BC8(uint64_t a1)
{
  sub_22045987C(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22088685C();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v43 - v16;
  v46 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v46, v18);
  v45 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v43 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v43 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v43 - v30;
  sub_2208250C0(a1, v17, type metadata accessor for StockSearchModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v43 = a1;
    v32 = v9;
    v33 = v5;
    v35 = *(v34 + 48);
    sub_2204C9FBC(v17, v27, type metadata accessor for StockViewModel);
    v36 = sub_220886A4C();
    v37 = &v17[v35];
    v5 = v33;
    v9 = v32;
    a1 = v43;
    (*(*(v36 - 8) + 8))(v37, v36);
  }

  else
  {
    sub_2204C9FBC(v17, v27, type metadata accessor for StockViewModel);
  }

  sub_2204C9FBC(v27, v31, type metadata accessor for StockViewModel);
  (*(v6 + 16))(v9, v31, v44);
  sub_2204D61E8(v31, type metadata accessor for StockViewModel);
  sub_2208250C0(a1, v13, type metadata accessor for StockSearchModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C(0);
    v39 = *(v38 + 48);
    v40 = v45;
    sub_2204C9FBC(v13, v45, type metadata accessor for StockViewModel);
    v41 = sub_220886A4C();
    (*(*(v41 - 8) + 8))(&v13[v39], v41);
  }

  else
  {
    v40 = v45;
    sub_2204C9FBC(v13, v45, type metadata accessor for StockViewModel);
  }

  type metadata accessor for StockActivityItemsConfiguration();
  sub_2204C9FBC(v40, v23, type metadata accessor for StockViewModel);
  sub_2208250C0(&v23[*(v46 + 20)], v5, sub_22045987C);
  sub_2204D61E8(v23, type metadata accessor for StockViewModel);
  return StockActivityItemsConfiguration.__allocating_init(stock:quote:)(v9, v5);
}

void sub_22082505C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2208250C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220825128(uint64_t a1, uint64_t a2)
{
  v47 = sub_220886A4C();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v45 = &v44 - v9;
  v10 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v44 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v44 - v24;
  sub_2208255E0(0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &v29[*(v30 + 56)];
  sub_2208250C0(a1, v29, type metadata accessor for StockSearchModel);
  sub_2208250C0(a2, v31, type metadata accessor for StockSearchModel);
  type metadata accessor for StockSearchModel(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2204C9FBC(v29, v25, type metadata accessor for StockViewModel);
      sub_2204C9FBC(v31, v21, type metadata accessor for StockViewModel);
      v40 = sub_2204CDC64(v25, v21);
      sub_2204D61E8(v21, type metadata accessor for StockViewModel);
      v17 = v25;
      goto LABEL_12;
    }

    sub_22049550C(0);
    (*(v4 + 8))(v31 + *(v41 + 48), v47);
    sub_2204D61E8(v31, type metadata accessor for StockViewModel);
    goto LABEL_8;
  }

  sub_22049550C(0);
  v33 = *(v32 + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2204D61E8(v31, type metadata accessor for StockViewModel);
    (*(v4 + 8))(&v29[v33], v47);
LABEL_8:
    v40 = 0;
    v17 = v29;
    goto LABEL_12;
  }

  sub_2204C9FBC(v29, v17, type metadata accessor for StockViewModel);
  sub_2204C9FBC(v31, v13, type metadata accessor for StockViewModel);
  v34 = *(v4 + 32);
  v35 = &v29[v33];
  v36 = v45;
  v37 = v47;
  v34(v45, v35, v47);
  v38 = (v31 + v33);
  v39 = v46;
  v34(v46, v38, v37);
  if (sub_2204CDC64(v17, v13))
  {
    v40 = MEMORY[0x223D7EB90](v36, v39);
  }

  else
  {
    v40 = 0;
  }

  v42 = *(v4 + 8);
  v42(v39, v37);
  v42(v36, v37);
  sub_2204D61E8(v13, type metadata accessor for StockViewModel);
LABEL_12:
  sub_2204D61E8(v17, type metadata accessor for StockViewModel);
  return v40 & 1;
}

id sub_220825580()
{
  v1 = *(type metadata accessor for StockSearchModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_220824BC8(v2);
}

void sub_2208255E0(uint64_t a1)
{
  if (!qword_27CF5A2D0)
  {
    type metadata accessor for StockSearchModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A2D0);
    }
  }
}

uint64_t sub_220825644()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC8StocksUI20OnboardingInteractor_personalizedAdsExposureStart;
  v2 = sub_22088516C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingInteractor(uint64_t a1)
{
  result = qword_281299960;
  if (!qword_281299960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22082573C(uint64_t a1)
{
  result = sub_22088516C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2208257D8(uint64_t a1)
{
  v40 = sub_220889EDC();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40, v5);
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v38 - v8;
  v10 = sub_220889EEC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v38 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = v38 - v21;
  sub_22046DA2C(a1, v42);
  sub_220825E0C();
  type metadata accessor for OnboardingPersonalizedAdsStep();
  result = swift_dynamicCast();
  if (result)
  {
    v24 = *(v41 + 57);
    v38[1] = v41;
    if (v24 == 2)
    {
      v38[0] = v1;
      if (qword_2812980E0 != -1)
      {
        swift_once();
      }

      v25 = sub_22088A84C();
      __swift_project_value_buffer(v25, qword_2812980E8);
      v26 = sub_22088A82C();
      v27 = sub_220891AFC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22043F000, v26, v27, "Personalized Ads step completed without user choice. Submitting .unknown for user selection with PersonalizedAdsEngagementEvent", v28, 2u);
        MEMORY[0x223D8B7F0](v28, -1, -1);
      }

      (*(v11 + 104))(v18, *MEMORY[0x277D68E20], v10);
      __swift_project_boxed_opaque_existential_1((v38[0] + 16), *(v38[0] + 40));
      (*(v11 + 16))(v14, v18, v10);
      sub_220889ECC();
      v30 = v39;
      v29 = v40;
      (*(v3 + 16))(v39, v9, v40);
      v31 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v32 = swift_allocObject();
      (*(v3 + 32))(v32 + v31, v30, v29);
      sub_22088726C();

      (*(v3 + 8))(v9, v29);
      return (*(v11 + 8))(v18, v10);
    }

    else
    {
      if (v24)
      {
        v33 = MEMORY[0x277D68E18];
      }

      else
      {
        v33 = MEMORY[0x277D68E28];
      }

      (*(v11 + 104))(v22, *v33, v10);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      (*(v11 + 16))(v18, v22, v10);
      sub_220889ECC();
      v35 = v39;
      v34 = v40;
      (*(v3 + 16))(v39, v9, v40);
      v36 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v37 = swift_allocObject();
      (*(v3 + 32))(v37 + v36, v35, v34);
      sub_22088726C();

      (*(v3 + 8))(v9, v34);
      return (*(v11 + 8))(v22, v10);
    }
  }

  return result;
}

uint64_t sub_220825CE4(uint64_t a1)
{
  sub_22046DA2C(a1, v4);
  sub_220825E0C();
  type metadata accessor for OnboardingPersonalizedAdsStep();
  result = swift_dynamicCast();
  if (result)
  {

    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v3 = off_283424DD8;
    type metadata accessor for OnboardingTracker();
    return v3();
  }

  return result;
}

unint64_t sub_220825D8C(uint64_t a1)
{
  result = sub_220825DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_220825DB4()
{
  result = qword_2812999F0;
  if (!qword_2812999F0)
  {
    type metadata accessor for OnboardingInteractor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812999F0);
  }

  return result;
}

unint64_t sub_220825E0C()
{
  result = qword_281297EF0;
  if (!qword_281297EF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281297EF0);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = sub_220889EDC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_220825EFC(uint64_t a1)
{
  v3 = *(sub_220889EDC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_220820198(a1, v4);
}

uint64_t sub_220825F70(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2208871DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22055F760(0);
  sub_22088E11C();
  if (v20)
  {
    sub_22088731C();
    if (swift_dynamicCast())
    {
      *v8 = 0x7472656C61;
      v8[1] = 0xE500000000000000;
      (*(v5 + 104))(v8, *MEMORY[0x277CEAE50], v4);
      sub_2208872DC();

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    sub_22056D130(&v19);
  }

  sub_220826218(a3, &v19);
  if (v21 > 1u)
  {
    if (v21 == 2)
    {
      return v19;
    }

    v12 = v19;
    v13 = sub_220891C5C();
    v14 = sub_22058A3C0();
    v15 = *(v12 + 104);
    *(v12 + 104) = v14;
    v16 = v14;

    [v13 presentViewController:v16 animated:1 completion:0];
  }

  else if (v21)
  {
    sub_220457328(&v19, v18);
    sub_22046DA2C(v18, v17);
    sub_22088E0CC();
    swift_allocObject();
    sub_22088E07C();
    v11 = sub_220891C5C();
    sub_22088E08C();

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v9 = sub_220891C5C();
    sub_22088E08C();
  }

  return 0;
}

uint64_t sub_2208262A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_220826314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a3, v8);
}

uint64_t sub_220826394(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *), void (*a4)(char *))
{
  v34 = a3;
  v35 = a4;
  v5 = a2(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v30 - v11;
  v13 = sub_22088FE7C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v39 = MEMORY[0x277D84F90];
    sub_220530120(0, v18, 0);
    v19 = v39;
    v20 = (a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
    v21 = *(v6 + 72);
    v31 = (v14 + 32);
    v32 = v21;
    v22 = (v14 + 16);
    v23 = (v14 + 8);
    do
    {
      v24 = v34;
      v34(v20, v12);
      v25 = v33;
      v24(v12, v33);
      (*v31)(v17, v25, v13);
      v35(v12);
      v39 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_220530120((v26 > 1), v27 + 1, 1);
      }

      v37 = v13;
      v38 = sub_220489D84(&unk_2812969A0, MEMORY[0x277D32BB0], MEMORY[0x277D32BA8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      (*v22)(boxed_opaque_existential_1, v17, v13);
      v19 = v39;
      *(v39 + 16) = v27 + 1;
      sub_220457328(&v36, v19 + 40 * v27 + 32);
      (*v23)(v17, v13);
      v20 += v32;
      --v18;
    }

    while (v18);
  }

  return v19;
}

uint64_t sub_220826670(uint64_t a1)
{
  v2 = sub_220489D84(&qword_27CF5A2D8, type metadata accessor for ForYouFeedLayoutSectionDescriptor, &unk_2208BA14C);

  return MEMORY[0x2821D5BC0](a1, v2);
}

double sub_2208266DC(uint64_t a1)
{
  sub_220489D84(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor, &unk_2208BA0FC);

  sub_22088D90C();
  return result;
}

uint64_t sub_220826808()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D270);
  __swift_project_value_buffer(v0, qword_27CF6D270);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2208269B4()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D288);
  __swift_project_value_buffer(v0, qword_27CF6D288);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_220826B60()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D2A0);
  __swift_project_value_buffer(v0, qword_27CF6D2A0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_220826D10()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D2B8);
  __swift_project_value_buffer(v0, qword_27CF6D2B8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

void sub_220826F48(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v58 = *&a3[OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_moreLabel];
  [v58 setFrame_];
  v59 = *&a3[OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_symbolLabel];
  [v59 setFrame_];
  v7 = *&a3[OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_arrowShapeView];
  [v7 setFrame_];
  v8 = [objc_opt_self() bezierPathWithCGPath_];
  v61 = v7;
  v9 = [v7 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  if (v8)
  {
    v11 = v10;
    v12 = [v8 CGPath];
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v10 setPath_];

  v60 = *&a3[OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_topLineView];
  [v60 setFrame_];
  swift_beginAccess();
  sub_22046DA2C(v4 + 16, v63);
  v13 = __swift_project_boxed_opaque_existential_1(v63, v64);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v16 = *v13;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v18 = *MEMORY[0x277D740A8];
  v57 = a3;
  *(inited + 32) = *MEMORY[0x277D740A8];
  v19 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v56 = v18;
  v20 = sub_220891F2C();
  v21 = MEMORY[0x277D740C0];
  *(inited + 40) = v20;
  v22 = *v21;
  *(inited + 64) = v19;
  *(inited + 72) = v22;
  v62 = v4;
  v23 = v16[5];
  v24 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v23);
  v25 = *(v24 + 16);
  v26 = *(v25 + 216);
  v54 = v22;
  v27 = v26(v23, v25);
  v55 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 104) = v55;
  *(inited + 80) = v27;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204E9E74(&qword_28127E6A8, 255, type metadata accessor for Key, &unk_220899024);
  v30 = sub_22089125C();

  v31 = [v28 initWithString:v29 attributes:{v30, 0x80000002208C6B40}];

  [v58 setAttributedText_];
  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_22046DA2C(v62 + 16, v63);
  v32 = __swift_project_boxed_opaque_existential_1(v63, v64);
  sub_22088684C();
  v33 = *v32;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_220899920;
  *(v34 + 32) = v56;
  *(v34 + 40) = sub_220891F2C();
  *(v34 + 64) = v19;
  *(v34 + 72) = v54;
  v36 = v33[5];
  v35 = v33[6];
  __swift_project_boxed_opaque_existential_1(v33 + 2, v36);
  v37 = (*(*(v35 + 16) + 40))(v36);
  *(v34 + 104) = v55;
  *(v34 + 80) = v37;
  sub_2204A5EAC(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v39 = sub_22089132C();

  v40 = sub_22089125C();

  v41 = [v38 initWithString:v39 attributes:v40];

  [v59 setAttributedText_];
  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_2206E3BD0();
  v42 = sub_22089132C();

  [v57 setAccessibilityLabel_];

  v43 = __swift_project_boxed_opaque_existential_1((v62 + 16), *(v62 + 40));
  v44 = *(*v43 + 40);
  v45 = *(*v43 + 48);
  __swift_project_boxed_opaque_existential_1((*v43 + 16), v44);
  v46 = (*(*(v45 + 16) + 40))(v44);
  v47 = [v61 layer];
  objc_opt_self();
  v48 = swift_dynamicCastObjCClassUnconditional();
  v49 = [v46 CGColor];
  [v48 setFillColor_];

  v50 = __swift_project_boxed_opaque_existential_1((v62 + 16), *(v62 + 40));
  v51 = *(*v50 + 40);
  v52 = *(*v50 + 48);
  __swift_project_boxed_opaque_existential_1((*v50 + 16), v51);
  v53 = (*(*(v52 + 16) + 216))(v51);
  [v60 setBackgroundColor_];
}

uint64_t sub_2208276B0()
{
  v0 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v69 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v72 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22088685C();
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v6);
  v68 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v74 = &v56 - v10;
  sub_22046B36C(0);
  v12 = v11;
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BBE2C(0);
  v62 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C(0);
  v21 = v20;
  v64 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v61 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v56 - v26;
  sub_2204A1D20(0);
  v63 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v32;
  sub_2204B9DAC(0);
  v34 = v33 - 8;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x277D84F90];
  (*(v29 + 16))(v32, v77, v63, v36);
  v77 = sub_2204A1D20;
  sub_22046F7C4(&qword_281296EF0, sub_2204A1D20, MEMORY[0x277D6EC68]);
  sub_2208915BC();
  v39 = *(v34 + 44);
  v40 = v38;
  v41 = sub_22046F7C4(&qword_281296EE8, v77, MEMORY[0x277D6EC70]);
  sub_22089199C();
  if (*(v40 + v39) != v78[0])
  {
    v57 = (v64 + 16);
    v76 = (v73 + 8);
    v77 = (v73 + 16);
    v66 = (v70 + 16);
    v73 = v70 + 32;
    v56 = (v64 + 8);
    v71 = v3;
    v67 = v15;
    v60 = v27;
    v59 = v40;
    v58 = v39;
    v65 = v41;
    do
    {
      v64 = sub_2208919BC();
      v43 = *v57;
      (*v57)(v27);
      (v64)(v78, 0);
      sub_2208919AC();
      (v43)(v61, v27, v21);
      sub_22046F7C4(&qword_281297DC0, sub_22046B19C, MEMORY[0x277D6D728]);
      sub_2208915BC();
      v44 = *(v62 + 36);
      sub_22046F7C4(&qword_281297DB8, sub_22046B19C, MEMORY[0x277D6D730]);
      sub_22089199C();
      v45 = MEMORY[0x277D84F90];
      v46 = v72;
      while (*&v19[v44] != v78[0])
      {
        v47 = sub_2208919BC();
        (*v77)(v15);
        v47(v78, 0);
        sub_2208919AC();
        sub_22088AD8C();
        (*v76)(v15, v12);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_2204B3EFC(v46, type metadata accessor for StockListModel);
          }
        }

        else
        {
          v49 = v12;
          v50 = v69;
          sub_2204CDB9C(v46, v69);
          v51 = v68;
          v52 = v75;
          (*v66)(v68, v50, v75);
          sub_2204B3EFC(v50, type metadata accessor for StockListStockModel);
          v53 = *v73;
          (*v73)(v74, v51, v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_22048E1D8(0, *(v45 + 2) + 1, 1, v45);
          }

          v55 = *(v45 + 2);
          v54 = *(v45 + 3);
          v12 = v49;
          if (v55 >= v54 >> 1)
          {
            v45 = sub_22048E1D8((v54 > 1), v55 + 1, 1, v45);
          }

          v15 = v67;
          *(v45 + 2) = v55 + 1;
          v53(&v45[((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v55], v74, v75);
          v46 = v72;
        }

        sub_22089199C();
      }

      sub_2204B3EFC(v19, sub_2204BBE2C);
      v27 = v60;
      (*v56)(v60, v21);
      sub_22048E0F8(v45);
      v40 = v59;
      sub_22089199C();
    }

    while (*(v40 + v58) != v78[0]);
  }

  sub_2204B3EFC(v40, sub_2204B9DAC);
  return v79;
}

void sub_220827F64(double a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  sub_2205124F8(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v203 = &v197 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  *&v207 = &v197 - v9;
  *&v10 = COERCE_DOUBLE(type metadata accessor for QuoteSummaryTimeRange(0));
  v219 = *(v10 - 8);
  v220 = *&v10;
  MEMORY[0x28223BE20](v10, v11);
  v204 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  *&v202 = &v197 - v15;
  *&v206 = COERCE_DOUBLE(sub_220885D4C());
  v201 = *(v206 - 8);
  MEMORY[0x28223BE20](v206, v16);
  v200 = &v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088699C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C31C();
  v24 = v23;
  sub_22088C22C();
  sub_220891A6C();
  v26 = v25;
  sub_22088C31C();
  v28 = v27;
  sub_22088C20C();
  sub_220891A6C();
  v30 = v29;
  v31 = *(*&v2 + 40);
  v221 = v2;
  v32 = __swift_project_boxed_opaque_existential_1((*&v2 + 16), v31);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v33 = **&a1;
  LODWORD(v198) = *(*&a1 + 8);
  v222 = a1;
  v197 = v33;
  if (LOBYTE(v198))
  {
    goto LABEL_17;
  }

  v34 = v33;
  if ((v232 & 1) == 0)
  {
    goto LABEL_12;
  }

  v35 = type metadata accessor for PriceViewModel(0);
  (*(v19 + 16))(v22, *&a1 + *(v35 + 40), v18);
  v36 = (*(v19 + 88))(v22, v18);
  v37 = 2;
  if (v36 != *MEMORY[0x277D69898] && v36 != *MEMORY[0x277D698A0] && v36 != *MEMORY[0x277D69870] && v36 != *MEMORY[0x277D69888] && v36 != *MEMORY[0x277D69878] && v36 != *MEMORY[0x277D69890])
  {
    if (v36 == *MEMORY[0x277D69880])
    {
LABEL_12:
      v37 = 0;
      goto LABEL_13;
    }

    if (v36 != *MEMORY[0x277D69868])
    {
      (*(v19 + 8))(v22, v18);
    }

    v37 = 2;
  }

LABEL_13:
  if (qword_281294078 != -1)
  {
    v196 = v37;
    swift_once();
    v37 = v196;
  }

  v38 = sub_2204BD7B8(*(*&a1 + 48), *(*&a1 + 56), 5, 1, v37, v34);
  if (v39)
  {
    v218 = v38;
    goto LABEL_18;
  }

LABEL_17:
  v218 = *(*&a1 + 64);

LABEL_18:
  v40 = *v32;
  sub_2205124F8(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  v216 = v41;
  inited = swift_initStackObject();
  v215 = xmmword_220899920;
  *(inited + 16) = xmmword_220899920;
  v43 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v44 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v45 = *MEMORY[0x277D76A28];
  v209 = v43;
  v214 = v45;
  v46 = sub_220891F2C();
  v47 = MEMORY[0x277D740C0];
  *(inited + 40) = v46;
  v48 = *v47;
  v217 = v44;
  *(inited + 64) = v44;
  *(inited + 72) = v48;
  v50 = v40[5];
  v49 = v40[6];
  __swift_project_boxed_opaque_existential_1(v40 + 2, v50);
  v51 = *(v49 + 16);
  v52 = *(v51 + 40);
  v213 = v48;
  v53 = v52(v50, v51);
  v212 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 104) = v212;
  *(inited + 80) = v53;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  v211 = v54;
  swift_arrayDestroy();
  v55 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v56 = sub_22089132C();

  type metadata accessor for Key(0);
  v58 = v57;
  v210 = sub_2204A63B8();
  v59 = sub_22089125C();

  v218 = [v55 initWithString:v56 attributes:v59];

  v60 = v222;
  v61 = *(*&v222 + 16);
  v62 = *(*&v222 + 24);
  if (*(*&v222 + 24))
  {
    v63 = 2;
  }

  else
  {
    v63 = v61 < 0.0;
  }

  v64 = __swift_project_boxed_opaque_existential_1((*&v221 + 16), *(*&v221 + 40));
  v65 = type metadata accessor for QuoteViewModel(0);
  v67 = v200;
  v66 = v201;
  v68 = v206;
  v201[2](v200, *&v60 + *(v65 + 20), v206);
  v69 = (v66[11])(v67, v68);
  v70 = *MEMORY[0x277D69480];
  v208 = v58;
  v199 = v65;
  if (v69 != v70)
  {
    if (v69 == *MEMORY[0x277D69468])
    {
      v71 = v217;
      if ((LODWORD(v198) | v62))
      {
        goto LABEL_44;
      }

      if (v197 - v61 <= 0.0)
      {
        v72 = 0.0;
      }

      else
      {
        v72 = v61 / (v197 - v61);
      }

      if (qword_27CF55AB8 == -1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v71 = v217;
      if (v69 != *MEMORY[0x277D69478])
      {
        sub_2208928AC();
        __break(1u);
        return;
      }

      type metadata accessor for PriceViewModel(0);
      if ((sub_2208857CC() & 1) == 0)
      {
        *&v206 = COERCE_DOUBLE(sub_220691100(0));
        goto LABEL_46;
      }

      if ((LODWORD(v198) | v62))
      {
        goto LABEL_44;
      }

      if (v197 - v61 <= 0.0)
      {
        v72 = 0.0;
      }

      else
      {
        v72 = v61 / (v197 - v61);
      }

      if (qword_27CF55AB8 == -1)
      {
        goto LABEL_42;
      }
    }

    swift_once();
LABEL_42:
    v76 = qword_27CF6D008;
    v77 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v78 = [v76 stringFromNumber_];

    if (v78)
    {
      *&v206 = COERCE_DOUBLE(sub_22089136C());

      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if ((v62 & 1) == 0)
  {
    v73 = v197 >= 5.0;
    if (v197 == 0.0)
    {
      v73 = 1;
    }

    *&v74 = COERCE_DOUBLE(sub_2204DBC04(v73 & ~LOBYTE(v198), v61));
    v71 = v217;
    if (v75)
    {
      v206 = v74;
      goto LABEL_46;
    }

LABEL_44:
    v206 = *(*&v60 + 64);

    goto LABEL_46;
  }

  v206 = *(*&v60 + 64);

  v71 = v217;
LABEL_46:
  v79 = v24 - v26 - v30;
  v80 = *v64;
  v81 = swift_initStackObject();
  *(v81 + 16) = v215;
  v82 = v209;
  *(v81 + 32) = v209;
  v83 = *MEMORY[0x277D74420];
  *(v81 + 40) = sub_220891F2C();
  v84 = v213;
  *(v81 + 64) = v71;
  *(v81 + 72) = v84;
  v85 = sub_2205125E4(v63);
  v87 = v80[10];
  v86 = v80[11];
  __swift_project_boxed_opaque_existential_1(v80 + 7, v87);
  v88 = (*(v86 + 16))(v87, v86);
  v89 = [v85 stocksAccessibilityAdjustedForIncreaseContrastAgainstWithBackgroundColor_];

  *(v81 + 104) = v212;
  *(v81 + 80) = v89;
  sub_2204A5EAC(v81);
  swift_setDeallocating();
  swift_arrayDestroy();
  v90 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v91 = sub_22089132C();

  v92 = sub_22089125C();

  v93 = [v90 initWithString:v91 attributes:v92];

  v94 = sub_2205275D8();
  v95 = v218;
  [v218 boundingRectWithSize:0 options:0 context:{v79, v28}];
  v97 = v96;
  v99 = v98;
  [v94 boundingRectWithSize:0 options:0 context:{v79, v28}];
  v101 = v100;
  v103 = v102;
  v199 = *(v199 + 24);
  v104 = v222;
  v105 = *&v207;
  sub_220512F60(*&v222 + v199, *&v207);
  *&v106 = *&v219 + 48;
  v200 = *(*&v219 + 48);
  v107 = (v200)(v105, 1, *&v220);
  v201 = v94;
  v198 = v83;
  if (v107 == 1)
  {
    v108 = v104;
    sub_220513078(v105);
    *&v206 = 0.0;
    v207 = 0.0;
  }

  else
  {
    sub_2207284E8(v105, *&v202);
    v109 = *__swift_project_boxed_opaque_existential_1((*&v221 + 16), *(*&v221 + 40));
    *&v110 = COERCE_DOUBLE(sub_22069EB5C());
    v206 = v111;
    v207 = *&v110;
    v112 = swift_initStackObject();
    v219 = v106;
    v113 = v112;
    *(v112 + 16) = v215;
    *(v112 + 32) = v82;
    v114 = v82;
    v115 = v217;
    v113[5] = sub_220891F2C();
    v116 = v213;
    v113[8] = v115;
    v113[9] = v116;
    v117 = v109[5];
    v118 = v109[6];
    __swift_project_boxed_opaque_existential_1(v109 + 2, v117);
    v119 = *(v118 + 16);
    v120 = *(v119 + 216);
    v121 = v116;
    v122 = v119;
    v95 = v218;
    v123 = v120(v117, v122);
    v113[13] = v212;
    v113[10] = v123;
    sub_2204A5EAC(v113);
    v108 = v222;
    swift_setDeallocating();
    swift_arrayDestroy();
    v124 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v125 = sub_22089132C();

    v126 = sub_22089125C();

    v127 = v124;
    v94 = v201;
    v128 = [v127 initWithString:v125 attributes:v126];

    [v128 boundingRectWithSize:0 options:0 context:{v79, v28}];
    v206 = v130;
    v207 = v129;

    sub_22072854C(*&v202);
  }

  v241.origin.x = 0.0;
  v202 = 0.0;
  v241.origin.y = 0.0;
  v241.size.width = v97;
  v241.size.height = v99;
  v131 = CGRectGetMaxX(v241) + 14.0;
  v242.origin.x = 0.0;
  v242.origin.y = 0.0;
  v242.size.width = v97;
  v242.size.height = v99;
  v132 = v97;
  MinY = CGRectGetMinY(v242);
  v134 = sub_220891D8C();
  v243.origin.x = 0.0;
  v243.origin.y = 0.0;
  v243.size.width = v132;
  v243.size.height = v99;
  CGRectGetMinY(v243);
  v135 = sub_220891D8C();
  [v135 ascender];

  v244.origin.x = v131;
  v244.origin.y = MinY;
  v244.size.width = v101;
  v244.size.height = v103;
  CGRectGetMinY(v244);
  [v134 ascender];
  v245.origin.x = v131;
  v245.origin.y = MinY;
  v245.size.width = v101;
  v245.size.height = v103;
  CGRectGetMinY(v245);
  v246.origin.x = v131;
  v246.origin.y = MinY;
  v246.size.width = v101;
  v246.size.height = v103;
  CGRectGetMinX(v246);
  v136 = v132;
  sub_220891E7C();
  v219 = v137;
  v139 = v138;
  v141 = v140;
  v143 = v142;

  v247.origin.x = 0.0;
  v247.origin.y = 0.0;
  v247.size.width = v132;
  v247.size.height = v99;
  MaxY = CGRectGetMaxY(v247);
  v145 = v203;
  sub_220512F60(*&v108 + v199, v203);
  if ((v200)(v145, 1, *&v220) == 1)
  {
    sub_220513078(v145);
    v248.origin.x = 0.0;
    v248.origin.y = 0.0;
    v248.size.width = v132;
    v248.size.height = v99;
    v146 = CGRectGetMinY(v248);
    v147 = sub_220891D8C();
    [v147 ascender];
    v149 = v148;

    v222 = v146 + v149;
  }

  else
  {
    sub_2207284E8(v145, v204);
    v249.origin.x = 0.0;
    v249.origin.y = MaxY;
    *&v249.size.height = v206;
    v249.size.width = v207;
    v150 = CGRectGetMinY(v249);
    v151 = *__swift_project_boxed_opaque_existential_1((*&v221 + 16), *(*&v221 + 40));
    v222 = COERCE_DOUBLE(sub_22069EB5C());
    v152 = swift_initStackObject();
    *(v152 + 16) = v215;
    v153 = v209;
    *(v152 + 32) = v209;
    v154 = v153;
    v155 = v217;
    *(v152 + 40) = sub_220891F2C();
    v156 = v213;
    *(v152 + 64) = v155;
    *(v152 + 72) = v156;
    v157 = v151[5];
    v158 = v151[6];
    __swift_project_boxed_opaque_existential_1(v151 + 2, v157);
    v159 = *(v158 + 16);
    v160 = *(v159 + 216);
    v161 = v156;
    v162 = v159;
    v95 = v218;
    v163 = v160(v157, v162);
    *(v152 + 104) = v212;
    *(v152 + 80) = v163;
    sub_2204A5EAC(v152);
    swift_setDeallocating();
    swift_arrayDestroy();
    v164 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v165 = sub_22089132C();

    v166 = sub_22089125C();

    v167 = v164;
    v94 = v201;
    v168 = [v167 initWithString:v165 attributes:v166];

    v169 = sub_220891D8C();
    [v169 ascender];
    v171 = v170;

    sub_22072854C(v204);
    v222 = v150 + v171;
    v132 = v136;
  }

  v250.origin.x = v219;
  *&v250.origin.y = v139;
  v250.size.width = v141;
  v250.size.height = v143;
  CGRectGetMaxX(v250);
  v220 = v141;
  v221 = v143;
  v218 = v139;
  v172 = v202;
  v251.origin.x = v202;
  v251.origin.y = MaxY;
  v174 = *&v206;
  v173 = v207;
  v251.size.width = v207;
  *&v251.size.height = v206;
  CGRectGetMaxX(v251);
  v252.origin.x = v172;
  v252.origin.y = MaxY;
  v252.size.width = v173;
  v252.size.height = v174;
  IsEmpty = CGRectIsEmpty(v252);
  v176 = v172;
  if (IsEmpty)
  {
    v177 = v172;
  }

  else
  {
    v177 = MaxY;
  }

  if (IsEmpty)
  {
    v178 = v132;
  }

  else
  {
    v178 = v173;
  }

  if (IsEmpty)
  {
    v179 = v99;
  }

  else
  {
    v179 = v174;
  }

  CGRectGetMaxY(*&v176);
  v182 = MEMORY[0x28223BE20](v180, v181).n128_u64[0];
  *(&v197 - 18) = 0.0;
  *(&v197 - 17) = 0.0;
  *(&v197 - 16) = v182;
  *(&v197 - 15) = v183;
  *(&v197 - 14) = 0.0;
  *(&v197 - 13) = 0.0;
  *(&v197 - 12) = v132;
  *(&v197 - 11) = v99;
  v184 = v218;
  *(&v197 - 10) = v219;
  *(&v197 - 9) = v184;
  v185 = v221;
  *(&v197 - 8) = v220;
  *(&v197 - 7) = v185;
  *(&v197 - 6) = 0.0;
  *(&v197 - 5) = MaxY;
  *(&v197 - 4) = v173;
  v186 = v222;
  *(&v197 - 3) = v174;
  *(&v197 - 2) = v186;
  sub_22088C18C();

  v187 = v230;
  v238 = v229;
  v239 = v230;
  v188 = v231;
  v240 = v231;
  v189 = v225;
  v190 = v226;
  v234 = v225;
  v235 = v226;
  v191 = v228;
  v192 = v227;
  v236 = v227;
  v237 = v228;
  v193 = v224;
  v194 = v223;
  v232 = v223;
  v233 = v224;
  v195 = v205;
  *(v205 + 96) = v229;
  *(v195 + 112) = v187;
  *(v195 + 128) = v188;
  *(v195 + 32) = v189;
  *(v195 + 48) = v190;
  *(v195 + 64) = v192;
  *(v195 + 80) = v191;
  *v195 = v194;
  *(v195 + 16) = v193;
}

double sub_2208291EC@<D0>(uint64_t a1@<X8>, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18)
{
  v70 = a18;
  v69 = a14;
  v68 = a15;
  v67 = a16;
  v66 = a17;
  v65 = a10;
  v64 = a11;
  v63 = a12;
  v62 = a13;
  v19 = sub_22088ABEC();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *MEMORY[0x277D6D320];
  v26 = *(v20 + 104);
  v26(v24, v25, v19, v22);
  sub_22088ABDC();
  v60 = v28;
  v61 = v27;
  v58 = v30;
  v59 = v29;
  v31 = *(v20 + 8);
  v31(v24, v19);
  (v26)(v24, v25, v19);
  sub_22088ABDC();
  v57 = v32;
  v56 = v33;
  v55 = v34;
  v54 = v35;
  v31(v24, v19);
  (v26)(v24, v25, v19);
  sub_22088ABDC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v31(v24, v19);
  (v26)(v24, v25, v19);
  sub_22088ABDC();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v31(v24, v19);
  *a1 = v61;
  *(a1 + 8) = v60;
  *(a1 + 16) = v59;
  *(a1 + 24) = v58;
  *(a1 + 32) = v57;
  *(a1 + 40) = v56;
  *(a1 + 48) = v55;
  *(a1 + 56) = v54;
  *(a1 + 64) = v37;
  *(a1 + 72) = v39;
  *(a1 + 80) = v41;
  *(a1 + 88) = v43;
  *(a1 + 96) = v45;
  *(a1 + 104) = v47;
  *(a1 + 112) = v49;
  result = v70;
  *(a1 + 120) = v51;
  *(a1 + 128) = result;
  return result;
}

StocksUI::ForYouFeedSection_optional __swiftcall ForYouFeedSection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22089270C();

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

uint64_t ForYouFeedSection.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B636F7473;
  }

  else
  {
    return 0x69726F7453706F74;
  }
}

uint64_t sub_2208295DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B636F7473;
  }

  else
  {
    v3 = 0x69726F7453706F74;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B636F7473;
  }

  else
  {
    v5 = 0x69726F7453706F74;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

unint64_t sub_220829688()
{
  result = qword_27CF5A2E0;
  if (!qword_27CF5A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A2E0);
  }

  return result;
}

uint64_t sub_2208296DC()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_220829760(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_2208297D0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_220829850(char *a2@<X8>)
{
  v3 = sub_22089270C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2208298B0(uint64_t *a1@<X8>)
{
  v2 = 0x69726F7453706F74;
  if (*v1)
  {
    v2 = 0x6B636F7473;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_2208299B0()
{
  result = qword_281291A60;
  if (!qword_281291A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281291A60);
  }

  return result;
}

uint64_t sub_220829A04()
{

  return swift_deallocClassInstance();
}

uint64_t sub_220829A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v52 = a1;
  sub_220447A9C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v6;
  MEMORY[0x28223BE20](v7, v8);
  v59 = &v50 - v9;
  v10 = sub_220887C9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x277CC9260];
  sub_220447A9C(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v50 - v17;
  v19 = sub_22088822C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v3 + 16);
  sub_2204481D8(0);
  v50 = *(v28 + 48);
  v29 = &v27[*(v28 + 64)];
  swift_unknownObjectRetain();
  sub_2208881FC();
  v30 = sub_220884E9C();
  (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
  (*(v11 + 104))(v14, *MEMORY[0x277D2FF08], v10);
  sub_22088767C();
  (*(v11 + 8))(v14, v10);
  sub_2206708A4(v18, &qword_2812994E0, v51);
  (*(v20 + 8))(v23, v19);
  *(v29 + 4) = 0;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *&v27[v50] = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (v54)
  {
    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10, MEMORY[0x277D6D540]);
    sub_22088731C();
    if (swift_dynamicCast())
    {
      v31 = *&v66[0];
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_22088969C();
  v33 = v59;
  (*(*(v32 - 8) + 56))(v59, 1, 1, v32);
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v65 = v53;
  sub_2205A0924(v66, &v60, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (v62)
  {
    sub_220458198(&v60, v63);
    v34 = sub_220597454(v63);
    v36 = v35;
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    sub_2205A0B34(&v60, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v34 = qword_2812908F8;
    v36 = qword_281290900;
    v38 = qword_281290908;

    sub_2204A80F4(v36, v38);
  }

  v58 = v27;
  if (v31)
  {
    v39 = sub_22088731C();
    v40 = v31;
  }

  else
  {
    v40 = 0;
    v39 = 0;
    *(&v60 + 1) = 0;
    v61 = 0;
  }

  *&v60 = v40;
  v62 = v39;
  v41 = v57;
  sub_2205A08A4(v33, v57);
  sub_2205A0924(v68, v63, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v42 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v43 = (v56 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v31;
  sub_2205A0994(v41, v44 + v42);
  v45 = v44 + v43;
  v46 = v63[1];
  *v45 = v63[0];
  *(v45 + 16) = v46;
  *(v45 + 32) = v64;
  v47 = (v44 + ((v43 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v47 = v34;
  v47[1] = v36;
  v47[2] = v38;
  swift_retain_n();

  sub_2204A80F4(v36, v38);
  sub_2204549FC(0);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  v48 = v58;
  sub_22088E92C();

  sub_2204DA45C(v36, v38);
  sub_2205A0B34(v66, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v68, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2206708A4(v59, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205BA954(v48);
  return sub_2205A0B34(&v60, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

BOOL sub_22082A3EC()
{
  v1 = [*(v0 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_22056D130(&v11);
    goto LABEL_9;
  }

  sub_22044D56C(0, &qword_28127E470, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_22056D130(&v11);
    goto LABEL_17;
  }

  sub_22044D56C(0, &qword_28127E470, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -25;
    return ((v6 ^ v3) & 1) == 0;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 25;
  return ((v6 ^ v3) & 1) == 0;
}

uint64_t sub_22082A5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v3 = sub_22088CA0C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22089022C();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v7);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22089041C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208906CC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4(0);
  v41 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22088820C();
  *&v49 = sub_22088820C();
  (*(v15 + 104))(v18, *MEMORY[0x277D33A68], v14);
  v24 = v9;
  v25 = v39;
  (*(v10 + 104))(v13, *MEMORY[0x277D33570], v24);
  (*(v6 + 104))(v25, *MEMORY[0x277D33288], v40);
  ObjectType = sub_22088821C();
  v27 = ObjectType;
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v44 = v27;
  v47 = ObjectType;
  sub_22088AB2C();
  sub_22044826C();
  sub_2208905CC();
  sub_2206876F4(v38, v23, v42, v43);
  swift_unknownObjectRelease();
  (*(v20 + 8))(v23, v41);
  if (sub_22088AAEC())
  {
    v28 = v36;
    v29 = *(v36 + 24);
    (*(v34 + 104))(v37, *MEMORY[0x277D6E118], v35);
    v47 = sub_22088C9FC();
    v48 = sub_22082C0E8(&qword_27CF5A2E8, MEMORY[0x277D6E0C8], &protocol conformance descriptor for CommandCenterWithTracker);
    v44 = v29;
    v30 = *(v28 + 80);
    v49 = 0u;
    v50 = 0u;
    v51 = 1;
    sub_22088C4DC();
    swift_allocObject();

    v31 = v30;
    sub_22088C4BC();
    sub_22088AA9C();
  }

  sub_22044D56C(0, &qword_28127E560, 0x277D75710);
  return sub_220891F5C();
}

uint64_t sub_22082AAB8(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t a3)
{
  v114 = a3;
  v115 = a2;
  sub_2207EA34C(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v119 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4(0);
  v120 = v8;
  v118 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v117 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220782704(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v105 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v103 = &v103 - v16;
  v17 = sub_22089022C();
  v125 = *(v17 - 8);
  v126 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v113 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v109 = &v103 - v22;
  v23 = sub_22089041C();
  v123 = *(v23 - 8);
  v124 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v110 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v107 = &v103 - v28;
  v29 = sub_2208906CC();
  v121 = *(v29 - 8);
  v122 = v29;
  MEMORY[0x28223BE20](v29, v30);
  v108 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v106 = &v103 - v34;
  sub_220493B38(0, &qword_281296810, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  v112 = v35;
  v111 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v104 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v103 - v40;
  v42 = type metadata accessor for StocksAudioTrack(0);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v45 = (&v103 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46, v47);
  v49 = (&v103 - v48);
  sub_22082C080(0);
  MEMORY[0x28223BE20](v50 - 8, v51);
  v53 = &v103 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205715CC(0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v103 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v3;
  sub_22088867C();
  v116 = a1;
  v58 = [sub_22088820C() articleID];
  swift_unknownObjectRelease();
  v59 = sub_22089136C();
  v61 = v60;

  sub_22082C130(v57, v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v63);
    v72 = *(v71 + 64);
    sub_22082C194(v53, v49);
    v73 = [*v49 articleID];
    v74 = sub_22089136C();
    v76 = v75;

    if (v74 == v59 && v76 == v61)
    {

      v77 = v126;
    }

    else
    {
      v84 = sub_2208928BC();

      v77 = v126;
      if ((v84 & 1) == 0)
      {
        sub_22082C1F8(v49, type metadata accessor for StocksAudioTrack);
        v102 = sub_22088774C();
        (*(*(v102 - 8) + 8))(&v53[v72], v102);
        sub_22082C1F8(v53, type metadata accessor for StocksAudioTrack);
        goto LABEL_17;
      }
    }

    v127 = v72;
    (*(v121 + 104))(v106, *MEMORY[0x277D33A68], v122);
    (*(v123 + 104))(v107, *MEMORY[0x277D33570], v124);
    (*(v125 + 104))(v109, *MEMORY[0x277D33288], v77);
    v128 = 0u;
    v129 = 0u;
    sub_2208905CC();
    sub_22088E3AC();
    v85 = v111;
    v86 = v103;
    v87 = v112;
    (*(v111 + 16))(v103, v41, v112);
    (*(v85 + 56))(v86, 0, 1, v87);
    sub_22088C9FC();
    sub_22088B81C();

    sub_22082C1F8(v86, sub_220782704);
    (*(v85 + 8))(v41, v87);
    sub_22082C1F8(v49, type metadata accessor for StocksAudioTrack);
    v88 = sub_22088774C();
    (*(*(v88 - 8) + 8))(&v53[v127], v88);
    return sub_22082C1F8(v53, type metadata accessor for StocksAudioTrack);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464(0);
    v65 = *(v64 + 64);
    v66 = v45;
    sub_22082C194(v53, v45);
    v67 = [*v45 articleID];
    v68 = sub_22089136C();
    v70 = v69;

    if (v68 == v59 && v70 == v61)
    {

LABEL_11:
      (*(v121 + 104))(v106, *MEMORY[0x277D33A68], v122);
      (*(v123 + 104))(v107, *MEMORY[0x277D33570], v124);
      (*(v125 + 104))(v109, *MEMORY[0x277D33288], v126);
      v128 = 0u;
      v129 = 0u;
      v79 = v104;
      sub_2208905CC();
      sub_22088E3BC();
      v80 = v111;
      v81 = v105;
      v82 = v112;
      (*(v111 + 16))(v105, v79, v112);
      (*(v80 + 56))(v81, 0, 1, v82);
      sub_22088C9FC();
      sub_22088B81C();

      sub_22082C1F8(v81, sub_220782704);
      (*(v80 + 8))(v79, v82);
      sub_22082C1F8(v66, type metadata accessor for StocksAudioTrack);
      v83 = sub_22088774C();
      (*(*(v83 - 8) + 8))(&v53[v65], v83);
      return sub_22082C1F8(v53, type metadata accessor for StocksAudioTrack);
    }

    v78 = sub_2208928BC();

    if (v78)
    {
      goto LABEL_11;
    }

    sub_22082C1F8(v45, type metadata accessor for StocksAudioTrack);
    v90 = sub_22088774C();
    (*(*(v90 - 8) + 8))(&v53[v65], v90);
    sub_22082C1F8(v53, type metadata accessor for StocksAudioTrack);
  }

  else
  {
  }

  v77 = v126;
LABEL_17:
  v92 = v124;
  v91 = v125;
  v94 = v122;
  v93 = v123;
  v95 = v121;
  v115(0);
  v130 = sub_22088820C();
  (*(v95 + 104))(v108, *MEMORY[0x277D33A68], v94);
  (*(v93 + 104))(v110, *MEMORY[0x277D33570], v92);
  (*(v91 + 104))(v113, *MEMORY[0x277D33288], v77);
  ObjectType = sub_22088821C();
  v97 = ObjectType;
  v99 = v118;
  v98 = v119;
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    *(&v128 + 1) = 0;
    *&v129 = 0;
  }

  v100 = v117;
  *&v128 = v97;
  *(&v129 + 1) = ObjectType;
  sub_22044826C();
  sub_2208905CC();
  sub_22088E3DC();
  v101 = v120;
  (*(v99 + 16))(v98, v100, v120);
  (*(v99 + 56))(v98, 0, 1, v101);
  sub_22088C9FC();
  sub_22088B81C();

  sub_22082C1F8(v98, sub_2207EA34C);
  return (*(v99 + 8))(v100, v101);
}

uint64_t sub_22082B808(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v45 = sub_22088CA0C();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v3);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22089022C();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22089041C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208906CC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4(0);
  v47 = v19;
  v42 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22088820C();
  *&v56 = sub_22088820C();
  (*(v15 + 104))(v18, *MEMORY[0x277D33A68], v14);
  (*(v10 + 104))(v13, *MEMORY[0x277D33570], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D33288], v40);
  ObjectType = sub_22088821C();
  v24 = ObjectType;
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v50 = v24;
  v53 = ObjectType;
  sub_22044826C();
  sub_2208905CC();
  sub_220493B38(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B130;
  *(inited + 32) = sub_220622DE8(v22, v48, v49, xmmword_22089B130);
  v26 = sub_22088B15C();
  v50 = inited;
  sub_2205D31DC(v26);
  swift_unknownObjectRelease();
  (*(v42 + 8))(v22, v47);
  v27 = v50;
  v55 = MEMORY[0x277D84F90];
  if (v50 >> 62)
  {
LABEL_21:
    v47 = v27 & 0xFFFFFFFFFFFFFF8;
    v49 = sub_2208926AC();
  }

  else
  {
    v47 = v50 & 0xFFFFFFFFFFFFFF8;
    v49 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = 0;
  v48 = v27 & 0xC000000000000001;
  v29 = *MEMORY[0x277D6E118];
  v30 = (v43 + 104);
  v43 = MEMORY[0x277D84F90];
  while (v49 != v28)
  {
    if (v48)
    {
      MEMORY[0x223D8A700](v28, v27);
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v28 >= *(v47 + 16))
      {
        goto LABEL_20;
      }

      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v32 = v46;
    v33 = *(v46 + 24);
    (*v30)(v44, v29, v45);
    v53 = sub_22088C9FC();
    v54 = sub_22082C0E8(&qword_27CF5A2E8, MEMORY[0x277D6E0C8], &protocol conformance descriptor for CommandCenterWithTracker);
    v50 = v33;
    v34 = *(v32 + 80);
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    sub_22088C4DC();
    swift_allocObject();

    v35 = v34;
    sub_22088C4BC();
    v36 = sub_22088B09C();

    ++v28;
    if (v36)
    {
      MEMORY[0x223D89870](v37);
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22089177C();
      }

      sub_22089179C();
      v43 = v55;
      v28 = v31;
    }
  }

  return v43;
}

uint64_t sub_22082BE7C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

id sub_22082BEF8(void *a1)
{
  v2 = *v1;
  if (sub_22082A3EC())
  {
    sub_22088749C();
  }

  v3 = *(v2 + 80);
  *(v2 + 80) = a1;

  return a1;
}

void *sub_22082BFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v13 = swift_allocObject();
  v13[10] = 0;
  v13[2] = a1;
  v13[3] = a2;
  sub_220457328(&v15, (v13 + 4));
  v13[9] = a4;
  return v13;
}

void sub_22082C080(uint64_t a1)
{
  if (!qword_27CF5A2F8)
  {
    sub_2205715CC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF5A2F8);
    }
  }
}

uint64_t sub_22082C0E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22082C130(uint64_t a1, uint64_t a2)
{
  sub_2205715CC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22082C194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksAudioTrack(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22082C1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22082C2A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22082CB28(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22082C2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22082CB28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22082C2F8(uint64_t a1)
{
  v2 = sub_22082C910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22082C334(uint64_t a1)
{
  v2 = sub_22082C910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22082C370@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = type metadata accessor for ForYouFeedConfig(0);
  MEMORY[0x28223BE20](v27, v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x277D83D88];
  sub_22044DB24(0, &qword_281296B78, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v26 = &v25 - v10;
  sub_22044DB24(0, &qword_281299480, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v25 - v13;
  sub_22082C8B4(0);
  v16 = v15;
  v25 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22082C910();
  sub_220892A4C();
  if (!v2)
  {
    type metadata accessor for ForYouFeedGroupConfig(0);
    v31 = 0;
    sub_22082C964(&qword_28128DF78, type metadata accessor for ForYouFeedGroupConfig, &unk_2208B1960);
    v20 = sub_22089272C();
    sub_22088516C();
    v30 = 1;
    sub_22082C964(&qword_281299490, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22089271C();
    sub_22088F67C();
    v29 = 2;
    sub_22082C964(&qword_281296B80, MEMORY[0x277D32028], MEMORY[0x277D32038]);
    v21 = v26;
    sub_22089271C();
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    (*(v25 + 8))(v19, v16);
    *v6 = v22;
    v23 = v27;
    sub_220528CD0(v14, v6 + *(v27 + 20), &qword_281299480, MEMORY[0x277CC9578]);
    sub_220528CD0(v21, v6 + *(v23 + 24), &qword_281296B78, MEMORY[0x277D32028]);
    sub_22082C9AC(v6, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_22082C814@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_22047E9EC(v3 + *(a2 + 20), a3 + *(a2 + 20), &qword_281299480, MEMORY[0x277CC9578]);
  sub_22047E9EC(v3 + *(a2 + 24), a3 + *(a2 + 24), &qword_281296B78, MEMORY[0x277D32028]);
  *a3 = a1;

  return result;
}

void sub_22082C8B4(uint64_t a1)
{
  if (!qword_28127E270)
  {
    sub_22082C910();
    v1 = sub_2208927BC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E270);
    }
  }
}

unint64_t sub_22082C910()
{
  result = qword_2812925C0;
  if (!qword_2812925C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812925C0);
  }

  return result;
}

uint64_t sub_22082C964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22082C9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22082CA24()
{
  result = qword_27CF5A300;
  if (!qword_27CF5A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A300);
  }

  return result;
}

unint64_t sub_22082CA7C()
{
  result = qword_2812925C8;
  if (!qword_2812925C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812925C8);
  }

  return result;
}

unint64_t sub_22082CAD4()
{
  result = qword_2812925D0;
  if (!qword_2812925D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812925D0);
  }

  return result;
}

unint64_t sub_22082CB28(uint64_t a1, uint64_t a2)
{
  v2 = sub_22089270C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_22082CB78()
{
  v0 = sub_22089132C();
  v6 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v6)
  {
    v1 = objc_opt_self();
    v2 = v6;
    v3 = [v1 sharedApplication];
    v4 = [v3 key_window];

    v5 = [v4 rootViewController];
    [v2 setPresentingViewController_];
  }

  [v6 present];
}

uint64_t sub_22082CCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2204588D0(&qword_281293300, type metadata accessor for ForYouFeedModel, &unk_2208BA918);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_22082CD44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088698C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220454720(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2204FF294(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_9;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {

      sub_220458918(0);
      v21 = *(v20 + 48);
      v22 = sub_22089030C();
      (*(*(v22 - 8) + 8))(&v18[v21], v22);
LABEL_9:
      v23 = sub_22088E4EC();
      return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
    }

LABEL_8:
    sub_220503C2C(v18, type metadata accessor for ForYouFeedModel);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_8;
  }

  (*(v11 + 32))(v14, v18, v10);
  sub_22088FF8C();
  if (v25[15] != 1)
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_9;
  }

  sub_22088FF6C();
  Headline.dragItem.getter(a1);
  (*(v5 + 8))(v8, v4);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_22082D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a2;
  v49 = a1;
  v50 = a8;
  v53 = a3;
  v54 = a4;
  v43 = a4;
  v44 = a5;
  v55 = a5;
  v56 = a6;
  v45 = a6;
  v46 = a7;
  v57 = a7;
  v58 = a8;
  v59 = a9;
  v11 = sub_22088A8AC();
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (v40 - v13);
  sub_220454720(0);
  v16 = v15;
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v40 - v22;
  v24 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v51, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v41 = v14;
    v42 = v11;
    v33 = v47;
    v32 = v48;
    v51 = a2;
    v35 = v49;
    v34 = v50;
    if (!EnumCaseMultiPayload)
    {
      (*(v47 + 32))(v23, v27, v16);
      v40[1] = sub_22088AB2C();
      (*(v33 + 16))(v19, v23, v16);
      v38 = v41;
      (*(v32 + 16))(v41, v35, v42);
      v39 = sub_220686898(v19, v38, v51, a3, v43, v44, v45, v46, v34, a9);
      (*(v33 + 8))(v23, v16);
      return v39;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {

      sub_220458918(0);
      v30 = *(v29 + 48);
      v31 = sub_22089030C();
      (*(*(v31 - 8) + 8))(&v27[v30], v31);
      return 0;
    }

LABEL_8:
    sub_220503C2C(v27, type metadata accessor for ForYouFeedModel);
    return 0;
  }

  v36 = 0;
  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_8;
  }

  return v36;
}

uint64_t sub_22082D3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v66 = a5;
  v67 = a8;
  v65 = a4;
  v68 = a2;
  v69 = a3;
  v70 = a6;
  v71 = a7;
  v15 = sub_22088E81C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v9;
  v24 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v23, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v61 = a2;
    v62 = a3;
    v63 = a7;
    v64 = a1;
    v30 = v67;
    v59 = v19;
    v60 = v16;
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v56 = v24;
    sub_22047A3A8(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_220899360;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22089B140;
    v35 = sub_22088B17C();
    v58 = a9;
    v36 = a6;
    v37 = v30;
    v38 = sub_22088B13C();
    v55 = v15;
    if (v38)
    {
      v39 = MEMORY[0x277D6D630];
      v40 = v35;
    }

    else
    {
      v40 = 0;
      v39 = 0;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
    }

    v41 = v35;
    *(v34 + 32) = v38;
    *(v34 + 56) = v40;
    *(v34 + 64) = v39;
    v42 = v63;
    v44 = v61;
    v43 = v62;
    v45 = v66;
    v46 = sub_22088B12C();
    v57 = v33;
    if (v46)
    {
      v47 = MEMORY[0x277D6D630];
      v48 = v35;
    }

    else
    {
      v48 = 0;
      v47 = 0;
      *(v34 + 80) = 0;
      *(v34 + 88) = 0;
    }

    *(v34 + 72) = v46;
    *(v34 + 96) = v48;
    *(v34 + 104) = v47;
    v68 = v44;
    v69 = v43;
    v70 = v65;
    v71 = v45;
    v72 = v36;
    v73 = v42;
    v49 = v59;
    v74 = v37;
    v75 = v58;
    sub_22088A8AC();
    sub_22088A89C();
    type metadata accessor for ForYouFeedServiceConfig(0);
    sub_2204588D0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    v50 = v55;
    v51 = sub_22088E79C();
    (*(v60 + 8))(v49, v50);
    sub_22088A87C();
    v52 = sub_22088B11C();

    sub_22062782C(v51);
    if (v52)
    {
      v53 = MEMORY[0x277D6D630];
    }

    else
    {
      v41 = 0;
      v53 = 0;
      *(v34 + 120) = 0;
      *(v34 + 128) = 0;
    }

    *(v34 + 112) = v52;
    *(v34 + 136) = v41;
    *(v34 + 144) = v53;
    sub_22088AB2C();
    sub_22088B4FC();
    sub_22088B4BC();

    v54 = sub_22088AAEC();
    sub_220503C2C(v56, type metadata accessor for ForYouFeedModel);
    return v54;
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {

        sub_220458918(0);
        v26 = v24;
        v28 = *(v27 + 48);
        v29 = sub_22089030C();
        (*(*(v29 - 8) + 8))(&v26[v28], v29);
        return 0;
      }

LABEL_8:
      sub_220503C2C(v24, type metadata accessor for ForYouFeedModel);
      return 0;
    }

    v31 = 0;
    if (EnumCaseMultiPayload == 5)
    {
      goto LABEL_8;
    }
  }

  return v31;
}

uint64_t sub_22082D8A4()
{
  v1 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_220503C2C(v4, type metadata accessor for ForYouFeedModel);
      return 1;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v9 = EnumCaseMultiPayload == 5;
    result = 0;
    if (!v9)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_9:
    sub_220503C2C(v4, type metadata accessor for ForYouFeedModel);
    return 0;
  }

  sub_220458918(0);
  v7 = *(v6 + 48);
  v8 = sub_22089030C();
  (*(*(v8 - 8) + 8))(&v4[v7], v8);
  return 0;
}

uint64_t sub_22082D9FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload != 4 && EnumCaseMultiPayload != 5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {

      sub_220458918(0);
      v11 = *(v10 + 48);
      v12 = sub_22089030C();
      (*(*(v12 - 8) + 8))(&v7[v11], v12);
LABEL_10:
      v9 = MEMORY[0x277D6D5D8];
      goto LABEL_11;
    }

LABEL_9:
    sub_220503C2C(v7, type metadata accessor for ForYouFeedModel);
    goto LABEL_10;
  }

  sub_220503C2C(v7, type metadata accessor for ForYouFeedModel);
  v9 = MEMORY[0x277D6D5E0];
LABEL_11:
  v13 = *v9;
  v14 = sub_22088AFEC();
  return (*(*(v14 - 8) + 104))(a1, v13, v14);
}

uint64_t sub_22082DB98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload != 4 && EnumCaseMultiPayload != 5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload != 2)
    {

      sub_220458918(0);
      v11 = *(v10 + 48);
      v12 = sub_22089030C();
      (*(*(v12 - 8) + 8))(&v7[v11], v12);
LABEL_10:
      v9 = MEMORY[0x277D6D580];
      goto LABEL_11;
    }

LABEL_9:
    sub_220503C2C(v7, type metadata accessor for ForYouFeedModel);
    goto LABEL_10;
  }

  sub_220503C2C(v7, type metadata accessor for ForYouFeedModel);
  v9 = MEMORY[0x277D6D588];
LABEL_11:
  v13 = *v9;
  v14 = sub_22088AF9C();
  return (*(*(v14 - 8) + 104))(a1, v13, v14);
}

uint64_t sub_22082DD34@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](v3, a2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_2208900AC();
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 5)
  {
    (*(v10 + 32))(a3, v6, v9);
    return (*(v11 + 56))(a3, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(a3, 1, 1, v9);
    return sub_220503C2C(v6, type metadata accessor for ForYouFeedModel);
  }
}

uint64_t sub_22082DE84@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2208900AC();
  (*(*(v5 - 8) + 16))(a3, a1, v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22082DF0C(__n128 a1)
{
  v2 = sub_22088EC8C();
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v34 - v9;
  v11 = sub_22088EF5C();
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208900AC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {

      sub_220458918(0);
      v26 = *(v25 + 48);
      v27 = sub_22089030C();
      (*(*(v27 - 8) + 8))(&v23[v26], v27);
      goto LABEL_6;
    }

LABEL_5:
    sub_220503C2C(v23, type metadata accessor for ForYouFeedModel);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v30 = v16;
    (*(v16 + 32))(v19, v23, v15);
    sub_22089006C();
    sub_22088EF4C();
    (*(v35 + 8))(v14, v11);
    v31 = v36;
    v32 = v37;
    (*(v37 + 104))(v6, *MEMORY[0x277D2D188], v36);
    v28 = MEMORY[0x223D86E20](v10, v6);
    v33 = *(v32 + 8);
    v33(v6, v31);
    v33(v10, v31);
    (*(v30 + 8))(v19, v15);
    return v28 & 1;
  }

LABEL_6:
  v28 = 0;
  return v28 & 1;
}

double sub_22082E2B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_220489FD0(0, &qword_28127DFD8, sub_22080B9A8, MEMORY[0x277D84560]);
    sub_22080B9A8(0);
    v5 = v4;
    v6 = *(v4 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_220899360;
    (*(v6 + 16))(v8 + v7, a1, v5);
    sub_22088F9BC();
  }

  return result;
}

uint64_t sub_22082E40C(uint64_t a1, uint64_t a2)
{
  sub_220489FD0(0, &qword_281296E98, sub_2204F1480, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v19 - v4;
  sub_2204F1480(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_22088C73C();

    v20 = v19[1];
    sub_220488310(0);
    sub_2204897BC();
    sub_22088BF9C();

    v14 = sub_2205BF5D0();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v14 = 0xF000000000000007;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    sub_22088C73C();

    v19[0] = v20;
    sub_220488310(0);
    sub_2204897BC();
    sub_22088BF9C();

    (*(v8 + 56))(v5, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v5, 1, 1, v7);
  }

  sub_22088B17C();
  type metadata accessor for ForYouFeedSectionDescriptor(0);
  type metadata accessor for ForYouFeedModel(0);
  sub_22044E43C(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
  sub_22044E43C(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
  sub_220890B1C();
  sub_22082F644(v5);
  type metadata accessor for ForYouFeedServiceConfig(0);
  sub_22044E43C(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
  v17 = sub_22088B11C();

  sub_22062782C(v14);
  return v17;
}

uint64_t sub_22082E7BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  result = sub_22088848C();
  if (result)
  {
    v4 = sub_22088BD5C();
    v5 = objc_allocWithZone(v4);
    result = sub_22088BD4C();
    v6 = MEMORY[0x277D6DB78];
    a2[3] = v4;
    a2[4] = v6;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22082E874(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127FF70, &protocol descriptor for ForYouTitleViewLayoutAttributesFactoryType, 1);
  sub_2208884BC();
  if (!v35)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812883C0, &protocol descriptor for ForYouTitleViewRendererType, 0);
  sub_2208884BC();
  v4 = v32;
  if (!v32)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0, &protocol descriptor for AttributionProviderType, 1);
  sub_22088610C();
  sub_22088849C();

  if (!v31[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0, &protocolRef_FCBundleSubscriptionManagerType);
  v5 = sub_2208884CC();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v26 = v33;
  v27 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  sub_2208884DC();
  v7 = v29;
  if (v29)
  {
    v8 = type metadata accessor for ForYouTitleViewProvider(0);
    v9 = v30;
    v10 = __swift_project_boxed_opaque_existential_1(v28, v29);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v12 = MEMORY[0x28223BE20](v11, v11);
    v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = (*(v15 + 16))(v14, v12);
    v18 = MEMORY[0x28223BE20](v16, v17);
    v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v20, v10, v7, v18);
    v22 = type metadata accessor for ForYouTitleViewLayoutAttributesFactory();
    v23 = sub_220503E08(v14, v4, v26, v31, v6, v20, v8, v22, v7, &off_283421450, v9);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v24 = sub_22044E43C(&unk_28128B7D0, type metadata accessor for ForYouTitleViewProvider, &unk_22089BA90);
    v25 = v27;
    *v27 = v23;
    v25[1] = v24;
    return;
  }

LABEL_11:
  __break(1u);
}

char *sub_22082EC94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812883C8, &protocol descriptor for ForYouTitleViewProviderType, 0);
  result = sub_2208884DC();
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488588(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288640, &protocol descriptor for CardToolbarViewProviderType, 0);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BAD8();
  result = sub_22088848C();
  if (result)
  {
    v4 = sub_22082F2F8(v7, v8, v3, v5, v6, result);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_22082EE44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204884CC(0);
  if (!sub_2208884CC())
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220488310(0);
  if (!sub_2208884CC())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296CE0, MEMORY[0x277D2D668], 1);
  sub_2208914FC();
  sub_22046DA2C(a1, &v7);
  v2 = swift_allocObject();
  sub_220457328(&v7, v2 + 16);
  sub_22088847C();

  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_22088D84C();
  v4 = sub_22088848C();
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v3;
  v9 = MEMORY[0x277D6E870];
  *&v7 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220444198(0);
  if (sub_2208884CC())
  {
    sub_22048A294(0);
    v6 = objc_allocWithZone(v5);
    sub_22088F9CC();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_22082F084(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204898B0(0);
  v2 = sub_2208884CC();
  if (v2)
  {
    v3 = v2;
    v4 = sub_22088D51C();
    sub_22048A294(0);
    sub_22088D14C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22082F128(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204888A4(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for ForYouFeedBlueprintCellPrefetcher();
    result = sub_2208884CC();
    if (result)
    {
      sub_22048A3C8(0);
      swift_allocObject();
      return sub_22088BC5C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22082F1F0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220488588(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    return sub_22088BC6C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22082F26C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088F6AC();
  result = sub_2208884CC();
  if (result)
  {
    v2 = result;
    type metadata accessor for ForYouFeedBlueprintCellPrefetcher();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_22082F2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_220489ABC();
  type metadata accessor for ForYouFeedViewCoordinator(0);
  v13 = swift_allocObject();
  *(v13 + 4) = 0;
  *(v13 + 11) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_presentationState;
  v15 = sub_22088CC6C();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass];
  *v16 = 0;
  v16[8] = 1;
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 5) = a3;
  *(v13 + 6) = v12;
  *(v13 + 7) = a4;
  *(v13 + 8) = a5;
  *(v13 + 9) = a6;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_22088868C();

  __swift_destroy_boxed_opaque_existential_1(v19);
  v17 = sub_22058B190();
  [v17 setHidden_];

  return v13;
}

void sub_22082F494(uint64_t a1)
{
  if (!qword_2812969F8)
  {
    sub_220488310(255);
    sub_2204897BC();
    sub_22044E43C(&qword_281293318, type metadata accessor for ForYouFeedModel, &unk_2208BA9A0);
    v1 = sub_22088FE1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812969F8);
    }
  }
}

void sub_22082F53C(uint64_t a1)
{
  if (!qword_2812969C8)
  {
    sub_220488310(255);
    type metadata accessor for ForYouFeedServiceConfig(255);
    sub_2204897BC();
    sub_22044E43C(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig, &unk_2208BDD90);
    sub_22044E43C(&qword_281293318, type metadata accessor for ForYouFeedModel, &unk_2208BA9A0);
    v1 = sub_22088FE4C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812969C8);
    }
  }
}

uint64_t sub_22082F644(uint64_t a1)
{
  sub_220489FD0(0, &qword_281296E98, sub_2204F1480, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22082F6EC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v90 = a3;
  v88 = a2;
  v78 = a1;
  sub_220832404(0, &qword_281297838, MEMORY[0x277D6DF88]);
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v82 = &v76 - v6;
  sub_2204D4924(0);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v76 = v9;
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22088BC8C();
  v10 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22088685C();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v14);
  v86 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4A18(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v3;
  sub_22088CEEC();
  sub_22088AD8C();
  (*(v22 + 8))(v25, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220832760(0, &qword_281293BF0, type metadata accessor for StockViewModel, MEMORY[0x277D698E0], "stockViewModel watchlist ");
    v31 = *(v30 + 48);
    sub_22050381C(v19, v29);
    v32 = sub_220886A4C();
    (*(*(v32 - 8) + 8))(&v19[v31], v32);
  }

  else
  {
    sub_22050381C(v19, v29);
  }

  v34 = v86;
  v33 = v87;
  v35 = v89;
  (*(v87 + 16))(v86, v29, v89);
  sub_22088CEFC();
  v36 = v85;
  v37 = (*(v10 + 88))(v13, v85);
  if (v37 == *MEMORY[0x277D6DA60])
  {
    sub_2204D6248(v29, type metadata accessor for StockViewModel);
    v38.n128_f64[0] = (*(v10 + 96))(v13, v36);
    sub_220690814(0, v38);
    v40 = *(v39 + 48);
    v41 = sub_2208854AC();
    v42 = *(*(v41 - 8) + 8);
    v42(&v13[v40], v41);
    v42(v13, v41);
LABEL_8:
    sub_22088CF0C();
    v44 = v82;
    v43 = v83;
    v45 = v84;
    (*(v83 + 104))(v82, *MEMORY[0x277D6DF80], v84);
    v88(v44);
    (*(v43 + 8))(v44, v45);
    return (*(v33 + 8))(v34, v35);
  }

  if (v37 == *MEMORY[0x277D6DA68])
  {
    sub_2204D6248(v29, type metadata accessor for StockViewModel);
    (*(v10 + 8))(v13, v36);
    goto LABEL_8;
  }

  if (v37 == *MEMORY[0x277D6DA70])
  {
    sub_2204D6248(v29, type metadata accessor for StockViewModel);
    v46 = v77;
    __swift_project_boxed_opaque_existential_1((v77 + 24), *(v77 + 48));
    sub_22088681C();
    sub_22088605C();

    sub_220813BAC(v46, &v91);
    v48 = v79;
    v47 = v80;
    v49 = v81;
    (*(v80 + 16))(v79, v78, v81);
    v50 = (*(v47 + 80) + 80) & ~*(v47 + 80);
    v51 = (v76 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = v92;
    *(v52 + 1) = v91;
    *(v52 + 2) = v53;
    v54 = v94;
    *(v52 + 3) = v93;
    *(v52 + 4) = v54;
    (*(v47 + 32))(&v52[v50], v48, v49);
    v55 = &v52[v51];
    v56 = v88;
    v57 = v90;
    *v55 = v88;
    v55[1] = v57;

    v58 = sub_220888D9C();
    sub_220888E4C();

    v59 = swift_allocObject();
    *(v59 + 16) = v56;
    *(v59 + 24) = v57;

    v60 = sub_220888D9C();
LABEL_13:
    sub_220888E9C();

    return (*(v33 + 8))(v34, v35);
  }

  if (v37 == *MEMORY[0x277D6DA78])
  {
    sub_2204D6248(v29, type metadata accessor for StockViewModel);
    v61 = v77;
    __swift_project_boxed_opaque_existential_1((v77 + 24), *(v77 + 48));
    sub_22088604C();
    sub_220813BAC(v61, &v91);
    v63 = v79;
    v62 = v80;
    v64 = v81;
    (*(v80 + 16))(v79, v78, v81);
    v65 = (*(v62 + 80) + 80) & ~*(v62 + 80);
    v66 = (v76 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    v68 = v92;
    *(v67 + 1) = v91;
    *(v67 + 2) = v68;
    v69 = v94;
    *(v67 + 3) = v93;
    *(v67 + 4) = v69;
    (*(v62 + 32))(&v67[v65], v63, v64);
    v70 = &v67[v66];
    v71 = v88;
    v72 = v90;
    *v70 = v88;
    v70[1] = v72;

    v73 = sub_220888D9C();
    sub_220888E4C();

    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    *(v74 + 24) = v72;

    v60 = sub_220888D9C();
    goto LABEL_13;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_2208300C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v159 = a3;
  v145 = a5;
  v146 = a4;
  v139 = sub_22088CFEC();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v6);
  v137 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205AB5A4(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v136 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4924(0);
  v161 = v11;
  v157 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v135 = v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v154 = v121 - v16;
  sub_2205AB764(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v125 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v148, v20);
  v129 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v130 = v121 - v24;
  sub_22062BF74(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v133 = v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v131 = v121 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = v121 - v33;
  sub_220576D44(0);
  v36 = *(v35 - 8);
  v155 = v35;
  v156 = v36;
  MEMORY[0x28223BE20](v35, v37);
  v142 = v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v149 = v121 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v151 = v121 - v44;
  MEMORY[0x28223BE20](v45, v46);
  v150 = v121 - v47;
  v141 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v141, v48);
  v124 = v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v126 = v121 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v56 = v121 - v55;
  sub_2204D4A18(0);
  v58 = v57;
  v143 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v59);
  v147 = v121 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v62);
  v64 = v121 - v63;
  sub_220832404(0, &qword_281297838, MEMORY[0x277D6DF88]);
  v66 = v65;
  v144 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v67);
  v69 = (v121 - v68);
  v132 = *(a2 + 16);
  sub_22088CEEC();
  sub_220832760(0, &qword_281299000, MEMORY[0x277D698E0], sub_2204953AC, "watchlist allWatchlists ");
  v71 = v70;
  v72 = *(v70 - 8);
  v73 = *(v72 + 56);
  v152 = v56;
  v73(v56, 2, 2, v70);
  v153 = v58;
  sub_22088AD4C();
  sub_22088E76C();
  v74 = v156;

  v75 = v155;
  v140 = v74[6];
  if (v140(v34, 1) == 1)
  {
    sub_2204D6248(v34, sub_22062BF74);
    sub_2208327E8();
    v76 = swift_allocError();
    *v77 = 0xD000000000000025;
    v77[1] = 0x80000002208D8E20;
    sub_2204D6248(v152, type metadata accessor for StockSearchSectionDescriptor);
    (*(v143 + 8))(v64, v153);
    *v69 = v76;
    v78 = v144;
    (*(v144 + 104))(v69, *MEMORY[0x277D6DF68], v66);
LABEL_13:
    v146(v69);
    (*(v78 + 8))(v69, v66);
    return;
  }

  v122 = v69;
  v123 = v66;
  v79 = v74[4];
  v80 = v150;
  v81 = v34;
  v82 = v75;
  v121[1] = v74 + 4;
  v121[0] = v79;
  v79(v150, v81, v75);
  v83 = v74[2];
  v128 = v74 + 2;
  v127 = v83;
  v83(v151, v80, v75);
  sub_22088B31C();
  v84 = v129;
  v85 = v153;
  v134 = v64;
  sub_22088AD8C();
  sub_220823980(2, v130);
  sub_2204D6248(v84, type metadata accessor for StockSearchModel);
  v130 = sub_2208328E4(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
  sub_22088AD7C();
  v86 = v152;
  v87 = v126;
  sub_22068D3D8(v152, v126);
  if (!(*(v72 + 48))(v87, 2, v71))
  {

    v88 = sub_220886A4C();
    (*(*(v88 - 8) + 8))(v87, v88);
  }

  v89 = v131;
  sub_22088E83C();

  if ((v140)(v89, 1, v82) == 1)
  {
    sub_22068D3D8(v86, v124);
    v90 = sub_2208328E4(&qword_281297F48, sub_2204D4A18, MEMORY[0x277D6D408]);
    v91 = sub_2208328E4(&qword_281297F50, sub_2204D4A18, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v85, v90, v91);
    sub_2208328E4(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    v92 = v149;
    sub_22088B29C();
    v93 = (v140)(v89, 1, v82);
    v94 = v157;
    v95 = v154;
    if (v93 != 1)
    {
      sub_2204D6248(v89, sub_22062BF74);
    }
  }

  else
  {
    v92 = v149;
    (v121[0])(v149, v89, v82);
    v94 = v157;
    v95 = v154;
  }

  v127(v142, v92, v82);
  sub_22088AD4C();
  v96 = sub_22088B38C();

  v97 = v159;
  if ((v96 & 1) == 0)
  {
    sub_22088B32C();
  }

  v98 = *(v94 + 16);
  v99 = v97;
  v100 = v161;
  v98(v95, v99, v161);
  sub_22088E75C();
  v101 = v133;
  v127(v133, v149, v82);
  (*(v156 + 56))(v101, 0, 1, v82);
  sub_22088E6DC();
  sub_2204D6248(v101, sub_22062BF74);
  v102 = v135;
  v98(v135, v95, v100);
  sub_2208328E4(&qword_2812995C0, sub_2204D4924, MEMORY[0x277D6EC68]);
  *&v160 = sub_2208915FC();
  v103 = v158;
  sub_22083283C(&v160);
  v158 = v103;
  if (!v103)
  {
    v104 = v160;
    v105 = sub_2208328E4(&qword_281297E38, sub_220576D44, MEMORY[0x277D6D720]);
    v106 = sub_2208328E4(&unk_281297E40, sub_220576D44, MEMORY[0x277D6D718]);
    MEMORY[0x223D80A20](v104, v155, v105, v106);
    sub_2208328E4(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_22088E7CC();
    v107 = v157;
    v108 = v154;
    v109 = v161;
    (*(v157 + 8))(v154, v161);
    v140 = *(v107 + 32);
    v157 = v107 + 32;
    (v140)(v108, v102, v109);
    sub_2208328E4(&qword_281286DE8, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A8860);
    sub_22088BDEC();
    v110 = v138;
    v111 = v137;
    v112 = v139;
    (*(v138 + 104))(v137, *MEMORY[0x277D6E438], v139);
    v113 = sub_22088CECC();
    (*(v110 + 8))(v111, v112);
    v114 = v155;
    v115 = *(v156 + 8);
    v115(v142, v155);
    v115(v149, v114);
    v116 = *(v143 + 8);
    v117 = v153;
    v116(v147, v153);
    v115(v151, v114);
    v115(v150, v114);
    sub_2204D6248(v152, type metadata accessor for StockSearchSectionDescriptor);
    v116(v134, v117);
    sub_22083292C(0);
    v119 = *(v118 + 48);
    v120 = *(v118 + 64);
    v69 = v122;
    (v140)(v122, v154, v161);
    sub_220457328(&v160, v69 + v119);
    *(v69 + v120) = v113;
    v78 = v144;
    v66 = v123;
    (*(v144 + 104))(v69, *MEMORY[0x277D6DF40], v123);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_22083115C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v159 = a3;
  v145 = a5;
  v146 = a4;
  v139 = sub_22088CFEC();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v6);
  v137 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205AB5A4(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v136 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4924(0);
  v161 = v11;
  v157 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v135 = v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v154 = v121 - v16;
  sub_2205AB764(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v125 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v148, v20);
  v129 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v130 = v121 - v24;
  sub_22062BF74(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v133 = v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v131 = v121 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = v121 - v33;
  sub_220576D44(0);
  v36 = *(v35 - 8);
  v155 = v35;
  v156 = v36;
  MEMORY[0x28223BE20](v35, v37);
  v142 = v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v149 = v121 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v151 = v121 - v44;
  MEMORY[0x28223BE20](v45, v46);
  v150 = v121 - v47;
  v141 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v141, v48);
  v124 = v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v126 = v121 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v56 = v121 - v55;
  sub_2204D4A18(0);
  v58 = v57;
  v143 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v59);
  v147 = v121 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v62);
  v64 = v121 - v63;
  sub_220832404(0, &qword_281297838, MEMORY[0x277D6DF88]);
  v66 = v65;
  v144 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v67);
  v69 = (v121 - v68);
  v132 = *(a2 + 16);
  sub_22088CEEC();
  sub_220832760(0, &qword_281299000, MEMORY[0x277D698E0], sub_2204953AC, "watchlist allWatchlists ");
  v71 = v70;
  v72 = *(v70 - 8);
  v73 = *(v72 + 56);
  v152 = v56;
  v73(v56, 1, 2, v70);
  v153 = v58;
  sub_22088AD4C();
  sub_22088E76C();
  v74 = v156;

  v75 = v155;
  v140 = v74[6];
  if (v140(v34, 1) == 1)
  {
    sub_2204D6248(v34, sub_22062BF74);
    sub_2208327E8();
    v76 = swift_allocError();
    *v77 = 0xD000000000000025;
    v77[1] = 0x80000002208D8E20;
    sub_2204D6248(v152, type metadata accessor for StockSearchSectionDescriptor);
    (*(v143 + 8))(v64, v153);
    *v69 = v76;
    v78 = v144;
    (*(v144 + 104))(v69, *MEMORY[0x277D6DF68], v66);
LABEL_13:
    v146(v69);
    (*(v78 + 8))(v69, v66);
    return;
  }

  v122 = v69;
  v123 = v66;
  v79 = v74[4];
  v80 = v150;
  v81 = v34;
  v82 = v75;
  v121[1] = v74 + 4;
  v121[0] = v79;
  v79(v150, v81, v75);
  v83 = v74[2];
  v128 = v74 + 2;
  v127 = v83;
  v83(v151, v80, v75);
  sub_22088B31C();
  v84 = v129;
  v85 = v153;
  v134 = v64;
  sub_22088AD8C();
  sub_220823980(0, v130);
  sub_2204D6248(v84, type metadata accessor for StockSearchModel);
  v130 = sub_2208328E4(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
  sub_22088AD7C();
  v86 = v152;
  v87 = v126;
  sub_22068D3D8(v152, v126);
  if (!(*(v72 + 48))(v87, 2, v71))
  {

    v88 = sub_220886A4C();
    (*(*(v88 - 8) + 8))(v87, v88);
  }

  v89 = v131;
  sub_22088E83C();

  if ((v140)(v89, 1, v82) == 1)
  {
    sub_22068D3D8(v86, v124);
    v90 = sub_2208328E4(&qword_281297F48, sub_2204D4A18, MEMORY[0x277D6D408]);
    v91 = sub_2208328E4(&qword_281297F50, sub_2204D4A18, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v85, v90, v91);
    sub_2208328E4(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    v92 = v149;
    sub_22088B29C();
    v93 = (v140)(v89, 1, v82);
    v94 = v157;
    v95 = v154;
    if (v93 != 1)
    {
      sub_2204D6248(v89, sub_22062BF74);
    }
  }

  else
  {
    v92 = v149;
    (v121[0])(v149, v89, v82);
    v94 = v157;
    v95 = v154;
  }

  v127(v142, v92, v82);
  sub_22088AD4C();
  v96 = sub_22088B38C();

  v97 = v159;
  if ((v96 & 1) == 0)
  {
    sub_22088B30C();
  }

  v98 = *(v94 + 16);
  v99 = v97;
  v100 = v161;
  v98(v95, v99, v161);
  sub_22088E75C();
  v101 = v133;
  v127(v133, v149, v82);
  (*(v156 + 56))(v101, 0, 1, v82);
  sub_22088E6DC();
  sub_2204D6248(v101, sub_22062BF74);
  v102 = v135;
  v98(v135, v95, v100);
  sub_2208328E4(&qword_2812995C0, sub_2204D4924, MEMORY[0x277D6EC68]);
  *&v160 = sub_2208915FC();
  v103 = v158;
  sub_22083283C(&v160);
  v158 = v103;
  if (!v103)
  {
    v104 = v160;
    v105 = sub_2208328E4(&qword_281297E38, sub_220576D44, MEMORY[0x277D6D720]);
    v106 = sub_2208328E4(&unk_281297E40, sub_220576D44, MEMORY[0x277D6D718]);
    MEMORY[0x223D80A20](v104, v155, v105, v106);
    sub_2208328E4(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_22088E7CC();
    v107 = v157;
    v108 = v154;
    v109 = v161;
    (*(v157 + 8))(v154, v161);
    v140 = *(v107 + 32);
    v157 = v107 + 32;
    (v140)(v108, v102, v109);
    sub_2208328E4(&qword_281286DE8, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A8860);
    sub_22088BDEC();
    v110 = v138;
    v111 = v137;
    v112 = v139;
    (*(v138 + 104))(v137, *MEMORY[0x277D6E438], v139);
    v113 = sub_22088CECC();
    (*(v110 + 8))(v111, v112);
    v114 = v155;
    v115 = *(v156 + 8);
    v115(v142, v155);
    v115(v149, v114);
    v116 = *(v143 + 8);
    v117 = v153;
    v116(v147, v153);
    v115(v151, v114);
    v115(v150, v114);
    sub_2204D6248(v152, type metadata accessor for StockSearchSectionDescriptor);
    v116(v134, v117);
    sub_22083292C(0);
    v119 = *(v118 + 48);
    v120 = *(v118 + 64);
    v69 = v122;
    (v140)(v122, v154, v161);
    sub_220457328(&v160, v69 + v119);
    *(v69 + v120) = v113;
    v78 = v144;
    v66 = v123;
    (*(v144 + 104))(v69, *MEMORY[0x277D6DF40], v123);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_2208321F4(void *a1, void (*a2)(char *))
{
  sub_220832404(0, &qword_281297838, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_220832320()
{
  result = qword_27CF5A308;
  if (!qword_27CF5A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A308);
  }

  return result;
}

void sub_220832404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockSearchSectionDescriptor(255);
    v8[1] = type metadata accessor for StockSearchModel(255);
    v8[2] = sub_2208328E4(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    v8[3] = sub_2208328E4(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2208324F8(uint64_t a1)
{
  sub_2204D4924(0);
  v4 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v5 = v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_22083115C(a1, v1 + 16, v1 + v4, *v5, *(v5 + 8));
}

uint64_t objectdestroyTm_17()
{
  sub_2204D4924(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

void sub_220832694(uint64_t a1)
{
  sub_2204D4924(0);
  v4 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v5 = v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_2208300C4(a1, v1 + 16, v1 + v4, *v5, *(v5 + 8));
}

void sub_220832760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2208327E8()
{
  result = qword_27CF5A310;
  if (!qword_27CF5A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A310);
  }

  return result;
}

void sub_22083283C(void *a1)
{
  sub_220576D44(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2207D31E8(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_2208329B8(v6);
  *a1 = v4;
}

uint64_t sub_2208328E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22083292C(uint64_t a1)
{
  if (!qword_27CF5A318)
  {
    sub_2204D4924(255);
    sub_220816E18();
    sub_22088D00C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF5A318);
    }
  }
}

void sub_2208329B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22089286C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_220576D44(0);
        v6 = sub_22089178C();
        *(v6 + 16) = v5;
      }

      sub_220576D44(0);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_220833004(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_220832AE4(0, v2, 1, a1);
  }
}

void sub_220832AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v78 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v77 = &v62 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v62 - v20;
  sub_220576D44(0);
  v23 = v22;
  MEMORY[0x28223BE20](v22, v24);
  v72 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v82 = &v62 - v28;
  v32 = MEMORY[0x28223BE20](v29, v30);
  v81 = &v62 - v33;
  v64 = a2;
  if (a3 != a2)
  {
    v34 = *a4;
    v36 = *(v31 + 16);
    v35 = v31 + 16;
    v37 = *(v35 + 56);
    v74 = (v35 - 8);
    v75 = v36;
    v76 = v35;
    v38 = (v34 + v37 * (a3 - 1));
    v69 = -v37;
    v70 = (v35 + 16);
    v39 = a1 - a3;
    v71 = v34;
    v63 = v37;
    v40 = v34 + v37 * a3;
    v73 = v21;
LABEL_5:
    v67 = v38;
    v68 = a3;
    v65 = v40;
    v66 = v39;
    while (1)
    {
      v80 = v39;
      v41 = v17;
      v42 = v75;
      (v75)(v81, v40, v23, v32);
      v42(v82, v38, v23);
      sub_22088B2AC();
      sub_22088B2AC();
      v43 = v77;
      sub_22068D3D8(v21, v77);
      sub_220832760(0, &qword_281299000, MEMORY[0x277D698E0], sub_2204953AC, "watchlist allWatchlists ");
      v45 = v44;
      v46 = *(*(v44 - 8) + 48);
      v47 = v46(v43, 2, v44);
      if (v47)
      {
        v48 = v47 != 1;
      }

      else
      {
        v49 = v77;

        v50 = sub_220886A4C();
        (*(*(v50 - 8) + 8))(v49, v50);
        v48 = 2;
      }

      v79 = v48;
      v51 = v41;
      v52 = v78;
      sub_22068D3D8(v41, v78);
      v53 = v46(v52, 2, v45);
      v54 = v80;
      if (v53)
      {
        v21 = v73;
        v55 = v53 != 1;
        v17 = v51;
      }

      else
      {
        v56 = v78;

        v57 = sub_220886A4C();
        (*(*(v57 - 8) + 8))(v56, v57);
        v55 = 2;
        v17 = v51;
        v21 = v73;
      }

      sub_2204D6248(v17, type metadata accessor for StockSearchSectionDescriptor);
      sub_2204D6248(v21, type metadata accessor for StockSearchSectionDescriptor);
      v58 = *v74;
      (*v74)(v82, v23);
      v58(v81, v23);
      if (v79 >= v55)
      {
LABEL_4:
        a3 = v68 + 1;
        v38 = &v67[v63];
        v39 = v66 - 1;
        v40 = v65 + v63;
        if (v68 + 1 == v64)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v71)
      {
        break;
      }

      v59 = *v70;
      v60 = v72;
      (*v70)(v72, v40, v23);
      swift_arrayInitWithTakeFrontToBack();
      v59(v38, v60, v23);
      v38 += v69;
      v40 += v69;
      v61 = __CFADD__(v54, 1);
      v39 = v54 + 1;
      if (v61)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_220833004(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v180 = a1;
  v8 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v206 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v205 = &v174 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v210 = &v174 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v209 = &v174 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v190 = &v174 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v189 = &v174 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v197 = &v174 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v195 = &v174 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v176 = &v174 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v175 = &v174 - v37;
  sub_220576D44(0);
  v39 = v38;
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v41);
  v184 = &v174 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v200 = &v174 - v45;
  MEMORY[0x28223BE20](v46, v47);
  v208 = &v174 - v48;
  MEMORY[0x28223BE20](v49, v50);
  v207 = &v174 - v51;
  MEMORY[0x28223BE20](v52, v53);
  v194 = &v174 - v54;
  MEMORY[0x28223BE20](v55, v56);
  v193 = &v174 - v57;
  MEMORY[0x28223BE20](v58, v59);
  v174 = &v174 - v60;
  v63 = MEMORY[0x28223BE20](v61, v62);
  v178 = &v174 - v64;
  v192 = a3;
  v65 = *(a3 + 8);
  if (v65 < 1)
  {
    v67 = MEMORY[0x277D84F90];
LABEL_105:
    a3 = *v180;
    if (!*v180)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v67 = sub_2207D2DE0(v67);
    }

    v211 = v67;
    v170 = *(v67 + 2);
    if (v170 >= 2)
    {
      while (*v192)
      {
        v171 = *&v67[16 * v170];
        v172 = *&v67[16 * v170 + 24];
        sub_220834064(*v192 + *(v40 + 72) * v171, (*v192 + *(v40 + 72) * *&v67[16 * v170 + 16]), *v192 + *(v40 + 72) * v172, a3);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v172 < v171)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_2207D2DE0(v67);
        }

        if (v170 - 2 >= *(v67 + 2))
        {
          goto LABEL_131;
        }

        v173 = &v67[16 * v170];
        *v173 = v171;
        *(v173 + 1) = v172;
        v211 = v67;
        sub_2207D2D54(v170 - 1);
        v67 = v211;
        v170 = *(v211 + 2);
        if (v170 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_141;
    }

LABEL_115:

    return;
  }

  v66 = 0;
  v203 = (v40 + 8);
  v204 = v40 + 16;
  v67 = MEMORY[0x277D84F90];
  v202 = (v40 + 32);
  v188 = v40;
  v179 = a4;
  while (1)
  {
    v68 = v66;
    v191 = v67;
    if (v66 + 1 >= v65)
    {
      v84 = v66 + 1;
    }

    else
    {
      v196 = v65;
      v177 = v5;
      v69 = v40;
      v70 = *v192;
      v186 = v70;
      v71 = *(v40 + 72);
      v181 = v66;
      v72 = v70 + v71 * (v66 + 1);
      v73 = *(v69 + 16);
      v73(v178, v72, v39, v63);
      v74 = v70 + v71 * v66;
      v75 = v174;
      v198 = v73;
      (v73)(v174, v74, v39);
      v76 = v175;
      sub_22088B2AC();
      v77 = v176;
      sub_22088B2AC();
      LODWORD(v199) = sub_22068D43C(v76, v77);
      sub_2204D6248(v77, type metadata accessor for StockSearchSectionDescriptor);
      sub_2204D6248(v76, type metadata accessor for StockSearchSectionDescriptor);
      v78 = *(v188 + 8);
      a3 = v203;
      v78(v75, v39);
      v187 = v78;
      v78(v178, v39);
      v79 = v181 + 2;
      v201 = v71;
      v80 = v186 + v71 * (v181 + 2);
      while (1)
      {
        v84 = v196;
        if (v196 == v79)
        {
          break;
        }

        v85 = v198;
        (v198)(v193, v80, v39);
        v85(v194, v72, v39);
        v86 = v195;
        sub_22088B2AC();
        sub_22088B2AC();
        v87 = v189;
        sub_22068D3D8(v86, v189);
        sub_220832760(0, &qword_281299000, MEMORY[0x277D698E0], sub_2204953AC, "watchlist allWatchlists ");
        v89 = v88;
        v90 = *(*(v88 - 8) + 48);
        v91 = v90(v87, 2, v88);
        if (v91)
        {
          v92 = v91 != 1;
        }

        else
        {
          v93 = v189;

          v94 = sub_220886A4C();
          (*(*(v94 - 8) + 8))(v93, v94);
          v92 = 2;
        }

        v95 = v190;
        sub_22068D3D8(v197, v190);
        v96 = v90(v95, 2, v89);
        if (v96)
        {
          a3 = v96 != 1;
        }

        else
        {
          v81 = v190;

          v82 = sub_220886A4C();
          (*(*(v82 - 8) + 8))(v81, v82);
          a3 = 2;
        }

        v67 = v191;
        sub_2204D6248(v197, type metadata accessor for StockSearchSectionDescriptor);
        sub_2204D6248(v195, type metadata accessor for StockSearchSectionDescriptor);
        v83 = v187;
        v187(v194, v39);
        v83(v193, v39);
        ++v79;
        v80 += v201;
        v72 += v201;
        if (((v199 ^ (v92 >= a3)) & 1) == 0)
        {
          v84 = v79 - 1;
          break;
        }
      }

      v5 = v177;
      v40 = v188;
      a4 = v179;
      v68 = v181;
      if (v199)
      {
        if (v84 < v181)
        {
          goto LABEL_134;
        }

        if (v181 < v84)
        {
          a3 = v201 * (v84 - 1);
          v97 = v84 * v201;
          v196 = v84;
          v98 = v181;
          v99 = v181 * v201;
          do
          {
            if (v98 != --v84)
            {
              v100 = *v192;
              if (!*v192)
              {
                goto LABEL_140;
              }

              v101 = *v202;
              (*v202)(v184, v100 + v99, v39);
              if (v99 < a3 || v100 + v99 >= v100 + v97)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v99 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v101((v100 + a3), v184, v39);
              v67 = v191;
            }

            ++v98;
            a3 -= v201;
            v97 -= v201;
            v99 += v201;
          }

          while (v98 < v84);
          v5 = v177;
          v40 = v188;
          a4 = v179;
          v68 = v181;
          v84 = v196;
        }
      }
    }

    v102 = v192[1];
    if (v84 < v102)
    {
      if (__OFSUB__(v84, v68))
      {
        goto LABEL_133;
      }

      if (v84 - v68 < a4)
      {
        if (__OFADD__(v68, a4))
        {
          goto LABEL_135;
        }

        if (v68 + a4 < v102)
        {
          v102 = v68 + a4;
        }

        if (v102 < v68)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v84 != v102)
        {
          break;
        }
      }
    }

    v66 = v84;
    if (v84 < v68)
    {
      goto LABEL_132;
    }

LABEL_39:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_220587F84(0, *(v67 + 2) + 1, 1, v67);
    }

    a3 = *(v67 + 2);
    v103 = *(v67 + 3);
    v104 = a3 + 1;
    if (a3 >= v103 >> 1)
    {
      v67 = sub_220587F84((v103 > 1), a3 + 1, 1, v67);
    }

    *(v67 + 2) = v104;
    v105 = &v67[16 * a3];
    *(v105 + 4) = v68;
    *(v105 + 5) = v66;
    v106 = *v180;
    if (!*v180)
    {
      goto LABEL_142;
    }

    if (a3)
    {
      while (1)
      {
        v40 = v104 - 1;
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v107 = *(v67 + 4);
          v108 = *(v67 + 5);
          v117 = __OFSUB__(v108, v107);
          v109 = v108 - v107;
          v110 = v117;
LABEL_58:
          if (v110)
          {
            goto LABEL_121;
          }

          v123 = &v67[16 * v104];
          v125 = *v123;
          v124 = *(v123 + 1);
          v126 = __OFSUB__(v124, v125);
          v127 = v124 - v125;
          v128 = v126;
          if (v126)
          {
            goto LABEL_124;
          }

          v129 = &v67[16 * v40 + 32];
          v131 = *v129;
          v130 = *(v129 + 1);
          v117 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v117)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v127, v132))
          {
            goto LABEL_128;
          }

          if (v127 + v132 >= v109)
          {
            if (v109 < v132)
            {
              v40 = v104 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v133 = &v67[16 * v104];
        v135 = *v133;
        v134 = *(v133 + 1);
        v117 = __OFSUB__(v134, v135);
        v127 = v134 - v135;
        v128 = v117;
LABEL_72:
        if (v128)
        {
          goto LABEL_123;
        }

        v136 = &v67[16 * v40];
        v138 = *(v136 + 4);
        v137 = *(v136 + 5);
        v117 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v117)
        {
          goto LABEL_126;
        }

        if (v139 < v127)
        {
          goto LABEL_3;
        }

LABEL_79:
        a3 = v40 - 1;
        if (v40 - 1 >= v104)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v192)
        {
          goto LABEL_139;
        }

        v144 = *&v67[16 * a3 + 32];
        v145 = *&v67[16 * v40 + 40];
        sub_220834064(*v192 + *(v188 + 72) * v144, (*v192 + *(v188 + 72) * *&v67[16 * v40 + 32]), *v192 + *(v188 + 72) * v145, v106);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v145 < v144)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_2207D2DE0(v67);
        }

        if (a3 >= *(v67 + 2))
        {
          goto LABEL_118;
        }

        v146 = &v67[16 * a3];
        *(v146 + 4) = v144;
        *(v146 + 5) = v145;
        v211 = v67;
        sub_2207D2D54(v40);
        v67 = v211;
        v104 = *(v211 + 2);
        if (v104 <= 1)
        {
          goto LABEL_3;
        }
      }

      v111 = &v67[16 * v104 + 32];
      v112 = *(v111 - 64);
      v113 = *(v111 - 56);
      v117 = __OFSUB__(v113, v112);
      v114 = v113 - v112;
      if (v117)
      {
        goto LABEL_119;
      }

      v116 = *(v111 - 48);
      v115 = *(v111 - 40);
      v117 = __OFSUB__(v115, v116);
      v109 = v115 - v116;
      v110 = v117;
      if (v117)
      {
        goto LABEL_120;
      }

      v118 = &v67[16 * v104];
      v120 = *v118;
      v119 = *(v118 + 1);
      v117 = __OFSUB__(v119, v120);
      v121 = v119 - v120;
      if (v117)
      {
        goto LABEL_122;
      }

      v117 = __OFADD__(v109, v121);
      v122 = v109 + v121;
      if (v117)
      {
        goto LABEL_125;
      }

      if (v122 >= v114)
      {
        v140 = &v67[16 * v40 + 32];
        v142 = *v140;
        v141 = *(v140 + 1);
        v117 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v117)
        {
          goto LABEL_129;
        }

        if (v109 < v143)
        {
          v40 = v104 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v65 = v192[1];
    v40 = v188;
    a4 = v179;
    if (v66 >= v65)
    {
      goto LABEL_105;
    }
  }

  v183 = v102;
  v177 = v5;
  v147 = *v192;
  v148 = *(v40 + 72);
  v201 = *(v40 + 16);
  v40 = v147 + v148 * (v84 - 1);
  v198 = -v148;
  v181 = v68;
  v149 = v68 - v84;
  v199 = v147;
  v182 = v148;
  v150 = v147 + v84 * v148;
LABEL_90:
  v196 = v84;
  v185 = v150;
  v186 = v149;
  v187 = v40;
  while (1)
  {
    v151 = v201;
    (v201)(v207, v150, v39, v63);
    v151(v208, v40, v39);
    v152 = v209;
    sub_22088B2AC();
    sub_22088B2AC();
    v153 = v152;
    v154 = v205;
    sub_22068D3D8(v153, v205);
    sub_220832760(0, &qword_281299000, MEMORY[0x277D698E0], sub_2204953AC, "watchlist allWatchlists ");
    v156 = v155;
    v157 = *(*(v155 - 8) + 48);
    v158 = v157(v154, 2, v155);
    if (v158)
    {
      v159 = v158 != 1;
    }

    else
    {
      v160 = v205;

      v161 = sub_220886A4C();
      (*(*(v161 - 8) + 8))(v160, v161);
      v159 = 2;
    }

    v162 = v206;
    sub_22068D3D8(v210, v206);
    v163 = v157(v162, 2, v156);
    if (v163)
    {
      v164 = v163 != 1;
    }

    else
    {
      v165 = v206;

      v166 = sub_220886A4C();
      (*(*(v166 - 8) + 8))(v165, v166);
      v164 = 2;
    }

    sub_2204D6248(v210, type metadata accessor for StockSearchSectionDescriptor);
    sub_2204D6248(v209, type metadata accessor for StockSearchSectionDescriptor);
    a3 = v203;
    v167 = *v203;
    (*v203)(v208, v39);
    v167(v207, v39);
    if (v159 >= v164)
    {
LABEL_89:
      v84 = v196 + 1;
      v40 = v187 + v182;
      v149 = v186 - 1;
      v150 = v185 + v182;
      if (v196 + 1 != v183)
      {
        goto LABEL_90;
      }

      v5 = v177;
      v67 = v191;
      v68 = v181;
      v66 = v183;
      if (v183 < v181)
      {
        goto LABEL_132;
      }

      goto LABEL_39;
    }

    if (!v199)
    {
      break;
    }

    v168 = *v202;
    a3 = v200;
    (*v202)(v200, v150, v39);
    swift_arrayInitWithTakeFrontToBack();
    v168(v40, a3, v39);
    v40 += v198;
    v150 += v198;
    if (__CFADD__(v149++, 1))
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}