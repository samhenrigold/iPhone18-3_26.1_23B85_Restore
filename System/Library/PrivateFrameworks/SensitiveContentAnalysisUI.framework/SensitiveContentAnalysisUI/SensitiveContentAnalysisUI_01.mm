uint64_t sub_1BC656F4C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[8];
  v4 = v0[7];
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v3;
  sub_1BC75A4A0();

  v0[21] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC657060, v7, v6);
}

uint64_t sub_1BC657060()
{

  if (qword_1EBCDF9A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BC6570F8, v1, 0);
}

uint64_t sub_1BC6570F8(uint64_t a1)
{
  *(v1 + 176) = sub_1BC75BDD0();
  v3 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC657184, v3, v2);
}

uint64_t sub_1BC657184()
{

  if (qword_1EBCF4430)
  {
    sub_1BC65E764(&xmmword_1EBCF4418, v0 + 16);
  }

  else
  {
    v1 = qword_1EBCF4438;
    v2 = *algn_1EBCF4428;
    *(v0 + 16) = xmmword_1EBCF4418;
    *(v0 + 32) = v2;
    *(v0 + 48) = v1;
  }

  v3 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BC657224, v3, 0);
}

uint64_t sub_1BC657224()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  if (v0[5])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_1BC75A490();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    (*(v2 + 8))(v0[11], v0[9]);
    if (!v0[5])
    {
      goto LABEL_5;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
LABEL_5:

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BC657320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v78 = a4;
  v79 = a5;
  v77 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD28, &qword_1BC75F808);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v69[-v7];
  v8 = sub_1BC75A3E0();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v69[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD30, &qword_1BC75F810);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = &v69[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD38, &qword_1BC75F818);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v69[-v15];
  v75 = sub_1BC75A390();
  v16 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v69[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD40, &qword_1BC75F820);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v74 = &v69[-v19];
  v20 = sub_1BC75A410();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v73 = &v69[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD48, &qword_1BC75F828);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v69[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD50, &qword_1BC75F830);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v69[-v26];
  v28 = sub_1BC75A340();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD58, &qword_1BC75F838);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v69[-v30];
  sub_1BC759920();
  sub_1BC75A460();
  v32 = type metadata accessor for AnalyticsUIContext(0);

  sub_1BC75A370();
  v33 = a2 + v32[7];
  if (*(v33 + 8) == 1)
  {
    goto LABEL_2;
  }

  v35 = *v33;
  if (v35 > 2)
  {
    if (v35 == 3)
    {
      v36 = MEMORY[0x1E69AA668];
      goto LABEL_12;
    }

    if (v35 == 4)
    {
      v36 = MEMORY[0x1E69AA660];
      goto LABEL_12;
    }

LABEL_2:
    v34 = sub_1BC75A360();
    (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
    goto LABEL_13;
  }

  if (v35 == 1)
  {
    v36 = MEMORY[0x1E69AA670];
    goto LABEL_12;
  }

  if (v35 != 2)
  {
    goto LABEL_2;
  }

  v36 = MEMORY[0x1E69AA678];
LABEL_12:
  v70 = *v36;
  v37 = sub_1BC75A360();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v31, v70, v37);
  (*(v38 + 56))(v31, 0, 1, v37);
LABEL_13:
  v39 = v73;
  sub_1BC75A380();
  sub_1BC657D2C(*(a2 + v32[8]));
  sub_1BC75A350();
  v40 = a2 + v32[9];
  if (*(v40 + 8) == 1)
  {
    v41 = sub_1BC75A2E0();
    (*(*(v41 - 8) + 56))(v27, 1, 1, v41);
  }

  else
  {
    sub_1BC657E70(*v40, v27);
  }

  v42 = v81;
  sub_1BC75A2F0();
  sub_1BC657FD0(MEMORY[0x1E69AA708], MEMORY[0x1E69AA710], MEMORY[0x1E69AA700], MEMORY[0x1E69AA6F8], v24);
  sub_1BC75A470();
  sub_1BC658268(v39);
  sub_1BC75A420();
  v43 = v32[10];
  if (*(a2 + v43) <= 1u)
  {
    if (*(a2 + v43))
    {
      v44 = MEMORY[0x1E69AA688];
    }

    else
    {
      v44 = MEMORY[0x1E69AA690];
    }

    v45 = v82;
    v47 = v74;
    v46 = v75;
    goto LABEL_23;
  }

  v45 = v82;
  v47 = v74;
  v46 = v75;
  if (*(a2 + v43) == 2)
  {
    v44 = MEMORY[0x1E69AA680];
LABEL_23:
    v48 = v72;
    (*(v16 + 104))(v72, *v44, v46);
    (*(v16 + 32))(v47, v48, v46);
    v49 = 0;
    goto LABEL_25;
  }

  v49 = 1;
LABEL_25:
  (*(v16 + 56))(v47, v49, 1, v46);
  sub_1BC75A3A0();

  sub_1BC75A450();
  v50 = sub_1BC75A3B0();
  v51 = *(v50 - 8);
  v52 = v76;
  (*(v51 + 16))(v76, v79, v50);
  (*(v51 + 56))(v52, 0, 1, v50);
  sub_1BC75A3C0();
  v53 = AnalyticsUIContext.reportToAppleVisibility.getter();
  v54 = *(v45 + 104);
  if (v53 == 2)
  {
    v55 = v83;
    v54(v42, *MEMORY[0x1E69AA6B0], v83);
    v56 = *(v45 + 32);
  }

  else
  {
    v57 = MEMORY[0x1E69AA6C0];
    if ((v53 & 1) == 0)
    {
      v57 = MEMORY[0x1E69AA6B8];
    }

    v58 = v71;
    v55 = v83;
    v54(v71, *v57, v83);
    v56 = *(v45 + 32);
    v56(v42, v58, v55);
  }

  v59 = v80;
  v56(v80, v42, v55);
  (*(v45 + 56))(v59, 0, 1, v55);
  sub_1BC75A3D0();
  v60 = *(a2 + v32[13]);
  if (sub_1BC659008(4, v60, v61) || sub_1BC659008(5, v60, v62))
  {
    v63 = *MEMORY[0x1E69AA6E8];
    v64 = sub_1BC75A430();
    v65 = v84;
    (*(*(v64 - 8) + 104))(v84, v63, v64);
  }

  else
  {
    v66 = *(a2 + v43);
    v64 = sub_1BC75A430();
    v65 = v84;
    if (v66 == 3)
    {
      v67 = MEMORY[0x1E69AA6F0];
    }

    else
    {
      v67 = MEMORY[0x1E69AA6E0];
    }

    (*(*(v64 - 8) + 104))(v84, *v67, v64);
  }

  sub_1BC75A430();
  (*(*(v64 - 8) + 56))(v65, 0, 1, v64);
  return sub_1BC75A440();
}

uint64_t sub_1BC657D2C(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {

      return MEMORY[0x1EEE14F20]();
    }

    else
    {
      if (a1 != 8)
      {
        goto LABEL_12;
      }

      return MEMORY[0x1EEE14F08]();
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {

        return sub_1BC75A320();
      }

LABEL_12:
      sub_1BC75A340();
      sub_1BC65E9D8(&qword_1EBCDBC38, 255, MEMORY[0x1E69AA650], MEMORY[0x1E69AA658]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC40, &unk_1BC75F1A0);
      sub_1BC65FF68(&qword_1EBCDBC48, &qword_1EBCDBC40, &unk_1BC75F1A0);
      return sub_1BC75C1B0();
    }

    return sub_1BC75A310();
  }
}

uint64_t sub_1BC657E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x1E69AA640];
      goto LABEL_10;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = MEMORY[0x1E69AA638];
        goto LABEL_10;
      case 4:
        v3 = MEMORY[0x1E69AA648];
        goto LABEL_10;
      case 3:
        v3 = MEMORY[0x1E69AA630];
LABEL_10:
        v4 = *v3;
        v5 = sub_1BC75A2E0();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_12;
    }
  }

  v10 = sub_1BC75A2E0();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a2;
  v8 = 1;
LABEL_12:

  return v6(v7, v8, 1, v9);
}

uint64_t sub_1BC657FD0@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v23 = a3;
  v8 = sub_1BC759EE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759E40();
  sub_1BC65E9D8(&qword_1EDDCF090, 255, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
  v12 = sub_1BC75C170();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (v12)
  {
    v14 = *a1;
  }

  else
  {
    sub_1BC759E20();
    v15 = sub_1BC75C170();
    v13(v11, v8);
    if (v15)
    {
      v16 = v23;
    }

    else
    {
      sub_1BC759E30();
      v17 = sub_1BC75C170();
      v13(v11, v8);
      if ((v17 & 1) == 0)
      {
        v21 = a2(0);
        return (*(*(v21 - 8) + 56))(a5, 1, 1, v21);
      }

      v16 = v22;
    }

    v14 = *v16;
  }

  v18 = a2(0);
  v19 = *(v18 - 8);
  (*(v19 + 104))(a5, v14, v18);
  return (*(v19 + 56))(a5, 0, 1, v18);
}

uint64_t sub_1BC658268@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BC75A410();
  v27 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v24 - v5;
  v6 = sub_1BC759C70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BC65E9D8(&qword_1EBCDBD60, 255, MEMORY[0x1E69AA6C8], MEMORY[0x1E69AA6D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD68, &qword_1BC75F840);
  sub_1BC65FF68(&qword_1EBCDBD70, &qword_1EBCDBD68, &qword_1BC75F840);
  v28 = a1;
  v24 = v2;
  sub_1BC75C1B0();
  sub_1BC759C50();
  sub_1BC65E9D8(&qword_1EBCDBD78, 255, MEMORY[0x1E697B418], MEMORY[0x1E697B438]);
  v10 = sub_1BC75C170();
  v11 = *(v7 + 8);
  v11(v9, v6);
  if (v10)
  {
    v12 = v25;
    sub_1BC75A320();
    v13 = v26;
    sub_1BC659E48(v26, v12);
    v14 = *(v27 + 8);
    v15 = v12;
    v16 = v24;
    v14(v15, v24);
    v14(v13, v16);
  }

  sub_1BC759C20();
  v17 = sub_1BC75C170();
  result = (v11)(v9, v6);
  if (v17)
  {
    v19 = v25;
    sub_1BC75A310();
    v20 = v26;
    sub_1BC659E48(v26, v19);
    v21 = *(v27 + 8);
    v22 = v19;
    v23 = v24;
    v21(v22, v24);
    return (v21)(v20, v23);
  }

  return result;
}

