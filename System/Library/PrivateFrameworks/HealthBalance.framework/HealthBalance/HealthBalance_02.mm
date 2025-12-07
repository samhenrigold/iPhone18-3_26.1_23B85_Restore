void sub_1CFDD2C1C(uint64_t a1)
{
  sub_1CFDAD280(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1CFDD2C9C()
{
  result = qword_1EC509780;
  if (!qword_1EC509780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509780);
  }

  return result;
}

void sub_1CFDD2CF0(uint64_t a1)
{
  if (!qword_1EDC318D8)
  {
    sub_1CFDAD280(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC318D8);
    }
  }
}

uint64_t sub_1CFDD2D54(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAC3A0(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t String.init<A>(describingOptional:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v9[2] = a2;
  v9[3] = sub_1CFDD3268;
  v9[4] = v4;
  v5 = sub_1CFE30C74();
  sub_1CFDD2F08(sub_1CFDD3270, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v6, v10);

  if (v10[1])
  {
    v7 = v10[0];
  }

  else
  {
    v7 = 7104878;
  }

  (*(*(v5 - 8) + 8))(a1, v5);
  return v7;
}

uint64_t sub_1CFDD2F08@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a5;
  v29 = a2;
  v30 = a1;
  v27 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v10, v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v24);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v19, v22, v14);
  v30(v19, v12);
  result = (*(v15 + 8))(v19, v14);
  if (v6)
  {
    return (*(v27 + 32))(v28, v12, a3);
  }

  return result;
}

uint64_t sub_1CFDD31B0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1CFE30944();
}

uint64_t sub_1CFDD3270@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static TrainingLoadDataType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t TrainingLoadDataType.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  return MEMORY[0x1D3876810](v1);
}

uint64_t TrainingLoadDataType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDD33A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDD3414()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  return MEMORY[0x1D3876810](v1);
}

