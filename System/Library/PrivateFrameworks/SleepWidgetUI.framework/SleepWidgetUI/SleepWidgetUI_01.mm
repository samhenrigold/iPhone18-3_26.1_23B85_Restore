uint64_t sub_269E0376C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269E03818(uint64_t a1)
{
  sub_269E0355C(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269E03908(319, &qword_2815725D8, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SleepWidgetViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269E03908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269E03958()
{
  result = qword_281572388;
  if (!qword_281572388)
  {
    sub_269E036B4(255, &qword_281572380, sub_269E034E0, sub_269E03738, MEMORY[0x277CDFAB8]);
    sub_269E03A4C();
    sub_269E03CD4(&qword_2815720B8, sub_269E03738, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572388);
  }

  return result;
}

unint64_t sub_269E03A4C()
{
  result = qword_281572490;
  if (!qword_281572490)
  {
    sub_269E034E0(255);
    sub_269E03AFC();
    sub_269E03CD4(&qword_2815720A0, sub_269DFB55C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572490);
  }

  return result;
}

unint64_t sub_269E03AFC()
{
  result = qword_281572008;
  if (!qword_281572008)
  {
    sub_269E03528(255);
    sub_269E03B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572008);
  }

  return result;
}

unint64_t sub_269E03B74()
{
  result = qword_281572128;
  if (!qword_281572128)
  {
    sub_269E035C0(255);
    sub_269E03BF4();
    sub_269E03D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572128);
  }

  return result;
}

unint64_t sub_269E03BF4()
{
  result = qword_281572190;
  if (!qword_281572190)
  {
    sub_269E0366C(255);
    sub_269E03CD4(&qword_281572EA0, type metadata accessor for SleepWidgetCircularView, &unk_269E55200);
    sub_269E03CD4(qword_281572D58, type metadata accessor for SleepWidgetRectangularView, &unk_269E53594);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572190);
  }

  return result;
}

uint64_t sub_269E03CD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269E03D1C()
{
  result = qword_281572180;
  if (!qword_281572180)
  {
    sub_269E03DE8(255, &qword_281572178, MEMORY[0x277CE0338]);
    sub_269E03CD4(&qword_281572958, type metadata accessor for SleepWidgetSmallView, &unk_269E534E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572180);
  }

  return result;
}

