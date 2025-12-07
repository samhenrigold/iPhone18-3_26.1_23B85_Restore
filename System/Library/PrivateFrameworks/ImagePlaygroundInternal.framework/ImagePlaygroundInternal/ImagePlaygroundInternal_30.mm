void sub_1D25CA8F4(uint64_t a1)
{
  sub_1D25CAAA4(319, &qword_1EC6D7730, type metadata accessor for PlaygroundHomeViewModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1D25CAB08(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1D22EAE8C(319);
      if (v3 <= 0x3F)
      {
        sub_1D247E504(319);
        if (v4 <= 0x3F)
        {
          sub_1D25CAAA4(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1D25CAB08(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for GPAlertStack(319);
              if (v7 <= 0x3F)
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

void sub_1D25CAAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D25CAB08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D25CAB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE710, &qword_1D2896AB0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = sub_1D2876138();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2873998();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE718, &qword_1D2896AB8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE720, &qword_1D2896AC0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  if (*v2 == 4)
  {
    v36 = v18;
    v37 = a1;
    v38 = v17;
    v39 = v4;
    v40 = v6;
    if (qword_1EC6D8B60 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v9, qword_1EC6E3BC0);
    v22 = *(v10 + 16);
    v22(v12, v21, v9);
    v23 = sub_1D2877108();
    v24 = sub_1D2876338();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE728, &qword_1D2896AC8);
    (*(*(v35 - 8) + 16))(v15, v37, v35);
    v25 = &v15[*(v13 + 36)];
    *v25 = v23;
    v25[8] = v24;
    v22(v12, v21, v9);
    v45 = sub_1D2877108();
    v26 = v41;
    sub_1D2876128();
    v27 = sub_1D25CB13C();
    v28 = MEMORY[0x1E69815C0];
    v29 = MEMORY[0x1E6981568];
    sub_1D2876B68();
    (*(v42 + 8))(v26, v43);

    sub_1D22BD238(v15, &qword_1EC6DE718, &qword_1D2896AB8);
    v30 = v36;
    v31 = v38;
    (*(v36 + 16))(v40, v20, v38);
    swift_storeEnumTagMultiPayload();
    v45 = v13;
    v46 = v28;
    v47 = v27;
    v48 = v29;
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6D77F8, &unk_1EC6DE728, &qword_1D2896AC8, MEMORY[0x1E697FDF8]);
    sub_1D2875AF8();
    return (*(v30 + 8))(v20, v31);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE728, &qword_1D2896AC8);
    (*(*(v33 - 8) + 16))(v6, a1, v33);
    swift_storeEnumTagMultiPayload();
    v34 = sub_1D25CB13C();
    v45 = v13;
    v46 = MEMORY[0x1E69815C0];
    v47 = v34;
    v48 = MEMORY[0x1E6981568];
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6D77F8, &unk_1EC6DE728, &qword_1D2896AC8, MEMORY[0x1E697FDF8]);
    return sub_1D2875AF8();
  }
}

unint64_t sub_1D25CB13C()
{
  result = qword_1EC6D7DA0;
  if (!qword_1EC6D7DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE718, &qword_1D2896AB8);
    sub_1D22BB9D8(&qword_1EC6D77F8, &unk_1EC6DE728, &qword_1D2896AC8, MEMORY[0x1E697FDF8]);
    sub_1D22BB9D8(&qword_1EC6D77C0, &qword_1EC6DE738, &unk_1D2896AD0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DA0);
  }

  return result;
}

uint64_t sub_1D25CB228(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748, &unk_1D2896AE0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1D25CA69C(a1, a2, a3, v8);
}

unint64_t sub_1D25CB2E8()
{
  result = qword_1EC6D7C20;
  if (!qword_1EC6D7C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE798, &qword_1D2896B30);
    sub_1D22BB9D8(&unk_1EC6D7648, &unk_1EC6DE7A0, &qword_1D2896B38, MEMORY[0x1E6981880]);
    sub_1D22BB9D8(&qword_1EC6D7938, &qword_1EC6DE7B0, &qword_1D2896B40, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C20);
  }

  return result;
}

unint64_t sub_1D25CB3CC()
{
  result = qword_1EC6D7828;
  if (!qword_1EC6D7828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE7D0, &qword_1D2896B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE7E0, &qword_1D2896B60);
    sub_1D22BB9D8(&unk_1EC6D7EB8, &unk_1EC6DE7E0, &qword_1D2896B60, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7828);
  }

  return result;
}

unint64_t sub_1D25CB528()
{
  result = qword_1EC6DE840;
  if (!qword_1EC6DE840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE838, &unk_1D2896BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99E8, &unk_1D288C480);
    sub_1D2875718();
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
    sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE840);
  }

  return result;
}

uint64_t sub_1D25CB710(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PlaygroundHomeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D25CB834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PlaygroundHomeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D25C7EB0(a1, v6, a2);
}

double sub_1D25CB8E4()
{
  v1 = *(type metadata accessor for PlaygroundHomeView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D25C8430((v0 + v2), v3);
}

uint64_t sub_1D25CB970(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D256C06C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D25CBA78(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PlaygroundHomeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D25CBB0C()
{
  result = qword_1EC6D79F8;
  if (!qword_1EC6D79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE970, &qword_1D2896DE0);
    sub_1D25CBB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79F8);
  }

  return result;
}

unint64_t sub_1D25CBB98()
{
  result = qword_1EC6D7A80;
  if (!qword_1EC6D7A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE978, &qword_1D2896DE8);
    sub_1D25CBC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A80);
  }

  return result;
}

unint64_t sub_1D25CBC24()
{
  result = qword_1EC6D7B30;
  if (!qword_1EC6D7B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE988, &qword_1D2896DF0);
    sub_1D25CBCE0();
    sub_1D25CD3A8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B30);
  }

  return result;
}

unint64_t sub_1D25CBCE0()
{
  result = qword_1EC6D7C60;
  if (!qword_1EC6D7C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE998, &qword_1D2896DF8);
    sub_1D22BB9D8(&qword_1EC6D76E0, &unk_1EC6DE9A8, &unk_1D2896E00, MEMORY[0x1E697D680]);
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0, &qword_1D2890510, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C60);
  }

  return result;
}

uint64_t sub_1D25CBE0C(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaygroundHomeView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D25C9590(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D25CBF24()
{
  result = qword_1EC6DE9E8;
  if (!qword_1EC6DE9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9D8, &qword_1D2896E68);
    sub_1D25CD3A8(&qword_1EC6DE9F0, type metadata accessor for DetailView, &unk_1D28A14C8);
    sub_1D25CD3A8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DE9E8);
  }

  return result;
}

unint64_t sub_1D25CC010()
{
  result = qword_1EC6DEA00;
  if (!qword_1EC6DEA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9F8, &qword_1D2896E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEA08, &qword_1D2896E80);
    sub_1D22BB9D8(&unk_1EC6DEA10, &qword_1EC6DEA08, &qword_1D2896E80, MEMORY[0x1E697C5E0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEA00);
  }

  return result;
}

unint64_t sub_1D25CC138()
{
  result = qword_1EC6D7BC8;
  if (!qword_1EC6D7BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEA80, &qword_1D2896FA0);
    sub_1D25CC1C4();
    sub_1D23D49DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BC8);
  }

  return result;
}

unint64_t sub_1D25CC1C4()
{
  result = qword_1EC6D7D70;
  if (!qword_1EC6D7D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DEA98, &qword_1D2896FB8);
    sub_1D22BB9D8(&qword_1EC6D7980, &qword_1EC6DEAA8, &unk_1D2896FC0, MEMORY[0x1E697C1A8]);
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918, &qword_1D288E3A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D70);
  }

  return result;
}

unint64_t sub_1D25CC2B0()
{
  result = qword_1EC6D7B68;
  if (!qword_1EC6D7B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEAB0, &qword_1D2896FD0);
    sub_1D25CC33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B68);
  }

  return result;
}

unint64_t sub_1D25CC33C()
{
  result = qword_1EC6D7CD0;
  if (!qword_1EC6D7CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEAB8, &qword_1D2896FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEAC0, &qword_1D2896FE0);
    sub_1D25CC434();
    swift_getOpaqueTypeConformance2();
    sub_1D25CD3A8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CD0);
  }

  return result;
}

unint64_t sub_1D25CC434()
{
  result = qword_1EC6D7C28;
  if (!qword_1EC6D7C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEAC0, &qword_1D2896FE0);
    sub_1D22BB9D8(&qword_1EC6D7690, &qword_1EC6DEAC8, &qword_1D2896FE8, MEMORY[0x1E6981870]);
    sub_1D25CC4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C28);
  }

  return result;
}

unint64_t sub_1D25CC4EC()
{
  result = qword_1EC6D8160;
  if (!qword_1EC6D8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8160);
  }

  return result;
}

unint64_t sub_1D25CC568()
{
  result = qword_1EC6D78E0;
  if (!qword_1EC6D78E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEAF8, &qword_1D2897010);
    sub_1D22BB9D8(&qword_1EC6D78E8, &qword_1EC6DEB00, &qword_1D2897018, MEMORY[0x1E697C5E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D78E0);
  }

  return result;
}

unint64_t sub_1D25CC63C()
{
  result = qword_1EC6D7B80;
  if (!qword_1EC6D7B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEB48, &qword_1D2897088);
    sub_1D25CC6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B80);
  }

  return result;
}

unint64_t sub_1D25CC6C0()
{
  result = qword_1EC6D7B88;
  if (!qword_1EC6D7B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DEB50, &qword_1D2897090);
    sub_1D25CC74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B88);
  }

  return result;
}

unint64_t sub_1D25CC74C()
{
  result = qword_1EC6D7D18;
  if (!qword_1EC6D7D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DEB60, &unk_1D2897098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC998, &unk_1D288E3E0);
    sub_1D2875718();
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
    sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70, &qword_1D287FDC0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D18);
  }

  return result;
}

uint64_t sub_1D25CC8CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D25CC934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D25CC9B8()
{
  result = qword_1EC6D7A70;
  if (!qword_1EC6D7A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEB78, &qword_1D28970D0);
    sub_1D25CCA70();
    sub_1D22BB9D8(qword_1ED89F8E8, &unk_1EC6DEBA0, &unk_1D28970E8, &unk_1D289E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A70);
  }

  return result;
}

unint64_t sub_1D25CCA70()
{
  result = qword_1EC6D7B28;
  if (!qword_1EC6D7B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DEB80, &qword_1D28970D8);
    sub_1D25CCAFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B28);
  }

  return result;
}

unint64_t sub_1D25CCAFC()
{
  result = qword_1EC6D7C58;
  if (!qword_1EC6D7C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DEB90, &qword_1D28970E0);
    sub_1D22BB9D8(&qword_1ED89D148, &qword_1EC6D9078, &unk_1D28955D0, MEMORY[0x1E697D680]);
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70, &qword_1D287FDC0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C58);
  }

  return result;
}

uint64_t sub_1D25CCC10(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PlaygroundHomeView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_102Tm()
{
  v1 = type metadata accessor for PlaygroundHomeView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0, &unk_1D288AE60);
  v9 = *(*(v8 - 8) + 8);
  v9(v3 + v7, v8);

  sub_1D22EE66C(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  v9(v3 + v1[12], v8);

  return swift_deallocObject();
}

uint64_t sub_1D25CCED8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PlaygroundHomeView(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1D25CCF60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BDFF8;

  return sub_1D2301970(a1);
}

unint64_t sub_1D25CD03C()
{
  result = qword_1EC6D7E00;
  if (!qword_1EC6D7E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEBC0, &qword_1D2897170);
    sub_1D25CD0F4();
    sub_1D22BB9D8(&qword_1EC6D7900, &unk_1EC6DEBC8, &qword_1D2897178, MEMORY[0x1E697F598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E00);
  }

  return result;
}

unint64_t sub_1D25CD0F4()
{
  result = qword_1EC6D87E8[0];
  if (!qword_1EC6D87E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC6D87E8);
  }

  return result;
}

unint64_t sub_1D25CD148()
{
  result = qword_1EC6D7A48;
  if (!qword_1EC6D7A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEBB0, &qword_1D2897160);
    sub_1D25CD1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A48);
  }

  return result;
}

unint64_t sub_1D25CD1D4()
{
  result = qword_1EC6D7AF0;
  if (!qword_1EC6D7AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DEBD8, &qword_1D2897180);
    sub_1D25CD260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AF0);
  }

  return result;
}

unint64_t sub_1D25CD260()
{
  result = qword_1EC6D7BF0;
  if (!qword_1EC6D7BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DEBE8, &qword_1D2897188);
    sub_1D25CD2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BF0);
  }

  return result;
}

unint64_t sub_1D25CD2EC()
{
  result = qword_1EC6D7E10;
  if (!qword_1EC6D7E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEBF8, &qword_1D2897190);
    sub_1D25CD3A8(&unk_1EC6D8910, type metadata accessor for PhotoGridView, &unk_1D2894BE0);
    sub_1D25CC4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E10);
  }

  return result;
}

uint64_t sub_1D25CD3A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D25CD3F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for PlaygroundHomeView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2875E18();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0, &unk_1D288AE60);
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);

  sub_1D22EE66C(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  v8(v2 + v1[12], v7);

  return swift_deallocObject();
}

