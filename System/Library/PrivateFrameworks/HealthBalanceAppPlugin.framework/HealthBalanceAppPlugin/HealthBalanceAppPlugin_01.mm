void sub_25136882C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251386124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251368880(uint64_t a1, uint64_t a2)
{
  sub_25136882C(0, &qword_27F42C978, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251368900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25136882C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2513689EC(uint64_t a1)
{
  result = type metadata accessor for SleepingSampleAnalysisHealthChecklistAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251368B80(uint64_t a1)
{
  v1 = sub_251384A34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_251368BEC()
{
  result = qword_27F42CB00;
  if (!qword_27F42CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB00);
  }

  return result;
}

unint64_t sub_251368C44()
{
  result = qword_27F42CB08;
  if (!qword_27F42CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB08);
  }

  return result;
}

unint64_t sub_251368C9C()
{
  result = qword_27F42CB10;
  if (!qword_27F42CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB10);
  }

  return result;
}

unint64_t sub_251368CF0()
{
  result = qword_27F42CB20;
  if (!qword_27F42CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB20);
  }

  return result;
}

unint64_t sub_251368D44()
{
  result = qword_27F42CB30;
  if (!qword_27F42CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB30);
  }

  return result;
}

unint64_t sub_251368D98()
{
  result = qword_27F42CB40;
  if (!qword_27F42CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB40);
  }

  return result;
}

unint64_t sub_251368DEC()
{
  result = qword_27F42CB50;
  if (!qword_27F42CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB50);
  }

  return result;
}

unint64_t sub_251368E40()
{
  result = qword_27F42CB60;
  if (!qword_27F42CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB60);
  }

  return result;
}

unint64_t sub_251368E94()
{
  result = qword_27F42CB70;
  if (!qword_27F42CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CB70);
  }

  return result;
}

void sub_251368EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_251368F50(uint64_t a1)
{
  if (!qword_27F42CBB0)
  {
    sub_251368FC0();
    sub_251386254();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42CBB0);
    }
  }
}

unint64_t sub_251368FC0()
{
  result = qword_27F42CBB8;
  if (!qword_27F42CBB8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F42CBB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleAnalysisHealthChecklistAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepingSampleAnalysisHealthChecklistAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2513691B0()
{
  result = qword_27F42CBC8;
  if (!qword_27F42CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CBC8);
  }

  return result;
}

unint64_t sub_251369208()
{
  result = qword_27F42CBD0;
  if (!qword_27F42CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CBD0);
  }

  return result;
}

unint64_t sub_251369260()
{
  result = qword_27F42CBD8;
  if (!qword_27F42CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CBD8);
  }

  return result;
}

unint64_t sub_2513692B8()
{
  result = qword_27F42CBE0;
  if (!qword_27F42CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CBE0);
  }

  return result;
}

unint64_t sub_251369310()
{
  result = qword_27F42CBE8;
  if (!qword_27F42CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CBE8);
  }

  return result;
}

unint64_t sub_251369368()
{
  result = qword_27F42CBF0;
  if (!qword_27F42CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CBF0);
  }

  return result;
}

unint64_t sub_2513693C0()
{
  result = qword_27F42CBF8;
  if (!qword_27F42CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CBF8);
  }

  return result;
}

unint64_t sub_251369418()
{
  result = qword_27F42CC00;
  if (!qword_27F42CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC00);
  }

  return result;
}

unint64_t sub_251369470()
{
  result = qword_27F42CC08;
  if (!qword_27F42CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC08);
  }

  return result;
}

unint64_t sub_2513694C8()
{
  result = qword_27F42CC10;
  if (!qword_27F42CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC10);
  }

  return result;
}

unint64_t sub_251369520()
{
  result = qword_27F42CC18;
  if (!qword_27F42CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC18);
  }

  return result;
}

unint64_t sub_251369578()
{
  result = qword_27F42CC20;
  if (!qword_27F42CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC20);
  }

  return result;
}

unint64_t sub_2513695D0()
{
  result = qword_27F42CC28;
  if (!qword_27F42CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC28);
  }

  return result;
}

unint64_t sub_251369628()
{
  result = qword_27F42CC30;
  if (!qword_27F42CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC30);
  }

  return result;
}

uint64_t sub_2513696E4(uint64_t a1)
{
  result = sub_251385024();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SleepingSampleAnalysisFeatureStatusPublisherManager();
    if (v3 <= 0x3F)
    {
      result = sub_251353F88(319, &qword_280DF6C98, 0x277CCD570);
      if (v4 <= 0x3F)
      {
        result = sub_251384B04();
        if (v5 <= 0x3F)
        {
          result = _s43SleepingSampleDaySummaryCollectionPublisherVMa(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2513698AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2513698F4(uint64_t a1)
{
  if (!qword_280DF6E58)
  {
    sub_251369988(255);
    sub_2513698AC(&qword_280DF6EB8, sub_251369988, MEMORY[0x277CBCE80]);
    v1 = sub_251385CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6E58);
    }
  }
}

void sub_2513699F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251369A54()
{
  sub_25136BAC0(0, &qword_280DF6EA0, MEMORY[0x277D83B88], MEMORY[0x277CBCE78]);
  v55 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v46 = v42 - v2;
  sub_25136BB10(0);
  v54 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v42[1] = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251386024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136BBC4(0);
  v49 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v42[0] = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136BD4C(0);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v44 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136C05C(0);
  v19 = *(v18 - 8);
  v50 = v18;
  v51 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v43 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136C0F0(0);
  v23 = *(v22 - 8);
  v52 = v22;
  v53 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v45 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepingSampleChangesAlertGenerator(0);
  sub_251384FE4();
  v26 = sub_251385084();
  v58 = sub_2513727A0((v26 & 1) == 0);
  (*(v7 + 104))(v10, *MEMORY[0x277D10158], v6);
  sub_251386014();
  (*(v7 + 8))(v10, v6);
  sub_251384FE4();
  sub_251385084();
  sub_251384A64();
  sub_2513698AC(qword_280DF7880, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v27 = sub_251386034();

  v56 = v27;
  sub_25136BC78(0);
  v29 = v28;
  v30 = sub_2513698AC(&qword_280DF6F20, sub_25136BC78, MEMORY[0x277CBCD90]);
  sub_251385CC4();

  v31 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
  v32 = sub_2513698AC(&qword_280DF6D50, _s43SleepingSampleDaySummaryCollectionPublisherVMa, &unk_251388DCC);
  sub_251385CC4();
  v56 = sub_251384AC4();
  sub_251385C84();
  v33 = MEMORY[0x277D100F0];
  sub_25136BF2C(0, &qword_280DF6F08, MEMORY[0x277D100F0]);
  sub_25136BF90(&qword_280DF6F10, &qword_280DF6F08, v33);
  v56 = v29;
  v57 = v30;
  swift_getOpaqueTypeConformance2();
  v56 = v31;
  v57 = v32;
  swift_getOpaqueTypeConformance2();
  sub_25136BFE0();
  v34 = v44;
  sub_251385BF4();
  sub_251385014();
  v35 = v43;
  v36 = v47;
  sub_251385BD4();
  (*(v48 + 8))(v34, v36);
  type metadata accessor for SleepingSampleChangesAlertGenerator.Change(0);
  sub_2513698AC(&qword_280DF6F68, sub_25136C05C, MEMORY[0x277CBCC80]);
  v37 = v45;
  v38 = v50;
  sub_251385CE4();
  (*(v51 + 8))(v35, v38);
  sub_2513698AC(&qword_280DF6FA8, sub_25136C0F0, MEMORY[0x277CBCC08]);
  v39 = v52;
  v40 = sub_251385CD4();
  (*(v53 + 8))(v37, v39);
  return v40;
}

uint64_t sub_25136A1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25136C19C(0);
  v5 = v4[12];
  v6 = v4[16];
  v7 = *(a1 + v4[20]);
  v8 = sub_251384DD4();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = type metadata accessor for SleepingSampleChangesAlertGenerator.Change(0);
  sub_25136B9F8(a1 + v5, a2 + v9[5], sub_25136B93C);
  v10 = v9[6];
  v11 = sub_251384DA4();
  result = (*(*(v11 - 8) + 16))(a2 + v10, a1 + v6, v11);
  *(a2 + v9[7]) = v7;
  return result;
}

uint64_t sub_25136A2A4(uint64_t a1)
{
  v2 = sub_251384EF4();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251384F94();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251385B74();
  v55 = *(v8 - 8);
  v56 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v48 = &v47 - v14;
  v15 = sub_251384DD4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SleepingSampleChangesAlertGenerator.Change.GeneratorModel(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15);
  v24 = sub_251384DE4();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 objectForKeyedSubscript_];

    v27 = [v26 areAllRequirementsSatisfied];
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for SleepingSampleChangesAlertGenerator.Change(0);
  sub_251375D44(*(a1 + *(v28 + 28)), &v23[v20[6]]);
  sub_25136B9F8(a1 + *(v28 + 20), &v23[v20[7]], sub_25136B93C);
  (*(v16 + 32))(v23, v19, v15);
  v23[v20[5]] = v27;
  v29 = sub_25136A990();
  if (v30 >> 60 == 15)
  {
    sub_251385B44();
    v31 = sub_251385B64();
    v32 = sub_251385FE4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_251352A00(0xD000000000000023, 0x8000000251388670, &v57);
      _os_log_impl(&dword_25134A000, v31, v32, "[%{public}s] Not submitting a feed item", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x253074E50](v34, -1, -1);
      MEMORY[0x253074E50](v33, -1, -1);
    }

    (*(v55 + 8))(v12, v56);
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v36 = v29;
    v37 = v30;
    v38 = v48;
    sub_251385B44();
    v39 = sub_251385B64();
    v40 = sub_251385FE4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_251352A00(0xD000000000000023, 0x8000000251388670, &v57);
      _os_log_impl(&dword_25134A000, v39, v40, "[%{public}s] Submitting a feed item", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x253074E50](v42, -1, -1);
      MEMORY[0x253074E50](v41, -1, -1);
    }

    (*(v55 + 8))(v38, v56);
    type metadata accessor for SleepingSampleChangesAlertTileViewController(0);
    static SleepingSampleChangesAlertTileViewController.bundleClassName.getter();
    (*(v49 + 104))(v51, *MEMORY[0x277D11DC8], v50);
    sub_25136B970(v36, v37);
    sub_251385004();
    v43 = v52;
    sub_251384F54();
    sub_25136AFD0();
    sub_251384F34();
    sub_2513699F0(0, &qword_27F42CC38, MEMORY[0x277D11EB0], MEMORY[0x277D84560]);
    v44 = v53;
    v45 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_251386F80;
    (*(v44 + 32))(v35 + v45, v43, v54);
    sub_251353D74(v36, v37);
  }

  sub_25136BA60(v23, type metadata accessor for SleepingSampleChangesAlertGenerator.Change.GeneratorModel);
  return v35;
}

uint64_t sub_25136A990()
{
  v1 = sub_251385B74();
  v28[4] = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v28[3] = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513699F0(0, &qword_280DF7858, MEMORY[0x277D100F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v28 - v6;
  v8 = sub_251384CC4();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for SleepingSampleChangesAlertTileViewModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v29 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136B9C4(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251384DA4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SleepingSampleChangesAlertGenerator.Change.GeneratorModel(0);
  sub_25136B9F8(v0 + *(v22 + 24), v16, sub_25136B9C4);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_25136BA60(v16, sub_25136B9C4);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    if (*(v0 + *(v22 + 20)) == 1)
    {
      v28[2] = v1;
      sub_251384D84();
      sub_251384D94();
      v23 = sub_251384DD4();
      v24 = *(v23 - 8);
      (*(v24 + 16))(v7, v0, v23);
      (*(v24 + 56))(v7, 0, 1, v23);
      v25 = v29;
      sub_251385184();
      sub_2513849C4();
      swift_allocObject();
      sub_2513849B4();
      sub_2513698AC(&qword_27F42CC48, type metadata accessor for SleepingSampleChangesAlertTileViewModel, &unk_251387298);
      v26 = sub_2513849A4();

      sub_25136BA60(v25, type metadata accessor for SleepingSampleChangesAlertTileViewModel);
      (*(v18 + 8))(v21, v17);
      return v26;
    }

    (*(v18 + 8))(v21, v17);
  }

  return 0;
}

uint64_t sub_25136AFD0()
{
  sub_25136B9C4(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251384D14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136B93C(0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - v15;
  v43 = sub_251384A64();
  v17 = *(v43 - 8);
  v19 = MEMORY[0x28223BE20](v43, v18);
  v40 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v41 = &v38 - v22;
  v23 = type metadata accessor for SleepingSampleChangesAlertGenerator.Change.GeneratorModel(0);
  sub_25136B9F8(v0 + *(v23 + 24), v4, sub_25136B9C4);
  v24 = sub_251384DA4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v4, 1, v24) == 1)
  {
    sub_25136BA60(v4, sub_25136B9C4);
LABEL_8:
    (*(v17 + 56))(v16, 1, 1, v43);
    goto LABEL_9;
  }

  v39 = v0;
  v26 = sub_251384D94();
  (*(v25 + 8))(v4, v24);
  v27 = *(v26 + 16);
  if (!v27)
  {

    goto LABEL_8;
  }

  (*(v6 + 16))(v9, v26 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v27 - 1), v5);

  sub_251384E14();
  (*(v6 + 8))(v9, v5);
  v28 = *(v17 + 48);
  v29 = v43;
  if (v28(v16, 1, v43) == 1)
  {
LABEL_9:
    v33 = v16;
    goto LABEL_10;
  }

  v30 = *(v17 + 32);
  v31 = v41;
  v30(v41, v16, v29);
  v32 = v42;
  sub_25136B9F8(v39 + *(v23 + 28), v42, sub_25136B93C);
  if (v28(v32, 1, v29) != 1)
  {
    v36 = v40;
    v30(v40, v32, v29);
    sub_2513698AC(&qword_27F42CC40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v34 = sub_251385D84();
    v37 = *(v17 + 8);
    v37(v36, v29);
    v37(v31, v29);
    return v34 & 1;
  }

  (*(v17 + 8))(v31, v29);
  v33 = v32;
LABEL_10:
  sub_25136BA60(v33, sub_25136B93C);
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_25136B4E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251385024();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25136B564@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251369A54();
  *a1 = result;
  return result;
}

uint64_t sub_25136B58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2513698AC(&qword_280DF7360, type metadata accessor for SleepingSampleChangesAlertGenerator, &unk_25138871C);

  return MEMORY[0x28216BB70](a1, a2, v4);
}

uint64_t sub_25136B658(uint64_t a1)
{
  v2 = sub_2513698AC(qword_280DF7368, type metadata accessor for SleepingSampleChangesAlertGenerator, &unk_2513886B4);

  return MEMORY[0x28216BB00](a1, v2);
}

id sub_25136B6C4()
{
  v0 = sub_251384FA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385004();
  sub_2513699F0(0, &qword_280DF6C30, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v5 = sub_251384EF4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251386F80;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D11DC8], v5);
  sub_25136BAC0(0, &qword_280DF6C10, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_251387960;
  result = [objc_opt_self() appleBalanceMetricsType];
  if (result)
  {
    *(v9 + 32) = result;
    (*(v1 + 104))(v4, *MEMORY[0x277D11F10], v0);
    return sub_251384FB4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25136B970(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25136B9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25136BA60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25136BAC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25136BB10(uint64_t a1)
{
  if (!qword_280DF6E48)
  {
    _s43SleepingSampleDaySummaryCollectionPublisherVMa(255);
    sub_2513698AC(&qword_280DF6D50, _s43SleepingSampleDaySummaryCollectionPublisherVMa, &unk_251388DCC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DF6E48);
    }
  }
}

void sub_25136BBC4(uint64_t a1)
{
  if (!qword_280DF6E50)
  {
    sub_25136BC78(255);
    sub_2513698AC(&qword_280DF6F20, sub_25136BC78, MEMORY[0x277CBCD90]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280DF6E50);
    }
  }
}

void sub_25136BC78(uint64_t a1)
{
  if (!qword_280DF6F18)
  {
    sub_25136B93C(255);
    sub_25136BCE8();
    v1 = sub_251385C74();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6F18);
    }
  }
}

unint64_t sub_25136BCE8()
{
  result = qword_280DF6C08;
  if (!qword_280DF6C08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DF6C08);
  }

  return result;
}

