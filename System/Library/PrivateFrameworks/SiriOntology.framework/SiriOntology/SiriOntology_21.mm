uint64_t _s12SiriOntology0A24_Nl_Core_Protocol_ParserV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (*(a2 + 24) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_18:
      type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      return sub_1C095D73C() & 1;
    }

    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t _s12SiriOntology0A22_Nl_Core_Protocol_TaskV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v61 = sub_1C095D2EC();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v69 = &v57 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A8, &qword_1C0997938);
  MEMORY[0x1EEE9AC00](v60);
  v70 = &v57 - v6;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v57 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v57 - v11;
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v57 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v65 = type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  v23 = *(v65 + 20);
  v24 = *(v20 + 56);
  v71 = a1;
  sub_1C05149F8(a1 + v23, v22, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(v72 + v23, &v22[v24], &qword_1EBE17420, &qword_1C0993380);
  v25 = *(v13 + 48);
  if (v25(v22, 1, v12) == 1)
  {
    if (v25(&v22[v24], 1, v12) == 1)
    {
      sub_1C05145B4(v22, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_8;
    }

LABEL_6:
    v26 = &qword_1EBE16D60;
    v27 = &unk_1C0970430;
    v28 = v22;
LABEL_21:
    sub_1C05145B4(v28, v26, v27);
    goto LABEL_22;
  }

  sub_1C05149F8(v22, v18, &qword_1EBE17420, &qword_1C0993380);
  if (v25(&v22[v24], 1, v12) == 1)
  {
    sub_1C0751DA0(v18, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_6;
  }

  sub_1C070BA2C(&v22[v24], v15, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v29 = _s12SiriOntology0A22_Nl_Core_Protocol_UUIDV2eeoiySbAC_ACtFZ_0(v18, v15);
  sub_1C0751DA0(v15, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C0751DA0(v18, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v22, &qword_1EBE17420, &qword_1C0993380);
  if ((v29 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v30 = v65;
  v31 = *(v65 + 24);
  v32 = *(v64 + 48);
  v33 = v71;
  v34 = v68;
  sub_1C05149F8(v71 + v31, v68, &qword_1EBE17400, &unk_1C0970CA0);
  v35 = v72;
  sub_1C05149F8(v72 + v31, v34 + v32, &qword_1EBE17400, &unk_1C0970CA0);
  v36 = v67;
  v37 = *(v66 + 48);
  if (v37(v34, 1, v67) != 1)
  {
    v41 = v62;
    sub_1C05149F8(v34, v62, &qword_1EBE17400, &unk_1C0970CA0);
    v42 = v37(v34 + v32, 1, v36);
    v40 = v69;
    v39 = v70;
    if (v42 != 1)
    {
      v43 = v34 + v32;
      v44 = v59;
      sub_1C070BA2C(v43, v59, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      v45 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v41, v44);
      sub_1C0751DA0(v44, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C05145B4(v34, &qword_1EBE17400, &unk_1C0970CA0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    goto LABEL_13;
  }

  v38 = v37(v34 + v32, 1, v36);
  v40 = v69;
  v39 = v70;
  if (v38 != 1)
  {
LABEL_13:
    v26 = &qword_1EBE16DE8;
    v27 = &qword_1C09704C0;
    v28 = v34;
    goto LABEL_21;
  }

  sub_1C05145B4(v34, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_15:
  v46 = *(v30 + 28);
  v47 = *(v60 + 48);
  sub_1C05149F8(v33 + v46, v39, &qword_1EBE1E830, &qword_1C09933E0);
  sub_1C05149F8(v35 + v46, v39 + v47, &qword_1EBE1E830, &qword_1C09933E0);
  v48 = *(v63 + 48);
  v49 = v61;
  if (v48(v39, 1, v61) == 1)
  {
    if (v48(v39 + v47, 1, v49) == 1)
    {
      sub_1C05145B4(v39, &qword_1EBE1E830, &qword_1C09933E0);
LABEL_25:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v50 = sub_1C095D73C();
      return v50 & 1;
    }

    goto LABEL_20;
  }

  sub_1C05149F8(v39, v40, &qword_1EBE1E830, &qword_1C09933E0);
  if (v48(v39 + v47, 1, v49) == 1)
  {
    (*(v63 + 8))(v40, v49);
LABEL_20:
    v26 = &qword_1EBE1F2A8;
    v27 = &qword_1C0997938;
    v28 = v39;
    goto LABEL_21;
  }

  v52 = v63;
  v53 = v39 + v47;
  v54 = v58;
  (*(v63 + 32))(v58, v53, v49);
  sub_1C0752188(&qword_1EBE1F2B0, MEMORY[0x1E69D2668], MEMORY[0x1E69D2670]);
  v55 = sub_1C095D73C();
  v56 = *(v52 + 8);
  v56(v54, v49);
  v56(v40, v49);
  sub_1C05145B4(v39, &qword_1EBE1E830, &qword_1C09933E0);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_22:
  v50 = 0;
  return v50 & 1;
}

uint64_t _s12SiriOntology0A22_Nl_Core_Protocol_SpanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 && (sub_1C095DF3C() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1C095DF3C() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    goto LABEL_18;
  }

  v23 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  v14 = *(v23 + 44);
  v15 = *(v11 + 48);
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE17400, &unk_1C0970CA0);
  v16 = a2 + v14;
  v17 = v15;
  sub_1C05149F8(v16, &v13[v15], &qword_1EBE17400, &unk_1C0970CA0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1C05149F8(v13, v10, &qword_1EBE17400, &unk_1C0970CA0);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      sub_1C070BA2C(&v13[v17], v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      v19 = _s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C05145B4(v13, &qword_1EBE17400, &unk_1C0970CA0);
      if (v19)
      {
        goto LABEL_15;
      }

LABEL_18:
      v20 = 0;
      return v20 & 1;
    }

    sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_13:
    sub_1C05145B4(v13, &qword_1EBE16DE8, &qword_1C09704C0);
    goto LABEL_18;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_1C05145B4(v13, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_15:
  if (*(a1 + 40) != *(a2 + 40) || (sub_1C05603B4(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v20 = sub_1C095D73C();
  return v20 & 1;
}

uint64_t sub_1C07518CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7A0, &qword_1C0993390);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks) = v11;
  v41 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks) = v11;
  v13 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs) = v11;
  v14 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  v42 = v13;
  v43 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v44 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit) = 0;
  v45 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp) = 0;
  v17 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  sub_1C05149F8(a1 + v17, v7, &qword_1EBE1E770, &qword_1C0993388);
  swift_beginAccess();
  sub_1C051F9D4(v7, v1 + v8, &qword_1EBE1E770, &qword_1C0993388);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__salientEntities;
  swift_beginAccess();
  v19 = *(a1 + v18);
  swift_beginAccess();
  *(v1 + v10) = v19;

  v20 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__activeTasks;
  swift_beginAccess();
  v21 = *(a1 + v20);
  swift_beginAccess();
  *(v1 + v12) = v21;

  v22 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__executedTasks;
  swift_beginAccess();
  v23 = *(a1 + v22);
  v24 = v41;
  swift_beginAccess();
  *(v1 + v24) = v23;

  v25 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__asrOutputs;
  swift_beginAccess();
  v26 = *(a1 + v25);
  v27 = v42;
  swift_beginAccess();
  *(v1 + v27) = v26;

  v28 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__turnContext;
  swift_beginAccess();
  v29 = v46;
  sub_1C05149F8(a1 + v28, v46, &qword_1EBE1E7A0, &qword_1C0993390);
  v30 = v43;
  swift_beginAccess();
  sub_1C051F9D4(v29, v1 + v30, &qword_1EBE1E7A0, &qword_1C0993390);
  swift_endAccess();
  v31 = (a1 + OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__locale);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  swift_beginAccess();
  *v16 = v33;
  v16[1] = v32;

  v34 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__tapToEdit;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v44;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = OBJC_IVAR____TtCV12SiriOntology31Siri_Nl_Core_Protocol_TurnInputP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__startTimestamp;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = v45;
  swift_beginAccess();
  *(v1 + v38) = v37;
  return v1;
}

uint64_t sub_1C0751DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0751E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0752188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C07521D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1E890;
  if (!qword_1EBE1E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E890);
  }

  return result;
}

unint64_t sub_1C0752224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1E8A0;
  if (!qword_1EBE1E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E8A0);
  }

  return result;
}

unint64_t sub_1C0752278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1E8B0;
  if (!qword_1EBE1E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E8B0);
  }

  return result;
}

unint64_t sub_1C07522CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1E8B8;
  if (!qword_1EBE1E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E8B8);
  }

  return result;
}

unint64_t sub_1C0752320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA10;
  if (!qword_1EBE1EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA10);
  }

  return result;
}

unint64_t sub_1C0752378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA20;
  if (!qword_1EBE1EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA20);
  }

  return result;
}

unint64_t sub_1C07523D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA28;
  if (!qword_1EBE1EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA28);
  }

  return result;
}

unint64_t sub_1C0752428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA30;
  if (!qword_1EBE1EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA30);
  }

  return result;
}

unint64_t sub_1C07524B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA48;
  if (!qword_1EBE1EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA48);
  }

  return result;
}

unint64_t sub_1C0752508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA50;
  if (!qword_1EBE1EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA50);
  }

  return result;
}

unint64_t sub_1C0752560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA58;
  if (!qword_1EBE1EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA58);
  }

  return result;
}

unint64_t sub_1C07525E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA70;
  if (!qword_1EBE1EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA70);
  }

  return result;
}

unint64_t sub_1C0752640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA78;
  if (!qword_1EBE1EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA78);
  }

  return result;
}

unint64_t sub_1C0752698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA80;
  if (!qword_1EBE1EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA80);
  }

  return result;
}

unint64_t sub_1C0752720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EA98;
  if (!qword_1EBE1EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EA98);
  }

  return result;
}

unint64_t sub_1C0752778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EAA0;
  if (!qword_1EBE1EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAA0);
  }

  return result;
}

unint64_t sub_1C07527D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EAA8;
  if (!qword_1EBE1EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAA8);
  }

  return result;
}

unint64_t sub_1C0752858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EAC0;
  if (!qword_1EBE1EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAC0);
  }

  return result;
}

unint64_t sub_1C07528B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EAC8;
  if (!qword_1EBE1EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAC8);
  }

  return result;
}

unint64_t sub_1C0752908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1EAD0;
  if (!qword_1EBE1EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1EAD0);
  }

  return result;
}

void sub_1C07553F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C075547C(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EE30, type metadata accessor for Siri_Nl_Core_Protocol_Task, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EE38, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EE40, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C095D38C();
        if (v4 <= 0x3F)
        {
          sub_1C07553F0(319, &qword_1EBE1EE48, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C0755630(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EE60, MEMORY[0x1E69D2680], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C07557C8(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EE98, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1EEA8, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C07553F0(319, &qword_1EBE1EEB0, type metadata accessor for Siri_Nl_Core_Protocol_Parser, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C0755994(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EEC8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EED0, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C0755A90(uint64_t a1)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(319);
                          if (v14 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            return 0;
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
  }

  return result;
}

void sub_1C0755DC0(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EFB8, type metadata accessor for Siri_Nl_Core_Protocol_Span, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C0755FA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1C07553F0(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v9 <= 0x3F)
  {
    sub_1C095D38C();
    if (v10 <= 0x3F)
    {
      sub_1C07553F0(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C07560CC(uint64_t a1)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C0756200(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C095D38C();
  if (v7 <= 0x3F)
  {
    sub_1C07553F0(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C07562D8(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EE98, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_377Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1C095D38C();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_378Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = sub_1C095D38C();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_205Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = sub_1C095D38C();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v16 = v14;
    v17 = *(v15 + 48);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a2)
  {
    v16 = v19;
    v17 = *(v20 + 48);
    v18 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + *(a3 + 24);

  return v23(v24, a2, v22);
}

uint64_t __swift_store_extra_inhabitant_index_206Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = sub_1C095D38C();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = *(v17 + 56);
    v20 = a1;
LABEL_5:

    return v19(v20, a2, a2, v18);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v22 = *(v21 - 8);
  if (*(v22 + 84) == a3)
  {
    v18 = v21;
    v19 = *(v22 + 56);
    v20 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + *(a4 + 24);

  return v25(v26, a2, a2, v24);
}

void sub_1C0756948(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1C095D38C();
  if (v11 <= 0x3F)
  {
    sub_1C07553F0(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v12 <= 0x3F)
    {
      sub_1C07553F0(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C095D38C();
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

uint64_t sub_1C0756BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C095D38C();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_287Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C095D38C();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_288Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C095D38C();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1C0756EF4(uint64_t a1)
{
  sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C0756FD0(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1F0B0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EEF8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1F0B8, MEMORY[0x1E69D2668], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C07553F0(319, &qword_1EBE1F0C0, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier, MEMORY[0x1E69E6720]);
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

void sub_1C07571CC(uint64_t a1)
{
  sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EEF8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1F0B8, MEMORY[0x1E69D2668], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_485Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C095D38C();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_486Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C095D38C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1C0757550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C095D38C();
  if (v4 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C0757634(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1F0F8, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1F100, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C095D38C();
      if (v3 <= 0x3F)
      {
        sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C07577B8(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C075789C(uint64_t a1)
{
  sub_1C0757994();
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EEF8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C0757994()
{
  if (!qword_1EBE1F128)
  {
    v0 = sub_1C095D9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE1F128);
    }
  }
}

void sub_1C07579FC(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EE48, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1F140, type metadata accessor for Siri_Nl_Core_Protocol_TurnContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C0757B60(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1F158, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C07553F0(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C0757CFC(uint64_t a1)
{
  sub_1C07553F0(319, &qword_1EBE1EEA0, type metadata accessor for Siri_Nl_Core_Protocol_UUID, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C07553F0(319, &qword_1EBE1EEF8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v2;
  *(a1 + 2) = v2;
  *(a1 + 3) = v2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(v3 + 36);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C05149F8(v1 + *(v6 + 36), v5, &qword_1EBE16DD0, &unk_1C0997A40);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C075A678(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  return result;
}

uint64_t sub_1C07581CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C05149F8(a1 + *(v7 + 36), v6, &qword_1EBE16DD0, &unk_1C0997A40);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C075A678(v6, a2, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  return result;
}

uint64_t sub_1C0758330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C075A960(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0) + 36);
  sub_1C05145B4(a2 + v8, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C075A678(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.version.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C075A678(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UsoGraph.version.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DD0, &unk_1C0997A40);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DD0, &unk_1C0997A40);
    }
  }

  else
  {
    sub_1C075A678(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  return sub_1C0758728;
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.nodes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.edges.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.identifiers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.alignments.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void (*Siri_Nl_Core_Protocol_UsoNode.stringPayload.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C071C460;
}

BOOL sub_1C0758C58(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1C05149F8(v4 + *(v12 + 36), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1C05145B4(v11, a1, a2);
  return v14;
}

uint64_t sub_1C0758D90(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.integerPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(v1 + *(v6 + 40), v5, &qword_1EBE16DC0, &unk_1C0997A50);
  v7 = sub_1C095D2AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1C095D29C();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16DC0, &unk_1C0997A50);
  }

  return result;
}

uint64_t sub_1C0758FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(a1 + *(v7 + 40), v6, &qword_1EBE16DC0, &unk_1C0997A50);
  v8 = sub_1C095D2AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_1C095D29C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DC0, &unk_1C0997A50);
  }

  return result;
}

void (*Siri_Nl_Core_Protocol_UsoNode.integerPayload.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D2AC();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 40);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DC0, &unk_1C0997A50);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D29C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DC0, &unk_1C0997A50);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0759350;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.usoVerbElementID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(v1 + *(v6 + 44), v5, &qword_1EBE16B58, &unk_1C099B6A0);
  v7 = sub_1C095D26C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1C095D25C();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16B58, &unk_1C099B6A0);
  }

  return result;
}

uint64_t sub_1C0759540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(a1 + *(v7 + 44), v6, &qword_1EBE16B58, &unk_1C099B6A0);
  v8 = sub_1C095D26C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_1C095D25C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16B58, &unk_1C099B6A0);
  }

  return result;
}

uint64_t sub_1C07596A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D26C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  sub_1C05145B4(a2 + v8, &qword_1EBE16B58, &unk_1C099B6A0);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.usoVerbElementID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  sub_1C05145B4(v1 + v3, &qword_1EBE16B58, &unk_1C099B6A0);
  v4 = sub_1C095D26C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_UsoNode.usoVerbElementID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D26C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16B58, &unk_1C099B6A0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D25C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B58, &unk_1C099B6A0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0759AC0;
}

BOOL Siri_Nl_Core_Protocol_UsoNode.hasUsoVerbElementID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(v0 + *(v4 + 44), v3, &qword_1EBE16B58, &unk_1C099B6A0);
  v5 = sub_1C095D26C();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE16B58, &unk_1C099B6A0);
  return v6;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_UsoNode.clearUsoVerbElementID()()
{
  v1 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0) + 44);
  sub_1C05145B4(v0 + v1, &qword_1EBE16B58, &unk_1C099B6A0);
  v2 = sub_1C095D26C();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.entityLabel.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.entityLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.verbLabel.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.verbLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.normalizedStringPayloads.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1C0759DD0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0759E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = v2[9];
  v4 = sub_1C095D32C();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[10];
  v6 = sub_1C095D2AC();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[11];
  v8 = sub_1C095D26C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t Siri_Nl_Core_Protocol_UsoEdge.label.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  sub_1C05149F8(v1 + *(v6 + 28), v5, &qword_1EBE16DA0, &qword_1C0997A60);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C075A678(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  }

  *a1 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v9 = *(v7 + 28);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16DA0, &qword_1C0997A60);
  }

  return result;
}

uint64_t sub_1C075A268@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  sub_1C05149F8(a1 + *(v7 + 28), v6, &qword_1EBE16DA0, &qword_1C0997A60);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C075A678(v6, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  }

  *a2 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DA0, &qword_1C0997A60);
  }

  return result;
}

uint64_t sub_1C075A40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C075A960(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0) + 28);
  sub_1C05145B4(a2 + v8, &qword_1EBE16DA0, &qword_1C0997A60);
  sub_1C075A678(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoEdge.label.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0) + 28);
  sub_1C05145B4(v1 + v3, &qword_1EBE16DA0, &qword_1C0997A60);
  sub_1C075A678(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C075A678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Siri_Nl_Core_Protocol_UsoEdge.label.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DA0, &qword_1C0997A60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DA0, &qword_1C0997A60);
    }
  }

  else
  {
    sub_1C075A678(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  }

  return sub_1C075A938;
}

uint64_t sub_1C075A960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C075A9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C075AB44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  v5 = a1(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(v5 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t Siri_Nl_Core_Protocol_UsoEdgeLabel.baseEdgeLabel.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  sub_1C05149F8(v1 + *(v6 + 28), v5, &qword_1EBE16D90, &qword_1C0970458);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C075A678(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16D90, &qword_1C0970458);
  }

  return result;
}

uint64_t sub_1C075AD88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  sub_1C05149F8(a1 + *(v7 + 28), v6, &qword_1EBE16D90, &qword_1C0970458);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C075A678(v6, a2, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16D90, &qword_1C0970458);
  }

  return result;
}

uint64_t sub_1C075AEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C075A960(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0) + 28);
  sub_1C05145B4(a2 + v8, &qword_1EBE16D90, &qword_1C0970458);
  sub_1C075A678(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoEdgeLabel.baseEdgeLabel.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0) + 28);
  sub_1C05145B4(v1 + v3, &qword_1EBE16D90, &qword_1C0970458);
  sub_1C075A678(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

void (*Siri_Nl_Core_Protocol_UsoEdgeLabel.baseEdgeLabel.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D90, &qword_1C0970458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D90, &qword_1C0970458);
    }
  }

  else
  {
    sub_1C075A678(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  }

  return sub_1C075B320;
}