double sub_1D25CD6A8(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaygroundHomeView(0) - 8);
  v5[2] = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1D25C1F0C(a1, v5);
}

unint64_t sub_1D25CD71C()
{
  result = qword_1ED89EE48;
  if (!qword_1ED89EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89EE48);
  }

  return result;
}

unint64_t sub_1D25CD770()
{
  result = qword_1EC6D7878;
  if (!qword_1EC6D7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DEC00, &unk_1D2897198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE718, &qword_1D2896AB8);
    sub_1D25CB13C();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6D77F8, &unk_1EC6DE728, &qword_1D2896AC8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7878);
  }

  return result;
}

uint64_t ServicesFetcher.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t ServicesFetcher.fetch<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a4;
  v9 = sub_1D2878F18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = a1;
  v33 = a3;
  sub_1D25D0284(a1, a2, v12);
  if ((*(v13 + 48))(v12, 1, a2) == 1)
  {
    v20 = v34;
    (*(v10 + 8))(v12, v9);
    swift_beginAccess();
    v21 = *(v5 + 16);
    v22 = v19;
    if (*(v21 + 16) && (v23 = sub_1D25D0574(v19), (v24 & 1) != 0))
    {
      sub_1D22D7044(*(v21 + 56) + 40 * v23, v35);
      sub_1D227268C(v35, &v36);
      swift_endAccess();
      sub_1D227268C(&v36, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520, &unk_1D28842B0);
      return swift_dynamicCast();
    }

    else
    {
      swift_endAccess();
      v27 = v33;
      v28 = *(v33 + 8);
      v29 = sub_1D2870F78();
      v30 = v32;
      v28(v29, a2, v27);
      v37 = a2;
      v38 = v27;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      (*(v13 + 16))(boxed_opaque_existential_1, v30, a2);
      swift_beginAccess();
      sub_1D25CDC34(&v36, v22);
      swift_endAccess();
      return (*(v13 + 32))(v20, v30, a2);
    }
  }

  else
  {
    v26 = *(v13 + 32);
    v26(v18, v12, a2);
    return (v26)(v34, v18, a2);
  }
}

uint64_t sub_1D25CDC34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1D227268C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D24E7384(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1D22BD238(a1, &qword_1EC6DED70, &unk_1D28974C0);
    v7 = sub_1D25D0574(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D24EB3F0();
        v11 = v13;
      }

      sub_1D227268C((*(v11 + 56) + 40 * v9), v14);
      sub_1D25D33A8(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_1D22BD238(v14, &qword_1EC6DED70, &unk_1D28974C0);
  }

  return result;
}

void sub_1D25CDD40(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if (a2 == -1)
  {
    v9 = sub_1D25D07EC(a3);
    if (v10)
    {
      v11 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D24EB570();
        v13 = v15;
      }

      sub_1D245C6D0(*(*(v13 + 56) + 16 * v11), *(*(v13 + 56) + 16 * v11 + 8));
      sub_1D25D3524(v11, v13);
      *v4 = v13;
    }
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    sub_1D24E74B4(a1, a2 & 1, v5, v8);
    *v4 = v14;
  }
}

uint64_t sub_1D25CDE1C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC88, &qword_1D2897310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0, &qword_1D288E820);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DEC88, &qword_1D2897310);
    sub_1D25D3028(a2, &qword_1EC6DCAA0, &qword_1D288E820, sub_1D24EB6E0, v7);
    v13 = sub_1D2871818();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1D22BD238(v7, &qword_1EC6DEC88, &qword_1D2897310);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1D24E7784(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1D2871818();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1D25CE074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC78, &unk_1D28972F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DEC78, &unk_1D28972F0);
    v14 = sub_1D25D07EC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D24EB704();
        v18 = v22;
      }

      sub_1D22EC9BC(*(v18 + 56) + *(v10 + 72) * v16, v8, &qword_1EC6DA818, &unk_1D2884490);
      sub_1D25D36D8(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D22BD238(v8, &qword_1EC6DEC78, &unk_1D28972F0);
  }

  else
  {
    sub_1D22EC9BC(a1, v13, &qword_1EC6DA818, &unk_1D2884490);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D24E7628(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_1D25CE2C8(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for PhotosPersonImage(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DDD60, &qword_1D2893770);
    sub_1D25D2714(a2, v7);

    sub_1D22BD238(v7, &qword_1EC6DDD60, &qword_1D2893770);
  }

  else
  {
    sub_1D24F0B40(a1, v11, type metadata accessor for PhotosPersonImage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D24E7924(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

uint64_t sub_1D25CE480(uint64_t a1, __int128 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for PhotosPersonImage(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DDD60, &qword_1D2893770);
    sub_1D25D287C(a2, v7);
    sub_1D22D640C(a2);
    return sub_1D22BD238(v7, &qword_1EC6DDD60, &qword_1D2893770);
  }

  else
  {
    sub_1D24F0B40(a1, v11, type metadata accessor for PhotosPersonImage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1D24E7A90(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D22D640C(a2);
    *v2 = v16;
  }

  return result;
}

void sub_1D25CE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1D24E7BD8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_1D25D0410(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_1D24EBF58();
        v15 = v17;
      }

      sub_1D25D3F28(v11, v15);
      *v5 = v15;
    }
  }
}

void sub_1D25CE748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PlaygroundImage(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1D22BD238(a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D25D2A20(a2, a3, v9);

    sub_1D22BD238(v9, &unk_1EC6DE5A0, &unk_1D287F0E0);
  }

  else
  {
    sub_1D24F0B40(a1, v13, type metadata accessor for PlaygroundImage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1D24E7D60(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }
}

uint64_t sub_1D25CE91C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA168, &unk_1D2882760);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D2879308();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DA168, &unk_1D2882760);
    v14 = sub_1D25D07EC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D24EC8E0();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1D25D42B0(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D22BD238(v8, &qword_1EC6DA168, &unk_1D2882760);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D24E8344(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D25CEB6C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_1D24E8910(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D22BD238(a2, &qword_1EC6DCAB8, &qword_1D28A11A0);
    *v3 = v16;
  }

  else
  {
    v9 = sub_1D25D0A7C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v4;
      if (!v12)
      {
        sub_1D24ED24C();
        v13 = v17;
      }

      v14 = *(v13 + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
      sub_1D22BD238(v14 + *(*(v15 - 8) + 72) * v11, &qword_1EC6DCAB8, &qword_1D28A11A0);

      sub_1D25D4480(v11, v13);
      result = sub_1D22BD238(a2, &qword_1EC6DCAB8, &qword_1D28A11A0);
      *v4 = v13;
    }

    else
    {
      return sub_1D22BD238(a2, &qword_1EC6DCAB8, &qword_1D28A11A0);
    }
  }

  return result;
}

uint64_t sub_1D25CECC4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    sub_1D24E8DF4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = sub_1D28736F8();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v4 = v23;
  }

  else
  {
    v12 = sub_1D25D0C88(a3);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v24 = *v5;
      if (!v15)
      {
        sub_1D24ED870();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_1D28736F8();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v14, v18);

      sub_1D25D62BC(v14, v16, MEMORY[0x1E69E00E8], &qword_1EC6DCB38, MEMORY[0x1E69E00E8], MEMORY[0x1E69E00F0]);
      result = (v20)(a3, v18);
      *v5 = v16;
    }

    else
    {
      v21 = sub_1D28736F8();
      v22 = *(*(v21 - 8) + 8);

      return v22(a3, v21);
    }
  }

  return result;
}

uint64_t sub_1D25CEED4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DECA0, &unk_1D2897340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0, &unk_1D28856D0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DECA0, &unk_1D2897340);
    sub_1D25D3028(a2, &unk_1EC6DADD0, &unk_1D28856D0, sub_1D24EDA18, v7);
    v13 = sub_1D2871818();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1D22BD238(v7, &qword_1EC6DECA0, &unk_1D2897340);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1D24E9008(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1D2871818();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

void sub_1D25CF12C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1D25D0410(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v5;
      v15 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D24EDCBC();
        v12 = v15;
      }

      sub_1D25D4FD0(v8, v12);
      *v5 = v12;
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1D24E91F8(a1, a3, a4, v14);

    *v4 = v16;
  }
}

uint64_t sub_1D25CF218(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1D24E902C(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1D2871D58();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v3 = v21;
  }

  else
  {
    v10 = sub_1D25D0E30(a2);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v22 = *v4;
      if (!v13)
      {
        sub_1D24EDA3C();
        v14 = v22;
      }

      v15 = *(v14 + 48);
      v16 = sub_1D2871D58();
      v17 = *(v16 - 8);
      v18 = *(v17 + 8);
      v18(v15 + *(v17 + 72) * v12, v16);

      sub_1D25D4CB0(v12, v14);
      result = (v18)(a2, v16);
      *v4 = v14;
    }

    else
    {
      v19 = sub_1D2871D58();
      v20 = *(*(v19 - 8) + 8);

      return v20(a2, v19);
    }
  }

  return result;
}

uint64_t sub_1D25CF3D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC68, &qword_1D2898320);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DEC68, &qword_1D2898320);
    sub_1D25D3028(a2, &qword_1EC6DCA60, &unk_1D28972A0, sub_1D24EDFC8, v7);
    v13 = sub_1D2871818();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1D22BD238(v7, &qword_1EC6DEC68, &qword_1D2898320);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1D24E968C(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1D2871818();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1D25CF630(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC58, &qword_1D2898330);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DEC58, &qword_1D2898330);
    sub_1D25D2CDC(a2, v7);
    sub_1D25DA8FC(a2, type metadata accessor for GeneratedPreviewOptions);
    return sub_1D22BD238(v7, &qword_1EC6DEC58, &qword_1D2898330);
  }

  else
  {
    sub_1D22EC9BC(a1, v11, &qword_1EC6DA810, &qword_1D28972B0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1D24E94AC(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D25DA8FC(a2, type metadata accessor for GeneratedPreviewOptions);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1D25CF81C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DC0F0, &qword_1D288B3A0);
    sub_1D25D2E90(a2, v7);
    sub_1D25DA8FC(a2, type metadata accessor for GeneratedPreviewOptions);
    return sub_1D22BD238(v7, &qword_1EC6DC0F0, &qword_1D288B3A0);
  }

  else
  {
    sub_1D24F0B40(a1, v11, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1D24E96B0(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D25DA8FC(a2, type metadata accessor for GeneratedPreviewOptions);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1D25CFA04(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC48, &qword_1D2898210);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DEC48, &qword_1D2898210);
    sub_1D25D3028(a2, &qword_1EC6DCA48, &qword_1D2897270, sub_1D24EE5E0, v7);
    v13 = sub_1D2871818();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1D22BD238(v7, &qword_1EC6DEC48, &qword_1D2898210);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1D24E9A3C(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1D2871818();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1D25CFC5C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC38, &qword_1D2898220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1D22BD238(a1, &qword_1EC6DEC38, &qword_1D2898220);
    sub_1D25D31F4(a2, v7);
    sub_1D25DA8FC(a2, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    return sub_1D22BD238(v7, &qword_1EC6DEC38, &qword_1D2898220);
  }

  else
  {
    sub_1D22EC9BC(a1, v11, &qword_1EC6DA808, &unk_1D2884480);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D24E985C(v11, a2, isUniquelyReferenced_nonNull_native, v15);
    result = sub_1D25DA8FC(a2, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    *v2 = v17;
  }

  return result;
}

void sub_1D25CFE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1D24E9C84(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_1D25D0410(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_1D24EEC50();
        v13 = v15;
      }

      sub_1D25D4FD0(v9, v13);
      *v4 = v13;
    }
  }
}

uint64_t sub_1D25CFF40(uint64_t a1, __int16 a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1D227268C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D24E9E74(v14, a2 & 0xFF01, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1D22BD238(a1, &qword_1EC6E1750, &qword_1D2897350);
    v7 = sub_1D25D100C(a2 & 0xFF01);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D24EEDC0();
        v11 = v13;
      }

      sub_1D227268C((*(v11 + 56) + 40 * v9), v14);
      sub_1D25D5D7C(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_1D22BD238(v14, &qword_1EC6E1750, &qword_1D2897350);
  }

  return result;
}

uint64_t sub_1D25D004C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1D24EA544(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_1D2871818();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_1D25D064C(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_1D24F02F8();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_1D2871818();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_1D25D62BC(v13, v15, MEMORY[0x1E69695A8], &qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_1D2871818();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_1D25D0284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (type metadata accessor for ImagePredictableSeed() == a1)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    sub_1D2870F78();
    v7 = swift_dynamicCast();
    return (*(*(a2 - 8) + 56))(a3, v7 ^ 1u, 1, a2);
  }

  else
  {
    v5 = *(*(a2 - 8) + 56);

    return v5(a3, 1, 1, a2);
  }
}

uint64_t ServicesFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D25D0410(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  sub_1D2877F38();
  v4 = sub_1D2879828();

  return sub_1D25D1200(a1, a2, v4);
}

unint64_t sub_1D25D0488(uint64_t *a1)
{
  sub_1D28797D8();
  sub_1D2877F38();
  v2 = type metadata accessor for GeneratedPreviewOptions(0);
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(a1 + *(v2 + 24) + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  v3 = sub_1D2879828();

  return sub_1D25D12B8(a1, v3);
}

unint64_t sub_1D25D05C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  sub_1D28797D8();
  a3(v8, a1, a2);
  v6 = sub_1D2879828();
  return sub_1D25D1200(a1, a2, v6);
}

unint64_t sub_1D25D064C(uint64_t a1)
{
  sub_1D2871818();
  v2 = MEMORY[0x1E69695A8];
  sub_1D25DA95C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1D2877EF8();
  return sub_1D25D1D68(a1, v3, MEMORY[0x1E69695A8], &unk_1ED8A6CA0, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1D25D0770(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  v3 = a1[3];
  v9 = a1[2];
  v10 = v3;
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v6);
  v4 = sub_1D2879828();

  return sub_1D25D154C(a1, v4);
}

unint64_t sub_1D25D07EC(uint64_t a1)
{
  v1 = a1;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  v2 = sub_1D2879828();
  return sub_1D25D191C(v1, v2);
}

unint64_t sub_1D25D0854(uint64_t a1)
{
  sub_1D28797D8();
  type metadata accessor for CFString(0);
  sub_1D25DA95C(&qword_1EC6D7578, type metadata accessor for CFString, &unk_1D287E5D8);
  sub_1D2871C58();
  v2 = sub_1D2879828();

  return sub_1D25D16B4(a1, v2);
}

unint64_t sub_1D25D0908(uint64_t a1)
{
  sub_1D28797D8();
  sub_1D2846EE0();
  sub_1D2877F38();

  v2 = sub_1D2879828();

  return sub_1D25D17C0(a1, v2);
}

unint64_t sub_1D25D0990(uint64_t a1)
{
  sub_1D28780A8();
  sub_1D28797D8();
  sub_1D2877F38();
  v2 = sub_1D2879828();

  return sub_1D25D2610(a1, v2);
}

unint64_t sub_1D25D0A38(uint64_t a1)
{
  v2 = sub_1D28790B8();

  return sub_1D25D198C(a1, v2);
}

unint64_t sub_1D25D0A7C(uint64_t a1)
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D25DA95C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
  MEMORY[0x1D38A2260](*(a1 + *(v2 + 36)));
  v3 = sub_1D2879828();

  return sub_1D25D1A54(a1, v3);
}

unint64_t sub_1D25D0B54(uint64_t a1)
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D25DA95C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v2 = sub_1D2879828();

  return sub_1D25D1C14(a1, v2);
}

unint64_t sub_1D25D0C1C(char a1)
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](a1 & 1);
  v2 = sub_1D2879828();

  return sub_1D25D1CF8(a1 & 1, v2);
}