void sub_25136BD4C(uint64_t a1)
{
  if (!qword_280DF6FE8)
  {
    v1 = MEMORY[0x277D100F0];
    sub_25136BF2C(255, &qword_280DF6F08, MEMORY[0x277D100F0]);
    sub_25136BBC4(255);
    sub_25136BB10(255);
    sub_25136BAC0(255, &qword_280DF6EA0, MEMORY[0x277D83B88], MEMORY[0x277CBCE78]);
    sub_25136BF90(&qword_280DF6F10, &qword_280DF6F08, v1);
    sub_25136BC78(255);
    sub_2513698AC(&qword_280DF6F20, sub_25136BC78, MEMORY[0x277CBCD90]);
    swift_getOpaqueTypeConformance2();
    _s43SleepingSampleDaySummaryCollectionPublisherVMa(255);
    sub_2513698AC(&qword_280DF6D50, _s43SleepingSampleDaySummaryCollectionPublisherVMa, &unk_251388DCC);
    swift_getOpaqueTypeConformance2();
    sub_25136BFE0();
    v2 = sub_251385BE4();
    if (!v3)
    {
      atomic_store(v2, &qword_280DF6FE8);
    }
  }
}

void sub_25136BF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251385C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25136BF90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25136BF2C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25136BFE0()
{
  result = qword_280DF6EA8;
  if (!qword_280DF6EA8)
  {
    sub_25136BAC0(255, &qword_280DF6EA0, MEMORY[0x277D83B88], MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF6EA8);
  }

  return result;
}

void sub_25136C05C(uint64_t a1)
{
  if (!qword_280DF6F60)
  {
    sub_25136BD4C(255);
    sub_2513698AC(&qword_280DF6FF0, sub_25136BD4C, MEMORY[0x277CBCB00]);
    v1 = sub_251385C24();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6F60);
    }
  }
}

void sub_25136C0F0(uint64_t a1)
{
  if (!qword_280DF6FA0)
  {
    sub_25136C05C(255);
    type metadata accessor for SleepingSampleChangesAlertGenerator.Change(255);
    sub_2513698AC(&qword_280DF6F68, sub_25136C05C, MEMORY[0x277CBCC80]);
    v1 = sub_251385C14();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6FA0);
    }
  }
}

void sub_25136C19C(uint64_t a1)
{
  if (!qword_280DF7850)
  {
    sub_251384DD4();
    sub_25136B93C(255);
    sub_251384DA4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280DF7850);
    }
  }
}

void sub_25136C254(uint64_t a1)
{
  sub_251384DD4();
  if (v1 <= 0x3F)
  {
    sub_25136B9C4(319);
    if (v2 <= 0x3F)
    {
      sub_25136B93C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25136C320(uint64_t a1)
{
  sub_251384DD4();
  if (v1 <= 0x3F)
  {
    sub_25136B93C(319);
    if (v2 <= 0x3F)
    {
      sub_251384DA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_25136C3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251384A64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136B93C(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136CA28(0);
  v54 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251384DA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136B9C4(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136CA48(0);
  v24 = v23;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_251384DC4() & 1) == 0)
  {
    return 0;
  }

  v28 = type metadata accessor for SleepingSampleChangesAlertGenerator.Change.GeneratorModel(0);
  if (*(a1 + *(v28 + 20)) != *(a2 + *(v28 + 20)))
  {
    return 0;
  }

  v50 = v5;
  v51 = v4;
  v49 = v28;
  v29 = *(v28 + 24);
  v30 = *(v24 + 48);
  sub_25136B9F8(a1 + v29, v27, sub_25136B9C4);
  sub_25136B9F8(a2 + v29, &v27[v30], sub_25136B9C4);
  v31 = *(v15 + 48);
  if (v31(v27, 1, v14) != 1)
  {
    sub_25136B9F8(v27, v22, sub_25136B9C4);
    if (v31(&v27[v30], 1, v14) != 1)
    {
      (*(v15 + 32))(v18, &v27[v30], v14);
      sub_2513698AC(&qword_27F42CC60, MEMORY[0x277D100D8], MEMORY[0x277D100E0]);
      v34 = sub_251385DA4();
      v35 = *(v15 + 8);
      v35(v18, v14);
      v35(v22, v14);
      sub_25136BA60(v27, sub_25136B9C4);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v15 + 8))(v22, v14);
LABEL_8:
    v32 = sub_25136CA48;
    v33 = v27;
LABEL_16:
    sub_25136BA60(v33, v32);
    return 0;
  }

  if (v31(&v27[v30], 1, v14) != 1)
  {
    goto LABEL_8;
  }

  sub_25136BA60(v27, sub_25136B9C4);
LABEL_10:
  v36 = *(v49 + 28);
  v37 = *(v54 + 48);
  v38 = a1 + v36;
  v39 = v55;
  sub_25136B9F8(v38, v55, sub_25136B93C);
  sub_25136B9F8(a2 + v36, v39 + v37, sub_25136B93C);
  v41 = v50;
  v40 = v51;
  v42 = *(v50 + 48);
  if (v42(v39, 1, v51) == 1)
  {
    if (v42(v39 + v37, 1, v40) == 1)
    {
      sub_25136BA60(v39, sub_25136B93C);
      return 1;
    }

    goto LABEL_15;
  }

  v43 = v53;
  sub_25136B9F8(v39, v53, sub_25136B93C);
  if (v42(v39 + v37, 1, v40) == 1)
  {
    (*(v41 + 8))(v43, v40);
LABEL_15:
    v32 = sub_25136CA28;
    v33 = v39;
    goto LABEL_16;
  }

  v45 = v52;
  (*(v41 + 32))(v52, v39 + v37, v40);
  sub_2513698AC(qword_280DF7880, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v46 = sub_251385DA4();
  v47 = *(v41 + 8);
  v47(v45, v40);
  v47(v43, v40);
  sub_25136BA60(v39, sub_25136B93C);
  return (v46 & 1) != 0;
}

void sub_25136CA68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25136CAE0(void *a1)
{
  sub_25136DCD0(0, &qword_280DF7858, MEMORY[0x277D100F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_251384E44();
  v7 = sub_251384DD4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25136DC44(v6);
  }

  else
  {
    v9 = sub_251384DE4();
    (*(v8 + 8))(v6, v7);
    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript_];
      v11 = [v10 isRequirementSatisfiedWithIdentifier_];

      return v11;
    }
  }

  return 1;
}

uint64_t sub_25136CC94(uint64_t a1)
{
  v1 = a1;
  v2 = sub_251385B74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251385B44();
  v7 = sub_251385B64();
  v8 = sub_251385FE4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_251352A00(0xD000000000000018, 0x80000002513887D0, &v16);
    *(v9 + 12) = 2082;
    v15[7] = v1;
    sub_25136DBF4();
    v11 = sub_251385E94();
    v13 = sub_251352A00(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_25134A000, v7, v8, "[%{public}s] updating notification state: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v10, -1, -1);
    MEMORY[0x253074E50](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_251384B04();
  sub_251384AF4();
  sub_251384AE4();
}

void sub_25136CEA8()
{
  v0 = sub_251385B74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v5 = sub_251385B64();
  v6 = sub_251385FE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_251352A00(0xD000000000000018, 0x80000002513887D0, &v12);
    _os_log_impl(&dword_25134A000, v5, v6, "[%{public}s] favoriting balance type", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x253074E50](v8, -1, -1);
    MEMORY[0x253074E50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v9 = [objc_opt_self() appleBalanceMetricsType];
  if (v9)
  {
    v10 = v9;
    sub_251385064();
    sub_251385054();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25136D08C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_251385B74();
  v69 = *(v3 - 8);
  v70 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v67 = &v61 - v8;
  v71 = sub_251384D44();
  v9 = *(v71 - 8);
  v11 = MEMORY[0x28223BE20](v71, v10);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v65 = &v61 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v66 = &v61 - v17;
  sub_25136DCD0(0, &qword_280DF7858, MEMORY[0x277D100F0], MEMORY[0x277D83D88]);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v61 - v24;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_251384E44();
  v26 = sub_251384DD4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v25, 1, v26) == 1)
  {
    v29 = v25;
LABEL_6:
    sub_25136DC44(v29);
    goto LABEL_7;
  }

  v62 = v9;
  v30 = sub_251384DE4();
  v31 = *(v27 + 8);
  v31(v25, v26);
  if (!v30)
  {
LABEL_7:
    v32 = v68;
    sub_251385B44();
    v33 = sub_251385B64();
    v34 = sub_251385FC4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v73[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_251352A00(0xD000000000000018, 0x80000002513887D0, v73);
      _os_log_impl(&dword_25134A000, v33, v34, "[%{public}s] nil feature status for watch capabilities", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x253074E50](v36, -1, -1);
      MEMORY[0x253074E50](v35, -1, -1);
    }

    (*(v69 + 8))(v32, v70);
    v73[0] = MEMORY[0x277D84F90];
    sub_25136DE28(&qword_27F42CC70, MEMORY[0x277D10000]);
    sub_25136DCD0(0, &qword_27F42CC78, MEMORY[0x277D0FFE8], MEMORY[0x277D83940]);
    sub_25136DD34();
    return sub_251386164();
  }

  v63 = v30;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_251384E44();
  if (v28(v22, 1, v26) == 1)
  {

    v29 = v22;
    goto LABEL_6;
  }

  v38 = sub_251384DE4();
  v31(v22, v26);
  if (!v38)
  {

    goto LABEL_7;
  }

  v39 = v38;
  v73[0] = MEMORY[0x277D84F90];
  sub_25136DE28(&qword_27F42CC70, MEMORY[0x277D10000]);
  sub_25136DCD0(0, &qword_27F42CC78, MEMORY[0x277D0FFE8], MEMORY[0x277D83940]);
  sub_25136DD34();
  v40 = v66;
  v41 = v71;
  sub_251386164();
  v42 = [v63 objectForKeyedSubscript_];
  v43 = [v42 areAllRequirementsSatisfied];

  v44 = v62;
  v45 = v65;
  if (v43)
  {
    v46 = v64;
    sub_251384D34();
    sub_25136D928(v45, v46);
    v47 = *(v44 + 8);
    v47(v46, v41);
    v47(v45, v41);
  }

  v48 = [v39 objectForKeyedSubscript_];
  v49 = [v48 areAllRequirementsSatisfied];

  if (v49)
  {
    v50 = v64;
    sub_251384D24();
    sub_25136D928(v45, v50);
    v51 = *(v44 + 8);
    v51(v50, v41);
    v51(v45, v41);
  }

  v52 = v67;
  sub_251385B44();
  v53 = sub_251385B64();
  v54 = sub_251385FE4();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v68 = v39;
    v57 = v56;
    v73[0] = v56;
    *v55 = 136446466;
    *(v55 + 4) = sub_251352A00(0xD000000000000018, 0x80000002513887D0, v73);
    *(v55 + 12) = 2080;
    swift_beginAccess();
    (*(v62 + 16))(v45, v40, v41);
    v58 = sub_251385E94();
    v60 = sub_251352A00(v58, v59, v73);

    *(v55 + 14) = v60;
    _os_log_impl(&dword_25134A000, v53, v54, "[%{public}s] returning capabilities %s", v55, 0x16u);
    swift_arrayDestroy();
    v44 = v62;
    MEMORY[0x253074E50](v57, -1, -1);
    MEMORY[0x253074E50](v55, -1, -1);
  }

  else
  {
  }

  (*(v69 + 8))(v52, v70);
  swift_beginAccess();
  (*(v44 + 16))(v72, v40, v41);
  return (*(v44 + 8))(v40, v41);
}

uint64_t sub_25136D928(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  sub_25136DDBC(0);
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - v10;
  v12 = sub_251384D44();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v28 - v19;
  v21 = *(v13 + 16);
  v30 = v2;
  v21(v17, v2, v12);
  v28 = sub_25136DE28(&qword_27F42CC70, MEMORY[0x277D10000]);
  sub_251386144();
  sub_25136DE28(&qword_27F42CC90, MEMORY[0x277D0FFF0]);
  v29 = a2;
  v22 = sub_251385DA4();
  v32 = v5;
  v23 = *(v5 + 48);
  *v11 = (v22 & 1) == 0;
  if (v22)
  {
    (*(v13 + 32))(&v11[v23], v20, v12);
  }

  else
  {
    (*(v13 + 8))(v20, v12);
    v24 = v29;
    v21(&v11[v23], v29, v12);
    v21(v17, v24, v12);
    sub_251386154();
  }

  v25 = v31;
  sub_25136DE6C(v11, v31);
  v26 = *v25;
  (*(v13 + 32))(v33, &v25[*(v32 + 48)], v12);
  return v26;
}

void sub_25136DBF4()
{
  if (!qword_27F42CC68)
  {
    v0 = sub_251386124();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42CC68);
    }
  }
}

uint64_t sub_25136DC44(uint64_t a1)
{
  sub_25136DCD0(0, &qword_280DF7858, MEMORY[0x277D100F0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25136DCD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25136DD34()
{
  result = qword_27F42CC80;
  if (!qword_27F42CC80)
  {
    sub_25136DCD0(255, &qword_27F42CC78, MEMORY[0x277D0FFE8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC80);
  }

  return result;
}

void sub_25136DDBC(uint64_t a1)
{
  if (!qword_27F42CC88)
  {
    sub_251384D44();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42CC88);
    }
  }
}

uint64_t sub_25136DE28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_251384D44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25136DE6C(uint64_t a1, uint64_t a2)
{
  sub_25136DDBC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_25136DEE4(uint64_t a1, int a2)
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

uint64_t sub_25136DF2C(uint64_t result, int a2, int a3)
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

uint64_t sub_25136DFD0(uint64_t a1)
{
  result = sub_251385024();
  if (v2 <= 0x3F)
  {
    result = sub_25136E06C();
    if (v3 <= 0x3F)
    {
      result = _s43SleepingSampleDaySummaryCollectionPublisherVMa(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_25136E06C()
{
  result = qword_280DF6C68;
  if (!qword_280DF6C68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DF6C68);
  }

  return result;
}

uint64_t sub_25136E160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25136E1A8(uint64_t a1)
{
  if (!qword_280DF6EF8)
  {
    type metadata accessor for SleepingSampleHelpTileGenerator.Change(255);
    v1 = sub_251385C74();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6EF8);
    }
  }
}

void sub_25136E278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25136E2DC()
{
  sub_25136BB10(0);
  v28 = v0;
  MEMORY[0x28223BE20](v0, v1);
  sub_25136FEB4(0);
  v27 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251370050(0);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513700E4(0);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepingSampleHelpTileGenerator(0);
  ObjectType = swift_getObjectType();
  sub_251384FE4();
  v18 = sub_251385084();
  v35 = HKFeatureStatusProviding.makePublisherWithCurrentValue(observingChanges:)((v18 & 1) == 0, ObjectType);
  v19 = _s43SleepingSampleDaySummaryCollectionPublisherVMa(0);
  v20 = sub_25136E160(&qword_280DF6D50, _s43SleepingSampleDaySummaryCollectionPublisherVMa, &unk_251388DCC);
  sub_251385CC4();
  sub_25136FFD8(0);
  sub_25136E160(&qword_280DF6EC8, sub_25136FFD8, MEMORY[0x277CBCD90]);
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  sub_251385BC4();
  sub_251385014();
  v21 = v27;
  sub_251385BA4();
  (*(v3 + 8))(v6, v21);
  type metadata accessor for SleepingSampleHelpTileGenerator.Change(0);
  sub_25136E160(&qword_280DF6F88, sub_251370050, MEMORY[0x277CBCC80]);
  v22 = v29;
  sub_251385CE4();
  (*(v30 + 8))(v11, v22);
  sub_25136E160(&qword_280DF6FB8, sub_2513700E4, MEMORY[0x277CBCC08]);
  v23 = v31;
  v24 = sub_251385CD4();
  (*(v32 + 8))(v16, v23);
  return v24;
}

id sub_25136E734@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v9 = *a1;
  sub_251370190(0);
  v5 = *(v4 + 48);
  v6 = *(type metadata accessor for SleepingSampleHelpTileGenerator.Change(0) + 20);
  v7 = sub_251384DA4();
  (*(*(v7 - 8) + 16))(&a2[v6], a1 + v5, v7);
  *a2 = v9;

  return v9;
}

id sub_25136E7DC(id *a1)
{
  v70 = sub_251384FA4();
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v2);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_251384FD4();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v4);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251384EF4();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_251384F94();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251385B74();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v60 - v20;
  sub_25136F9A4(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SleepingSampleHelpTileGenerator.Change.GeneratorModel(0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v75 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [*a1 objectForKeyedSubscript_];
  v30 = [v29 areAllRequirementsSatisfied];

  if (v30)
  {
    sub_25136F9FC(v25);
  }

  else
  {
    v31 = type metadata accessor for SleepingSampleHelpTileVariant(0);
    (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  }

  sub_25136FDE4(v25, v75, sub_25136F9A4);
  v32 = sub_25136F104();
  if (v33 >> 60 == 15)
  {
    sub_251385B44();
    v34 = sub_251385B64();
    v35 = sub_251385FE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v76[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_251352A00(0xD00000000000001FLL, 0x8000000251388830, v76);
      _os_log_impl(&dword_25134A000, v34, v35, "[%{public}s] Not submitting a feed item", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x253074E50](v37, -1, -1);
      MEMORY[0x253074E50](v36, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    v38 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v39 = v32;
  v63 = v33;
  sub_251385B44();
  v40 = sub_251385B64();
  v41 = sub_251385FE4();
  v42 = os_log_type_enabled(v40, v41);
  v62 = v12;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v76[0] = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_251352A00(0xD00000000000001FLL, 0x8000000251388830, v76);
    _os_log_impl(&dword_25134A000, v40, v41, "[%{public}s] Submitting a feed item", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x253074E50](v44, -1, -1);
    MEMORY[0x253074E50](v43, -1, -1);
  }

  (*(v14 + 8))(v21, v13);
  v45 = type metadata accessor for SleepingSampleHelpTileViewController(0);
  static SleepingSampleHelpTileViewController.bundleClassName.getter(v45);
  v61 = *MEMORY[0x277D11DE0];
  v46 = v73;
  v47 = v72 + 104;
  v72 = *(v72 + 104);
  (v72)(v9);
  sub_25136B970(v39, v63);
  sub_251385004();
  v48 = v62;
  v60 = v39;
  sub_251384F54();
  v49 = sub_251385044();
  v51 = v50;
  v52 = sub_251384F84();
  sub_25135F9D8(&v77, v49, v51);

  v52(v76, 0);
  sub_251385004();
  sub_25136E278(0, &qword_280DF6C30, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v53 = (*(v47 - 24) + 32) & ~*(v47 - 24);
  v54 = swift_allocObject();
  v74 = xmmword_251386F80;
  *(v54 + 16) = xmmword_251386F80;
  (v72)(v54 + v53, v61, v46);
  sub_251361AFC();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_251387960;
  result = [objc_opt_self() appleBalanceMetricsType];
  if (result)
  {
    *(v55 + 32) = result;
    (*(v67 + 104))(v66, *MEMORY[0x277D11F10], v70);
    v57 = v64;
    sub_251384FB4();
    sub_251384FC4();
    (*(v65 + 8))(v57, v68);
    sub_251384F64();
    sub_251384F34();
    sub_251384F44();
    sub_25136E278(0, &qword_27F42CC38, MEMORY[0x277D11EB0], MEMORY[0x277D84560]);
    v58 = v69;
    v59 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v74;
    (*(v58 + 32))(v38 + v59, v48, v71);
    sub_251353D74(v60, v63);
LABEL_12:
    sub_25136FD84(v75, type metadata accessor for SleepingSampleHelpTileGenerator.Change.GeneratorModel);
    return v38;
  }

  __break(1u);
  return result;
}

uint64_t sub_25136F104()
{
  v1 = sub_251385B74();
  MEMORY[0x28223BE20](v1, v2);
  v3 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136F9A4(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136FE4C(v0, v10, sub_25136F9A4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25136FD84(v10, sub_25136F9A4);
    return 0;
  }

  else
  {
    sub_25136FDE4(v10, v15, type metadata accessor for SleepingSampleHelpTileVariant);
    sub_25136FE4C(v15, v6, type metadata accessor for SleepingSampleHelpTileVariant);
    sub_2513849C4();
    swift_allocObject();
    sub_2513849B4();
    sub_25136E160(&qword_27F42CC98, type metadata accessor for SleepingSampleHelpTileConfiguration, &unk_2513892D8);
    v16 = sub_2513849A4();

    sub_25136FD84(v6, type metadata accessor for SleepingSampleHelpTileConfiguration);
    sub_25136FD84(v15, type metadata accessor for SleepingSampleHelpTileVariant);
    return v16;
  }
}

uint64_t sub_25136F618@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25136E2DC();
  *a1 = result;
  return result;
}

uint64_t sub_25136F640(uint64_t a1, uint64_t a2)
{
  v4 = sub_25136E160(&qword_280DF7540, type metadata accessor for SleepingSampleHelpTileGenerator, &unk_2513888E0);

  return MEMORY[0x28216BB70](a1, a2, v4);
}

uint64_t sub_25136F70C(uint64_t a1)
{
  v2 = sub_25136E160(qword_280DF7548, type metadata accessor for SleepingSampleHelpTileGenerator, &unk_251388878);

  return MEMORY[0x28216BB00](a1, v2);
}

id sub_25136F778()
{
  v0 = sub_251384FA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385004();
  sub_25136E278(0, &qword_280DF6C30, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v5 = sub_251384EF4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251386F80;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D11DE0], v5);
  sub_251361AFC();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_251387960;
  result = [objc_opt_self() appleBalanceMetricsType];
  if (result)
  {
    *(v9 + 32) = result;
    (*(v1 + 104))(v4, *MEMORY[0x277D11F10], v0);
    return sub_251384FB4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25136F9FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_251384C64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251384D14();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24 - v14;
  type metadata accessor for SleepingSampleHelpTileGenerator.Change(0);
  v16 = sub_251384D94();
  v17 = *(v16 + 16);
  if (v17)
  {
    (*(v8 + 16))(v12, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v17 - 1), v7);

    (*(v8 + 32))(v15, v12, v7);
    sub_251384E24();
    if ((sub_251384C24() & 1) == 0)
    {
      (*(v8 + 8))(v15, v7);
      (*(v3 + 32))(a1, v6, v2);
      (*(v3 + 56))(a1, 0, 1, v2);
      goto LABEL_9;
    }

    v18 = sub_251384D04();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v15, v7);
    if (v18)
    {
      (*(v3 + 56))(a1, 1, 1, v2);
LABEL_9:
      v22 = type metadata accessor for SleepingSampleHelpTileVariant(0);
      return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
    }

    v23 = type metadata accessor for SleepingSampleHelpTileVariant(0);
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  else
  {

    v19 = type metadata accessor for SleepingSampleHelpTileVariant(0);
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, 1, 1, v19);
  }
}

uint64_t sub_25136FD84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25136FDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25136FE4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_25136FEB4(uint64_t a1)
{
  if (!qword_280DF7008)
  {
    sub_25136FFD8(255);
    sub_25136BB10(255);
    sub_25136E160(&qword_280DF6EC8, sub_25136FFD8, MEMORY[0x277CBCD90]);
    _s43SleepingSampleDaySummaryCollectionPublisherVMa(255);
    sub_25136E160(&qword_280DF6D50, _s43SleepingSampleDaySummaryCollectionPublisherVMa, &unk_251388DCC);
    swift_getOpaqueTypeConformance2();
    v1 = sub_251385BB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF7008);
    }
  }
}

void sub_25136FFD8(uint64_t a1)
{
  if (!qword_280DF6EC0)
  {
    sub_251353F88(255, &qword_280DF6CB0, 0x277CCD458);
    v1 = sub_251385C74();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6EC0);
    }
  }
}

void sub_251370050(uint64_t a1)
{
  if (!qword_280DF6F80)
  {
    sub_25136FEB4(255);
    sub_25136E160(&unk_280DF7010, sub_25136FEB4, MEMORY[0x277CBCAF0]);
    v1 = sub_251385C24();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6F80);
    }
  }
}

void sub_2513700E4(uint64_t a1)
{
  if (!qword_280DF6FB0)
  {
    sub_251370050(255);
    type metadata accessor for SleepingSampleHelpTileGenerator.Change(255);
    sub_25136E160(&qword_280DF6F88, sub_251370050, MEMORY[0x277CBCC80]);
    v1 = sub_251385C14();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6FB0);
    }
  }
}

