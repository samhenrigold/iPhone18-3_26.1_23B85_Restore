uint64_t SummaryView.Model.append(_:)(uint64_t a1)
{
  v52 = a1;
  v1 = sub_264E23C38();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OverviewChart.Day(0);
  MEMORY[0x28223BE20](v47);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264E23C18();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_264E238E8();
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v51 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v50 = type metadata accessor for SummaryView.Model(0);
  v23 = *(v50 + 28);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9940], v8);
  sub_264E23A98();
  v44 = v23;
  sub_264E23B08();
  v24 = *(v57 + 8);
  v57 += 8;
  v54 = v24;
  v24(v7, v56);
  v25 = v8;
  v26 = v53;
  (*(v9 + 8))(v11, v25);
  result = (*(v26 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v26 + 32))(v22, v14, v15);
    sub_264E23D98();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v28 = *(v26 + 8);
    v28(v19, v15);
    v29 = sub_264E238C8();
    v30 = v56;
    v31 = v54;
    v54(v7, v56);
    v28(v22, v15);
    v32 = v55;
    if (v29)
    {
      sub_264E23D98();
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      v28(v19, v15);
      sub_264E23D78();
      v34 = v33;
      v53 = v15;
      v36 = v48;
      v35 = v49;
      v37 = v46;
      (*(v48 + 16))(v46, v32 + v44, v49);
      v38 = v45;
      sub_264E23AF8();
      v39 = v35;
      v31 = v54;
      (*(v36 + 8))(v37, v39);
      v15 = v53;
      v31(v7, v56);
      *(v38 + *(v47 + 20)) = v34;
      sub_264DAE2D0(v38);
      v40 = v38;
      v30 = v56;
      sub_264DBD184(v40, type metadata accessor for OverviewChart.Day);
    }

    sub_264E23D98();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v28(v19, v15);
    sub_264E23D78();
    v42 = v41;
    type metadata accessor for UsageHeaderView.Model(0);
    v43 = v51;
    Calendar.fullDay(for:)(v7, v51);
    sub_264DB5838(v42, v43, 0, 1, &qword_27FFB1D90, &unk_264E268E0);
    v28(v43, v15);
    return (v31)(v7, v30);
  }

  return result;
}

void *ModelProvider.fetchDeviceRecordsFromDeviceActivity(forUserWithAltDSID:)(uint64_t a1, void *a2)
{
  v32 = a1;
  v36 = sub_264E23DD8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v37 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_264E23DF8();
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264E23EA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E23EC8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23848();
  (*(v8 + 104))(v10, *MEMORY[0x277CC5840], v7);

  sub_264E23EB8();
  v15 = v34;
  v16 = sub_264E23E68();
  if (v15)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v29 = v12;
    v30 = v11;
    v17 = *(v16 + 16);
    if (v17)
    {
      v27 = 0;
      v28 = v14;
      v19 = *(v31 + 16);
      v18 = v31 + 16;
      v20 = v16 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v33 = *(v31 + 72);
      v34 = v19;
      v21 = (v31 + 8);
      v31 = v16;
      v32 = v3 + 32;
      a2 = MEMORY[0x277D84F90];
      do
      {
        v22 = v35;
        v23 = v18;
        v34(v6, v20, v35);
        sub_264E23DE8();
        (*v21)(v6, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_264DBC1A0(0, a2[2] + 1, 1, a2, &qword_27FFB2068, &qword_264E27080, MEMORY[0x277CC5770]);
        }

        v25 = a2[2];
        v24 = a2[3];
        if (v25 >= v24 >> 1)
        {
          a2 = sub_264DBC1A0((v24 > 1), v25 + 1, 1, a2, &qword_27FFB2068, &qword_264E27080, MEMORY[0x277CC5770]);
        }

        a2[2] = v25 + 1;
        (*(v3 + 32))(a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v25, v37, v36);
        v20 += v33;
        --v17;
        v18 = v23;
      }

      while (v17);

      v14 = v28;
    }

    else
    {

      a2 = MEMORY[0x277D84F90];
    }

    (*(v29 + 8))(v14, v30);
  }

  return a2;
}

uint64_t ModelProvider.refreshAndUploadLocalData(sinceDate:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264DAD8CC, 0, 0);
}

uint64_t sub_264DAD8CC()
{
  v1 = sub_264E23ED8();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_264DAD974;
  v3 = v0[2];

  return MEMORY[0x2821162C8](v3, v1);
}

uint64_t sub_264DAD974()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_264DADAF4;
  }

  else
  {

    v2 = sub_264DADA90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264DADA90()
{
  sub_264E23E18();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264DADAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264DADB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_264E23EA8();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_264E23EC8();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264DADC98, 0, 0);
}

uint64_t sub_264DADC98()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_264E238E8();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277CC5838], v3);

  sub_264E23EB8();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_264DADE08;
  v7 = v0[14];
  v8 = v0[8];
  v9 = v0[2];

  return sub_264DAB918(v7, v8, v9);
}

uint64_t sub_264DADE08()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_264DBD308;
  }

  else
  {
    v2 = sub_264DBD30C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264DADF4C(uint64_t a1)
{
  v3 = type metadata accessor for DetailChart.Hour(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2098, &qword_264E270C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-v8];
  v10 = *(type metadata accessor for DetailChart.Model(0) + 20);
  v11 = *(v1 + v10);
  v23 = a1;
  v12 = sub_264DA8FFC(sub_264DBCF90, v22, v11, type metadata accessor for DetailChart.Hour);
  if ((v13 & 1) == 0)
  {
    v18 = v12;
    v19 = *(a1 + *(v3 + 20));
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_264E15DF8(v11);
      v11 = result;
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v18 < v11[2])
        {
          v20 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18;
          *(v20 + *(v3 + 20)) = v19 + *(v20 + *(v3 + 20));
LABEL_11:
          *(v1 + v10) = v11;
          return result;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x28223BE20](v12);
  *&v22[-16] = a1;
  result = sub_264DA8FFC(sub_264DBCFC0, &v22[-32], v11, type metadata accessor for DetailChart.Hour);
  if (v15)
  {
    sub_264DBD27C(a1, v6, type metadata accessor for DetailChart.Hour);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_4:
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        v11 = sub_264DBC1A0((v16 > 1), v17 + 1, 1, v11, &qword_27FFB1BC8, &unk_264E26650, type metadata accessor for DetailChart.Hour);
      }

      v11[2] = v17 + 1;
      result = sub_264DBD214(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, type metadata accessor for DetailChart.Hour);
      goto LABEL_11;
    }

LABEL_18:
    v11 = sub_264DBC1A0(0, v11[2] + 1, 1, v11, &qword_27FFB1BC8, &unk_264E26650, type metadata accessor for DetailChart.Hour);
    goto LABEL_4;
  }

  v21 = result;
  if (v11[2] < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    sub_264DBD27C(a1, v9, type metadata accessor for DetailChart.Hour);
    return sub_264DBCCD4(v21, v21, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_264DAE2D0(uint64_t a1)
{
  v3 = type metadata accessor for OverviewChart.Day(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2070, &qword_264E27088);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-v8];
  v10 = *(type metadata accessor for OverviewChart.Model(0) + 20);
  v11 = *(v1 + v10);
  v23 = a1;
  v12 = sub_264DA8FFC(sub_264D915F8, v22, v11, type metadata accessor for OverviewChart.Day);
  if ((v13 & 1) == 0)
  {
    v18 = v12;
    v19 = *(a1 + *(v3 + 20));
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_264E15D94(v11);
      v11 = result;
      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v18 < v11[2])
        {
          v20 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18;
          *(v20 + *(v3 + 20)) = v19 + *(v20 + *(v3 + 20));
LABEL_11:
          *(v1 + v10) = v11;
          return result;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x28223BE20](v12);
  *&v22[-16] = a1;
  result = sub_264DA8FFC(sub_264DBC744, &v22[-32], v11, type metadata accessor for OverviewChart.Day);
  if (v15)
  {
    sub_264DBD27C(a1, v6, type metadata accessor for OverviewChart.Day);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_4:
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        v11 = sub_264DBC1A0((v16 > 1), v17 + 1, 1, v11, &qword_27FFB1BD0, &unk_264E27090, type metadata accessor for OverviewChart.Day);
      }

      v11[2] = v17 + 1;
      result = sub_264DBD214(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, type metadata accessor for OverviewChart.Day);
      goto LABEL_11;
    }

LABEL_18:
    v11 = sub_264DBC1A0(0, v11[2] + 1, 1, v11, &qword_27FFB1BD0, &unk_264E27090, type metadata accessor for OverviewChart.Day);
    goto LABEL_4;
  }

  v21 = result;
  if (v11[2] < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    sub_264DBD27C(a1, v9, type metadata accessor for OverviewChart.Day);
    return sub_264DBCA74(v21, v21, v9);
  }

  __break(1u);
  return result;
}

BOOL sub_264DAE654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_264DBD13C(a4, a5, a6);
  return (sub_264E25048() & 1) == 0;
}