unint64_t sub_1D25D0C88(uint64_t a1)
{
  sub_1D28736F8();
  v2 = MEMORY[0x1E69E00E8];
  sub_1D25DA95C(&qword_1EC6DCB38, MEMORY[0x1E69E00E8], MEMORY[0x1E69E00F0]);
  v3 = sub_1D2877EF8();
  return sub_1D25D1D68(a1, v3, MEMORY[0x1E69E00E8], &qword_1EC6DECC8, v2, MEMORY[0x1E69E00F8]);
}

unint64_t sub_1D25D0D5C(uint64_t a1)
{
  sub_1D28739D8();
  v2 = MEMORY[0x1E69E83D8];
  sub_1D25DA95C(&qword_1EC6DECE0, MEMORY[0x1E69E83D8], MEMORY[0x1E69E83E0]);
  v3 = sub_1D2877EF8();
  return sub_1D25D1D68(a1, v3, MEMORY[0x1E69E83D8], &qword_1EC6DECE8, v2, MEMORY[0x1E69E83E8]);
}

unint64_t sub_1D25D0E30(uint64_t a1)
{
  sub_1D2871D58();
  v2 = MEMORY[0x1E699C658];
  sub_1D25DA95C(&qword_1ED8A6C28, MEMORY[0x1E699C658], MEMORY[0x1E699C660]);
  v3 = sub_1D2877EF8();
  return sub_1D25D1D68(a1, v3, MEMORY[0x1E699C658], &qword_1EC6DECC0, v2, MEMORY[0x1E699C668]);
}

unint64_t sub_1D25D0F04(void *a1)
{
  sub_1D28797D8();
  sub_1D2877F38();
  v2 = a1 + *(type metadata accessor for ImageKeyFaceLoader.Context.ID(0) + 20);
  sub_1D2877F38();
  v3 = type metadata accessor for GeneratedPreviewOptions(0);
  sub_1D2871F98();
  sub_1D2877F38();

  if (*&v2[*(v3 + 24) + 8])
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  v4 = sub_1D2879828();

  return sub_1D25D1F08(a1, v4, v5);
}

unint64_t sub_1D25D100C(__int16 a1)
{
  sub_1D28797D8();
  sub_1D2877F38();

  sub_1D27513EC(SHIBYTE(a1));
  sub_1D2877F38();

  v2 = sub_1D2879828();

  return sub_1D25D21D4(a1 & 0xFF01, v2);
}

unint64_t sub_1D25D10EC(uint64_t a1)
{
  v1 = a1;
  sub_1D28797D8();
  sub_1D2877F38();

  v2 = sub_1D2879828();

  return sub_1D25D23B8(v1, v2);
}