BOOL sub_1C075B384(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1C05149F8(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1C05145B4(v11, a1, a2);
  return v14;
}

uint64_t sub_1C075B4BC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1C075B580@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C075B61C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C075B75C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = a1(0);
  sub_1C05149F8(v2 + *(v8 + 36), v7, &qword_1EBE16D68, &unk_1C09933C0);
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C095D31C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C075B8E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = a2(0);
  sub_1C05149F8(a1 + *(v9 + 36), v8, &qword_1EBE16D68, &unk_1C09933C0);
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v8, v10);
  }

  sub_1C095D31C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  }

  return result;
}

uint64_t sub_1C075BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *(a5(0) + 36);
  sub_1C05145B4(a2 + v12, &qword_1EBE16D68, &unk_1C09933C0);
  (*(v9 + 32))(a2 + v12, v11, v8);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t sub_1C075BBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  sub_1C05145B4(v2 + v4, &qword_1EBE16D68, &unk_1C09933C0);
  v5 = sub_1C095D32C();
  v8 = *(v5 - 8);
  (*(v8 + 32))(v2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Siri_Nl_Core_Protocol_UsoEntityIdentifier.namespace.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D32C();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D31C();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0757F84;
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.probability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  sub_1C05149F8(v1 + *(v6 + 40), v5, &qword_1EBE1E830, &qword_1C09933E0);
  v7 = sub_1C095D2EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_1C095D2DC();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE1E830, &qword_1C09933E0);
  }

  return result;
}

uint64_t sub_1C075C070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  sub_1C05149F8(a1 + *(v7 + 40), v6, &qword_1EBE1E830, &qword_1C09933E0);
  v8 = sub_1C095D2EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_1C095D2DC();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE1E830, &qword_1C09933E0);
  }

  return result;
}

uint64_t sub_1C075C1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v13 = (a5)(0, a2, a3, a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v14 + 16))(&v19 - v15, a1, v13);
  v17 = *(a6(0) + 40);
  sub_1C05145B4(a2 + v17, a7, a8);
  (*(v14 + 32))(a2 + v17, v16, v13);
  return (*(v14 + 56))(a2 + v17, 0, 1, v13);
}

uint64_t sub_1C075C358(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v10 = *(a2(0) + 40);
  sub_1C05145B4(v5 + v10, a3, a4);
  v11 = a5(0);
  v14 = *(v11 - 8);
  (*(v14 + 32))(v5 + v10, a1, v11);
  v12 = *(v14 + 56);

  return v12(v5 + v10, 0, 1, v11);
}

void (*Siri_Nl_Core_Protocol_UsoEntityIdentifier.probability.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_1C095D2EC();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 40);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE1E830, &qword_1C09933E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1C095D2DC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE1E830, &qword_1C09933E0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C0720964;
}

BOOL sub_1C075C68C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1C05149F8(v4 + *(v12 + 40), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1C05145B4(v11, a1, a2);
  return v14;
}

uint64_t sub_1C075C7C4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void Siri_Nl_Core_Protocol_UsoEntityIdentifier.sourceComponent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.sourceComponent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.groupIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 44));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.groupIndex.setter(int a1)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nl_Core_Protocol_UsoEntityIdentifier.groupIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1C075C98C;
}

uint64_t sub_1C075C98C(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_UsoEntityIdentifier.clearGroupIndex()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.interpretationGroup.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 48));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.interpretationGroup.setter(int a1)
{
  result = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nl_Core_Protocol_UsoEntityIdentifier.interpretationGroup.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1C0766244;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_UsoEntityIdentifier.clearInterpretationGroup()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

unint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C075CBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C0764D60(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = v2[9];
  v4 = sub_1C095D32C();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[10];
  v6 = sub_1C095D2EC();
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[11];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t static Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBE1F3A8 = a1;
}

uint64_t sub_1C075CE30@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EBE1F3A8;
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.usoVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  sub_1C05149F8(v1 + *(v6 + 24), v5, &qword_1EBE16DD0, &unk_1C0997A40);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C075A678(v5, a1, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  return result;
}

uint64_t sub_1C075D000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  sub_1C05149F8(a1 + *(v7 + 24), v6, &qword_1EBE16DD0, &unk_1C0997A40);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C075A678(v6, a2, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  return result;
}

uint64_t sub_1C075D164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C075A960(a1, v7, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  v8 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C075A678(v7, a2 + v8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.usoVersion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C075A678(a1, v1 + v3, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Siri_Nl_Core_Protocol_UsoOntologyVocabulary.usoVersion.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16DD0, &unk_1C0997A40);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16DD0, &unk_1C0997A40);
    }
  }

  else
  {
    sub_1C075A678(v8, v14, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  }

  return sub_1C076626C;
}

void sub_1C075D55C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1C075A960(v11, v10, a5);
    sub_1C05145B4(v14 + v9, a3, a4);
    sub_1C075A678(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_1C075A9C8(v11, a5);
  }

  else
  {
    sub_1C05145B4(v14 + v9, a3, a4);
    sub_1C075A678(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Siri_Nl_Core_Protocol_UsoOntologyVocabulary.hasUsoVersion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  sub_1C05149F8(v0 + *(v4 + 24), v3, &qword_1EBE16DD0, &unk_1C0997A40);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE16DD0, &unk_1C0997A40);
  return v6;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_UsoOntologyVocabulary.clearUsoVersion()()
{
  v1 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  sub_1C05145B4(v0 + v1, &qword_1EBE16DD0, &unk_1C0997A40);
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C075D9E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C075DA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C075DB60()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F3B0);
  __swift_project_value_buffer(v0, qword_1EBE1F3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nodes";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "edges";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "identifiers";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "alignments";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        break;
      }

      if (result == 1)
      {
        sub_1C075E040(a1, v5, a2, a3);
        goto LABEL_5;
      }

      if (result == 2)
      {
        type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
        sub_1C075E524(&qword_1EBE1F470, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoNode);
LABEL_18:
        sub_1C095D54C();
      }

LABEL_5:
      result = sub_1C095D41C();
    }

    switch(result)
    {
      case 3:
        v11 = v4;
        type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
        sub_1C075E524(&qword_1EBE1F478, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdge);
        break;
      case 4:
        v11 = v4;
        type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
        sub_1C075E524(&qword_1EBE1F480, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
        break;
      case 5:
        v11 = v4;
        type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
        sub_1C075E524(&qword_1EBE1E8E8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UtteranceAlignment);
        break;
      default:
        goto LABEL_5;
    }

    v4 = v11;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1C075E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  sub_1C075E524(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SemVer);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoGraph.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v16 = v3;
  sub_1C05149F8(v3 + *(v15 + 36), v7, &qword_1EBE16DD0, &unk_1C0997A40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16DD0, &unk_1C0997A40);
  }

  else
  {
    sub_1C075A678(v7, v11, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    sub_1C075E524(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SemVer);
    sub_1C095D6AC();
    result = sub_1C075A9C8(v11, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    if (v4)
    {
      return result;
    }
  }

  v13 = v16;
  if (!*(*v16 + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0), sub_1C075E524(&qword_1EBE1F470, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoNode), result = sub_1C095D69C(), !v4))
  {
    if (!*(v13[1] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0), sub_1C075E524(&qword_1EBE1F478, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdge), result = sub_1C095D69C(), !v4))
    {
      if (!*(v13[2] + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0), sub_1C075E524(&qword_1EBE1F480, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEntityIdentifier), result = sub_1C095D69C(), !v4))
      {
        if (!*(v13[3] + 16))
        {
          return sub_1C095D36C();
        }

        type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
        sub_1C075E524(&qword_1EBE1E8E8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UtteranceAlignment);
        result = sub_1C095D69C();
        if (!v4)
        {
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C075E524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C075E5B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C075E694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F670, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C075E734(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C075E7A0(uint64_t a1, uint64_t a2)
{
  sub_1C075E524(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);

  return sub_1C095D5AC();
}

uint64_t sub_1C075E83C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F3C8);
  __swift_project_value_buffer(v0, qword_1EBE1F3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C0993360;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "uso_element_id";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69D26E8];
  v6 = sub_1C095D6BC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "string_payload";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "integer_payload";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "uso_verb_element_id";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "entity_label";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "verb_label";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "normalized_string_payloads";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_1C095D52C();
          break;
        case 2:
          sub_1C075ECAC(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
          break;
        case 3:
          sub_1C075ED64(a1, v5, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        goto LABEL_17;
      }

      if (result == 7)
      {
        sub_1C095D4BC();
      }
    }

    else if (result == 4)
    {
      sub_1C075EE18(a1, v5, a2, a3);
    }

    else
    {
LABEL_17:
      sub_1C095D50C();
    }
  }
}

uint64_t sub_1C075ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  sub_1C095D32C();
  sub_1C075E524(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
  return sub_1C095D55C();
}

uint64_t sub_1C075ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C095D2AC();
  sub_1C075E524(&qword_1EBE1F498, MEMORY[0x1E69D2650], MEMORY[0x1E69D2648]);
  return sub_1C095D55C();
}

uint64_t sub_1C075EE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C095D26C();
  sub_1C075E524(&qword_1EBE16C28, MEMORY[0x1E69D2638], MEMORY[0x1E69D2630]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoNode.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_1C095D26C();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_1C095D2AC();
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - v18;
  v20 = sub_1C095D32C();
  v54 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    v44 = v14;
    v23 = v55;
    result = sub_1C095D67C();
    if (v23)
    {
      return result;
    }

    v49 = a2;
    v50 = a1;
    v46 = a3;
    v55 = 0;
    v14 = v44;
  }

  else
  {
    v49 = a2;
    v50 = a1;
    v46 = a3;
  }

  v25 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  sub_1C05149F8(&v3[*(v25 + 36)], v19, &qword_1EBE16D68, &unk_1C09933C0);
  v26 = v54;
  if ((*(v54 + 48))(v19, 1, v20) == 1)
  {
    sub_1C05145B4(v19, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    v44 = v3;
    (*(v26 + 32))(v22, v19, v20);
    sub_1C075E524(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
    v27 = v55;
    sub_1C095D6AC();
    v55 = v27;
    if (v27)
    {
      return (*(v26 + 8))(v22, v20);
    }

    (*(v26 + 8))(v22, v20);
    v3 = v44;
  }

  v54 = v25;
  sub_1C05149F8(&v3[*(v25 + 40)], v14, &qword_1EBE16DC0, &unk_1C0997A50);
  v28 = v51;
  v29 = v52;
  v30 = (*(v51 + 48))(v14, 1, v52);
  v31 = v53;
  if (v30 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE16DC0, &unk_1C0997A50);
    v32 = v47;
  }

  else
  {
    v33 = v53;
    v44 = v3;
    v34 = v45;
    (*(v28 + 32))(v45, v14, v29);
    sub_1C075E524(&qword_1EBE1F498, MEMORY[0x1E69D2650], MEMORY[0x1E69D2648]);
    v35 = v55;
    sub_1C095D6AC();
    v55 = v35;
    if (v35)
    {
      return (*(v28 + 8))(v34, v29);
    }

    (*(v28 + 8))(v34, v29);
    v3 = v44;
    v32 = v47;
    v31 = v33;
  }

  sub_1C05149F8(&v3[*(v54 + 44)], v9, &qword_1EBE16B58, &unk_1C099B6A0);
  v36 = v48;
  if ((*(v32 + 48))(v9, 1, v48) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE16B58, &unk_1C099B6A0);
  }

  else
  {
    (*(v32 + 32))(v31, v9, v36);
    sub_1C075E524(&qword_1EBE16C28, MEMORY[0x1E69D2638], MEMORY[0x1E69D2630]);
    v37 = v55;
    sub_1C095D6AC();
    v55 = v37;
    if (v37)
    {
      return (*(v32 + 8))(v31, v36);
    }

    (*(v32 + 8))(v31, v36);
  }

  v38 = *(v3 + 2);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(v3 + 1) & 0xFFFFFFFFFFFFLL;
  }

  v40 = v55;
  if (!v39 || (result = sub_1C095D66C(), !v40))
  {
    v41 = *(v3 + 4);
    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = *(v3 + 3) & 0xFFFFFFFFFFFFLL;
    }

    if (!v42 || (result = sub_1C095D66C(), !v40))
    {
      if (!*(*(v3 + 5) + 16))
      {
        return sub_1C095D36C();
      }

      result = sub_1C095D64C();
      if (!v40)
      {
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t sub_1C075F67C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = a1[9];
  v5 = sub_1C095D32C();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[10];
  v7 = sub_1C095D2AC();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[11];
  v9 = sub_1C095D26C();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1C075F7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F668, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoNode);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C075F894(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F470, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoNode);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C075F900(uint64_t a1, uint64_t a2)
{
  sub_1C075E524(&qword_1EBE1F470, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoNode);

  return sub_1C095D5AC();
}

uint64_t sub_1C075F99C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F3E0);
  __swift_project_value_buffer(v0, qword_1EBE1F3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "from_index";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "to_index";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "label";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C075FC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  sub_1C075E524(&qword_1EBE1F4A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoEdge.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    result = sub_1C095D67C();
    if (v4)
    {
      return result;
    }

    if (!v3[1])
    {
      goto LABEL_7;
    }
  }

  else if (!v3[1])
  {
    goto LABEL_7;
  }

  result = sub_1C095D67C();
  if (v4)
  {
    return result;
  }

LABEL_7:
  v17[0] = v4;
  v17[1] = a2;
  v17[3] = a3;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  sub_1C05149F8(v3 + *(v15 + 28), v9, &qword_1EBE16DA0, &qword_1C0997A60);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE16DA0, &qword_1C0997A60);
  }

  else
  {
    sub_1C075A678(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    sub_1C075E524(&qword_1EBE1F4A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    v16 = v17[0];
    sub_1C095D6AC();
    result = sub_1C075A9C8(v13, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    if (v16)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C075FFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F660, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdge);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0760098(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F478, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdge);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0760104(uint64_t a1, uint64_t a2)
{
  sub_1C075E524(&qword_1EBE1F478, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdge);

  return sub_1C095D5AC();
}

uint64_t sub_1C07601A0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F3F8);
  __swift_project_value_buffer(v0, qword_1EBE1F3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uso_element_id";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "base_edge_label";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C076040C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C095D41C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_1C095D52C();
    }
  }

  return result;
}

uint64_t sub_1C07604BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  sub_1C075E524(&qword_1EBE1F4B8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoLabel);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoEdgeLabel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    result = sub_1C095D67C();
    if (v4)
    {
      return result;
    }

    if (!v3[1])
    {
      goto LABEL_7;
    }
  }

  else if (!v3[1])
  {
    goto LABEL_7;
  }

  result = sub_1C095D67C();
  if (v4)
  {
    return result;
  }