uint64_t AnalyticsUIContext.reportToAppleVisibility.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnalyticsUIContext(0) + 52));
  if (sub_1BC659008(4, v1, v2) || sub_1BC659008(5, v1, v3))
  {
    return 2;
  }

  v5 = sub_1BC661F24();
  sub_1BC65E6C8(v5, v6, v7);
  if (sub_1BC75C170())
  {
    sub_1BC661F54();
    v8 = sub_1BC75C170();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL AnalyticsUIContext.resourceOrigin.getter@<W0>(char *a1@<X8>)
{
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v4 = *(v1 + *(v3 + 52));
  result = sub_1BC659008(4, v4, v5);
  if (result || (result = sub_1BC659008(5, v4, v7)))
  {
    v8 = 0;
  }

  else if (*(v1 + *(v3 + 40)) == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *a1 = v8;
  return result;
}

unint64_t sub_1BC658714()
{
  result = sub_1BC65DA54(MEMORY[0x1E69E7CC0]);
  qword_1EBCDF9C8 = result;
  return result;
}

uint64_t static SCUIAnalytics.contextMenuToOptions.getter()
{
  if (qword_1EBCDF9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SCUIAnalytics.contextMenuToOptions.setter(uint64_t a1)
{
  if (qword_1EBCDF9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBCDF9C8 = a1;
}

uint64_t (*static SCUIAnalytics.contextMenuToOptions.modify(uint64_t a1))()
{
  if (qword_1EBCDF9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static SCUIAnalytics.insertNewOptionsToContextMenu(with:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EBCDF9C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v6 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = qword_1EBCDF9C8;
  qword_1EBCDF9C8 = 0x8000000000000000;
  sub_1BC65C27C(v6, a1, a2, isUniquelyReferenced_nonNull_native);

  qword_1EBCDF9C8 = v9;
  return swift_endAccess();
}

uint64_t static SCUIAnalytics.deleteAnalyticsUIContext(with:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v9 - v4;
  if (a1)
  {
    v6 = qword_1EBCDF9B0;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    sub_1BC75C7B0();
    v8 = (*(*v9[0] + 104))(v9);
    sub_1BC65B838(v7, v5);
    sub_1BC66008C(v5, &qword_1EBCDBC50, &qword_1BC762D70);
    v8(v9, 0);
  }

  return result;
}

uint64_t static SCUIAnalytics.insertContext(contextKey:context:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  if (qword_1EBCDF9B0 != -1)
  {
    swift_once();
  }

  sub_1BC75C7B0();
  v7 = v13[0];
  sub_1BC65F4F0(a2, v6, type metadata accessor for AnalyticsUIContext);
  v8 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = *(*v7 + 104);
  v10 = a1;
  v11 = v9(v13);
  sub_1BC6548D4(v6, v10);
  v11(v13, 0);
}

BOOL sub_1BC659008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = a2 + 32;
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    ++v4;
    sub_1BC65FDD4(a1, a2, a3);
    a1 = sub_1BC75BAB0();
  }

  while ((a1 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1BC6594A0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t, char *))
{
  v8 = v5;
  v10 = a2(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  sub_1BC75BDE0();
  sub_1BC75C200();
  v14 = [objc_allocWithZone(SCUIAnalytics) init];
  v15 = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v16 = v8 + *(type metadata accessor for InterventionConfig(0) + 32);
  a4(a1);
  a5(v16 + v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BC65966C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t), void (*a7)(char *, char *))
{
  v11 = (a4)(0, a2);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  sub_1BC75BDE0();
  v15 = a1;
  sub_1BC75C200();
  v16 = [objc_allocWithZone(SCUIAnalytics) init];
  v17 = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v18 = &v15[*(type metadata accessor for InterventionConfig(0) + 32)];
  a6(a3);
  a7(&v18[v17], v14);

  return (*(v12 + 8))(v14, v11);
}

uint64_t InterventionScreenModel.findAnalyticsUIContextWith(config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InterventionConfig(0);
  v9 = *(a1 + *(v8 + 28));
  v20 = sub_1BC75BB60();
  v21 = v10;
  sub_1BC75C1F0();
  if (*(v9 + 16) && (v11 = sub_1BC65B7F4(v22), (v12 & 1) != 0))
  {
    sub_1BC65F494(*(v9 + 56) + 32 * v11, v23);
    sub_1BC65F440(v22);
    sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
    if (swift_dynamicCast())
    {
      v13 = v20;
      if (qword_1EBCDF9B0 != -1)
      {
        swift_once();
      }

      v14 = sub_1BC75C7B0();
      v15 = (*(*v22[0] + 88))(v14);

      if (*(v15 + 16))
      {
        v16 = sub_1BC65B738(v13);
        if (v17)
        {
          sub_1BC65F4F0(*(v15 + 56) + *(v5 + 72) * v16, v7, type metadata accessor for AnalyticsUIContext);

          return sub_1BC65D8C4(v7, a2);
        }
      }
    }
  }

  else
  {
    sub_1BC65F440(v22);
  }

  return sub_1BC65F4F0(a1 + *(v8 + 32), a2, type metadata accessor for AnalyticsUIContext);
}

BOOL sub_1BC659A70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1BC65E6C8(a1, a2, a3);
  v4 = sub_1BC75C180();
  sub_1BC65FE28(v4, v5, v6);
  v7 = sub_1BC75BAB0();
  if (v7)
  {
    v8 = v10;
  }

  else
  {
    v8 = a2;
    sub_1BC75C190();
  }

  *a1 = v8;
  return (v7 & 1) == 0;
}

uint64_t sub_1BC659B38(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDE0, &qword_1BC75F890);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v28 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - v7;
  v9 = sub_1BC75A250();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - v14;
  v26 = *(v10 + 16);
  v27 = v2;
  v26(v13, v2, v9);
  v16 = MEMORY[0x1E69A9FE8];
  v25[1] = sub_1BC65E9D8(&qword_1EBCDBDC8, 255, MEMORY[0x1E69A9FE8], MEMORY[0x1E69A9FF8]);
  sub_1BC75C180();
  v17 = v16;
  v18 = v4;
  sub_1BC65E9D8(&qword_1EBCDBDE8, 255, v17, MEMORY[0x1E69A9FF0]);
  v19 = sub_1BC75BAB0();
  v20 = *(v4 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v21 = v26;
    v26(&v8[v20], a2, v9);
    v21(v13, a2, v9);
    sub_1BC75C190();
  }

  v22 = v28;
  sub_1BC65FFBC(v8, v28, &qword_1EBCDBDE0, &qword_1BC75F890);
  v23 = *v22;
  (*(v10 + 32))(v29, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_1BC659E48(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD80, &qword_1BC75F848);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v28 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - v7;
  v9 = sub_1BC75A410();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - v14;
  v26 = *(v10 + 16);
  v27 = v2;
  v26(v13, v2, v9);
  v16 = MEMORY[0x1E69AA6C8];
  v25[1] = sub_1BC65E9D8(&qword_1EBCDBD60, 255, MEMORY[0x1E69AA6C8], MEMORY[0x1E69AA6D8]);
  sub_1BC75C180();
  v17 = v16;
  v18 = v4;
  sub_1BC65E9D8(&qword_1EBCDBD88, 255, v17, MEMORY[0x1E69AA6D0]);
  v19 = sub_1BC75BAB0();
  v20 = *(v4 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v21 = v26;
    v26(&v8[v20], a2, v9);
    v21(v13, a2, v9);
    sub_1BC75C190();
  }

  v22 = v28;
  sub_1BC65FFBC(v8, v28, &qword_1EBCDBD80, &qword_1BC75F848);
  v23 = *v22;
  (*(v10 + 32))(v29, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_1BC65A158()
{
  v1 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC65F4F0(v0, v3, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_11:
        sub_1BC65FD74(v3, type metadata accessor for InterventionConfig.Layout);
        return 2;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      v6 = sub_1BC759D00();
      (*(*(v6 - 8) + 8))(v3, v6);
      return 2;
    }

LABEL_15:
    sub_1BC65FD74(v3, type metadata accessor for InterventionConfig.Layout);
    return 1;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      return 1;
    }

    return 2;
  }

  sub_1BC65FD74(v3, type metadata accessor for InterventionConfig.Layout);
  return 4;
}

uint64_t sub_1BC65A310()
{
  v77 = sub_1BC759D10();
  v76 = *(v77 - 1);
  MEMORY[0x1EEE9AC00](v77);
  v83 = &v73 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC68, &qword_1BC75F1B8);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v73 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC70, &qword_1BC75F1C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v81 = &v73 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v73 - v7;
  v8 = sub_1BC759D50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC78, &qword_1BC75F1C8);
  MEMORY[0x1EEE9AC00](v96);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v73 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v101 = &v73 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v73 - v24;
  v103 = sub_1BC759DE0();
  v98 = *(v103 - 8);
  v26 = MEMORY[0x1EEE9AC00](v103);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v99 = &v73 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v73 - v31;
  v33 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC65F4F0(v102, v35, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
      {
        sub_1BC65FD74(v35, type metadata accessor for InterventionConfig.Layout);
        return 4;
      }

      goto LABEL_21;
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

    v38 = sub_1BC759D00();
    (*(*(v38 - 8) + 8))(v35, v38);
    return 4;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v56 = v98;
      v57 = v103;
      (*(v98 + 4))(v28, v35, v103);
      sub_1BC759DA0();
      if ((*(v9 + 48))(v16, 1, v8) != 1)
      {
        v58 = v83;
        sub_1BC759D20();
        (*(v9 + 8))(v16, v8);
        v59 = sub_1BC666CC0();
        (*(v76 + 8))(v58, v77);
        v56[1](v28, v57);
        return v59;
      }

      sub_1BC66008C(v16, &qword_1EBCDBC80, qword_1BC75F1D0);
      v56[1](v28, v57);
      return 0;
    }

    if (EnumCaseMultiPayload != 4)
    {
LABEL_21:
      sub_1BC65FD74(v35, type metadata accessor for InterventionConfig.Layout);
      return 0;
    }

    goto LABEL_10;
  }

  result = *v35;
  v91 = *(*v35 + 16);
  if (!v91)
  {
LABEL_25:

    return 1;
  }

  v88 = v25;
  v39 = 0;
  v102 = result + ((*(v98 + 80) + 32) & ~*(v98 + 80));
  v93 = v98 + 16;
  v79 = (v9 + 56);
  v95 = (v9 + 48);
  v74 = (v9 + 32);
  v75 = (v9 + 8);
  v92 = (v98 + 8);
  v100 = v8;
  v78 = v23;
  v94 = result;
  while (1)
  {
    if (v39 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v40 = v103;
    v89 = *(v98 + 9);
    v97 = v39;
    v90 = *(v98 + 2);
    v90(v32, v102 + v89 * v39, v103);
    v41 = v32;
    v42 = v88;
    sub_1BC759DA0();
    sub_1BC759D30();
    (*v79)(v23, 0, 1, v8);
    v43 = *(v96 + 48);
    sub_1BC660024(v42, v12, &qword_1EBCDBC80, qword_1BC75F1D0);
    sub_1BC660024(v23, &v12[v43], &qword_1EBCDBC80, qword_1BC75F1D0);
    v44 = *v95;
    if ((*v95)(v12, 1, v8) != 1)
    {
      break;
    }

    sub_1BC66008C(v23, &qword_1EBCDBC80, qword_1BC75F1D0);
    sub_1BC66008C(v42, &qword_1EBCDBC80, qword_1BC75F1D0);
    v45 = v40;
    v46 = *v92;
    (*v92)(v41, v45);
    if (v44(&v12[v43], 1, v8) != 1)
    {
      v97 = v44;
      v98 = v46;
      goto LABEL_29;
    }

    v32 = v41;
    sub_1BC66008C(v12, &qword_1EBCDBC80, qword_1BC75F1D0);
    v23 = v78;
LABEL_13:
    v39 = v97 + 1;
    result = v94;
    if (v91 == v97 + 1)
    {
      goto LABEL_25;
    }
  }

  v32 = v41;
  v47 = v101;
  sub_1BC660024(v12, v101, &qword_1EBCDBC80, qword_1BC75F1D0);
  if (v44(&v12[v43], 1, v8) != 1)
  {
    v48 = v84;
    (*v74)(v84, &v12[v43], v8);
    sub_1BC65E9D8(&qword_1EBCDBC90, 255, MEMORY[0x1E697B4C0], MEMORY[0x1E697B4C8]);
    v49 = sub_1BC75BAB0();
    v50 = *v75;
    (*v75)(v48, v100);
    v23 = v78;
    sub_1BC66008C(v78, &qword_1EBCDBC80, qword_1BC75F1D0);
    sub_1BC66008C(v88, &qword_1EBCDBC80, qword_1BC75F1D0);
    v51 = *v92;
    (*v92)(v41, v103);
    v50(v101, v100);
    v8 = v100;
    sub_1BC66008C(v12, &qword_1EBCDBC80, qword_1BC75F1D0);
    if ((v49 & 1) == 0)
    {
      v97 = v44;
      v98 = v51;
      v52 = v77;
      v53 = v81;
      v54 = v87;
      v55 = v76;
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  v97 = v44;
  sub_1BC66008C(v78, &qword_1EBCDBC80, qword_1BC75F1D0);
  sub_1BC66008C(v88, &qword_1EBCDBC80, qword_1BC75F1D0);
  v98 = *v92;
  v98(v41, v103);
  (*v75)(v47, v8);
LABEL_29:
  v52 = v77;
  v53 = v81;
  v54 = v87;
  v55 = v76;
  sub_1BC66008C(v12, &qword_1EBCDBC78, &qword_1BC75F1C8);
LABEL_30:
  result = v94;
  v60 = 0;
  v84 = (v55 + 56);
  v101 = (v55 + 104);
  LODWORD(v96) = *MEMORY[0x1E697B498];
  v88 = (v55 + 48);
  v77 = (v55 + 32);
  v78 = (v55 + 8);
  v61 = v82;
  while (v60 < *(result + 16))
  {
    v90(v99, v102, v103);
    sub_1BC759DA0();
    v62 = v100;
    if (v97(v54, 1, v100) == 1)
    {
      sub_1BC66008C(v54, &qword_1EBCDBC80, qword_1BC75F1D0);
      v63 = 1;
    }

    else
    {
      sub_1BC759D20();
      (*v75)(v54, v62);
      v63 = 0;
    }

    v64 = *v84;
    (*v84)(v61, v63, 1, v52);
    (*v101)(v53, v96, v52);
    v64(v53, 0, 1, v52);
    v65 = v86;
    v66 = *(v85 + 48);
    sub_1BC660024(v61, v86, &qword_1EBCDBC70, &qword_1BC75F1C0);
    sub_1BC660024(v53, v65 + v66, &qword_1EBCDBC70, &qword_1BC75F1C0);
    v67 = *v88;
    if ((*v88)(v65, 1, v52) == 1)
    {
      sub_1BC66008C(v53, &qword_1EBCDBC70, &qword_1BC75F1C0);
      sub_1BC66008C(v61, &qword_1EBCDBC70, &qword_1BC75F1C0);
      v98(v99, v103);
      if (v67(v65 + v66, 1, v52) != 1)
      {
        goto LABEL_44;
      }

      sub_1BC66008C(v65, &qword_1EBCDBC70, &qword_1BC75F1C0);
      result = v94;
    }

    else
    {
      v68 = v80;
      sub_1BC660024(v65, v80, &qword_1EBCDBC70, &qword_1BC75F1C0);
      if (v67(v65 + v66, 1, v52) == 1)
      {
        sub_1BC66008C(v81, &qword_1EBCDBC70, &qword_1BC75F1C0);
        sub_1BC66008C(v82, &qword_1EBCDBC70, &qword_1BC75F1C0);
        v98(v99, v103);
        (*v78)(v68, v52);
LABEL_44:
        sub_1BC66008C(v65, &qword_1EBCDBC68, &qword_1BC75F1B8);
LABEL_45:

        return 3;
      }

      v69 = v83;
      (*v77)(v83, v65 + v66, v52);
      sub_1BC65E9D8(&qword_1EBCDBC88, 255, MEMORY[0x1E697B4B0], MEMORY[0x1E697B4B8]);
      LODWORD(v79) = sub_1BC75BAB0();
      v70 = *v78;
      (*v78)(v69, v52);
      v71 = v81;
      sub_1BC66008C(v81, &qword_1EBCDBC70, &qword_1BC75F1C0);
      v61 = v82;
      sub_1BC66008C(v82, &qword_1EBCDBC70, &qword_1BC75F1C0);
      v98(v99, v103);
      v72 = v68;
      v53 = v71;
      v70(v72, v52);
      sub_1BC66008C(v65, &qword_1EBCDBC70, &qword_1BC75F1C0);
      result = v94;
      if ((v79 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    ++v60;
    v102 += v89;
    v54 = v87;
    if (v91 == v60)
    {

      return 2;
    }
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1BC65B290()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t sub_1BC65B2D8(uint64_t a1)
{
  v2 = *v1;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v2);
  return sub_1BC75C720();
}

uint64_t sub_1BC65B31C()
{
  type metadata accessor for AnalyticsActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EBCF4440 = v0;
  return result;
}

uint64_t sub_1BC65B358()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_1BC65B390(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1BC65B3F0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC65B42C()
{
  if (qword_1EBCDF9D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BC65B488(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnalyticsActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1BC65B4C0()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCDF9E0);
  __swift_project_value_buffer(v0, qword_1EBCDF9E0);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC65B53C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BC65B634;

  return v6(a1);
}

uint64_t sub_1BC65B634()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1BC65B738(uint64_t a1)
{
  v2 = sub_1BC75C030();

  return sub_1BC65C488(a1, v2);
}

unint64_t sub_1BC65B77C(uint64_t a1, uint64_t a2)
{
  sub_1BC75C700();
  sub_1BC75BBE0();
  v4 = sub_1BC75C720();

  return sub_1BC65C55C(a1, a2, v4);
}

unint64_t sub_1BC65B7F4(uint64_t a1)
{
  v2 = sub_1BC75C1D0();

  return sub_1BC65C614(a1, v2);
}

uint64_t sub_1BC65B838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BC65B738(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BC65C6DC();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for AnalyticsUIContext(0);
    v18 = *(v11 - 8);
    sub_1BC65D8C4(v10 + *(v18 + 72) * v7, a2);
    sub_1BC65BF50(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for AnalyticsUIContext(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1BC65B98C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBCF8, &qword_1BC75F7F8);
  v38 = v4;
  result = sub_1BC75C410();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1BC65D8C4(v25, v7);
      }

      else
      {
        sub_1BC65F4F0(v25, v7, type metadata accessor for AnalyticsUIContext);
        v26 = v23;
      }

      result = sub_1BC75C030();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1BC65D8C4(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1BC65BCAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD00, &qword_1BC75F800);
  v35 = v4;
  result = sub_1BC75C410();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1BC75C700();
      sub_1BC75BBE0();
      result = sub_1BC75C720();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1BC65BF50(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BC75C1C0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1BC75C030();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for AnalyticsUIContext(0) - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

id sub_1BC65C118(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_1BC65B738(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_1BC65C6DC();
      goto LABEL_7;
    }

    sub_1BC65B98C(v12, a3 & 1);
    v19 = sub_1BC65B738(a2);
    if ((v13 & 1) == (v20 & 1))
    {
      v9 = v19;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
    result = sub_1BC75C640();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for AnalyticsUIContext(0) - 8) + 72) * v9;

    return sub_1BC65FD10(a1, v17);
  }

LABEL_13:
  sub_1BC65C3F4(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_1BC65C27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BC65B77C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1BC65BCAC(v16, a4 & 1);
      v11 = sub_1BC65B77C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1BC75C640();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1BC65C900();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_1BC65C3F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AnalyticsUIContext(0);
  result = sub_1BC65D8C4(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1BC65C488(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1BC75C040();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BC65C55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BC75C5E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BC65C614(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BC65FCB4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB26DC0](v9, a1);
      sub_1BC65F440(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_1BC65C6DC()
{
  v1 = v0;
  v2 = type metadata accessor for AnalyticsUIContext(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBCF8, &qword_1BC75F7F8);
  v5 = *v0;
  v6 = sub_1BC75C400();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1BC65F4F0(*(v5 + 56) + v22, v4, type metadata accessor for AnalyticsUIContext);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1BC65D8C4(v4, *(v7 + 56) + v22);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1BC65C900()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD00, &qword_1BC75F800);
  v2 = *v0;
  v3 = sub_1BC75C400();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BC65CA6C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_1BC759C70();
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v2[18] = swift_task_alloc();
  v4 = sub_1BC759EE0();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1BC75BDE0();
  v2[23] = sub_1BC75BDD0();
  v6 = sub_1BC75BD80();
  v2[24] = v6;
  v2[25] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BC65CC70, v6, v5);
}

uint64_t sub_1BC65CC70()
{
  sub_1BC75A030();
  v0[26] = sub_1BC75A000();
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_1BC65CD20;
  v2 = v0[18];

  return MEMORY[0x1EEDD8CE0](v2);
}

uint64_t sub_1BC65CD20()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_1BC65D3C0;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_1BC65CE3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC65CE3C()
{
  v50 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BC66008C(*(v0 + 144), &unk_1EBCDBD90, &unk_1BC75F850);
  }

  else
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v45 = *(v0 + 80);
    (*(v6 + 32))(v4, *(v0 + 144), v7);
    v10 = (*(v6 + 16))(v5, v4, v7);
    *(v0 + 56) = MEMORY[0x1E69E7CC0];
    v48 = 1;
    sub_1BC65E6C8(v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC00, &qword_1BC75F170);
    sub_1BC65FF68(&qword_1EBCDBC08, &qword_1EBCDBC00, &qword_1BC75F170);
    sub_1BC75C1B0();
    v49 = *(v0 + 48);
    sub_1BC759C20();
    sub_1BC664670(v5, &unk_1F3B27DC8, 2, 0, v45, 0, 1, &v48, v8, &v49, v9);
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = qword_1EBCDF9B0;
      swift_unknownObjectRetain();
      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_1BC75C7B0();
      v17 = (*(**(v0 + 64) + 88))(v16);

      if (*(v17 + 16) && (v18 = sub_1BC65B738(v14), (v19 & 1) != 0))
      {
        v20 = *(v0 + 176);
        v21 = *(v0 + 152);
        v22 = *(v0 + 160);
        v24 = *(v0 + 128);
        v23 = *(v0 + 136);
        v25 = *(v0 + 120);
        v26 = *(v0 + 104);
        sub_1BC65F4F0(*(v17 + 56) + *(v24 + 72) * v18, v26, type metadata accessor for AnalyticsUIContext);
        swift_unknownObjectRelease();
        sub_1BC65FD74(v23, type metadata accessor for AnalyticsUIContext);
        (*(v22 + 8))(v20, v21);

        (*(v24 + 56))(v26, 0, 1, v25);
        sub_1BC66008C(v26, &qword_1EBCDBC50, &qword_1BC762D70);
      }

      else
      {
        v44 = *(v0 + 160);
        v46 = *(v0 + 152);
        v47 = *(v0 + 176);
        v27 = *(v0 + 128);
        v28 = *(v0 + 136);
        v29 = *(v0 + 120);
        v31 = *(v0 + 96);
        v30 = *(v0 + 104);

        v32 = *(v27 + 56);
        v32(v30, 1, 1, v29);
        sub_1BC66008C(v30, &qword_1EBCDBC50, &qword_1BC762D70);
        sub_1BC75C7B0();
        v33 = *(v0 + 72);
        sub_1BC65F4F0(v28, v31, type metadata accessor for AnalyticsUIContext);
        v32(v31, 0, 1, v29);
        v34 = *(*v33 + 104);
        swift_unknownObjectRetain();
        v35 = v34(v0 + 16);
        sub_1BC6548D4(v31, v14);
        v35(v0 + 16, 0);

        v36 = [objc_allocWithZone(SCUIAnalytics) init];
        sub_1BC654524(v28);

        swift_unknownObjectRelease();
        sub_1BC65FD74(v28, type metadata accessor for AnalyticsUIContext);
        (*(v44 + 8))(v47, v46);
      }
    }

    else
    {
      v37 = *(v0 + 176);
      v38 = *(v0 + 152);
      v39 = *(v0 + 160);
      v40 = *(v0 + 136);
      v41 = [objc_allocWithZone(SCUIAnalytics) init];
      sub_1BC654524(v40);

      sub_1BC65FD74(v40, type metadata accessor for AnalyticsUIContext);
      (*(v39 + 8))(v37, v38);
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1BC65D3C0()
{

  if (qword_1EBCDF9D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = sub_1BC75A4E0();
  __swift_project_value_buffer(v2, qword_1EBCDF9E0);
  v3 = v1;
  v4 = sub_1BC75A4C0();
  v5 = sub_1BC75BF60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 224);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC630000, v4, v5, "Failed to retrieve policy %@", v8, 0xCu);
    sub_1BC66008C(v9, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BC65D5BC(uint64_t a1)
{
  v1 = sub_1BC75A1E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v13 = result;
    v14 = qword_1EBCDF9B0;
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_1BC75C7B0();
    v16 = (*(*v20[1] + 88))(v15);

    if (*(v16 + 16) && (v17 = sub_1BC65B738(v13), (v18 & 1) != 0))
    {
      sub_1BC65F4F0(*(v16 + 56) + *(v6 + 72) * v17, v9, type metadata accessor for AnalyticsUIContext);

      sub_1BC65D8C4(v9, v11);
      v19 = [objc_allocWithZone(SCUIAnalytics) init];
      (*(v2 + 104))(v4, *MEMORY[0x1E69A9FB0], v1);
      sub_1BC6554C8(v11, v4);

      swift_unknownObjectRelease();
      (*(v2 + 8))(v4, v1);
      return sub_1BC65FD74(v11, type metadata accessor for AnalyticsUIContext);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BC65D8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC65D928()
{
  v2 = *(type metadata accessor for AnalyticsUIContext(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1BC75A1E0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC660280;

  return sub_1BC655810(v7, v8, v9, v0 + v3, v0 + v6);
}

unint64_t sub_1BC65DA54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBD00, &qword_1BC75F800);
    v3 = sub_1BC75C420();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BC65B77C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BC65DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 128) = a4;
  *(v6 + 136) = a6;
  *(v6 + 272) = a5;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  *(v6 + 144) = swift_task_alloc();
  sub_1BC759C70();
  *(v6 + 152) = swift_task_alloc();
  v7 = type metadata accessor for AnalyticsUIContext(0);
  *(v6 + 160) = v7;
  *(v6 + 168) = *(v7 - 8);
  *(v6 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  *(v6 + 184) = swift_task_alloc();
  v8 = sub_1BC759EE0();
  *(v6 + 192) = v8;
  *(v6 + 200) = *(v8 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  sub_1BC75BDE0();
  *(v6 + 224) = sub_1BC75BDD0();
  v10 = sub_1BC75BD80();
  *(v6 + 232) = v10;
  *(v6 + 240) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BC65DD5C, v10, v9);
}

uint64_t sub_1BC65DD5C()
{
  sub_1BC75A030();
  v0[31] = sub_1BC75A000();
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1BC65DE0C;
  v2 = v0[23];

  return MEMORY[0x1EEDD8CE0](v2);
}

uint64_t sub_1BC65DE0C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1BC65E3AC;
  }

  else
  {

    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1BC65DF28;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC65DF28()
{
  v40 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BC66008C(*(v0 + 184), &unk_1EBCDBD90, &unk_1BC75F850);
    goto LABEL_18;
  }

  v4 = *(v0 + 128);
  (*(*(v0 + 200) + 32))(*(v0 + 216), *(v0 + 184), *(v0 + 192));
  if (v4)
  {
    v5 = *(v0 + 128);
    goto LABEL_13;
  }

  *(v0 + 96) = *(v0 + 136);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBDA0, &qword_1BC75F860);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    if (qword_1EBCDF9C0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = qword_1EBCDF9C8;
    if (*(qword_1EBCDF9C8 + 16))
    {
      v9 = sub_1BC65B77C(v7, v6);
      if (v10)
      {
        v5 = *(*(v8 + 56) + 8 * v9);
        swift_endAccess();
        v11 = v5;

        LOWORD(v5) = [v11 integerValue];

        goto LABEL_13;
      }
    }

    swift_endAccess();
  }

  LOWORD(v5) = 0;
LABEL_13:
  v12 = *(v0 + 208);
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  v15 = *(v0 + 272);
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 104);
  (*(*(v0 + 200) + 16))(v12, *(v0 + 216), *(v0 + 192));
  v38 = v15;
  sub_1BC654A78(v5, &v39);
  sub_1BC759C20();
  sub_1BC664670(v12, &unk_1F3B27DF0, v16, 0, v18, v17, 0, &v38, v13, &v39, v14);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v21 = qword_1EBCDF9B0;
    swift_unknownObjectRetain();
    if (v21 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 200);
    v36 = *(v0 + 192);
    v37 = *(v0 + 216);
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    v24 = *(v0 + 160);
    v25 = *(v0 + 144);
    sub_1BC75C7B0();
    v26 = *(v0 + 88);
    sub_1BC65F4F0(v23, v25, type metadata accessor for AnalyticsUIContext);
    (*(v22 + 56))(v25, 0, 1, v24);
    v27 = *(*v26 + 104);
    swift_unknownObjectRetain();
    v28 = v27(v0 + 16);
    sub_1BC6548D4(v25, v20);
    v28(v0 + 16, 0);

    v29 = [objc_allocWithZone(SCUIAnalytics) init];
    sub_1BC654C64(v23);

    swift_unknownObjectRelease();
    sub_1BC65FD74(v23, type metadata accessor for AnalyticsUIContext);
    (*(v35 + 8))(v37, v36);
  }

  else
  {
    v30 = *(v0 + 216);
    v31 = *(v0 + 192);
    v32 = *(v0 + 200);
    sub_1BC65FD74(*(v0 + 176), type metadata accessor for AnalyticsUIContext);
    (*(v32 + 8))(v30, v31);
  }

LABEL_18:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1BC65E3AC()
{

  if (qword_1EBCDF9D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_1BC75A4E0();
  __swift_project_value_buffer(v2, qword_1EBCDF9E0);
  v3 = v1;
  v4 = sub_1BC75A4C0();
  v5 = sub_1BC75BF60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 264);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BC630000, v4, v5, "Failed to retrieve policy %@", v8, 0xCu);
    sub_1BC66008C(v9, &qword_1EBCDE130, &qword_1BC7679C0);
    MEMORY[0x1BFB27EF0](v9, -1, -1);
    MEMORY[0x1BFB27EF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BC65E59C()
{
  v2 = *(type metadata accessor for AnalyticsUIContext(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1BC75A3B0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC660280;

  return sub_1BC656BD4(v7, v8, v9, v10, v0 + v3, v0 + v6);
}

unint64_t sub_1BC65E6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBBF8;
  if (!qword_1EBCDBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBBF8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BC65E764(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_5Tm()
{
  v1 = (type metadata accessor for AnalyticsUIContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1BC75A1E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v11 = v0 + v3;
  v12 = sub_1BC759940();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);

  v13 = v1[8];
  v14 = sub_1BC759EE0();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = v1[14];
  v16 = sub_1BC759C70();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1BC65E9D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t objectdestroy_18Tm()
{
  v1 = (type metadata accessor for AnalyticsUIContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1BC75A3B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v11 = v0 + v3;
  v12 = sub_1BC759940();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);

  v13 = v1[8];
  v14 = sub_1BC759EE0();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = v1[14];
  v16 = sub_1BC759C70();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1BC65EC38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE21getAnalyticsUIContext4withAC0G14ContextWrapperCSgSDys11AnyHashableVypGSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  if (a1)
  {
    v27 = sub_1BC75BB60();
    v28 = v15;
    sub_1BC75C1F0();
    if (*(a1 + 16) && (v16 = sub_1BC65B7F4(v29), (v17 & 1) != 0))
    {
      sub_1BC65F494(*(a1 + 56) + 32 * v16, v30);
      sub_1BC65F440(v29);
      sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
      if (swift_dynamicCast())
      {
        v18 = v27;
        if (qword_1EBCDF9B0 != -1)
        {
          swift_once();
        }

        v19 = sub_1BC75C7B0();
        v20 = (*(*v29[0] + 88))(v19);

        if (*(v20 + 16))
        {
          v21 = sub_1BC65B738(v18);
          if (v22)
          {
            sub_1BC65F4F0(*(v20 + 56) + *(v6 + 72) * v21, v12, type metadata accessor for AnalyticsUIContext);

            sub_1BC65D8C4(v12, v14);
            sub_1BC75C7B0();
            v23 = (*(*v29[0] + 104))(v29);
            sub_1BC65B838(v18, v4);
            sub_1BC66008C(v4, &qword_1EBCDBC50, &qword_1BC762D70);
            v23(v29, 0);

            type metadata accessor for AnalyticsContextWrapper(0);
            sub_1BC65F4F0(v14, v9, type metadata accessor for AnalyticsUIContext);
            v24 = AnalyticsContextWrapper.__allocating_init(context:)(v9);

            sub_1BC65FD74(v14, type metadata accessor for AnalyticsUIContext);
            return v24;
          }
        }
      }
    }

    else
    {
      sub_1BC65F440(v29);
    }
  }

  return 0;
}

void _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE27insertNewAnalyticsUIContext4With23analyticsContextWrapperySo8NSObjectCSg_AC0hlM0CSgtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  if (a1 && a2)
  {
    v7 = qword_1EBCDF9B0;
    v8 = a1;
    v9 = a2;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1BC75C7B0();
    v10 = v15[0];
    v11 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x58);
    v12 = v8;
    v11();
    v13 = type metadata accessor for AnalyticsUIContext(0);
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
    v14 = (*(*v10 + 104))(v15);
    sub_1BC6548D4(v6, v12);
    v14(v15, 0);
  }
}

id _sSo13SCUIAnalyticsC26SensitiveContentAnalysisUIE33getAnalyticsUIContextByIdentifier10identifierAC0G14ContextWrapperCSgSo9NSCopying_So14NSSecureCodingSo8NSObjectp_tFZ_0(uint64_t a1)
{
  v1 = type metadata accessor for AnalyticsUIContext(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v19 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v12 = result;
    v13 = qword_1EBCDF9B0;
    swift_unknownObjectRetain();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_1BC75C7B0();
    v15 = (*(*v19[1] + 88))(v14);

    if (*(v15 + 16) && (v16 = sub_1BC65B738(v12), (v17 & 1) != 0))
    {
      sub_1BC65F4F0(*(v15 + 56) + *(v2 + 72) * v16, v8, type metadata accessor for AnalyticsUIContext);

      sub_1BC65D8C4(v8, v10);
      type metadata accessor for AnalyticsContextWrapper(0);
      sub_1BC65F4F0(v10, v5, type metadata accessor for AnalyticsUIContext);
      v18 = AnalyticsContextWrapper.__allocating_init(context:)(v5);
      swift_unknownObjectRelease();
      sub_1BC65FD74(v10, type metadata accessor for AnalyticsUIContext);
      return v18;
    }

    else
    {

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC65F494(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BC65F4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC65F55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBC98;
  if (!qword_1EBCDBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBC98);
  }

  return result;
}

unint64_t sub_1BC65F5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBCA0;
  if (!qword_1EBCDBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBCA0);
  }

  return result;
}

uint64_t sub_1BC65F664(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BC65FA38()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6536D4(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BC65FB14()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BC660280;

  return sub_1BC653230(v6, v7, v8, v9, v2, v3, v4, v5);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BC65FC1C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6524FC(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_1BC65FD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC65FD74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC65FDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBD08;
  if (!qword_1EBCDBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBD08);
  }

  return result;
}

unint64_t sub_1BC65FE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBD20;
  if (!qword_1EBCDBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBD20);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BC65FF68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC65FFBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BC660024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BC66008C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BC6600EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC660280;

  return sub_1BC65B53C(a1, v4);
}

uint64_t sub_1BC6601A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC65281C;

  return sub_1BC65B53C(a1, v4);
}

uint64_t sub_1BC6602E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6611F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC66031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6611F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

unint64_t sub_1BC660358()
{
  v1 = *v0;
  v2 = 0x6974634172657375;
  v3 = 0x76697469736E6573;
  if (v1 != 6)
  {
    v3 = 7367028;
  }

  if (*v0 <= 5u)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x654D6E6F69746361;
  if (v1 != 2)
  {
    v4 = 0x646C65696873;
  }

  if (*v0)
  {
    v2 = 0x4D747865746E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC660468@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC66A8D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC66049C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC661000(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6604D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC661000(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC660514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC66124C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC660550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC66124C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC66058C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC661150(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6605C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC661150(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC660604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6610FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC660640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6610FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC66067C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6610A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6606B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6610A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6606F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6611A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC660730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6611A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC66076C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC661054(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6607A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC661054(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6607E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6612A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC660820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6612A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AnalyticsUIContext.Step.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE60, &qword_1BC75F918);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE68, &qword_1BC75F920);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE70, &qword_1BC75F928);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE78, &qword_1BC75F930);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE80, &qword_1BC75F938);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE88, &qword_1BC75F940);
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v39 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE90, &qword_1BC75F948);
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBE98, &qword_1BC75F950);
  v39 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEA0, &qword_1BC75F958);
  v20 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v21 = *v1;
  v22 = a1[3];
  v23 = a1;
  v25 = &v39 - v24;
  v26 = __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1BC661000(v26, v27, v28);
  v29 = sub_1BC75C740();
  v32 = (v20 + 8);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v67 = 6;
        sub_1BC6610A8(v29, v30, v31);
        v34 = v54;
        v33 = v60;
        sub_1BC75C4E0();
        v36 = v55;
        v35 = v56;
      }

      else
      {
        v68 = 7;
        sub_1BC661054(v29, v30, v31);
        v34 = v57;
        v33 = v60;
        sub_1BC75C4E0();
        v36 = v58;
        v35 = v59;
      }
    }

    else if (v21 == 4)
    {
      v65 = 4;
      sub_1BC661150(v29, v30, v31);
      v34 = v48;
      v33 = v60;
      sub_1BC75C4E0();
      v36 = v49;
      v35 = v50;
    }

    else
    {
      v66 = 5;
      sub_1BC6610FC(v29, v30, v31);
      v34 = v51;
      v33 = v60;
      sub_1BC75C4E0();
      v36 = v52;
      v35 = v53;
    }

    goto LABEL_16;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v63 = 2;
      sub_1BC6611F8(v29, v30, v31);
      v34 = v42;
      v33 = v60;
      sub_1BC75C4E0();
      v36 = v43;
      v35 = v44;
    }

    else
    {
      v64 = 3;
      sub_1BC6611A4(v29, v30, v31);
      v34 = v45;
      v33 = v60;
      sub_1BC75C4E0();
      v36 = v46;
      v35 = v47;
    }

LABEL_16:
    (*(v36 + 8))(v34, v35);
    return (*v32)(v25, v33);
  }

  if (v21)
  {
    v62 = 1;
    sub_1BC66124C(v29, v30, v31);
    v37 = v60;
    sub_1BC75C4E0();
    (*(v40 + 8))(v16, v41);
    return (*v32)(v25, v37);
  }

  v61 = 0;
  sub_1BC6612A0(v29, v30, v31);
  v33 = v60;
  sub_1BC75C4E0();
  (*(v39 + 8))(v19, v17);
  return (*v32)(v25, v33);
}

unint64_t sub_1BC661000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0410;
  if (!qword_1EBCE0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0410);
  }

  return result;
}

unint64_t sub_1BC661054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0418;
  if (!qword_1EBCE0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0418);
  }

  return result;
}

unint64_t sub_1BC6610A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0420;
  if (!qword_1EBCE0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0420);
  }

  return result;
}

unint64_t sub_1BC6610FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0428;
  if (!qword_1EBCE0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0428);
  }

  return result;
}

unint64_t sub_1BC661150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0430;
  if (!qword_1EBCE0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0430);
  }

  return result;
}

unint64_t sub_1BC6611A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0438;
  if (!qword_1EBCE0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0438);
  }

  return result;
}