unint64_t sub_1D25D1200(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D2879618())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D25D12B8(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for GeneratedPreviewOptions(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v2 + 64;
  v31 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v29 = ~v9;
    v11 = *a1;
    v12 = a1[1];
    v13 = *(v6 + 72);
    while (1)
    {
      sub_1D25DA894(*(v31 + 48) + v13 * v10, v8, type metadata accessor for GeneratedPreviewOptions);
      v14 = *v8 == v11 && v8[1] == v12;
      if (!v14 && (sub_1D2879618() & 1) == 0)
      {
        goto LABEL_4;
      }

      v15 = sub_1D2871F98();
      v17 = v16;
      if (v15 == sub_1D2871F98() && v17 == v18)
      {
      }

      else
      {
        v20 = sub_1D2879618();

        if ((v20 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v21 = *(v5 + 24);
      v22 = (v8 + v21);
      v23 = *(v8 + v21 + 8);
      v24 = (a1 + v21);
      v25 = v24[1];
      if (!v23)
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_4;
      }

      if (*v22 == *v24 && v23 == v25)
      {
LABEL_25:
        sub_1D25DA8FC(v8, type metadata accessor for GeneratedPreviewOptions);
        return v10;
      }

      v26 = sub_1D2879618();
      sub_1D25DA8FC(v8, type metadata accessor for GeneratedPreviewOptions);
      if (v26)
      {
        return v10;
      }

LABEL_5:
      v10 = (v10 + 1) & v29;
      if (((*(v30 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    if (!v25)
    {
      goto LABEL_25;
    }

LABEL_4:
    sub_1D25DA8FC(v8, type metadata accessor for GeneratedPreviewOptions);
    goto LABEL_5;
  }

  return v10;
}

unint64_t sub_1D25D154C(_OWORD *a1, uint64_t a2)
{
  v3 = a1[1];
  v23[0] = *a1;
  v23[1] = v3;
  v4 = a1[3];
  v23[2] = a1[2];
  v23[3] = v4;
  v5 = -1 << *(v2 + 32);
  v6 = a2 & ~v5;
  if ((*(v2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v2 + 48) + (v6 << 6));
      v9 = v8[3];
      v11 = *v8;
      v10 = v8[1];
      v21[2] = v8[2];
      v21[3] = v9;
      v21[0] = v11;
      v21[1] = v10;
      v12 = v8[1];
      v17 = *v8;
      v18 = v12;
      v13 = v8[3];
      v19 = v8[2];
      v20 = v13;
      sub_1D22D63B0(v21, &v16);
      v14 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v17, v23);
      v22[0] = v17;
      v22[1] = v18;
      v22[2] = v19;
      v22[3] = v20;
      sub_1D22D640C(v22);
      if (v14)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D25D1648(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D25D16B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D25DA95C(&qword_1EC6D7578, type metadata accessor for CFString, &unk_1D287E5D8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D2871C48();

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

unint64_t sub_1D25D17C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Bubble(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1D25DA894(*(v2 + 48) + v12 * v10, v8, type metadata accessor for Bubble);
      v13 = sub_1D2849278(v8, a1);
      sub_1D25DA8FC(v8, type metadata accessor for Bubble);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D25D191C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D25D198C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D25DA1E0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38A1B40](v9, a1);
      sub_1D23ED134(v9);
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

unint64_t sub_1D25D1A54(uint64_t a1, uint64_t a2)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v21 - v6;
  v8 = v2 + 64;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v5 + 72);
    v21 = v2;
    do
    {
      sub_1D22BD1D0(*(v2 + 48) + v12 * v10, v7, &qword_1EC6DCAB8, &qword_1D28A11A0);
      if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
      {
        v13 = a1;
        v14 = v22;
        v15 = v11;
        v16 = v8;
        v17 = v7[*(v22 + 36)];
        sub_1D22BD238(v7, &qword_1EC6DCAB8, &qword_1D28A11A0);
        v18 = *(v14 + 36);
        a1 = v13;
        v19 = v17 == *(v13 + v18);
        v8 = v16;
        v11 = v15;
        v2 = v21;
        if (v19)
        {
          return v10;
        }
      }

      else
      {
        sub_1D22BD238(v7, &qword_1EC6DCAB8, &qword_1D28A11A0);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D25D1C14(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1D2870F78();
      v6 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D25D1CF8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D25D1D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1D25DA95C(v24, v25, v26);
      v20 = sub_1D2877F98();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1D25D1F08(void *a1, uint64_t a2, __n128 a3)
{
  v34 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  MEMORY[0x1EEE9AC00](v34);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v3 + 64;
  v38 = v3;
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v12 = *a1;
    v11 = a1[1];
    v13 = *(v6 + 72);
    v35 = ~v9;
    v36 = v13;
    v33 = v11;
    do
    {
      sub_1D25DA894(*(v38 + 48) + v36 * v10, v8, type metadata accessor for ImageKeyFaceLoader.Context.ID);
      v14 = *v8 == v12 && v8[1] == v11;
      if (!v14 && (sub_1D2879618() & 1) == 0)
      {
        goto LABEL_4;
      }

      v15 = *(v34 + 20);
      v16 = v8 + v15;
      v17 = a1 + v15;
      v18 = *(v8 + v15) == *(a1 + v15) && *(v8 + v15 + 8) == *(a1 + v15 + 8);
      if (!v18 && (sub_1D2879618() & 1) == 0)
      {
        goto LABEL_4;
      }

      v19 = a1;
      v20 = type metadata accessor for GeneratedPreviewOptions(0);
      v21 = sub_1D2871F98();
      v23 = v22;
      if (v21 == sub_1D2871F98() && v23 == v24)
      {

        a1 = v19;
        v11 = v33;
      }

      else
      {
        v26 = sub_1D2879618();

        a1 = v19;
        v11 = v33;
        if ((v26 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v27 = *(v20 + 24);
      v28 = &v16[v27];
      v29 = *&v16[v27 + 8];
      v30 = &v17[v27];
      v31 = *(v30 + 1);
      if (v29)
      {
        if (v31 && (*v28 == *v30 && v29 == v31 || (sub_1D2879618() & 1) != 0))
        {
LABEL_27:
          sub_1D25DA8FC(v8, type metadata accessor for ImageKeyFaceLoader.Context.ID);
          return v10;
        }
      }

      else if (!v31)
      {
        goto LABEL_27;
      }

LABEL_4:
      sub_1D25DA8FC(v8, type metadata accessor for ImageKeyFaceLoader.Context.ID);
      v10 = (v10 + 1) & v35;
    }

    while (((*(v37 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D25D21D4(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F6C42656E616C50;
    }

    else
    {
      v6 = 0x73676E69646E6962;
    }

    if (a1)
    {
      v7 = 0xE900000000000062;
    }

    else
    {
      v7 = 0xEC00000065646F4ELL;
    }

    v8 = HIBYTE(a1);
    do
    {
      v9 = (*(v2 + 48) + 2 * v4);
      v10 = v9[1];
      if (*v9)
      {
        v11 = 0x6F6C42656E616C50;
      }

      else
      {
        v11 = 0x73676E69646E6962;
      }

      if (*v9)
      {
        v12 = 0xE900000000000062;
      }

      else
      {
        v12 = 0xEC00000065646F4ELL;
      }

      if (v11 == v6 && v12 == v7)
      {
      }

      else
      {
        v14 = sub_1D2879618();

        if ((v14 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v15 = sub_1D27513EC(v10);
      v17 = v16;
      if (v15 == sub_1D27513EC(v8) && v17 == v18)
      {

        return v4;
      }

      v20 = sub_1D2879618();

      if (v20)
      {
        return v4;
      }

LABEL_9:
      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D25D23B8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x526E6568576B7361;
          v8 = 0xEA00000000006E75;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE500000000000000;
          v7 = 0x726576656ELL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE600000000000000;
            if (v7 != 0x737961776C61)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE600000000000000;
        v7 = 0x737961776C61;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x526E6568576B7361;
      }

      else
      {
        v10 = 0x726576656ELL;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006E75;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1D2879618();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D25D2544(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D22BCFD0(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D2878D78();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D25D2610(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D28780A8();
      v8 = v7;
      if (v6 == sub_1D28780A8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D2879618();

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

uint64_t sub_1D25D2714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D25D0720(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EBAC0();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for PhotosPersonImage(0);
    v18 = *(v11 - 8);
    sub_1D24F0B40(v10 + *(v18 + 72) * v7, a2, type metadata accessor for PhotosPersonImage);
    sub_1D25D38C0(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for PhotosPersonImage(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1D25D287C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D25D0770(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EBCFC();
      v9 = v21;
    }

    v10 = (*(v9 + 48) + (v7 << 6));
    v12 = v10[2];
    v11 = v10[3];
    v13 = v10[1];
    v20[0] = *v10;
    v20[1] = v13;
    v20[2] = v12;
    v20[3] = v11;
    sub_1D22D640C(v20);
    v14 = *(v9 + 56);
    v15 = type metadata accessor for PhotosPersonImage(0);
    v16 = *(v15 - 8);
    sub_1D24F0B40(v14 + *(v16 + 72) * v7, a2, type metadata accessor for PhotosPersonImage);
    sub_1D25D3A88(v7, v9);
    *v3 = v9;
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  else
  {
    v18 = type metadata accessor for PhotosPersonImage(0);
    v19 = *(*(v18 - 8) + 56);

    return v19(a2, 1, 1, v18);
  }
}

uint64_t sub_1D25D2A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D25D05C8(a1, a2, MEMORY[0x1E69E5ED0]);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EC0D0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for PlaygroundImage(0);
    v19 = *(v12 - 8);
    sub_1D24F0B40(v11 + *(v19 + 72) * v8, a3, type metadata accessor for PlaygroundImage);
    sub_1D25D40D8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for PlaygroundImage(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1D25D2BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D25D0410(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D24ECCAC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D25D4FD0(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1D25D2C38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D25D0410(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EDE24();
      v10 = v12;
    }

    sub_1D23C3FAC((*(v10 + 56) + 32 * v8), a3);
    sub_1D25D5180(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D25D2CDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D25D0488(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EDFEC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for GeneratedPreviewOptions(0);
    sub_1D25DA8FC(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for GeneratedPreviewOptions);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
    v20 = *(v13 - 8);
    sub_1D22EC9BC(v12 + *(v20 + 72) * v7, a2, &qword_1EC6DA810, &qword_1D28972B0);
    sub_1D25D5344(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1D25D2E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D25D0488(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EE2EC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for GeneratedPreviewOptions(0);
    sub_1D25DA8FC(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for GeneratedPreviewOptions);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
    v20 = *(v13 - 8);
    sub_1D24F0B40(v12 + *(v20 + 72) * v7, a2, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    sub_1D25D56A0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1D25D3028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_1D25D064C(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = sub_1D2871818();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    sub_1D25D496C(v18, v15, a2, a3);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1D25D31F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D25D0F04(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EE950();
      v9 = v22;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
    sub_1D25DA8FC(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ImageKeyFaceLoader.Context.ID);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
    v21 = *(v13 - 8);
    sub_1D22EC9BC(v12 + *(v21 + 72) * v7, a2, &qword_1EC6DA808, &unk_1D2884480);
    sub_1D25D5A10(v7, v9, v14);
    *v3 = v9;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v13;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1D25D33A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_1D28797C8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D25D3524(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1D28797D8();
      MEMORY[0x1D38A2260](v9);
      result = sub_1D2879828();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D25D36D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1D28797D8();
      MEMORY[0x1D38A2260](v9);
      result = sub_1D2879828();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D25D38C0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1D2878D68();

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
      v18 = *(*(type metadata accessor for PhotosPersonImage(0) - 8) + 72);
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

void sub_1D25D3A88(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    v42 = (a1 >> 3) & 0x1FFFFFFFFFFFFFF8;
    v43 = -1 << a1;
    goto LABEL_42;
  }

  v7 = ~v5;
  v8 = (sub_1D28790A8() + 1) & ~v5;
  v49 = v4;
  v50 = v2;
  v47 = v8;
  v48 = v7;
  while (1)
  {
    v9 = (*(v2 + 48) + (v6 << 6));
    v10 = v9[3];
    v12 = *v9;
    v11 = v9[1];
    v64 = v9[2];
    v65 = v10;
    v63[0] = v12;
    v63[1] = v11;
    sub_1D28797D8();
    if (*(&v63[0] + 1))
    {
      sub_1D28797F8();
      sub_1D22D63B0(v63, v56);
      sub_1D2877F38();
    }

    else
    {
      sub_1D28797F8();
      sub_1D22D63B0(v63, v56);
    }

    v13 = *(&v64 + 1);
    v14 = v64;
    v15 = v65;
    sub_1D2877F38();
    if (!v14)
    {
      sub_1D28797F8();
      v29 = *(&v65 + 1);
      if (!*(&v65 + 1))
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    v52 = v3;
    v53 = v6;
    v54 = v14;
    sub_1D28797F8();
    v16 = v14 + 64;
    v17 = v13;
    v18 = 1 << *(v14 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & *(v14 + 64);
    v51 = v17;
    sub_1D2396784(v14, v17, v15);
    sub_1D2870F68();
    v55 = 0;
    v21 = 0;
    if (!v20)
    {
      break;
    }

    while (1)
    {
      v22 = v21;
LABEL_18:
      v23 = __clz(__rbit64(v20)) | (v22 << 6);
      v24 = *(*(v14 + 48) + v23);
      v25 = *(*(v14 + 56) + 32 * v23 + 8);
      sub_1D2870F68();
      sub_1D2870F68();
      if (!v25)
      {
        break;
      }

      v20 &= v20 - 1;
      v56[2] = v60;
      v56[3] = v61;
      v57 = v62;
      v56[0] = v58;
      v56[1] = v59;
      MEMORY[0x1D38A2260](v24);
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2877F38();

      sub_1D2877F38();
      swift_bridgeObjectRelease_n();

      v14 = v54;
      v55 ^= sub_1D2879828();
      v21 = v22;
      if (!v20)
      {
        goto LABEL_15;
      }
    }

LABEL_21:

    MEMORY[0x1D38A2260](v55);
    sub_1D28797F8();
    if (v15)
    {
      sub_1D2877F38();
      v26 = v14;
      v27 = v51;
      v28 = v15;
    }

    else
    {
      v26 = v14;
      v27 = v51;
      v28 = 0;
    }

    sub_1D238D058(v26, v27, v28);
    v4 = v49;
    v2 = v50;
    v3 = v52;
    v6 = v53;
    v8 = v47;
    v7 = v48;
    v29 = *(&v65 + 1);
    if (!*(&v65 + 1))
    {
LABEL_24:
      sub_1D28797F8();
      goto LABEL_28;
    }

LABEL_27:
    sub_1D28797F8();
    v30 = v29;
    sub_1D2878D88();

LABEL_28:
    v31 = sub_1D2879828();
    sub_1D22D640C(v63);
    v32 = v31 & v7;
    if (v3 >= v8)
    {
      if (v32 < v8)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (v3 < v32)
      {
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    if (v32 < v8)
    {
      goto LABEL_32;
    }

LABEL_33:
    v33 = *(v2 + 48);
    v34 = (v33 + (v3 << 6));
    v35 = (v33 + (v6 << 6));
    if (v3 != v6 || v34 >= v35 + 4)
    {
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[3];
      v34[2] = v35[2];
      v34[3] = v38;
      *v34 = v36;
      v34[1] = v37;
    }

    v39 = *(v2 + 56);
    v40 = *(*(type metadata accessor for PhotosPersonImage(0) - 8) + 72);
    v41 = v40 * v3;
    if (v40 * v3 < (v40 * v6) || v39 + v40 * v3 >= v39 + v40 * v6 + v40)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v3 = v6;
      if (v41 == v40 * v6)
      {
        goto LABEL_5;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v3 = v6;
LABEL_5:
    v6 = (v6 + 1) & v7;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      v42 = (v3 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v43 = -1 << v3;
LABEL_42:
      *(v4 + v42) &= v43 - 1;
      v44 = *(v2 + 16);
      v45 = __OFSUB__(v44, 1);
      v46 = v44 - 1;
      if (v45)
      {
        goto LABEL_45;
      }

      *(v2 + 16) = v46;
      ++*(v2 + 36);
      return;
    }
  }

LABEL_15:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= ((v18 + 63) >> 6))
    {
      goto LABEL_21;
    }

    v20 = *(v16 + 8 * v22);
    ++v21;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_1D25D3F28(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    do
    {
      sub_1D28797D8();
      sub_1D2870F68();
      sub_1D2877F38();
      v9 = sub_1D2879828();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D25D40D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    while (1)
    {
      sub_1D28797D8();
      sub_1D2877F38();
      result = sub_1D2879828();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + 16 * v3);
      v12 = (v10 + 16 * v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for PlaygroundImage(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D25D42B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1D28797D8();
      MEMORY[0x1D38A2260](v9);
      result = sub_1D2879828();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1D2879308() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D25D4480(unint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = a1;
  v29 = &v27 - v6;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = v5;
    v12 = sub_1D28790A8();
    v5 = v11;
    v13 = (v12 + 1) & v10;
    v14 = *(v4 + 72);
    v28 = a2 + 64;
    v15 = v29;
    do
    {
      v31 = v5;
      v16 = v14;
      v17 = v14 * v9;
      sub_1D22BD1D0(*(a2 + 48) + v14 * v9, v15, &qword_1EC6DCAB8, &qword_1D28A11A0);
      sub_1D28797D8();
      sub_1D2871818();
      sub_1D25DA95C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D2877F08();
      MEMORY[0x1D38A2260](*(v15 + *(v30 + 36)));
      v18 = sub_1D2879828();
      sub_1D22BD238(v15, &qword_1EC6DCAB8, &qword_1D28A11A0);
      v5 = v31;
      v19 = v18 & v10;
      if (v31 >= v13)
      {
        if (v19 < v13)
        {
          v7 = v28;
          v14 = v16;
          goto LABEL_4;
        }

        v14 = v16;
        if (v31 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v16;
        if (v19 >= v13 || v31 >= v19)
        {
LABEL_11:
          if (v14 * v31 < v17 || *(a2 + 48) + v14 * v31 >= (*(a2 + 48) + v17 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v31;
            v7 = v28;
          }

          else
          {
            v20 = v14 * v31 == v17;
            v7 = v28;
            if (!v20)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v31;
            }
          }

          v21 = *(a2 + 56);
          v22 = (v21 + 8 * v5);
          v23 = (v21 + 8 * v9);
          if (v5 != v9 || v22 >= v23 + 1)
          {
            *v22 = *v23;
            v5 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v28;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
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

uint64_t sub_1D25D47C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1D28797D8();
      MEMORY[0x1D38A2260](v9);
      result = sub_1D2879828();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D25D496C(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1D28790A8();
    v15 = v13;
    v43 = (v14 + 1) & v13;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v41 = a2 + 64;
    v42 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v44 = v18;
    do
    {
      v19 = v18 * v12;
      v20 = v15;
      v21 = v16;
      v42(v9, *(a2 + 48) + v18 * v12, v6);
      sub_1D25DA95C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1D2877EF8();
      (*v40)(v9, v6);
      v15 = v20;
      v23 = v22 & v20;
      if (a1 >= v43)
      {
        if (v23 >= v43 && a1 >= v23)
        {
LABEL_15:
          v16 = v21;
          if (v44 * a1 < v19 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v19 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v39) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v12;
          v31 = v26 + v27 * v12 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v41;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v33 = v28 == v30;
            v10 = v41;
            v15 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v43 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v41;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v44;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

void sub_1D25D4CB0(int64_t a1, uint64_t a2)
{
  v38 = sub_1D2871D58();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1D28790A8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1D25DA95C(&qword_1ED8A6C28, MEMORY[0x1E699C658], MEMORY[0x1E699C660]);
      v22 = sub_1D2877EF8();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1D25D4FD0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    do
    {
      sub_1D28797D8();
      sub_1D2870F68();
      sub_1D2877F38();
      v9 = sub_1D2879828();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_1D25D5180(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    do
    {
      sub_1D28797D8();
      sub_1D2870F68();
      sub_1D2877F38();
      v10 = sub_1D2879828();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1D25D5344(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for GeneratedPreviewOptions(0);
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v29 = a2;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1D28790A8() + 1) & ~v8;
    v12 = *(v4 + 72);
    v13 = v29;
    v30 = v12;
    while (1)
    {
      v14 = v12 * v9;
      sub_1D25DA894(*(v13 + 48) + v12 * v9, v6, type metadata accessor for GeneratedPreviewOptions);
      sub_1D28797D8();
      sub_1D2877F38();
      v15 = v28;
      sub_1D2871F98();
      sub_1D2877F38();

      if (*&v6[*(v15 + 24) + 8])
      {
        sub_1D28797F8();
        sub_1D2877F38();
      }

      else
      {
        sub_1D28797F8();
      }

      v16 = sub_1D2879828();
      sub_1D25DA8FC(v6, type metadata accessor for GeneratedPreviewOptions);
      v17 = v16 & v10;
      if (a1 >= v11)
      {
        v13 = v29;
        v12 = v30;
        if (v17 < v11)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v29;
        v12 = v30;
        if (v17 >= v11)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v17)
      {
LABEL_13:
        if (v12 * a1 < v14 || *(v13 + 48) + v12 * a1 >= (*(v13 + 48) + v14 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 * a1 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v18 = *(v13 + 56);
        v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0) - 8) + 72);
        v20 = v19 * a1;
        v21 = v18 + v19 * a1;
        v22 = v19 * v9;
        v23 = v18 + v19 * v9 + v19;
        if (v20 < v22 || v21 >= v23)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v9;
          v13 = v29;
          v12 = v30;
        }

        else
        {
          a1 = v9;
          v13 = v29;
          v12 = v30;
          if (v20 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
            v12 = v30;
            a1 = v9;
          }
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  v13 = v29;
LABEL_25:
  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(v13 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v27;
    ++*(v13 + 36);
  }
}

void sub_1D25D56A0(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedPreviewOptions(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1D28790A8();
    v13 = *(v5 + 72);
    v27 = (v12 + 1) & v11;
    v28 = a2 + 64;
    v29 = v13;
    do
    {
      v14 = v13 * v10;
      sub_1D25DA894(*(a2 + 48) + v13 * v10, v7, type metadata accessor for GeneratedPreviewOptions);
      sub_1D28797D8();
      sub_1D2877F38();
      sub_1D2871F98();
      sub_1D2877F38();

      if (*&v7[*(v4 + 24) + 8])
      {
        sub_1D28797F8();
        sub_1D2877F38();
      }

      else
      {
        sub_1D28797F8();
      }

      v15 = sub_1D2879828();
      sub_1D25DA8FC(v7, type metadata accessor for GeneratedPreviewOptions);
      v16 = v15 & v11;
      v8 = v28;
      if (a1 >= v27)
      {
        v13 = v29;
        if (v16 < v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v29;
        if (v16 >= v27)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v16)
      {
LABEL_13:
        if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v17 = *(a2 + 56);
        v18 = *(*(type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0) - 8) + 72);
        v19 = v18 * a1;
        v20 = v17 + v18 * a1;
        v21 = v18 * v10;
        v22 = v17 + v18 * v10 + v18;
        if (v19 < v21 || v20 >= v22)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v10;
          v13 = v29;
        }

        else
        {
          a1 = v10;
          v13 = v29;
          if (v19 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
            a1 = v10;
          }
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

void sub_1D25D5A10(int64_t a1, uint64_t a2, __n128 a3)
{
  v29 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_1D28790A8() + 1) & ~v9;
    v13 = *(v5 + 72);
    v30 = v13;
    v31 = v11;
    do
    {
      v14 = v13 * v10;
      sub_1D25DA894(*(a2 + 48) + v13 * v10, v7, type metadata accessor for ImageKeyFaceLoader.Context.ID);
      sub_1D28797D8();
      sub_1D2877F38();
      v15 = &v7[*(v29 + 20)];
      sub_1D2877F38();
      v16 = type metadata accessor for GeneratedPreviewOptions(0);
      sub_1D2871F98();
      sub_1D2877F38();

      if (*&v15[*(v16 + 24) + 8])
      {
        sub_1D28797F8();
        sub_1D2877F38();
      }

      else
      {
        sub_1D28797F8();
      }

      v17 = sub_1D2879828();
      sub_1D25DA8FC(v7, type metadata accessor for ImageKeyFaceLoader.Context.ID);
      v18 = v17 & v31;
      if (a1 >= v12)
      {
        v13 = v30;
        if (v18 < v12)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v30;
        if (v18 >= v12)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v18)
      {
LABEL_13:
        if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v19 = *(a2 + 56);
        v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480) - 8) + 72);
        v21 = v20 * a1;
        v22 = v19 + v20 * a1;
        v23 = v20 * v10;
        v24 = v19 + v20 * v10 + v20;
        if (v21 < v23 || v22 >= v24)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v10;
          v13 = v30;
        }

        else
        {
          a1 = v10;
          v13 = v30;
          if (v21 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
            a1 = v10;
          }
        }
      }

LABEL_4:
      v10 = (v10 + 1) & v31;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D25D5D7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D28790A8() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 2 * v6 + 1);
      sub_1D28797D8();
      sub_1D2877F38();

      sub_1D27513EC(v11);
      sub_1D2877F38();

      result = sub_1D2879828();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 2 * v3);
        v15 = (v13 + 2 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D25D5F98(int64_t a1, uint64_t a2)
{
  v39 = sub_1D2871818();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = sub_1D28790A8();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v36 = (v11 + 1) & v10;
    v37 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    v35 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v37(v38, *(v5 + 48) + v16 * v9, v12);
      sub_1D25DA95C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1D2877EF8();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = v26 + 24 * a1;
          v28 = (v26 + 24 * v9);
          if (a1 != v9 || v27 >= v28 + 24)
          {
            v29 = *v28;
            *(v27 + 16) = *(v28 + 2);
            *v27 = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

void sub_1D25D62BC(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = sub_1D28790A8();
    v17 = v15;
    v40 = (v16 + 1) & v15;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v44 = *(v18 + 56);
    v38 = (v18 - 8);
    v39 = v19;
    do
    {
      v20 = v44 * v14;
      v21 = v17;
      v22 = v18;
      v39(v11, *(a2 + 48) + v44 * v14, v8);
      sub_1D25DA95C(v41, v42, v43);
      v23 = sub_1D2877EF8();
      (*v38)(v11, v8);
      v17 = v21;
      v24 = v23 & v21;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v20 + v44;
          v30 = v44 * a1 < v20 || v28 >= v29;
          v18 = v22;
          if (!v30)
          {
            if (v44 * a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v17 = v21;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 16 * a1);
            v33 = (v31 + 16 * v14);
            if (a1 != v14 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v14;
            }

            goto LABEL_4;
          }

          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v18 = v22;
LABEL_4:
      v14 = (v14 + 1) & v17;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D25D6570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB90, &qword_1D288E8A8);
    v3 = sub_1D28793F8();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1D22BD1D0(i, &v11, &qword_1EC6DED78, &qword_1D28974D0);
      v5 = v11;
      result = sub_1D25D0574(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D227268C(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1D25D66F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB98, &qword_1D288E8B0);
    v3 = sub_1D28793F8();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D25D0574(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_1D25D67D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED58, &qword_1D2897488);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v31 - v4);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA90, &qword_1D2897490);
  v7 = sub_1D28793F8();
  v8 = *(v2 + 48);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  sub_1D2870F78();
  sub_1D22BD1D0(a1 + v9, v5, &qword_1EC6DED58, &qword_1D2897488);
  v11 = v5[1];
  v31 = *v5;
  v32 = v11;
  v12 = v5[3];
  v33 = v5[2];
  v34 = v12;
  v13 = sub_1D25D0770(&v31);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v15 = v13;
  v16 = type metadata accessor for PhotosPersonImage(0);
  v17 = v15;
  v18 = *(*(v16 - 8) + 72);
  v19 = a1 + v10 + v9;
  while (1)
  {
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
    v20 = (v7[6] + (v17 << 6));
    v21 = *v5;
    v22 = v5[1];
    v23 = v5[3];
    v20[2] = v5[2];
    v20[3] = v23;
    *v20 = v21;
    v20[1] = v22;
    result = sub_1D24F0B40(v5 + v8, v7[7] + v18 * v17, type metadata accessor for PhotosPersonImage);
    v25 = v7[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      break;
    }

    v7[2] = v27;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_1D22BD1D0(v19, v5, &qword_1EC6DED58, &qword_1D2897488);
    v28 = v5[1];
    v31 = *v5;
    v32 = v28;
    v29 = v5[3];
    v33 = v5[2];
    v34 = v29;
    v17 = sub_1D25D0770(&v31);
    v19 += v10;
    if (v30)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D25D6A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED50, &qword_1D2897478);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA70, &qword_1D2897480);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DED50, &qword_1D2897478);
      v11 = *v5;
      result = sub_1D25D0720(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for PhotosPersonImage(0);
      result = sub_1D24F0B40(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for PhotosPersonImage);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D6C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB08, &qword_1D288E870);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *i;
      result = sub_1D25D100C(v5 | (v6 << 8));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 2 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D25D6D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1E8, &qword_1D2886DC0);
    v3 = sub_1D28793F8();
    v4 = a1 + 32;
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v4, &v13, &unk_1EC6E1910, &unk_1D28A4850);
      v5 = v13;
      v6 = v14;
      result = sub_1D25D100C(v13 | (v14 << 8));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 2 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D23C3FAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 40;
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

unint64_t sub_1D25D6E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA10, &qword_1D288E7F8);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_1D2870F68();
      sub_1D2870F68();
      result = sub_1D25D0410(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D25D6F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1E0, &unk_1D2886DB0);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;
      sub_1D2870F68();
      result = sub_1D25D05C8(v5, v6, MEMORY[0x1E69E60C8]);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1D25D7060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA18, &qword_1D288E800);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1D2870F68();
      v8 = v7;
      result = sub_1D25D05C8(v5, v6, MEMORY[0x1E69E60C8]);
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

unint64_t sub_1D25D7178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA20, &unk_1D2897210);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D25D0990(v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D25D7270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB10, &unk_1D2897220);
    v3 = sub_1D28793F8();
    v4 = a1 + 32;
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v4, &v13, &qword_1EC6DA760, &qword_1D28883F0);
      v5 = v13;
      v6 = v14;
      result = sub_1D25D0410(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D23C3FAC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D25D73C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC28, &qword_1D2897248);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA28, &qword_1D2897250);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DEC28, &qword_1D2897248);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D25D05C8(*v5, v12, MEMORY[0x1E69E5ED0]);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PlaygroundImage(0);
      result = sub_1D24F0B40(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for PlaygroundImage);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1D25D75B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC20, &qword_1D2897240);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1D25D0854(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D25D76DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_1D2870F68();
      sub_1D2870F68();
      result = sub_1D25D0410(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1D25D77D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DECB8, &qword_1D2897378);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA88, &unk_1D2897380);
    v7 = sub_1D28793F8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DECB8, &qword_1D2897378);
      result = sub_1D25D064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871818();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = *(v8 + 2);
      *v16 = *v8;
      *(v16 + 16) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D79D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB0, &qword_1D288E830);
  v3 = sub_1D28793F8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1D25D07EC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = v3[7] + 16 * result;
    *v10 = v5;
    *(v10 + 8) = v6 & 1;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_1D245C6AC(v5, v6 & 1);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_1D25D07EC(v4);
    v9 += 24;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D25D7AEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC90, &qword_1D2897318);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA98, &unk_1D2897320);
    v7 = sub_1D28793F8();
    v20 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1D22BD1D0(v8, v5, &qword_1EC6DEC90, &qword_1D2897318);
      v10 = *v5;
      result = sub_1D25D07EC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v10;
      v14 = v7[7];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA818, &unk_1D2884490);
      result = sub_1D22EC9BC(&v5[v20], v14 + *(*(v15 - 8) + 72) * v13, &qword_1EC6DA818, &unk_1D2884490);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v8 += v9;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1D25D7CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA600, &qword_1D2883980);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED00, &qword_1D28973C8);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DA600, &qword_1D2883980);
      v11 = *v5;
      v10 = v5[1];
      result = sub_1D25D0410(*v5, v10);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v7[6] + 16 * result);
      *v15 = v11;
      v15[1] = v10;
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
      result = sub_1D22EC9BC(v5 + v22, v16 + *(*(v17 - 8) + 72) * v14, &unk_1EC6DE5A0, &unk_1D287F0E0);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D7ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DECA8, &qword_1D2897358);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB50, &unk_1D2897360);
    v7 = sub_1D28793F8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DECA8, &qword_1D2897358);
      result = sub_1D25D0908(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Bubble(0);
      result = sub_1D24F0B40(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Bubble);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D80C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA38, &unk_1D28972E0);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1D2870F68();
      v8 = v7;
      result = sub_1D25D0410(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1D25D81C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC30, &qword_1D2897258);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA30, &unk_1D2897260);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DEC30, &qword_1D2897258);
      result = sub_1D25D0488(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for GeneratedPreviewOptions(0);
      sub_1D24F0B40(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for GeneratedPreviewOptions);
      v16 = v7[7];
      v17 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
      result = sub_1D24F0B40(v5 + v8, v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D83DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED68, &unk_1D28974B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAE8, &unk_1D2898DE0);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DED68, &unk_1D28974B0);
      result = sub_1D25D064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871818();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D85C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED40, &unk_1D2897440);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAE0, &qword_1D288E858);
    v7 = sub_1D28793F8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DED40, &unk_1D2897440);
      result = sub_1D25D064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871818();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 56 * v13;
      v17 = *(v8 + 1);
      v18 = *(v8 + 4);
      v19 = *(v8 + 1);
      v20 = *(v8 + 40);
      *v16 = *v8;
      *(v16 + 8) = v17;
      *(v16 + 16) = v19;
      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D87D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAF8, &qword_1D288E860);
    v3 = sub_1D28793F8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D25D07EC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D25D88B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED60, &qword_1D2897498);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAF0, &unk_1D28974A0);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DED60, &qword_1D2897498);
      v11 = *v5;
      result = sub_1D25D07EC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1D2879308();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1D25D8A8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED18, &qword_1D28973F8);
    v3 = sub_1D28793F8();
    v4 = a1 + 32;
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v4, &v11, &qword_1EC6DED20, &qword_1D2897400);
      v5 = v11;
      result = sub_1D25D0854(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D23C3FAC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D25D8BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC80, &unk_1D2897300);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA8, &qword_1D288E828);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DEC80, &unk_1D2897300);
      result = sub_1D25D064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871818();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAA0, &qword_1D288E820);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D8DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB200, &qword_1D2886DD8);
    v3 = sub_1D28793F8();
    v4 = a1 + 32;
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v4, v13, &qword_1EC6DECB0, &qword_1D2897370);
      result = sub_1D25D0A38(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D23C3FAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1D25D8F1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB88, &qword_1D2897470);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1D2870F68();
      sub_1D2870F78();
      result = sub_1D25D0410(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D25D9020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED48, &unk_1D2897460);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAC0, &qword_1D288E838);
    v7 = sub_1D28793F8();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v8, v5, &qword_1EC6DED48, &unk_1D2897460);
      result = sub_1D25D0A7C(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
      result = sub_1D22EC9BC(v5, v13 + *(*(v14 - 8) + 72) * v12, &qword_1EC6DCAB8, &qword_1D28A11A0);
      *(v7[7] + 8 * v12) = *&v5[v19];
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D9214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAD8, &qword_1D288E850);
    v3 = sub_1D28793F8();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D25D0C1C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D25D92F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC98, &unk_1D2897330);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAC8, &qword_1D288E840);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DEC98, &unk_1D2897330);
      result = sub_1D25D064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871818();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0, &unk_1D28856D0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D9520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB20, &qword_1D288E878);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1D2870F68();
      result = sub_1D25D0410(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D25D961C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB1A0, &unk_1D2886B70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB18, &unk_1D2897390);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DB1A0, &unk_1D2886B70);
      result = sub_1D25D0E30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871D58();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D9818(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_1D2870F68();
      v10 = v9;
      result = sub_1D25D0410(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1D25D9938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC70, &unk_1D28972D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA58, &qword_1D288E810);
    v7 = sub_1D28793F8();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v8, v5, &qword_1EC6DEC70, &unk_1D28972D0);
      result = sub_1D25D0488(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = type metadata accessor for GeneratedPreviewOptions(0);
      sub_1D24F0B40(v5, v13 + *(*(v14 - 8) + 72) * v12, type metadata accessor for GeneratedPreviewOptions);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
      result = sub_1D22EC9BC(v5 + v21, v15 + *(*(v16 - 8) + 72) * v12, &qword_1EC6DA810, &qword_1D28972B0);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D9B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC60, &qword_1D28972B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA68, &unk_1D28972C0);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DEC60, &qword_1D28972B8);
      result = sub_1D25D064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871818();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA60, &unk_1D28972A0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D9D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC50, &unk_1D2897290);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA40, &qword_1D288E808);
    v7 = sub_1D28793F8();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v8, v5, &qword_1EC6DEC50, &unk_1D2897290);
      result = sub_1D25D0F04(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
      sub_1D24F0B40(v5, v13 + *(*(v14 - 8) + 72) * v12, type metadata accessor for ImageKeyFaceLoader.Context.ID);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
      result = sub_1D22EC9BC(v5 + v21, v15 + *(*(v16 - 8) + 72) * v12, &qword_1EC6DA808, &unk_1D2884480);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25D9FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEC40, &qword_1D2897278);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA50, &unk_1D2897280);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DEC40, &qword_1D2897278);
      result = sub_1D25D064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871818();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA48, &qword_1D2897270);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_1D25DA23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA80, &unk_1D2897450);
  v3 = sub_1D28793F8();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = sub_1D25D07EC(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1D2870F68();
    sub_1D2870F68();
    return v3;
  }

  v11 = v9;
  result = v5;
  v13 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + v11) = v4;
    v14 = (v3[7] + 32 * v11);
    *v14 = v6;
    v14[1] = result;
    v14[2] = v8;
    v14[3] = v7;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 32);
    v6 = *(v13 - 3);
    v19 = *(v13 - 2);
    v8 = *(v13 - 1);
    v20 = *v13;
    sub_1D2870F68();
    sub_1D2870F68();
    v11 = sub_1D25D07EC(v4);
    v13 = v18;
    v7 = v20;
    result = v19;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D25DA378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBA8, &unk_1D28974E0);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1D2870F68();
      result = sub_1D25D0410(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D25DA484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBB0, &qword_1D288E8C0);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1D2870F68();
      result = sub_1D25D0410(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D25DA588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDB10, qword_1D2891E80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED10, &qword_1D28973F0);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DDB10, qword_1D2891E80);
      v11 = *v5;
      result = sub_1D25D10EC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1D2870F08();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25DA794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA78, &qword_1D288E818);
    v3 = sub_1D28793F8();
    sub_1D2870F78();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_1D2870F68();
      result = sub_1D25D11B0(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1D25DA894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D25DA8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D25DA95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D25DA9C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_1D28793F8();
    v10 = a1 + 32;
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1D25D0990(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_1D23C3FAC(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_1D25DAAE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB00, &qword_1D288E868);
    v3 = sub_1D28793F8();
    v4 = a1 + 32;
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v4, &v13, &qword_1EC6DED30, &qword_1D2897420);
      v5 = v13;
      v6 = v14;
      result = sub_1D25D100C(v13 | (v14 << 8));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 2 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D227268C(&v15, v3[7] + 40 * result);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D25DAC18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED08, &unk_1D28973D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBA0, &qword_1D288E8B8);
    v7 = sub_1D28793F8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DED08, &unk_1D28973D0);
      result = sub_1D25D064C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2871818();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25DAE08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB58, &unk_1D28973E0);
    v3 = sub_1D28793F8();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_1D25D0574(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D25DAEF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED28, &qword_1D2897408);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB70, &unk_1D2897410);
    v7 = sub_1D28793F8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1D2870F78();
    while (1)
    {
      sub_1D22BD1D0(v9, v5, &qword_1EC6DED28, &qword_1D2897408);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D25D0410(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ConversationContextItem(0);
      result = sub_1D24F0B40(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ConversationContextItem);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D25DB0DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBB8, &unk_1D28974F0);
    v3 = sub_1D28793F8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D25D0574(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t static ServicesStartup.preWarmServices(in:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BC8FC;

  return sub_1D25DB284(a1);
}

uint64_t sub_1D25DB284(uint64_t a1)
{
  v1[2] = a1;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D25DB31C, v3, v2);
}

uint64_t sub_1D25DB31C()
{
  sub_1D23C7858();
  _CuratedPromptsManager.configureVectorDatabase()();

  v1 = sub_1D23C6DDC();
  sub_1D255B4E8(0, 0xD000000000000014, 0x80000001D28BBB50);

  sub_1D23C7F70();
  sub_1D2610988();

  *(v0 + 48) = sub_1D23C6B54();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1D25DB41C;

  return sub_1D274BE84();
}

uint64_t sub_1D25DB41C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D25DB560, v3, v2);
}

uint64_t sub_1D25DB560()
{
  *(v0 + 64) = sub_1D23C75C0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D25DB5FC;

  return sub_1D26330FC();
}

uint64_t sub_1D25DB5FC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D22ADFBC, v3, v2);
}