LABEL_7:
  v17[0] = v4;
  v17[1] = a2;
  v17[3] = a3;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  sub_1C05149F8(v3 + *(v15 + 28), v9, &qword_1EBE16D90, &qword_1C0970458);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE16D90, &qword_1C0970458);
  }

  else
  {
    sub_1C075A678(v9, v13, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    sub_1C075E524(&qword_1EBE1F4B8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoLabel);
    v16 = v17[0];
    sub_1C095D6AC();
    result = sub_1C075A9C8(v13, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    if (v16)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0760860@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t sub_1C0760940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F658, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdgeLabel);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07609E0(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F4A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdgeLabel);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0760A4C(uint64_t a1, uint64_t a2)
{
  sub_1C075E524(&qword_1EBE1F4A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEdgeLabel);

  return sub_1C095D5AC();
}

uint64_t sub_1C0760AE8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F410);
  __swift_project_value_buffer(v0, qword_1EBE1F410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C0973520;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "node_index";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E8];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "backing_app_bundle_id";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "value";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "namespace";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "probability";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "source_component";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "group_index";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "interpretation_group";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7 || result == 8)
          {
            type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
            sub_1C095D51C();
          }
        }

        else if (result == 5)
        {
          sub_1C0761014(a1, v5, a2, a3);
        }

        else
        {
          sub_1C0764D60(6, v10, v11);
          sub_1C095D45C();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            sub_1C075ECAC(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
            goto LABEL_5;
          }

LABEL_21:
          sub_1C095D50C();
          goto LABEL_5;
        }

        if (result == 1)
        {
          sub_1C095D52C();
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_21;
        }
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0761014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  sub_1C095D2EC();
  sub_1C075E524(&qword_1EBE1E9D0, MEMORY[0x1E69D2668], MEMORY[0x1E69D2660]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoEntityIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v35 - v6;
  v41 = sub_1C095D2EC();
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v3 || (result = sub_1C095D67C(), !v4))
  {
    v16 = *(v3 + 16);
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v17 || (result = sub_1C095D66C(), !v4))
    {
      v18 = *(v3 + 32);
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v19 || (result = sub_1C095D66C(), !v4))
      {
        v35 = v4;
        v20 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
        sub_1C05149F8(v3 + *(v20 + 36), v10, &qword_1EBE16D68, &unk_1C09933C0);
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          sub_1C05145B4(v10, &qword_1EBE16D68, &unk_1C09933C0);
        }

        else
        {
          (*(v12 + 32))(v14, v10, v11);
          sub_1C075E524(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
          v21 = v35;
          sub_1C095D6AC();
          v35 = v21;
          if (v21)
          {
            return (*(v12 + 8))(v14, v11);
          }

          (*(v12 + 8))(v14, v11);
        }

        v22 = v20;
        v23 = v3 + *(v20 + 40);
        v24 = v36;
        sub_1C05149F8(v23, v36, &qword_1EBE1E830, &qword_1C09933E0);
        v25 = v38;
        v26 = v41;
        v27 = (*(v38 + 48))(v24, 1, v41);
        v28 = v37;
        if (v27 == 1)
        {
          v29 = sub_1C05145B4(v24, &qword_1EBE1E830, &qword_1C09933E0);
        }

        else
        {
          (*(v25 + 32))(v37, v24, v26);
          sub_1C075E524(&qword_1EBE1E9D0, MEMORY[0x1E69D2668], MEMORY[0x1E69D2660]);
          v32 = v35;
          sub_1C095D6AC();
          v35 = v32;
          if (v32)
          {
            return (*(v25 + 8))(v28, v26);
          }

          v29 = (*(v25 + 8))(v28, v26);
        }

        if (*(v3 + 40))
        {
          v33 = *(v3 + 48);
          v39 = *(v3 + 40);
          v40 = v33;
          sub_1C0764D60(v29, v30, v31);
          v34 = v35;
          result = sub_1C095D60C();
          if (v34)
          {
            return result;
          }
        }

        else
        {
          v34 = v35;
        }

        if ((*(v3 + *(v22 + 44) + 4) & 1) != 0 || (result = sub_1C095D67C(), !v34))
        {
          if (*(v3 + *(v22 + 48) + 4))
          {
            return sub_1C095D36C();
          }

          result = sub_1C095D67C();
          if (!v34)
          {
            return sub_1C095D36C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0761684@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = a1[9];
  v5 = sub_1C095D32C();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[10];
  v7 = sub_1C095D2EC();
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a1[12];
  v10 = a2 + a1[11];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_1C07617C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F650, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0761868(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F480, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07618D4(uint64_t a1, uint64_t a2)
{
  sub_1C075E524(&qword_1EBE1F480, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);

  return sub_1C095D5AC();
}

uint64_t sub_1C0761954()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F428);
  __swift_project_value_buffer(v0, qword_1EBE1F428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NLU_COMPONENT_UNKNOWN";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NLU_COMPONENT_SPAN_MATCH_SIRI_VOCAB";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NLU_COMPONENT_SPAN_MATCH_VOC_FILE";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NLU_COMPONENT_SPAN_MATCH_MENTION_RESOLVER";
  *(v14 + 1) = 41;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0761BFC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F440);
  __swift_project_value_buffer(v0, qword_1EBE1F440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uso_version";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "element_names";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C0761E78(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C095D4BC();
    }
  }

  return result;
}

uint64_t sub_1C0761E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  sub_1C075E524(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SemVer);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UsoOntologyVocabulary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0) + 24);
  v15 = v3;
  sub_1C05149F8(v3 + v11, v6, &qword_1EBE16DD0, &unk_1C0997A40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE16DD0, &unk_1C0997A40);
    v12 = v18;
  }

  else
  {
    sub_1C075A678(v6, v10, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    sub_1C075E524(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SemVer);
    v12 = v18;
    sub_1C095D6AC();
    result = sub_1C075A9C8(v10, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    if (v12)
    {
      return result;
    }
  }

  if (!*(*v15 + 16))
  {
    return sub_1C095D36C();
  }

  result = sub_1C095D64C();
  if (!v12)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C07621DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C07622B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F648, type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0762354(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F568, type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07623C0(uint64_t a1, uint64_t a2)
{
  sub_1C075E524(&qword_1EBE1F568, type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary);

  return sub_1C095D5AC();
}

uint64_t sub_1C076245C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F458);
  __swift_project_value_buffer(v0, qword_1EBE1F458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C096E0C0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69D26E0];
  v6 = sub_1C095D6BC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C095D50C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_UsoLabel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C095D66C(), !v4))
  {
    type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t static Siri_Nl_Core_Protocol_UsoLabel.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C07627F8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C095DFEC();
  a1(0);
  sub_1C075E524(a2, a3, a4);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0762880@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C07628F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C075E524(&qword_1EBE1F640, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoLabel);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0762994(uint64_t a1)
{
  v2 = sub_1C075E524(&qword_1EBE1F4B8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoLabel);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0762A00(uint64_t a1, uint64_t a2)
{
  sub_1C075E524(&qword_1EBE1F4B8, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoLabel);

  return sub_1C095D5AC();
}

uint64_t sub_1C0762A7C(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology0a21_Nl_Core_Protocol_UsoB10VocabularyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD8, &unk_1C09704B0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for Siri_Nl_Core_Protocol_UsoOntologyVocabulary(0);
  v14 = *(v24 + 24);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE16DD0, &unk_1C0997A40);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  sub_1C05149F8(v13, v9, &qword_1EBE16DD0, &unk_1C0997A40);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C075A9C8(v9, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
LABEL_7:
    v18 = &qword_1EBE16DD8;
    v19 = &unk_1C09704B0;
LABEL_15:
    sub_1C05145B4(v13, v18, v19);
    goto LABEL_16;
  }

  v20 = v25;
  sub_1C075A678(&v13[v15], v25, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  if (*v9 != *v20 || v9[1] != v20[1] || v9[2] != v20[2])
  {
    sub_1C075A9C8(v20, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    goto LABEL_14;
  }

  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v21 = sub_1C095D73C();
  sub_1C075A9C8(v20, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
  if ((v21 & 1) == 0)
  {
LABEL_14:
    sub_1C075A9C8(v9, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
    v18 = &qword_1EBE16DD0;
    v19 = &unk_1C0997A40;
    goto LABEL_15;
  }

  sub_1C075A9C8(v9, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
LABEL_3:
  sub_1C05145B4(v13, &qword_1EBE16DD0, &unk_1C0997A40);
  if ((sub_1C055B098(*v26, *a2) & 1) == 0)
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v17 = sub_1C095D73C();
  return v17 & 1;
}

uint64_t _s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D2EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v54 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A8, &qword_1C0997938);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v54 - v9;
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  if (*a1 != *a2 || (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_1C095DF3C() & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_22;
  }

  v54 = v5;
  v55 = v4;
  v20 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v21 = *(v20 + 36);
  v22 = *(v17 + 48);
  v56 = a1;
  v57 = v20;
  sub_1C05149F8(a1 + v21, v19, &qword_1EBE16D68, &unk_1C09933C0);
  sub_1C05149F8(a2 + v21, &v19[v22], &qword_1EBE16D68, &unk_1C09933C0);
  v23 = *(v11 + 48);
  if (v23(v19, 1, v10) == 1)
  {
    if (v23(&v19[v22], 1, v10) == 1)
    {
      sub_1C05145B4(v19, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_15;
    }

LABEL_13:
    v24 = &qword_1EBE16D70;
    v25 = &qword_1C0970440;
    v26 = v19;
LABEL_21:
    sub_1C05145B4(v26, v24, v25);
    goto LABEL_22;
  }

  sub_1C05149F8(v19, v16, &qword_1EBE16D68, &unk_1C09933C0);
  if (v23(&v19[v22], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_13;
  }

  (*(v11 + 32))(v13, &v19[v22], v10);
  sub_1C075E524(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  v27 = sub_1C095D73C();
  v28 = *(v11 + 8);
  v28(v13, v10);
  v28(v16, v10);
  sub_1C05145B4(v19, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v29 = v56;
  v30 = v57[10];
  v31 = v61;
  v32 = *(v60 + 48);
  sub_1C05149F8(v56 + v30, v61, &qword_1EBE1E830, &qword_1C09933E0);
  sub_1C05149F8(a2 + v30, v31 + v32, &qword_1EBE1E830, &qword_1C09933E0);
  v34 = v54;
  v33 = v55;
  v35 = *(v54 + 48);
  if (v35(v31, 1, v55) != 1)
  {
    v36 = v59;
    sub_1C05149F8(v31, v59, &qword_1EBE1E830, &qword_1C09933E0);
    if (v35(v31 + v32, 1, v33) != 1)
    {
      v39 = v58;
      (*(v34 + 32))(v58, v31 + v32, v33);
      sub_1C075E524(&qword_1EBE1F2B0, MEMORY[0x1E69D2668], MEMORY[0x1E69D2670]);
      v40 = sub_1C095D73C();
      v41 = *(v34 + 8);
      v41(v39, v33);
      v41(v36, v33);
      sub_1C05145B4(v31, &qword_1EBE1E830, &qword_1C09933E0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    (*(v34 + 8))(v36, v33);
    goto LABEL_20;
  }

  if (v35(v31 + v32, 1, v33) != 1)
  {
LABEL_20:
    v24 = &qword_1EBE1F2A8;
    v25 = &qword_1C0997938;
    v26 = v31;
    goto LABEL_21;
  }

  sub_1C05145B4(v31, &qword_1EBE1E830, &qword_1C09933E0);
LABEL_25:
  v42 = *(v29 + 40);
  v43 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v43 > 1)
    {
      if (v43 == 2)
      {
        if (v42 != 2)
        {
          goto LABEL_22;
        }
      }

      else if (v42 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (v43)
    {
      if (v42 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v42)
    {
      goto LABEL_22;
    }
  }

  else if (v42 != v43)
  {
    goto LABEL_22;
  }

  v44 = v57[11];
  v45 = (v29 + v44);
  v46 = *(v29 + v44 + 4);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 4);
  if (v46)
  {
    if (!v48)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      goto LABEL_22;
    }
  }

  v49 = v57[12];
  v50 = (v29 + v49);
  v51 = *(v29 + v49 + 4);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 4);
  if (v51)
  {
    if (v53)
    {
LABEL_50:
      sub_1C095D38C();
      sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v37 = sub_1C095D73C();
      return v37 & 1;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    if ((v53 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_22:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s12SiriOntology0A25_Nl_Core_Protocol_UsoNodeV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C095D26C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v68 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C18, &unk_1C0970490);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v68 - v9;
  v10 = sub_1C095D2AC();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = &v68 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC8, &unk_1C09704A0);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v68 - v14;
  v15 = sub_1C095D32C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - v23;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v68 = v5;
  v69 = v4;
  v25 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v26 = a1;
  v27 = a2;
  v70 = v26;
  v71 = v25;
  v28 = *(v25 + 36);
  v29 = *(v22 + 48);
  sub_1C05149F8(v26 + v28, v24, &qword_1EBE16D68, &unk_1C09933C0);
  v30 = v27 + v28;
  v31 = v27;
  sub_1C05149F8(v30, &v24[v29], &qword_1EBE16D68, &unk_1C09933C0);
  v32 = *(v16 + 48);
  if (v32(v24, 1, v15) == 1)
  {
    if (v32(&v24[v29], 1, v15) == 1)
    {
      sub_1C05145B4(v24, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_9;
    }

LABEL_7:
    v33 = &qword_1EBE16D70;
    v34 = &qword_1C0970440;
    v35 = v24;
LABEL_22:
    sub_1C05145B4(v35, v33, v34);
    goto LABEL_23;
  }

  sub_1C05149F8(v24, v21, &qword_1EBE16D68, &unk_1C09933C0);
  if (v32(&v24[v29], 1, v15) == 1)
  {
    (*(v16 + 8))(v21, v15);
    goto LABEL_7;
  }

  (*(v16 + 32))(v18, &v24[v29], v15);
  sub_1C075E524(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  v36 = sub_1C095D73C();
  v37 = *(v16 + 8);
  v37(v18, v15);
  v37(v21, v15);
  v31 = v27;
  sub_1C05145B4(v24, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v38 = v70;
  v39 = *(v71 + 40);
  v40 = v79;
  v41 = *(v78 + 48);
  sub_1C05149F8(v70 + v39, v79, &qword_1EBE16DC0, &unk_1C0997A50);
  sub_1C05149F8(v31 + v39, v40 + v41, &qword_1EBE16DC0, &unk_1C0997A50);
  v43 = v80;
  v42 = v81;
  v44 = *(v80 + 48);
  if (v44(v40, 1, v81) == 1)
  {
    v45 = v44(v40 + v41, 1, v42);
    v47 = v68;
    v46 = v69;
    if (v45 == 1)
    {
      sub_1C05145B4(v40, &qword_1EBE16DC0, &unk_1C0997A50);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v48 = v77;
  sub_1C05149F8(v40, v77, &qword_1EBE16DC0, &unk_1C0997A50);
  v49 = v44(v40 + v41, 1, v42);
  v47 = v68;
  v46 = v69;
  if (v49 == 1)
  {
    (*(v43 + 8))(v48, v42);
LABEL_14:
    v33 = &qword_1EBE16DC8;
    v34 = &unk_1C09704A0;
    v35 = v40;
    goto LABEL_22;
  }

  v50 = v40 + v41;
  v51 = v74;
  (*(v43 + 32))(v74, v50, v42);
  sub_1C075E524(&qword_1EBE16DE0, MEMORY[0x1E69D2650], MEMORY[0x1E69D2658]);
  v52 = sub_1C095D73C();
  v53 = *(v43 + 8);
  v53(v51, v42);
  v53(v48, v42);
  sub_1C05145B4(v40, &qword_1EBE16DC0, &unk_1C0997A50);
  v38 = v70;
  if ((v52 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v54 = *(v71 + 44);
  v55 = v76;
  v56 = *(v75 + 48);
  sub_1C05149F8(v38 + v54, v76, &qword_1EBE16B58, &unk_1C099B6A0);
  v57 = v31 + v54;
  v58 = v55;
  sub_1C05149F8(v57, v55 + v56, &qword_1EBE16B58, &unk_1C099B6A0);
  v59 = *(v47 + 48);
  if (v59(v55, 1, v46) != 1)
  {
    v60 = v55;
    v61 = v73;
    sub_1C05149F8(v60, v73, &qword_1EBE16B58, &unk_1C099B6A0);
    if (v59(v58 + v56, 1, v46) != 1)
    {
      v64 = v58 + v56;
      v65 = v72;
      (*(v47 + 32))(v72, v64, v46);
      sub_1C075E524(&qword_1EBE16C20, MEMORY[0x1E69D2638], MEMORY[0x1E69D2640]);
      v66 = sub_1C095D73C();
      v67 = *(v47 + 8);
      v67(v65, v46);
      v67(v61, v46);
      sub_1C05145B4(v58, &qword_1EBE16B58, &unk_1C099B6A0);
      if ((v66 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    (*(v47 + 8))(v61, v46);
    goto LABEL_21;
  }

  if (v59(v55 + v56, 1, v46) != 1)
  {
LABEL_21:
    v33 = &qword_1EBE16C18;
    v34 = &unk_1C0970490;
    v35 = v58;
    goto LABEL_22;
  }

  sub_1C05145B4(v55, &qword_1EBE16B58, &unk_1C099B6A0);
LABEL_26:
  if (v38[1] == v31[1] && v38[2] == v31[2] || (sub_1C095DF3C()) && (v38[3] == v31[3] && v38[4] == v31[4] || (sub_1C095DF3C()) && (sub_1C055B098(v38[5], v31[5]))
  {
    sub_1C095D38C();
    sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v62 = sub_1C095D73C();
    return v62 & 1;
  }

LABEL_23:
  v62 = 0;
  return v62 & 1;
}

uint64_t _s12SiriOntology0A30_Nl_Core_Protocol_UsoEdgeLabelV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D98, &unk_1C0970460);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_9;
  }

  v15 = v12;
  v25 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v26 = a2;
  v16 = *(v25 + 28);
  v17 = *(v15 + 48);
  sub_1C05149F8(a1 + v16, v14, &qword_1EBE16D90, &qword_1C0970458);
  sub_1C05149F8(v26 + v16, &v14[v17], &qword_1EBE16D90, &qword_1C0970458);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_1C05145B4(v14, &qword_1EBE16D90, &qword_1C0970458);
LABEL_17:
      sub_1C095D38C();
      sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v21 = sub_1C095D73C();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C05149F8(v14, v10, &qword_1EBE16D90, &qword_1C0970458);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    sub_1C075A9C8(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
LABEL_7:
    v19 = &qword_1EBE16D98;
    v20 = &unk_1C0970460;
LABEL_8:
    sub_1C05145B4(v14, v19, v20);
    goto LABEL_9;
  }

  sub_1C075A678(&v14[v17], v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  v23 = *v10 == *v7 && v10[1] == v7[1];
  if (!v23 && (sub_1C095DF3C() & 1) == 0)
  {
    sub_1C075A9C8(v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    sub_1C075A9C8(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
    v19 = &qword_1EBE16D90;
    v20 = &qword_1C0970458;
    goto LABEL_8;
  }

  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v24 = sub_1C095D73C();
  sub_1C075A9C8(v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  sub_1C075A9C8(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
  sub_1C05145B4(v14, &qword_1EBE16D90, &qword_1C0970458);
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_9:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s12SiriOntology0A25_Nl_Core_Protocol_UsoEdgeV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA8, &qword_1C0970470);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v15 = v12;
  v23 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v16 = *(v23 + 28);
  v17 = *(v15 + 48);
  sub_1C05149F8(a1 + v16, v14, &qword_1EBE16DA0, &qword_1C0997A60);
  v24 = v17;
  sub_1C05149F8(a2 + v16, &v14[v17], &qword_1EBE16DA0, &qword_1C0997A60);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v24], 1, v4) == 1)
    {
      sub_1C05145B4(v14, &qword_1EBE16DA0, &qword_1C0997A60);
LABEL_11:
      sub_1C095D38C();
      sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v20 = sub_1C095D73C();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_1C05149F8(v14, v10, &qword_1EBE16DA0, &qword_1C0997A60);
  v19 = v24;
  if (v18(&v14[v24], 1, v4) == 1)
  {
    sub_1C075A9C8(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
LABEL_7:
    sub_1C05145B4(v14, &qword_1EBE16DA8, &qword_1C0970470);
    goto LABEL_8;
  }

  sub_1C075A678(&v14[v19], v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  v22 = _s12SiriOntology0A30_Nl_Core_Protocol_UsoEdgeLabelV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_1C075A9C8(v7, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  sub_1C075A9C8(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  sub_1C05145B4(v14, &qword_1EBE16DA0, &qword_1C0997A60);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v24 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD8, &unk_1C09704B0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v14 = *(v25 + 36);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE16DD0, &unk_1C0997A40);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE16DD0, &unk_1C0997A40);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C05149F8(v13, v9, &qword_1EBE16DD0, &unk_1C0997A40);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v26;
      sub_1C075A678(&v13[v15], v26, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      if (*v9 == *v21 && v9[1] == v21[1] && v9[2] == v21[2])
      {
        sub_1C095D38C();
        sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v22 = sub_1C095D73C();
        sub_1C075A9C8(v21, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
        sub_1C075A9C8(v9, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
        sub_1C05145B4(v13, &qword_1EBE16DD0, &unk_1C0997A40);
        if (v22)
        {
          goto LABEL_4;
        }

LABEL_19:
        v18 = 0;
        return v18 & 1;
      }

      sub_1C075A9C8(v21, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      sub_1C075A9C8(v9, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      v19 = &qword_1EBE16DD0;
      v20 = &unk_1C0997A40;
LABEL_18:
      sub_1C05145B4(v13, v19, v20);
      goto LABEL_19;
    }

    sub_1C075A9C8(v9, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
LABEL_11:
    v19 = &qword_1EBE16DD8;
    v20 = &unk_1C09704B0;
    goto LABEL_18;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1C05145B4(v13, &qword_1EBE16DD0, &unk_1C0997A40);
LABEL_4:
  v17 = v27;
  if ((sub_1C055F5F0(*v27, *a2) & 1) == 0 || (sub_1C055F644(v17[1], a2[1]) & 1) == 0 || (sub_1C05600E8(v17[2], a2[2]) & 1) == 0 || (sub_1C056013C(v17[3], a2[3]) & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1C095D38C();
  sub_1C075E524(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v18 = sub_1C095D73C();
  return v18 & 1;
}

unint64_t sub_1C0764D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F4C8;
  if (!qword_1EBE1F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F4C8);
  }

  return result;
}

unint64_t sub_1C0764DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F4E8;
  if (!qword_1EBE1F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F4E8);
  }

  return result;
}

unint64_t sub_1C0764E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F4F0;
  if (!qword_1EBE1F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F4F0);
  }

  return result;
}

unint64_t sub_1C0764E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F4F8;
  if (!qword_1EBE1F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F4F8);
  }

  return result;
}

unint64_t sub_1C0764EC0()
{
  result = qword_1EBE1F500;
  if (!qword_1EBE1F500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F508, &qword_1C0997B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F500);
  }

  return result;
}

void sub_1C076572C(uint64_t a1)
{
  sub_1C0765900(319, &qword_1EBE1F598, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C0765900(319, &qword_1EBE1F5A0, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C0765900(319, &qword_1EBE1F5A8, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C0765900(319, &qword_1EBE1F5B0, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1C095D38C();
          if (v5 <= 0x3F)
          {
            sub_1C0765900(319, &qword_1EBE1F5B8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, MEMORY[0x1E69E6720]);
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

void sub_1C0765900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C076598C(uint64_t a1)
{
  sub_1C076601C(319, &qword_1EBE0FDA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C0765900(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C0765900(319, &qword_1EBE1F5D0, MEMORY[0x1E69D2650], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C0765900(319, &qword_1ED5BCFF8, MEMORY[0x1E69D2638], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_43Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C095D38C();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 28);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C095D38C();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 28);

    return v19(v20, a2, a2, v18);
  }
}

void sub_1C0765DD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C095D38C();
  if (v7 <= 0x3F)
  {
    sub_1C0765900(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C0765EC0(uint64_t a1)
{
  sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    sub_1C0765900(319, &qword_1EBE1EFC0, MEMORY[0x1E69D2680], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C0765900(319, &qword_1EBE1F0B8, MEMORY[0x1E69D2668], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C076601C(319, &qword_1EBE1F618, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C076601C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C07660A4(uint64_t a1)
{
  sub_1C076601C(319, &qword_1EBE0FDA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C095D38C();
    if (v2 <= 0x3F)
    {
      sub_1C0765900(319, &qword_1EBE1F5B8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C07661BC(uint64_t a1)
{
  result = sub_1C095D38C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0766270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C095DF0C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1C07662CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C051CFF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

unint64_t sub_1C0766324()
{
  result = qword_1ED5BCFF0;
  if (!qword_1ED5BCFF0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17200, &qword_1C09709D8);
    sub_1C07663A8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BCFF0);
  }

  return result;
}

unint64_t sub_1C07663A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BD7C8;
  if (!qword_1ED5BD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BD7C8);
  }

  return result;
}

unint64_t sub_1C07663FC()
{
  result = qword_1ED5BC878;
  if (!qword_1ED5BC878)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17338, &qword_1C0970B30);
    sub_1C0766480(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BC878);
  }

  return result;
}

unint64_t sub_1C0766480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5BCFD8;
  if (!qword_1ED5BCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BCFD8);
  }

  return result;
}

unint64_t sub_1C07664D4()
{
  result = qword_1EBE1F688;
  if (!qword_1EBE1F688)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F680, &qword_1C0998758);
    sub_1C0524EE0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F688);
  }

  return result;
}

unint64_t sub_1C0766574()
{
  result = qword_1ED5BDE98;
  if (!qword_1ED5BDE98)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F6A0, &qword_1C0998778);
    sub_1C0526818(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDE98);
  }

  return result;
}

unint64_t sub_1C07665F8()
{
  result = qword_1ED5BDEA8;
  if (!qword_1ED5BDEA8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17200, &qword_1C09709D8);
    sub_1C076667C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEA8);
  }

  return result;
}

unint64_t sub_1C076667C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D34D8;
  if (!qword_1ED5D34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34D8);
  }

  return result;
}

unint64_t sub_1C07666D0()
{
  result = qword_1ED5BDEB0;
  if (!qword_1ED5BDEB0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17338, &qword_1C0970B30);
    sub_1C0766754(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5BDEB0);
  }

  return result;
}

unint64_t sub_1C0766754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D3508;
  if (!qword_1ED5D3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D3508);
  }

  return result;
}

uint64_t sub_1C07667A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C0766804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C0766888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D34B0;
  if (!qword_1ED5D34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34B0);
  }

  return result;
}

unint64_t sub_1C07668E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED5D34B8;
  if (!qword_1ED5D34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5D34B8);
  }

  return result;
}

uint64_t AddressOntologyNode.RadiusUnitNode.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1C095DD6C();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t AddressOntologyNode.RadiusUnitNode.rawValue.getter()
{
  v1 = 0x73656C696DLL;
  v2 = 0x6574656D6F6C696BLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6163697475616ELL;
  }

  if (*v0)
  {
    v1 = 0x73726574656DLL;
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

unint64_t sub_1C0766A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F6A8;
  if (!qword_1EBE1F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6A8);
  }

  return result;
}

uint64_t sub_1C0766A84()
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0766B50(uint64_t a1)
{
  sub_1C095D7BC();
}

uint64_t sub_1C0766C08(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

void sub_1C0766CDC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x73656C696DLL;
  v4 = 0xEA00000000007372;
  v5 = 0x6574656D6F6C696BLL;
  if (*v1 != 2)
  {
    v5 = 0x6C6163697475616ELL;
    v4 = 0xEE0073656C696D20;
  }

  if (*v1)
  {
    v3 = 0x73726574656DLL;
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

unint64_t sub_1C0766D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0766D8C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0766D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F6B0;
  if (!qword_1EBE1F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6B0);
  }

  return result;
}

unint64_t sub_1C0766DE4()
{
  result = qword_1EBE1F6B8;
  if (!qword_1EBE1F6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F6C0, &qword_1C0998A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6B8);
  }

  return result;
}

unint64_t sub_1C0766E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0766E80(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0766E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F6C8;
  if (!qword_1EBE1F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6C8);
  }

  return result;
}

uint64_t static AddressOntologyNode.CentroidNode.latitudeNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.CentroidNode.longitudeNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t AddressOntologyNode.CentroidNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C096E0D0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 32) = inited;
  v10 = swift_initStaticObject();
  *(v7 + 96) = v8;
  *(v7 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 72) = v10;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = v7;
  return v6;
}

uint64_t AddressOntologyNode.CentroidNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C096E0D0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 32) = inited;
  v10 = swift_initStaticObject();
  *(v7 + 96) = v8;
  *(v7 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v7 + 72) = v10;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 40) = v7;
  return v3;
}

uint64_t AddressOntologyNode.CentroidNode.deinit()
{

  return v0;
}

uint64_t AddressOntologyNode.CentroidNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static Double.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(v2, __src, 0x20AuLL);
  if (sub_1C057363C(v2))
  {
    return 0;
  }

  else
  {
    return *sub_1C05272F0(v2);
  }
}

uint64_t *sub_1C076726C@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v4 = result;
  if (result)
  {
    v5 = 0;
  }

  else
  {
    result = sub_1C05272F0(v6);
    v5 = *result;
  }

  *a2 = v5;
  *(a2 + 8) = v4 != 0;
  return result;
}

unint64_t static Float.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(v4, __src, 0x20AuLL);
  v1 = sub_1C057363C(v4);
  if (v1 == 1)
  {
    v2 = *sub_1C05272F0(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 != 1) << 32);
}

int *sub_1C0767350@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v4 = result;
  if (result == 1)
  {
    result = sub_1C05272F0(v6);
    v5 = *result;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 4) = v4 != 1;
  return result;
}

uint64_t static Int.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(v2, __src, 0x20AuLL);
  if (sub_1C057363C(v2) == 2)
  {
    return *sub_1C05272F0(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1C076742C@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v4 = result;
  if (result == 2)
  {
    result = sub_1C05272F0(v6);
    v5 = *result;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 != 2;
  return result;
}

uint64_t static Int64.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(v2, __src, 0x20AuLL);
  if (sub_1C057363C(v2) == 3)
  {
    return *sub_1C05272F0(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1C0767508@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0x20AuLL);
  result = sub_1C057363C(v6);
  v4 = result;
  if (result == 3)
  {
    result = sub_1C05272F0(v6);
    v5 = *result;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 != 3;
  return result;
}

uint64_t static String.fromIntentNodeValue(_:)(void *__src)
{
  memcpy(__dst, __src, 0x20AuLL);
  v2 = sub_1C057363C(__dst);
  if (v2 != 7 && v2 != 4)
  {
    return 0;
  }

  v3 = *sub_1C05272F0(__dst);
  memcpy(v5, __src, 0x20AuLL);
  sub_1C05272F0(v5);

  return v3;
}

uint64_t sub_1C0767618@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result == 7 || result == 4)
  {
    v5 = sub_1C05272F0(__dst);
    v6 = *v5;
    v7 = v5[1];
    memcpy(v8, __src, 0x20AuLL);
    sub_1C05272F0(v8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

void *static TerminalElement.DateTimeValue.fromIntentNodeValue(_:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  if (sub_1C057363C(__dst) == 5)
  {
    v4 = sub_1C05272F0(__dst);
    memcpy(__srca, v4, sizeof(__srca));
    nullsub_1();
    memcpy(a2, __srca, 0x20AuLL);
    memcpy(v9, __src, 0x20AuLL);
    v5 = sub_1C05272F0(v9);
    return sub_1C0573648(v5, &v7);
  }

  else
  {
    sub_1C0767778(v9);
    return memcpy(a2, v9, 0x20AuLL);
  }
}

double sub_1C0767778(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 506) = 0u;
  return result;
}

void *sub_1C07677D0@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  if (sub_1C057363C(__dst) == 5)
  {
    v4 = sub_1C05272F0(__dst);
    memcpy(__srca, v4, sizeof(__srca));
    nullsub_1();
    memcpy(a2, __srca, 0x20AuLL);
    memcpy(v9, __src, 0x20AuLL);
    v5 = sub_1C05272F0(v9);
    return sub_1C0573648(v5, &v7);
  }

  else
  {
    sub_1C0767778(v9);
    return memcpy(a2, v9, 0x20AuLL);
  }
}

unint64_t sub_1C0767890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C07678B8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C07678B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE0FAF0[0];
  if (!qword_1EBE0FAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE0FAF0);
  }

  return result;
}

uint64_t AddressOntologyNode.CountryCode.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1C095DF4C();

  if (v4 < 0x80 || (v4 & 0xFFFFFFFFFFFFFFC0) == 0x80)
  {
LABEL_3:
    v6 = v4;
  }

  else
  {
    v7 = v4 - 192;
    v6 = -19;
    LOBYTE(v4) = -64;
    switch(v7)
    {
      case 0uLL:
        goto LABEL_3;
      case 1uLL:
        LOBYTE(v4) = -63;
        goto LABEL_3;
      case 2uLL:
        LOBYTE(v4) = -62;
        goto LABEL_3;
      case 3uLL:
        LOBYTE(v4) = -61;
        goto LABEL_3;
      case 4uLL:
        LOBYTE(v4) = -60;
        goto LABEL_3;
      case 5uLL:
        LOBYTE(v4) = -59;
        goto LABEL_3;
      case 6uLL:
        LOBYTE(v4) = -58;
        goto LABEL_3;
      case 7uLL:
        LOBYTE(v4) = -57;
        goto LABEL_3;
      case 8uLL:
        LOBYTE(v4) = -56;
        goto LABEL_3;
      case 9uLL:
        LOBYTE(v4) = -55;
        goto LABEL_3;
      case 0xAuLL:
        LOBYTE(v4) = -54;
        goto LABEL_3;
      case 0xBuLL:
        LOBYTE(v4) = -53;
        goto LABEL_3;
      case 0xCuLL:
        LOBYTE(v4) = -52;
        goto LABEL_3;
      case 0xDuLL:
        LOBYTE(v4) = -51;
        goto LABEL_3;
      case 0xEuLL:
        LOBYTE(v4) = -50;
        goto LABEL_3;
      case 0xFuLL:
        LOBYTE(v4) = -49;
        goto LABEL_3;
      case 0x10uLL:
        LOBYTE(v4) = -48;
        goto LABEL_3;
      case 0x11uLL:
        LOBYTE(v4) = -47;
        goto LABEL_3;
      case 0x12uLL:
        LOBYTE(v4) = -46;
        goto LABEL_3;
      case 0x13uLL:
        LOBYTE(v4) = -45;
        goto LABEL_3;
      case 0x14uLL:
        LOBYTE(v4) = -44;
        goto LABEL_3;
      case 0x15uLL:
        LOBYTE(v4) = -43;
        goto LABEL_3;
      case 0x16uLL:
        LOBYTE(v4) = -42;
        goto LABEL_3;
      case 0x17uLL:
        LOBYTE(v4) = -41;
        goto LABEL_3;
      case 0x18uLL:
        LOBYTE(v4) = -40;
        goto LABEL_3;
      case 0x19uLL:
        LOBYTE(v4) = -39;
        goto LABEL_3;
      case 0x1AuLL:
        LOBYTE(v4) = -38;
        goto LABEL_3;
      case 0x1BuLL:
        LOBYTE(v4) = -37;
        goto LABEL_3;
      case 0x1CuLL:
        LOBYTE(v4) = -36;
        goto LABEL_3;
      case 0x1DuLL:
        LOBYTE(v4) = -35;
        goto LABEL_3;
      case 0x1EuLL:
        LOBYTE(v4) = -34;
        goto LABEL_3;
      case 0x1FuLL:
        LOBYTE(v4) = -33;
        goto LABEL_3;
      case 0x20uLL:
        LOBYTE(v4) = -32;
        goto LABEL_3;
      case 0x21uLL:
        LOBYTE(v4) = -31;
        goto LABEL_3;
      case 0x22uLL:
        LOBYTE(v4) = -30;
        goto LABEL_3;
      case 0x23uLL:
        LOBYTE(v4) = -29;
        goto LABEL_3;
      case 0x24uLL:
        LOBYTE(v4) = -28;
        goto LABEL_3;
      case 0x25uLL:
        LOBYTE(v4) = -27;
        goto LABEL_3;
      case 0x26uLL:
        LOBYTE(v4) = -26;
        goto LABEL_3;
      case 0x27uLL:
        LOBYTE(v4) = -25;
        goto LABEL_3;
      case 0x28uLL:
        LOBYTE(v4) = -24;
        goto LABEL_3;
      case 0x29uLL:
        LOBYTE(v4) = -23;
        goto LABEL_3;
      case 0x2AuLL:
        LOBYTE(v4) = -22;
        goto LABEL_3;
      case 0x2BuLL:
        LOBYTE(v4) = -21;
        goto LABEL_3;
      case 0x2CuLL:
        LOBYTE(v4) = -20;
        goto LABEL_3;
      case 0x2DuLL:
        break;
      case 0x2EuLL:
        v6 = -18;
        break;
      case 0x2FuLL:
        v6 = -17;
        break;
      case 0x30uLL:
        v6 = -16;
        break;
      case 0x31uLL:
        v6 = -15;
        break;
      case 0x32uLL:
        v6 = -14;
        break;
      case 0x33uLL:
        v6 = -13;
        break;
      case 0x34uLL:
        v6 = -12;
        break;
      case 0x35uLL:
        v6 = -11;
        break;
      case 0x36uLL:
        v6 = -10;
        break;
      case 0x37uLL:
        v6 = -9;
        break;
      case 0x38uLL:
        v6 = -8;
        break;
      case 0x39uLL:
        v6 = -7;
        break;
      case 0x3AuLL:
        v6 = -6;
        break;
      case 0x3BuLL:
        v6 = -5;
        break;
      case 0x3CuLL:
        v6 = -4;
        break;
      case 0x3DuLL:
        v6 = -3;
        break;
      case 0x3EuLL:
        v6 = -2;
        break;
      default:
        v6 = -1;
        break;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C0767BDC()
{
  v0 = AddressOntologyNode.CountryCode.rawValue.getter();
  v2 = v1;
  if (v0 == AddressOntologyNode.CountryCode.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C095DF3C();
  }

  return v5 & 1;
}

unint64_t sub_1C0767C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F6D0;
  if (!qword_1EBE1F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6D0);
  }

  return result;
}

uint64_t sub_1C0767CD0()
{
  sub_1C095DFEC();
  AddressOntologyNode.CountryCode.rawValue.getter();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0767D38(uint64_t a1)
{
  AddressOntologyNode.CountryCode.rawValue.getter();
  sub_1C095D7BC();
}

uint64_t sub_1C0767D9C(uint64_t a1)
{
  sub_1C095DFEC();
  AddressOntologyNode.CountryCode.rawValue.getter();
  sub_1C095D7BC();

  return sub_1C095E03C();
}

uint64_t sub_1C0767E0C@<X0>(uint64_t *a1@<X8>)
{
  result = AddressOntologyNode.CountryCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C0767E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0767E5C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0767E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F6D8;
  if (!qword_1EBE1F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6D8);
  }

  return result;
}

unint64_t sub_1C0767EB4()
{
  result = qword_1EBE1F6E0;
  if (!qword_1EBE1F6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F6E8, &qword_1C0998C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6E0);
  }

  return result;
}

unint64_t sub_1C0767F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C0767F50(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0767F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F6F0;
  if (!qword_1EBE1F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F6F0);
  }

  return result;
}

uint64_t _s11CountryCodeOwet(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    goto LABEL_17;
  }

  if ((a2 + 254) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 254) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 254;
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

      return (*a1 | (v4 << 8)) - 254;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 254;
    }
  }

LABEL_17:
  if (*a1 == 255)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s11CountryCodeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 254 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 254) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 2)
  {
    v4 = 0;
  }

  if (a2 > 1)
  {
    v5 = ((a2 - 2) >> 8) + 1;
    *result = a2 - 2;
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
    *result = -1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1C07680F4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000155, 0x80000001C0A02E60, 0);
  qword_1EBE1F6F8 = result;
  return result;
}