uint64_t sub_264DAE6E4(uint64_t a1)
{
  v147 = sub_264E23CB8();
  v152 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264E23D18();
  v141 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v137 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v128 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B0, &unk_264E270E0);
  MEMORY[0x28223BE20](v9 - 8);
  v140 = &v128 - v10;
  v145 = sub_264E238E8();
  v11 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v150 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_264E23DB8();
  v13 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v143 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v144 = &v128 - v18;
  v19 = *(type metadata accessor for UsageDetailChart.Model(0) + 20);
  v139 = v1;
  v138 = v19;
  v20 = *(v1 + v19);
  v155 = a1;
  v21 = 0;
  v22 = sub_264DA8FFC(sub_264DBD094, v154, v20, type metadata accessor for UsageDetailChart.HourlyUsage);
  v132 = v4;
  v142 = a1;
  if (v23)
  {
    MEMORY[0x28223BE20](v22);
    *(&v128 - 2) = a1;
    v24 = sub_264DA8FFC(sub_264DBD0B4, (&v128 - 4), v20, type metadata accessor for UsageDetailChart.HourlyUsage);
    v25 = a1;
    v26 = v24;
    v28 = v27;
    (*(v13 + 16))(v15, v25, v153);
    sub_264E23D98();
    sub_264E23D78();
    v30 = v29;
    v31 = *(v11 + 16);
    v32 = (v11 + 8);
    v33 = (v13 + 8);
    if ((v28 & 1) == 0)
    {
      v46 = v144;
      v47 = v150;
      v148 = v26;
      v48 = v145;
      v31(v144, v150, v145);
      v49 = MEMORY[0x277D84F90];
      v149 = sub_264DEB098(MEMORY[0x277D84F90]);
      v50 = sub_264DEB098(v49);
      (*v32)(v47, v48);
      (*v33)(v15, v153);
      v51 = v151;
      *(v46 + *(v151 + 20)) = v30;
      v42 = v148;
      *(v46 + *(v51 + 24)) = v149;
      *(v46 + *(v51 + 28)) = v50;
      if (*(v20 + 16) < v42)
      {
        __break(1u);
      }

      else if ((v42 & 0x8000000000000000) == 0)
      {
        v43 = v140;
        sub_264DBD214(v144, v140, type metadata accessor for UsageDetailChart.HourlyUsage);
        sub_264DBCBA4(v42, v42, v43);
        v4 = v132;
        goto LABEL_15;
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      result = sub_264E25498();
      __break(1u);
      return result;
    }

    v129 = 0;
    v35 = v149;
    v34 = v150;
    v36 = v145;
    v31(v149, v150, v145);
    v37 = MEMORY[0x277D84F90];
    v38 = sub_264DEB098(MEMORY[0x277D84F90]);
    v39 = sub_264DEB098(v37);
    (*v32)(v34, v36);
    (*v33)(v15, v153);
    v40 = v151;
    *(v35 + *(v151 + 20)) = v30;
    *(v35 + *(v40 + 24)) = v38;
    *(v35 + *(v40 + 28)) = v39;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }
  }

  else
  {
    v43 = v22;
    sub_264E23D78();
    v30 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_88;
    }

    v42 = v43;
    if ((v43 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  v20 = sub_264DBC1A0(0, *(v20 + 16) + 1, 1, v20, &qword_27FFB1B58, &qword_264E265E0, type metadata accessor for UsageDetailChart.HourlyUsage);
LABEL_4:
  v4 = v132;
  v42 = *(v20 + 16);
  v41 = *(v20 + 24);
  v43 = v42 + 1;
  v21 = v129;
  if (v42 >= v41 >> 1)
  {
    v20 = sub_264DBC1A0((v41 > 1), v42 + 1, 1, v20, &qword_27FFB1B58, &qword_264E265E0, type metadata accessor for UsageDetailChart.HourlyUsage);
  }

  *(v20 + 16) = v43;
  sub_264DBD214(v149, v20 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v42, type metadata accessor for UsageDetailChart.HourlyUsage);
  while (1)
  {
    *(v139 + v138) = v20;
LABEL_15:
    v129 = v21;
    v52 = sub_264E23DA8();
    v21 = v52;
    v53 = *(v52 + 16);
    v148 = v42;
    v153 = v53;
    if (v53)
    {
      v130 = 0;
      v54 = 0;
      v55 = *MEMORY[0x277CF9618];
      v149 = v52 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v150 = v55;
      v145 = v141 + 16;
      v144 = *MEMORY[0x277CF9610];
      v140 = *MEMORY[0x277CF9620];
      v56 = (v141 + 8);
      while (1)
      {
        if (v54 >= v21[2])
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        (*(v141 + 16))(v8, v149 + *(v141 + 72) * v54, v4);
        sub_264E23CD8();
        v20 = sub_264E250E8();

        v57 = sub_264E25108();
        v59 = v58;
        v61 = sub_264E25108();
        v62 = v57;
        v43 = v60;
        if (v62 == v61 && v59 == v60)
        {
          break;
        }

        v63 = sub_264E25478();

        if (v63)
        {
          goto LABEL_22;
        }

        v64 = sub_264E25108();
        v66 = v65;
        v68 = sub_264E25108();
        v69 = v64;
        v43 = v67;
        if (v69 == v68 && v66 == v67)
        {
          break;
        }

        v70 = sub_264E25478();

        if (v70)
        {
          goto LABEL_22;
        }

        v71 = sub_264E25108();
        v43 = v72;

        if (v71 == sub_264E25108() && v43 == v73)
        {

LABEL_41:
          (*v56)(v8, v4);
LABEL_23:

          goto LABEL_24;
        }

        v74 = sub_264E25478();

        if (v74)
        {
          goto LABEL_41;
        }

        sub_264E23CC8();
        if (v75 <= 0.0)
        {
          goto LABEL_41;
        }

        v136 = sub_264E23CD8();
        v77 = v76;
        sub_264E23CC8();
        v30 = v78;
        v79 = *(v139 + v138);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_264E15DD0(v79);
        }

        if (v42 >= v79[2])
        {
          goto LABEL_94;
        }

        v80 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v133 = v79;
        v81 = v79 + v80 + *(v143 + 72) * v42;
        v82 = *(v151 + 24);
        sub_264D91628(v130, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = *&v81[v82];
        v84 = v156;
        *&v81[v82] = 0x8000000000000000;
        v135 = v77;
        v85 = sub_264D9D57C(v136, v77);
        v86 = *(v84 + 16);
        LODWORD(v134) = v87;
        v88 = (v87 & 1) == 0;
        v89 = v86 + v88;
        if (__OFADD__(v86, v88))
        {
          goto LABEL_95;
        }

        if (*(v84 + 24) >= v89)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_264DA0FDC();
          }

          v92 = v134;
        }

        else
        {
          sub_264D9E134(v89, isUniquelyReferenced_nonNull_native);
          v90 = sub_264D9D57C(v136, v135);
          v92 = v134;
          if ((v134 & 1) != (v91 & 1))
          {
            goto LABEL_97;
          }

          v85 = v90;
        }

        *&v81[v82] = v156;

        v43 = *&v81[v82];
        if (v92)
        {

          v4 = v132;
          v42 = v148;
        }

        else
        {
          *(v43 + 8 * (v85 >> 6) + 64) |= 1 << v85;
          v93 = (*(v43 + 48) + 16 * v85);
          v94 = v135;
          *v93 = v136;
          v93[1] = v94;
          *(*(v43 + 56) + 8 * v85) = 0;
          v95 = *(v43 + 16);
          v96 = __OFADD__(v95, 1);
          v97 = v95 + 1;
          v4 = v132;
          v42 = v148;
          if (v96)
          {
            goto LABEL_96;
          }

          *(v43 + 16) = v97;
        }

        *(*(v43 + 56) + 8 * v85) = v30 + *(*(v43 + 56) + 8 * v85);

        (*v56)(v8, v4);
        *(v139 + v138) = v133;
        v130 = sub_264DBD2E4;
LABEL_24:
        if (v153 == ++v54)
        {
          goto LABEL_51;
        }
      }

LABEL_22:
      (*v56)(v8, v4);

      goto LABEL_23;
    }

    v130 = 0;
LABEL_51:

    v21 = *(v139 + v138);
    if (v42 < v21[2])
    {
      break;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    v20 = sub_264E15DD0(v20);
    v42 = v43;
    if (v43 < 0)
    {
      goto LABEL_89;
    }

LABEL_9:
    if (v42 >= *(v20 + 16))
    {
      goto LABEL_90;
    }

    v45 = v20 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v42;
    *(v45 + *(v151 + 20)) = v30 + *(v45 + *(v151 + 20));
  }

  v43 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v98 = *(v143 + 72) * v42;
  v8 = v151;
  if (*(*(v21 + v43 + v98 + *(v151 + 24)) + 16))
  {
    v99 = v130;
    return sub_264D91628(v99, 0);
  }

  v100 = sub_264E23DA8();
  v136 = *(v100 + 16);
  if (v136)
  {
    v142 = v98;
    v143 = v43;
    v20 = 0;
    v101 = 0;
    v135 = v100 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v134 = v141 + 16;
    v133 = (v141 + 8);
    v144 = v152 + 8;
    v145 = v152 + 16;
    v131 = v100;
    while (v101 < *(v100 + 16))
    {
      v43 = v141;
      v102 = *(v141 + 72);
      v140 = v101;
      v103 = v137;
      (*(v141 + 16))(v137, v135 + v102 * v101, v4);
      v104 = sub_264E23D08();
      (*(v43 + 8))(v103, v4);
      v153 = *(v104 + 16);
      if (v153)
      {
        v4 = 0;
        v105 = *(v152 + 80);
        v149 = v104;
        v150 = (v104 + ((v105 + 32) & ~v105));
        while (v4 < *(v104 + 16))
        {
          v106 = v152;
          v108 = v146;
          v107 = v147;
          (*(v152 + 16))(v146, &v150[*(v152 + 72) * v4], v147);
          v109 = sub_264E23C88();
          v111 = v110;
          sub_264E23C68();
          v30 = v112;
          (*(v106 + 8))(v108, v107);
          v113 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_264E15DD0(v21);
          }

          v43 = v113[2];
          sub_264D91628(v20, 0);
          if (v42 >= v43)
          {
            goto LABEL_82;
          }

          v21 = v113;
          v114 = v113 + v143 + v142;
          v8 = *(v8 + 28);
          v115 = swift_isUniquelyReferenced_nonNull_native();
          v156 = *&v114[v8];
          v116 = v156;
          *&v114[v8] = 0x8000000000000000;
          v20 = sub_264D9D57C(v109, v111);
          v118 = *(v116 + 16);
          v119 = (v117 & 1) == 0;
          v120 = v118 + v119;
          if (__OFADD__(v118, v119))
          {
            goto LABEL_83;
          }

          v43 = v117;
          if (*(v116 + 24) >= v120)
          {
            if ((v115 & 1) == 0)
            {
              sub_264DA0FDC();
            }
          }

          else
          {
            sub_264D9E134(v120, v115);
            v121 = sub_264D9D57C(v109, v111);
            if ((v43 & 1) != (v122 & 1))
            {
              goto LABEL_97;
            }

            v20 = v121;
          }

          *&v114[v8] = v156;

          v123 = *&v114[v8];
          if (v43)
          {

            v8 = v151;
            v42 = v148;
          }

          else
          {
            v123[(v20 >> 6) + 8] |= 1 << v20;
            v124 = (v123[6] + 16 * v20);
            *v124 = v109;
            v124[1] = v111;
            *(v123[7] + 8 * v20) = 0;
            v125 = v123[2];
            v96 = __OFADD__(v125, 1);
            v126 = v125 + 1;
            v8 = v151;
            v42 = v148;
            if (v96)
            {
              goto LABEL_84;
            }

            v123[2] = v126;
          }

          ++v4;
          *(v123[7] + 8 * v20) = v30 + *(v123[7] + 8 * v20);
          v20 = sub_264DBD2E4;
          v104 = v149;
          if (v153 == v4)
          {

            *(v139 + v138) = v21;
            v20 = sub_264DBD2E4;
            v4 = v132;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

LABEL_57:
      v101 = v140 + 1;
      v100 = v131;
      if (v140 + 1 == v136)
      {

        goto LABEL_79;
      }
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v20 = 0;
LABEL_79:
  sub_264D91628(v130, 0);
  v99 = v20;
  return sub_264D91628(v99, 0);
}

uint64_t sub_264DAF770(uint64_t a1)
{
  v1 = sub_264E238E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  v5 = sub_264E23878();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

BOOL sub_264DAF85C(uint64_t a1)
{
  v1 = sub_264E238E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  sub_264DBD13C(&qword_27FFB20A0, MEMORY[0x277CC88A8], MEMORY[0x277CC88C0]);
  v5 = sub_264E25048();
  (*(v2 + 8))(v4, v1);
  return (v5 & 1) == 0;
}

uint64_t sub_264DAF98C(uint64_t a1)
{
  v2 = sub_264E23D18();
  v120 = *(v2 - 8);
  v121 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20C0, &qword_264E270F8);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v100 - v6;
  v114 = sub_264E23DB8();
  v106 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v118 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UsageOverviewChart.Day(0);
  v109 = *(v8 - 8);
  v110 = v8;
  MEMORY[0x28223BE20](v8);
  v104 = (&v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v105 = &v100 - v11;
  v12 = sub_264E238E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264E23AA8();
  v117 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v100 - v20;
  v22 = type metadata accessor for UsageOverviewChart.Model(0);
  v119 = a1;
  sub_264E23D98();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v13 + 8))(v15, v12);
  v23 = v116;
  v24 = v117;
  sub_264E23AF8();
  v25 = v16;
  v112 = *(v24 + 8);
  v113 = v24 + 8;
  v112(v18, v16);
  v115 = *(v22 + 20);
  v26 = *(v23 + v115);
  v123 = v21;
  v27 = sub_264DA8FFC(sub_264DBD2EC, v122, v26, type metadata accessor for UsageOverviewChart.Day);
  v108 = v16;
  v107 = v21;
  if ((v28 & 1) == 0)
  {
    v111 = v27;
    sub_264E23D78();
    v38 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_51;
    }

    v48 = v111;
    if ((v111 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v29 = v21;
  MEMORY[0x28223BE20](v27);
  *(&v100 - 2) = v21;
  v111 = sub_264DA8FFC(sub_264DBD1E4, (&v100 - 4), v26, type metadata accessor for UsageOverviewChart.Day);
  v31 = v30;
  v32 = v106 + 16;
  v33 = v114;
  (*(v106 + 16))(v118, v119, v114);
  v34 = *(v24 + 16);
  v34(v18, v29, v25);
  v35 = (v32 - 8);
  if (v31)
  {
    v16 = v104;
    v34(v104, v18, v25);
    v36 = v118;
    sub_264E23D78();
    v38 = v37;
    v39 = MEMORY[0x277D84F90];
    v117 = sub_264DEB098(MEMORY[0x277D84F90]);
    v40 = v110;
    sub_264E23BF8();
    v41 = *(v40 + 24);
    sub_264DEB098(v39);
    v112(v18, v25);
    (*v35)(v36, v114);

    *(v16 + *(v40 + 20)) = v38;
    *(v16 + v41) = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_4;
  }

  v50 = v105;
  v34(v105, v18, v25);
  v51 = v118;
  sub_264E23D78();
  v38 = v52;
  v53 = MEMORY[0x277D84F90];
  v117 = sub_264DEB098(MEMORY[0x277D84F90]);
  v54 = v110;
  sub_264E23BF8();
  v106 = *(v54 + 24);
  sub_264DEB098(v53);
  v112(v18, v25);
  (*v35)(v51, v33);

  *(v50 + *(v54 + 20)) = v38;
  *(v50 + v106) = v117;
  v16 = v111;
  if (v26[2] < v111)
  {
    __break(1u);
  }

  else if ((v111 & 0x8000000000000000) == 0)
  {
    v55 = v103;
    sub_264DBD214(v105, v103, type metadata accessor for UsageOverviewChart.Day);
    sub_264DBC944(v16, v16, v55);
    while (1)
    {
      v56 = sub_264E23DA8();
      v26 = v56;
      v57 = *(v56 + 16);
      if (!v57)
      {
        v114 = 0;
LABEL_49:

        v112(v107, v108);
        return sub_264D91628(v114, 0);
      }

      v114 = 0;
      v58 = 0;
      v59 = *MEMORY[0x277CF9618];
      v118 = (v56 + ((*(v120 + 80) + 32) & ~*(v120 + 80)));
      v119 = v59;
      v117 = *MEMORY[0x277CF9610];
      v106 = *MEMORY[0x277CF9620];
      v60 = (v120 + 8);
      while (v58 < v26[2])
      {
        (*(v120 + 16))(v4, &v118[*(v120 + 72) * v58], v121);
        sub_264E23CD8();
        v16 = sub_264E250E8();

        v61 = sub_264E25108();
        v63 = v62;
        if (v61 == sub_264E25108() && v63 == v64)
        {
          goto LABEL_20;
        }

        v65 = sub_264E25478();

        if (v65)
        {
          goto LABEL_22;
        }

        v66 = sub_264E25108();
        v68 = v67;
        if (v66 == sub_264E25108() && v68 == v69)
        {
LABEL_20:

LABEL_22:
          (*v60)(v4, v121);

          goto LABEL_23;
        }

        v70 = sub_264E25478();

        if (v70)
        {
          goto LABEL_22;
        }

        v71 = sub_264E25108();
        v73 = v72;

        if (v71 == sub_264E25108() && v73 == v74)
        {

LABEL_33:
          (*v60)(v4, v121);
LABEL_23:

          goto LABEL_24;
        }

        v75 = sub_264E25478();

        if (v75)
        {
          goto LABEL_33;
        }

        v104 = sub_264E23CD8();
        v77 = v76;
        sub_264E23CC8();
        v38 = v78;
        v79 = *(v116 + v115);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_264E15D6C(v79);
        }

        if (v111 >= v79[2])
        {
          goto LABEL_54;
        }

        v80 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v101 = v79;
        v81 = v79 + v80 + *(v109 + 72) * v111;
        v105 = v77;
        v82 = *(v110 + 24);
        sub_264D91628(v114, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = *(v81 + v82);
        v83 = v124;
        v103 = v81;
        *(v81 + v82) = 0x8000000000000000;
        v84 = sub_264D9D57C(v104, v105);
        v85 = *(v83 + 16);
        LODWORD(v114) = v86;
        v87 = (v86 & 1) == 0;
        v88 = v85 + v87;
        if (__OFADD__(v85, v87))
        {
          goto LABEL_55;
        }

        if (*(v83 + 24) >= v88)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_264DA0FDC();
          }
        }

        else
        {
          sub_264D9E134(v88, isUniquelyReferenced_nonNull_native);
          v89 = sub_264D9D57C(v104, v105);
          if ((v114 & 1) != (v90 & 1))
          {
            goto LABEL_60;
          }

          v84 = v89;
        }

        v91 = v103;
        *(v103 + v82) = v124;

        v92 = *(v91 + v82);
        if (v114)
        {
        }

        else
        {
          v92[(v84 >> 6) + 8] |= 1 << v84;
          v93 = (v92[6] + 16 * v84);
          v94 = v105;
          *v93 = v104;
          v93[1] = v94;
          *(v92[7] + 8 * v84) = 0;
          v95 = v92[2];
          v96 = __OFADD__(v95, 1);
          v97 = v95 + 1;
          if (v96)
          {
            goto LABEL_59;
          }

          v92[2] = v97;
        }

        *(v92[7] + 8 * v84) = v38 + *(v92[7] + 8 * v84);

        (*v60)(v4, v121);
        *(v116 + v115) = v101;
        v114 = sub_264DBD2E4;
LABEL_24:
        if (v57 == ++v58)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_51:
      v26 = sub_264E15D6C(v26);
      v48 = v111;
      if (v111 < 0)
      {
        goto LABEL_52;
      }

LABEL_9:
      if (v48 < v26[2])
      {
        v49 = v26 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v48;
        *(v49 + *(v110 + 20)) = v38 + *(v49 + *(v110 + 20));
        goto LABEL_11;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v26 = sub_264DBC1A0(0, v26[2] + 1, 1, v26, &qword_27FFB1BF8, &qword_264E27100, type metadata accessor for UsageOverviewChart.Day);
LABEL_4:
      v43 = v26[2];
      v42 = v26[3];
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v99 = v26[2];
        v26 = sub_264DBC1A0((v42 > 1), v43 + 1, 1, v26, &qword_27FFB1BF8, &qword_264E27100, type metadata accessor for UsageOverviewChart.Day);
        v43 = v99;
      }

      v26[2] = v44;
      v45 = v26 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v46 = *(v109 + 72);
      v111 = v43;
      sub_264DBD214(v16, &v45[v46 * v43], type metadata accessor for UsageOverviewChart.Day);
LABEL_11:
      *(v116 + v115) = v26;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_264E25498();
  __break(1u);
  return result;
}

void sub_264DB0668(uint64_t a1)
{
  v151 = a1;
  v136 = sub_264E23B98();
  v2 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_264E23B78();
  v4 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_264E23B38();
  v157 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v7 - 8);
  v130 = &v100 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v9 - 8);
  v129 = &v100 - v10;
  v128 = sub_264E23928();
  v156 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  MEMORY[0x28223BE20](v147);
  v160 = &v100 - v12;
  v115 = sub_264E23C18();
  v13 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v100 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v100 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v100 - v24;
  v26 = sub_264E23AA8();
  v109 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v106 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v153 = &v100 - v29;
  MEMORY[0x28223BE20](v30);
  v159 = &v100 - v31;
  v149 = sub_264E238E8();
  v108 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v103 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v146 = &v100 - v34;
  v148 = type metadata accessor for UsageOverviewChart.Model(0);
  v150 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v102 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v104 = &v100 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v100 - v39;
  v107 = v1;
  v41 = *v1;
  v145 = *(*v1 + 16);
  if (!v145)
  {
LABEL_16:
    v77 = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
    v78 = v103;
    sub_264E23D98();
    v79 = v153;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*(v108 + 8))(v78, v149);
    v80 = v107;
    v81 = v105;
    Calendar.startOfWeek(containing:)(v79, v105);
    v82 = v109;
    v83 = *(v109 + 8);
    v83(v79, v26);
    if ((*(v82 + 48))(v81, 1, v26) == 1)
    {
      sub_264D817BC(v81, &qword_27FFB1860, &qword_264E267E0);
      if (qword_27FFB1688 != -1)
      {
LABEL_32:
        swift_once();
      }

      v84 = sub_264E23FC8();
      __swift_project_value_buffer(v84, qword_27FFB2028);
      v85 = sub_264E23FA8();
      v86 = sub_264E252A8();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_264D7D000, v85, v86, "Could not compute start of week; skipping activity segment", v87, 2u);
        MEMORY[0x26674FCD0](v87, -1, -1);
      }
    }

    else
    {
      v88 = *(v82 + 32);
      v89 = v82;
      v90 = v41;
      v91 = v89;
      v92 = v106;
      v88(v106, v81, v26);
      v93 = v104;
      (*(v91 + 16))(v104, v92, v26);
      v94 = v148;
      v95 = *(v148 + 24);
      v96 = sub_264E23C38();
      (*(*(v96 - 8) + 16))(v93 + v95, &v80[v77], v96);
      *(v93 + *(v94 + 28)) = 3;
      *(v93 + *(v94 + 20)) = MEMORY[0x277D84F90];
      sub_264DAF98C(v151);
      v97 = v102;
      sub_264DBD27C(v93, v102, type metadata accessor for UsageOverviewChart.Model);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_264DBC1A0(0, v90[2] + 1, 1, v90, &qword_27FFB1B68, &qword_264E265F0, type metadata accessor for UsageOverviewChart.Model);
      }

      v99 = v90[2];
      v98 = v90[3];
      if (v99 >= v98 >> 1)
      {
        v90 = sub_264DBC1A0((v98 > 1), v99 + 1, 1, v90, &qword_27FFB1B68, &qword_264E265F0, type metadata accessor for UsageOverviewChart.Model);
      }

      sub_264DBD184(v104, type metadata accessor for UsageOverviewChart.Model);
      v83(v106, v26);
      v90[2] = v99 + 1;
      sub_264DBD214(v97, v90 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v99, type metadata accessor for UsageOverviewChart.Model);
      *v80 = v90;
    }

    return;
  }

  v42 = 0;
  v101 = (*(v150 + 80) + 32) & ~*(v150 + 80);
  v140 = v41 + v101;
  v139 = (v108 + 8);
  v158 = (v109 + 8);
  v113 = *MEMORY[0x277CC99B8];
  v112 = (v13 + 104);
  v111 = (v13 + 8);
  v126 = (v157 + 104);
  v125 = (v4 + 104);
  v124 = *MEMORY[0x277CC9878];
  v123 = (v2 + 104);
  v122 = (v2 + 8);
  v121 = *MEMORY[0x277CC98F0];
  v120 = (v4 + 8);
  v119 = (v157 + 8);
  v118 = *MEMORY[0x277CC9900];
  v117 = (v156 + 8);
  v157 = v109 + 16;
  v152 = (v109 + 56);
  v138 = (v109 + 48);
  v110 = (v109 + 32);
  v143 = v19;
  v144 = v41;
  v141 = v25;
  v142 = v22;
  v116 = v26;
  while (1)
  {
    if (v42 >= v41[2])
    {
      __break(1u);
      goto LABEL_32;
    }

    v44 = *(v150 + 72);
    v156 = v42;
    v137 = v44 * v42;
    sub_264DBD27C(&v140[v44 * v42], v40, type metadata accessor for UsageOverviewChart.Model);
    v45 = v146;
    sub_264E23D98();
    v46 = v159;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*v139)(v45, v149);
    v47 = v153;
    sub_264E23AF8();
    v48 = sub_264E23A78();
    v155 = *v158;
    v155(v47, v26);
    v49 = v157 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    if ((v48 & 1) != 0 && (v50 = v114, v51 = v115, (*v112)(v114, v113, v115), v52 = sub_264E23C28(), (*v111)(v50, v51), v52 == sub_264E23B18()))
    {
      v53 = *v157;
      v54 = v141;
      (*v157)(v141, v46, v26);
      (*v152)(v54, 0, 1, v26);
    }

    else
    {
      v55 = sub_264E23C38();
      (*(*(v55 - 8) + 56))(v129, 1, 1, v55);
      v56 = sub_264E23C48();
      v57 = *(*(v56 - 8) + 56);
      v154 = v49;
      v57(v130, 1, 1, v56);
      sub_264E23B18();
      v58 = v127;
      sub_264E23918();
      v59 = v131;
      v60 = v132;
      (*v126)(v131, v124, v132);
      v61 = v133;
      v62 = v134;
      (*v125)(v133, v121, v134);
      v63 = v135;
      v64 = v136;
      (*v123)(v135, v118, v136);
      v54 = v141;
      sub_264E23C08();
      v65 = v63;
      v26 = v116;
      (*v122)(v65, v64);
      (*v120)(v61, v62);
      (*v119)(v59, v60);
      (*v117)(v58, v128);
      v53 = *v157;
    }

    v66 = v142;
    v53(v142, v40, v26);
    (*v152)(v66, 0, 1, v26);
    v67 = *(v147 + 48);
    v68 = v160;
    sub_264D93A14(v54, v160);
    sub_264D93A14(v66, v68 + v67);
    v69 = *v138;
    v70 = (*v138)(v68, 1, v26);
    v71 = v143;
    if (v70 == 1)
    {
      break;
    }

    v72 = v160;
    sub_264D93A14(v160, v143);
    v73 = v69(v72 + v67, 1, v26);
    v41 = v144;
    if (v73 == 1)
    {
      sub_264D817BC(v66, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v54, &qword_27FFB1860, &qword_264E267E0);
      v74 = v155;
      v155(v159, v26);
      sub_264DBD184(v40, type metadata accessor for UsageOverviewChart.Model);
      v74(v71, v26);
      goto LABEL_4;
    }

    v75 = v153;
    (*v110)(v153, v160 + v67, v26);
    sub_264DBD13C(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    LODWORD(v154) = sub_264E25068();
    v76 = v155;
    v155(v75, v26);
    sub_264D817BC(v66, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v54, &qword_27FFB1860, &qword_264E267E0);
    v76(v159, v26);
    sub_264DBD184(v40, type metadata accessor for UsageOverviewChart.Model);
    v76(v71, v26);
    sub_264D817BC(v160, &qword_27FFB1860, &qword_264E267E0);
    if (v154)
    {
      goto LABEL_27;
    }

LABEL_5:
    v42 = v156 + 1;
    if (v145 == v156 + 1)
    {
      goto LABEL_16;
    }
  }

  sub_264D817BC(v66, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v54, &qword_27FFB1860, &qword_264E267E0);
  v155(v159, v26);
  sub_264DBD184(v40, type metadata accessor for UsageOverviewChart.Model);
  v43 = v69(v160 + v67, 1, v26);
  v41 = v144;
  if (v43 != 1)
  {
LABEL_4:
    sub_264D817BC(v160, &qword_27FFB1858, &unk_264E26200);
    goto LABEL_5;
  }

  sub_264D817BC(v160, &qword_27FFB1860, &qword_264E267E0);
LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_264E15D80(v41);
  }

  if (v156 >= v41[2])
  {
    __break(1u);
  }

  else
  {
    sub_264DAF98C(v151);
    *v107 = v41;
  }
}