void sub_1D25DB77C(void *a1)
{
  sub_1D25DBC80(319, &unk_1EC6D7720, type metadata accessor for PhotoGridElementViewModel, MEMORY[0x1E6981790]);
  if (v2 <= 0x3F)
  {
    sub_1D25DBC80(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1D24BFA5C();
      if (v4 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          sub_1D22BFAB4();
          if (v7 <= 0x3F)
          {
            type metadata accessor for PhotoGridElementViewMultiDragInfo(319, a1[3], a1[5], v6);
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D25DB8F0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 49) & ~v6) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1D25DBA68(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 49) & ~v8) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 49) & ~v8) + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);

        return v19((((v18 + 39) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v18 = a2 & 0x7FFFFFFF;
        v18[1] = 0;
      }

      else
      {
        *v18 = a2 - 1;
      }

      return result;
    }
  }

  if (((((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 49) & ~v8) + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 49) & ~v8) + 9) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1D25DBC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D25DBCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D25DBD38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D25DBD80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D25DBE10@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1D2878F18();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_1D25DBE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v67 = *(a1 - 8);
  v69 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DED88, &unk_1D2897650);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC4F0, &qword_1D288CBD8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DED90, &qword_1D2897660);
  v74 = a1;
  *&v72 = a1 + 24;
  *&v71 = a1 + 40;
  v58 = *(a1 + 16);
  v66 = *(a1 + 32);
  type metadata accessor for PhotoGridElementContextualMenu(255, v58, v66, v5);
  v6 = sub_1D2878F18();
  v7 = sub_1D25E0D6C();
  WitnessTable = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v83 = v4;
  v84 = v6;
  v85 = v7;
  v86 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = type metadata accessor for ImageDescriptionView(255);
  v83 = v4;
  v84 = v6;
  v85 = v7;
  v86 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_1D25E1DA4(&qword_1EC6E0CD0, type metadata accessor for ImageDescriptionView, &unk_1D2895ED8);
  v83 = OpaqueTypeMetadata2;
  v84 = v10;
  v85 = OpaqueTypeConformance2;
  v86 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1D2876248();
  sub_1D2874F68();
  v83 = OpaqueTypeMetadata2;
  v84 = v10;
  v85 = OpaqueTypeConformance2;
  v86 = v12;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_1D25E1DA4(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v81 = v13;
  v82 = v14;
  swift_getWitnessTable();
  sub_1D2875218();
  sub_1D2874F68();
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC410, &qword_1D288CC00);
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEDC8, &qword_1D2897680);
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0E0, &qword_1D2895128);
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEDC0, &unk_1D2897670);
  sub_1D2874F68();
  swift_getTupleTypeMetadata2();
  sub_1D2877A58();
  swift_getWitnessTable();
  v15 = sub_1D28774C8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = sub_1D2874F68();
  v64 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v51 - v20;
  v53 = swift_getWitnessTable();
  v79 = v53;
  v80 = MEMORY[0x1E697F568];
  v21 = swift_getWitnessTable();
  v83 = v19;
  v84 = v21;
  v22 = v19;
  v54 = v19;
  v55 = v21;
  v23 = swift_getOpaqueTypeMetadata2();
  v59 = v23;
  v65 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v51 - v24;
  v83 = v22;
  v84 = v21;
  v57 = swift_getOpaqueTypeConformance2();
  v83 = v23;
  v84 = v57;
  v61 = MEMORY[0x1E697D540];
  v62 = swift_getOpaqueTypeMetadata2();
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v60 = &v51 - v27;
  sub_1D2877818();
  *&v28 = v58;
  *(&v28 + 1) = *v72;
  v72 = v28;
  *&v29 = v66;
  *(&v29 + 1) = *v71;
  v71 = v29;
  v76 = v28;
  v77 = v29;
  v30 = v75;
  v78 = v75;
  sub_1D28774B8();
  sub_1D2876798();
  (*(v16 + 8))(v18, v15);
  v31 = v67;
  v66 = *(v67 + 16);
  v32 = v68;
  v33 = v74;
  v66(v68, v30, v74);
  v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v35 = swift_allocObject();
  v36 = v71;
  *(v35 + 16) = v72;
  *(v35 + 32) = v36;
  v37 = *(v31 + 32);
  v37(v35 + v34, v32, v33);
  v38 = v54;
  v39 = v52;
  sub_1D2876908();

  (*(v64 + 8))(v39, v38);
  v86 = MEMORY[0x1E69E6370];
  LOBYTE(v83) = 1;
  v40 = v74;
  v66(v32, v75, v74);
  v41 = swift_allocObject();
  v42 = v71;
  *(v41 + 16) = v72;
  *(v41 + 32) = v42;
  v37(v41 + v34, v32, v40);
  v43 = v57;
  v44 = v59;
  v45 = v56;
  v46 = v73;
  sub_1D2876E68();

  (*(v65 + 8))(v46, v44);
  sub_1D22BD238(&v83, &qword_1EC6E1900, &qword_1D288CA00);
  v83 = v44;
  v84 = v43;
  swift_getOpaqueTypeConformance2();
  v47 = v60;
  v48 = v62;
  sub_1D245980C();
  v49 = *(v63 + 8);
  v49(v45, v48);
  sub_1D245980C();
  return (v49)(v47, v48);
}