void sub_251370190(uint64_t a1)
{
  if (!qword_280DF6CA0)
  {
    sub_251353F88(255, &qword_280DF6CB0, 0x277CCD458);
    sub_251384DA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DF6CA0);
    }
  }
}

void sub_251370238(uint64_t a1)
{
  sub_25136F9A4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2513702CC(uint64_t a1)
{
  result = sub_251353F88(319, &qword_280DF6CB0, 0x277CCD458);
  if (v2 <= 0x3F)
  {
    result = sub_251384DA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL sub_251370360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25136F9A4(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251370644(0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_25136FE4C(a1, v17, sub_25136F9A4);
  sub_25136FE4C(a2, &v17[v18], sub_25136F9A4);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_25136FE4C(v17, v12, sub_25136F9A4);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_25136FDE4(&v17[v18], v8, type metadata accessor for SleepingSampleHelpTileVariant);
      v21 = sub_25137DD5C(v12, v8);
      sub_25136FD84(v8, type metadata accessor for SleepingSampleHelpTileVariant);
      sub_25136FD84(v12, type metadata accessor for SleepingSampleHelpTileVariant);
      sub_25136FD84(v17, sub_25136F9A4);
      return (v21 & 1) != 0;
    }

    sub_25136FD84(v12, type metadata accessor for SleepingSampleHelpTileVariant);
LABEL_6:
    sub_25136FD84(v17, sub_251370644);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_25136FD84(v17, sub_25136F9A4);
  return 1;
}

void sub_251370644(uint64_t a1)
{
  if (!qword_27F42CCA0)
  {
    sub_25136F9A4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42CCA0);
    }
  }
}

uint64_t HealthBalanceAppDelegate.notificationCenterDelegate(for:)(uint64_t a1, uint64_t a2)
{
  if (a1 != 15)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_2513706E0(uint64_t a1, uint64_t a2)
{
  if (a1 != 15)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t HealthBalanceAppDelegate.userNotificationCenter(_:didReceive:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25135F288;

  return sub_2513710B0(a2);
}

uint64_t sub_251370968(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_251370A50;

  return sub_2513710B0(v9);
}

uint64_t sub_251370A50()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_251370BC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_25135F660;

  return v6();
}

uint64_t sub_251370CA8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25135F660;

  return v7();
}

uint64_t sub_251370D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_251371984(0, &qword_27F42C9B8, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_251371794(a3, v24 - v11);
  v13 = sub_251385F94();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2513719D8(v12, &qword_27F42C9B8, MEMORY[0x277D85720]);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_251385F84();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_251385F54();
  v17 = v16;
  sub_251385894();
  if (a2)
  {
LABEL_4:
    v18 = sub_251385EB4() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2513719D8(a3, &qword_27F42C9B8, MEMORY[0x277D85720]);

    return v22;
  }

LABEL_8:
  sub_2513719D8(a3, &qword_27F42C9B8, MEMORY[0x277D85720]);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2513710B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_251384B74();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_251371984(0, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
  v2[7] = swift_task_alloc();
  v4 = sub_251384BA4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_251384A34();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251371270, 0, 0);
}

uint64_t sub_251371270(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v16 = v1[12];
  v17 = v1[11];
  v4 = v1[9];
  v5 = v1[7];
  v14 = v1[6];
  v15 = v1[8];
  v6 = v1[5];
  v13 = v1[4];
  v7 = v1[3];
  sub_251384B94();
  v8 = *MEMORY[0x277D0FDC8];
  v9 = sub_251384B44();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v5, v8, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  (*(v6 + 104))(v14, *MEMORY[0x277D0FDF0], v13);
  sub_251384B34();
  (*(v6 + 8))(v14, v13);
  sub_2513719D8(v5, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
  (*(v4 + 8))(v3, v15);
  (*((*MEMORY[0x277D85000] & *v7) + 0x58))(v2);
  (*(v16 + 8))(v2, v17);
  sub_251384C74();

  v11 = v1[1];

  return v11();
}

unint64_t sub_2513714B0()
{
  result = qword_27F42CCB0;
  if (!qword_27F42CCB0)
  {
    type metadata accessor for HealthBalanceAppDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CCB0);
  }

  return result;
}

uint64_t sub_251371508()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25135F288;

  return sub_251370968(v2, v3, v5, v4);
}

uint64_t sub_2513715C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25135F660;

  return sub_251370BC0(v2, v3, v4);
}

uint64_t objectdestroy_4Tm()
{
  sub_251385894();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2513716C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25135F660;

  return sub_251370CA8(a1, v4, v5, v6);
}

uint64_t sub_251371794(uint64_t a1, uint64_t a2)
{
  sub_251371984(0, &qword_27F42C9B8, MEMORY[0x277D85720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251371814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25135F660;

  return sub_25135EC68(a1, v4);
}

uint64_t sub_2513718CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25135F288;

  return sub_25135EC68(a1, v4);
}

void sub_251371984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251386124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2513719D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251371984(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251371A34()
{
  v1 = sub_251384A84();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_251385E24();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_251384D44();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22[-v12];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_25136D08C(v13);
  sub_251384D34();
  sub_251372748();
  v14 = sub_251386134();
  v15 = *(v6 + 8);
  v15(v10, v5);
  if ((v14 & 1) == 0 || (sub_251384D24(), v16 = sub_251386134(), v15(v10, v5), (v16 & 1) == 0))
  {
    sub_251384D24();
    v17 = sub_251386134();
    v15(v10, v5);
    if ((v17 & 1) == 0)
    {
      sub_251384D34();
      sub_251386134();
      v15(v10, v5);
    }
  }

  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  v20 = sub_251385E84();
  v15(v13, v5);
  return v20;
}

uint64_t sub_251371E40()
{
  v1 = v0;
  v2 = sub_251384A84();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_251385E24();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v13.receiver = v0;
  v13.super_class = type metadata accessor for BalanceOnboardingIntroViewController();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);

  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v8 = sub_251385E34();

  v9 = sub_251385E34();

  v10 = sub_251372038();
  sub_2513645B0(v10, v11);

  return sub_2513860A4();
}

uint64_t sub_251372038()
{
  v1 = sub_251384D44();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  v14[0] = 0xD000000000000015;
  v14[1] = 0x800000025138AA60;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_25136D08C(v9);
  sub_251384D24();
  sub_251372748();
  v10 = sub_251386134();
  v11 = *(v2 + 8);
  v11(v6, v1);
  if (v10)
  {
    MEMORY[0x2530742D0](7299679, 0xE300000000000000);
  }

  sub_251384D34();
  v12 = sub_251386134();
  v11(v6, v1);
  if (v12)
  {
    MEMORY[0x2530742D0](7632735, 0xE300000000000000);
  }

  v11(v9, v1);
  return v14[0];
}

uint64_t sub_25137263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_2513726D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BalanceOnboardingIntroViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_251372748()
{
  result = qword_27F42CC70;
  if (!qword_27F42CC70)
  {
    sub_251384D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CC70);
  }

  return result;
}

uint64_t sub_2513727A0(uint64_t a1)
{
  v1 = a1;
  sub_251372E84(0);
  v37 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251372F70(0);
  v40 = v7;
  MEMORY[0x28223BE20](v7, v8);
  sub_251373004(0);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513730F8(0);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137318C(0);
  v20 = *(v19 - 8);
  v43 = v19;
  v44 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v49 = HKFeatureStatusProviding.makePublisherWithCurrentValue(observingChanges:)(v1, ObjectType);
  v25 = swift_getObjectType();
  v48 = HKFeatureStatusProviding.makePublisherWithCurrentValue(observingChanges:)(v1, v25);
  v26 = swift_getObjectType();
  v47 = HKFeatureStatusProviding.makePublisherWithCurrentValue(observingChanges:)(v1, v26);
  v27 = swift_getObjectType();
  v46 = HKFeatureStatusProviding.makePublisherWithCurrentValue(observingChanges:)(v1, v27);
  v28 = swift_getObjectType();
  v45 = HKFeatureStatusProviding.makePublisherWithCurrentValue(observingChanges:)(v1, v28);
  sub_25136FFD8(0);
  sub_251373988(&qword_280DF6EC8, sub_25136FFD8, MEMORY[0x277CBCD90]);
  sub_251385BC4();
  sub_251385014();
  v29 = v37;
  sub_251385BA4();
  (*(v3 + 8))(v6, v29);
  v30 = MEMORY[0x277CBCC80];
  sub_251373988(&qword_280DF6F78, sub_251372F70, MEMORY[0x277CBCC80]);
  sub_251385BF4();
  sub_251385014();
  v31 = v38;
  sub_251385BD4();
  (*(v39 + 8))(v13, v31);
  sub_251384DD4();
  sub_251373988(&qword_280DF6F58, sub_2513730F8, v30);
  v32 = v41;
  sub_251385CE4();
  (*(v42 + 8))(v18, v32);
  sub_251373988(&qword_280DF6F98, sub_25137318C, MEMORY[0x277CBCC08]);
  v33 = v43;
  v34 = sub_251385CD4();
  (*(v44 + 8))(v23, v33);
  return v34;
}