uint64_t sub_264DB1A1C(uint64_t a1)
{
  v52 = a1;
  v55 = sub_264E23AA8();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - v7;
  MEMORY[0x28223BE20](v8);
  v48 = &v40 - v9;
  v47 = sub_264E238E8();
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UsageDetailChart.Model(0);
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  MEMORY[0x28223BE20](v13);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v41 = &v40 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = 0;
  v44 = v1;
  v53 = *v1;
  v51 = v53[2];
  v46 = (v10 + 8);
  v40 = v4;
  v54 = v4 + 8;
  v22 = (v4 + 8);
  do
  {
    if (v51 == v21)
    {
      v29 = *(type metadata accessor for UsageDetailTabView.Model(0) + 20);
      v30 = v52;
      sub_264E23D98();
      v31 = v48;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v46)(v12, v47);
      v3 = v43;
      v20 = v44;
      sub_264E23AF8();
      v32 = v40;
      v2 = *(v40 + 8);
      v33 = v31;
      v34 = v55;
      v2(v33, v55);
      v12 = v41;
      (*(v32 + 16))(v41, v3, v34);
      v35 = v49;
      v36 = v49[6];
      v37 = sub_264E23C38();
      (*(*(v37 - 8) + 16))(&v12[v36], &v20[v29], v37);
      *&v12[v35[7]] = 0x40BC200000000000;
      *&v12[v35[8]] = 3;
      *&v12[v35[5]] = MEMORY[0x277D84F90];
      sub_264DAE6E4(v30);
      v10 = v42;
      sub_264DBD27C(v12, v42, type metadata accessor for UsageDetailChart.Model);
      v22 = v53;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_10:
        v39 = v22[2];
        v38 = v22[3];
        if (v39 >= v38 >> 1)
        {
          v22 = sub_264DBC1A0((v38 > 1), v39 + 1, 1, v22, &qword_27FFB1B60, &qword_264E265E8, type metadata accessor for UsageDetailChart.Model);
        }

        sub_264DBD184(v12, type metadata accessor for UsageDetailChart.Model);
        v2(v3, v55);
        v22[2] = (v39 + 1);
        result = sub_264DBD214(v10, v22 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v39, type metadata accessor for UsageDetailChart.Model);
        goto LABEL_13;
      }

LABEL_15:
      v22 = sub_264DBC1A0(0, v22[2] + 1, 1, v22, &qword_27FFB1B60, &qword_264E265E8, type metadata accessor for UsageDetailChart.Model);
      goto LABEL_10;
    }

    if (v21 >= v53[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = v21 + 1;
    v10 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    sub_264DBD27C(v53 + v10 + *(v50 + 72) * v21, v20, type metadata accessor for UsageDetailChart.Model);
    sub_264E23D98();
    v2 = v48;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*v46)(v12, v47);
    v23 = v45;
    sub_264E23AF8();
    v24 = sub_264E23A78();
    v25 = *v22;
    v26 = v23;
    v27 = v55;
    (*v22)(v26, v55);
    v25(v2, v27);
    sub_264DBD184(v20, type metadata accessor for UsageDetailChart.Model);
    v21 = v3;
  }

  while ((v24 & 1) == 0);
  v22 = v53;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264E15DE4(v22);
    v22 = result;
  }

  if (v3 - 1 < v22[2])
  {
    result = sub_264DAE6E4(v52);
    v20 = v44;
LABEL_13:
    *v20 = v22;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_264DB203C(uint64_t a1)
{
  v2 = v1;
  v136 = sub_264E23CB8();
  v143 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264E23D18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v127 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v121 - v9;
  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v146 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v147 = &v121 - v15;
  MEMORY[0x28223BE20](v16);
  v133 = &v121 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v121 - v19;
  sub_264E23D78();
  v22 = v21;
  sub_264E23D98();
  sub_264DFC320(v22);
  v130 = v12;
  v139 = *(v12 + 8);
  v140 = v11;
  v139(v20, v11);
  v23 = sub_264E23DA8();
  v24 = *(v23 + 16);
  v131 = v1;
  v137 = v12 + 8;
  v138 = a1;
  v128 = v6;
  if (v24)
  {
    v132 = v20;
    v25 = *MEMORY[0x277CF9618];
    v27 = *(v6 + 16);
    v26 = v6 + 16;
    v144 = v27;
    v145 = v25;
    v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v129 = v23;
    v29 = v23 + v28;
    v142 = *(v26 + 56);
    v141 = *MEMORY[0x277CF9610];
    v134 = *MEMORY[0x277CF9620];
    v30 = (v26 - 8);
    while (1)
    {
      v144(v10, v29, v5);
      v31 = v10;
      sub_264E23CD8();
      v32 = sub_264E250E8();

      v33 = sub_264E25108();
      v35 = v34;
      if (v33 == sub_264E25108() && v35 == v36)
      {
        break;
      }

      v38 = sub_264E25478();

      if (v38)
      {
        goto LABEL_11;
      }

      v39 = sub_264E25108();
      v41 = v40;
      if (v39 == sub_264E25108() && v41 == v42)
      {
        break;
      }

      v43 = sub_264E25478();

      if (v43)
      {
        goto LABEL_11;
      }

      v44 = sub_264E25108();
      v46 = v45;

      if (v44 == sub_264E25108() && v46 == v47)
      {
      }

      else
      {
        v48 = sub_264E25478();

        if ((v48 & 1) == 0)
        {
          v126 = objc_opt_self();
          sub_264E23CD8();
          v49 = sub_264E250E8();

          v50 = [v126 shortLocalizedNameForIdentifier_];

          v124 = sub_264E25108();
          v126 = v51;

          v125 = v31;
          sub_264E23CC8();
          v53 = v52;
          v54 = v133;
          sub_264E23D98();
          if (v53 <= 0.0)
          {

            v139(v54, v140);
            v10 = v125;
            (*v30)(v125, v5);
          }

          else
          {
            v55 = v126;
            v56 = *(v131 + 8);
            if (*(v56 + 16) && (v57 = sub_264D9D6C8(v133), (v58 & 1) != 0))
            {
              v149 = *(*(v56 + 56) + 8 * v57);
            }

            else
            {
              v149 = sub_264DEB098(MEMORY[0x277D84F90]);
            }

            sub_264DFC630(v124, v55, v53);

            v59 = v149;
            v60 = v131;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v148 = *(v60 + 8);
            v62 = v59;
            v63 = v133;
            sub_264DCD4E4(v62, v133, isUniquelyReferenced_nonNull_native);

            *(v60 + 8) = v148;
            v139(v63, v140);
            v10 = v31;
            (*v30)(v31, v5);
          }

          goto LABEL_13;
        }
      }

      v10 = v31;
      (*v30)(v31, v5);
LABEL_12:

LABEL_13:
      v29 += v142;
      if (!--v24)
      {

        v2 = v131;
        v20 = v132;
        v6 = v128;
        goto LABEL_29;
      }
    }

LABEL_11:
    v10 = v31;
    (*v30)(v31, v5);

    goto LABEL_12;
  }

LABEL_29:
  sub_264E23D98();
  v64 = sub_264DFC554(v20);
  result = (v139)(v20, v140);
  if (v64)
  {
    return result;
  }

  v66 = sub_264E23DA8();
  v126 = *(v66 + 16);
  if (!v126)
  {
  }

  v67 = 0;
  v125 = (v66 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  v124 = v6 + 16;
  v123 = v6 + 8;
  v133 = v143 + 8;
  v134 = v143 + 16;
  v132 = (v130 + 16);
  v122 = v5;
  v121 = v66;
  while (1)
  {
    if (v67 >= *(v66 + 16))
    {
      goto LABEL_73;
    }

    v68 = *(v6 + 72);
    v129 = v67;
    v69 = v127;
    (*(v6 + 16))(v127, &v125[v68 * v67], v5);
    v70 = sub_264E23D08();
    (*(v6 + 8))(v69, v5);
    v144 = *(v70 + 16);
    v145 = v70;
    if (v144)
    {
      break;
    }

LABEL_32:
    v67 = v129 + 1;

    v5 = v122;
    v6 = v128;
    v66 = v121;
    if (v67 == v126)
    {
    }
  }

  v71 = objc_opt_self();
  v72 = 0;
  v141 = v145 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
  v142 = v71;
  while (v72 < *(v145 + 16))
  {
    v75 = v143;
    v77 = v135;
    v76 = v136;
    (*(v143 + 16))(v135, v141 + *(v143 + 72) * v72, v136);
    sub_264E23C88();
    v78 = [v142 sharedCache];
    v79 = sub_264E250E8();

    v80 = [v78 appInfoForBundleIdentifier_];

    v81 = [v80 displayName];
    v82 = sub_264E25108();
    v84 = v83;

    sub_264E23C68();
    v86 = v85;
    (*(v75 + 8))(v77, v76);
    sub_264E23D98();
    if (v86 > 0.0)
    {
      v87 = *(v2 + 16);
      v74 = v140;
      if (*(v87 + 16) && (v88 = sub_264D9D6C8(v147), (v89 & 1) != 0))
      {
        v90 = *(*(v87 + 56) + 8 * v88);
      }

      else
      {
        v90 = sub_264DEB098(MEMORY[0x277D84F90]);
      }

      v91 = swift_isUniquelyReferenced_nonNull_native();
      v149 = v90;
      v93 = sub_264D9D57C(v82, v84);
      v94 = *(v90 + 16);
      v95 = (v92 & 1) == 0;
      v96 = v94 + v95;
      if (__OFADD__(v94, v95))
      {
        goto LABEL_69;
      }

      v97 = v92;
      if (*(v90 + 24) >= v96)
      {
        if (v91)
        {
          v100 = v149;
          if ((v92 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          sub_264DA0FDC();
          v100 = v149;
          if ((v97 & 1) == 0)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        sub_264D9E134(v96, v91);
        v98 = sub_264D9D57C(v82, v84);
        if ((v97 & 1) != (v99 & 1))
        {
          goto LABEL_75;
        }

        v93 = v98;
        v100 = v149;
        if ((v97 & 1) == 0)
        {
LABEL_53:
          v100[(v93 >> 6) + 8] |= 1 << v93;
          v101 = (v100[6] + 16 * v93);
          *v101 = v82;
          v101[1] = v84;
          *(v100[7] + 8 * v93) = 0;
          v102 = v100[2];
          v103 = __OFADD__(v102, 1);
          v104 = v102 + 1;
          if (v103)
          {
            goto LABEL_71;
          }

          v100[2] = v104;
LABEL_55:
          *(v100[7] + 8 * v93) = v86 + *(v100[7] + 8 * v93);
          v105 = *v132;
          v106 = v146;
          (*v132)(v146, v147, v74);
          v2 = v131;
          v107 = swift_isUniquelyReferenced_nonNull_native();
          v149 = *(v2 + 16);
          v108 = v149;
          v109 = sub_264D9D6C8(v106);
          v111 = *(v108 + 16);
          v112 = (v110 & 1) == 0;
          v103 = __OFADD__(v111, v112);
          v113 = v111 + v112;
          if (v103)
          {
            goto LABEL_70;
          }

          v114 = v110;
          if (*(v108 + 24) >= v113)
          {
            if (v107)
            {
              goto LABEL_60;
            }

            v117 = v109;
            sub_264DA1320();
            v109 = v117;
            v116 = v149;
            if ((v114 & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_61:
            *(v116[7] + 8 * v109) = v100;
          }

          else
          {
            sub_264D9EAB4(v113, v107);
            v109 = sub_264D9D6C8(v146);
            if ((v114 & 1) != (v115 & 1))
            {
              goto LABEL_74;
            }

LABEL_60:
            v116 = v149;
            if (v114)
            {
              goto LABEL_61;
            }

LABEL_63:
            v116[(v109 >> 6) + 8] |= 1 << v109;
            v118 = v109;
            v105(v116[6] + *(v130 + 72) * v109, v146, v74);
            *(v116[7] + 8 * v118) = v100;
            v119 = v116[2];
            v103 = __OFADD__(v119, 1);
            v120 = v119 + 1;
            if (v103)
            {
              goto LABEL_72;
            }

            v116[2] = v120;
          }

          v73 = v139;
          v139(v146, v74);

          *(v2 + 16) = v116;
          goto LABEL_37;
        }
      }

      goto LABEL_55;
    }

    v73 = v139;
    v74 = v140;
LABEL_37:
    ++v72;
    v73(v147, v74);
    if (v144 == v72)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  sub_264E25498();
  __break(1u);
LABEL_75:
  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DB2CC0()
{
  v2 = v0;
  v3 = sub_264E238E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_264E23D98();
  sub_264E23D78();
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v0;
  v23 = v13;
  v15 = sub_264D9D6C8(v9);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v2 = v13;
      if (v14)
      {
LABEL_9:
        *(v13[7] + 8 * v15) = v11 + *(v13[7] + 8 * v15);
        return (*(v4 + 8))(v9, v3);
      }

LABEL_8:
      (*(v4 + 16))(v6, v9, v3);
      sub_264DA0BE4(v15, v6, v13, 0.0);
      goto LABEL_9;
    }

LABEL_11:
    sub_264DA1348();
    v13 = v23;
    *v2 = v23;
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_264D9EE90(v18, isUniquelyReferenced_nonNull_native);
  v13 = v23;
  v19 = sub_264D9D6C8(v9);
  if ((v1 & 1) == (v20 & 1))
  {
    v15 = v19;
    *v2 = v13;
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DB2EC8(uint64_t a1)
{
  v195 = sub_264E23D58();
  v2 = *(v195 - 8);
  MEMORY[0x28223BE20](v195 - 8);
  v4 = &v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_264E23CB8();
  v5 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v219 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_264E238E8();
  v7 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v191 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v211 = &v180 - v10;
  MEMORY[0x28223BE20](v11);
  v188 = &v180 - v12;
  MEMORY[0x28223BE20](v13);
  v213 = (&v180 - v14);
  v208 = sub_264E23D18();
  v15 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v218 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v180 - v18;
  v207 = a1;
  v20 = sub_264E23DA8();
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277CF9618];
  v205 = v4;
  v206 = v2;
  v204 = v5;
  v192 = v7;
  v193 = v15;
  if (v21)
  {
    v181 = 0;
    v23 = 0;
    v24 = *MEMORY[0x277CF9618];
    v216 = v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v217 = v24;
    v25 = *MEMORY[0x277CF9610];
    v214 = *MEMORY[0x277CF9620];
    v215 = v25;
    v203 = (v7 + 16);
    v212 = (v7 + 8);
    v26 = (v15 + 8);
    v27 = v20;
    while (1)
    {
      if (v23 >= *(v27 + 16))
      {
        goto LABEL_100;
      }

      (*(v193 + 16))(v19, v216 + *(v193 + 72) * v23, v208);
      sub_264E23CD8();
      v28 = sub_264E250E8();

      v29 = sub_264E25108();
      v31 = v30;
      if (v29 == sub_264E25108() && v31 == v32)
      {
      }

      else
      {
        v33 = v27;
        v34 = sub_264E25478();

        if (v34)
        {
          goto LABEL_8;
        }

        v35 = sub_264E25108();
        v37 = v36;
        if (v35 == sub_264E25108() && v37 == v38)
        {

          goto LABEL_12;
        }

        v39 = sub_264E25478();

        if (v39)
        {
LABEL_8:

          goto LABEL_13;
        }

        v40 = sub_264E25108();
        v42 = v41;

        if (v40 == sub_264E25108() && v42 == v43)
        {

LABEL_12:

LABEL_13:
          v27 = v33;
          goto LABEL_14;
        }

        v44 = sub_264E25478();

        v27 = v33;
        if ((v44 & 1) == 0)
        {
          sub_264E23CC8();
          if (v45 > 0.0)
          {
            v46 = sub_264E23CD8();
            v202 = v47;
            sub_264E23CC8();
            v49 = v48;
            v50 = sub_264E23CF8();
            if (v51)
            {
              v199 = v51;
              v200 = v50;
            }

            else
            {
              v52 = objc_opt_self();
              sub_264E23CD8();
              v53 = v46;
              v54 = sub_264E250E8();

              v55 = [v52 shortLocalizedNameForIdentifier_];

              v46 = v53;
              v200 = sub_264E25108();
              v199 = v56;
            }

            v57 = v213;
            sub_264E23D98();
            v58 = [objc_opt_self() sharedCache];
            v201 = v46;
            v59 = sub_264E250E8();
            v60 = [v58 imageForCategoryIdentifier_];

            v198 = sub_264E24D08();
            sub_264D91628(v181, 0);
            v61 = v210;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v220 = *v61;
            v63 = v220;
            v65 = sub_264D9D6C8(v57);
            v66 = v63[2];
            v67 = (v64 & 1) == 0;
            v68 = v66 + v67;
            if (__OFADD__(v66, v67))
            {
              goto LABEL_103;
            }

            v69 = v64;
            if (v63[3] >= v68)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_264DA15E8();
                v63 = v220;
              }
            }

            else
            {
              sub_264D9F254(v68, isUniquelyReferenced_nonNull_native);
              v63 = v220;
              v70 = sub_264D9D6C8(v213);
              if ((v69 & 1) != (v71 & 1))
              {
                goto LABEL_104;
              }

              v65 = v70;
            }

            *v210 = v63;
            if ((v69 & 1) == 0)
            {
              (*v203)(v188, v213, v209);
              sub_264DA5CC0();
            }

            v72 = v63[7];
            v73 = *(v72 + 8 * v65);
            v74 = swift_isUniquelyReferenced_nonNull_native();
            *(v72 + 8 * v65) = v73;
            if ((v74 & 1) == 0)
            {
              v73 = sub_264DBBD58(0, *(v73 + 2) + 1, 1, v73, &qword_27FFB1A78, &qword_264E264F8, &type metadata for MostUsedListSectionAppsAndCategories.Item);
              *(v72 + 8 * v65) = v73;
            }

            v76 = *(v73 + 2);
            v75 = *(v73 + 3);
            v197 = v76 + 1;
            if (v76 >= v75 >> 1)
            {
              *(v72 + 8 * v65) = sub_264DBBD58((v75 > 1), v197, 1, v73, &qword_27FFB1A78, &qword_264E264F8, &type metadata for MostUsedListSectionAppsAndCategories.Item);
            }

            (*v212)(v213, v209);
            (*v26)(v19, v208);
            v77 = *(v72 + 8 * v65);
            *(v77 + 16) = v197;
            v78 = v77 + 56 * v76;
            v79 = v202;
            *(v78 + 32) = v201;
            *(v78 + 40) = v79;
            *(v78 + 48) = v49;
            v80 = v199;
            *(v78 + 56) = v200;
            *(v78 + 64) = v80;
            *(v78 + 72) = v198;
            *(v78 + 80) = 1;
            *(v78 + 82) = 0;
            v181 = sub_264DBD2E8;
            v27 = v33;
            goto LABEL_15;
          }
        }
      }

LABEL_14:
      (*v26)(v19, v208);
LABEL_15:
      if (v21 == ++v23)
      {

        v4 = v205;
        v2 = v206;
        v5 = v204;
        v15 = v193;
        v22 = MEMORY[0x277CF9618];
        goto LABEL_40;
      }
    }
  }

  v181 = 0;
LABEL_40:
  v81 = sub_264E23DA8();
  v82 = v187;
  v186 = *(v81 + 16);
  if (!v186)
  {

    v177 = 0;
    v178 = 0;
LABEL_95:
    sub_264D91628(v181, 0);
    sub_264D91628(v177, 0);
    return sub_264D91628(v178, 0);
  }

  v202 = 0;
  v203 = 0;
  v83 = 0;
  v185 = v81 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v184 = v15 + 16;
  v217 = *v22;
  v214 = v5 + 16;
  v190 = (v192 + 16);
  v201 = (v192 + 8);
  v212 = (v2 + 8);
  v213 = (v5 + 8);
  v182 = (v15 + 8);
  v183 = v81;
  v196 = v2 + 16;
  while (1)
  {
    if (v83 >= *(v81 + 16))
    {
      goto LABEL_102;
    }

    v84 = *(v15 + 72);
    v189 = v83;
    (*(v15 + 16))(v218, v185 + v84 * v83, v208);
    v85 = sub_264E23D08();
    v86 = v85;
    v87 = *(v85 + 16);
    if (v87)
    {
      break;
    }

LABEL_69:

    v135 = sub_264E23CE8();
    v136 = v135;
    v216 = *(v135 + 16);
    if (v216)
    {
      v137 = 0;
      v215 = v135 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v138 = v195;
      while (1)
      {
        if (v137 >= *(v136 + 16))
        {
          goto LABEL_97;
        }

        (*(v2 + 16))(v4, v215 + *(v2 + 72) * v137, v138);
        sub_264E23CD8();
        v139 = sub_264E250E8();

        v140 = sub_264E25108();
        v142 = v141;

        if (v140 == sub_264E25108() && v142 == v143)
        {
          break;
        }

        v144 = sub_264E25478();

        if (v144)
        {
          goto LABEL_72;
        }

        sub_264E23D28();
        if (v145 <= 0.0)
        {
          goto LABEL_72;
        }

        v146 = sub_264E23D38();
        v148 = v147;
        sub_264E23D28();
        v150 = v149;
        v151 = v191;
        sub_264E23D98();

        v152 = sub_264E23D48();
        sub_264D91628(v202, 0);
        v153 = v210;
        v154 = swift_isUniquelyReferenced_nonNull_native();
        v155 = v153[1];
        v220 = v155;
        v157 = sub_264D9D6C8(v151);
        v158 = v155[2];
        v159 = (v156 & 1) == 0;
        v160 = v158 + v159;
        if (__OFADD__(v158, v159))
        {
          goto LABEL_99;
        }

        v161 = v156;
        if (v155[3] >= v160)
        {
          if ((v154 & 1) == 0)
          {
            sub_264DA15E8();
            v155 = v220;
          }
        }

        else
        {
          sub_264D9F254(v160, v154);
          v155 = v220;
          v162 = sub_264D9D6C8(v151);
          if ((v161 & 1) != (v163 & 1))
          {
            goto LABEL_104;
          }

          v157 = v162;
        }

        v164 = v192;
        v210[1] = v155;
        if ((v161 & 1) == 0)
        {
          v155[(v157 >> 6) + 8] |= 1 << v157;
          (*(v164 + 16))(v155[6] + *(v164 + 72) * v157, v151, v209);
          *(v155[7] + 8 * v157) = MEMORY[0x277D84F90];
          v165 = v155[2];
          v166 = __OFADD__(v165, 1);
          v167 = v165 + 1;
          if (v166)
          {
            goto LABEL_101;
          }

          v155[2] = v167;
        }

        v168 = v155[7];
        v169 = *(v168 + 8 * v157);
        v170 = swift_isUniquelyReferenced_nonNull_native();
        *(v168 + 8 * v157) = v169;
        v200 = v146;
        if ((v170 & 1) == 0)
        {
          v169 = sub_264DBBD58(0, *(v169 + 2) + 1, 1, v169, &qword_27FFB1A78, &qword_264E264F8, &type metadata for MostUsedListSectionAppsAndCategories.Item);
          *(v168 + 8 * v157) = v169;
        }

        v172 = *(v169 + 2);
        v171 = *(v169 + 3);
        if (v172 >= v171 >> 1)
        {
          *(v168 + 8 * v157) = sub_264DBBD58((v171 > 1), v172 + 1, 1, v169, &qword_27FFB1A78, &qword_264E264F8, &type metadata for MostUsedListSectionAppsAndCategories.Item);
        }

        v173 = v152 & 1;
        (*v201)(v151, v209);
        v4 = v205;
        v138 = v195;
        (*v212)(v205, v195);
        v174 = *(v168 + 8 * v157);
        *(v174 + 16) = v172 + 1;
        v175 = v174 + 56 * v172;
        v176 = v200;
        *(v175 + 32) = v200;
        *(v175 + 40) = v148;
        *(v175 + 48) = v150;
        *(v175 + 56) = v176;
        *(v175 + 64) = v148;
        *(v175 + 72) = 0;
        *(v175 + 80) = v173;
        *(v175 + 81) = 0;
        v202 = sub_264DBD2E8;
        v2 = v206;
        v5 = v204;
LABEL_73:
        if (v216 == ++v137)
        {
          goto LABEL_42;
        }
      }

LABEL_72:
      (*v212)(v4, v138);
      goto LABEL_73;
    }

LABEL_42:
    v83 = v189 + 1;

    (*v182)(v218, v208);
    v82 = v187;
    v15 = v193;
    v81 = v183;
    if (v83 == v186)
    {

      v178 = v202;
      v177 = v203;
      goto LABEL_95;
    }
  }

  v88 = 0;
  v216 = v85 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v194 = v87;
  while (v88 < *(v86 + 16))
  {
    (*(v5 + 16))(v219, v216 + *(v5 + 72) * v88, v82);
    sub_264E23CD8();
    v89 = sub_264E250E8();

    v90 = sub_264E25108();
    v92 = v91;

    if (v90 == sub_264E25108() && v92 == v93)
    {

LABEL_47:
      (*v213)(v219, v82);
      goto LABEL_48;
    }

    v94 = sub_264E25478();

    if (v94)
    {
      goto LABEL_47;
    }

    sub_264E23C68();
    if (v95 <= 0.0)
    {
      goto LABEL_47;
    }

    v96 = sub_264E23C88();
    v98 = v97;
    sub_264E23C68();
    v100 = v99;
    v101 = [objc_opt_self() sharedCache];
    v102 = sub_264E250E8();
    v103 = [v101 appInfoForBundleIdentifier_];

    sub_264E23D98();
    v199 = v103;
    v104 = [v103 displayName];
    v198 = sub_264E25108();
    v197 = v105;

    v106 = objc_opt_self();
    v107 = [v106 sharedCache];
    v215 = v96;
    v200 = v98;
    v108 = sub_264E250E8();
    v109 = [v107 imageForBundleIdentifier_];

    if (!v109)
    {
      v110 = [v106 sharedCache];
      [v110 imageForBlankApplicationIcon];
    }

    v111 = sub_264E24D08();
    v112 = v203;
    v113 = sub_264E23CA8();
    sub_264D91628(v112, 0);
    v114 = v210;
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v116 = v114[1];
    v220 = v116;
    v118 = sub_264D9D6C8(v211);
    v119 = v116[2];
    v120 = (v117 & 1) == 0;
    v121 = v119 + v120;
    if (__OFADD__(v119, v120))
    {
      goto LABEL_98;
    }

    v122 = v117;
    if (v116[3] >= v121)
    {
      if ((v115 & 1) == 0)
      {
        sub_264DA15E8();
        v116 = v220;
      }
    }

    else
    {
      sub_264D9F254(v121, v115);
      v116 = v220;
      v123 = sub_264D9D6C8(v211);
      if ((v122 & 1) != (v124 & 1))
      {
        goto LABEL_104;
      }

      v118 = v123;
    }

    v210[1] = v116;
    if ((v122 & 1) == 0)
    {
      (*v190)(v188, v211, v209);
      sub_264DA5CC0();
    }

    v125 = v116[7];
    v126 = *(v125 + 8 * v118);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    *(v125 + 8 * v118) = v126;
    v128 = v111;
    if ((v127 & 1) == 0)
    {
      v126 = sub_264DBBD58(0, *(v126 + 2) + 1, 1, v126, &qword_27FFB1A78, &qword_264E264F8, &type metadata for MostUsedListSectionAppsAndCategories.Item);
      *(v125 + 8 * v118) = v126;
    }

    v130 = *(v126 + 2);
    v129 = *(v126 + 3);
    if (v130 >= v129 >> 1)
    {
      *(v125 + 8 * v118) = sub_264DBBD58((v129 > 1), v130 + 1, 1, v126, &qword_27FFB1A78, &qword_264E264F8, &type metadata for MostUsedListSectionAppsAndCategories.Item);
    }

    (*v201)(v211, v209);
    (*v213)(v219, v82);
    v131 = *(v125 + 8 * v118);
    *(v131 + 16) = v130 + 1;
    v132 = v131 + 56 * v130;
    v133 = v200;
    *(v132 + 32) = v215;
    *(v132 + 40) = v133;
    *(v132 + 48) = v100;
    v134 = v197;
    *(v132 + 56) = v198;
    *(v132 + 64) = v134;
    *(v132 + 72) = v128;
    *(v132 + 80) = v113 & 1;
    *(v132 + 81) = 0;
    v203 = sub_264DBD2E8;
    v4 = v205;
    v2 = v206;
    v5 = v204;
    v87 = v194;
LABEL_48:
    if (v87 == ++v88)
    {
      goto LABEL_69;
    }
  }

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
  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DB424C(uint64_t a1)
{
  v2 = v1;
  v84 = sub_264E238E8();
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v77 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v68 - v7;
  v99 = sub_264E23CB8();
  v8 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E23D18();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v82 = a1;
  v83 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264E23DA8();
  v75 = *(v14 + 16);
  if (!v75)
  {

    v66 = 0;
    return sub_264D91628(v66, 0);
  }

  v93 = 0;
  v15 = 0;
  v74 = v14 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v73 = v12 + 16;
  v16 = *MEMORY[0x277CF9618];
  v95 = v8 + 16;
  v96 = v16;
  v76 = (v4 + 16);
  v79 = (v4 + 8);
  v17 = (v8 + 8);
  v69 = (v12 + 8);
  v81 = v2;
  v72 = v11;
  v71 = v12;
  v70 = v14;
  v80 = v8;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      goto LABEL_37;
    }

    v18 = *(v12 + 72);
    v78 = v15;
    v19 = v74 + v18 * v15;
    v20 = *(v12 + 16);
    v21 = v83;
    v20(v83, v19, v11);
    v22 = sub_264E23D08();
    v23 = v22;
    v98 = *(v22 + 16);
    if (v98)
    {
      break;
    }

LABEL_3:
    v15 = v78 + 1;

    v11 = v72;
    (*v69)(v21, v72);
    v12 = v71;
    v14 = v70;
    if (v15 == v75)
    {

      v66 = v93;
      return sub_264D91628(v66, 0);
    }
  }

  v24 = 0;
  v97 = v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  while (v24 < *(v23 + 16))
  {
    (*(v8 + 16))(v10, v97 + *(v8 + 72) * v24, v99);
    sub_264E23CD8();
    v25 = sub_264E250E8();

    v26 = sub_264E25108();
    v28 = v27;

    if (v26 == sub_264E25108() && v28 == v29)
    {
    }

    else
    {
      v30 = sub_264E25478();

      if ((v30 & 1) == 0 && sub_264E23C78() > 0)
      {
        v31 = sub_264E23C88();
        v33 = v32;
        v89 = sub_264E23C78();
        v34 = [objc_opt_self() sharedCache];
        v35 = sub_264E250E8();
        v36 = [v34 appInfoForBundleIdentifier_];

        sub_264E23D98();
        v88 = v36;
        v37 = [v36 displayName];
        v38 = sub_264E25108();
        v86 = v39;
        v87 = v38;

        v40 = objc_opt_self();
        v41 = [v40 sharedCache];
        v90 = v33;
        v91 = v31;
        v42 = sub_264E250E8();
        v43 = [v41 imageForBundleIdentifier_];

        if (!v43)
        {
          v44 = [v40 sharedCache];
          [v44 imageForBlankApplicationIcon];
        }

        v92 = sub_264E24D08();
        v85 = sub_264E23CA8();
        sub_264D91628(v93, 0);
        v45 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = *v45;
        v47 = v100;
        v49 = sub_264D9D6C8(v94);
        v50 = v47[2];
        v51 = (v48 & 1) == 0;
        v52 = v50 + v51;
        v8 = v80;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_36;
        }

        v53 = v48;
        if (v47[3] >= v52)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v45 = v47;
            if ((v48 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            sub_264DA1B10();
            v47 = v100;
            *v45 = v100;
            if ((v53 & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          sub_264D9FA04(v52, isUniquelyReferenced_nonNull_native);
          v47 = v100;
          v54 = sub_264D9D6C8(v94);
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_38;
          }

          v49 = v54;
          *v45 = v47;
          if (v53)
          {
            goto LABEL_25;
          }

LABEL_24:
          (*v76)(v77, v94, v84);
          sub_264DA5CC0();
        }

LABEL_25:
        v56 = v47[7];
        v57 = *(v56 + 8 * v49);
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *(v56 + 8 * v49) = v57;
        if ((v58 & 1) == 0)
        {
          v57 = sub_264DBBD58(0, *(v57 + 2) + 1, 1, v57, &qword_27FFB1A70, &qword_264E264F0, &type metadata for MostUsedListSectionPickups.Item);
          *(v56 + 8 * v49) = v57;
        }

        v60 = *(v57 + 2);
        v59 = *(v57 + 3);
        if (v60 >= v59 >> 1)
        {
          *(v56 + 8 * v49) = sub_264DBBD58((v59 > 1), v60 + 1, 1, v57, &qword_27FFB1A70, &qword_264E264F0, &type metadata for MostUsedListSectionPickups.Item);
        }

        (*v79)(v94, v84);
        (*v17)(v10, v99);
        v61 = *(v56 + 8 * v49);
        *(v61 + 16) = v60 + 1;
        v62 = v61 + 56 * v60;
        v63 = v90;
        *(v62 + 32) = v91;
        *(v62 + 40) = v63;
        v64 = v86;
        v65 = v87;
        *(v62 + 48) = v89;
        *(v62 + 56) = v65;
        *(v62 + 64) = v64;
        *(v62 + 72) = v92;
        *(v62 + 80) = v85 & 1;
        v93 = sub_264DBD2E8;
        v21 = v83;
        goto LABEL_9;
      }
    }

    (*v17)(v10, v99);
LABEL_9:
    if (v98 == ++v24)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DB4A64(uint64_t a1)
{
  v86 = sub_264E238E8();
  v2 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = &v79 - v5;
  v6 = sub_264E23CB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E23D18();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  v14 = sub_264E23DA8();
  v15 = v14;
  v90 = *(v14 + 16);
  if (v90)
  {
    v99 = 0;
    v16 = 0;
    v89 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v88 = v11 + 16;
    v108 = *MEMORY[0x277CF9618];
    v79 = (v2 + 16);
    v81 = (v2 + 8);
    v103 = *MEMORY[0x277D4BC28];
    v107 = (v7 + 8);
    v87 = (v11 + 8);
    v100 = *MEMORY[0x277D4BC20];
    v85 = v10;
    v84 = v11;
    v106 = v13;
    v83 = v14;
    v104 = v7;
    v105 = v7 + 16;
    while (v16 < *(v15 + 16))
    {
      v18 = *(v11 + 72);
      v101 = v16;
      (*(v11 + 16))(v13, v89 + v18 * v16, v10);
      v19 = sub_264E23D08();
      v110 = *(v19 + 16);
      if (v110)
      {
        v20 = 0;
        v109 = v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        while (1)
        {
          if (v20 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_49;
          }

          v21 = v19;
          (*(v7 + 16))(v9, v109 + *(v7 + 72) * v20, v6);
          sub_264E23CD8();
          v22 = sub_264E250E8();

          v23 = sub_264E25108();
          v25 = v24;

          if (v23 == sub_264E25108() && v25 == v26)
          {
          }

          else
          {
            v27 = sub_264E25478();

            if ((v27 & 1) == 0)
            {
              v28 = v6;
              v29 = [objc_opt_self() systemHiddenBundleIdentifiersForDeviceFamily_];
              v30 = sub_264E25278();

              v31 = sub_264E23C88();
              v33 = v32;
              if (*(v30 + 16) && (v34 = v31, sub_264E254A8(), sub_264E25168(), v35 = sub_264E254C8(), v36 = -1 << *(v30 + 32), v37 = v35 & ~v36, ((*(v30 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
              {
                v38 = ~v36;
                while (1)
                {
                  v39 = (*(v30 + 48) + 16 * v37);
                  v40 = *v39 == v34 && v39[1] == v33;
                  if (v40 || (sub_264E25478() & 1) != 0)
                  {
                    break;
                  }

                  v37 = (v37 + 1) & v38;
                  if (((*(v30 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                v6 = v28;
                v7 = v104;
                v13 = v106;
              }

              else
              {
LABEL_21:

                sub_264E23C88();
                sub_264E25108();
                v41 = sub_264E251A8();

                v6 = v28;
                v7 = v104;
                v13 = v106;
                if ((v41 & 1) == 0)
                {
                  sub_264E23C88();
                  sub_264E25108();
                  v42 = sub_264E251A8();

                  if ((v42 & 1) == 0 && sub_264E23C98() > 0)
                  {
                    v43 = sub_264E23C88();
                    v45 = v44;
                    v95 = sub_264E23C98();
                    v46 = [objc_opt_self() sharedCache];
                    v47 = sub_264E250E8();
                    v48 = [v46 appInfoForBundleIdentifier_];

                    sub_264E23D98();
                    v94 = v48;
                    v49 = [v48 displayName];
                    v93 = sub_264E25108();
                    v92 = v50;

                    v51 = objc_opt_self();
                    v52 = [v51 sharedCache];
                    v97 = v43;
                    v96 = v45;
                    v53 = sub_264E250E8();
                    v54 = [v52 imageForBundleIdentifier_];

                    if (!v54)
                    {
                      v55 = [v51 0x279B88DB9];
                      [v55 imageForBlankApplicationIcon];
                    }

                    v91 = sub_264E24D08();
                    sub_264D91628(v99, 0);
                    v56 = v98;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v111 = *v56;
                    v58 = v111;
                    v60 = sub_264D9D6C8(v102);
                    v61 = v58[2];
                    v62 = (v59 & 1) == 0;
                    v63 = v61 + v62;
                    if (__OFADD__(v61, v62))
                    {
                      goto LABEL_50;
                    }

                    v64 = v59;
                    if (v58[3] >= v63)
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_264DA1B24();
                        v58 = v111;
                      }
                    }

                    else
                    {
                      sub_264D9FDF4(v63, isUniquelyReferenced_nonNull_native);
                      v58 = v111;
                      v65 = sub_264D9D6C8(v102);
                      if ((v64 & 1) != (v66 & 1))
                      {
                        goto LABEL_51;
                      }

                      v60 = v65;
                    }

                    *v98 = v58;
                    if ((v64 & 1) == 0)
                    {
                      (*v79)(v80, v102, v86);
                      sub_264DA5CC0();
                    }

                    v67 = v58[7];
                    v68 = *(v67 + 8 * v60);
                    v69 = swift_isUniquelyReferenced_nonNull_native();
                    *(v67 + 8 * v60) = v68;
                    if ((v69 & 1) == 0)
                    {
                      v68 = sub_264DBBD58(0, *(v68 + 2) + 1, 1, v68, &qword_27FFB1A68, &qword_264E264E8, &type metadata for MostUsedListSectionNotifications.Item);
                      *(v67 + 8 * v60) = v68;
                    }

                    v71 = *(v68 + 2);
                    v70 = *(v68 + 3);
                    if (v71 >= v70 >> 1)
                    {
                      *(v67 + 8 * v60) = sub_264DBBD58((v70 > 1), v71 + 1, 1, v68, &qword_27FFB1A68, &qword_264E264E8, &type metadata for MostUsedListSectionNotifications.Item);
                    }

                    (*v81)(v102, v86);
                    (*v107)(v9, v6);
                    v72 = *(v67 + 8 * v60);
                    *(v72 + 16) = v71 + 1;
                    v73 = v72 + 56 * v71;
                    v74 = v96;
                    *(v73 + 32) = v97;
                    *(v73 + 40) = v74;
                    v75 = v93;
                    *(v73 + 48) = v95;
                    *(v73 + 56) = v75;
                    v76 = v91;
                    *(v73 + 64) = v92;
                    *(v73 + 72) = v76;
                    *(v73 + 80) = 1;
                    v99 = sub_264DBD2E8;
                    v13 = v106;
                    goto LABEL_28;
                  }
                }
              }
            }
          }

          (*v107)(v9, v6);
LABEL_28:
          ++v20;
          v19 = v21;
          if (v20 == v110)
          {

            v10 = v85;
            v11 = v84;
            v15 = v83;
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v17 = v101 + 1;
      (*v87)(v13, v10);
      v16 = v17;
      if (v17 == v90)
      {

        v77 = v99;
        return sub_264D91628(v77, 0);
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    result = sub_264E25498();
    __break(1u);
  }

  else
  {

    v77 = 0;
    return sub_264D91628(v77, 0);
  }

  return result;
}

uint64_t sub_264DB54B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264E238E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264E23CB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_264E23D18();
  v12 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264E23D68();
  result = sub_264E23DA8();
  v41 = *(result + 16);
  if (v41)
  {
    v31[0] = v7;
    v31[1] = a1;
    v32 = v5;
    v33 = v2;
    v34 = v4;
    v35 = result;
    v16 = 0;
    v40 = result + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = v12 + 8;
    v39 = v12 + 16;
    v17 = (v9 + 8);
    v18 = v12;
    v19 = result;
    v36 = v12;
    v37 = v9;
    while (v16 < *(v19 + 16))
    {
      v20 = *(v18 + 72);
      v45 = v16;
      v22 = v42;
      v21 = v43;
      (*(v18 + 16))(v42, v40 + v20 * v16, v43);
      v23 = sub_264E23D08();
      (*(v18 + 8))(v22, v21);
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v44 = v23;
        v26 = v23 + v25;
        v27 = *(v37 + 72);
        v28 = *(v37 + 16);
        while (1)
        {
          v28(v11, v26, v8);
          v29 = sub_264E23C78();
          result = (*v17)(v11, v8);
          v30 = __OFADD__(v14, v29);
          v14 += v29;
          if (v30)
          {
            break;
          }

          v26 += v27;
          if (!--v24)
          {

            v19 = v35;
            v18 = v36;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      v16 = v45 + 1;
      if (v45 + 1 == v41)
      {

        v4 = v34;
        v5 = v32;
        v7 = v31[0];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    sub_264E23D98();
    sub_264DB5838(v14, v7, 0, 1, &qword_27FFB1D90, &unk_264E268E0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_264DB5838(double a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v30 = a4;
  v29 = *&a3;
  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_264E23AA8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23858();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v12 + 8))(v14, v11);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) + 36);
  v20 = *(v6 + v19);
  v21 = 0.0;
  if (*(v20 + 16))
  {
    v22 = sub_264D9D5F4(v18);
    if (v23)
    {
      v21 = *(*(v20 + 56) + 8 * v22);
    }
  }

  v24 = v29;
  if (v21 + a1 <= v29)
  {
    v24 = v21 + a1;
  }

  if (v30)
  {
    v25 = v21 + a1;
  }

  else
  {
    v25 = v24;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v9 + v19);
  sub_264DCD340(v18, isUniquelyReferenced_nonNull_native, v25);
  result = (*(v16 + 8))(v18, v15);
  *(v9 + v19) = v31;
  return result;
}

void sub_264DB5A50(uint64_t a1)
{
  v194 = a1;
  v191 = type metadata accessor for OverviewChart.Model(0);
  MEMORY[0x28223BE20](v191);
  v138 = &v136 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_264E23C38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v143 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = &v136 - v7;
  v179 = sub_264E23B98();
  v8 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_264E23B78();
  v10 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_264E23B38();
  v12 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v173 = &v136 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v16 - 8);
  v172 = &v136 - v17;
  v171 = sub_264E23928();
  v18 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  MEMORY[0x28223BE20](v189);
  v205 = &v136 - v20;
  v158 = sub_264E23C18();
  v21 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v23 - 8);
  v141 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v149 = &v136 - v26;
  MEMORY[0x28223BE20](v27);
  v188 = &v136 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v136 - v30;
  MEMORY[0x28223BE20](v32);
  v187 = &v136 - v33;
  v206 = sub_264E23AA8();
  v151 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v140 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v144 = &v136 - v36;
  MEMORY[0x28223BE20](v37);
  v146 = &v136 - v38;
  MEMORY[0x28223BE20](v39);
  v196 = &v136 - v40;
  MEMORY[0x28223BE20](v41);
  v203 = &v136 - v42;
  v192 = sub_264E238E8();
  v150 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v148 = &v136 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v186 = &v136 - v45;
  v139 = type metadata accessor for PickupsOverviewChart.Model(0);
  v193 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v145 = &v136 - v48;
  MEMORY[0x28223BE20](v49);
  v204 = (&v136 - v50);
  v152 = v1;
  v51 = *v1;
  v52 = *(*v1 + 16);
  v147 = v4;
  v185 = v52;
  v190 = v51;
  if (v52)
  {
    v53 = 0;
    v136 = (*(v193 + 80) + 32) & ~*(v193 + 80);
    v183 = v51 + v136;
    v182 = (v150 + 8);
    v202 = (v151 + 8);
    v156 = *MEMORY[0x277CC99B8];
    v155 = (v21 + 104);
    v154 = (v21 + 8);
    v169 = (v4 + 56);
    v168 = *MEMORY[0x277CC9878];
    v167 = (v12 + 104);
    v166 = (v10 + 104);
    v165 = (v8 + 104);
    v164 = *MEMORY[0x277CC98F0];
    v163 = (v8 + 8);
    v162 = (v10 + 8);
    v161 = *MEMORY[0x277CC9900];
    v160 = (v12 + 8);
    v159 = (v18 + 8);
    v201 = (v151 + 16);
    v195 = (v151 + 56);
    v181 = (v151 + 48);
    v153 = (v151 + 32);
    v198 = v3;
    v184 = v31;
    while (1)
    {
      if (v53 >= v51[2])
      {
        __break(1u);
        goto LABEL_33;
      }

      v56 = *(v193 + 72);
      v200 = v53;
      v180 = v56 * v53;
      v57 = v204;
      sub_264DBD27C(&v183[v56 * v53], v204, type metadata accessor for PickupsOverviewChart.Model);
      v58 = v186;
      sub_264E23D98();
      v59 = v203;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v182)(v58, v192);
      v60 = v196;
      sub_264E23AF8();
      v61 = sub_264E23A78();
      v199 = *v202;
      v199(v60, v206);
      v62 = v201 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if ((v61 & 1) != 0 && (v63 = v157, v64 = v158, (*v155)(v157, v156, v158), v65 = sub_264E23C28(), (*v154)(v63, v64), v65 == sub_264E23B18()))
      {
        v66 = *v201;
        v67 = v187;
        v68 = v206;
        (*v201)(v187, v59, v206);
        (*v195)(v67, 0, 1, v68);
      }

      else
      {
        (*v169)(v172, 1, 1, v198);
        v69 = sub_264E23C48();
        v70 = *(*(v69 - 8) + 56);
        v197 = v62;
        v70(v173, 1, 1, v69);
        sub_264E23B18();
        v71 = v170;
        sub_264E23918();
        v72 = v174;
        v73 = v175;
        (*v167)(v174, v168, v175);
        v74 = v176;
        v75 = v177;
        (*v166)(v176, v164, v177);
        v76 = v178;
        v77 = v179;
        (*v165)(v178, v161, v179);
        v78 = v187;
        sub_264E23C08();
        v79 = v76;
        v57 = v204;
        (*v163)(v79, v77);
        v67 = v78;
        (*v162)(v74, v75);
        (*v160)(v72, v73);
        (*v159)(v71, v171);
        v66 = *v201;
      }

      v80 = v184;
      v81 = v206;
      v66(v184, v57, v206);
      (*v195)(v80, 0, 1, v81);
      v82 = *(v189 + 48);
      v83 = v205;
      sub_264D93A14(v67, v205);
      sub_264D93A14(v80, &v83[v82]);
      v84 = *v181;
      if ((*v181)(v83, 1, v81) == 1)
      {
        break;
      }

      v85 = v205;
      sub_264D93A14(v205, v188);
      v86 = v84(&v85[v82], 1, v206);
      v51 = v190;
      v87 = v203;
      if (v86 == 1)
      {
        sub_264D817BC(v80, &qword_27FFB1860, &qword_264E267E0);
        sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
        v88 = v206;
        v89 = v199;
        v199(v87, v206);
        sub_264DBD184(v204, type metadata accessor for PickupsOverviewChart.Model);
        v89(v188, v88);
LABEL_4:
        sub_264D817BC(v205, &qword_27FFB1858, &unk_264E26200);
        goto LABEL_5;
      }

      v90 = v206;
      v91 = v196;
      (*v153)(v196, &v205[v82], v206);
      sub_264DBD13C(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v92 = v188;
      LODWORD(v197) = sub_264E25068();
      v93 = v199;
      v199(v91, v90);
      sub_264D817BC(v80, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
      v93(v87, v90);
      sub_264DBD184(v204, type metadata accessor for PickupsOverviewChart.Model);
      v93(v92, v90);
      sub_264D817BC(v205, &qword_27FFB1860, &qword_264E267E0);
      if (v197)
      {
        goto LABEL_28;
      }

LABEL_5:
      v53 = v200 + 1;
      v3 = v198;
      if (v185 == v200 + 1)
      {
        goto LABEL_16;
      }
    }

    sub_264D817BC(v80, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
    v54 = v206;
    v199(v203, v206);
    sub_264DBD184(v57, type metadata accessor for PickupsOverviewChart.Model);
    v55 = v84(&v205[v82], 1, v54);
    v51 = v190;
    if (v55 == 1)
    {
      sub_264D817BC(v205, &qword_27FFB1860, &qword_264E267E0);
LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_264E15DA8(v51);
      }

      v135 = v152;
      if (v200 < v51[2])
      {
        sub_264DB7130(v194);
        *v135 = v51;
        return;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_4;
  }

LABEL_16:
  v94 = *(type metadata accessor for PickupsOverviewTabView.Model(0) + 20);
  v95 = v148;
  sub_264E23D98();
  v96 = v196;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v150 + 8))(v95, v192);
  v97 = v152;
  v98 = v149;
  Calendar.startOfWeek(containing:)(v96, v149);
  v99 = v151;
  v100 = (v151 + 8);
  v101 = v206;
  v205 = *(v151 + 8);
  (v205)(v96, v206);
  v102 = v99[6];
  if ((v102)(v98, 1, v101) == 1)
  {
    sub_264D817BC(v98, &qword_27FFB1860, &qword_264E267E0);
    if (qword_27FFB1688 != -1)
    {
LABEL_33:
      swift_once();
    }

    v103 = sub_264E23FC8();
    __swift_project_value_buffer(v103, qword_27FFB2028);
    v104 = sub_264E23FA8();
    v105 = sub_264E252A8();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_264D7D000, v104, v105, "Could not compute start of week; skipping activity segment", v106, 2u);
      MEMORY[0x26674FCD0](v106, -1, -1);
    }
  }

  else
  {
    v202 = v100;
    v203 = v94;
    v107 = v3;
    v108 = v99[4];
    v204 = v102;
    v109 = v144;
    v110 = v146;
    v111 = v206;
    v200 = v108;
    v201 = (v99 + 4);
    (v108)(v146, v98, v206);
    v112 = v99[2];
    v112(v109, v110, v111);
    v113 = *(v147 + 16);
    v114 = v142;
    v113(v142, &v203[v97], v107);
    v112((v145 + *(v139 + 20)), v109, v111);
    v115 = v140;
    v116 = v109;
    v117 = v114;
    v112(v140, v116, v111);
    v118 = v143;
    v119 = v107;
    v113(v143, v114, v107);
    v203 = sub_264E24C78();
    v120 = v141;
    Calendar.startOfWeek(containing:)(v115, v141);
    if ((v204)(v120, 1, v111) == 1)
    {
      goto LABEL_35;
    }

    v122 = v205;
    v121 = v206;
    (v205)(v115, v206);
    v123 = v147;
    v124 = v117;
    v125 = v119;
    (*(v147 + 8))(v124, v119);
    v122(v144, v121);
    v126 = v138;
    v200(v138, v120, v121);
    v127 = v191;
    *(v126 + *(v191 + 20)) = MEMORY[0x277D84F90];
    (*(v123 + 32))(v126 + v127[6], v118, v125);
    *(v126 + v127[7]) = v203;
    *(v126 + v127[8]) = 1;
    v128 = v145;
    sub_264DBD214(v126, v145, type metadata accessor for OverviewChart.Model);
    sub_264DB7130(v194);
    v129 = v137;
    sub_264DBD27C(v128, v137, type metadata accessor for PickupsOverviewChart.Model);
    v130 = v190;
    v131 = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_264DBC1A0(0, v130[2] + 1, 1, v130, &qword_27FFB1BA0, &qword_264E26628, type metadata accessor for PickupsOverviewChart.Model);
    }

    v132 = v152;
    v134 = v130[2];
    v133 = v130[3];
    if (v134 >= v133 >> 1)
    {
      v130 = sub_264DBC1A0((v133 > 1), v134 + 1, 1, v130, &qword_27FFB1BA0, &qword_264E26628, type metadata accessor for PickupsOverviewChart.Model);
    }

    sub_264DBD184(v131, type metadata accessor for PickupsOverviewChart.Model);
    v122(v146, v206);
    v130[2] = v134 + 1;
    sub_264DBD214(v129, v130 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v134, type metadata accessor for PickupsOverviewChart.Model);
    *v132 = v130;
  }
}

uint64_t sub_264DB7130(uint64_t a1)
{
  v2 = sub_264E23CB8();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_264E23D18();
  v41 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_264E23C38();
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264E23AA8();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_264E238E8();
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OverviewChart.Day(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_264E23D98();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v11 + 8))(v13, v45);
  v18 = sub_264E23D68();
  v19 = type metadata accessor for OverviewChart.Model(0);
  v20 = v46;
  v21 = v51;
  (*(v6 + 16))(v46, v39[1] + *(v19 + 24), v51);
  sub_264E23AF8();
  (*(v6 + 8))(v20, v21);
  (*(v47 + 8))(v10, v48);
  v22 = v18;
  v23 = *(v15 + 28);
  v43 = v17;
  v40 = v23;
  *&v17[v23] = v18;
  result = sub_264E23DA8();
  v48 = *(result + 16);
  if (v48)
  {
    v25 = 0;
    v27 = v41;
    v26 = v42;
    v46 = (result + ((*(v27 + 80) + 32) & ~*(v27 + 80)));
    v47 = result;
    v44 = v41 + 8;
    v45 = v41 + 16;
    v28 = (v42 + 8);
    while (v25 < *(result + 16))
    {
      v29 = v49;
      v30 = v50;
      (*(v27 + 16))(v49, &v46[*(v27 + 72) * v25], v50);
      v31 = sub_264E23D08();
      (*(v27 + 8))(v29, v30);
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v51 = v31;
        v34 = v31 + v33;
        v35 = *(v26 + 72);
        v36 = *(v26 + 16);
        do
        {
          v36(v4, v34, v2);
          v37 = sub_264E23C78();
          (*v28)(v4, v2);
          v22 = v22 + v37;
          v34 += v35;
          --v32;
        }

        while (v32);

        v26 = v42;
        v27 = v41;
        *&v43[v40] = v22;
      }

      else
      {
      }

      result = v47;
      if (++v25 == v48)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v38 = v43;
    sub_264DAE2D0(v43);
    return sub_264DBD184(v38, type metadata accessor for OverviewChart.Day);
  }

  return result;
}

uint64_t sub_264DB766C(uint64_t a1)
{
  v63 = a1;
  v3 = sub_264E23C38();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_264E23AA8();
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - v8;
  MEMORY[0x28223BE20](v9);
  v58 = &v47 - v10;
  v57 = sub_264E238E8();
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PickupsDetailChart.Model(0);
  v59 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v51 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v52 = &v47 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = 0;
  v54 = v1;
  v61 = *v1;
  v60 = v61[2];
  v56 = (v11 + 1);
  v47 = v5;
  v64 = v5 + 8;
  v22 = v58;
  do
  {
    if (v60 == v21)
    {
      v29 = *(type metadata accessor for PickupsDetailTabView.Model(0) + 20);
      sub_264E23D98();
      v30 = v58;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v56)(v13, v57);
      v31 = v53;
      v32 = v54;
      sub_264E23AF8();
      v33 = v47;
      v60 = *(v47 + 1);
      v34 = v62;
      (v60)(v30, v62);
      v35 = *(v33 + 2);
      v35(v30, v31, v34);
      v36 = v49;
      v37 = *(v49 + 16);
      v38 = v32 + v29;
      v39 = v48;
      v40 = v50;
      v37(v48, v38, v50);
      v41 = v52;
      v35(v52, v30, v34);
      v42 = type metadata accessor for DetailChart.Model(0);
      v37((v41 + v42[6]), v39, v40);
      v43 = sub_264E24C78();
      v44 = v39;
      v5 = v60;
      (*(v36 + 8))(v44, v40);
      (v5)(v30, v34);
      *(v41 + v42[5]) = MEMORY[0x277D84F90];
      *(v41 + v42[7]) = v43;
      *(v41 + v42[8]) = 1;
      *(v41 + v42[9]) = 1;
      *(v41 + v42[10]) = 0x40AC200000000000;
      sub_264DB7D7C();
      v2 = v51;
      sub_264DBD27C(v41, v51, type metadata accessor for PickupsDetailChart.Model);
      v11 = v61;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_10:
        v46 = v11[2];
        v45 = v11[3];
        if (v46 >= v45 >> 1)
        {
          v11 = sub_264DBC1A0((v45 > 1), v46 + 1, 1, v11, &qword_27FFB1BE0, &unk_264E270D0, type metadata accessor for PickupsDetailChart.Model);
        }

        sub_264DBD184(v52, type metadata accessor for PickupsDetailChart.Model);
        (v5)(v53, v62);
        v11[2] = v46 + 1;
        result = sub_264DBD214(v2, v11 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v46, type metadata accessor for PickupsDetailChart.Model);
        goto LABEL_13;
      }

LABEL_15:
      v11 = sub_264DBC1A0(0, v11[2] + 1, 1, v11, &qword_27FFB1BE0, &unk_264E270D0, type metadata accessor for PickupsDetailChart.Model);
      goto LABEL_10;
    }

    if (v21 >= v61[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v23 = (v21 + 1);
    v5 = ((*(v59 + 80) + 32) & ~*(v59 + 80));
    sub_264DBD27C(&v5[v61 + *(v59 + 72) * v21], v20, type metadata accessor for PickupsDetailChart.Model);
    sub_264E23D98();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*v56)(v13, v57);
    type metadata accessor for DetailChart.Model(0);
    v24 = v55;
    sub_264E23AF8();
    v25 = sub_264E23A78();
    v11 = v64;
    v2 = *v64;
    v26 = v24;
    v27 = v62;
    (*v64)(v26, v62);
    v2(v22, v27);
    sub_264DBD184(v20, type metadata accessor for PickupsDetailChart.Model);
    v21 = v23;
  }

  while ((v25 & 1) == 0);
  v11 = v61;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264E15E0C(v11);
    v11 = result;
  }

  if ((v23 - 1) < v11[2])
  {
    result = sub_264DB7D7C();
LABEL_13:
    *v54 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_264DB7D7C()
{
  v1 = sub_264E23CB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_264E23D18();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailChart.Hour(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  v11 = sub_264E23D68();
  v31 = *(v8 + 28);
  v32 = v10;
  *&v10[v31] = v11;
  result = sub_264E23DA8();
  v13 = result;
  v36 = *(result + 16);
  if (v36)
  {
    v27[1] = v0;
    v28 = result;
    v14 = 0;
    v35 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v33 = v5 + 8;
    v34 = v5 + 16;
    v29 = v5;
    v30 = v2;
    v15 = (v2 + 8);
    while (v14 < *(v13 + 16))
    {
      v17 = v37;
      v16 = v38;
      (*(v5 + 16))(v37, v35 + *(v5 + 72) * v14, v38);
      v18 = sub_264E23D08();
      (*(v5 + 8))(v17, v16);
      v19 = v18;
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v39 = v19;
        v22 = v19 + v21;
        v23 = *(v30 + 72);
        v24 = *(v30 + 16);
        do
        {
          v24(v4, v22, v1);
          v25 = sub_264E23C78();
          (*v15)(v4, v1);
          v11 = v11 + v25;
          v22 += v23;
          --v20;
        }

        while (v20);

        *&v32[v31] = v11;
        v13 = v28;
        v5 = v29;
      }

      else
      {
      }

      if (++v14 == v36)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v26 = v32;
    sub_264DADF4C(v32);
    return sub_264DBD184(v26, type metadata accessor for DetailChart.Hour);
  }

  return result;
}

uint64_t sub_264DB80BC(unint64_t a1)
{
  v2 = sub_264E23CB8();
  v74 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264E23D18();
  v6 = *(v5 - 8);
  v80 = v5;
  v81 = v6;
  MEMORY[0x28223BE20](v5);
  v79 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v68 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = sub_264E238E8();
  v71 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = a1;
  sub_264E23D98();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  Calendar.startOfWeek(containing:)(v16, v10);
  v23 = *(v12 + 8);
  v69 = v16;
  v70 = v23;
  v23(v16, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    (*(v71 + 8))(v22, v20);
    return sub_264D817BC(v10, &qword_27FFB1860, &qword_264E267E0);
  }

  else
  {
    v65 = v12 + 8;
    v66 = v22;
    v62 = v20;
    v63 = v12;
    v25 = *(v12 + 32);
    v67 = v19;
    v64 = v11;
    v25(v19, v10, v11);
    v26 = sub_264E23D68();
    v27 = sub_264E23DA8();
    v28 = v27;
    v78 = *(v27 + 16);
    if (v78)
    {
      v29 = 0;
      v77 = v27 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v75 = v81 + 8;
      v76 = v81 + 16;
      v30 = v74 + 16;
      v22 = (v74 + 8);
      v73 = v27;
      do
      {
        if (v29 >= *(v28 + 16))
        {
          goto LABEL_29;
        }

        v31 = v80;
        v20 = v81;
        v32 = *(v81 + 72);
        v83 = v29;
        v33 = v79;
        (*(v81 + 16))(v79, v77 + v32 * v29, v80);
        v34 = sub_264E23D08();
        (*(v20 + 8))(v33, v31);
        v35 = v34;
        v16 = *(v34 + 16);
        if (!v16)
        {

          goto LABEL_6;
        }

        v36 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v82 = v35;
        v37 = v35 + v36;
        v28 = *(v74 + 72);
        v20 = *(v74 + 16);
        do
        {
          (v20)(v4, v37, v2);
          v38 = sub_264E23C78();
          (*v22)(v4, v2);
          v39 = __OFADD__(v26, v38);
          v26 += v38;
          if (v39)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v37 += v28;
          --v16;
        }

        while (v16);

        v28 = v73;
LABEL_6:
        v29 = v83 + 1;
      }

      while (v83 + 1 != v78);
    }

    v16 = v72;
    v40 = v69;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v2 = v68;
    sub_264E23AF8();
    v28 = v64;
    v70(v40, v64);
    v20 = *(type metadata accessor for PickupsOverviewLegendView.Model(0) + 20);
    v41 = *&v16[v20];
    if (*(v41 + 16) && (v42 = sub_264D9D5F4(v67), (v43 & 1) != 0))
    {
      v44 = *(*(v41 + 56) + 8 * v42);
    }

    else
    {
      v44 = sub_264DEE390(MEMORY[0x277D84F90]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v44;
    v30 = sub_264D9D5F4(v2);
    v47 = v44[2];
    v48 = (v46 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_30;
    }

    LOBYTE(v22) = v46;
    if (v44[3] >= v49)
    {
      v53 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    sub_264D9F644(v49, isUniquelyReferenced_nonNull_native);
    v44 = v84;
    v50 = sub_264D9D5F4(v2);
    if ((v22 & 1) == (v51 & 1))
    {
      v30 = v50;
      v52 = v62;
      v53 = v63;
      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v55 = v44[7];
        v56 = *(v55 + 8 * v30);
        v39 = __OFADD__(v56, v26);
        v57 = v56 + v26;
        if (!v39)
        {
          break;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        sub_264DA18A0();
        v53 = v63;
        v44 = v84;
LABEL_23:
        v52 = v62;
        if ((v22 & 1) == 0)
        {
LABEL_24:
          v54 = v69;
          (*(v53 + 16))(v69, v2, v28);
          sub_264DA0D8C(v30, v54, 0, v44);
        }
      }

      *(v55 + 8 * v30) = v57;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v84 = *&v16[v20];
      v59 = v44;
      v60 = v67;
      sub_264DCD6B0(v59, v67, v58);
      *&v16[v20] = v84;
      v61 = v70;
      v70(v2, v28);
      v61(v60, v28);
      return (*(v71 + 8))(v66, v52);
    }

    else
    {
      result = sub_264E25498();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_264DB87E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v2 - 8);
  v90 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v88 - v5;
  MEMORY[0x28223BE20](v7);
  v95 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v99 = &v88 - v12;
  MEMORY[0x28223BE20](v13);
  v98 = &v88 - v14;
  v105 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  v97 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264E23AA8();
  v106 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v89 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v88 - v19;
  MEMORY[0x28223BE20](v21);
  v103 = &v88 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v88 - v24;
  v26 = sub_264E23CB8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_264E23D18();
  v30 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_264E238E8();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v102 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  v33 = sub_264E23D68();
  v96 = a1;
  result = sub_264E23DA8();
  v35 = *(result + 16);
  v107 = v16;
  v114 = v35;
  v101 = v25;
  v91 = v20;
  if (v35)
  {
    v88 = v6;
    v36 = 0;
    v113 = result + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v111 = v30 + 8;
    v112 = v30 + 16;
    v109 = v30;
    v110 = v27;
    v37 = v30;
    v38 = result;
    v108 = result;
    while (v36 < *(v38 + 16))
    {
      v39 = *(v37 + 72);
      v118 = v36;
      v40 = v115;
      v41 = v116;
      (*(v37 + 16))(v115, v113 + v39 * v36, v116);
      v42 = sub_264E23D08();
      (*(v37 + 8))(v40, v41);
      v43 = v42;
      v44 = *(v42 + 16);
      if (v44)
      {
        v45 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        v117 = v43;
        v46 = v43 + v45;
        v47 = *(v110 + 72);
        v48 = *(v110 + 16);
        while (1)
        {
          v48(v29, v46, v26);
          v49 = sub_264E23C78();
          result = (*(v27 + 8))(v29, v26);
          v50 = __OFADD__(v33, v49);
          v33 += v49;
          if (v50)
          {
            break;
          }

          v46 += v47;
          if (!--v44)
          {

            v38 = v108;
            v37 = v109;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      v36 = v118 + 1;
      if (v118 + 1 == v114)
      {

        v51 = v104;
        v16 = v107;
        v25 = v101;
        v6 = v88;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v51 = v104;
LABEL_13:
  v52 = v103;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23AF8();
  v53 = *(v106 + 8);
  v117 = v106 + 8;
  v118 = v53;
  (v53)(v52, v16);
  v116 = *(type metadata accessor for PickupsDetailLegendView.Model(0) + 20);
  v54 = *(v51 + v116);
  if (*(v54 + 16))
  {
    v55 = v6;
    v56 = sub_264D9D5F4(v25);
    if (v57)
    {
      v58 = v97;
      v59 = *(v54 + 56) + *(v97 + 72) * v56;
      v60 = v98;
      sub_264DBD27C(v59, v98, type metadata accessor for PickupsDetailLegendView.DayPickups);
      v61 = 0;
      v62 = v99;
      v63 = v100;
      v64 = v106;
      goto LABEL_18;
    }
  }

  else
  {
    v55 = v6;
  }

  v61 = 1;
  v62 = v99;
  v63 = v100;
  v64 = v106;
  v60 = v98;
  v58 = v97;
LABEL_18:
  v65 = v105;
  v115 = *(v58 + 56);
  (v115)(v60, v61, 1, v105);
  sub_264DBD024(v60, v62);
  v66 = (*(v58 + 48))(v62, 1, v65);
  v67 = v95;
  if (v66 == 1)
  {
    v68 = v107;
    (*(v64 + 56))(v63, 1, 1, v107);
    *(v63 + *(v65 + 20)) = 0;
    sub_264D817BC(v62, &qword_27FFB20A8, &qword_264E270C8);
  }

  else
  {
    sub_264DBD214(v62, v63, type metadata accessor for PickupsDetailLegendView.DayPickups);
    v68 = v107;
  }

  v69 = v67;
  sub_264E23D88();
  v70 = *(v64 + 48);
  if (v70(v69, 1, v68) == 1)
  {
    result = sub_264D817BC(v69, &qword_27FFB1860, &qword_264E267E0);
  }

  else
  {
    v71 = *(v64 + 32);
    v72 = v91;
    v73 = v69;
    v74 = v71;
    v71(v91, v73, v68);
    sub_264D93A14(v63, v55);
    if (v70(v55, 1, v68) == 1)
    {
      sub_264D817BC(v55, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v63, &qword_27FFB1860, &qword_264E267E0);
      v74(v63, v72, v68);
      v64 = v106;
      result = (*(v106 + 56))(v63, 0, 1, v68);
    }

    else
    {
      v75 = v89;
      v74(v89, v55, v68);
      sub_264DBD13C(&qword_27FFB1BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v76 = sub_264E25048();
      v77 = (v76 & 1) == 0;
      if (v76)
      {
        v78 = v72;
      }

      else
      {
        v78 = v75;
      }

      if (v77)
      {
        v75 = v72;
      }

      v118(v78, v68);
      v79 = v90;
      v74(v90, v75, v68);
      v64 = v106;
      (*(v106 + 56))(v79, 0, 1, v68);
      result = sub_264DBD0D4(v79, v63, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  v80 = v105;
  v81 = *(v105 + 20);
  v82 = *(v63 + v81);
  v50 = __OFADD__(v82, v33);
  v83 = v82 + v33;
  if (!v50)
  {
    *(v63 + v81) = v83;
    v84 = v103;
    v85 = v101;
    v86 = v107;
    (*(v64 + 16))(v103, v101, v107);
    v87 = v94;
    sub_264DBD27C(v63, v94, type metadata accessor for PickupsDetailLegendView.DayPickups);
    (v115)(v87, 0, 1, v80);
    sub_264DA90EC(v87, v84);
    v118(v85, v86);
    (*(v92 + 8))(v102, v93);
    return sub_264DBD184(v63, type metadata accessor for PickupsDetailLegendView.DayPickups);
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_264DB92B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264E238E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264E23CB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_264E23D18();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_264E23DA8();
  v42 = *(result + 16);
  if (v42)
  {
    v32[0] = v7;
    v32[1] = a1;
    v33 = v5;
    v34 = v2;
    v35 = v4;
    v36 = result;
    v15 = 0;
    v16 = 0;
    v41 = result + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = v12 + 8;
    v40 = v12 + 16;
    v37 = v12;
    v38 = v9;
    v17 = (v9 + 8);
    v18 = v12;
    v19 = result;
    while (v16 < *(v19 + 16))
    {
      v20 = *(v18 + 72);
      v46 = v16;
      v21 = v43;
      v22 = v44;
      (*(v18 + 16))(v43, v41 + v20 * v16, v44);
      v23 = sub_264E23D08();
      (*(v18 + 8))(v21, v22);
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v45 = v23;
        v26 = v23 + v25;
        v27 = *(v38 + 72);
        v28 = *(v38 + 16);
        while (1)
        {
          v28(v11, v26, v8);
          v29 = sub_264E23C98();
          result = (*v17)(v11, v8);
          v30 = __OFADD__(v15, v29);
          v15 += v29;
          if (v30)
          {
            break;
          }

          v26 += v27;
          if (!--v24)
          {

            v19 = v36;
            v18 = v37;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      v16 = v46 + 1;
      if (v46 + 1 == v42)
      {

        v31 = v15;
        v4 = v35;
        v5 = v33;
        v7 = v32[0];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    v31 = 0.0;
LABEL_13:
    sub_264E23D98();
    sub_264DB5838(v31, v7, 0, 1, &qword_27FFB20B8, &qword_264E270F0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_264DB9640(uint64_t a1)
{
  v194 = a1;
  v191 = type metadata accessor for OverviewChart.Model(0);
  MEMORY[0x28223BE20](v191);
  v138 = &v136 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_264E23C38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v143 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v142 = &v136 - v7;
  v179 = sub_264E23B98();
  v8 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_264E23B78();
  v10 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_264E23B38();
  v12 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v173 = &v136 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v16 - 8);
  v172 = &v136 - v17;
  v171 = sub_264E23928();
  v18 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  MEMORY[0x28223BE20](v189);
  v205 = &v136 - v20;
  v158 = sub_264E23C18();
  v21 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v23 - 8);
  v141 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v149 = &v136 - v26;
  MEMORY[0x28223BE20](v27);
  v188 = &v136 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v136 - v30;
  MEMORY[0x28223BE20](v32);
  v187 = &v136 - v33;
  v206 = sub_264E23AA8();
  v151 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v140 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v144 = &v136 - v36;
  MEMORY[0x28223BE20](v37);
  v146 = &v136 - v38;
  MEMORY[0x28223BE20](v39);
  v196 = &v136 - v40;
  MEMORY[0x28223BE20](v41);
  v203 = &v136 - v42;
  v192 = sub_264E238E8();
  v150 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v148 = &v136 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v186 = &v136 - v45;
  v139 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v193 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v145 = &v136 - v48;
  MEMORY[0x28223BE20](v49);
  v204 = (&v136 - v50);
  v152 = v1;
  v51 = *v1;
  v52 = *(*v1 + 16);
  v147 = v4;
  v185 = v52;
  v190 = v51;
  if (v52)
  {
    v53 = 0;
    v136 = (*(v193 + 80) + 32) & ~*(v193 + 80);
    v183 = v51 + v136;
    v182 = (v150 + 8);
    v202 = (v151 + 8);
    v156 = *MEMORY[0x277CC99B8];
    v155 = (v21 + 104);
    v154 = (v21 + 8);
    v169 = (v4 + 56);
    v168 = *MEMORY[0x277CC9878];
    v167 = (v12 + 104);
    v166 = (v10 + 104);
    v165 = (v8 + 104);
    v164 = *MEMORY[0x277CC98F0];
    v163 = (v8 + 8);
    v162 = (v10 + 8);
    v161 = *MEMORY[0x277CC9900];
    v160 = (v12 + 8);
    v159 = (v18 + 8);
    v201 = (v151 + 16);
    v195 = (v151 + 56);
    v181 = (v151 + 48);
    v153 = (v151 + 32);
    v198 = v3;
    v184 = v31;
    while (1)
    {
      if (v53 >= v51[2])
      {
        __break(1u);
        goto LABEL_33;
      }

      v56 = *(v193 + 72);
      v200 = v53;
      v180 = v56 * v53;
      v57 = v204;
      sub_264DBD27C(&v183[v56 * v53], v204, type metadata accessor for NotificationsOverviewChart.Model);
      v58 = v186;
      sub_264E23D98();
      v59 = v203;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v182)(v58, v192);
      v60 = v196;
      sub_264E23AF8();
      v61 = sub_264E23A78();
      v199 = *v202;
      v199(v60, v206);
      v62 = v201 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if ((v61 & 1) != 0 && (v63 = v157, v64 = v158, (*v155)(v157, v156, v158), v65 = sub_264E23C28(), (*v154)(v63, v64), v65 == sub_264E23B18()))
      {
        v66 = *v201;
        v67 = v187;
        v68 = v206;
        (*v201)(v187, v59, v206);
        (*v195)(v67, 0, 1, v68);
      }

      else
      {
        (*v169)(v172, 1, 1, v198);
        v69 = sub_264E23C48();
        v70 = *(*(v69 - 8) + 56);
        v197 = v62;
        v70(v173, 1, 1, v69);
        sub_264E23B18();
        v71 = v170;
        sub_264E23918();
        v72 = v174;
        v73 = v175;
        (*v167)(v174, v168, v175);
        v74 = v176;
        v75 = v177;
        (*v166)(v176, v164, v177);
        v76 = v178;
        v77 = v179;
        (*v165)(v178, v161, v179);
        v78 = v187;
        sub_264E23C08();
        v79 = v76;
        v57 = v204;
        (*v163)(v79, v77);
        v67 = v78;
        (*v162)(v74, v75);
        (*v160)(v72, v73);
        (*v159)(v71, v171);
        v66 = *v201;
      }

      v80 = v184;
      v81 = v206;
      v66(v184, v57, v206);
      (*v195)(v80, 0, 1, v81);
      v82 = *(v189 + 48);
      v83 = v205;
      sub_264D93A14(v67, v205);
      sub_264D93A14(v80, &v83[v82]);
      v84 = *v181;
      if ((*v181)(v83, 1, v81) == 1)
      {
        break;
      }

      v85 = v205;
      sub_264D93A14(v205, v188);
      v86 = v84(&v85[v82], 1, v206);
      v51 = v190;
      v87 = v203;
      if (v86 == 1)
      {
        sub_264D817BC(v80, &qword_27FFB1860, &qword_264E267E0);
        sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
        v88 = v206;
        v89 = v199;
        v199(v87, v206);
        sub_264DBD184(v204, type metadata accessor for NotificationsOverviewChart.Model);
        v89(v188, v88);
LABEL_4:
        sub_264D817BC(v205, &qword_27FFB1858, &unk_264E26200);
        goto LABEL_5;
      }

      v90 = v206;
      v91 = v196;
      (*v153)(v196, &v205[v82], v206);
      sub_264DBD13C(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v92 = v188;
      LODWORD(v197) = sub_264E25068();
      v93 = v199;
      v199(v91, v90);
      sub_264D817BC(v80, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
      v93(v87, v90);
      sub_264DBD184(v204, type metadata accessor for NotificationsOverviewChart.Model);
      v93(v92, v90);
      sub_264D817BC(v205, &qword_27FFB1860, &qword_264E267E0);
      if (v197)
      {
        goto LABEL_28;
      }

LABEL_5:
      v53 = v200 + 1;
      v3 = v198;
      if (v185 == v200 + 1)
      {
        goto LABEL_16;
      }
    }

    sub_264D817BC(v80, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
    v54 = v206;
    v199(v203, v206);
    sub_264DBD184(v57, type metadata accessor for NotificationsOverviewChart.Model);
    v55 = v84(&v205[v82], 1, v54);
    v51 = v190;
    if (v55 == 1)
    {
      sub_264D817BC(v205, &qword_27FFB1860, &qword_264E267E0);
LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_264E15DBC(v51);
      }

      v135 = v152;
      if (v200 < v51[2])
      {
        sub_264DBAD20();
        *v135 = v51;
        return;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_4;
  }

LABEL_16:
  v94 = *(type metadata accessor for NotificationsOverviewTabView.Model(0) + 20);
  v95 = v148;
  sub_264E23D98();
  v96 = v196;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v150 + 8))(v95, v192);
  v97 = v152;
  v98 = v149;
  Calendar.startOfWeek(containing:)(v96, v149);
  v99 = v151;
  v100 = (v151 + 8);
  v101 = v206;
  v205 = *(v151 + 8);
  (v205)(v96, v206);
  v102 = v99[6];
  if ((v102)(v98, 1, v101) == 1)
  {
    sub_264D817BC(v98, &qword_27FFB1860, &qword_264E267E0);
    if (qword_27FFB1688 != -1)
    {
LABEL_33:
      swift_once();
    }

    v103 = sub_264E23FC8();
    __swift_project_value_buffer(v103, qword_27FFB2028);
    v104 = sub_264E23FA8();
    v105 = sub_264E252A8();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_264D7D000, v104, v105, "Could not compute start of week; skipping activity segment", v106, 2u);
      MEMORY[0x26674FCD0](v106, -1, -1);
    }
  }

  else
  {
    v202 = v100;
    v203 = v94;
    v107 = v3;
    v108 = v99[4];
    v204 = v102;
    v109 = v144;
    v110 = v146;
    v111 = v206;
    v200 = v108;
    v201 = (v99 + 4);
    (v108)(v146, v98, v206);
    v112 = v99[2];
    v112(v109, v110, v111);
    v113 = *(v147 + 16);
    v114 = v142;
    v113(v142, &v203[v97], v107);
    v112((v145 + *(v139 + 20)), v109, v111);
    v115 = v140;
    v116 = v109;
    v117 = v114;
    v112(v140, v116, v111);
    v118 = v143;
    v119 = v107;
    v113(v143, v114, v107);
    v203 = sub_264E24C58();
    v120 = v141;
    Calendar.startOfWeek(containing:)(v115, v141);
    if ((v204)(v120, 1, v111) == 1)
    {
      goto LABEL_35;
    }

    v122 = v205;
    v121 = v206;
    (v205)(v115, v206);
    v123 = v147;
    v124 = v117;
    v125 = v119;
    (*(v147 + 8))(v124, v119);
    v122(v144, v121);
    v126 = v138;
    v200(v138, v120, v121);
    v127 = v191;
    *(v126 + *(v191 + 20)) = MEMORY[0x277D84F90];
    (*(v123 + 32))(v126 + v127[6], v118, v125);
    *(v126 + v127[7]) = v203;
    *(v126 + v127[8]) = 1;
    v128 = v145;
    sub_264DBD214(v126, v145, type metadata accessor for OverviewChart.Model);
    sub_264DBAD20();
    v129 = v137;
    sub_264DBD27C(v128, v137, type metadata accessor for NotificationsOverviewChart.Model);
    v130 = v190;
    v131 = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_264DBC1A0(0, v130[2] + 1, 1, v130, &qword_27FFB1BA8, &qword_264E26630, type metadata accessor for NotificationsOverviewChart.Model);
    }

    v132 = v152;
    v134 = v130[2];
    v133 = v130[3];
    if (v134 >= v133 >> 1)
    {
      v130 = sub_264DBC1A0((v133 > 1), v134 + 1, 1, v130, &qword_27FFB1BA8, &qword_264E26630, type metadata accessor for NotificationsOverviewChart.Model);
    }

    sub_264DBD184(v131, type metadata accessor for NotificationsOverviewChart.Model);
    v122(v146, v206);
    v130[2] = v134 + 1;
    sub_264DBD214(v129, v130 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v134, type metadata accessor for NotificationsOverviewChart.Model);
    *v132 = v130;
  }
}

uint64_t sub_264DBAD20()
{
  v0 = sub_264E23CB8();
  v39 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_264E23D18();
  v38 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_264E23C38();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264E23AA8();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_264E238E8();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OverviewChart.Day(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v9 + 8))(v11, v42);
  v16 = type metadata accessor for OverviewChart.Model(0);
  v17 = v43;
  v18 = v48;
  (*(v4 + 16))(v43, v36[1] + *(v16 + 24), v48);
  sub_264E23AF8();
  (*(v4 + 8))(v17, v18);
  (*(v44 + 8))(v8, v45);
  v19 = *(v13 + 28);
  v40 = v15;
  v37 = v19;
  *&v15[v19] = 0;
  result = sub_264E23DA8();
  v45 = *(result + 16);
  if (v45)
  {
    v21 = 0;
    v23 = v38;
    v22 = v39;
    v43 = (result + ((*(v23 + 80) + 32) & ~*(v23 + 80)));
    v44 = result;
    v41 = v38 + 8;
    v42 = v38 + 16;
    v24 = (v39 + 8);
    v25 = 0.0;
    while (v21 < *(result + 16))
    {
      v26 = v46;
      v27 = v47;
      (*(v23 + 16))(v46, &v43[*(v23 + 72) * v21], v47);
      v28 = sub_264E23D08();
      (*(v23 + 8))(v26, v27);
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v48 = v28;
        v31 = v28 + v30;
        v32 = *(v22 + 72);
        v33 = *(v22 + 16);
        do
        {
          v33(v2, v31, v0);
          v34 = sub_264E23C98();
          (*v24)(v2, v0);
          v25 = v25 + v34;
          v31 += v32;
          --v29;
        }

        while (v29);

        v22 = v39;
        v23 = v38;
        *&v40[v37] = v25;
      }

      else
      {
      }

      result = v44;
      if (++v21 == v45)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v35 = v40;
    sub_264DAE2D0(v40);
    return sub_264DBD184(v35, type metadata accessor for OverviewChart.Day);
  }

  return result;
}

uint64_t sub_264DBB24C(uint64_t a1)
{
  v63 = a1;
  v3 = sub_264E23C38();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_264E23AA8();
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - v8;
  MEMORY[0x28223BE20](v9);
  v58 = &v47 - v10;
  v57 = sub_264E238E8();
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NotificationsDetailChart.Model(0);
  v59 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v51 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v52 = &v47 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = 0;
  v54 = v1;
  v61 = *v1;
  v60 = v61[2];
  v56 = (v11 + 1);
  v47 = v5;
  v64 = v5 + 8;
  v22 = v58;
  do
  {
    if (v60 == v21)
    {
      v29 = *(type metadata accessor for NotificationsDetailTabView.Model(0) + 20);
      sub_264E23D98();
      v30 = v58;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v56)(v13, v57);
      v31 = v53;
      v32 = v54;
      sub_264E23AF8();
      v33 = v47;
      v60 = *(v47 + 1);
      v34 = v62;
      (v60)(v30, v62);
      v35 = *(v33 + 2);
      v35(v30, v31, v34);
      v36 = v49;
      v37 = *(v49 + 16);
      v38 = v32 + v29;
      v39 = v48;
      v40 = v50;
      v37(v48, v38, v50);
      v41 = v52;
      v35(v52, v30, v34);
      v42 = type metadata accessor for DetailChart.Model(0);
      v37((v41 + v42[6]), v39, v40);
      v43 = sub_264E24C58();
      v44 = v39;
      v5 = v60;
      (*(v36 + 8))(v44, v40);
      (v5)(v30, v34);
      *(v41 + v42[5]) = MEMORY[0x277D84F90];
      *(v41 + v42[7]) = v43;
      *(v41 + v42[8]) = 1;
      *(v41 + v42[9]) = 0;
      *(v41 + v42[10]) = 0x40AC200000000000;
      sub_264DBB95C();
      v2 = v51;
      sub_264DBD27C(v41, v51, type metadata accessor for NotificationsDetailChart.Model);
      v11 = v61;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_10:
        v46 = v11[2];
        v45 = v11[3];
        if (v46 >= v45 >> 1)
        {
          v11 = sub_264DBC1A0((v45 > 1), v46 + 1, 1, v11, &qword_27FFB1BE8, &unk_264E26670, type metadata accessor for NotificationsDetailChart.Model);
        }

        sub_264DBD184(v52, type metadata accessor for NotificationsDetailChart.Model);
        (v5)(v53, v62);
        v11[2] = v46 + 1;
        result = sub_264DBD214(v2, v11 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v46, type metadata accessor for NotificationsDetailChart.Model);
        goto LABEL_13;
      }

LABEL_15:
      v11 = sub_264DBC1A0(0, v11[2] + 1, 1, v11, &qword_27FFB1BE8, &unk_264E26670, type metadata accessor for NotificationsDetailChart.Model);
      goto LABEL_10;
    }

    if (v21 >= v61[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v23 = (v21 + 1);
    v5 = ((*(v59 + 80) + 32) & ~*(v59 + 80));
    sub_264DBD27C(&v5[v61 + *(v59 + 72) * v21], v20, type metadata accessor for NotificationsDetailChart.Model);
    sub_264E23D98();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*v56)(v13, v57);
    type metadata accessor for DetailChart.Model(0);
    v24 = v55;
    sub_264E23AF8();
    v25 = sub_264E23A78();
    v11 = v64;
    v2 = *v64;
    v26 = v24;
    v27 = v62;
    (*v64)(v26, v62);
    v2(v22, v27);
    sub_264DBD184(v20, type metadata accessor for NotificationsDetailChart.Model);
    v21 = v23;
  }

  while ((v25 & 1) == 0);
  v11 = v61;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264E15E20(v11);
    v11 = result;
  }

  if ((v23 - 1) < v11[2])
  {
    result = sub_264DBB95C();
LABEL_13:
    *v54 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_264DBB95C()
{
  v1 = sub_264E23CB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_264E23D18();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailChart.Hour(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  v31 = *(v8 + 28);
  v32 = v10;
  *&v10[v31] = 0;
  result = sub_264E23DA8();
  v12 = result;
  v36 = *(result + 16);
  if (v36)
  {
    v27[1] = v0;
    v28 = result;
    v13 = 0;
    v35 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v33 = v5 + 8;
    v34 = v5 + 16;
    v29 = v5;
    v30 = v2;
    v14 = (v2 + 8);
    v15 = 0.0;
    while (v13 < *(v12 + 16))
    {
      v17 = v37;
      v16 = v38;
      (*(v5 + 16))(v37, v35 + *(v5 + 72) * v13, v38);
      v18 = sub_264E23D08();
      (*(v5 + 8))(v17, v16);
      v19 = v18;
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v39 = v19;
        v22 = v19 + v21;
        v23 = *(v30 + 72);
        v24 = *(v30 + 16);
        do
        {
          v24(v4, v22, v1);
          v25 = sub_264E23C98();
          (*v14)(v4, v1);
          v15 = v15 + v25;
          v22 += v23;
          --v20;
        }

        while (v20);

        *&v32[v31] = v15;
        v12 = v28;
        v5 = v29;
      }

      else
      {
      }

      if (++v13 == v36)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v26 = v32;
    sub_264DADF4C(v32);
    return sub_264DBD184(v26, type metadata accessor for DetailChart.Hour);
  }

  return result;
}

char *sub_264DBBD58(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_264DBBFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23E88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DBC050(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23E88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ModelProvider(uint64_t a1)
{
  result = qword_27FFB2040;
  if (!qword_27FFB2040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264DBC10C(uint64_t a1)
{
  result = sub_264E23E88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_264DBC1A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

char *sub_264DBC3B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C88, qword_264E27110);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_264DBC4C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B80, &unk_264E27060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B88, &qword_264E26610);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264DBC624(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_264DBC7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_264D9D5F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264DA1DB0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_264E23AA8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
    v20 = *(v13 - 8);
    sub_264DBD214(v12 + *(v20 + 72) * v7, a2, type metadata accessor for PickupsDetailLegendView.DayPickups);
    sub_264DA07C4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_264DBC944(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_264DBC1A0(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_27FFB1BF8, &qword_264E27100, type metadata accessor for UsageOverviewChart.Day);
    *v3 = v5;
  }

  result = sub_264DBCE04(v7, a2, 1, a3, type metadata accessor for UsageOverviewChart.Day, type metadata accessor for UsageOverviewChart.Day, &qword_27FFB20C0, &qword_264E270F8);
  *v3 = v5;
  return result;
}

unint64_t sub_264DBCA74(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_264DBC1A0(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_27FFB1BD0, &unk_264E27090, type metadata accessor for OverviewChart.Day);
    *v3 = v5;
  }

  result = sub_264DBCE04(v7, a2, 1, a3, type metadata accessor for OverviewChart.Day, type metadata accessor for OverviewChart.Day, &qword_27FFB2070, &qword_264E27088);
  *v3 = v5;
  return result;
}

unint64_t sub_264DBCBA4(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_264DBC1A0(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_27FFB1B58, &qword_264E265E0, type metadata accessor for UsageDetailChart.HourlyUsage);
    *v3 = v5;
  }

  result = sub_264DBCE04(v7, a2, 1, a3, type metadata accessor for UsageDetailChart.HourlyUsage, type metadata accessor for UsageDetailChart.HourlyUsage, &qword_27FFB20B0, &unk_264E270E0);
  *v3 = v5;
  return result;
}

unint64_t sub_264DBCCD4(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_264DBC1A0(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_27FFB1BC8, &unk_264E26650, type metadata accessor for DetailChart.Hour);
    *v3 = v5;
  }

  result = sub_264DBCE04(v7, a2, 1, a3, type metadata accessor for DetailChart.Hour, type metadata accessor for DetailChart.Hour, &qword_27FFB2098, &qword_264E270C0);
  *v3 = v5;
  return result;
}

unint64_t sub_264DBCE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_264D817BC(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_264D817BC(a4, v31, v32);
  }

  result = sub_264DBD27C(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_264D817BC(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_264DBD024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DBD0D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_264DBD13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DBD184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264DBD214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DBD27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id AgeMigrationTipViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AgeMigrationTipViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeMigrationTipViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AgeMigrationTipViewControllerFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AgeMigrationTipViewControllerFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s16ScreenTimeUICore36AgeMigrationTipViewControllerFactoryC06createdeF013ageOfMajority13userFirstName11actionBlock07dismissR0So06UIViewH0CSi_SSyycyyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_264E24968();
  MEMORY[0x28223BE20](v14 - 8);
  *&v25 = 0xD000000000000033;
  *(&v25 + 1) = 0x8000000264E2BC20;
  *&v26 = 0xD000000000000026;
  *(&v26 + 1) = 0x8000000264E2BC60;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  *&v28 = a3;
  *(&v28 + 1) = a4;
  *&v29 = a5;
  *(&v29 + 1) = a6;
  v30 = a7;
  v22 = v28;
  v23 = v29;
  v24 = a7;
  *&v19[88] = v25;
  v20 = v26;
  v21 = v27;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20D0, &qword_264E27178));

  sub_264DBD744(&v25, v19);
  v15 = sub_264E24848();
  result = [v15 view];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() clearColor];
    [v17 setBackgroundColor_];

    sub_264E24958();
    sub_264E24838();

    sub_264DBD7A0(&v25);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264DBD704()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t PickupsDetailChart.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PickupsDetailChart.Model(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetailChart(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DBD98C(v1, v4);
  sub_264DBD9F0(v4, v7);
  *&v7[*(v5 + 20)] = *(v1 + *(type metadata accessor for PickupsDetailChart(0) + 24));
  sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart, &protocol conformance descriptor for DetailChart);

  sub_264E24C08();
  return sub_264DBDBD8(v7);
}

uint64_t sub_264DBD98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsDetailChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DBD9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DBDA74(uint64_t a1)
{
  v3 = type metadata accessor for PickupsDetailChart.Model(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailChart(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DBD98C(v1, v5);
  sub_264DBD9F0(v5, v8);
  *&v8[*(v6 + 20)] = *(v1 + *(a1 + 24));
  sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart, &protocol conformance descriptor for DetailChart);

  sub_264E24C08();
  return sub_264DBDBD8(v8);
}

uint64_t sub_264DBDBD8(uint64_t a1)
{
  v2 = type metadata accessor for DetailChart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DBDC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsDetailChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DetailChart.Model(0);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DBDD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsDetailChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DetailChart.Model(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DBDE98(uint64_t a1)
{
  type metadata accessor for PickupsDetailChart.Model(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailChart.Model(319);
    if (v2 <= 0x3F)
    {
      sub_264DBDF34(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DBDF34(uint64_t a1)
{
  if (!qword_27FFB20F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB20F8, &unk_264E27330);
    v1 = sub_264E25318();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFB20F0);
    }
  }
}

unint64_t sub_264DBDF9C()
{
  result = qword_27FFB2100;
  if (!qword_27FFB2100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2108, "ެ");
    sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart, &protocol conformance descriptor for DetailChart);
    sub_264DBE240(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2100);
  }

  return result;
}

uint64_t sub_264DBE09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DBE11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264DBE18C(uint64_t a1)
{
  result = type metadata accessor for DetailChart.Model(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264DBE240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_264DBE288(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_264E23A78())
  {
    v4 = type metadata accessor for DetailChart.Model(0);
    if ((sub_264D84338(*(a1 + v4[5]), *(a2 + v4[5])) & 1) != 0 && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) != 0 && (sub_264E24C48() & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]))
    {
      return 1;
    }
  }

  return result;
}

uint64_t NotificationsDetailChart.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationsDetailChart.Model(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetailChart(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DA76B4(v1, v4);
  sub_264DBD9F0(v4, v7);
  *&v7[*(v5 + 20)] = *(v1 + *(type metadata accessor for NotificationsDetailChart(0) + 24));
  sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart, &protocol conformance descriptor for DetailChart);

  sub_264E24C08();
  return sub_264DBDBD8(v7);
}

uint64_t sub_264DBE4F8(uint64_t a1)
{
  v3 = type metadata accessor for NotificationsDetailChart.Model(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailChart(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DA76B4(v1, v5);
  sub_264DBD9F0(v5, v8);
  *&v8[*(v6 + 20)] = *(v1 + *(a1 + 24));
  sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart, &protocol conformance descriptor for DetailChart);

  sub_264E24C08();
  return sub_264DBDBD8(v8);
}

uint64_t sub_264DBE68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsDetailChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DetailChart.Model(0);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DBE7B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationsDetailChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DetailChart.Model(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DBE8C0(uint64_t a1)
{
  type metadata accessor for NotificationsDetailChart.Model(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailChart.Model(319);
    if (v2 <= 0x3F)
    {
      sub_264DBDF34(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264DBE974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DBE9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t dispatch thunk of ModelProviding.addHourlyData(toDataModel:forDateInterval:userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_264D9A59C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t PickupsDetailTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for PickupsDetailTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264DBECDC@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v6 = sub_264E23C38();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21D0, &qword_264E274E8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = *a2;
  v16 = a1;
  v42 = a1;
  sub_264D93CD0(sub_264DC05A0, v15, &v32 - v13);
  v43 = v3;
  v17 = type metadata accessor for PickupsDetailChart.Model(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v37 = v18 + 48;
  v38 = v19;
  if (v19(v14, 1, v17) != 1)
  {
    return sub_264DC05C0(v14, v41, type metadata accessor for PickupsDetailChart.Model);
  }

  v20 = v8;
  v35 = v10;
  v21 = *(v10 + 16);
  v32 = a2;
  v33 = v21;
  v22 = v40;
  v21(v40, v16, v9);
  v23 = *(type metadata accessor for PickupsDetailTabView.Model(0) + 20);
  v24 = v6;
  v36 = v17;
  v25 = v39;
  v26 = v41;
  v34 = v14;
  v27 = *(v39 + 16);
  v27(v8, v32 + v23, v6);
  v33(v26, v22, v9);
  v28 = type metadata accessor for DetailChart.Model(0);
  v27((v26 + v28[6]), v20, v6);
  v29 = v34;
  v30 = sub_264E24C78();
  (*(v25 + 8))(v20, v24);
  (*(v35 + 8))(v40, v9);
  *(v26 + v28[5]) = MEMORY[0x277D84F90];
  *(v26 + v28[7]) = v30;
  *(v26 + v28[8]) = 1;
  *(v26 + v28[9]) = 1;
  *(v26 + v28[10]) = 0x40AC200000000000;
  result = v38(v29, 1, v36);
  if (result != 1)
  {
    return sub_264D817BC(v29, &qword_27FFB21D0, &qword_264E274E8);
  }

  return result;
}

uint64_t sub_264DBF088(uint64_t a1, uint64_t a2)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailChart.Model(0);
  sub_264E23AF8();
  v6 = sub_264E23A78();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t PickupsDetailTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2140, &qword_264E273E0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2148, &qword_264E273E8);
  sub_264DBF2B0(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB2150, &qword_27FFB2140, &qword_264E273E0, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264DBFD74(v3);
}

uint64_t sub_264DBF2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_264E24538();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_264E24558();
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2190, &qword_264E274A0);
  v18 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v20 = &v27 - v19;
  type metadata accessor for PickupsDetailTabView(0);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v14, &qword_27FFB1F70, &qword_264E28470);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  v35 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2198, &qword_264E274D8);
  sub_264DC0558(&qword_27FFB19D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_264DC0484();
  sub_264E24F48();
  sub_264E24528();
  v22 = v30;
  v23 = v31;
  (*(v30 + 16))(v29, v7, v31);
  sub_264E24548();
  (*(v22 + 8))(v7, v23);
  sub_264D81DCC(&qword_27FFB21B0, &qword_27FFB2190, &qword_264E274A0, MEMORY[0x277CDF0C8]);
  v24 = v28;
  v25 = v32;
  sub_264E24B68();
  (*(v33 + 8))(v11, v25);
  return (*(v18 + 8))(v20, v24);
}

uint64_t sub_264DBF750@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v29[1] = a1;
  v29[0] = sub_264E23AA8();
  v3 = *(v29[0] - 8);
  MEMORY[0x28223BE20](v29[0]);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityNavigationState(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PickupsDetailTabView(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v17);
  v18 = *(v14 + 28);
  v19 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v10 + 16))(v12, &v16[v18 + *(v19 + 20)], v9);
  sub_264DA75F0(v16);
  type metadata accessor for PickupsDetailTabView.Model(0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v20 = Calendar.startOfEachDay(fromDayContaining:throughDayExcluding:)(v8, v5);
  v21 = *(v3 + 8);
  v22 = v5;
  v23 = v29[0];
  v21(v22, v29[0]);
  v24 = v21(v8, v23);
  if (v20)
  {
    MEMORY[0x28223BE20](v24);
    v28 = a2;
    sub_264E0AB7C(sub_264DC0538, &v29[-4], v20);
    v26 = v25;

    (*(v10 + 8))(v12, v9);
    v29[2] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21B8, &qword_264E274E0);
    type metadata accessor for PickupsDetailChart(0);
    sub_264D81DCC(&qword_27FFB21C0, &qword_27FFB21B8, &qword_264E274E0, MEMORY[0x277D83980]);
    sub_264DC0558(&qword_27FFB21A8, type metadata accessor for PickupsDetailChart, &protocol conformance descriptor for PickupsDetailChart);
    v28 = sub_264DC0558(&qword_27FFB21C8, type metadata accessor for PickupsDetailChart.Model, &unk_264E27230);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DBFB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PickupsDetailChart.Model(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DBD98C(a1, v6);
  v7 = type metadata accessor for PickupsDetailChart(0);
  *(a2 + *(v7 + 24)) = 0;
  sub_264DBD98C(v6, a2);
  return sub_264DC05C0(v6, a2 + *(v7 + 20), type metadata accessor for DetailChart.Model);
}

uint64_t sub_264DBFC54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2140, &qword_264E273E0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_264E24818();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2148, &qword_264E273E8);
  sub_264DBF2B0(v0, &v3[*(v4 + 44)]);
  sub_264D81DCC(&qword_27FFB2150, &qword_27FFB2140, &qword_264E273E0, MEMORY[0x277CE1198]);
  sub_264E24C08();
  return sub_264DBFD74(v3);
}

uint64_t sub_264DBFD74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2140, &qword_264E273E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DBFE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsDetailTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DBFF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsDetailTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264DC0044(uint64_t a1)
{
  type metadata accessor for PickupsDetailTabView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_264DC0324(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DC010C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264DC01CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DC0270(uint64_t a1)
{
  sub_264DC0324(319, &qword_27FFB2178, type metadata accessor for PickupsDetailChart.Model, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DC0324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_264DC038C()
{
  result = qword_27FFB2180;
  if (!qword_27FFB2180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2188, &unk_264E27490);
    sub_264D81DCC(&qword_27FFB2150, &qword_27FFB2140, &qword_264E273E0, MEMORY[0x277CE1198]);
    sub_264DC0558(&qword_27FFB1B10, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2180);
  }

  return result;
}

unint64_t sub_264DC0484()
{
  result = qword_27FFB21A0;
  if (!qword_27FFB21A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2198, &qword_264E274D8);
    sub_264DC0558(&qword_27FFB21A8, type metadata accessor for PickupsDetailChart, &protocol conformance descriptor for PickupsDetailChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB21A0);
  }

  return result;
}

uint64_t sub_264DC0558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DC05C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Calendar.startOfWeek(containing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_264E23B98();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_264E23B78();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_264E23B38();
  v41 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_264E23928();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_264E23C18();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_264E23AA8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23AF8();
  v50 = a1;
  LOBYTE(a1) = sub_264E23A78();
  (*(v20 + 8))(v22, v19);
  if ((a1 & 1) != 0 && ((*(v16 + 104))(v18, *MEMORY[0x277CC99B8], v15), v23 = sub_264E23C28(), (*(v16 + 8))(v18, v15), v23 == sub_264E23B18()))
  {
    v24 = v48;
    (*(v20 + 16))(v48, v50, v19);
    return (*(v20 + 56))(v24, 0, 1, v19);
  }

  else
  {
    v26 = sub_264E23C38();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    v27 = sub_264E23C48();
    (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
    sub_264E23B18();
    v28 = v14;
    sub_264E23918();
    v29 = v41;
    v30 = v38;
    (*(v41 + 104))(v38, *MEMORY[0x277CC9878], v49);
    v32 = v42;
    v31 = v43;
    v33 = v45;
    (*(v43 + 104))(v42, *MEMORY[0x277CC98F0], v45);
    v35 = v46;
    v34 = v47;
    v36 = v44;
    (*(v46 + 104))(v44, *MEMORY[0x277CC9900], v47);
    sub_264E23C08();
    (*(v35 + 8))(v36, v34);
    (*(v31 + 8))(v32, v33);
    (*(v29 + 8))(v30, v49);
    return (*(v39 + 8))(v28, v40);
  }
}

uint64_t Calendar.numberOfDaysElapsedInWeek(containing:endDate:)(uint64_t a1, char *a2)
{
  v100 = a2;
  v4 = sub_264E23928();
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x28223BE20](v4);
  v87 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_264E23C18();
  v98 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v95 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v78 - v11;
  v13 = sub_264E238E8();
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v16 - 8);
  v86 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  v21 = sub_264E23AA8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v85 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v78 - v28;
  v94 = a1;
  Calendar.startOfWeek(containing:)(a1, v20);
  v99 = v22[6];
  v103 = v99(v20, 1, v21);
  if (v103 == 1)
  {
    sub_264D817BC(v20, &qword_27FFB1860, &qword_264E267E0);
    return 0;
  }

  v31 = v22[4];
  v102 = v29;
  v80 = v22 + 4;
  v79 = v31;
  v31(v29, v20, v21);
  v32 = v98;
  v33 = *(v98 + 104);
  v83 = *MEMORY[0x277CC9940];
  v34 = v104;
  v92 = v33;
  v93 = v98 + 104;
  v33(v9);
  sub_264E23A98();
  v81 = v2;
  sub_264E23B08();
  v35 = v22[1];
  v90 = v21;
  v84 = v22 + 1;
  v101 = v35;
  v35(v26, v21);
  v36 = *(v32 + 8);
  v82 = v9;
  v91 = v36;
  v36(v9, v34);
  v38 = v96;
  v37 = v97;
  result = (*(v96 + 48))(v12, 1, v97);
  if (result == 1)
  {
    goto LABEL_28;
  }

  (*(v38 + 32))(v15, v12, v37);
  v39 = sub_264E238C8();
  (*(v38 + 8))(v15, v37);
  v40 = MEMORY[0x277CC99B8];
  v41 = v95;
  v42 = v90;
  if (v39 & 1) != 0 || (sub_264E23A98(), v43 = sub_264E23A48(), v101(v26, v42), (v43) || v99(v100, 1, v42) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21D8, &qword_264E274F0);
    v55 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_264E261E0;
    v54 = v104;
    v92((v56 + v55), *MEMORY[0x277CC9968], v104);
    sub_264DC6370(v56);
    swift_setDeallocating();
    v91(v56 + v55, v54);
    swift_deallocClassInstance();
    v57 = v86;
    sub_264D93A14(v100, v86);
    v58 = v99;
    if (v99(v57, 1, v42) == 1)
    {
      v59 = v85;
      sub_264E23A98();
      v60 = v59;
      if (v58(v57, 1, v42) != 1)
      {
        sub_264D817BC(v57, &qword_27FFB1860, &qword_264E267E0);
      }
    }

    else
    {
      v60 = v85;
      v79(v85, v57, v42);
    }

    v61 = v87;
    sub_264E23B48();

    v101(v60, v42);
    v62 = sub_264E238F8();
    v64 = v63;
    result = (*(v88 + 8))(v61, v89);
    v44 = v82;
    if (v64)
    {
      v53 = 0;
      goto LABEL_17;
    }

    v65 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v44 = v82;
    v45 = v104;
    v46 = v92;
    v92(v82, *v40, v104);
    v46(v41, v83, v45);
    v47 = sub_264E23BD8();
    v49 = v48;
    v51 = v50;
    v52 = v91;
    v91(v41, v45);
    result = v52(v44, v45);
    if (v51)
    {
      v53 = 0;
      v54 = v104;
      goto LABEL_17;
    }

    v65 = v49 - v47;
    if (__OFSUB__(v49, v47))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v54 = v104;
  }

  v53 = v65 & ~(v65 >> 63);
LABEL_17:
  v66 = v92;
  v92(v44, *v40, v54);
  v66(v41, v83, v54);
  v67 = v102;
  v68 = sub_264E23BD8();
  v70 = v69;
  v71 = v54;
  v73 = v72;
  v74 = v41;
  v75 = v91;
  v91(v74, v71);
  result = v75(v44, v71);
  if (v73)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v76 = __OFSUB__(v70, v68);
  v77 = v70 - v68;
  if (v76)
  {
    __break(1u);
    goto LABEL_26;
  }

  v101(v67, v90);
  if (v77 >= v53)
  {
    return v53;
  }

  else
  {
    return v77;
  }
}

uint64_t Calendar.weekContaining(date:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_264E23C18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  (*(v4 + 104))(v6, *MEMORY[0x277CC9940], v3, v8);
  sub_264E23B08();
  (*(v4 + 8))(v6, v3);
  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a2, v10, v11);
  }

  __break(1u);
  return result;
}

uint64_t Calendar.weeksRoundedToDay(untilDateInLastDay:weekCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v37 = a3;
  v4 = sub_264E23C18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v34 - v9;
  v11 = sub_264E23AA8();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v34[2] = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v34[1] = v34 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v34 - v19;
  v21 = sub_264E238E8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >= 1)
  {
    Calendar.weeksPreceding(date:weekCount:)(v38, a2, v20);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      v25 = &qword_27FFB1880;
      v26 = &qword_264E26220;
      v27 = v20;
    }

    else
    {
      (*(v22 + 32))(v24, v20, v21);
      (*(v5 + 104))(v7, *MEMORY[0x277CC9968], v4);
      sub_264E23BC8();
      (*(v5 + 8))(v7, v4);
      v29 = v35;
      v28 = v36;
      if ((*(v35 + 48))(v10, 1, v36) != 1)
      {
        (*(v29 + 32))(v17, v10, v28);
        _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
        sub_264E23AF8();
        v32 = v37;
        sub_264E23898();
        (*(v29 + 8))(v17, v28);
        (*(v22 + 8))(v24, v21);
        v31 = v32;
        v30 = 0;
        return (*(v22 + 56))(v31, v30, 1, v21);
      }

      (*(v22 + 8))(v24, v21);
      v25 = &qword_27FFB1860;
      v26 = &qword_264E267E0;
      v27 = v10;
    }

    sub_264D817BC(v27, v25, v26);
    v30 = 1;
    v31 = v37;
    return (*(v22 + 56))(v31, v30, 1, v21);
  }

  result = sub_264E253E8();
  __break(1u);
  return result;
}

uint64_t Calendar.startOfEachDay(fromDayContaining:throughDayExcluding:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_264E23B78();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_264E23B98();
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_264E23B38();
  v52 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v53 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v47 - v10;
  v57 = sub_264E23928();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v63 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264E23AA8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v47 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v47 - v24;
  if ((sub_264E23A58() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v62 = v25;
  sub_264E23AF8();
  sub_264E23AF8();
  v26 = sub_264E23A78();
  v50 = v22;
  v51 = v19;
  if (v26)
  {
    sub_264E23A28();
    sub_264E23AF8();
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    (*(v14 + 16))(v19, v22, v13);
  }

  v48 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v28 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v29 = swift_allocObject();
  v49 = v14;
  v30 = v29;
  *(v29 + 16) = xmmword_264E261E0;
  (*(v14 + 16))(v29 + v28, v62, v13);
  v66 = v30;
  v31 = sub_264E23C38();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v11, v65, v31);
  (*(v32 + 56))(v11, 0, 1, v31);
  v33 = sub_264E23C48();
  (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
  sub_264E23918();
  v34 = v52;
  v35 = v53;
  v36 = (*(v52 + 104))(v53, *MEMORY[0x277CC9878], v64);
  v47[1] = v47;
  v37 = MEMORY[0x28223BE20](v36);
  v38 = v54;
  v39 = v56;
  v40 = v59;
  (*(v54 + 104))(v56, *MEMORY[0x277CC9900], v59, v37);
  v42 = v60;
  v41 = v61;
  v43 = v58;
  (*(v60 + 104))(v58, *MEMORY[0x277CC98E8], v61);
  sub_264E23B58();
  (*(v42 + 8))(v43, v41);
  (*(v38 + 8))(v39, v40);
  (*(v34 + 8))(v35, v64);
  (*(v55 + 8))(v63, v57);
  v44 = *(v49 + 8);
  v45 = v48;
  v44(v50, v48);
  v44(v62, v45);
  v27 = v66;
  v44(v51, v45);
  return v27;
}

uint64_t Calendar.weeksPreceding(date:weekCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v6 = sub_264E23C18();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v37 - v11;
  v13 = sub_264E23AA8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v17 = v37 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v37 - v23;
  if (a2 < 1)
  {
    (*(v14 + 16))(v17, a1, v13, v22);
    sub_264E238A8();
    goto LABEL_9;
  }

  v39 = v21;
  v40 = v20;
  v41 = a1;
  v42 = v6;
  v43 = v3;
  Calendar.startOfWeek(containing:)(a1, v12);
  v25 = *(v14 + 48);
  if (v25(v12, 1, v13) != 1)
  {
    v38 = v25;
    v37[0] = *(v14 + 32);
    v37[1] = v14 + 32;
    (v37[0])(v24, v12, v13);
    v28 = v44;
    v27 = v45;
    v29 = v42;
    (*(v44 + 104))(v45, *MEMORY[0x277CC9940], v42);
    v30 = v46;
    sub_264E23BC8();
    (*(v28 + 8))(v27, v29);
    if (v38(v30, 1, v13) == 1)
    {
      (*(v14 + 8))(v24, v13);
      v26 = v30;
      goto LABEL_7;
    }

    v32 = v39;
    (v37[0])(v39, v30, v13);
    v33 = *(v14 + 16);
    v33(v17, v32, v13);
    v33(v40, v41, v13);
    sub_264E23898();
    v34 = *(v14 + 8);
    v34(v32, v13);
    v34(v24, v13);
LABEL_9:
    v31 = 0;
    goto LABEL_10;
  }

  v26 = v12;
LABEL_7:
  sub_264D817BC(v26, &qword_27FFB1860, &qword_264E267E0);
  v31 = 1;
LABEL_10:
  v35 = sub_264E238E8();
  return (*(*(v35 - 8) + 56))(v47, v31, 1, v35);
}

uint64_t Calendar.thisWeek.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264E23C18();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  (*(v7 + 104))(v9, *MEMORY[0x277CC9940], v6, v11);
  sub_264E23A98();
  sub_264E23B08();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v14 = sub_264E238E8();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result != 1)
  {
    return (*(v15 + 32))(a1, v13, v14);
  }

  __break(1u);
  return result;
}

uint64_t Calendar.fullDay(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_264E23C18();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9968], v8, v13);
  sub_264E23B08();
  (*(v9 + 8))(v11, v8);
  v16 = sub_264E238E8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    return (*(v17 + 32))(v20, v15, v16);
  }

  sub_264D817BC(v15, &qword_27FFB1880, &qword_264E26220);
  sub_264E23AF8();
  (*(v4 + 16))(v6, a1, v3);
  return sub_264E23898();
}

double Calendar.fullDayDuration(for:)(uint64_t a1)
{
  v2 = sub_264E238E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Calendar.fullDay(for:)(a1, v5);
  sub_264E238D8();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t Calendar.today.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23A98();
  Calendar.fullDay(for:)(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t Calendar.isDayInWeek(date:week:)(uint64_t a1)
{
  v1 = sub_264E23C18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9940], v1);
  v9 = sub_264E23BE8();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v9 & 1;
}

uint64_t Calendar.numberOfDaysInWeek(startingOn:)(uint64_t a1)
{
  v1 = sub_264E23C18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = *(v2 + 104);
  v9(&v17 - v7, *MEMORY[0x277CC99B8], v1, v6);
  (v9)(v4, *MEMORY[0x277CC9940], v1);
  v10 = sub_264E23BD8();
  v12 = v11;
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v8, v1);
  result = 0;
  if ((v14 & 1) == 0)
  {
    result = v12 - v10;
    if (__OFSUB__(v12, v10))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Calendar.numberOfHoursElapsedInDay(containing:now:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v47 - v4;
  v5 = sub_264E23928();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264E238E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = sub_264E23AA8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v56 = v21;
  sub_264E23AF8();
  v54 = v14;
  v22 = *(v14 + 8);
  v22(v18, v13);
  sub_264E23A98();
  v53 = v2;
  Calendar.fullDay(for:)(v18, v12);
  v22(v18, v13);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v23 = sub_264E238C8();
  v22(v18, v13);
  if (v23)
  {
    sub_264E23888();
    v24 = sub_264E238C8();
    v22(v18, v13);
    v25 = *(v8 + 8);
    v25(v12, v7);
    if (v24)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = *(v8 + 8);
    v25(v12, v7);
  }

  sub_264E23A98();
  v26 = sub_264E23A48();
  v22(v18, v13);
  if ((v26 & 1) != 0 || (*(v54 + 48))(v55, 1, v13) != 1)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21D8, &qword_264E274F0);
    v34 = sub_264E23C18();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_264E261E0;
    (*(v35 + 104))(v37 + v36, *MEMORY[0x277CC9980], v34);
    sub_264DC6370(v37);
    swift_setDeallocating();
    (*(v35 + 8))(v37 + v36, v34);
    swift_deallocClassInstance();
    v38 = v49;
    sub_264D93A14(v55, v49);
    v39 = v54;
    v40 = *(v54 + 48);
    if (v40(v38, 1, v13) == 1)
    {
      v41 = v48;
      sub_264E23A98();
      if (v40(v38, 1, v13) != 1)
      {
        sub_264D817BC(v38, &qword_27FFB1860, &qword_264E267E0);
      }
    }

    else
    {
      v41 = v48;
      (*(v39 + 32))(v48, v38, v13);
    }

    v42 = v50;
    v43 = v56;
    sub_264E23B48();

    v22(v41, v13);
    v44 = sub_264E23908();
    v46 = v45;
    (*(v51 + 8))(v42, v52);
    if (v46)
    {
      v22(v43, v13);
      return 0;
    }

    result = (v22)(v43, v13);
    v33 = v44 + 1;
    if (!__OFADD__(v44, 1))
    {
      return v33 & ~(v33 >> 63);
    }

    __break(1u);
    goto LABEL_20;
  }

  v27 = v47;
  v28 = v56;
  Calendar.fullDay(for:)(v56, v47);
  sub_264E238D8();
  v30 = v29;
  v25(v27, v7);
  result = (v22)(v28, v13);
  v32 = v30 / 3600.0;
  if (COERCE__INT64(fabs(v30 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v32 < 9.22337204e18)
  {
    v33 = v32;
    return v33 & ~(v33 >> 63);
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t Calendar.startOfEachWeek(count:through:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Calendar.weeksPreceding(date:weekCount:)(a2, a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_264D817BC(v10, &qword_27FFB1880, &qword_264E26220);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v16 = sub_264DC3BF8(v7, a2);
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v16;
  }
}

uint64_t sub_264DC3BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_264E23AA8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  Calendar.startOfWeek(containing:)(a1, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = v9;
LABEL_5:
    sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
    return 0;
  }

  v26 = v13;
  v19 = v9;
  v20 = *(v11 + 32);
  v20(v16, v19, v10);
  Calendar.startOfWeek(containing:)(a2, v6);
  if (v17(v6, 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    v18 = v6;
    goto LABEL_5;
  }

  v22 = v26;
  v20(v26, v6, v10);
  v23 = sub_264DC3E84(v16, v22);
  v24 = *(v11 + 8);
  v24(v22, v10);
  v24(v16, v10);
  return v23;
}

uint64_t sub_264DC3E84(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v36 = a1;
  v46 = sub_264E23B78();
  v37 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264E23B98();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_264E23B38();
  v47 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_264E23928();
  v39 = *(v15 - 8);
  v40 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v18 = sub_264E23AA8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_264E261E0;
  (*(v19 + 16))(v21 + v20, a1, v18);
  v50 = v21;
  v22 = sub_264E23C38();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v35 = v2;
  v24(v14, v2, v22);
  (*(v23 + 56))(v14, 0, 1, v22);
  v25 = sub_264E23C48();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  sub_264E23B18();
  sub_264E23918();
  v26 = v38;
  (*(v47 + 104))(v8, *MEMORY[0x277CC9878], v38);
  v48 = v45;
  v49 = &v50;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  (*(v42 + 104))(v41, *MEMORY[0x277CC9900], v43);
  v30 = v37;
  v31 = v44;
  v32 = v46;
  (*(v37 + 104))(v44, *MEMORY[0x277CC98E8], v46);
  sub_264E23B58();
  (*(v30 + 8))(v31, v32);
  (*(v28 + 8))(v27, v29);
  (*(v47 + 8))(v8, v26);
  (*(v39 + 8))(v17, v40);
  return v50;
}

uint64_t Calendar.startOfEachWeek(fromWeekContaining:throughWeekExcluding:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23B78();
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v88 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_264E23B98();
  v87 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_264E23B38();
  v85 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v84 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v75 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v75 - v12;
  v13 = sub_264E23928();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v81 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v15 - 8);
  v79 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - v21;
  v95 = sub_264E23AA8();
  v23 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  MEMORY[0x28223BE20](v29);
  v91 = &v75 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v75 - v32;
  MEMORY[0x28223BE20](v34);
  v94 = &v75 - v35;
  v36 = a1;
  v37 = a2;
  if ((sub_264E23A58() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v78 = v10;
  Calendar.startOfWeek(containing:)(v36, v22);
  v38 = *(v23 + 48);
  if (v38(v22, 1, v95) == 1)
  {
    v39 = v22;
  }

  else
  {
    v75 = v28;
    v77 = v33;
    v41 = v94;
    v42 = v22;
    v43 = v95;
    v76 = *(v23 + 32);
    v76(v94, v42, v95);
    Calendar.startOfWeek(containing:)(v37, v19);
    if (v38(v19, 1, v43) != 1)
    {
      v44 = v77;
      v45 = v76;
      v76(v77, v19, v95);
      if (sub_264E23A78())
      {
        sub_264E23A28();
        v46 = v79;
        Calendar.startOfWeek(containing:)(v25, v79);
        v47 = *(v23 + 8);
        v48 = v25;
        v49 = v95;
        v47(v48, v95);
        if (v38(v46, 1, v49) == 1)
        {
          v50 = v95;
          v47(v44, v95);
          v47(v94, v50);
          v39 = v46;
          goto LABEL_7;
        }

        v52 = v75;
        v53 = v95;
        v45(v75, v46, v95);
        v45(v91, v52, v53);
        v51 = v23;
      }

      else
      {
        v51 = v23;
        (*(v23 + 16))(v91, v44, v95);
      }

      v54 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
      v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_264E261E0;
      (*(v51 + 16))(v56 + v55, v54, v95);
      v96 = v56;
      v57 = sub_264E23C38();
      v58 = *(v57 - 8);
      v59 = v80;
      (*(v58 + 16))(v80);
      (*(v58 + 56))(v59, 0, 1, v57);
      v60 = sub_264E23C48();
      (*(*(v60 - 8) + 56))(v78, 1, 1, v60);
      sub_264E23B18();
      v61 = v81;
      sub_264E23918();
      v62 = v84;
      v63 = v85;
      v64 = (*(v85 + 104))(v84, *MEMORY[0x277CC9878], v92);
      v80 = &v75;
      v65 = MEMORY[0x28223BE20](v64);
      v66 = v86;
      v67 = v87;
      (*(v87 + 104))(v86, *MEMORY[0x277CC9900], v93, v65);
      v68 = v51;
      v70 = v88;
      v69 = v89;
      v71 = v90;
      (*(v89 + 104))(v88, *MEMORY[0x277CC98E8], v90);
      sub_264E23B58();
      (*(v69 + 8))(v70, v71);
      (*(v67 + 8))(v66, v93);
      (*(v63 + 8))(v62, v92);
      (*(v82 + 8))(v61, v83);
      v72 = *(v68 + 8);
      v73 = v95;
      v72(v77, v95);
      v72(v94, v73);
      v74 = v96;
      v72(v91, v73);
      return v74;
    }

    (*(v23 + 8))(v41, v95);
    v39 = v19;
  }

LABEL_7:
  sub_264D817BC(v39, &qword_27FFB1860, &qword_264E267E0);
  return 0;
}

uint64_t sub_264DC4ECC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_264D93A14(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_264D817BC(v10, &qword_27FFB1860, &qword_264E267E0);
LABEL_5:
    *a3 = 1;
    return result;
  }

  v19 = *(v12 + 32);
  v19(v17, v10, v11);
  sub_264DC6980(&qword_27FFB1BF0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_264E25048())
  {
    result = (*(v12 + 8))(v17, v11);
    goto LABEL_5;
  }

  (*(v12 + 16))(v14, v17, v11);
  v20 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_264DBC178(0, v20[2] + 1, 1, v20);
    *a5 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    *a5 = sub_264DBC178((v22 > 1), v23 + 1, 1, v20);
  }

  (*(v12 + 8))(v17, v11);
  v24 = *a5;
  v24[2] = v23 + 1;
  return (v19)(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, v14, v11);
}

uint64_t Calendar.numberOfDaysInFirstWeek(startingOn:through:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = sub_264E23AA8();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264E23C18();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_264E238E8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v48 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v7 + 104);
  v44 = *MEMORY[0x277CC9940];
  v19(v11, v17);
  v43 = a1;
  v47 = v2;
  sub_264E23B08();
  v20 = v15;
  v21 = v16;
  v22 = *(v7 + 8);
  v22(v11, v6);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_264D817BC(v14, &qword_27FFB1880, &qword_264E26220);
    return 0;
  }

  v23 = *(v21 + 32);
  v39 = v20;
  v23(v48, v14, v20);
  if ((sub_264E238C8() & 1) != 0 && (v38 = v22, v24 = v40, sub_264E23888(), sub_264DC6980(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]), v25 = v42, v26 = sub_264E25068(), v27 = v24, v22 = v38, (*(v41 + 8))(v27, v25), (v26 & 1) == 0))
  {
    (v19)(v11, *MEMORY[0x277CC99B8], v6);
    v35 = v45;
    (v19)(v45, v44, v6);
    v36 = sub_264E23AE8();
    v22(v35, v6);
    v22(v11, v6);
    (*(v21 + 8))(v48, v39);
    return v36;
  }

  else
  {
    (v19)(v11, *MEMORY[0x277CC99B8], v6);
    v28 = v45;
    (v19)(v45, v44, v6);
    v29 = sub_264E23BD8();
    v31 = v30;
    v33 = v32;
    v22(v28, v6);
    v22(v11, v6);
    (*(v21 + 8))(v48, v39);
    if (v33)
    {
      return 0;
    }

    result = v31 - v29;
    if (__OFSUB__(v31, v29))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Calendar.dateIntervalOfWeekPreceding(date:)@<X0>(uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_264E23C18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_264E23AA8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 104);
  v20 = *MEMORY[0x277CC9940];
  v19 = v15;
  v15(v6, v12);
  v21 = v2;
  sub_264E23BC8();
  v16 = *(v4 + 8);
  v16(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_264D817BC(v9, &qword_27FFB1860, &qword_264E267E0);
    v17 = sub_264E238E8();
    return (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v19(v6, v20, v3);
    sub_264E23B08();
    v16(v6, v3);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t Calendar.numberOfWeeksInPast(forDate:comparedTo:)(uint64_t a1, uint64_t *a2)
{
  v69 = a2;
  v4 = sub_264E23B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_264E23B98();
  v63 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264E23B38();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v12 - 8);
  v57 = &v54 - v13;
  v14 = sub_264E23928();
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v65 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = sub_264E23AA8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v70 = &v54 - v27;
  Calendar.startOfWeek(containing:)(a1, v21);
  v28 = *(v23 + 48);
  if (v28(v21, 1, v22) == 1)
  {
    v29 = v21;
LABEL_5:
    sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
    return 0;
  }

  v55 = v5;
  v56 = v4;
  v30 = *(v23 + 32);
  v30(v70, v21, v22);
  Calendar.startOfWeek(containing:)(v69, v18);
  if (v28(v18, 1, v22) == 1)
  {
    (*(v23 + 8))(v70, v22);
    v29 = v18;
    goto LABEL_5;
  }

  v32 = v25;
  v30(v25, v18, v22);
  if (sub_264E23A58())
  {
    v71 = 1;
    v33 = sub_264E23C38();
    v34 = *(v33 - 8);
    v35 = v57;
    (*(v34 + 16))(v57, v2, v33);
    (*(v34 + 56))(v35, 0, 1, v33);
    v36 = sub_264E23C48();
    (*(*(v36 - 8) + 56))(v58, 1, 1, v36);
    LOBYTE(v53) = 1;
    v52 = 0;
    LOBYTE(v51) = 1;
    v50 = 0;
    sub_264E23B18();
    sub_264E23918();
    v37 = v61;
    v38 = (*(v66 + 104))(v61, *MEMORY[0x277CC9878], v67);
    v69 = &v54;
    v39 = MEMORY[0x28223BE20](v38);
    v57 = &v50;
    v52 = v32;
    v53 = &v71;
    v40 = *MEMORY[0x277CC9900];
    v58 = v32;
    v42 = v62;
    v41 = v63;
    (*(v63 + 104))(v62, v40, v68, v39);
    v44 = v55;
    v43 = v56;
    v45 = v64;
    (*(v55 + 104))(v64, *MEMORY[0x277CC98E8], v56);
    v46 = v65;
    sub_264E23B58();
    (*(v44 + 8))(v45, v43);
    (*(v41 + 8))(v42, v68);
    (*(v66 + 8))(v37, v67);
    (*(v59 + 8))(v46, v60);
    v47 = *(v23 + 8);
    v47(v70, v22);
    v48 = v71;
    v47(v58, v22);
    return v48;
  }

  else
  {
    v49 = *(v23 + 8);
    v49(v70, v22);
    v49(v25, v22);
    return 0;
  }
}

uint64_t sub_264DC61A8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D93A14(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_264D817BC(v10, &qword_27FFB1860, &qword_264E267E0);
LABEL_6:
    *a3 = 1;
    return result;
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = sub_264E23A58();
  result = (*(v12 + 8))(v14, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (*a5 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*a5;
  }

  return result;
}

uint64_t sub_264DC6370(uint64_t a1)
{
  v2 = sub_264E23C18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21E8, qword_264E27508);
    v9 = sub_264E25388();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_264DC6980(&qword_27FFB21F0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_264E25038();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_264DC6980(&qword_27FFB21F8, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_264E25068();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_264DC66B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_264E25408())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21E0, &qword_264E27500);
      v3 = sub_264E25388();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_264E25408();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x26674F510](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_264E252F8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_264E23F38();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_264E25308();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_264E252F8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_264E23F38();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_264E25308();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_264DC6980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264DC69E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_264DC6B10;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_264DC6B10(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_264DC6CA4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_264E23C18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264E23C38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  sub_264E23BF8();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  sub_264E23BC8();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14 = sub_264E23AA8();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result != 1)
  {
    return (*(v15 + 32))(a2, v13, v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_264DC6F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = *v1;
  v20[0] = sub_264E17C60(*v1);
  v20[1] = v7;
  sub_264D89EB8();
  v8 = sub_264E24AF8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_264E23C38();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = sub_264E17D5C(v5, v6);
  v18 = v17;
  result = sub_264DC7088(v5);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  return result;
}

uint64_t sub_264DC7088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264DC70F4()
{
  result = qword_27FFB2200;
  if (!qword_27FFB2200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2208, &qword_264E27648);
    sub_264DC7180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2200);
  }

  return result;
}

unint64_t sub_264DC7180()
{
  result = qword_27FFB2210;
  if (!qword_27FFB2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2210);
  }

  return result;
}

uint64_t sub_264DC71E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<D0>)
{
  v40 = a1;
  v44 = a2;
  v4 = sub_264E24148();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_264E24288();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1940, &unk_264E262B0);
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1938, &unk_264E276E0);
  v15 = *(v14 - 8);
  v36 = v14;
  v37 = v15;
  MEMORY[0x28223BE20](v14);
  v33 = &v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1930, &unk_264E262A0);
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  MEMORY[0x28223BE20](v17);
  v34 = &v33 - v19;
  sub_264E247D8();
  v49[0] = a3;
  sub_264E240F8();

  sub_264E24278();
  v49[0] = sub_264E24C98();
  v20 = MEMORY[0x277CE0F78];
  v21 = MEMORY[0x277CBB450];
  v22 = MEMORY[0x277CE0F60];
  sub_264E24038();
  (*(v8 + 8))(v10, v7);

  sub_264E24478();
  v45 = v7;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v33;
  sub_264E24078();
  sub_264DCF968(v49);
  (*(v35 + 8))(v13, v11);
  v25 = v41;
  sub_264E24138();
  sub_264E24F78();
  v45 = v11;
  v46 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x277CE0BC8];
  v28 = MEMORY[0x277CE0BD8];
  v29 = v34;
  v30 = v36;
  sub_264E24028();
  (*(v42 + 8))(v25, v43);
  (*(v37 + 8))(v24, v30);
  v45 = v30;
  v46 = v28;
  v47 = v26;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  sub_264E24068();
  return (*(v39 + 8))(v29, v31);
}

uint64_t OverviewChart.Day.init(date:value:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_264E23AF8();
  v8 = sub_264E23C38();
  (*(*(v8 - 8) + 8))(a2, v8);
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 8))(a1, v9);
  result = type metadata accessor for OverviewChart.Day(0);
  *(a3 + *(result + 20)) = a4;
  return result;
}

BOOL static OverviewChart.Day.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_264E23A78() & 1) == 0 || (sub_264E23A78() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OverviewChart.Day(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t OverviewChart.Model.init(startOfWeek:dailyCounts:calendar:barColor:chartDataType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = *a5;
  Calendar.startOfWeek(containing:)(a1, &v22 - v13);
  v16 = sub_264E23AA8();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v14, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 8))(a1, v16);
    (*(v17 + 32))(a6, v14, v16);
    v19 = type metadata accessor for OverviewChart.Model(0);
    *(a6 + v19[5]) = a2;
    v20 = v19[6];
    v21 = sub_264E23C38();
    result = (*(*(v21 - 8) + 32))(a6 + v20, a3, v21);
    *(a6 + v19[7]) = a4;
    *(a6 + v19[8]) = v15;
  }

  return result;
}

uint64_t sub_264DC7B34(uint64_t a1)
{
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  type metadata accessor for OverviewChart.Model(0);
  Calendar.startOfWeek(containing:)(a1, v18);
  (*(v4 + 16))(v15, v1, v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_264D93A14(v18, v9);
  sub_264D93A14(v15, &v9[v19]);
  v20 = *(v4 + 48);
  if (v20(v9, 1, v3) != 1)
  {
    sub_264D93A14(v9, v12);
    if (v20(&v9[v19], 1, v3) != 1)
    {
      v22 = &v9[v19];
      v23 = v27;
      (*(v4 + 32))(v27, v22, v3);
      sub_264DCE658(&qword_27FFB1868, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_264E25068();
      v24 = *(v4 + 8);
      v24(v23, v3);
      sub_264D817BC(v15, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
      v24(v12, v3);
      sub_264D817BC(v9, &qword_27FFB1860, &qword_264E267E0);
      return v21 & 1;
    }

    sub_264D817BC(v15, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_264D817BC(v15, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
  if (v20(&v9[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_264D817BC(v9, &qword_27FFB1858, &unk_264E26200);
    v21 = 0;
    return v21 & 1;
  }

  sub_264D817BC(v9, &qword_27FFB1860, &qword_264E267E0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_264DC7F68(char *a1)
{
  v38 = a1;
  v45 = sub_264E23AA8();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OverviewChart.Day(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for OverviewChart.Model(0);
  v37 = v1;
  v9 = *(v1 + *(v36 + 20));
  v10 = *(v9 + 16);
  if (!v10)
  {
    v13 = MEMORY[0x277D84F98];
LABEL_17:
    sub_264DD26C0(v13, v37, v37 + *(v36 + 24), v38);
  }

  v11 = 0;
  v12 = *(v5 + 20);
  v42 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v43 = v12;
  v44 = (v2 + 16);
  v39 = v2;
  v41 = (v2 + 8);
  v13 = MEMORY[0x277D84F98];
  v40 = v9;
  while (v11 < *(v9 + 16))
  {
    v14 = v6;
    sub_264DCE54C(v42 + *(v6 + 72) * v11, v8, type metadata accessor for OverviewChart.Day);
    v15 = *v44;
    (*v44)(v4, v8, v45);
    v16 = *&v8[v43];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v13;
    v18 = sub_264D9D5F4(v4);
    v20 = v13[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_19;
    }

    v24 = v19;
    if (v13[3] < v23)
    {
      sub_264D9E6F0(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_264D9D5F4(v4);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v13 = v46;
      if (v24)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v33 = v18;
    sub_264DA12F8();
    v18 = v33;
    v13 = v46;
    if (v24)
    {
LABEL_3:
      *(v13[7] + 8 * v18) = v16;
      (*v41)(v4, v45);
      sub_264DCE5B4(v8);
      goto LABEL_4;
    }

LABEL_12:
    v26 = v8;
    v27 = v10;
    v13[(v18 >> 6) + 8] |= 1 << v18;
    v28 = v39;
    v29 = v18;
    v30 = v45;
    v15((v13[6] + *(v39 + 72) * v18), v4, v45);
    *(v13[7] + 8 * v29) = v16;
    (*(v28 + 8))(v4, v30);
    sub_264DCE5B4(v26);
    v31 = v13[2];
    v22 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v13[2] = v32;
    v10 = v27;
    v8 = v26;
LABEL_4:
    ++v11;
    v6 = v14;
    v9 = v40;
    if (v10 == v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DC8324@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverviewChart.Day(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  result = type metadata accessor for OverviewChart.Model(0);
  v11 = *(v1 + *(result + 20));
  v12 = *(v11 + 16);
  while (1)
  {
    if (!v12)
    {
      v17 = sub_264E23AA8();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    if (v12 > *(v11 + 16))
    {
      break;
    }

    --v12;
    v13 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12;
    sub_264DCE54C(v13, v6, type metadata accessor for OverviewChart.Day);
    v14 = *&v6[*(v3 + 20)];
    result = sub_264DCE5B4(v6);
    if (v14 > 0.0)
    {
      sub_264DCE54C(v13, v9, type metadata accessor for OverviewChart.Day);
      v15 = sub_264E23AA8();
      v16 = *(v15 - 8);
      (*(v16 + 32))(a1, v9, v15);
      return (*(v16 + 56))(a1, 0, 1, v15);
    }
  }

  __break(1u);
  return result;
}

char *sub_264DC8554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2308, &qword_264E27900);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-v5];
  v7 = type metadata accessor for OverviewChart.Day(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v12 = *(a1 + *(v7 + 20));
    if (v12 <= 0.0)
    {
      return MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v9);
    *&v25[-16] = a1;
    sub_264D93D38(sub_264D915F8, a2, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_264D817BC(v6, &qword_27FFB2308, &qword_264E27900);
      v13 = 0.0;
    }

    else
    {
      sub_264DCDEBC(v6, v11, type metadata accessor for OverviewChart.Day);
      v21 = *&v11[*(v7 + 20)];
      sub_264DCE5B4(v11);
      v13 = v21 / v12;
    }

    v14 = sub_264DBC37C(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = *(v14 + 2);
    v15 = *(v14 + 3);
    v23 = v15 >> 1;
    v16 = v22 + 1;
    if (v15 >> 1 <= v22)
    {
      v14 = sub_264DBC37C((v15 > 1), v22 + 1, 1, v14);
      v15 = *(v14 + 3);
      v23 = v15 >> 1;
    }

    *(v14 + 2) = v16;
    v24 = &v14[24 * v22];
    *(v24 + 4) = v13;
    *(v24 + 5) = 0x6F697463656C6573;
    *(v24 + 6) = 0xE90000000000006ELL;
    if (1.0 - v13 < 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0 - v13;
    }

    v17 = v22 + 2;
    if (v23 < v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = sub_264DBC37C(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v16 + 1;
    v18 = 1.0;
    if (v16 >= v15 >> 1)
    {
LABEL_16:
      v14 = sub_264DBC37C((v15 > 1), v17, 1, v14);
    }
  }

  *(v14 + 2) = v17;
  v19 = &v14[24 * v16];
  *(v19 + 4) = v18;
  *(v19 + 5) = 0x65646E69616D6572;
  *(v19 + 6) = 0xE900000000000072;
  return v14;
}