uint64_t sub_1D25DC8F8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v151 = a5;
  v150 = a3;
  v153 = a1;
  v145 = a6;
  v144 = sub_1D2875258();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1D2875188();
  MEMORY[0x1EEE9AC00](v152);
  v141 = (&v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4F0, &qword_1D288CBD8);
  MEMORY[0x1EEE9AC00](v11);
  v137 = (&v110 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DED90, &qword_1D2897660);
  v148 = a2;
  v149 = a4;
  type metadata accessor for PhotoGridElementContextualMenu(255, a2, a4, v14);
  v15 = sub_1D2878F18();
  v16 = sub_1D25E0D6C();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v159 = v13;
  v160 = v15;
  v161 = v16;
  v162 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = type metadata accessor for ImageDescriptionView(255);
  v159 = v13;
  v160 = v15;
  v161 = v16;
  v162 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_1D25E1DA4(&qword_1EC6E0CD0, type metadata accessor for ImageDescriptionView, &unk_1D2895ED8);
  v159 = OpaqueTypeMetadata2;
  v160 = v19;
  v161 = OpaqueTypeConformance2;
  v162 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_1D2876248();
  v22 = sub_1D2874F68();
  v159 = OpaqueTypeMetadata2;
  v160 = v19;
  v161 = OpaqueTypeConformance2;
  v162 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1D25E1DA4(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v158[17] = v23;
  v158[18] = v24;
  v126 = v24;
  v25 = swift_getWitnessTable();
  v120 = v22;
  v115 = v25;
  v26 = sub_1D2875218();
  v146 = v11;
  v116 = v26;
  v27 = sub_1D2874F68();
  v118 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v117 = &v110 - v28;
  v119 = v29;
  v30 = sub_1D2874F68();
  v122 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v121 = &v110 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC410, &qword_1D288CC00);
  v123 = v30;
  v32 = sub_1D2874F68();
  v127 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v124 = &v110 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEDC8, &qword_1D2897680);
  v128 = v32;
  v34 = sub_1D2874F68();
  v131 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v129 = &v110 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0E0, &qword_1D2895128);
  v132 = v34;
  v36 = sub_1D2874F68();
  v134 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v133 = &v110 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEDC0, &unk_1D2897670);
  v135 = v36;
  v140 = sub_1D2874F68();
  v136 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v138 = &v110 - v40;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDD8, &unk_1D2897690);
  v114 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v110 = (&v110 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v110 - v43;
  v45 = type metadata accessor for PlaygroundImage(0);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v110 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED88, &unk_1D2897650);
  MEMORY[0x1EEE9AC00](v125);
  v130 = &v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v110 - v51;
  v53 = *(v153 + 16);
  v112 = *(v153 + 8);
  v159 = v112;
  v160 = v53;
  v111 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDD0, &qword_1D2897688);
  sub_1D2877308();
  v54 = *(v158[14] + 16);
  v154 = sub_1D250D10C();
  v155 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v159 = v54;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for _PhotoAsset<A>);
  sub_1D28719E8();

  v55 = *(*v54 + 200);
  swift_beginAccess();
  sub_1D22BD1D0(v54 + v55, v44, &unk_1EC6DE5A0, &unk_1D287F0E0);

  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_1D22BD238(v44, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v56 = 1;
    v57 = v151;
    v58 = v149;
    v59 = v153;
    v60 = v150;
    v61 = v148;
  }

  else
  {
    sub_1D25E19E0(v44, v48, type metadata accessor for PlaygroundImage);
    v62 = v148;
    v63 = v150;
    v159 = v148;
    v160 = v150;
    v58 = v149;
    v57 = v151;
    v161 = v149;
    v162 = v151;
    v64 = type metadata accessor for PhotoGridElementView(0, &v159);
    v65 = v110;
    v66 = v153;
    sub_1D25DDCAC(v64, v110);
    sub_1D25349FC(v48, type metadata accessor for PlaygroundImage);
    sub_1D22EC9BC(v65, v52, &qword_1EC6DEDD8, &unk_1D2897690);
    v56 = 0;
    v59 = v66;
    v60 = v63;
    v61 = v62;
  }

  v113 = v52;
  (*(v114 + 56))(v52, v56, 1, v147);
  v159 = v112;
  v160 = v111;
  sub_1D2877308();
  v114 = *(v158[0] + 16);
  v67 = v114;
  sub_1D2870F78();

  v159 = v61;
  v160 = v60;
  v161 = v58;
  v162 = v57;
  v147 = type metadata accessor for PhotoGridElementView(0, &v159);
  v68 = v137;
  sub_1D25DDD14(v137);
  v69 = sub_1D2877098();
  v70 = v146;
  *(v68->n128_u64 + *(v146 + 52)) = v69;
  *(v68->n128_u16 + *(v70 + 56)) = 256;
  MEMORY[0x1EEE9AC00](v69);
  *(&v110 - 6) = v61;
  *(&v110 - 5) = v60;
  *(&v110 - 4) = v71;
  *(&v110 - 3) = v57;
  *(&v110 - 2) = v67;
  *(&v110 - 1) = v59;
  sub_1D2877848();
  v72 = sub_1D22BB9D8(&qword_1EC6DC590, &qword_1EC6DC4F0, &qword_1D288CBD8, MEMORY[0x1E697DB78]);
  v73 = v117;
  sub_1D2876EE8();
  sub_1D22BD238(v68, &qword_1EC6DC4F0, &qword_1D288CBD8);
  v137 = MEMORY[0x1E697EC18];
  v74 = swift_getWitnessTable();
  v158[12] = v72;
  v158[13] = v74;
  v146 = MEMORY[0x1E697E858];
  v75 = v119;
  v76 = swift_getWitnessTable();
  v77 = v121;
  sub_1D2876CC8();
  (*(v118 + 8))(v73, v75);
  v78 = v141;
  v79 = v153;
  sub_1D25DDD14(v141);
  v158[10] = v76;
  v158[11] = v126;
  v80 = v123;
  v81 = swift_getWitnessTable();
  v126 = sub_1D25E1DA4(&qword_1ED89D740, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v82 = v124;
  sub_1D2876F88();
  v83 = MEMORY[0x1E697EAF0];
  sub_1D25349FC(v78, MEMORY[0x1E697EAF0]);
  (*(v122 + 8))(v77, v80);
  v84 = v79;
  sub_1D25DDD14(v78);
  v85 = sub_1D22BB9D8(&qword_1EC6DC408, &qword_1EC6DC410, &qword_1D288CC00, MEMORY[0x1E697DDB0]);
  v158[8] = v81;
  v158[9] = v85;
  v86 = v128;
  v87 = swift_getWitnessTable();
  v88 = v129;
  sub_1D2876888();
  sub_1D25349FC(v78, v83);
  (*(v127 + 8))(v82, v86);
  v89 = v142;
  sub_1D2875248();
  sub_1D25DDD14(v78);
  v90 = sub_1D22BB9D8(&qword_1EC6DEDE0, &qword_1EC6DEDC8, &qword_1D2897680, MEMORY[0x1E697FD58]);
  v158[6] = v87;
  v158[7] = v90;
  v91 = v132;
  v92 = swift_getWitnessTable();
  v93 = v133;
  sub_1D2876898();
  sub_1D25349FC(v78, v83);
  (*(v143 + 8))(v89, v144);
  (*(v131 + 8))(v88, v91);
  v94 = sub_1D2877818();
  MEMORY[0x1EEE9AC00](v94);
  v95 = v150;
  *(&v110 - 6) = v148;
  *(&v110 - 5) = v95;
  v96 = v151;
  *(&v110 - 4) = v149;
  *(&v110 - 3) = v96;
  *(&v110 - 2) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDE8, &qword_1D28976E0);
  v97 = sub_1D22BB9D8(&qword_1EC6DE128, &qword_1EC6DE0E0, &qword_1D2895128, MEMORY[0x1E69805E8]);
  v158[4] = v92;
  v158[5] = v97;
  v98 = v135;
  v99 = swift_getWitnessTable();
  sub_1D25E17F4();
  v100 = v139;
  sub_1D2876EE8();
  (*(v134 + 8))(v93, v98);
  v101 = sub_1D22BB9D8(&qword_1EC6DEDB8, &qword_1EC6DEDC0, &unk_1D2897670, v137);
  v158[2] = v99;
  v158[3] = v101;
  v102 = v140;
  v103 = swift_getWitnessTable();
  v104 = v138;
  sub_1D245980C();
  v105 = v136;
  v106 = *(v136 + 8);
  v106(v100, v102);
  v107 = v113;
  v108 = v130;
  sub_1D22BD1D0(v113, v130, &qword_1EC6DED88, &unk_1D2897650);
  v159 = v108;
  (*(v105 + 16))(v100, v104, v102);
  v160 = v100;
  v158[0] = v125;
  v158[1] = v102;
  v156 = sub_1D25E18A4();
  v157 = v103;
  sub_1D24C289C(&v159, 2uLL, v158);

  v106(v104, v102);
  sub_1D22BD238(v107, &qword_1EC6DED88, &unk_1D2897650);
  v106(v100, v102);
  return sub_1D22BD238(v108, &qword_1EC6DED88, &unk_1D2897650);
}