unint64_t sub_1BC6611F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0440;
  if (!qword_1EBCE0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0440);
  }

  return result;
}

unint64_t sub_1BC66124C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0448;
  if (!qword_1EBCE0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0448);
  }

  return result;
}

unint64_t sub_1BC6612A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0450;
  if (!qword_1EBCE0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0450);
  }

  return result;
}

uint64_t AnalyticsUIContext.Step.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEA8, &qword_1BC75F960);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v56[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEB0, &qword_1BC75F968);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v56[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEB8, &qword_1BC75F970);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v56[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEC0, &qword_1BC75F978);
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v56[-v11];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEC8, &qword_1BC75F980);
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v77 = &v56[-v12];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBED0, &qword_1BC75F988);
  v66 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v76 = &v56[-v13];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBED8, &qword_1BC75F990);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v56[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEE0, &qword_1BC75F998);
  v61 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEE8, &unk_1BC75F9A0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56[-v21];
  v23 = a1[3];
  v84 = a1;
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1BC661000(v24, v25, v26);
  v27 = v83;
  sub_1BC75C730();
  if (!v27)
  {
    v58 = v16;
    v29 = v80;
    v28 = v81;
    v83 = v20;
    v30 = v82;
    v60 = v19;
    v59 = v22;
    v31 = sub_1BC75C4D0();
    if (*(v31 + 16) == 1)
    {
      v34 = *(v31 + 32);
      if (v34 != 8)
      {
        v57 = *(v31 + 32);
        if (v34 > 3)
        {
          v44 = v60;
          v45 = v59;
          if (v34 > 5)
          {
            v50 = v83;
            if (v34 == 6)
            {
              v91 = 6;
              sub_1BC6610A8(v31, v32, v33);
              sub_1BC75C450();
              (*(v72 + 8))(v28, v73);
            }

            else
            {
              v92 = 7;
              sub_1BC661054(v31, v32, v33);
              v55 = v79;
              sub_1BC75C450();
              (*(v74 + 8))(v55, v75);
            }

            (*(v50 + 8))(v45, v44);
            swift_unknownObjectRelease();
            v35 = v30;
            goto LABEL_25;
          }

          v35 = v30;
          v46 = v83;
          if (v34 == 4)
          {
            v89 = 4;
            sub_1BC661150(v31, v32, v33);
            sub_1BC75C450();
            (*(v69 + 8))(v29, v68);
          }

          else
          {
            v90 = 5;
            sub_1BC6610FC(v31, v32, v33);
            v53 = v78;
            sub_1BC75C450();
            (*(v70 + 8))(v53, v71);
          }

          (*(v46 + 8))(v45, v44);
        }

        else
        {
          if (v34 > 1)
          {
            if (v34 == 2)
            {
              v87 = 2;
              sub_1BC6611F8(v31, v32, v33);
              v47 = v76;
              v48 = v60;
              v49 = v59;
              sub_1BC75C450();
              (*(v66 + 8))(v47, v62);
            }

            else
            {
              v88 = 3;
              sub_1BC6611A4(v31, v32, v33);
              v54 = v77;
              v48 = v60;
              v49 = v59;
              sub_1BC75C450();
              (*(v67 + 8))(v54, v65);
            }

            (*(v83 + 8))(v49, v48);
            swift_unknownObjectRelease();
            v35 = v30;
            goto LABEL_25;
          }

          v35 = v30;
          if (v34)
          {
            v86 = 1;
            sub_1BC66124C(v31, v32, v33);
            v51 = v60;
            v52 = v59;
            sub_1BC75C450();
            (*(v63 + 8))(v15, v64);
            (*(v83 + 8))(v52, v51);
          }

          else
          {
            v85 = 0;
            sub_1BC6612A0(v31, v32, v33);
            v36 = v60;
            v37 = v59;
            sub_1BC75C450();
            (*(v61 + 8))(v18, v58);
            (*(v83 + 8))(v37, v36);
          }
        }

        swift_unknownObjectRelease();
LABEL_25:
        *v35 = v57;
        return __swift_destroy_boxed_opaque_existential_1(v84);
      }
    }

    v38 = sub_1BC75C300();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0);
    *v40 = &type metadata for AnalyticsUIContext.Step;
    v41 = v60;
    v42 = v59;
    sub_1BC75C460();
    sub_1BC75C2F0();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v83 + 8))(v42, v41);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_1BC662014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1BC66206C()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 0x696C707041746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562617;
  }
}