uint64_t sub_1CFDD3464(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1CFE31144();
  if (v3 == 1)
  {
    v2 = v2 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  MEMORY[0x1D3876810](v2);
  return sub_1CFE31184();
}

uint64_t sub_1CFDD34CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CFDD350C()
{
  result = qword_1EC509788;
  if (!qword_1EC509788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509788);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadDataType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TrainingLoadDataType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1CFDD35C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFDD35F0()
{
  v0 = sub_1CFE30624();
  __swift_allocate_value_buffer(v0, qword_1EDC32578);
  __swift_project_value_buffer(v0, qword_1EDC32578);
  return sub_1CFE30614();
}

unint64_t sub_1CFDD36C0()
{
  result = qword_1EDC31810;
  if (!qword_1EDC31810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC31810);
  }

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

uint64_t SleepingSampleDaySummaryCollection.init(gregorianDayRange:daySummaries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDA6564(a1, a3, type metadata accessor for GregorianDayRange);
  result = type metadata accessor for SleepingSampleDaySummaryCollection(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1CFDD37FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDD388C(uint64_t a1, uint64_t a2)
{
  sub_1CFDA74C8(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SleepingSampleDaySummaryCollection.daySummaries.getter()
{
  type metadata accessor for SleepingSampleDaySummaryCollection(0);
}

uint64_t SleepingSampleDaySummaryCollection.daySummaries.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepingSampleDaySummaryCollection(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t static SleepingSampleDaySummaryCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA7760(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA74C8(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GregorianDayRange(0);
  if ((MEMORY[0x1D3875B20](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for SleepingSampleDaySummaryCollection(0) + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1CFDD42B8(v6, v7);
}

uint64_t sub_1CFDD3AE4(uint64_t a1, uint64_t a2)
{
  sub_1CFDAC3A0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v65 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9784(0, &qword_1EDC32CB0, sub_1CFDAC3A0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v68 = &v55 - v11;
  sub_1CFDD6E38(0, &qword_1EDC318D8, &qword_1EDC32CB0, sub_1CFDAC3A0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v55 - v15;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  v17 = *(SampleDaySummary - 1);
  v19 = MEMORY[0x1EEE9AC00](SampleDaySummary, v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v55 - v23;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  if (v25 && a1 != a2)
  {
    v62 = v13;
    v63 = v5;
    v26 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v27 = a1 + v26;
    v28 = a2 + v26;
    v69 = sub_1CFE307E4();
    v56 = (v6 + 32);
    v57 = (v6 + 8);
    v60 = *(v17 + 72);
    v61 = (v6 + 48);
    v29 = &qword_1EDC32CB0;
    while (1)
    {
      sub_1CFDA6750(v27, v24, type metadata accessor for TrainingLoadSampleDaySummary);
      v66 = v28;
      v67 = v27;
      sub_1CFDA6750(v28, v21, type metadata accessor for TrainingLoadSampleDaySummary);
      sub_1CFDA7760(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
      if ((sub_1CFE308B4() & 1) == 0)
      {
        break;
      }

      if ((sub_1CFE308B4() & 1) == 0)
      {
        break;
      }

      sub_1CFDA74C8(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
      if ((sub_1CFE308B4() & 1) == 0)
      {
        break;
      }

      v30 = SampleDaySummary[6];
      v31 = &v24[v30];
      v32 = v24[v30 + 8];
      v33 = &v21[v30];
      v34 = v21[v30 + 8];
      if (v32)
      {
        if (!v34)
        {
          break;
        }
      }

      else
      {
        if (*v31 != *v33)
        {
          LOBYTE(v34) = 1;
        }

        if (v34)
        {
          break;
        }
      }

      v35 = SampleDaySummary[7];
      v36 = v24[v35];
      v37 = v21[v35];
      if (v36 == 5)
      {
        if (v37 != 5)
        {
          break;
        }
      }

      else if (v36 != v37)
      {
        break;
      }

      v38 = SampleDaySummary[8];
      v39 = &v21[v38];
      v40 = *(v62 + 48);
      v64 = &v24[v38];
      sub_1CFDB33BC(&v24[v38], v16, v29, sub_1CFDAC3A0);
      sub_1CFDB33BC(v39, &v16[v40], v29, sub_1CFDAC3A0);
      v41 = v29;
      v42 = *v61;
      v43 = v63;
      if ((*v61)(v16, 1, v63) == 1)
      {
        if (v42(&v16[v40], 1, v43) != 1)
        {
          goto LABEL_32;
        }

        sub_1CFDB3564(v16, v29, sub_1CFDAC3A0);
        v44 = v64;
      }

      else
      {
        v59 = v39;
        v45 = v68;
        sub_1CFDB33BC(v16, v68, v29, sub_1CFDAC3A0);
        if (v42(&v16[v40], 1, v43) == 1)
        {
          (*v57)(v45, v43);
LABEL_32:
          sub_1CFDD6C68(v16, &qword_1EDC318D8, &qword_1EDC32CB0, sub_1CFDAC3A0);
          break;
        }

        v46 = v65;
        (*v56)(v65, &v16[v40], v43);
        sub_1CFDD6CC4();
        v58 = sub_1CFE308B4();
        v47 = *v57;
        (*v57)(v46, v43);
        v47(v68, v43);
        sub_1CFDB3564(v16, v41, sub_1CFDAC3A0);
        v29 = v41;
        v39 = v59;
        v44 = v64;
        if ((v58 & 1) == 0)
        {
          break;
        }
      }

      BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
      if ((static TrainingLoadChronicBaseline.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v49 = *(BaselineComparison + 24);
      v50 = &v44[v49];
      v51 = v44[v49 + 8];
      v52 = v39 + v49;
      v53 = *(v52 + 8);
      if ((v51 & 1) == 0)
      {
        if (v53)
        {
          break;
        }

        v53 = *v50 == *v52;
      }

      sub_1CFDD6C08(v21, type metadata accessor for TrainingLoadSampleDaySummary);
      sub_1CFDD6C08(v24, type metadata accessor for TrainingLoadSampleDaySummary);
      if (v53)
      {
        v28 = v66 + v60;
        v27 = v67 + v60;
        if (--v25)
        {
          continue;
        }
      }

      return v53;
    }

    sub_1CFDD6C08(v21, type metadata accessor for TrainingLoadSampleDaySummary);
    sub_1CFDD6C08(v24, type metadata accessor for TrainingLoadSampleDaySummary);
    return 0;
  }

  return 1;
}

uint64_t sub_1CFDD41D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = sub_1CFE30924();
      v7 = v6;
      if (v5 == sub_1CFE30924() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_1CFE310B4();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1CFDD42B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaseline(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v175 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v179 = &v159 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v181 = &v159 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v185 = &v159 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v187 = &v159 - v19;
  v20 = MEMORY[0x1E69E6720];
  sub_1CFDA9784(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline, MEMORY[0x1E69E6720]);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v171 = &v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v159 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v172 = &v159 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v173 = &v159 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v174 = &v159 - v36;
  sub_1CFDD6E38(0, &qword_1EDC31968, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v189 = v37;
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v178 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v180 = &v159 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v182 = &v159 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v186 = &v159 - v49;
  MEMORY[0x1EEE9AC00](v48, v50);
  v188 = &v159 - v51;
  v184 = sub_1CFE30314();
  v52 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184, v53);
  v176 = &v159 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1E6969530];
  sub_1CFDA9784(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v20);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v177 = &v159 - v58;
  sub_1CFDD6E38(0, &qword_1EDC31DF8, &qword_1EDC32C70, v55);
  v60 = v59;
  MEMORY[0x1EEE9AC00](v59, v61);
  v183 = &v159 - v62;
  v190 = type metadata accessor for SleepingSampleDaySummary(0);
  v63 = *(v190 - 1);
  v65 = MEMORY[0x1EEE9AC00](v190, v64);
  v191 = &v159 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65, v67);
  v69 = &v159 - v68;
  v70 = *(a1 + 16);
  if (v70 != *(a2 + 16))
  {
    return 0;
  }

  if (!v70 || a1 == a2)
  {
    return 1;
  }

  v71 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v72 = a1 + v71;
  v73 = a2 + v71;
  v167 = sub_1CFE307E4();
  v165 = (v52 + 48);
  v160 = (v52 + 32);
  v161 = (v52 + 8);
  v168 = (v5 + 48);
  v159 = *(v63 + 72);
  v166 = v60;
  while (1)
  {
    result = sub_1CFDA6750(v72, v69, type metadata accessor for SleepingSampleDaySummary);
    if (!v70)
    {
      break;
    }

    v164 = v72;
    v163 = v70;
    v162 = v73;
    sub_1CFDA6750(v73, v191, type metadata accessor for SleepingSampleDaySummary);
    sub_1CFDA7760(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
    if ((sub_1CFE308B4() & 1) == 0)
    {
      goto LABEL_86;
    }

    if ((sub_1CFE308B4() & 1) == 0)
    {
      goto LABEL_86;
    }

    sub_1CFDA74C8(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    if ((sub_1CFE308B4() & 1) == 0)
    {
      goto LABEL_86;
    }

    v75 = v190[6];
    v76 = *(v166 + 48);
    v77 = MEMORY[0x1E6969530];
    v78 = v183;
    sub_1CFDB33BC(&v69[v75], v183, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    sub_1CFDB33BC(v191 + v75, v78 + v76, &qword_1EDC32C70, v77);
    v79 = *v165;
    v80 = v184;
    if ((*v165)(v78, 1, v184) == 1)
    {
      if (v79(v78 + v76, 1, v80) != 1)
      {
        goto LABEL_81;
      }

      sub_1CFDB3564(v78, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      v81 = v168;
    }

    else
    {
      v82 = v177;
      sub_1CFDB33BC(v78, v177, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      if (v79(v78 + v76, 1, v80) == 1)
      {
        (*v161)(v82, v80);
LABEL_81:
        v155 = &qword_1EDC31DF8;
        v156 = &qword_1EDC32C70;
        v157 = MEMORY[0x1E6969530];
        v158 = v78;
        goto LABEL_85;
      }

      v83 = v78 + v76;
      v84 = v78;
      v85 = v176;
      (*v160)(v176, v83, v80);
      sub_1CFDA7760(&qword_1EDC31998, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v86 = sub_1CFE308B4();
      v87 = *v161;
      (*v161)(v85, v80);
      v87(v82, v80);
      sub_1CFDB3564(v84, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      v81 = v168;
      if ((v86 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v88 = v190[7];
    v89 = &v69[v88];
    v90 = v69[v88 + 8];
    v91 = (v191 + v88);
    v92 = *(v191 + v88 + 8);
    if (v90)
    {
      if (!v92)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (*v89 != *v91)
      {
        LOBYTE(v92) = 1;
      }

      if (v92)
      {
        goto LABEL_86;
      }
    }

    v93 = v190[8];
    v94 = &v69[v93];
    v95 = v191 + v93;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v69[v93], v191 + v93) & 1) == 0)
    {
      goto LABEL_86;
    }

    v96 = type metadata accessor for SleepingSampleBaselineComparison(0);
    if ((static SleepingSampleBaselineAvailability.== infix(_:_:)(&v94[*(v96 + 20)], v95 + *(v96 + 20)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v170 = v96;
    v97 = *(v96 + 24);
    v98 = *(v189 + 48);
    v99 = &v94[v97];
    v100 = v188;
    sub_1CFDB33BC(v99, v188, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v95 + v97, v100 + v98, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v101 = *v81;
    v102 = (*v81)(v100, 1, v4);
    v169 = v101;
    if (v102 == 1)
    {
      if (v101(v100 + v98, 1, v4) != 1)
      {
        goto LABEL_84;
      }

      sub_1CFDB3564(v100, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v103 = v170;
    }

    else
    {
      v104 = v28;
      v28 = v174;
      sub_1CFDB33BC(v100, v174, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v101(v100 + v98, 1, v4) == 1)
      {
        goto LABEL_75;
      }

      v105 = v187;
      sub_1CFDA6564(v100 + v98, v187, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), v105 = v187, (sub_1CFE30694() & 1) == 0) || (sub_1CFE30694() & 1) == 0)
      {
        sub_1CFDD6C08(v105, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v28, type metadata accessor for SleepingSampleBaseline);
        v153 = v188;
        goto LABEL_79;
      }

      v106 = sub_1CFE30694();
      sub_1CFDD6C08(v105, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v28, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v188, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v28 = v104;
      v103 = v170;
      if ((v106 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v107 = v190[9];
    v108 = &v69[v107];
    v109 = v191 + v107;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v69[v107], v191 + v107) & 1) == 0 || (static SleepingSampleBaselineAvailability.== infix(_:_:)(&v108[*(v103 + 5)], v109 + *(v103 + 5)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v110 = *(v103 + 6);
    v111 = *(v189 + 48);
    v112 = &v108[v110];
    v100 = v186;
    sub_1CFDB33BC(v112, v186, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v109 + v110, v100 + v111, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v113 = v169;
    if (v169(v100, 1, v4) == 1)
    {
      if (v113(v100 + v111, 1, v4) != 1)
      {
        goto LABEL_84;
      }

      sub_1CFDB3564(v100, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v114 = v170;
    }

    else
    {
      v115 = v173;
      sub_1CFDB33BC(v100, v173, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v113(v100 + v111, 1, v4) == 1)
      {
        v154 = v115;
        goto LABEL_83;
      }

      v116 = v185;
      sub_1CFDA6564(v100 + v111, v185, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), v116 = v185, (sub_1CFE30694() & 1) == 0) || (sub_1CFE30694() & 1) == 0)
      {
        sub_1CFDD6C08(v116, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v115, type metadata accessor for SleepingSampleBaseline);
        v153 = v186;
        goto LABEL_79;
      }

      v117 = sub_1CFE30694();
      sub_1CFDD6C08(v116, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v115, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v186, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v114 = v170;
      if ((v117 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v118 = v190[10];
    v119 = &v69[v118];
    v120 = v191 + v118;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v69[v118], v191 + v118) & 1) == 0 || (static SleepingSampleBaselineAvailability.== infix(_:_:)(&v119[*(v114 + 5)], v120 + *(v114 + 5)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v121 = *(v114 + 6);
    v122 = *(v189 + 48);
    v123 = &v119[v121];
    v100 = v182;
    sub_1CFDB33BC(v123, v182, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v120 + v121, v100 + v122, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v124 = v169;
    if (v169(v100, 1, v4) == 1)
    {
      if (v124(v100 + v122, 1, v4) != 1)
      {
        goto LABEL_84;
      }

      sub_1CFDB3564(v100, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v125 = v170;
    }

    else
    {
      v126 = v28;
      v28 = v172;
      sub_1CFDB33BC(v100, v172, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v124(v100 + v122, 1, v4) == 1)
      {
        goto LABEL_75;
      }

      v127 = v181;
      sub_1CFDA6564(v100 + v122, v181, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), v127 = v181, (sub_1CFE30694() & 1) == 0) || (sub_1CFE30694() & 1) == 0)
      {
        sub_1CFDD6C08(v127, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v28, type metadata accessor for SleepingSampleBaseline);
        v153 = v182;
        goto LABEL_79;
      }

      v128 = sub_1CFE30694();
      sub_1CFDD6C08(v127, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v28, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v182, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v28 = v126;
      v125 = v170;
      if ((v128 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v129 = v190[11];
    v130 = &v69[v129];
    v131 = v191 + v129;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v69[v129], v191 + v129) & 1) == 0 || (static SleepingSampleBaselineAvailability.== infix(_:_:)(&v130[*(v125 + 5)], v131 + *(v125 + 5)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v132 = *(v125 + 6);
    v133 = *(v189 + 48);
    v134 = &v130[v132];
    v100 = v180;
    sub_1CFDB33BC(v134, v180, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v131 + v132, v100 + v133, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v135 = v169;
    if (v169(v100, 1, v4) == 1)
    {
      if (v135(v100 + v133, 1, v4) != 1)
      {
        goto LABEL_84;
      }

      sub_1CFDB3564(v100, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v136 = v170;
    }

    else
    {
      sub_1CFDB33BC(v100, v28, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v137 = v135(v100 + v133, 1, v4);
      v138 = v179;
      if (v137 == 1)
      {
LABEL_75:
        v154 = v28;
LABEL_83:
        sub_1CFDD6C08(v154, type metadata accessor for SleepingSampleBaseline);
LABEL_84:
        v155 = &qword_1EDC31968;
        v156 = qword_1EDC32C28;
        v157 = type metadata accessor for SleepingSampleBaseline;
        v158 = v100;
LABEL_85:
        sub_1CFDD6C68(v158, v155, v156, v157);
        goto LABEL_86;
      }

      sub_1CFDA6564(v100 + v133, v179, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), v138 = v179, (sub_1CFE30694() & 1) == 0) || (sub_1CFE30694() & 1) == 0)
      {
        sub_1CFDD6C08(v138, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v28, type metadata accessor for SleepingSampleBaseline);
        v153 = v180;
        goto LABEL_79;
      }

      v139 = sub_1CFE30694();
      sub_1CFDD6C08(v138, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v28, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v180, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v136 = v170;
      if ((v139 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v140 = v190[12];
    v141 = &v69[v140];
    v142 = v191 + v140;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v69[v140], v191 + v140) & 1) == 0 || (static SleepingSampleBaselineAvailability.== infix(_:_:)(&v141[*(v136 + 5)], v142 + *(v136 + 5)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v143 = *(v136 + 6);
    v144 = *(v189 + 48);
    v145 = v178;
    sub_1CFDB33BC(&v141[v143], v178, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v142 + v143, v145 + v144, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v146 = v169;
    if (v169(v145, 1, v4) == 1)
    {
      v147 = v146(v145 + v144, 1, v4);
      v148 = v164;
      if (v147 != 1)
      {
        goto LABEL_89;
      }

      sub_1CFDB3564(v145, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v191, type metadata accessor for SleepingSampleDaySummary);
      sub_1CFDD6C08(v69, type metadata accessor for SleepingSampleDaySummary);
    }

    else
    {
      v170 = v28;
      v149 = v171;
      sub_1CFDB33BC(v145, v171, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v146(v145 + v144, 1, v4) == 1)
      {
        sub_1CFDD6C08(v149, type metadata accessor for SleepingSampleBaseline);
LABEL_89:
        v155 = &qword_1EDC31968;
        v156 = qword_1EDC32C28;
        v157 = type metadata accessor for SleepingSampleBaseline;
        v158 = v145;
        goto LABEL_85;
      }

      v150 = v175;
      sub_1CFDA6564(v145 + v144, v175, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      v151 = v150;
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), v151 = v175, sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), (sub_1CFE30694() & 1) == 0) || (sub_1CFE30694() & 1) == 0)
      {
        sub_1CFDD6C08(v151, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v149, type metadata accessor for SleepingSampleBaseline);
        v153 = v178;
LABEL_79:
        sub_1CFDB3564(v153, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
LABEL_86:
        sub_1CFDD6C08(v191, type metadata accessor for SleepingSampleDaySummary);
        sub_1CFDD6C08(v69, type metadata accessor for SleepingSampleDaySummary);
        return 0;
      }

      v152 = sub_1CFE30694();
      sub_1CFDD6C08(v151, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v149, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v178, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v191, type metadata accessor for SleepingSampleDaySummary);
      sub_1CFDD6C08(v69, type metadata accessor for SleepingSampleDaySummary);
      v28 = v170;
      v148 = v164;
      if ((v152 & 1) == 0)
      {
        return 0;
      }
    }

    v73 = v162 + v159;
    v72 = v148 + v159;
    result = 1;
    v70 = v163 - 1;
    if (v163 == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFDD5D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE307E4();
  sub_1CFDA7760(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA74C8(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for GregorianDayRange(0);
  if ((MEMORY[0x1D3875B20](a1 + *(v6 + 20), a2 + *(v6 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_1CFDD42B8(v8, v9);
}

void *SleepingSampleDaySummaryCollection.baselineComparisons.getter()
{
  v21 = type metadata accessor for SleepingSampleDaySummary(0);
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for SleepingSampleDaySummaryCollection(0) + 20));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4818(0, v6, 0);
    v7 = v23;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v20 = *(v1 + 72);
    v19 = xmmword_1CFE33E10;
    do
    {
      v22 = v6;
      sub_1CFDA6750(v8, v4, type metadata accessor for SleepingSampleDaySummary);
      sub_1CFDA9784(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
      v9 = *(type metadata accessor for SleepingSampleBaselineComparison(0) - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v19;
      v13 = v12 + v11;
      v14 = v21;
      sub_1CFDA6750(&v4[*(v21 + 32)], v13, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA6750(&v4[v14[9]], v13 + v10, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA6750(&v4[v14[10]], v13 + 2 * v10, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA6750(&v4[v14[11]], v13 + 3 * v10, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA6750(&v4[v14[12]], v13 + 4 * v10, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDD6C08(v4, type metadata accessor for SleepingSampleDaySummary);
      v23 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1CFDC4818((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 8 * v16 + 32) = v12;
      v8 += v20;
      v6 = v22 - 1;
    }

    while (v22 != 1);
  }

  v17 = sub_1CFDD65EC(v7);

  return v17;
}

uint64_t SleepingSampleDaySummaryCollection.outOfRangeMetricCount.getter()
{
  v1 = type metadata accessor for SleepingSampleDaySummary(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SleepingSampleDaySummaryCollection(0);
  v7 = *(v0 + *(result + 20));
  v8 = *(v7 + 16);
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4838(0, v8, 0);
    v9 = v22;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      v12 = sub_1CFDA6750(v10, v5, type metadata accessor for SleepingSampleDaySummary);
      v13 = SleepingSampleDaySummary.outOfRangeMetricCount.getter(v12);
      result = sub_1CFDD6C08(v5, type metadata accessor for SleepingSampleDaySummary);
      v22 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        result = sub_1CFDC4838((v14 > 1), v15 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v16;
      *(v9 + 8 * v15 + 32) = v13;
      v10 += v11;
      --v8;
    }

    while (v8);
LABEL_8:
    v17 = 0;
    v18 = 32;
    while (1)
    {
      v19 = *(v9 + v18);
      v20 = __OFADD__(v17, v19);
      v17 += v19;
      if (v20)
      {
        break;
      }

      v18 += 8;
      if (!--v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v16 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v16)
  {
    goto LABEL_8;
  }

  v17 = 0;
LABEL_11:

  return v17;
}

uint64_t SleepingSampleDaySummaryCollection.baselineComparisons(for:)(unsigned __int8 *a1)
{
  v3 = type metadata accessor for SleepingSampleDaySummary(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(v1 + *(type metadata accessor for SleepingSampleDaySummaryCollection(0) + 20));
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4858(0, v15, 0);
    v16 = v28;
    v17 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    v26 = (v3 + 44);
    v27 = (v3 + 48);
    v25 = (v3 + 36);
    v23 = (v3 + 40);
    v24 = (v3 + 32);
    do
    {
      sub_1CFDA6750(v17, v7, type metadata accessor for SleepingSampleDaySummary);
      if (v13 <= 1)
      {
        v19 = v24;
        if (v13)
        {
          v19 = v23;
        }
      }

      else
      {
        v19 = v27;
        if (v13 == 3)
        {
          v19 = v26;
        }

        if (v13 == 2)
        {
          v19 = v25;
        }
      }

      sub_1CFDA6750(&v7[*v19], v12, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDD6C08(v7, type metadata accessor for SleepingSampleDaySummary);
      v28 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1CFDC4858((v20 > 1), v21 + 1, 1);
        v16 = v28;
      }

      *(v16 + 16) = v21 + 1;
      sub_1CFDA6564(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for SleepingSampleBaselineComparison);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  return v16;
}

void *sub_1CFDD65EC(uint64_t a1)
{
  sub_1CFDA9784(0, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v53 = &v47 - v8;
  v9 = type metadata accessor for SleepingSampleBaselineComparison(0);
  result = MEMORY[0x1EEE9AC00](v9, v10);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v56 = 0;
  v13 = 0;
  v49 = *(v14 + 80);
  v51 = v14;
  v52 = (v49 + 32) & ~v49;
  v57 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0] + v52;
  v15 = (v14 + 56);
  v50 = v14 + 48;
LABEL_4:
  v18 = *(a1 + 16);
  if (v13 != v18)
  {
    if (v13 < v18)
    {
      while (1)
      {
        v19 = *(a1 + 32 + 8 * v13);

        if (v19)
        {
          break;
        }

LABEL_9:
        ++v13;
        v20 = *(a1 + 16);
        if (v13 == v20)
        {
          goto LABEL_36;
        }

        if (v13 >= v20)
        {
          goto LABEL_41;
        }
      }

      v16 = *(v19 + 16);
      if (!v16)
      {
        (*v15)(v6, 1, 1, v9);
        result = sub_1CFDB3564(v6, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
        goto LABEL_9;
      }

      v17 = 0;
      ++v13;
      while (1)
      {
        v21 = v53;
        if (v17 >= v16)
        {
          goto LABEL_42;
        }

        v22 = v51;
        v23 = *(v51 + 72);
        v58 = v17;
        sub_1CFDA6750(v19 + v52 + v23 * v17, v6, type metadata accessor for SleepingSampleBaselineComparison);
        (*(v22 + 56))(v6, 0, 1, v9);
        sub_1CFDD6DA4(v6, v21);
        if ((*(v22 + 48))(v21, 1, v9) == 1)
        {
          goto LABEL_37;
        }

        result = sub_1CFDA6564(v21, v54, type metadata accessor for SleepingSampleBaselineComparison);
        v25 = v56;
        v24 = v57;
        if (!v56)
        {
          break;
        }

LABEL_34:
        v38 = __OFSUB__(v25, 1);
        v39 = v25 - 1;
        if (v38)
        {
          goto LABEL_43;
        }

        v56 = v39;
        ++v58;
        v40 = v24;
        v41 = v23;
        v42 = v55;
        result = sub_1CFDA6564(v54, v55, type metadata accessor for SleepingSampleBaselineComparison);
        v55 = v42 + v41;
        v57 = v40;
        v16 = *(v19 + 16);
        v17 = v58;
        if (v58 == v16)
        {
          (*v15)(v6, 1, 1, v9);
          result = sub_1CFDB3564(v6, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
          goto LABEL_4;
        }
      }

      v26 = v57[3];
      if (((v26 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_45;
      }

      v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      sub_1CFDA9784(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
      v29 = v52;
      v56 = v28;
      v24 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v24);
      if (!v23)
      {
        goto LABEL_46;
      }

      v30 = result - v29;
      if ((result - v29) == 0x8000000000000000 && v23 == -1)
      {
        goto LABEL_47;
      }

      v32 = v29;
      v33 = v30 / v23;
      v34 = v57;
      v24[2] = v56;
      v24[3] = 2 * (v30 / v23);
      v35 = v24 + v29;
      v36 = *(v34 + 24) >> 1;
      v37 = v36 * v23;
      if (!*(v34 + 16))
      {
LABEL_33:
        v55 = v35 + v37;
        v25 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        goto LABEL_34;
      }

      if (v24 < v34 || v35 >= v34 + v32 + v37)
      {
        v55 = v35;
        v56 = v30 / v23;
        v48 = v36 * v23;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v24 == v57)
        {
LABEL_32:
          v57[2] = 0;
          goto LABEL_33;
        }

        v55 = v35;
        v56 = v30 / v23;
        v48 = v36 * v23;
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v48;
      v35 = v55;
      v33 = v56;
      goto LABEL_32;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_36:
  v21 = v53;
  (*v15)(v53, 1, 1, v9);
LABEL_37:
  v43 = v57;

  result = sub_1CFDB3564(v21, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
  v44 = v43[3];
  if (v44 < 2)
  {
    return v43;
  }

  v45 = v44 >> 1;
  v38 = __OFSUB__(v45, v56);
  v46 = v45 - v56;
  if (!v38)
  {
    v43[2] = v46;
    return v43;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_1CFDD6B54(uint64_t a1)
{
  type metadata accessor for GregorianDayRange(319);
  if (v1 <= 0x3F)
  {
    sub_1CFDA9784(319, &unk_1EDC32530, type metadata accessor for SleepingSampleDaySummary, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFDD6C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDD6C68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDD6E38(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1CFDD6CC4()
{
  result = qword_1EDC318E0;
  if (!qword_1EDC318E0)
  {
    sub_1CFDAC3A0(255);
    sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC318E0);
  }

  return result;
}

uint64_t sub_1CFDD6D54(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA6E64(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDD6DA4(uint64_t a1, uint64_t a2)
{
  sub_1CFDA9784(0, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFDD6E38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFDA9784(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t TrainingLoadBaselineComparison.fractionalBaselineDifferenceFromChronic.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TrainingLoadBaselineComparison(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1CFDD6FF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDD7DEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDD7018(uint64_t a1)
{
  v2 = sub_1CFDB7828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD7054(uint64_t a1)
{
  v2 = sub_1CFDB7828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadBaselineComparison.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1CFDAC3A0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAC088(v2, v13, sub_1CFDAD280);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1CFE31164();
    sub_1CFDD7F1C(&qword_1EC509608, &qword_1EC509610, MEMORY[0x1E69E81B8], MEMORY[0x1E696B380]);
    sub_1CFE30834();
    (*(v6 + 8))(v9, v5);
  }

  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
  TrainingLoadChronicBaseline.hash(into:)(a1);
  v15 = v2 + *(BaselineComparison + 24);
  if (*(v15 + 8) == 1)
  {
    return sub_1CFE31164();
  }

  v17 = *v15;
  sub_1CFE31164();
  if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return MEMORY[0x1D3876830](v18);
}

uint64_t TrainingLoadBaselineComparison.hashValue.getter()
{
  sub_1CFE31144();
  TrainingLoadBaselineComparison.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t TrainingLoadBaselineComparison.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  MEMORY[0x1EEE9AC00](ChronicBaseline, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline(0);
  MEMORY[0x1EEE9AC00](AcuteBaseline, v7);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB77AC(0, &qword_1EDC31A18, MEMORY[0x1E69E6F48]);
  v36 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
  MEMORY[0x1EEE9AC00](BaselineComparison, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7828();
  v37 = v12;
  v17 = v38;
  sub_1CFE31194();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = BaselineComparison;
  v18 = a1;
  v19 = v34;
  v20 = v16;
  v41 = 0;
  sub_1CFDB792C(qword_1EDC31D50, type metadata accessor for TrainingLoadAcuteBaseline, &protocol conformance descriptor for TrainingLoadAcuteBaseline);
  v21 = v35;
  v22 = v36;
  sub_1CFE30FD4();
  v23 = v21;
  v24 = v20;
  sub_1CFDD7BC0(v23, v20, type metadata accessor for TrainingLoadAcuteBaseline);
  v40 = 1;
  sub_1CFDB792C(&qword_1EDC31D48, type metadata accessor for TrainingLoadChronicBaseline, &protocol conformance descriptor for TrainingLoadChronicBaseline);
  sub_1CFE30FD4();
  sub_1CFDD7BC0(v5, v20 + *(v38 + 20), type metadata accessor for TrainingLoadChronicBaseline);
  v39 = 2;
  v25 = v37;
  v26 = sub_1CFE30F84();
  LODWORD(v35) = v27;
  v28 = v26;
  v29 = v20 + *(v38 + 24);
  (*(v19 + 8))(v25, v22);
  *v29 = v28;
  *(v29 + 8) = v35 & 1;
  sub_1CFDAC088(v24, v32, type metadata accessor for TrainingLoadBaselineComparison);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1CFDAC13C(v24, type metadata accessor for TrainingLoadBaselineComparison);
}

uint64_t sub_1CFDD77A8()
{
  sub_1CFE31144();
  TrainingLoadBaselineComparison.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDD77EC(uint64_t a1)
{
  sub_1CFE31144();
  TrainingLoadBaselineComparison.hash(into:)(v2);
  return sub_1CFE31184();
}

uint64_t _s13HealthBalance30TrainingLoadBaselineComparisonV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFDAC3A0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD2CF0(0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 56);
  sub_1CFDAC088(a1, v18, sub_1CFDAD280);
  sub_1CFDAC088(a2, &v18[v19], sub_1CFDAD280);
  v20 = *(v6 + 48);
  if (v20(v18, 1, v5) != 1)
  {
    sub_1CFDAC088(v18, v13, sub_1CFDAD280);
    if (v20(&v18[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v18[v19], v5);
      sub_1CFDD7F1C(&qword_1EDC318E0, &qword_1EDC31878, MEMORY[0x1E69E81C0], MEMORY[0x1E696B388]);
      v21 = sub_1CFE308B4();
      v22 = *(v6 + 8);
      v22(v9, v5);
      v22(v13, v5);
      sub_1CFDAC13C(v18, sub_1CFDAD280);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1CFDAC13C(v18, sub_1CFDD2CF0);
    return 0;
  }

  if (v20(&v18[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1CFDAC13C(v18, sub_1CFDAD280);
LABEL_8:
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
  if (static TrainingLoadChronicBaseline.== infix(_:_:)())
  {
    v24 = *(BaselineComparison + 24);
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = *(a2 + v24 + 8);
    if (v26)
    {
      if (v28)
      {
        return 1;
      }
    }

    else
    {
      if (*v25 != *v27)
      {
        v28 = 1;
      }

      if ((v28 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1CFDD7BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFDD7C98(uint64_t a1)
{
  type metadata accessor for TrainingLoadAcuteBaseline(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TrainingLoadChronicBaseline(319);
    if (v2 <= 0x3F)
    {
      sub_1CFDD7D34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CFDD7D34()
{
  if (!qword_1EDC320E0)
  {
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC320E0);
    }
  }
}

unint64_t sub_1CFDD7D98()
{
  result = qword_1EC509798;
  if (!qword_1EC509798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509798);
  }

  return result;
}

uint64_t sub_1CFDD7DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7361426574756361 && a2 == 0xED0000656E696C65;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4263696E6F726863 && a2 == 0xEF656E696C657361 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001CFE38E40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDD7F1C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAC3A0(255);
    sub_1CFDB792C(a2, sub_1CFDAD5CC, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDD7FAC(uint64_t a1, unsigned __int8 a2)
{
  sub_1CFE30984();
}

uint64_t sub_1CFDD8134(uint64_t a1, unsigned __int8 a2)
{
  sub_1CFE30984();
}

id static HKKeyValueDomain.makeSleepingSampleChangeNotificationStateDomain(for:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1CFE308F4();
  v4 = [v2 initWithCategory:0 domainName:v3 healthStore:a1];

  return v4;
}

uint64_t HKKeyValueDomain.SleepingSampleChangeNotificationStateKey.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1CFE30F54();

  v6 = 10;
  if (v4 < 0xA)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t HKKeyValueDomain.SleepingSampleChangeNotificationStateKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000025;
    if (v1 == 8)
    {
      v7 = 0xD000000000000021;
    }

    else
    {
      v7 = 0xD000000000000022;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001DLL;
    if (v1 != 5)
    {
      v8 = 0xD000000000000021;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x64657A796C616E61;
    v3 = 0xD000000000000019;
    v4 = 0xD000000000000027;
    if (v1 == 3)
    {
      v4 = 0xD000000000000022;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_1CFDD8528()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFDD7FAC(v3, v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDD8578(uint64_t a1)
{
  v2 = *v1;
  sub_1CFE31144();
  sub_1CFDD7FAC(v4, v2);
  return sub_1CFE31184();
}

unint64_t sub_1CFDD85C8@<X0>(unint64_t *a1@<X8>)
{
  result = HKKeyValueDomain.SleepingSampleChangeNotificationStateKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void HKKeyValueDomain.setDismissedByHighlightAlertDate(_:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CFE302D4();
  v4 = sub_1CFE308F4();
  v5 = swift_allocObject();
  *(v5 + 16) = ObjectType;
  v7[4] = sub_1CFDD8A00;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1CFDD8A08;
  v7[3] = &block_descriptor;
  v6 = _Block_copy(v7);

  [v1 setDate:v3 forKey:v4 completion:v6];
  _Block_release(v6);
}

void sub_1CFDD8718(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v3 = sub_1CFE30624();
    __swift_project_value_buffer(v3, qword_1EDC32578);
    oslog = sub_1CFE30604();
    v4 = sub_1CFE30C04();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v25 = v6;
      *v5 = 136446210;
      v7 = sub_1CFE31294();
      v9 = sub_1CFDAAF6C(v7, v8, &v25);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1CFDA3000, oslog, v4, "[%{public}s] Saved dismissal date", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      v10 = v6;
LABEL_16:
      MEMORY[0x1D3876FF0](v10, -1, -1);
      MEMORY[0x1D3876FF0](v5, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v12 = sub_1CFE30624();
    __swift_project_value_buffer(v12, qword_1EDC32578);
    v13 = a2;
    oslog = sub_1CFE30604();
    v14 = sub_1CFE30C04();

    if (os_log_type_enabled(oslog, v14))
    {
      v5 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v5 = 136446466;
      v16 = sub_1CFE31294();
      v18 = sub_1CFDAAF6C(v16, v17, &v25);

      *(v5 + 4) = v18;
      *(v5 + 12) = 2082;
      if (a2)
      {
        v19 = a2;
        sub_1CFDAAF08();
        v20 = sub_1CFE30944();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      v23 = sub_1CFDAAF6C(v20, v22, &v25);

      *(v5 + 14) = v23;
      _os_log_impl(&dword_1CFDA3000, oslog, v14, "[%{public}s] Error saving dismissal date: %{public}s)", v5, 0x16u);
      swift_arrayDestroy();
      v10 = v15;
      goto LABEL_16;
    }
  }
}

void sub_1CFDD8A08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t HKKeyValueDomain.resetValuesForAllKeys()()
{
  v1[18] = v0;
  sub_1CFDD8ED0(0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFDD8B40, 0, 0);
}

uint64_t sub_1CFDD8B40()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v1[18];
  v1[2] = v2;
  v1[3] = sub_1CFDD8CE8;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1CFDAAF08();
  sub_1CFE30B04();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1CFDD8FA0;
  v1[13] = &block_descriptor_4;
  [v8 setValueForAllKeys:0 completion:v4];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1CFDD8CE8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1CFDD8E5C;
  }

  else
  {
    v2 = sub_1CFDD8DF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFDD8DF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFDD8E5C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_1CFDD8ED0(uint64_t a1)
{
  if (!qword_1EC5097A0)
  {
    sub_1CFDAAF08();
    v1 = sub_1CFE30B34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC5097A0);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1CFDD8FA0(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1CFDD8ED0(0);
    sub_1CFE30B24();
  }

  else if (a3)
  {
    sub_1CFDD8ED0(0);
    v5 = a3;
    sub_1CFE30B14();
  }

  else
  {
    __break(1u);
  }
}

id static HKKeyValueDomain.makeSyncedUnprotectedApplicationStateDomain(for:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v3 = sub_1CFE308F4();
  v4 = [v2 initWithCategory:4 domainName:v3 healthStore:a1];

  return v4;
}

unint64_t sub_1CFDD90CC()
{
  result = qword_1EC5097A8;
  if (!qword_1EC5097A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097A8);
  }

  return result;
}

unint64_t sub_1CFDD9124()
{
  result = qword_1EC5097B0;
  if (!qword_1EC5097B0)
  {
    sub_1CFDD917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097B0);
  }

  return result;
}

void sub_1CFDD917C()
{
  if (!qword_1EC5097B8)
  {
    v0 = sub_1CFE30AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5097B8);
    }
  }
}

uint64_t SleepingSampleAggregate.quantity.getter()
{
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFDB343C(v0 + *(v5 + 24), v4, sub_1CFDAD280);
  sub_1CFDAC3A0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v4, 1, v6) == 1)
  {
    sub_1CFDB35D4(v4, sub_1CFDAD280);
    return 0;
  }

  else
  {
    v10 = sub_1CFE30684();
    (*(v8 + 8))(v4, v7);
    return v10;
  }
}

uint64_t sub_1CFDD9344(uint64_t a1)
{
  v2 = sub_1CFDB2C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD9380(uint64_t a1)
{
  v2 = sub_1CFDB2C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD93BC(uint64_t a1)
{
  v2 = sub_1CFDAE450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD93F8(uint64_t a1)
{
  v2 = sub_1CFDAE450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD9434(uint64_t a1)
{
  v2 = sub_1CFDB2D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD9470(uint64_t a1)
{
  v2 = sub_1CFDB2D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD94AC(uint64_t a1)
{
  v2 = sub_1CFDB2E6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD94E8(uint64_t a1)
{
  v2 = sub_1CFDB2E6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD9524(uint64_t a1)
{
  v2 = sub_1CFDB2F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD9560(uint64_t a1)
{
  v2 = sub_1CFDB2F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD959C(uint64_t a1)
{
  v2 = sub_1CFDAE4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD95D8(uint64_t a1)
{
  v2 = sub_1CFDAE4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleAggregate.Availability.hashValue.getter()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t SleepingSampleAggregate.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepingSampleAggregate.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepingSampleAggregate(0) + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepingSampleAggregate.availability.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SleepingSampleAggregate(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SleepingSampleAggregate.sampleEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1CFDB2328(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFDB343C(v1 + *(v7 + 28), v6, sub_1CFDB2328);
  v8 = sub_1CFE30014();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1CFDB35D4(v6, sub_1CFDB2328);
    v10 = 1;
  }

  else
  {
    sub_1CFE2FFD4();
    (*(v9 + 8))(v6, v8);
    v10 = 0;
  }

  v11 = sub_1CFE30314();
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t SleepingSampleAggregate.init(morningIndex:gregorianCalendar:quantity:sampleDateInterval:latestSampleCreationDate:availability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a4;
  v30 = a5;
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a6;
  v16 = sub_1CFE307E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v27 = a1;
  v18(a7, a1, v16);
  v19 = type metadata accessor for SleepingSampleAggregate(0);
  v20 = v19[5];
  v21 = sub_1CFE304B4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a7 + v20, a2, v21);
  if (a3)
  {
    sub_1CFDAD5CC();
    v23 = a3;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
    (*(v22 + 8))(a2, v21);
    (*(v17 + 8))(v27, v16);
  }

  else
  {
    (*(v22 + 8))(a2, v21);
    (*(v17 + 8))(v27, v16);
    sub_1CFDAC3A0(0);
    (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  }

  sub_1CFDAD564(v15, a7 + v19[6], sub_1CFDAD280);
  sub_1CFDAD564(v29, a7 + v19[7], sub_1CFDB2328);
  result = sub_1CFDAD564(v30, a7 + v19[8], sub_1CFDA9D60);
  *(a7 + v19[9]) = v28;
  return result;
}

uint64_t sub_1CFDD9CB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDDBA74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDD9CE4(uint64_t a1)
{
  v2 = sub_1CFDAF700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD9D20(uint64_t a1)
{
  v2 = sub_1CFDAF700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleAggregate.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CFE30314();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30014();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB2328(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAC3A0(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307E4();
  sub_1CFDADC34(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v26 = type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFE304B4();
  sub_1CFDADC34(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  sub_1CFDB343C(v1 + v26[6], v25, sub_1CFDAD280);
  if ((*(v18 + 48))(v25, 1, v17) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v18 + 32))(v21, v25, v17);
    sub_1CFE31164();
    sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78, MEMORY[0x1E696B380]);
    sub_1CFE30834();
    (*(v18 + 8))(v21, v17);
  }

  sub_1CFDB343C(v1 + v26[7], v15, sub_1CFDB2328);
  v28 = v39;
  v27 = v40;
  v29 = (*(v39 + 48))(v15, 1, v40);
  v31 = v42;
  v30 = v43;
  if (v29 == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v32 = v37;
    (*(v28 + 32))(v37, v15, v27);
    sub_1CFE31164();
    sub_1CFDADC34(&qword_1EC509648, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
    sub_1CFE30834();
    (*(v28 + 8))(v32, v27);
  }

  v33 = v41;
  sub_1CFDB343C(v2 + v26[8], v41, sub_1CFDA9D60);
  if ((*(v31 + 48))(v33, 1, v30) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v34 = v38;
    (*(v31 + 32))(v38, v33, v30);
    sub_1CFE31164();
    sub_1CFDADC34(&qword_1EC509650, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1CFE30834();
    (*(v31 + 8))(v34, v30);
  }

  return MEMORY[0x1D3876810](*(v2 + v26[9]));
}

uint64_t SleepingSampleAggregate.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleAggregate.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDDA3B0()
{
  sub_1CFE31144();
  SleepingSampleAggregate.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDDA3F4(uint64_t a1)
{
  sub_1CFE31144();
  SleepingSampleAggregate.hash(into:)(v2);
  return sub_1CFE31184();
}

uint64_t SleepingSampleAggregate.description.getter()
{
  v1 = v0;
  v2 = sub_1CFE30314();
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v72 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v73 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30284();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1CFE302B4();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v11);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDDB714(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v65 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB2328(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CFE304E4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_1CFE30DB4();
  MEMORY[0x1D3876060](0xD000000000000017, 0x80000001CFE34200);
  MEMORY[0x1D3876060](0x676E696E726F6D28, 0xEF203A7865646E49);
  v76 = sub_1CFE307A4();
  v29 = sub_1CFE31074();
  MEMORY[0x1D3876060](v29);

  MEMORY[0x1D3876060](0xD000000000000015, 0x80000001CFE38F20);
  v30 = type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFE30494();
  v31 = sub_1CFE304D4();
  v33 = v32;
  (*(v25 + 8))(v28, v24);
  MEMORY[0x1D3876060](v31, v33);

  MEMORY[0x1D3876060](0x69746E617571202CLL, 0xEC000000203A7974);
  sub_1CFDB343C(v0 + v30[6], v23, sub_1CFDAD280);
  sub_1CFDAC3A0(0);
  v35 = v34;
  v36 = *(v34 - 8);
  if ((*(v36 + 48))(v23, 1, v34) == 1)
  {
    sub_1CFDB35D4(v23, sub_1CFDAD280);
    v37 = 0xE300000000000000;
    v38 = 7104878;
  }

  else
  {
    v39 = sub_1CFE30684();
    (*(v36 + 8))(v23, v35);
    v40 = sub_1CFE2D980();
    v42 = v41;

    v76 = v40;
    v77 = v42;
    v38 = sub_1CFE30944();
    v37 = v43;
  }

  MEMORY[0x1D3876060](v38, v37);

  MEMORY[0x1D3876060](0xD000000000000016, 0x80000001CFE38F40);
  sub_1CFDB343C(v1 + v30[7], v19, sub_1CFDB2328);
  v44 = sub_1CFE30014();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 48))(v19, 1, v44);
  v48 = v74;
  v47 = v75;
  if (v46 == 1)
  {
    sub_1CFDB35D4(v19, sub_1CFDB2328);
    v49 = 0xE300000000000000;
    v50 = 7104878;
  }

  else
  {
    v51 = v65;
    DateInterval.range.getter(v65);
    (*(v45 + 8))(v19, v44);
    v52 = v66;
    sub_1CFE30264();
    v53 = v68;
    sub_1CFE30274();
    v54 = sub_1CFE30BD4();
    v56 = v55;
    (*(v70 + 8))(v53, v71);
    (*(v67 + 8))(v52, v69);
    sub_1CFDB35D4(v51, sub_1CFDDB714);
    v76 = v54;
    v77 = v56;
    v50 = sub_1CFE30944();
    v49 = v57;
  }

  MEMORY[0x1D3876060](v50, v49);

  MEMORY[0x1D3876060](8236, 0xE200000000000000);
  v58 = v73;
  sub_1CFDB343C(v1 + v30[8], v73, sub_1CFDA9D60);
  v59 = 0xE000000000000000;
  if ((*(v48 + 48))(v58, 1, v47) == 1)
  {
    v60 = 0;
  }

  else
  {
    v61 = v72;
    (*(v48 + 32))(v72, v58, v47);
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1CFE30DB4();

    v76 = 0xD00000000000001ALL;
    v77 = 0x80000001CFE38F60;
    sub_1CFDADC34(&qword_1EC5097C8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v62 = sub_1CFE31074();
    MEMORY[0x1D3876060](v62);

    MEMORY[0x1D3876060](8236, 0xE200000000000000);
    v60 = v76;
    v59 = v77;
    (*(v48 + 8))(v61, v47);
  }

  MEMORY[0x1D3876060](v60, v59);

  MEMORY[0x1D3876060](0x6962616C69617661, 0xEE00203A7974696CLL);
  LOBYTE(v76) = *(v1 + v30[9]);
  sub_1CFE30EB4();
  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return v78;
}

BOOL _s13HealthBalance23SleepingSampleAggregateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v90 = sub_1CFE30314();
  v84 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v4);
  v81 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v88 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA887C(0);
  v83 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v89 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFE30014();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v82 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB2328(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v91 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDDBC88(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v85 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAC3A0(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD2CF0(0);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307E4();
  sub_1CFDADC34(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v37 = type metadata accessor for SleepingSampleAggregate(0);
  if ((MEMORY[0x1D3875B20](a1 + *(v37 + 20), a2 + *(v37 + 20)) & 1) == 0)
  {
    return 0;
  }

  v38 = a1;
  v39 = a2;
  v80 = v37;
  v40 = *(v37 + 24);
  v41 = *(v33 + 48);
  v78 = v38;
  sub_1CFDB343C(v38 + v40, v36, sub_1CFDAD280);
  v79 = v39;
  sub_1CFDB343C(v39 + v40, &v36[v41], sub_1CFDAD280);
  v42 = *(v24 + 48);
  if (v42(v36, 1, v23) == 1)
  {
    v43 = v42(&v36[v41], 1, v23);
    v44 = v91;
    if (v43 == 1)
    {
      sub_1CFDB35D4(v36, sub_1CFDAD280);
      goto LABEL_10;
    }

LABEL_8:
    v46 = sub_1CFDD2CF0;
    v47 = v36;
LABEL_23:
    sub_1CFDB35D4(v47, v46);
    return 0;
  }

  sub_1CFDB343C(v36, v31, sub_1CFDAD280);
  v45 = v42(&v36[v41], 1, v23);
  v44 = v91;
  if (v45 == 1)
  {
    (*(v24 + 8))(v31, v23);
    goto LABEL_8;
  }

  (*(v24 + 32))(v27, &v36[v41], v23);
  sub_1CFDD2D54(&qword_1EDC318E0, sub_1CFDD2DC0, MEMORY[0x1E696B388]);
  v48 = sub_1CFE308B4();
  v49 = *(v24 + 8);
  v49(v27, v23);
  v49(v31, v23);
  sub_1CFDB35D4(v36, sub_1CFDAD280);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v50 = v80[7];
  v51 = *(v19 + 48);
  v52 = v78;
  v53 = v85;
  sub_1CFDB343C(v78 + v50, v85, sub_1CFDB2328);
  v54 = v79;
  sub_1CFDB343C(v79 + v50, v53 + v51, sub_1CFDB2328);
  v56 = v86;
  v55 = v87;
  v57 = *(v86 + 48);
  if (v57(v53, 1, v87) != 1)
  {
    sub_1CFDB343C(v53, v44, sub_1CFDB2328);
    v63 = v57(v53 + v51, 1, v55);
    v59 = v53;
    v61 = v89;
    v60 = v90;
    v64 = v88;
    if (v63 != 1)
    {
      v65 = v44;
      v66 = v82;
      (*(v56 + 32))(v82, v59 + v51, v55);
      sub_1CFDADC34(&qword_1EDC319B0, MEMORY[0x1E6968130], MEMORY[0x1E6968148]);
      v67 = sub_1CFE308B4();
      v68 = *(v56 + 8);
      v68(v66, v55);
      v69 = v65;
      v52 = v78;
      v68(v69, v55);
      sub_1CFDB35D4(v59, sub_1CFDB2328);
      v62 = v64;
      v54 = v79;
      if ((v67 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v56 + 8))(v44, v55);
    goto LABEL_15;
  }

  v58 = v57(v53 + v51, 1, v55);
  v59 = v53;
  v61 = v89;
  v60 = v90;
  v62 = v88;
  if (v58 != 1)
  {
LABEL_15:
    v46 = sub_1CFDDBC88;
    v47 = v59;
    goto LABEL_23;
  }

  sub_1CFDB35D4(v59, sub_1CFDB2328);
LABEL_17:
  v70 = v80[8];
  v71 = *(v83 + 48);
  sub_1CFDB343C(v52 + v70, v61, sub_1CFDA9D60);
  sub_1CFDB343C(v54 + v70, v61 + v71, sub_1CFDA9D60);
  v72 = *(v84 + 48);
  if (v72(v61, 1, v60) == 1)
  {
    if (v72(v61 + v71, 1, v60) == 1)
    {
      sub_1CFDB35D4(v61, sub_1CFDA9D60);
      return *(v52 + v80[9]) == *(v54 + v80[9]);
    }

    goto LABEL_22;
  }

  sub_1CFDB343C(v61, v62, sub_1CFDA9D60);
  if (v72(v61 + v71, 1, v60) == 1)
  {
    (*(v84 + 8))(v62, v60);
LABEL_22:
    v46 = sub_1CFDA887C;
    v47 = v61;
    goto LABEL_23;
  }

  v74 = v84;
  v75 = v81;
  (*(v84 + 32))(v81, v61 + v71, v60);
  sub_1CFDADC34(&qword_1EDC31998, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v76 = sub_1CFE308B4();
  v77 = *(v74 + 8);
  v77(v75, v60);
  v77(v62, v60);
  sub_1CFDB35D4(v61, sub_1CFDA9D60);
  if (v76)
  {
    return *(v52 + v80[9]) == *(v54 + v80[9]);
  }

  return 0;
}

void sub_1CFDDB714(uint64_t a1)
{
  if (!qword_1EC5097C0)
  {
    sub_1CFE30314();
    sub_1CFDADC34(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1CFE30BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC5097C0);
    }
  }
}

unint64_t sub_1CFDDB7AC()
{
  result = qword_1EC5097D0;
  if (!qword_1EC5097D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097D0);
  }

  return result;
}

void sub_1CFDDB870(uint64_t a1)
{
  sub_1CFE307E4();
  if (v1 <= 0x3F)
  {
    sub_1CFE304B4();
    if (v2 <= 0x3F)
    {
      sub_1CFDAD280(319);
      if (v3 <= 0x3F)
      {
        sub_1CFDB2328(319);
        if (v4 <= 0x3F)
        {
          sub_1CFDA9D60(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1CFDDB9C8()
{
  result = qword_1EC5097E0;
  if (!qword_1EC5097E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097E0);
  }

  return result;
}

unint64_t sub_1CFDDBA20()
{
  result = qword_1EC5097E8;
  if (!qword_1EC5097E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097E8);
  }

  return result;
}

uint64_t sub_1CFDDBA74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49676E696E726F6DLL && a2 == 0xEC0000007865646ELL;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFE38FC0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xEF72657070617257 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFE38FE0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFE39000 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

BOOL sub_1CFDDBE5C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1CFDDBE8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1CFDDBEB8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t SleepingSampleDaySummaryDescription.outlierCount.getter()
{
  v1 = *v0;
  v2 = ((*v0 >> 6) & 1) + ((*v0 >> 5) & 1);
  if ((*v0 & 0x180) != 0)
  {
    ++v2;
  }

  if ((v1 & 0x18) != 0)
  {
    ++v2;
  }

  if ((v1 & 6) != 0)
  {
    return v2 + 1;
  }

  else
  {
    return v2;
  }
}

uint64_t static SleepingSampleDaySummaryDescription.makeDescription(for:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v26 - v10;
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_2:
  v29 = v14;
  v28 = v12;
  if (v13 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = v13;
  }

  do
  {
    if (v15 == v13)
    {
      __break(1u);
      return result;
    }

    v16 = byte_1F4C8A1B0[v13 + 32];
    v17 = type metadata accessor for SleepingSampleDaySummary(0);
    sub_1CFDDC2EC(a1 + *(v17 + *&asc_1CFE34C98[8 * v16]), v11);
    sub_1CFDDC2EC(v11, v7);
    SleepingSampleBaselineComparison.relativeComparison.getter();
    if (v18)
    {
      sub_1CFDDC350(v7);
      result = sub_1CFDDC350(v11);
    }

    else
    {
      v19 = v16;
      if (HKCompareDoubles() == -1)
      {
        sub_1CFDDC350(v7);
        result = sub_1CFDDC350(v11);
        if (v16 <= 1u)
        {
          if (v16)
          {
            v22 = v29 | 0x10;
          }

          else
          {
            v22 = v29 | 4;
          }

          v29 = v22;
        }

        else if (v16 == 2)
        {
          v29 |= 0x20uLL;
        }

        else if (v16 != 3)
        {
          v29 |= 0x100uLL;
        }
      }

      else
      {
        v20 = HKCompareDoubles();
        sub_1CFDDC350(v7);
        result = sub_1CFDDC350(v11);
        if (v20 != 1)
        {
          v12 = 1;
          v23 = v13++ == 4;
          v14 = v29;
          if (!v23)
          {
            goto LABEL_2;
          }

          goto LABEL_33;
        }

        if (v19 <= 1)
        {
          if (v19)
          {
            v21 = v29 | 8;
          }

          else
          {
            v21 = v29 | 2;
          }

          v29 = v21;
        }

        else if (v19 != 2)
        {
          if (v19 == 3)
          {
            v29 |= 0x40uLL;
          }

          else
          {
            v29 |= 0x80uLL;
          }
        }
      }
    }

    ++v13;
  }

  while (v13 != 5);
  v14 = v29;
  if ((v28 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  if (v14 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v14;
  }

  result = SleepingSampleDaySummary.hasAnyBaselinesInRefinement.getter();
  if (result)
  {
    v14 = v24 | 0x200;
  }

  else
  {
    v14 = v24;
  }

LABEL_39:
  v25 = a1 + *(v17 + 28);
  if ((*(v25 + 8) & 1) == 0)
  {
    v14 |= (*v25 & 7) << 10;
  }

  *v27 = v14;
  return result;
}

uint64_t sub_1CFDDC2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineComparison(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDDC350(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleBaselineComparison(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDDC3AC(char a1)
{
  v3 = *v1;
  if ((*v1 & 0x40) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = sub_1CFDDD778(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1CFDDD778((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0xD000000000000016;
  *(v7 + 5) = 0x80000001CFE391B0;
  if ((v3 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1CFDDD778((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 0xD000000000000018;
    *(v10 + 5) = 0x80000001CFE39190;
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1CFDDD778((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = 0xD000000000000017;
    *(v13 + 5) = 0x80000001CFE39170;
    if ((v3 & 8) == 0)
    {
LABEL_14:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_1CFDDD778((v14 > 1), v15 + 1, 1, v4);
  }

  *(v4 + 2) = v15 + 1;
  v16 = &v4[16 * v15];
  *(v16 + 4) = 0xD000000000000015;
  *(v16 + 5) = 0x80000001CFE39150;
  if ((v3 & 0x10) == 0)
  {
LABEL_15:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = sub_1CFDDD778((v17 > 1), v18 + 1, 1, v4);
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[16 * v18];
  *(v19 + 4) = 0xD000000000000014;
  *(v19 + 5) = 0x80000001CFE39130;
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_1CFDDD778((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  v22 = &v4[16 * v21];
  *(v22 + 4) = 0xD000000000000010;
  *(v22 + 5) = 0x80000001CFE39110;
  if ((v3 & 0x80) == 0)
  {
LABEL_17:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_18;
    }

LABEL_45:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v27 = *(v4 + 2);
    v26 = *(v4 + 3);
    if (v27 >= v26 >> 1)
    {
      v4 = sub_1CFDDD778((v26 > 1), v27 + 1, 1, v4);
    }

    *(v4 + 2) = v27 + 1;
    v28 = &v4[16 * v27];
    *(v28 + 4) = 0x4C53415F454D4954;
    *(v28 + 5) = 0xEF574F4C5F504545;
    if ((a1 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_50;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v24 = *(v4 + 2);
  v23 = *(v4 + 3);
  if (v24 >= v23 >> 1)
  {
    v4 = sub_1CFDDD778((v23 > 1), v24 + 1, 1, v4);
  }

  *(v4 + 2) = v24 + 1;
  v25 = &v4[16 * v24];
  *(v25 + 4) = 0xD000000000000010;
  *(v25 + 5) = 0x80000001CFE390F0;
  if ((v3 & 0x100) != 0)
  {
    goto LABEL_45;
  }

LABEL_18:
  if ((a1 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_50:
  if ((v3 & 0x400) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v30 = *(v4 + 2);
    v29 = *(v4 + 3);
    if (v30 >= v29 >> 1)
    {
      v4 = sub_1CFDDD778((v29 > 1), v30 + 1, 1, v4);
    }

    *(v4 + 2) = v30 + 1;
    v31 = &v4[16 * v30];
    *(v31 + 4) = 0x41555254534E454DLL;
    *(v31 + 5) = 0xEF454C4359435F4CLL;
    if ((v3 & 0x800) == 0)
    {
LABEL_52:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_64;
    }
  }

  else if ((v3 & 0x800) == 0)
  {
    goto LABEL_52;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v33 = *(v4 + 2);
  v32 = *(v4 + 3);
  if (v33 >= v32 >> 1)
  {
    v4 = sub_1CFDDD778((v32 > 1), v33 + 1, 1, v4);
  }

  *(v4 + 2) = v33 + 1;
  v34 = &v4[16 * v33];
  *(v34 + 4) = 0xD000000000000012;
  *(v34 + 5) = 0x80000001CFE390D0;
  if ((v3 & 0x1000) != 0)
  {
LABEL_64:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v36 = *(v4 + 2);
    v35 = *(v4 + 3);
    if (v36 >= v35 >> 1)
    {
      v4 = sub_1CFDDD778((v35 > 1), v36 + 1, 1, v4);
    }

    *(v4 + 2) = v36 + 1;
    v37 = &v4[16 * v36];
    strcpy(v37 + 32, "ELEVATION_GAIN");
    v37[47] = -18;
  }

LABEL_69:
  sub_1CFDDE068(0, &qword_1EC509830, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1CFDDDFEC();
  v38 = sub_1CFE30844();

  return v38;
}

uint64_t SleepingSampleDaySummaryDescription.primaryBodyKey.getter()
{
  strcpy(v2, "PRIMARY_BODY_");
  v0 = sub_1CFDDC3AC(0);
  MEMORY[0x1D3876060](v0);

  return v2[0];
}

unint64_t SleepingSampleDaySummaryDescription.secondaryCauseKey.getter()
{
  sub_1CFE30DB4();

  v0 = sub_1CFDDC3AC(1);
  MEMORY[0x1D3876060](v0);

  return 0xD000000000000010;
}

uint64_t SleepingSampleDaySummaryDescription.primaryBody.getter()
{
  v1 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1CFE308D4();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v18 - v10;
  if (!*v0)
  {
    return 0;
  }

  v12 = *v0 & 0xFFFFFFFFFFFFFDFFLL;
  if (v12 > 1)
  {
    strcpy(v19, "PRIMARY_BODY_");
    v19[7] = -4864;
    v18[1] = v12;
    v16 = sub_1CFDDC3AC(0);
    MEMORY[0x1D3876060](v16);

    sub_1CFE308E4();
  }

  else
  {
    sub_1CFE308C4();
  }

  (*(v4 + 16))(v8, v11, v3);
  v13 = sub_1CFE308F4();
  v14 = [objc_opt_self() bundleWithIdentifier_];

  sub_1CFE303E4();
  v15 = sub_1CFE30934();
  (*(v4 + 8))(v11, v3);
  return v15;
}

uint64_t SleepingSampleDaySummaryDescription.secondaryCause.getter()
{
  v1 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1CFE308D4();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v21 - v11;
  v13 = *v0;
  if (*v0)
  {
    if ((v13 & 6) != 0 && (v13 & 0x18) != 0 && (v13 & 0x180) != 0 && (*v0 & 0x60) == 0x60)
    {
      v14 = v13 & 0xFFFFFFFFFFFFFDFFLL;
      if ((v13 & 0xFFFFFFFFFFFFFDFFLL) >= 2)
      {
LABEL_7:
        v22 = 0;
        v23 = 0xE000000000000000;
        v15 = v10;
        sub_1CFE30DB4();

        v22 = 0xD000000000000010;
        v23 = 0x80000001CFE39020;
        v21[1] = v14;
        v16 = sub_1CFDDC3AC(1);
        MEMORY[0x1D3876060](v16);

        sub_1CFE308E4();
        (*(v4 + 16))(v8, v12, v15);
        v17 = sub_1CFE308F4();
        v18 = [objc_opt_self() bundleWithIdentifier_];

        sub_1CFE303E4();
        v19 = sub_1CFE30934();
        (*(v4 + 8))(v12, v15);
        return v19;
      }
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFC7FLL;
      if ((v13 & 0xFFFFFFFFFFFFFC7FLL) >= 2)
      {
        goto LABEL_7;
      }
    }
  }

  return 0;
}

uint64_t SleepingSampleDaySummaryDescription.quaternaryRefinementDisclaimer.getter()
{
  v1 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1CFE308D4();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-v10];
  result = 0;
  if ((*(v0 + 1) & 2) != 0)
  {
    sub_1CFE308C4();
    (*(v4 + 16))(v8, v11, v3);
    v13 = sub_1CFE308F4();
    v14 = [objc_opt_self() bundleWithIdentifier_];

    sub_1CFE303E4();
    v15 = sub_1CFE30934();
    (*(v4 + 8))(v11, v3);
    return v15;
  }

  return result;
}

char *sub_1CFDDD320(uint64_t (*a1)(void))
{
  v1 = a1();
  v10[0] = v1;
  v10[1] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;

    v5 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1CFDDD778(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1CFDDD778((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v3;
    *(v8 + 5) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1CFDDD89C(v10);
  return v5;
}

char *sub_1CFDDD440(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDDE068(0, &qword_1EC509848, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFDDD598(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1CFDDE0B8(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1CFDDD778(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDDE068(0, &qword_1EC509528, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1CFDDD89C(uint64_t a1)
{
  sub_1CFDDE068(0, &qword_1EC5097F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFDDD920()
{
  result = qword_1EC5097F8;
  if (!qword_1EC5097F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097F8);
  }

  return result;
}

unint64_t sub_1CFDDD978()
{
  result = qword_1EC509800;
  if (!qword_1EC509800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509800);
  }

  return result;
}

unint64_t sub_1CFDDD9CC()
{
  result = qword_1EC509808;
  if (!qword_1EC509808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509808);
  }

  return result;
}

unint64_t sub_1CFDDDA24()
{
  result = qword_1EC509810;
  if (!qword_1EC509810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleDaySummary.OutlierContext(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SleepingSampleDaySummary.OutlierContext(uint64_t result, int a2, int a3)
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

char *sub_1CFDDDADC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDDE068(0, &qword_1EDC31718, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue, MEMORY[0x1E69E6F90]);
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

char *sub_1CFDDDBE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDDE068(0, &unk_1EDC324C0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFDDDD20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDDE0B8(0, &qword_1EC509820, sub_1CFDDDF94);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1CFDDDE68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFDDE068(0, &qword_1EC509818, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1CFDDDF94()
{
  if (!qword_1EC509828)
  {
    v0 = sub_1CFE30BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509828);
    }
  }
}

unint64_t sub_1CFDDDFEC()
{
  result = qword_1EC509838;
  if (!qword_1EC509838)
  {
    sub_1CFDDE068(255, &qword_1EC509830, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509838);
  }

  return result;
}

void sub_1CFDDE068(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CFDDE0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE31084();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static SleepingSampleDaySummary.relativeComparisons(on:heart:spO2:rr:wtr:asleep:calendar:hasBaseline:)@<X0>(id a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, int a3@<W2>, double a4@<X3>, int a5@<W4>, void (*a6)(char *, void, uint64_t)@<X5>, int a7@<W6>, double a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, double a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14)
{
  v813 = a8;
  LODWORD(v836) = a7;
  v811 = a6;
  LODWORD(v832) = a5;
  v807 = a4;
  LODWORD(v872) = a3;
  v803 = a2;
  v847 = a9;
  v883 = type metadata accessor for SleepingSampleBaseline(0);
  v882 = *(v883 - 8);
  v16 = MEMORY[0x1EEE9AC00](v883, v15);
  v792 = &v784 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v791 = &v784 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v789 = &v784 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v788 = &v784 - v26;
  MEMORY[0x1EEE9AC00](v25, v27);
  v787 = &v784 - v28;
  sub_1CFDB17D0(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v799 = &v784 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v818 = &v784 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v797 = &v784 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v817 = &v784 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v795 = &v784 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v812 = &v784 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v794 = &v784 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v809 = (&v784 - v53);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v862 = &v784 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v793 = &v784 - v59;
  MEMORY[0x1EEE9AC00](v58, v60);
  v805 = (&v784 - v61);
  v879 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v63 = MEMORY[0x1EEE9AC00](v879, v62);
  v823 = &v784 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v63, v65);
  v822 = &v784 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66, v68);
  v821 = &v784 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v820 = &v784 - v73;
  MEMORY[0x1EEE9AC00](v72, v74);
  v819 = &v784 - v75;
  v870 = sub_1CFE30434();
  v876 = *(v870 - 8);
  MEMORY[0x1EEE9AC00](v870, v76);
  v78 = &v784 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v869 = sub_1CFE30444();
  v875 = *(v869 - 8);
  MEMORY[0x1EEE9AC00](v869, v79);
  v868 = &v784 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1CFE30424();
  v893 = *(v81 - 8);
  v894 = v81;
  MEMORY[0x1EEE9AC00](v81, v82);
  v878 = &v784 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB17D0(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v84 - 8, v85);
  v866 = &v784 - v86;
  sub_1CFDB17D0(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v87 - 8, v88);
  v865 = &v784 - v89;
  v867 = sub_1CFE30134();
  v874 = *(v867 - 8);
  MEMORY[0x1EEE9AC00](v867, v90);
  v889 = &v784 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v895 = sub_1CFE30314();
  v877 = *(v895 - 8);
  v93 = MEMORY[0x1EEE9AC00](v895, v92);
  v798 = &v784 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1EEE9AC00](v93, v95);
  v790 = &v784 - v97;
  v99 = MEMORY[0x1EEE9AC00](v96, v98);
  v814 = &v784 - v100;
  v102 = MEMORY[0x1EEE9AC00](v99, v101);
  v848 = &v784 - v103;
  MEMORY[0x1EEE9AC00](v102, v104);
  v888 = &v784 - v105;
  sub_1CFDB17D0(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v108 = MEMORY[0x1EEE9AC00](v106 - 8, v107);
  v849 = &v784 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x1EEE9AC00](v108, v110);
  v815 = &v784 - v112;
  v114 = MEMORY[0x1EEE9AC00](v111, v113);
  v810 = &v784 - v115;
  v117 = MEMORY[0x1EEE9AC00](v114, v116);
  v806 = &v784 - v118;
  MEMORY[0x1EEE9AC00](v117, v119);
  v829 = &v784 - v120;
  v901 = sub_1CFE304B4();
  v897 = *(v901 - 8);
  v122 = MEMORY[0x1EEE9AC00](v901, v121);
  v844 = &v784 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = MEMORY[0x1EEE9AC00](v122, v124);
  v840 = &v784 - v126;
  v128 = MEMORY[0x1EEE9AC00](v125, v127);
  v835 = &v784 - v129;
  v131 = MEMORY[0x1EEE9AC00](v128, v130);
  v831 = &v784 - v132;
  MEMORY[0x1EEE9AC00](v131, v133);
  v828 = &v784 - v134;
  v887 = type metadata accessor for SleepingSampleAggregate(0);
  v136 = MEMORY[0x1EEE9AC00](v887, v135);
  v845 = &v784 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = MEMORY[0x1EEE9AC00](v136, v138);
  v841 = &v784 - v140;
  v142 = MEMORY[0x1EEE9AC00](v139, v141);
  v837 = &v784 - v143;
  v145 = MEMORY[0x1EEE9AC00](v142, v144);
  v833 = &v784 - v146;
  MEMORY[0x1EEE9AC00](v145, v147);
  v871 = (&v784 - v148);
  sub_1CFDB17D0(0, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
  v151 = MEMORY[0x1EEE9AC00](v149 - 8, v150);
  v854 = &v784 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = MEMORY[0x1EEE9AC00](v151, v153);
  v842 = &v784 - v155;
  v157 = MEMORY[0x1EEE9AC00](v154, v156);
  v853 = &v784 - v158;
  v160 = MEMORY[0x1EEE9AC00](v157, v159);
  v852 = &v784 - v161;
  MEMORY[0x1EEE9AC00](v160, v162);
  v850 = &v784 - v163;
  v881 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v898 = *(v881 - 8);
  v165 = MEMORY[0x1EEE9AC00](v881, v164);
  v846 = &v784 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = MEMORY[0x1EEE9AC00](v165, v167);
  v861 = &v784 - v169;
  v171 = MEMORY[0x1EEE9AC00](v168, v170);
  v860 = &v784 - v172;
  v174 = MEMORY[0x1EEE9AC00](v171, v173);
  v859 = &v784 - v175;
  MEMORY[0x1EEE9AC00](v174, v176);
  v858 = &v784 - v177;
  v178 = sub_1CFE30014();
  v891 = *(v178 - 8);
  v892 = v178;
  MEMORY[0x1EEE9AC00](v178, v179);
  v801 = &v784 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB17D0(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v183 = MEMORY[0x1EEE9AC00](v181 - 8, v182);
  v816 = &v784 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = MEMORY[0x1EEE9AC00](v183, v185);
  v188 = &v784 - v187;
  v190 = MEMORY[0x1EEE9AC00](v186, v189);
  v796 = &v784 - v191;
  v193 = MEMORY[0x1EEE9AC00](v190, v192);
  v838 = &v784 - v194;
  v196 = MEMORY[0x1EEE9AC00](v193, v195);
  v808 = (&v784 - v197);
  v199 = MEMORY[0x1EEE9AC00](v196, v198);
  v855 = (&v784 - v200);
  v202 = MEMORY[0x1EEE9AC00](v199, v201);
  v804 = &v784 - v203;
  v205 = MEMORY[0x1EEE9AC00](v202, v204);
  v851 = &v784 - v206;
  v208 = MEMORY[0x1EEE9AC00](v205, v207);
  v802 = &v784 - v209;
  v211 = MEMORY[0x1EEE9AC00](v208, v210);
  v880 = (&v784 - v212);
  MEMORY[0x1EEE9AC00](v211, v213);
  v857 = &v784 - v214;
  sub_1CFDE4C00(0, &qword_1EDC32548, MEMORY[0x1E696B418], "lower upper ");
  v890 = v215;
  v217 = MEMORY[0x1EEE9AC00](v215, v216);
  v884 = (&v784 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v217, v219);
  v221 = &v784 - v220;
  sub_1CFDA7AD0(0);
  v886 = v222;
  MEMORY[0x1EEE9AC00](v222, v223);
  v856 = &v784 - ((v224 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1CFE307E4();
  v226 = *(v225 - 8);
  v228 = MEMORY[0x1EEE9AC00](v225, v227);
  v843 = &v784 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = MEMORY[0x1EEE9AC00](v228, v230);
  v839 = &v784 - v232;
  v234 = MEMORY[0x1EEE9AC00](v231, v233);
  v834 = &v784 - v235;
  v237 = MEMORY[0x1EEE9AC00](v234, v236);
  v830 = &v784 - v238;
  v240 = MEMORY[0x1EEE9AC00](v237, v239);
  v827 = &v784 - v241;
  v243 = MEMORY[0x1EEE9AC00](v240, v242);
  v245 = &v784 - v244;
  MEMORY[0x1EEE9AC00](v243, v246);
  v248 = &v784 - v247;
  v249 = v226;
  v251 = *(v226 + 16);
  v250 = v226 + 16;
  v252 = v251;
  v251(&v784 - v247, a1, v225);
  sub_1CFE30774();
  sub_1CFDA77A8(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
  v903 = a1;
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v800 = v188;
  v864 = v78;
  v826 = v248;
  v873 = a14;
  v902 = a13;
  v254 = *(v249 + 32);
  v863 = v245;
  v254(v221, v245, v225);
  v255 = v890;
  v256 = &v221[*(v890 + 48)];
  v896 = v250;
  v900 = v252;
  v252(v256, v903, v225);
  v257 = v884;
  sub_1CFDE4928(v221, v884);
  v258 = *(v255 + 48);
  v259 = v856;
  v254(v856, v257, v225);
  v260 = *(v249 + 8);
  v885 = v249 + 8;
  (v260)(&v257[v258], v225);
  sub_1CFDE49B0(v221, v257);
  v261 = v259 + v886[9];
  v262 = &v257[*(v255 + 48)];
  v825 = v249 + 32;
  v824 = v254;
  v254(v261, v262, v225);
  v899 = v225;
  v884 = v260;
  (v260)(v257, v225);
  v263 = v900;
  if (v873)
  {
    v264 = v801;
    v265 = v902;
    sub_1CFE30734();
    v266 = v857;
    sub_1CFE2FFD4();
    v891[1](v264, v892);
    v267 = 0;
    v268 = v895;
  }

  else
  {
    v267 = 1;
    v268 = v895;
    v266 = v857;
    v265 = v902;
  }

  v270 = v877 + 56;
  v269 = *(v877 + 56);
  v269(v266, v267, 1, v268);
  v890 = v270;
  v886 = v269;
  if (v872)
  {
    v271 = v881;
    v871 = *(v898 + 56);
    v871(v850, 1, 1, v881);
    v272 = v863;
    v273 = v899;
    v263(v863, v903, v899);
    v274 = v887;
    v275 = v858;
    v276 = v858 + *(v887 + 20);
    v872 = *(v897 + 16);
    v872(v276, v265, v901);
    v277 = v275 + v274[7];
    v880 = v891[7];
    (v880)(v277, 1, 1, v892);
    v269(v275 + v274[8], 1, 1, v268);
    v900(v275, v272, v273);
    (v884)(v272, v273);
    v278 = v274[6];
    sub_1CFDAC3A0(0);
    (*(*(v279 - 8) + 56))(v275 + v278, 1, 1, v279);
    *(v275 + v274[9]) = 0;
    *(v275 + *(v271 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v280 = *(v882 + 56);
    v281 = v862;
    v282 = v883;
    (v280)(v862, 1, 1, v883);
    v283 = *(v271 + 24);
    (v280)(v275 + v283, 1, 1, v282);
    v284 = v850;
    sub_1CFDE4A38(v281, v275 + v283, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    if ((*(v898 + 48))(v284, 1, v271) != 1)
    {
      sub_1CFDE4BA4(v284, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }

    v285 = v863;
    v286 = MEMORY[0x1E69698A0];
    v287 = v280;
  }

  else
  {
    v288 = *&v803 * 7.0 + 60.0;
    v263(v827, v903, v899);
    v289 = v897;
    v290 = v901;
    v872 = *(v897 + 16);
    v801 = (v897 + 16);
    v872(v828, v265, v901);
    v291 = objc_opt_self();
    v784 = objc_opt_self();
    v292 = [v784 _countPerMinuteUnit];
    v785 = v291;
    v786 = [v291 quantityWithUnit:v292 doubleValue:v288];

    v293 = objc_opt_self();
    v294 = sub_1CFE307A4();
    v295 = sub_1CFE30454();
    v296 = [v293 hk:v294 sleepDayStartForMorningIndex:v295 calendar:?];

    sub_1CFE302F4();
    (*(v289 + 56))(v865, 1, 1, v290);
    v297 = sub_1CFE304E4();
    (*(*(v297 - 8) + 56))(v866, 1, 1, v297);
    LOBYTE(v783) = 1;
    LODWORD(v803) = 1;
    v298 = v889;
    sub_1CFE30124();
    v299 = v878;
    (*(v893 + 104))();
    v300 = v875;
    v301 = v868;
    v302 = v869;
    (*(v875 + 104))(v868, *MEMORY[0x1E69699C8], v869);
    v303 = v876;
    v304 = v864;
    v305 = v870;
    (*(v876 + 104))(v864, *MEMORY[0x1E6969998], v870);
    v306 = v888;
    sub_1CFE30484();
    (*(v303 + 8))(v304, v305);
    v307 = *(v300 + 8);
    v308 = v895;
    v307(v301, v302);
    (*(v893 + 8))(v299, v894);
    (*(v874 + 8))(v298, v867);
    v309 = v877;
    v310 = *(v877 + 8);
    v310(v306, v308);
    v311 = v802;
    sub_1CFDE4AA4(v880, v802);
    v312 = (*(v309 + 48))(v311, 1, v308);
    v313 = v829;
    if (v312 != 1)
    {
      (*(v309 + 32))(v306, v311, v308);
      (*(v309 + 16))(v848, v306, v308);
      sub_1CFE2FFF4();
      v310(v306, v308);
      LODWORD(v803) = 0;
    }

    sub_1CFDE4BA4(v880, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    v314 = v891[7];
    (v314)(v313, v803, 1, v892);
    v315 = v887;
    v316 = v871;
    (v886)(v871 + *(v887 + 32), 1, 1, v308);
    v317 = v827;
    v318 = v899;
    v900(v316, v827, v899);
    v319 = v828;
    v320 = v901;
    v872(v316 + v315[5], v828, v901);
    v321 = v315[6];
    *&v322 = COERCE_DOUBLE(sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348));
    v323 = v786;
    v803 = v322;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v324 - 8) + 56))(v316 + v321, 0, 1, v324);

    (*(v897 + 8))(v319, v320);
    (v884)(v317, v318);
    sub_1CFDE4B24(v829, v316 + v315[7]);
    *(v316 + v315[9]) = 4;
    v325 = v819;
    v880 = v314;
    if (v873)
    {
      static SleepingSampleBaselineAvailability.available(on:count:)(v903, 49, v819);
      v326 = v784;
      v327 = [v784 _countPerMinuteUnit];
      v328 = v785;
      v329 = [v785 quantityWithUnit:v327 doubleValue:60.0];

      v330 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v331 = [v326 _countPerMinuteUnit];
      v332 = [v328 quantityWithUnit:v331 doubleValue:53.0];

      v333 = [v326 _countPerMinuteUnit];
      v334 = [v328 quantityWithUnit:v333 doubleValue:67.0];

      v335 = [v330 initWithMinimum:v332 maximum:v334 isMinimumInclusive:1 isMaximumInclusive:1];
      v336 = [v326 _countPerMinuteUnit];
      v337 = [v328 quantityWithUnit:v336 doubleValue:3.5];

      v338 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v339 = [v326 _countPerMinuteUnit];
      v340 = [v328 quantityWithUnit:v339 doubleValue:53.0];

      v341 = [v326 _countPerMinuteUnit];
      v342 = [v328 quantityWithUnit:v341 doubleValue:67.0];

      v343 = [v338 initWithMinimum:v340 maximum:v342 isMinimumInclusive:1 isMaximumInclusive:1];
      if ([v335 containsQuantity_])
      {
        v344 = v329;
        v345 = v787;
        sub_1CFE306B4();
        v346 = v883;
        sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
        v347 = v335;
        sub_1CFE306B4();
        v348 = v337;
        sub_1CFE306B4();
        v349 = v346;
        sub_1CFE306B4();

        v350 = v793;
        sub_1CFDB369C(v345, v793, type metadata accessor for SleepingSampleBaseline);
        v351 = 0;
      }

      else
      {

        v351 = 1;
        v349 = v883;
        v350 = v793;
      }

      v354 = v882;
      v287 = *(v882 + 56);
      (v287)(v350, v351, 1, v349);
      v355 = (*(v354 + 48))(v350, 1, v349);
      v353 = v881;
      v285 = v863;
      if (v355)
      {
        sub_1CFDE4BA4(v350, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
        v352 = v805;
        v356 = v805;
        v357 = 1;
      }

      else
      {
        v352 = v805;
        sub_1CFDB369C(v350, v805, type metadata accessor for SleepingSampleBaseline);
        v356 = v352;
        v357 = 0;
      }

      (v287)(v356, v357, 1, v349);
      v325 = v819;
    }

    else
    {
      *v819 = 6;
      swift_storeEnumTagMultiPayload();
      v287 = *(v882 + 56);
      v352 = v805;
      v349 = v883;
      (v287)(v805, 1, 1, v883);
      v353 = v881;
      v285 = v863;
    }

    v358 = *(v353 + 24);
    v359 = v850;
    (v287)(&v850[v358], 1, 1, v349);
    sub_1CFDB369C(v871, v359, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDB369C(v325, v359 + *(v353 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDE4A38(v352, v359 + v358, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v871 = *(v898 + 56);
    v871(v359, 0, 1, v353);
    sub_1CFDB369C(v359, v858, type metadata accessor for SleepingSampleBaselineComparison);
    v286 = MEMORY[0x1E69698A0];
  }

  if (v832)
  {
    v360 = v287;
    v361 = v881;
    v871(v852, 1, 1, v881);
    v363 = v899;
    v362 = v900;
    v900(v285, v903, v899);
    v364 = v887;
    v365 = v859;
    v872(v859 + *(v887 + 20), v902, v901);
    (v880)(v365 + v364[7], 1, 1, v892);
    (v886)(v365 + v364[8], 1, 1, v895);
    v362(v365, v285, v363);
    (v884)(v285, v363);
    v366 = v364[6];
    sub_1CFDAC3A0(0);
    (*(*(v367 - 8) + 56))(v365 + v366, 1, 1, v367);
    *(v365 + v364[9]) = 0;
    *(v365 + *(v361 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v368 = v862;
    v369 = v883;
    (v360)(v862, 1, 1, v883);
    v370 = *(v361 + 24);
    (v360)(v365 + v370, 1, 1, v369);
    v371 = v852;
    sub_1CFDE4A38(v368, v365 + v370, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    if ((*(v898 + 48))(v371, 1, v361) != 1)
    {
      sub_1CFDE4BA4(v371, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }

    v372 = MEMORY[0x1E69699C8];
    v373 = 0x1E83D0000;
    v374 = v360;
    v375 = v899;
  }

  else
  {
    v376 = v807 + 95.0;
    v900(v830, v903, v899);
    v377 = v897;
    v378 = v901;
    v871 = (v897 + 16);
    v872(v831, v902, v901);
    v379 = objc_opt_self();
    v829 = objc_opt_self();
    v380 = [v829 percentUnit];
    v832 = v379;
    v850 = [v379 quantityWithUnit:v380 doubleValue:v376 / 100.0];

    v381 = objc_opt_self();
    v382 = sub_1CFE307A4();
    v383 = sub_1CFE30454();
    v384 = [v381 hk:v382 sleepDayStartForMorningIndex:v383 calendar:?];

    sub_1CFE302F4();
    v385 = 1;
    (*(v377 + 56))(v865, 1, 1, v378);
    v386 = sub_1CFE304E4();
    (*(*(v386 - 8) + 56))(v866, 1, 1, v386);
    LOBYTE(v783) = 1;
    sub_1CFE30124();
    v387 = v878;
    (*(v893 + 104))(v878, *v286, v894);
    v388 = v875;
    v389 = v868;
    v390 = v869;
    (*(v875 + 104))(v868, *MEMORY[0x1E69699C8], v869);
    v391 = v876;
    v392 = v864;
    v393 = v870;
    (*(v876 + 104))(v864, *MEMORY[0x1E6969998], v870);
    v394 = v888;
    sub_1CFE30484();
    (*(v391 + 8))(v392, v393);
    v395 = v389;
    v396 = v895;
    (*(v388 + 8))(v395, v390);
    (*(v893 + 8))(v387, v894);
    (*(v874 + 8))(v889, v867);
    v397 = v877;
    v398 = *(v877 + 8);
    v398(v394, v396);
    v399 = v804;
    sub_1CFDE4AA4(v851, v804);
    v400 = (*(v397 + 48))(v399, 1, v396);
    v401 = v806;
    if (v400 != 1)
    {
      (*(v397 + 32))(v394, v399, v396);
      (*(v397 + 16))(v848, v394, v396);
      sub_1CFE2FFF4();
      v398(v394, v396);
      v385 = 0;
    }

    sub_1CFDE4BA4(v851, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    v880 = v891[7];
    (v880)(v401, v385, 1, v892);
    v402 = v887;
    v403 = v833;
    (v886)(&v833[*(v887 + 32)], 1, 1, v396);
    v404 = v830;
    v375 = v899;
    v900(v403, v830, v899);
    v405 = v831;
    v406 = v901;
    v872(&v403[v402[5]], v831, v901);
    v407 = v402[6];
    v408 = v401;
    v409 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v410 = v850;
    v872 = v409;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v411 - 8) + 56))(&v403[v407], 0, 1, v411);

    (*(v897 + 8))(v405, v406);
    (v884)(v404, v375);
    sub_1CFDE4B24(v408, &v403[v402[7]]);
    v403[v402[9]] = 4;
    v412 = v820;
    if (v873)
    {
      static SleepingSampleBaselineAvailability.available(on:count:)(v903, 49, v820);
      v413 = v829;
      v414 = [v829 percentUnit];
      v415 = v832;
      v416 = [v832 quantityWithUnit:v414 doubleValue:0.95];

      v417 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v418 = [v413 percentUnit];
      v419 = [v415 quantityWithUnit:v418 doubleValue:0.94];

      v420 = [v413 percentUnit];
      v421 = [v415 quantityWithUnit:v420 doubleValue:0.96];

      v422 = [v417 initWithMinimum:v419 maximum:v421 isMinimumInclusive:1 isMaximumInclusive:1];
      v423 = [v413 percentUnit];
      v424 = [v415 quantityWithUnit:v423 doubleValue:0.005];

      v425 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v426 = [v413 percentUnit];
      v427 = [v415 quantityWithUnit:v426 doubleValue:0.94];

      v428 = [v413 percentUnit];
      v429 = [v415 quantityWithUnit:v428 doubleValue:0.96];

      v430 = [v425 initWithMinimum:v427 maximum:v429 isMinimumInclusive:1 isMaximumInclusive:1];
      if ([v422 containsQuantity_])
      {
        v431 = v416;
        v432 = v788;
        sub_1CFE306B4();
        v433 = v883;
        sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
        v434 = v422;
        sub_1CFE306B4();
        v435 = v424;
        sub_1CFE306B4();
        sub_1CFE306B4();

        v436 = v794;
        sub_1CFDB369C(v432, v794, type metadata accessor for SleepingSampleBaseline);
        v437 = 0;
      }

      else
      {

        v437 = 1;
        v433 = v883;
        v436 = v794;
      }

      v439 = v882;
      v440 = *(v882 + 56);
      (v440)(v436, v437, 1, v433);
      v441 = (*(v439 + 48))(v436, 1, v433);
      v372 = MEMORY[0x1E69699C8];
      v438 = v809;
      v412 = v820;
      if (v441)
      {
        sub_1CFDE4BA4(v436, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
        v442 = v438;
        v443 = 1;
      }

      else
      {
        sub_1CFDB369C(v436, v809, type metadata accessor for SleepingSampleBaseline);
        v442 = v438;
        v443 = 0;
      }

      (v440)(v442, v443, 1, v433);
      v374 = v440;
      v375 = v899;
    }

    else
    {
      *v820 = 6;
      swift_storeEnumTagMultiPayload();
      v374 = *(v882 + 56);
      v438 = v809;
      v433 = v883;
      (v374)(v809, 1, 1, v883);
      v372 = MEMORY[0x1E69699C8];
    }

    v444 = v881;
    v445 = *(v881 + 24);
    v446 = v852;
    (v374)(v852 + v445, 1, 1, v433);
    sub_1CFDB369C(v833, v446, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDB369C(v412, v446 + *(v444 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDE4A38(v438, v446 + v445, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v871 = *(v898 + 56);
    v871(v446, 0, 1, v444);
    sub_1CFDB369C(v446, v859, type metadata accessor for SleepingSampleBaselineComparison);
    v373 = 0x1E83D0000uLL;
  }

  LODWORD(v852) = a10;
  if (v836)
  {
    v447 = v881;
    v871(v853, 1, 1, v881);
    v448 = v863;
    v449 = v900;
    v900(v863, v903, v375);
    v450 = v887;
    v451 = v374;
    v452 = v860;
    v453 = v860 + *(v887 + 20);
    v872 = *(v897 + 16);
    v872(v453, v902, v901);
    (v880)(v452 + v450[7], 1, 1, v892);
    (v886)(v452 + v450[8], 1, 1, v895);
    v449(v452, v448, v375);
    (v884)(v448, v375);
    v454 = v450[6];
    sub_1CFDAC3A0(0);
    (*(*(v455 - 8) + 56))(v452 + v454, 1, 1, v455);
    *(v452 + v450[9]) = 0;
    *(v452 + *(v447 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v456 = v862;
    v457 = v883;
    (v451)(v862, 1, 1, v883);
    v458 = *(v447 + 24);
    v855 = v451;
    (v451)(v452 + v458, 1, 1, v457);
    v459 = v853;
    sub_1CFDE4A38(v456, v452 + v458, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    if ((*(v898 + 48))(v459, 1, v447) != 1)
    {
      sub_1CFDE4BA4(v459, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }

    v460 = MEMORY[0x1E69699C8];
  }

  else
  {
    v461 = *&v811 + 15.0;
    v900(v834, v903, v375);
    v462 = v897;
    v463 = v901;
    v872 = *(v897 + 16);
    v871 = (v897 + 16);
    v872(v835, v902, v901);
    v464 = objc_opt_self();
    v465 = objc_opt_self();
    v466 = *(v373 + 3224);
    v836 = v465;
    v467 = [v465 v466];
    v850 = v464;
    v851 = [v464 quantityWithUnit:v467 doubleValue:v461];

    v468 = objc_opt_self();
    v469 = sub_1CFE307A4();
    v470 = sub_1CFE30454();
    v471 = [v468 hk:v469 sleepDayStartForMorningIndex:v470 calendar:?];

    v472 = v888;
    sub_1CFE302F4();

    v473 = 1;
    (*(v462 + 56))(v865, 1, 1, v463);
    v474 = sub_1CFE304E4();
    (*(*(v474 - 8) + 56))(v866, 1, 1, v474);
    LOBYTE(v783) = 1;
    sub_1CFE30124();
    v475 = v878;
    (*(v893 + 104))(v878, *MEMORY[0x1E69698A0], v894);
    v476 = v875;
    v477 = v868;
    v478 = v869;
    (*(v875 + 104))(v868, *v372, v869);
    v479 = v876;
    v480 = v864;
    v481 = v870;
    (*(v876 + 104))(v864, *MEMORY[0x1E6969998], v870);
    sub_1CFE30484();
    (*(v479 + 8))(v480, v481);
    v482 = v477;
    v483 = v895;
    (*(v476 + 8))(v482, v478);
    (*(v893 + 8))(v475, v894);
    (*(v874 + 8))(v889, v867);
    v484 = v877;
    v485 = *(v877 + 8);
    v485(v472, v483);
    v486 = v808;
    sub_1CFDE4AA4(v855, v808);
    v487 = (*(v484 + 48))(v486, 1, v483);
    v488 = v810;
    if (v487 != 1)
    {
      (*(v484 + 32))(v472, v486, v483);
      (*(v484 + 16))(v848, v472, v483);
      sub_1CFE2FFF4();
      v485(v472, v483);
      v473 = 0;
    }

    sub_1CFDE4BA4(v855, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    v880 = v891[7];
    (v880)(v488, v473, 1, v892);
    v489 = v887;
    v490 = v837;
    (v886)(&v837[*(v887 + 32)], 1, 1, v483);
    v491 = v834;
    v492 = v899;
    v900(v490, v834, v899);
    v493 = v835;
    v494 = v901;
    v872(&v490[v489[5]], v835, v901);
    v495 = v489[6];
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v496 = v851;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v497 - 8) + 56))(&v490[v495], 0, 1, v497);

    (*(v897 + 8))(v493, v494);
    (v884)(v491, v492);
    sub_1CFDE4B24(v488, &v490[v489[7]]);
    v490[v489[9]] = 4;
    v498 = v821;
    if (v873)
    {
      static SleepingSampleBaselineAvailability.available(on:count:)(v903, 49, v821);
      v499 = v836;
      v500 = [v836 _countPerMinuteUnit];
      v501 = v850;
      v871 = [v850 quantityWithUnit:v500 doubleValue:15.0];

      v502 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v503 = [v499 _countPerMinuteUnit];
      v504 = [v501 quantityWithUnit:v503 doubleValue:14.0];

      v505 = [v499 _countPerMinuteUnit];
      v506 = [v501 quantityWithUnit:v505 doubleValue:16.0];

      v507 = [v502 initWithMinimum:v504 maximum:v506 isMinimumInclusive:1 isMaximumInclusive:1];
      v508 = [v499 _countPerMinuteUnit];
      v509 = [v501 quantityWithUnit:v508 doubleValue:0.5];

      v510 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v511 = [v499 _countPerMinuteUnit];
      v512 = [v501 quantityWithUnit:v511 doubleValue:14.0];

      v513 = [v499 _countPerMinuteUnit];
      v514 = [v501 quantityWithUnit:v513 doubleValue:16.0];

      v515 = v871;
      v516 = [v510 initWithMinimum:v512 maximum:v514 isMinimumInclusive:1 isMaximumInclusive:1];

      if ([v507 containsQuantity_])
      {
        v517 = v515;
        v518 = v789;
        sub_1CFE306B4();
        v519 = v509;
        v520 = v883;
        sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
        v521 = v507;
        sub_1CFE306B4();
        v522 = v519;
        sub_1CFE306B4();
        sub_1CFE306B4();

        v523 = v795;
        sub_1CFDB369C(v518, v795, type metadata accessor for SleepingSampleBaseline);
        v524 = 0;
      }

      else
      {

        v524 = 1;
        v520 = v883;
        v523 = v795;
      }

      v527 = v882;
      v525 = *(v882 + 56);
      (v525)(v523, v524, 1, v520);
      v528 = (*(v527 + 48))(v523, 1, v520);
      v529 = v523;
      v460 = MEMORY[0x1E69699C8];
      v526 = v812;
      v498 = v821;
      if (v528)
      {
        sub_1CFDE4BA4(v529, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
        v530 = v526;
        v531 = 1;
      }

      else
      {
        sub_1CFDB369C(v529, v812, type metadata accessor for SleepingSampleBaseline);
        v530 = v526;
        v531 = 0;
      }

      (v525)(v530, v531, 1, v520);
    }

    else
    {
      *v821 = 6;
      swift_storeEnumTagMultiPayload();
      v525 = *(v882 + 56);
      v526 = v812;
      v520 = v883;
      (v525)(v812, 1, 1, v883);
      v460 = MEMORY[0x1E69699C8];
    }

    v447 = v881;
    v532 = *(v881 + 24);
    v533 = v853;
    v855 = v525;
    (v525)(&v853[v532], 1, 1, v520);
    sub_1CFDB369C(v837, v533, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDB369C(v498, v533 + *(v447 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDE4A38(v526, v533 + v532, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v871 = *(v898 + 56);
    v871(v533, 0, 1, v447);
    sub_1CFDB369C(v533, v860, type metadata accessor for SleepingSampleBaselineComparison);
  }

  v534 = v886;
  LODWORD(v853) = a12;
  if (v852)
  {
    v535 = v842;
    v871(v842, 1, 1, v447);
    v536 = v863;
    v538 = v899;
    v537 = v900;
    v900(v863, v903, v899);
    v539 = v887;
    v540 = v861;
    v872(v861 + *(v887 + 20), v902, v901);
    (v880)(v540 + v539[7], 1, 1, v892);
    v534(v540 + v539[8], 1, 1, v895);
    v537(v540, v536, v538);
    (v884)(v536, v538);
    v541 = v539[6];
    sub_1CFDAC3A0(0);
    (*(*(v542 - 8) + 56))(v540 + v541, 1, 1, v542);
    *(v540 + v539[9]) = 0;
    *(v540 + *(v447 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v543 = v862;
    v544 = v883;
    v545 = v855;
    (v855)(v862, 1, 1, v883);
    v546 = *(v447 + 24);
    (v545)(v540 + v546, 1, 1, v544);
    sub_1CFDE4A38(v543, v540 + v546, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v547 = v447;
    if ((*(v898 + 48))(v535, 1, v447) != 1)
    {
      sub_1CFDE4BA4(v535, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }

    goto LABEL_73;
  }

  v548 = v813;
  (v900)(v839);
  v549 = v897;
  v550 = v901;
  v852 = v897 + 16;
  v872(v840, v902, v901);
  v551 = objc_opt_self();
  v836 = objc_opt_self();
  v552 = [v836 _changeInDegreeCelsiusUnit];
  v837 = v551;
  v851 = [v551 quantityWithUnit:v552 doubleValue:v548];

  v553 = objc_opt_self();
  v554 = sub_1CFE307A4();
  v555 = sub_1CFE30454();
  v835 = v553;
  v556 = [v553 hk:v554 sleepDayStartForMorningIndex:v555 calendar:?];

  v557 = v888;
  sub_1CFE302F4();

  v558 = *(v549 + 56);
  v834 = (v549 + 56);
  v833 = v558;
  (v558)(v865, 1, 1, v550);
  v559 = sub_1CFE304E4();
  v560 = *(v559 - 1);
  v561 = *(v560 + 56);
  v832 = v559;
  v831 = v561;
  v830 = (v560 + 56);
  (v561)(v866, 1, 1);
  LOBYTE(v783) = 1;
  v562 = v460;
  v563 = v889;
  sub_1CFE30124();
  v564 = *(v893 + 104);
  v565 = v878;
  LODWORD(v828) = *MEMORY[0x1E69698A0];
  v829 = (v893 + 104);
  v827 = v564;
  (v564)(v878);
  v566 = v875;
  v567 = *(v875 + 104);
  v568 = v868;
  LODWORD(v820) = *v562;
  v569 = v869;
  v821 = (v875 + 104);
  v819 = v567;
  (v567)(v868);
  v570 = v876;
  v571 = *(v876 + 104);
  v572 = v864;
  LODWORD(v812) = *MEMORY[0x1E6969998];
  v573 = v870;
  *&v813 = v876 + 104;
  v811 = v571;
  v571(v864);
  sub_1CFE30484();
  v574 = *(v570 + 8);
  v810 = (v570 + 8);
  v809 = v574;
  (v574)(v572, v573);
  v575 = (v566 + 8);
  v808 = *(v566 + 8);
  (v808)(v568, v569);
  v576 = (v893 + 8);
  v577 = *(v893 + 8);
  v578 = v565;
  v579 = v894;
  (v577)(v578);
  v580 = (v874 + 8);
  v807 = *(v874 + 8);
  (*&v807)(v563, v867);
  v581 = v877;
  v582 = *(v877 + 8);
  v583 = v557;
  v584 = v838;
  v585 = v895;
  v850 = (v877 + 8);
  (v582)(v583, v895);
  v586 = (v581 + 48);
  v806 = *(v581 + 48);
  if ((v806)(v584, 1, v585) == 1)
  {
    sub_1CFDE4BA4(v584, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    _s5ErrorOMa(0);
    sub_1CFDA77A8(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
    v587 = swift_allocError();
    *v588 = xmmword_1CFE34CF0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_60:
    v606 = v886;
    v607 = v815;
    goto LABEL_61;
  }

  v589 = *(v581 + 32);
  v804 = v581 + 32;
  v803 = v589;
  v589(v814, v584, v585);
  v590 = sub_1CFE307A4();
  v838 = v575;
  v591 = v590;
  v592 = sub_1CFE30454();
  v593 = [v835 hk:v591 sleepDayStartForMorningIndex:v592 calendar:?];
  v835 = v576;
  v594 = v593;

  sub_1CFE302F4();
  (v833)(v865, 1, 1, v901);
  (v831)(v866, 1, 1, v832);
  LOBYTE(v783) = 1;
  v833 = v577;
  v595 = v889;
  sub_1CFE30124();
  v834 = v586;
  v596 = v878;
  v597 = v579;
  (v827)(v878, v828, v579);
  v598 = v868;
  v599 = v869;
  (v819)(v868, v820, v869);
  v805 = v582;
  v600 = v864;
  v832 = v580;
  v601 = v870;
  v811(v864, v812, v870);
  v602 = v796;
  v603 = v888;
  sub_1CFE30484();
  (v809)(v600, v601);
  (v808)(v598, v599);
  (v833)(v596, v597);
  v585 = v895;
  (*&v807)(v595, v867);
  v604 = v805;
  (v805)(v603, v585);
  if ((v806)(v602, 1, v585) == 1)
  {
    sub_1CFDE4BA4(v602, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    _s5ErrorOMa(0);
    sub_1CFDA77A8(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
    v587 = swift_allocError();
    *v605 = xmmword_1CFE34CE0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v604(v814, v585);
    goto LABEL_60;
  }

  v649 = v790;
  v803(v790, v602, v585);
  sub_1CFDA77A8(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v650 = v814;
  v651 = sub_1CFE30874();
  v606 = v886;
  v607 = v815;
  if (v651)
  {
    v652 = *(v877 + 16);
    v653 = v650;
    v652(v888, v650, v585);
    v652(v848, v649, v585);
    sub_1CFE2FFE4();
    v654 = v805;
    (v805)(v649, v585);
    v654(v653, v585);
    v608 = 0;
    goto LABEL_62;
  }

  v776 = v650;
  v838 = _s5ErrorOMa(0);
  sub_1CFDA77A8(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
  v587 = swift_allocError();
  v778 = v777;
  sub_1CFDE4C00(0, &qword_1EC509858, MEMORY[0x1E6969530], "start end ");
  v780 = *(v779 + 48);
  v781 = *(v877 + 16);
  v781(v778, v776, v585);
  v781(v778 + v780, v649, v585);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v782 = v805;
  (v805)(v649, v585);
  v782(v776, v585);
LABEL_61:

  v608 = 1;
LABEL_62:
  (v880)(v607, v608, 1, v892);
  v609 = v887;
  v610 = v841;
  v606(&v841[*(v887 + 32)], 1, 1, v585);
  v611 = v839;
  v612 = v899;
  v900(v610, v839, v899);
  v613 = v840;
  v614 = v901;
  v872(&v610[v609[5]], v840, v901);
  v615 = v609[6];
  v616 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v617 = v851;
  v852 = v616;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v618 - 8) + 56))(&v610[v615], 0, 1, v618);

  (*(v897 + 8))(v613, v614);
  (v884)(v611, v612);
  sub_1CFDE4B24(v607, &v610[v609[7]]);
  v610[v609[9]] = 4;
  if (v873)
  {
    static SleepingSampleBaselineAvailability.available(on:count:)(v903, 49, v822);
    v619 = v836;
    v620 = [v836 _changeInDegreeCelsiusUnit];
    v621 = v837;
    v622 = [v837 quantityWithUnit:v620 doubleValue:0.0];

    v623 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v624 = [v619 _changeInDegreeCelsiusUnit];
    v625 = [v621 quantityWithUnit:v624 doubleValue:-1.0];

    v626 = [v619 _changeInDegreeCelsiusUnit];
    v627 = [v621 quantityWithUnit:v626 doubleValue:1.0];

    v628 = [v623 initWithMinimum:v625 maximum:v627 isMinimumInclusive:1 isMaximumInclusive:1];
    v629 = [v619 _changeInDegreeCelsiusUnit];
    v630 = [v621 quantityWithUnit:v629 doubleValue:0.5];

    v631 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v632 = [v619 _changeInDegreeCelsiusUnit];
    v633 = [v621 quantityWithUnit:v632 doubleValue:-1.0];

    v634 = [v619 _changeInDegreeCelsiusUnit];
    v635 = [v621 quantityWithUnit:v634 doubleValue:1.0];

    v636 = [v631 initWithMinimum:v633 maximum:v635 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v628 containsQuantity_])
    {
      v637 = v622;
      v638 = v791;
      sub_1CFE306B4();
      v639 = v883;
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v640 = v628;
      sub_1CFE306B4();
      v641 = v630;
      sub_1CFE306B4();
      sub_1CFE306B4();

      v544 = v639;
      v642 = v797;
      sub_1CFDB369C(v638, v797, type metadata accessor for SleepingSampleBaseline);
      v643 = 0;
      v644 = v882;
    }

    else
    {

      v643 = 1;
      v544 = v883;
      v644 = v882;
      v642 = v797;
    }

    v655 = v880;
    v545 = v855;
    (v855)(v642, v643, 1, v544);
    v656 = (*(v644 + 48))(v642, 1, v544);
    v647 = v881;
    v648 = v817;
    v645 = v822;
    v880 = v655;
    if (v656)
    {
      sub_1CFDE4BA4(v642, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v646 = 1;
    }

    else
    {
      sub_1CFDB369C(v642, v817, type metadata accessor for SleepingSampleBaseline);
      v646 = 0;
    }
  }

  else
  {
    v645 = v822;
    *v822 = 6;
    swift_storeEnumTagMultiPayload();
    v646 = 1;
    v544 = v883;
    v647 = v881;
    v648 = v817;
    v545 = v855;
  }

  (v545)(v648, v646, 1, v544);
  v657 = *(v647 + 24);
  v658 = v842;
  (v545)(&v842[v657], 1, 1, v544);
  sub_1CFDB369C(v841, v658, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDB369C(v645, v658 + *(v647 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDE4A38(v648, v658 + v657, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v547 = v647;
  v871(v658, 0, 1, v647);
  sub_1CFDB369C(v658, v861, type metadata accessor for SleepingSampleBaselineComparison);
LABEL_73:
  v659 = MEMORY[0x1E69698A0];
  if (v853)
  {
    v660 = v547;
    v871(v854, 1, 1, v547);
    v661 = v863;
    v855 = v545;
    v663 = v899;
    v662 = v900;
    v900(v863, v903, v899);
    v664 = v887;
    v665 = v846;
    v872(v846 + *(v887 + 20), v902, v901);
    (v880)(v665 + v664[7], 1, 1, v892);
    v666 = v886;
    v667 = v544;
    (v886)(v665 + v664[8], 1, 1, v895);
    v668 = v666;
    v662(v665, v661, v663);
    (v884)(v661, v663);
    v669 = v664[6];
    sub_1CFDAC3A0(0);
    (*(*(v670 - 8) + 56))(v665 + v669, 1, 1, v670);
    *(v665 + v664[9]) = 0;
    *(v665 + *(v660 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v671 = v665;
    v672 = v862;
    v673 = v855;
    (v855)(v862, 1, 1, v667);
    v674 = *(v660 + 24);
    v675 = v854;
    v673(v671 + v674, 1, 1, v667);
    sub_1CFDE4A38(v672, v671 + v674, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    if ((*(v898 + 48))(v675, 1, v660) != 1)
    {
      sub_1CFDE4BA4(v675, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }
  }

  else
  {
    v900(v843, v903, v899);
    v676 = v897;
    v677 = v901;
    v880 = (v897 + 16);
    v872(v844, v902, v901);
    v678 = objc_opt_self();
    v829 = objc_opt_self();
    v679 = [v829 secondUnit];
    v830 = v678;
    v871 = [v678 quantityWithUnit:v679 doubleValue:a11 * 3600.0 + 25200.0];

    v680 = objc_opt_self();
    v681 = sub_1CFE307A4();
    v682 = sub_1CFE30454();
    v863 = v680;
    v683 = [v680 hk:v681 sleepDayStartForMorningIndex:v682 calendar:?];

    sub_1CFE302F4();
    v684 = *(v676 + 56);
    v862 = (v676 + 56);
    v855 = v684;
    (v684)(v865, 1, 1, v677);
    v685 = sub_1CFE304E4();
    v686 = *(v685 - 8);
    v687 = *(v686 + 56);
    v853 = v685;
    v852 = v687;
    v851 = (v686 + 56);
    v687(v866, 1, 1);
    LOBYTE(v783) = 1;
    sub_1CFE30124();
    v688 = v893;
    v689 = *(v893 + 104);
    LODWORD(v850) = *v659;
    v842 = (v893 + 104);
    v841 = v689;
    (v689)(v878);
    v690 = v875;
    v691 = *(v875 + 104);
    v692 = v868;
    LODWORD(v840) = *MEMORY[0x1E69699C8];
    v693 = v869;
    v839 = (v875 + 104);
    v838 = v691;
    (v691)(v868);
    v694 = v876;
    v695 = *(v876 + 104);
    v696 = v864;
    LODWORD(v837) = *MEMORY[0x1E6969998];
    v697 = v870;
    v836 = (v876 + 104);
    v835 = v695;
    (v695)(v864);
    v698 = v800;
    v699 = v888;
    sub_1CFE30484();
    v700 = *(v694 + 8);
    v876 = v694 + 8;
    v834 = v700;
    (v700)(v696, v697);
    v701 = *(v690 + 8);
    v875 = v690 + 8;
    v833 = v701;
    (v701)(v692, v693);
    v702 = v698;
    v703 = *(v688 + 8);
    v893 = v688 + 8;
    v832 = v703;
    (v703)(v878, v894);
    v704 = v699;
    v705 = *(v874 + 8);
    v874 += 8;
    v831 = v705;
    (v705)(v889, v867);
    v706 = v877;
    v707 = v877 + 8;
    v708 = *(v877 + 8);
    v709 = v699;
    v710 = v895;
    (v708)(v709, v895);
    v711 = v698;
    v712 = v816;
    sub_1CFDE4AA4(v711, v816);
    v713 = 1;
    if ((*(v706 + 48))(v712, 1, v710) != 1)
    {
      (*(v706 + 32))(v704, v712, v710);
      v714 = v848;
      (*(v706 + 16))(v848, v704, v710);
      sub_1CFE302C4();
      sub_1CFE2FFF4();
      (v708)(v714, v710);
      (v708)(v704, v710);
      v713 = 0;
    }

    sub_1CFDE4BA4(v702, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    (v891[7])(v849, v713, 1, v892);
    v715 = sub_1CFE307A4();
    v892 = v707;
    v716 = v715;
    v717 = sub_1CFE30454();
    v718 = [v863 hk:v716 sleepDayStartForMorningIndex:v717 calendar:?];

    sub_1CFE302F4();
    (v855)(v865, 1, 1, v901);
    (v852)(v866, 1, 1, v853);
    LOBYTE(v783) = 1;
    v891 = v708;
    v719 = v889;
    sub_1CFE30124();
    v720 = v878;
    v721 = v894;
    (v841)(v878, v850, v894);
    v722 = v868;
    v723 = v869;
    (v838)(v868, v840, v869);
    v724 = v864;
    v725 = v870;
    (v835)(v864, v837, v870);
    v726 = v887;
    v727 = v845;
    sub_1CFE30484();
    (v834)(v724, v725);
    (v833)(v722, v723);
    v728 = v895;
    (v832)(v720, v721);
    (v831)(v719, v867);
    (v891)(v888, v728);
    v729 = v843;
    v730 = v899;
    v900(v727, v843, v899);
    v731 = v844;
    v732 = v901;
    v872(v727 + *(v726 + 20), v844, v901);
    v733 = *(v726 + 24);
    v734 = v726;
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v735 = v871;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v736 - 8) + 56))(v727 + v733, 0, 1, v736);

    (*(v897 + 8))(v731, v732);
    (v884)(v729, v730);
    sub_1CFDE4B24(v849, v727 + *(v734 + 28));
    *(v727 + *(v734 + 36)) = 4;
    if (v873)
    {
      static SleepingSampleBaselineAvailability.available(on:count:)(v903, 49, v823);
      v737 = v829;
      v738 = [v829 secondUnit];
      v739 = v830;
      v903 = [v830 quantityWithUnit:v738 doubleValue:25200.0];

      v740 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v741 = [v737 secondUnit];
      v742 = [v739 quantityWithUnit:v741 doubleValue:21600.0];

      v743 = [v737 secondUnit];
      v744 = [v739 quantityWithUnit:v743 doubleValue:28800.0];

      v745 = [v740 initWithMinimum:v742 maximum:v744 isMinimumInclusive:1 isMaximumInclusive:1];
      v746 = [v737 secondUnit];
      v747 = [v739 quantityWithUnit:v746 doubleValue:1800.0];

      v748 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v749 = [v737 secondUnit];
      v750 = [v739 quantityWithUnit:v749 doubleValue:21600.0];

      v751 = v903;
      v752 = [v737 secondUnit];
      v753 = [v739 quantityWithUnit:v752 doubleValue:28800.0];

      v754 = [v748 initWithMinimum:v750 maximum:v753 isMinimumInclusive:1 isMaximumInclusive:1];
      if ([v745 containsQuantity_])
      {
        v755 = v751;
        v756 = v792;
        sub_1CFE306B4();
        v757 = v883;
        sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
        v758 = v745;
        sub_1CFE306B4();
        v759 = v747;
        sub_1CFE306B4();
        sub_1CFE306B4();

        v760 = v799;
        sub_1CFDB369C(v756, v799, type metadata accessor for SleepingSampleBaseline);
        v761 = 0;
      }

      else
      {

        v761 = 1;
        v757 = v883;
        v760 = v799;
      }

      v767 = v882;
      v763 = *(v882 + 56);
      v763(v760, v761, 1, v757);
      v768 = (*(v767 + 48))(v760, 1, v757);
      v765 = v854;
      v766 = v881;
      if (v768)
      {
        sub_1CFDE4BA4(v760, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
        v764 = v818;
        v769 = v818;
        v770 = 1;
      }

      else
      {
        v764 = v818;
        sub_1CFDB369C(v760, v818, type metadata accessor for SleepingSampleBaseline);
        v769 = v764;
        v770 = 0;
      }

      v763(v769, v770, 1, v757);
      v762 = v823;
    }

    else
    {
      v762 = v823;
      *v823 = 6;
      swift_storeEnumTagMultiPayload();
      v763 = *(v882 + 56);
      v764 = v818;
      v757 = v883;
      v763(v818, 1, 1, v883);
      v765 = v854;
      v766 = v881;
    }

    v771 = *(v766 + 24);
    v763(v765 + v771, 1, 1, v757);
    sub_1CFDB369C(v845, v765, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDB369C(v762, v765 + *(v766 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDE4A38(v764, v765 + v771, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    (*(v898 + 56))(v765, 0, 1, v766);
    v671 = v846;
    sub_1CFDB369C(v765, v846, type metadata accessor for SleepingSampleBaselineComparison);
    v663 = v899;
    v668 = v886;
  }

  v772 = type metadata accessor for SleepingSampleDaySummary(0);
  v773 = v772[6];
  v774 = v847;
  v668(v847 + v773, 1, 1, v895);
  v775 = v774 + v772[7];
  *v775 = 0;
  *(v775 + 8) = 1;
  v824(v774, v826, v663);
  sub_1CFDB369C(v856, v774 + v772[5], sub_1CFDA7AD0);
  sub_1CFDE4A38(v857, v774 + v773, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDB369C(v858, v774 + v772[8], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB369C(v859, v774 + v772[9], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB369C(v860, v774 + v772[10], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB369C(v861, v774 + v772[11], type metadata accessor for SleepingSampleBaselineComparison);
  return sub_1CFDB369C(v671, v774 + v772[12], type metadata accessor for SleepingSampleBaselineComparison);
}

uint64_t sub_1CFDE4928(uint64_t a1, uint64_t a2)
{
  sub_1CFDE4C00(0, &qword_1EDC32548, MEMORY[0x1E696B418], "lower upper ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDE49B0(uint64_t a1, uint64_t a2)
{
  sub_1CFDE4C00(0, &qword_1EDC32548, MEMORY[0x1E696B418], "lower upper ");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDE4A38(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDB17D0(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDE4AA4(uint64_t a1, uint64_t a2)
{
  sub_1CFDB17D0(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDE4B24(uint64_t a1, uint64_t a2)
{
  sub_1CFDB17D0(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDE4BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDB17D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFDE4C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1CFDE4C80(uint64_t a1)
{
  v2 = sub_1CFDE7768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE4CBC(uint64_t a1)
{
  v2 = sub_1CFDE7768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CFDE4CF8()
{
  v1 = 0x6C62616C69617661;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t sub_1CFDE4D64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDE87F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDE4D8C(uint64_t a1)
{
  v2 = sub_1CFDE7864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE4DC8(uint64_t a1)
{
  v2 = sub_1CFDE7864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDE4E10(uint64_t a1)
{
  v2 = sub_1CFDE77BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE4E4C(uint64_t a1)
{
  v2 = sub_1CFDE77BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDE4E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFE310B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFDE4F08(uint64_t a1)
{
  v2 = sub_1CFDE7810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE4F44(uint64_t a1)
{
  v2 = sub_1CFDE7810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleDataTypeFeatureStatus.State.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1CFDE7D40(0, &qword_1EC509860, sub_1CFDE7768, &type metadata for SleepingSampleDataTypeFeatureStatus.State.AvailableCodingKeys, MEMORY[0x1E69E6F58]);
  v37 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v33 = &v30 - v7;
  sub_1CFDE7D40(0, &qword_1EC509870, sub_1CFDE77BC, &type metadata for SleepingSampleDataTypeFeatureStatus.State.ConfigurationIssueCodingKeys, v4);
  v36 = v8;
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30 - v10;
  sub_1CFDE7D40(0, &qword_1EC509880, sub_1CFDE7810, &type metadata for SleepingSampleDataTypeFeatureStatus.State.HiddenDueToUnsatisfiedRequirementsCodingKeys, v4);
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  sub_1CFDE7D40(0, &qword_1EC509890, sub_1CFDE7864, &type metadata for SleepingSampleDataTypeFeatureStatus.State.CodingKeys, v4);
  v38 = *(v16 - 8);
  v39 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v30 - v18;
  v20 = *v2;
  v21 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7864();
  sub_1CFE311A4();
  if (v21)
  {
    if (v21 == 1)
    {
      v43 = 1;
      sub_1CFDE77BC();
      v22 = v39;
      sub_1CFE30FF4();
      v42 = v20 & 1;
      sub_1CFDE78B8();
      v23 = v36;
      sub_1CFE31054();
      (*(v34 + 8))(v11, v23);
      return (*(v38 + 8))(v19, v22);
    }

    else
    {
      v44 = 2;
      sub_1CFDE7768();
      v28 = v33;
      v29 = v39;
      sub_1CFE30FF4();
      (*(v35 + 8))(v28, v37);
      return (*(v38 + 8))(v19, v29);
    }
  }

  else
  {
    v25 = v31;
    v41 = 0;
    sub_1CFDE7810();
    v26 = v39;
    sub_1CFE30FF4();
    v40 = v20;
    sub_1CFDE790C(0);
    sub_1CFDE79B8(&qword_1EC5098B0, &qword_1EC5098B8, MEMORY[0x1E696B488], MEMORY[0x1E69E6300]);
    v27 = v32;
    sub_1CFE31054();
    (*(v25 + 8))(v15, v27);
    return (*(v38 + 8))(v19, v26);
  }
}

uint64_t SleepingSampleDataTypeFeatureStatus.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDE7D40(0, &qword_1EC5098C0, sub_1CFDE7768, &type metadata for SleepingSampleDataTypeFeatureStatus.State.AvailableCodingKeys, MEMORY[0x1E69E6F48]);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v50 = &v42 - v6;
  sub_1CFDE7D40(0, &qword_1EC5098C8, sub_1CFDE77BC, &type metadata for SleepingSampleDataTypeFeatureStatus.State.ConfigurationIssueCodingKeys, v3);
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v49 = &v42 - v10;
  sub_1CFDE7D40(0, &qword_1EC5098D0, sub_1CFDE7810, &type metadata for SleepingSampleDataTypeFeatureStatus.State.HiddenDueToUnsatisfiedRequirementsCodingKeys, v3);
  v12 = v11;
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v42 - v14;
  sub_1CFDE7D40(0, &qword_1EC5098D8, sub_1CFDE7864, &type metadata for SleepingSampleDataTypeFeatureStatus.State.CodingKeys, v3);
  v17 = v16;
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - v19;
  v21 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1CFDE7864();
  v22 = v52;
  sub_1CFE31194();
  if (!v22)
  {
    v24 = v49;
    v23 = v50;
    v25 = sub_1CFE30FE4();
    v26 = (2 * *(v25 + 16)) | 1;
    v54 = v25;
    v55 = v25 + 32;
    v56 = 0;
    v57 = v26;
    v27 = sub_1CFDB4610();
    v28 = v17;
    if (v27 == 3 || v56 != v57 >> 1)
    {
      v33 = sub_1CFE30DF4();
      swift_allocError();
      v35 = v34;
      sub_1CFDCB7AC(0);
      *v35 = &type metadata for SleepingSampleDataTypeFeatureStatus.State;
      sub_1CFE30F74();
      sub_1CFE30DD4();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v51 + 8))(v20, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = v20;
      LODWORD(v52) = v27;
      if (v27)
      {
        if (v27 == 1)
        {
          LOBYTE(v58) = 1;
          sub_1CFDE77BC();
          v30 = v28;
          sub_1CFE30F64();
          v31 = v51;
          sub_1CFDE7964();
          v32 = v46;
          sub_1CFE30FD4();
          (*(v47 + 8))(v24, v32);
          (*(v31 + 8))(v20, v30);
          swift_unknownObjectRelease();
          v41 = v58;
        }

        else
        {
          LOBYTE(v58) = 2;
          sub_1CFDE7768();
          v38 = v23;
          v39 = v28;
          sub_1CFE30F64();
          v40 = v51;
          (*(v44 + 8))(v38, v45);
          (*(v40 + 8))(v29, v39);
          swift_unknownObjectRelease();
          v41 = 0;
        }

        v37 = v48;
      }

      else
      {
        LOBYTE(v58) = 0;
        sub_1CFDE7810();
        sub_1CFE30F64();
        v37 = v48;
        sub_1CFDE790C(0);
        sub_1CFDE79B8(&qword_1EC5098E8, &qword_1EC5098F0, MEMORY[0x1E696B490], MEMORY[0x1E69E6330]);
        sub_1CFE30FD4();
        (*(v43 + 8))(v15, v12);
        (*(v51 + 8))(v20, v28);
        swift_unknownObjectRelease();
        v41 = v58;
      }

      *v37 = v41;
      *(v37 + 8) = v52;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

unint64_t sub_1CFDE5C08()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1CFDE5C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x80000001CFE39230 == a2;
  if (v5 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFE39250 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

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

uint64_t sub_1CFDE5D28(uint64_t a1)
{
  v2 = sub_1CFDE7B20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE5D64(uint64_t a1)
{
  v2 = sub_1CFDE7B20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDE5DA0(uint64_t a1)
{
  v2 = sub_1CFDE7A78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE5DDC(uint64_t a1)
{
  v2 = sub_1CFDE7A78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDE5E18(uint64_t a1)
{
  v2 = sub_1CFDE7ACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE5E54(uint64_t a1)
{
  v2 = sub_1CFDE7ACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1CFDE7D40(0, &qword_1EC5098F8, sub_1CFDE7A78, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.PrivacySettingOffCodingKeys, MEMORY[0x1E69E6F58]);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v26 = &v22 - v6;
  sub_1CFDE7D40(0, &qword_1EC509908, sub_1CFDE7ACC, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.SleepOnboardingRequiredCodingKeys, v3);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v23 = &v22 - v9;
  sub_1CFDE7D40(0, &qword_1EC509918, sub_1CFDE7B20, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7B20();
  sub_1CFE311A4();
  v17 = (v12 + 8);
  if (v16)
  {
    v30 = 1;
    sub_1CFDE7A78();
    v18 = v26;
    sub_1CFE30FF4();
    v20 = v27;
    v19 = v28;
  }

  else
  {
    v29 = 0;
    sub_1CFDE7ACC();
    v18 = v23;
    sub_1CFE30FF4();
    v20 = v24;
    v19 = v25;
  }

  (*(v20 + 8))(v18, v19);
  return (*v17)(v15, v11);
}

uint64_t SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.hashValue.getter()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDE7D40(0, &qword_1EC509928, sub_1CFDE7A78, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.PrivacySettingOffCodingKeys, MEMORY[0x1E69E6F48]);
  v32 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v34 = &v30 - v6;
  sub_1CFDE7D40(0, &qword_1EC509930, sub_1CFDE7ACC, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.SleepOnboardingRequiredCodingKeys, v3);
  v8 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v30 - v10;
  sub_1CFDE7D40(0, &qword_1EC509938, sub_1CFDE7B20, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.CodingKeys, v3);
  v13 = v12;
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7B20();
  v17 = v37;
  sub_1CFE31194();
  if (v17)
  {
    goto LABEL_7;
  }

  v30 = v8;
  v18 = v34;
  v19 = v35;
  v37 = a1;
  v20 = v33;
  v21 = v36;
  v22 = sub_1CFE30FE4();
  v23 = (2 * *(v22 + 16)) | 1;
  v38 = v22;
  v39 = v22 + 32;
  v40 = 0;
  v41 = v23;
  v24 = sub_1CFDCA800();
  if (v24 == 2 || v40 != v41 >> 1)
  {
    v25 = sub_1CFE30DF4();
    swift_allocError();
    v27 = v26;
    sub_1CFDCB7AC(0);
    *v27 = &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue;
    sub_1CFE30F74();
    sub_1CFE30DD4();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v20 + 8))(v16, v13);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v42 = v24;
  if (v24)
  {
    v43 = 1;
    sub_1CFDE7A78();
    sub_1CFE30F64();
    (*(v19 + 8))(v18, v32);
  }

  else
  {
    v43 = 0;
    sub_1CFDE7ACC();
    sub_1CFE30F64();
    (*(v31 + 8))(v11, v30);
  }

  (*(v20 + 8))(v16, v13);
  swift_unknownObjectRelease();
  *v21 = v42 & 1;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t SleepingSampleDataTypeFeatureStatus.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1CFDE7B74(v2, v3);
}

uint64_t SleepingSampleDataTypeFeatureStatus.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1CFDE7B84(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

_BYTE *SleepingSampleDataTypeFeatureStatus.init(dataType:state:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t sub_1CFDE67D0()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x6570795461746164;
  }
}

uint64_t sub_1CFDE6808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v6 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

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

uint64_t sub_1CFDE68E0(uint64_t a1)
{
  v2 = sub_1CFDE7C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE691C(uint64_t a1)
{
  v2 = sub_1CFDE7C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleDataTypeFeatureStatus.encode(to:)(void *a1)
{
  sub_1CFDE7D40(0, &qword_1EC509940, sub_1CFDE7C44, &type metadata for SleepingSampleDataTypeFeatureStatus.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v15 = v1[16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7C44();
  sub_1CFE311A4();
  v18 = v9;
  v17 = 0;
  sub_1CFDE7C98();
  v10 = v12[1];
  sub_1CFE31054();
  if (!v10)
  {
    v13 = v12[0];
    v14 = v15;
    v16 = 1;
    sub_1CFDE7B74(v12[0], v15);
    sub_1CFDE7CEC();
    sub_1CFE31054();
    sub_1CFDE7B84(v13, v14);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SleepingSampleDataTypeFeatureStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1CFDE7D40(0, &qword_1EC509960, sub_1CFDE7C44, &type metadata for SleepingSampleDataTypeFeatureStatus.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7C44();
  sub_1CFE31194();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    v21 = 0;
    sub_1CFDE7DA8();
    sub_1CFE30FD4();
    v12 = v22;
    v20 = 1;
    sub_1CFDE7DFC();
    sub_1CFE30FD4();
    (*(v10 + 8))(v9, v5);
    v14 = v18;
    v15 = v19;
    *v11 = v12;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1CFDE6D90(id a1@<X1>, unsigned __int8 *a2@<X0>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = *a2;
  v6 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v7 = sub_1CFE30A84();

  v8 = *(v7 + 16);
  v54 = v5;
  if (v8)
  {
    v50 = v3;
    v51 = a3;
    v9 = 0;
    v10 = v7 + 32;
    v53 = v8 - 1;
    v52 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v11 = v9;
    while (v11 < *(v7 + 16))
    {
      v12 = *(v10 + 8 * v11);
      v9 = v11 + 1;
      v55 = v5;
      v13 = v12;
      if (sub_1CFDE7258(&v55, v13))
      {
        v14 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFDC48A8(0, *(v52 + 16) + 1, 1);
          v14 = v56;
        }

        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1CFDC48A8((v16 > 1), v17 + 1, 1);
          v14 = v56;
        }

        *(v14 + 16) = v17 + 1;
        v52 = v14;
        *(v14 + 8 * v17 + 32) = v13;
        if (v53 == v11)
        {
LABEL_13:
          v18 = 0;
          v19 = MEMORY[0x1E69E7CC0];
LABEL_14:
          v20 = v18;
          while (1)
          {
            if (v20 >= *(v7 + 16))
            {
              goto LABEL_54;
            }

            v21 = *(v10 + 8 * v20);
            v22 = sub_1CFE30924();
            v24 = v23;
            if (v22 == sub_1CFE30924() && v24 == v25)
            {
              goto LABEL_36;
            }

            v27 = sub_1CFE310B4();
            v28 = v21;

            if (v27)
            {
              goto LABEL_34;
            }

            v29 = sub_1CFE30924();
            v31 = v30;
            if (v29 == sub_1CFE30924() && v31 == v32)
            {
              break;
            }

            v33 = sub_1CFE310B4();

            if (v33)
            {
              goto LABEL_34;
            }

            v34 = sub_1CFE30924();
            v36 = v35;
            if (v34 == sub_1CFE30924() && v36 == v37)
            {
              break;
            }

            v38 = sub_1CFE310B4();

            if (v38)
            {
LABEL_34:

LABEL_37:
              v44 = 1;
LABEL_38:
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v45 = v19;
              }

              else
              {
                v45 = sub_1CFDDDADC(0, *(v19 + 2) + 1, 1, v19);
              }

              v47 = *(v45 + 2);
              v46 = *(v45 + 3);
              if (v47 >= v46 >> 1)
              {
                v45 = sub_1CFDDDADC((v46 > 1), v47 + 1, 1, v45);
              }

              v18 = v20 + 1;
              *(v45 + 2) = v47 + 1;
              v19 = v45;
              v45[v47 + 32] = v44;
              if (v53 == v20)
              {
LABEL_45:
                v3 = v50;
                a3 = v51;
                v48 = v52;
                goto LABEL_47;
              }

              goto LABEL_14;
            }

            v39 = sub_1CFE30924();
            v41 = v40;
            if (v39 == sub_1CFE30924() && v41 == v42)
            {

              if (v54 >= 4)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v43 = sub_1CFE310B4();

              if ((v43 & 1) != 0 && v54 > 3)
              {
LABEL_33:
                v44 = 0;
                goto LABEL_38;
              }
            }

            if (v8 == ++v20)
            {
              goto LABEL_45;
            }
          }

LABEL_36:

          goto LABEL_37;
        }

        goto LABEL_3;
      }

      ++v11;
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
LABEL_47:

    if (*(v48 + 16))
    {

      v49 = 0;
    }

    else
    {

      if (*(v19 + 2))
      {
        v48 = v19[32];

        v49 = 1;
      }

      else
      {

        v48 = 0;
        v49 = 2;
      }
    }

    *a3 = v54;
    *(a3 + 8) = v48;
    *(a3 + 16) = v49;
  }
}

BOOL sub_1CFDE7258(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = sub_1CFE30924();
  v5 = v4;
  if (v3 == sub_1CFE30924() && v5 == v6)
  {
    goto LABEL_13;
  }

  v8 = sub_1CFE310B4();

  if (v8)
  {
    return 1;
  }

  v9 = sub_1CFE30924();
  v11 = v10;
  if (v9 == sub_1CFE30924() && v11 == v12)
  {
LABEL_13:

    return 1;
  }

  v14 = sub_1CFE310B4();

  if (v14)
  {
    return 1;
  }

  v15 = sub_1CFE30924();
  v17 = v16;
  if (v15 == sub_1CFE30924() && v17 == v18)
  {
    goto LABEL_13;
  }

  v20 = sub_1CFE310B4();

  if (v20)
  {
    return 1;
  }

  v21 = sub_1CFE30924();
  v23 = v22;
  if (v21 == sub_1CFE30924() && v23 == v24)
  {
    goto LABEL_13;
  }

  v25 = sub_1CFE310B4();

  if (v25)
  {
    return 1;
  }

  v26 = sub_1CFE30924();
  v28 = v27;
  if (v26 == sub_1CFE30924() && v28 == v29)
  {
    goto LABEL_13;
  }

  v30 = sub_1CFE310B4();

  if (v30)
  {
    return 1;
  }

  v31 = sub_1CFE30924();
  v33 = v32;
  if (v31 == sub_1CFE30924() && v33 == v34)
  {
    goto LABEL_13;
  }

  v35 = sub_1CFE310B4();

  if (v35)
  {
    return 1;
  }

  v36 = sub_1CFE30924();
  v38 = v37;
  if (v36 == sub_1CFE30924() && v38 == v39)
  {
    goto LABEL_13;
  }

  v40 = sub_1CFE310B4();

  if (v40)
  {
    return 1;
  }

  v41 = sub_1CFE30924();
  v43 = v42;
  if (v41 == sub_1CFE30924() && v43 == v44)
  {
    goto LABEL_31;
  }

  v45 = sub_1CFE310B4();

  if (v45)
  {
    return v2 < 4;
  }

  v46 = sub_1CFE30924();
  v48 = v47;
  if (v46 == sub_1CFE30924() && v48 == v49)
  {
LABEL_31:

    return v2 < 4;
  }

  v50 = sub_1CFE310B4();

  result = 0;
  if (v50)
  {
    return v2 < 4;
  }

  return result;
}

BOOL _s13HealthBalance35SleepingSampleDataTypeFeatureStatusV5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 == 1)
    {
      if (v5 == 1)
      {
        sub_1CFDE7B84(*a1, 1);
        sub_1CFDE7B84(v4, 1);
        return ((v4 ^ v2) & 1) == 0;
      }

      goto LABEL_11;
    }

    if (v5 != 2 || v4 != 0)
    {
LABEL_11:
      sub_1CFDE7B74(v4, v5);
      sub_1CFDE7B84(v2, v3);
      sub_1CFDE7B84(v4, v5);
      return 0;
    }

    sub_1CFDE7B84(*a1, 2);
    sub_1CFDE7B84(0, 2);
    return 1;
  }

  else
  {
    if (*(a2 + 8))
    {

      goto LABEL_11;
    }

    sub_1CFDE7B74(*a2, 0);
    sub_1CFDE7B74(v2, 0);
    v8 = sub_1CFDD41D4(v2, v4);
    sub_1CFDE7B84(v2, 0);
    sub_1CFDE7B84(v4, 0);
    return v8 & 1;
  }
}

unint64_t sub_1CFDE7768()
{
  result = qword_1EC509868;
  if (!qword_1EC509868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509868);
  }

  return result;
}

unint64_t sub_1CFDE77BC()
{
  result = qword_1EC509878;
  if (!qword_1EC509878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509878);
  }

  return result;
}

unint64_t sub_1CFDE7810()
{
  result = qword_1EC509888;
  if (!qword_1EC509888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509888);
  }

  return result;
}

unint64_t sub_1CFDE7864()
{
  result = qword_1EC509898;
  if (!qword_1EC509898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509898);
  }

  return result;
}

unint64_t sub_1CFDE78B8()
{
  result = qword_1EC5098A0;
  if (!qword_1EC5098A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5098A0);
  }

  return result;
}

void sub_1CFDE790C(uint64_t a1)
{
  if (!qword_1EC5098A8)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    v1 = sub_1CFE30AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC5098A8);
    }
  }
}

unint64_t sub_1CFDE7964()
{
  result = qword_1EC5098E0;
  if (!qword_1EC5098E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5098E0);
  }

  return result;
}

uint64_t sub_1CFDE79B8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDE790C(255);
    sub_1CFDE7A34(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDE7A34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFDE7A78()
{
  result = qword_1EC509900;
  if (!qword_1EC509900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509900);
  }

  return result;
}

unint64_t sub_1CFDE7ACC()
{
  result = qword_1EC509910;
  if (!qword_1EC509910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509910);
  }

  return result;
}

unint64_t sub_1CFDE7B20()
{
  result = qword_1EC509920;
  if (!qword_1EC509920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509920);
  }

  return result;
}

uint64_t sub_1CFDE7B74(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_1CFDE7B84(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

BOOL _s13HealthBalance35SleepingSampleDataTypeFeatureStatusV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  if (qword_1CFE357C0[*a1] == qword_1CFE357C0[*a2])
  {
    v2 = *(a2 + 1);
    v3 = a1[16];
    v4 = a2[16];
    v9 = *(a1 + 1);
    v10 = v3;
    v7 = v2;
    v8 = v4;
    sub_1CFDE7B74(v9, v3);
    sub_1CFDE7B74(v2, v4);
    v5 = _s13HealthBalance35SleepingSampleDataTypeFeatureStatusV5StateO2eeoiySbAE_AEtFZ_0(&v9, &v7);
    sub_1CFDE7B84(v7, v8);
    sub_1CFDE7B84(v9, v10);
  }

  else
  {
    return 0;
  }

  return v5;
}

unint64_t sub_1CFDE7C44()
{
  result = qword_1EC509948;
  if (!qword_1EC509948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509948);
  }

  return result;
}

unint64_t sub_1CFDE7C98()
{
  result = qword_1EC509950;
  if (!qword_1EC509950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509950);
  }

  return result;
}

unint64_t sub_1CFDE7CEC()
{
  result = qword_1EC509958;
  if (!qword_1EC509958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509958);
  }

  return result;
}

void sub_1CFDE7D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1CFDE7DA8()
{
  result = qword_1EC509968;
  if (!qword_1EC509968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509968);
  }

  return result;
}

unint64_t sub_1CFDE7DFC()
{
  result = qword_1EC509970;
  if (!qword_1EC509970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509970);
  }

  return result;
}

unint64_t sub_1CFDE7E54()
{
  result = qword_1EC509978;
  if (!qword_1EC509978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509978);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HealthBalance35SleepingSampleDataTypeFeatureStatusV5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFDE7ED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CFDE7F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFDE7F74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CFDE7FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFDE8000(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1CFDE80BC()
{
  result = qword_1EC509980;
  if (!qword_1EC509980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509980);
  }

  return result;
}

unint64_t sub_1CFDE8114()
{
  result = qword_1EC509988;
  if (!qword_1EC509988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509988);
  }

  return result;
}

unint64_t sub_1CFDE816C()
{
  result = qword_1EC509990;
  if (!qword_1EC509990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509990);
  }

  return result;
}

unint64_t sub_1CFDE81C4()
{
  result = qword_1EC509998;
  if (!qword_1EC509998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509998);
  }

  return result;
}

unint64_t sub_1CFDE821C()
{
  result = qword_1EC5099A0;
  if (!qword_1EC5099A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099A0);
  }

  return result;
}

unint64_t sub_1CFDE8274()
{
  result = qword_1EC5099A8;
  if (!qword_1EC5099A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099A8);
  }

  return result;
}

unint64_t sub_1CFDE82CC()
{
  result = qword_1EC5099B0;
  if (!qword_1EC5099B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099B0);
  }

  return result;
}

unint64_t sub_1CFDE8324()
{
  result = qword_1EC5099B8;
  if (!qword_1EC5099B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099B8);
  }

  return result;
}

unint64_t sub_1CFDE837C()
{
  result = qword_1EC5099C0;
  if (!qword_1EC5099C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099C0);
  }

  return result;
}

unint64_t sub_1CFDE83D4()
{
  result = qword_1EC5099C8;
  if (!qword_1EC5099C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099C8);
  }

  return result;
}

unint64_t sub_1CFDE842C()
{
  result = qword_1EC5099D0;
  if (!qword_1EC5099D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099D0);
  }

  return result;
}

unint64_t sub_1CFDE8484()
{
  result = qword_1EC5099D8;
  if (!qword_1EC5099D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099D8);
  }

  return result;
}

unint64_t sub_1CFDE84DC()
{
  result = qword_1EC5099E0;
  if (!qword_1EC5099E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099E0);
  }

  return result;
}

unint64_t sub_1CFDE8534()
{
  result = qword_1EC5099E8;
  if (!qword_1EC5099E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099E8);
  }

  return result;
}

unint64_t sub_1CFDE858C()
{
  result = qword_1EC5099F0;
  if (!qword_1EC5099F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099F0);
  }

  return result;
}

unint64_t sub_1CFDE85E4()
{
  result = qword_1EC5099F8;
  if (!qword_1EC5099F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099F8);
  }

  return result;
}

unint64_t sub_1CFDE863C()
{
  result = qword_1EC509A00;
  if (!qword_1EC509A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A00);
  }

  return result;
}

unint64_t sub_1CFDE8694()
{
  result = qword_1EC509A08;
  if (!qword_1EC509A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A08);
  }

  return result;
}

unint64_t sub_1CFDE86EC()
{
  result = qword_1EC509A10;
  if (!qword_1EC509A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A10);
  }

  return result;
}

unint64_t sub_1CFDE8744()
{
  result = qword_1EC509A18;
  if (!qword_1EC509A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A18);
  }

  return result;
}

unint64_t sub_1CFDE879C()
{
  result = qword_1EC509A20;
  if (!qword_1EC509A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A20);
  }

  return result;
}

uint64_t sub_1CFDE87F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000022 && 0x80000001CFE391E0 == a2;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFE39210 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDE895C(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7AD0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TrainingLoadSummaryQuery.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar;
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TrainingLoadSummaryQuery.__allocating_init(morningIndexRange:gregorianCalendar:typeOfDataRequested:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  v14 = *a3;
  v15 = &v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  *v15 = 0;
  v15[1] = 0;
  *&v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
  sub_1CFDE895C(a1, &v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange]);
  v16 = OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar;
  v17 = sub_1CFE304B4();
  v18 = *(v17 - 8);
  v19 = &v13[v16];
  v20 = a2;
  (*(v18 + 16))(v19, a2, v17);
  v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested] = v14;
  v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults] = a4;
  *v15 = a5;
  v15[1] = a6;
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);

  v21 = sub_1CFE30A74();
  v26.receiver = v13;
  v26.super_class = v7;
  v22 = objc_msgSendSuper2(&v26, sel_initWithQueryDescriptors_, v21);

  (*(v18 + 8))(v20, v17);
  sub_1CFDA7A74(a1);
  return v22;
}

id TrainingLoadSummaryQuery.init(morningIndexRange:gregorianCalendar:typeOfDataRequested:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v14 = *a3;
  v15 = &v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  *v15 = 0;
  v15[1] = 0;
  *&v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
  sub_1CFDE895C(a1, &v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange]);
  v16 = OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar;
  v17 = sub_1CFE304B4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v7[v16], a2, v17);
  v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested] = v14;
  v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults] = a4;
  *v15 = a5;
  v15[1] = a6;
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);

  v19 = sub_1CFE30A74();
  v24.receiver = v7;
  v24.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v24, sel_initWithQueryDescriptors_, v19);

  (*(v18 + 8))(a2, v17);
  sub_1CFDA7A74(a1);
  return v20;
}

Swift::Void __swiftcall TrainingLoadSummaryQuery.queue_populateConfiguration(_:)(HKQueryServerConfiguration *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_1CFDAA398(0, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  sub_1CFDAA398(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v4);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v25.receiver = v1;
  v25.super_class = ObjectType;
  [(HKQueryServerConfiguration *)&v25 queue_populateConfiguration:a1];
  type metadata accessor for TrainingLoadDaySummaryQueryConfiguration(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar;
    v16 = sub_1CFE304B4();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v12, &v1[v15], v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v18 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
    swift_beginAccess();
    v19 = a1;
    sub_1CFDE9124(v12, &v14[v18], &qword_1EDC32910, MEMORY[0x1E6969AE8]);
    swift_endAccess();
    sub_1CFDE895C(&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange], v8);
    sub_1CFDA7AD0(0);
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
    swift_beginAccess();
    sub_1CFDE9124(v8, &v14[v21], &qword_1EDC320D8, sub_1CFDA7AD0);
    swift_endAccess();
    v22 = v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested];
    v23 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
    swift_beginAccess();
    v14[v23] = v22;
    [v14 setShouldDeactivateAfterInitialResults_];
  }
}

uint64_t sub_1CFDE9124(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDAA398(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t TrainingLoadSummaryQuery.queue_deliverError(_:)(void *a1)
{
  v3 = sub_1CFE30634();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30654();
  result = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  if (v14)
  {
    v25 = v11;
    v15 = *&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler + 8];

    v16 = [v1 clientQueue];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      v18[2] = v14;
      v18[3] = v15;
      v18[4] = v1;
      v18[5] = a1;
      aBlock[4] = sub_1CFDE9570;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFDAA484;
      aBlock[3] = &block_descriptor_0;
      v19 = _Block_copy(aBlock);
      v24 = v8;
      v20 = v19;
      sub_1CFDA81D0(v14, v15);
      v21 = v1;
      v22 = a1;
      sub_1CFE30644();
      v26 = MEMORY[0x1E69E7CC0];
      sub_1CFDA77F0(qword_1EDC32128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1CFDAA398(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1CFDAA3FC();
      sub_1CFE30D04();
      MEMORY[0x1D38762F0](0, v13, v7, v20);
      _Block_release(v20);

      sub_1CFDAC3D4(v14, v15);
      (*(v4 + 8))(v7, v3);
      (*(v25 + 8))(v13, v24);
    }

    else
    {

      return sub_1CFDAC3D4(v14, v15);
    }
  }

  return result;
}

uint64_t TrainingLoadSummaryQuery.queue_queryDidDeactivate(_:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CFE30334();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_queue_queryDidDeactivate_, v3);

  v4 = &v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  v5 = *&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  v6 = *&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  return sub_1CFDAC3D4(v5, v6);
}

void static TrainingLoadSummaryQuery.configureClientInterface(_:)(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v27.receiver = ObjCClassFromMetadata;
  v27.super_class = v4;
  v20 = a1;
  objc_msgSendSuper2(&v27, sel_configureClientInterface_, a1);
  sub_1CFDE9D54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFE357F0;
  *(inited + 32) = sub_1CFDA6E64(0, &qword_1EDC324F0, 0x1E695DEC8);
  sub_1CFDE9DF4(0);
  *(inited + 40) = v6;
  *&v24 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1D3876120]();
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    sub_1CFE30AC4();

    MEMORY[0x1D3876120](v7);
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFE30A94();
    }

    swift_getObjCClassFromMetadata();
    sub_1CFE30AC4();
    v8 = v24;
    if (!(v24 >> 62))
    {
      v9 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }

      goto LABEL_6;
    }

    v9 = sub_1CFE30EE4();
    if (!v9)
    {
      break;
    }

LABEL_6:
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1D3876480](v10, v8);
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      *&v24 = v12;
      if (swift_dynamicCast())
      {
        if (*(&v22 + 1))
        {
          v24 = v21;
          v25 = v22;
          v26 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1CFDDDBE8(0, *(v11 + 2) + 1, 1, v11);
          }

          v15 = *(v11 + 2);
          v14 = *(v11 + 3);
          if (v15 >= v14 >> 1)
          {
            v11 = sub_1CFDDDBE8((v14 > 1), v15 + 1, 1, v11);
          }

          *(v11 + 2) = v15 + 1;
          v16 = &v11[40 * v15];
          v17 = v24;
          v18 = v25;
          *(v16 + 8) = v26;
          *(v16 + 2) = v17;
          *(v16 + 3) = v18;
          goto LABEL_9;
        }
      }

      else
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
      }

      sub_1CFDE9EF8(&v21);
LABEL_9:
      ++v10;
      if (v13 == v9)
      {
        goto LABEL_27;
      }
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v12 = swift_unknownObjectRetain();
    v13 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1CFE30A94();
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_27:

  sub_1CFDEA81C(v11);

  v19 = sub_1CFE30B74();

  [v20 setClasses:v19 forSelector:sel_client_deliverTrainingLoadSampleDaySummaries_queryUUID_ argumentIndex:0 ofReply:0];
}

id TrainingLoadSummaryQuery.__allocating_init(queryDescriptors:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);
  v3 = sub_1CFE30A74();

  v4 = [v2 initWithQueryDescriptors_];

  return v4;
}

id TrainingLoadSummaryQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFDE9D54()
{
  v0 = sub_1CFDEAB34();
  if (swift_isClassType() && v0)
  {
    sub_1CFDEAB8C(0, &qword_1EC509A48, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {
    sub_1CFDAA398(0, &unk_1EDC324D0, sub_1CFDEAB34, MEMORY[0x1E69E6F90]);
  }
}

void sub_1CFDE9DF4(uint64_t a1)
{
  if (!qword_1EDC31E88)
  {
    type metadata accessor for TrainingLoadSampleDaySummary(255);
    sub_1CFDA77F0(&qword_1EDC31F50, type metadata accessor for TrainingLoadSampleDaySummary, &protocol conformance descriptor for TrainingLoadSampleDaySummary);
    sub_1CFDA77F0(&qword_1EDC31F68, type metadata accessor for TrainingLoadSampleDaySummary, &protocol conformance descriptor for TrainingLoadSampleDaySummary);
    sub_1CFDA77F0(&qword_1EDC31F60, type metadata accessor for TrainingLoadSampleDaySummary, &protocol conformance descriptor for TrainingLoadSampleDaySummary);
    v1 = sub_1CFE306D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC31E88);
    }
  }
}

uint64_t sub_1CFDE9EF8(uint64_t a1)
{
  sub_1CFDEAB8C(0, &unk_1EC509A28, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDE9F78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1CFE30D34();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1CFDEAA80(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1D3876400](v16, a2);
      sub_1CFDC3BCC(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1CFDC3BCC(a2);
    sub_1CFDEAA80(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1CFDEAA80(a2, v16);
    v15 = *v3;
    sub_1CFDEA318(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1CFDEA0C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1CFDEAADC();
  result = sub_1CFE30D74();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = sub_1CFE30D34();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CFDEA318(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CFDEA0C4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1CFDEA490();
      goto LABEL_12;
    }

    sub_1CFDEA5FC(v7 + 1);
  }

  v9 = *v3;
  result = sub_1CFE30D34();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1CFDEAA80(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x1D3876400](v19, v6);
      result = sub_1CFDC3BCC(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CFE310E4();
  __break(1u);
  return result;
}

void *sub_1CFDEA490()
{
  v1 = v0;
  sub_1CFDEAADC();
  v2 = *v0;
  v3 = sub_1CFE30D64();
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
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_1CFDEAA80(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1CFDEA5FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1CFDEAADC();
  result = sub_1CFE30D74();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_1CFDEAA80(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = sub_1CFE30D34();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

uint64_t sub_1CFDEA81C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3876240](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1CFDEAA80(v4, v5);
      sub_1CFDE9F78(v6, v5);
      sub_1CFDC3BCC(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadSummaryQuery(uint64_t a1)
{
  result = qword_1EDC32008;
  if (!qword_1EDC32008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDEA8FC(uint64_t a1)
{
  sub_1CFDA7AD0(319);
  if (v1 <= 0x3F)
  {
    sub_1CFE304B4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFDEAA1C(uint64_t a1, uint64_t a2)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  (*(*(SampleDaySummary - 8) + 32))(a2, a1, SampleDaySummary);
  return a2;
}

void sub_1CFDEAADC()
{
  if (!qword_1EC509A38)
  {
    v0 = sub_1CFE30D94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509A38);
    }
  }
}

unint64_t sub_1CFDEAB34()
{
  result = qword_1EDC324E0;
  if (!qword_1EDC324E0)
  {
    sub_1CFDA6E64(255, &qword_1EDC324E8, 0x1E69E58C0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC324E0);
  }

  return result;
}

void sub_1CFDEAB8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1CFDEABF8(uint64_t a1, uint64_t a2)
{
  sub_1CFDA68BC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GregorianDayRange.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GregorianDayRange(0) + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t GregorianDayRange.description.getter()
{
  v0 = sub_1CFE304E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1CFE30DB4();

  v11 = 0xD000000000000021;
  v12 = 0x80000001CFE39440;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1CFE307E4();
  sub_1CFE30EB4();
  MEMORY[0x1D3876060](3026478, 0xE300000000000000);
  sub_1CFDA68BC(0);
  sub_1CFE30EB4();
  MEMORY[0x1D3876060](v9, v10);

  MEMORY[0x1D3876060](0x203A7A74202CLL, 0xE600000000000000);
  type metadata accessor for GregorianDayRange(0);
  sub_1CFE30494();
  v5 = sub_1CFE304D4();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x1D3876060](v5, v7);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return v11;
}

uint64_t static GregorianDayRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if (sub_1CFE308B4())
  {
    sub_1CFDA68BC(0);
    if (sub_1CFE308B4())
    {
      type metadata accessor for GregorianDayRange(0);

      JUMPOUT(0x1D3875B20);
    }
  }

  return 0;
}

uint64_t sub_1CFDEB018()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x7865646E49796164;
  }
}

uint64_t sub_1CFDEB064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E49796164 && a2 == 0xED000065676E6152;
  if (v6 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFE38FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

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

uint64_t sub_1CFDEB150(uint64_t a1)
{
  v2 = sub_1CFDEB3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDEB18C(uint64_t a1)
{
  v2 = sub_1CFDEB3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GregorianDayRange.encode(to:)(void *a1)
{
  sub_1CFDEBDAC(0, &qword_1EC509B10, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDEB3E0();
  sub_1CFE311A4();
  v10[15] = 0;
  sub_1CFDA68BC(0);
  sub_1CFDEBE10(&qword_1EC509B20, &qword_1EDC318C8, MEMORY[0x1E696B420], MEMORY[0x1E69E5F98]);
  sub_1CFE31054();
  if (!v1)
  {
    type metadata accessor for GregorianDayRange(0);
    v10[14] = 1;
    sub_1CFE304B4();
    sub_1CFDA7838(&qword_1EDC31990, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF0]);
    sub_1CFE31054();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1CFDEB3E0()
{
  result = qword_1EC509B18;
  if (!qword_1EC509B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B18);
  }

  return result;
}

uint64_t GregorianDayRange.hash(into:)(uint64_t a1)
{
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA68BC(0);
  sub_1CFE30834();
  type metadata accessor for GregorianDayRange(0);
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  return sub_1CFE30834();
}

uint64_t GregorianDayRange.hashValue.getter()
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA68BC(0);
  sub_1CFE30834();
  type metadata accessor for GregorianDayRange(0);
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  return sub_1CFE31184();
}

uint64_t GregorianDayRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1CFE304B4();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA68BC(0);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v29 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEBDAC(0, &qword_1EC509B28, MEMORY[0x1E69E6F48]);
  v30 = v10;
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for GregorianDayRange(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDEB3E0();
  sub_1CFE31194();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = a1;
  v18 = v17;
  v20 = v26;
  v19 = v27;
  v32 = 0;
  sub_1CFDEBE10(&qword_1EC509B30, &qword_1EDC32108, MEMORY[0x1E696B440], MEMORY[0x1E69E5FC0]);
  v21 = v29;
  sub_1CFE30FD4();
  sub_1CFDA6444(v21, v18, sub_1CFDA68BC);
  v31 = 1;
  sub_1CFDA7838(&qword_1EDC32478, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B08]);
  sub_1CFE30FD4();
  (*(v20 + 8))(v13, v30);
  (*(v24 + 32))(v18 + *(v14 + 20), v6, v19);
  sub_1CFDA699C(v18, v25, type metadata accessor for GregorianDayRange);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_1CFDEBEA0(v18, type metadata accessor for GregorianDayRange);
}

uint64_t sub_1CFDEBA74()
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA68BC(0);
  sub_1CFE30834();
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  return sub_1CFE31184();
}

uint64_t sub_1CFDEBB90(uint64_t a1)
{
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA68BC(0);
  sub_1CFE30834();
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  return sub_1CFE30834();
}

uint64_t sub_1CFDEBC94(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  sub_1CFDA68BC(0);
  sub_1CFE30834();
  sub_1CFE304B4();
  sub_1CFDA7838(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  return sub_1CFE31184();
}

void sub_1CFDEBDAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDEB3E0();
    v7 = a3(a1, &type metadata for GregorianDayRange.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFDEBE10(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA68BC(255);
    sub_1CFDA7838(a2, MEMORY[0x1E696B418], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDEBEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDEBF34(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA7838(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if (sub_1CFE308B4())
  {
    sub_1CFDA68BC(0);
    if (sub_1CFE308B4())
    {

      JUMPOUT(0x1D3875B20);
    }
  }

  return 0;
}

uint64_t static GregorianDayRange.previousWeek(through:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  v4 = sub_1CFE304B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30314();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE307E4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v20, v9);
  (*(v5 + 16))(v8, a2, v4);
  sub_1CFE30784();
  static GregorianDayRange.previousWeek(through:gregorianCalendar:)(v18, a2, v21);
  return (*(v15 + 8))(v18, v14);
}

{
  v35 = a2;
  v36 = a3;
  sub_1CFDA7460(0);
  v34 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v33 - v10;
  v12 = sub_1CFE307E4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v33 - v19;
  sub_1CFE30744();
  sub_1CFE30764();
  v21 = *(v13 + 8);
  v21(v17, v12);
  sub_1CFDA7838(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
  v33 = a1;
  result = sub_1CFE30874();
  if (result)
  {
    v23 = *(v13 + 32);
    v23(v11, v20, v12);
    v24 = v34;
    (*(v13 + 16))(&v11[*(v34 + 48)], v33, v12);
    sub_1CFDA699C(v11, v8, sub_1CFDA7460);
    v25 = *(v24 + 48);
    v26 = v36;
    v23(v36, v8, v12);
    v27 = &v8[v25];
    v28 = v21;
    v21(v27, v12);
    sub_1CFDA6444(v11, v8, sub_1CFDA7460);
    v29 = *(v24 + 48);
    sub_1CFDA68BC(0);
    v23(&v26[*(v30 + 36)], &v8[v29], v12);
    v28(v8, v12);
    v31 = *(type metadata accessor for GregorianDayRange(0) + 20);
    v32 = sub_1CFE304B4();
    return (*(*(v32 - 8) + 16))(&v26[v31], v35, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static GregorianDayRange.today(containing:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = a2;
  v41 = a3;
  sub_1CFDA7460(0);
  v40 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v38 = &v36 - v9;
  v10 = sub_1CFE304B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFE30314();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CFE307E4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v42, v15);
  v25 = *(v11 + 16);
  v42 = v10;
  v39 = v11 + 16;
  v25(v14, v43, v10);
  sub_1CFE30784();
  sub_1CFDA7838(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
  result = sub_1CFE30874();
  if (result)
  {
    v27 = v38;
    (*(v21 + 16))(v38, v24, v20);
    v28 = v40;
    v29 = *(v21 + 32);
    v29(v27 + *(v40 + 48), v24, v20);
    sub_1CFDA699C(v27, v7, sub_1CFDA7460);
    v30 = *(v28 + 48);
    v37 = v25;
    v31 = v41;
    v29(v41, v7, v20);
    v32 = *(v21 + 8);
    v32(&v7[v30], v20);
    sub_1CFDA6444(v27, v7, sub_1CFDA7460);
    v33 = *(v28 + 48);
    sub_1CFDA68BC(0);
    v29(v31 + *(v34 + 36), &v7[v33], v20);
    v32(v7, v20);
    v35 = type metadata accessor for GregorianDayRange(0);
    return v37(v31 + *(v35 + 20), v43, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GregorianDayRange.sleepDayInterval.getter()
{
  v1 = v0 + *(type metadata accessor for GregorianDayRange(0) + 20);

  return MEMORY[0x1EEDC77A8](v1);
}

void sub_1CFDEC9EC(uint64_t a1)
{
  sub_1CFDA68BC(319);
  if (v1 <= 0x3F)
  {
    sub_1CFE304B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFDECA84()
{
  result = qword_1EC509B40;
  if (!qword_1EC509B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B40);
  }

  return result;
}

unint64_t sub_1CFDECADC()
{
  result = qword_1EC509B48;
  if (!qword_1EC509B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B48);
  }

  return result;
}

unint64_t sub_1CFDECB34()
{
  result = qword_1EC509B50;
  if (!qword_1EC509B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B50);
  }

  return result;
}

id HKQuantityRange.init(durationBetween:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  result = [v10 minuteUnit];
  v12 = 60 * a1;
  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = __OFADD__(v12, a2);
  v14 = v12 + a2;
  if (v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = result;
  v16 = [v9 quantityWithUnit:result doubleValue:v14];

  result = [v10 minuteUnit];
  v17 = 60 * a3;
  if ((a3 * 60) >> 64 != (60 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = __OFADD__(v17, a4);
  v18 = v17 + a4;
  if (!v13)
  {
    v19 = result;
    v20 = [v9 quantityWithUnit:result doubleValue:v18];

    v21 = [v8 initWithMinimum:v16 maximum:v20 isMinimumInclusive:1 isMaximumInclusive:1];
    return v21;
  }

LABEL_9:
  __break(1u);
  return result;
}

id HKQuantityRange.init(durationBetween:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  result = [v13 secondUnit];
  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = 3600 * a1;
  if ((60 * a1 * 60) >> 64 != (3600 * a1) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = 60 * a2;
  if ((a2 * 60) >> 64 != (60 * a2) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = __OFADD__(v18, a3);
  v19 = v18 + a3;
  if (v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = result;
  v21 = [v12 quantityWithUnit:result doubleValue:v19];

  result = [v13 secondUnit];
  if ((a4 * 60) >> 64 != (60 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = 3600 * a4;
  if ((60 * a4 * 60) >> 64 != (3600 * a4) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = 60 * a5;
  if ((a5 * 60) >> 64 != (60 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = __OFADD__(v22, v23);
  v24 = v22 + v23;
  if (v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = __OFADD__(v24, a6);
  v25 = v24 + a6;
  if (!v17)
  {
    v26 = result;
    v27 = [v12 quantityWithUnit:result doubleValue:v25];

    v28 = [v29 initWithMinimum:v21 maximum:v27 isMinimumInclusive:1 isMaximumInclusive:1];
    return v28;
  }

LABEL_21:
  __break(1u);
  return result;
}