id sub_1C076816C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000073, 0x80000001C0A02DE0, 0);
  qword_1EBE1F700 = result;
  return result;
}

id sub_1C07681E4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD0000000000000F2, 0x80000001C0A02CE0, 0);
  qword_1EBE1F708 = result;
  return result;
}

id sub_1C076825C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000022, 0x80000001C0A02CB0, 0);
  qword_1EBE1F710 = result;
  return result;
}

id sub_1C07682D4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000029, 0x80000001C0A02C80, 0);
  qword_1EBE1F718 = result;
  return result;
}

id sub_1C076834C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000027, 0x80000001C0A02C50, 0);
  qword_1EBE1F720 = result;
  return result;
}

id sub_1C07683C4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD0000000000001FELL, 0x80000001C0A02A50, 0);
  qword_1EBE1F728 = result;
  return result;
}

id sub_1C076843C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000093, 0x80000001C0A029B0, 0);
  qword_1EBE1F730 = result;
  return result;
}

id sub_1C07684B4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000047, 0x80000001C0A02960, 0);
  qword_1EBE1F738 = result;
  return result;
}

id sub_1C076852C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD000000000000223, 0x80000001C0A02730, 0);
  qword_1EBE1F740 = result;
  return result;
}

id sub_1C07685A4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1C076E7C0(0xD00000000000002DLL, 0x80000001C0A026A0, 0);
  qword_1EBE1F748 = result;
  return result;
}