uint64_t sub_251372CBC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  sub_251373238(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251388A90;
  v11 = *MEMORY[0x277CCC0F0];
  *(inited + 32) = *MEMORY[0x277CCC0F0];
  v12 = *MEMORY[0x277CCC0E8];
  *(inited + 40) = a1;
  *(inited + 48) = v12;
  v13 = *MEMORY[0x277CCC0C8];
  *(inited + 56) = a2;
  *(inited + 64) = v13;
  v14 = *MEMORY[0x277CCC0F8];
  *(inited + 72) = a3;
  *(inited + 80) = v14;
  v15 = *MEMORY[0x277CCC0B0];
  *(inited + 88) = a4;
  *(inited + 96) = v15;
  *(inited + 104) = a5;
  v16 = v11;
  v17 = a1;
  v18 = v12;
  v19 = a2;
  v20 = v13;
  v21 = a3;
  v22 = v14;
  v23 = a4;
  v24 = v15;
  v25 = a5;
  sub_2513737F0(inited);
  swift_setDeallocating();
  sub_251373290(0);
  swift_arrayDestroy();
  return sub_251384DB4();
}

uint64_t sub_251372E08()
{
  sub_251385894();
  sub_251385894();
  sub_251385894();
  sub_251385894();
  sub_251385894();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_251372E84(uint64_t a1)
{
  if (!qword_280DF6FF8)
  {
    sub_25136FFD8(255);
    sub_251373988(&qword_280DF6EC8, sub_25136FFD8, MEMORY[0x277CBCD90]);
    v1 = sub_251385BB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6FF8);
    }
  }
}

unint64_t sub_251372F24()
{
  result = qword_280DF6CB0;
  if (!qword_280DF6CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DF6CB0);
  }

  return result;
}

void sub_251372F70(uint64_t a1)
{
  if (!qword_280DF6F70)
  {
    sub_251372E84(255);
    sub_251373988(&qword_280DF7000, sub_251372E84, MEMORY[0x277CBCAF0]);
    v1 = sub_251385C24();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6F70);
    }
  }
}

void sub_251373004(uint64_t a1)
{
  if (!qword_280DF6FD8)
  {
    sub_25136FFD8(255);
    sub_251372F70(255);
    sub_251373988(&qword_280DF6EC8, sub_25136FFD8, MEMORY[0x277CBCD90]);
    sub_251373988(&qword_280DF6F78, sub_251372F70, MEMORY[0x277CBCC80]);
    v1 = sub_251385BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6FD8);
    }
  }
}

void sub_2513730F8(uint64_t a1)
{
  if (!qword_280DF6F50)
  {
    sub_251373004(255);
    sub_251373988(&qword_280DF6FE0, sub_251373004, MEMORY[0x277CBCB00]);
    v1 = sub_251385C24();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6F50);
    }
  }
}

void sub_25137318C(uint64_t a1)
{
  if (!qword_280DF6F90)
  {
    sub_2513730F8(255);
    sub_251384DD4();
    sub_251373988(&qword_280DF6F58, sub_2513730F8, MEMORY[0x277CBCC80]);
    v1 = sub_251385C14();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6F90);
    }
  }
}

void sub_251373238(uint64_t a1)
{
  if (!qword_280DF6C18)
  {
    sub_251373290(255);
    v1 = sub_251386394();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6C18);
    }
  }
}

void sub_251373290(uint64_t a1)
{
  if (!qword_280DF6C70)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_251372F24();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DF6C70);
    }
  }
}

unint64_t sub_251373300(uint64_t a1, uint64_t a2)
{
  sub_2513863F4();
  sub_251385ED4();
  v4 = sub_251386414();

  return sub_25137340C(a1, a2, v4);
}

unint64_t sub_251373378(uint64_t a1)
{
  sub_251385E64();
  sub_2513863F4();
  sub_251385ED4();
  v2 = sub_251386414();

  return sub_2513734C4(a1, v2);
}

unint64_t sub_25137340C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2513863A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2513734C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_251385E64();
      v8 = v7;
      if (v6 == sub_251385E64() && v8 == v9)
      {
        break;
      }

      v11 = sub_2513863A4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_2513735C8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0F0] healthStore:a1];
  v3 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E8] healthStore:a1];
  v4 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0C8] healthStore:a1];
  v5 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0F8] healthStore:a1];
  v6 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0B0] healthStore:a1];
  type metadata accessor for SleepingSampleAnalysisFeatureStatusPublisherManager();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v3;
  result[4] = v4;
  result[5] = v5;
  result[6] = v6;
  return result;
}

unint64_t sub_2513736EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2513739D0();
    v3 = sub_2513862E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_251373A34(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_251373300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251373AFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2513737F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2513738DC(0);
    v3 = sub_2513862E4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_251373378(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2513738DC(uint64_t a1)
{
  if (!qword_280DF6C38)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_251372F24();
    sub_251373988(&qword_280DF6C88, type metadata accessor for HKFeatureIdentifier, &unk_25138759C);
    v1 = sub_2513862F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6C38);
    }
  }
}

uint64_t sub_251373988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2513739D0()
{
  if (!qword_27F42CD98)
  {
    v0 = sub_2513862F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42CD98);
    }
  }
}

uint64_t sub_251373A34(uint64_t a1, uint64_t a2)
{
  sub_251373A98();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251373A98()
{
  if (!qword_27F42CDA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42CDA0);
    }
  }
}

_OWORD *sub_251373AFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t HKFeatureStatusProviding.makePublisherWithCurrentValue(observingChanges:)(char a1, uint64_t a2)
{
  sub_251373E34(0);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251373F20(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v2;
  *(v16 + 32) = a1;
  sub_251373FB4(0);
  v17 = MEMORY[0x277CBCD90];
  sub_251374090(&qword_280DF6EE0, sub_251373FB4, MEMORY[0x277CBCD90]);
  swift_unknownObjectRetain();
  sub_251385CA4();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v2;
  swift_unknownObjectRetain();
  sub_251385C64();
  sub_25136FFD8(0);
  sub_251374090(&qword_280DF6E70, sub_251373F20, MEMORY[0x277CBCEB8]);
  sub_251374090(&qword_280DF6EC8, sub_25136FFD8, v17);
  sub_251385D04();

  sub_251374090(&qword_280DF6F48, sub_251373E34, MEMORY[0x277CBCCE0]);
  v19 = v22;
  v20 = sub_251385CD4();
  (*(v23 + 8))(v9, v19);
  (*(v12 + 8))(v15, v11);
  return v20;
}

void sub_251373E34(uint64_t a1)
{
  if (!qword_280DF6F40)
  {
    sub_25136FFD8(255);
    sub_251373F20(255);
    sub_251374090(&qword_280DF6EC8, sub_25136FFD8, MEMORY[0x277CBCD90]);
    sub_251374090(&qword_280DF6E70, sub_251373F20, MEMORY[0x277CBCEB8]);
    v1 = sub_251385C34();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6F40);
    }
  }
}

void sub_251373F20(uint64_t a1)
{
  if (!qword_280DF6E68)
  {
    sub_251373FB4(255);
    sub_251374090(&qword_280DF6EE0, sub_251373FB4, MEMORY[0x277CBCD90]);
    v1 = sub_251385CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6E68);
    }
  }
}

void sub_251373FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251374090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2513740D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HKFeatureStatusPublisher.Inner(0, a3, a4, a4);
  swift_unknownObjectRetain();
  v9 = sub_2513754E0(a1, a2, v7, v8);
  v11[3] = v6;
  v11[4] = swift_getWitnessTable();
  v11[0] = v9;
  sub_251385C54();
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_2513741A0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x60));
  sub_251375A04(0, &qword_280DF7020, MEMORY[0x277D84F78] + 8, MEMORY[0x277D85B18]);
  a1[3] = v4;
  a1[4] = sub_251375590();
  *a1 = v3;
}

uint64_t sub_25137423C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_251385AF4();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_251374310(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_251385AF4();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_2513744BC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = a1;
  sub_251375610(v6);
  sub_251385894();
}

id sub_25137457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HKFeatureStatusPublisher.Inner(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2513745EC(char *a1)
{
  v2 = MEMORY[0x277D85000];

  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_251385AF4();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  return sub_251385894();
}

void (*sub_251374700(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2513743EC(v2);
  return sub_2513512D0;
}

uint64_t sub_251374770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HKFeatureStatusPublisher.Inner(0, *(a2 + 80), *(a2 + 88), a4);

  return sub_251385A94();
}

uint64_t sub_2513747D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HKFeatureStatusPublisher.Inner(0, *(a2 + 80), *(a2 + 88), a4);

  return MEMORY[0x28216A348](a1, v6, a3);
}

uint64_t sub_251374940@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a3;
  v62 = a2;
  v63 = a4;
  v65[1] = *MEMORY[0x277D85DE8];
  sub_251375A54(0);
  v61 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251385B74();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251375A88(0);
  v16 = v15;
  v17 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v53 - v23;
  v65[0] = 0;
  v25 = [a1 featureStatusWithError_];
  v26 = v65[0];
  if (v25)
  {
    v65[0] = v25;
    sub_25137405C(0);
    v27 = v26;
    sub_251385C84();
    sub_251374090(&unk_280DF6E90, sub_251375A88, MEMORY[0x277CBCE80]);
    v28 = sub_251385CD4();
    result = (*(v17 + 8))(v24, v16);
  }

  else
  {
    v53 = v16;
    v54 = v17;
    v55 = v11;
    v56 = v21;
    v57 = v10;
    v58 = v9;
    v30 = v62;
    v59 = v6;
    v31 = v65[0];
    v32 = sub_2513849D4();

    swift_willThrow();
    sub_251385B44();
    v33 = v32;
    v34 = sub_251385B64();
    v35 = sub_251385FC4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v65[0] = v37;
      *v36 = 136446466;
      v38 = sub_251386484();
      v40 = sub_251352A00(v38, v39, v65);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue, v64);
      (*(v43 + 16))(&v53 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
      v44 = sub_251385EA4();
      v46 = sub_251352A00(v44, v45, v65);

      *(v36 + 14) = v46;
      _os_log_impl(&dword_25134A000, v34, v35, "[%{public}s] Failed to get initial feature status: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253074E50](v37, -1, -1);
      MEMORY[0x253074E50](v36, -1, -1);
    }

    (*(v55 + 8))(v14, v57);
    v47 = v58;
    v48 = v59;
    v49 = v56;
    v51 = v53;
    v50 = v54;
    if (v30)
    {
      v65[0] = 0;
      sub_25137405C(0);
      sub_251385C84();
      sub_251374090(&unk_280DF6E90, sub_251375A88, MEMORY[0x277CBCE80]);
      v28 = sub_251385CD4();

      result = (*(v50 + 8))(v49, v51);
    }

    else
    {
      sub_25137405C(0);
      sub_251385C94();
      sub_251374090(&qword_27F42CE08, sub_251375A54, MEMORY[0x277CBCE90]);
      v52 = v61;
      v28 = sub_251385CD4();

      result = (*(v48 + 8))(v47, v52);
    }
  }

  *v63 = v28;
  return result;
}

uint64_t sub_251374F38@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2513757D0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v12 = *a1;
    v18 = a2;
    sub_251375188();
    v18 = sub_251385CD4();
    sub_251375A04(0, &qword_280DF6C10, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_251387960;
    *(v13 + 32) = v12;
    sub_25136FFD8(0);
    sub_251374090(&qword_280DF6EC8, sub_25136FFD8, MEMORY[0x277CBCD90]);
    v14 = v12;
    sub_251385CF4();

    sub_251374090(&qword_280DF6FD0, sub_2513757D0, MEMORY[0x277CBCB40]);
    v15 = sub_251385CD4();

    result = (*(v8 + 8))(v11, v7);
  }

  else
  {
    v18 = a2;
    sub_251375188();
    result = sub_251385CD4();
    v15 = result;
  }

  *a3 = v15;
  return result;
}

unint64_t sub_251375188()
{
  result = qword_280DF7720[0];
  if (!qword_280DF7720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DF7720);
  }

  return result;
}

uint64_t sub_2513751E0(uint64_t a1)
{
  result = sub_251385AF4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_25137531C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = MEMORY[0x277D85000];
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v8 = sub_251385AF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - v11;
  v13 = *((v5 & v4) + 0x60);
  sub_25137552C(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v2[v13] = v14;
  sub_251385AE4();
  (*(v9 + 32))(&v2[*((*v3 & *v2) + 0x68)], v12, v8);
  *&v2[*((*v3 & *v2) + 0x70)] = v19;
  v16 = type metadata accessor for HKFeatureStatusPublisher.Inner(0, v6, v7, v15);
  v20.receiver = v2;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_init);
}

void sub_25137552C(uint64_t a1)
{
  if (!qword_280DF6C48)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_251386274();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6C48);
    }
  }
}

unint64_t sub_251375590()
{
  result = qword_280DF7028;
  if (!qword_280DF7028)
  {
    sub_251375A04(255, &qword_280DF7020, MEMORY[0x277D84F78] + 8, MEMORY[0x277D85B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF7028);
  }

  return result;
}

uint64_t sub_251375610(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  sub_251385AD4();
  swift_getWitnessTable();
  v5 = sub_251386424();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - v8;
  v12[1] = a1;
  type metadata accessor for HKFeatureStatusPublisher.Inner(0, v3, v4, v10);
  swift_getWitnessTable();
  sub_251385A94();
  return (*(v6 + 8))(v9, v5);
}

void sub_2513757D0(uint64_t a1)
{
  if (!qword_280DF6FC0)
  {
    sub_2513758BC(255);
    sub_25136FFD8(255);
    sub_251374090(&unk_280DF6F30, sub_2513758BC, MEMORY[0x277CBCD18]);
    sub_251374090(&qword_280DF6EC8, sub_25136FFD8, MEMORY[0x277CBCD90]);
    v1 = sub_251385C04();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6FC0);
    }
  }
}

void sub_2513758BC(uint64_t a1)
{
  if (!qword_280DF6F28)
  {
    sub_25137596C(255);
    sub_251374090(&qword_280DF6E18, sub_25137596C, MEMORY[0x277D83970]);
    v1 = sub_251385C44();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6F28);
    }
  }
}

void sub_2513759A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251375A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251375AFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251385B74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_251386314())
  {
    sub_251385B44();

    v11 = sub_251385B64();
    v12 = sub_251385FC4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_251352A00(0xD000000000000020, 0x8000000251388D00, &v17);
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_251352A00(a1, a2, &v17);
      _os_log_impl(&dword_25134A000, v11, v12, "[%{public}s] Article identifier %{public}s could not be found", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253074E50](v14, -1, -1);
      MEMORY[0x253074E50](v13, -1, -1);
    }

    result = (*(v7 + 8))(v10, v6);
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {

    *(a3 + 24) = &type metadata for AboutBalanceArticleDataProvider;
    *(a3 + 32) = sub_251362A38();
    result = sub_251362A8C();
    *(a3 + 40) = result;
  }

  return result;
}

uint64_t sub_251375D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v4 = sub_251384AB4();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137611C(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_251384CC4();
  v39 = *(v10 - 8);
  v40 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v16 = sub_251384D14();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = v34 - v23;
  v25 = sub_251384D94();
  v26 = *(v25 + 16);
  if (v26)
  {
    v37 = v7;
    v38 = v2;
    v41 = a2;
    v36 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v27 = v25 + v36 + *(v17 + 72) * (v26 - 1);
    v28 = *(v17 + 16);
    v34[1] = *(v17 + 72);
    v35 = v28;
    v28(v21, v27, v16);

    (*(v17 + 32))(v24, v21, v16);
    if ((sub_251384CE4() & 1) != 0 && MEMORY[0x2530730E0]() >= v42)
    {
      sub_251384CD4();
      sub_251384D84();
      sub_251384CB4();
      (*(v39 + 8))(v14, v40);
      sub_251384C84();
      sub_2513761D8(0);
      v30 = v36;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_251386F80;
      v35(v31 + v30, v24, v16);
      a2 = v41;
      sub_251384D74();
      (*(v17 + 8))(v24, v16);
      v29 = 0;
    }

    else
    {
      (*(v17 + 8))(v24, v16);
      v29 = 1;
      a2 = v41;
    }
  }

  else
  {

    v29 = 1;
  }

  v32 = sub_251384DA4();
  return (*(*(v32 - 8) + 56))(a2, v29, 1, v32);
}

void sub_25137611C(uint64_t a1)
{
  if (!qword_280DF6E38)
  {
    sub_251385D34();
    sub_251376180();
    v1 = sub_251385D94();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6E38);
    }
  }
}

unint64_t sub_251376180()
{
  result = qword_280DF6E40;
  if (!qword_280DF6E40)
  {
    sub_251385D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF6E40);
  }

  return result;
}

void sub_2513761D8(uint64_t a1)
{
  if (!qword_27F42CE10)
  {
    sub_251384D14();
    v1 = sub_251386394();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42CE10);
    }
  }
}

