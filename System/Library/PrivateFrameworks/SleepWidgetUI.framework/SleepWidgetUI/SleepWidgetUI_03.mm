void sub_269E38E64(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(type metadata accessor for SleepScoreWidgetEntry(0) + 24);
  v5 = type metadata accessor for SleepScoreWidgetView(0);
  sub_269E39C74(a1 + v4, &a2[v5[7]], type metadata accessor for SleepScoreWidgetViewModel);
  *a2 = swift_getKeyPath();
  sub_269E3953C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = v5[5];
  *&a2[v6] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = &a2[v5[6]];
  *v7 = swift_getKeyPath();
  sub_269E38630(0);
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  v7[32] = 0;
  v9 = *(v8 + 52);
  v10 = sub_269E50B9C();
  (*(*(v10 - 8) + 16))(&a2[v9], a1, v10);
  v11 = sub_269E5107C();

  sub_269E38590(0);
  *&a2[*(v12 + 36)] = v11;
}

void sub_269E3903C(uint64_t a1@<X8>)
{
  v3 = sub_269E5101C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = objc_opt_self();
  v11 = [v10 sharedBehavior];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  v13 = [v11 features];

  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = [v13 sleepDetails];

  v43 = a1;
  v44 = v1;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = [v10 sharedBehavior];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 hksp_supportsHealthData];

    if (v17)
    {
      sub_269E50FFC();
      v18 = sub_269E5100C();
      v19 = sub_269E51E9C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v45 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_269E47920(0xD00000000000006BLL, 0x8000000269E56BF0, &v45);
        _os_log_impl(&dword_269DE5000, v18, v19, "[%{public}s] sleep score widget supported", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x26D654490](v21, -1, -1);
        MEMORY[0x26D654490](v20, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
LABEL_12:
      sub_269E38CB4(0);
      sub_269E38B3C(255);
      v27 = v26;
      sub_269E389F4(255);
      v29 = v28;
      sub_269E388E4(255);
      v31 = v30;
      sub_269E38814(255);
      v33 = v32;
      sub_269E3852C(255);
      v35 = v34;
      v36 = sub_269E3871C(&qword_281571E10, sub_269E3852C, MEMORY[0x277CE3D88]);
      v37 = sub_269DF0E28();
      v38 = MEMORY[0x277D837D0];
      v45 = v35;
      v46 = MEMORY[0x277D837D0];
      v47 = v36;
      v48 = v37;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v45 = v33;
      v46 = v38;
      v47 = OpaqueTypeConformance2;
      v48 = v37;
      v40 = swift_getOpaqueTypeConformance2();
      v45 = v31;
      v46 = v40;
      v41 = swift_getOpaqueTypeConformance2();
      v45 = v29;
      v46 = v41;
      v42 = swift_getOpaqueTypeConformance2();
      v45 = v27;
      v46 = v42;
      swift_getOpaqueTypeConformance2();
      sub_269E513AC();
      return;
    }

LABEL_9:
    sub_269E50FFC();
    v22 = sub_269E5100C();
    v23 = sub_269E51ECC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_269E47920(0xD00000000000006BLL, 0x8000000269E56BF0, &v45);
      _os_log_impl(&dword_269DE5000, v22, v23, "[%{public}s] sleep score widget not supported", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x26D654490](v25, -1, -1);
      MEMORY[0x26D654490](v24, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_269E39504@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E51CDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_269E3953C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E395F4(uint64_t a1)
{
  sub_269DF6A7C(319, &qword_281571D10, 0x277CCD4D8);
  if (v1 <= 0x3F)
  {
    sub_269DF6A7C(319, &qword_281571D08, 0x277D62528);
    if (v2 <= 0x3F)
    {
      sub_269E50CDC();
      if (v3 <= 0x3F)
      {
        sub_269E39720(319, qword_281572B98, type metadata accessor for SleepScoreWidgetViewModel, &protocol witness table for SleepScoreWidgetViewModel, type metadata accessor for SleepWidgetRelevanceProvider);
        if (v4 <= 0x3F)
        {
          sub_269E50C8C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269E39720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_269E39800(uint64_t a1)
{
  if (!qword_281571D40)
  {
    type metadata accessor for SleepScoreWidgetEntry(255);
    v1 = sub_269E51DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_281571D40);
    }
  }
}

uint64_t sub_269E39868(uint64_t a1)
{
  sub_269E39800(0);

  return sub_269E378D0(a1);
}

uint64_t sub_269E398D8(void *a1, void *a2)
{
  v5 = *(type metadata accessor for SleepScoreWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_269E36514(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_269E39988(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_269E50CDC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_269E467A0(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t sub_269E39A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E39A9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E3953C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E39B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E39B84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E3953C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E39C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E3953C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E39C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269E39CE4(uint64_t a1)
{
  if (!qword_28035F210)
  {
    type metadata accessor for SleepScoreWidgetEntry(255);
    sub_269E3871C(&qword_28035F208, type metadata accessor for SleepScoreWidgetEntry, &unk_269E55980);
    v1 = sub_269E51C3C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F210);
    }
  }
}

void sub_269E39DA8(uint64_t a1)
{
  sub_269E50B9C();
  if (v1 <= 0x3F)
  {
    sub_269E3953C(319, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SleepScoreWidgetViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_269E3953C(319, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t SleepWidgetViewModel.baseAccessibilityIdentifier.getter()
{
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v0 = qword_281575978;

  return v0;
}

uint64_t SleepWidgetViewModel.title.getter()
{
  v1 = sub_269E5101C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269E50BCC();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269E50BDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269E50C8C();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 8) & 1) == 0)
  {
    v21 = *v0;
    if (*v0 <= 3)
    {
      if (v21 == 2)
      {
        if (qword_281571CB0 == -1)
        {
          return sub_269E50A7C();
        }

LABEL_16:
        swift_once();
        return sub_269E50A7C();
      }

      if (v21 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if ((v21 - 4) < 2)
      {
        if (qword_281571CB0 == -1)
        {
          return sub_269E50A7C();
        }

        goto LABEL_16;
      }

      if (v21 != 6)
      {
        goto LABEL_2;
      }
    }

    v22 = v13;
    v23 = v14;
    (*(v9 + 104))(v11, *MEMORY[0x277CC9830], v8);
    sub_269E50BEC();
    (*(v9 + 8))(v11, v8);
    type metadata accessor for SleepWidgetViewModel(0);
    sub_269E50BAC();
    sub_269E50C0C();
    (*(v25 + 8))(v7, v5);
    (*(v23 + 8))(v16, v22);
    return sub_269E51E8C();
  }

LABEL_2:
  sub_269E50FFC();
  v17 = sub_269E5100C();
  v18 = sub_269E51EAC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_269DE5000, v17, v18, "State has no title", v19, 2u);
    MEMORY[0x26D654490](v19, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

BOOL SleepWidgetViewModel.showWakeUpDateView.getter()
{
  v0 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_269E3CD30(&v7 - v2);
  v4 = sub_269E50B9C();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_269E3E2CC(v3, &qword_281573C60, v0);
  return v5;
}

uint64_t sub_269E3A4C0()
{
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t sub_269E3A588()
{
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t SleepWidgetViewModel.scheduleOccurrenceTimeAttributedString(occurrence:isCondensed:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_269E50ACC();
  MEMORY[0x28223BE20](v6 - 8);
  sub_269E3E81C(0, &qword_28035F220, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  if (*a1 == 3)
  {
    v19 = &v29 - v17;
    if (a2)
    {
      SleepWidgetViewModel.localizedCondensedBedtimeAttributedString.getter(v19);
    }

    else
    {
      SleepWidgetViewModel.localizedBedtimeAttributedString.getter(v19);
    }

    sub_269E3E33C(v18, v16, &qword_28035F220, MEMORY[0x277CC8C40]);
    v20 = sub_269E50A5C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v16, 1, v20) == 1)
    {
      if (qword_281571CB0 != -1)
      {
        swift_once();
      }

      sub_269E50A7C();
      sub_269E50ABC();
      sub_269E50A6C();
      sub_269E3E2CC(v18, &qword_28035F220, MEMORY[0x277CC8C40]);
      result = v22(v16, 1, v20);
      if (result != 1)
      {
        v24 = MEMORY[0x277CC8C40];
        v25 = v16;
        return sub_269E3E2CC(v25, &qword_28035F220, v24);
      }
    }

    else
    {
      sub_269E3E2CC(v18, &qword_28035F220, MEMORY[0x277CC8C40]);
      return (*(v21 + 32))(a3, v16, v20);
    }
  }

  else
  {
    if (a2)
    {
      SleepWidgetViewModel.localizedCondensedWakeUpAttributedString.getter(v13);
    }

    else
    {
      SleepWidgetViewModel.localizedWakeUpAttributedString.getter(v13);
    }

    sub_269E3E33C(v13, v10, &qword_28035F220, MEMORY[0x277CC8C40]);
    v26 = sub_269E50A5C();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (v28(v10, 1, v26) == 1)
    {
      if (qword_281571CB0 != -1)
      {
        swift_once();
      }

      sub_269E50A7C();
      sub_269E50ABC();
      sub_269E50A6C();
      sub_269E3E2CC(v13, &qword_28035F220, MEMORY[0x277CC8C40]);
      result = v28(v10, 1, v26);
      if (result != 1)
      {
        v24 = MEMORY[0x277CC8C40];
        v25 = v10;
        return sub_269E3E2CC(v25, &qword_28035F220, v24);
      }
    }

    else
    {
      sub_269E3E2CC(v13, &qword_28035F220, MEMORY[0x277CC8C40]);
      return (*(v27 + 32))(a3, v10, v26);
    }
  }

  return result;
}

uint64_t sub_269E3AB78(_BYTE *a1)
{
  v2 = sub_269E50B9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  if (*a1 == 3)
  {
    sub_269E3CA50(&v14 - v10);
  }

  else
  {
    sub_269E3CD30(&v14 - v10);
  }

  sub_269E3E33C(v11, v9, &qword_281573C60, MEMORY[0x277CC9578]);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_269E3E2CC(v9, &qword_281573C60, MEMORY[0x277CC9578]);
    if (qword_281571CB0 != -1)
    {
      swift_once();
    }

    sub_269E50A7C();
    sub_269E50F3C();
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v12 setDateStyle_];
    [v12 setTimeStyle_];
    sub_269E51EEC();

    (*(v3 + 8))(v5, v2);
  }

  return sub_269E3E2CC(v11, &qword_281573C60, MEMORY[0x277CC9578]);
}

uint64_t SleepWidgetViewModel.scheduleOccurrenceRelativeDateString(occurrence:)(unsigned __int8 *a1)
{
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = sub_269E50B9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = *a1;
  v17 = type metadata accessor for SleepWidgetViewModel(0);
  v18 = v17;
  v19 = (v10 + 48);
  if (v16 == 3)
  {
    sub_269E3E33C(v1 + *(v17 + 48), v8, &qword_281573C60, MEMORY[0x277CC9578]);
    if ((*v19)(v8, 1, v9) == 1)
    {
      v20 = MEMORY[0x277CC9578];
      v21 = v8;
LABEL_6:
      sub_269E3E2CC(v21, &qword_281573C60, v20);
      return 0;
    }

    (*(v10 + 32))(v15, v8, v9);
    v23 = *(v1 + *(v18 + 36));
    v24 = sub_269E50B5C();
    v25 = [v23 stringFromDate_];

    v26 = sub_269E51CDC();
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_269E3E33C(v1 + *(v17 + 52), v6, &qword_281573C60, MEMORY[0x277CC9578]);
    if ((*v19)(v6, 1, v9) == 1)
    {
      v20 = MEMORY[0x277CC9578];
      v21 = v6;
      goto LABEL_6;
    }

    (*(v10 + 32))(v13, v6, v9);
    v27 = *(v1 + *(v18 + 36));
    v28 = sub_269E50B5C();
    v29 = [v27 stringFromDate_];

    v26 = sub_269E51CDC();
    (*(v10 + 8))(v13, v9);
  }

  return v26;
}

int *SleepWidgetViewModel.sleepChart.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for SleepWidgetViewModel(0);
  if (*(v1 + result[10]))
  {
    return sub_269E0B178(a1);
  }

  *a1 = 0;
  return result;
}

double SleepWidgetViewModel.init(state:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SleepWidgetViewModel(0);
  v7 = v6[5];
  v8 = sub_269E50A0C();
  v9 = *(*(v8 - 8) + 56);
  v9(a3 + v7, 1, 1, v8);
  v9(a3 + v6[6], 1, 1, v8);
  sub_269E50B8C();
  v10 = v6[9];
  *(a3 + v10) = [objc_allocWithZone(sub_269E50F0C()) init];
  v11 = v6[11];
  v12 = sub_269E50B9C();
  v13 = *(*(v12 - 8) + 56);
  v13(a3 + v11, 1, 1, v12);
  v13(a3 + v6[12], 1, 1, v12);
  v13(a3 + v6[13], 1, 1, v12);
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + v6[7]) = 0;
  v14 = (a3 + v6[10]);
  result = 0.0;
  *v14 = 0u;
  v14[1] = 0u;
  return result;
}

id SleepWidgetViewModel.summaryResults.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepWidgetViewModel(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_269DF6E4C(v4, v5, v6, v7);
}

uint64_t SleepWidgetViewModel.init(state:bedtimeComponents:wakeUpComponents:alarmState:summaryResults:now:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = *a5;
  v14 = type metadata accessor for SleepWidgetViewModel(0);
  v15 = v14[9];
  v16 = sub_269E50F0C();
  v26 = a6[1];
  v27 = *a6;
  *(a8 + v15) = [objc_allocWithZone(v16) init];
  v17 = v14[11];
  v18 = sub_269E50B9C();
  v25 = *(v18 - 8);
  v19 = *(v25 + 56);
  v19(a8 + v17, 1, 1, v18);
  v19(a8 + v14[12], 1, 1, v18);
  v19(a8 + v14[13], 1, 1, v18);
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  v20 = MEMORY[0x277CC8990];
  sub_269E3E4B4(a3, a8 + v14[5], &qword_281573CB0, MEMORY[0x277CC8990]);
  sub_269E3E4B4(a4, a8 + v14[6], &qword_281573CB0, v20);
  *(a8 + v14[7]) = v28;
  v21 = (a8 + v14[10]);
  *v21 = v27;
  v21[1] = v26;
  v22 = *(v25 + 32);
  v23 = a8 + v14[8];

  return v22(v23, a7, v18);
}

uint64_t SleepWidgetViewModel.init(resolvedOccurrence:summaryResults:state:now:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a4;
  v71 = a3;
  v10 = MEMORY[0x277D83D88];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v73 = &v65 - v16;
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], v10);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  v23 = type metadata accessor for SleepWidgetViewModel(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a2;
  v67 = a2[1];
  v68 = v26;
  v77 = a6;
  v69 = v22;
  v70 = v20;
  if (a1)
  {
    v27 = [a1 occurrence];
    v28 = [v27 bedtimeComponents];

    sub_269E509FC();
    v29 = sub_269E50A0C();
    v30 = *(*(v29 - 8) + 56);
    v30(v22, 0, 1, v29);
    v31 = [a1 occurrence];
    v32 = [v31 wakeUpComponents];

    sub_269E509FC();
    v30(v20, 0, 1, v29);
  }

  else
  {
    v33 = sub_269E50A0C();
    v34 = *(*(v33 - 8) + 56);
    v34(v22, 1, 1, v33);
    v34(v20, 1, 1, v33);
  }

  v66 = a1;
  sub_269E3BD48(a1, &v78);
  v35 = a1;
  v36 = v78;
  v37 = v23[8];
  v38 = sub_269E50B9C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 16);
  v76 = a5;
  v40(&v25[v37], a5, v38);
  v41 = v23[9];
  *&v25[v41] = [objc_allocWithZone(sub_269E50F0C()) init];
  v42 = *(v39 + 56);
  v42(&v25[v23[11]], 1, 1, v38);
  v42(&v25[v23[12]], 1, 1, v38);
  v42(&v25[v23[13]], 1, 1, v38);
  *v25 = v71;
  v25[8] = v72 & 1;
  v43 = MEMORY[0x277CC8990];
  sub_269E3E4B4(v69, &v25[v23[5]], &qword_281573CB0, MEMORY[0x277CC8990]);
  sub_269E3E4B4(v70, &v25[v23[6]], &qword_281573CB0, v43);
  v25[v23[7]] = v36;
  v44 = &v25[v23[10]];
  v45 = v67;
  *v44 = v68;
  *(v44 + 1) = v45;
  v46 = v77;
  sub_269E3E3BC(v25, v77);
  v47 = v35;
  if (v35)
  {
    v48 = v66;
    v49 = [v66 windDownEvent];
    if (v49)
    {
      v50 = v49;
      v51 = [v49 dueDate];

      v52 = v73;
      sub_269E50B6C();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v52 = v73;
    }

    v42(v52, v53, 1, v38);
    sub_269E3E420(v52, v46 + v23[11]);
    v55 = [v48 bedtimeEvent];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 dueDate];

      v58 = v74;
      sub_269E50B6C();

      v42(v58, 0, 1, v38);
      sub_269E3E420(v58, v46 + v23[12]);
      goto LABEL_12;
    }
  }

  else
  {
    v54 = v73;
    v42(v73, 1, 1, v38);
    sub_269E3E420(v54, v46 + v23[11]);
    v48 = v66;
  }

  v59 = 1;
  v60 = v74;
  v42(v74, 1, 1, v38);
  sub_269E3E420(v60, v46 + v23[12]);
  if (!v47)
  {
    v63 = v75;
    goto LABEL_14;
  }

LABEL_12:
  v61 = [v48 wakeUpEvent];
  v62 = [v61 dueDate];

  v63 = v75;
  sub_269E50B6C();

  v59 = 0;
LABEL_14:
  (*(v39 + 8))(v76, v38);
  v42(v63, v59, 1, v38);
  return sub_269E3E420(v63, v46 + v23[13]);
}

void sub_269E3BD48(void *a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 wakeUpEvent];
    v5 = [v4 type];

    if (v5 == 1)
    {

      v6 = 1;
    }

    else
    {
      v7 = [v3 occurrence];
      v8 = [v7 alarmConfiguration];

      LODWORD(v7) = [v8 isEnabled];
      if (v7)
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t SleepWidgetViewModel.init(resolvedOccurrence:summaryResults:state:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v5) = a4;
  v65 = a3;
  v69 = a5;
  v8 = MEMORY[0x277D83D88];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v68 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v60[-v13];
  MEMORY[0x28223BE20](v12);
  v66 = &v60[-v14];
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], v8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v70 = &v60[-v19];
  v20 = type metadata accessor for SleepWidgetViewModel(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v60[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_269E50B9C();
  v72 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = *a2;
  v62 = a2[1];
  v63 = v25;
  v71 = &v60[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E50B8C();
  v64 = v18;
  if (a1)
  {
    v61 = v5;
    v26 = [a1 occurrence];
    v27 = [v26 bedtimeComponents];

    v28 = v70;
    sub_269E509FC();

    v29 = sub_269E50A0C();
    v30 = *(*(v29 - 8) + 56);
    v30(v28, 0, 1, v29);
    v31 = [a1 occurrence];
    v5 = [v31 wakeUpComponents];

    sub_269E509FC();
    LOBYTE(v5) = v61;
    v30(v18, 0, 1, v29);
  }

  else
  {
    v32 = sub_269E50A0C();
    v33 = *(*(v32 - 8) + 56);
    v33(v70, 1, 1, v32);
    v33(v18, 1, 1, v32);
  }

  v34 = a1;
  sub_269E3BD48(a1, &v73);
  v35 = v73;
  v36 = v72;
  (*(v72 + 16))(&v22[v20[8]], v71, v23);
  v37 = v20[9];
  *&v22[v37] = [objc_allocWithZone(sub_269E50F0C()) init];
  v38 = *(v36 + 56);
  v38(&v22[v20[11]], 1, 1, v23);
  v38(&v22[v20[12]], 1, 1, v23);
  v38(&v22[v20[13]], 1, 1, v23);
  *v22 = v65;
  v22[8] = v5 & 1;
  v39 = MEMORY[0x277CC8990];
  sub_269E3E4B4(v70, &v22[v20[5]], &qword_281573CB0, MEMORY[0x277CC8990]);
  sub_269E3E4B4(v64, &v22[v20[6]], &qword_281573CB0, v39);
  v22[v20[7]] = v35;
  v40 = &v22[v20[10]];
  v41 = v62;
  *v40 = v63;
  v40[1] = v41;
  v42 = v69;
  sub_269E3E3BC(v22, v69);
  if (a1)
  {
    v43 = [v34 windDownEvent];
    v44 = v34;
    if (v43)
    {
      v45 = v43;
      v46 = [v43 dueDate];

      v47 = v66;
      sub_269E50B6C();

      v48 = 0;
    }

    else
    {
      v48 = 1;
      v47 = v66;
    }

    v38(v47, v48, 1, v23);
    sub_269E3E420(v47, v42 + v20[11]);
    v50 = [v44 bedtimeEvent];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 dueDate];

      v53 = v67;
      sub_269E50B6C();

      v38(v53, 0, 1, v23);
      sub_269E3E420(v53, v42 + v20[12]);
      goto LABEL_12;
    }
  }

  else
  {
    v49 = v66;
    v38(v66, 1, 1, v23);
    sub_269E3E420(v49, v42 + v20[11]);
    v44 = v34;
  }

  v54 = 1;
  v55 = v67;
  v38(v67, 1, 1, v23);
  sub_269E3E420(v55, v42 + v20[12]);
  if (!a1)
  {
    v58 = v68;
    goto LABEL_14;
  }

LABEL_12:
  v56 = [v44 wakeUpEvent];
  v57 = [v56 dueDate];

  v58 = v68;
  sub_269E50B6C();

  v54 = 0;
LABEL_14:
  (*(v72 + 8))(v71, v23);
  v38(v58, v54, 1, v23);
  return sub_269E3E420(v58, v42 + v20[13]);
}

uint64_t SleepWidgetViewModel.defaultText.getter()
{
  if (*(v0 + 8))
  {
    return 0x617453206C6C754ELL;
  }

  v2 = NSStringFromHKSPSleepWidgetState();
  v3 = sub_269E51CDC();

  return v3;
}

uint64_t sub_269E3C628@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_269E50BCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6A7C(0, &qword_281571D00, 0x277CCA968);
  sub_269E50BAC();
  HKSPIsRemoveSpacesForTimeFormatEnabled();
  v12 = sub_269E51EDC();
  v13 = (*(v9 + 8))(v11, v8);
  a1(v13);
  sub_269E3D470(v7, v12);
  v15 = v14;
  sub_269E3E2CC(v7, &qword_281573C60, v4);
  if (v15)
  {
    sub_269E51D5C();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_269E50A5C();
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

uint64_t sub_269E3C870@<X0>(void (*a1)(id)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269E50ACC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v9 setDateStyle_];
  v10 = 1;
  a1([v9 setTimeStyle_]);
  sub_269E3D470(v8, v9);
  v12 = v11;

  sub_269E3E2CC(v8, &qword_281573C60, v5);
  if (v12)
  {
    sub_269E50ABC();
    sub_269E50A6C();
    v10 = 0;
  }

  v13 = sub_269E50A5C();
  return (*(*(v13 - 8) + 56))(a2, v10, 1, v13);
}

uint64_t sub_269E3CA50@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = MEMORY[0x277CC8990];
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_269E50A0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269E50C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50C5C();
  v14 = type metadata accessor for SleepWidgetViewModel(0);
  sub_269E3E33C(v1 + *(v14 + 20), v5, &qword_281573CB0, v2);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_269E3E2CC(v5, &qword_281573CB0, MEMORY[0x277CC8990]);
    v15 = sub_269E50B9C();
    return (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_269E50C2C();
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_269E3CD30@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = MEMORY[0x277CC8990];
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_269E50A0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269E50C8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50C5C();
  v14 = type metadata accessor for SleepWidgetViewModel(0);
  sub_269E3E33C(v1 + *(v14 + 24), v5, &qword_281573CB0, v2);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_269E3E2CC(v5, &qword_281573CB0, MEMORY[0x277CC8990]);
    v15 = sub_269E50B9C();
    return (*(*(v15 - 8) + 56))(v18, 1, 1, v15);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_269E50C2C();
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t SleepWidgetViewModel.localizedBedtimeRelativeDateString.getter()
{
  v1 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_269E50B9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepWidgetViewModel(0);
  sub_269E3E33C(v0 + *(v9 + 48), v4, &qword_281573C60, v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_269E3E2CC(v4, &qword_281573C60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = *(v0 + *(v9 + 36));
    v12 = sub_269E50B5C();
    v13 = [v11 stringFromDate_];

    v14 = sub_269E51CDC();
    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

uint64_t SleepWidgetViewModel.localizedWakeUpRelativeDateString.getter()
{
  v1 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_269E50B9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepWidgetViewModel(0);
  sub_269E3E33C(v0 + *(v9 + 52), v4, &qword_281573C60, v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_269E3E2CC(v4, &qword_281573C60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = *(v0 + *(v9 + 36));
    v12 = sub_269E50B5C();
    v13 = [v11 stringFromDate_];

    v14 = sub_269E51CDC();
    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

uint64_t sub_269E3D470(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_269E50B9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3E33C(a1, v7, &qword_281573C60, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_269E3E2CC(v7, &qword_281573C60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = sub_269E50B5C();
    v14 = [a2 stringFromDate_];

    v15 = sub_269E51CDC();
    (*(v9 + 8))(v11, v8);
    return v15;
  }
}

uint64_t sub_269E3D6BC(void (*a1)(id))
{
  v2 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v6 setDateStyle_];
  a1([v6 setTimeStyle_]);
  v7 = sub_269E3D470(v5, v6);

  sub_269E3E2CC(v5, &qword_281573C60, v2);
  return v7;
}

uint64_t SleepWidgetViewModel.sleepSampleEndDateString.getter()
{
  v1 = sub_269E509EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_269E50B9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v0 + *(type metadata accessor for SleepWidgetViewModel(0) + 40));
  v16 = v15[1];
  if (*v15)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_18:
    sub_269E3E2CC(v10, &qword_281573C60, MEMORY[0x277CC9578]);
    return 0;
  }

  v18 = [v16 periods];
  sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
  v19 = sub_269E51DAC();

  if (v19 >> 62)
  {
    v20 = sub_269E5204C();
    if (v20)
    {
LABEL_9:
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v21)
      {
        __break(1u);
      }

      else if ((v19 & 0xC000000000000001) == 0)
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v22 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v19 + 8 * v22 + 32);
LABEL_14:
          v24 = v23;

          v25 = [v24 dateInterval];

          sub_269E5099C();
          sub_269E509AC();
          (*(v2 + 8))(v4, v1);
          (*(v12 + 56))(v8, 0, 1, v11);
          goto LABEL_17;
        }

        __break(1u);
LABEL_28:
        swift_once();
        goto LABEL_21;
      }

      v23 = MEMORY[0x26D653D70](v22, v19);
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_9;
    }
  }

  (*(v12 + 56))(v8, 1, 1, v11);
LABEL_17:
  sub_269E3E4B4(v8, v10, &qword_281573C60, MEMORY[0x277CC9578]);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_18;
  }

  (*(v12 + 32))(v14, v10, v11);
  v19 = sub_269E50B5C();
  if (qword_28035E880 != -1)
  {
    goto LABEL_28;
  }

LABEL_21:
  v27 = HKMostRecentSampleEndDateText();

  if (!v27)
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  v28 = sub_269E51CDC();

  (*(v12 + 8))(v14, v11);
  return v28;
}

uint64_t SleepWidgetViewModel.AlarmState.hashValue.getter()
{
  v1 = *v0;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v1);
  return sub_269E5223C();
}

uint64_t SleepWidgetViewModel.description.getter()
{
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1);
  v3 = &v20[-v2];
  sub_269E3E81C(0, &qword_281571BB0, sub_269E3E534, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269E53730;
  if (*(v0 + 8))
  {
    v5 = 0xEA00000000006574;
    v6 = 0x617453206C6C754ELL;
  }

  else
  {
    v7 = NSStringFromHKSPSleepWidgetState();
    v6 = sub_269E51CDC();
    v5 = v8;
  }

  v9 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v10 = sub_269E3E598();
  *(v4 + 64) = v10;
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  v11 = type metadata accessor for SleepWidgetViewModel(0);
  v12 = MEMORY[0x277CC8990];
  sub_269E3E33C(v0 + v11[5], v3, &qword_281573CB0, MEMORY[0x277CC8990]);
  v13 = sub_269E51D0C();
  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  *(v4 + 72) = v13;
  *(v4 + 80) = v14;
  sub_269E3E33C(v0 + v11[6], v3, &qword_281573CB0, v12);
  v15 = sub_269E51D0C();
  *(v4 + 136) = v9;
  *(v4 + 144) = v10;
  *(v4 + 112) = v15;
  *(v4 + 120) = v16;
  v20[15] = *(v0 + v11[7]);
  v17 = sub_269E51D0C();
  *(v4 + 176) = v9;
  *(v4 + 184) = v10;
  *(v4 + 152) = v17;
  *(v4 + 160) = v18;
  return sub_269E51CEC();
}

uint64_t SleepWidgetViewModel.noDataTexts.getter()
{
  v1 = type metadata accessor for SleepWidgetViewModel(0);
  if (*(v0 + *(v1 + 40)) && SleepDaySummaryResults.hasAnyDataInLastWeek.getter(v1))
  {
    sub_269E3E880(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_269E546C0;
    if (qword_281571CB0 != -1)
    {
      swift_once();
    }

    *(v2 + 32) = sub_269E50A7C();
    *(v2 + 40) = v3;
    *(v2 + 48) = sub_269E50A7C();
    *(v2 + 56) = v4;
    *(v2 + 64) = 11565;
    *(v2 + 72) = 0xE200000000000000;
    sub_269E3E880(0, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269E18DEC();
    v5 = sub_269E51E7C();
  }

  else
  {
    sub_269E3E880(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_269E528E0;
    if (qword_281571CB0 != -1)
    {
      swift_once();
    }

    *(v5 + 32) = sub_269E50A7C();
    *(v5 + 40) = v6;
    *(v5 + 48) = 11565;
    *(v5 + 56) = 0xE200000000000000;
  }

  return v5;
}

id sub_269E3E1F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_269DF6E4C(v4, v5, v6, v7);
}

uint64_t sub_269E3E218()
{
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v0 = qword_281575978;

  return v0;
}

uint64_t type metadata accessor for SleepWidgetViewModel(uint64_t a1)
{
  result = qword_2815728B8;
  if (!qword_2815728B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E3E2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E3E81C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E3E33C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E3E81C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E3E3BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E3E420(uint64_t a1, uint64_t a2)
{
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E3E4B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E3E81C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_269E3E534()
{
  result = qword_281571BA0;
  if (!qword_281571BA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281571BA0);
  }

  return result;
}

unint64_t sub_269E3E598()
{
  result = qword_281571DD0;
  if (!qword_281571DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571DD0);
  }

  return result;
}

unint64_t sub_269E3E5F0()
{
  result = qword_28035F228;
  if (!qword_28035F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F228);
  }

  return result;
}

void sub_269E3E66C(uint64_t a1)
{
  sub_269E3E81C(319, &qword_281571CD8, type metadata accessor for HKSPSleepWidgetState, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_269E3E81C(319, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_269E50B9C();
      if (v3 <= 0x3F)
      {
        sub_269E50F0C();
        if (v4 <= 0x3F)
        {
          sub_269E3E880(319, &qword_281573CD8, &type metadata for SleepDaySummaryResults, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_269E3E81C(319, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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

void sub_269E3E81C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E3E880(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for SleepWidgetViewModel.ScheduleOccurrence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepWidgetViewModel.ScheduleOccurrence(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_269E3EA24(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_269E3EA38(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_269E3EA68()
{
  v0 = sub_269E5101C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v4 = sub_269E5100C();
  v5 = sub_269E51ECC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_269E47920(0xD000000000000029, 0x8000000269E55BE0, &v10);
    _os_log_impl(&dword_269DE5000, v4, v5, "[%{public}s] Returning placeholder for sleep launcher widget...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D654490](v7, -1, -1);
    MEMORY[0x26D654490](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_269E50B7C();
}

uint64_t sub_269E3EC0C(uint64_t a1, uint64_t (*a2)(uint64_t))
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
    *(v10 + 4) = sub_269E47920(0xD000000000000029, 0x8000000269E55BE0, &v14);
    _os_log_impl(&dword_269DE5000, v8, v9, "[%{public}s] Returning snapshot for sleep launcher widget", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D654490](v11, -1, -1);
    MEMORY[0x26D654490](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

uint64_t sub_269E3EDC8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v21 = a1;
  v3 = sub_269E51BCC();
  MEMORY[0x28223BE20](v3 - 8);
  sub_269E3FBD4(0);
  v22 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269E5101C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v12 = sub_269E5100C();
  v13 = sub_269E51ECC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_269E47920(0xD000000000000029, 0x8000000269E55BE0, &v25);
    _os_log_impl(&dword_269DE5000, v12, v13, "[%{public}s] Returning timeline for sleep launcher widget", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D654490](v15, -1, -1);
    MEMORY[0x26D654490](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_269E3FC68(0);
  v16 = *(type metadata accessor for SleepLauncherComplicationEntry(0) - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_269E528D0;
  sub_269E3FCC0(v21, v18 + v17);
  sub_269E51BBC();
  sub_269E3F8B8(&qword_28035F258, type metadata accessor for SleepLauncherComplicationEntry, &unk_269E55C98);
  sub_269E51C2C();
  v24(v7);
  return (*(v5 + 8))(v7, v22);
}

uint64_t sub_269E3F1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_269DF73E0;

  return MEMORY[0x282136278](a1, a2, a3);
}

SleepWidgetUI::SleepLauncherComplication __swiftcall SleepLauncherComplication.init()()
{
  v1 = v0;
  v2 = sub_269E51CDC();
  *v1 = v2;
  v1[1] = v3;
  result.kind._object = v3;
  result.kind._countAndFlagsBits = v2;
  return result;
}

uint64_t SleepLauncherComplication.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  sub_269E3F598(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3F648(0);
  v16[0] = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3F5F4();
  sub_269E3F7A8();

  sub_269E51B8C();
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v17 = sub_269E50A7C();
  v18 = v10;
  v11 = sub_269E3F8B8(&qword_28035F248, sub_269E3F598, MEMORY[0x277CE3D88]);
  v12 = sub_269DF0E28();
  v13 = MEMORY[0x277D837D0];
  sub_269E5138C();

  (*(v3 + 8))(v5, v2);
  sub_269E182D4();
  v17 = v2;
  v18 = v13;
  v19 = v11;
  v20 = v12;
  swift_getOpaqueTypeConformance2();
  v14 = v16[0];
  sub_269E5136C();

  return (*(v7 + 8))(v9, v14);
}

void sub_269E3F598(uint64_t a1)
{
  if (!qword_28035F230)
  {
    sub_269E3F5F4();
    v1 = sub_269E51B9C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F230);
    }
  }
}

unint64_t sub_269E3F5F4()
{
  result = qword_28035F238;
  if (!qword_28035F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F238);
  }

  return result;
}

void sub_269E3F648(uint64_t a1)
{
  if (!qword_28035F240)
  {
    sub_269E3F598(255);
    sub_269E3F8B8(&qword_28035F248, sub_269E3F598, MEMORY[0x277CE3D88]);
    sub_269DF0E28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F240);
    }
  }
}

uint64_t sub_269E3F718()
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

unint64_t sub_269E3F7A8()
{
  result = qword_28035F250;
  if (!qword_28035F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F250);
  }

  return result;
}

uint64_t sub_269E3F7FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269E51CDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_269E3F8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SleepLauncherComplicationEntry(uint64_t a1)
{
  result = qword_28035F270;
  if (!qword_28035F270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E3F94C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(void, void, void), ...)
{
  v9 = type metadata accessor for SleepLauncherComplicationEntry(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269E5101C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v16 = sub_269E5100C();
  v17 = sub_269E51ECC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = a2;
    v29 = v20;
    v21 = a3;
    v22 = a5;
    v23 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_269E47920(0xD000000000000029, 0x8000000269E55BE0, &v29);
    _os_log_impl(&dword_269DE5000, v16, v17, v27, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v24 = v23;
    a5 = v22;
    a3 = v21;
    a2 = v28;
    MEMORY[0x26D654490](v24, -1, -1);
    MEMORY[0x26D654490](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  sub_269E50B7C();
  a5(v11, a2, a3);
  return sub_269E3FB78(v11);
}

uint64_t sub_269E3FB78(uint64_t a1)
{
  v2 = type metadata accessor for SleepLauncherComplicationEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269E3FBD4(uint64_t a1)
{
  if (!qword_28035F260)
  {
    type metadata accessor for SleepLauncherComplicationEntry(255);
    sub_269E3F8B8(&qword_28035F258, type metadata accessor for SleepLauncherComplicationEntry, &unk_269E55C98);
    v1 = sub_269E51C3C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F260);
    }
  }
}

void sub_269E3FC68(uint64_t a1)
{
  if (!qword_28035F268)
  {
    type metadata accessor for SleepLauncherComplicationEntry(255);
    v1 = sub_269E521AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F268);
    }
  }
}

uint64_t sub_269E3FCC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepLauncherComplicationEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E3FD4C(uint64_t a1)
{
  result = sub_269E50B9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 SleepStageInAppWidgetView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t SleepStageInAppWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v2 = sub_269E5144C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFE53C(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E401B8(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E40370(0);
  v27 = *(v14 - 8);
  v28 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 16);
  v33[0] = *v1;
  v33[1] = v17;
  v34 = *(v1 + 32);
  *v13 = sub_269E5134C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_269E40924(0);
  sub_269E404BC(v33, &v13[*(v18 + 44)]);
  v19 = *MEMORY[0x277CDFA10];
  v20 = sub_269E510EC();
  (*(*(v20 - 8) + 104))(v9, v19, v20);
  sub_269E40474(&qword_281572560, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_269E51C9C();
  if (result)
  {
    v22 = sub_269E40474(&qword_28035F2B0, sub_269E401B8, MEMORY[0x277CE1198]);
    v23 = sub_269E40474(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    v26[0] = v2;
    v24 = v23;
    sub_269E5179C();
    sub_269E41548(v9, sub_269DFE53C);
    sub_269E41548(v13, sub_269E401B8);
    sub_269E5143C();
    v29 = v11;
    v30 = v7;
    v31 = v22;
    v32 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v28;
    sub_269E517DC();
    (*(v3 + 8))(v5, v26[0]);
    return (*(v27 + 8))(v16, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269E401B8(uint64_t a1)
{
  if (!qword_28035F280)
  {
    sub_269E414AC(255, &qword_28035F288, sub_269E4026C, MEMORY[0x277CE14B8]);
    sub_269E4030C(&qword_28035F2A0, &qword_28035F288, sub_269E4026C);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F280);
    }
  }
}

void sub_269E4026C(uint64_t a1)
{
  if (!qword_28035F290)
  {
    sub_269E41204(255, &qword_28035F298, type metadata accessor for SleepStageResultsView, MEMORY[0x277CDE470]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28035F290);
    }
  }
}

uint64_t sub_269E4030C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_269E414AC(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269E40370(uint64_t a1)
{
  if (!qword_28035F2A8)
  {
    sub_269E401B8(255);
    sub_269DFE53C(255);
    sub_269E40474(&qword_28035F2B0, sub_269E401B8, MEMORY[0x277CE1198]);
    sub_269E40474(&qword_281571BF8, sub_269DFE53C, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F2A8);
    }
  }
}

uint64_t sub_269E40474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269E404BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for SleepStageResultsView(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E41204(0, &qword_28035F298, type metadata accessor for SleepStageResultsView, MEMORY[0x277CDE470]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - v9;
  sub_269E51E1C();
  v33 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 24);
  v31 = *(a1 + 16);
  v12 = v31;
  v14 = *(a1 + 32);
  *v5 = swift_getKeyPath();
  v15 = MEMORY[0x277CDF458];
  sub_269E414AC(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v16 = *(v3 + 20);
  *(v5 + v16) = swift_getKeyPath();
  sub_269E414AC(0, &qword_281572610, MEMORY[0x277CE3AF8], v15);
  swift_storeEnumTagMultiPayload();
  v17 = v5 + *(v3 + 24);
  *v17 = v10;
  *(v17 + 1) = v11;
  *(v17 + 2) = v12;
  *(v17 + 3) = v13;
  LOBYTE(v16) = v14;
  v17[32] = v14;
  sub_269E41510(a1, v37);
  sub_269E41510(a1, v37);
  sub_269E41510(a1, v37);
  sub_269E40474(&qword_2815736A8, type metadata accessor for SleepStageResultsView, &unk_269E55748);
  v18 = v35;
  sub_269E5177C();
  sub_269E41548(v5, type metadata accessor for SleepStageResultsView);
  v37[3] = &type metadata for SleepStageWidgetViewModel;
  v37[4] = &protocol witness table for SleepStageWidgetViewModel;
  v19 = swift_allocObject();
  v37[0] = v19;
  v20 = v10;
  *(v19 + 16) = v10;
  *(v19 + 24) = v11;
  v21 = v11;
  v22 = v31;
  *(v19 + 32) = v31;
  *(v19 + 40) = v13;
  v23 = v13;
  *(v19 + 48) = v16;
  LOBYTE(v13) = v16;
  v37[5] = sub_269E5180C();
  v24 = MEMORY[0x277CDE470];
  v25 = v34;
  sub_269E415A8(v18, v34, &qword_28035F298, type metadata accessor for SleepStageResultsView, MEMORY[0x277CDE470]);
  sub_269E41618(v37, v36);
  v26 = v32;
  *v32 = v20;
  v26[1] = v21;
  v26[2] = v22;
  v26[3] = v23;
  *(v26 + 32) = v13;
  sub_269E4026C(0);
  v28 = v27;
  sub_269E415A8(v25, v26 + *(v27 + 48), &qword_28035F298, type metadata accessor for SleepStageResultsView, v24);
  sub_269E41618(v36, v26 + *(v28 + 64));
  sub_269DF6E4C(v20, v21, v22, v23);
  sub_269E41674(v37);
  sub_269E41360(v35, &qword_28035F298, type metadata accessor for SleepStageResultsView, v24, sub_269E41204);
  sub_269E41674(v36);
  sub_269E41360(v25, &qword_28035F298, type metadata accessor for SleepStageResultsView, v24, sub_269E41204);
  sub_269DF6EA0(v20, v21, v22, v23);
}

void sub_269E40924(uint64_t a1)
{
  if (!qword_28035F2B8)
  {
    sub_269E414AC(255, &qword_28035F288, sub_269E4026C, MEMORY[0x277CE14B8]);
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F2B8);
    }
  }
}

uint64_t sub_269E409D8@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  sub_269E41204(0, &qword_28035F2D8, sub_269E41278, sub_269E41308);
  v45 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v48 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v46 = &v42[-v4];
  sub_269E414AC(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42[-v6];
  v8 = sub_269E5166C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E51E1C();
  v44 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v49 = sub_269E50A7C();
  v50 = v12;
  sub_269DF0E28();
  v13 = sub_269E516CC();
  v15 = v14;
  v17 = v16;
  (*(v9 + 104))(v11, *MEMORY[0x277CE0A68], v8);
  v18 = sub_269E5159C();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_269E515CC();
  sub_269E515EC();
  sub_269E41360(v7, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88], sub_269E414AC);
  (*(v9 + 8))(v11, v8);
  v19 = sub_269E516AC();
  v21 = v20;
  v23 = v22;

  sub_269E00F48(v13, v15, v17 & 1);

  v49 = sub_269E5180C();
  v24 = sub_269E5169C();
  v26 = v25;
  v43 = v27;
  v29 = v28;
  sub_269E00F48(v19, v21, v23 & 1);

  v30 = sub_269E518BC();
  sub_269E41278(0);
  v32 = v46;
  v33 = (v46 + *(v31 + 36));
  sub_269E414AC(0, &qword_281572090, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v35 = *(v34 + 28);
  v36 = *MEMORY[0x277CE1050];
  v37 = sub_269E518DC();
  (*(*(v37 - 8) + 104))(v33 + v35, v36, v37);
  *v33 = swift_getKeyPath();
  *v32 = v30;
  *(v32 + *(v45 + 36)) = sub_269E5181C();
  v38 = v48;
  sub_269E415A8(v32, v48, &qword_28035F2D8, sub_269E41278, sub_269E41308);
  v39 = v47;
  *v47 = v24;
  v39[1] = v26;
  LOBYTE(v35) = v43 & 1;
  *(v39 + 16) = v43 & 1;
  v39[3] = v29;
  v39[4] = 0;
  *(v39 + 40) = 1;
  sub_269E41164(0);
  sub_269E415A8(v38, v39 + *(v40 + 64), &qword_28035F2D8, sub_269E41278, sub_269E41308);
  sub_269E00F58(v24, v26, v35);

  sub_269E41360(v32, &qword_28035F2D8, sub_269E41278, sub_269E41308, sub_269E41204);
  sub_269E41360(v38, &qword_28035F2D8, sub_269E41278, sub_269E41308, sub_269E41204);
  sub_269E00F48(v24, v26, v35);
}

uint64_t sub_269E4102C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_269E5130C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_269E410CC(0);
  return sub_269E409D8((a2 + *(v3 + 44)));
}

void sub_269E410CC(uint64_t a1)
{
  if (!qword_28035F2C0)
  {
    sub_269E414AC(255, &qword_28035F2C8, sub_269E41164, MEMORY[0x277CE14B8]);
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F2C0);
    }
  }
}

void sub_269E41164(uint64_t a1)
{
  if (!qword_28035F2D0)
  {
    sub_269E41204(255, &qword_28035F2D8, sub_269E41278, sub_269E41308);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28035F2D0);
    }
  }
}

void sub_269E41204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_269E510FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269E41278(uint64_t a1)
{
  if (!qword_281572480)
  {
    sub_269E414AC(255, &qword_281572090, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572480);
    }
  }
}

void sub_269E41308()
{
  if (!qword_2815720D0)
  {
    v0 = sub_269E5141C();
    if (!v1)
    {
      atomic_store(v0, &qword_2815720D0);
    }
  }
}

uint64_t sub_269E41360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_269E413E4(uint64_t a1)
{
  v2 = sub_269E518DC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269E5115C();
}

void sub_269E414AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E41548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E415A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_269E41204(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_269E416C8(uint64_t a1)
{
  if (!qword_28035F2E8)
  {
    sub_269E414AC(255, &qword_28035F2C8, sub_269E41164, MEMORY[0x277CE14B8]);
    sub_269E4030C(&qword_28035F2F0, &qword_28035F2C8, sub_269E41164);
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F2E8);
    }
  }
}

uint64_t type metadata accessor for UpcomingSleepWidgetCircularView(uint64_t a1)
{
  result = qword_281573858;
  if (!qword_281573858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E417F8(uint64_t a1)
{
  result = sub_269E41CC0(&qword_28035F0D0, type metadata accessor for UpcomingSleepWidgetCircularView, &unk_269E55EDC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E4186C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = sub_269E50FBC();
  v3 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3216C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269E50B9C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E3CA50(v8);
  v13 = *(v10 + 48);
  if (v13(v8, 1, v9) == 1)
  {
    v14 = type metadata accessor for SleepWidgetViewModel(0);
    (*(v10 + 16))(v12, a1 + *(v14 + 32), v9);
    if (v13(v8, 1, v9) != 1)
    {
      sub_269DFEA3C(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  sub_269E50FAC();
  sub_269E50F6C();
  (*(v3 + 8))(v5, v16[0]);
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  sub_269E51A2C();
}

uint64_t sub_269E41B84@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_269E519BC();
  a2[1] = v4;
  sub_269E41BC4(0);
  return sub_269E4186C(v2, a2 + *(v5 + 44));
}

void sub_269E41BC4(uint64_t a1)
{
  if (!qword_28035F2F8)
  {
    sub_269E51A3C();
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F2F8);
    }
  }
}

void sub_269E41C2C(uint64_t a1)
{
  if (!qword_28035F308)
  {
    sub_269E51A3C();
    sub_269E41CC0(&qword_28035F310, MEMORY[0x277D126E8], MEMORY[0x277D126E0]);
    v1 = sub_269E5195C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F308);
    }
  }
}

uint64_t sub_269E41CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SleepScoreWidgetCircularView(uint64_t a1)
{
  result = qword_28035F318;
  if (!qword_28035F318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E41D7C(uint64_t a1)
{
  result = type metadata accessor for SleepScoreWidgetViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269E41E28(uint64_t a1)
{
  v2 = sub_269E50EDC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269E5113C();
}

uint64_t sub_269E41EF0()
{
  v0 = MEMORY[0x277D83D88];
  sub_269E4221C(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_269E50E6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4221C(0, &qword_28035EE48, MEMORY[0x277D626B8], v0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  sub_269E20324(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1DA9C(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277D62708], v4);
  sub_269E50E7C();
  KeyPath = swift_getKeyPath();
  v16 = &v14[*(v12 + 36)];
  sub_269E4221C(0, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
  sub_269E50EBC();
  *v16 = KeyPath;
  v17 = HKSPSleepURL();
  if (v17)
  {
    v18 = v17;
    sub_269E50AFC();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_269E50B0C();
  (*(*(v20 - 8) + 56))(v3, v19, 1, v20);
  sub_269E2E6C0();
  sub_269E5173C();
  sub_269DF0A3C(v3);
  return sub_269E42280(v14);
}

void sub_269E4221C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E42280(uint64_t a1)
{
  sub_269E20324(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.sleepWidgetFamily.getter()
{
  sub_269E0ABD8();

  return sub_269E512DC();
}

uint64_t EnvironmentValues.sleepWidgetFamily.setter(uint64_t a1)
{
  v2 = sub_269E51B0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_269E0ABD8();
  sub_269E512EC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_269E42424()
{
  v0 = sub_269E51B0C();
  __swift_allocate_value_buffer(v0, qword_281572970);
  v1 = __swift_project_value_buffer(v0, qword_281572970);
  v2 = *MEMORY[0x277CE3B80];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_269E424AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_281572968 != -1)
  {
    swift_once();
  }

  v2 = sub_269E51B0C();
  v3 = __swift_project_value_buffer(v2, qword_281572970);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269E42554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_269E42B1C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void sub_269E425B8()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isAppleWatch];

    byte_28035F328 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269E4261C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_281572778 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_28035F328;
  return result;
}

void (*EnvironmentValues.sleepWidgetFamily.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = sub_269E51B0C();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_269E0ABD8();
  sub_269E512DC();
  return sub_269E427C8;
}

void sub_269E427C8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_269E512EC();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    sub_269E512EC();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t EnvironmentValues.isAppleWatch.getter()
{
  sub_269E42930();
  sub_269E512DC();
  return v1;
}

unint64_t sub_269E42930()
{
  result = qword_281572770;
  if (!qword_281572770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572770);
  }

  return result;
}

uint64_t sub_269E42984@<X0>(_BYTE *a1@<X8>)
{
  sub_269E42930();
  result = sub_269E512DC();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.isAppleWatch.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_269E42930();
  sub_269E512DC();
  *(a1 + 16) = *(a1 + 17);
  return sub_269E42AC4;
}

unint64_t sub_269E42B1C()
{
  result = qword_281571E18;
  if (!qword_281571E18)
  {
    sub_269E51B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571E18);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t SleepWidgetViewModelProvider.init(healthStore:sleepStore:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SleepWidgetViewModelProvider.currentSleepStageWidgetViewModel(showLiveContent:completion:)(int a1, void (*a2)(void, void), void (**a3)(char *, uint64_t))
{
  v22 = a1;
  v6 = sub_269E5101C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v10 = v3[1];
  sub_269E50FFC();
  v12 = sub_269E5100C();
  v13 = sub_269E51ECC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = a2;
    v16 = v15;
    v23[0] = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v23);
    *(v14 + 12) = 1024;
    *(v14 + 14) = v22 & 1;
    _os_log_impl(&dword_269DE5000, v12, v13, "[%{public}s] getting sleep stage widget view model (live: %{BOOL}d)...", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v17 = v16;
    a2 = v21;
    MEMORY[0x26D654490](v17, -1, -1);
    MEMORY[0x26D654490](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v23[0] = v11;
  v23[1] = v10;
  v18 = v11;
  v19 = v10;

  sub_269E47EB0(v22 & 1, 1, 4, v23, v18, v19, 3, a2, a3);
}

void SleepWidgetViewModelProvider.currentSleepWidgetViewModel(showLiveContent:completion:)(int a1, void (*a2)(_BYTE *, id), uint64_t a3)
{
  v33 = a1;
  v6 = sub_269E50B9C();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3[1];
  v31 = *v3;
  v32 = v13;
  sub_269E50FFC();
  v14 = sub_269E5100C();
  v15 = sub_269E51ECC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v6;
    v18 = a2;
    v19 = a3;
    v20 = v17;
    aBlock = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v33 & 1;
    _os_log_impl(&dword_269DE5000, v14, v15, "[%{public}s] getting sleep widget view model (live: %{BOOL}d)...", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    a3 = v19;
    a2 = v18;
    v6 = v29;
    MEMORY[0x26D654490](v21, -1, -1);
    MEMORY[0x26D654490](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (v33)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;
    v24 = v31;
    v23 = v32;
    *(v22 + 32) = v31;
    *(v22 + 40) = v23;
    *(v22 + 48) = 1;
    v38 = sub_269E48874;
    v39 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_269E43BD4;
    v37 = &block_descriptor;
    v25 = _Block_copy(&aBlock);

    v26 = v24;
    v27 = v23;

    [v27 sleepWidgetStateWithCompletion_];
    _Block_release(v25);
  }

  else
  {
    aBlock = v31;
    v35 = v32;
    sub_269E50B8C();
    SleepWidgetViewModelProvider.sleepWidgetViewModel(showLiveContent:state:date:completion:)(0, 6, v8, a2, a3);
    (*(v30 + 8))(v8, v6);
  }
}

uint64_t SleepWidgetViewModelProvider.sleepScoreWidgetViewModel(showLiveContent:algorithmVersion:completion:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_269E50CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = *v4;
  v13 = *(v4 + 8);
  result = sub_269E50CEC();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = v12;
    v26 = v13;
    v15 = *(v10 + 16);
    v24 = (result + 1);
    v15(&v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v9);
    v16 = *(v10 + 80);
    v23 = a1;
    v17 = (v16 + 32) & ~v16;
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;
    (*(v10 + 32))(v18 + v17, &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
    v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v19 = a3;
    v19[1] = a4;
    v20 = v12;
    v21 = v13;

    sub_269E45B8C(v23 & 1, v24, 132, sub_269E39988, v18);
  }

  return result;
}

uint64_t sub_269E43368(void *a1, uint64_t a2, void *a3, void (*a4)(char *, id), uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v83 = a8;
  v81 = a6;
  v82 = a7;
  v91 = a4;
  v88 = a1;
  v84 = type metadata accessor for SleepWidgetViewModel(0);
  v10 = MEMORY[0x28223BE20](v84);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v78 - v13;
  v15 = sub_269E50B9C();
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x28223BE20](v15);
  v80 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_269E5101C();
  v17 = *(v94 - 8);
  v18 = MEMORY[0x28223BE20](v94);
  v86 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v78 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v78 - v22;
  sub_269E50FFC();
  v24 = sub_269E5100C();
  v25 = sub_269E51ECC();
  v26 = os_log_type_enabled(v24, v25);
  v92 = v17;
  v85 = v12;
  if (!v26)
  {

    v39 = *(v17 + 8);
    v39(v23, v94);
    v40 = v93;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v95[0] = v81;
    v95[1] = v82;
    v53 = v80;
    sub_269E50B8C();
    SleepWidgetViewModelProvider.sleepWidgetViewModel(showLiveContent:state:date:completion:)(v83 & 1, v88, v53, v91, a5);
    return (*(v89 + 8))(v53, v90);
  }

  v27 = swift_slowAlloc();
  v87 = a5;
  v28 = v27;
  v78 = swift_slowAlloc();
  v95[0] = v78;
  *v28 = 136446466;
  *(v28 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v95);
  *(v28 + 12) = 2080;
  v29 = NSStringFromHKSPSleepWidgetState();
  v30 = a3;
  v31 = sub_269E51CDC();
  v33 = v32;

  v34 = sub_269E47920(v31, v33, v95);

  *(v28 + 14) = v34;
  a3 = v30;
  v35 = v94;
  v36 = v92;
  _os_log_impl(&dword_269DE5000, v24, v25, "[%{public}s] sleep widget state: %s", v28, 0x16u);
  v37 = v78;
  swift_arrayDestroy();
  MEMORY[0x26D654490](v37, -1, -1);
  v38 = v28;
  a5 = v87;
  MEMORY[0x26D654490](v38, -1, -1);

  v39 = *(v36 + 8);
  v39(v23, v35);
  v40 = v93;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v41 = a3;
  sub_269E50FFC();
  v42 = a3;
  v43 = sub_269E5100C();
  v44 = sub_269E51EAC();

  v45 = os_log_type_enabled(v43, v44);
  v79 = a3;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v87 = a5;
    v47 = v46;
    v48 = swift_slowAlloc();
    v95[0] = v48;
    *v47 = 136446466;
    *(v47 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v95);
    *(v47 + 12) = 2082;
    swift_getErrorValue();
    v49 = sub_269E521FC();
    v51 = sub_269E47920(v49, v50, v95);

    *(v47 + 14) = v51;
    _os_log_impl(&dword_269DE5000, v43, v44, "[%{public}s] Error getting sleepWidgetState: %{public}s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v48, -1, -1);
    MEMORY[0x26D654490](v47, -1, -1);

    v52 = v93;
  }

  else
  {

    v52 = v40;
  }

  v39(v52, v94);
  v55 = v84;
  v56 = *(v84 + 20);
  v57 = sub_269E50A0C();
  v58 = *(*(v57 - 8) + 56);
  v58(&v14[v56], 1, 1, v57);
  v58(&v14[v55[6]], 1, 1, v57);
  sub_269E50B8C();
  v59 = v55[9];
  *&v14[v59] = [objc_allocWithZone(sub_269E50F0C()) init];
  v60 = v90;
  v61 = *(v89 + 56);
  v61(&v14[v55[11]], 1, 1, v90);
  v61(&v14[v55[12]], 1, 1, v60);
  v61(&v14[v55[13]], 1, 1, v60);
  *v14 = 0;
  v14[8] = 1;
  v14[v55[7]] = 0;
  v62 = &v14[v55[10]];
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v63 = v86;
  sub_269E50FFC();
  v64 = v85;
  sub_269E48954(v14, v85);
  v65 = sub_269E5100C();
  v66 = sub_269E51ECC();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = v63;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v95[0] = v69;
    *v68 = 136446466;
    *(v68 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v95);
    *(v68 + 12) = 2080;
    v70 = SleepWidgetViewModel.description.getter();
    v71 = v64;
    v73 = v72;
    sub_269E48C98(v71, type metadata accessor for SleepWidgetViewModel);
    v74 = sub_269E47920(v70, v73, v95);

    *(v68 + 14) = v74;
    _os_log_impl(&dword_269DE5000, v65, v66, "[%{public}s] viewmodel=%s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v69, -1, -1);
    MEMORY[0x26D654490](v68, -1, -1);

    v75 = v67;
  }

  else
  {

    sub_269E48C98(v64, type metadata accessor for SleepWidgetViewModel);
    v75 = v63;
  }

  v39(v75, v94);
  v76 = v79;
  v77 = v79;
  v91(v14, v76);

  return sub_269E48C98(v14, type metadata accessor for SleepWidgetViewModel);
}

void sub_269E43BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

void SleepWidgetViewModelProvider.sleepWidgetViewModel(showLiveContent:state:date:completion:)(int a1, void *a2, void (*a3)(void, void, void), void (*a4)(_BYTE *, id), uint64_t a5)
{
  v132 = a4;
  v128 = a3;
  v129 = a2;
  v135[2] = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for SleepWidgetViewModel(0);
  v9 = MEMORY[0x28223BE20](v8);
  v126 = &v114[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v114[-v11];
  v133 = sub_269E50B9C();
  v13 = *(v133 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v133);
  v127 = &v114[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v122 = &v114[-v16];
  v17 = sub_269E5101C();
  v131 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v114[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v123 = &v114[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v114[-v25];
  v28 = *v5;
  v27 = *(v5 + 8);
  LODWORD(v130) = a1;
  if ((a1 & 1) == 0)
  {
    v125 = v14;
    v126 = 0;
    v124 = 0;
    v64 = *(v13 + 16);
    v43 = v133;
    v65 = v13;
    v44 = v128;
LABEL_12:
    v135[0] = v28;
    v135[1] = v27;
    v83 = v127;
    v84 = v27;
    v85 = v28;
    v64(v127, v44, v43);
    v86 = (*(v65 + 80) + 48) & ~*(v65 + 80);
    v87 = (v125 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    *(v88 + 2) = v85;
    *(v88 + 3) = v84;
    v89 = v126;
    v90 = v129;
    *(v88 + 4) = v126;
    *(v88 + 5) = v90;
    (*(v65 + 32))(&v88[v86], v83, v43);
    v91 = &v88[v87];
    *v91 = v132;
    *(v91 + 1) = a5;
    v92 = v85;
    v93 = v84;

    sub_269E45B8C(v130 & 1, 7, 0, sub_269E4889C, v88);

    return;
  }

  v124 = v24;
  v117 = v28;
  v120 = v13;
  v121 = a5;
  v135[0] = 0;
  v118 = v27;
  v29 = [v27 sleepScheduleModelWithError_];
  v30 = v135[0];
  if (v29)
  {
    v31 = v29;
    v32 = v29;
    v33 = v30;
    sub_269E50FFC();
    v34 = sub_269E5100C();
    v35 = sub_269E51ECC();

    v36 = os_log_type_enabled(v34, v35);
    v119 = v17;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v135[0] = v38;
      *v37 = 136446466;
      *(v37 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v135);
      *(v37 + 12) = 2082;
      v134 = v31;
      sub_269E489B8(0, &qword_281571CC8, &qword_281571CD0, 0x277D62500);
      v39 = v32;
      v40 = sub_269E51D0C();
      v42 = sub_269E47920(v40, v41, v135);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_269DE5000, v34, v35, "[%{public}s] fetched schedule model: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v38, -1, -1);
      MEMORY[0x26D654490](v37, -1, -1);
    }

    v116 = *(v131 + 8);
    v116(v26, v17);
    v43 = v133;
    v44 = v128;
    v45 = sub_269E50B5C();
    v46 = [v32 upcomingResolvedOccurrenceAfterDate_];
    v124 = v32;

    v126 = v46;
    v47 = v46;
    v48 = v123;
    sub_269E50FFC();
    v49 = v120;
    v50 = v122;
    v128 = *(v120 + 16);
    v128(v122, v44, v43);
    v51 = sub_269E5100C();
    v52 = sub_269E51ECC();

    v53 = os_log_type_enabled(v51, v52);
    v125 = v14;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v135[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v135);
      *(v54 + 12) = 2080;
      v115 = v52;
      v56 = sub_269E50B1C();
      v58 = v57;
      (*(v49 + 8))(v50, v133);
      v59 = sub_269E47920(v56, v58, v135);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2082;
      v134 = v126;
      sub_269E489B8(0, &qword_281571CB8, &qword_281571CC0, 0x277D624C0);
      v60 = sub_269E51F8C();
      v62 = sub_269E47920(v60, v61, v135);

      *(v54 + 24) = v62;
      _os_log_impl(&dword_269DE5000, v51, v115, "[%{public}s] upcomingResolvedOccurrence after %s is: %{public}s", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v55, -1, -1);
      v63 = v54;
      v43 = v133;
      MEMORY[0x26D654490](v63, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v50, v43);
    }

    v116(v48, v119);
    a5 = v121;
    v65 = v49;
    v27 = v118;
    v28 = v117;
    v64 = v128;
    goto LABEL_12;
  }

  v66 = v135[0];
  v67 = sub_269E50AEC();

  swift_willThrow();
  sub_269E50FFC();
  v68 = v67;
  v69 = sub_269E5100C();
  v70 = sub_269E51EAC();

  v71 = os_log_type_enabled(v69, v70);
  v130 = v67;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v135[0] = v129;
    *v72 = 136446466;
    *(v72 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v135);
    *(v72 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v119 = v17;
    MEMORY[0x28223BE20](ErrorValue);
    (*(v75 + 16))(&v114[-((v74 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v76 = sub_269E51D0C();
    v78 = sub_269E47920(v76, v77, v135);

    *(v72 + 14) = v78;
    _os_log_impl(&dword_269DE5000, v69, v70, "[%{public}s] error getting schedule model: %{public}s", v72, 0x16u);
    v79 = v129;
    swift_arrayDestroy();
    MEMORY[0x26D654490](v79, -1, -1);
    MEMORY[0x26D654490](v72, -1, -1);

    v80 = *(v131 + 8);
    v81 = v21;
    v82 = v119;
  }

  else
  {

    v80 = *(v131 + 8);
    v81 = v21;
    v82 = v17;
  }

  (v80)(v81);
  v94 = v8[5];
  v95 = sub_269E50A0C();
  v96 = *(*(v95 - 8) + 56);
  v96(&v12[v94], 1, 1, v95);
  v96(&v12[v8[6]], 1, 1, v95);
  sub_269E50B8C();
  v97 = v8[9];
  *&v12[v97] = [objc_allocWithZone(sub_269E50F0C()) init];
  v98 = *(v120 + 56);
  v99 = v133;
  v98(&v12[v8[11]], 1, 1, v133);
  v98(&v12[v8[12]], 1, 1, v99);
  v98(&v12[v8[13]], 1, 1, v99);
  *v12 = 0;
  v12[8] = 1;
  v12[v8[7]] = 0;
  v100 = &v12[v8[10]];
  *v100 = 0u;
  v100[1] = 0u;
  v101 = v124;
  sub_269E50FFC();
  v102 = v126;
  sub_269E48954(v12, v126);
  v103 = sub_269E5100C();
  v104 = sub_269E51ECC();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v135[0] = v106;
    *v105 = 136446466;
    *(v105 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v135);
    *(v105 + 12) = 2080;
    v107 = SleepWidgetViewModel.description.getter();
    v108 = v102;
    v110 = v109;
    sub_269E48C98(v108, type metadata accessor for SleepWidgetViewModel);
    v111 = sub_269E47920(v107, v110, v135);

    *(v105 + 14) = v111;
    _os_log_impl(&dword_269DE5000, v103, v104, "[%{public}s] viewmodel=%s", v105, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v106, -1, -1);
    MEMORY[0x26D654490](v105, -1, -1);
  }

  else
  {

    sub_269E48C98(v102, type metadata accessor for SleepWidgetViewModel);
  }

  v80(v101, v82);
  v112 = v130;
  v113 = v130;
  v132(v12, v112);

  sub_269E48C98(v12, type metadata accessor for SleepWidgetViewModel);
}

uint64_t sub_269E44974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, void *a7, void (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v104 = a8;
  v105 = a7;
  v93 = a6;
  v110 = a4;
  v103 = a2;
  v12 = sub_269E5101C();
  v101 = *(v12 - 8);
  v102 = v12;
  MEMORY[0x28223BE20](v12);
  v100 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_269E48AA4(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v98 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v96 = &v89 - v19;
  MEMORY[0x28223BE20](v18);
  v94 = &v89 - v20;
  sub_269E48AA4(0, &qword_281573CB0, MEMORY[0x277CC8990], v14);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v108 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v107 = &v89 - v24;
  v25 = sub_269E50B9C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SleepWidgetViewModel(0);
  v30 = MEMORY[0x28223BE20](v29);
  v97 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v89 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v111 = &v89 - v36;
  MEMORY[0x28223BE20](v35);
  v99 = &v89 - v37;
  v38 = *(a1 + 8);
  v40 = *(a1 + 16);
  v39 = *(a1 + 24);
  v41 = *a1;
  v112[4] = a3;
  v112[5] = v110;
  v112[0] = v41;
  v112[1] = v38;
  v112[2] = v40;
  v112[3] = v39;
  v106 = v39;
  sub_269E45420(v112);
  v109 = v28;
  v110 = v26;
  v90 = *(v26 + 16);
  v90(v28, v105, v25);
  v105 = a5;
  v92 = v38;
  v91 = v40;
  if (a5)
  {
    sub_269DF6E4C(v41, v38, v40, v106);
    v42 = [a5 occurrence];
    v43 = [v42 bedtimeComponents];

    v44 = v107;
    sub_269E509FC();

    v45 = sub_269E50A0C();
    v46 = *(*(v45 - 8) + 56);
    v46(v44, 0, 1, v45);
    v47 = [v105 occurrence];
    v48 = [v47 wakeUpComponents];

    v49 = v108;
    sub_269E509FC();

    v46(v49, 0, 1, v45);
    a5 = v105;
  }

  else
  {
    v50 = sub_269E50A0C();
    v51 = *(*(v50 - 8) + 56);
    v95 = v25;
    v51(v107, 1, 1, v50);
    sub_269DF6E4C(v41, v38, v40, v106);
    v51(v108, 1, 1, v50);
    v25 = v95;
  }

  v95 = a9;
  v52 = a5;
  sub_269E3BD48(a5, v112);
  v53 = v112[0];
  v90(&v34[v29[8]], v109, v25);
  v54 = v29[9];
  *&v34[v54] = [objc_allocWithZone(sub_269E50F0C()) init];
  v55 = *(v110 + 56);
  v55(&v34[v29[11]], 1, 1, v25);
  v55(&v34[v29[12]], 1, 1, v25);
  v55(&v34[v29[13]], 1, 1, v25);
  *v34 = v93;
  v34[8] = 0;
  sub_269E48B08(v107, &v34[v29[5]]);
  sub_269E48B08(v108, &v34[v29[6]]);
  v34[v29[7]] = v53;
  v56 = &v34[v29[10]];
  v57 = v92;
  *v56 = v41;
  *(v56 + 1) = v57;
  v58 = v106;
  *(v56 + 2) = v91;
  *(v56 + 3) = v58;
  v59 = v111;
  sub_269E3E3BC(v34, v111);
  v60 = v100;
  if (a5)
  {
    v61 = [v52 windDownEvent];
    v62 = v97;
    v63 = v94;
    if (v61)
    {
      v64 = v61;
      v65 = [v61 dueDate];

      v59 = v111;
      sub_269E50B6C();

      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v55(v63, v66, 1, v25);
    sub_269E3E420(v63, v59 + v29[11]);
    v69 = [v52 bedtimeEvent];
    v68 = v59;
    if (v69)
    {
      v70 = v69;
      v71 = [v69 dueDate];

      v72 = v96;
      sub_269E50B6C();

      v55(v72, 0, 1, v25);
      sub_269E3E420(v72, v68 + v29[12]);
LABEL_12:
      v75 = [v52 wakeUpEvent];
      v76 = [v75 dueDate];

      v77 = v98;
      sub_269E50B6C();

      v73 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v67 = v94;
    v55(v94, 1, 1, v25);
    sub_269E3E420(v67, v59 + v29[11]);
    v62 = v97;
    v68 = v59;
  }

  v73 = 1;
  v74 = v96;
  v55(v96, 1, 1, v25);
  sub_269E3E420(v74, v68 + v29[12]);
  if (v105)
  {
    goto LABEL_12;
  }

  v77 = v98;
LABEL_14:
  (*(v110 + 8))(v109, v25);
  v55(v77, v73, 1, v25);
  v78 = v111;
  sub_269E3E420(v77, v111 + v29[13]);
  v79 = v99;
  sub_269E3E3BC(v78, v99);
  sub_269E50FFC();
  sub_269E48954(v79, v62);
  v80 = sub_269E5100C();
  v81 = sub_269E51ECC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v112[0] = v83;
    *v82 = 136446466;
    *(v82 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v112);
    *(v82 + 12) = 2080;
    v84 = SleepWidgetViewModel.description.getter();
    v86 = v85;
    sub_269E48C98(v62, type metadata accessor for SleepWidgetViewModel);
    v87 = sub_269E47920(v84, v86, v112);

    *(v82 + 14) = v87;
    _os_log_impl(&dword_269DE5000, v80, v81, "[%{public}s] viewmodel=%s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v83, -1, -1);
    MEMORY[0x26D654490](v82, -1, -1);
  }

  else
  {

    sub_269E48C98(v62, type metadata accessor for SleepWidgetViewModel);
  }

  (*(v101 + 8))(v60, v102);
  v104(v79, v103);
  return sub_269E48C98(v79, type metadata accessor for SleepWidgetViewModel);
}

uint64_t sub_269E45420(unint64_t *a1)
{
  v2 = sub_269E5101C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v14 = &v63 - v13;
  v15 = *a1;
  if (*a1)
  {
    v64 = v11;
    v65 = v12;
    v67 = v10;
    v68 = v2;
    v16 = a1[1];
    v17 = a1[2];
    v18 = a1[3];
    v19 = v18;

    v20 = v16;
    sub_269E50FFC();

    v66 = v20;
    v21 = v19;
    v22 = sub_269E5100C();
    v23 = sub_269E51ECC();
    v24 = os_log_type_enabled(v22, v23);
    v69 = v3;
    if (v24)
    {
      v25 = v17;
      v26 = v18;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v70 = v28;
      *v27 = 136446466;
      *(v27 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v70);
      *(v27 + 12) = 2050;
      if (v15 >> 62)
      {
        v29 = sub_269E5204C();
      }

      else
      {
        v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v27 + 14) = v29;
      sub_269DF6EA0(v15, v16, v25, v18);
      _os_log_impl(&dword_269DE5000, v22, v23, "[%{public}s] found %{public}ld summaries", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D654490](v28, -1, -1);
      MEMORY[0x26D654490](v27, -1, -1);

      v30 = v69;
    }

    else
    {
      v25 = v17;
      v38 = v17;
      v26 = v18;
      sub_269DF6EA0(v15, v16, v38, v18);

      v30 = v3;
    }

    v39 = *(v30 + 8);
    v40 = v68;
    v39(v14, v68);
    v41 = v26;
    v42 = v67;
    if (v16)
    {
      v43 = v66;
      [v66 sleepDuration];
      v45 = v44;
      if (v44 > COERCE_DOUBLE(1))
      {
        v42 = v65;
        sub_269E50FFC();
        v46 = sub_269E5100C();
        v47 = sub_269E51ECC();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v68 = v25;
          v49 = v48;
          v50 = v40;
          v51 = swift_slowAlloc();
          v70 = v51;
          *v49 = 136446466;
          *(v49 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v70);
          *(v49 + 12) = 2050;
          *(v49 + 14) = v45;
          v52 = "[%{public}s] last time asleep: %{public}f";
LABEL_16:
          _os_log_impl(&dword_269DE5000, v46, v47, v52, v49, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x26D654490](v51, -1, -1);
          MEMORY[0x26D654490](v49, -1, -1);

          sub_269DF6EA0(v15, v16, v68, v41);
          return (v39)(v42, v50);
        }

LABEL_19:
        sub_269DF6EA0(v15, v16, v25, v41);

        return (v39)(v42, v40);
      }

      [v43 inBedDuration];
      v54 = v53;
      if (v53 > COERCE_DOUBLE(1))
      {
        v42 = v64;
        sub_269E50FFC();
        v46 = sub_269E5100C();
        v47 = sub_269E51ECC();
        if (os_log_type_enabled(v46, v47))
        {
          v55 = swift_slowAlloc();
          v68 = v25;
          v49 = v55;
          v50 = v40;
          v51 = swift_slowAlloc();
          v70 = v51;
          *v49 = 136446466;
          *(v49 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v70);
          *(v49 + 12) = 2050;
          *(v49 + 14) = v54;
          v52 = "[%{public}s] last time in bed: %{public}f";
          goto LABEL_16;
        }

        goto LABEL_19;
      }
    }

    sub_269E50FFC();
    v46 = sub_269E5100C();
    v56 = sub_269E51ECC();
    if (os_log_type_enabled(v46, v56))
    {
      v57 = swift_slowAlloc();
      v68 = v25;
      v58 = v57;
      v59 = v16;
      v60 = v41;
      v61 = v40;
      v62 = swift_slowAlloc();
      v70 = v62;
      *v58 = 136446210;
      *(v58 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v70);
      _os_log_impl(&dword_269DE5000, v46, v56, "[%{public}s] last day has no sleep data", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x26D654490](v62, -1, -1);
      MEMORY[0x26D654490](v58, -1, -1);

      sub_269DF6EA0(v15, v59, v68, v60);
      return (v39)(v42, v61);
    }

    goto LABEL_19;
  }

  sub_269E50FFC();
  v31 = sub_269E5100C();
  v32 = sub_269E51ECC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v3;
    v34 = v2;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v70 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v70);
    _os_log_impl(&dword_269DE5000, v31, v32, "[%{public}s] no recentSleepDaySummaries", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D654490](v36, -1, -1);
    MEMORY[0x26D654490](v35, -1, -1);

    return (*(v33 + 8))(v6, v34);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_269E45B8C(int a1, char *a2, uint64_t a3, void (*a4)(void **, void), uint64_t a5)
{
  v83 = a5;
  v80 = a4;
  v78 = a3;
  LODWORD(v84) = a1;
  v7 = sub_269E5101C();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v77 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = (&v75 - v11);
  MEMORY[0x28223BE20](v10);
  v13 = (&v75 - v12);
  v14 = sub_269E50B9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269E50BDC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_269E50C8C();
  v81 = *(v22 - 8);
  v82 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v5[1];
  v75 = *v5;
  v76 = v25;
  (*(v19 + 104))(v21, *MEMORY[0x277CC9830], v18);
  sub_269E50BEC();
  v27 = *(v19 + 8);
  v26 = v19 + 8;
  v27(v21, v18);
  sub_269E50B8C();
  v28 = sub_269E50B2C();
  v30 = *(v15 + 8);
  v29 = (v15 + 8);
  v30(v17, v14);
  v31 = v28 - a2;
  if (__OFSUB__(v28, a2))
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = a2;
  a2 = (v31 + 1);
  if (__OFADD__(v31, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v84 & 1) == 0 || (v32 = [objc_opt_self() sharedBehavior]) != 0 && (v33 = v32, v34 = objc_msgSend(v32, sel_hksp_useDemoSleepData), v33, v34))
  {
    v84 = v24;
    v35 = a2;
    sub_269E50FFC();
    v36 = sub_269E5100C();
    v37 = sub_269E51ECC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v93 = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v93);
      *(v38 + 12) = 2082;
      aBlock = v35;
      v88 = v17;
      type metadata accessor for HKDayIndexRange(0);
      v40 = sub_269E51D0C();
      v42 = sub_269E47920(v40, v41, v93);

      *(v38 + 14) = v42;
      _os_log_impl(&dword_269DE5000, v36, v37, "[%{public}s] generating demo summaries for range: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v39, -1, -1);
      MEMORY[0x26D654490](v38, -1, -1);
    }

    v43 = v86;
    v29 = *(v85 + 8);
    v29(v13, v86);
    v44 = v79;
    a2 = sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
    v24 = v84;
    v26 = sub_269E51EFC();
    sub_269E50FFC();

    v13 = sub_269E5100C();
    LOBYTE(v17) = sub_269E51ECC();

    if (!os_log_type_enabled(v13, v17))
    {

      v53 = v44;
      v52 = v43;
      goto LABEL_16;
    }

    v21 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v21 = 136446722;
    *(v21 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    *(v21 + 6) = 2082;
    if (!(v26 >> 62))
    {
      v45 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      *v93 = v45;
      v46 = sub_269E5219C();
      v48 = sub_269E47920(v46, v47, &aBlock);

      *(v21 + 14) = v48;
      *(v21 + 11) = 2082;
      v49 = MEMORY[0x26D653A40](v26, a2);
      v51 = sub_269E47920(v49, v50, &aBlock);

      *(v21 + 3) = v51;
      _os_log_impl(&dword_269DE5000, v13, v17, "[%{public}s] using %{public}s demo summaries: %{public}s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v14, -1, -1);
      MEMORY[0x26D654490](v21, -1, -1);

      v52 = v86;
      v53 = v79;
LABEL_16:
      v29(v53, v52);
      v93[0] = 0;
      SleepDaySummaryResults.init(summaries:context:)(v26, v93, &aBlock);
      v72 = v88;
      v89 = v89;
      v73 = v90;

      v74 = v72;
      v80(&aBlock, 0);

      sub_269DF6EA0(aBlock, v88, v89, v90);
      return (*(v81 + 8))(v24, v82);
    }

LABEL_20:
    v45 = sub_269E5204C();
    goto LABEL_11;
  }

  v54 = v24;
  v55 = v77;
  sub_269E50FFC();
  v56 = sub_269E5100C();
  v57 = sub_269E51ECC();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    _os_log_impl(&dword_269DE5000, v56, v57, "[%{public}s] requesting database accessibility assertion...", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x26D654490](v59, -1, -1);
    MEMORY[0x26D654490](v58, -1, -1);
  }

  (*(v85 + 8))(v55, v86);
  v61 = v82;
  v60 = v83;
  v62 = v80;
  v63 = v81;
  v64 = sub_269E51CCC();
  v65 = swift_allocObject();
  v65[2] = a2;
  v65[3] = v17;
  v65[4] = v78;
  v65[5] = v62;
  v67 = v75;
  v66 = v76;
  v65[6] = v60;
  v65[7] = v67;
  v65[8] = v66;
  v91 = sub_269E48B9C;
  v92 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = sub_269E477DC;
  v90 = &block_descriptor_12;
  v68 = _Block_copy(&aBlock);

  v69 = v67;
  v70 = v66;

  [v69 requestDatabaseAccessibilityAssertion:v64 timeout:v68 completion:5.0];
  _Block_release(v68);

  return (*(v63 + 8))(v54, v61);
}

uint64_t SleepWidgetViewModelProvider.sleepStageWidgetViewModel(showLiveContent:overrideState:completion:)(uint64_t a1, unsigned __int8 *a2, void (*a3)(void, void), void (**a4)(char *, uint64_t))
{
  v7 = a1;
  v8 = *v4;
  v9 = v4[1];
  v10 = *a2;
  v14[0] = v8;
  v14[1] = v9;
  v11 = v8;
  v12 = v9;

  sub_269E47EB0(v7, 1, 4, v14, v11, v12, v10, a3, a4);
}

void sub_269E46560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void, void), uint64_t a7)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v35[0] = a3;
  v35[1] = a4;
  v30 = v12;
  v31 = v11;
  v32 = v13;
  v33 = v14;
  sub_269E45420(&v30);
  if (v12)
  {
    v29 = a5;
    if (v12 >> 62)
    {
      v15 = sub_269E5204C();
      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_4:
        v30 = MEMORY[0x277D84F90];
        v16 = v14;

        v17 = v11;
        sub_269E5212C();
        if (v15 < 0)
        {
          __break(1u);
          return;
        }

        v25 = a2;
        v26 = v13;
        v27 = a7;
        v28 = a6;
        v18 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x26D653D70](v18, v12);
          }

          else
          {
            v19 = *(v12 + 8 * v18 + 32);
          }

          v20 = v19;
          if ([v19 summaryFilteredToLastPeriod])
          {
          }

          ++v18;
          sub_269E5210C();
          sub_269E5213C();
          sub_269E5214C();
          sub_269E5211C();
        }

        while (v15 != v18);
        v21 = v30;
        a6 = v28;
        a2 = v25;
        v13 = v26;
        goto LABEL_16;
      }
    }

    v23 = v14;

    v24 = v11;
    v21 = MEMORY[0x277D84F90];
LABEL_16:
    LOBYTE(v35[0]) = 0;
    SleepDaySummaryResults.init(summaries:context:)(v21, v35, &v30);
    sub_269DF6EA0(v12, v11, v13, v14);
    v22 = v30;
    v11 = v31;
    v13 = v32;
    v14 = v33;
    a5 = v29;
    goto LABEL_17;
  }

  v22 = 0;
LABEL_17:
  v30 = v22;
  v31 = v11;
  v32 = v13;
  v33 = v14;
  v34 = a5;
  sub_269DF6E4C(v22, v11, v13, v14);
  a6(&v30, a2);
  sub_269DF6EA0(v22, v11, v13, v14);

  sub_269DF6EA0(v22, v11, v13, v14);
}

uint64_t sub_269E467A0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7)
{
  v23 = a7;
  v24 = a6;
  v12 = type metadata accessor for SleepScoreWidgetViewModel(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v25[4] = a3;
  v25[5] = a4;
  v25[0] = v17;
  v25[1] = v16;
  v25[2] = v18;
  v25[3] = v19;
  sub_269E45420(v25);
  v20 = *(v13 + 28);
  v21 = sub_269E50CDC();
  (*(*(v21 - 8) + 16))(&v15[v20], a5, v21);
  *v15 = v17;
  *(v15 + 1) = v16;
  *(v15 + 2) = v18;
  *(v15 + 3) = v19;
  sub_269DF6E4C(v17, v16, v18, v19);
  v24(v15, a2);
  return sub_269E48C98(v15, type metadata accessor for SleepScoreWidgetViewModel);
}

void sub_269E468F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, void *a8)
{
  v70 = a3;
  v71 = a4;
  v14 = sub_269E5101C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  if (a1)
  {
    v66 = a5;
    v67 = v20;
    v65 = a1;
    sub_269E50FFC();
    v23 = sub_269E5100C();
    v24 = sub_269E51ECC();
    v25 = os_log_type_enabled(v23, v24);
    v68 = v15;
    v69 = v14;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v64 = a7;
      v27 = v14;
      v28 = v26;
      v29 = swift_slowAlloc();
      v63 = a6;
      v30 = a8;
      v31 = v15;
      v32 = v29;
      *&aBlock = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
      _os_log_impl(&dword_269DE5000, v23, v24, "[%{public}s] successfully acquired database accessibility assertion", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x26D654490](v32, -1, -1);
      MEMORY[0x26D654490](v28, -1, -1);

      v33 = v31;
      a8 = v30;
      v34 = *(v33 + 8);
      v35 = v27;
      a6 = v63;
      a7 = v64;
      v34(v22, v35);
    }

    else
    {

      v34 = *(v15 + 8);
      v34(v22, v14);
    }

    v45 = swift_allocObject();
    v45[2] = a6;
    v45[3] = a7;
    v46 = v65;
    v45[4] = v65;
    v47 = objc_allocWithZone(MEMORY[0x277CCD9C0]);
    v74 = sub_269E48BA0;
    v75 = v45;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v73 = sub_269E47868;
    *(&v73 + 1) = &block_descriptor_18;
    v48 = _Block_copy(&aBlock);
    v49 = v46;

    v50 = [v47 initWithMorningIndexRange:v70 ascending:v71 limit:1 options:0 resultsHandler:{v66, v48}];
    _Block_release(v48);

    v51 = objc_allocWithZone(MEMORY[0x277CCD9B8]);
    v52 = sub_269E51CCC();
    v53 = [v51 initWithIdentifier:v52 mode:0];

    [v50 setCacheSettings_];
    v54 = v50;
    v55 = sub_269E51CCC();
    [v54 setDebugIdentifier_];

    v56 = v67;
    sub_269E50FFC();
    v57 = sub_269E5100C();
    v58 = sub_269E51ECC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&aBlock = v60;
      *v59 = 136446210;
      *(v59 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
      _os_log_impl(&dword_269DE5000, v57, v58, "[%{public}s] executing sleep day summary query...", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x26D654490](v60, -1, -1);
      MEMORY[0x26D654490](v59, -1, -1);
    }

    v34(v56, v69);
    [a8 executeQuery_];
  }

  else
  {
    sub_269E50FFC();
    v36 = a2;
    v37 = sub_269E5100C();
    v38 = sub_269E51EAC();

    if (os_log_type_enabled(v37, v38))
    {
      v63 = a6;
      v64 = a7;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&aBlock = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
      *(v39 + 12) = 2082;
      v41 = v15;
      if (a2)
      {
        swift_getErrorValue();
        v42 = sub_269E521FC();
        v44 = v43;
      }

      else
      {
        v44 = 0xE600000000000000;
        v42 = 0x3E656E6F6E3CLL;
      }

      v61 = sub_269E47920(v42, v44, &aBlock);

      *(v39 + 14) = v61;
      _os_log_impl(&dword_269DE5000, v37, v38, "[%{public}s] failed to get accessibility assertion with error: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v40, -1, -1);
      MEMORY[0x26D654490](v39, -1, -1);

      (*(v41 + 8))(v18, v14);
      a6 = v63;
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    aBlock = 0u;
    v73 = 0u;
    a6(&aBlock, a2);
  }
}

id sub_269E46F70(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, void *a6)
{
  v45 = a4;
  v46 = a6;
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269E519FC();
  v44 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_269E51A1C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = v18;
    sub_269DF6A7C(0, &qword_281571CE8, 0x277D85C78);

    v22 = sub_269E51F2C();
    v23 = swift_allocObject();
    v24 = v45;
    v23[2] = a2;
    v23[3] = v24;
    v23[4] = a5;
    v50 = sub_269E48BAC;
    v51 = v23;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v49 = sub_269E47798;
    *(&v49 + 1) = &block_descriptor_24;
    v25 = _Block_copy(&aBlock);

    sub_269E51A0C();
    v47 = MEMORY[0x277D84F90];
    sub_269E48BB8();
    sub_269E48AA4(0, &qword_281571D90, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_269E48C10();
    sub_269E51FEC();
    MEMORY[0x26D653BC0](0, v20, v15, v25);
    _Block_release(v25);

    v44[1](v15, v13);
    (*(v17 + 8))(v20, v21);
  }

  else
  {
    v26 = v10;
    v43 = v9;
    v27 = v45;
    sub_269E50FFC();
    v28 = a3;
    v44 = a3;
    v29 = sub_269E5100C();
    v30 = v44;
    v31 = v29;
    v32 = sub_269E51EAC();

    if (os_log_type_enabled(v31, v32))
    {
      v42 = v12;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&aBlock = v34;
      *v33 = 136446466;
      *(v33 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
      *(v33 + 12) = 2082;
      v35 = v27;
      v36 = v26;
      if (v30)
      {
        swift_getErrorValue();
        v37 = sub_269E521FC();
        v39 = v38;
      }

      else
      {
        v39 = 0xE600000000000000;
        v37 = 0x3E656E6F6E3CLL;
      }

      v40 = sub_269E47920(v37, v39, &aBlock);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_269DE5000, v31, v32, "[%{public}s] failed to load summaries with error: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v34, -1, -1);
      MEMORY[0x26D654490](v33, -1, -1);

      (*(v36 + 8))(v42, v43);
      v30 = v44;
    }

    else
    {

      (*(v10 + 8))(v12, v43);
      v35 = v27;
    }

    aBlock = 0u;
    v49 = 0u;
    v35(&aBlock, v30);
  }

  return [v46 invalidate];
}

uint64_t sub_269E47498(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_269E5101C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E50FFC();

  v10 = sub_269E5100C();
  v11 = sub_269E51ECC();
  if (os_log_type_enabled(v10, v11))
  {
    v21 = a3;
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v23);
    *(v13 + 12) = 2048;
    if (a1 >> 62)
    {
      v15 = sub_269E5204C();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 14) = v15;

    _os_log_impl(&dword_269DE5000, v10, v11, "[%{public}s] query returned %ld summaries", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D654490](v14, -1, -1);
    MEMORY[0x26D654490](v13, -1, -1);

    (*(v7 + 8))(v9, v6);
    a2 = v12;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v22 = 0;

  SleepDaySummaryResults.init(summaries:context:)(v16, &v22, &v23);
  v17 = v24;
  v25 = v25;
  v18 = v26;

  v19 = v17;
  a2(&v23, 0);

  sub_269DF6EA0(v23, v24, v25, v26);
}

uint64_t sub_269E47798(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_269E477DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_269E47868(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
    v5 = sub_269E51DAC();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

unint64_t sub_269E47920(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269E479EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_269E48CF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_269E479EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_269E47AF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_269E520FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_269E47AF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_269E47B44(a1, a2);
  sub_269E47C74(&unk_287AB3288);
  return v3;
}

void *sub_269E47B44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269E47D60(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_269E520FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_269E51D6C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269E47D60(v10, 0);
        result = sub_269E520BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_269E47C74(uint64_t result)
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

  result = sub_269E47DC8(result, v11, 1, v3);
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

void *sub_269E47D60(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_269E48D54();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_269E47DC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_269E48D54();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_269E47EB0(int a1, void *a2, uint64_t a3, void (**a4)(char *, uint64_t), void *a5, void *a6, int a7, void (*a8)(void, void), void (**a9)(char *, uint64_t))
{
  v97 = a8;
  v92 = a4;
  v82 = a3;
  v94 = a2;
  v90 = a1;
  v12 = a9;
  v13 = sub_269E5101C();
  v14 = *(v13 - 8);
  v95 = v13;
  v96 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v80 - v18;
  MEMORY[0x28223BE20](v17);
  v83 = &v80 - v19;
  v93 = sub_269E50B9C();
  v20 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_269E50BDC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_269E50C8C();
  v88 = *(v27 - 8);
  v89 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;
  v86 = a7;
  *(v30 + 32) = a7;
  *(v30 + 40) = v97;
  *(v30 + 48) = a9;
  v91 = v30;
  v31 = *v92;
  v80 = v92[1];
  (*(v24 + 104))(v26, *MEMORY[0x277CC9830], v23);
  v85 = a5;
  v84 = a6;
  v92 = a9;

  sub_269E50BEC();
  v33 = *(v24 + 8);
  v32 = v24 + 8;
  v33(v26, v23);
  sub_269E50B8C();
  v34 = sub_269E50B2C();
  isa = v20[1].isa;
  v35 = v20 + 1;
  isa(v22, v93);
  v37 = v94;
  v38 = v34 - v94;
  if (__OFSUB__(v34, v94))
  {
    __break(1u);
    goto LABEL_19;
  }

  v34 = v38 + 1;
  if (__OFADD__(v38, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v90 & 1) == 0 || (v39 = [objc_opt_self() sharedBehavior]) != 0 && (v40 = v39, v41 = objc_msgSend(v39, sel_hksp_useDemoSleepData), v40, v41))
  {
    v42 = v83;
    sub_269E50FFC();
    v43 = sub_269E5100C();
    v44 = sub_269E51ECC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v104[0] = v46;
      *v45 = 136446466;
      *(v45 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v104);
      *(v45 + 12) = 2082;
      aBlock = v34;
      v99 = v37;
      type metadata accessor for HKDayIndexRange(0);
      v47 = sub_269E51D0C();
      v49 = sub_269E47920(v47, v48, v104);

      *(v45 + 14) = v49;
      _os_log_impl(&dword_269DE5000, v43, v44, "[%{public}s] generating demo summaries for range: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v46, -1, -1);
      MEMORY[0x26D654490](v45, -1, -1);
    }

    v50 = v95;
    v31 = *(v96 + 8);
    v31(v42, v95);
    v51 = v87;
    v32 = sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
    v34 = sub_269E51EFC();
    sub_269E50FFC();

    v35 = sub_269E5100C();
    v12 = sub_269E51ECC();

    if (!os_log_type_enabled(v35, v12))
    {

      v60 = v51;
      v59 = v50;
      goto LABEL_16;
    }

    v26 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v26 = 136446722;
    *(v26 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    *(v26 + 6) = 2082;
    if (!(v34 >> 62))
    {
      v52 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      v104[0] = v52;
      v53 = sub_269E5219C();
      v55 = sub_269E47920(v53, v54, &aBlock);

      *(v26 + 14) = v55;
      *(v26 + 11) = 2082;
      v56 = MEMORY[0x26D653A40](v34, v32);
      v58 = sub_269E47920(v56, v57, &aBlock);

      *(v26 + 3) = v58;
      _os_log_impl(&dword_269DE5000, v35, v12, "[%{public}s] using %{public}s demo summaries: %{public}s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v37, -1, -1);
      MEMORY[0x26D654490](v26, -1, -1);

      v59 = v95;
      v60 = v87;
LABEL_16:
      v31(v60, v59);
      LOBYTE(v104[0]) = 0;
      SleepDaySummaryResults.init(summaries:context:)(v34, v104, &aBlock);
      v76 = v99;
      v100 = v100;
      v77 = v101;

      v78 = v76;
      sub_269E46560(&aBlock, 0, v85, v84, v86, v97, v92);

      sub_269DF6EA0(aBlock, v99, v100, v101);
      (*(v88 + 8))(v29, v89);
    }

LABEL_20:
    v52 = sub_269E5204C();
    goto LABEL_11;
  }

  v61 = v29;
  v62 = v81;
  sub_269E50FFC();
  v63 = sub_269E5100C();
  v64 = sub_269E51ECC();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock = v66;
    *v65 = 136446210;
    *(v65 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    _os_log_impl(&dword_269DE5000, v63, v64, "[%{public}s] requesting database accessibility assertion...", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x26D654490](v66, -1, -1);
    MEMORY[0x26D654490](v65, -1, -1);
  }

  (*(v96 + 8))(v62, v95);
  v68 = v88;
  v67 = v89;
  v69 = v82;
  v70 = sub_269E51CCC();
  v71 = swift_allocObject();
  v71[2] = v34;
  v71[3] = v37;
  v71[4] = v69;
  v71[5] = sub_269E48DA4;
  v71[6] = v91;
  v71[7] = v31;
  v72 = v80;
  v71[8] = v80;
  v102 = sub_269E48E50;
  v103 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v99 = 1107296256;
  v100 = sub_269E477DC;
  v101 = &block_descriptor_34;
  v73 = _Block_copy(&aBlock);

  v74 = v31;
  v75 = v72;

  [v74 requestDatabaseAccessibilityAssertion:v70 timeout:v73 completion:5.0];
  _Block_release(v73);

  (*(v68 + 8))(v61, v67);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269E4889C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_269E50B9C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_269E44974(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), (v2 + v6), *v7, *(v7 + 8));
}

uint64_t sub_269E48954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E489B8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_269DF6A7C(255, a3, a4);
    v5 = sub_269E51F9C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269E48A10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_269E48A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269E48AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E48B08(uint64_t a1, uint64_t a2)
{
  sub_269E48AA4(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_269E48BB8()
{
  result = qword_281571E58;
  if (!qword_281571E58)
  {
    sub_269E519FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571E58);
  }

  return result;
}

unint64_t sub_269E48C10()
{
  result = qword_281571D88;
  if (!qword_281571D88)
  {
    sub_269E48AA4(255, &qword_281571D90, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D88);
  }

  return result;
}

uint64_t sub_269E48C98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E48CF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_269E48D54()
{
  if (!qword_281571BB8)
  {
    v0 = sub_269E521AC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571BB8);
    }
  }
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_269E48E64(uint64_t a1)
{
  result = sub_269E0AAA4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E48EA8()
{
  sub_269E5124C();
  sub_269E4997C(&qword_2815722C0, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
  sub_269E512DC();
  return v1;
}

uint64_t sub_269E48F24@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v26 = sub_269E5146C();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E49BA4(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  sub_269E4961C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 16);
  v34[0] = *v1;
  v34[1] = v16;
  v35 = *(v1 + 32);
  v27 = sub_269E5134C();
  v28 = 0;
  v29 = 0;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = sub_269E512FC();
  v31 = 0;
  v32 = 0;
  sub_269E49368(v34, v33);

  v17 = HKSPSleepURL();
  if (v17)
  {
    v18 = v17;
    sub_269E50AFC();

    v19 = sub_269E50B0C();
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  }

  else
  {
    v20 = sub_269E50B0C();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  }

  sub_269DF0960(v8, v10);
  sub_269E496D0(0);
  v22 = v21;
  v23 = sub_269E4997C(&qword_281571F78, sub_269E496D0, MEMORY[0x277CE1198]);
  sub_269E5173C();
  sub_269DF0A3C(v10);
  sub_269E499C4(&v27, sub_269E496D0);
  sub_269E5145C();
  v27 = v22;
  v28 = v23;
  swift_getOpaqueTypeConformance2();
  sub_269E517CC();
  (*(v2 + 8))(v4, v26);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_269E49368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11[3] = &type metadata for SleepStageWidgetViewModel;
  v11[4] = &protocol witness table for SleepStageWidgetViewModel;
  v4 = swift_allocObject();
  v11[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v11[6] = v6;
  v11[7] = swift_getKeyPath();
  v12 = 0;
  v11[5] = sub_269E49A70;
  sub_269E49B08(v11, v10);
  sub_269E49B08(v10, a2);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  sub_269E49B6C(a1, v9);
  sub_269E49B6C(a1, v9);
  sub_269E499C4(v11, sub_269E49860);
  sub_269E499C4(v10, sub_269E49860);
}

uint64_t sub_269E494F4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  v14 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  v5 = MEMORY[0x277CDF458];
  sub_269E49BA4(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SleepStageResultsView(0);
  v7 = *(v6 + 20);
  *(a2 + v7) = swift_getKeyPath();
  sub_269E49BA4(0, &qword_281572610, MEMORY[0x277CE3AF8], v5);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + *(v6 + 24);
  v9 = v13;
  *v8 = v12;
  *(v8 + 1) = v9;
  v8[32] = v14;
  return sub_269E49B6C(a1, v11);
}

void sub_269E4961C(uint64_t a1)
{
  if (!qword_281572038)
  {
    sub_269E496D0(255);
    sub_269E4997C(&qword_281571F78, sub_269E496D0, MEMORY[0x277CE1198]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572038);
    }
  }
}

void sub_269E496D0(uint64_t a1)
{
  if (!qword_281571F70)
  {
    sub_269E49764(255);
    sub_269E4997C(&qword_281571FF8, sub_269E49764, MEMORY[0x277CE1138]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571F70);
    }
  }
}

void sub_269E49764(uint64_t a1)
{
  if (!qword_281571FF0)
  {
    sub_269E49BA4(255, &qword_281571EF8, sub_269E497F8, MEMORY[0x277CE14B8]);
    sub_269E498F4();
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571FF0);
    }
  }
}

void sub_269E497F8(uint64_t a1)
{
  if (!qword_281572EB8)
  {
    sub_269E49860(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281572EB8);
    }
  }
}

void sub_269E49860(uint64_t a1)
{
  if (!qword_281572EC0[0])
  {
    v2 = type metadata accessor for SleepStageResultsView(255);
    v3 = sub_269E4997C(&qword_2815736A8, type metadata accessor for SleepStageResultsView, &unk_269E55748);
    v5 = type metadata accessor for SleepWidgetResultsView(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_281572EC0);
    }
  }
}

unint64_t sub_269E498F4()
{
  result = qword_281571F00;
  if (!qword_281571F00)
  {
    sub_269E49BA4(255, &qword_281571EF8, sub_269E497F8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571F00);
  }

  return result;
}

uint64_t sub_269E4997C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269E499C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_269E49A78@<X0>(_BYTE *a1@<X8>)
{
  sub_269E5124C();
  sub_269E4997C(&qword_2815722C0, MEMORY[0x277CE3940], MEMORY[0x277CE3938]);
  result = sub_269E512DC();
  *a1 = v3;
  return result;
}

uint64_t sub_269E49B08(uint64_t a1, uint64_t a2)
{
  sub_269E49860(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E49BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E49C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepWidgetChartView(uint64_t a1)
{
  result = qword_281572A20;
  if (!qword_281572A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E49CE0(uint64_t a1)
{
  sub_269E4FE94(319, qword_281572AE0, &type metadata for SleepWidgetChart, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_269E4FE94(319, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_269E49C1C(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_269E4FE94(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_269E49C1C(319, &qword_2815725C8, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_269E49E94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = type metadata accessor for SleepWidgetChartView(0);
  v12 = v11[8];
  *(a3 + v12) = swift_getKeyPath();
  v13 = MEMORY[0x277CDF458];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v14 = a3 + v11[9];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v11[10];
  *(a3 + v15) = swift_getKeyPath();
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], v13);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v11[11];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  *a3 = v10;
  a3[1] = a2;
  sub_269E50B8C();
  v17 = sub_269E50270(v9, MEMORY[0x277CC9908]);
  v18 = *(v7 + 8);
  v18(v9, v6);
  a3[2] = v17;
  sub_269E50B8C();
  v19 = sub_269E50270(v9, MEMORY[0x277CC98E0]);
  result = (v18)(v9, v6);
  a3[3] = v19;
  return result;
}

uint64_t sub_269E4A0F8(uint64_t a1)
{
  v2 = sub_269E51ADC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269E5127C();
}

double sub_269E4A1C0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_28035F330 = 1.0 / v2;
  return result;
}

uint64_t sub_269E4A22C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3BA0];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for SleepWidgetChartView(0);
  sub_269E501B8(v1 + *(v11 + 32), v10, &qword_281572608, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_269E51B0C();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_269E51EBC();
    v14 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269E4A458()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SleepWidgetChartView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_269E51EBC();
    v7 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_269E4A5B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE0A00];
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for SleepWidgetChartView(0);
  sub_269E501B8(v1 + *(v11 + 40), v10, &qword_2815725F8, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_269E5160C();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_269E51EBC();
    v14 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269E4A7DC()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SleepWidgetChartView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_269E51EBC();
    v7 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_269E4A934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_269E50238(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_269E4A978()
{
  result = qword_28035F340;
  if (!qword_28035F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F340);
  }

  return result;
}

unint64_t sub_269E4A9D0()
{
  result = qword_28035F348;
  if (!qword_28035F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F348);
  }

  return result;
}

unint64_t sub_269E4AA28()
{
  result = qword_28035F350;
  if (!qword_28035F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F350);
  }

  return result;
}

unint64_t sub_269E4AA80()
{
  result = qword_28035F358;
  if (!qword_28035F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F358);
  }

  return result;
}

uint64_t sub_269E4AAF0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v89 = a1;
  v87 = a3;
  sub_269E4E7EC(0);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = (&v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E4F0E8(0);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4EE38(0, &qword_281572218, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0330]);
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  v85 = &v72 - v8;
  sub_269E4F2F8(0);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v74 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E4EE38(0, &qword_281572168, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v72 - v12;
  v13 = sub_269E51B0C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v72 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v79 = &v72 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v72 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v72 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v72 - v26;
  v28 = sub_269E5160C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v81 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E5108C();
  v33 = v32;
  sub_269E5108C();
  v35 = v34;
  v36 = v80;
  v37 = 0.0;
  v89 = v80[1];
  if ((v89 & 2) != 0)
  {
    sub_269E5155C();
    sub_269E4A5B0(v31);
    sub_269E50D5C();
    v37 = v38;

    (*(v29 + 8))(v31, v28);
  }

  sub_269E4A22C(v27);
  v39 = sub_269E4A458();
  (*(v14 + 32))(v25, v27, v13);
  v40 = *(v14 + 88);
  v41 = v40(v25, v13);
  v42 = *MEMORY[0x277CE3B98];
  if (v41 == *MEMORY[0x277CE3B98])
  {
    if (v39)
    {
      v43 = 12.0;
    }

    else
    {
      v43 = 9.0;
    }
  }

  else
  {
    if ((v89 & 4) != 0)
    {
      v43 = 7.0;
    }

    else
    {
      v43 = 11.0;
    }

    (*(v14 + 8))(v25, v13);
  }

  v44 = v33 - v37;
  sub_269E4A22C(v90);
  v45 = sub_269E4A458();
  v46 = *(v14 + 16);
  v47 = v79;
  v46();
  v48 = v40(v47, v13);
  v75 = v45;
  if (v48 == v42)
  {
    if (v45)
    {
      v49 = 84.0;
    }

    else
    {
      v49 = 63.0;
    }

    v50 = v88;
    if ((v89 & 2) == 0)
    {
LABEL_18:
      v51 = 0.0;
      v52 = 6.0;
      goto LABEL_26;
    }
  }

  else
  {
    (*(v14 + 8))(v47, v13);
    v50 = v88;
    if ((v89 & 4) != 0)
    {
      v49 = 49.0;
    }

    else
    {
      v49 = 77.0;
    }

    if ((v89 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_28035E888 != -1)
  {
    swift_once();
  }

  v51 = *&qword_28035F330 * 8.0;
  v52 = 14.0;
LABEL_26:
  v88 = *&v44;
  v53 = (v35 - v49 - v51) / v52;
  (v46)(v50, v90, v13);
  if (v40(v50, v13) == v42)
  {
    if ((v75 & 1) == 0)
    {
      v54 = v73;
      (v46)(v73, v90, v13);
      v55 = v54;
      if (v40(v54, v13) == v42)
      {
        v53 = 7.2;
      }

      else
      {
        v71 = (v89 & 4) == 0;
        (*(v14 + 8))(v55, v13);
        v53 = dbl_269E56240[v71];
      }
    }
  }

  else
  {
    v53 = floor(v53);
    (*(v14 + 8))(v50, v13);
  }

  (*(v14 + 8))(v90, v13);
  v56 = *v36;
  if (*v36)
  {

    v57 = sub_269E512FC();
    v58 = v77;
    *v77 = v57;
    *(v58 + 8) = 0;
    *(v58 + 16) = 0;
    sub_269E4FAC4(0);
    sub_269E4B5F8(v56, v36, *&v43, v88, 1, v58 + *(v59 + 44), v53);
    *&v91 = v56;
    sub_269E4FE94(0, &qword_281571DA0, &type metadata for SleepWidgetChartBar, MEMORY[0x277D83940]);
    sub_269E4EFC8(&qword_281571FC8, sub_269E4E7EC, MEMORY[0x277CE1138]);
    sub_269E4F208();
    v60 = v78;
    sub_269E516FC();

    sub_269E4FB5C(v58, sub_269E4E7EC);
    sub_269E519BC();
    sub_269E5106C();
    v61 = v85;
    v62 = (v60 + *(v86 + 36));
    v63 = v92;
    *v62 = v91;
    v62[1] = v63;
    v62[2] = v93;
    sub_269E50080(v60, v61, sub_269E4F0E8);
    swift_storeEnumTagMultiPayload();
    sub_269E4F8F0();
    sub_269E4FA14();
    v64 = v84;
    sub_269E513BC();
    v65 = sub_269E4F0E8;
  }

  else
  {
    v66 = sub_269E512FC();
    v60 = v74;
    *v74 = v66;
    *(v60 + 8) = 0;
    *(v60 + 16) = 0;
    sub_269E50014(0, &qword_2815725A0, sub_269E4F3B4, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_269E4D304(v36, *&v43, v88, 1, v60 + *(v67 + 44), v53);
    sub_269E519BC();
    sub_269E5106C();
    v68 = (v60 + *(v83 + 36));
    v69 = v92;
    *v68 = v91;
    v68[1] = v69;
    v68[2] = v93;
    sub_269E50080(v60, v85, sub_269E4F2F8);
    swift_storeEnumTagMultiPayload();
    sub_269E4F8F0();
    sub_269E4FA14();
    v64 = v84;
    sub_269E513BC();
    v65 = sub_269E4F2F8;
  }

  sub_269E4FB5C(v60, v65);
  sub_269E4FE20(v64, v87, &qword_281572168, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0338]);
}

uint64_t sub_269E4B5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v64 = a5;
  v62 = a3;
  v63 = a4;
  v61 = a2;
  sub_269E4E880(0);
  v70 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SleepWidgetChartView(0);
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F498(0, &qword_281571F10, sub_269E4EACC);
  v67 = *(v17 - 8);
  v68 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v66 = &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &KeyPath - v20;
  sub_269E49C1C(0, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &KeyPath - v22;
  sub_269E51E1C();
  v69 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v101 = a1;
  sub_269E29034();
  if (v25 & 1) != 0 || (v26 = v24, v115 = a1, sub_269E292D4(), (v28))
  {
    (*(v11 + 56))(v23, 1, 1, v70);
  }

  else
  {
    v58 = v27;
    v59 = a6;
    v29 = v61;
    if ((*(v61 + 8) & 2) != 0)
    {
      sub_269E4BD14(&v87);
      nullsub_1();
      v111 = v97;
      v112 = v98;
      v113 = v99;
      v114 = v100;
      v107 = v93;
      v108 = v94;
      v109 = v95;
      v110 = v96;
      v103 = v89;
      v104 = v90;
      v105 = v91;
      v106 = v92;
      v101 = v87;
      v102 = v88;
    }

    else
    {
      sub_269E4FBBC(&v101);
    }

    v30 = *(a1 + 16);
    *&v87 = 0;
    *(&v87 + 1) = v30;
    KeyPath = swift_getKeyPath();
    sub_269E50150(v29, &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetChartView);
    v31 = (*(v60 + 80) + 64) & ~*(v60 + 80);
    v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v35 = v62;
    v34 = v63;
    *(v33 + 16) = a1;
    *(v33 + 24) = v35;
    *(v33 + 32) = v34;
    *(v33 + 40) = v64 & 1;
    v36 = v58;
    *(v33 + 48) = v26;
    *(v33 + 56) = v36;
    sub_269E500E8(v16, v33 + v31, type metadata accessor for SleepWidgetChartView);
    *(v33 + v32) = a7;
    sub_269E4EA78(0, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269E4EACC(0);
    sub_269DFBBA4();
    sub_269E4EFC8(&qword_28035F368, sub_269E4EACC, MEMORY[0x277CE14C0]);

    v37 = v65;
    sub_269E5197C();
    v81 = v111;
    v82 = v112;
    v83 = v113;
    v84 = v114;
    v77 = v107;
    v78 = v108;
    v79 = v109;
    v80 = v110;
    v73 = v103;
    v74 = v104;
    v75 = v105;
    v76 = v106;
    v71 = v101;
    v72 = v102;
    v39 = v66;
    v38 = v67;
    v40 = *(v67 + 16);
    v41 = v68;
    v40(v66, v37, v68);
    v42 = v82;
    v85[10] = v81;
    v85[11] = v82;
    v43 = v83;
    v85[12] = v83;
    v44 = v77;
    v45 = v78;
    v85[6] = v77;
    v85[7] = v78;
    v46 = v79;
    v47 = v80;
    v85[8] = v79;
    v85[9] = v80;
    v48 = v73;
    v49 = v74;
    v85[2] = v73;
    v85[3] = v74;
    v50 = v75;
    v51 = v76;
    v85[4] = v75;
    v85[5] = v76;
    v52 = v71;
    v53 = v72;
    v85[0] = v71;
    v85[1] = v72;
    *(v13 + 10) = v81;
    *(v13 + 11) = v42;
    *(v13 + 12) = v43;
    *(v13 + 6) = v44;
    *(v13 + 7) = v45;
    *(v13 + 8) = v46;
    *(v13 + 9) = v47;
    *(v13 + 2) = v48;
    *(v13 + 3) = v49;
    *(v13 + 4) = v50;
    *(v13 + 5) = v51;
    v86 = v84;
    v13[208] = v84;
    *v13 = v52;
    *(v13 + 1) = v53;
    sub_269E4E8B4(0);
    v40(&v13[*(v54 + 48)], v39, v41);
    sub_269E50150(v85, &v87, sub_269E4E8DC);
    v55 = *(v38 + 8);
    v55(v37, v41);
    v55(v39, v41);
    v97 = v81;
    v98 = v82;
    v99 = v83;
    v100 = v84;
    v93 = v77;
    v94 = v78;
    v95 = v79;
    v96 = v80;
    v89 = v73;
    v90 = v74;
    v91 = v75;
    v92 = v76;
    v87 = v71;
    v88 = v72;
    sub_269E4FCA0(&v87, sub_269E4E8DC);
    sub_269E4FD00(v13, v23, sub_269E4E880);
    (*(v11 + 56))(v23, 0, 1, v70);
    a6 = v59;
  }

  sub_269DEEDF0(v23, a6);
}

void sub_269E4BD14(uint64_t a2@<X8>)
{
  sub_269E5187C();
  v3 = sub_269E5188C();

  if (qword_28035E888 != -1)
  {
    swift_once();
  }

  sub_269E519BC();
  sub_269E5106C();
  sub_269E519BC();
  sub_269E5111C();
  v4 = sub_269E514EC();
  sub_269E5102C();
  *(a2 + 104) = v12;
  *(a2 + 120) = v13;
  *(a2 + 136) = v14;
  *(a2 + 152) = v15;
  *(a2 + 56) = v9;
  *(a2 + 72) = v10;
  *a2 = v3;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 88) = v11;
  *(a2 + 168) = v4;
  *(a2 + 176) = v5;
  *(a2 + 184) = v6;
  *(a2 + 192) = v7;
  *(a2 + 200) = v8;
  *(a2 + 208) = 0;
}

uint64_t sub_269E4BEAC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v162 = a6;
  LODWORD(v159) = a5;
  v140 = a3;
  v141 = a4;
  v160 = a2;
  v158 = a7;
  v13 = sub_269E5144C();
  v156 = *(v13 - 8);
  v157 = v13;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ED60(0);
  v149 = v15;
  v147 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v129 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ED2C(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v154 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v153 = &v129 - v20;
  v21 = type metadata accessor for BarView(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E4ED04(0);
  v137 = v24;
  MEMORY[0x28223BE20](v24);
  v139 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ECDC(0);
  v138 = v26;
  MEMORY[0x28223BE20](v26);
  v143 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ECB4(0);
  v142 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v146 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v144 = &v129 - v32;
  MEMORY[0x28223BE20](v31);
  v145 = &v129 - v33;
  sub_269E4EBB8(0);
  v148 = v34;
  MEMORY[0x28223BE20](v34);
  v161 = (&v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E4EB7C(0);
  v151 = *(v36 - 8);
  v152 = v36;
  MEMORY[0x28223BE20](v36);
  v150 = &v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4EB34(0);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v41 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v129 - v42;
  v44 = *a1;
  sub_269E51E1C();
  v45 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = sub_269E5133C();
  v47 = v161;
  *v161 = v46;
  v47[1] = 0;
  *(v47 + 16) = 0;
  v48 = sub_269E51E0C();
  sub_269E51DDC();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v50 = v44;
  v51 = *(v160 + 16);
  if (v44 >= v51)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v133 = v48;
  v134 = v43;
  v135 = v45;
  v136 = v41;
  v132 = v51;
  v52 = (v160 + 48 * v44);
  v53 = v52[5];
  v54 = v52[6];
  v55 = v52[7];
  v56 = v52[8];
  v57 = v52[9];
  v130 = v52[4];
  v131 = v56;
  v160 = *(v162 + 8);
  v58 = v50;
  *v23 = swift_getKeyPath();
  v59 = MEMORY[0x277CDF458];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v60 = v21[5];
  *(v23 + v60) = swift_getKeyPath();
  sub_269E49C1C(0, &qword_281572610, MEMORY[0x277CE3AF8], v59);
  swift_storeEnumTagMultiPayload();
  v61 = v23 + v21[6];
  *v61 = swift_getKeyPath();
  v61[8] = 0;
  v62 = (v23 + v21[7]);
  v63 = v131;
  *v62 = v130;
  v62[1] = v53;
  v62[2] = v54;
  v62[3] = v55;
  v62[4] = v63;
  v62[5] = v57;
  v64 = v23 + v21[8];
  v65 = v141;
  *v64 = v140;
  *(v64 + 1) = v65;
  v64[16] = v159 & 1;
  v66 = (v23 + v21[9]);
  *v66 = a8;
  v66[1] = a9;
  LOBYTE(v57) = v160;
  *(v23 + v21[10]) = (v160 & 1) == 0;

  v67 = 1;

  v68 = sub_269E5151C();
  v159 = v58;
  sub_269E5102C();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v139;
  sub_269E500E8(v23, v139, type metadata accessor for BarView);
  v78 = v77 + *(v137 + 36);
  *v78 = v68;
  *(v78 + 8) = v70;
  *(v78 + 16) = v72;
  *(v78 + 24) = v74;
  *(v78 + 32) = v76;
  *(v78 + 40) = 0;
  v79 = sub_269E5153C();
  sub_269E5102C();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = v77;
  v89 = v143;
  sub_269E500E8(v88, v143, sub_269E4ED04);
  v90 = v89 + *(v138 + 36);
  *v90 = v79;
  *(v90 + 8) = v81;
  *(v90 + 16) = v83;
  *(v90 + 24) = v85;
  *(v90 + 32) = v87;
  *(v90 + 40) = 0;
  sub_269E519BC();
  sub_269E5111C();
  v91 = v144;
  sub_269E500E8(v89, v144, sub_269E4ECDC);
  v92 = (v91 + *(v142 + 36));
  v93 = v212;
  v92[4] = v211;
  v92[5] = v93;
  v92[6] = v213;
  v94 = v208;
  *v92 = v207;
  v92[1] = v94;
  v95 = v210;
  v92[2] = v209;
  v92[3] = v95;
  v96 = v145;
  sub_269E500E8(v91, v145, sub_269E4ECB4);
  v97 = v153;
  if ((v57 & 2) != 0)
  {
    v98 = v129;
    sub_269E4CC48(v159, v129);
    sub_269E4FD00(v98, v97, sub_269E4ED60);
    v67 = 0;
  }

  (*(v147 + 56))(v97, v67, 1, v149);
  sub_269E50014(0, &unk_28035F370, sub_269E4EC4C, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  v100 = v161;
  v101 = v161 + *(v99 + 44);
  v102 = v146;
  sub_269E50150(v96, v146, sub_269E4ECB4);
  v103 = v154;
  sub_269E50080(v97, v154, sub_269E4ED2C);
  sub_269E50150(v102, v101, sub_269E4ECB4);
  sub_269E4EC80(0);
  sub_269E50080(v103, v101 + *(v104 + 48), sub_269E4ED2C);
  sub_269E4FB5C(v97, sub_269E4ED2C);
  sub_269E4FCA0(v96, sub_269E4ECB4);
  sub_269E4FB5C(v103, sub_269E4ED2C);
  sub_269E4FCA0(v102, sub_269E4ECB4);

  v105 = v155;
  sub_269E5142C();
  v106 = sub_269E4EFC8(&qword_281571F48, sub_269E4EBB8, MEMORY[0x277CE1198]);
  v107 = v150;
  v108 = v148;
  sub_269E517DC();
  (*(v156 + 8))(v105, v157);
  sub_269E4FB5C(v100, sub_269E4EBB8);
  *&v193 = sub_269E4CFB0(v159);
  *(&v193 + 1) = v109;
  *&v179 = v108;
  *(&v179 + 1) = v106;
  swift_getOpaqueTypeConformance2();
  sub_269DF0E28();
  v110 = v134;
  v111 = v152;
  sub_269E517AC();

  (*(v151 + 8))(v107, v111);
  v112 = v136;
  if ((v160 & 2) != 0)
  {
    sub_269E4BD14(&v179);
    nullsub_1();
    v203 = v189;
    v204 = v190;
    v205 = v191;
    v206 = v192;
    v199 = v185;
    v200 = v186;
    v201 = v187;
    v202 = v188;
    v195 = v181;
    v196 = v182;
    v197 = v183;
    v198 = v184;
    v193 = v179;
    v194 = v180;
  }

  else
  {
    sub_269E4FBBC(&v193);
  }

  v113 = v158;
  sub_269E50080(v110, v112, sub_269E4EB34);
  v173 = v203;
  v174 = v204;
  v175 = v205;
  v176 = v206;
  v169 = v199;
  v170 = v200;
  v171 = v201;
  v172 = v202;
  v165 = v195;
  v166 = v196;
  v167 = v197;
  v168 = v198;
  v163 = v193;
  v164 = v194;
  sub_269E50080(v112, v113, sub_269E4EB34);
  sub_269E4EB00(0);
  v115 = *(v114 + 48);
  v116 = v174;
  v177[10] = v173;
  v177[11] = v174;
  v117 = v175;
  v177[12] = v175;
  v118 = v169;
  v119 = v170;
  v177[6] = v169;
  v177[7] = v170;
  v120 = v171;
  v121 = v172;
  v177[8] = v171;
  v177[9] = v172;
  v122 = v167;
  v123 = v168;
  v177[4] = v167;
  v177[5] = v168;
  v124 = v165;
  v125 = v166;
  v177[2] = v165;
  v177[3] = v166;
  v126 = v163;
  v127 = v164;
  v177[0] = v163;
  v177[1] = v164;
  v128 = v113 + v115;
  *(v128 + 160) = v173;
  *(v128 + 176) = v116;
  *(v128 + 192) = v117;
  *(v128 + 96) = v118;
  *(v128 + 112) = v119;
  *(v128 + 128) = v120;
  *(v128 + 144) = v121;
  *(v128 + 32) = v124;
  *(v128 + 48) = v125;
  *(v128 + 64) = v122;
  *(v128 + 80) = v123;
  v178 = v176;
  *(v128 + 208) = v176;
  *v128 = v126;
  *(v128 + 16) = v127;
  sub_269E50150(v177, &v179, sub_269E4E8DC);
  sub_269E4FB5C(v110, sub_269E4EB34);
  v189 = v173;
  v190 = v174;
  v191 = v175;
  v192 = v176;
  v185 = v169;
  v186 = v170;
  v187 = v171;
  v188 = v172;
  v181 = v165;
  v182 = v166;
  v183 = v167;
  v184 = v168;
  v179 = v163;
  v180 = v164;
  sub_269E4FCA0(&v179, sub_269E4E8DC);
  sub_269E4FB5C(v112, sub_269E4EB34);
}

void sub_269E4CC48(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269E5160C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E4EE38(0, &qword_2815723A8, sub_269E4EEBC, sub_269E0841C, MEMORY[0x277CDFAB8]);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36[-v10];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = *(v44 + 16);
  if (*(v12 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v42 = v9;
  v43 = a2;
  v13 = v12 + 16 * a1;
  v14 = *(v13 + 40);
  v45 = *(v13 + 32);
  v46 = v14;
  sub_269DF0E28();

  v15 = sub_269E516CC();
  v39 = v5;
  v40 = v4;
  v17 = v16;
  v19 = v18;
  v41 = a1;
  sub_269E5155C();
  v20 = sub_269E516AC();
  v22 = v21;
  v38 = v7;
  v37 = v23;
  v25 = v24;

  sub_269E00F48(v15, v17, v19 & 1);

  v45 = v20;
  v46 = v22;
  LOBYTE(v15) = v37 & 1;
  v47 = v37 & 1;
  v48 = v25;
  sub_269E5155C();
  v26 = v38;
  sub_269E4A5B0(v38);
  sub_269E4A7DC();
  sub_269E516EC();

  (*(v39 + 8))(v26, v40);
  sub_269E00F48(v20, v22, v15);

  KeyPath = swift_getKeyPath();
  sub_269E4EEBC(0);
  v29 = &v11[*(v28 + 36)];
  *v29 = KeyPath;
  v29[1] = 0x3FE0000000000000;
  v30 = swift_getKeyPath();
  v31 = &v11[*(v42 + 36)];
  *v31 = v30;
  *(v31 + 1) = 1;
  v31[16] = 0;
  if (v41 == 6)
  {
    v32 = sub_269E5187C();
  }

  else
  {
    v32 = sub_269E5185C();
  }

  v33 = v32;
  v34 = v43;
  sub_269E4FE20(v11, v43, &qword_2815723A8, sub_269E4EEBC, sub_269E0841C, MEMORY[0x277CDFAB8]);
  sub_269E4ED60(0);
  *(v34 + *(v35 + 36)) = v33;
}

uint64_t sub_269E4CFB0(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = a1;
  v5 = v1[3];
  if (*(v5 + 16) <= a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5 + 16 * a1;
  v4 = *(v6 + 32);
  v3 = *(v6 + 40);
  v7 = qword_281571CB0;

  if (v7 != -1)
  {
LABEL_19:
    swift_once();
  }

  v8 = sub_269E50A7C();
  v10 = v9;
  v11 = *v1;
  if (*v1)
  {
    if (*(v11 + 16) > v2)
    {
      v12 = *(v11 + 48 * v2 + 40);
      v13 = *(v12 + 16);
      if (v13)
      {

        sub_269E51E1C();
        v14 = (v12 + 40);
        v15 = 0.0;
        do
        {
          v16 = *(v14 - 1);
          v17 = *v14;
          sub_269E51E0C();
          sub_269E51DDC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v15 = v15 + v17 - v16;
          v14 += 3;
          --v13;
        }

        while (v13);

        if (qword_28035E890 != -1)
        {
          swift_once();
        }

        v18 = [qword_28035F338 stringFromTimeInterval_];
        if (v18)
        {
          v19 = v18;
          v8 = sub_269E51CDC();
          v10 = v20;
        }

        else
        {
          v8 = sub_269E50A7C();
          v10 = v21;
        }
      }
    }
  }

  v22 = MEMORY[0x277D837D0];
  sub_269E4FE94(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_269E528E0;
  *(v23 + 32) = v4;
  *(v23 + 40) = v3;
  *(v23 + 48) = v8;
  *(v23 + 56) = v10;
  sub_269E4FE94(0, &qword_281571D70, v22, MEMORY[0x277D83940]);
  sub_269E4FEE4();
  v24 = sub_269E51C6C();

  return v24;
}

uint64_t sub_269E4D304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v41 = a4;
  v39 = a2;
  v40 = a3;
  v9 = type metadata accessor for SleepWidgetChartView(0);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_269E4F498(0, &qword_281571F18, sub_269E4F560);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v42 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  sub_269E51E1C();
  v43 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a1 + 8) & 2) != 0)
  {
    sub_269E4BD14(&v60);
    nullsub_1();
    v84 = v70;
    v85 = v71;
    v86 = v72;
    v87 = v73;
    v80 = v66;
    v81 = v67;
    v82 = v68;
    v83 = v69;
    v76 = v62;
    v77 = v63;
    v78 = v64;
    v79 = v65;
    v74 = v60;
    v75 = v61;
  }

  else
  {
    sub_269E4FBBC(&v74);
  }

  v60 = xmmword_269E56250;
  swift_getKeyPath();
  sub_269E50150(a1, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetChartView);
  v18 = (*(v38 + 80) + 33) & ~*(v38 + 80);
  v19 = swift_allocObject();
  v20 = v40;
  *(v19 + 16) = v39;
  *(v19 + 24) = v20;
  *(v19 + 32) = v41 & 1;
  sub_269E500E8(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SleepWidgetChartView);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  sub_269E4EA78(0, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
  sub_269E4F560(0);
  sub_269DFBBA4();
  sub_269E4EFC8(&qword_281571EE0, sub_269E4F560, MEMORY[0x277CE14C0]);
  sub_269E5197C();
  v54 = v84;
  v55 = v85;
  v56 = v86;
  v57 = v87;
  v50 = v80;
  v51 = v81;
  v52 = v82;
  v53 = v83;
  v46 = v76;
  v47 = v77;
  v48 = v78;
  v49 = v79;
  v44 = v74;
  v45 = v75;
  v21 = *(v13 + 16);
  v22 = v42;
  v21(v42, v17, v12);
  v23 = v55;
  v58[10] = v54;
  v58[11] = v55;
  v24 = v56;
  v58[12] = v56;
  v25 = v50;
  v26 = v51;
  v58[6] = v50;
  v58[7] = v51;
  v27 = v52;
  v28 = v53;
  v58[8] = v52;
  v58[9] = v53;
  v29 = v46;
  v30 = v47;
  v58[2] = v46;
  v58[3] = v47;
  v31 = v48;
  v32 = v49;
  v58[4] = v48;
  v58[5] = v49;
  v33 = v44;
  v34 = v45;
  v58[0] = v44;
  v58[1] = v45;
  *(a5 + 160) = v54;
  *(a5 + 176) = v23;
  *(a5 + 192) = v24;
  *(a5 + 96) = v25;
  *(a5 + 112) = v26;
  *(a5 + 128) = v27;
  *(a5 + 144) = v28;
  *(a5 + 32) = v29;
  *(a5 + 48) = v30;
  *(a5 + 64) = v31;
  *(a5 + 80) = v32;
  v59 = v57;
  *(a5 + 208) = v57;
  *a5 = v33;
  *(a5 + 16) = v34;
  sub_269E4F3E8(0);
  v21((a5 + *(v35 + 48)), v22, v12);
  sub_269E50150(v58, &v60, sub_269E4E8DC);
  v36 = *(v13 + 8);
  v36(v17, v12);
  v36(v22, v12);
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v73 = v57;
  v66 = v50;
  v67 = v51;
  v68 = v52;
  v69 = v53;
  v62 = v46;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v60 = v44;
  v61 = v45;
  sub_269E4FCA0(&v60, sub_269E4E8DC);
}

uint64_t sub_269E4D874@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a5;
  v50 = a4;
  v49 = a2;
  v58 = a6;
  v51 = sub_269E5144C();
  v9 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F700(0);
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F610(0);
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F5C8(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v57 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v55 = &v49 - v22;
  v23 = *a1;
  sub_269E51E1C();
  v56 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_269E5133C();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_269E50014(0, &qword_281572590, sub_269E4F794, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  v25 = a3;
  v26 = v54;
  sub_269E4DE94(v49, v25, v50 & 1, v54, v23, &v15[*(v24 + 44)]);
  sub_269E5142C();
  v27 = sub_269E4EFC8(&qword_281571F58, sub_269E4F700, MEMORY[0x277CE1198]);
  sub_269E517DC();
  (*(v9 + 8))(v11, v51);
  sub_269E4FB5C(v15, sub_269E4F700);
  *&v89 = sub_269E4CFB0(v23);
  *(&v89 + 1) = v28;
  *&v75 = v13;
  *(&v75 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_269DF0E28();
  v29 = v55;
  v30 = v53;
  sub_269E517AC();

  (*(v52 + 8))(v18, v30);
  if ((*(v26 + 8) & 2) != 0)
  {
    sub_269E4BD14(&v75);
    nullsub_1();
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v102 = v88;
    v95 = v81;
    v96 = v82;
    v97 = v83;
    v98 = v84;
    v91 = v77;
    v92 = v78;
    v93 = v79;
    v94 = v80;
    v89 = v75;
    v90 = v76;
  }

  else
  {
    sub_269E4FBBC(&v89);
  }

  v31 = v57;
  sub_269E50080(v29, v57, sub_269E4F5C8);
  v69 = v99;
  v70 = v100;
  v71 = v101;
  v72 = v102;
  v65 = v95;
  v66 = v96;
  v67 = v97;
  v68 = v98;
  v61 = v91;
  v62 = v92;
  v63 = v93;
  v64 = v94;
  v59 = v89;
  v60 = v90;
  v32 = v58;
  sub_269E50080(v31, v58, sub_269E4F5C8);
  sub_269E4F594(0);
  v34 = *(v33 + 48);
  v35 = v70;
  v73[10] = v69;
  v73[11] = v70;
  v36 = v71;
  v73[12] = v71;
  v37 = v65;
  v38 = v66;
  v73[6] = v65;
  v73[7] = v66;
  v39 = v67;
  v40 = v68;
  v73[8] = v67;
  v73[9] = v68;
  v41 = v63;
  v42 = v64;
  v73[4] = v63;
  v73[5] = v64;
  v43 = v61;
  v44 = v62;
  v73[2] = v61;
  v73[3] = v62;
  v45 = v59;
  v46 = v60;
  v73[0] = v59;
  v73[1] = v60;
  v47 = v32 + v34;
  *(v47 + 160) = v69;
  *(v47 + 176) = v35;
  *(v47 + 192) = v36;
  *(v47 + 96) = v37;
  *(v47 + 112) = v38;
  *(v47 + 128) = v39;
  *(v47 + 144) = v40;
  *(v47 + 32) = v43;
  *(v47 + 48) = v44;
  *(v47 + 64) = v41;
  *(v47 + 80) = v42;
  v74 = v72;
  *(v47 + 208) = v72;
  *v47 = v45;
  *(v47 + 16) = v46;
  sub_269E50150(v73, &v75, sub_269E4E8DC);
  sub_269E4FB5C(v29, sub_269E4F5C8);
  v85 = v69;
  v86 = v70;
  v87 = v71;
  v88 = v72;
  v81 = v65;
  v82 = v66;
  v83 = v67;
  v84 = v68;
  v77 = v61;
  v78 = v62;
  v79 = v63;
  v80 = v64;
  v75 = v59;
  v76 = v60;
  sub_269E4FCA0(&v75, sub_269E4E8DC);
  sub_269E4FB5C(v31, sub_269E4F5C8);
}

uint64_t sub_269E4DE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v74 = a3;
  v73 = a2;
  v72 = a1;
  v81 = a6;
  sub_269E4ED60(0);
  v78 = v8;
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ED2C(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v80 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v67 - v13;
  v14 = type metadata accessor for PlaceholderBarView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F8C8(0);
  v69 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F8A0(0);
  v70 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F878(0);
  v71 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v67 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v67 - v30;
  sub_269E51E1C();
  v75 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = a4;
  v32 = *(a4 + 8);
  *&v16[*(v14 + 28)] = swift_getKeyPath();
  v33 = MEMORY[0x277CDF458];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *&v16[*(v14 + 32)] = swift_getKeyPath();
  sub_269E49C1C(0, &qword_281572610, MEMORY[0x277CE3AF8], v33);
  swift_storeEnumTagMultiPayload();
  v34 = v73;
  *v16 = v72;
  *(v16 + 1) = v34;
  v16[16] = v74 & 1;
  *(v16 + 3) = 0x4018000000000000;
  v35 = 1;
  v16[32] = (v32 & 1) == 0;
  v36 = sub_269E5151C();
  v37 = v76;
  sub_269E5102C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_269E500E8(v16, v19, type metadata accessor for PlaceholderBarView);
  v46 = &v19[*(v69 + 36)];
  *v46 = v36;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = sub_269E5153C();
  sub_269E5102C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_269E500E8(v19, v22, sub_269E4F8C8);
  v56 = &v22[*(v70 + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_269E519BC();
  sub_269E5111C();
  sub_269E500E8(v22, v29, sub_269E4F8A0);
  v57 = &v29[*(v71 + 36)];
  v58 = v87;
  *(v57 + 4) = v86;
  *(v57 + 5) = v58;
  *(v57 + 6) = v88;
  v59 = v83;
  *v57 = v82;
  *(v57 + 1) = v59;
  v60 = v85;
  *(v57 + 2) = v84;
  *(v57 + 3) = v60;
  sub_269E500E8(v29, v31, sub_269E4F878);
  v61 = v79;
  if ((v32 & 2) != 0)
  {
    v62 = v68;
    sub_269E4CC48(v37, v68);
    sub_269E4FD00(v62, v61, sub_269E4ED60);
    v35 = 0;
  }

  (*(v77 + 56))(v61, v35, 1, v78);
  sub_269E50150(v31, v26, sub_269E4F878);
  v63 = v80;
  sub_269E50080(v61, v80, sub_269E4ED2C);
  v64 = v81;
  sub_269E50150(v26, v81, sub_269E4F878);
  sub_269E4F7C8(0);
  sub_269E50080(v63, v64 + *(v65 + 48), sub_269E4ED2C);
  sub_269E4FB5C(v61, sub_269E4ED2C);
  sub_269E4FCA0(v31, sub_269E4F878);
  sub_269E4FB5C(v63, sub_269E4ED2C);
  sub_269E4FCA0(v26, sub_269E4F878);
}

id sub_269E4E5F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  qword_28035F338 = v0;
  return result;
}

uint64_t sub_269E4E658@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_269E50150(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetChartView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_269E500E8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SleepWidgetChartView);
  *a2 = sub_269E4E76C;
  a2[1] = v7;
  return result;
}

uint64_t sub_269E4E76C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepWidgetChartView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_269E4AAF0(a1, v6, a2);
}

void sub_269E4E7EC(uint64_t a1)
{
  if (!qword_281571FC0)
  {
    sub_269E49C1C(255, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
    sub_269E4F010();
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571FC0);
    }
  }
}

void sub_269E4E960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_269E510FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269E4E9EC(uint64_t a1)
{
  if (!qword_281572400)
  {
    sub_269E4EA78(255, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572400);
    }
  }
}

void sub_269E4EA78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_269E4EBB8(uint64_t a1)
{
  if (!qword_281571F40)
  {
    sub_269E4EC4C(255);
    sub_269E4EFC8(&qword_281571EB8, sub_269E4EC4C, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571F40);
    }
  }
}

void sub_269E4ED60(uint64_t a1)
{
  if (!qword_281572328)
  {
    sub_269E4EE38(255, &qword_2815723A8, sub_269E4EEBC, sub_269E0841C, MEMORY[0x277CDFAB8]);
    sub_269E4EA78(255, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572328);
    }
  }
}

void sub_269E4EE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_269E4EEBC(uint64_t a1)
{
  if (!qword_2815724E8)
  {
    sub_269E4EF48();
    sub_269E4FE94(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_269E510FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2815724E8);
    }
  }
}

void sub_269E4EF48()
{
  if (!qword_281572060)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572060);
    }
  }
}

uint64_t sub_269E4EFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269E4F010()
{
  result = qword_281571E70;
  if (!qword_281571E70)
  {
    sub_269E49C1C(255, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
    sub_269E4EFC8(&qword_281571E88, sub_269E4E880, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571E70);
  }

  return result;
}

void sub_269E4F110(uint64_t a1)
{
  if (!qword_281572058)
  {
    sub_269E4E7EC(255);
    sub_269E4FE94(255, &qword_281571DA0, &type metadata for SleepWidgetChartBar, MEMORY[0x277D83940]);
    sub_269E4EFC8(&qword_281571FC8, sub_269E4E7EC, MEMORY[0x277CE1138]);
    sub_269E4F208();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572058);
    }
  }
}

unint64_t sub_269E4F208()
{
  result = qword_281571D98;
  if (!qword_281571D98)
  {
    sub_269E4FE94(255, &qword_281571DA0, &type metadata for SleepWidgetChartBar, MEMORY[0x277D83940]);
    sub_269E4F2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D98);
  }

  return result;
}

unint64_t sub_269E4F2A4()
{
  result = qword_281572A38[0];
  if (!qword_281572A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281572A38);
  }

  return result;
}

void sub_269E4F320(uint64_t a1)
{
  if (!qword_281571FD0)
  {
    sub_269E4F3B4(255);
    sub_269E4EFC8(&qword_281571E98, sub_269E4F3B4, MEMORY[0x277CE14C0]);
    v1 = sub_269E5191C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571FD0);
    }
  }
}

void sub_269E4F410(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_269E4E8DC(255);
    sub_269E4F498(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269E4F498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_269E4EA78(255, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    a3(255);
    sub_269DFBBA4();
    v5 = sub_269E5198C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269E4F64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269E4EFC8(a4, a5, MEMORY[0x277CE1198]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_269E4F700(uint64_t a1)
{
  if (!qword_281571F50)
  {
    sub_269E4F794(255);
    sub_269E4EFC8(&qword_281571EC8, sub_269E4F794, MEMORY[0x277CE14C0]);
    v1 = sub_269E5194C();
    if (!v2)
    {
      atomic_store(v1, &qword_281571F50);
    }
  }
}

void sub_269E4F7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

unint64_t sub_269E4F8F0()
{
  result = qword_2815724E0;
  if (!qword_2815724E0)
  {
    sub_269E4F0E8(255);
    sub_269E4E7EC(255);
    sub_269E4FE94(255, &qword_281571DA0, &type metadata for SleepWidgetChartBar, MEMORY[0x277D83940]);
    sub_269E4EFC8(&qword_281571FC8, sub_269E4E7EC, MEMORY[0x277CE1138]);
    sub_269E4F208();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815724E0);
  }

  return result;
}

unint64_t sub_269E4FA14()
{
  result = qword_281572460;
  if (!qword_281572460)
  {
    sub_269E4F2F8(255);
    sub_269E4EFC8(&qword_281571FD8, sub_269E4F320, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572460);
  }

  return result;
}

void sub_269E4FAC4(uint64_t a1)
{
  if (!qword_28035F360)
  {
    sub_269E49C1C(255, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
    v1 = sub_269E5109C();
    if (!v2)
    {
      atomic_store(v1, &qword_28035F360);
    }
  }
}

uint64_t sub_269E4FB5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_269E4FBBC(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_269E4FBE4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepWidgetChartView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_269E4BEAC(a1, v6, v7, v8, v9, v12, a2, v10, v11);
}

uint64_t sub_269E4FCA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E4FD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E4FDBC@<X0>(uint64_t a1@<X8>)
{
  result = sub_269E5129C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_269E4FE20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_269E4EE38(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_269E4FE94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269E4FEE4()
{
  result = qword_281571D68;
  if (!qword_281571D68)
  {
    sub_269E4FE94(255, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D68);
  }

  return result;
}

uint64_t sub_269E4FF60@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepWidgetChartView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 33) & ~*(v5 + 80));

  return sub_269E4D874(a1, v6, v7, v8, v9, a2);
}

void sub_269E50014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

uint64_t sub_269E50080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E500E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E50150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E501B8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E49C1C(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E50238(uint64_t a1)
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

uint64_t sub_269E50270(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v28 = a2;
  v29 = a1;
  v2 = sub_269E50C6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E49C1C(0, &qword_281573C58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_269E50BDC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269E50C8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277CC9830], v9);
  sub_269E50BEC();
  (*(v10 + 8))(v12, v9);
  sub_269E50BAC();
  v17 = sub_269E50BCC();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  v18 = sub_269E50C4C();
  v19 = v28(v18);
  (*(v3 + 104))(v5, *MEMORY[0x277CC99B8], v2);
  v20 = sub_269E50C7C();
  (*(v3 + 8))(v5, v2);
  v21 = *(v19 + 16);
  if (v21 < v20)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v20 < 0)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_269E0E53C(v19, v19 + 32, v20, (2 * v21) | 1);
    v22 = v24;
    if (*(v19 + 16) == v20)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_269E0E53C(v19, v19 + 32, 0, (2 * v20) | 1);
    v26 = v25;

    v19 = v26;
    goto LABEL_5;
  }

  if (v20)
  {
    goto LABEL_8;
  }

  v22 = v19;
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_5:
  v30 = v22;
  sub_269E25B80(v19);
  (*(v14 + 8))(v16, v13);
  return v30;
}

void sub_269E50640(uint64_t a1)
{
  if (!qword_281572570)
  {
    sub_269E4EE38(255, &qword_281572168, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0338]);
    sub_269E506E8();
    v1 = sub_269E510BC();
    if (!v2)
    {
      atomic_store(v1, &qword_281572570);
    }
  }
}

unint64_t sub_269E506E8()
{
  result = qword_281572170;
  if (!qword_281572170)
  {
    sub_269E4EE38(255, &qword_281572168, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0338]);
    sub_269E4F8F0();
    sub_269E4FA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572170);
  }

  return result;
}

uint64_t sub_269E50810(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = sub_269E50E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D62718], v6);
  v10 = sub_269E51D1C();
  v12 = v11;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v10;
  *a4 = v12;
  return result;
}