char *sub_1C076861C()
{
  result = sub_1C076863C();
  qword_1EBE1F750 = result;
  return result;
}

char *sub_1C076863C()
{
  v0 = 0xEF646E657070615FLL;
  v1 = 0x726F74617265706FLL;
  v2 = 0x6C61757145746F6ELL;
  v3 = 0x80000001C09B28B0;
  if (byte_1F3F97AC0 > 2u)
  {
    if (byte_1F3F97AC0 == 3)
    {
      v3 = 0xE600000000000000;
      v2 = 0x646E65707061;
    }

    else if (byte_1F3F97AC0 == 4)
    {
      v3 = 0xE700000000000000;
      v2 = 0x6563616C706572;
    }

    else
    {
      v3 = 0xE900000000000073;
    }
  }

  else if (byte_1F3F97AC0)
  {
    if (byte_1F3F97AC0 == 1)
    {
      v2 = 0xD000000000000010;
      v3 = 0x80000001C09B2D20;
    }

    else
    {
      v2 = 0xD000000000000012;
    }
  }

  else
  {
    v2 = 0x726F74617265706FLL;
    v3 = 0xEF646E657070615FLL;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C051B0D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1C051B0D4((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = v2;
  *(v7 + 5) = v3;
  v8 = 0x6C61757145746F6ELL;
  v9 = 0x80000001C09B28B0;
  if (byte_1F3F97AC1 > 2u)
  {
    if (byte_1F3F97AC1 == 3)
    {
      v9 = 0xE600000000000000;
      v8 = 0x646E65707061;
    }

    else if (byte_1F3F97AC1 == 4)
    {
      v9 = 0xE700000000000000;
      v8 = 0x6563616C706572;
    }

    else
    {
      v9 = 0xE900000000000073;
    }
  }

  else if (byte_1F3F97AC1)
  {
    if (byte_1F3F97AC1 == 1)
    {
      v8 = 0xD000000000000010;
      v9 = 0x80000001C09B2D20;
    }

    else
    {
      v8 = 0xD000000000000012;
    }
  }

  else
  {
    v8 = 0x726F74617265706FLL;
    v9 = 0xEF646E657070615FLL;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C051B0D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  if (v11 >= v10 >> 1)
  {
    v4 = sub_1C051B0D4((v10 > 1), v11 + 1, 1, v4);
  }

  *(v4 + 2) = v11 + 1;
  v12 = &v4[16 * v11];
  *(v12 + 4) = v8;
  *(v12 + 5) = v9;
  if (byte_1F3F97AC2 > 2u)
  {
    if (byte_1F3F97AC2 == 3)
    {
      v0 = 0xE600000000000000;
      v1 = 0x646E65707061;
    }

    else if (byte_1F3F97AC2 == 4)
    {
      v0 = 0xE700000000000000;
      v1 = 0x6563616C706572;
    }

    else
    {
      v1 = 0x6C61757145746F6ELL;
      v0 = 0xE900000000000073;
    }
  }

  else if (byte_1F3F97AC2)
  {
    if (byte_1F3F97AC2 == 1)
    {
      v1 = 0xD000000000000010;
      v0 = 0x80000001C09B2D20;
    }

    else
    {
      v1 = 0xD000000000000012;
      v0 = 0x80000001C09B28B0;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C051B0D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v13 = *(v4 + 2);
  v14 = *(v4 + 3);
  v15 = v13 + 1;
  if (v13 >= v14 >> 1)
  {
    v59 = *(v4 + 2);
    v60 = sub_1C051B0D4((v14 > 1), v13 + 1, 1, v4);
    v13 = v59;
    v4 = v60;
  }

  v16 = 0;
  v17 = 16 * v13;
  *(v4 + 2) = v15;
  v18 = &v4[16 * v13];
  *(v18 + 4) = v1;
  *(v18 + 5) = v0;
  v19 = 0x80000001C09B2C40;
  v20 = 0x80000001C09B2CD0;
  v21 = 0x80000001C09B2C20;
  v22 = v13 + 2;
  v23 = &byte_1F3F97AE8;
  do
  {
    v25 = *v23++;
    v24 = v25;
    if (v25 > 5)
    {
      if (v24 == 10)
      {
        v26 = 0xD000000000000010;
      }

      else
      {
        v26 = 0x6C61757145746F6ELL;
      }

      if (v24 == 10)
      {
        v27 = v19;
      }

      else
      {
        v27 = 0xE900000000000073;
      }

      if (v24 == 9)
      {
        v26 = 0x6E6168547373656CLL;
        v27 = 0xE800000000000000;
      }

      v28 = 0xD000000000000013;
      if (v24 == 7)
      {
        v28 = 0x5472657461657267;
        v29 = 0xEB000000006E6168;
      }

      else
      {
        v29 = v20;
      }

      if (v24 == 6)
      {
        v28 = 0x6563616C706572;
        v29 = 0xE700000000000000;
      }

      v30 = v24 <= 8;
    }

    else
    {
      v26 = 0xD000000000000019;
      if (v24 == 4)
      {
        v27 = v21;
      }

      else
      {
        v26 = 0xD000000000000012;
        v27 = 0x80000001C09B28B0;
      }

      if (v24 == 3)
      {
        v26 = 0xD000000000000011;
        v27 = 0x80000001C09B2C90;
      }

      v28 = 0xD000000000000014;
      if (v24 == 1)
      {
        v29 = 0x80000001C09B2C60;
      }

      else
      {
        v28 = 0xD00000000000001CLL;
        v29 = 0x80000001C09B2CB0;
      }

      if (!v24)
      {
        v28 = 0xD000000000000010;
        v29 = 0x80000001C09B2D20;
      }

      v30 = v24 <= 2;
    }

    if (v30)
    {
      v31 = v28;
    }

    else
    {
      v31 = v26;
    }

    if (v30)
    {
      v32 = v29;
    }

    else
    {
      v32 = v27;
    }

    v33 = *(v4 + 3);
    if (v22 - 1 >= v33 >> 1)
    {
      v64 = v19;
      v65 = v13;
      v63 = v20;
      v35 = v4;
      v36 = v21;
      v37 = sub_1C051B0D4((v33 > 1), v22, 1, v35);
      v21 = v36;
      v20 = v63;
      v19 = v64;
      v4 = v37;
      v13 = v65;
    }

    *(v4 + 2) = v22;
    v34 = &v4[v17 + v16];
    *(v34 + 6) = v31;
    *(v34 + 7) = v32;
    ++v22;
    v16 += 16;
  }

  while (v16 != 96);
  v38 = 0x7465536F54646461;
  v39 = 0x80000001C09B2710;
  if (byte_1F3F97B10 > 2u)
  {
    if (byte_1F3F97B10 == 3)
    {
      v40 = 0x724665766F6D6572;
      v41 = 0xED00007465536D6FLL;
    }

    else if (byte_1F3F97B10 == 4)
    {
      v41 = 0xE800000000000000;
      v40 = 0x736E6961746E6F63;
    }

    else
    {
      v40 = 0x61746E6F43746F6ELL;
      v41 = 0xEB00000000736E69;
    }
  }

  else if (byte_1F3F97B10)
  {
    if (byte_1F3F97B10 == 1)
    {
      v40 = 0xD00000000000001ALL;
      v41 = 0x80000001C09B2710;
    }

    else
    {
      v41 = 0xE800000000000000;
      v40 = 0x7465536F54646461;
    }
  }

  else
  {
    v40 = 0xD000000000000015;
    v41 = 0x80000001C09B26F0;
  }

  v42 = *(v4 + 3);
  if (v22 - 1 >= v42 >> 1)
  {
    v61 = v13;
    v62 = sub_1C051B0D4((v42 > 1), v22, 1, v4);
    v13 = v61;
    v4 = v62;
  }

  *(v4 + 2) = v22;
  v43 = &v4[16 * v13 + 96];
  *(v43 + 48) = v40;
  *(v43 + 56) = v41;
  if (byte_1F3F97B11 > 2u)
  {
    if (byte_1F3F97B11 == 3)
    {
      v44 = 0x724665766F6D6572;
      v45 = 0xED00007465536D6FLL;
    }

    else if (byte_1F3F97B11 == 4)
    {
      v45 = 0xE800000000000000;
      v44 = 0x736E6961746E6F63;
    }

    else
    {
      v44 = 0x61746E6F43746F6ELL;
      v45 = 0xEB00000000736E69;
    }
  }

  else if (byte_1F3F97B11)
  {
    if (byte_1F3F97B11 == 1)
    {
      v44 = 0xD00000000000001ALL;
      v45 = 0x80000001C09B2710;
    }

    else
    {
      v45 = 0xE800000000000000;
      v44 = 0x7465536F54646461;
    }
  }

  else
  {
    v44 = 0xD000000000000015;
    v45 = 0x80000001C09B26F0;
  }

  v47 = *(v4 + 2);
  v46 = *(v4 + 3);
  v48 = v47 + 1;
  if (v47 >= v46 >> 1)
  {
    v4 = sub_1C051B0D4((v46 > 1), v47 + 1, 1, v4);
  }

  *(v4 + 2) = v48;
  v49 = &v4[16 * v47];
  *(v49 + 4) = v44;
  *(v49 + 5) = v45;
  if (byte_1F3F97B12 > 2u)
  {
    if (byte_1F3F97B12 == 3)
    {
      v50 = 0x724665766F6D6572;
      v51 = 0xED00007465536D6FLL;
    }

    else if (byte_1F3F97B12 == 4)
    {
      v51 = 0xE800000000000000;
      v50 = 0x736E6961746E6F63;
    }

    else
    {
      v50 = 0x61746E6F43746F6ELL;
      v51 = 0xEB00000000736E69;
    }
  }

  else if (byte_1F3F97B12)
  {
    if (byte_1F3F97B12 == 1)
    {
      v50 = 0xD00000000000001ALL;
      v51 = 0x80000001C09B2710;
    }

    else
    {
      v51 = 0xE800000000000000;
      v50 = 0x7465536F54646461;
    }
  }

  else
  {
    v50 = 0xD000000000000015;
    v51 = 0x80000001C09B26F0;
  }

  v52 = *(v4 + 3);
  v53 = v47 + 2;
  if (v48 >= v52 >> 1)
  {
    v4 = sub_1C051B0D4((v52 > 1), v53, 1, v4);
  }

  *(v4 + 2) = v53;
  v54 = &v4[16 * v48];
  *(v54 + 4) = v50;
  *(v54 + 5) = v51;
  if (byte_1F3F97B13 > 2u)
  {
    if (byte_1F3F97B13 == 3)
    {
      v38 = 0x724665766F6D6572;
      v39 = 0xED00007465536D6FLL;
    }

    else if (byte_1F3F97B13 == 4)
    {
      v39 = 0xE800000000000000;
      v38 = 0x736E6961746E6F63;
    }

    else
    {
      v38 = 0x61746E6F43746F6ELL;
      v39 = 0xEB00000000736E69;
    }
  }

  else if (byte_1F3F97B13)
  {
    if (byte_1F3F97B13 == 1)
    {
      v38 = 0xD00000000000001ALL;
    }

    else
    {
      v39 = 0xE800000000000000;
    }
  }

  else
  {
    v38 = 0xD000000000000015;
    v39 = 0x80000001C09B26F0;
  }

  v56 = *(v4 + 2);
  v55 = *(v4 + 3);
  if (v56 >= v55 >> 1)
  {
    v4 = sub_1C051B0D4((v55 > 1), v56 + 1, 1, v4);
  }

  *(v4 + 2) = v56 + 1;
  v57 = &v4[16 * v56];
  *(v57 + 4) = v38;
  *(v57 + 5) = v39;
  return v4;
}

void *static UsoGraphUtils.graphFromString(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C095D16C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBE15848 != -1)
  {
    v55 = v9;
    swift_once();
    v9 = v55;
  }

  if (!qword_1EBE1F6F8)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15850 != -1)
  {
    v56 = v9;
    swift_once();
    v9 = v56;
  }

  if (!qword_1EBE1F700)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15858 != -1)
  {
    v60 = v9;
    swift_once();
    v9 = v60;
  }

  if (!qword_1EBE1F708)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15860 != -1)
  {
    v61 = v9;
    swift_once();
    v9 = v61;
  }

  if (!qword_1EBE1F710)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15868 != -1)
  {
    v62 = v9;
    swift_once();
    v9 = v62;
  }

  if (!qword_1EBE1F718)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15870 != -1)
  {
    v63 = v9;
    swift_once();
    v9 = v63;
  }

  if (!qword_1EBE1F720)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15878 != -1)
  {
    v64 = v9;
    swift_once();
    v9 = v64;
  }

  if (!qword_1EBE1F728)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15880 != -1)
  {
    v65 = v9;
    swift_once();
    v9 = v65;
  }

  if (!qword_1EBE1F730)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15888 != -1)
  {
    v66 = v9;
    swift_once();
    v9 = v66;
  }

  if (!qword_1EBE1F738)
  {
    goto LABEL_35;
  }

  if (qword_1EBE15890 != -1)
  {
    v67 = v9;
    swift_once();
    v9 = v67;
  }

  if (!qword_1EBE1F740)
  {
LABEL_35:
    sub_1C076E764(v9, v10, v11);
    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 11;
    swift_willThrow();
    return v3;
  }

  v77 = v9;
  type metadata accessor for Graph();
  swift_allocObject();
  v3 = Graph.init()();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v83 = a1;
  v84 = a2;
  v17 = sub_1C051D6F4(v14, v15, v16);

  v76 = v17;
  sub_1C095DB4C();

  v18 = swift_beginAccess();
  v71 = (v14 + 16);
  v21 = *(v14 + 16);
  if (!v21[2])
  {
    goto LABEL_62;
  }

  v22 = v21[5];
  v81 = v21[4];
  v82 = v22;

  sub_1C095D15C();
  v23 = sub_1C095DB5C();
  v25 = v24;
  v75 = *(v8 + 8);
  v75(v13, v77);

  if (v23 == 1953460050 && v25 == 0xE400000000000000)
  {

    goto LABEL_38;
  }

  v28 = sub_1C095DF3C();

  if ((v28 & 1) == 0)
  {
LABEL_62:
    sub_1C076E764(v18, v19, v20);
    swift_allocError();
    *v48 = xmmword_1C0999870;
    *(v48 + 16) = 11;
    swift_willThrow();

LABEL_67:

    return v3;
  }