uint64_t sub_1D25DDCAC@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1D2877848();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE18, &qword_1D28976F0);
  return sub_1D25E09D8(v3, a2[2], a2[3], a2[4], a2[5], a3 + *(v7 + 44));
}

__n128 sub_1D25DDD14@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(sub_1D2875188() + 20);
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_1D2875868();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #16.0 }

  *a1 = result;
  return result;
}

uint64_t sub_1D25DDD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v123 = a1;
  v149 = a7;
  v153 = sub_1D28758D8();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v169 = a3;
  *(&v169 + 1) = a4;
  v163 = a4;
  *&v170 = a5;
  *(&v170 + 1) = a6;
  v150 = a6;
  v161 = type metadata accessor for PhotoGridElementView(0, &v169);
  v147 = *(v161 - 8);
  v144 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v145 = &v117 - v13;
  v119 = sub_1D2875628();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1D2873CB8();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v154 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v117 - v18;
  v19 = type metadata accessor for PhotoAssetView(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v117 - v23;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDA8, &qword_1D2897668);
  MEMORY[0x1EEE9AC00](v127);
  v131 = &v117 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED90, &qword_1D2897660);
  MEMORY[0x1EEE9AC00](v25);
  v132 = &v117 - v26;
  v162 = a3;
  v164 = a5;
  type metadata accessor for PhotoGridElementContextualMenu(255, a3, a5, v27);
  v28 = sub_1D2878F18();
  v29 = sub_1D25E0D6C();
  WitnessTable = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  *&v169 = v25;
  *(&v169 + 1) = v28;
  *&v170 = v29;
  *(&v170 + 1) = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v160 = &v117 - v32;
  v33 = type metadata accessor for ImageDescriptionView(255);
  v158 = v25;
  *&v169 = v25;
  *(&v169 + 1) = v28;
  v129 = v28;
  v130 = v29;
  *&v170 = v29;
  *(&v170 + 1) = v30;
  v126 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_1D25E1DA4(&qword_1EC6E0CD0, type metadata accessor for ImageDescriptionView, &unk_1D2895ED8);
  v140 = OpaqueTypeMetadata2;
  *&v169 = OpaqueTypeMetadata2;
  *(&v169 + 1) = v33;
  v133 = v33;
  v137 = OpaqueTypeConformance2;
  *&v170 = OpaqueTypeConformance2;
  *(&v170 + 1) = v35;
  v135 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v138 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v136 = &v117 - v37;
  sub_1D2876248();
  v139 = v36;
  v148 = sub_1D2874F68();
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v141 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v142 = &v117 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v143 = &v117 - v42;
  *(&v170 + 1) = sub_1D2875188();
  v171 = sub_1D25E1DA4(&qword_1ED89D740, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v169);
  v44 = v161;
  sub_1D25DDD14(boxed_opaque_existential_1);
  v159 = *(a2 + *(v44 + 68));
  v45 = swift_allocObject();
  v46 = *(a2 + 16);
  v47 = a2;
  v157 = *(a2 + 8);
  *&v167 = v157;
  *(&v167 + 1) = v46;
  v156 = v46;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDD0, &qword_1D2897688);
  sub_1D2877308();
  swift_weakInit();

  v48 = type metadata accessor for PlaygroundImage(0);
  v49 = v120;
  (*(*(v48 - 8) + 56))(v120, 1, 1, v48);
  sub_1D22BD1D0(v49, v121, &unk_1EC6DE5A0, &unk_1D287F0E0);
  sub_1D2870F78();
  sub_1D28772F8();
  sub_1D22BD238(v49, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v50 = v19[5];
  v168 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1150, &qword_1D288F7E0);
  sub_1D28772F8();
  *&v21[v50] = v167;
  sub_1D2872528();
  v51 = v123;
  sub_1D2870F78();
  v52 = sub_1D2873CA8();
  v53 = sub_1D2878A08();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v122 = v47;
    v56 = v55;
    *&v167 = v55;
    *v54 = 136315138;
    sub_1D2871818();
    sub_1D25E1DA4(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v57 = sub_1D28795C8();
    v59 = sub_1D23D7C84(v57, v58, &v167);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_1D226E000, v52, v53, "PhotoAssetView init for image uuid: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    v60 = v56;
    v47 = v122;
    MEMORY[0x1D38A3520](v60, -1, -1);
    MEMORY[0x1D38A3520](v54, -1, -1);
  }

  (*(v124 + 8))(v154, v125);
  *&v21[v19[6]] = v51;
  v21[v19[7]] = 0;
  v21[v19[8]] = 0;
  v21[v19[9]] = 1;
  v61 = &v21[v19[10]];
  v62 = v170;
  *v61 = v169;
  *(v61 + 1) = v62;
  *(v61 + 4) = v171;
  v21[v19[11]] = v159;
  v63 = &v21[v19[12]];
  *v63 = sub_1D25E19D8;
  v63[1] = v45;
  v64 = v21;
  v65 = v128;
  sub_1D25E19E0(v64, v128, type metadata accessor for PhotoAssetView);
  sub_1D2870F78();

  if (*(v47 + 32) == 1)
  {
    *&v169 = *(v47 + 24);
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v66 = sub_1D28762E8();
    sub_1D2873BE8();

    v67 = v117;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v118 + 8))(v67, v119);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  *&v169 = off_1ED8A4930;
  sub_1D25E1DA4(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v68 = sub_1D23CF870();

  v69 = v131;
  sub_1D25E19E0(v65, v131, type metadata accessor for PhotoAssetView);
  v70 = v69 + *(v127 + 36);
  *v70 = 0;
  *(v70 + 8) = 1;
  *(v70 + 9) = v68 & 1;
  v71 = sub_1D2877818();
  v73 = v72;
  v74 = v132;
  v75 = &v132[*(v158 + 36)];
  v76 = v163;
  v77 = v162;
  v78 = v164;
  v79 = v150;
  sub_1D25DF274(v47, v162, v163, v164, v150, v75);
  v80 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDC0, &unk_1D2897670) + 36));
  *v80 = v71;
  v80[1] = v73;
  v81 = sub_1D22EC9BC(v69, v74, &qword_1EC6DEDA8, &qword_1D2897668);
  MEMORY[0x1EEE9AC00](v81);
  *(&v117 - 6) = v77;
  *(&v117 - 5) = v76;
  v113 = v78;
  v114 = v79;
  v115 = v47;
  swift_checkMetadataState();
  sub_1D28767D8();
  sub_1D22BD238(v74, &qword_1EC6DED90, &qword_1D2897660);
  *&v167 = v157;
  *(&v167 + 1) = v156;
  sub_1D2877328();
  v82 = v169;
  v83 = v170;
  swift_getKeyPath();
  v169 = v82;
  *&v170 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE60, &qword_1D28977E8);
  sub_1D2877508();

  v84 = v147;
  v85 = v145;
  v86 = v161;
  (*(v147 + 16))(v145, v47, v161);
  v87 = (*(v84 + 80) + 48) & ~*(v84 + 80);
  v88 = swift_allocObject();
  v89 = v163;
  *(v88 + 2) = v162;
  *(v88 + 3) = v89;
  *(v88 + 4) = v164;
  *(v88 + 5) = v79;
  (*(v84 + 32))(&v88[v87], v85, v86);
  v90 = swift_checkMetadataState();
  v91 = v135;
  v115 = v135;
  v92 = v137;
  v113 = v90;
  v114 = v137;
  v93 = v136;
  v94 = v140;
  v95 = v160;
  sub_1D2876E48();

  (*(v134 + 8))(v95, v94);
  *&v169 = v157;
  *(&v169 + 1) = v156;
  sub_1D2877308();
  v96 = *(v167 + 16);
  sub_1D2870F78();

  MEMORY[0x1EEE9AC00](v97);
  v115 = sub_1D250D10C();
  v116 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  *&v169 = v96;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for _PhotoAsset<A>);
  sub_1D28719E8();

  v98 = (v96 + *(*v96 + 216));
  v100 = *v98;
  v99 = v98[1];
  sub_1D2870F68();

  if (v99)
  {
    v101 = v100;
  }

  else
  {
    v101 = 0;
  }

  if (v99)
  {
    v102 = v99;
  }

  else
  {
    v102 = 0xE000000000000000;
  }

  *&v167 = v101;
  *(&v167 + 1) = v102;
  *&v169 = v94;
  *(&v169 + 1) = v90;
  *&v170 = v92;
  *(&v170 + 1) = v91;
  v103 = swift_getOpaqueTypeConformance2();
  sub_1D22BD06C();
  v104 = v141;
  v105 = v139;
  sub_1D2876AC8();

  (*(v138 + 8))(v93, v105);
  if (v159)
  {
    v106 = v151;
    sub_1D2875888();
  }

  else
  {
    *&v169 = MEMORY[0x1E69E7CC0];
    sub_1D25E1DA4(&qword_1ED89D678, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C8, &qword_1D2890E70);
    sub_1D22BB9D8(&qword_1ED89CEC8, &qword_1EC6DD1C8, &qword_1D2890E70, MEMORY[0x1E69E6328]);
    v106 = v151;
    sub_1D2879088();
  }

  v107 = v142;
  v108 = v148;
  sub_1D2874F38();
  (*(v152 + 8))(v106, v153);
  v109 = *(v146 + 8);
  v109(v104, v108);
  v110 = sub_1D25E1DA4(&qword_1ED89D2B0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v165 = v103;
  v166 = v110;
  swift_getWitnessTable();
  v111 = v143;
  sub_1D245980C();
  v109(v107, v108);
  sub_1D245980C();
  return (v109)(v111, v108);
}