uint64_t sub_1BC6620C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC66AB84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC6620E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC662634(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC662124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC662634(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC662160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6626DC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC66219C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6626DC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6621D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC662688(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC662214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC662688(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC662250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC662730(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC66228C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC662730(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AnalyticsUIContext.UserOptedToShow.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF8, &qword_1BC75F9B0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF00, &qword_1BC75F9B8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF08, &qword_1BC75F9C0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF10, &qword_1BC75F9C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = *v1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC662634(v15, v16, v17);
  v18 = sub_1BC75C740();
  if (v14)
  {
    if (v14 == 1)
    {
      v34 = 1;
      sub_1BC6626DC(v18, v19, v20);
      v9 = v27;
      sub_1BC75C4E0();
      v22 = v28;
      v21 = v29;
    }

    else
    {
      v35 = 2;
      sub_1BC662688(v18, v19, v20);
      v9 = v30;
      sub_1BC75C4E0();
      v22 = v31;
      v21 = v32;
    }
  }

  else
  {
    v33 = 0;
    sub_1BC662730(v18, v19, v20);
    sub_1BC75C4E0();
    v22 = v25;
    v21 = v26;
  }

  (*(v22 + 8))(v9, v21);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BC662634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0458;
  if (!qword_1EBCE0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0458);
  }

  return result;
}

unint64_t sub_1BC662688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0460;
  if (!qword_1EBCE0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0460);
  }

  return result;
}

unint64_t sub_1BC6626DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0468;
  if (!qword_1EBCE0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0468);
  }

  return result;
}

unint64_t sub_1BC662730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0470;
  if (!qword_1EBCE0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0470);
  }

  return result;
}

uint64_t AnalyticsUIContext.UserOptedToShow.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF18, &qword_1BC75F9D0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF20, &qword_1BC75F9D8);
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF28, &qword_1BC75F9E0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF30, &qword_1BC75F9E8);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC662634(v13, v14, v15);
  v16 = v48;
  sub_1BC75C730();
  if (v16)
  {
    goto LABEL_10;
  }

  v38 = v7;
  v39 = 0;
  v17 = v45;
  v18 = v46;
  v48 = a1;
  v19 = v12;
  v20 = sub_1BC75C4D0();
  v23 = *(v20 + 16);
  if (v23)
  {
    v24 = *(v20 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v20 + 32))
      {
        v45 = v20;
        v31 = v47;
        if (v24 == 1)
        {
          v50 = 1;
          sub_1BC6626DC(v20, v21, v22);
          v32 = v39;
          sub_1BC75C450();
          v33 = v44;
          if (v32)
          {
            (*(v31 + 8))(v19, v10);
            goto LABEL_9;
          }

          (*(v40 + 8))(v6, v43);
          (*(v31 + 8))(v19, v10);
        }

        else
        {
          v51 = 2;
          sub_1BC662688(v20, v21, v22);
          v36 = v39;
          sub_1BC75C450();
          v33 = v44;
          if (v36)
          {
            (*(v31 + 8))(v19, v10);
            goto LABEL_9;
          }

          (*(v41 + 8))(v18, v42);
          (*(v31 + 8))(v19, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0;
        sub_1BC662730(v20, v21, v22);
        v34 = v39;
        sub_1BC75C450();
        v35 = v47;
        if (v34)
        {
          (*(v47 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v17 + 8))(v9, v38);
        (*(v35 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v33 = v44;
      }

      *v33 = v24;
      v29 = v48;
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  v26 = sub_1BC75C300();
  swift_allocError();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0);
  *v28 = &type metadata for AnalyticsUIContext.UserOptedToShow;
  sub_1BC75C460();
  sub_1BC75C2F0();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  swift_willThrow();
  (*(v47 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v48;
LABEL_10:
  v29 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1BC662D88@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1BC662DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC663454(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC662E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC663454(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

unint64_t sub_1BC662E3C()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x6C6172656E6567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65767265746E69;
  }
}

uint64_t sub_1BC662EA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC66AC9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC662ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6633AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC662F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6633AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC662F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC663400(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC662F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC663400(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC662FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6634A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC663004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6634A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AnalyticsUIContext.ResourceOrigin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF38, &qword_1BC75F9F0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF40, &qword_1BC75F9F8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF48, &qword_1BC75FA00);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF50, &qword_1BC75FA08);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = *v1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6633AC(v15, v16, v17);
  v18 = sub_1BC75C740();
  if (v14)
  {
    if (v14 == 1)
    {
      v34 = 1;
      sub_1BC663454(v18, v19, v20);
      v9 = v27;
      sub_1BC75C4E0();
      v22 = v28;
      v21 = v29;
    }

    else
    {
      v35 = 2;
      sub_1BC663400(v18, v19, v20);
      v9 = v30;
      sub_1BC75C4E0();
      v22 = v31;
      v21 = v32;
    }
  }

  else
  {
    v33 = 0;
    sub_1BC6634A8(v18, v19, v20);
    sub_1BC75C4E0();
    v22 = v25;
    v21 = v26;
  }

  (*(v22 + 8))(v9, v21);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BC6633AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0478;
  if (!qword_1EBCE0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0478);
  }

  return result;
}

unint64_t sub_1BC663400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0480;
  if (!qword_1EBCE0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0480);
  }

  return result;
}

unint64_t sub_1BC663454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0488;
  if (!qword_1EBCE0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0488);
  }

  return result;
}

unint64_t sub_1BC6634A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0490;
  if (!qword_1EBCE0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE0490);
  }

  return result;
}

uint64_t sub_1BC66352C()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t AnalyticsUIContext.ResourceOrigin.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF58, &qword_1BC75FA10);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF60, &qword_1BC75FA18);
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF68, &qword_1BC75FA20);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF70, &qword_1BC75FA28);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6633AC(v13, v14, v15);
  v16 = v48;
  sub_1BC75C730();
  if (v16)
  {
    goto LABEL_10;
  }

  v38 = v7;
  v39 = 0;
  v17 = v45;
  v18 = v46;
  v48 = a1;
  v19 = v12;
  v20 = sub_1BC75C4D0();
  v23 = *(v20 + 16);
  if (v23)
  {
    v24 = *(v20 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v20 + 32))
      {
        v45 = v20;
        v31 = v47;
        if (v24 == 1)
        {
          v50 = 1;
          sub_1BC663454(v20, v21, v22);
          v32 = v39;
          sub_1BC75C450();
          v33 = v44;
          if (v32)
          {
            (*(v31 + 8))(v19, v10);
            goto LABEL_9;
          }

          (*(v40 + 8))(v6, v43);
          (*(v31 + 8))(v19, v10);
        }

        else
        {
          v51 = 2;
          sub_1BC663400(v20, v21, v22);
          v36 = v39;
          sub_1BC75C450();
          v33 = v44;
          if (v36)
          {
            (*(v31 + 8))(v19, v10);
            goto LABEL_9;
          }

          (*(v41 + 8))(v18, v42);
          (*(v31 + 8))(v19, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0;
        sub_1BC6634A8(v20, v21, v22);
        v34 = v39;
        sub_1BC75C450();
        v35 = v47;
        if (v34)
        {
          (*(v47 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v17 + 8))(v9, v38);
        (*(v35 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v33 = v44;
      }

      *v33 = v24;
      v29 = v48;
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  v26 = sub_1BC75C300();
  swift_allocError();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0);
  *v28 = &type metadata for AnalyticsUIContext.ResourceOrigin;
  sub_1BC75C460();
  sub_1BC75C2F0();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  swift_willThrow();
  (*(v47 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v48;
LABEL_10:
  v29 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t AnalyticsUIContext.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759940();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnalyticsUIContext.userOptedToShow.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnalyticsUIContext(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AnalyticsUIContext.harms.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnalyticsUIContext(0) + 48);
  v4 = sub_1BC759C70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BC663D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a3;
  v80 = a5;
  v83 = sub_1BC759C70();
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC759D10();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v65 - v12;
  v68 = sub_1BC759D50();
  v13 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s6LayoutV4ModeOMa(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BC759C40();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v65 - v23;
  v25 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v27;
  v28 = *(v27 + 16);
  v82 = a1;
  v73 = v29;
  v75 = v28;
  v76 = v27 + 16;
  v28();
  v87 = a2;
  sub_1BC759C90();
  sub_1BC759C30();
  v85 = sub_1BC668C58(&qword_1EBCDBF78, MEMORY[0x1E697B3F0], MEMORY[0x1E697B408]);
  v74 = sub_1BC75C170();
  v30 = *(v19 + 8);
  v30(v22, v18);
  v30(v24, v18);
  v81 = a4;
  sub_1BC668F10(a4, v17, _s6LayoutV4ModeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v32 = &qword_1EBCDBF88;
      v33 = &qword_1BC75FA38;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v32 = &qword_1EBCDBF80;
      v33 = &qword_1BC75FA30;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);

      v44 = sub_1BC759FE0();
      (*(*(v44 - 8) + 8))(v17, v44);
LABEL_13:
      v72 = 4;
      goto LABEL_19;
    }

LABEL_9:
    sub_1BC6689C4(v17, _s6LayoutV4ModeOMa);
    v72 = 0;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BC6689C4(v17, _s6LayoutV4ModeOMa);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_9;
  }

  v66 = v13;
  v34 = *(v13 + 32);
  v35 = v68;
  v34(v72, v17, v68);
  v36 = v67;
  sub_1BC759D20();
  v37 = v69;
  v38 = v70;
  v39 = v71;
  (*(v69 + 16))(v71, v36, v70);
  v40 = (*(v37 + 88))(v39, v38);
  v41 = v36;
  v42 = v66;
  if (v40 == *MEMORY[0x1E697B4A0])
  {
    goto LABEL_8;
  }

  if (v40 == *MEMORY[0x1E697B4A8])
  {
    goto LABEL_15;
  }

  if (v40 == *MEMORY[0x1E697B488])
  {
    (*(v37 + 8))(v41, v38);
    (*(v42 + 8))(v72, v35);
    v43 = 3;
    goto LABEL_18;
  }

  if (v40 == *MEMORY[0x1E697B498])
  {
LABEL_15:
    (*(v37 + 8))(v41, v38);
    (*(v42 + 8))(v72, v35);
    v43 = 2;
    goto LABEL_18;
  }

  if (v40 == *MEMORY[0x1E697B490])
  {
LABEL_8:
    (*(v37 + 8))(v41, v38);
    (*(v42 + 8))(v72, v35);
    v43 = 1;
LABEL_18:
    v72 = v43;
    goto LABEL_19;
  }

  v64 = *(v37 + 8);
  v64(v41, v38);
  (*(v66 + 8))(v72, v35);
  v64(v71, v38);
  v72 = 0;
LABEL_19:
  sub_1BC759C90();
  sub_1BC759C20();
  v45 = sub_1BC75C170();
  v30(v22, v18);
  v30(v24, v18);
  sub_1BC759BA0();
  v46 = [objc_opt_self() mainBundle];
  v47 = [v46 bundleIdentifier];

  if (v47)
  {
    v85 = sub_1BC75BB60();
    v70 = v48;
  }

  else
  {
    v85 = 0;
    v70 = 0;
  }

  LODWORD(v71) = (v45 & 1) == 0;
  if (v74)
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  v50 = type metadata accessor for AnalyticsUIContext(0);
  v51 = v80;
  v52 = v77;
  v53 = v73;
  (v75)(v80 + v50[6], v77, v73);
  v54 = v79;
  v55 = v86;
  v56 = v83;
  (*(v79 + 16))(v51 + v50[12], v86, v83);
  sub_1BC759930();
  sub_1BC6689C4(v81, _s6LayoutV4ModeOMa);
  v57 = sub_1BC759CA0();
  (*(*(v57 - 8) + 8))(v87, v57);
  v58 = *(v78 + 8);
  v58(v82, v53);
  (*(v54 + 8))(v55, v56);
  result = (v58)(v52, v53);
  v60 = (v51 + v50[5]);
  v61 = v70;
  *v60 = v85;
  v60[1] = v61;
  *(v51 + v50[13]) = v84;
  v62 = v51 + v50[7];
  *v62 = v49;
  *(v62 + 8) = 0;
  *(v51 + v50[8]) = v72;
  v63 = v51 + v50[9];
  *v63 = 0;
  *(v63 + 8) = 1;
  *(v51 + v50[10]) = v71;
  *(v51 + v50[11]) = 0;
  return result;
}

uint64_t sub_1BC664670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v32 = *a8;
  v33 = *a10;
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v28 = sub_1BC75BB60();
    v16 = v15;
  }

  else
  {
    v28 = 0;
    v16 = 0;
  }

  v17 = type metadata accessor for AnalyticsUIContext(0);
  v18 = v17[6];
  v19 = sub_1BC759EE0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a9 + v18, a1, v19);
  v21 = v17[12];
  v22 = sub_1BC759C70();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a9 + v21, a11, v22);
  sub_1BC759930();
  (*(v23 + 8))(a11, v22);
  result = (*(v20 + 8))(a1, v19);
  v25 = (a9 + v17[5]);
  *v25 = v28;
  v25[1] = v16;
  *(a9 + v17[13]) = a2;
  v26 = a9 + v17[7];
  *v26 = a3;
  *(v26 + 8) = a4 & 1;
  *(a9 + v17[8]) = a5;
  v27 = a9 + v17[9];
  *v27 = a6;
  *(v27 + 8) = a7 & 1;
  *(a9 + v17[10]) = v32;
  *(a9 + v17[11]) = v33;
  return result;
}

uint64_t sub_1BC6648A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v33 = sub_1BC759C70();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759EE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  v32 = a1;
  v28 = v14;
  v14(v13, a1, v10);
  v30 = sub_1BC65A158();
  v31 = a3;
  v29 = sub_1BC65A310();
  sub_1BC759C20();
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    v27 = sub_1BC75BB60();
    v18 = v17;
  }

  else
  {
    v27 = 0;
    v18 = 0;
  }

  v19 = type metadata accessor for AnalyticsUIContext(0);
  v28(a4 + v19[6], v13, v10);
  v20 = v33;
  (*(v7 + 16))(a4 + v19[12], v9, v33);
  sub_1BC759930();
  sub_1BC6689C4(v31, type metadata accessor for InterventionConfig.Layout);
  v21 = *(v11 + 8);
  v21(v32, v10);
  (*(v7 + 8))(v9, v20);
  result = (v21)(v13, v10);
  v23 = (a4 + v19[5]);
  *v23 = v27;
  v23[1] = v18;
  *(a4 + v19[13]) = v34;
  v24 = a4 + v19[7];
  v25 = v29;
  *v24 = v30;
  *(v24 + 8) = 0;
  *(a4 + v19[8]) = v25;
  v26 = a4 + v19[9];
  *v26 = 0;
  *(v26 + 8) = 1;
  *(a4 + v19[10]) = 3;
  *(a4 + v19[11]) = 0;
  return result;
}

uint64_t sub_1BC664BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC759C70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC759EE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnalyticsUIContext(0);
  v13 = v12[6];
  v46 = v9;
  v14 = *(v9 + 16);
  v48 = v8;
  v38 = v14;
  v14(v11, (a1 + v13), v8);
  v15 = *(a1 + v12[13]);
  v16 = (a1 + v12[7]);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(a1 + v12[8]);
  v44 = v17;
  v45 = v19;
  v20 = v12[10];
  v21 = (a1 + v12[9]);
  v41 = *v21;
  v40 = *(v21 + 8);
  v42 = *(a1 + v20);
  v43 = v18;
  v22 = v12[12];
  v39 = *(a1 + v12[11]);
  v49 = v7;
  v50 = v5;
  v23 = *(v5 + 16);
  v51 = v4;
  v23(v7, a1 + v22, v4);
  v24 = objc_opt_self();
  v47 = v15;

  v25 = [v24 mainBundle];
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    v27 = sub_1BC75BB60();
    v37 = v28;
  }

  else
  {
    v27 = 0;
    v37 = 0;
  }

  v29 = v48;
  v38(a2 + v12[6], v11, v48);
  v30 = v49;
  v31 = v51;
  v23((a2 + v12[12]), v49, v51);
  sub_1BC759930();
  sub_1BC6689C4(a1, type metadata accessor for AnalyticsUIContext);
  (*(v50 + 8))(v30, v31);
  result = (*(v46 + 8))(v11, v29);
  v33 = (a2 + v12[5]);
  v34 = v37;
  *v33 = v27;
  v33[1] = v34;
  *(a2 + v12[13]) = v47;
  v35 = a2 + v12[7];
  *v35 = v44;
  *(v35 + 8) = v43;
  *(a2 + v12[8]) = v45;
  v36 = a2 + v12[9];
  *v36 = v41;
  *(v36 + 8) = v40;
  *(a2 + v12[10]) = v42;
  *(a2 + v12[11]) = v39;
  return result;
}