LABEL_38:
  v29 = *(*v71 + 16);
  if (v29)
  {
    v70 = v14;
    v73 = "logyNode12CentroidNode";

    v30 = (v69 + 40);
    v31 = MEMORY[0x1E69E7CC0];
    v74 = MEMORY[0x1E69E7CC0];
    v72 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v34 = *v30;
      v78 = *(v30 - 1);
      v79 = v31;
      v81 = v78;
      v82 = v34;

      sub_1C095D15C();
      v35 = sub_1C095DB5C();
      v37 = v36;
      v75(v13, v77);
      if (sub_1C0769BA0(0x696669746E656449, 0xEB000000005B7265, v35, v37))
      {

        v38 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1C051B0D4(0, *(v38 + 2) + 1, 1, v38);
        }

        v40 = *(v38 + 2);
        v39 = *(v38 + 3);
        v41 = v38;
        if (v40 >= v39 >> 1)
        {
          v41 = sub_1C051B0D4((v39 > 1), v40 + 1, 1, v38);
        }

        *(v41 + 2) = v40 + 1;
        v31 = v41;
        v42 = &v41[16 * v40];
        *(v42 + 4) = v78;
        *(v42 + 5) = v34;
        goto LABEL_43;
      }

      if (sub_1C0769BA0(0xD000000000000013, v73 | 0x8000000000000000, v35, v37))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1C051B0D4(0, *(v74 + 2) + 1, 1, v74);
        }

        v44 = *(v74 + 2);
        v43 = *(v74 + 3);
        v45 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v74 = sub_1C051B0D4((v43 > 1), v44 + 1, 1, v74);
        }

        v32 = v74;
      }

      else
      {
        v46 = sub_1C0769BA0(0x7053797469746E45, 0xEB000000005B6E61, v35, v37);

        if ((v46 & 1) == 0)
        {

          goto LABEL_42;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1C051B0D4(0, *(v72 + 2) + 1, 1, v72);
        }

        v44 = *(v72 + 2);
        v47 = *(v72 + 3);
        v45 = v44 + 1;
        if (v44 >= v47 >> 1)
        {
          v72 = sub_1C051B0D4((v47 > 1), v44 + 1, 1, v72);
        }

        v32 = v72;
      }

      *(v32 + 2) = v45;
      v33 = &v32[16 * v44];
      *(v33 + 4) = v78;
      *(v33 + 5) = v34;
LABEL_42:
      v31 = v79;