double sub_1D25DF180(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_1D25E1DA4(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D257C458(*(v3 + 16));

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D25DF274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a2;
  v29 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE00, &qword_1D28976E8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v25 - v12;
  v13 = sub_1D2875628();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 24);
  v30 = a1;
  if (*(a1 + 32) == 1)
  {
    v31[0] = v17;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v18 = sub_1D28762E8();
    v26 = v11;
    v19 = v18;
    sub_1D2873BE8();

    v11 = v26;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v31[0] = off_1ED8A4930;
  sub_1D25E1DA4(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v20 = sub_1D23CF870();

  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v31[0] = v28;
    v31[1] = a3;
    v31[2] = a4;
    v31[3] = v29;
    v22 = type metadata accessor for PhotoGridElementView(0, v31);
    v23 = v27;
    sub_1D25DF5CC(v22, v27);
    sub_1D22EC9BC(v23, a6, &qword_1EC6DEE00, &qword_1D28976E8);
    v21 = 0;
  }

  return (*(v11 + 56))(a6, v21, 1, v10);
}

uint64_t sub_1D25DF5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_1D28718F8();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2874DB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2875188();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE38, &qword_1D2897738);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE40, &qword_1D2897740);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  if (*(v2 + *(a1 + 68)) == 1)
  {
    sub_1D25DDD14(v12);
    sub_1D2874DA8();
    sub_1D28745B8();
    sub_1D24D9AAC(v12, v16);
    v22 = *&v58 * 0.5;
    v23 = &v16[*(v13 + 68)];
    sub_1D24D9AAC(v12, v23);
    *(v23 + *(sub_1D2875178() + 20)) = v22;
    v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD760, &qword_1D28977A0) + 36);
    v25 = v59;
    *v24 = v58;
    *(v24 + 16) = v25;
    *(v24 + 32) = v60;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE50, &qword_1D28977A8);
    v49 = v13;
    v27 = v26;
    (*(v7 + 16))(v23 + *(v26 + 52), v9, v6);
    *(v23 + *(v27 + 56)) = 256;
    v28 = sub_1D2877848();
    v29 = v6;
    v31 = v30;
    (*(v7 + 8))(v9, v29);
    sub_1D25349FC(v12, MEMORY[0x1E697EAF0]);
    v32 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE58, &unk_1D28977B0) + 36));
    *v32 = v28;
    v32[1] = v31;
    sub_1D22EC9BC(v16, v21, &qword_1EC6DEE38, &qword_1D2897738);
    (*(v14 + 56))(v21, 0, 1, v49);
  }

  else
  {
    (*(v14 + 56))(&v49 - v20, 1, 1, v13);
  }

  v33 = *(v2 + 8);
  v34 = *(v2 + 16);
  v56 = v33;
  v57 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDD0, &qword_1D2897688);
  sub_1D2877308();
  v35 = v55;
  swift_getKeyPath();
  v56 = v35;
  sub_1D25E1DA4(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  v36 = *(v35 + 49);

  if (v36 == 1)
  {
    v56 = v33;
    v57 = v34;
    sub_1D2877308();
    v37 = v55;
    swift_getKeyPath();
    v56 = v37;
    sub_1D28719E8();

    v38 = *(v37 + 56);

    v39 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v39 setNumberStyle_];
    v40 = v50;
    sub_1D28718C8();
    v41 = sub_1D2871888();
    (*(v51 + 8))(v40, v52);
    [v39 setLocale_];

    v55 = 0x4010000000000000;
    sub_1D28772F8();
    v42 = v56;
    v43 = v57;
    sub_1D2870F78();
    v44 = v39;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v38 = 0;
    v39 = 0;
  }

  v45 = v53;
  sub_1D22BD1D0(v21, v53, &qword_1EC6DEE40, &qword_1D2897740);
  v46 = v54;
  sub_1D22BD1D0(v45, v54, &qword_1EC6DEE40, &qword_1D2897740);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE48, &qword_1D2897770) + 48));
  sub_1D25E1954(v42, v43, v38, v39);
  sub_1D25E1998(v42, v43, v38, v39);
  *v47 = v42;
  v47[1] = v43;
  v47[2] = v38;
  v47[3] = v39;
  sub_1D22BD238(v21, &qword_1EC6DEE40, &qword_1D2897740);
  sub_1D25E1998(v42, v43, v38, v39);
  return sub_1D22BD238(v45, &qword_1EC6DEE40, &qword_1D2897740);
}

uint64_t sub_1D25DFC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v50 = a3;
  v51 = a4;
  v61 = a5;
  v52 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v7;
  v57 = v8;
  v9 = type metadata accessor for PhotoGridElementContextualMenu(0, v7, v8, v8);
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v45 - v12;
  v13 = sub_1D2878F18();
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v45 - v17;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v65 = v18;
  v66 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDD0, &qword_1D2897688);
  sub_1D2877308();
  v20 = v62;
  swift_getKeyPath();
  v65 = v20;
  sub_1D25E1DA4(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  v21 = *(v20 + 64);

  if (v21 == 1)
  {
    v65 = v18;
    v66 = v19;
    sub_1D2877308();
    v49 = sub_1D25E46C4();

    v22 = v56;
    v65 = v56;
    v66 = v50;
    v67 = v57;
    v68 = v51;
    v23 = type metadata accessor for PhotoGridElementView(0, &v65);
    (*(v52 + 16))(v55, a1 + v23[16], v22);
    LODWORD(v52) = *(a1 + v23[18]);
    v24 = v23[20];
    v25 = (a1 + v23[21]);
    v26 = v25[1];
    v51 = *v25;
    v47 = v26;
    v27 = *(a1 + v24 + 8);
    v50 = *(a1 + v24);
    v46 = v27;
    v28 = (a1 + v23[22]);
    v29 = v28[1];
    v48 = *v28;
    v62 = v18;
    v63 = v19;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2877328();
    v30 = v65;
    v31 = v66;
    v32 = v67;
    swift_getKeyPath();
    v65 = v30;
    v66 = v31;
    v67 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE60, &qword_1D28977E8);
    sub_1D2877508();

    v33 = v62;
    v34 = v63;
    v35 = v64;

    v44 = v29;
    v36 = v54;
    sub_1D25E6D58(v49, v55, v52, v51, v47, v50, v46, v48, v54, v44, v33, v34, v35, v56, v57);
    swift_getWitnessTable();
    v37 = v53;
    sub_1D245980C();
    v38 = v58;
    v39 = *(v58 + 8);
    v39(v36, v9);
    sub_1D245980C();
    v39(v37, v9);
    (*(v38 + 32))(v15, v36, v9);
    (*(v38 + 56))(v15, 0, 1, v9);
  }

  else
  {
    (*(v58 + 56))(v15, 1, 1, v9);
    swift_getWitnessTable();
  }

  v41 = v59;
  v40 = v60;
  (*(v60 + 16))(v59, v15, v13);
  v42 = *(v40 + 8);
  v42(v15, v13);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D245980C();
  return (v42)(v41, v13);
}

void sub_1D25E028C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25E1DA4(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  *a2 = *(v3 + 50);
}

uint64_t sub_1D25E035C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-v7];
  v10 = *(a1 + 16);
  v30 = *(a1 + 8);
  v9 = v30;
  v31 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDD0, &qword_1D2897688);
  sub_1D2877308();
  v11 = *(v27 + 16);
  sub_1D2870F78();

  v27 = v9;
  v28 = v10;
  sub_1D2877328();
  v12 = v30;
  v13 = v31;
  v14 = v32;
  swift_getKeyPath();
  v30 = v12;
  v31 = v13;
  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE60, &qword_1D28977E8);
  sub_1D2877508();

  v15 = v27;
  v16 = v28;
  v25 = v29;

  v17 = type metadata accessor for PlaygroundImage(0);
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1D22BD1D0(v8, v5, &unk_1EC6DE5A0, &unk_1D287F0E0);
  sub_1D28772F8();
  sub_1D22BD238(v8, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v18 = type metadata accessor for ImageDescriptionView(0);
  v19 = a2 + v18[5];
  result = sub_1D28742D8();
  *v19 = result & 1;
  *(v19 + 1) = v21;
  v19[16] = v22 & 1;
  *(a2 + v18[6]) = v11;
  *(a2 + v18[7]) = 0;
  v23 = a2 + v18[8];
  *v23 = v15;
  *(v23 + 1) = v16;
  v23[16] = v25;
  return result;
}

uint64_t sub_1D25E05C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a2;
  v29 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE00, &qword_1D28976E8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v25 - v12;
  v13 = sub_1D2875628();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 24);
  v30 = a1;
  if (*(a1 + 32) == 1)
  {
    v31[0] = v17;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v18 = sub_1D28762E8();
    v26 = v11;
    v19 = v18;
    sub_1D2873BE8();

    v11 = v26;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v31[0] = off_1ED8A4930;
  sub_1D25E1DA4(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v20 = sub_1D23CF870();

  if (v20)
  {
    v31[0] = v28;
    v31[1] = a3;
    v31[2] = a4;
    v31[3] = v29;
    v21 = type metadata accessor for PhotoGridElementView(0, v31);
    v22 = v27;
    sub_1D25DF5CC(v21, v27);
    sub_1D22EC9BC(v22, a6, &qword_1EC6DEE00, &qword_1D28976E8);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v11 + 56))(a6, v23, 1, v10);
}