void sub_251376278(uint64_t a1)
{
  sub_251384CC4();
  if (v1 <= 0x3F)
  {
    sub_251376304();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251376304()
{
  if (!qword_280DF6E30)
  {
    v0 = sub_251386124();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF6E30);
    }
  }
}

uint64_t sub_25137639C(uint64_t a1)
{
  result = _s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_251376420();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_251376420()
{
  result = qword_280DF6CB8[0];
  if (!qword_280DF6CB8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280DF6CB8);
  }

  return result;
}

uint64_t sub_251376478(uint64_t a1, void *a2, int a3, uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v45 = a6;
  v46 = a5;
  v42 = a4;
  v41 = a3;
  sub_251376E14(0);
  v47 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_251384DA4();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v13);
  v43 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_251384CC4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251376E6C(0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v40[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v40[-v26];
  if (v41)
  {
    *v27 = a2;
    swift_storeEnumTagMultiPayload();
    v28 = a2;
  }

  else
  {
    (*(v16 + 16))(v19, v42, v15);

    sub_251384D74();
    swift_storeEnumTagMultiPayload();
  }

  sub_251376EDC(v27, v24, sub_251376E6C);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = v43;
  v30 = v44;
  if (EnumCaseMultiPayload == 1)
  {
    v32 = *v24;
    *v11 = *v24;
    v33 = v47;
    (*(v8 + 104))(v11, *MEMORY[0x277D112C0], v47);
    v34 = v32;
    v46(v11);

    (*(v8 + 8))(v11, v33);
  }

  else
  {
    (*(v12 + 32))(v43, v24, v44);
    v35 = *(v42 + *(_s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(0) + 20));
    (*(v12 + 16))(v11, v31, v30);
    v36 = (v12 + 8);
    if (v35 == 1)
    {
      v37 = MEMORY[0x277D112C8];
    }

    else
    {
      v37 = MEMORY[0x277D112B8];
    }

    v38 = v47;
    (*(v8 + 104))(v11, *v37, v47);
    v46(v11);
    (*(v8 + 8))(v11, v38);
    (*v36)(v31, v30);
  }

  return sub_251376F44(v27);
}

uint64_t sub_2513768D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_251376C1C(qword_280DF6D58, _s43SleepingSampleDaySummaryCollectionPublisherVMa, &unk_251388E0C);

  return MEMORY[0x28216A2D8](a1, a4, a2, v8, a3);
}

void *sub_2513769B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = _s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251384AB4();
  MEMORY[0x28223BE20](v11 - 8, v12);
  sub_25137611C(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  sub_251384C94();
  sub_251384CB4();
  sub_251376EDC(a1, v10, _s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_251376C64(v10, v17 + v15);
  v18 = (v17 + v16);
  *v18 = v25;
  v18[1] = a3;
  sub_251376D80(0);
  objc_allocWithZone(v19);

  v20 = sub_251384D54();
  v21 = *(a1 + *(v6 + 32) + 8);
  v22 = v20;
  if (v21)
  {
    v21 = sub_251385E34();
  }

  [v20 setDebugIdentifier_];

  return v20;
}

uint64_t sub_251376C1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251376C64(uint64_t a1, uint64_t a2)
{
  v4 = _s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251376CC8(uint64_t a1, void *a2, char a3)
{
  v7 = *(_s43SleepingSampleDaySummaryCollectionPublisherV13ConfigurationVMa(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_251376478(a1, a2, a3 & 1, v3 + v8, v10, v11);
}

void sub_251376D80(uint64_t a1)
{
  if (!qword_280DF7868)
  {
    sub_251384D14();
    sub_251376C1C(&qword_280DF7870, MEMORY[0x277D0FFC8], MEMORY[0x277D0FFC0]);
    v1 = sub_251384D64();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF7868);
    }
  }
}

void sub_251376E14(uint64_t a1)
{
  if (!qword_280DF7828)
  {
    sub_251384DA4();
    v1 = sub_251385A84();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF7828);
    }
  }
}

void sub_251376E6C(uint64_t a1)
{
  if (!qword_280DF6C00)
  {
    sub_251384DA4();
    sub_25136BCE8();
    v1 = sub_251386424();
    if (!v2)
    {
      atomic_store(v1, &qword_280DF6C00);
    }
  }
}

uint64_t sub_251376EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251376F44(uint64_t a1)
{
  sub_251376E6C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251377018@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_251384AD4();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = MEMORY[0x277D10D00];
  }

  else
  {
    v3 = MEMORY[0x277D10CF8];
  }

  v4 = *v3;
  v5 = sub_251385244();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_2513770B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_251385244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251384AD4();
  v8 = MEMORY[0x277D10CF8];
  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x277D10D00];
  }

  (*(v3 + 104))(v6, *v8, v2);
  sub_2513852B4();
  sub_251385284();
  (*(v3 + 8))(v6, v2);
  sub_251377268();
  sub_251385854();
  v9 = sub_251385864();
  return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
}

uint64_t sub_251377268()
{
  v0 = sub_251384A84();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_251385E24();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_251385244();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26[-v11];
  v13 = sub_251384AD4();
  if (v13 == 2 || (v13 & 1) == 0)
  {
    v15 = *(v5 + 104);
    v15(v12, *MEMORY[0x277D10D00], v4);
    v16 = *MEMORY[0x277D10CF8];
  }

  else
  {
    v14 = *MEMORY[0x277D10CF8];
    v15 = *(v5 + 104);
    v15(v12, v14, v4);
    v16 = v14;
  }

  v15(v9, v16, v4);
  sub_251385234();
  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v12, v4);
  sub_25135B828(0, &qword_27F42C988, MEMORY[0x277D837D0]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_251387950;
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = [v20 bundleForClass_];
  sub_251384A74();
  *(v18 + 32) = sub_251385E84();
  *(v18 + 40) = v22;
  sub_251385DB4();
  v23 = [v20 bundleForClass_];
  sub_251384A74();
  *(v18 + 48) = sub_251385E84();
  *(v18 + 56) = v24;
  return v18;
}

id sub_2513776A0()
{
  v1 = sub_251384A84();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_251385E24();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v7 = objc_opt_self();
  v8 = sub_251385E34();

  v9 = [v7 preferenceSpecifierNamed:v8 target:v0 set:sel_setNotificationsEnabled_ get:sel_areNotificationsEnabled detail:0 cell:6 edit:0];

  if (v9)
  {
    v10 = sub_251385E34();
    [v9 setIdentifier_];

    v11 = sub_251385F44();
    [v9 setProperty:v11 forKey:*MEMORY[0x277D3FD80]];
  }

  return v9;
}

id sub_2513778CC(void *a1)
{
  v1 = a1;
  sub_251384AD4();
  v2 = sub_251385F44();

  return v2;
}

void sub_251377924(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 BOOLValue];
  sub_251384AE4();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_251385844();

    sub_251385894();
  }

  else
  {
  }
}

uint64_t sub_251377A10()
{

  v1 = v0 + qword_27F42CE20;

  return sub_2513784AC(v1);
}

uint64_t sub_251377A68(uint64_t a1)
{

  v2 = a1 + qword_27F42CE20;

  return sub_2513784AC(v2);
}

uint64_t sub_251377B6C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F42CE20;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_251385894();
}

void (*sub_251377BD8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F42CE20;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_251377C78;
}

void sub_251377C78(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_251385894();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_251385894();
  }

  free(v3);
}

void (*sub_251377D08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_251385874();
  return sub_2513512D0;
}

uint64_t sub_251377D94()
{
  v0 = sub_2513782D4();
  if (v0)
  {
    v1 = v0;
    v2 = sub_2513776A0();
    if (v2)
    {
      v3 = v2;
      sub_25135B828(0, &qword_280DF6C10, MEMORY[0x277D84F68] + 8);
      result = swift_allocObject();
      *(result + 16) = xmmword_251388E60;
      *(result + 32) = v1;
      *(result + 40) = v3;
      return result;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_251377E10(uint64_t a1, uint64_t a2)
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_2513862C4();
  __break(1u);
  return result;
}

id sub_251377F10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_251377F58(uint64_t a1, char *a2, int a3)
{
  v30 = a2;
  v29[3] = a3;
  v5 = sub_251384A84();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v31 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251385E24();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_2513784D4(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2513853E4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v19(v18, a2, v14);
  v20 = objc_allocWithZone(type metadata accessor for SleepingSampleAnalysisHealthChecklistSettingsDataSource(0));
  *&v20[qword_27F42CE20 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v20[qword_27F42CE18] = a1;
  v19(v13, v18, v14);
  (*(v15 + 56))(v13, 0, 1, v14);

  v21 = sub_2513853D4();
  v22 = *(v15 + 8);
  v22(v18, v14);
  sub_25137852C();
  v23 = v21;
  v24 = sub_2513857C4();
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v27 = sub_251385E34();

  [v24 setTitle_];

  v22(v30, v14);
  return v24;
}

id sub_2513782D4()
{
  v0 = sub_251384A84();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_251385E24();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = objc_opt_self();
  v5 = sub_251385E34();
  v6 = [v4 groupSpecifierWithID_];

  if (v6)
  {
    sub_251385DB4();
    type metadata accessor for HealthBalanceAppPlugin();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_251384A74();
    sub_251385E84();
    v9 = sub_251385E34();

    [v6 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];
  }

  return v6;
}

void sub_2513784D4(uint64_t a1)
{
  if (!qword_27F42CE58)
  {
    sub_2513853E4();
    v1 = sub_251386124();
    if (!v2)
    {
      atomic_store(v1, &qword_27F42CE58);
    }
  }
}

unint64_t sub_25137852C()
{
  result = qword_27F42CE60;
  if (!qword_27F42CE60)
  {
    type metadata accessor for SleepingSampleAnalysisHealthChecklistSettingsDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CE60);
  }

  return result;
}

unint64_t sub_25137859C()
{
  result = qword_280DF77C8;
  if (!qword_280DF77C8)
  {
    type metadata accessor for BalancePromotionFeedItemViewActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF77C8);
  }

  return result;
}

uint64_t sub_25137860C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = sub_251384A84();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_251385E24();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_251385274();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_251385B74();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v12 = sub_251385B64();
  v13 = sub_251385FE4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_251352A00(0xD000000000000020, 0x8000000251388F40, v23);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_251352A00(0xD00000000000001ALL, 0x800000025138B020, v23);
    _os_log_impl(&dword_25134A000, v12, v13, "[%{public}s.%{public}s] creating balance promo tile configuration", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v15, -1, -1);
    MEMORY[0x253074E50](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v22[0] = "SLEEPING_SAMPLE_ANALYSIS_SWITCH";
  sub_251378EB0();
  sub_2513860E4();
  sub_251385264();
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  sub_251385DB4();
  v19 = [v17 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  sub_251385DB4();
  v20 = [v17 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  return sub_251385364();
}

uint64_t sub_251378AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251385B74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v9 = sub_251385B64();
  v10 = sub_251385FE4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_251352A00(0xD000000000000020, 0x8000000251388F40, &v17);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_251352A00(0xD000000000000026, 0x800000025138B040, &v17);
    _os_log_impl(&dword_25134A000, v9, v10, "[%{public}s.%{public}s] customizing promo feed item", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v12, -1, -1);
    MEMORY[0x253074E50](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = sub_251384F94();
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = type metadata accessor for BalancePromotionFeedItemViewActionHandler(0);
  sub_251364A84(v14);
  return sub_251384F74();
}

uint64_t sub_251378D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_251378EFC();

  return MEMORY[0x28216A068](a1, a2, v4);
}

unint64_t sub_251378D80()
{
  result = qword_280DF77D8;
  if (!qword_280DF77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF77D8);
  }

  return result;
}

uint64_t sub_251378DF0(uint64_t a1)
{
  v2 = sub_251378D80();

  return MEMORY[0x282169F70](a1, v2);
}

uint64_t sub_251378E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251378D80();

  return MEMORY[0x282169F68](a1, a2, a3, v6);
}

unint64_t sub_251378EB0()
{
  result = qword_27F42CE68;
  if (!qword_27F42CE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F42CE68);
  }

  return result;
}

unint64_t sub_251378EFC()
{
  result = qword_280DF77E0;
  if (!qword_280DF77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF77E0);
  }

  return result;
}

id _s22HealthBalanceAppPlugin0abC8DelegateC30createDetailRoomViewController3for7contextSo06UIViewJ0CSgSo12HKObjectTypeC_0A12ExperienceUI04DataoG13ConfigurationV7ContextVtF_0(void *a1, uint64_t a2)
{
  v38 = a2;
  v37 = sub_251385B74();
  v36 = *(v37 - 8);
  v4 = MEMORY[0x28223BE20](v37, v3);
  v35[1] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v35 - v7;
  v9 = sub_251385704();
  v35[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2513856F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 identifier];
  v19 = sub_251385E64();
  v21 = v20;

  if (v19 == 0xD00000000000001DLL && 0x800000025138B070 == v21)
  {

LABEL_5:
    (*(v14 + 16))(v17, v38, v13);
    v23 = objc_allocWithZone(type metadata accessor for BalanceRoomViewController(0));
    return BalanceRoomViewController.init(context:)(v17);
  }

  v22 = sub_2513863A4();

  if (v22)
  {
    goto LABEL_5;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_251379648(v42, &v39);
  if (v40)
  {
    sub_25135F0AC(&v39, v41);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    sub_2513858D4();
    v31 = v38;
    sub_251385674();
    (*(v14 + 16))(v17, v31, v13);
    v32 = objc_allocWithZone(sub_251385754());
    v33 = a1;
    v34 = sub_251385734();
    (*(v35[0] + 8))(v12, v9);
    sub_25137972C(v42, &qword_27F42CE70, sub_2513796C8);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    return v34;
  }

  else
  {
    sub_25137972C(&v39, &qword_27F42CE70, sub_2513796C8);
    sub_251385B54();
    v25 = a1;
    v26 = sub_251385B64();
    v27 = sub_251385FC4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_25134A000, v26, v27, "[HealthBalanceAppDelegate] No custom detail view controller or configuration provided for %@", v28, 0xCu);
      sub_25137972C(v29, &qword_280DF6C58, sub_251355EF8);
      MEMORY[0x253074E50](v29, -1, -1);
      MEMORY[0x253074E50](v28, -1, -1);
    }

    (*(v36 + 8))(v8, v37);
    sub_25137972C(v42, &qword_27F42CE70, sub_2513796C8);
    return 0;
  }
}

uint64_t sub_251379648(uint64_t a1, uint64_t a2)
{
  sub_251379788(0, &qword_27F42CE70, sub_2513796C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2513796C8()
{
  result = qword_27F42CE78;
  if (!qword_27F42CE78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42CE78);
  }

  return result;
}

uint64_t sub_25137972C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251379788(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251379788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251386124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2513797DC()
{
  v1 = sub_251384A84();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_251385E24();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v8 = sub_251385E34();

  sub_251385DB4();
  v9 = [v6 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v10 = sub_251385E34();

  v13.receiver = v0;
  v13.super_class = type metadata accessor for BalanceOnboardingNotificationsViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v8, v10, 0, 1);

  return v11;
}

uint64_t sub_2513799FC()
{
  v1 = sub_251384A84();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_251385E24();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BalanceOnboardingNotificationsViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);

  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v8 = sub_251385E34();

  v9 = sub_251385E34();

  sub_251385DB4();
  v10 = [v6 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v11 = sub_251385E34();

  v12 = sub_251385E34();

  sub_2513645B0(0xD00000000000001DLL, 0x800000025138B200);
  return sub_2513860A4();
}

uint64_t sub_251379CF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_251384BD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 navigationController];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  type metadata accessor for BalanceOnboardingNavigationController();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  sub_25137F11C();

  (*(v4 + 104))(v7, *MEMORY[0x277D0FE48], v3);
  v10 = sub_2513808E0(v2, v7);

  result = (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    return result;
  }

  v12 = [v2 navigationController];
  if (!v12)
  {
LABEL_10:
    result = sub_2513862C4();
    __break(1u);
    return result;
  }

  v13 = v12;
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v14 = sub_25137F11C();

  sub_2513547B4(v14 + 16, v17);

  v15 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_2513547B4(v15, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_25136CC94(1);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_251379F54(uint64_t a1, uint64_t a2)
{
  v3 = sub_251384BD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 navigationController];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for BalanceOnboardingNavigationController();
    if (swift_dynamicCastClass())
    {
      sub_25137F11C();

      (*(v4 + 104))(v7, *MEMORY[0x277D0FE38], v3);
      sub_251380F3C(v2, v7);

      (*(v4 + 8))(v7, v3);
      v10 = [v2 navigationController];
      if (v10)
      {
        v11 = v10;
        if (swift_dynamicCastClass())
        {
          v12 = sub_25137F11C();

          sub_2513547B4(v12 + 16, v16);

          v13 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
          sub_2513547B4(v13, v15);
          __swift_project_boxed_opaque_existential_1(v15, v15[3]);
          sub_25136CC94(0);
          __swift_destroy_boxed_opaque_existential_0Tm(v15);
          return __swift_destroy_boxed_opaque_existential_0Tm(v16);
        }
      }
    }

    else
    {
    }
  }

  result = sub_2513862C4();
  __break(1u);
  return result;
}