void sub_269E03DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepWidgetSmallView(255);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269E03E50(uint64_t a1, uint64_t a2)
{
  sub_269E03DE8(0, &qword_281572178, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E03ED0(uint64_t a1)
{
  sub_269E03DE8(0, &qword_281572178, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E03F48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E03FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void SleepSnidgetView.init(sleepDaySummaries:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 1;
  SleepDaySummaryResults.init(summaries:context:)(a1, &v6, v7);
  v3 = v7[1];
  v4 = v8;
  v5 = v9;
  *a2 = v7[0];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t SleepSnidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for SleepWidgetChartView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E04A5C(0, &qword_28035EAF8, MEMORY[0x277CE0330]);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_269E50E4C();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_269E50E5C();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269E50DAC();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v22 = *v1;
  v21 = *(v1 + 8);
  v23 = *(v1 + 16);
  v24 = *(v1 + 24);
  if (v21)
  {
    v39 = &v38 - v19;
    v40 = v20;
    v41 = v18;
    v47 = v2;
    v25 = v21;
    v26 = [v25 summaryFilteredToLastPeriod];
    if (v26)
    {
      v27 = v26;
      if ([v26 hasSleepStageData])
      {
        sub_269E51F1C();

        v29 = v39;
        v28 = v40;
        v30 = v17;
        v31 = v41;
        (*(v40 + 32))(v39, v30, v41);
        (*(v28 + 16))(v14, v29, v31);
        sub_269E047CC(0, &qword_281571BE8, MEMORY[0x277D84560]);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_269E53730;
        sub_269E50E3C();
        sub_269E50E2C();
        sub_269E50DFC();
        sub_269E50DDC();
        v52 = v32;
        sub_269E04728(&qword_281573C30, MEMORY[0x277D626D0], MEMORY[0x277D626E0]);
        sub_269E047CC(0, &qword_281571DB0, MEMORY[0x277D83940]);
        sub_269E0482C();
        sub_269E51FEC();
        v33 = objc_allocWithZone(sub_269E50EFC());
        sub_269E50EEC();
        v34 = v45;
        sub_269E50DBC();
        v35 = v46;
        v36 = v49;
        (*(v46 + 16))(v7, v34, v49);
        swift_storeEnumTagMultiPayload();
        sub_269E04728(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
        sub_269E04728(&qword_281572A30, type metadata accessor for SleepWidgetChartView, &unk_269E56428);
        sub_269E513BC();
        (*(v35 + 8))(v34, v36);
        return (*(v28 + 8))(v29, v31);
      }
    }

    else
    {
      v27 = v25;
    }
  }

  v52 = v22;
  v53 = v21;
  v54 = v23;
  v55 = v24;
  sub_269E0B178(&v51);
  sub_269E49E94(&v51, 13, v4);
  sub_269E046C4(v4, v7);
  swift_storeEnumTagMultiPayload();
  sub_269E04728(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
  sub_269E04728(&qword_281572A30, type metadata accessor for SleepWidgetChartView, &unk_269E56428);
  sub_269E513BC();
  return sub_269E04770(v4);
}

uint64_t sub_269E046C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetChartView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E04728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269E04770(uint64_t a1)
{
  v2 = type metadata accessor for SleepWidgetChartView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269E047CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269E50E4C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269E0482C()
{
  result = qword_281571DA8;
  if (!qword_281571DA8)
  {
    sub_269E047CC(255, &qword_281571DB0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571DA8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_269E048C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_269E04910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269E04960()
{
  result = qword_28035EB00;
  if (!qword_28035EB00)
  {
    sub_269E04A5C(255, &qword_28035EB08, MEMORY[0x277CE0338]);
    sub_269E04728(&qword_281573C28, MEMORY[0x277D626E8], MEMORY[0x277D626C8]);
    sub_269E04728(&qword_281572A30, type metadata accessor for SleepWidgetChartView, &unk_269E56428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB00);
  }

  return result;
}

void sub_269E04A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269E50E5C();
    v7 = type metadata accessor for SleepWidgetChartView(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_269E04AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269E04B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269E04BA0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_269E519EC();
}

uint64_t sub_269E04D70()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 56);
  if (*(v0 + 64) != 1)
  {

    sub_269E51EBC();
    v6 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_269E04EB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  sub_269DFE53C(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0895C(255);
  v7 = *(a1 + 16);
  v32 = *(a1 + 24);
  v37 = v8;
  v38 = v7;
  v39 = MEMORY[0x277CE1180];
  type metadata accessor for SleepWidgetResultsView.SummaryTextView(255, v7, v32, v9);
  v40 = sub_269E510FC();
  sub_269E08A58();
  v41 = v10;
  swift_getTupleTypeMetadata();
  sub_269E519DC();
  swift_getWitnessTable();
  v11 = sub_269E5194C();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_269E08D9C(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
  v37 = v11;
  v38 = v4;
  v30 = v4;
  v28[1] = v15;
  v28[2] = WitnessTable;
  v39 = WitnessTable;
  v40 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v28 - v21;
  sub_269E5134C();
  v34 = v7;
  v35 = v32;
  v36 = v33;
  sub_269E5193C();
  v23 = *MEMORY[0x277CDFA10];
  v24 = sub_269E510EC();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  sub_269E08D9C(&qword_281572560, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269E5179C();
    sub_269E09034(v6, sub_269DFE53C);
    (*(v29 + 8))(v13, v11);
    v26 = *(v17 + 16);
    v26(v22, v20, OpaqueTypeMetadata2);
    v27 = *(v17 + 8);
    v27(v20, OpaqueTypeMetadata2);
    v26(v31, v22, OpaqueTypeMetadata2);
    return (v27)(v22, OpaqueTypeMetadata2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E05318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a3;
  v77 = a4;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v67 - v10;
  sub_269E0895C(0);
  v13 = v12;
  v14 = MEMORY[0x28223BE20](v12);
  v79 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v67 - v16);
  sub_269E51E1C();
  v78 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v18 = sub_269E50A7C();
  v20 = v19;
  *v17 = swift_getKeyPath();
  sub_269E07A08(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v21 = (v17 + *(type metadata accessor for HeaderView(0) + 20));
  *v21 = v18;
  v21[1] = v20;
  LOBYTE(v18) = sub_269E5150C();
  sub_269E5102C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_269E08998(0);
  v31 = v17 + *(v30 + 36);
  *v31 = v18;
  *(v31 + 1) = v23;
  *(v31 + 2) = v25;
  *(v31 + 3) = v27;
  *(v31 + 4) = v29;
  v31[40] = 0;
  LOBYTE(v18) = sub_269E514FC();
  v32 = sub_269E5102C();
  v33 = v17 + *(v13 + 36);
  *v33 = v18;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  (*(a1 + 40))(v32);
  v73 = *(v6 + 16);
  v73(v11, v9, a2);
  v38 = *(v6 + 8);
  v75 = v6 + 8;
  v76 = v38;
  v38(v9, a2);
  v39 = *(a1 + 24);
  v40 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = SleepWidgetModelProviding.summaryDurationTitle.getter(v39, v40);
  v74 = v13;
  v42 = v41;
  v44 = v43;
  v72 = v11;
  v70 = v17;
  v45 = *(a1 + 24);
  v46 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v45);
  v47 = (*(v46 + 24))(v45, v46);
  *&v87 = v42;
  *(&v87 + 1) = v44;
  *&v88 = v47;
  *(&v88 + 1) = v48;
  sub_269E5150C();
  type metadata accessor for SleepWidgetResultsView.SummaryTextView(0, a2, v80, v49);
  WitnessTable = swift_getWitnessTable();
  v68 = a2;
  v51 = WitnessTable;
  sub_269E517FC();

  v89 = v105;
  v90[0] = v106[0];
  *(v90 + 9) = *(v106 + 9);
  v87 = v103;
  v88 = v104;
  v52 = sub_269E510FC();
  v109 = v51;
  v110 = MEMORY[0x277CDF918];
  v69 = swift_getWitnessTable();
  v53 = *(v52 - 8);
  (*(v53 + 16))(v111, &v87, v52);
  v113[2] = v89;
  v114[0] = v90[0];
  *(v114 + 9) = *(v90 + 9);
  v113[0] = v87;
  v113[1] = v88;
  v71 = *(v53 + 8);
  v71(v113, v52);
  sub_269E08ABC(a1, v100);
  *(&v101 + 1) = 0;
  LOBYTE(v51) = sub_269E5150C();
  sub_269E04D70();
  sub_269E5102C();
  v103 = v100[0];
  v104 = v100[1];
  v105 = v101;
  v102 = 0;
  LOBYTE(v106[0]) = v51;
  *(&v106[0] + 1) = v54;
  *&v106[1] = v55;
  *(&v106[1] + 1) = v56;
  v107 = v57;
  v108 = 0;
  v58 = v70;
  v59 = v79;
  sub_269E07860(v70, v79, sub_269E0895C);
  v97[0] = v59;
  v60 = v9;
  v67 = v9;
  v61 = v9;
  v62 = v72;
  v63 = v68;
  v73(v61, v72, v68);
  v95 = 0x4024000000000000;
  v96 = 0;
  v97[1] = v60;
  v97[2] = &v95;
  v93 = v111[2];
  v94[0] = v112[0];
  *(v94 + 9) = *(v112 + 9);
  v91 = v111[0];
  v92 = v111[1];
  v97[3] = &v91;
  sub_269E07860(&v103, &v87, sub_269E08A58);
  v97[4] = &v87;
  v86[0] = v74;
  v86[1] = v63;
  v86[2] = MEMORY[0x277CE1180];
  v86[3] = v52;
  sub_269E08A58();
  v86[4] = v64;
  v81 = sub_269E08B20(&qword_2815723F8, sub_269E0895C, sub_269E08BA4);
  v82 = v80;
  v83 = MEMORY[0x277CE1170];
  v84 = v69;
  v85 = sub_269E08B20(&qword_281572558, sub_269E08A58, sub_269E08C54);
  sub_269E04BA0(v97, 5uLL, v86);
  sub_269E09034(&v103, sub_269E08A58);
  v65 = v76;
  v76(v62, v63);
  sub_269E09034(v58, sub_269E0895C);
  sub_269E09034(&v87, sub_269E08A58);
  v98[2] = v93;
  v99[0] = v94[0];
  *(v99 + 9) = *(v94 + 9);
  v98[0] = v91;
  v98[1] = v92;
  v71(v98, v52);
  v65(v67, v63);
  sub_269E09034(v59, sub_269E0895C);
}

uint64_t sub_269E05AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269DF0E28();

  v4 = sub_269E516CC();
  v6 = v5;
  v8 = v7;
  sub_269E518AC();
  v9 = sub_269E5168C();
  v11 = v10;
  v13 = v12;

  sub_269E00F48(v4, v6, v8 & 1);

  sub_269E5162C();
  v14 = sub_269E516AC();
  v16 = v15;
  v18 = v17;

  sub_269E00F48(v9, v11, v13 & 1);

  sub_269E515CC();
  v19 = sub_269E5167C();
  v21 = v20;
  LOBYTE(v4) = v22;
  v24 = v23;
  sub_269E00F48(v14, v16, v18 & 1);

  *&v26 = v19;
  *(&v26 + 1) = v21;
  LOBYTE(v27) = v4 & 1;
  *(&v27 + 1) = v24;
  *&v28 = swift_getKeyPath();
  *(&v28 + 1) = 0x3FE6666666666666;
  *&v29 = swift_getKeyPath();
  *(&v29 + 1) = 1;

  MEMORY[0x26D6539C0](0xD000000000000011, 0x8000000269E56AB0);
  sub_269E08F3C(0);
  sub_269E08F84();
  sub_269E517EC();

  v30[2] = v28;
  v30[3] = v29;
  v31 = 0;
  v30[0] = v26;
  v30[1] = v27;
  return sub_269E09034(v30, sub_269E08F3C);
}

uint64_t sub_269E05D4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v39 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0);
  MEMORY[0x28223BE20](v39);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E09094(0, &qword_281572230, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView, type metadata accessor for SleepStageSummaryValueView.NoDataStringView, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v1[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  v13 = SleepWidgetModelProviding.hasDataLastNight.getter(v11, v12);
  v15 = v2[3];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v15);
  if (v13)
  {
    v16 = SleepWidgetModelProviding.summaryDurationText.getter(v15, v14);
    v18 = v17;
    v19 = v2[3];
    v20 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v19);
    v21 = (*(v20 + 24))(v19, v20);
    v23 = v22;
    v24 = v2[5];
    *v10 = swift_getKeyPath();
    sub_269E07A08(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v25 = (v10 + v8[5]);
    *v25 = v16;
    v25[1] = v18;
    v26 = (v10 + v8[6]);
    *v26 = v21;
    v26[1] = v23;
    *(v10 + v8[7]) = v24;
    sub_269E07860(v10, v7, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView);
    swift_storeEnumTagMultiPayload();
    sub_269E08D9C(qword_2815734D8, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView, &unk_269E53A58);
    sub_269E08D9C(qword_281573578, type metadata accessor for SleepStageSummaryValueView.NoDataStringView, &unk_269E53A08);

    sub_269E513BC();
    v27 = type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView;
    v28 = v10;
  }

  else
  {
    v29 = (*(v14 + 16))(v15, v14);
    v30 = v2[3];
    v31 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v30);
    v32 = (*(v31 + 24))(v30, v31);
    v34 = v33;
    *v4 = swift_getKeyPath();
    sub_269E07A08(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v35 = v39;
    *(v4 + *(v39 + 20)) = v29;
    v36 = (v4 + *(v35 + 24));
    *v36 = v32;
    v36[1] = v34;
    sub_269E07860(v4, v7, type metadata accessor for SleepStageSummaryValueView.NoDataStringView);
    swift_storeEnumTagMultiPayload();
    sub_269E08D9C(qword_2815734D8, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView, &unk_269E53A58);
    sub_269E08D9C(qword_281573578, type metadata accessor for SleepStageSummaryValueView.NoDataStringView, &unk_269E53A08);
    sub_269E513BC();
    v27 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView;
    v28 = v4;
  }

  return sub_269E09034(v28, v27);
}

uint64_t sub_269E06240()
{
  v1 = sub_269E50A5C();
  MEMORY[0x28223BE20](v1 - 8);
  sub_269E063B0(v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_269E516BC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v14[2] = v3;
  v14[3] = v5;
  v7 &= 1u;
  v15 = v7;
  v16 = v9;
  v17 = KeyPath;
  v18 = 0x3FE999999999999ALL;
  v11 = (v0 + *(type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView(0) + 24));
  v12 = v11[1];
  v14[0] = *v11;
  v14[1] = v12;

  MEMORY[0x26D6539C0](0xD000000000000011, 0x8000000269E56A60);
  sub_269E07E0C(0);
  sub_269E07E90();
  sub_269E517EC();

  sub_269E00F48(v3, v5, v7);
}

uint64_t sub_269E063B0@<X0>(uint64_t a1@<X8>)
{
  sub_269E07A08(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v70 - v3;
  v4 = sub_269E5166C();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x28223BE20](v4);
  v85 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_269E51ADC();
  v72 = *(v73 - 8);
  v6 = MEMORY[0x28223BE20](v73);
  v70 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v70 - v8;
  sub_269E07FE0(0, &qword_281573C98, sub_269E07F8C, MEMORY[0x277CDF230]);
  v92 = v9;
  v95 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v89 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v70 - v12;
  sub_269E07FE0(0, &qword_281573C90, sub_269E08040, MEMORY[0x277CDF260]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  v94 = sub_269E50ACC();
  v18 = *(v94 - 8);
  v19 = MEMORY[0x28223BE20](v94);
  v81 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v70 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v70 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v91 = &v70 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v70 - v28;
  v90 = type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView(0);

  sub_269E50ABC();
  v93 = a1;
  sub_269E50A6C();
  sub_269E50ABC();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v75 = sub_269E08040();
  sub_269E50A8C();

  v30 = *(v18 + 8);
  v31 = v94;
  v30(v29, v94);
  sub_269E5156C();
  sub_269E515CC();
  v32 = sub_269E515FC();

  v98 = v32;
  sub_269E50A9C();

  v33 = *(v15 + 8);
  v79 = v17;
  v82 = v14;
  v34 = v14;
  v35 = v76;
  v80 = v15 + 8;
  v77 = v33;
  v33(v17, v34);
  v96 = swift_getKeyPath();
  swift_getKeyPath();
  v78 = sub_269E07F8C();
  sub_269E50A8C();
  v36 = v74;

  v84 = v18 + 8;
  v30(v25, v31);
  v37 = *(v36 + *(v90 + 28));
  v90 = v37;
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v39 = v71;
    sub_269E2E90C(v71);
    v40 = v70;
    sub_269E51ABC();
    v41 = sub_269E51AAC();
    v42 = *(v72 + 8);
    v43 = v40;
    v44 = v73;
    v42(v43, v73);
    if (v41)
    {
      v45 = sub_269E518AC();
    }

    else
    {
      v46 = [objc_opt_self() systemGrayColor];
      v45 = sub_269E5183C();
    }

    v38 = v45;
    v42(v39, v44);
  }

  v98 = v38;
  swift_retain_n();
  v47 = v92;
  sub_269E50A9C();

  v48 = *(v95 + 8);
  v95 += 8;
  v76 = v48;
  (v48)(v35, v47);
  sub_269E50A4C();
  sub_269E50ABC();
  v49 = swift_getKeyPath();
  *(&v70 - 2) = MEMORY[0x28223BE20](v49);
  swift_getKeyPath();
  v50 = v79;
  sub_269E50A8C();

  v30(v29, v94);
  v51 = v30;
  v52 = v85;
  v53 = v86;
  v54 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x277CE0A90], v87);
  v55 = *MEMORY[0x277CE09A0];
  v56 = sub_269E5159C();
  v57 = *(v56 - 8);
  v58 = v88;
  (*(v57 + 104))(v88, v55, v56);
  (*(v57 + 56))(v58, 0, 1, v56);
  sub_269E515EC();
  sub_269E08104(v58);
  (*(v53 + 8))(v52, v54);
  v59 = v51;
  v60 = sub_269E5158C();

  v98 = v60;
  v62 = v81;
  v61 = v82;
  sub_269E50A9C();

  v63 = v90;
  v77(v50, v61);
  v64 = swift_getKeyPath();
  *(&v70 - 2) = MEMORY[0x28223BE20](v64);
  swift_getKeyPath();
  v65 = v89;
  sub_269E50A8C();
  v66 = v94;

  v59(v62, v66);
  if (!v63)
  {
    v63 = sub_269E5189C();
  }

  v98 = v63;
  v67 = v83;
  v68 = v92;
  sub_269E50A9C();

  (v76)(v65, v68);
  sub_269E50A3C();
  v59(v67, v66);
  return (v59)(v91, v66);
}

uint64_t sub_269E06E2C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_269E08498(0, &qword_281571BE0, MEMORY[0x277CE08E0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269E528E0;
  v8 = sub_269E514AC();
  *(inited + 32) = v8;
  v9 = sub_269E514CC();
  *(inited + 33) = v9;
  v10 = sub_269E514BC();
  sub_269E514BC();
  if (sub_269E514BC() != v8)
  {
    v10 = sub_269E514BC();
  }

  sub_269E514BC();
  if (sub_269E514BC() != v9)
  {
    v10 = sub_269E514BC();
  }

  v14[1] = a1;
  *a1 = v10;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E08190(0);
  v14[2] = *(v2 + *(v4 + 20));
  swift_getKeyPath();
  sub_269E07860(v2, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageSummaryValueView.NoDataStringView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_269E085B8(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_269E08498(0, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_269E09094(0, &qword_2815722F0, sub_269E082F8, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  sub_269E084E8();
  sub_269E0869C(&qword_2815722F8, &qword_2815722F0, sub_269E082F8, sub_269E08774);

  sub_269E5197C();
}

uint64_t sub_269E07198@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v60 = a3;
  v57 = sub_269E51ADC();
  v56 = *(v57 - 8);
  v4 = MEMORY[0x28223BE20](v57);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v54 - v6;
  sub_269E07A08(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_269E5166C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  sub_269E51E1C();
  v58 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v67[0] = v15;
  *(&v67[0] + 1) = v14;
  sub_269DF0E28();

  v16 = sub_269E516CC();
  v18 = v17;
  v20 = v19;
  v54 = v21;
  (*(v11 + 104))(v13, *MEMORY[0x277CE0A68], v10);
  v22 = v10;
  v23 = *MEMORY[0x277CE09A0];
  v24 = sub_269E5159C();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v9, v23, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  sub_269E515EC();
  sub_269E08104(v9);
  (*(v11 + 8))(v13, v22);
  sub_269E5154C();

  v26 = sub_269E516AC();
  v28 = v27;
  v30 = v29;

  sub_269E00F48(v16, v18, v20 & 1);

  sub_269E515AC();
  v31 = sub_269E5167C();
  v33 = v32;
  v35 = v34;
  sub_269E00F48(v26, v28, v30 & 1);

  v36 = v59;
  sub_269E2E90C(v61);
  v37 = v55;
  sub_269E51ABC();
  LOBYTE(v24) = sub_269E51AAC();
  v38 = *(v56 + 8);
  v39 = v37;
  v40 = v57;
  v38(v39, v57);
  if (v24)
  {
    sub_269E518AC();
  }

  else
  {
    v41 = [objc_opt_self() secondaryLabelColor];
    sub_269E5183C();
  }

  v38(v61, v40);
  v42 = sub_269E5168C();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_269E00F48(v31, v33, v35 & 1);

  KeyPath = swift_getKeyPath();
  v70 = v46 & 1;
  v69 = 0;
  v50 = swift_getKeyPath();
  *&v62 = v42;
  *(&v62 + 1) = v44;
  LOBYTE(v63) = v46 & 1;
  *(&v63 + 1) = v48;
  *&v64 = KeyPath;
  *(&v64 + 1) = 1;
  LOBYTE(v65) = 0;
  *(&v65 + 1) = 257;
  *(&v65 + 1) = v50;
  v66 = 0x3FE999999999999ALL;
  v51 = (v36 + *(type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0) + 24));
  v52 = v51[1];
  *&v67[0] = *v51;
  *(&v67[0] + 1) = v52;

  MEMORY[0x26D6539C0](0x54617461446F4E2ELL, 0xEB00000000747865);
  sub_269E082F8(0);
  sub_269E08774();
  sub_269E517EC();

  v67[2] = v64;
  v67[3] = v65;
  v68 = v66;
  v67[0] = v62;
  v67[1] = v63;
  sub_269E09034(v67, sub_269E082F8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_269E07860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E078C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_269E07940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269E07988(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_269E07A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E07A80(uint64_t a1)
{
  sub_269E07A08(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269E08498(319, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269E07B84(uint64_t a1)
{
  sub_269E07A08(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269E08498(319, &qword_281572020, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_269E07C6C()
{
  result = qword_2815721C0;
  if (!qword_2815721C0)
  {
    sub_269E09094(255, &qword_2815721B8, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView, type metadata accessor for SleepStageSummaryValueView.NoDataStringView, MEMORY[0x277CE0338]);
    sub_269E08D9C(qword_2815734D8, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView, &unk_269E53A58);
    sub_269E08D9C(qword_281573578, type metadata accessor for SleepStageSummaryValueView.NoDataStringView, &unk_269E53A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721C0);
  }

  return result;
}

void sub_269E07E0C(uint64_t a1)
{
  if (!qword_281572500)
  {
    sub_269E08498(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572500);
    }
  }
}

unint64_t sub_269E07E90()
{
  result = qword_281572508;
  if (!qword_281572508)
  {
    sub_269E07E0C(255);
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572508);
  }

  return result;
}

unint64_t sub_269E07F10()
{
  result = qword_2815720C8;
  if (!qword_2815720C8)
  {
    sub_269E08498(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815720C8);
  }

  return result;
}

unint64_t sub_269E07F8C()
{
  result = qword_281573CA8;
  if (!qword_281573CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281573CA8);
  }

  return result;
}

void sub_269E07FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_269E50AAC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_269E08040()
{
  result = qword_281573CA0;
  if (!qword_281573CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281573CA0);
  }

  return result;
}

uint64_t sub_269E08104(uint64_t a1)
{
  sub_269E07A08(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269E08190(uint64_t a1)
{
  if (!qword_281572580)
  {
    sub_269E081FC(255);
    sub_269E08564();
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_281572580);
    }
  }
}

void sub_269E081FC(uint64_t a1)
{
  if (!qword_281571F20)
  {
    sub_269E08498(255, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269E09094(255, &qword_2815722F0, sub_269E082F8, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_269E084E8();
    v1 = sub_269E5198C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571F20);
    }
  }
}

void sub_269E082F8(uint64_t a1)
{
  if (!qword_281572330)
  {
    sub_269E089D4(255, &qword_2815723B0, sub_269E083BC, MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_269E08498(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572330);
    }
  }
}

void sub_269E083BC(uint64_t a1)
{
  if (!qword_2815724F0)
  {
    sub_269E0841C(255);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2815724F0);
    }
  }
}

void sub_269E0841C(uint64_t a1)
{
  if (!qword_281572080)
  {
    sub_269E08498(255, &qword_281571D28, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    v1 = sub_269E5147C();
    if (!v2)
    {
      atomic_store(v1, &qword_281572080);
    }
  }
}

void sub_269E08498(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269E084E8()
{
  result = qword_281571D60;
  if (!qword_281571D60)
  {
    sub_269E08498(255, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D60);
  }

  return result;
}

unint64_t sub_269E08564()
{
  result = qword_2815722C8;
  if (!qword_2815722C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815722C8);
  }

  return result;
}

uint64_t sub_269E085B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E0861C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_269E07198(a1, v6, a2);
}

uint64_t sub_269E0869C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_269E09094(255, a2, a3, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    a4();
    sub_269E08D9C(&qword_281572078, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269E08774()
{
  result = qword_281572338;
  if (!qword_281572338)
  {
    sub_269E082F8(255);
    sub_269E087F4();
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572338);
  }

  return result;
}

unint64_t sub_269E087F4()
{
  result = qword_2815723B8;
  if (!qword_2815723B8)
  {
    sub_269E089D4(255, &qword_2815723B0, sub_269E083BC, MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_269E088AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815723B8);
  }

  return result;
}

unint64_t sub_269E088AC()
{
  result = qword_2815724F8;
  if (!qword_2815724F8)
  {
    sub_269E083BC(255);
    sub_269E08D9C(&qword_281572088, sub_269E0841C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815724F8);
  }

  return result;
}

void sub_269E089D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_269E08A58()
{
  if (!qword_281572550)
  {
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572550);
    }
  }
}

uint64_t sub_269E08ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269E08B20(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269E08BA4()
{
  result = qword_281572538;
  if (!qword_281572538)
  {
    sub_269E08998(255);
    sub_269E08D9C(qword_281572810, type metadata accessor for HeaderView, &unk_269E542AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572538);
  }

  return result;
}

unint64_t sub_269E08C54()
{
  result = qword_281573438[0];
  if (!qword_281573438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281573438);
  }

  return result;
}

uint64_t sub_269E08CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_269E08D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_269E08D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269E08D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E08DE4(uint64_t a1)
{
  if (!qword_2815725B0)
  {
    sub_269E081FC(255);
    sub_269E08E48();
    v1 = sub_269E5105C();
    if (!v2)
    {
      atomic_store(v1, &qword_2815725B0);
    }
  }
}

unint64_t sub_269E08E48()
{
  result = qword_281571F28;
  if (!qword_281571F28)
  {
    sub_269E081FC(255);
    sub_269E0869C(&qword_2815722F8, &qword_2815722F0, sub_269E082F8, sub_269E08774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571F28);
  }

  return result;
}

unint64_t sub_269E08F84()
{
  result = qword_2815723C8;
  if (!qword_2815723C8)
  {
    sub_269E08F3C(255);
    sub_269E07E90();
    sub_269E08D9C(&qword_281572088, sub_269E0841C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815723C8);
  }

  return result;
}

uint64_t sub_269E09034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269E09094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

__n128 SleepStageWidgetView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  sub_269E0A508(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v5 = type metadata accessor for SleepStageWidgetView(0);
  v10 = *(a1 + 16);
  v11 = *a1;
  swift_storeEnumTagMultiPayload();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[6];
  *v7 = swift_getKeyPath();
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v7[32] = 0;
  v8 = a2 + v5[7];
  result = v11;
  *v8 = v11;
  *(v8 + 1) = v10;
  v8[32] = v4;
  return result;
}

uint64_t sub_269E09264(uint64_t a1)
{
  v2 = sub_269E51B0C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_269E0ABD8();
  sub_269E512EC();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_269E093A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0A508(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_269E00F68(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E51B0C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_269E095B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0A508(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SleepStageWidgetView(0);
  sub_269E00F68(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E51B0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id SleepStageWidgetView.viewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepStageWidgetView(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_269DF6E4C(v4, v5, v6, v7);
}

__n128 SleepStageWidgetView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_269E09A4C(v1, v25);
  v23 = v25[1];
  v21 = v25[0];
  v22 = v26;
  v10 = v27;
  v24 = sub_269E5180C();
  KeyPath = swift_getKeyPath();
  v28 = v10;
  v11 = swift_getKeyPath();
  v12 = _s13SleepWidgetUI0a5StageB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E095B4(v7);
  v13 = sub_269E02FE0(v7, v12);

  (*(v4 + 8))(v7, v3);
  if (v13)
  {
    sub_269E095B4(v9);
  }

  else
  {
    sub_269E093A8(v9);
  }

  sub_269E0A3D8(0);
  v15 = (a1 + *(v14 + 36));
  sub_269E0A508(0, &qword_2815720B0, MEMORY[0x277CE3BA0], MEMORY[0x277CE0860]);
  (*(v4 + 32))(v15 + *(v16 + 28), v9, v3);
  *v15 = v11;
  result = v23;
  *a1 = v21;
  *(a1 + 16) = result;
  *(a1 + 32) = v22;
  *(a1 + 34) = v10;
  *(a1 + 39) = BYTE4(v25[0]);
  *(a1 + 35) = v25[0];
  v18 = v24;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v18;
  return result;
}

uint64_t sub_269E09A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269E51B0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = _s13SleepWidgetUI0a5StageB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E095B4(v8);
  v12 = sub_269E02FE0(v8, v11);

  v13 = *(v5 + 8);
  v13(v8, v4);
  if (v12)
  {
    sub_269E095B4(v10);
  }

  else
  {
    sub_269E093A8(v10);
  }

  v14 = (*(v5 + 88))(v10, v4);
  if (v14 == *MEMORY[0x277CE3B68])
  {
    v15 = a1 + *(type metadata accessor for SleepStageWidgetView(0) + 28);
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    LOBYTE(v15) = *(v15 + 32);
    *&v42 = v16;
    *(&v42 + 1) = v17;
    *&v43 = v18;
    *(&v43 + 1) = v19;
    v44 = v15;
    sub_269DF6E4C(v16, v17, v18, v19);
    sub_269DF6E4C(v16, v17, v18, v19);
    sub_269E0AAA4();
    v20 = MEMORY[0x277CE1428];
    sub_269E513BC();
    if (v41)
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    v34 = v38;
    v35 = v39;
    v36 = v21 | v40;
    v37 = 1;
    sub_269E0A604(0, &qword_2815721A8, &type metadata for SleepStageWidgetCircularView, &type metadata for SleepStageWidgetRectangularView);
    sub_269E0A604(0, &qword_281572198, &type metadata for SleepStageWidgetSmallView, v20);
    sub_269E0A974();
    sub_269E0AA0C();
LABEL_19:
    sub_269E513BC();
    sub_269DF6EA0(v16, v17, v18, v19);

    v26 = v42;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    goto LABEL_20;
  }

  if (v14 == *MEMORY[0x277CE3B90])
  {
    v22 = a1 + *(type metadata accessor for SleepStageWidgetView(0) + 28);
    v16 = *v22;
    v17 = *(v22 + 8);
    v18 = *(v22 + 16);
    v19 = *(v22 + 24);
    LOBYTE(v22) = *(v22 + 32);
    *&v42 = v16;
    *(&v42 + 1) = v17;
    *&v43 = v18;
    *(&v43 + 1) = v19;
    v44 = v22;
LABEL_15:
    sub_269DF6E4C(v16, v17, v18, v19);
    sub_269DF6E4C(v16, v17, v18, v19);
    sub_269DF1674();
    sub_269DEF5A8();
    sub_269E513BC();
    if (v41)
    {
      v24 = 256;
    }

    else
    {
      v24 = 0;
    }

    v34 = v38;
    v35 = v39;
    v36 = v24 | v40;
    v37 = 0;
    sub_269E0A604(0, &qword_2815721A8, &type metadata for SleepStageWidgetCircularView, &type metadata for SleepStageWidgetRectangularView);
    sub_269E0A604(0, &qword_281572198, &type metadata for SleepStageWidgetSmallView, MEMORY[0x277CE1428]);
    sub_269E0A974();
    sub_269E0AA0C();
    goto LABEL_19;
  }

  if (v14 == *MEMORY[0x277CE3B98])
  {
    v23 = a1 + *(type metadata accessor for SleepStageWidgetView(0) + 28);
    v16 = *v23;
    v17 = *(v23 + 8);
    v18 = *(v23 + 16);
    v19 = *(v23 + 24);
    LOBYTE(v23) = *(v23 + 32);
    *&v42 = v16;
    *(&v42 + 1) = v17;
    *&v43 = v18;
    *(&v43 + 1) = v19;
    LOBYTE(v44) = v23;
    HIBYTE(v44) = 1;
    goto LABEL_15;
  }

  v42 = 0u;
  v43 = 0u;
  v44 = 256;
  sub_269E0AAA4();
  v30 = MEMORY[0x277CE1428];
  sub_269E513BC();
  if (v41)
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  v34 = v38;
  v35 = v39;
  v36 = v31 | v40;
  v37 = 1;
  sub_269E0A604(0, &qword_2815721A8, &type metadata for SleepStageWidgetCircularView, &type metadata for SleepStageWidgetRectangularView);
  sub_269E0A604(0, &qword_281572198, &type metadata for SleepStageWidgetSmallView, v30);
  sub_269E0A974();
  sub_269E0AA0C();
  sub_269E513BC();
  v32 = v43;
  v33 = v42;
  v28 = v44;
  v29 = v45;
  v13(v10, v4);

  v27 = v32;
  v26 = v33;
LABEL_20:
  *a2 = v26;
  *(a2 + 16) = v27;
  *(a2 + 32) = v28;
  *(a2 + 34) = v29;
  return result;
}

uint64_t type metadata accessor for SleepStageWidgetView(uint64_t a1)
{
  result = qword_2815730F8;
  if (!qword_2815730F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E0A060(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x26D652F10]();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t _s13SleepWidgetUI0a5StageB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0()
{
  v0 = sub_269E5101C();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0A508(0, &qword_281571BD0, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269E528E0;
  v8 = *(v4 + 104);
  v8(v7 + v6, *MEMORY[0x277CE3B90], v3);
  v8(v7 + v6 + v5, *MEMORY[0x277CE3B98], v3);
  v22 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269E528D0;
  v8(v9 + v6, *MEMORY[0x277CE3B68], v3);
  sub_269E25A54(v9);
  sub_269E50FFC();
  v10 = v22;

  v11 = sub_269E5100C();
  v12 = sub_269E51E9C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_269E47920(0xD000000000000014, 0x8000000269E53DE0, &v21);
    *(v13 + 12) = 2082;
    v15 = MEMORY[0x26D653A40](v10, v3);
    v17 = sub_269E47920(v15, v16, &v21);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_269DE5000, v11, v12, "[%{public}s] supportedFamilies: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v14, -1, -1);
    MEMORY[0x26D654490](v13, -1, -1);
  }

  (*(v19 + 8))(v2, v20);
  return v10;
}

void sub_269E0A3D8(uint64_t a1)
{
  if (!qword_281572390)
  {
    sub_269E0A470(255);
    sub_269E0A508(255, &qword_2815720B0, MEMORY[0x277CE3BA0], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572390);
    }
  }
}

void sub_269E0A470(uint64_t a1)
{
  if (!qword_281572498)
  {
    sub_269E0A508(255, &qword_281572010, sub_269E0A56C, MEMORY[0x277CE0FA8]);
    sub_269DFB55C(255);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572498);
    }
  }
}

void sub_269E0A508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E0A56C(uint64_t a1)
{
  if (!qword_281572130)
  {
    sub_269E0A604(255, &qword_2815721A8, &type metadata for SleepStageWidgetCircularView, &type metadata for SleepStageWidgetRectangularView);
    sub_269E0A604(255, &qword_281572198, &type metadata for SleepStageWidgetSmallView, MEMORY[0x277CE1428]);
    v1 = sub_269E513CC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572130);
    }
  }
}

void sub_269E0A604(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_269E513CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269E0A698(uint64_t a1)
{
  sub_269E0A508(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_269E03908(319, &qword_2815725D8, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E0A7C0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269E0A84C()
{
  result = qword_281572018;
  if (!qword_281572018)
  {
    sub_269E0A508(255, &qword_281572010, sub_269E0A56C, MEMORY[0x277CE0FA8]);
    sub_269E0A8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572018);
  }

  return result;
}

unint64_t sub_269E0A8F4()
{
  result = qword_281572138;
  if (!qword_281572138)
  {
    sub_269E0A56C(255);
    sub_269E0A974();
    sub_269E0AA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572138);
  }

  return result;
}

unint64_t sub_269E0A974()
{
  result = qword_2815721B0;
  if (!qword_2815721B0)
  {
    sub_269E0A604(255, &qword_2815721A8, &type metadata for SleepStageWidgetCircularView, &type metadata for SleepStageWidgetRectangularView);
    sub_269DF1674();
    sub_269DEF5A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721B0);
  }

  return result;
}

unint64_t sub_269E0AA0C()
{
  result = qword_2815721A0;
  if (!qword_2815721A0)
  {
    sub_269E0A604(255, &qword_281572198, &type metadata for SleepStageWidgetSmallView, MEMORY[0x277CE1428]);
    sub_269E0AAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721A0);
  }

  return result;
}

unint64_t sub_269E0AAA4()
{
  result = qword_281572FC8[0];
  if (!qword_281572FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281572FC8);
  }

  return result;
}

unint64_t sub_269E0AAF8()
{
  result = qword_2815720A0;
  if (!qword_2815720A0)
  {
    sub_269DFB55C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815720A0);
  }

  return result;
}

unint64_t sub_269E0AB50()
{
  result = qword_2815720B8;
  if (!qword_2815720B8)
  {
    sub_269E0A508(255, &qword_2815720B0, MEMORY[0x277CE3BA0], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815720B8);
  }

  return result;
}

unint64_t sub_269E0ABD8()
{
  result = qword_281572960;
  if (!qword_281572960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572960);
  }

  return result;
}

void sub_269E0AC2C(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_269E5204C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_269DF0E9C(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_269E5200C();
    }

    else
    {
      v3 = sub_269E51FFC();
      v4 = *(a1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v31;
        v9 = v32;
        v10 = v33;
        sub_269E0EEFC(v31, v32, v33, a1);
        v12 = v11;
        v13 = [v11 integerValue];

        v14 = v29;
        v34 = v29;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_269DF0E9C((v15 > 1), v16 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v13;
        v29 = v14;
        if (v28)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          if (sub_269E5201C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          sub_269E0F6B0(0);
          v6 = sub_269E51E5C();
          sub_269E5206C();
          v6(v30, 0);
          if (v5 == v27)
          {
LABEL_32:
            sub_269E0F724(v31, v32, v33);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v17 = 1 << *(a1 + 32);
          if (v8 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v8 >> 6;
          v19 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v9)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (a1 + 64 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_269E0F724(v8, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            sub_269E0F724(v8, v9, 0);
          }

LABEL_31:
          v26 = *(a1 + 36);
          v31 = v17;
          v32 = v26;
          v33 = 0;
          v2 = v27;
          if (v5 == v27)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void SleepDaySummaryResults.init(summaries:context:)(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (v5 != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v6 = sub_269E5204C();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_18:

    v8 = MEMORY[0x26D653D70](v7, a1);

    if (v5 != 2)
    {
LABEL_8:
      if (!v8)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_16;
      }

      v9 = v8;
      v8 = [v8 summaryFilteredToLastPeriod];
      if (!v8)
      {
LABEL_10:
        v10 = 0;
LABEL_16:
        *a3 = a1;
        *(a3 + 8) = v9;
        *(a3 + 16) = v5;
        *(a3 + 24) = v10;
        return;
      }

LABEL_15:
      v12 = objc_opt_self();
      sub_269E0F7AC(0, &qword_281571BA8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_269E53E20;
      *(v13 + 32) = v8;
      sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
      v14 = v8;
      v15 = sub_269E51D9C();

      v10 = [v12 sleepMetricsForDaySummaries_];

      goto LABEL_16;
    }

LABEL_14:
    v11 = v8;
    v9 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 8 * v7 + 32);
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void *sub_269E0B178@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_269E5101C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  i = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v63 = &v59 - v9;
  v10 = *v1;
  v11 = *(v1 + 8);
  LODWORD(v12) = *(v1 + 16);
  v13 = *(v1 + 24);
  v70[0] = *v1;
  v70[1] = v11;
  v71 = v12;
  v72 = v13;
  if (!SleepDaySummaryResults.hasAnyDataInLastWeek.getter(v8))
  {
    sub_269E50FFC();
    v18 = sub_269E5100C();
    v19 = sub_269E51ECC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v70[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_269E47920(0xD000000000000016, 0x8000000269E53FB0, v70);
      _os_log_impl(&dword_269DE5000, v18, v19, "[%{public}s] no data in last week, returning nil", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D654490](v21, -1, -1);
      MEMORY[0x26D654490](v20, -1, -1);
    }

    result = (*(v4 + 8))(i, v3);
    v14 = 0;
    goto LABEL_77;
  }

  v62 = v4;
  v14 = (v10 >> 62);
  if (!(v10 >> 62))
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = -v15;
    if (!__OFSUB__(0, v15))
    {
      goto LABEL_4;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_80:
  v15 = sub_269E5204C();
  v16 = -v15;
  if (__OFSUB__(0, v15))
  {
    goto LABEL_82;
  }

LABEL_4:
  if ((v16 + 6) >= 7)
  {
    i = v15 - 7;
    if (__OFSUB__(v15, 7))
    {
      goto LABEL_92;
    }

    if (v15 < i)
    {
      goto LABEL_93;
    }

    if (!v14)
    {
LABEL_7:
      v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }
  }

  else
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_91;
    }

    i = 0;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v17 = sub_269E5204C();
LABEL_15:
  if (v17 < i)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (i < 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v14)
  {
    v23 = sub_269E5204C();
  }

  else
  {
    v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 < v15)
  {
    goto LABEL_85;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v61 = v3;
  if ((v10 & 0xC000000000000001) == 0 || i == v15)
  {

    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_31:

    v10 = sub_269E5216C();
    i = v27;
    v15 = v28;
    if ((v28 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (i >= v15)
  {
    goto LABEL_94;
  }

  sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);

  v24 = i;
  do
  {
    v25 = v24 + 1;
    sub_269E520DC();
    v24 = v25;
  }

  while (v15 != v25);
  if (v14)
  {
    goto LABEL_31;
  }

LABEL_28:
  v10 &= 0xFFFFFFFFFFFFFF8uLL;
  v26 = v10 + 32;
  v15 = (2 * v15) | 1;
  if ((v15 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v14 = v26;
  sub_269E521DC();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v15 >> 1, i))
  {
    goto LABEL_95;
  }

  if (v31 != (v15 >> 1) - i)
  {
    goto LABEL_96;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (i)
  {
    goto LABEL_40;
  }

  for (i = MEMORY[0x277D84F90]; ; i = v29)
  {
    swift_unknownObjectRelease();
LABEL_40:
    if (i < 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_87:
      v32 = sub_269E5204C();
    }

    else
    {
      v32 = *(i + 16);
    }

    v3 = MEMORY[0x277D84F90];
    v67 = i;
    v68 = v32;
    if (v32)
    {
      break;
    }

    v14 = MEMORY[0x277D84F90];
    v15 = v63;
LABEL_65:
    sub_269E50FFC();
    i = sub_269E5100C();
    v49 = sub_269E51ECC();

    if (os_log_type_enabled(i, v49))
    {
      v10 = swift_slowAlloc();
      v50 = v15;
      v12 = swift_slowAlloc();
      v70[0] = v12;
      *v10 = 136446466;
      *(v10 + 4) = sub_269E47920(0xD000000000000016, 0x8000000269E53FB0, v70);
      *(v10 + 12) = 2082;
      *v69 = v68;
      v51 = sub_269E5219C();
      v15 = v52;
      v11 = sub_269E47920(v51, v52, v70);

      *(v10 + 14) = v11;
      _os_log_impl(&dword_269DE5000, i, v49, "[%{public}s] lastSummaries.count = %{public}s, prepending empty bars", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v12, -1, -1);
      MEMORY[0x26D654490](v10, -1, -1);

      v53 = v50;
      v32 = v68;
      (*(v62 + 8))(v53, v61);
    }

    else
    {

      (*(v62 + 8))(v15, v61);
    }

    if (__OFSUB__(7, v32))
    {
      __break(1u);
    }

    else if (((7 - v32) & 0x8000000000000000) == 0)
    {
      v54 = *(v14 + 2);
      v55 = v32 - 7;
      do
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v54 >= *(v14 + 3) >> 1)
        {
          v14 = sub_269E0DE9C(isUniquelyReferenced_nonNull_native, v54 + 1, 1, v14);
        }

        swift_arrayDestroy();
        v56 = *(v14 + 2);
        result = memmove(v14 + 80, v14 + 32, 48 * v56);
        v54 = v56 + 1;
        *(v14 + 2) = v54;
        *(v14 + 4) = v3;
        *(v14 + 5) = v3;
        *(v14 + 6) = v3;
        *(v14 + 7) = v3;
        *(v14 + 8) = v3;
        *(v14 + 9) = v3;
      }

      while (!__CFADD__(v55++, 1));
      goto LABEL_77;
    }

    __break(1u);
LABEL_90:
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
    swift_unknownObjectRelease();
    v26 = v14;
LABEL_32:
    sub_269E0E334(v10, v26, i, v15);
  }

  v70[0] = MEMORY[0x277D84F90];
  v15 = v70;
  sub_269DF0E7C(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
    goto LABEL_90;
  }

  v60 = a1;
  a1 = 0;
  v10 = 0;
  v14 = v70[0];
  v33 = i;
  v65 = v11;
  v66 = i & 0xC000000000000001;
  if (v12 == 2)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  v64 = v34;
  do
  {
    if (v66)
    {
      v35 = MEMORY[0x26D653D70](a1, v33);
      if (!v11)
      {
        goto LABEL_54;
      }

LABEL_51:
      sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
      v36 = v35;
      v37 = v11;
      v38 = sub_269E51F6C();

      if (v38)
      {
        LOBYTE(v11) = v64;
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      goto LABEL_54;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (a1 >= *(v33 + 16))
    {
      goto LABEL_79;
    }

    v35 = *(v33 + 8 * a1 + 32);
    if (v11)
    {
      goto LABEL_51;
    }

LABEL_54:
    v39 = sub_269E350F4(&unk_287AB32E0);
    v69[0] = v11;
    v40 = HKSleepDaySummary.segments(_:highlightBehavior:)(v39, v69);

    v41 = HKCategoryValueSleepAnalysisAsleepValues();
    sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
    sub_269E0F23C();
    v42 = sub_269E51E3C();

    sub_269E0AC2C(v42);
    v44 = v43;

    v45 = sub_269E0F2A4(v44);

    v69[0] = v11;
    i = HKSleepDaySummary.segments(_:highlightBehavior:)(v45, v69);

    v70[0] = v14;
    v47 = *(v14 + 2);
    v46 = *(v14 + 3);
    v12 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      sub_269DF0E7C((v46 > 1), v47 + 1, 1);
      v14 = v70[0];
    }

    ++a1;
    *(v14 + 2) = v12;
    v48 = &v14[48 * v47];
    *(v48 + 4) = v40;
    *(v48 + 5) = i;
    *(v48 + 6) = v3;
    *(v48 + 7) = v3;
    *(v48 + 8) = v3;
    *(v48 + 9) = v3;
    v33 = v67;
    v32 = v68;
    v11 = v65;
  }

  while (v68 != a1);
  v15 = v63;
  if (v68 < 7)
  {
    a1 = v60;
    goto LABEL_65;
  }

  a1 = v60;
LABEL_77:
  *a1 = v14;
  return result;
}

void *SleepDaySummaryResults.lastSummary.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *SleepDaySummaryResults.lastSummaryMetricsForContext.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

unint64_t SleepDaySummaryResults.lastSleepScoreSummary(algorithmVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a1;
  v69 = a2;
  v4 = sub_269E50CDC();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0E444(0, &qword_281571CF0, sub_269E0C1C0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = v57 - v7;
  sub_269E0C1C0(0);
  v9 = v8;
  v77 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = (v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v61 = v57 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v57 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v57 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v58 = v57 - v21;
  MEMORY[0x28223BE20](v20);
  v59 = v57 - v22;
  sub_269E0C244(0);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v75 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v57 - v28;
  v78 = *v3;
  v76 = v78;

  v74 = sub_269E50CEC();
  sub_269E0C2F8(0, &qword_281571C00, MEMORY[0x277D83F98]);
  v30 = MEMORY[0x277D83940];
  sub_269E0C2F8(0, &qword_281573CD0, MEMORY[0x277D83940]);
  v31 = v19;
  sub_269E0C368(&qword_281571D50, &qword_281573CD0, v30, MEMORY[0x277D83958]);
  v32 = v70;
  sub_269E50D1C();
  v66 = v29;
  v67 = v25;
  (*(v25 + 16))(v75, v29, v24);
  sub_269E0F5D4(&qword_281573C50, sub_269E0C244, MEMORY[0x277D62608]);
  v68 = v24;
  sub_269E51D7C();
  sub_269E5218C();
  v33 = *(v77 + 48);
  v77 += 48;
  v75 = v33;
  if ((v33)(v32, 1, v9) == 1)
  {
LABEL_2:
    (*(v67 + 8))(v66, v68);

    v34 = 1;
    v35 = v69;
LABEL_3:
    v36 = sub_269E50CCC();
    return (*(*(v36 - 8) + 56))(v35, v34, 1, v36);
  }

  v38 = v76 & 0xFFFFFFFFFFFFFF8;
  if (v76 < 0)
  {
    v39 = v76;
  }

  else
  {
    v39 = v76 & 0xFFFFFFFFFFFFFF8;
  }

  v57[1] = v39;
  v71 = v76 + 32;
  v72 = v76 & 0xC000000000000001;
  v73 = v31;
  v74 = v9;
  while (1)
  {
    sub_269E0C3AC(v32, v31);
    sub_269E0C410(v31, v16);
    v41 = *v16;
    v42 = [*v16 morningIndex];

    if (v76 >> 62)
    {
      v43 = sub_269E5204C();
    }

    else
    {
      v43 = *(v38 + 16);
    }

    v44 = v32;
    v45 = *(v9 + 48);
    if (!v43)
    {
      v40 = sub_269E50CFC();
      (*(*(v40 - 8) + 8))(v16 + v45, v40);
      goto LABEL_9;
    }

    v46 = __OFSUB__(v43, 1);
    result = v43 - 1;
    if (v46)
    {
      break;
    }

    if (v72)
    {
      v47 = MEMORY[0x26D653D70](result, v76);
    }

    else
    {
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (result >= *(v38 + 16))
      {
        goto LABEL_24;
      }

      v47 = *(v71 + 8 * result);
    }

    v48 = v47;
    v49 = [v47 morningIndex];

    v50 = sub_269E50CFC();
    v51 = *(*(v50 - 8) + 8);
    v51(v16 + v45, v50);
    if (v42 == v49)
    {

      v52 = v58;
      sub_269E0C3AC(v73, v58);
      v53 = v59;
      sub_269E0C3AC(v52, v59);
      v54 = v61;
      sub_269E0C410(v53, v61);
      v55 = *(v74 + 48);
      v56 = v60;
      sub_269E0C410(v53, v60);

      (*(v63 + 16))(v62, v65, v64);
      v35 = v69;
      sub_269E50CBC();
      sub_269E0C474(v53);
      (*(v67 + 8))(v66, v68);
      v51((v54 + v55), v50);
      v34 = 0;
      goto LABEL_3;
    }

LABEL_9:
    v31 = v73;
    sub_269E0C474(v73);
    v32 = v44;
    sub_269E5218C();
    v9 = v74;
    if ((v75)(v44, 1, v74) == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_269E0C1C0(uint64_t a1)
{
  if (!qword_281571CF8)
  {
    sub_269DF6A7C(255, &qword_281573CC0, 0x277CCD9B0);
    sub_269E50CFC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281571CF8);
    }
  }
}

void sub_269E0C244(uint64_t a1)
{
  if (!qword_281573C48)
  {
    v1 = MEMORY[0x277D83F98];
    sub_269E0C2F8(255, &qword_281571C00, MEMORY[0x277D83F98]);
    sub_269E0C368(&qword_281571C08, &qword_281571C00, v1, MEMORY[0x277D83FB0]);
    v2 = sub_269E50D0C();
    if (!v3)
    {
      atomic_store(v2, &qword_281573C48);
    }
  }
}

void sub_269E0C2F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269DF6A7C(255, &qword_281573CC0, 0x277CCD9B0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269E0C368(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269E0C2F8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269E0C3AC(uint64_t a1, uint64_t a2)
{
  sub_269E0C1C0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E0C410(uint64_t a1, uint64_t a2)
{
  sub_269E0C1C0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E0C474(uint64_t a1)
{
  sub_269E0C1C0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E0C4E8(SEL *a1)
{
  if (*(v1 + 8) && ([*(v1 + 8) *a1], v2 > COERCE_DOUBLE(1)))
  {
    return *&v2;
  }

  else
  {
    return 0;
  }
}

id sub_269E0C550(SEL *a1)
{
  if (!*(v1 + 24))
  {
    return 0;
  }

  result = [*(v1 + 24) *a1];
  if (!result)
  {
    return result;
  }

  v3 = result;
  [result _value];
  v5 = v4;

  if (v5 > COERCE_DOUBLE(1))
  {
    return *&v5;
  }

  else
  {
    return 0;
  }
}

BOOL SleepDaySummaryResults.hasAnyDataOnLastDay.getter()
{
  v1 = *(v0 + 8);
  result = 0;
  if (v1)
  {
    [*(v0 + 8) sleepDuration];
    if (v2 > COERCE_DOUBLE(1) && v2 > 0.0)
    {
      return 1;
    }

    [v1 inBedDuration];
    if (v3 > COERCE_DOUBLE(1) && v3 > 0.0)
    {
      return 1;
    }
  }

  return result;
}

BOOL SleepDaySummaryResults.hasAnyDataInLastWeek.getter(uint64_t a1)
{
  v3 = *v2;
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_56;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_58;
  }

LABEL_3:
  if ((v6 + 6) >= 7)
  {
    v1 = v5 - 7;
    if (!__OFSUB__(v5, 7))
    {
      if (v5 >= v1)
      {
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v1 = 0;
  if (!v4)
  {
LABEL_6:
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_10:
  v7 = sub_269E5204C();
LABEL_11:
  if (v7 >= v1)
  {
    if (v1 < 0)
    {
      goto LABEL_60;
    }

    if (v4)
    {
      v8 = sub_269E5204C();
    }

    else
    {
      v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8 < v5)
    {
      goto LABEL_61;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    if ((v3 & 0xC000000000000001) == 0 || v1 == v5)
    {

      if (!v4)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (v1 < v5)
    {
      sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);

      v9 = v1;
      do
      {
        v10 = v9 + 1;
        sub_269E520DC();
        v9 = v10;
      }

      while (v5 != v10);
      if (!v4)
      {
LABEL_24:
        v3 &= 0xFFFFFFFFFFFFFF8uLL;
        v11 = v3 + 32;
        v5 = (2 * v5) | 1;
        if (v5)
        {
LABEL_29:
          v4 = v11;
          sub_269E521DC();
          swift_unknownObjectRetain_n();
          v15 = swift_dynamicCastClass();
          if (!v15)
          {
            swift_unknownObjectRelease();
            v15 = MEMORY[0x277D84F90];
          }

          v16 = *(v15 + 16);

          if (!__OFSUB__(v5 >> 1, v1))
          {
            if (v16 == (v5 >> 1) - v1)
            {
              v1 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v1)
              {
                goto LABEL_36;
              }

              v1 = MEMORY[0x277D84F90];
LABEL_35:
              swift_unknownObjectRelease();
LABEL_36:
              if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v3 = *(v1 + 16);
              if (v3)
              {
                goto LABEL_39;
              }

              goto LABEL_64;
            }

            goto LABEL_71;
          }

LABEL_70:
          __break(1u);
LABEL_71:
          swift_unknownObjectRelease();
          v11 = v4;
        }

LABEL_28:
        sub_269E0E334(v3, v11, v1, v5);
        v1 = v14;
        goto LABEL_35;
      }

LABEL_27:

      v3 = sub_269E5216C();
      v1 = v12;
      v5 = v13;
      if (v13)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v3 = sub_269E5204C();
    if (!v3)
    {
      break;
    }

LABEL_39:
    v17 = 0;
    v4 = 0x277CCD9D8uLL;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D653D70](v17, v1);
      }

      else
      {
        if (v17 >= *(v1 + 16))
        {
          goto LABEL_55;
        }

        v18 = *(v1 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = [v18 periods];
      sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
      v22 = sub_269E51DAC();

      if (v22 >> 62)
      {
        v23 = sub_269E5204C();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = v23 > 0;
      ++v17;
      if (v23 > 0 || v20 == v3)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v5 = sub_269E5204C();
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_3;
    }

LABEL_58:
    __break(1u);
  }

LABEL_64:
  v24 = 0;
LABEL_65:

  return v24;
}

unint64_t SleepDaySummaryResults.sleepSampleEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E509EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0E444(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = *(v1 + 8);
  if (!v10)
  {
    v20 = sub_269E50B9C();
    v21 = *(*(v20 - 8) + 56);

    return v21(a1, 1, 1, v20);
  }

  v11 = [v10 periods];
  sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
  v12 = sub_269E51DAC();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:

    v22 = sub_269E50B9C();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    return sub_269E0E4A8(v9, a1);
  }

  v13 = sub_269E5204C();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = __OFSUB__(v13, 1);
  result = v13 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v16 = MEMORY[0x26D653D70](result, v12);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v12 + 8 * result + 32);
LABEL_9:
    v17 = v16;

    v18 = [v17 dateInterval];

    sub_269E5099C();
    sub_269E509AC();
    (*(v4 + 8))(v6, v3);
    v19 = sub_269E50B9C();
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
    return sub_269E0E4A8(v9, a1);
  }

  __break(1u);
  return result;
}

void PresentationContext.highlightBehavior.getter(char *a1@<X8>)
{
  if (*v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a1 = v2;
}

void SleepDaySummaryResults.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_269E0EE0C(a1, *v1);
  sub_269E5222C();
  if (v2)
  {
    v5 = v2;
    sub_269E51F7C();
  }

  MEMORY[0x26D653EA0](v3);
  if (v4)
  {
    sub_269E5222C();
    v6 = v4;
    sub_269E51F7C();
  }

  else
  {
    sub_269E5222C();
  }
}

uint64_t SleepDaySummaryResults.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_269E5220C();
  sub_269E0EE0C(v8, v1);
  sub_269E5222C();
  if (v2)
  {
    v5 = v2;
    sub_269E51F7C();
  }

  MEMORY[0x26D653EA0](v3);
  sub_269E5222C();
  if (v4)
  {
    v6 = v4;
    sub_269E51F7C();
  }

  return sub_269E5223C();
}

uint64_t sub_269E0CEC8()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_269E5220C();
  SleepDaySummaryResults.hash(into:)(v5);
  return sub_269E5223C();
}

uint64_t sub_269E0CF28(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 16);
  v4 = v1[3];
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_269E5220C();
  SleepDaySummaryResults.hash(into:)(v6);
  return sub_269E5223C();
}

uint64_t sub_269E0CFC8()
{
  v1 = *v0;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v1);
  return sub_269E5223C();
}

uint64_t sub_269E0D010(uint64_t a1)
{
  v2 = *v1;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v2);
  return sub_269E5223C();
}

char *HKSleepDaySummary.segments(_:highlightBehavior:)(uint64_t a1, unsigned __int8 *a2)
{
  LODWORD(v3) = *a2;
  v4 = [v2 periods];
  sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
  v5 = sub_269E51DAC();

  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_44:
    v7 = sub_269E5204C();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v28 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D653D70](v8, v5);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_38;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v12 = sub_269E0D3E4(v8, v9, a1, v2, v3);

    ++v8;
    if (v12)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v28;
      }

      else
      {
        v13 = sub_269E0DD48(0, v28[2] + 1, 1, v28);
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        v13 = sub_269E0DD48((v14 > 1), v15 + 1, 1, v13);
      }

      v13[2] = v15 + 1;
      v28 = v13;
      v13[v15 + 4] = v12;
      v8 = v11;
    }
  }

  v16 = v28;
  v17 = v28[2];
  if (v17)
  {
    v18 = 0;
    v2 = MEMORY[0x277D84F90];
    v3 = &qword_28035E8B0;
    while (1)
    {
      if (v18 >= v16[2])
      {
        goto LABEL_39;
      }

      v5 = v28[v18 + 4];
      v19 = *(v5 + 16);
      v6 = *(v2 + 2);
      v20 = v6 + v19;
      if (__OFADD__(v6, v19))
      {
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v20 <= *(v2 + 3) >> 1)
      {
        if (!*(v5 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 <= v20)
        {
          v22 = v6 + v19;
        }

        else
        {
          v22 = v6;
        }

        v2 = sub_269E0E0F8(isUniquelyReferenced_nonNull_native, v22, 1, v2, &qword_28035E8B0, &type metadata for Segment);
        if (!*(v5 + 16))
        {
LABEL_19:

          v16 = v28;
          if (v19)
          {
            goto LABEL_41;
          }

          goto LABEL_20;
        }
      }

      v23 = *(v2 + 2);
      if ((*(v2 + 3) >> 1) - v23 < v19)
      {
        goto LABEL_42;
      }

      memcpy(&v2[24 * v23 + 32], (v5 + 32), 24 * v19);

      v16 = v28;
      if (v19)
      {
        v24 = *(v2 + 2);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_43;
        }

        *(v2 + 2) = v26;
      }

LABEL_20:
      if (v17 == ++v18)
      {
        goto LABEL_36;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_36:

  return v2;
}

uint64_t static HKCategoryValueSleepAnalysis.hk_asleepValues.getter()
{
  v0 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
  sub_269E0F23C();
  v1 = sub_269E51E3C();

  sub_269E0AC2C(v1);
  v3 = v2;

  v4 = sub_269E0F2A4(v3);

  return v4;
}

char *sub_269E0D3E4(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  LODWORD(v5) = a5;
  v77 = a4;
  v61 = a1;
  v70 = sub_269E50B9C();
  v8 = *(v70 - 8);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v61 - v11;
  v76 = sub_269E509EC();
  v12 = *(v76 - 8);
  v13 = MEMORY[0x28223BE20](v76);
  v67 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v61 - v15;
  v16 = [a2 segments];
  sub_269DF6A7C(0, &qword_28035EB80, 0x277CCD9E0);
  v17 = sub_269E51DAC();

  v18 = v17;
  v79 = MEMORY[0x277D84F90];
  if (v17 >> 62)
  {
    goto LABEL_47;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v20 = MEMORY[0x277D84F90];
    if (!v19)
    {
      break;
    }

    v21 = v19;
    v72 = v8;
    v73 = v18;
    LODWORD(v71) = v5;
    v5 = v12;
    v22 = 0;
    v74 = v18 & 0xC000000000000001;
    v23 = v18 & 0xFFFFFFFFFFFFFF8;
    v24 = v18 + 32;
    v12 = (a3 + 56);
    v25 = v19;
    while (1)
    {
      if (v74)
      {
        v18 = MEMORY[0x26D653D70](v22, v73);
      }

      else
      {
        if (v22 >= *(v23 + 16))
        {
          goto LABEL_45;
        }

        v18 = *(v24 + 8 * v22);
      }

      v8 = v18;
      if (__OFADD__(v22++, 1))
      {
        break;
      }

      v27 = [v18 category];
      if (*(a3 + 16) && (v28 = v27, sub_269E5220C(), MEMORY[0x26D653EA0](v28), v29 = sub_269E5223C(), v25 = v21, v30 = -1 << *(a3 + 32), v31 = v29 & ~v30, ((*&v12[(v31 >> 3) & 0xFFFFFFFFFFFFFF8] >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (*(*(a3 + 48) + 8 * v31) != v28)
        {
          v31 = (v31 + 1) & v32;
          if (((*&v12[(v31 >> 3) & 0xFFFFFFFFFFFFFF8] >> v31) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_269E5210C();
        sub_269E5213C();
        sub_269E5214C();
        v18 = sub_269E5211C();
        v25 = v21;
        if (v22 == v21)
        {
LABEL_19:
          v33 = v79;
          v12 = v5;
          LOBYTE(v5) = v71;
          v8 = v72;
          v20 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      else
      {
LABEL_5:

        if (v22 == v25)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v60 = v18;
    v19 = sub_269E5204C();
    v18 = v60;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_21:

  if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
  {
    v34 = sub_269E5204C();
    if (v34)
    {
      goto LABEL_24;
    }

LABEL_43:

    return v20;
  }

  v34 = *(v33 + 16);
  if (!v34)
  {
    goto LABEL_43;
  }

LABEL_24:
  v78[0] = v20;
  result = sub_269DF0EBC(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v33;
    v66 = v33 & 0xC000000000000001;
    v20 = v78[0];
    v38 = (v12 + 8);
    v65 = (v8 + 8);
    v64 = v5;
    v63 = v33;
    v62 = v34;
    v74 = (v12 + 8);
    v39 = v67;
    v40 = v70;
    while (1)
    {
      v71 = v20;
      v73 = v36;
      if (v66)
      {
        v41 = MEMORY[0x26D653D70](v36, v37);
      }

      else
      {
        v41 = *(v37 + 8 * v36 + 32);
      }

      v72 = v41;
      v42 = [v41 dateInterval];
      sub_269E5099C();

      v43 = v68;
      sub_269E509CC();
      v44 = [v77 &selRef_systemGray3Color];
      sub_269E5099C();

      v45 = v69;
      sub_269E509CC();
      v12 = *v38;
      v46 = v76;
      (v12)(v39, v76);
      sub_269E50B3C();
      v48 = v47;
      LODWORD(v5) = v65;
      v49 = *v65;
      (*v65)(v45, v40);
      v49(v43, v40);
      sub_269E509AC();
      v50 = [v77 dateInterval];
      sub_269E5099C();

      sub_269E509CC();
      v51 = v46;
      v38 = v74;
      (v12)(v39, v51);
      sub_269E50B3C();
      v53 = v52;
      v49(v45, v40);
      v49(v43, v40);
      if (v64 == 2)
      {
        v55 = [v77 periods];
        sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
        v8 = sub_269E51DAC();

        if (v8 >> 62)
        {
          v56 = sub_269E5204C();
        }

        else
        {
          v56 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a3 = v73;

        v18 = (v12)(v75, v76);
        if (__OFSUB__(v56, 1))
        {
          goto LABEL_46;
        }

        v54 = v56 - 1 == v61;
        v20 = v71;
      }

      else
      {
        if (v64 == 1)
        {
          (v12)(v75, v76);

          v54 = 1;
        }

        else
        {
          (v12)(v75, v76);

          v54 = 0;
        }

        v20 = v71;
        a3 = v73;
      }

      v78[0] = v20;
      v58 = *(v20 + 16);
      v57 = *(v20 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_269DF0EBC((v57 > 1), v58 + 1, 1);
        v20 = v78[0];
      }

      v36 = a3 + 1;
      *(v20 + 16) = v58 + 1;
      v59 = v20 + 24 * v58;
      *(v59 + 32) = v48;
      *(v59 + 40) = v53;
      *(v59 + 48) = v54;
      v37 = v63;
      if (v62 == v36)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_269E0DB4C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_269E0E444(0, &qword_281571BD0, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v10 = *(sub_269E51B0C() - 8);
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
  v15 = *(sub_269E51B0C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

  return v13;
}

void *sub_269E0DD48(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_269E0F730(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_269E0F7AC(0, &qword_28035EB78, &type metadata for Segment, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269E0DE9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_269E0F7AC(0, &qword_28035E8B8, &type metadata for SleepWidgetChartBar, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269E0DFD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_269E0F7AC(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269E0E0F8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_269E0F7AC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_269E0E218(char *result, int64_t a2, char a3, char *a4)
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
    sub_269E0F7AC(0, &qword_28035EB50, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_269E0E334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_269E0F7AC(0, &qword_281571BA8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_269E0E444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E0E4A8(uint64_t a1, uint64_t a2)
{
  sub_269E0E444(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269E0E53C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_269E0F7AC(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_269E0E62C(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_269E5220C();
  MEMORY[0x26D653EA0](a2);
  v6 = sub_269E5223C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_269E0E968(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_269E0E724(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_269E0F61C(0);
  result = sub_269E5208C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_269E5220C();
      MEMORY[0x26D653EA0](v17);
      result = sub_269E5223C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_269E0E968(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_269E0E724(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_269E0EAC4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_269E0EBF8(v5 + 1);
  }

  v8 = *v3;
  sub_269E5220C();
  MEMORY[0x26D653EA0](result);
  v9 = sub_269E5223C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for HKCategoryValueSleepAnalysis(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_269E521EC();
  __break(1u);
}

void *sub_269E0EAC4()
{
  v1 = v0;
  sub_269E0F61C(0);
  v2 = *v0;
  v3 = sub_269E5207C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_269E0EBF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_269E0F61C(0);
  result = sub_269E5208C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_269E5220C();
      MEMORY[0x26D653EA0](v16);
      result = sub_269E5223C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_269E0EE0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_269E5204C();
    MEMORY[0x26D653EA0](v8);
    v3 = sub_269E5204C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x26D653EA0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x26D653D70](i, a2);
      sub_269E51F7C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_269E51F7C();

      --v3;
    }

    while (v3);
  }
}

void sub_269E0EEFC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D653CE0](a1, a2, v7);
      sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
    if (sub_269E5202C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_269E5203C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_269E51F5C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_269E51F6C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t _s13SleepWidgetUI0A17DaySummaryResultsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_269E28DF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    result = 0;
    if (v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5)
  {
    return 0;
  }

  sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
  v8 = v5;
  v9 = v2;
  v10 = sub_269E51F6C();

  result = 0;
  if (v10)
  {
LABEL_7:
    if (v3 != v6)
    {
      return result;
    }

    if (v4)
    {
      if (v7)
      {
        sub_269DF6A7C(0, &qword_281573CC8, 0x277CCD9C8);
        v12 = v7;
        v13 = v4;
        v14 = sub_269E51F6C();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_269E0F23C()
{
  result = qword_28035EB30;
  if (!qword_28035EB30)
  {
    sub_269DF6A7C(255, &qword_28035EB28, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB30);
  }

  return result;
}

uint64_t sub_269E0F2A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKCategoryValueSleepAnalysis(0);
  v4 = v3;
  v5 = sub_269E0F5D4(&qword_28035EB58, type metadata accessor for HKCategoryValueSleepAnalysis, &unk_269E52D00);
  result = MEMORY[0x26D653AD0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_269E0E62C(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_269E0F354()
{
  result = qword_28035EB38;
  if (!qword_28035EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB38);
  }

  return result;
}

unint64_t sub_269E0F3AC()
{
  result = qword_28035EB40;
  if (!qword_28035EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB40);
  }

  return result;
}

unint64_t sub_269E0F404()
{
  result = qword_28035EB48;
  if (!qword_28035EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepStageWidgetViewModel.OverrideState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepStageWidgetViewModel.OverrideState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_269E0F5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E0F61C(uint64_t a1)
{
  if (!qword_28035EB60)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    sub_269E0F5D4(&qword_28035EB58, type metadata accessor for HKCategoryValueSleepAnalysis, &unk_269E52D00);
    v1 = sub_269E520AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EB60);
    }
  }
}

void sub_269E0F6B0(uint64_t a1)
{
  if (!qword_28035EB68)
  {
    sub_269DF6A7C(255, &qword_28035EB28, 0x277CCABB0);
    sub_269E0F23C();
    v1 = sub_269E51E6C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EB68);
    }
  }
}

uint64_t sub_269E0F724(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_269E0F730(uint64_t a1)
{
  if (!qword_28035EB70)
  {
    sub_269E0F7AC(255, &qword_28035EB78, &type metadata for Segment, MEMORY[0x277D83940]);
    v1 = sub_269E521AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EB70);
    }
  }
}

void sub_269E0F7AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269E0F828(uint64_t a1@<X8>)
{
  v3 = sub_269E51ADC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_269E14C44(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_269E5130C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_269E150A0(0, &qword_2815725A8, sub_269E14CD8, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_269E0FA34(v1, &v12[*(v13 + 44)]);
  sub_269E2E90C(v9);
  sub_269E51ABC();
  v14 = sub_269E51AAC();
  v15 = *(v4 + 8);
  v15(v7, v3);
  if (v14)
  {
    v16 = sub_269E5187C();
  }

  else
  {
    v16 = sub_269E5180C();
  }

  v17 = v16;
  v15(v9, v3);
  KeyPath = swift_getKeyPath();
  sub_269E163CC(v12, a1, sub_269E14C44);
  sub_269E14FEC(0);
  v20 = (a1 + *(v19 + 36));
  *v20 = KeyPath;
  v20[1] = v17;
}

uint64_t sub_269E0FA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v81 = a2;
  sub_269E14F38(0, &qword_2815724D0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
  v79 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v80 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v78 = &v64 - v5;
  sub_269E1506C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_269E5166C();
  v76 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269E50FBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E160B8(0, &qword_281572048, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CE3A58]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  sub_269E14D9C(0);
  v72 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v77 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  sub_269E51E1C();
  v75 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E50FAC();
  v24 = sub_269E50F8C();
  (*(v11 + 8))(v13, v10);
  v83 = v24;
  v25 = MEMORY[0x277CE1088];
  v26 = MEMORY[0x277CE1078];
  sub_269E5172C();

  v83 = v25;
  v84 = v26;
  swift_getOpaqueTypeConformance2();
  sub_269E5177C();
  (*(v16 + 8))(v18, v15);
  sub_269E14DBC(0);
  v28 = &v23[*(v27 + 36)];
  v69 = v23;
  sub_269E14E98(0);
  v30 = *(v29 + 28);
  v31 = *MEMORY[0x277CE1050];
  v32 = sub_269E518DC();
  (*(*(v32 - 8) + 104))(v28 + v30, v31, v32);
  *v28 = swift_getKeyPath();
  v71 = *MEMORY[0x277CE0A58];
  v33 = v76;
  v70 = *(v76 + 104);
  v34 = v74;
  v35 = v82;
  v70(v74);
  v67 = sub_269E5159C();
  v36 = *(v67 - 8);
  v66 = *(v36 + 56);
  v68 = v36 + 56;
  v66(v8, 1, 1, v67);
  sub_269E515EC();
  v65 = sub_269E1506C;
  sub_269E16A54(v8, sub_269E1506C);
  v76 = *(v33 + 8);
  (v76)(v34, v35);
  sub_269E5154C();

  sub_269E515CC();
  v37 = sub_269E515FC();

  KeyPath = swift_getKeyPath();
  v39 = &v23[*(v72 + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v40 = sub_269E51D2C();
  v42 = v41;
  v43 = (v73 + *(type metadata accessor for HeaderView(0) + 20));
  v44 = v8;
  v46 = *v43;
  v45 = v43[1];
  v83 = v40;
  v84 = v42;

  MEMORY[0x26D6539C0](v46, v45);

  sub_269DF0E28();
  v47 = sub_269E516CC();
  v49 = v48;
  v83 = v47;
  v84 = v48;
  LOBYTE(v35) = v50 & 1;
  v85 = v50 & 1;
  v86 = v51;
  v52 = v78;
  sub_269E5172C();
  sub_269E00F48(v47, v49, v35);

  v53 = v82;
  (v70)(v34, v71, v82);
  v66(v44, 1, 1, v67);
  sub_269E515EC();
  sub_269E16A54(v44, v65);
  (v76)(v34, v53);
  sub_269E5154C();

  sub_269E515CC();
  v54 = sub_269E515FC();

  v55 = swift_getKeyPath();
  v56 = (v52 + *(v79 + 36));
  *v56 = v55;
  v56[1] = v54;
  v57 = v69;
  v58 = v77;
  sub_269E16614(v69, v77, sub_269E14D9C);
  v59 = v80;
  sub_269DEA13C(v52, v80);
  v60 = v81;
  sub_269E16614(v58, v81, sub_269E14D9C);
  sub_269E14D0C(0);
  sub_269DEA13C(v59, v60 + *(v61 + 48));
  v62 = MEMORY[0x277CE0AE0];
  sub_269E16BB4(v52, &qword_2815724D0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
  sub_269E165B4(v57, sub_269E14D9C);
  sub_269E16BB4(v59, &qword_2815724D0, &qword_2815720A8, &qword_281572068, v62);
  sub_269E165B4(v58, sub_269E14D9C);
}

uint64_t sub_269E10288@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E166D0(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  sub_269E159B0(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269E510EC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_269E51EBC();
    v13 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269E1049C()
{
  sub_269DFE53C(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E15714(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269E5134C();
  v8 = *(v0 + *(type metadata accessor for ScheduleOccurrenceSectionView(0) + 24));
  *v6 = v7;
  *(v6 + 1) = 0;
  v6[16] = (v8 & 8) != 0;
  sub_269E150A0(0, &qword_28035EC78, sub_269E157A8, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_269E1073C(v0, &v6[*(v9 + 44)]);
  v10 = *MEMORY[0x277CDF998];
  v11 = sub_269E510EC();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  sub_269E16DA0(&qword_281572560, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269E16DA0(&qword_28035EC80, sub_269E15714, MEMORY[0x277CE1198]);
    sub_269E16DA0(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    sub_269E5179C();
    sub_269E16A54(v3, sub_269DFE53C);
    return sub_269E165B4(v6, sub_269E15714);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E1073C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v76 = a2;
  v71 = type metadata accessor for DateView(0);
  MEMORY[0x28223BE20](v71);
  v70 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E15874(0);
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v55 - v7;
  v8 = sub_269E510EC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = type metadata accessor for SleepWidgetViewModel(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v67 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  v65 = type metadata accessor for TimeView(0);
  v20 = MEMORY[0x28223BE20](v65);
  v69 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v64 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  v78 = &v55 - v24;
  sub_269E51E1C();
  v68 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  v27 = *(v25 + 20);
  v26 = *(v25 + 24);
  v28 = v27;
  v66 = *(a1 + v27);
  v77 = *(a1 + v26);
  v62 = type metadata accessor for SleepWidgetViewModel;
  v63 = v27;
  sub_269E169EC(a1, v19, type metadata accessor for SleepWidgetViewModel);
  v57 = *(a1 + v28);
  sub_269E10288(v14);
  v59 = *MEMORY[0x277CDF988];
  v29 = *(v9 + 104);
  v60 = v9 + 104;
  v61 = v29;
  v29(v12);
  v58 = sub_269E16DA0(&qword_281572568, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v30 = sub_269E51C8C();
  v31 = *(v9 + 8);
  v31(v12, v8);
  v31(v14, v8);
  v32 = v8;
  v33 = v77;
  v34 = a1;
  v56 = (v77 & 4) == 0;
  v35 = v14;
  v36 = v12;
  v37 = v30 & v56;
  v38 = v19;
  v39 = v64;
  sub_269E15948(v38, v64, type metadata accessor for SleepWidgetViewModel);
  v40 = v65;
  *(v39 + *(v65 + 20)) = v57;
  *(v39 + *(v40 + 24)) = v37;
  *(v39 + *(v40 + 28)) = v33;
  sub_269E15948(v39, v78, type metadata accessor for TimeView);
  v41 = v67;
  sub_269E169EC(v34, v67, v62);
  LOBYTE(v39) = *(v34 + v63);
  sub_269E10288(v35);
  v61(v36, v59, v32);
  LOBYTE(v34) = sub_269E51C8C();
  v31(v36, v32);
  v31(v35, v32);
  LOBYTE(v33) = v34 & v56;
  v42 = v70;
  sub_269E15948(v41, v70, type metadata accessor for SleepWidgetViewModel);
  v43 = v71;
  *(v42 + *(v71 + 20)) = v39;
  *(v42 + *(v43 + 24)) = v33;
  *(v42 + *(v43 + 28)) = v77;
  sub_269E16DA0(&qword_28035EC68, type metadata accessor for DateView, &unk_269E544DC);
  v44 = v72;
  sub_269E5171C();
  sub_269E16A54(v42, type metadata accessor for DateView);
  v45 = v69;
  sub_269E169EC(v78, v69, type metadata accessor for TimeView);
  v47 = v73;
  v46 = v74;
  v48 = *(v74 + 16);
  v49 = v75;
  v48(v73, v44, v75);
  v50 = v76;
  *v76 = v66;
  *(v50 + 1) = v77;
  sub_269E157DC(0);
  v52 = v51;
  sub_269E169EC(v45, &v50[*(v51 + 48)], type metadata accessor for TimeView);
  v48(&v50[*(v52 + 64)], v47, v49);
  v53 = *(v46 + 8);
  v53(v44, v49);
  sub_269E16A54(v78, type metadata accessor for TimeView);
  v53(v47, v49);
  sub_269E16A54(v45, type metadata accessor for TimeView);
}

void sub_269E10E84(uint64_t a1)
{
  sub_269E166D0(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_269E10F8C(uint64_t a1)
{
  type metadata accessor for SleepWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_269E166D0(319, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E166D0(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

void __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E166D0(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

void sub_269E1128C(uint64_t a1)
{
  sub_269E166D0(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_269E11334()
{
  result = qword_28035EBB0;
  if (!qword_28035EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EBB0);
  }

  return result;
}

unint64_t sub_269E1138C()
{
  result = qword_28035EBB8;
  if (!qword_28035EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EBB8);
  }

  return result;
}

unint64_t sub_269E113E4()
{
  result = qword_28035EBC0;
  if (!qword_28035EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EBC0);
  }

  return result;
}

unint64_t sub_269E1143C()
{
  result = qword_28035EBC8;
  if (!qword_28035EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EBC8);
  }

  return result;
}

uint64_t sub_269E114C8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  sub_269E160B8(0, &qword_281572050, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE3A58]);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v40 - v3;
  sub_269E14F38(0, &qword_28035ED98, &qword_281572080, &qword_281571D28, MEMORY[0x277D83B88]);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v5 = *v1;
  v6 = *(v1 + 1);
  v42 = v6 & 4;
  v48 = &v40 - v7;
  if ((v6 & 4) != 0)
  {
    if ((v6 & 8) == 0)
    {
      LOBYTE(v50) = v5;
      v8 = sub_269E3A588();
      v41 = 0;
      goto LABEL_7;
    }

    LOBYTE(v50) = v5;
    v8 = sub_269E3A4C0();
    v10 = 1;
  }

  else
  {
    LOBYTE(v50) = v5;
    v8 = sub_269E3A4C0();
    v10 = (v6 >> 3) & 1;
  }

  v41 = v10;
LABEL_7:
  v50 = v8;
  v51 = v9;
  sub_269DF0E28();
  v11 = sub_269E516CC();
  v13 = v12;
  v15 = v14;
  LOBYTE(v50) = v5;
  sub_269E1190C(&v50, v6);
  v16 = sub_269E5168C();
  v18 = v17;
  v20 = v19;
  v44 = v5;

  sub_269E00F48(v11, v13, v15 & 1);

  sub_269E1193C(v6);
  v21 = sub_269E516AC();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;

  sub_269E00F48(v16, v18, v20 & 1);
  v27 = v44;

  v50 = v21;
  v51 = v23;
  v52 = v11 & 1;
  v53 = v26;
  v28 = v43;
  sub_269E5172C();
  sub_269E00F48(v21, v23, v11 & 1);

  v29 = v42 >> 2;
  KeyPath = swift_getKeyPath();
  v31 = v48;
  (*(v45 + 32))(v48, v28, v46);
  v32 = v31 + *(v47 + 36);
  *v32 = KeyPath;
  *(v32 + 8) = v29;
  *(v32 + 16) = 0;
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v34 = qword_281575978;
  v33 = qword_281575980;
  v50 = 46;
  v51 = 0xE100000000000000;
  if (v27 == 3)
  {
    v35 = 0x656D6974646542;
  }

  else
  {
    v35 = 0x7055656B6157;
  }

  if (v27 == 3)
  {
    v36 = 0xE700000000000000;
  }

  else
  {
    v36 = 0xE600000000000000;
  }

  MEMORY[0x26D6539C0](v35, v36);

  MEMORY[0x26D6539C0](0x6554656C7469542ELL, 0xEA00000000007478);
  v37 = v50;
  v38 = v51;
  v50 = v34;
  v51 = v33;

  MEMORY[0x26D6539C0](v37, v38);

  sub_269E16AB4();
  sub_269E517EC();

  return sub_269E16BB4(v31, &qword_28035ED98, &qword_281572080, &qword_281571D28, MEMORY[0x277D83B88]);
}

uint64_t sub_269E1190C(_BYTE *a1, char a2)
{
  if ((a2 & 8) != 0)
  {
    if (*a1 != 2)
    {
      return MEMORY[0x2821333A0]();
    }

    return sub_269E5189C();
  }

  if ((a2 & 0x10) == 0)
  {
    if ((a2 & 2) == 0)
    {
      return sub_269E518AC();
    }

    return sub_269E5187C();
  }

  if ((a2 & 2) == 0)
  {
    return sub_269E5189C();
  }

  return sub_269E5187C();
}

uint64_t sub_269E1193C(uint64_t a1)
{
  v1 = a1;
  sub_269E1506C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269E5166C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1 & 8) != 0)
  {
    sub_269E5165C();
    sub_269E515CC();
    v16 = sub_269E515FC();

    return v16;
  }

  else if ((v1 & 4) != 0)
  {

    return sub_269E13BFC(v1);
  }

  else
  {
    v10 = v7;
    (*(v6 + 104))(v9, *MEMORY[0x277CE0AA0], v7);
    v11 = *MEMORY[0x277CE0990];
    v12 = sub_269E5159C();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v4, v11, v12);
    (*(v13 + 56))(v4, 0, 1, v12);
    sub_269E515CC();
    v14 = sub_269E515EC();
    sub_269E16A54(v4, sub_269E1506C);
    (*(v6 + 8))(v9, v10);
    return v14;
  }
}

uint64_t sub_269E11B94()
{
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v1 = qword_281575978;
  sub_269E520CC();

  v2 = type metadata accessor for TimeView(0);
  v3 = *(v0 + *(v2 + 20)) == 3;
  if (*(v0 + *(v2 + 20)) == 3)
  {
    v4 = 0x656D6974646542;
  }

  else
  {
    v4 = 0x7055656B6157;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x26D6539C0](v4, v5);

  MEMORY[0x26D6539C0](0x616E67697365442ELL, 0xEF74786554726F74);

  MEMORY[0x26D6539C0](46, 0xE100000000000000);

  return v1;
}

uint64_t sub_269E11CD8()
{
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v1 = qword_281575978;
  v2 = type metadata accessor for TimeView(0);
  v3 = *(v0 + *(v2 + 20)) == 3;
  if (*(v0 + *(v2 + 20)) == 3)
  {
    v4 = 0x656D6974646542;
  }

  else
  {
    v4 = 0x7055656B6157;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x26D6539C0](v4, v5);

  MEMORY[0x26D6539C0](0x786554656D69542ELL, 0xE900000000000074);

  MEMORY[0x26D6539C0](46, 0xE100000000000000);

  return v1;
}

uint64_t sub_269E11DF4@<X0>(uint64_t a1@<X8>)
{
  sub_269E16EAC(0, &qword_28035ED48, sub_269E1667C, sub_269E16798, MEMORY[0x277CE0330]);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = v43 - v4;
  sub_269E16800(0, &qword_28035ED70, MEMORY[0x277CE0330]);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = v43 - v6;
  sub_269E1669C(0);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269E50ACC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for TimeView.TimeText(0);
  MEMORY[0x28223BE20](v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E16798(0);
  v57 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v47 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v46 = v43 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v48 = v43 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v43 - v20;
  sub_269E1667C(0);
  v54 = v22;
  MEMORY[0x28223BE20](v22);
  v49 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_269E50F5C();
  v55 = *(v24 - 8);
  v56 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TimeView(0);
  v28 = v27[5];
  v61[0] = *(v1 + v28);
  sub_269E3AB78(v61);
  if (*(v1 + v27[6]) != 1 || (sub_269E50F2C(), !v29))
  {
    v60 = *(v1 + v28);
    v33 = *(v1 + v27[7]);
    SleepWidgetViewModel.scheduleOccurrenceTimeAttributedString(occurrence:isCondensed:)(&v60, (v33 & 4) != 0, v12);
    *&v12[*(v10 + 20)] = v33;
    sub_269E11CD8();
    sub_269E16DA0(&qword_28035ED78, type metadata accessor for TimeView.TimeText, &unk_269E54538);
    sub_269E517EC();

    sub_269E16A54(v12, type metadata accessor for TimeView.TimeText);
    sub_269E169EC(v21, v59, sub_269E16798);
    swift_storeEnumTagMultiPayload();
    sub_269E16864();
    sub_269E1690C();
    sub_269E513BC();
    v34 = sub_269E16798;
    v35 = v21;
LABEL_9:
    sub_269E16A54(v35, v34);
    return (*(v55 + 8))(v26, v56);
  }

  v45 = a1;

  result = sub_269E50F2C();
  if (v31)
  {
    v43[1] = result;
    if (sub_269E50F1C())
    {
      v32 = *(v1 + v27[7]);
      sub_269E50ABC();
      sub_269E50A6C();
      *&v12[*(v10 + 20)] = v32;
      sub_269E11B94();
      v44 = sub_269E16DA0(&qword_28035ED78, type metadata accessor for TimeView.TimeText, &unk_269E54538);
      sub_269E517EC();

      sub_269E16A54(v12, type metadata accessor for TimeView.TimeText);
      sub_269E50F4C();
      sub_269E50ABC();
      sub_269E50A6C();
      *&v12[*(v10 + 20)] = v32;
      sub_269E11CD8();
    }

    else
    {
      sub_269E50F4C();
      v36 = *(v1 + v27[7]);
      v43[0] = v36;
      sub_269E50ABC();
      sub_269E50A6C();
      *&v12[*(v10 + 20)] = v36;
      sub_269E11CD8();
      v44 = sub_269E16DA0(&qword_28035ED78, type metadata accessor for TimeView.TimeText, &unk_269E54538);
      sub_269E517EC();

      sub_269E16A54(v12, type metadata accessor for TimeView.TimeText);
      sub_269E50ABC();
      sub_269E50A6C();
      *&v12[*(v10 + 20)] = v43[0];
      sub_269E11B94();
    }

    v37 = v48;
    sub_269E517EC();

    sub_269E16A54(v12, type metadata accessor for TimeView.TimeText);
    v38 = v46;
    sub_269E169EC(v21, v46, sub_269E16798);
    v39 = v47;
    sub_269E169EC(v37, v47, sub_269E16798);
    v40 = v51;
    sub_269E169EC(v38, v51, sub_269E16798);
    sub_269E16734(0);
    sub_269E169EC(v39, v40 + *(v41 + 48), sub_269E16798);
    sub_269E16A54(v39, sub_269E16798);
    sub_269E16A54(v38, sub_269E16798);
    sub_269E169EC(v40, v53, sub_269E1669C);
    swift_storeEnumTagMultiPayload();
    sub_269E16DA0(&qword_28035ED88, sub_269E1669C, MEMORY[0x277CE14C0]);
    v42 = v49;
    sub_269E513BC();
    sub_269E16A54(v40, sub_269E1669C);
    sub_269E16A54(v37, sub_269E16798);
    sub_269E16A54(v21, sub_269E16798);
    sub_269E169EC(v42, v59, sub_269E1667C);
    swift_storeEnumTagMultiPayload();
    sub_269E16864();
    sub_269E1690C();
    sub_269E513BC();
    v34 = sub_269E1667C;
    v35 = v42;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_269E12748@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E50A5C();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v6 = sub_269E516BC();
  v8 = v7;
  v10 = v9;
  v25 = *(v1 + *(type metadata accessor for TimeView.TimeText(0) + 20));
  if ((v25 & 2) != 0)
  {
    sub_269E5187C();
  }

  else
  {
    sub_269E5189C();
  }

  v11 = sub_269E5168C();
  v13 = v12;
  v15 = v14;

  sub_269E00F48(v6, v8, v10 & 1);

  sub_269E12920(v25);
  v16 = sub_269E516AC();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_269E00F48(v11, v13, v15 & 1);

  result = swift_getKeyPath();
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_269E12920(char a1)
{
  v2 = sub_269E5166C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269E5161C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1506C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 8) != 0)
  {
    sub_269E5157C();
    sub_269E515BC();
    v17 = sub_269E515FC();

    return v17;
  }

  else
  {
    if ((a1 & 4) != 0)
    {
      sub_269E515CC();
      v19 = *MEMORY[0x277CE09A0];
      v20 = sub_269E5159C();
      v21 = *(v20 - 8);
      (*(v21 + 104))(v12, v19, v20);
      (*(v21 + 56))(v12, 0, 1, v20);
      sub_269E515DC();
      sub_269E16A54(v12, sub_269E1506C);
      (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
      v16 = sub_269E5163C();

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v3 + 104))(v5, *MEMORY[0x277CE0A68], v2);
      v13 = *MEMORY[0x277CE09A0];
      v14 = sub_269E5159C();
      v15 = *(v14 - 8);
      (*(v15 + 104))(v12, v13, v14);
      (*(v15 + 56))(v12, 0, 1, v14);
      sub_269E515EC();
      sub_269E16A54(v12, sub_269E1506C);
      (*(v3 + 8))(v5, v2);
      sub_269E5154C();

      v16 = sub_269E5158C();
    }

    return v16;
  }
}

void sub_269E12D18(uint64_t a2@<X8>)
{
  *a2 = sub_269E5130C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_269E150A0(0, &qword_28035ECC0, sub_269E15F3C, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_269E12E34(v2, a2 + *(v4 + 44));
  v5 = type metadata accessor for DateView(0);
  v6 = *(v2 + *(v5 + 28));
  v15 = *(v2 + *(v5 + 20));
  v7 = sub_269E13B78(&v15, v6);
  KeyPath = swift_getKeyPath();
  sub_269E16160(0);
  v10 = (a2 + *(v9 + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  v11 = sub_269E13BFC(v6);
  v12 = swift_getKeyPath();
  sub_269E16274(0, &qword_28035ED18, sub_269E16160);
  v14 = (a2 + *(v13 + 36));
  *v14 = v12;
  v14[1] = v11;
}

uint64_t sub_269E12E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  sub_269E16118(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v122 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v120 = &v97 - v6;
  sub_269E162F8(0, &qword_28035ED20, MEMORY[0x277CE0330]);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v97 - v9;
  v11 = sub_269E50FBC();
  v12 = *(v11 - 8);
  v116 = v11;
  v117 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v97 - v16;
  sub_269E160B8(0, &qword_28035ECF0, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277D62760]);
  v112 = *(v18 - 8);
  v113 = v18;
  MEMORY[0x28223BE20](v18);
  v111 = &v97 - v19;
  sub_269E1600C(0);
  v110 = v20;
  MEMORY[0x28223BE20](v20);
  v115 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E15FC4(0);
  v23 = v22;
  v24 = MEMORY[0x28223BE20](v22);
  v114 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v97 - v26;
  sub_269E15FA4(0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v119 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v97 - v31;
  sub_269E51E1C();
  v118 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = type metadata accessor for DateView(0);
  v34 = v33;
  if (*(a1 + *(v33 + 24)))
  {
    swift_storeEnumTagMultiPayload();
    sub_269E16434();
    sub_269E513BC();
LABEL_14:
    v41 = 0;
    v42 = 0xE000000000000000;
    goto LABEL_15;
  }

  v108 = v27;
  v109 = v8;
  v35 = *(v33 + 20);
  LOBYTE(v125) = *(a1 + v35);
  if (!SleepWidgetViewModel.scheduleOccurrenceRelativeDateString(occurrence:)(&v125) && v36 == 0xE000000000000000)
  {

LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_269E16434();
    sub_269E513BC();
    goto LABEL_11;
  }

  v37 = sub_269E521CC();

  if (v37)
  {
    goto LABEL_10;
  }

  v38 = *(a1 + v35);
  if (v38 == 3)
  {
    goto LABEL_10;
  }

  sub_269E16360(0);
  v105 = v70;
  v71 = *(v70 + 48);
  *v17 = v38 != 2;
  v72 = *MEMORY[0x277D62748];
  v73 = sub_269E50F9C();
  v74 = *(v73 - 8);
  v75 = *(v74 + 104);
  v104 = v72;
  v103 = v73;
  v102 = v75;
  v101 = v74 + 104;
  (v75)(&v17[v71], v72);
  v76 = v117;
  v77 = *(v117 + 13);
  v99 = *MEMORY[0x277D62740];
  v100 = v117 + 104;
  v98 = v77;
  v77(v17);
  v78 = sub_269E50F8C();
  v79 = v17;
  v80 = v116;
  v106 = *(v76 + 8);
  v117 = (v76 + 8);
  v106(v79, v116);
  v107 = v78;
  v125 = v78;
  v81 = *(a1 + v35);
  if (v81 == 3)
  {
    sub_269E50FAC();
  }

  else
  {
    v83 = *(v105 + 48);
    *v15 = v81 != 2;
    v102(&v15[v83], v104, v103);
    v98(v15, v99, v80);
  }

  v84 = v80;
  v85 = v111;
  sub_269E516DC();
  v106(v15, v84);

  LOBYTE(v125) = *(a1 + v35);
  v86 = sub_269E139E0(&v125);
  KeyPath = swift_getKeyPath();
  v88 = v115;
  (*(v112 + 32))(v115, v85, v113);
  v89 = (v88 + *(v110 + 36));
  *v89 = KeyPath;
  v89[1] = v86;
  v90 = v114;
  v91 = &v114[*(v23 + 36)];
  sub_269E14E98(0);
  v93 = *(v92 + 28);
  v94 = *MEMORY[0x277CE1050];
  v95 = sub_269E518DC();
  (*(*(v95 - 8) + 104))(v91 + v93, v94, v95);
  *v91 = swift_getKeyPath();
  sub_269E163CC(v88, v90, sub_269E1600C);
  v96 = v108;
  sub_269E163CC(v90, v108, sub_269E15FC4);
  sub_269E16614(v96, v10, sub_269E15FC4);
  swift_storeEnumTagMultiPayload();
  sub_269E16434();
  sub_269E513BC();
  sub_269E165B4(v96, sub_269E15FC4);
LABEL_11:
  v39 = *(v34 + 20);
  LOBYTE(v125) = *(a1 + v39);
  if (!SleepWidgetViewModel.scheduleOccurrenceRelativeDateString(occurrence:)(&v125) && v40 == 0xE000000000000000)
  {

    goto LABEL_14;
  }

  v42 = 0xE000000000000000;
  v69 = sub_269E521CC();

  if ((v69 & 1) != 0 || *(a1 + v39) == 3)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_269E51D2C();
    v42 = v82;
  }

LABEL_15:
  v117 = v32;
  v43 = *(v34 + 20);
  LOBYTE(v125) = *(a1 + v43);
  v44 = SleepWidgetViewModel.scheduleOccurrenceRelativeDateString(occurrence:)(&v125);
  v46 = v45;
  v125 = v41;
  v126 = v42;

  MEMORY[0x26D6539C0](v44, v46);

  sub_269DF0E28();
  v47 = sub_269E516CC();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = (*(a1 + *(v34 + 28)) >> 2) & 1;
  v55 = swift_getKeyPath();
  v125 = v47;
  v126 = v49;
  v127 = v51 & 1;
  v128 = v53;
  v129 = v55;
  v130 = v54;
  v131 = 0;
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v56 = qword_281575978;
  v57 = qword_281575980;
  v123 = 46;
  v124 = 0xE100000000000000;
  if (*(a1 + v43) == 3)
  {
    v58 = 0x656D6974646542;
  }

  else
  {
    v58 = 0x7055656B6157;
  }

  if (*(a1 + v43) == 3)
  {
    v59 = 0xE700000000000000;
  }

  else
  {
    v59 = 0xE600000000000000;
  }

  MEMORY[0x26D6539C0](v58, v59);

  MEMORY[0x26D6539C0](0x786554657461442ELL, 0xE900000000000074);
  v60 = v123;
  v61 = v124;
  v123 = v56;
  v124 = v57;

  MEMORY[0x26D6539C0](v60, v61);

  sub_269E083BC(0);
  sub_269E088AC();
  v62 = v120;
  sub_269E517EC();

  sub_269E00F48(v47, v49, v51 & 1);

  v63 = v117;
  v64 = v119;
  sub_269E16614(v117, v119, sub_269E15FA4);
  v65 = v122;
  sub_269E169EC(v62, v122, sub_269E16118);
  v66 = v121;
  sub_269E16614(v64, v121, sub_269E15FA4);
  sub_269E15F70(0);
  sub_269E169EC(v65, v66 + *(v67 + 48), sub_269E16118);
  sub_269E16A54(v62, sub_269E16118);
  sub_269E165B4(v63, sub_269E15FA4);
  sub_269E16A54(v65, sub_269E16118);
  sub_269E165B4(v64, sub_269E15FA4);
}

uint64_t sub_269E139E0(unsigned __int8 *a1)
{
  v2 = sub_269E50FBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if ((v4 & 0xA) != 0)
  {
    v15 = v7;
    return sub_269E13B78(&v15, v4);
  }

  else
  {
    if (v7 == 3)
    {
      sub_269E50FAC();
    }

    else
    {
      sub_269E16360(0);
      v10 = *(v9 + 48);
      *v6 = v7 != 2;
      v11 = *MEMORY[0x277D62748];
      v12 = sub_269E50F9C();
      (*(*(v12 - 8) + 104))(&v6[v10], v11, v12);
      (*(v3 + 104))(v6, *MEMORY[0x277D62740], v2);
    }

    v13 = sub_269E50F7C();
    (*(v3 + 8))(v6, v2);
    return v13;
  }
}

uint64_t sub_269E13B78(_BYTE *a1, char a2)
{
  if ((a2 & 0xA) == 0)
  {
    goto LABEL_7;
  }

  if (*a1 != 2)
  {

    return sub_269E5187C();
  }

  if ((a2 & 8) != 0)
  {
    v5 = [objc_opt_self() systemGray2Color];

    return sub_269E5183C();
  }

  else
  {
LABEL_7:

    return sub_269E518AC();
  }
}

uint64_t sub_269E13BFC(char a1)
{
  v2 = sub_269E5161C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1506C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269E5166C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 8) != 0)
  {
    sub_269E5157C();
    sub_269E515BC();
    v18 = sub_269E515FC();

    return v18;
  }

  else
  {
    v13 = *(v10 + 104);
    if ((a1 & 4) != 0)
    {
      v13(v12, *MEMORY[0x277CE0AA8], v9);
      v20 = *MEMORY[0x277CE09A0];
      v21 = sub_269E5159C();
      v22 = *(v21 - 8);
      (*(v22 + 104))(v8, v20, v21);
      (*(v22 + 56))(v8, 0, 1, v21);
      sub_269E515CC();
      sub_269E515EC();
      sub_269E16A54(v8, sub_269E1506C);
      (*(v10 + 8))(v12, v9);
      (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
      v17 = sub_269E5163C();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v13(v12, *MEMORY[0x277CE0AA0], v9);
      v14 = *MEMORY[0x277CE0990];
      v15 = sub_269E5159C();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v8, v14, v15);
      (*(v16 + 56))(v8, 0, 1, v15);
      sub_269E515CC();
      v17 = sub_269E515EC();
      sub_269E16A54(v8, sub_269E1506C);
      (*(v10 + 8))(v12, v9);
    }

    return v17;
  }
}

uint64_t sub_269E13FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  sub_269E1506C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269E5166C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1559C(0);
  v68 = v10;
  v67 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v65 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E154C0(0);
  v64 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v71 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = v61 - v15;
  sub_269E151F0(0);
  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v69 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v61 - v20;
  sub_269E51E1C();
  v66 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v21 = sub_269E5130C();
  *(v21 + 1) = 0;
  v21[16] = 1;
  sub_269E150A0(0, &qword_28035EC38, sub_269E1533C, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_269E147C0(a1, &v21[*(v22 + 44)]);
  *&v21[*(v17 + 36)] = sub_269E5180C();
  v62 = type metadata accessor for BedTitleView(0);
  v23 = (a1 + *(v62 + 20));
  v24 = v23[1];
  *&v80[0] = *v23;
  *(&v80[0] + 1) = v24;
  sub_269DF0E28();

  v25 = sub_269E516CC();
  v63 = v21;
  v27 = v26;
  v29 = v28;
  v61[0] = v30;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A90], v6);
  v31 = v6;
  v32 = *MEMORY[0x277CE09A0];
  v33 = sub_269E5159C();
  v61[1] = a1;
  v34 = v33;
  v35 = *(v33 - 8);
  (*(v35 + 104))(v5, v32, v33);
  (*(v35 + 56))(v5, 0, 1, v34);
  sub_269E515EC();
  sub_269E16A54(v5, sub_269E1506C);
  (*(v7 + 8))(v9, v31);
  sub_269E5154C();

  v36 = sub_269E516AC();
  v38 = v37;
  v40 = v39;

  sub_269E00F48(v25, v27, v29 & 1);

  sub_269E515AC();
  v41 = sub_269E5167C();
  v43 = v42;
  LOBYTE(v32) = v44;
  v46 = v45;
  sub_269E00F48(v36, v38, v40 & 1);

  KeyPath = swift_getKeyPath();
  v48 = swift_getKeyPath();
  v79 = v32 & 1;
  v78 = 0;
  *&v73 = v41;
  *(&v73 + 1) = v43;
  LOBYTE(v74) = v32 & 1;
  *(&v74 + 1) = v46;
  *&v75 = KeyPath;
  *(&v75 + 1) = 0x3FE8000000000000;
  *&v76 = v48;
  *(&v76 + 1) = 1;
  v77 = 0;
  sub_269E08F3C(0);
  v50 = v49;
  v51 = sub_269E08F84();
  v52 = v65;
  sub_269E5170C();
  v80[2] = v75;
  v80[3] = v76;
  v81 = v77;
  v80[0] = v73;
  v80[1] = v74;
  sub_269E16A54(v80, sub_269E08F3C);
  *&v73 = v50;
  *(&v73 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  v53 = v70;
  v54 = v68;
  sub_269E5171C();
  (*(v67 + 8))(v52, v54);
  *(v53 + *(v64 + 36)) = sub_269E5180C();
  v55 = v63;
  v56 = v69;
  sub_269E169EC(v63, v69, sub_269E151F0);
  v57 = v71;
  sub_269E16614(v53, v71, sub_269E154C0);
  v58 = v72;
  sub_269E169EC(v56, v72, sub_269E151F0);
  sub_269E15140(0);
  sub_269E16614(v57, v58 + *(v59 + 48), sub_269E154C0);
  sub_269E165B4(v53, sub_269E154C0);
  sub_269E16A54(v55, sub_269E151F0);
  sub_269E165B4(v57, sub_269E154C0);
  sub_269E16A54(v56, sub_269E151F0);
}

uint64_t sub_269E147C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v22 = a2;
  v2 = sub_269E518CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269E50FBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E153D8(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  sub_269E51E1C();
  v21[1] = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E50FAC();
  sub_269E50F8C();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v16 = sub_269E518EC();

  (*(v3 + 8))(v5, v2);
  type metadata accessor for BedTitleView(0);
  sub_269E5199C();
  sub_269E5106C();
  v23 = v16;
  v24 = v29;
  v25 = v30;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  sub_269E1546C(0, &qword_28035EC10, MEMORY[0x277CE1088], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
  sub_269E15670();
  sub_269E5177C();

  sub_269E169EC(v15, v13, sub_269E153D8);
  v17 = v22;
  sub_269E169EC(v13, v22, sub_269E153D8);
  sub_269E15370(0);
  v19 = v17 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_269E16A54(v15, sub_269E153D8);
  sub_269E16A54(v13, sub_269E153D8);
}

uint64_t sub_269E14BB4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_269E5134C();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  sub_269E150A0(0, &qword_28035EBD0, sub_269E1510C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  return sub_269E13FF0(v2, a2 + *(v4 + 44));
}

void sub_269E14C44(uint64_t a1)
{
  if (!qword_281571FE0)
  {
    sub_269E14CD8(255);
    sub_269E16DA0(&qword_281571EA8, sub_269E14CD8, MEMORY[0x277CE14C0]);
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571FE0);
    }
  }
}

void sub_269E14D0C(uint64_t a1)
{
  if (!qword_281572310)
  {
    sub_269E14D9C(255);
    sub_269E14F38(255, &qword_2815724D0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281572310);
    }
  }
}

void sub_269E14E04(uint64_t a1)
{
  if (!qword_2815724C8)
  {
    sub_269E160B8(255, &qword_281572048, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277CE3A58]);
    sub_269E5148C();
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2815724C8);
    }
  }
}

void sub_269E14ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269E15620(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_269E5147C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269E14F38(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_269E160B8(255, &qword_281572050, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE3A58]);
    sub_269E14ECC(255, a3, a4, a5);
    v9 = sub_269E510FC();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_269E14FEC(uint64_t a1)
{
  if (!qword_281572468)
  {
    sub_269E14C44(255);
    sub_269E14ECC(255, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572468);
    }
  }
}

void sub_269E150A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_269E5109C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269E15174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269E15210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269E1546C(255, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v4 = sub_269E510FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E152A8(uint64_t a1)
{
  if (!qword_28035EBF0)
  {
    sub_269E1533C(255);
    sub_269E16DA0(&qword_28035EC18, sub_269E1533C, MEMORY[0x277CE14C0]);
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EBF0);
    }
  }
}

void sub_269E15370(uint64_t a1)
{
  if (!qword_28035EC00)
  {
    sub_269E153D8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035EC00);
    }
  }
}

void sub_269E153D8(uint64_t a1)
{
  if (!qword_28035EC08)
  {
    sub_269E1546C(255, &qword_28035EC10, MEMORY[0x277CE1088], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269E5148C();
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EC08);
    }
  }
}

void sub_269E1546C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269E154E0(uint64_t a1)
{
  if (!qword_28035EC28)
  {
    sub_269E1559C(255);
    sub_269E08F3C(255);
    sub_269E08F84();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035EC28);
    }
  }
}

void sub_269E1559C(uint64_t a1)
{
  if (!qword_28035EC30)
  {
    sub_269E08F3C(255);
    sub_269E08F84();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035EC30);
    }
  }
}

void sub_269E15620(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269E15670()
{
  result = qword_28035EC40;
  if (!qword_28035EC40)
  {
    sub_269E1546C(255, &qword_28035EC10, MEMORY[0x277CE1088], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EC40);
  }

  return result;
}

void sub_269E15714(uint64_t a1)
{
  if (!qword_28035EC48)
  {
    sub_269E157A8(255);
    sub_269E16DA0(&qword_28035EC70, sub_269E157A8, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EC48);
    }
  }
}

void sub_269E157DC(uint64_t a1)
{
  if (!qword_28035EC58)
  {
    type metadata accessor for TimeView(255);
    sub_269E15874(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28035EC58);
    }
  }
}

void sub_269E15874(uint64_t a1)
{
  if (!qword_28035EC60)
  {
    type metadata accessor for DateView(255);
    sub_269E16DA0(&qword_28035EC68, type metadata accessor for DateView, &unk_269E544DC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035EC60);
    }
  }
}

uint64_t sub_269E15948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E159B0(uint64_t a1, uint64_t a2)
{
  sub_269E166D0(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_45Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepWidgetViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t __swift_store_extra_inhabitant_index_46Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepWidgetViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_269E15C18(uint64_t a1)
{
  result = type metadata accessor for SleepWidgetViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleOccurrenceTextView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ScheduleOccurrenceTextView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_269E15D44(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_269E16DA0(a3, a4, MEMORY[0x277CE1138]);
    sub_269E15E04(&qword_2815720A0, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269E15E04(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269E14ECC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269E15E54(uint64_t a1)
{
  if (!qword_28035ECB0)
  {
    sub_269E1510C(255);
    sub_269E16DA0(&qword_28035ECB8, sub_269E1510C, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035ECB0);
    }
  }
}

void sub_269E1600C(uint64_t a1)
{
  if (!qword_28035ECE8)
  {
    sub_269E160B8(255, &qword_28035ECF0, MEMORY[0x277CE1088], MEMORY[0x277CE1078], MEMORY[0x277D62760]);
    sub_269E14ECC(255, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035ECE8);
    }
  }
}

void sub_269E160B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_269E16160(uint64_t a1)
{
  if (!qword_28035ED00)
  {
    sub_269E161E0(255);
    sub_269E14ECC(255, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035ED00);
    }
  }
}

void sub_269E161E0(uint64_t a1)
{
  if (!qword_28035ED08)
  {
    sub_269E15F3C(255);
    sub_269E16DA0(&qword_28035ED10, sub_269E15F3C, MEMORY[0x277CE14C0]);
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035ED08);
    }
  }
}

void sub_269E16274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269E14ECC(255, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
    v4 = sub_269E510FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E162F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_269E15FC4(255);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_269E16360(uint64_t a1)
{
  if (!qword_28035ED28)
  {
    sub_269E50F9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035ED28);
    }
  }
}

uint64_t sub_269E163CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269E16434()
{
  result = qword_28035ED30;
  if (!qword_28035ED30)
  {
    sub_269E15FC4(255);
    sub_269E164E4();
    sub_269E16DA0(&qword_28035ED40, sub_269E14E98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035ED30);
  }

  return result;
}

unint64_t sub_269E164E4()
{
  result = qword_28035ED38;
  if (!qword_28035ED38)
  {
    sub_269E1600C(255);
    swift_getOpaqueTypeConformance2();
    sub_269E15E04(&qword_2815720A0, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035ED38);
  }

  return result;
}

uint64_t sub_269E165B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E16614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269E166D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E16734(uint64_t a1)
{
  if (!qword_28035ED60)
  {
    sub_269E16798(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035ED60);
    }
  }
}

void sub_269E16800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269E1669C(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269E16864()
{
  result = qword_28035ED80;
  if (!qword_28035ED80)
  {
    sub_269E1667C(255);
    sub_269E16DA0(&qword_28035ED88, sub_269E1669C, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035ED80);
  }

  return result;
}

unint64_t sub_269E1690C()
{
  result = qword_28035ED90;
  if (!qword_28035ED90)
  {
    sub_269E16798(255);
    sub_269E16DA0(&qword_28035ED78, type metadata accessor for TimeView.TimeText, &unk_269E54538);
    sub_269E16DA0(&qword_281572078, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035ED90);
  }

  return result;
}

uint64_t sub_269E169EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E16A54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_269E16AB4()
{
  result = qword_28035EDA0;
  if (!qword_28035EDA0)
  {
    v1 = MEMORY[0x277D83B88];
    sub_269E14F38(255, &qword_28035ED98, &qword_281572080, &qword_281571D28, MEMORY[0x277D83B88]);
    swift_getOpaqueTypeConformance2();
    sub_269E15E04(&qword_281572088, &qword_281572080, &qword_281571D28, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EDA0);
  }

  return result;
}

uint64_t sub_269E16BB4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_269E14F38(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_269E16C38(uint64_t a1)
{
  result = sub_269E50A5C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_269E16CAC()
{
  result = qword_28035EDB8;
  if (!qword_28035EDB8)
  {
    sub_269E16274(255, &qword_28035ED18, sub_269E16160);
    sub_269E15D44(&qword_28035EDC0, sub_269E16160, &qword_28035EDC8, sub_269E161E0);
    sub_269E15E04(&qword_28035EDD0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EDB8);
  }

  return result;
}

uint64_t sub_269E16DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269E16DE8()
{
  result = qword_28035EDD8;
  if (!qword_28035EDD8)
  {
    sub_269E16EAC(255, &qword_28035EDE0, sub_269E1667C, sub_269E16798, MEMORY[0x277CE0338]);
    sub_269E16864();
    sub_269E1690C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EDD8);
  }

  return result;
}

void sub_269E16EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_269E16F30()
{
  result = qword_28035EDE8;
  if (!qword_28035EDE8)
  {
    sub_269E16FE0(255);
    sub_269E16AB4();
    sub_269E16DA0(&qword_281572078, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EDE8);
  }

  return result;
}

void sub_269E16FE0(uint64_t a1)
{
  if (!qword_28035EDF0)
  {
    sub_269E14F38(255, &qword_28035ED98, &qword_281572080, &qword_281571D28, MEMORY[0x277D83B88]);
    sub_269E5148C();
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EDF0);
    }
  }
}

uint64_t type metadata accessor for GreetingSleepWidgetRectangularView(uint64_t a1)
{
  result = qword_2815739A8;
  if (!qword_2815739A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E170FC(uint64_t a1)
{
  sub_269E17B98(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SleepWidgetViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E171A4(uint64_t a1)
{
  result = sub_269E17C50(qword_2815739B8, type metadata accessor for GreetingSleepWidgetRectangularView, &unk_269E545D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E17218()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    if (v3)
    {
      v4 = v1[2];
      v5 = v1[3];
      v6 = v5;

      v7 = v3;
      [v7 sleepDuration];
      if (v8 > COERCE_DOUBLE(1) && v8 > 0.0)
      {
        sub_269DF6EA0(v2, v3, v4, v5);
        return 1;
      }

      [v7 inBedDuration];
      v10 = v9;
      sub_269DF6EA0(v2, v3, v4, v5);
      if (v10 > COERCE_DOUBLE(1) && v10 > 0.0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_269E17310()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_269E51EBC();
    v6 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_269E17458()
{
  type metadata accessor for GreetingSleepWidgetRectangularView(0);
  v0 = sub_269DEFEA4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_269DF0E08(0, v1, 0);
    sub_269E51E1C();
    v2 = v11;
    v3 = v0 + 40;
    do
    {

      sub_269E51E0C();
      sub_269E51DDC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_269DF0E28();
      v4 = sub_269E51FAC();
      v6 = v5;

      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_269DF0E08((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_269E175F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SleepWidgetChartView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1 + *(type metadata accessor for GreetingSleepWidgetRectangularView(0) + 20);
  v8 = (v7 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
  v9 = *v8;
  if (*v8)
  {
    v11 = v8[2];
    v10 = v8[3];
    v12 = v8[1];
    v28[0] = v9;
    v28[1] = v12;
    v29 = v11;
    v30 = v10;
    sub_269E0B178(&v31);
    v13 = v31;
  }

  else
  {
    v13 = 0;
  }

  v28[0] = v13;
  if (sub_269E17310())
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  sub_269E49E94(v28, v14, v6);
  v15 = sub_269E514FC();
  v16 = sub_269E5152C();
  sub_269E5152C();
  if (sub_269E5152C() != v15)
  {
    v16 = sub_269E5152C();
  }

  sub_269E17310();
  sub_269E5102C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_269E17BE8(v6, a2, type metadata accessor for SleepWidgetChartView);
  sub_269E17A88(0);
  v26 = a2 + *(v25 + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
}

uint64_t sub_269E177A4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  sub_269E17458();
  if (sub_269E17218())
  {
    sub_269E17B98(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_269E528D0;
    *(v4 + 32) = sub_269DF01B0();
    *(v4 + 40) = v5;
  }

  else
  {
    sub_269DF035C();
  }

  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  sub_269E179B4(v1, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_269E17BE8(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for GreetingSleepWidgetRectangularView);
  sub_269E17A88(0);
  sub_269E17AE8();

  return sub_269E51A4C();
}

uint64_t sub_269E179B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GreetingSleepWidgetRectangularView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E17A18(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GreetingSleepWidgetRectangularView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_269E175F8(v4, a1);
}

void sub_269E17A88(uint64_t a1)
{
  if (!qword_281572540)
  {
    type metadata accessor for SleepWidgetChartView(255);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572540);
    }
  }
}

unint64_t sub_269E17AE8()
{
  result = qword_281572548;
  if (!qword_281572548)
  {
    sub_269E17A88(255);
    sub_269E17C50(&qword_281572A30, type metadata accessor for SleepWidgetChartView, &unk_269E56428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572548);
  }

  return result;
}

void sub_269E17B98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269E17BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E17C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269E17C98(uint64_t a1)
{
  if (!qword_281571E38)
  {
    sub_269E17A88(255);
    sub_269E17AE8();
    v1 = sub_269E51A5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571E38);
    }
  }
}

uint64_t sub_269E17D28@<X0>(uint64_t a1@<X8>)
{
  v18[3] = a1;
  v1 = sub_269E51A8C();
  MEMORY[0x28223BE20](v1);
  v2 = sub_269E50FBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E18034(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FAC();
  v10 = sub_269E50F6C();
  v18[1] = v11;
  v18[2] = v10;
  (*(v3 + 8))(v5, v2);
  if (qword_28035E898 != -1)
  {
    swift_once();
  }

  v13 = qword_280361098;
  v12 = qword_2803610A0;
  v19 = MEMORY[0x277D84F90];
  sub_269E18230(&qword_281571E30, MEMORY[0x277D12700], MEMORY[0x277D12708]);
  sub_269E1811C(0, &qword_281571D80, MEMORY[0x277D12700], MEMORY[0x277D83940]);
  sub_269DF2070();

  sub_269E51FEC();
  sub_269E51A7C();
  v14 = sub_269E5180C();
  KeyPath = swift_getKeyPath();
  v16 = &v9[*(v7 + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v19 = v13;
  v20 = v12;

  MEMORY[0x26D6539C0](0x776569562ELL, 0xE500000000000000);
  sub_269E18180();
  sub_269E517EC();

  return sub_269E18278(v9);
}

void sub_269E18034(uint64_t a1)
{
  if (!qword_28035EDF8)
  {
    sub_269E51A9C();
    sub_269E1811C(255, &qword_281572098, sub_269E180CC, MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EDF8);
    }
  }
}

void sub_269E180CC()
{
  if (!qword_281572020)
  {
    v0 = sub_269E51F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281572020);
    }
  }
}

void sub_269E1811C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_269E18180()
{
  result = qword_28035EE00;
  if (!qword_28035EE00)
  {
    sub_269E18034(255);
    sub_269E18230(&qword_281571E28, MEMORY[0x277D12710], MEMORY[0x277D126F8]);
    sub_269E0AAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EE00);
  }

  return result;
}

uint64_t sub_269E18230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269E18278(uint64_t a1)
{
  sub_269E18034(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E182D4()
{
  v0 = sub_269E5101C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v4 = sub_269E5100C();
  v5 = sub_269E51E9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_269E47920(0xD00000000000001DLL, 0x8000000269E54600, &v14);
    *(v6 + 12) = 2082;
    v8 = sub_269E51B0C();
    v9 = MEMORY[0x26D653A40](MEMORY[0x277D84F90], v8);
    v11 = sub_269E47920(v9, v10, &v14);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_269DE5000, v4, v5, "[%{public}s] supportedFamilies: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v7, -1, -1);
    MEMORY[0x26D654490](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return MEMORY[0x277D84F90];
}

unint64_t sub_269E184C8()
{
  result = qword_28035EE08;
  if (!qword_28035EE08)
  {
    sub_269E18578(255);
    sub_269E18180();
    sub_269E18230(&qword_281572078, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EE08);
  }

  return result;
}

void sub_269E18578(uint64_t a1)
{
  if (!qword_28035EE10)
  {
    sub_269E18034(255);
    sub_269E5148C();
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035EE10);
    }
  }
}

uint64_t SleepStageWidgetViewModel.baseAccessibilityIdentifier.getter()
{
  if (qword_281571DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_281575988;

  return v0;
}

__n128 SleepStageWidgetViewModel.init(summaryResults:overrideState:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  return result;
}

SleepWidgetUI::SleepStageWidgetViewModel::OverrideState_optional __swiftcall SleepStageWidgetViewModel.OverrideState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id SleepStageWidgetViewModel.summaryResults.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v3 = *v1;
    v4 = *(v1 + 8);
    result = sub_269DF6E4C(*v1, v4, v5, v6);
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t SleepStageWidgetViewModel.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 32);
  if (!*v1)
  {
    goto LABEL_7;
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 24);
  v7 = *(v1 + 16);
  sub_269E5222C();
  sub_269E0EE0C(a1, v3);
  sub_269E5222C();
  if (v5)
  {
    v8 = v5;
    sub_269E51F7C();
  }

  MEMORY[0x26D653EA0](v7);
  if (v6)
  {
    sub_269E5222C();
    v9 = v6;
    sub_269E51F7C();

    if (v4 != 3)
    {
LABEL_6:
      sub_269E5222C();
      return MEMORY[0x26D653EA0](v4);
    }
  }

  else
  {
LABEL_7:
    sub_269E5222C();
    if (v4 != 3)
    {
      goto LABEL_6;
    }
  }

  return sub_269E5222C();
}

uint64_t SleepStageWidgetViewModel.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_269E5220C();
  SleepStageWidgetViewModel.hash(into:)(v4);
  return sub_269E5223C();
}

uint64_t sub_269E18864()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_269E5220C();
  SleepStageWidgetViewModel.hash(into:)(v4);
  return sub_269E5223C();
}

uint64_t sub_269E188BC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_269E5220C();
  SleepStageWidgetViewModel.hash(into:)(v5);
  return sub_269E5223C();
}

uint64_t SleepStageWidgetViewModel.noDataTexts.getter()
{
  sub_269E18D98(0, &qword_281571BC0, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269E546C0;
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_269E50A7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_269E50A7C();
  *(v0 + 56) = v2;
  *(v0 + 64) = 11565;
  *(v0 + 72) = 0xE200000000000000;
  sub_269E18D98(0, &qword_281571D70, MEMORY[0x277D83940]);
  sub_269E18DEC();
  v3 = sub_269E51E7C();

  return v3;
}

id sub_269E18A9C@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v3 = *v1;
    v4 = *(v1 + 8);
    result = sub_269DF6E4C(*v1, v4, v5, v6);
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_269E18B28()
{
  if (qword_281571DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_281575988;

  return v0;
}

BOOL _s13SleepWidgetUI0a5StageB9ViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1)
  {
    v22 = *a1;
    v23 = v2;
    v24 = v5;
    v25 = v4;
    if (v8)
    {
      v18 = v8;
      v19 = v7;
      v20 = v10;
      v21 = v9;
      sub_269DF6E4C(v3, v2, v5, v4);
      sub_269DF6E4C(v8, v7, v10, v9);
      sub_269DF6E4C(v3, v2, v5, v4);
      v12 = _s13SleepWidgetUI0A17DaySummaryResultsV2eeoiySbAC_ACtFZ_0(&v22, &v18);
      v13 = v19;
      v14 = v21;

      v15 = v23;
      v16 = v25;

      sub_269DF6EA0(v3, v2, v5, v4);
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      if (v6 == 3)
      {
        return v11 == 3;
      }

      return v11 != 3 && v6 == v11;
    }

    sub_269DF6E4C(v3, v2, v5, v4);
    sub_269DF6E4C(0, v7, v10, v9);
    sub_269DF6E4C(v3, v2, v5, v4);

LABEL_10:
    sub_269DF6EA0(v3, v2, v5, v4);
    sub_269DF6EA0(v8, v7, v10, v9);
    return 0;
  }

  sub_269DF6E4C(0, v2, v5, v4);
  if (v8)
  {
    sub_269DF6E4C(v8, v7, v10, v9);
    goto LABEL_10;
  }

  sub_269DF6E4C(0, v7, v10, v9);
  sub_269DF6EA0(0, v2, v5, v4);
  if (v6 != 3)
  {
    return v11 != 3 && v6 == v11;
  }

  return v11 == 3;
}

void sub_269E18D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269E18DEC()
{
  result = qword_281571D58;
  if (!qword_281571D58)
  {
    sub_269E18D98(255, &qword_281571D70, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D58);
  }

  return result;
}

unint64_t sub_269E18E64()
{
  result = qword_28035EE18;
  if (!qword_28035EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EE18);
  }

  return result;
}

unint64_t sub_269E18EBC()
{
  result = qword_28035EE20;
  if (!qword_28035EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EE20);
  }

  return result;
}

uint64_t sub_269E18F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269E1D01C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  if ((*(a1 + 8) & 1) != 0 || (*a1 - 2) < 2 || *a1 != 6)
  {

    return sub_269E51BDC();
  }

  else
  {
    v8 = (a1 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
    if (*v8)
    {
      v9 = v8[3];
      if (v9)
      {
        v10 = [v9 averageSleepDuration];
        if (v10)
        {
          v11 = v10;
          [v10 _value];
        }
      }

      sub_269E51BDC();
      v12 = sub_269E51BEC();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v6, 0, 1, v12);
      return (*(v13 + 32))(a2, v6, v12);
    }

    else
    {
      v14 = sub_269E51BEC();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v6, 1, 1, v14);
      sub_269E51BDC();
      result = (*(v15 + 48))(v6, 1, v14);
      if (result != 1)
      {
        return sub_269E1D530(v6, &qword_281571DE0, MEMORY[0x277CE3E20]);
      }
    }
  }

  return result;
}

uint64_t sub_269E191FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269E5101C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v6 = sub_269E5100C();
  v7 = sub_269E51ECC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v25);
    _os_log_impl(&dword_269DE5000, v6, v7, "[%{public}s] Returning placeholder for sleep widget...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_269E50B7C();
  v10 = type metadata accessor for SleepWidgetEntry(0);
  v11 = v10[5];
  sub_269E50B7C();
  v12 = sub_269E50B9C();
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 0, 1, v12);
  v14 = a1 + v10[6];
  v15 = type metadata accessor for SleepWidgetViewModel(0);
  v16 = v15[5];
  v17 = sub_269E50A0C();
  v18 = *(*(v17 - 8) + 56);
  v24 = a1;
  v18(v14 + v16, 1, 1, v17);
  v18(v14 + v15[6], 1, 1, v17);
  sub_269E50B8C();
  v19 = v15[9];
  *(v14 + v19) = [objc_allocWithZone(sub_269E50F0C()) init];
  v13(v14 + v15[11], 1, 1, v12);
  v13(v14 + v15[12], 1, 1, v12);
  v13(v14 + v15[13], 1, 1, v12);
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v14 + v15[7]) = 0;
  v20 = (v14 + v15[10]);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v10[7];
  v22 = sub_269E51BEC();
  return (*(*(v22 - 8) + 56))(v24 + v21, 1, 1, v22);
}

void sub_269E1957C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = type metadata accessor for SleepWidgetTimelineProvider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v13 = sub_269E5100C();
  v14 = sub_269E51ECC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v33 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v33);
    _os_log_impl(&dword_269DE5000, v13, v14, "[%{public}s] Getting snapshot for sleep widget...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D654490](v18, -1, -1);
    v19 = v16;
    v7 = v30;
    MEMORY[0x26D654490](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v31;
  *(v20 + 24) = v32;

  sub_269E51BFC();
  v22 = *(v4 + 24);
  v33 = *(v4 + 16);
  v21 = v33;
  v34 = v22;
  sub_269E1D5A0(v4, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetTimelineProvider);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_269E1D3E8(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v25 = (v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_269E1D86C;
  v25[1] = v20;
  v26 = v21;
  v27 = v22;

  SleepWidgetViewModelProvider.currentSleepWidgetViewModel(showLiveContent:completion:)(1, sub_269E1D9B0, v24);

  v28 = v33;
}

uint64_t sub_269E198A8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v8 = sub_269E5100C();
  v9 = sub_269E51ECC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v14);
    _os_log_impl(&dword_269DE5000, v8, v9, "[%{public}s] Returning snapshot for sleep widget", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D654490](v11, -1, -1);
    MEMORY[0x26D654490](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

void sub_269E19A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = type metadata accessor for SleepWidgetTimelineProvider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v13 = sub_269E5100C();
  v14 = sub_269E51ECC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v33 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v33);
    _os_log_impl(&dword_269DE5000, v13, v14, "[%{public}s] Getting timeline for sleep widget...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D654490](v18, -1, -1);
    v19 = v16;
    v7 = v30;
    MEMORY[0x26D654490](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v31;
  *(v20 + 24) = v32;

  sub_269E51BFC();
  v22 = *(v4 + 24);
  v33 = *(v4 + 16);
  v21 = v33;
  v34 = v22;
  sub_269E1D5A0(v4, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetTimelineProvider);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_269E1D3E8(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v25 = (v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_269E1D608;
  v25[1] = v20;
  v26 = v21;
  v27 = v22;

  SleepWidgetViewModelProvider.currentSleepWidgetViewModel(showLiveContent:completion:)(1, sub_269E1D9B0, v24);

  v28 = v33;
}

uint64_t sub_269E19D90(uint64_t a1, void (*a2)(void))
{
  v46 = a1;
  sub_269E1D7D8(0);
  v4 = v3;
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1D01C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_269E50B9C();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269E51BCC();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v38 - v14;
  v15 = sub_269E5101C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v19 = sub_269E5100C();
  v20 = sub_269E51ECC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = v9;
    v24 = v23;
    v49 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v49);
    _os_log_impl(&dword_269DE5000, v19, v20, "[%{public}s] Returning timeline for sleep widget", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v9 = v38;
    MEMORY[0x26D654490](v24, -1, -1);
    v25 = v22;
    a2 = v39;
    MEMORY[0x26D654490](v25, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  v26 = type metadata accessor for SleepWidgetEntry(0);
  v27 = v46;
  sub_269E1D4B0(v46 + *(v26 + 20), v8, &qword_281573C60, MEMORY[0x277CC9578]);
  v28 = v41;
  v29 = (*(v41 + 48))(v8, 1, v9);
  v30 = v43;
  if (v29 == 1)
  {
    sub_269E1D530(v8, &qword_281573C60, MEMORY[0x277CC9578]);
    sub_269E51BBC();
  }

  else
  {
    v31 = v40;
    (*(v28 + 32))(v40, v8, v9);
    sub_269E51BAC();
    (*(v28 + 8))(v31, v9);
  }

  sub_269E1D01C(0, &qword_28035EE30, type metadata accessor for SleepWidgetEntry, MEMORY[0x277D84560]);
  v32 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_269E528D0;
  sub_269E1D5A0(v27, v33 + v32, type metadata accessor for SleepWidgetEntry);
  v35 = v44;
  v34 = v45;
  (*(v44 + 16))(v42, v30, v45);
  sub_269E1D29C(&qword_281572AD8, type metadata accessor for SleepWidgetEntry, &unk_269E54998);
  v36 = v47;
  sub_269E51C2C();
  a2(v36);
  (*(v48 + 8))(v36, v4);
  return (*(v35 + 8))(v30, v34);
}