uint64_t AnalyticsUIContext.init(bundleID:policy:path:direction:contentType:subContentType:userOptedToShow:options:harms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char *a11, uint64_t *a12, uint64_t a13)
{
  v20 = *a11;
  v31 = *a12;
  sub_1BC759930();
  v21 = type metadata accessor for AnalyticsUIContext(0);
  v22 = (a9 + v21[5]);
  *v22 = a1;
  v22[1] = a2;
  v23 = v21[6];
  v24 = sub_1BC759EE0();
  (*(*(v24 - 8) + 32))(a9 + v23, a3, v24);
  *(a9 + v21[13]) = a4;
  v25 = a9 + v21[7];
  *v25 = a5;
  *(v25 + 8) = a6 & 1;
  *(a9 + v21[8]) = a7;
  v26 = a9 + v21[9];
  *v26 = a8;
  *(v26 + 8) = a10 & 1;
  *(a9 + v21[10]) = v20;
  *(a9 + v21[11]) = v31;
  v27 = v21[12];
  v28 = sub_1BC759C70();
  v29 = *(*(v28 - 8) + 32);

  return v29(a9 + v27, a13, v28);
}

uint64_t sub_1BC665098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v7 = sub_1BC759C70();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC759EE0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1E69E7CC0];
  v37 = v7;
  v35 = v8;
  if (a2 == 1)
  {
    v34 = 0;
    v39 = &unk_1F3B280C8;
    v15 = 1;
    goto LABEL_5;
  }

  if (!a2)
  {
    sub_1BC668A24(&unk_1F3B280A0);
    v34 = 0;
    v15 = 2;
LABEL_5:
    v33 = v15;
    goto LABEL_7;
  }

  v33 = 0;
  v34 = 1;
LABEL_7:
  v16 = *(v12 + 16);
  v36 = a1;
  v16(v14, a1, v11);
  v31 = v39;
  v32 = sub_1BC65A310();
  sub_1BC759C20();
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    v30 = sub_1BC75BB60();
    v20 = v19;
  }

  else
  {
    v30 = 0;
    v20 = 0;
  }

  v21 = type metadata accessor for AnalyticsUIContext(0);
  v16((a4 + v21[6]), v14, v11);
  v22 = v35;
  v23 = v37;
  (*(v35 + 16))(a4 + v21[12], v10, v37);
  sub_1BC759930();
  sub_1BC6689C4(v38, type metadata accessor for InterventionConfig.Layout);
  v24 = *(v12 + 8);
  v24(v36, v11);
  (*(v22 + 8))(v10, v23);
  result = (v24)(v14, v11);
  v26 = (a4 + v21[5]);
  v27 = v31;
  *v26 = v30;
  v26[1] = v20;
  *(a4 + v21[13]) = v27;
  v28 = a4 + v21[7];
  *v28 = v33;
  *(v28 + 8) = v34;
  *(a4 + v21[8]) = v32;
  v29 = a4 + v21[9];
  *v29 = 0;
  *(v29 + 8) = 1;
  *(a4 + v21[10]) = 3;
  *(a4 + v21[11]) = 0;
  return result;
}

uint64_t sub_1BC665400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a1;
  v9 = sub_1BC759C70();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC759EE0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v49 = v14;
    v16 = sub_1BC75C3F0();
    v14 = v49;
  }

  else
  {
    v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v9;
  v55 = a4;
  v52 = v14;
  v53 = v10;
  v50 = a2;
  if (v16)
  {
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1BFB26EB0](v18, a3);
        }

        else
        {
          v19 = *(a3 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = [v19 actionID];

        if (v21 > 5)
        {
          if (v21 <= 7)
          {
            if (v21 == 6)
            {
              if ((v17 & 0x20) != 0)
              {
                goto LABEL_7;
              }

              v22 = 32;
            }

            else
            {
              if ((v17 & 0x40) != 0)
              {
                goto LABEL_7;
              }

              v22 = 64;
            }
          }

          else if (v21 == 8)
          {
            if ((v17 & 0x100) != 0)
            {
              goto LABEL_7;
            }

            v22 = 256;
          }

          else if (v21 == 9)
          {
            if ((v17 & 0x80) != 0)
            {
              goto LABEL_7;
            }

            v22 = 128;
          }

          else
          {
            if (v21 != 10 || (v17 & 0x200) != 0)
            {
              goto LABEL_7;
            }

            v22 = 512;
          }
        }

        else if (v21 <= 2)
        {
          if (v21 == 1)
          {
            if (v17)
            {
              goto LABEL_7;
            }

            v22 = 1;
          }

          else
          {
            if (v21 != 2 || (v17 & 2) != 0)
            {
              goto LABEL_7;
            }

            v22 = 2;
          }
        }

        else if (v21 == 3)
        {
          if ((v17 & 0x10) != 0)
          {
            goto LABEL_7;
          }

          v22 = 16;
        }

        else if (v21 == 4)
        {
          if ((v17 & 4) != 0)
          {
            goto LABEL_7;
          }

          v22 = 4;
        }

        else
        {
          if ((v17 & 8) != 0)
          {
            goto LABEL_7;
          }

          v22 = 8;
        }

        v17 |= v22;
LABEL_7:
        if (v16 == ++v18)
        {
          goto LABEL_43;
        }
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v17 = 0;
LABEL_43:
  v23 = v55;
  if (v55)
  {
    v24 = *((*MEMORY[0x1E69E7D40] & *v55) + 0x58);
    v25 = v55;
    v26 = v24();

    v27 = v50;
    if (v26)
    {
      if (v26 != 1)
      {
LABEL_62:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF90, &qword_1BC75FA40);
        result = sub_1BC75C5D0();
        __break(1u);
        return result;
      }

      v17 |= 0x100uLL;
    }

    else
    {

      v17 |= 0x400uLL;
    }

    v23 = v55;
    v28 = v51;
    if (v27 == 2)
    {
      goto LABEL_52;
    }
  }

  else
  {

    v27 = v50;
    v28 = v51;
    if (v50 == 2)
    {
      goto LABEL_52;
    }
  }

  if (v27 == 1)
  {
LABEL_52:
    v29 = sub_1BC668B10(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1BC668B10((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v55 = v29;
    v29[v31 + 32] = v27;
    goto LABEL_56;
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_56:
  sub_1BC6E53B4(v28);
  sub_1BC759C20();
  v32 = [objc_opt_self() mainBundle];
  v33 = [v32 bundleIdentifier];

  if (v33)
  {
    v34 = sub_1BC75BB60();
    v50 = v35;
    v51 = v34;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v36 = type metadata accessor for AnalyticsUIContext(0);
  v37 = v13;
  v38 = *(v13 + 16);
  v39 = v56;
  v40 = v52;
  v38(a5 + v36[6], v56, v52);
  v42 = v53;
  v41 = v54;
  v43 = v57;
  (*(v53 + 16))(a5 + v36[12], v57, v54);
  sub_1BC759930();

  (*(v42 + 8))(v43, v41);
  result = (*(v37 + 8))(v39, v40);
  v45 = (a5 + v36[5]);
  v46 = v50;
  *v45 = v51;
  v45[1] = v46;
  *(a5 + v36[13]) = v55;
  v47 = a5 + v36[7];
  *v47 = 2;
  *(v47 + 8) = 0;
  *(a5 + v36[8]) = 8;
  v48 = a5 + v36[9];
  *v48 = 0;
  *(v48 + 8) = 1;
  *(a5 + v36[10]) = 3;
  *(a5 + v36[11]) = v17;
  return result;
}

uint64_t sub_1BC665984(char *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for AnalyticsUIContext(0) + 52);
  v4 = *(v1 + v3);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BC668B10(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1BC668B10((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + v7 + 32) = v2;
  *(v1 + v3) = v4;
  return result;
}

void sub_1BC665A48(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  a2(v2, a1);
}

void sub_1BC665AC0()
{
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC654524(v0);
}

uint64_t sub_1BC665B20(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736E6F6974706FLL;
    v6 = 0x736D726168;
    if (a1 != 8)
    {
      v6 = 1752457584;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65746E6F43627573;
    if (a1 != 5)
    {
      v7 = 0x6574704F72657375;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7963696C6F70;
    v3 = 0x6F69746365726964;
    if (a1 != 3)
    {
      v3 = 0x54746E65746E6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4449656C646E7562;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1BC665CAC(uint64_t a1)
{
  v2 = *v1;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v2);
  return sub_1BC75C720();
}

uint64_t sub_1BC665CF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC66ADC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC665D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC668C04(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC665D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC668C04(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t AnalyticsUIContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF98, &qword_1BC75FA48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC668C04(v9, v10, v11);
  sub_1BC75C740();
  LOBYTE(v26) = 0;
  sub_1BC759940();
  sub_1BC668C58(&qword_1EBCDBFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BC75C560();
  if (!v2)
  {
    v12 = type metadata accessor for AnalyticsUIContext(0);
    LOBYTE(v26) = 1;
    sub_1BC75C500();
    LOBYTE(v26) = 2;
    sub_1BC759EE0();
    sub_1BC668C58(&qword_1EBCDBFA8, MEMORY[0x1E697B510], MEMORY[0x1E697B518]);
    sub_1BC75C560();
    v13 = (v3 + v12[7]);
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 8);
    v26 = v14;
    v27 = v13;
    v25 = 3;
    type metadata accessor for SCUIAnalyticsDirection(0);
    sub_1BC668C58(&qword_1EBCDBFB0, type metadata accessor for SCUIAnalyticsDirection, &protocol conformance descriptor for SCUIAnalyticsDirection);
    sub_1BC75C520();
    v26 = *(v3 + v12[8]);
    v25 = 4;
    type metadata accessor for SCUIAnalyticsContentType(0);
    sub_1BC668C58(&qword_1EBCDBFB8, type metadata accessor for SCUIAnalyticsContentType, &protocol conformance descriptor for SCUIAnalyticsContentType);
    sub_1BC75C560();
    v15 = (v3 + v12[9]);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v26 = v16;
    v27 = v15;
    v25 = 5;
    type metadata accessor for SCUIAnalyticsSubContentType(0);
    sub_1BC668C58(&qword_1EBCDBFC0, type metadata accessor for SCUIAnalyticsSubContentType, &protocol conformance descriptor for SCUIAnalyticsSubContentType);
    v17 = sub_1BC75C520();
    LOBYTE(v26) = *(v3 + v12[10]);
    v25 = 6;
    sub_1BC668CA0(v17, v18, v19);
    v20 = sub_1BC75C520();
    v26 = *(v3 + v12[11]);
    v25 = 7;
    sub_1BC668CF4(v20, v21, v22);
    sub_1BC75C560();
    LOBYTE(v26) = 8;
    sub_1BC759C70();
    sub_1BC668C58(&qword_1EBCDBFD8, MEMORY[0x1E697B418], MEMORY[0x1E697B420]);
    sub_1BC75C560();
    v26 = *(v3 + v12[13]);
    v25 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBFE0, &qword_1BC75FA50);
    sub_1BC668E44(&qword_1EBCDBFE8, sub_1BC668D48, MEMORY[0x1E69E6300]);
    sub_1BC75C560();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AnalyticsUIContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1BC759C70();
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v47 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BC759EE0();
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC759940();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBFF8, &qword_1BC75FA58);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v11 = v44 - v10;
  v12 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC668C04(v15, v16, v17);
  v56 = v11;
  v18 = v57;
  sub_1BC75C730();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v7;
  v20 = v53;
  v45 = v12;
  v57 = v14;
  v21 = a1;
  LOBYTE(v58) = 0;
  sub_1BC668C58(&qword_1EBCDC000, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v22 = v54;
  sub_1BC75C4C0();
  v23 = *(v49 + 32);
  v24 = v57;
  v54 = v8;
  v23(v57, v22);
  LOBYTE(v58) = 1;
  v25 = sub_1BC75C470();
  v26 = &v24[v45[5]];
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v58) = 2;
  sub_1BC668C58(&qword_1EBCDC008, MEMORY[0x1E697B510], MEMORY[0x1E697B530]);
  v28 = v48;
  v44[2] = 0;
  sub_1BC75C4C0();
  v44[1] = v21;
  (*(v52 + 32))(&v24[v45[6]], v19, v28);
  type metadata accessor for SCUIAnalyticsDirection(0);
  v60 = 3;
  sub_1BC668C58(&qword_1EBCDC010, type metadata accessor for SCUIAnalyticsDirection, &protocol conformance descriptor for SCUIAnalyticsDirection);
  sub_1BC75C490();
  v29 = v59;
  v30 = &v24[v45[7]];
  *v30 = v58;
  v30[8] = v29;
  type metadata accessor for SCUIAnalyticsContentType(0);
  v60 = 4;
  sub_1BC668C58(&qword_1EBCDC018, type metadata accessor for SCUIAnalyticsContentType, &protocol conformance descriptor for SCUIAnalyticsContentType);
  sub_1BC75C4C0();
  *&v24[v45[8]] = v58;
  type metadata accessor for SCUIAnalyticsSubContentType(0);
  v60 = 5;
  sub_1BC668C58(&qword_1EBCDC020, type metadata accessor for SCUIAnalyticsSubContentType, &protocol conformance descriptor for SCUIAnalyticsSubContentType);
  v31 = sub_1BC75C490();
  v32 = v59;
  v33 = &v24[v45[9]];
  *v33 = v58;
  v33[8] = v32;
  v60 = 6;
  sub_1BC668D9C(v31, v34, v35);
  v36 = sub_1BC75C490();
  v24[v45[10]] = v58;
  v60 = 7;
  sub_1BC668DF0(v36, v37, v38);
  sub_1BC75C4C0();
  *&v57[v45[11]] = v58;
  LOBYTE(v58) = 8;
  sub_1BC668C58(&qword_1EBCDC038, MEMORY[0x1E697B418], MEMORY[0x1E697B430]);
  v39 = v47;
  v40 = v50;
  sub_1BC75C4C0();
  (*(v51 + 32))(&v57[v45[12]], v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBFE0, &qword_1BC75FA50);
  v60 = 9;
  sub_1BC668E44(&qword_1EBCDC040, sub_1BC668EBC, MEMORY[0x1E69E6330]);
  sub_1BC75C4C0();
  (*(v20 + 8))(v56, v55);
  v41 = v57;
  v42 = v46;
  *&v57[v45[13]] = v58;
  sub_1BC668F10(v41, v42, type metadata accessor for AnalyticsUIContext);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1BC6689C4(v41, type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC666CC0()
{
  v1 = v0;
  v2 = sub_1BC759D10();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E697B4A0])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x1E697B4A8])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x1E697B488])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x1E697B498])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x1E697B490])
  {
    return 1;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_1BC666E8C(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC668F10(a1, v6, type metadata accessor for AnalyticsUIContext);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x60))(v6);
}

uint64_t sub_1BC666F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SCUIAnalyticsContextWrapper_context;
  swift_beginAccess();
  return sub_1BC668F10(v1 + v3, a1, type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC666FC8(uint64_t a1)
{
  v3 = OBJC_IVAR___SCUIAnalyticsContextWrapper_context;
  swift_beginAccess();
  sub_1BC65FD10(a1, v1 + v3);
  return swift_endAccess();
}

id AnalyticsContextWrapper.__allocating_init(context:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1BC668F10(a1, v3 + OBJC_IVAR___SCUIAnalyticsContextWrapper_context, type metadata accessor for AnalyticsUIContext);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1BC6689C4(a1, type metadata accessor for AnalyticsUIContext);
  return v4;
}

id AnalyticsContextWrapper.init(context:)(uint64_t a1)
{
  sub_1BC668F10(a1, v1 + OBJC_IVAR___SCUIAnalyticsContextWrapper_context, type metadata accessor for AnalyticsUIContext);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AnalyticsContextWrapper(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1BC6689C4(a1, type metadata accessor for AnalyticsUIContext);
  return v3;
}

uint64_t AnalyticsContextWrapper.__allocating_init(interventionType:menuType:actions:authority:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v4);
  ObjectType = swift_getObjectType();
  v13 = a4;
  sub_1BC665400(a1, a2, a3, a4, v11);
  v14 = (*(ObjectType + 112))(v11);

  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t AnalyticsContextWrapper.init(interventionType:menuType:actions:authority:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v12 = a4;
  sub_1BC665400(a1, a2, a3, a4, v10);
  v13 = (*(ObjectType + 112))(v10);

  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t AnalyticsContextWrapper.__allocating_init(interventionType:menuType:actions:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v5 = sub_1BC759C70();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC759EE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v3);
  result = swift_getObjectType();
  if (a3 >> 62)
  {
    v44 = result;
    v16 = sub_1BC75C3F0();
    result = v44;
  }

  else
  {
    v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v5;
  v51 = v14;
  v52 = v6;
  v49 = v8;
  v50 = result;
  v48 = v9;
  if (!v16)
  {
    v17 = 0;
LABEL_43:

    if (v46 == 2)
    {
      v23 = 2;
    }

    else
    {
      if (v46 != 1)
      {
        v25 = MEMORY[0x1E69E7CC0];
        v24 = v45;
LABEL_51:
        sub_1BC6E53B4(v47);
        sub_1BC759C20();
        v28 = [objc_opt_self() mainBundle];
        v29 = [v28 bundleIdentifier];

        v30 = v52;
        if (v29)
        {
          v31 = sub_1BC75BB60();
          v46 = v32;
          v47 = v31;
        }

        else
        {
          v46 = 0;
          v47 = 0;
        }

        v34 = v48;
        v33 = v49;
        v35 = &v13[v11[6]];
        v36 = v13;
        v37 = v53;
        (*(v48 + 16))(v35, v53, v49);
        v38 = v54;
        (*(v30 + 16))(&v36[v11[12]], v54, v24);
        sub_1BC759930();
        (*(v30 + 8))(v38, v24);
        (*(v34 + 8))(v37, v33);
        v39 = &v36[v11[5]];
        v40 = v46;
        *v39 = v47;
        *(v39 + 1) = v40;
        *&v36[v11[13]] = v25;
        v41 = &v36[v11[7]];
        *v41 = 2;
        v41[8] = 0;
        *&v36[v11[8]] = 8;
        v42 = &v36[v11[9]];
        *v42 = 0;
        v42[8] = 1;
        v36[v11[10]] = 3;
        *&v36[v11[11]] = v17;
        v43 = (*(v50 + 112))(v36);
        swift_deallocPartialClassInstance();
        return v43;
      }

      v23 = 1;
    }

    v24 = v45;
    v25 = sub_1BC668B10(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1BC668B10((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    v25[v27 + 32] = v23;
    goto LABEL_51;
  }

  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1BFB26EB0](v18, a3);
      }

      else
      {
        v19 = *(a3 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 actionID];

      if (v21 > 5)
      {
        if (v21 <= 7)
        {
          if (v21 == 6)
          {
            if ((v17 & 0x20) != 0)
            {
              goto LABEL_7;
            }

            v22 = 32;
          }

          else
          {
            if ((v17 & 0x40) != 0)
            {
              goto LABEL_7;
            }

            v22 = 64;
          }
        }

        else if (v21 == 8)
        {
          if ((v17 & 0x100) != 0)
          {
            goto LABEL_7;
          }

          v22 = 256;
        }

        else if (v21 == 9)
        {
          if ((v17 & 0x80) != 0)
          {
            goto LABEL_7;
          }

          v22 = 128;
        }

        else
        {
          if (v21 != 10 || (v17 & 0x200) != 0)
          {
            goto LABEL_7;
          }

          v22 = 512;
        }
      }

      else if (v21 <= 2)
      {
        if (v21 == 1)
        {
          if (v17)
          {
            goto LABEL_7;
          }

          v22 = 1;
        }

        else
        {
          if (v21 != 2 || (v17 & 2) != 0)
          {
            goto LABEL_7;
          }

          v22 = 2;
        }
      }

      else if (v21 == 3)
      {
        if ((v17 & 0x10) != 0)
        {
          goto LABEL_7;
        }

        v22 = 16;
      }

      else if (v21 == 4)
      {
        if ((v17 & 4) != 0)
        {
          goto LABEL_7;
        }

        v22 = 4;
      }

      else
      {
        if ((v17 & 8) != 0)
        {
          goto LABEL_7;
        }

        v22 = 8;
      }

      v17 |= v22;
LABEL_7:
      if (v16 == ++v18)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalyticsContextWrapper.init(interventionType:menuType:actions:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v44 = a2;
  v6 = sub_1BC759C70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC759EE0();
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_getObjectType();
  if (a3 >> 62)
  {
    v43 = result;
    v15 = sub_1BC75C3F0();
    result = v43;
  }

  else
  {
    v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = v6;
  v52 = v3;
  v49 = result;
  v50 = v7;
  v48 = v9;
  v45 = a1;
  if (!v15)
  {
    v16 = 0;
LABEL_43:

    if (v44 == 2)
    {
      v23 = 2;
      v22 = v11;
    }

    else
    {
      v22 = v11;
      if (v44 != 1)
      {
        v24 = MEMORY[0x1E69E7CC0];
LABEL_51:
        sub_1BC6E53B4(v45);
        sub_1BC759C20();
        v27 = [objc_opt_self() mainBundle];
        v28 = [v27 bundleIdentifier];

        v29 = v51;
        v30 = v13;
        if (v28)
        {
          v31 = sub_1BC75BB60();
          v44 = v32;
          v45 = v31;
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        v33 = v46;
        v34 = v47;
        v35 = v48;
        (*(v47 + 16))(&v30[*(v46 + 24)], v22, v48);
        v36 = v50;
        v37 = v53;
        (*(v50 + 16))(&v30[v33[12]], v53, v29);
        sub_1BC759930();
        (*(v36 + 8))(v37, v29);
        (*(v34 + 8))(v22, v35);
        v38 = &v30[v33[5]];
        v39 = v44;
        *v38 = v45;
        *(v38 + 1) = v39;
        *&v30[v33[13]] = v24;
        v40 = &v30[v33[7]];
        *v40 = 2;
        v40[8] = 0;
        *&v30[v33[8]] = 8;
        v41 = &v30[v33[9]];
        *v41 = 0;
        v41[8] = 1;
        v30[v33[10]] = 3;
        *&v30[v33[11]] = v16;
        v42 = (*(v49 + 112))(v30);
        swift_deallocPartialClassInstance();
        return v42;
      }

      v23 = 1;
    }

    v24 = sub_1BC668B10(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1BC668B10((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v24[v26 + 32] = v23;
    goto LABEL_51;
  }

  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB26EB0](v17, a3);
      }

      else
      {
        v18 = *(a3 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 actionID];

      if (v20 > 5)
      {
        if (v20 <= 7)
        {
          if (v20 == 6)
          {
            if ((v16 & 0x20) != 0)
            {
              goto LABEL_7;
            }

            v21 = 32;
          }

          else
          {
            if ((v16 & 0x40) != 0)
            {
              goto LABEL_7;
            }

            v21 = 64;
          }
        }

        else if (v20 == 8)
        {
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_7;
          }

          v21 = 256;
        }

        else if (v20 == 9)
        {
          if ((v16 & 0x80) != 0)
          {
            goto LABEL_7;
          }

          v21 = 128;
        }

        else
        {
          if (v20 != 10 || (v16 & 0x200) != 0)
          {
            goto LABEL_7;
          }

          v21 = 512;
        }
      }

      else if (v20 <= 2)
      {
        if (v20 == 1)
        {
          if (v16)
          {
            goto LABEL_7;
          }

          v21 = 1;
        }

        else
        {
          if (v20 != 2 || (v16 & 2) != 0)
          {
            goto LABEL_7;
          }

          v21 = 2;
        }
      }

      else if (v20 == 3)
      {
        if ((v16 & 0x10) != 0)
        {
          goto LABEL_7;
        }

        v21 = 16;
      }

      else if (v20 == 4)
      {
        if ((v16 & 4) != 0)
        {
          goto LABEL_7;
        }

        v21 = 4;
      }

      else
      {
        if ((v16 & 8) != 0)
        {
          goto LABEL_7;
        }

        v21 = 8;
      }

      v16 |= v21;
LABEL_7:
      if (v15 == ++v17)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalyticsContextWrapper.__allocating_init(contextWrapper:)(void *a1)
{
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))();
  sub_1BC664BAC(v6, v8);
  v10 = (*(ObjectType + 112))(v8);

  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t AnalyticsContextWrapper.init(contextWrapper:)(void *a1)
{
  v2 = type metadata accessor for AnalyticsUIContext(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))();
  sub_1BC664BAC(v5, v7);
  v9 = (*(ObjectType + 112))(v7);

  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_1BC668500(unint64_t a1)
{
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v4);
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC653F90(v6, a1);

  return sub_1BC6689C4(v6, type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC6686EC()
{
  v1 = type metadata accessor for AnalyticsUIContext(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v2);
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC654C64(v4);

  return sub_1BC6689C4(v4, type metadata accessor for AnalyticsUIContext);
}

id AnalyticsContextWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnalyticsContextWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsContextWrapper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC6689C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC668A24(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BC668B10(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BC668B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC078, &qword_1BC760FD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1BC668C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE0498[0];
  if (!qword_1EBCE0498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE0498);
  }

  return result;
}

uint64_t sub_1BC668C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC668CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBFC8;
  if (!qword_1EBCDBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBFC8);
  }

  return result;
}

unint64_t sub_1BC668CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBFD0;
  if (!qword_1EBCDBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBFD0);
  }

  return result;
}

unint64_t sub_1BC668D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDBFF0;
  if (!qword_1EBCDBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBFF0);
  }

  return result;
}

unint64_t sub_1BC668D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC028;
  if (!qword_1EBCDC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC028);
  }

  return result;
}

unint64_t sub_1BC668DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC030;
  if (!qword_1EBCDC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC030);
  }

  return result;
}

uint64_t sub_1BC668E44(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDBFE0, &qword_1BC75FA50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC668EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC048;
  if (!qword_1EBCDC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC048);
  }

  return result;
}