uint64_t sub_25137A1B0()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  type metadata accessor for BalanceOnboardingNavigationController();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_6;
  }

  v4 = sub_25137F11C();

  sub_2513547B4(v4 + 16, v10);

  v5 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2513547B4(v5, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_25136CC94(2);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  v6 = [v1 navigationController];
  if (v6)
  {
    v3 = v6;
    if (swift_dynamicCastClass())
    {
      sub_25137F11C();

      sub_251380BC8(v1, v7);
    }

LABEL_6:
  }

LABEL_7:
  result = sub_2513862C4();
  __break(1u);
  return result;
}

void sub_25137A338(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_25137A424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_25137A4B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BalanceOnboardingNotificationsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static SleepingSampleHelpTileViewController.bundleClassName.getter(uint64_t a1)
{
  v3 = sub_251384C14();
  MEMORY[0x2530742D0](24366, 0xE200000000000000);
  v1 = sub_251386484();
  MEMORY[0x2530742D0](v1);

  return v3;
}

uint64_t sub_25137A574(uint64_t a1, uint64_t *a2)
{
  sub_25137E640(a1, v6, &qword_27F42C788, sub_25137AC38);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context;
  swift_beginAccess();
  sub_25137E5D4(v6, v3 + v4, &qword_27F42C788, sub_25137AC38);
  swift_endAccess();
  sub_25137A620();
  return sub_25137EA38(v6, &qword_27F42C788, sub_25137AC38);
}

uint64_t sub_25137A620()
{
  v29[2] = swift_getObjectType();
  v1 = sub_251385B74();
  v30 = *(v1 - 8);
  v31 = v1;
  v3 = MEMORY[0x28223BE20](v1, v2);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v29 - v5;
  sub_25137CB38(0, &qword_27F42CEB0, type metadata accessor for SleepingSampleHelpTileConfiguration);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v29 - v9;
  v11 = (v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context);
  result = swift_beginAccess();
  v13 = v11[3];
  if (v13)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v15 = *(v13 - 8);
    MEMORY[0x28223BE20](v14, v14);
    v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    v18 = sub_2513857A4();
    v20 = v19;
    (*(v15 + 8))(v17, v13);
    if (v20 >> 60 == 15)
    {
      sub_251385B44();
      v21 = sub_251385B64();
      v22 = sub_251385FC4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32 = v24;
        *v23 = 136446210;
        v25 = sub_251386484();
        v27 = sub_251352A00(v25, v26, &v32);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_25134A000, v21, v22, "[%{public}s] Could not find userData", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x253074E50](v24, -1, -1);
        MEMORY[0x253074E50](v23, -1, -1);
      }

      return (*(v30 + 8))(v6, v31);
    }

    else
    {
      sub_251384994();
      swift_allocObject();
      sub_251384984();
      v28 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
      sub_25137E3C0(&qword_27F42CF48, type metadata accessor for SleepingSampleHelpTileConfiguration, &unk_251389300);
      sub_251384974();

      (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
      sub_25137AF70(v10);
      return sub_251353D74(v18, v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25137ABC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context;
  swift_beginAccess();
  return sub_25137E640(v1 + v3, a1, &qword_27F42C788, sub_25137AC38);
}

unint64_t sub_25137AC38()
{
  result = qword_27F42C790;
  if (!qword_27F42C790)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42C790);
  }

  return result;
}

uint64_t sub_25137AC9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context;
  swift_beginAccess();
  sub_25137E5D4(a1, v1 + v3, &qword_27F42C788, sub_25137AC38);
  swift_endAccess();
  sub_25137A620();
  return sub_25137EA38(a1, &qword_27F42C788, sub_25137AC38);
}

uint64_t (*sub_25137AD3C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25137ADA0;
}

uint64_t sub_25137ADA0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_25137A620();
  }

  return result;
}

uint64_t sub_25137ADD4()
{
  v0 = sub_251384A84();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_251385E24();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_25137D280();
  sub_25137D704();
  sub_25137DACC();
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  return sub_2513859E4();
}

uint64_t sub_25137AF70(uint64_t a1)
{
  sub_25137CB38(0, &qword_27F42CF40, MEMORY[0x277D111A8]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v20 - v5;
  sub_25137CB38(0, &qword_27F42CEB0, type metadata accessor for SleepingSampleHelpTileConfiguration);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_configuration;
  swift_beginAccess();
  sub_25137E5D4(a1, v1 + v16, &qword_27F42CEB0, type metadata accessor for SleepingSampleHelpTileConfiguration);
  swift_endAccess();
  sub_25137E640(v1 + v16, v10, &qword_27F42CEB0, type metadata accessor for SleepingSampleHelpTileConfiguration);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25137EA38(a1, &qword_27F42CEB0, type metadata accessor for SleepingSampleHelpTileConfiguration);
    return sub_25137EA38(v10, &qword_27F42CEB0, type metadata accessor for SleepingSampleHelpTileConfiguration);
  }

  else
  {
    sub_25137E408(v10, v15, type metadata accessor for SleepingSampleHelpTileConfiguration);
    v18 = sub_25137B264();
    sub_25137ADD4();
    v19 = sub_2513859F4();
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    sub_251385A04();

    sub_25137EA38(a1, &qword_27F42CEB0, type metadata accessor for SleepingSampleHelpTileConfiguration);
    return sub_25137EA94(v15, type metadata accessor for SleepingSampleHelpTileConfiguration);
  }
}

id sub_25137B264()
{
  v1 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController____lazy_storage___tileView);
  }

  else
  {
    v4 = v0;
    sub_251385A14();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_2513859D4();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_2513855E4();

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_25137B424(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_25137E6EC();
  }
}

id SleepingSampleHelpTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_251385E34();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SleepingSampleHelpTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_configuration;
  v8 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController____lazy_storage___tileView] = 0;
  if (a2)
  {
    v9 = sub_251385E34();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for SleepingSampleHelpTileViewController(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id SleepingSampleHelpTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SleepingSampleHelpTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_configuration;
  v5 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController____lazy_storage___tileView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SleepingSampleHelpTileViewController(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id SleepingSampleHelpTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepingSampleHelpTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25137BB40(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_25137E56C(0, &qword_27F42CF20, sub_25137E470, &type metadata for SleepingSampleHelpTileVariant.RefiningBaselineCodingKeys, MEMORY[0x277D84538]);
  v33 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v29 = &v29 - v5;
  sub_25137E56C(0, &qword_27F42CF28, sub_25137E4C4, &type metadata for SleepingSampleHelpTileVariant.EstablishingBaselineCodingKeys, v2);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v32 = &v29 - v8;
  v9 = sub_251384C64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137E56C(0, &qword_27F42CF30, sub_25137E518, &type metadata for SleepingSampleHelpTileVariant.CodingKeys, v2);
  v37 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v29 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25137E518();
  sub_251386444();
  sub_25137E308(v36, v16);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    v39 = 1;
    sub_25137E470();
    v22 = v29;
    v23 = v37;
    sub_251386364();
    (*(v31 + 8))(v22, v33);
    return (*(v18 + 8))(v21, v23);
  }

  else
  {
    v25 = v30;
    (*(v10 + 32))(v30, v16, v9);
    v38 = 0;
    sub_25137E4C4();
    v26 = v32;
    v27 = v37;
    sub_251386364();
    sub_25137E3C0(&qword_27F42CF38, MEMORY[0x277D0FE60], MEMORY[0x277D0FE68]);
    v28 = v35;
    sub_251386374();
    (*(v34 + 8))(v26, v28);
    (*(v10 + 8))(v25, v9);
    return (*(v18 + 8))(v21, v27);
  }
}

uint64_t sub_25137C01C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_25137E56C(0, &qword_27F42CEE8, sub_25137E470, &type metadata for SleepingSampleHelpTileVariant.RefiningBaselineCodingKeys, MEMORY[0x277D844C8]);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v54 = &v45 - v6;
  sub_25137E56C(0, &qword_27F42CEF8, sub_25137E4C4, &type metadata for SleepingSampleHelpTileVariant.EstablishingBaselineCodingKeys, v3);
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v53 = &v45 - v10;
  sub_25137E56C(0, &qword_27F42CF08, sub_25137E518, &type metadata for SleepingSampleHelpTileVariant.CodingKeys, v3);
  v12 = v11;
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v45 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25137E518();
  v24 = v56;
  sub_251386434();
  if (v24)
  {
    goto LABEL_7;
  }

  v46 = v20;
  v47 = v23;
  v25 = v53;
  v26 = v54;
  v56 = a1;
  v27 = sub_251386354();
  v28 = (2 * *(v27 + 16)) | 1;
  v57 = v27;
  v58 = v27 + 32;
  v59 = 0;
  v60 = v28;
  v29 = sub_2513685DC();
  v30 = v12;
  v31 = v15;
  if (v29 == 2 || v59 != v60 >> 1)
  {
    v34 = sub_251386264();
    swift_allocError();
    v36 = v35;
    sub_251368F50(0);
    *v36 = v16;
    sub_251386334();
    sub_251386244();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    (*(v55 + 8))(v15, v12);
    sub_251385894();
    a1 = v56;
LABEL_7:
    v37 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  if (v29)
  {
    v61 = 1;
    sub_25137E470();
    sub_251386324();
    v32 = v52;
    v33 = v55;
    (*(v48 + 8))(v26, v49);
    (*(v33 + 8))(v31, v12);
    sub_251385894();
    v40 = sub_251384C64();
    v41 = v47;
    (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
  }

  else
  {
    v61 = 0;
    sub_25137E4C4();
    sub_251386324();
    v39 = v55;
    v42 = sub_251384C64();
    sub_25137E3C0(&qword_27F42CF18, MEMORY[0x277D0FE60], MEMORY[0x277D0FE70]);
    v43 = v46;
    v44 = v50;
    sub_251386344();
    (*(v51 + 8))(v25, v44);
    (*(v39 + 8))(v31, v30);
    sub_251385894();
    (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
    v41 = v47;
    sub_25137E408(v43, v47, type metadata accessor for SleepingSampleHelpTileVariant);
    v32 = v52;
  }

  sub_25137E408(v41, v32, type metadata accessor for SleepingSampleHelpTileVariant);
  v37 = v56;
  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t sub_25137C704@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  MEMORY[0x28223BE20](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137E56C(0, &qword_27F42CEC0, sub_25137E36C, &type metadata for SleepingSampleHelpTileConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25137E36C();
  v15 = v23;
  sub_251386434();
  if (!v15)
  {
    v16 = v21;
    sub_25137E3C0(&qword_27F42CED0, type metadata accessor for SleepingSampleHelpTileVariant, &unk_251389288);
    v17 = v22;
    sub_251386344();
    (*(v16 + 8))(v10, v7);
    sub_25137E408(v17, v14, type metadata accessor for SleepingSampleHelpTileVariant);
    sub_25137E408(v14, v20, type metadata accessor for SleepingSampleHelpTileConfiguration);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_25137C9C4(uint64_t a1)
{
  sub_25137CB38(319, &qword_27F42CEB0, type metadata accessor for SleepingSampleHelpTileConfiguration);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25137CB38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251386124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25137CBD4(uint64_t a1)
{
  result = type metadata accessor for SleepingSampleHelpTileVariant(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25137CC68(uint64_t a1)
{
  v1 = sub_251384C64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_25137CCD8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_25137CD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000014 && 0x800000025138B3D0 == a2;
  if (v5 || (sub_2513863A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025138B3F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2513863A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25137CE04(uint64_t a1)
{
  v2 = sub_25137E518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25137CE40(uint64_t a1)
{
  v2 = sub_25137E518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25137CE7C(uint64_t a1)
{
  v2 = sub_25137E4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25137CEB8(uint64_t a1)
{
  v2 = sub_25137E4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25137CEF4(uint64_t a1)
{
  v2 = sub_25137E470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25137CF30(uint64_t a1)
{
  v2 = sub_25137E470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25137CFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2513863A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25137D040(uint64_t a1)
{
  v2 = sub_25137E36C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25137D07C(uint64_t a1)
{
  v2 = sub_25137E36C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25137D0D4(void *a1)
{
  sub_25137E56C(0, &qword_27F42CED8, sub_25137E36C, &type metadata for SleepingSampleHelpTileConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25137E36C();
  sub_251386444();
  type metadata accessor for SleepingSampleHelpTileVariant(0);
  sub_25137E3C0(&qword_27F42CEE0, type metadata accessor for SleepingSampleHelpTileVariant, &unk_251389260);
  sub_251386374();
  return (*(v4 + 8))(v7, v3);
}

id sub_25137D280()
{
  v1 = sub_251385B14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251384C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137E308(v0, v14);
  if ((*(v7 + 48))(v14, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v14, v6);
    v18 = sub_251384C54();
    sub_251353F88(0, &qword_27F42C7D0, 0x277D755B8);
    if (v18 > 3)
    {
      switch(v18)
      {
        case 4:
          if (qword_27F42C758 != -1)
          {
            swift_once();
          }

          v19 = qword_27F42D0C0;
          goto LABEL_31;
        case 5:
          if (qword_27F42C760 != -1)
          {
            swift_once();
          }

          v19 = qword_27F42D0D8;
          goto LABEL_31;
        case 6:
          if (qword_27F42C768 != -1)
          {
            swift_once();
          }

          v19 = qword_27F42D0F0;
          goto LABEL_31;
      }
    }

    else
    {
      switch(v18)
      {
        case 1:
          if (qword_27F42C740 != -1)
          {
            swift_once();
          }

          v19 = qword_27F42D078;
          goto LABEL_31;
        case 2:
          if (qword_27F42C748 != -1)
          {
            swift_once();
          }

          v19 = qword_27F42D090;
          goto LABEL_31;
        case 3:
          if (qword_27F42C750 != -1)
          {
            swift_once();
          }

          v19 = qword_27F42D0A8;
LABEL_31:
          v20 = __swift_project_value_buffer(v1, v19);
          (*(v2 + 16))(v5, v20, v1);
          v17 = sub_2513860D4();
          (*(v7 + 8))(v10, v6);
          return v17;
      }
    }

    if (qword_27F42C738 != -1)
    {
      swift_once();
    }

    v19 = qword_27F42D060;
    goto LABEL_31;
  }

  sub_251353F88(0, &qword_27F42CE68, 0x277CCA8D8);
  v15 = sub_2513860E4();
  v16 = sub_251385E34();
  v17 = [objc_opt_self() imageNamed:v16 inBundle:v15];

  return v17;
}

uint64_t sub_25137D704()
{
  v1 = sub_251384A84();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_251385E24();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_251385E04();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_251384C64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137E308(v0, v15);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    sub_251385DB4();
    type metadata accessor for HealthBalanceAppPlugin();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    sub_251384A74();
    return sub_251385E84();
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    sub_251385DF4();
    sub_251385DE4();
    v19 = sub_251384C34();
    result = sub_251384C54();
    if (__OFSUB__(v19, result))
    {
      __break(1u);
    }

    else
    {
      v23[2] = v19 - result;
      sub_251385DC4();
      sub_251385DE4();
      sub_251385E14();
      type metadata accessor for HealthBalanceAppPlugin();
      v20 = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      sub_251384A74();
      v22 = sub_251385E84();
      (*(v8 + 8))(v11, v7);
      return v22;
    }
  }

  return result;
}

uint64_t sub_25137DACC()
{
  v1 = sub_251384A84();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_251385E24();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137E308(v0, v8);
  v9 = sub_251384C64();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_251385DB4();
    type metadata accessor for HealthBalanceAppPlugin();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_251384A74();
    return sub_251385E84();
  }

  else
  {
    sub_251385DB4();
    type metadata accessor for HealthBalanceAppPlugin();
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_251384A74();
    v15 = sub_251385E84();
    sub_25137EA94(v8, type metadata accessor for SleepingSampleHelpTileVariant);
    return v15;
  }
}

uint64_t sub_25137DD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251384C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137E2A4(0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_25137E308(a1, v17);
  sub_25137E308(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    v20 = 1;
    v21 = v19(&v17[v18], 1, v4);
    v22 = type metadata accessor for SleepingSampleHelpTileVariant;
    if (v21 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_25137E308(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = sub_251384C44();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      v22 = type metadata accessor for SleepingSampleHelpTileVariant;
      goto LABEL_8;
    }

    (*(v5 + 8))(v12, v4);
  }

  v20 = 0;
  v22 = sub_25137E2A4;
LABEL_8:
  sub_25137EA94(v17, v22);
  return v20 & 1;
}

uint64_t sub_25137DFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251384C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25137E2A4(0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_25137E308(a1, v17);
  sub_25137E308(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    v20 = v19(&v17[v18], 1, v4);
    v21 = sub_25137E2A4;
    if (v20 == 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v22 = 0;
    goto LABEL_8;
  }

  sub_25137E308(v17, v12);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    v22 = 0;
    v21 = sub_25137E2A4;
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  v23 = sub_251384C44();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  v21 = type metadata accessor for SleepingSampleHelpTileVariant;
  if ((v23 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v22 = 1;
  v21 = type metadata accessor for SleepingSampleHelpTileVariant;
LABEL_8:
  sub_25137EA94(v17, v21);
  return v22;
}

void sub_25137E2A4(uint64_t a1)
{
  if (!qword_27F42CEB8)
  {
    type metadata accessor for SleepingSampleHelpTileVariant(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42CEB8);
    }
  }
}

uint64_t sub_25137E308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleHelpTileVariant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25137E36C()
{
  result = qword_27F42CEC8;
  if (!qword_27F42CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CEC8);
  }

  return result;
}

uint64_t sub_25137E3C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25137E408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25137E470()
{
  result = qword_27F42CEF0;
  if (!qword_27F42CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CEF0);
  }

  return result;
}

unint64_t sub_25137E4C4()
{
  result = qword_27F42CF00;
  if (!qword_27F42CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF00);
  }

  return result;
}

unint64_t sub_25137E518()
{
  result = qword_27F42CF10;
  if (!qword_27F42CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF10);
  }

  return result;
}

void sub_25137E56C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_25137E5D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25137CB38(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_25137E640(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25137CB38(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_25137E6EC()
{
  v0 = sub_251384A84();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_251385E24();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_25137CB38(0, &qword_27F42C978, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19[-v6];
  v8 = sub_251384A34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  sub_251384A24();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25137EA38(v7, &qword_27F42C978, MEMORY[0x277CC9260]);
  }

  (*(v9 + 32))(v12, v7, v8);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v16 = result;
    v17 = sub_251384A04();
    sub_2513736EC(MEMORY[0x277D84F90]);
    v18 = sub_251385D74();

    [v16 openSensitiveURL:v17 withOptions:v18];

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25137EA38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25137CB38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25137EA94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for SleepingSampleHelpTileVariant.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepingSampleHelpTileVariant.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25137EC84()
{
  result = qword_27F42CF50;
  if (!qword_27F42CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF50);
  }

  return result;
}

unint64_t sub_25137ECDC()
{
  result = qword_27F42CF58;
  if (!qword_27F42CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF58);
  }

  return result;
}

unint64_t sub_25137ED34()
{
  result = qword_27F42CF60;
  if (!qword_27F42CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF60);
  }

  return result;
}

unint64_t sub_25137ED8C()
{
  result = qword_27F42CF68;
  if (!qword_27F42CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF68);
  }

  return result;
}

unint64_t sub_25137EDE4()
{
  result = qword_27F42CF70;
  if (!qword_27F42CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF70);
  }

  return result;
}

unint64_t sub_25137EE3C()
{
  result = qword_27F42CF78;
  if (!qword_27F42CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF78);
  }

  return result;
}

unint64_t sub_25137EE94()
{
  result = qword_27F42CF80;
  if (!qword_27F42CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF80);
  }

  return result;
}

unint64_t sub_25137EEEC()
{
  result = qword_27F42CF88;
  if (!qword_27F42CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF88);
  }

  return result;
}

unint64_t sub_25137EF44()
{
  result = qword_27F42CF90;
  if (!qword_27F42CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF90);
  }

  return result;
}

unint64_t sub_25137EF9C()
{
  result = qword_27F42CF98;
  if (!qword_27F42CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CF98);
  }

  return result;
}

unint64_t sub_25137EFF4()
{
  result = qword_27F42CFA0;
  if (!qword_27F42CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CFA0);
  }

  return result;
}

id BalanceOnboardingNavigationController.__allocating_init(healthStore:presentationContext:)(uint64_t a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  *&v5[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController____lazy_storage___coordinator] = 0;
  *&v5[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_healthStore] = a1;
  v5[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_presentationContext] = v6;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall BalanceOnboardingNavigationController.prepareForPresentation()()
{
  v1 = sub_25137F11C();
  sub_2513811E0(v1, v2);

  [v0 setModalPresentationStyle_];
}

uint64_t sub_25137F11C()
{
  v1 = OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController____lazy_storage___coordinator;
  if (*(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController____lazy_storage___coordinator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController____lazy_storage___coordinator);
  }

  else
  {
    v2 = sub_25137F184(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_25137F184(uint64_t a1)
{
  v2 = sub_251384E04();
  v3 = *(a1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_healthStore);
  sub_251353F88(0, &qword_27F42CFC0, 0x277D85C78);
  v4 = v3;
  sub_251386094();
  v5 = [objc_opt_self() allContexts];
  v6 = v4;
  v7 = sub_251384DF4();
  v27 = v2;
  v28 = sub_25137F9E4();
  v26[0] = v7;
  v29[3] = &type metadata for BalanceOnboardingManager;
  v29[4] = &off_2863618F8;
  v8 = swift_allocObject();
  v29[0] = v8;
  *(v8 + 56) = v6;
  sub_2513547B4(v26, v8 + 16);
  v9 = v6;
  sub_251384E34();
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  sub_251353F88(0, &qword_27F42CFD0, 0x277D86200);
  v10 = sub_251386114();
  v11 = objc_allocWithZone(MEMORY[0x277CCCFE8]);
  v12 = [v11 initWithLoggingCategory:v10 healthDataSource:{v9, v26[0]}];

  v13 = objc_allocWithZone(MEMORY[0x277D62528]);
  v14 = v9;
  v15 = sub_251385E34();
  v16 = [v13 initWithIdentifier:v15 healthStore:v14];

  v17 = *(a1 + OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_presentationContext);
  v27 = &type metadata for BalanceOnboardingModel;
  v28 = &off_286361490;
  v26[0] = swift_allocObject();
  sub_25137FA3C(v29, v26[0] + 16);
  type metadata accessor for BalanceOnboardingCoordinator();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v26, &type metadata for BalanceOnboardingModel);
  MEMORY[0x28223BE20](v19, v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  *(v18 + 40) = &type metadata for BalanceOnboardingModel;
  *(v18 + 48) = &off_286361490;
  v23 = swift_allocObject();
  *(v18 + 16) = v23;
  v24 = *(v21 + 1);
  *(v23 + 16) = *v21;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(v21 + 4);
  *(v18 + 56) = v12;
  *(v18 + 64) = v14;
  *(v18 + 72) = v16;
  *(v18 + 80) = v17;
  swift_unknownObjectUnownedInit();
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  sub_25137FA98(v29);
  return v18;
}

id BalanceOnboardingNavigationController.init(healthStore:presentationContext:)(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  *&v2[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController____lazy_storage___coordinator] = 0;
  *&v2[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_healthStore] = a1;
  v2[OBJC_IVAR____TtC22HealthBalanceAppPlugin37BalanceOnboardingNavigationController_presentationContext] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id BalanceOnboardingNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id BalanceOnboardingNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id BalanceOnboardingNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_251385E34();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_25137F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id BalanceOnboardingNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25137F9E4()
{
  result = qword_27F42CFC8;
  if (!qword_27F42CFC8)
  {
    sub_251384E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CFC8);
  }

  return result;
}

uint64_t sub_25137FAEC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = sub_251385B74();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251384B74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v34 - v18;
  v20 = *(v8 + 16);
  v20(&v34 - v18, a1, v7);
  v21 = (*(v8 + 88))(v19, v7);
  if (v21 == *MEMORY[0x277D0FDF8])
  {
    result = (*(v8 + 8))(a1, v7);
    v23 = 2;
  }

  else if (v21 == *MEMORY[0x277D0FE00])
  {
    result = (*(v8 + 8))(a1, v7);
    v23 = 7;
  }

  else
  {
    v37 = v3;
    sub_251385B44();
    v20(v16, a1, v7);
    v24 = sub_251385B64();
    v36 = sub_251385FD4();
    v38 = v24;
    if (os_log_type_enabled(v24, v36))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v25 = 136446466;
      *(v25 + 4) = sub_251352A00(0xD000000000000024, 0x80000002513897F0, &v41);
      *(v25 + 12) = 2082;
      v20(v12, v16, v7);
      v34 = sub_251385E94();
      v27 = v26;
      v28 = *(v8 + 8);
      v28(v16, v7);
      v29 = sub_251352A00(v34, v27, &v41);

      v30 = v25;
      *(v25 + 14) = v29;
      v31 = v38;
      _os_log_impl(&dword_25134A000, v38, v36, "[%{public}s] unknown url source: %{public}s", v30, 0x16u);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x253074E50](v32, -1, -1);
      MEMORY[0x253074E50](v30, -1, -1);

      v33 = a1;
    }

    else
    {

      v28 = *(v8 + 8);
      v28(a1, v7);
      v33 = v16;
    }

    v28(v33, v7);
    (*(v39 + 8))(v6, v37);
    result = (v28)(v19, v7);
    v23 = 6;
  }

  *v40 = v23;
  return result;
}

id sub_25137FF04()
{
  v1 = sub_251385B74();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v0;
  if (v7 > 3)
  {
    if (*v0 > 5u)
    {
      if (v7 == 6)
      {
        v12 = v4;
        sub_251385B44();
        v13 = sub_251385B64();
        v14 = sub_251385FD4();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v27 = v16;
          *v15 = 136446466;
          *(v15 + 4) = sub_251352A00(0xD000000000000024, 0x80000002513897F0, &v27);
          *(v15 + 12) = 2082;
          v26[7] = 6;
          v17 = sub_251385E94();
          v19 = sub_251352A00(v17, v18, &v27);

          *(v15 + 14) = v19;
          _os_log_impl(&dword_25134A000, v13, v14, "[%{public}s] unknown presentation context: %{public}s", v15, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253074E50](v16, -1, -1);
          MEMORY[0x253074E50](v15, -1, -1);
        }

        (*(v2 + 8))(v6, v12);
        v10 = MEMORY[0x277D62100];
      }

      else
      {
        v10 = MEMORY[0x277D620D8];
      }
    }

    else
    {
      v11 = v7 == 4;
      v10 = MEMORY[0x277D620F0];
      if (!v11)
      {
        v10 = MEMORY[0x277D620F8];
      }
    }
  }

  else
  {
    v8 = MEMORY[0x277D620E0];
    v9 = MEMORY[0x277D620D8];
    if (v7 != 2)
    {
      v9 = MEMORY[0x277D620E8];
    }

    if (*v0)
    {
      v8 = MEMORY[0x277D620F0];
    }

    if (*v0 <= 1u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }
  }

  v20 = *v10;
  v21 = *MEMORY[0x277D62110];
  v22 = objc_allocWithZone(MEMORY[0x277D624B0]);
  v23 = v20;
  v24 = [v22 initWithSource:v21 presentation:v23];

  return v24;
}

uint64_t sub_2513801D0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_251385B74();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251385464();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - v15;
  v17 = *(v9 + 16);
  v17(&v34 - v15, a1, v8);
  v18 = (*(v9 + 88))(v16, v8);
  if (v18 == *MEMORY[0x277D10E40])
  {
    result = (*(v9 + 8))(a1, v8);
    v20 = 5;
  }

  else if (v18 == *MEMORY[0x277D10E60])
  {
    result = (*(v9 + 8))(a1, v8);
    v20 = 4;
  }

  else if (v18 == *MEMORY[0x277D10E68])
  {
    result = (*(v9 + 8))(a1, v8);
    v20 = 1;
  }

  else if (v18 == *MEMORY[0x277D10E58])
  {
    result = (*(v9 + 8))(a1, v8);
    v20 = 0;
  }

  else if (v18 == *MEMORY[0x277D10E48])
  {
    result = (*(v9 + 8))(a1, v8);
    v20 = 3;
  }

  else
  {
    sub_251385B44();
    v17(v13, a1, v8);
    v21 = sub_251385B64();
    v22 = sub_251385FD4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v22;
      v24 = v23;
      v37 = swift_slowAlloc();
      v41 = v37;
      *v24 = 136446466;
      v25 = sub_251352A00(0xD000000000000024, 0x80000002513897F0, &v41);
      v38 = v24;
      *(v24 + 4) = v25;
      *(v24 + 12) = 2082;
      sub_251380888();
      v39 = v21;
      v35 = sub_251386384();
      v27 = v26;
      v28 = *(v9 + 8);
      v28(v13, v8);
      v35 = sub_251352A00(v35, v27, &v41);

      v30 = v38;
      v29 = v39;
      *(v38 + 14) = v35;
      v31 = v28;
      _os_log_impl(&dword_25134A000, v29, v36, "[%{public}s] unknown presentation context: %{public}s", v30, 0x16u);
      v32 = v37;
      swift_arrayDestroy();
      MEMORY[0x253074E50](v32, -1, -1);
      MEMORY[0x253074E50](v38, -1, -1);

      v33 = a1;
    }

    else
    {

      v31 = *(v9 + 8);
      v31(a1, v8);
      v33 = v13;
    }

    v31(v33, v8);
    (*(v40 + 8))(v7, v4);
    result = (v31)(v16, v8);
    v20 = 6;
  }

  *a2 = v20;
  return result;
}

uint64_t BalanceOnboardingPresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_2513863F4();
  MEMORY[0x2530747F0](v1);
  return sub_251386414();
}

unint64_t sub_2513806E4()
{
  result = qword_27F42CFD8;
  if (!qword_27F42CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CFD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BalanceOnboardingPresentationContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BalanceOnboardingPresentationContext(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_251380888()
{
  result = qword_27F42CAA8;
  if (!qword_27F42CAA8)
  {
    sub_251385464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42CAA8);
  }

  return result;
}

uint64_t sub_2513808E0(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = sub_251385B74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BalanceOnboardingIntroViewController();
  if (swift_dynamicCastClass())
  {
    v10 = 0;
  }

  else
  {
    type metadata accessor for BalanceOnboardingNotificationsViewController();
    if (swift_dynamicCastClass())
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  sub_251385B44();
  v11 = sub_251385B64();
  v12 = sub_251385FE4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446466;
    v16 = sub_251386484();
    v18 = sub_251352A00(v16, v17, &v29);
    v26 = v5;
    v19 = a2;
    v20 = v18;

    *(v14 + 4) = v20;
    *(v14 + 12) = 2082;
    v28 = v10;
    v21 = sub_251385E94();
    v23 = sub_251352A00(v21, v22, &v29);
    a2 = v19;

    *(v14 + 14) = v23;
    _os_log_impl(&dword_25134A000, v11, v12, "[%{public}s] primary button tapped from stage %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v15, -1, -1);
    MEMORY[0x253074E50](v14, -1, -1);

    (*(v27 + 8))(v9, v26);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_2513816FC(a2, v10);
  v24 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  if (v10 == 1 && (__swift_project_boxed_opaque_existential_1(v24, v24[3]), (sub_25136CAC8() & 1) == 0))
  {
    sub_251382410();
    return 0;
  }

  else
  {
    sub_251381D14(v10);
    return 1;
  }
}

void sub_251380BC8(uint64_t a1, uint64_t a2)
{
  v31 = *v2;
  v3 = sub_251384BD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251385B74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BalanceOnboardingIntroViewController();
  if (swift_dynamicCastClass())
  {
    v13 = 0;
  }

  else
  {
    type metadata accessor for BalanceOnboardingNotificationsViewController();
    if (swift_dynamicCastClass())
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  sub_251385B44();
  v14 = sub_251385B64();
  v15 = sub_251385FE4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = v8;
    v19 = v18;
    v33 = v18;
    *v17 = 136446466;
    v20 = sub_251386484();
    v30 = v7;
    v21 = v13;
    v23 = sub_251352A00(v20, v22, &v33);
    v31 = v4;
    v24 = v23;

    *(v17 + 4) = v24;
    *(v17 + 12) = 2082;
    v32 = v13;
    v25 = sub_251385E94();
    v27 = sub_251352A00(v25, v26, &v33);
    v4 = v31;

    *(v17 + 14) = v27;
    v13 = v21;
    v7 = v30;
    _os_log_impl(&dword_25134A000, v14, v15, "[%{public}s] cancel button tapped from stage %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v19, -1, -1);
    MEMORY[0x253074E50](v17, -1, -1);

    (*(v29 + 8))(v12, v28);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*(v4 + 104))(v7, *MEMORY[0x277D0FE40], v3);
  sub_2513816FC(v7, v13);
  (*(v4 + 8))(v7, v3);
  sub_251382B58();
}

void sub_251380F3C(uint64_t a1, char *a2)
{
  v3 = sub_251385B74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BalanceOnboardingIntroViewController();
  if (swift_dynamicCastClass())
  {
    v8 = 0;
  }

  else
  {
    type metadata accessor for BalanceOnboardingNotificationsViewController();
    if (swift_dynamicCastClass())
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  sub_251385B44();
  v9 = sub_251385B64();
  v10 = sub_251385FE4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446466;
    v14 = sub_251386484();
    v16 = sub_251352A00(v14, v15, &v25);
    v22 = v3;
    v17 = a2;
    v18 = v16;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    v24 = v8;
    v19 = sub_251385E94();
    v21 = sub_251352A00(v19, v20, &v25);
    a2 = v17;

    *(v12 + 14) = v21;
    _os_log_impl(&dword_25134A000, v9, v10, "[%{public}s] secondary button tapped from stage %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v13, -1, -1);
    MEMORY[0x253074E50](v12, -1, -1);

    (*(v23 + 8))(v7, v22);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  sub_2513816FC(a2, v8);
  sub_251381D14(v8);
}

void sub_2513811E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_251384BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251385B74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v13 = sub_251385B64();
  v14 = sub_251385FE4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v43 = v5;
    v18 = v17;
    v49[0] = v17;
    *v16 = 136446210;
    v19 = sub_251386484();
    v21 = sub_251352A00(v19, v20, v49);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_25134A000, v13, v14, "[%{public}s] setting up navigation controller", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v22 = v18;
    v5 = v43;
    MEMORY[0x253074E50](v22, -1, -1);
    v23 = v16;
    v4 = v44;
    MEMORY[0x253074E50](v23, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v24 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2513547B4(v24, v49);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v49, v49[3]);
  MEMORY[0x28223BE20](v25, v25);
  v27 = (&v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v47 = &type metadata for BalanceOnboardingManager;
  v48 = &off_2863618F8;
  v29 = swift_allocObject();
  v46[0] = v29;
  v30 = v27[1];
  v29[1] = *v27;
  v29[2] = v30;
  v29[3] = v27[2];
  v31 = objc_allocWithZone(type metadata accessor for BalanceOnboardingIntroViewController());
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  MEMORY[0x28223BE20](v32, v32);
  v34 = (&v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = sub_251354868(v34, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  v37 = v45;
  (*(v5 + 104))(v45, *MEMORY[0x277D0FE50], v4);
  sub_2513816FC(v37, 0);
  (*(v5 + 8))(v37, v4);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_2513845FC(0, &qword_280DF6C10, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_251387960;
  *(v39 + 32) = v36;
  sub_25138464C();
  v40 = v36;
  v41 = sub_251385F14();

  [Strong setViewControllers:v41 animated:0];
}

uint64_t sub_2513816FC(char *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_251384BC4();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v64 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251384BB4();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v60 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251384BD4();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v50 - v23;
  v25 = sub_251385B74();
  v55 = *(v25 - 8);
  v56 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v29 = *(v14 + 16);
  v61 = a1;
  v65 = v29;
  v29(v24, a1, v13);
  v30 = sub_251385B64();
  v54 = sub_251385FE4();
  if (os_log_type_enabled(v30, v54))
  {
    v31 = swift_slowAlloc();
    v52 = v3;
    v32 = v31;
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v32 = 136446722;
    v33 = sub_251386484();
    v53 = v6;
    v35 = sub_251352A00(v33, v34, aBlock);
    v51 = a2;
    a2 = v35;

    *(v32 + 4) = a2;
    *(v32 + 12) = 2082;
    v65(v21, v24, v13);
    v36 = sub_251385E94();
    v38 = v37;
    (*(v14 + 8))(v24, v13);
    v39 = sub_251352A00(v36, v38, aBlock);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2082;
    LOBYTE(a2) = v51;
    v66 = v51;
    v40 = sub_251385E94();
    v42 = sub_251352A00(v40, v41, aBlock);
    v6 = v53;

    *(v32 + 24) = v42;
    _os_log_impl(&dword_25134A000, v30, v54, "[%{public}s] submitting action %{public}s for stage %{public}s", v32, 0x20u);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x253074E50](v43, -1, -1);
    v44 = v32;
    v3 = v52;
    MEMORY[0x253074E50](v44, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v24, v13);
  }

  (*(v55 + 8))(v28, v56);
  v65(v57, v61, v13);
  (*(v58 + 104))(v60, **(&unk_2796B7218 + *(v3 + 80)), v59);
  (*(v62 + 104))(v64, **(&unk_2796B7258 + a2), v63);
  sub_251384BF4();
  swift_allocObject();
  v45 = sub_251384BE4();
  v46 = v3[7];
  v47 = swift_allocObject();
  *(v47 + 16) = v6;
  aBlock[4] = sub_2513844E0;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251355900;
  aBlock[3] = &block_descriptor_0;
  v48 = _Block_copy(aBlock);

  [v46 submitEvent:v45 completion:v48];
  _Block_release(v48);
}

void sub_251381D14(char a1)
{
  v2 = v1;
  v71 = *v2;
  v4 = sub_251385B74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v69 = &v68 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v68 - v14;
  v16 = sub_251384BD4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v70 = v9;
  if (a1)
  {
    if (a1 != 1 || (__swift_project_boxed_opaque_existential_1(v21, v21[3]), (sub_25136CAD4() & 1) != 0))
    {
      LODWORD(v22) = 3;
      goto LABEL_8;
    }

    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  (*(v17 + 104))(v20, *MEMORY[0x277D0FE50], v16);
  sub_2513816FC(v20, v22);
  (*(v17 + 8))(v20, v16);
LABEL_8:
  sub_251385B44();
  v23 = sub_251385B64();
  v24 = sub_251385FE4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v73[0] = v26;
    *v25 = 136446466;
    v27 = sub_251386484();
    v29 = sub_251352A00(v27, v28, v73);
    v68 = v2;
    v30 = v5;
    v31 = v4;
    v32 = v29;

    *(v25 + 4) = v32;
    *(v25 + 12) = 2082;
    v72 = v22;
    sub_2513845FC(0, &qword_27F42CFE0, &type metadata for BalanceOnboardingStage, MEMORY[0x277D83D88]);
    v33 = sub_251385E94();
    v35 = sub_251352A00(v33, v34, v73);

    *(v25 + 14) = v35;
    v4 = v31;
    v5 = v30;
    v2 = v68;
    _os_log_impl(&dword_25134A000, v23, v24, "[%{public}s] navigating to next stage: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v26, -1, -1);
    MEMORY[0x253074E50](v25, -1, -1);
  }

  v36 = *(v5 + 8);
  v36(v15, v4);
  if (v22 == 1)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    v47 = sub_251354590(1u);
    if (v47)
    {
      v48 = v47;
      Strong = swift_unknownObjectUnownedLoadStrong();
      [Strong pushViewController:v48 animated:1];
    }
  }

  else if (v22 == 2)
  {
    v37 = v69;
    sub_251385B44();
    v38 = sub_251385B64();
    v39 = sub_251385FE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v73[0] = v41;
      *v40 = 136446210;
      v42 = sub_251386484();
      v71 = v4;
      v44 = sub_251352A00(v42, v43, v73);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_25134A000, v38, v39, "[%{public}s] vitals onboarding complete, favoriting balance type and pushing sleep onboarding", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x253074E50](v41, -1, -1);
      MEMORY[0x253074E50](v40, -1, -1);

      v45 = v37;
      v46 = v71;
    }

    else
    {

      v45 = v37;
      v46 = v4;
    }

    v36(v45, v46);
    v60 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    sub_2513547B4(v60, v73);
    __swift_project_boxed_opaque_existential_1(v73, v75);
    sub_25136CEA8();
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v62 = *(v2 + 64);
    v63 = *(v2 + 80);
    v73[0] = *(v2 + 72);
    v61 = v73[0];
    v73[1] = v62;
    v74 = v63;
    v64 = swift_unknownObjectUnownedLoadStrong();
    v65 = v61;
    v66 = v62;
    sub_251362DAC(v64);
  }

  else
  {
    v50 = v70;
    sub_251385B44();
    v51 = sub_251385B64();
    v52 = sub_251385FE4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v73[0] = v54;
      *v53 = 136446210;
      v55 = sub_251386484();
      v71 = v4;
      v57 = sub_251352A00(v55, v56, v73);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_25134A000, v51, v52, "[%{public}s] vitals onboarding complete, favoriting balance type", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x253074E50](v54, -1, -1);
      MEMORY[0x253074E50](v53, -1, -1);

      v58 = v50;
      v59 = v71;
    }

    else
    {

      v58 = v50;
      v59 = v4;
    }

    v36(v58, v59);
    v67 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    sub_2513547B4(v67, v73);
    __swift_project_boxed_opaque_existential_1(v73, v75);
    sub_25136CEA8();
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    if (*(v2 + 80) && *(v2 + 80) != 3)
    {
      sub_251382F08();
    }

    else
    {
      sub_251382B58();
    }
  }
}

void sub_251382410()
{
  v0 = sub_251384A84();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_251385E24();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_251385B74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v9 = sub_251385B64();
  v10 = sub_251385FE4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446466;
    v13 = sub_251386484();
    v15 = sub_251352A00(v13, v14, aBlock);
    v40 = v4;
    v16 = v15;

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = sub_251385E94();
    v19 = sub_251352A00(v17, v18, aBlock);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_25134A000, v9, v10, "[%{public}s] presenting alert for reason: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253074E50](v12, -1, -1);
    MEMORY[0x253074E50](v11, -1, -1);

    (*(v5 + 8))(v8, v40);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  sub_251384A74();
  v40 = sub_251385E84();
  sub_251385DB4();
  v23 = [v21 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v24 = sub_251385E34();

  v25 = objc_opt_self();
  v26 = [v25 actionWithTitle:v24 style:1 handler:0];

  sub_251385DB4();
  v27 = [v21 bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v28 = sub_251385E34();

  aBlock[4] = sub_251382DB4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251382D4C;
  aBlock[3] = &block_descriptor_12;
  v29 = _Block_copy(aBlock);

  v30 = [v25 actionWithTitle:v28 style:0 handler:v29];
  _Block_release(v29);

  sub_2513845FC(0, &qword_280DF6C10, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251388E60;
  *(inited + 32) = v26;
  *(inited + 40) = v30;
  v32 = sub_251385E34();

  v33 = [objc_opt_self() alertControllerWithTitle:v32 message:0 preferredStyle:1];

  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x253074620](0, inited))
  {
    v35 = i;
    sub_251385F74();
    sub_251385F64();
    sub_251385F54();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    [v33 addAction_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v36 = *(inited + 40);
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v36 = MEMORY[0x253074620](1, inited);
LABEL_12:
  v37 = v36;
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v33 addAction_];

  swift_setDeallocating();
  swift_arrayDestroy();
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong presentViewController:v33 animated:1 completion:0];
}

void sub_251382B58()
{
  v0 = sub_251385B74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v5 = sub_251385B64();
  v6 = sub_251385FE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_251386484();
    v11 = sub_251352A00(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25134A000, v5, v6, "[%{public}s] dismissing navigation controller", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x253074E50](v8, -1, -1);
    MEMORY[0x253074E50](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong dismissViewControllerAnimated:1 completion:0];
}

void sub_251382D4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_251382DB4()
{
  v0 = sub_251385224();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v1 + 104))(v4, *MEMORY[0x277D10CD8], v0);
  sub_251385214();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_251382F08()
{
  sub_251371984(0, &qword_27F42C9B8, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v57 = &v47 - v2;
  v3 = sub_251384B74();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251371984(0, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v54 = &v47 - v9;
  v56 = sub_251384BA4();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v10);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_251384A34();
  v12 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v13);
  v59 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251385B74();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251385B44();
  v20 = sub_251385B64();
  v21 = sub_251385FE4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v50 = v12;
    v23 = v22;
    v24 = swift_slowAlloc();
    v60 = v24;
    *v23 = 136446210;
    v25 = sub_251386484();
    v49 = v3;
    v27 = sub_251352A00(v25, v26, &v60);
    v48 = v15;
    v28 = v27;
    v3 = v49;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_25134A000, v20, v21, "[%{public}s] navigating to balance room", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x253074E50](v24, -1, -1);
    v29 = v23;
    v12 = v50;
    MEMORY[0x253074E50](v29, -1, -1);

    (*(v16 + 8))(v19, v48);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  v30 = v52;
  sub_251384B94();
  v31 = *MEMORY[0x277D0FDC8];
  v32 = sub_251384B44();
  v33 = *(v32 - 8);
  v34 = v54;
  (*(v33 + 104))(v54, v31, v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  v35 = v51;
  (*(v51 + 104))(v6, *MEMORY[0x277D0FE08], v3);
  sub_251384B34();
  (*(v35 + 8))(v6, v3);
  sub_2513719D8(v34, &unk_27F42CD20, MEMORY[0x277D0FDE8]);
  (*(v53 + 8))(v30, v56);
  v36 = [objc_opt_self() defaultWorkspace];
  if (v36)
  {
    v37 = v36;
    v38 = sub_251384A04();
    sub_2513736EC(MEMORY[0x277D84F90]);
    v39 = sub_251385D74();

    [v37 openSensitiveURL:v38 withOptions:v39];
  }

  v40 = sub_251385F94();
  v41 = v57;
  (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
  sub_251385F74();
  v42 = v58;

  v43 = sub_251385F64();
  v44 = swift_allocObject();
  v45 = MEMORY[0x277D85700];
  v44[2] = v43;
  v44[3] = v45;
  v44[4] = v42;
  sub_251383A18(0, 0, v41, &unk_2513898D8, v44);

  return (*(v12 + 8))(v59, v55);
}

uint64_t sub_2513835D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2513862A4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_251385F74();
  v4[6] = sub_251385F64();
  v7 = sub_251385F54();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_2513836C4, v7, v6);
}

uint64_t sub_2513836C4()
{
  v1 = sub_251386454();
  v3 = v2;
  sub_2513863E4();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_2513837A0;

  return sub_251384028(v1, v3, 0, 0, 1);
}

uint64_t sub_2513837A0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_2513839AC;
  }

  else
  {
    v8 = sub_251383938;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_251383938()
{

  sub_251382B58();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2513839AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251383A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_251371984(0, &qword_27F42C9B8, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_251371794(a3, v23 - v10);
  v12 = sub_251385F94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2513719D8(v11, &qword_27F42C9B8, MEMORY[0x277D85720]);
  }

  else
  {
    sub_251385F84();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_251385F54();
    v18 = v17;
    sub_251385894();
    if (a2)
    {
LABEL_6:
      v19 = sub_251385EB4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2513719D8(a3, &qword_27F42C9B8, MEMORY[0x277D85720]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2513719D8(a3, &qword_27F42C9B8, MEMORY[0x277D85720]);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_251383CE8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_251385B74();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    sub_251385B44();
    v11 = a2;
    v12 = sub_251385B64();
    v13 = sub_251385FC4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      v26 = v25[0];
      *v14 = 136446466;
      v15 = sub_251386484();
      v17 = sub_251352A00(v15, v16, &v26);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue, v25[1]);
      (*(v20 + 16))(v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = sub_251385E94();
      v23 = sub_251352A00(v21, v22, &v26);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_25134A000, v12, v13, "[%{public}s] error submitting: %{public}s", v14, 0x16u);
      v24 = v25[0];
      swift_arrayDestroy();
      MEMORY[0x253074E50](v24, -1, -1);
      MEMORY[0x253074E50](v14, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_251383FAC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_251384028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_251386294();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_251384128, 0, 0);
}

uint64_t sub_251384128()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2513862A4();
  v5 = sub_2513845B4(&qword_27F42CFE8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2513863C4();
  sub_2513845B4(&qword_27F42CFF0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2513862B4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2513842B8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2513842B8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_251384474, 0, 0);
}

uint64_t sub_251384474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251384500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25135F288;

  return sub_2513835D0(a1, v4, v5, v6);
}

uint64_t sub_2513845B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2513845FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25138464C()
{
  result = qword_27F42CFF8;
  if (!qword_27F42CFF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F42CFF8);
  }

  return result;
}

id sub_2513846F8()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F42D000 = result;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_251384878(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_251385B14();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  if (qword_27F42C730 != -1)
  {
    swift_once();
  }

  v5 = qword_27F42D000;
  return sub_251385B04();
}