LABEL_43:
      v30 += 2;
      if (!--v29)
      {

        v49 = v72;
        v50 = v74;
        goto LABEL_65;
      }
    }
  }

  v31 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v51 = sub_1C0770434(v31);
  if (v4)
  {

    goto LABEL_67;
  }

  v52 = v51;

  sub_1C0769CFC(v50);
  v54 = v53;

  v57 = sub_1C076A294(v49);

  v85 = sub_1C058C538(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v58 = v3[4];
  result = swift_unownedRetainStrong();
  if (v58)
  {

    swift_unownedRetain();

    *&v80 = v3;
    *(&v80 + 1) = v58;
    v59 = *v71;

    sub_1C076B524(v3, &v80, v52, v54, v57, v59, 1, 0, &v85);

    swift_unownedRelease();

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0769AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C051B0D4(0, *(v7 + 2) + 1, 1, v7);
    *(a4 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C051B0D4((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(a4 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_1C0769BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1C095D81C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_1C095D81C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_1C095DF3C();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_1C095D81C();
      v7 = v9;
    }

    while (v9);
  }

  sub_1C095D81C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_1C0769CFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C058C2FC(MEMORY[0x1E69E7CC0]);
  v61 = *(a1 + 16);
  if (v61)
  {
    v5 = 0;
    v6 = a1 + 32;
    v7 = &unk_1EBE15000;
    v58 = a1 + 32;
    while (1)
    {
      v62 = v5;
      v63 = v4;
      v8 = (v6 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = v10;
      }

      if (((v9 >> 60) & ((v10 & 0x800000000000000) == 0)) != 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = 7;
      }

      *&v65 = 15;
      *(&v65 + 1) = v12 | (v11 << 16);
      v67 = v10;
      v68 = v9;
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
      v13 = sub_1C0771C78();
      sub_1C051D6F4(v13, v14, v15);
      v16 = sub_1C095DADC();
      v18 = v17;
      if (v7[266] != -1)
      {
        swift_once();
      }

      if (!qword_1EBE1F700 || (v19 = qword_1EBE1F700, v20 = sub_1C095D74C(), v21 = [v19 firstMatchInString:v20 options:0 range:{v16, v18}], v19, v20, !v21))
      {

        sub_1C076E764(v54, v55, v56);
        swift_allocError();
        *v57 = v10;
        *(v57 + 8) = v9;
        *(v57 + 16) = 4;
        swift_willThrow();
        return;
      }

      v22 = sub_1C07714C8(v21, 0x65646E4965646F6ELL, 0xEE006C6562614C78, v10, v9, sub_1C076FFC8, sub_1C076E89C);
      if (v22 & 0x100000000) != 0 || (v23 = v22, v24 = sub_1C07714C8(v21, 0x6C6562614C727361, 0xE800000000000000, v10, v9, sub_1C076FFC8, sub_1C076E89C), (v24 & 0x100000000) != 0) || (v59 = v24, v60 = v23, v25 = sub_1C095D74C(), v26 = [v21 rangeWithName_], v25, v26 == sub_1C095D14C()) || (sub_1C095DACC(), (v27))
      {

        sub_1C076E764(v50, v51, v52);
        swift_allocError();
        *v53 = v10;
        *(v53 + 8) = v9;
        *(v53 + 16) = 4;
        swift_willThrow();

        return;
      }

      v28 = sub_1C095D8EC();
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v35 = MEMORY[0x1C68DD630](v28, v30, v32, v34);
      v37 = v36;

      *&v65 = v35;
      *(&v65 + 1) = v37;
      v67 = 0xD000000000000011;
      v68 = 0x80000001C0A026D0;
      v38 = sub_1C095DB3C();

      v39 = *(v38 + 16);
      if (v39)
      {
        break;
      }

      v42 = MEMORY[0x1E69E7CC0];
LABEL_27:

      if (*(v42 + 2))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v65 = v63;
        sub_1C05CAE34(v59, v42, v60, isUniquelyReferenced_nonNull_native);

        v4 = v65;
      }

      else
      {

        v4 = v63;
      }

      v5 = v62 + 1;
      v6 = v58;
      v7 = &unk_1EBE15000;
      if (v62 + 1 == v61)
      {
        return;
      }
    }

    v40 = 0;
    v41 = (v38 + 40);
    v42 = MEMORY[0x1E69E7CC0];
    while (v40 < *(v38 + 16))
    {
      v43 = *(v41 - 1);
      v44 = *v41;

      sub_1C076E388(v43, v44, &v65);
      if (v2)
      {

        return;
      }

      v64 = v65;
      v45 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1C0578264(0, *(v42 + 2) + 1, 1, v42);
      }

      v47 = *(v42 + 2);
      v46 = *(v42 + 3);
      if (v47 >= v46 >> 1)
      {
        v42 = sub_1C0578264((v46 > 1), v47 + 1, 1, v42);
      }

      ++v40;
      *(v42 + 2) = v47 + 1;
      v48 = &v42[24 * v47];
      *(v48 + 2) = v64;
      *(v48 + 6) = v45;
      v41 += 2;
      if (v39 == v40)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C076A294(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C058C41C(MEMORY[0x1E69E7CC0]);
  v132 = *(a1 + 16);
  if (!v132)
  {
    return v4;
  }

  v5 = 0;
  v133 = a1 + 32;
  v6 = 0;
  for (i = &off_1E811B000; ; i = &off_1E811B000)
  {
    v148 = v5;
    v137 = v6;
    v8 = (v133 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10;
    }

    v12 = 7;
    if (((v9 >> 60) & ((v10 & 0x800000000000000) == 0)) != 0)
    {
      v12 = 11;
    }

    *&v162 = 15;
    *(&v162 + 1) = v12 | (v11 << 16);
    v151 = v10;
    v152 = v9;
    *&v158 = v10;
    *(&v158 + 1) = v9;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
    v13 = sub_1C0771C78();
    sub_1C051D6F4(v13, v14, v15);
    v16 = sub_1C095DADC();
    v18 = v17;
    if (qword_1EBE15878 != -1)
    {
      swift_once();
    }

    if (!qword_1EBE1F728 || (v19 = qword_1EBE1F728, v20 = sub_1C095D74C(), v21 = [v19 firstMatchInString:v20 options:0 range:{v16, v18}], v19, v20, !v21))
    {

      sub_1C076E764(v122, v123, v124);
      swift_allocError();
      *v125 = v151;
      *(v125 + 8) = v152;
      *(v125 + 16) = 6;
      swift_willThrow();
      goto LABEL_121;
    }

    v22 = v21;
    v149 = sub_1C07714C8(v21, 0x65646E4965646F6ELL, 0xEE006C6562614C78, v151, v152, sub_1C076FFC8, sub_1C076E89C);
    if ((v149 & 0x100000000) != 0)
    {

      sub_1C076E764(v126, v127, v128);
      swift_allocError();
      *v129 = v151;
      *(v129 + 8) = v152;
      *(v129 + 16) = 6;
      swift_willThrow();

      goto LABEL_121;
    }

    v23 = sub_1C095D74C();
    v24 = [v21 i[358]];

    if (v24 != sub_1C095D14C())
    {
      sub_1C095DACC();
      v25 = v148;
      if ((v26 & 1) == 0)
      {
        v28 = sub_1C095D8EC();
        v29 = MEMORY[0x1C68DD630](v28);
        v31 = v30;

        if (v29 == 0x61636F5669726953 && v31 == 0xE900000000000062 || (sub_1C095DF3C() & 1) != 0)
        {

          v27 = 1;
          goto LABEL_20;
        }

        if (v29 == 0x656C6946636F56 && v31 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
        {

          v27 = 2;
          goto LABEL_20;
        }

        if (v29 == 0x526E6F69746E654DLL && v31 == 0xEF7265766C6F7365 || (sub_1C095DF3C() & 1) != 0)
        {

          v27 = 3;
          goto LABEL_20;
        }

        if (v29 == 0xD000000000000013 && 0x80000001C09CD610 == v31 || (sub_1C095DF3C() & 1) != 0)
        {

          v27 = 4;
          goto LABEL_20;
        }

        if (v29 == 0x4143726573726150 && v31 == 0xEA00000000004954 || (sub_1C095DF3C() & 1) != 0)
        {

          v27 = 5;
          goto LABEL_20;
        }

        if (v29 == 0x5353726573726150 && v31 == 0xE900000000000055 || (sub_1C095DF3C() & 1) != 0)
        {

          v27 = 6;
          goto LABEL_20;
        }

        if (v29 == 0x6E776F6E6B6E75 && v31 == 0xE700000000000000)
        {

LABEL_115:
          v134 = 0;
          goto LABEL_21;
        }

        v121 = sub_1C095DF3C();

        if (v121)
        {
          goto LABEL_115;
        }
      }

      v27 = 7;
LABEL_20:
      v134 = v27;
      goto LABEL_21;
    }

    v134 = 7;
    v25 = v148;
LABEL_21:
    v32 = sub_1C095D74C();
    v33 = [v22 i[358]];

    if (v33 == sub_1C095D14C() || (sub_1C095DACC(), (v34 & 1) != 0))
    {
      v136 = 0;
      v139 = 0;
    }

    else
    {
      v35 = sub_1C095D8EC();
      v136 = MEMORY[0x1C68DD630](v35);
      v139 = v36;
    }

    v37 = sub_1C095D74C();
    v38 = [v22 i[358]];

    if (v38 == sub_1C095D14C() || (sub_1C095DACC(), (v39 & 1) != 0))
    {
      v135 = 0;
      v138 = 0;
    }

    else
    {
      v40 = sub_1C095D8EC();
      v135 = MEMORY[0x1C68DD630](v40);
      v138 = v41;
    }

    v42 = sub_1C095D74C();
    v43 = [v22 i[358]];

    if (v43 == sub_1C095D14C() || (sub_1C095DACC(), (v44 & 1) != 0))
    {
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v162 = 0u;
    }

    else
    {
      v45 = sub_1C095D8EC();
      v46 = MEMORY[0x1C68DD630](v45);
      v48 = v47;

      sub_1C076C7B8(v46, v48, &v158);
      if (v2)
      {

        v130 = v25;
        goto LABEL_122;
      }

      v164 = *&v159[16];
      v165 = v160;
      v166 = v161;
      v162 = v158;
      v163 = *v159;
    }

    v49 = sub_1C095D74C();
    v50 = [v22 i[358]];

    v150 = v22;
    if (v50 == sub_1C095D14C() || (sub_1C095DACC(), (v51 & 1) != 0))
    {
      v147 = MEMORY[0x1E69E7CC0];
      goto LABEL_37;
    }

    v59 = v4;
    v60 = sub_1C095D8EC();
    v61 = MEMORY[0x1C68DD630](v60);
    v63 = v62;

    *&v158 = v61;
    *(&v158 + 1) = v63;
    v64 = sub_1C095DB3C();

    v65 = *(v64 + 16);
    if (v65)
    {
      v4 = 0;
      v66 = (v64 + 40);
      v67 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v4 >= *(v64 + 16))
        {
          __break(1u);
          goto LABEL_127;
        }

        v68 = *(v66 - 1);
        v69 = *v66;

        sub_1C076D914(v68, v69, &v158);
        if (v2)
        {
          break;
        }

        v155 = v158;
        *v156 = *v159;
        *&v156[13] = *&v159[13];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1C057802C(0, *(v67 + 2) + 1, 1, v67);
        }

        v71 = *(v67 + 2);
        v70 = *(v67 + 3);
        if (v71 >= v70 >> 1)
        {
          v67 = sub_1C057802C((v70 > 1), v71 + 1, 1, v67);
        }

        ++v4;
        *(v67 + 2) = v71 + 1;
        v72 = &v67[48 * v71];
        *(v72 + 61) = *&v156[13];
        *(v72 + 2) = v155;
        *(v72 + 3) = *v156;
        v66 += 2;
        if (v65 == v4)
        {
          goto LABEL_86;
        }
      }

      sub_1C05145B4(&v162, &qword_1EBE1F788, &unk_1C0999A60);

LABEL_118:

LABEL_121:
      v130 = v148;
LABEL_122:
      sub_1C05149C4(v130, 0);
      return v4;
    }

    v67 = MEMORY[0x1E69E7CC0];
LABEL_86:
    v147 = v67;

    v4 = v59;
    v25 = v148;
    i = &off_1E811B000;
    v22 = v150;
LABEL_37:
    v146 = sub_1C07714C8(v22, 0x646E497472617473, 0xEF6C6562614C7865, v151, v152, sub_1C076FFC8, sub_1C076E89C);
    v145 = sub_1C07714C8(v22, 0x7865646E49646E65, 0xED00006C6562614CLL, v151, v152, sub_1C076FFC8, sub_1C076E89C);
    v52 = sub_1C095D74C();
    v53 = [v22 i[358]];

    if (v53 == sub_1C095D14C() || (sub_1C095DACC(), (v54 & 1) != 0))
    {
      v154 = MEMORY[0x1E69E7CC0];
      v55 = v150;
      goto LABEL_40;
    }

    v73 = sub_1C095D8EC();
    v74 = MEMORY[0x1C68DD630](v73);
    v76 = v75;

    *&v158 = v74;
    *(&v158 + 1) = v76;
    v77 = sub_1C095DB3C();

    v144 = *(v77 + 16);
    if (v144)
    {
      break;
    }

    v154 = MEMORY[0x1E69E7CC0];
    v55 = v150;
LABEL_88:

    v25 = v148;
    i = &off_1E811B000;
LABEL_40:
    v56 = sub_1C095D74C();
    v57 = [v55 i[358]];

    if (v57 == sub_1C095D14C() || (sub_1C095DACC(), (v58 & 1) != 0))
    {
      v140 = 0;
      v143 = 0;
    }

    else
    {
      v88 = sub_1C095D8EC();
      v140 = MEMORY[0x1C68DD630](v88);
      v143 = v89;
    }

    v90 = sub_1C095D74C();
    v91 = [v150 i[358]];

    if (v91 == sub_1C095D14C())
    {
      v92 = v2;
LABEL_68:

      v153 = 3;
      goto LABEL_71;
    }

    sub_1C095DACC();
    if (v93)
    {
      v92 = v2;
      goto LABEL_68;
    }

    v94 = v25;
    v95 = sub_1C095D8EC();
    v97 = v96;
    v99 = v98;
    v101 = v100;

    v102 = MEMORY[0x1C68DD630](v95, v97, v99, v101);
    v104 = v103;

    sub_1C076E08C(v102, v104, &v158);
    if (v2)
    {

      sub_1C05145B4(&v162, &qword_1EBE1F788, &unk_1C0999A60);

      v130 = v94;
      goto LABEL_122;
    }

    v92 = 0;

    v153 = v158;
    v25 = v94;
LABEL_71:
    LOBYTE(v167) = 1;
    *&v159[16] = v164;
    v160 = v165;
    v161 = v166;
    v158 = v162;
    *v159 = v163;
    sub_1C05149C4(v25, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = sub_1C057EAB4(v149);
    v108 = *(v4 + 16);
    v109 = (v106 & 1) == 0;
    v110 = v108 + v109;
    if (__OFADD__(v108, v109))
    {
      goto LABEL_128;
    }

    v111 = v106;
    if (*(v4 + 24) >= v110)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C0670398();
        if (v111)
        {
          goto LABEL_79;
        }

LABEL_78:
        sub_1C0670C64();
        goto LABEL_79;
      }

      if ((v106 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      sub_1C057BD2C(v110, isUniquelyReferenced_nonNull_native);
      v112 = sub_1C057EAB4(v149);
      if ((v111 & 1) != (v113 & 1))
      {
        goto LABEL_129;
      }

      v107 = v112;
      if ((v111 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

LABEL_79:
    v114 = *(v4 + 56);
    v115 = *(v114 + 8 * v107);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    *(v114 + 8 * v107) = v115;
    if ((v116 & 1) == 0)
    {
      v115 = sub_1C0522E00(0, *(v115 + 2) + 1, 1, v115);
      *(v114 + 8 * v107) = v115;
    }

    v118 = *(v115 + 2);
    v117 = *(v115 + 3);
    if (v118 >= v117 >> 1)
    {
      *(v114 + 8 * v107) = sub_1C0522E00((v117 > 1), v118 + 1, 1, v115);
    }

    v6 = v137 + 1;

    v119 = *(v114 + 8 * v107);
    *(v119 + 16) = v118 + 1;
    v120 = v119 + 192 * v118;
    *(v120 + 32) = v135;
    *(v120 + 40) = v138;
    *(v120 + 48) = v134;
    *(v120 + 49) = v4;
    *(v120 + 52) = v4 >> 24;
    *(v120 + 56) = v136;
    *(v120 + 64) = v139;
    *(v120 + 88) = *v159;
    *(v120 + 104) = *&v159[16];
    *(v120 + 120) = v160;
    *(v120 + 136) = v161;
    *(v120 + 72) = v158;
    *(v120 + 152) = v147;
    *(v120 + 160) = v146;
    *(v120 + 164) = BYTE4(v146) & 1;
    *(v120 + 167) = v168;
    *(v120 + 165) = v167;
    *(v120 + 168) = v145;
    *(v120 + 172) = BYTE4(v145) & 1;
    *(v120 + 173) = v169;
    *(v120 + 175) = v170;
    *(v120 + 176) = v154;
    *(v120 + 184) = v140;
    *(v120 + 192) = v143;
    *(v120 + 200) = v153;
    *(v120 + 204) = *&v157[3];
    v157[0] = BYTE4(v145) & 1;
    *(v120 + 201) = *v157;
    *(v120 + 208) = 0;
    *(v120 + 216) = 1;
    v5 = sub_1C07721FC;
    v2 = v92;
    if (v137 + 1 == v132)
    {
      return v4;
    }
  }

  v78 = 0;
  v79 = (v77 + 40);
  v154 = MEMORY[0x1E69E7CC0];
  v55 = v150;
  v141 = v77;
  v142 = v4;
  while (v78 < *(v77 + 16))
  {
    v80 = *(v79 - 1);
    v81 = *v79;

    sub_1C076DD64(v80, v81, &v158);
    if (v2)
    {

      sub_1C05145B4(&v162, &qword_1EBE1F788, &unk_1C0999A60);

      goto LABEL_118;
    }

    v82 = v158;
    v83 = *v159;
    v84 = v159[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v154 = sub_1C0578148(0, *(v154 + 2) + 1, 1, v154);
    }

    v86 = *(v154 + 2);
    v85 = *(v154 + 3);
    if (v86 >= v85 >> 1)
    {
      v154 = sub_1C0578148((v85 > 1), v86 + 1, 1, v154);
    }

    ++v78;
    *(v154 + 2) = v86 + 1;
    v87 = &v154[24 * v86];
    *(v87 + 2) = v82;
    *(v87 + 12) = v83;
    v87[52] = v84;
    v79 += 2;
    v2 = 0;
    v77 = v141;
    v4 = v142;
    v55 = v150;
    if (v144 == v78)
    {
      goto LABEL_88;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

void *sub_1C076B524(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v202 = a8;
  v185 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F760, &qword_1C0999A48);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v169[-v17];
  v186 = *a2;
  result = sub_1C0771A10(a6, a7, v199);
  if (v9)
  {
    return result;
  }

  v181 = v18;
  v179 = a3;
  v184 = v200;
  if (!v200)
  {
    return result;
  }

  v174 = a4;
  v175 = a7;
  v171 = a6;
  v180 = a1;
  v183 = v199[0];
  v176 = 0;
  v177 = v199[1];
  v20 = *(&v201 + 1);
  v21 = v201;
  v22 = HIBYTE(*(&v201 + 1)) & 0xFLL;
  if ((*(&v201 + 1) & 0x2000000000000000) == 0)
  {
    v22 = v201;
  }

  v23 = 7;
  if (((*(&v201 + 1) >> 60) & ((v201 & 0x800000000000000) == 0)) != 0)
  {
    v23 = 11;
  }

  *&v189 = 15;
  *(&v189 + 1) = v23 | (v22 << 16);
  v188[0] = v201;

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  v25 = sub_1C0771C78();
  v28 = sub_1C051D6F4(v25, v26, v27);
  v172 = v25;
  v173 = v24;
  v29 = sub_1C095DADC();
  v31 = v30;
  if (qword_1EBE15860 == -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    swift_once();
LABEL_8:
    v182 = v31;
    if (!qword_1EBE1F710)
    {
      goto LABEL_15;
    }

    v32 = qword_1EBE1F710;
    v33 = sub_1C095D74C();
    v34 = [v32 firstMatchInString:v33 options:0 range:{v29, v31}];

    if (!v34)
    {
      goto LABEL_15;
    }

    v35 = sub_1C07714C8(v34, 0x65646E4965646F6ELL, 0xEE006C6562614C78, v21, v20, sub_1C076FFC8, sub_1C076E89C);
    if ((v35 & 0x100000000) != 0)
    {

LABEL_15:
      v170 = 0;
      v178 = 0;
      v31 = MEMORY[0x1E69E7CC0];
      v187 = MEMORY[0x1E69E7CC0];
      goto LABEL_16;
    }

    v36 = v35;
    v37 = v179;
    if (*(v179 + 16) && (v38 = sub_1C057EAB4(v35), (v39 & 1) != 0))
    {
      v31 = *(*(v37 + 56) + 8 * v38);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    if (*(v185 + 16) && (sub_1C057EAB4(v36), (v72 & 1) != 0))
    {
    }

    else
    {
      v73 = MEMORY[0x1E69E7CC0];
    }

    v187 = v73;
    v74 = v174;
    if (*(v174 + 16) && (v75 = sub_1C057EAB4(v36), (v76 & 1) != 0))
    {
      v77 = *(v74 + 56) + 16 * v75;
      v170 = *v77;
      v178 = *(v77 + 8);
    }

    else
    {

      v170 = 0;
      v178 = 0;
    }

LABEL_16:
    v40 = v181;
    *&v189 = v21;
    *(&v189 + 1) = v20;
    *&v188[0] = 0x646E4965646F6E3CLL;
    *(&v188[0] + 1) = 0xEB000000003D7865;
    v41 = sub_1C095D1FC();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);

    v167 = v28;
    v168 = v28;
    sub_1C095DB7C();
    v43 = v42;
    sub_1C05145B4(v40, &qword_1EBE1F760, &qword_1C0999A48);

    if ((v43 & 1) == 0)
    {
      v44 = sub_1C095D8EC();
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v21 = MEMORY[0x1C68DD630](v44, v46, v48, v50);
      v20 = v51;

      v52 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v52 = v21;
      }

      v53 = 7;
      if (((v20 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
      {
        v53 = 11;
      }

      *&v189 = 15;
      *(&v189 + 1) = v53 | (v52 << 16);
      *&v188[0] = v21;
      *(&v188[0] + 1) = v20;

      v29 = sub_1C095DADC();
      v182 = v54;
    }

    if (qword_1EBE15868 != -1)
    {
      swift_once();
    }

    if (qword_1EBE1F718)
    {
      v55 = qword_1EBE1F718;
      v56 = sub_1C095D74C();
      v57 = [v55 firstMatchInString:v56 options:0 range:{v29, v182}];

      if (v57)
      {
        v58 = sub_1C095D74C();
        v181 = v57;
        v59 = [v57 rangeWithName_];

        if (v59 != sub_1C095D14C())
        {
          sub_1C095DACC();
          if ((v60 & 1) == 0)
          {
            v78 = sub_1C095D8EC();
            v79 = MEMORY[0x1C68DD630](v78);
            v81 = v80;

            if (qword_1ED5D7CA0 != -1)
            {
              swift_once();
            }

            v189 = xmmword_1ED5D7CA8;
            v190 = xmmword_1ED5D7CB8;
            *&v191 = qword_1ED5D7CC8;

            v21 = sub_1C0514CE0(&v189, v79, v81, 1, MEMORY[0x1E69E7CC0]);

LABEL_71:

            goto LABEL_72;
          }
        }
      }
    }

    if (qword_1EBE15870 != -1)
    {
      swift_once();
    }

    if (qword_1EBE1F720)
    {
      v61 = qword_1EBE1F720;
      v62 = sub_1C095D74C();
      v63 = [v61 firstMatchInString:v62 options:0 range:{v29, v182}];

      if (v63)
      {
        v64 = sub_1C095D74C();
        v65 = [v63 rangeWithName_];

        if (v65 == sub_1C095D14C() || (sub_1C095DACC(), (v66 & 1) != 0))
        {

          goto LABEL_36;
        }

        v82 = sub_1C095D8EC();
        v86 = v85;
        if ((v82 ^ v83) >> 14)
        {
          v87 = v82;
          v88 = v83;
          v89 = v84;
          v90 = v176;
          v182 = sub_1C076FEFC(v82, v83, v84, v85, 10);
          v176 = v90;
          if ((v91 & 0x100) != 0)
          {
            v93 = sub_1C076F3AC(v87, v88, v89, v86, 10);
            v92 = v97;
          }

          else
          {
            v92 = v91;

            v93 = v182;
          }

          if (v92)
          {
            v98 = 0;
          }

          else
          {
            v98 = v93;
          }

          v99 = v92 & 1;
        }

        else
        {

          v98 = 0;
          v99 = 1;
        }

        if (qword_1ED5BDED8 != -1)
        {
          swift_once();
        }

        v189 = xmmword_1ED5BDEE0;
        v190 = xmmword_1ED5BDEF0;
        *&v191 = qword_1ED5BDF00;

        v21 = sub_1C0514CE0(&v189, v98, v99, 0, MEMORY[0x1E69E7CC0]);

        goto LABEL_71;
      }
    }

    *&v189 = v21;
    *(&v189 + 1) = v20;
    *&v188[0] = 14906;
    *(&v188[0] + 1) = 0xE200000000000000;
    if (sub_1C095DB8C())
    {
      *&v189 = v21;
      *(&v189 + 1) = v20;
      *&v190 = 1802723668;
      *(&v190 + 1) = 0xE400000000000000;
      *&v191 = 0;

      v21 = sub_1C0514CE0(&v189, 0, 0, 255, MEMORY[0x1E69E7CC0]);
    }

    else if (v177 == 0x5664656E69666564 && v184 == 0xEC00000065756C61 || (v71 = sub_1C095DF3C(), (v71 & 1) != 0))
    {
      *&v189 = v21;
      *(&v189 + 1) = v20;
      strcpy(&v190, "DefinedValue");
      BYTE13(v190) = 0;
      HIWORD(v190) = -5120;
      *&v191 = 0;

      v21 = sub_1C0514CE0(&v189, 0, 0, 255, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      if (qword_1EBE158A0 != -1)
      {
        v71 = swift_once();
      }

      v94 = qword_1EBE1F750;
      *&v189 = v21;
      *(&v189 + 1) = v20;
      MEMORY[0x1EEE9AC00](v71);
      v167 = &v189;

      v95 = v176;
      v96 = sub_1C0576198(sub_1C0771CDC, &v169[-32], v94);
      v176 = v95;

      if (v96)
      {
        *&v189 = v21;
        *(&v189 + 1) = v20;
        strcpy(&v190, "Operator");
        BYTE9(v190) = 0;
        WORD5(v190) = 0;
        HIDWORD(v190) = -402653184;
        *&v191 = 0;

        v21 = sub_1C0514CE0(&v189, 0, 0, 255, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        *&v189 = v21;
        *(&v189 + 1) = v20;
        *&v188[0] = 95;
        *(&v188[0] + 1) = 0xE100000000000000;
        if ((sub_1C095DB8C() & 1) == 0)
        {

LABEL_36:

          sub_1C076E764(v67, v68, v69);
          swift_allocError();
          *v70 = v21;
          *(v70 + 8) = v20;
          *(v70 + 16) = 0;
          return swift_willThrow();
        }

        *&v189 = v21;
        *(&v189 + 1) = v20;
        *&v190 = 0x797469746E45;
        *(&v190 + 1) = 0xE600000000000000;
        *&v191 = 0;

        v21 = sub_1C0514CE0(&v189, 0, 0, 255, MEMORY[0x1E69E7CC0]);
      }
    }

LABEL_72:

    swift_unownedRetain();

    v29 = *(v31 + 16);
    if (!v29)
    {
      break;
    }

    v28 = 0;
    v20 = v31 + 32;
    v100 = v31;
    while (v28 < *(v31 + 16))
    {
      v101 = *(v20 + 16);
      v189 = *v20;
      v190 = v101;
      v102 = *(v20 + 32);
      v103 = *(v20 + 48);
      v104 = *(v20 + 64);
      *(v193 + 9) = *(v20 + 73);
      v192 = v103;
      v193[0] = v104;
      v191 = v102;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v105 = *(v21 + 104);
      sub_1C0518B04(&v189, v188);
      sub_1C0518B04(&v189, v188);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 104) = v105;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v105 = sub_1C0519CF8(0, *(v105 + 2) + 1, 1, v105);
        *(v21 + 104) = v105;
      }

      v108 = *(v105 + 2);
      v107 = *(v105 + 3);
      if (v108 >= v107 >> 1)
      {
        v105 = sub_1C0519CF8((v107 > 1), v108 + 1, 1, v105);
      }

      ++v28;
      *(v105 + 2) = v108 + 1;
      v109 = &v105[96 * v108];
      v110 = v190;
      *(v109 + 2) = v189;
      *(v109 + 3) = v110;
      v111 = v191;
      v112 = v192;
      v113 = v193[0];
      *(v109 + 105) = *(v193 + 9);
      *(v109 + 5) = v112;
      *(v109 + 6) = v113;
      *(v109 + 4) = v111;
      *(v21 + 104) = v105;
      swift_endAccess();

      sub_1C0518B60(&v189);
      v20 += 96;
      v31 = v100;
      if (v29 == v28)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_111:
    __break(1u);
  }

LABEL_80:

  v28 = v202;
  v114 = v178;
  if (!v178)
  {
    goto LABEL_85;
  }

  swift_unownedRetainStrong();
  v115 = *(v21 + 112);

  v116 = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 112) = v115;
  if ((v116 & 1) == 0)
  {
    goto LABEL_115;
  }

  while (1)
  {
    v117 = v170;
    v119 = *(v115 + 2);
    v118 = *(v115 + 3);
    if (v119 >= v118 >> 1)
    {
      v115 = sub_1C052233C((v118 > 1), v119 + 1, 1, v115);
    }

    *(v115 + 2) = v119 + 1;
    v120 = &v115[16 * v119];
    *(v120 + 8) = v117;
    *(v120 + 5) = v114;
    *(v21 + 112) = v115;

LABEL_85:
    v121 = v187;
    v29 = *(v187 + 16);
    if (v29)
    {
      v31 = 0;
      v20 = v187 + 32;
      while (v31 < *(v121 + 16))
      {
        v122 = *v20;
        v123 = *(v20 + 16);
        v124 = *(v20 + 48);
        v191 = *(v20 + 32);
        v192 = v124;
        v189 = v122;
        v190 = v123;
        v125 = *(v20 + 64);
        v126 = *(v20 + 80);
        v127 = *(v20 + 112);
        v194 = *(v20 + 96);
        v195 = v127;
        v193[0] = v125;
        v193[1] = v126;
        v128 = *(v20 + 128);
        v129 = *(v20 + 144);
        v130 = *(v20 + 160);
        *(v198 + 9) = *(v20 + 169);
        v197 = v129;
        v198[0] = v130;
        v196 = v128;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v131 = *(v21 + 120);
        sub_1C0521E78(&v189, v188);
        sub_1C0521E78(&v189, v188);
        v132 = swift_isUniquelyReferenced_nonNull_native();
        *(v21 + 120) = v131;
        if ((v132 & 1) == 0)
        {
          v131 = sub_1C0522E00(0, *(v131 + 2) + 1, 1, v131);
          *(v21 + 120) = v131;
        }

        v134 = *(v131 + 2);
        v133 = *(v131 + 3);
        if (v134 >= v133 >> 1)
        {
          v131 = sub_1C0522E00((v133 > 1), v134 + 1, 1, v131);
        }

        ++v31;
        *(v131 + 2) = v134 + 1;
        v135 = &v131[192 * v134];
        v136 = v189;
        v137 = v190;
        v138 = v192;
        *(v135 + 4) = v191;
        *(v135 + 5) = v138;
        *(v135 + 2) = v136;
        *(v135 + 3) = v137;
        v139 = v193[0];
        v140 = v193[1];
        v141 = v195;
        *(v135 + 8) = v194;
        *(v135 + 9) = v141;
        *(v135 + 6) = v139;
        *(v135 + 7) = v140;
        v142 = v196;
        v143 = v197;
        v144 = v198[0];
        *(v135 + 201) = *(v198 + 9);
        *(v135 + 11) = v143;
        *(v135 + 12) = v144;
        *(v135 + 10) = v142;
        *(v21 + 120) = v131;
        swift_endAccess();

        sub_1C05755CC(&v189);
        v20 += 192;
        v28 = v202;
        v121 = v187;
        if (v29 == v31)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_111;
    }

LABEL_93:
    v114 = a9;

    v145 = v180;
    if (v183 > v28)
    {
      goto LABEL_97;
    }

    v146 = *a9;
    if (!*(*a9 + 16))
    {
      break;
    }

    v147 = sub_1C0514E38();
    if ((v148 & 1) == 0)
    {
      break;
    }

    v186 = *(*(v146 + 56) + 16 * v147);
LABEL_97:
    v149 = v186;

    v150 = *(&v186 + 1);
    swift_unownedRetain();

    swift_unownedRetain();
    swift_unownedRetainStrong();
    v151 = *(v150 + 56);

    swift_unownedRetainStrong();
    v152 = *(v21 + 56);

    *&v189 = v151;
    *(&v189 + 1) = v152;
    LODWORD(v190) = 0;
    *(&v190 + 1) = v177;
    *&v191 = v184;
    *(&v191 + 1) = 0x746E656D75677241;
    v192 = 0xE800000000000000;
    swift_beginAccess();
    v115 = *(v149 + 16);

    sub_1C0514AC4(&v189, v188);
    v153 = swift_isUniquelyReferenced_nonNull_native();
    *(v149 + 16) = v115;
    if ((v153 & 1) == 0)
    {
      v115 = sub_1C0514F9C(0, *(v115 + 2) + 1, 1, v115);
      *(v149 + 16) = v115;
    }

    v28 = *(v115 + 2);
    v154 = *(v115 + 3);
    if (v28 >= v154 >> 1)
    {
      v115 = sub_1C0514F9C((v154 > 1), v28 + 1, 1, v115);
    }

    *(v115 + 2) = v28 + 1;
    v155 = &v115[64 * v28];
    v156 = v189;
    v157 = v190;
    v158 = v192;
    *(v155 + 4) = v191;
    *(v155 + 5) = v158;
    *(v155 + 2) = v156;
    *(v155 + 3) = v157;
    *(v149 + 16) = v115;
    swift_endAccess();

    sub_1C0514A70(&v189);

    swift_unownedRelease();
    v159 = v183 + 4;
    if (__OFADD__(v183, 4))
    {
      __break(1u);
    }

    else
    {

      swift_unownedRetain();
      v160 = swift_isUniquelyReferenced_nonNull_native();
      *&v188[0] = *a9;
      *a9 = 0x8000000000000000;
      v115 = v188;
      sub_1C05CAF70(v145, v21, v159, v160);
      *a9 = *&v188[0];
      *&v188[0] = v145;
      *(&v188[0] + 1) = v21;
      if (!__OFADD__(v175, 1))
      {
        sub_1C076B524(v145, v188, v179, v174, v185, v171, v175 + 1, v183, a9);
        sub_1C0771CFC(v149, v150);
        goto LABEL_105;
      }
    }

    __break(1u);
LABEL_115:
    v115 = sub_1C052233C(0, *(v115 + 2) + 1, 1, v115);
    *(v21 + 112) = v115;
  }

  *&v189 = 0;
  *(&v189 + 1) = 0xE000000000000000;
  sub_1C095DC1C();
  MEMORY[0x1C68DD690](0xD000000000000037, 0x80000001C0A02440);
  *&v188[0] = v175;
  v161 = sub_1C095DF0C();
  MEMORY[0x1C68DD690](v161);

  v163 = v189;
  sub_1C076E764(v162, v164, v165);
  swift_allocError();
  *v166 = v163;
  *(v166 + 16) = 5;
  swift_willThrow();
LABEL_105:

  return swift_unownedRelease();
}

void sub_1C076C7B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  v6 = sub_1C0771C78();
  sub_1C051D6F4(v6, v7, v8);
  v9 = sub_1C095DADC();
  v11 = v10;
  if (qword_1EBE15890 != -1)
  {
LABEL_147:
    swift_once();
  }

  if (!qword_1EBE1F740 || (v12 = qword_1EBE1F740, v79 = a1, v13 = sub_1C095D74C(), v14 = [v12 firstMatchInString:v13 options:0 range:{v9, v11}], v12, v13, !v14))
  {
    v18 = MEMORY[0x1E69E7CC0];
    *a3 = 0;
    *(a3 + 8) = 1;
    *(a3 + 12) = 0;
    *(a3 + 16) = 1;
    *(a3 + 20) = 0;
    *(a3 + 24) = 1;
    *(a3 + 28) = 0;
    *(a3 + 32) = 1;
    *(a3 + 36) = 0;
    *(a3 + 40) = 1;
    *(a3 + 44) = 0;
    *(a3 + 48) = 1;
    *(a3 + 52) = 0;
    *(a3 + 56) = 1;
    *(a3 + 60) = 0;
    *(a3 + 64) = 1;
    *(a3 + 72) = v18;
    return;
  }

  v15 = sub_1C095D74C();
  v16 = [v14 rangeWithName_];

  v78 = v14;
  if (v16 == sub_1C095D14C() || (sub_1C095DACC(), (v17 & 1) != 0))
  {
    v81 = 0;
  }

  else
  {
    v19 = sub_1C095D8EC();
    MEMORY[0x1C68DD630](v19);

    v20 = sub_1C095DB3C();

    v21 = *(v20 + 16);
    v22 = 0;
    if (v21)
    {
      v23 = (v20 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = dword_1F3F8CA18;
        v27 = qword_1F3F8CA20 == v24 && unk_1F3F8CA28 == v25;
        if (v27 || (v28 = v22, v29 = sub_1C095DF3C(), LODWORD(v22) = v28, (v29 & 1) != 0) || ((v26 = dword_1F3F8CA30, qword_1F3F8CA38 == v24) ? (v30 = *aAtch == v25) : (v30 = 0), v30 || (v31 = sub_1C095DF3C(), LODWORD(v22) = v28, (v31 & 1) != 0) || ((v26 = dword_1F3F8CA48, qword_1F3F8CA50 == v24) ? (v32 = off_1F3F8CA58 == v25) : (v32 = 0), v32 || (v33 = sub_1C095DF3C(), LODWORD(v22) = v28, (v33 & 1) != 0) || (v26 = dword_1F3F8CA60, qword_1F3F8CA68 == v24) && unk_1F3F8CA70 == v25 || (v34 = sub_1C095DF3C(), v22 = v28, (v34 & 1) != 0))))
        {
          if ((v26 & ~v22) != 0)
          {
            v35 = v26;
          }

          else
          {
            v35 = 0;
          }

          v22 = v35 | v22;
        }

        v23 += 2;
        --v21;
      }

      while (v21);
    }

    v81 = v22;

    v14 = v78;
    a1 = v79;
  }

  v36 = sub_1C095D74C();
  v37 = [v14 rangeWithName_];

  if (v37 == sub_1C095D14C() || (sub_1C095DACC(), (v38 & 1) != 0))
  {
    LODWORD(v77) = 0;
    LOBYTE(v39) = 1;
  }

  else
  {
    sub_1C095D8EC();
    v77 = sub_1C095DA6C();
    v39 = HIDWORD(v77) & 1;
  }

  v76 = v39;
  v75 = sub_1C07714C8(v14, 0xD000000000000012, 0x80000001C0A02540, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v74 = sub_1C07714C8(v14, 0xD000000000000016, 0x80000001C0A02560, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v73 = sub_1C07714C8(v14, 0xD000000000000015, 0x80000001C0A02580, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v72 = sub_1C07714C8(v14, 0xD000000000000019, 0x80000001C0A025A0, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v40 = sub_1C07714C8(v14, 0xD000000000000011, 0x80000001C0A025C0, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v71 = sub_1C07714C8(v14, 0xD000000000000012, 0x80000001C0A025E0, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v70 = sub_1C07714C8(v14, 0xD000000000000016, 0x80000001C0A02600, a1, a2, sub_1C076FFC8, sub_1C076E89C);
  v41 = sub_1C095D74C();
  v42 = [v14 rangeWithName_];

  if (v42 == sub_1C095D14C() || (sub_1C095DACC(), (v43 & 1) != 0))
  {
    v44 = MEMORY[0x1E69E7CC0];
LABEL_145:

    *a3 = v81;
    *(a3 + 4) = v77;
    *(a3 + 8) = v76;
    *(a3 + 12) = v75;
    *(a3 + 16) = BYTE4(v75) & 1;
    *(a3 + 20) = v74;
    *(a3 + 24) = BYTE4(v74) & 1;
    *(a3 + 28) = v73;
    *(a3 + 32) = BYTE4(v73) & 1;
    *(a3 + 36) = v72;
    *(a3 + 40) = BYTE4(v72) & 1;
    *(a3 + 44) = v40;
    *(a3 + 48) = BYTE4(v40) & 1;
    *(a3 + 52) = v71;
    *(a3 + 56) = BYTE4(v71) & 1;
    *(a3 + 60) = v70;
    *(a3 + 64) = BYTE4(v70) & 1;
    *(a3 + 72) = v44;
    return;
  }

  v69 = v40;
  v45 = sub_1C095D8EC();
  MEMORY[0x1C68DD630](v45);

  v9 = sub_1C095DB3C();

  v80 = *(v9 + 16);
  if (!v80)
  {
    v44 = MEMORY[0x1E69E7CC0];
LABEL_144:

    v40 = v69;
    goto LABEL_145;
  }

  v46 = 0;
  v11 = (v9 + 40);
  v44 = MEMORY[0x1E69E7CC0];
  a1 = v9;
  while (1)
  {
    if (v46 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_147;
    }

    v49 = *(v11 - 1);
    v48 = *v11;
    v50 = v49 == 0x656E696665646E75 && v48 == 0xE900000000000064;
    if (!v50 && (sub_1C095DF3C() & 1) == 0)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v51 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v44 = sub_1C0578750((v51 > 1), v52 + 1, 1, v44);
    }

    v47 = 0;
LABEL_44:
    ++v46;
    *(v44 + 2) = v53;
    v44[v52 + 32] = v47;
    v11 += 2;
    v9 = a1;
    if (v80 == v46)
    {
      goto LABEL_144;
    }
  }

  if (v49 == 0x6F747541656D6F48 && v48 == 0xEE006E6F6974616DLL || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v54 = *(v44 + 3);
    v53 = v52 + 1;
    v47 = 1;
    if (v52 >= v54 >> 1)
    {
      v44 = sub_1C0578750((v54 > 1), v52 + 1, 1, v44);
    }

    goto LABEL_44;
  }

  if (v49 == 0x6D796E6F6E7953 && v48 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v55 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v55 >> 1)
    {
      v44 = sub_1C0578750((v55 > 1), v52 + 1, 1, v44);
    }

    v47 = 2;
    goto LABEL_44;
  }

  if (v49 == 0x74696C736E617254 && v48 == 0xEF6E6F6974617265 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v56 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v56 >> 1)
    {
      v44 = sub_1C0578750((v56 > 1), v52 + 1, 1, v44);
    }

    v47 = 3;
    goto LABEL_44;
  }

  if (v49 == 0x6465646E61707845 && v48 == 0xED0000696A6F6D45 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v57 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v57 >> 1)
    {
      v44 = sub_1C0578750((v57 > 1), v52 + 1, 1, v44);
    }

    v47 = 4;
    goto LABEL_44;
  }

  if (v49 == 0xD000000000000013 && 0x80000001C09CD7F0 == v48 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v58 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v58 >> 1)
    {
      v44 = sub_1C0578750((v58 > 1), v52 + 1, 1, v44);
    }

    v47 = 5;
    goto LABEL_44;
  }

  if (v49 == 0xD000000000000011 && 0x80000001C09CD7D0 == v48 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v59 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v59 >> 1)
    {
      v44 = sub_1C0578750((v59 > 1), v52 + 1, 1, v44);
    }

    v47 = 6;
    goto LABEL_44;
  }

  if (v49 == 0x48746361746E6F43 && v48 == 0xED0000656C646E61 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v60 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v60 >> 1)
    {
      v44 = sub_1C0578750((v60 > 1), v52 + 1, 1, v44);
    }

    v47 = 7;
    goto LABEL_44;
  }

  if (v49 == 0x614D786966657250 && v48 == 0xEE00676E69686374 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v61 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v61 >> 1)
    {
      v44 = sub_1C0578750((v61 > 1), v52 + 1, 1, v44);
    }

    v47 = 8;
    goto LABEL_44;
  }

  if (v49 == 0xD000000000000010 && 0x80000001C09CD7B0 == v48 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v62 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v62 >> 1)
    {
      v44 = sub_1C0578750((v62 > 1), v52 + 1, 1, v44);
    }

    v47 = 9;
    goto LABEL_44;
  }

  if (v49 == 0x636974656E6F6850 && v48 == 0xEF7265686374614DLL || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v63 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v63 >> 1)
    {
      v44 = sub_1C0578750((v63 > 1), v52 + 1, 1, v44);
    }

    v47 = 10;
    goto LABEL_44;
  }

  if (v49 == 0x7A6974616D6D654CLL && v48 == 0xED00006E6F697461 || (sub_1C095DF3C() & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1C0578750(0, *(v44 + 2) + 1, 1, v44);
    }

    v52 = *(v44 + 2);
    v64 = *(v44 + 3);
    v53 = v52 + 1;
    if (v52 >= v64 >> 1)
    {
      v44 = sub_1C0578750((v64 > 1), v52 + 1, 1, v44);
    }

    v47 = 11;
    goto LABEL_44;
  }

  sub_1C076E764(v65, v66, v67);
  swift_allocError();
  *v68 = v79;
  *(v68 + 8) = a2;
  *(v68 + 16) = 9;
  swift_willThrow();
}