uint64_t sub_1BC668F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC668FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC050;
  if (!qword_1EBCDC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC050);
  }

  return result;
}

unint64_t sub_1BC669000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC058;
  if (!qword_1EBCDC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC058);
  }

  return result;
}

unint64_t sub_1BC669058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC060;
  if (!qword_1EBCDC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC060);
  }

  return result;
}

unint64_t sub_1BC6690B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC068;
  if (!qword_1EBCDC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC068);
  }

  return result;
}

void sub_1BC66912C(uint64_t a1)
{
  sub_1BC759940();
  if (v1 <= 0x3F)
  {
    sub_1BC669358(319, &qword_1EDDCF0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BC759EE0();
      if (v3 <= 0x3F)
      {
        sub_1BC669304(319, &qword_1EDDCF0C8, type metadata accessor for SCUIAnalyticsDirection);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SCUIAnalyticsContentType(319);
          if (v5 <= 0x3F)
          {
            sub_1BC669304(319, &unk_1EDDCF0A8, type metadata accessor for SCUIAnalyticsSubContentType);
            if (v6 <= 0x3F)
            {
              sub_1BC669358(319, &qword_1EDDCF1B8, &type metadata for AnalyticsUIContext.UserOptedToShow, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1BC759C70();
                if (v8 <= 0x3F)
                {
                  sub_1BC669358(319, &qword_1EDDCF0D8, &type metadata for AnalyticsUIContext.Step, MEMORY[0x1E69E62F8]);
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

void sub_1BC669304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BC75C110();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BC669358(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AnalyticsUIContext.ResourceOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnalyticsUIContext.ResourceOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1BC669454(uint64_t a1)
{
  result = type metadata accessor for AnalyticsUIContext(319);
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

uint64_t getEnumTagSinglePayload for AnalyticsUIContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsUIContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterventionScreenModel.BulletNumber(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InterventionScreenModel.BulletNumber(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s6VictimV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6VictimV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BC669B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE17B0[0];
  if (!qword_1EBCE17B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE17B0);
  }

  return result;
}

unint64_t sub_1BC669B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE1CC0[0];
  if (!qword_1EBCE1CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE1CC0);
  }

  return result;
}

unint64_t sub_1BC669BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE21D0[0];
  if (!qword_1EBCE21D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE21D0);
  }

  return result;
}

unint64_t sub_1BC669C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE23E0[0];
  if (!qword_1EBCE23E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE23E0);
  }

  return result;
}

unint64_t sub_1BC669C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2770;
  if (!qword_1EBCE2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2770);
  }

  return result;
}

unint64_t sub_1BC669CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2778;
  if (!qword_1EBCE2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2778);
  }

  return result;
}

unint64_t sub_1BC669D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2800;
  if (!qword_1EBCE2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2800);
  }

  return result;
}

unint64_t sub_1BC669D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2808[0];
  if (!qword_1EBCE2808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2808);
  }

  return result;
}

unint64_t sub_1BC669DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2890;
  if (!qword_1EBCE2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2890);
  }

  return result;
}

unint64_t sub_1BC669E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2898[0];
  if (!qword_1EBCE2898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2898);
  }

  return result;
}

unint64_t sub_1BC669E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2920;
  if (!qword_1EBCE2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2920);
  }

  return result;
}

unint64_t sub_1BC669EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2928[0];
  if (!qword_1EBCE2928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2928);
  }

  return result;
}

unint64_t sub_1BC669F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE29B0;
  if (!qword_1EBCE29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE29B0);
  }

  return result;
}

unint64_t sub_1BC669F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE29B8[0];
  if (!qword_1EBCE29B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE29B8);
  }

  return result;
}

unint64_t sub_1BC669FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2A40;
  if (!qword_1EBCE2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2A40);
  }

  return result;
}

unint64_t sub_1BC66A040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2A48[0];
  if (!qword_1EBCE2A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2A48);
  }

  return result;
}

unint64_t sub_1BC66A098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2AD0;
  if (!qword_1EBCE2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2AD0);
  }

  return result;
}

unint64_t sub_1BC66A0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2AD8[0];
  if (!qword_1EBCE2AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2AD8);
  }

  return result;
}

unint64_t sub_1BC66A148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2B60;
  if (!qword_1EBCE2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2B60);
  }

  return result;
}

unint64_t sub_1BC66A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2B68[0];
  if (!qword_1EBCE2B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2B68);
  }

  return result;
}

unint64_t sub_1BC66A1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2BF0;
  if (!qword_1EBCE2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2BF0);
  }

  return result;
}

unint64_t sub_1BC66A250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2BF8[0];
  if (!qword_1EBCE2BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2BF8);
  }

  return result;
}

unint64_t sub_1BC66A2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2C80;
  if (!qword_1EBCE2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2C80);
  }

  return result;
}

unint64_t sub_1BC66A300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2C88[0];
  if (!qword_1EBCE2C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2C88);
  }

  return result;
}

unint64_t sub_1BC66A358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2D10;
  if (!qword_1EBCE2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2D10);
  }

  return result;
}

unint64_t sub_1BC66A3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2D18[0];
  if (!qword_1EBCE2D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2D18);
  }

  return result;
}

unint64_t sub_1BC66A408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2DA0;
  if (!qword_1EBCE2DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2DA0);
  }

  return result;
}

unint64_t sub_1BC66A460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2DA8[0];
  if (!qword_1EBCE2DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2DA8);
  }

  return result;
}

unint64_t sub_1BC66A4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2E30;
  if (!qword_1EBCE2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2E30);
  }

  return result;
}

unint64_t sub_1BC66A510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2E38[0];
  if (!qword_1EBCE2E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2E38);
  }

  return result;
}

unint64_t sub_1BC66A568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2EC0;
  if (!qword_1EBCE2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2EC0);
  }

  return result;
}

unint64_t sub_1BC66A5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2EC8[0];
  if (!qword_1EBCE2EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2EC8);
  }

  return result;
}

unint64_t sub_1BC66A618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2F50;
  if (!qword_1EBCE2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2F50);
  }

  return result;
}

unint64_t sub_1BC66A670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2F58[0];
  if (!qword_1EBCE2F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2F58);
  }

  return result;
}

unint64_t sub_1BC66A6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2FE0;
  if (!qword_1EBCE2FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE2FE0);
  }

  return result;
}

unint64_t sub_1BC66A720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE2FE8[0];
  if (!qword_1EBCE2FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE2FE8);
  }

  return result;
}

unint64_t sub_1BC66A778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3070;
  if (!qword_1EBCE3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3070);
  }

  return result;
}

unint64_t sub_1BC66A7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3078;
  if (!qword_1EBCE3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3078);
  }

  return result;
}

unint64_t sub_1BC66A828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3100;
  if (!qword_1EBCE3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3100);
  }

  return result;
}

unint64_t sub_1BC66A880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3108[0];
  if (!qword_1EBCE3108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE3108);
  }

  return result;
}

uint64_t sub_1BC66A8D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xEA0000000000756ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646C65696873 && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC7702E0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC770300 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x76697469736E6573 && a2 == 0xEE00656764614265 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7367028 && a2 == 0xE300000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1BC66AB84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7562617 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28526 && a2 == 0xE200000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C707041746F6ELL && a2 == 0xED0000656C626163)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BC75C5E0();

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

uint64_t sub_1BC66AC9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65767265746E69 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BC770320 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BC75C5E0();

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

uint64_t sub_1BC66ADC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746E6F43627573 && a2 == 0xEE0065707954746ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574704F72657375 && a2 == 0xEF776F68536F5464 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x736D726168 && a2 == 0xE500000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_1BC66B0F8()
{
  result = qword_1EBCDC070;
  if (!qword_1EBCDC070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDC070);
  }

  return result;
}

uint64_t sub_1BC66B198()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey);

  return v1;
}

id sub_1BC66B250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = a1[1];
  v13 = &v11[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
  *v13 = *a1;
  *(v13 + 1) = v12;
  v14 = &v11[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v11[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
  *v15 = a4;
  *(v15 + 1) = a5;
  v17.receiver = v11;
  v17.super_class = v5;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1BC66B3C8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1BC75BB30();

  return v3;
}

uint64_t sub_1BC66B424()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey);

  return v1;
}

id sub_1BC66B480(void *a1, char a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = a1[1];
  v9 = &v7[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
  *v9 = *a1;
  v9[1] = v8;
  v7[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = a2;
  *&v7[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id _s26SensitiveContentAnalysisUI23InterventionScreenModelCACycfC_0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1BC66B65C()
{
  v1 = OBJC_IVAR___SCUIInterventionScreenModel_authority;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BC66B708(uint64_t a1)
{
  v3 = OBJC_IVAR___SCUIInterventionScreenModel_authority;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BC66B760@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC66B7BC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1BC66B9E4()
{
  v1 = OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet;
  v2 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet);
  if (v2 == 2)
  {
    sub_1BC65F664(0, &qword_1EBCDC218, off_1E7FF12B8);
    type metadata accessor for InterventionConfig(0);
    LOBYTE(v2) = sub_1BC6AB1CC();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id InterventionScreenModel.__allocating_init(screen:workflow:type:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v5);
  *&v19[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v19[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v19[OBJC_IVAR___SCUIInterventionScreenModel_screen] = a1;
  sub_1BC6E53B4(a3);
  v20 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_1BC6E3EAC(a2, 0, v15, a4, v12, v18);
  sub_1BC66FCA4(v18, &v19[OBJC_IVAR___SCUIInterventionScreenModel_config]);
  sub_1BC75A110();
  *&v19[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = sub_1BC75A100();
  v22.receiver = v19;
  v22.super_class = v5;
  return objc_msgSendSuper2(&v22, sel_init);
}

id InterventionScreenModel.init(screen:workflow:type:options:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v5[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v5[OBJC_IVAR___SCUIInterventionScreenModel_screen] = a1;
  sub_1BC6E53B4(a3);
  v19 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_1BC6E3EAC(a2, 0, v15, a4, v12, v18);
  sub_1BC66FCA4(v18, &v5[OBJC_IVAR___SCUIInterventionScreenModel_config]);
  sub_1BC75A110();
  *&v5[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = sub_1BC75A100();
  v20 = type metadata accessor for InterventionScreenModel(0);
  v22.receiver = v5;
  v22.super_class = v20;
  return objc_msgSendSuper2(&v22, sel_init);
}

id InterventionScreenModel.init(screen:config:participantContactCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v4[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v4[OBJC_IVAR___SCUIInterventionScreenModel_screen] = a1;
  sub_1BC66FDD8(a2, &v4[OBJC_IVAR___SCUIInterventionScreenModel_config], type metadata accessor for InterventionConfig);
  if (!a3)
  {
    sub_1BC75A110();
    a3 = sub_1BC75A100();
  }

  *&v4[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = a3;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for InterventionScreenModel(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1BC66FE40(a2, type metadata accessor for InterventionConfig);
  return v7;
}

id sub_1BC66C0B8()
{
  v1 = type metadata accessor for InterventionConfig(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  sub_1BC66FDD8(v0 + OBJC_IVAR___SCUIInterventionScreenModel_config, &v11 - v5, type metadata accessor for InterventionConfig);
  v13 = 5;
  sub_1BC665984(&v13);
  sub_1BC66FDD8(v6, v4, type metadata accessor for InterventionConfig);
  v7 = type metadata accessor for InterventionScreenModel(0);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v8[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v8[OBJC_IVAR___SCUIInterventionScreenModel_screen] = 1;
  sub_1BC66FDD8(v4, &v8[OBJC_IVAR___SCUIInterventionScreenModel_config], type metadata accessor for InterventionConfig);
  sub_1BC75A110();
  *&v8[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = sub_1BC75A100();
  v12.receiver = v8;
  v12.super_class = v7;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  sub_1BC66FE40(v4, type metadata accessor for InterventionConfig);
  sub_1BC66FE40(v6, type metadata accessor for InterventionConfig);
  return v9;
}

id sub_1BC66C414(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t InterventionScreenModel.title.getter()
{
  sub_1BC75BDE0();
  sub_1BC75C210();
  sub_1BC66C60C(&v1);
  return v1;
}

uint64_t sub_1BC66C60C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_1BC759FC0();
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v100 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1BC759D00();
  v7 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759FE0();
  v11 = *(v10 - 8);
  v106 = v10;
  v107 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v97 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v99 = &v92 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v92 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v96 = &v92 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v98 = &v92 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v92 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC220, &qword_1BC761198);
  v26 = v25 - 8;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v92 - v28;
  v30 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(v27);
  v31 = *(v1 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  v32 = &v29[*(v26 + 72)];
  sub_1BC66FDD8(v2 + OBJC_IVAR___SCUIInterventionScreenModel_config, v32, type metadata accessor for InterventionConfig.Layout);
  if (v31 == 1)
  {
    type metadata accessor for InterventionConfig.Layout(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload > 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_25;
        }

LABEL_22:
        v37 = "RECEIVE_SECOND_EDU_SCREEN_TITLE";
        v38 = 0xD00000000000001CLL;
LABEL_45:
        v52 = v37 | 0x8000000000000000;
        return SCLocalizedStringKey.init(stringLiteral:)(*&v38).localized._countAndFlagsBits;
      }

      if ((EnumCaseMultiPayload - 6) >= 2)
      {
        goto LABEL_15;
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_23:
        sub_1BC66FE40(v32, type metadata accessor for InterventionConfig.Layout);
        goto LABEL_25;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_23;
      }

LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      (*(v7 + 8))(v32, v108);
LABEL_25:
      v37 = "Unknown case! titleLocalizedKey";
      v38 = 0xD00000000000001FLL;
      goto LABEL_45;
    }

    sub_1BC66FE40(v32, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_22;
  }

  if (!v31)
  {
    type metadata accessor for InterventionConfig.Layout(0);
    v34 = swift_getEnumCaseMultiPayload();
    if (v34 <= 4)
    {
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          sub_1BC66FE40(v32, type metadata accessor for InterventionConfig.Layout);
          v37 = "RECEIVE_FIRST_EDU_SCREEN_TITLE";
          v38 = 0xD000000000000029;
          goto LABEL_45;
        }

        if (v34 == 3)
        {
          v35._object = 0x80000001BC771690;
          v35._countAndFlagsBits = 0xD00000000000002ELL;
          SCLocalizedStringKey.init(stringLiteral:)(v35);
          return sub_1BC66FE40(v32, type metadata accessor for InterventionConfig.Layout);
        }

        goto LABEL_30;
      }

      if (!v34)
      {
        sub_1BC66FE40(v32, type metadata accessor for InterventionConfig.Layout);
        goto LABEL_28;
      }

      sub_1BC66FE40(v32, type metadata accessor for InterventionConfig.Layout);
      goto LABEL_41;
    }

    if (v34 <= 6)
    {
      if (v34 != 5)
      {
        sub_1BC66FE40(v32, type metadata accessor for InterventionConfig.Layout);
        if (v30 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_44;
      }

LABEL_30:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      (*(v7 + 8))(v32, v108);
      if (v30 == 1)
      {
LABEL_31:
        v37 = "L_FIRST_SCREEN_TITLE";
        v38 = 0xD00000000000002CLL;
        goto LABEL_45;
      }

LABEL_44:
      v37 = "ANY_FIRST_SCREEN_TITLE_OVER_13";
      v38 = 0xD000000000000024;
      goto LABEL_45;
    }

    if (v34 != 7)
    {
      if (v34 == 8)
      {
LABEL_28:
        v39 = "L_FIRST_SCREEN_TITLE_OVER_13";
        v38 = 0xD00000000000001BLL;
LABEL_42:
        v52 = v39 | 0x8000000000000000;
        return SCLocalizedStringKey.init(stringLiteral:)(*&v38).localized._countAndFlagsBits;
      }

LABEL_41:
      v39 = "M_ASSET_FIRST_EDU_SCREEN_TITLE";
      v38 = 0xD00000000000001ELL;
      goto LABEL_42;
    }

    v41 = *v32;
    v40 = *(v32 + 1);
    v42 = *(*v32 + 16);
    if (v30 == 1)
    {
      if (v42)
      {
        v94 = *(v32 + 1);
        v109 = MEMORY[0x1E69E7CC0];
        sub_1BC6701A4(0, v42, 0);
        v43 = v109;
        v45 = *(v7 + 16);
        v44 = v7 + 16;
        v99 = v45;
        v46 = *(v44 + 64);
        v93 = v41;
        v47 = v41 + ((v46 + 32) & ~v46);
        v97 = *(v44 + 56);
        v104 = v44;
        v48 = (v44 - 8);
        v95 = v107 + 32;
        do
        {
          v49 = v108;
          (v99)(v9, v47, v108);
          sub_1BC759CC0();
          (*v48)(v9, v49);
          v109 = v43;
          v51 = *(v43 + 16);
          v50 = *(v43 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_1BC6701A4((v50 > 1), v51 + 1, 1);
            v43 = v109;
          }

          *(v43 + 16) = v51 + 1;
          (*(v107 + 32))(v43 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v51, v24, v106);
          v47 += v97;
          --v42;
        }

        while (v42);

        v63 = v105;
        v40 = v94;
      }

      else
      {

        v43 = MEMORY[0x1E69E7CC0];
        v63 = v105;
      }

      v109 = v43;
      sub_1BC670078(v40);
      v64 = *(v109 + 16);
      if (v64 > 1)
      {

        v52 = 0x80000001BC771800;
        v38 = 0xD00000000000002ELL;
        return SCLocalizedStringKey.init(stringLiteral:)(*&v38).localized._countAndFlagsBits;
      }

      if (v64)
      {
        v65 = v106;
        v66 = v107;
        v67 = v96;
        (*(v107 + 16))(v96, v109 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v106);

        v68 = v98;
        (*(v66 + 32))(v98, v67, v65);
        v69 = v103;
        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v70._countAndFlagsBits = 0;
        v70._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
        v72 = v100;
        v71 = v101;
        v73 = v102;
        (*(v101 + 104))(v100, *MEMORY[0x1E697B5A0], v102);
        v74 = sub_1BC75A0F0();
        v76 = v75;
        (*(v71 + 8))(v72, v73);
        v77._countAndFlagsBits = v74;
        v77._object = v76;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v77);

        v78 = 0x80000001BC7717A0;
        v79 = 0xD00000000000002ELL;
LABEL_63:
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v79);
        SCLocalizedStringKey.init(stringInterpolation:)(v69, v63);
        return (*(v66 + 8))(v68, v106);
      }

      v81 = "ONE_FIRST_SCREEN_TITLE_OVER_13";
      v38 = 0xD00000000000002FLL;
    }

    else
    {
      if (v42)
      {
        v94 = *(v32 + 1);
        v109 = MEMORY[0x1E69E7CC0];
        sub_1BC6701A4(0, v42, 0);
        v53 = v109;
        v55 = *(v7 + 16);
        v54 = v7 + 16;
        v98 = v55;
        v56 = (*(v54 + 64) + 32) & ~*(v54 + 64);
        v93 = v41;
        v57 = v41 + v56;
        v58 = *(v54 + 56);
        v104 = v54;
        v59 = (v54 - 8);
        v95 = v107 + 32;
        v96 = v58;
        do
        {
          v60 = v108;
          (v98)(v9, v57, v108);
          sub_1BC759CC0();
          (*v59)(v9, v60);
          v109 = v53;
          v62 = *(v53 + 16);
          v61 = *(v53 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1BC6701A4((v61 > 1), v62 + 1, 1);
            v53 = v109;
          }

          *(v53 + 16) = v62 + 1;
          (*(v107 + 32))(v53 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v62, v18, v106);
          v57 += v96;
          --v42;
        }

        while (v42);

        v63 = v105;
        v40 = v94;
      }

      else
      {

        v53 = MEMORY[0x1E69E7CC0];
        v63 = v105;
      }

      v109 = v53;
      sub_1BC670078(v40);
      v80 = *(v109 + 16);
      if (v80 <= 1)
      {
        if (v80)
        {
          v82 = v106;
          v66 = v107;
          v83 = v97;
          (*(v107 + 16))(v97, v109 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v106);

          v68 = v99;
          (*(v66 + 32))(v99, v83, v82);
          v69 = v103;
          SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v84._countAndFlagsBits = 0;
          v84._object = 0xE000000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v84);
          v85 = v100;
          v86 = v101;
          v87 = v102;
          (*(v101 + 104))(v100, *MEMORY[0x1E697B5A0], v102);
          v88 = sub_1BC75A0F0();
          v90 = v89;
          (*(v86 + 8))(v85, v87);
          v91._countAndFlagsBits = v88;
          v91._object = v90;
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v91);

          v79 = 0xD000000000000026;
          v78 = 0x80000001BC771710;
          goto LABEL_63;
        }

        v81 = "ONE_FIRST_SCREEN_TITLE";
        v38 = 0xD000000000000027;
      }

      else
      {

        v81 = "MPTY_FIRST_SCREEN_TITLE";
        v38 = 0xD000000000000026;
      }
    }

    v52 = v81 | 0x8000000000000000;
    return SCLocalizedStringKey.init(stringLiteral:)(*&v38).localized._countAndFlagsBits;
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t InterventionScreenModel.subtitle.getter()
{
  sub_1BC66D37C(v1);
  if (v1[1])
  {
    return v1[0];
  }

  else
  {
    return 0;
  }
}

void sub_1BC66D37C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v121 = sub_1BC759FC0();
  v4 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC759FE0();
  v119 = *(v7 - 8);
  v120 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1BC759D00();
  v12 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC220, &qword_1BC761198);
  v15 = v14 - 8;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v105 - v17);
  v19 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(v16);
  v20 = *(v1 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  v21 = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v22 = (v18 + *(v15 + 72));
  *v18 = v19;
  v18[1] = v20;
  sub_1BC66FDD8(v2 + v21, v22, type metadata accessor for InterventionConfig.Layout);
  if (v20)
  {
    goto LABEL_2;
  }

  v23 = a1;
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      v32 = v122;
      v31 = v123;
      (*(v12 + 32))(v122, v22, v123);
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
      swift_getKeyPath();
      sub_1BC759CD0();

      SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v124);

      v34._object = 0x80000001BC771550;
      v34._countAndFlagsBits = 0xD000000000000029;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
      SCLocalizedStringKey.init(stringInterpolation:)(v11, &v124._countAndFlagsBits);
      (*(v12 + 8))(v32, v31);
LABEL_18:
      object = v124._object;
      *v23 = v124._countAndFlagsBits;
      v23[1] = object;
      return;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_1BC66FE40(v22, type metadata accessor for InterventionConfig.Layout);
      v29 = "_SCREEN_SUBTITLE";
      v30 = 0xD000000000000033;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 7)
    {
      goto LABEL_2;
    }

    v27 = *v22;

    v28 = *(v27 + 16);
    if (sub_1BC66DFB8(v27))
    {

      v29 = "ONE_FIRST_SCREEN_SUBTITLE";
      v30 = 0xD000000000000030;
LABEL_17:
      v37 = v29 | 0x8000000000000000;
      SCLocalizedStringKey.init(stringLiteral:)(*&v30);
      goto LABEL_18;
    }

    if (v28 == 2)
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      v117 = v11;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v53);
      if (*(v27 + 16))
      {
        v54 = v6;
        v55 = *(v2 + OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache);
        v56 = v12;
        v57 = v27 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v58 = (v12 + 16);
        v59 = *(v12 + 16);
        v61 = v122;
        v60 = v123;
        v109 = v57;
        v110 = v59;
        v111 = v58;
        (v59)(v122);
        v62 = v118;
        sub_1BC759CC0();
        v116 = v56;
        v112 = *(v56 + 8);
        v113 = (v56 + 8);
        v112(v61, v60);
        v63 = *(v4 + 13);
        v108 = *MEMORY[0x1E697B5A8];
        v64 = v121;
        v107 = v63;
        v63(v54);
        v114 = v55;
        v65 = sub_1BC75A0F0();
        v115 = v27;
        v67 = v66;
        v106 = *(v4 + 1);
        (v106)(v54, v64);
        v119 = *(v119 + 8);
        (v119)(v62, v120);
        v68._countAndFlagsBits = v65;
        v68._object = v67;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v68);
        v69 = v115;

        v70._countAndFlagsBits = 32;
        v70._object = 0xE100000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
        if (*(v69 + 16) >= 2uLL)
        {
          v71 = v123;
          (v110)(v61, &v109[*(v116 + 72)], v123);

          sub_1BC759CC0();
          v112(v61, v71);
          v72 = v121;
          v107(v54, v108, v121);
          v73 = sub_1BC75A0F0();
          v75 = v74;
          (v106)(v54, v72);
          (v119)(v62, v120);
          v76._countAndFlagsBits = v73;
          v76._object = v75;
          v77 = v117;
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v76);

          v78._object = 0x80000001BC771520;
          v78._countAndFlagsBits = 0xD000000000000029;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v78);
          v79 = v77;
LABEL_33:
          SCLocalizedStringKey.init(stringInterpolation:)(v79, &v124._countAndFlagsBits);
          goto LABEL_18;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v39 = v11;
      v40 = v6;
      if (v28 != 1)
      {
        v41 = v123;
        if (!v28)
        {

          *v23 = 0;
          v23[1] = 0;
          return;
        }

        v117 = v4;
        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v80);
        if (*(v27 + 16))
        {
          v81 = v27;
          v82 = *(v2 + OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache);
          v83 = v12;
          v84 = (v81 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
          v85 = (v12 + 16);
          v86 = *(v12 + 16);
          v87 = v122;
          v110 = v84;
          v111 = v86;
          v112 = v85;
          (v86)(v122);
          v88 = v118;
          sub_1BC759CC0();
          v116 = v83;
          v113 = *(v83 + 8);
          v114 = v83 + 8;
          v113(v87, v41);
          v89 = v117;
          v90 = *(v117 + 13);
          v108 = *MEMORY[0x1E697B5A8];
          v91 = v121;
          v109 = v117 + 104;
          v107 = v90;
          v90(v40);
          v115 = v82;
          v92 = sub_1BC75A0F0();
          v93 = v89;
          v95 = v94;
          v105 = *(v93 + 1);
          v106 = v40;
          v117 = v93 + 8;
          v105(v40, v91);
          v119 = *(v119 + 8);
          (v119)(v88, v120);
          v96._countAndFlagsBits = v92;
          v96._object = v95;
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v96);

          v97._countAndFlagsBits = 32;
          v97._object = 0xE100000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v97);
          if (*(v81 + 16) >= 2uLL)
          {
            v98 = v123;
            v111(v87, &v110[*(v116 + 72)], v123);

            sub_1BC759CC0();
            v113(v87, v98);
            v99 = v106;
            v100 = v121;
            v107(v106, v108, v121);
            v101 = sub_1BC75A0F0();
            v103 = v102;
            v105(v99, v100);
            (v119)(v88, v120);
            v104._countAndFlagsBits = v101;
            v104._object = v103;
            SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v104);

            v52 = 0xD00000000000002ALL;
            v51 = 0x80000001BC7714F0;
            goto LABEL_32;
          }

LABEL_38:
          __break(1u);
          return;
        }

        goto LABEL_36;
      }

      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
      v43 = v123;
      if (*(v27 + 16))
      {
        v117 = *(v2 + OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache);
        v44 = v122;
        (*(v12 + 16))(v122, v27 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v123);

        v45 = v118;
        sub_1BC759CC0();
        (*(v12 + 8))(v44, v43);
        v46 = v121;
        (*(v4 + 13))(v40, *MEMORY[0x1E697B5A8], v121);
        v47 = sub_1BC75A0F0();
        v49 = v48;
        (*(v4 + 1))(v40, v46);
        (*(v119 + 8))(v45, v120);
        v50._countAndFlagsBits = v47;
        v50._object = v49;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v50);

        v51 = 0x80000001BC771550;
        v52 = 0xD000000000000029;
LABEL_32:
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v52);
        v79 = v39;
        goto LABEL_33;
      }

      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BC66FE40(v22, type metadata accessor for InterventionConfig.Layout);
    v29 = "_SCREEN_SUBTITLE";
    v30 = 0xD00000000000002CLL;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      v25._countAndFlagsBits = 0xD000000000000027;
      v25._object = 0x80000001BC771600;
      SCLocalizedStringKey.init(stringLiteral:)(v25);
      v26 = v124._object;
      *a1 = v124._countAndFlagsBits;
      a1[1] = v26;
      (*(v12 + 8))(v22, v123);
      return;
    }

LABEL_2:
    *a1 = 0;
    a1[1] = 0;
    sub_1BC66008C(v18, &qword_1EBCDC220, &qword_1BC761198);
    return;
  }

  v35._countAndFlagsBits = 0xD000000000000030;
  v35._object = 0x80000001BC771480;
  SCLocalizedStringKey.init(stringLiteral:)(v35);
  v36 = v124._object;
  *a1 = v124._countAndFlagsBits;
  a1[1] = v36;
  sub_1BC66FE40(v22, type metadata accessor for InterventionConfig.Layout);
}

uint64_t sub_1BC66DF8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC759F80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1BC66DFB8(uint64_t a1)
{
  v2 = sub_1BC759C40();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v36 - v7;
  v49 = sub_1BC759CA0();
  v8 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759D00();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v36 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v17 = *(v13 + 16);
    v16 = v13 + 16;
    v44 = v17;
    v38 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v18 = a1 + v38;
    v19 = *(v16 + 56);
    v41 = (v3 + 8);
    v42 = (v8 + 8);
    v40 = (v16 + 16);
    v37 = (v16 - 8);
    v51 = MEMORY[0x1E69E7CC0];
    v45 = v16;
    v46 = v2;
    v39 = v6;
    v20 = v36;
    v43 = v19;
    do
    {
      v52 = v15;
      v44(v20, v18, v10);
      v22 = v48;
      sub_1BC759CF0();
      v23 = v10;
      v24 = v50;
      sub_1BC759C90();
      (*v42)(v22, v49);
      sub_1BC759C30();
      sub_1BC6741B0();
      v25 = v6;
      v26 = v46;
      v27 = sub_1BC75C170();
      v28 = *v41;
      (*v41)(v25, v26);
      v28(v24, v26);
      if (v27)
      {
        (*v37)(v20, v23);
        v10 = v23;
        v21 = v43;
        v6 = v25;
      }

      else
      {
        v29 = *v40;
        (*v40)(v47, v20, v23);
        v30 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v30;
        v10 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BC6701E8(0, *(v30 + 16) + 1, 1);
          v20 = v36;
          v30 = v53;
        }

        v21 = v43;
        v33 = *(v30 + 16);
        v32 = *(v30 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1BC6701E8((v32 > 1), v33 + 1, 1);
          v20 = v36;
          v30 = v53;
        }

        *(v30 + 16) = v33 + 1;
        v51 = v30;
        v29((v30 + v38 + v33 * v21), v47, v10);
        v6 = v39;
      }

      v18 += v21;
      v15 = v52 - 1;
    }

    while (v52 != 1);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v51 + 16);

  return v34 == 0;
}

uint64_t InterventionScreenModel.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  if (!v1)
  {
    return 0x742D726564616568;
  }

  if (v1 == 1)
  {
    return 0x6D2D726564616568;
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t InterventionScreenModel.emoji.getter()
{
  v1 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  if (!v1)
  {
    return 2493816816;
  }

  if (v1 == 1)
  {
    return 2426904560;
  }

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t InterventionScreenModel.bullets.getter()
{
  ObjectType = swift_getObjectType();
  v2 = v0 + OBJC_IVAR___SCUIInterventionScreenModel_config;
  v3 = v2 + *(type metadata accessor for InterventionConfig(0) + 20);
  v4 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  v5 = sub_1BC66B9E4();
  v6 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache);
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = v4;
  v9 = v5 & 1;
  v10 = v6;
  v11 = ObjectType;
  return sub_1BC66E900(sub_1BC66FD54, v8, &unk_1F3B28720);
}

uint64_t static InterventionScreenModel.generateBullets(for:layout:screen:canShowScreenTimePasscodeWarningBullet:participantContactCache:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a4;
  v8 = a5;
  return sub_1BC66E900(sub_1BC66FD54, v6, &unk_1F3B28720);
}

uint64_t sub_1BC66E900(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v12 = v8;
      v9 = a1(&v11, &v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x1BFB268C0](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC75BD20();
        }

        sub_1BC75BD50();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

unint64_t InterventionScreenModel.actions.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___SCUIInterventionScreenModel_screen);
  if (v2 == 1)
  {
    InterventionConfig.Layout.heedActionText.getter(&v29);
    receiver = v29.receiver;
    super_class = v29.super_class;
    v5 = type metadata accessor for InterventionScreenModel.Action();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
    *v7 = receiver;
    v7[1] = super_class;
    v6[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 1;
    *&v6[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 4;
    v28.receiver = v6;
    v28.super_class = v5;
    v8 = objc_msgSendSuper2(&v28, sel_init);
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))())
    {
      v9 = 0xEF454E4F454D4F53;
    }

    else
    {
      v9 = 0xEF50554E574F5247;
    }

    v14 = 0x5F4547415353454DLL;
    SCLocalizedStringKey.init(stringLiteral:)(*(&v9 - 1));
    v15 = v29.receiver;
    v16 = v29.super_class;
    v17 = objc_allocWithZone(v5);
    v18 = &v17[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
    *v18 = v15;
    v18[1] = v16;
    v17[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
    *&v17[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 5;
    v29.receiver = v17;
    v29.super_class = v5;
    v19 = objc_msgSendSuper2(&v29, sel_init);
    InterventionConfig.Layout.bypassActionText.getter(v27);
    v20 = v27[0];
    v21 = v27[1];
    v22 = objc_allocWithZone(v5);
    v23 = &v22[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
    *v23 = v20;
    v23[1] = v21;
    v22[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
    *&v22[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 6;
    v26.receiver = v22;
    v26.super_class = v5;
    v24 = objc_msgSendSuper2(&v26, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BC760FF0;
    *(v11 + 32) = v8;
    *(v11 + 40) = v19;
    *(v11 + 48) = v24;
    if (v11 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC118, &unk_1BC761098);
      v25 = sub_1BC75C3E0();

      return v25;
    }
  }

  else
  {
    if (v2)
    {
      result = sub_1BC75C3D0();
      __break(1u);
      return result;
    }

    sub_1BC66ED90();
    v11 = v10;
    if (v10 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC118, &unk_1BC761098);
      v12 = sub_1BC75C3E0();

      return v12;
    }
  }

  sub_1BC75C5F0();

  return v11;
}

double sub_1BC66ED90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC200, &qword_1BC761178);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v56 - v3);
  v5._countAndFlagsBits = 0x4C45485F45524F4DLL;
  v5._object = 0xE900000000000050;
  SCLocalizedStringKey.init(stringLiteral:)(v5);
  v6 = v65;
  v7 = v66;
  v8 = type metadata accessor for InterventionScreenModel.Action();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
  *v10 = v6;
  v10[1] = v7;
  v9[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
  *&v9[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 2;
  v64.receiver = v9;
  v64.super_class = v8;
  v11 = objc_msgSendSuper2(&v64, sel_init);
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  v14 = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v15 = v4 + *(v2 + 56);
  *v4 = v13;
  sub_1BC66FDD8(v0 + v14, v15, type metadata accessor for InterventionConfig.Layout);
  if (v13 != 1)
  {
    goto LABEL_9;
  }

  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      v17 = sub_1BC759D00();
      (*(*(v17 - 8) + 8))(v15, v17);
LABEL_11:
      v42._countAndFlagsBits = 0x4C45434E4143;
      v42._object = 0xE600000000000000;
      SCLocalizedStringKey.init(stringLiteral:)(v42);
      v43 = v65;
      v44 = v66;
      v45 = objc_allocWithZone(v8);
      v46 = &v45[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
      *v46 = v43;
      v46[1] = v44;
      v45[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 1;
      *&v45[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 1;
      v59.receiver = v45;
      v59.super_class = v8;
      v57 = objc_msgSendSuper2(&v59, sel_init);
      v47._countAndFlagsBits = 0x5F4E4F5F59415453;
      v47._object = 0xEC0000004C4C4143;
      SCLocalizedStringKey.init(stringLiteral:)(v47);
      v48 = v65;
      v49 = v66;
      v50 = objc_allocWithZone(v8);
      v51 = &v50[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
      *v51 = v48;
      v51[1] = v49;
      v50[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
      *&v50[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 3;
      v58.receiver = v50;
      v58.super_class = v8;
      v28 = objc_msgSendSuper2(&v58, sel_init);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_1BC66FE40(v15, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 7)
  {
LABEL_9:
    v29._countAndFlagsBits = 0x4C45434E4143;
    v29._object = 0xE600000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v29);
    v30 = v65;
    v31 = v66;
    v32 = objc_allocWithZone(v8);
    v33 = &v32[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
    *v33 = v30;
    v33[1] = v31;
    v32[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 1;
    *&v32[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 1;
    v63.receiver = v32;
    v63.super_class = v8;
    v57 = objc_msgSendSuper2(&v63, sel_init);
    v34._countAndFlagsBits = 0x455255535F4D49;
    v34._object = 0xE700000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v34);
    v35 = v12;
    v36 = v11;
    v38 = v65;
    v37 = v66;
    v39 = objc_allocWithZone(v8);
    v40 = &v39[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
    *v40 = v38;
    v40[1] = v37;
    v11 = v36;
    v12 = v35;
    v39[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
    *&v39[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 3;
    v62.receiver = v39;
    v62.super_class = v8;
    v41 = objc_msgSendSuper2(&v62, sel_init);
    v28 = sub_1BC66008C(v4, &qword_1EBCDC200, &qword_1BC761178);
    goto LABEL_13;
  }

  sub_1BC66FE40(v15, type metadata accessor for InterventionConfig.Layout);
  v18._countAndFlagsBits = 0x4C45434E4143;
  v18._object = 0xE600000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v18);
  v19 = v65;
  v20 = v66;
  v21 = objc_allocWithZone(v8);
  v22 = &v21[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
  *v22 = v19;
  v22[1] = v20;
  v21[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 1;
  *&v21[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 1;
  v61.receiver = v21;
  v61.super_class = v8;
  v57 = objc_msgSendSuper2(&v61, sel_init);
  v23._countAndFlagsBits = 0x45554E49544E4F43;
  v23._object = 0xE800000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v23);
  v24 = v65;
  v25 = v66;
  v26 = objc_allocWithZone(v8);
  v27 = &v26[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
  *v27 = v24;
  v27[1] = v25;
  v26[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
  *&v26[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 3;
  v60.receiver = v26;
  v60.super_class = v8;
  v28 = objc_msgSendSuper2(&v60, sel_init);
LABEL_12:
  v41 = v28;
LABEL_13:
  v52 = (*((*v12 & *v0) + 0xA0))(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
  if (v52)
  {
    v55 = swift_allocObject();
    *&result = 3;
    *(v55 + 16) = xmmword_1BC760FF0;
    *(v55 + 32) = v57;
    *(v55 + 40) = v11;
    *(v55 + 48) = v41;
  }

  else
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1BC761000;
    *(v53 + 32) = v57;
    *(v53 + 40) = v41;
  }

  return result;
}

uint64_t InterventionConfig.Layout.heedActionText.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC66FDD8(v2, v6, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload != 6)
    {
LABEL_12:
      sub_1BC66FE40(v6, type metadata accessor for InterventionConfig.Layout);
LABEL_13:
      v10 = 0x4C45434E4143;
      v11 = 0xE600000000000000;
      goto LABEL_18;
    }

    v9 = *(*v6 + 16);

    if (v9 >= 2)
    {
LABEL_15:
      v10 = 0x41435F455641454CLL;
      v11 = 0xEA00000000004C4CLL;
      goto LABEL_18;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 3)
    {
      if ((EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload != 0)
      {
        sub_1BC66FE40(v6, type metadata accessor for InterventionConfig.Layout);
LABEL_17:
        v11 = 0x80000001BC770480;
        v10 = 0xD000000000000013;
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v12 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48)];
    v13 = sub_1BC759D00();
    (*(*(v13 - 8) + 8))(v6, v13);
    v14 = *(v12 + 16);

    if (v14)
    {
      goto LABEL_15;
    }
  }

  v10 = 0x4C4C41435F444E45;
  v11 = 0xE800000000000000;
LABEL_18:
  result = SCLocalizedStringKey.init(stringLiteral:)(*&v10).localized._countAndFlagsBits;
  v16 = v17[1];
  *a1 = v17[0];
  a1[1] = v16;
  return result;
}

void InterventionConfig.Layout.bypassActionText.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BC759D00();
  v7 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1BC759FE0();
  v10 = *(v55 - 8);
  v11 = MEMORY[0x1EEE9AC00](v55);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC66FDD8(v2, v18, type metadata accessor for InterventionConfig.Layout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1BC66FE40(v18, type metadata accessor for InterventionConfig.Layout);
        v20 = 0x4552414853;
        v21 = 0xE500000000000000;
        goto LABEL_26;
      }

      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
LABEL_13:
      sub_1BC66FE40(v18, type metadata accessor for InterventionConfig.Layout);
LABEL_14:
      v20 = 0x4F48505F57454956;
      v21 = 0xEE005544455F4F54;
      goto LABEL_26;
    }

    sub_1BC66FE40(v18, type metadata accessor for InterventionConfig.Layout);
LABEL_12:
    v20 = 0x45554E49544E4F43;
    v21 = 0xE800000000000000;
LABEL_26:
    SCLocalizedStringKey.init(stringLiteral:)(*&v20);
    return;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      sub_1BC66FE40(v18, type metadata accessor for InterventionConfig.Layout);
      goto LABEL_25;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

    (*(v7 + 8))(v18, v56);
LABEL_25:
    v21 = 0x80000001BC770500;
    v20 = 0xD000000000000012;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v50 = v13;
  v22 = *v18;
  v23 = v18[1];
  v24 = *(*v18 + 16);
  if (v24)
  {
    v47 = v18[1];
    v48 = v6;
    v49 = a1;
    v57 = MEMORY[0x1E69E7CC0];
    v25 = v22;
    sub_1BC6701A4(0, v24, 0);
    v26 = v57;
    v28 = *(v7 + 16);
    v27 = v7 + 16;
    v29 = *(v27 + 64);
    v46 = v25;
    v30 = v25 + ((v29 + 32) & ~v29);
    v52 = *(v27 + 56);
    v53 = v28;
    v54 = v27;
    v31 = (v27 - 8);
    v51 = v10 + 32;
    do
    {
      v32 = v56;
      v53(v9, v30, v56);
      sub_1BC759CC0();
      (*v31)(v9, v32);
      v57 = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1BC6701A4((v33 > 1), v34 + 1, 1);
        v26 = v57;
      }

      *(v26 + 16) = v34 + 1;
      (*(v10 + 32))(v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v34, v15, v55);
      v30 += v52;
      --v24;
    }

    while (v24);

    v6 = v48;
    a1 = v49;
    v23 = v47;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v57 = v26;
  sub_1BC670078(v23);
  v35 = v57;
  v36 = *(v57 + 16);
  if (!v36)
  {

    v45 = " CALL_ONE_PARTICIPANT";
    v20 = 0xD000000000000014;
LABEL_34:
    v21 = v45 | 0x8000000000000000;
    goto LABEL_26;
  }

  if (v36 != 1)
  {

    v45 = "DONT_VIEW_PHOTO_EDU";
    v20 = 0xD000000000000016;
    goto LABEL_34;
  }

  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  if (*(v35 + 16))
  {
    v38 = v50;
    v39 = v55;
    (*(v10 + 16))(v50, v35 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v55);

    v40 = sub_1BC759F80();
    v42 = v41;
    (*(v10 + 8))(v38, v39);
    v43._countAndFlagsBits = v40;
    v43._object = v42;
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v43);

    v44._countAndFlagsBits = 0xD000000000000015;
    v44._object = 0x80000001BC7704C0;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
    SCLocalizedStringKey.init(stringInterpolation:)(v6, a1);
  }

  else
  {
    __break(1u);
  }
}

SCUIInterventionScreenModelFactory __swiftcall SCUIInterventionScreenModelFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1BC66FC24()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4450);
  __swift_project_value_buffer(v0, qword_1EBCF4450);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC66FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterventionConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}