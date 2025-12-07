uint64_t sub_269D0A9B8()
{
  v1 = v0;
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v50 - v13;
  v15 = sub_269D97580();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v51 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v50 - v21;
  v23 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v24 = v23;
  if (*(v1 + v23[8]) != 1)
  {
    v28 = (v1 + v23[17]);

    *v28 = 0;
    v28[1] = 0;
    v29 = (v1 + v24[16]);

    *v29 = 0;
    v29[1] = 0;
    return result;
  }

  v52 = v22;
  v50[1] = v23[5];
  (*(v3 + 16))(v6, v1 + v23[11], v2);
  *&v53 = v16;
  sub_269D97150();
  sub_269D97160();
  v25 = v15;
  v26 = v53;
  sub_269D971A0();
  sub_269D971B0();
  sub_269D97720();
  (*(v3 + 8))(v6, v2);
  v27 = *(v26 + 48);
  if (v27(v14, 1, v15) == 1)
  {
    v10 = v14;
LABEL_7:
    sub_269D0CB60(v10, &qword_280C0BB60, MEMORY[0x277CC9578]);
    v32 = (v1 + v24[17]);

    v53 = xmmword_269DA7300;
    *v32 = xmmword_269DA7300;
    v33 = (v1 + v24[16]);

    *v33 = v53;
    return result;
  }

  v31 = *(v26 + 32);
  v31(v52, v14, v15);
  sub_269D0C00C(v10);
  if (v27(v10, 1, v15) == 1)
  {
    (*(v53 + 8))(v52, v15);
    goto LABEL_7;
  }

  v34 = v51;
  v31(v51, v10, v15);
  v35 = *(v1 + v24[12]);
  v36 = sub_269D974B0();
  v37 = v25;
  v38 = [v35 stringFromDate_];

  v39 = sub_269D9A630();
  v41 = v40;

  v42 = (v1 + v24[17]);

  *v42 = v39;
  v42[1] = v41;
  v43 = sub_269D974B0();
  v44 = [v35 stringFromDate_];

  v45 = sub_269D9A630();
  v47 = v46;

  v48 = *(v53 + 8);
  v48(v34, v37);
  v48(v52, v37);
  v49 = (v1 + v24[16]);

  *v49 = v45;
  v49[1] = v47;
  return result;
}

uint64_t (*SleepScheduleComponentsViewModel.gregorianCalendar.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for SleepScheduleComponentsViewModel(0);
  return sub_269D0CBBC;
}

id SleepScheduleComponentsViewModel.timeFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 24));

  return v1;
}

uint64_t SleepScheduleComponentsViewModel.timeFormatter.setter(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277CC9578];
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  objc_storeStrong((v1 + v9[6]), a1);
  sub_269D97720();
  v10 = sub_269D0C704(v8, v1);
  v12 = v11;
  sub_269D0CB60(v8, &qword_280C0BB60, v4);
  v13 = (v2 + v9[18]);

  *v13 = v10;
  v13[1] = v12;
  sub_269D97720();
  v14 = sub_269D0C704(v8, v2);
  v16 = v15;

  sub_269D0CB60(v8, &qword_280C0BB60, v4);
  v17 = (v2 + v9[19]);

  *v17 = v14;
  v17[1] = v16;
  return result;
}

void (*SleepScheduleComponentsViewModel.timeFormatter.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  a1[1] = v5;
  a1[2] = type metadata accessor for SleepScheduleComponentsViewModel(0);
  return sub_269D0B108;
}

void sub_269D0B108(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    v3 = a1[2];
    v4 = *a1;
    sub_269D97720();
    v5 = sub_269D0C704(v2, v4);
    v7 = v6;
    v8 = MEMORY[0x277CC9578];
    sub_269D0CB60(v2, &qword_280C0BB60, MEMORY[0x277CC9578]);
    v9 = (v4 + *(v3 + 72));

    *v9 = v5;
    v9[1] = v7;
    sub_269D97720();
    v10 = sub_269D0C704(v2, v4);
    v12 = v11;
    sub_269D0CB60(v2, &qword_280C0BB60, v8);
    v13 = (v4 + *(v3 + 76));

    *v13 = v10;
    v13[1] = v12;
  }

  free(v2);
}

void *SleepScheduleComponentsViewModel.validScheduleRange.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t (*SleepScheduleComponentsViewModel.validScheduleRange.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 28);
  return sub_269D0B2B8;
}

uint64_t sub_269D0B2B8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = *(result + 8);
    if (*(*result + *(result + 16)))
    {
      v4 = sub_269D09440(v2 + v3[9], v2 + v3[10]) & 1;
      result = sub_269D09680();
      v5 = v4 | 2;
      if ((result & 1) == 0)
      {
        v5 = v4;
      }

      *(v2 + v3[15]) = v5;
      if (v5)
      {
        v7 = 0;
        v6 = 1;
        goto LABEL_11;
      }

      if (v5)
      {
        v6 = 0;
        v7 = 1;
LABEL_11:
        *(v2 + v3[13]) = v6;
        *(v2 + v3[14]) = v7;
        return result;
      }
    }

    else
    {
      *(v2 + v3[15]) = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  return result;
}

uint64_t (*SleepScheduleComponentsViewModel.includeDayLabelsInHeader.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for SleepScheduleComponentsViewModel(0);
  return sub_269D0CBBC;
}

uint64_t SleepScheduleComponentsViewModel.roundedBedtimeComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 36);
  v4 = sub_269D971F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_269D0B460(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  (*(v5 + 24))(a2 + *(v10 + 36), v9, v4);
  sub_269D0B984();
  return (*(v5 + 8))(v9, v4);
}

void (*SleepScheduleComponentsViewModel.roundedBedtimeComponents.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *(a1 + 8) = v5;
  v6 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v6 + 36);
  return sub_269D0B624;
}

void sub_269D0B624(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    goto LABEL_15;
  }

  v3 = a1[2];
  v4 = *a1;
  if (!*(*a1 + v3[7]))
  {
    *(v4 + v3[15]) = 0;
LABEL_13:
    v9 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v5 = a1;
  v6 = sub_269D09440(v4 + *(a1 + 6), v4 + v3[10]) & 1;
  v7 = sub_269D09680();
  v8 = v6 | 2;
  if ((v7 & 1) == 0)
  {
    v8 = v6;
  }

  *(v4 + v3[15]) = v8;
  if (v8)
  {
    v10 = 0;
    v9 = 1;
    goto LABEL_11;
  }

  if (!v8)
  {
    a1 = v5;
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 1;
LABEL_11:
  a1 = v5;
LABEL_14:
  v2 = a1[1];
  *(v4 + v3[13]) = v9;
  *(v4 + v3[14]) = v10;
  sub_269D97720();
  v11 = sub_269D0C704(v2, v4);
  v13 = v12;
  v14 = MEMORY[0x277CC9578];
  sub_269D0CB60(v2, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v15 = (v4 + v3[18]);

  *v15 = v11;
  v15[1] = v13;
  sub_269D97720();
  v16 = sub_269D0C704(v2, v4);
  v18 = v17;
  sub_269D0CB60(v2, &qword_280C0BB60, v14);
  v19 = (v4 + v3[19]);

  *v19 = v16;
  v19[1] = v18;
  sub_269D0A9B8();
LABEL_15:

  free(v2);
}

uint64_t SleepScheduleComponentsViewModel.roundedWakeUpComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 40);
  v4 = sub_269D971F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_269D0B86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  (*(v5 + 24))(a2 + *(v10 + 40), v9, v4);
  sub_269D0B984();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_269D0B984()
{
  v1 = v0;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v7 = v6;
  if (!*(v0 + v6[7]))
  {
    *(v0 + v6[15]) = 0;
LABEL_8:
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v8 = sub_269D09440(v0 + v6[9], v0 + v6[10]) & 1;
  v9 = sub_269D09680();
  v10 = v8 | 2;
  if ((v9 & 1) == 0)
  {
    v10 = v8;
  }

  *(v0 + v7[15]) = v10;
  if (v10)
  {
    v12 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = 0;
  v12 = 1;
LABEL_10:
  *(v0 + v7[13]) = v11;
  *(v0 + v7[14]) = v12;
  sub_269D97720();
  v13 = sub_269D0C704(v5, v0);
  v15 = v14;
  v16 = MEMORY[0x277CC9578];
  sub_269D0CB60(v5, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v17 = (v1 + v7[18]);

  *v17 = v13;
  v17[1] = v15;
  sub_269D97720();
  v18 = sub_269D0C704(v5, v1);
  v20 = v19;
  sub_269D0CB60(v5, &qword_280C0BB60, v16);
  v21 = (v1 + v7[19]);

  *v21 = v18;
  v21[1] = v20;
  return sub_269D0A9B8();
}

void (*SleepScheduleComponentsViewModel.roundedWakeUpComponents.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *(a1 + 8) = v5;
  v6 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v6 + 40);
  return sub_269D0BC28;
}

void sub_269D0BC28(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    goto LABEL_15;
  }

  v3 = a1[2];
  v4 = *a1;
  if (!*(*a1 + v3[7]))
  {
    *(v4 + v3[15]) = 0;
LABEL_13:
    v9 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v5 = a1;
  v6 = sub_269D09440(v4 + v3[9], v4 + *(a1 + 6)) & 1;
  v7 = sub_269D09680();
  v8 = v6 | 2;
  if ((v7 & 1) == 0)
  {
    v8 = v6;
  }

  *(v4 + v3[15]) = v8;
  if (v8)
  {
    v10 = 0;
    v9 = 1;
    goto LABEL_11;
  }

  if (!v8)
  {
    a1 = v5;
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 1;
LABEL_11:
  a1 = v5;
LABEL_14:
  *(v4 + v3[13]) = v9;
  v2 = a1[1];
  *(v4 + v3[14]) = v10;
  sub_269D97720();
  v11 = sub_269D0C704(v2, v4);
  v13 = v12;
  v14 = MEMORY[0x277CC9578];
  sub_269D0CB60(v2, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v15 = (v4 + v3[18]);

  *v15 = v11;
  v15[1] = v13;
  sub_269D97720();
  v16 = sub_269D0C704(v2, v4);
  v18 = v17;
  sub_269D0CB60(v2, &qword_280C0BB60, v14);
  v19 = (v4 + v3[19]);

  *v19 = v16;
  v19[1] = v18;
  sub_269D0A9B8();
LABEL_15:

  free(v2);
}

uint64_t SleepScheduleComponentsViewModel.wakeUpComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 44);
  v4 = sub_269D971F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_269D0BE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  (*(v5 + 24))(a2 + *(v10 + 44), v9, v4);
  sub_269D0A9B8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t (*SleepScheduleComponentsViewModel.wakeUpComponents.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for SleepScheduleComponentsViewModel(0);
  return sub_269D0BFE0;
}

uint64_t sub_269D0BFE0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_269D0A9B8();
  }

  return result;
}

uint64_t sub_269D0C00C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  sub_269D0C8FC(0, &qword_28034E048, MEMORY[0x277CC8990]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v42 = &v37 - v4;
  v5 = sub_269D971F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - v11;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v37 - v15;
  v17 = sub_269D97580();
  v44 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v45 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  v21 = v20[5];
  v22 = v1 + v20[11];
  v38 = *(v6 + 16);
  v39 = v6 + 16;
  v38(v12, v22, v5);
  sub_269D97150();
  sub_269D97160();
  sub_269D971A0();
  sub_269D971B0();
  v43 = v21;
  v23 = v1;
  sub_269D97720();
  v24 = v17;
  v41 = v6;
  v25 = v6;
  v26 = v44;
  v27 = v5;
  v28 = *(v25 + 8);
  v28(v12, v27);
  if ((*(v26 + 48))(v16, 1, v24) == 1)
  {
    sub_269D0CB60(v16, &qword_280C0BB60, MEMORY[0x277CC9578]);
    return (*(v26 + 56))(v46, 1, 1, v24);
  }

  (*(v26 + 32))(v45, v16, v24);
  v29 = v23 + v20[9];
  v30 = v24;
  v31 = v42;
  Calendar.timeComponents(from:to:)(v29, v42);
  v32 = v41;
  if ((*(v41 + 48))(v31, 1, v27) == 1)
  {
    (*(v26 + 8))(v45, v30);
    sub_269D0CB60(v31, &qword_28034E048, MEMORY[0x277CC8990]);
    v24 = v30;
    return (*(v26 + 56))(v46, 1, 1, v24);
  }

  v34 = v40;
  (*(v32 + 32))(v40, v31, v27);
  v38(v12, v34, v27);
  v35 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
  sub_269D68968(v35, v34, v12);

  v36 = v45;
  sub_269D97730();
  v28(v34, v27);
  (*(v26 + 8))(v36, v30);
  return (v28)(v12, v27);
}

id SleepScheduleComponentsViewModel.dayLabelFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 48));

  return v1;
}

uint64_t sub_269D0C4E0(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  objc_storeStrong((a2 + *(v4 + 48)), v3);
  return sub_269D0A9B8();
}

void SleepScheduleComponentsViewModel.dayLabelFormatter.setter(void *a1)
{
  v2 = type metadata accessor for SleepScheduleComponentsViewModel(0);
  objc_storeStrong((v1 + *(v2 + 48)), a1);
  sub_269D0A9B8();
}

uint64_t (*SleepScheduleComponentsViewModel.dayLabelFormatter.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for SleepScheduleComponentsViewModel(0);
  return sub_269D0CBBC;
}

uint64_t SleepScheduleComponentsViewModel.bedtimeDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 64));

  return v1;
}

uint64_t SleepScheduleComponentsViewModel.wakeUpDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 68));

  return v1;
}

uint64_t SleepScheduleComponentsViewModel.roundedFormattedBedtimeTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 72));

  return v1;
}

uint64_t SleepScheduleComponentsViewModel.roundedFormattedWakeUpTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 76));

  return v1;
}

uint64_t sub_269D0C704(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v19 - v11;
  sub_269D0CAE0(a1, v19 - v11);
  v13 = (*(v5 + 48))(v12, 1, v4);
  result = 0;
  if (v13 != 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    v15 = *(a2 + *(type metadata accessor for SleepScheduleComponentsViewModel(0) + 24));
    v16 = sub_269D974B0();
    v17 = [v15 stringFromDate_];

    v18 = sub_269D9A630();
    (*(v5 + 8))(v8, v4);
    return v18;
  }

  return result;
}

void sub_269D0C8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269D0C978(uint64_t a1)
{
  sub_269D977A0();
  if (v1 <= 0x3F)
  {
    sub_269C1B0B8(319, &qword_280C0BF28, 0x277CCA968);
    if (v2 <= 0x3F)
    {
      sub_269C662B4(319);
      if (v3 <= 0x3F)
      {
        sub_269D971F0();
        if (v4 <= 0x3F)
        {
          sub_269D0CA90();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269D0CA90()
{
  if (!qword_280C0BF30)
  {
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0BF30);
    }
  }
}

uint64_t sub_269D0CAE0(uint64_t a1, uint64_t a2)
{
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D0CB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269D0C8FC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id WeatherPrefetchScheduler.init(sleepStore:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_onShouldPrefetch;
  sub_269CB9E90();
  swift_allocObject();
  *&v1[v4] = sub_269D98790();
  v5 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_onShouldCancel;
  swift_allocObject();
  *&v1[v5] = sub_269D98790();
  v6 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lastWakeUp;
  v7 = sub_269D97580();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer;
  sub_269D0CEAC(0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *&v2[v8] = v9;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v10 = sub_269D98250();
  __swift_project_value_buffer(v10, qword_280351208);
  v11 = sub_269D98230();
  v12 = sub_269D9AB80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = sub_269D9B4D0();
    v17 = sub_269C2EACC(v15, v16, &v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] initializing...", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D652460](v14, -1, -1);
    MEMORY[0x26D652460](v13, -1, -1);
  }

  *&v2[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_sleepStore] = a1;
  v18 = type metadata accessor for WeatherPrefetchScheduler(0);
  v23.receiver = v2;
  v23.super_class = v18;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  [v19 addObserver_];

  return v20;
}

void sub_269D0CEAC(uint64_t a1)
{
  if (!qword_280350928)
  {
    sub_269D0CF14(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_269D9B030();
    if (!v2)
    {
      atomic_store(v1, &qword_280350928);
    }
  }
}

void sub_269D0CF14(uint64_t a1)
{
  if (!qword_280350930)
  {
    sub_269C1B0B8(255, &qword_280350938, 0x277D6C0A8);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_280350930);
    }
  }
}

uint64_t sub_269D0CF7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = sub_269D9A900();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_269D9A8E0();
  v14 = a1;

  v15 = sub_269D9A8D0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a5;
  sub_269C79F94(0, 0, v12, &unk_269DA7410, v16);
}

uint64_t sub_269D0D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_269D9A8E0();
  v7[6] = sub_269D9A8D0();
  v9 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D0D168, v9, v8);
}

id sub_269D0D168()
{
  v27 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    result = [v2 sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;

    v6 = [v5 isAppleWatch];

    if (v6)
    {
      v7 = [v3 goodMorningAlertNotificationEnabled];
    }

    else
    {
      v7 = [v3 goodMorningScreenEnabled];
    }

    if (v7)
    {
      v16 = 1;
    }

    else
    {
      if (qword_28034D738 != -1)
      {
        swift_once();
      }

      v17 = sub_269D98250();
      __swift_project_value_buffer(v17, qword_280351208);
      v18 = sub_269D98230();
      v19 = sub_269D9AB80();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136446210;
        v22 = sub_269D9B4D0();
        v24 = sub_269C2EACC(v22, v23, &v26);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_269C18000, v18, v19, "[%{public}s] good morning disabled, not prefetching", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x26D652460](v21, -1, -1);
        MEMORY[0x26D652460](v20, -1, -1);
      }

      v16 = 0;
    }

    (*(v0 + 24))(v16);
  }

  else
  {

    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280351208);
    v9 = sub_269D98230();
    v10 = sub_269D9AB60();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136446210;
      v13 = sub_269D9B4D0();
      v15 = sub_269C2EACC(v13, v14, &v26);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] failed to fetch model, not prefetching", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D652460](v12, -1, -1);
      MEMORY[0x26D652460](v11, -1, -1);
    }

    (*(v0 + 24))(0);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_269D0D4C0()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = ObjectType;
  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_sleepStore];
  v4 = swift_allocObject();
  v4[2] = sub_269D10F80;
  v4[3] = v2;
  v4[4] = ObjectType;
  v8[4] = sub_269D1118C;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269C4D5F0;
  v8[3] = &block_descriptor_62;
  v5 = _Block_copy(v8);
  v6 = v0;

  [v3 sleepScheduleModelWithCompletion_];
  _Block_release(v5);
}

void sub_269D0D5F4(char a1, char *a2, uint64_t a3)
{
  v6 = sub_269D97580();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v13 = sub_269D98250();
    __swift_project_value_buffer(v13, qword_280351208);
    v14 = sub_269D98230();
    v15 = sub_269D9AB80();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136446210;
      v18 = sub_269D9B4D0();
      v28 = v7;
      v20 = sub_269C2EACC(v18, v19, aBlock);
      v7 = v28;

      *(v16 + 4) = v20;
      _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] scheduling next prefetch date", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D652460](v17, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }

    v21 = *&a2[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_sleepStore];
    v22 = *MEMORY[0x277D621E0];
    sub_269D97550();
    v23 = sub_269D974B0();
    (*(v7 + 8))(v12, v6);
    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;
    aBlock[4] = sub_269D10F88;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269D0E134;
    aBlock[3] = &block_descriptor_69;
    v25 = _Block_copy(aBlock);
    v26 = a2;

    [v21 nextEventWithIdentifier:v22 dueAfterDate:v23 completion:v25];
    _Block_release(v25);
  }

  else
  {
    v27 = *&a2[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer];
    MEMORY[0x28223BE20](v9, v10);
    *(&v28 - 2) = a2;
    os_unfair_lock_lock((v27 + 24));
    sub_269D11174((v27 + 16));
    os_unfair_lock_unlock((v27 + 24));
    sub_269CB9E90();
    sub_269D10F38(&qword_2803509C8, sub_269CB9E90, MEMORY[0x277CBCE18]);
    sub_269D98830();
  }
}

uint64_t sub_269D0D990(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v25 - v11;
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v25 - v15;
  v17 = sub_269D9A900();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_269D0CAE0(a1, v12);
  sub_269D9A8E0();
  v18 = a3;
  v19 = sub_269D9A8D0();
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_269D10F90(v12, v22 + v20);
  *(v22 + v21) = v18;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  sub_269C79F94(0, 0, v16, &unk_269DA7420, v22);
}

uint64_t sub_269D0DBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v6[5] = swift_task_alloc();
  v7 = sub_269D97580();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  sub_269D9A8E0();
  v6[10] = sub_269D9A8D0();
  v9 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D0DD00, v9, v8);
}

uint64_t sub_269D0DD00()
{
  v42 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];

  sub_269D0CAE0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_269C67C78(v0[5]);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280351208);
    v6 = sub_269D98230();
    v7 = sub_269D9AB80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v41 = v9;
      *v8 = 136446210;
      v10 = sub_269D9B4D0();
      v12 = sub_269C2EACC(v10, v11, &v41);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] no next wake up date, not prefetching", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D652460](v9, -1, -1);
      MEMORY[0x26D652460](v8, -1, -1);
    }
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    v17 = sub_269D98250();
    __swift_project_value_buffer(v17, qword_280351208);
    (*(v16 + 16))(v13, v14, v15);
    v18 = sub_269D98230();
    v19 = sub_269D9AB80();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[6];
    if (v20)
    {
      v39 = v0[6];
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v24 = 136446466;
      v25 = sub_269D9B4D0();
      v27 = sub_269C2EACC(v25, v26, &v41);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_269D974B0();
      v29 = [v28 hkspDescription];

      v30 = sub_269D9A630();
      v32 = v31;

      v33 = *(v22 + 8);
      v33(v21, v39);
      v34 = sub_269C2EACC(v30, v32, &v41);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_269C18000, v18, v19, "[%{public}s] next wake up is %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v40, -1, -1);
      MEMORY[0x26D652460](v24, -1, -1);
    }

    else
    {

      v33 = *(v22 + 8);
      v33(v21, v23);
    }

    v35 = v0[9];
    v36 = v0[6];
    sub_269D0E288(v35);
    v33(v35, v36);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_269D0E134(uint64_t a1, uint64_t a2, void *a3)
{
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    sub_269D97540();
    v11 = sub_269D97580();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_269D97580();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_269C67C78(v9);
}

void sub_269D0E288(uint64_t a1)
{
  v2 = v1;
  v67[1] = swift_getObjectType();
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v72 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v73 = v67 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v67[0] = v67 - v13;
  sub_269D10DD0(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14, v16);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v69 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v67 - v24;
  v28 = MEMORY[0x28223BE20](v26, v27);
  v30 = v67 - v29;
  v70 = v5[2];
  v71 = a1;
  v70(v67 - v29, a1, v4, v28);
  v68 = v5[7];
  v68(v30, 0, 1, v4);
  v31 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lastWakeUp;
  swift_beginAccess();
  v32 = *(v15 + 56);
  sub_269D0CAE0(v30, v18);
  v75 = v2;
  sub_269D0CAE0(v2 + v31, &v18[v32]);
  v74 = v5;
  v33 = v5[6];
  if (v33(v18, 1, v4) == 1)
  {
    sub_269C67C78(v30);
    if (v33(&v18[v32], 1, v4) == 1)
    {
      sub_269C67C78(v18);
LABEL_14:
      if (qword_28034D738 != -1)
      {
        swift_once();
      }

      v59 = sub_269D98250();
      __swift_project_value_buffer(v59, qword_280351208);
      v60 = sub_269D98230();
      v61 = sub_269D9AB80();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v76[0] = v63;
        *v62 = 136446210;
        v64 = sub_269D9B4D0();
        v66 = sub_269C2EACC(v64, v65, v76);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_269C18000, v60, v61, "[%{public}s] reschedule not needed, next wake up unchanged", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x26D652460](v63, -1, -1);
        MEMORY[0x26D652460](v62, -1, -1);
      }

      return;
    }

    goto LABEL_6;
  }

  sub_269D0CAE0(v18, v25);
  if (v33(&v18[v32], 1, v4) == 1)
  {
    sub_269C67C78(v30);
    (v74[1])(v25, v4);
LABEL_6:
    sub_269D10E50(v18);
    v34 = v72;
    goto LABEL_7;
  }

  v56 = v74;
  (v74[4])(v67[0], &v18[v32], v4);
  sub_269D10F38(&qword_2803509D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v57 = sub_269D9A560();
  v58 = v56[1];
  v58(v67[0], v4);
  sub_269C67C78(v30);
  v58(v25, v4);
  sub_269C67C78(v18);
  v34 = v72;
  if (v57)
  {
    goto LABEL_14;
  }

LABEL_7:
  v35 = v69;
  v36 = v70;
  (v70)(v69, v71, v4);
  v68(v35, 0, 1, v4);
  v37 = v75;
  swift_beginAccess();
  sub_269CB9F30(v35, v37 + v31);
  swift_endAccess();
  sub_269D10EAC(0x20000000000001uLL);
  v38 = v73;
  sub_269D974A0();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v39 = sub_269D98250();
  __swift_project_value_buffer(v39, qword_280351208);
  v36(v34, v38, v4);
  v40 = sub_269D98230();
  v41 = sub_269D9AB80();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76[0] = v72;
    *v42 = 136446466;
    v43 = sub_269D9B4D0();
    v45 = sub_269C2EACC(v43, v44, v76);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    v46 = sub_269D974B0();
    v47 = [v46 hkspDescription];

    v48 = sub_269D9A630();
    v49 = v34;
    v51 = v50;

    v52 = v74[1];
    v52(v49, v4);
    v53 = sub_269C2EACC(v48, v51, v76);

    *(v42 + 14) = v53;
    _os_log_impl(&dword_269C18000, v40, v41, "[%{public}s] scheduling prefetch for %s", v42, 0x16u);
    v54 = v72;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v54, -1, -1);
    v55 = v42;
    v38 = v73;
    MEMORY[0x26D652460](v55, -1, -1);
  }

  else
  {

    v52 = v74[1];
    v52(v34, v4);
  }

  sub_269D0EC20(v38);
  v52(v38, v4);
}

uint64_t sub_269D0EA70()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_sleepStore];
  v4 = swift_allocObject();
  v4[2] = sub_269D10CE8;
  v4[3] = v2;
  v4[4] = ObjectType;
  v8[4] = sub_269D10CF0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269C4D5F0;
  v8[3] = &block_descriptor_48;
  v5 = _Block_copy(v8);
  v6 = v0;

  [v3 sleepScheduleModelWithCompletion_];
  _Block_release(v5);
}

uint64_t sub_269D0EBA4(uint64_t result)
{
  if (result)
  {
    sub_269CB9E90();
    sub_269D10F38(&qword_2803509C8, sub_269CB9E90, MEMORY[0x277CBCE18]);
    return sub_269D98830();
  }

  return result;
}

void sub_269D0EC20(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer);
  v25 = v1;
  v26 = a1;
  v27 = ObjectType;
  os_unfair_lock_lock((v9 + 24));
  sub_269D10C8C((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v10 = sub_269D98250();
  __swift_project_value_buffer(v10, qword_280351208);
  (*(v5 + 16))(v8, a1, v4);
  v11 = sub_269D98230();
  v12 = sub_269D9AB80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136446466;
    v15 = sub_269D9B4D0();
    v17 = sub_269C2EACC(v15, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_269D974B0();
    v19 = [v18 hkspDescription];

    v20 = sub_269D9A630();
    v22 = v21;

    (*(v5 + 8))(v8, v4);
    v23 = sub_269C2EACC(v20, v22, v28);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] prefetch scheduled for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v14, -1, -1);
    MEMORY[0x26D652460](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

void sub_269D0EEFC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269D0F424(a1);
  v6 = objc_allocWithZone(MEMORY[0x277D6C0A8]);
  v7 = sub_269D9A5F0();
  v8 = [v6 initWithIdentifier_];

  *a1 = v8;
  if (v8)
  {
    v9 = sub_269D974B0();
    sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
    v10 = sub_269D9AC40();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a4;
    v14[4] = sub_269D10CAC;
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_269CECE18;
    v14[3] = &block_descriptor_26;
    v13 = _Block_copy(v14);

    [v8 scheduleForDate:v9 leewayInterval:v10 queue:v13 handler:20.0];
    _Block_release(v13);
  }
}

uint64_t sub_269D0F0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  v6[2] = a2;
  v6[3] = a3;
  return sub_269C71EBC(sub_269D10CCC, v6, "SleepHealthUI/WeatherPrefetchScheduler.swift", 44, 2u, 116);
}

void sub_269D0F138(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280351208);
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136446210;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] prefetch timer fired", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer);
    MEMORY[0x28223BE20](Strong, v12);
    os_unfair_lock_lock((v14 + 24));
    sub_269D11174((v14 + 16));
    if (v2)
    {
      os_unfair_lock_unlock((v14 + 24));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v14 + 24));
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;

    sub_269CB9E90();
    sub_269D10F38(&qword_2803509C8, sub_269CB9E90, MEMORY[0x277CBCE18]);
    sub_269D98830();
  }
}

void sub_269D0F424(void **a1)
{
  swift_getObjectType();
  v2 = *a1;
  if (*a1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] cancelling existing prefetch timer", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    [v2 invalidate];
  }

  *a1 = 0;
}

id WeatherPrefetchScheduler.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer];
  os_unfair_lock_lock((v1 + 24));
  sub_269D107F4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WeatherPrefetchScheduler(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id WeatherPrefetchScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WeatherPrefetchScheduler.sleepStore(_:sleepScheduleModelDidChange:)()
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12 - v4;
  v6 = sub_269D9A900();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_269D9A8E0();
  v7 = v0;
  v8 = sub_269D9A8D0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = ObjectType;
  sub_269C79F94(0, 0, v5, &unk_269DA7388, v9);
}

uint64_t sub_269D0F950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_269D9A8E0();
  v5[4] = sub_269D9A8D0();
  v7 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D0F9E8, v7, v6);
}

uint64_t sub_269D0F9E8()
{
  v12 = v0;

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = sub_269D98230();
  v3 = sub_269D9AB80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_269D9B4D0();
    v8 = sub_269C2EACC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_269C18000, v2, v3, "[%{public}s] schedule model changed, rescheduling prefetch", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D652460](v5, -1, -1);
    MEMORY[0x26D652460](v4, -1, -1);
  }

  sub_269D0D4C0();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t WeatherPrefetchScheduler.sleepStore(_:sleepScheduleStateDidChange:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = sub_269D9A900();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_269D9A8E0();
  v10 = v2;
  v11 = sub_269D9A8D0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  v12[5] = v10;
  v12[6] = ObjectType;
  sub_269C79F94(0, 0, v8, &unk_269DA7398, v12);
}

uint64_t sub_269D0FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_269D9A8E0();
  v6[5] = sub_269D9A8D0();
  v8 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D0FEB8, v8, v7);
}

uint64_t sub_269D0FEB8()
{
  v19 = v0;
  v1 = *(v0 + 16);

  if (v1 == 6 || v1 == 1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136446466;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, &v18);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = NSStringFromHKSPSleepScheduleState();
      v12 = sub_269D9A630();
      v14 = v13;

      v15 = sub_269C2EACC(v12, v14, &v18);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] schedule state changed to %s, scheduling next prefetch", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    sub_269D0D4C0();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t WeatherPrefetchScheduler.sleepStore(_:sleepEventDidOccur:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = sub_269D9A900();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_269D9A8E0();
  v10 = a2;
  v11 = v2;
  v12 = sub_269D9A8D0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = ObjectType;
  sub_269C79F94(0, 0, v8, &unk_269DA73A8, v13);
}

uint64_t sub_269D1036C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_269D9A8E0();
  v6[5] = sub_269D9A8D0();
  v8 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D10408, v8, v7);
}

uint64_t sub_269D10408()
{
  v20 = v0;
  v1 = *(v0 + 16);

  v2 = [v1 identifier];
  v3 = sub_269D9A630();
  v5 = v4;
  if (v3 == sub_269D9A630() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_269D9B280();

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v9 = sub_269D98250();
  __swift_project_value_buffer(v9, qword_280351208);
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    v14 = sub_269D9B4D0();
    v16 = sub_269C2EACC(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] wake detection notification posted, prefetching immediately", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D652460](v13, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);
  }

  sub_269D0EA70();
LABEL_13:
  v17 = *(v0 + 8);

  return v17();
}

uint64_t type metadata accessor for WeatherPrefetchScheduler(uint64_t a1)
{
  result = qword_280350948;
  if (!qword_280350948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269D10820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269D10874(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C80D04;

  return sub_269D0F950(a1, v4, v5, v7, v6);
}

uint64_t sub_269D10934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_269C80D04;

  return sub_269D0FE1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_269D109FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_269C80D04;

  return sub_269D1036C(a1, v4, v5, v6, v7, v8);
}

void sub_269D10ACC(uint64_t a1)
{
  sub_269D10820(319, &qword_280C0BB60, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269D10CFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_269C80D04;

  return sub_269D0D0CC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_269D10DD0(uint64_t a1)
{
  if (!qword_2803509D0)
  {
    sub_269D10820(255, &qword_280C0BB60, MEMORY[0x277CC9578]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803509D0);
    }
  }
}

uint64_t sub_269D10E50(uint64_t a1)
{
  sub_269D10DD0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269D10EAC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D652470](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D652470](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269D10F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269D10F90(uint64_t a1, uint64_t a2)
{
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D11010(uint64_t a1)
{
  v3 = v2;
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_269C71C08;

  return sub_269D0DBB4(a1, v8, v9, v1 + v6, v10, v11);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_269D111E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D11228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269D112D0@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v6, a1, sizeof(v6));
  v5[344] = 0;
  memcpy(a2, a1, 0x158uLL);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  sub_269D13C34(a1, v5, sub_269D13110);
  sub_269D13C34(v6, v5, sub_269D13110);
  sub_269D14198(__dst, sub_269D13110);
}

uint64_t sub_269D113F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + 208);
  Text.ViewModel.hash(into:)(a1);
  Text.ViewModel.hash(into:)(a1);
  Text.ViewModel.hash(into:)(a1);
  sub_269D9A6A0();
  return MEMORY[0x26D6515B0](v10);
}

uint64_t sub_269D114A4()
{
  v1 = *(v0 + 208);
  sub_269D9B350();
  Text.ViewModel.hash(into:)(v3);
  Text.ViewModel.hash(into:)(v3);
  Text.ViewModel.hash(into:)(v3);
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269D11568(uint64_t a1)
{
  v2 = *(v1 + 208);
  sub_269D9B350();
  Text.ViewModel.hash(into:)(v4);
  Text.ViewModel.hash(into:)(v4);
  Text.ViewModel.hash(into:)(v4);
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](v2);
  return sub_269D9B390();
}

void *sub_269D11624@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[13];
  v22[12] = v1[12];
  v22[13] = v3;
  v22[14] = v1[14];
  v4 = v1[9];
  v22[8] = v1[8];
  v22[9] = v4;
  v5 = v1[11];
  v22[10] = v1[10];
  v22[11] = v5;
  v6 = v1[5];
  v22[4] = v1[4];
  v22[5] = v6;
  v7 = v1[7];
  v22[6] = v1[6];
  v22[7] = v7;
  v8 = v1[1];
  v22[0] = *v1;
  v22[1] = v8;
  v9 = v1[3];
  v22[2] = v1[2];
  v22[3] = v9;
  v10 = sub_269D99080();
  v16[328] = 0;
  sub_269D11808(v22, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, __src, sizeof(v24));
  sub_269D13C34(__dst, v25, sub_269D12A58);
  sub_269D14198(v24, sub_269D12A58);
  memcpy(&v16[7], __dst, 0x140uLL);
  v19[0] = v10;
  v19[1] = 0x4028000000000000;
  v20 = 0;
  memcpy(v21, v16, sizeof(v21));
  v11 = sub_269D99090();
  v18 = 0;
  sub_269D112D0(v19, v15);
  memcpy(v25, v15, 0x161uLL);
  memcpy(__src, v15, 0x161uLL);
  sub_269D13C34(v25, v14, sub_269D13074);
  sub_269D14198(__src, sub_269D13074);
  sub_269D14198(v19, sub_269D13110);
  memcpy(&v17[7], v25, 0x161uLL);
  v12 = v18;
  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  return memcpy((a1 + 17), v17, 0x168uLL);
}

uint64_t sub_269D11808@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v56 = *(a1 + 216);
  *&v57 = *(a1 + 29);
  sub_269D131A4(0, &qword_280350A90, &qword_280350A98, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_269D99E70();
  sub_269D9A180();
  sub_269D98AC0();
  v4 = a1[11];
  v84 = a1[10];
  v85 = v4;
  v86 = a1[12];
  v87 = *(a1 + 26);
  v5 = a1[7];
  v80 = a1[6];
  v81 = v5;
  v6 = a1[9];
  v82 = a1[8];
  v83 = v6;
  v7 = a1[3];
  v76 = a1[2];
  v77 = v7;
  v8 = a1[5];
  v78 = a1[4];
  v79 = v8;
  v9 = a1[1];
  v74 = *a1;
  v75 = v9;
  if ((v87 & 4) != 0)
  {
    *&__src[0] = v88;
    *(&__src[0] + 1) = v89;
    *&__src[1] = v90;
    *(&__src[1] + 1) = v91;
    __src[2] = v92;
    LOBYTE(__src[3]) = 1;
    sub_269D13B7C(0, &qword_2803509F8, &type metadata for ScheduleComponentView.VerticalBar, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269D1320C();
  }

  else
  {
    sub_269D13B7C(0, &qword_2803509F8, &type metadata for ScheduleComponentView.VerticalBar, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269D1320C();
    memset(__src, 0, 49);
  }

  sub_269D992D0();
  v25 = v56;
  v26 = v57;
  v10 = v58;
  v11 = v59;
  __src[10] = v84;
  __src[11] = v85;
  __src[12] = v86;
  *&__src[13] = v87;
  __src[6] = v80;
  __src[7] = v81;
  __src[8] = v82;
  __src[9] = v83;
  __src[2] = v76;
  __src[3] = v77;
  __src[4] = v78;
  __src[5] = v79;
  __src[0] = v74;
  __src[1] = v75;
  v12 = swift_allocObject();
  v13 = a1[13];
  v12[13] = a1[12];
  v12[14] = v13;
  v12[15] = a1[14];
  v14 = a1[9];
  v12[9] = a1[8];
  v12[10] = v14;
  v15 = a1[11];
  v12[11] = a1[10];
  v12[12] = v15;
  v16 = a1[5];
  v12[5] = a1[4];
  v12[6] = v16;
  v17 = a1[7];
  v12[7] = a1[6];
  v12[8] = v17;
  v18 = a1[1];
  v12[1] = *a1;
  v12[2] = v18;
  v19 = a1[3];
  v12[3] = a1[2];
  v12[4] = v19;
  sub_269D1338C(a1, &v56);
  v20 = sub_269D9A180();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_269D1330C;
  *(v23 + 24) = v12;
  v45[10] = __src[10];
  v45[11] = __src[11];
  v45[12] = __src[12];
  *&v46 = *&__src[13];
  v45[6] = __src[6];
  v45[7] = __src[7];
  v45[8] = __src[8];
  v45[9] = __src[9];
  v45[2] = __src[2];
  v45[3] = __src[3];
  v45[4] = __src[4];
  v45[5] = __src[5];
  v45[0] = __src[0];
  v45[1] = __src[1];
  *(&v46 + 1) = sub_269D48D78;
  *&v47 = 0;
  *(&v47 + 1) = v20;
  v48 = v22;
  v41 = __src[12];
  v42 = v46;
  v43 = v47;
  v44 = v22;
  v37 = __src[8];
  v38 = __src[9];
  v39 = __src[10];
  v40 = __src[11];
  v33 = __src[4];
  v34 = __src[5];
  v35 = __src[6];
  v36 = __src[7];
  v29 = __src[0];
  v30 = __src[1];
  v31 = __src[2];
  v32 = __src[3];
  v49[10] = __src[10];
  v49[11] = __src[11];
  v49[12] = __src[12];
  v49[6] = __src[6];
  v49[7] = __src[7];
  v49[8] = __src[8];
  v49[9] = __src[9];
  v49[2] = __src[2];
  v49[3] = __src[3];
  v49[4] = __src[4];
  v49[5] = __src[5];
  v49[0] = __src[0];
  v49[1] = __src[1];
  v50 = *&__src[13];
  v51 = sub_269D48D78;
  v52 = 0;
  v53 = v20;
  v54 = v22;
  sub_269D133CC(&v74, &v56);
  sub_269D13C34(v45, &v56, sub_269D12BD0);
  sub_269D14198(v49, sub_269D12BD0);
  v28[272] = v11;
  __src[12] = v41;
  __src[13] = v42;
  __src[14] = v43;
  *&__src[15] = v22;
  __src[8] = v37;
  __src[9] = v38;
  __src[10] = v39;
  __src[11] = v40;
  __src[4] = v33;
  __src[5] = v34;
  __src[6] = v35;
  __src[7] = v36;
  __src[0] = v29;
  __src[1] = v30;
  __src[2] = v31;
  __src[3] = v32;
  *(&__src[15] + 1) = sub_269D133C4;
  *&__src[16] = v23;
  memcpy(&v28[7], __src, 0x108uLL);
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  memcpy((a2 + 49), v28, 0x10FuLL);
  v68 = v41;
  v69 = v42;
  v70 = v43;
  v64 = v37;
  v65 = v38;
  v66 = v39;
  v67 = v40;
  v60 = v33;
  v61 = v34;
  v62 = v35;
  v63 = v36;
  v56 = v29;
  v57 = v30;
  v58 = v31;
  v59 = v32;
  v71 = v44;
  v72 = sub_269D133C4;
  v73 = v23;
  sub_269D13C34(__src, v27, sub_269D12B88);
  sub_269D14198(&v56, sub_269D12B88);
}

uint64_t sub_269D11E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_269D1385C(0);
  v4 = v3;
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v53 = &v46 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v46 - v16;
  sub_269D13828(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v46 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v46 - v31;
  sub_269D9A8E0();
  v49 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = *(a1 + 208);
  if (v33)
  {
    sub_269D122E4();
    sub_269D13BD0(v17, v32);
    v34 = *(v52 + 7);
    v34(v32, 0, 1, v4);
  }

  else
  {
    v34 = *(v52 + 7);
    v34(v32, 1, 1, v4);
  }

  sub_269D124EC();
  sub_269D126F4();
  if (v33)
  {
    v35 = 1;
  }

  else
  {
    sub_269D122E4();
    sub_269D13BD0(v17, v28);
    v35 = 0;
  }

  v34(v28, v35, 1, v4);
  v36 = v32;
  sub_269D13C34(v32, v24, sub_269D13828);
  sub_269D13C34(v13, v17, sub_269D1385C);
  v37 = v53;
  v38 = v51;
  sub_269D13C34(v53, v51, sub_269D1385C);
  v39 = v48;
  sub_269D13C34(v28, v48, sub_269D13828);
  v40 = v24;
  v52 = v24;
  v47 = v13;
  v41 = v37;
  v42 = v50;
  sub_269D13C34(v40, v50, sub_269D13828);
  sub_269D137A4(0);
  v44 = v43;
  sub_269D13C34(v17, v42 + *(v43 + 48), sub_269D1385C);
  sub_269D13C34(v38, v42 + *(v44 + 64), sub_269D1385C);
  sub_269D13C34(v39, v42 + *(v44 + 80), sub_269D13828);
  sub_269D14198(v28, sub_269D13828);
  sub_269D14198(v41, sub_269D1385C);
  sub_269D14198(v47, sub_269D1385C);
  sub_269D14198(v36, sub_269D13828);
  sub_269D14198(v39, sub_269D13828);
  sub_269D14198(v38, sub_269D1385C);
  sub_269D14198(v17, sub_269D1385C);
  sub_269D14198(v52, sub_269D13828);
}

uint64_t sub_269D122E4()
{
  sub_269D138A4(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 144);
  v6 = *(v0 + 176);
  v21 = *(v0 + 160);
  v22 = v6;
  v7 = *(v0 + 176);
  v23 = *(v0 + 192);
  v8 = *(v0 + 112);
  v19[6] = *(v0 + 96);
  v19[7] = v8;
  v9 = *(v0 + 144);
  v20[0] = *(v0 + 128);
  v20[1] = v9;
  v10 = *(v0 + 48);
  v19[2] = *(v0 + 32);
  v19[3] = v10;
  v11 = *(v0 + 80);
  v19[4] = *(v0 + 64);
  v19[5] = v11;
  v12 = *(v0 + 16);
  v19[0] = *v0;
  v19[1] = v12;
  v14 = v20[0];
  v15 = v5;
  v24 = *(v0 + 208);
  v16 = v21;
  v17 = v7;
  sub_269D13C9C(v20, v25);
  static Text.create(_:)(&v14, v4);
  v25[0] = v14;
  v25[1] = v15;
  v25[2] = v16;
  v25[3] = v17;
  sub_269D13CF8(v25);
  v18 = v23;
  sub_269D133CC(v19, &v14);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  v14 = v18;

  MEMORY[0x26D650930](0x74786554796144, 0xE700000000000000);

  sub_269D13D4C(v19);
  sub_269D14090(&qword_280350B38, sub_269D138A4, sub_269D13D7C, MEMORY[0x277CE1550]);
  sub_269D99BB0();

  return sub_269D14198(v4, sub_269D138A4);
}

uint64_t sub_269D124EC()
{
  sub_269D138A4(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 176);
  v6 = *(v0 + 192);
  v7 = *(v0 + 144);
  v30 = *(v0 + 160);
  v31 = v5;
  v32 = v6;
  v8 = *(v0 + 112);
  v9 = *(v0 + 128);
  v10 = *(v0 + 80);
  v26 = *(v0 + 96);
  v27 = v8;
  v28 = v9;
  v29 = v7;
  v11 = *(v0 + 16);
  v12 = *(v0 + 48);
  v22 = *(v0 + 32);
  v23 = v12;
  v13 = *(v0 + 48);
  v24 = *(v0 + 64);
  v25 = v10;
  v14 = *(v0 + 16);
  v21[0] = *v0;
  v21[1] = v14;
  v16 = v21[0];
  v17 = v11;
  v33 = *(v0 + 208);
  v18 = v22;
  v19 = v13;
  sub_269D13C9C(v21, v34);
  static Text.create(_:)(&v16, v4);
  v34[0] = v16;
  v34[1] = v17;
  v34[2] = v18;
  v34[3] = v19;
  sub_269D13CF8(v34);
  v20 = v32;
  sub_269D133CC(v21, &v16);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  v16 = v20;

  MEMORY[0x26D650930](0x786554656C746954, 0xE900000000000074);

  sub_269D13D4C(v21);
  sub_269D14090(&qword_280350B38, sub_269D138A4, sub_269D13D7C, MEMORY[0x277CE1550]);
  sub_269D99BB0();

  return sub_269D14198(v4, sub_269D138A4);
}

uint64_t sub_269D126F4()
{
  sub_269D138A4(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 176);
  v6 = *(v0 + 192);
  v7 = *(v0 + 144);
  v26 = *(v0 + 160);
  v27 = v5;
  v28 = v6;
  v8 = *(v0 + 80);
  v9 = *(v0 + 112);
  v22 = *(v0 + 96);
  v23 = v9;
  v10 = *(v0 + 112);
  v24 = *(v0 + 128);
  v25 = v7;
  v11 = *(v0 + 48);
  v20[2] = *(v0 + 32);
  v20[3] = v11;
  v12 = *(v0 + 80);
  v21[0] = *(v0 + 64);
  v21[1] = v12;
  v13 = *(v0 + 16);
  v20[0] = *v0;
  v20[1] = v13;
  v15 = v21[0];
  v16 = v8;
  v29 = *(v0 + 208);
  v17 = v22;
  v18 = v10;
  sub_269D13C9C(v21, v30);
  static Text.create(_:)(&v15, v4);
  v30[0] = v15;
  v30[1] = v16;
  v30[2] = v17;
  v30[3] = v18;
  sub_269D13CF8(v30);
  v19 = v28;
  sub_269D133CC(v20, &v15);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  v15 = v19;

  MEMORY[0x26D650930](0x74786554656D6954, 0xE800000000000000);

  sub_269D13D4C(v20);
  sub_269D14090(&qword_280350B38, sub_269D138A4, sub_269D13D7C, MEMORY[0x277CE1550]);
  sub_269D99BB0();

  return sub_269D14198(v4, sub_269D138A4);
}

uint64_t sub_269D128FC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 176);
  v12[10] = *(v2 + 160);
  v12[11] = v4;
  v12[12] = *(v2 + 192);
  v13 = *(v2 + 208);
  v5 = *(v2 + 112);
  v12[6] = *(v2 + 96);
  v12[7] = v5;
  v6 = *(v2 + 144);
  v12[8] = *(v2 + 128);
  v12[9] = v6;
  v7 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v7;
  v8 = *(v2 + 80);
  v12[4] = *(v2 + 64);
  v12[5] = v8;
  v9 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v9;
  *a2 = sub_269D991A0();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  sub_269D13708(0);
  return sub_269D11E8C(v12, a2 + *(v10 + 44));
}

void sub_269D1298C(char *a1@<X8>)
{
  v2 = *(sub_269D98DB0() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_269D99120();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  __asm { FMOV            V0.2D, #2.0 }

  *a1 = _Q0;
  v10 = [objc_opt_self() systemGray4Color];
  v11 = sub_269D99CC0();
  sub_269D13658(0);
  *&a1[*(v12 + 52)] = v11;
  *&a1[*(v12 + 56)] = 256;
}

void sub_269D12A8C(uint64_t a1)
{
  if (!qword_2803509E8)
  {
    sub_269D12AFC(255);
    sub_269D12B88(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803509E8);
    }
  }
}

void sub_269D12AFC(uint64_t a1)
{
  if (!qword_2803509F0)
  {
    sub_269D13B7C(255, &qword_2803509F8, &type metadata for ScheduleComponentView.VerticalBar, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v1 = sub_269D992E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803509F0);
    }
  }
}

void sub_269D12BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_269D98D00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269D12C5C(uint64_t a1)
{
  if (!qword_280350A10)
  {
    sub_269D12CF0(255);
    sub_269D144F0(&qword_280350A48, sub_269D12CF0, MEMORY[0x277CDF7D8]);
    v1 = sub_269D992B0();
    if (!v2)
    {
      atomic_store(v1, &qword_280350A10);
    }
  }
}

void sub_269D12CF0(uint64_t a1)
{
  if (!qword_280350A18)
  {
    sub_269D12BF8(255, &qword_280350A20, sub_269D12D78, MEMORY[0x277CE0F78]);
    sub_269D12E28();
    v1 = sub_269D98C00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350A18);
    }
  }
}

void sub_269D12D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_280350A28)
  {
    sub_269D12DD4(0, a2, a3);
    v3 = sub_269D99470();
    if (!v4)
    {
      atomic_store(v3, &qword_280350A28);
    }
  }
}

unint64_t sub_269D12DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350A30;
  if (!qword_280350A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350A30);
  }

  return result;
}

unint64_t sub_269D12E28()
{
  result = qword_280350A38;
  if (!qword_280350A38)
  {
    sub_269D12BF8(255, &qword_280350A20, sub_269D12D78, MEMORY[0x277CE0F78]);
    sub_269D144F0(&qword_280350A40, sub_269D12D78, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350A38);
  }

  return result;
}

void sub_269D12EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_280350A50)
  {
    sub_269D12DD4(0, a2, a3);
    sub_269D14090(&qword_280350A58, sub_269D12FA8, sub_269D13040, MEMORY[0x277D84F50]);
    v3 = sub_269D99410();
    if (!v4)
    {
      atomic_store(v3, &qword_280350A50);
    }
  }
}

void sub_269D12FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269D130A8(uint64_t a1)
{
  if (!qword_280350A78)
  {
    sub_269D13110(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280350A78);
    }
  }
}

void sub_269D13110(uint64_t a1)
{
  if (!qword_280350A80)
  {
    sub_269D12A58(255);
    sub_269D144F0(&qword_280350A88, sub_269D12A58, MEMORY[0x277CE14C0]);
    v1 = sub_269D99F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350A80);
    }
  }
}

void sub_269D131A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269C51E10(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_269D1320C()
{
  result = qword_280350AA0;
  if (!qword_280350AA0)
  {
    sub_269D13B7C(255, &qword_2803509F8, &type metadata for ScheduleComponentView.VerticalBar, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269D132B8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350AA0);
  }

  return result;
}

unint64_t sub_269D132B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350AA8;
  if (!qword_280350AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350AA8);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_269D13468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D134B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D13534(uint64_t a1)
{
  if (!qword_280350AB8)
  {
    sub_269D13074(255);
    sub_269D144F0(&qword_280350AC0, sub_269D13074, MEMORY[0x277CE14C0]);
    v1 = sub_269D99F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350AB8);
    }
  }
}

unint64_t sub_269D135CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350AC8;
  if (!qword_280350AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350AC8);
  }

  return result;
}

void sub_269D13658(uint64_t a1)
{
  if (!qword_280350AD0)
  {
    sub_269D98DB0();
    sub_269D144F0(&qword_28034E2F8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v1 = sub_269D989D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280350AD0);
    }
  }
}

void sub_269D13708(uint64_t a1)
{
  if (!qword_280350AD8)
  {
    sub_269D13770(255);
    v1 = sub_269D98BB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280350AD8);
    }
  }
}

void sub_269D137A4(uint64_t a1)
{
  if (!qword_280350AE8)
  {
    sub_269D13828(255);
    sub_269D1385C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280350AE8);
    }
  }
}

void sub_269D138A4(uint64_t a1)
{
  if (!qword_280350B00)
  {
    sub_269D13A78(255, &qword_280350B08, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0338]);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_280350B00);
    }
  }
}

void sub_269D13940(uint64_t a1)
{
  if (!qword_280350B10)
  {
    sub_269D139A0(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350B10);
    }
  }
}

void sub_269D139A0(uint64_t a1)
{
  if (!qword_280350B18)
  {
    sub_269D13A78(255, &qword_280350B20, sub_269D13AFC, sub_269C51E5C, MEMORY[0x277CDFAB8]);
    sub_269D131A4(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0], MEMORY[0x277CE0860]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_280350B18);
    }
  }
}

void sub_269D13A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_269D13AFC(uint64_t a1)
{
  if (!qword_280350B28)
  {
    sub_269D13B7C(255, &qword_280350B30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
    v1 = sub_269D99D50();
    if (!v2)
    {
      atomic_store(v1, &qword_280350B28);
    }
  }
}

void sub_269D13B7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_269D13BD0(uint64_t a1, uint64_t a2)
{
  sub_269D1385C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D13C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_269D13D7C()
{
  result = qword_280350B40;
  if (!qword_280350B40)
  {
    sub_269D13A78(255, &qword_280350B08, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0338]);
    sub_269D13E84(&qword_280350B48, sub_269D13940, sub_269D13F10, sub_269C419C0);
    sub_269D13F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350B40);
  }

  return result;
}

uint64_t sub_269D13E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
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

unint64_t sub_269D13F58()
{
  result = qword_280350B58;
  if (!qword_280350B58)
  {
    sub_269D13A78(255, &qword_280350B20, sub_269D13AFC, sub_269C51E5C, MEMORY[0x277CDFAB8]);
    sub_269D14090(&qword_280350B60, sub_269D13AFC, sub_269D14100, MEMORY[0x277CE0FB0]);
    sub_269D144F0(&qword_28034E0D8, sub_269C51E5C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350B58);
  }

  return result;
}

uint64_t sub_269D14090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
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

unint64_t sub_269D14100()
{
  result = qword_280350B68;
  if (!qword_280350B68)
  {
    sub_269D13B7C(255, &qword_280350B30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350B68);
  }

  return result;
}

uint64_t sub_269D14198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_269D141F8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v59[0] = *a1;
  v59[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v6 = v3;
  v60 = a1[2];
  v61 = v3;
  v7 = a1[5];
  v8 = a1[6];
  v62 = a1[4];
  v63 = v7;
  v9 = a1[7];
  v10 = a1[8];
  v64 = v8;
  v65 = v9;
  v11 = a1[9];
  v12 = a1[11];
  v68 = a1[10];
  v69 = v12;
  v66 = v10;
  v67 = v11;
  v13 = a2[1];
  v70[0] = *a2;
  v70[1] = v13;
  v14 = a2[3];
  v16 = *a2;
  v15 = a2[1];
  v70[2] = a2[2];
  v70[3] = v14;
  v17 = a2[5];
  v18 = a2[7];
  v19 = a2[8];
  v73 = a2[6];
  v74 = v18;
  v20 = a2[2];
  v21 = a2[3];
  v71 = a2[4];
  v72 = v17;
  v22 = a2[11];
  v23 = a2[9];
  v77 = a2[10];
  v78 = v22;
  v75 = v19;
  v76 = v23;
  v55 = v5;
  v56 = v4;
  v57 = v60;
  v58 = v6;
  v24 = *(a1 + 24);
  v25 = *(a1 + 25);
  v26 = *(a1 + 26);
  v27 = *(a2 + 24);
  v28 = *(a2 + 25);
  v29 = *(a2 + 26);
  v51 = v16;
  v52 = v15;
  v53 = v20;
  v54 = v21;
  sub_269D13C9C(v59, v80);
  sub_269D13C9C(v70, v80);
  v30 = _s7SwiftUI4TextV011SleepHealthB0E9ViewModelV2eeoiySbAF_AFtFZ_0(&v55, &v51);
  v79[0] = v51;
  v79[1] = v52;
  v79[2] = v53;
  v79[3] = v54;
  sub_269D13CF8(v79);
  v80[0] = v55;
  v80[1] = v56;
  v80[2] = v57;
  v80[3] = v58;
  sub_269D13CF8(v80);
  if (v30 && (v47 = v62, v48 = v63, v49 = v64, v50 = v65, v43 = v71, v44 = v72, v45 = v73, v46 = v74, sub_269D13C9C(&v62, &v39), sub_269D13C9C(&v71, &v39), v31 = _s7SwiftUI4TextV011SleepHealthB0E9ViewModelV2eeoiySbAF_AFtFZ_0(&v47, &v43), v51 = v43, v52 = v44, v53 = v45, v54 = v46, sub_269D13CF8(&v51), v55 = v47, v56 = v48, v57 = v49, v58 = v50, sub_269D13CF8(&v55), v31) && (v39 = v66, v40 = v67, v41 = v68, v42 = v69, v35 = v75, v36 = v76, v37 = v77, v38 = v78, sub_269D13C9C(&v66, v34), sub_269D13C9C(&v75, v34), v32 = _s7SwiftUI4TextV011SleepHealthB0E9ViewModelV2eeoiySbAF_AFtFZ_0(&v39, &v35), v43 = v35, v44 = v36, v45 = v37, v46 = v38, sub_269D13CF8(&v43), v47 = v39, v48 = v40, v49 = v41, v50 = v42, sub_269D13CF8(&v47), v32) && (v24 == v27 && v25 == v28 || (sub_269D9B280() & 1) != 0))
  {
    return v26 == v29;
  }

  else
  {
    return 0;
  }
}

void sub_269D1445C(uint64_t a1)
{
  if (!qword_280350B80)
  {
    sub_269D13770(255);
    sub_269D144F0(&qword_280350B88, sub_269D13770, MEMORY[0x277CE14C0]);
    v1 = sub_269D99FC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280350B80);
    }
  }
}

uint64_t sub_269D144F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

UIFontDescriptor __swiftcall UIFontDescriptor.addingSmallCapsAttributes()()
{
  isa = UIFontDescriptor.addingLowercaseSmallCapsAttributes()().super.isa;
  v1 = UIFontDescriptor.addingUppercaseSmallCapsAttributes()().super.isa;

  return v1;
}

id sub_269D14584(uint64_t a1)
{
  sub_269D14878(0, &unk_2803505B0, &qword_28034DEC0, type metadata accessor for AttributeName, MEMORY[0x277D84F70] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBE0;
  v2 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  sub_269D14818(0, &qword_280350B90, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269D9EBE0;
  sub_269D14878(0, &qword_280350B98, &qword_280350BA0, type metadata accessor for FeatureKey, MEMORY[0x277D83B88]);
  v4 = swift_initStackObject();
  v5 = *MEMORY[0x277D76908];
  *(v4 + 32) = *MEMORY[0x277D76908];
  v6 = MEMORY[0x277D76900];
  *(v4 + 16) = xmmword_269D9EBF0;
  v7 = *v6;
  *(v4 + 40) = a1;
  *(v4 + 48) = v7;
  *(v4 + 56) = 1;
  v8 = v2;
  v9 = v5;
  v10 = v7;
  v11 = sub_269C44388(v4);
  swift_setDeallocating();
  sub_269D148D4(0, &qword_280350BA0, type metadata accessor for FeatureKey, MEMORY[0x277D83B88]);
  swift_arrayDestroy();
  *(v3 + 32) = v11;
  sub_269D14818(0, &qword_2803505C0, MEMORY[0x277D83940]);
  *(inited + 64) = v12;
  *(inited + 40) = v3;
  sub_269C44468(inited);
  swift_setDeallocating();
  sub_269D14940(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_269D149C4(&qword_28034DBF8, type metadata accessor for AttributeName, &unk_269D9FC30);
  v13 = sub_269D9A480();

  v14 = [v17 fontDescriptorByAddingAttributes_];

  return v14;
}

void sub_269D14818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269D02144(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_269D14878(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_269D148D4(255, a3, a4, a5);
    v6 = sub_269D9B240();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269D148D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_269D14940(uint64_t a1)
{
  sub_269D148D4(0, &qword_28034DEC0, type metadata accessor for AttributeName, MEMORY[0x277D84F70] + 8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D149C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id RelativeWeekdayFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_269D14A40(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for RelativeWeekdayFormatter()) init];
  qword_280350BA8 = result;
  return result;
}

id static RelativeWeekdayFormatter.shared.getter()
{
  if (qword_28034D6B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280350BA8;

  return v1;
}

id sub_269D14ACC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D97650();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D977A0();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v40 - v13;
  v15 = sub_269D15040();
  v16 = sub_269D974B0();
  v17 = [v15 stringFromDate_];

  v18 = sub_269D9A630();
  v20 = v19;

  v21 = sub_269D150DC();
  v22 = sub_269D974B0();
  v23 = [v21 stringFromDate_];

  v24 = sub_269D9A630();
  v26 = v25;

  if (v18 == v24 && v20 == v26 || (sub_269D9B280() & 1) != 0)
  {

    v27 = sub_269D151B0();
    v28 = sub_269D974B0();
    v29 = [v27 stringFromDate_];

    v30 = sub_269D9A630();
    return v30;
  }

  result = [v2 calendar];
  if (result)
  {
    v32 = result;
    sub_269D97710();

    LOBYTE(v32) = sub_269D976A0();
    v33 = *(v43 + 8);
    v34 = v14;
    v35 = v44;
    v33(v34, v44);
    if ((v32 & 1) == 0)
    {
      goto LABEL_12;
    }

    result = [v2 calendar];
    if (result)
    {
      v36 = result;

      sub_269D97710();

      v37 = v40;
      sub_269D97630();
      v38 = Calendar.dayPeriod(for:in:)(a1);
      (*(v41 + 8))(v37, v42);
      v33(v10, v35);
      BSDayPeriod.simplified.getter(v38, &v45);
      if (v45 != 2)
      {
        return v18;
      }

      if (qword_280C0AE70 != -1)
      {
        swift_once();
      }

      v39 = qword_280C0D990;
      v18 = sub_269D972C0();

LABEL_12:

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_269D15040()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter);
  }

  else
  {
    v4 = sub_269D15240();
    [v4 setDateStyle_];
    [v4 setFormattingContext_];
    [v4 setDoesRelativeDateFormatting_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_269D150DC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter);
  }

  else
  {
    v4 = sub_269D15040();
    [v4 copy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269D158FC();
    swift_dynamicCast();
    [v8 setDoesRelativeDateFormatting_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_269D151B0()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter);
  }

  else
  {
    v4 = sub_269D15240();
    v5 = sub_269D9A5F0();
    [v4 setLocalizedDateFormatFromTemplate_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_269D15240()
{
  v1 = v0;
  sub_269D158A8(0, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v30 - v4;
  sub_269D158A8(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v30 - v12;
  v14 = sub_269D977A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v20 = [v1 calendar];
  if (v20)
  {
    v21 = v20;
    sub_269D97710();

    v22 = sub_269D976E0();
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    v22 = 0;
  }

  [v19 setCalendar_];

  v23 = [v1 calendar];
  if (v23)
  {
    v24 = v23;
    sub_269D97710();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v15 + 56))(v9, v25, 1, v14);
  sub_269CAF89C(v9, v13);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_269D97750();
    (*(v15 + 8))(v13, v14);
    v27 = sub_269D97650();
    v28 = *(v27 - 8);
    v29 = 0;
    if ((*(v28 + 48))(v5, 1, v27) != 1)
    {
      v29 = sub_269D97610();
      (*(v28 + 8))(v5, v27);
    }

    [v19 setLocale_];

    return v19;
  }

  return result;
}

id RelativeWeekdayFormatter.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RelativeWeekdayFormatter();
  return objc_msgSendSuper2(&v3, sel_init);
}

id RelativeWeekdayFormatter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RelativeWeekdayFormatter.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RelativeWeekdayFormatter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id RelativeWeekdayFormatter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RelativeWeekdayFormatter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_269D158A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269D158FC()
{
  result = qword_280C0BF28;
  if (!qword_280C0BF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C0BF28);
  }

  return result;
}

void sub_269D1598C(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_269D9AF50();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_269C75568(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_269D9AF10();
    }

    else
    {
      v3 = sub_269D9AF00();
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
        sub_269D19908(v31, v32, v33, a1);
        v12 = v11;
        v13 = [v11 integerValue];

        v14 = v29;
        v34 = v29;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_269C75568((v15 > 1), v16 + 1, 1);
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

          if (sub_269D9AF20())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          sub_269D1A530(0);
          v6 = sub_269D9A980();
          sub_269D9AF70();
          v6(v30, 0);
          if (v5 == v27)
          {
LABEL_32:
            sub_269D1A5A4(v31, v32, v33);
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
                sub_269D1A5A4(v8, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            sub_269D1A5A4(v8, v9, 0);
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

uint64_t SleepDayModel.SegmentModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D975C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepDayModel.SegmentModel.init(relativeInterval:absoluteInterval:preceedingGapDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  sub_269D975B0();
  v10 = type metadata accessor for SleepDayModel.SegmentModel(0);
  v11 = (a2 + v10[6]);
  *v11 = a3;
  v11[1] = a4;
  v12 = v10[5];
  v13 = sub_269D97010();
  result = (*(*(v13 - 8) + 32))(a2 + v12, a1, v13);
  *(a2 + v10[7]) = a5;
  return result;
}

uint64_t sub_269D15F20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D975C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *SleepDayModel.sleepMetrics.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_sleepMetrics);
  v2 = v1;
  return v1;
}

uint64_t sub_269D15FE4(uint64_t a1, uint64_t *a2)
{
  sub_269D169A0(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40CD0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D169C0(a1, v13, sub_269C40CD0);
  v14 = *a2;
  sub_269D1A4C8(v13, v7, sub_269C40CD0);
  (*(v10 + 56))(v7, 0, 1, v9);
  v15 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
  swift_beginAccess();
  sub_269D16A28(v7, v14 + v15);
  return swift_endAccess();
}

uint64_t sub_269D16170@<X0>(unint64_t a1@<X8>)
{
  sub_269D169A0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
  swift_beginAccess();
  sub_269D169C0(v1 + v11, v10, sub_269D169A0);
  sub_269C40CD0(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v10, 1, v12) != 1)
  {
    return sub_269D1A4C8(v10, a1, sub_269C40CD0);
  }

  sub_269D1A604(v10, sub_269D169A0);
  sub_269CDE604(*(v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_segmentModels), a1);
  sub_269D169C0(a1, v6, sub_269C40CD0);
  (*(v14 + 56))(v6, 0, 1, v13);
  swift_beginAccess();
  sub_269D16A28(v6, v1 + v11);
  return swift_endAccess();
}

uint64_t sub_269D16368(uint64_t a1)
{
  sub_269D169A0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D1A4C8(a1, v6, sub_269C40CD0);
  sub_269C40CD0(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
  swift_beginAccess();
  sub_269D16A28(v6, v1 + v8);
  return swift_endAccess();
}

void (*sub_269D1646C(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  sub_269D169A0(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[7] = v8;
  sub_269C40CD0(0);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[10] = v11;
  sub_269D16170(v11);
  return sub_269D16580;
}

void sub_269D16580(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_269D169C0(v2[10], v2[7], sub_269C40CD0);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
    swift_beginAccess();
    sub_269D16A28(v5, v7 + v8);
    swift_endAccess();
    sub_269D1A604(v4, sub_269C40CD0);
  }

  else
  {
    sub_269D1A4C8(v2[10], v2[7], sub_269C40CD0);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
    swift_beginAccess();
    sub_269D16A28(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

double sub_269D166F8()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration);
  if ((*(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration + 8) & 1) == 0)
  {
    return *v1;
  }

  result = sub_269CDF6B8(*(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_segmentModels));
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_269D16748(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration;
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t (*sub_269D16760(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = sub_269D166F8();
  return sub_269D167A8;
}

void *sub_269D167A8(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id SleepDayModel.init(segmentModels:sleepMetrics:)(uint64_t a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_currentDateProvider];
  v6 = HKSPCurrentDateProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *v5 = sub_269C79AA4;
  v5[1] = v7;
  v8 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
  sub_269C40CD0(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = &v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration];
  *v10 = 0;
  v10[8] = 1;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_significantTimeChangeObserver] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___timeFormatter] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___dateRangeWithYearFormatter] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___dateRangeWithoutYearFormatter] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___durationFormatter] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_segmentModels] = a1;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_sleepMetrics] = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for SleepDayModel(0);
  v11 = a2;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = qword_280C0AEF8;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  [qword_280C0D998 registerObserver_];

  return v14;
}

uint64_t sub_269D169C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D16A28(uint64_t a1, uint64_t a2)
{
  sub_269D169A0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D16AAC()
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] significant time changed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  type metadata accessor for SleepDayModel(0);
  sub_269D1A418(&unk_280C0B810, type metadata accessor for SleepDayModel, &protocol conformance descriptor for SleepDayModel);
  sub_269D98770();
  sub_269D98810();
}

id sub_269D16C74()
{
  v1 = v0;
  v2 = sub_269D97650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___timeFormatter;
  v8 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___timeFormatter);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___timeFormatter);
  }

  else
  {
    sub_269D97630();
    v10 = HKSPIsRemoveSpacesForTimeFormatEnabled();
    v11 = objc_opt_self();
    v12 = sub_269D9A5F0();
    v13 = sub_269D97610();
    v14 = [v11 dateFormatFromTemplate:v12 options:0 locale:v13];

    if (v14)
    {
      v15 = sub_269D9A630();
      v17 = v16;
    }

    else
    {
      v17 = 0xE500000000000000;
      v15 = 0x616D6D3A68;
    }

    v18 = sub_269D62560(v15, v17, v6, v10);

    (*(v3 + 8))(v6, v2);
    v19 = *(v1 + v7);
    *(v1 + v7) = v18;
    v9 = v18;

    v8 = 0;
  }

  v20 = v8;
  return v9;
}

id sub_269D16E5C(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
LABEL_5:
    v8 = v4;
    return v5;
  }

  result = [objc_opt_self() *a2];
  if (result)
  {
    v7 = *(v2 + v3);
    *(v2 + v3) = result;
    v5 = result;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_269D16EDC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___durationFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___durationFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___durationFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v4 setAllowedUnits_];
    [v4 setUnitsStyle_];
    [v4 setFormattingContext_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_269D16FD4(uint64_t (*a1)(void))
{
  v2 = sub_269D97580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D97010();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D16170(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_269D1A604(v10, sub_269C40CD0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = sub_269D16C74();
    a1();
    v18 = sub_269D974B0();
    (*(v3 + 8))(v6, v2);
    v19 = [v17 stringFromDate_];

    v20 = sub_269D9A630();
    (*(v12 + 8))(v15, v11);
    return v20;
  }
}

void sub_269D17274(uint64_t (*a1)(void))
{
  a1();
  v1 = sub_269D16C74();
  sub_269D9A710();
}

id sub_269D172E8()
{
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269D97010();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D16170(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v9 = 2957357;
    sub_269D1A604(v3, sub_269C40CD0);
    return v9;
  }

  (*(v5 + 32))(v8, v3, v4);
  result = [objc_opt_self() hk_hourMinuteOnlyDateIntervalFormatter];
  if (result)
  {
    v11 = result;
    v12 = sub_269D96F70();
    v13 = [v11 stringFromDateInterval_];

    if (v13)
    {
      v9 = sub_269D9A630();
    }

    else
    {
      v9 = 2957357;
    }

    (*(v5 + 8))(v8, v4);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_269D1750C()
{
  v1 = v0;
  v2 = sub_269D97780();
  v52 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D97580();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v49 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v44 - v11;
  v13 = sub_269D977A0();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_269D97010();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D16170(v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v45 = v21;
    v46 = v2;
    (*(v22 + 32))(v25, v20, v21);
    v27 = sub_269D16E48();
    v28 = sub_269D96F70();
    v29 = [v27 stringFromDateInterval_];

    if (v29)
    {
      v44[0] = sub_269D9A630();
      v31 = v30;
    }

    else
    {
      v44[0] = 0;
      v31 = 0;
    }

    sub_269D97770();
    sub_269D96FD0();
    v44[1] = v1;
    v32 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_currentDateProvider);

    v34 = v49;
    v32(v33);

    v35 = v52;
    v36 = v46;
    (*(v52 + 104))(v5, *MEMORY[0x277CC9988], v46);
    v37 = sub_269D97760();
    (*(v35 + 8))(v5, v36);
    v38 = v51;
    v39 = *(v50 + 8);
    v39(v34, v51);
    v39(v12, v38);
    (*(v47 + 8))(v16, v48);
    if (v37)
    {

      v40 = sub_269D16E34();
      v41 = sub_269D96F70();
      v42 = [v40 stringFromDateInterval_];

      if (v42)
      {
        v26 = sub_269D9A630();

LABEL_10:
        (*(v22 + 8))(v25, v45);
        return v26;
      }
    }

    else
    {
      v26 = v44[0];
      if (v31)
      {
        goto LABEL_10;
      }
    }

    v26 = 2957357;
    (*(v22 + 8))(v25, v45);

    return v26;
  }

  v26 = 2957357;
  sub_269D1A604(v20, sub_269C40CD0);
  return v26;
}

void sub_269D17A24()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_sleepMetrics);
  if (v1)
  {
    v2 = [v1 averageSleepDuration];
    if (v2)
    {
      v3 = v2;
      [v2 _value];
      v5 = v4;

      if (v5 > 0.0)
      {
        v6 = sub_269D16EDC();
        v7 = [v6 stringFromTimeInterval_];

        if (v7)
        {
          sub_269D9A630();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_269D17AF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_sleepMetrics);
  if (v1)
  {
    v2 = [v1 averageSleepDuration];
    if (v2)
    {
      v3 = v2;
      [v2 _value];
      v5 = v4;

      if (v5 > 0.0)
      {
        v6 = sub_269D16EDC();
        v7 = [v6 stringFromTimeInterval_];

        if (!v7)
        {
          __break(1u);
          return;
        }

        sub_269D9A630();
      }
    }
  }

  sub_269D9A700();
}

id SleepDayModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepDayModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepDayModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D17DE8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SleepDayModel(0);
  result = sub_269D98770();
  *a2 = result;
  return result;
}

id HKSleepDaySummary.sleepDayModel.getter()
{
  v1 = sub_269D17F0C();
  v2 = objc_opt_self();
  sub_269C4E764();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269DA2A30;
  *(v3 + 32) = v0;
  sub_269C1B0B8(0, &qword_280C0AED8, 0x277CCD9B0);
  v4 = v0;
  v5 = sub_269D9A7D0();

  v6 = [v2 sleepMetricsForDaySummaries_];

  v7 = objc_allocWithZone(type metadata accessor for SleepDayModel(0));
  return SleepDayModel.init(segmentModels:sleepMetrics:)(v1, v6);
}

void *sub_269D17F0C()
{
  v127 = type metadata accessor for SleepDayModel.SegmentModel(0);
  v121 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v1);
  v120 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v119 = &v104 - v5;
  MEMORY[0x28223BE20](v6, v7);
  v114 = &v104 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v113 = &v104 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v104 - v14;
  v118 = sub_269D97580();
  v16 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v17);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v125 = &v104 - v22;
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_269D97010();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v124 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v104 - v33;
  sub_269D18C3C(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_269D1A604(v26, sub_269C40CD0);
    return MEMORY[0x277D84F90];
  }

  v122 = v19;
  v104 = v28;
  v35 = *(v28 + 32);
  v117 = v34;
  v36 = v27;
  v35(v34, v26, v27);
  v37 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_269C1B0B8(0, &qword_28034DF10, 0x277CCABB0);
  sub_269D1A460();
  v38 = sub_269D9A960();

  sub_269D1598C(v38);
  v40 = v39;

  v41 = sub_269CF21A0(v40);

  v42 = [v0 periods];
  sub_269C1B0B8(0, &qword_280C0B4C8, 0x277CCD9D8);
  v43 = sub_269D9A7E0();

  v107 = v43;
  if (v43 >> 62)
  {
    goto LABEL_57;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v45 = v36;
  if (v44)
  {
    v123 = v15;
    v109 = v107 & 0xC000000000000001;
    v106 = v107 & 0xFFFFFFFFFFFFFF8;
    v105 = v107 + 32;
    v15 = (v41 + 56);
    v131 = (v104 + 8);
    v116 = (v16 + 8);
    v16 = 0;
    v134 = MEMORY[0x277D84F90];
    v46 = &selRef_textContainer;
    v108 = v44;
    v126 = v36;
    v115 = v41;
    while (1)
    {
      if (v109)
      {
        v47 = MEMORY[0x26D651260](v16, v107);
      }

      else
      {
        if (v16 >= *(v106 + 16))
        {
          goto LABEL_56;
        }

        v47 = *(v105 + 8 * v16);
      }

      v111 = v47;
      v48 = __OFADD__(v16++, 1);
      if (v48)
      {
        goto LABEL_55;
      }

      v110 = v16;
      v49 = [v111 segments];
      sub_269C1B0B8(0, &qword_280C0B4C0, 0x277CCD9E0);
      v50 = sub_269D9A7E0();

      if (v50 >> 62)
      {
        break;
      }

      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v132 = v50;
      if (v51)
      {
        goto LABEL_15;
      }

LABEL_7:

      v16 = v110;
      if (v110 == v108)
      {
        goto LABEL_50;
      }
    }

    v51 = sub_269D9AF50();
    v132 = v50;
    if (!v51)
    {
      goto LABEL_7;
    }

LABEL_15:
    v52 = v51;
    v16 = 0;
    v135 = v132 & 0xC000000000000001;
    v129 = v132 & 0xFFFFFFFFFFFFFF8;
    v128 = v132 + 32;
    v133 = v51;
    while (1)
    {
      if (v135)
      {
        v53 = MEMORY[0x26D651260](v16, v132);
        v48 = __OFADD__(v16++, 1);
        if (v48)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v16 >= *(v129 + 16))
        {
          goto LABEL_53;
        }

        v53 = *(v128 + 8 * v16);
        v48 = __OFADD__(v16++, 1);
        if (v48)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v44 = sub_269D9AF50();
          goto LABEL_5;
        }
      }

      v54 = v53;
      v55 = [v53 v46[159]];
      if (*(v41 + 16))
      {
        v56 = v55;
        v136 = v54;
        sub_269D9B350();
        MEMORY[0x26D6515B0](v56);
        v57 = sub_269D9B390();
        v52 = v133;
        v58 = -1 << *(v41 + 32);
        v59 = v57 & ~v58;
        if ((*&v15[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59))
        {
          v60 = ~v58;
          while (*(*(v41 + 48) + 8 * v59) != v56)
          {
            v59 = (v59 + 1) & v60;
            if (((*&v15[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v61 = [v136 dateInterval];
          v62 = v124;
          sub_269D96F90();

          v41 = v125;
          sub_269D96FD0();
          v130 = *v131;
          v130(v62, v45);
          v63 = v122;
          sub_269D96FD0();
          sub_269D97490();
          v65 = v64;
          v66 = *v116;
          v67 = v118;
          (*v116)(v63, v118);
          v66(v41, v67);
          sub_269D96FF0();
          v69 = v65 / v68;
          v70 = [v136 dateInterval];
          sub_269D96F90();

          sub_269D96FA0();
          v71 = v62;
          v36 = v126;
          (v130)(v71);
          sub_269D96FD0();
          sub_269D97490();
          v73 = v72;
          v66(v63, v67);
          v66(v41, v67);
          sub_269D96FF0();
          v74 = v134[2];
          v76 = v73 / v75;
          if (v74)
          {
            v77 = (*(v121 + 80) + 32) & ~*(v121 + 80);
            v78 = *(v121 + 72);
            v79 = v123;
            sub_269D169C0(v134 + v77 + v78 * (v74 - 1), v123, type metadata accessor for SleepDayModel.SegmentModel);
            v80 = v79 + *(v127 + 24);
            v81 = *(v80 + 8);
            if (v81 == v69)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v134 = sub_269D198F4(v134);
              }

              v82 = v134[2];
              if (!v82)
              {
                goto LABEL_54;
              }

              v83 = v127;
              v84 = v82 - 1;
              v112 = v77;
              v85 = v134;
              sub_269D1A604(v134 + v77 + (v82 - 1) * v78, type metadata accessor for SleepDayModel.SegmentModel);
              v85[2] = v84;
              v86 = *v80;
              v87 = [v136 dateInterval];
              v88 = v124;
              sub_269D96F90();

              v36 = v123;
              sub_269D96FD0();
              sub_269D96FA0();
              v89 = v113;
              sub_269D96FB0();
              v45 = v126;
              v130(v88, v126);
              v90 = *(v36 + *(v83 + 28));
              sub_269D975B0();
              v91 = v89 + *(v83 + 24);
              *v91 = v86;
              *(v91 + 8) = v76;
              *(v89 + *(v83 + 28)) = v90;
              sub_269D169C0(v89, v114, type metadata accessor for SleepDayModel.SegmentModel);
              v93 = v85[2];
              v92 = v85[3];
              if (v93 >= v92 >> 1)
              {
                v134 = sub_269D623E8((v92 > 1), v93 + 1, 1, v134);
              }

              v41 = v115;

              sub_269D1A604(v113, type metadata accessor for SleepDayModel.SegmentModel);
              sub_269D1A604(v123, type metadata accessor for SleepDayModel.SegmentModel);
              v94 = v134;
              v134[2] = v93 + 1;
              sub_269D1A4C8(v114, v94 + v112 + v93 * v78, type metadata accessor for SleepDayModel.SegmentModel);
              v46 = &selRef_textContainer;
              goto LABEL_46;
            }

            sub_269D1A604(v79, type metadata accessor for SleepDayModel.SegmentModel);
            v95 = v69 - v81;
            v45 = v126;
          }

          else
          {
            v95 = 0.0;
            v45 = v36;
          }

          v41 = v115;
          v46 = &selRef_textContainer;
          v96 = [v136 dateInterval];
          v97 = v127;
          v98 = v119;
          sub_269D96F90();

          sub_269D975B0();
          v99 = (v98 + *(v97 + 24));
          *v99 = v69;
          v99[1] = v76;
          *(v98 + *(v97 + 28)) = v95;
          sub_269D169C0(v98, v120, type metadata accessor for SleepDayModel.SegmentModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_269D623E8(0, v134[2] + 1, 1, v134);
          }

          v101 = v134[2];
          v100 = v134[3];
          if (v101 >= v100 >> 1)
          {
            v134 = sub_269D623E8((v100 > 1), v101 + 1, 1, v134);
          }

          sub_269D1A604(v119, type metadata accessor for SleepDayModel.SegmentModel);
          v102 = v134;
          v134[2] = v101 + 1;
          sub_269D1A4C8(v120, v102 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v101, type metadata accessor for SleepDayModel.SegmentModel);
LABEL_46:
          v52 = v133;
          goto LABEL_17;
        }

LABEL_16:
      }

      else
      {
      }

LABEL_17:
      if (v16 == v52)
      {
        goto LABEL_7;
      }
    }
  }

  v134 = MEMORY[0x277D84F90];
LABEL_50:

  (*(v104 + 8))(v117, v45);
  return v134;
}

uint64_t sub_269D18C3C@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = sub_269D97580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v94 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v93 = &v91 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v92 = &v91 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v96 = &v91 - v14;
  v117 = sub_269D97010();
  v100 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v15);
  v116 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB9A74(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v95 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v98 = &v91 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v115 = &v91 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v109 = &v91 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v91 - v31;
  v35 = MEMORY[0x28223BE20](v33, v34);
  v118 = &v91 - v36;
  v99 = v3;
  v37 = *(v3 + 56);
  v37(v35);
  v111 = v32;
  v110 = v2;
  v113 = v37;
  v114 = v3 + 56;
  (v37)(v32, 1, 1, v2);
  v38 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_269C1B0B8(0, &qword_28034DF10, 0x277CCABB0);
  sub_269D1A460();
  v39 = sub_269D9A960();

  sub_269D1598C(v39);
  v41 = v40;

  v42 = sub_269CF21A0(v41);

  v43 = [v1 periods];
  sub_269C1B0B8(0, &qword_280C0B4C8, 0x277CCD9D8);
  v44 = sub_269D9A7E0();

  v103 = v44;
  if (v44 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
  {
    v46 = 0;
    v105 = v103 & 0xC000000000000001;
    v102 = v103 & 0xFFFFFFFFFFFFFF8;
    v101 = v103 + 32;
    v47 = v42 + 56;
    v108 = (v99 + 48);
    v112 = (v100 + 8);
    v48 = &selRef_textContainer;
    v104 = i;
    while (1)
    {
      if (v105)
      {
        v49 = MEMORY[0x26D651260](v46, v103);
      }

      else
      {
        if (v46 >= *(v102 + 16))
        {
          goto LABEL_34;
        }

        v49 = *(v101 + 8 * v46);
      }

      v50 = v49;
      v51 = __OFADD__(v46, 1);
      v52 = v46 + 1;
      if (v51)
      {
        break;
      }

      v53 = [v49 segments];
      sub_269C1B0B8(0, &qword_280C0B4C0, 0x277CCD9E0);
      v54 = sub_269D9A7E0();

      v121 = v54;
      v107 = v52;
      v106 = v50;
      if (v54 >> 62)
      {
        v55 = sub_269D9AF50();
        if (v55)
        {
LABEL_12:
          v56 = 0;
          v57 = v121 & 0xC000000000000001;
          v119 = v121 + 32;
          v120 = v121 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v57)
            {
              v58 = MEMORY[0x26D651260](v56, v121);
            }

            else
            {
              if (v56 >= *(v120 + 16))
              {
                goto LABEL_32;
              }

              v58 = *(v119 + 8 * v56);
            }

            v59 = v58;
            v51 = __OFADD__(v56++, 1);
            if (v51)
            {
              break;
            }

            v60 = [v58 v48[159]];
            if (*(v42 + 16) && (v61 = v60, sub_269D9B350(), MEMORY[0x26D6515B0](v61), v62 = sub_269D9B390(), v63 = -1 << *(v42 + 32), v64 = v62 & ~v63, ((*(v47 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0))
            {
              v65 = ~v63;
              while (*(*(v42 + 48) + 8 * v64) != v61)
              {
                v64 = (v64 + 1) & v65;
                if (((*(v47 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
                {
                  goto LABEL_13;
                }
              }

              v66 = v109;
              sub_269D169C0(v118, v109, sub_269CB9A74);
              v67 = v110;
              v68 = (*v108)(v66, 1, v110);
              sub_269D1A604(v66, sub_269CB9A74);
              if (v68 == 1)
              {
                v69 = [v59 dateInterval];
                v70 = v116;
                sub_269D96F90();

                v71 = v115;
                sub_269D96FD0();
                (*v112)(v70, v117);
                v72 = v118;
                sub_269D1A604(v118, sub_269CB9A74);
                (v113)(v71, 0, 1, v67);
                sub_269D1A4C8(v71, v72, sub_269CB9A74);
              }

              v73 = [v59 dateInterval];
              v74 = v116;
              sub_269D96F90();

              v75 = v115;
              sub_269D96FA0();

              (*v112)(v74, v117);
              v76 = v111;
              sub_269D1A604(v111, sub_269CB9A74);
              (v113)(v75, 0, 1, v67);
              sub_269D1A4C8(v75, v76, sub_269CB9A74);
              v48 = &selRef_textContainer;
              if (v56 == v55)
              {
                goto LABEL_4;
              }
            }

            else
            {
LABEL_13:

              if (v56 == v55)
              {
                goto LABEL_4;
              }
            }
          }

          __break(1u);
LABEL_32:
          __break(1u);
          break;
        }
      }

      else
      {
        v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v55)
        {
          goto LABEL_12;
        }
      }

LABEL_4:

      v46 = v107;
      if (v107 == v104)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  v77 = v118;
  v78 = v98;
  sub_269D169C0(v118, v98, sub_269CB9A74);
  v79 = v99;
  v80 = *(v99 + 48);
  v81 = v110;
  if (v80(v78, 1, v110) != 1)
  {
    v82 = v79[4];
    v83 = v96;
    v82(v96, v78, v81);
    v78 = v95;
    sub_269D169C0(v111, v95, sub_269CB9A74);
    if (v80(v78, 1, v81) != 1)
    {
      v87 = v92;
      v82(v92, v78, v81);
      v88 = v79[2];
      v88(v93, v83, v81);
      v88(v94, v87, v81);
      v84 = v97;
      v78 = v118;
      sub_269D96FB0();
      v89 = v79[1];
      v89(v87, v81);
      v89(v83, v81);
      v85 = 0;
      v86 = v111;
      goto LABEL_41;
    }

    (v79[1])(v83, v81);
  }

  v84 = v97;
  sub_269D1A604(v111, sub_269CB9A74);
  v85 = 1;
  v86 = v77;
LABEL_41:
  sub_269D1A604(v86, sub_269CB9A74);
  sub_269D1A604(v78, sub_269CB9A74);
  return (*(v100 + 56))(v84, v85, 1, v117);
}

uint64_t sub_269D19864@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepDayModel.SegmentModel(0) + 20);
  v4 = sub_269D97010();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_269D19908(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x26D6511B0](a1, a2, v7);
      sub_269C1B0B8(0, &qword_28034DF10, 0x277CCABB0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_269C1B0B8(0, &qword_28034DF10, 0x277CCABB0);
    if (sub_269D9AF30() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_269D9AF40();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_269D9ADC0();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_269D9ADD0();

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

uint64_t sub_269D19B2C(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_269D97050();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B728);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136446466;
    v14 = sub_269D9B4D0();
    v16 = sub_269C2EACC(v14, v15, &v30);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v29[2] = sub_269D97030();
    type metadata accessor for Name(0);
    v17 = sub_269D9A660();
    v19 = v18;
    (*(v4 + 8))(v7, v3);
    v20 = sub_269C2EACC(v17, v19, &v30);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] date cache updated: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v13, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v21 = sub_269D97030();
  v22 = sub_269D9A630();
  v24 = v23;
  if (v22 == sub_269D9A630() && v24 == v25)
  {

    return sub_269D16AAC();
  }

  v27 = sub_269D9B280();

  if (v27)
  {
    return sub_269D16AAC();
  }

  return result;
}

void sub_269D19EAC(uint64_t a1)
{
  sub_269D169A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_269D1A318(uint64_t a1)
{
  sub_269D975C0();
  if (v1 <= 0x3F)
  {
    sub_269D97010();
    if (v2 <= 0x3F)
    {
      sub_269D1A3BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269D1A3BC()
{
  if (!qword_280C0AF28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C0AF28);
    }
  }
}

uint64_t sub_269D1A418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269D1A460()
{
  result = qword_280350C60;
  if (!qword_280350C60)
  {
    sub_269C1B0B8(255, &qword_28034DF10, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350C60);
  }

  return result;
}

uint64_t sub_269D1A4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269D1A530(uint64_t a1)
{
  if (!qword_280350C68)
  {
    sub_269C1B0B8(255, &qword_28034DF10, 0x277CCABB0);
    sub_269D1A460();
    v1 = sub_269D9A990();
    if (!v2)
    {
      atomic_store(v1, &qword_280350C68);
    }
  }
}

uint64_t sub_269D1A5A4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_269D1A5B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269D1A604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id TonePickerStyleProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TonePickerStyleProvider.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TonePickerStyleProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id TonePickerStyleProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonePickerStyleProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TonePickerStyleProvider.vibrationPickerCellTextFont.getter()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];

  return v0;
}

void *static UILabel.makeDynamicLabel(textStyle:textColor:traits:rounded:monospaced:numberOfLines:weight:textAlignment:sizingRule:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v21 = v20;
  if (a2)
  {
    [v20 setTextColor_];
  }

  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v22 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(a1, a3, a4 & 1, 0, 0, 0, a5 & 1, a7, a8 & 1);
  [v21 setFont_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  if ((a12 & 1) == 0)
  {
    [v21 setSizingRule_];
  }

  if ((a10 & 1) == 0)
  {
    [v21 setTextAlignment_];
  }

  return v21;
}

void __swiftcall UILabel.init(textColor:textAlignment:)(UILabel *__return_ptr retstr, UIColor textColor, NSTextAlignment_optional textAlignment)
{
  is_nil = textAlignment.is_nil;
  value = textAlignment.value;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTextColor_];
  if (!is_nil)
  {
    [v6 setTextAlignment_];
  }
}

void __swiftcall UILabel.init(textStyle:textColor:traits:rounded:monospaced:weight:)(UILabel *__return_ptr retstr, UIFontTextStyle textStyle, UIColor_optional textColor, UIFontDescriptorSymbolicTraits traits, Swift::Bool rounded, Swift::Bool monospaced, UIFontWeight_optional weight)
{
  is_nil = weight.is_nil;
  v8 = monospaced;
  v10 = traits;
  v11 = *&textColor.is_nil;
  isa = textColor.value.super.isa;
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = v14;
  if (isa)
  {
    [v14 setTextColor_];
  }

  sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
  v16 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(textStyle, v11, v10 & 1, 0, 0, 0, rounded, v8, is_nil);
  [v15 setFont_];
}

NSMutableAttributedString_optional __swiftcall UILabel.mutableAttributedString()()
{
  v1 = [v0 attributedText];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  }

  else
  {
    v7 = [v0 text];
    if (!v7)
    {
      v4 = 0;
      goto LABEL_4;
    }

    v2 = v7;
    v8 = [v0 font];

    if (v8)
    {
      sub_269D1AE60(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_269D9EBE0;
      v10 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      *(inited + 64) = sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
      *(inited + 40) = v8;
      v11 = v10;
      v12 = v8;
      sub_269C44B18(inited);
      swift_setDeallocating();
      sub_269D1B488(inited + 32);
      v13 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      type metadata accessor for Key(0);
      sub_269CEB82C();
      v14 = sub_269D9A480();

      v4 = [v13 initWithString:v2 attributes:v14];

      goto LABEL_4;
    }

    v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];
  }

  v4 = v3;

LABEL_4:
  v6 = v4;
  result.value.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

void sub_269D1AE60(uint64_t a1)
{
  if (!qword_280350108)
  {
    sub_269CEB7C0(255);
    v1 = sub_269D9B240();
    if (!v2)
    {
      atomic_store(v1, &qword_280350108);
    }
  }
}

uint64_t UILabel.ViewModel.text.getter()
{
  v1 = *v0;

  return v1;
}

void *UILabel.ViewModel.font.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *UILabel.ViewModel.textColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t UILabel.ViewModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UILabel.ViewModel.init(text:font:textColor:hidden:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t UILabel.ViewModel.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[6];
  if (v1[1])
  {
    sub_269D9B370();
    sub_269D9A6A0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_269D9B370();
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_269D9B370();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_269D9B370();
  v5 = v2;
  sub_269D9ADE0();

  if (v3)
  {
LABEL_4:
    sub_269D9B370();
    v6 = v3;
    sub_269D9ADE0();

    goto LABEL_8;
  }

LABEL_7:
  sub_269D9B370();
LABEL_8:
  sub_269D9B370();
  if (!v4)
  {
    return sub_269D9B370();
  }

  sub_269D9B370();

  return sub_269D9A6A0();
}

uint64_t UILabel.ViewModel.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  v8 = *(v0 + 40);
  sub_269D9B350();
  UILabel.ViewModel.hash(into:)(v4);
  return sub_269D9B390();
}

uint64_t sub_269D1B130()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  v8 = *(v0 + 40);
  sub_269D9B350();
  UILabel.ViewModel.hash(into:)(v4);
  return sub_269D9B390();
}

uint64_t sub_269D1B190(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  v9 = *(v1 + 40);
  sub_269D9B350();
  UILabel.ViewModel.hash(into:)(v5);
  return sub_269D9B390();
}

void UILabel.update(viewModel:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (*(a1 + 8))
  {
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  [v1 setText_];

  [v1 setFont_];
  [v1 setTextColor_];
  [v1 setHidden_];
  if (v5)
  {
    v7 = sub_269D9A5F0();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v1 setAccessibilityLabel_];
}

BOOL _sSo7UILabelC13SleepHealthUIE9ViewModelV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_269D9B280() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (!v10)
    {
      return 0;
    }

    v22 = v7;
    sub_269C1B0B8(0, &qword_28034E5F0, 0x277D74300);
    v15 = v10;
    v16 = v4;
    v17 = sub_269D9ADD0();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v22 = v7;
    if (v10)
    {
      return 0;
    }
  }

  if (!v5)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

LABEL_18:
    if ((v6 ^ v12))
    {
      return result;
    }

    if (v8)
    {
      return v13 && (v22 == v14 && v8 == v13 || (sub_269D9B280() & 1) != 0);
    }

    return !v13;
  }

  if (!v11)
  {
    return 0;
  }

  sub_269C1B0B8(0, &qword_280350120, 0x277D75348);
  v18 = v11;
  v19 = v5;
  v20 = sub_269D9ADD0();

  result = 0;
  if (v20)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_269D1B488(uint64_t a1)
{
  sub_269CEB7C0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269D1B4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350C70;
  if (!qword_280350C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350C70);
  }

  return result;
}

uint64_t sub_269D1B53C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_269D1B598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_269D1B7C0()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_27;
  v2 = _Block_copy(aBlock);
  v3 = [v1 initWithDynamicProvider_];
  _Block_release(v2);

  [v0 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_slider];
  v5 = sub_269D9A5F0();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed_];

  if (v7)
  {
    v8 = [v7 imageWithTintColor:*&v0[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration + 8] renderingMode:1];
  }

  else
  {
    v8 = 0;
  }

  [v4 setMinimumValueImage_];

  v9 = sub_269D9A5F0();
  v10 = [v6 systemImageNamed_];

  if (v10)
  {
    v11 = [v10 imageWithTintColor:*&v0[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration + 8] renderingMode:1];
  }

  else
  {
    v11 = 0;
  }

  [v4 setMaximumValueImage_];

  v12 = [v0 contentView];
  [v12 addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = objc_opt_self();
  sub_269C4E764();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_269DA0E10;
  v14 = [v4 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 topAnchor];

  v17 = *&v0[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration + 16];
  v18 = [v14 constraintEqualToAnchor:v16 constant:v17];

  *(v13 + 32) = v18;
  v19 = [v4 leadingAnchor];
  v20 = [v0 contentView];
  v21 = [v20 layoutMarginsGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintEqualToAnchor_];

  *(v13 + 40) = v23;
  v24 = [v0 contentView];
  v25 = [v24 layoutMarginsGuide];

  v26 = [v25 trailingAnchor];
  v27 = [v4 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v13 + 48) = v28;
  v29 = [v0 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v4 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v17];

  *(v13 + 56) = v32;
  sub_269C1B0B8(0, &qword_28034E1C0, 0x277CCAAD0);
  v33 = sub_269D9A7D0();

  [v35 activateConstraints_];

  return [v4 addTarget:0 action:sel_scheduleOccurrenceAlarmVolumeEditingDidEnd_ forControlEvents:4096];
}

id ScheduleOccurrenceAlarmVolumeTableViewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceAlarmVolumeTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ScheduleOccurrenceAlarmVolumeTableViewCell.apply(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_slider);
  v3 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v3 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0, 0x277D62478);
  swift_dynamicCast();
  v4 = [v9 soundVolume];

  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x277D61FF8];
  }

  LODWORD(v5) = v7;
  return [v2 setValue:0 animated:v5];
}

double block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_269D1BF84(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_7;
  v6 = _Block_copy(aBlock);
  v7 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  v8 = [objc_opt_self() secondaryLabelColor];
  *v4 = v7;
  *(v4 + 1) = v8;
  *(v4 + 2) = 0x4010000000000000;
  v9 = OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_slider;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  if (a2)
  {
    v10 = sub_269D9A5F0();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v2;
  v14.super_class = type metadata accessor for ScheduleOccurrenceAlarmVolumeTableViewCell();
  v11 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, 0, v10);

  v12 = v11;
  sub_269D1B7C0();

  return v12;
}

void sub_269D1C11C()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration);
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_4;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  v5 = [objc_opt_self() secondaryLabelColor];
  *v1 = v4;
  v1[1] = v5;
  v1[2] = 0x4010000000000000;
  v6 = OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_slider;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  sub_269D9B100();
  __break(1u);
}

double sub_269D1C288@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_269D1D970(a2, a3, a4);
  sub_269D99050();
  result = v8;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_269D1C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_269D1D970(a1, a2, a3);

  return sub_269D99060();
}

uint64_t SleepScoreVisualization.init(model:animationTrigger:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_269D97C70();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for SleepScoreVisualization(0);
  v8 = a3 + *(v7 + 24);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 33) = 0u;
  result = sub_269D1C464(a1, a3);
  *(a3 + *(v7 + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for SleepScoreVisualization(uint64_t a1)
{
  result = qword_280C0B398;
  if (!qword_280C0B398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269D1C464(uint64_t a1, uint64_t a2)
{
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SleepScoreVisualization.init(model:animationTrigger:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_269D1C7C4(0, &qword_280350C90, type metadata accessor for SleepScoreModel);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21[-v8];
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v21[-v12];
  v22 = *a2;
  v14 = sub_269D97C70();
  v15 = *(*(v14 - 8) + 56);
  v15(a3, 1, 1, v14);
  v16 = type metadata accessor for SleepScoreVisualization(0);
  v17 = a3 + *(v16 + 24);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 33) = 0u;
  sub_269D1D484(a1, v9, &qword_280350C90, type metadata accessor for SleepScoreModel);
  v18 = type metadata accessor for SleepScoreModel(0);
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) == 1)
  {
    sub_269D1D4F0(a1, &qword_280350C90, type metadata accessor for SleepScoreModel);
    sub_269D1D4F0(v9, &qword_280350C90, type metadata accessor for SleepScoreModel);
    v19 = 1;
  }

  else
  {
    sub_269D97C40();
    sub_269D1D4F0(a1, &qword_280350C90, type metadata accessor for SleepScoreModel);
    sub_269D1D428(v9);
    v19 = 0;
  }

  v15(v13, v19, 1, v14);
  result = sub_269D1C464(v13, a3);
  *(a3 + *(v16 + 20)) = v22;
  return result;
}

void sub_269D1C7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double SleepScoreVisualization.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v103 = (&v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v100 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v100 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v100 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v100 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v100 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v100 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v100 - v33;
  v35 = *(v2 + *(type metadata accessor for SleepScoreVisualization(0) + 20));
  if (v35 == 2)
  {
    sub_269D1D484(v2, v34, &qword_280350C88, MEMORY[0x277D62600]);
    v36 = sub_269D97C70();
    v37 = *(v36 - 8);
    v103 = *(v37 + 48);
    v38 = v103(v34, 1, v36);
    v102 = v37;
    if (v38 == 1)
    {
      sub_269D1D4F0(v34, &qword_280350C88, MEMORY[0x277D62600]);
      v39 = 0.0;
    }

    else
    {
      sub_269D97C30();
      v45 = v44;
      (*(v37 + 8))(v34, v36);
      v39 = v45;
    }

    sub_269D1D114(v39);
    v47 = v46;
    sub_269D1D484(v2, v30, &qword_280350C88, MEMORY[0x277D62600]);
    if (v103(v30, 1, v36) == 1)
    {
      sub_269D1D4F0(v30, &qword_280350C88, MEMORY[0x277D62600]);
      v48 = 0.0;
    }

    else
    {
      sub_269D97C60();
      v58 = v57;
      (*(v102 + 8))(v30, v36);
      v48 = v58;
    }

    sub_269D1D114(v48);
    v60 = v59;
    sub_269D1D484(v2, v26, &qword_280350C88, MEMORY[0x277D62600]);
    if (v103(v26, 1, v36) == 1)
    {
      sub_269D1D4F0(v26, &qword_280350C88, MEMORY[0x277D62600]);
      v61 = 0.0;
      v62 = v102;
    }

    else
    {
      sub_269D97C50();
      v70 = v69;
      v62 = v102;
      (*(v102 + 8))(v26, v36);
      v61 = v70;
    }

    sub_269D1D114(v61);
    v72 = v71;
    sub_269D1D484(v2, v22, &qword_280350C88, MEMORY[0x277D62600]);
    v73 = v103(v22, 1, v36);
    if (v73 == 1)
    {
      sub_269D1D4F0(v22, &qword_280350C88, MEMORY[0x277D62600]);
      v74 = 0;
    }

    else
    {
      v74 = sub_269D97C20();
      (*(v62 + 8))(v22, v36);
    }

    LOBYTE(v124) = v73 == 1;
    KeyPath = swift_getKeyPath();
    *&v114 = v47;
    *(&v114 + 1) = 0x3FF0000000000000;
    *&v115 = v60;
    *(&v115 + 1) = 0x3FF0000000000000;
    *&v116 = v72;
    *(&v116 + 1) = 0x3FF0000000000000;
    *&v117 = v74;
    BYTE8(v117) = v124;
    __asm { FMOV            V0.2D, #1.0 }

    v118 = _Q0;
    v119 = _Q0;
    *(v120 + 8) = 0u;
    *(&v120[1] + 8) = 0u;
    *&v120[0] = KeyPath;
    *(&v120[2] + 1) = 0;
    LOBYTE(v121) = 0;
    v87 = sub_269D1D5AC(&v114);
  }

  else
  {
    v101 = v35;
    sub_269D1D484(v2, v18, &qword_280350C88, MEMORY[0x277D62600]);
    v40 = sub_269D97C70();
    v41 = *(v40 - 8);
    v100 = *(v41 + 48);
    v42 = v100(v18, 1, v40);
    v102 = v41;
    if (v42 == 1)
    {
      sub_269D1D4F0(v18, &qword_280350C88, MEMORY[0x277D62600]);
      v43 = 0.0;
    }

    else
    {
      sub_269D97C30();
      v50 = v49;
      (*(v41 + 8))(v18, v40);
      v43 = v50;
    }

    sub_269D1D114(v43);
    v52 = v51;
    sub_269D1D484(v2, v14, &qword_280350C88, MEMORY[0x277D62600]);
    v53 = v100;
    v54 = v100(v14, 1, v40);
    v55 = v103;
    if (v54 == 1)
    {
      sub_269D1D4F0(v14, &qword_280350C88, MEMORY[0x277D62600]);
      v56 = 0.0;
    }

    else
    {
      sub_269D97C60();
      v64 = v63;
      (*(v102 + 8))(v14, v40);
      v56 = v64;
    }

    sub_269D1D114(v56);
    v66 = v65;
    sub_269D1D484(v2, v10, &qword_280350C88, MEMORY[0x277D62600]);
    if (v53(v10, 1, v40) == 1)
    {
      sub_269D1D4F0(v10, &qword_280350C88, MEMORY[0x277D62600]);
      v67 = 0.0;
      v68 = v102;
    }

    else
    {
      sub_269D97C50();
      v76 = v75;
      v68 = v102;
      (*(v102 + 8))(v10, v40);
      v67 = v76;
    }

    sub_269D1D114(v67);
    v78 = v77;
    sub_269D1D484(v2, v55, &qword_280350C88, MEMORY[0x277D62600]);
    v79 = v53(v55, 1, v40);
    if (v79 == 1)
    {
      sub_269D1D4F0(v55, &qword_280350C88, MEMORY[0x277D62600]);
      v80 = 0;
    }

    else
    {
      v80 = sub_269D97C20();
      (*(v68 + 8))(v55, v40);
    }

    v123 = v79 == 1;
    v90 = v101 & 1;
    v91 = swift_getKeyPath();
    v122 = 0;
    *&v114 = v52;
    *(&v114 + 1) = v66;
    *&v115 = v78;
    *(&v115 + 1) = v80;
    LOBYTE(v116) = v123;
    BYTE1(v116) = v90;
    *(&v116 + 1) = v91;
    v117 = 0u;
    v118 = 0u;
    *&v119 = 0;
    BYTE8(v119) = 0;
    v87 = sub_269D1D54C(&v114);
  }

  v110 = v120[0];
  v111 = v120[1];
  v112 = v120[2];
  v113 = v121;
  v106 = v116;
  v107 = v117;
  v108 = v118;
  v109 = v119;
  v104 = v114;
  v105 = v115;
  v92 = sub_269CB1DB0(v87, v88, v89);
  sub_269D1D558(v92, v93, v94);
  sub_269D992D0();
  v95 = v131;
  *(a1 + 96) = v130;
  *(a1 + 112) = v95;
  *(a1 + 128) = v132;
  *(a1 + 144) = v133;
  v96 = v127;
  *(a1 + 32) = v126;
  *(a1 + 48) = v96;
  v97 = v129;
  *(a1 + 64) = v128;
  *(a1 + 80) = v97;
  result = *&v124;
  v99 = v125;
  *a1 = v124;
  *(a1 + 16) = v99;
  return result;
}

uint64_t sub_269D1D114(double a1)
{
  v3 = sub_269D99040();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(type metadata accessor for SleepScoreVisualization(0) + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  v13 = *(v8 + 32);
  v14 = *(v8 + 40);
  v15 = *(v8 + 48);
  v30 = v4;
  if (v15 == 1)
  {
    v31 = v10;
    v32 = v9;
    v33 = v12;
    v34 = *&v11;
    v16 = *&v11;
    v35 = *&v13;
    v36 = v14;
  }

  else
  {
    v29 = v13;

    sub_269D9AB70();
    v17 = v3;
    v18 = sub_269D99590();
    sub_269D98200();

    v3 = v17;
    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95034(v10, v9, v12, v11, v29, v14, 0);
    (*(v30 + 8))(v7, v17);
    v16 = v34;
  }

  v20 = *v8;
  v19 = *(v8 + 8);
  v22 = *(v8 + 16);
  v21 = *(v8 + 24);
  v24 = *(v8 + 32);
  v23 = *(v8 + 40);
  if (*(v8 + 48) == 1)
  {
    v31 = *v8;
    v32 = v19;
    v33 = v22;
    v34 = *&v21;
    v25 = *&v24;
    v35 = *&v24;
    v36 = v23;
  }

  else
  {

    sub_269D9AB70();
    v26 = v3;
    v27 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95034(v20, v19, v22, v21, v24, v23, 0);
    (*(v30 + 8))(v7, v26);
    v25 = v35;
  }

  if (a1 != 0.0 && v16 < a1 && a1 < 1.0 && 1.0 - v25 < 0.0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269D1D428(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D1D484(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269D1C7C4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269D1D4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269D1C7C4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_269D1D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350C98;
  if (!qword_280350C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350C98);
  }

  return result;
}

void sub_269D1D5F8(uint64_t a1)
{
  sub_269D1C7C4(319, &qword_280350C88, MEMORY[0x277D62600]);
  if (v1 <= 0x3F)
  {
    sub_269D1D6A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269D1D6A0()
{
  if (!qword_280350CA0)
  {
    v0 = sub_269D98A10();
    if (!v1)
    {
      atomic_store(v0, &qword_280350CA0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SleepScoreVisualization.AnimationTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for SleepScoreVisualization.AnimationTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_269D1D854(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_269D1D870(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_269D1D898()
{
  result = qword_280350CA8;
  if (!qword_280350CA8)
  {
    sub_269D1D918();
    v6 = sub_269CB1DB0(v1, v2, v3);
    sub_269D1D558(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CA8);
  }

  return result;
}

void sub_269D1D918()
{
  if (!qword_280350CB0)
  {
    v0 = sub_269D992E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350CB0);
    }
  }
}

unint64_t sub_269D1D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350CB8;
  if (!qword_280350CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CB8);
  }

  return result;
}

Swift::Void __swiftcall UIViewController.addAndLinkChild(_:usesAutoLayout:)(UIViewController *_, Swift::Bool usesAutoLayout)
{
  [v2 addChildViewController_];
  v5 = [(UIViewController *)_ view];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      if (usesAutoLayout)
      {
LABEL_6:

        goto LABEL_7;
      }

      v9 = [v2 view];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        [(UIView *)v6 setFrame:v12, v14, v16, v18];
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_7:

  [(UIViewController *)_ didMoveToParentViewController:v2];
}

uint64_t HKSPSleepScheduleOccurrence.scheduleIssues.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_269D971F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v42 - v14;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v42 - v19;
  v21 = [v2 bedtimeComponents];
  v44 = v20;
  sub_269D97120();

  v22 = [v2 wakeUpComponents];
  v23 = v15;
  sub_269D97120();

  v24 = *(v4 + 16);
  v24(v11, v20, v3);
  v25 = sub_269D97150();
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v43 = v27;
  v28 = sub_269D971A0();
  v30 = v29;
  v31 = *(v4 + 8);
  v31(v11, v3);
  if (v30)
  {
    v28 = 0;
  }

  v24(v7, v23, v3);
  v32 = sub_269D97150();
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  v35 = sub_269D971A0();
  v37 = v36;
  v31(v7, v3);
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v35;
  }

  sub_269C679CC(v43, v28, v34, v38);
  if (v39 < 3600.0)
  {
    v40 = (8 * (v39 > 72000.0)) | 4;
  }

  else
  {
    v40 = 8 * (v39 > 72000.0);
  }

  *v45 = v40;
  v31(v23, v3);
  return (v31)(v44, v3);
}

uint64_t HKSPSleepScheduleOccurrence.id.getter()
{
  [v0 weekdays];
  v1 = NSStringFromHKSPWeekdays();
  v2 = sub_269D9A630();

  return v2;
}

void sub_269D1DDF0(uint64_t *a1@<X8>)
{
  [*v1 weekdays];
  v3 = NSStringFromHKSPWeekdays();
  v4 = sub_269D9A630();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t WatchOnboardingCapabilitiesProvider.watchOnboardingCapabilities.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(a2 + 8))();
  v7 = result;
  if (result)
  {
    if ((*(a2 + 16))(a1, a2))
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    if ((*(a2 + 24))(a1, a2))
    {
      v8 |= 2uLL;
    }

    v9 = v8 & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 32))(a1, a2) & 1;
    if ((*(a2 + 40))(a1, a2))
    {
      v9 |= 4uLL;
    }

    result = (*(a2 + 48))(a1, a2);
    v10 = v9 | 8;
    if ((result & 1) == 0)
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  *(a3 + 8) = (v7 & 1) == 0;
  return result;
}

unint64_t sub_269D1DFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350CC0;
  if (!qword_280350CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CC0);
  }

  return result;
}

unint64_t sub_269D1E020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350CC8;
  if (!qword_280350CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CC8);
  }

  return result;
}

unint64_t sub_269D1E078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350CD0;
  if (!qword_280350CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CD0);
  }

  return result;
}

unint64_t sub_269D1E0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350CD8;
  if (!qword_280350CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CD8);
  }

  return result;
}

uint64_t sub_269D1E1AC()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E284()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E35C()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E438()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E514()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E5F0()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269D1E6DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 43))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_269D1E730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

void sub_269D1E794(double a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_269D1FD28(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v15 - v6;
  sub_269D1FD28(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v15 - v10;
  v12 = vmulq_f64(vcvtq_f64_s64(*v1), vdupq_n_s64(0x404E000000000000uLL));
  sub_269D225A8(round((60.0 * v12.f64[0] + v12.f64[1]) / a1) * a1, v15);
  if (v15[1] == 60 && __OFADD__(v15[0], 1))
  {
    __break(1u);
  }

  else
  {
    v13 = sub_269D977A0();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = sub_269D97810();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    sub_269D971D0();
  }
}

void sub_269D1EA14(double a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_269D1FD28(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v15 - v6;
  sub_269D1FD28(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v15 - v10;
  v12 = vmulq_f64(vcvtq_f64_s64(v1[1]), vdupq_n_s64(0x404E000000000000uLL));
  sub_269D225A8(round((60.0 * v12.f64[0] + v12.f64[1]) / a1) * a1, v15);
  if (v15[1] == 60 && __OFADD__(v15[0], 1))
  {
    __break(1u);
  }

  else
  {
    v13 = sub_269D977A0();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = sub_269D97810();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    sub_269D971D0();
  }
}

uint64_t sub_269D1EC94(double a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v34 - v9;
  sub_269D1E794(a1);
  sub_269D1EA14(a1);
  v11 = sub_269D97150();
  v13 = v12;
  v14 = sub_269D97150();
  v16 = sub_269D68570(v14, v15 & 1, v11, v13 & 1);
  v18 = v17;
  v19 = sub_269D971A0();
  v21 = v20;
  v22 = sub_269D971A0();
  v24 = sub_269D68570(v22, v23 & 1, v19, v21 & 1);
  v26 = v25;
  sub_269D1FD28(0, &qword_280350900, type metadata accessor for ComparisonResult, MEMORY[0x277D83D88]);
  if ((v18 & 1) == 0)
  {
    if (v16 == 1)
    {
      v31 = *(v3 + 8);
      v31(v6, v2);
      v31(v10, v2);
      LOBYTE(v30) = 1;
      return v30 & 1;
    }

    if (v16)
    {
      if (v16 != -1)
      {
        goto LABEL_17;
      }

      v32 = *(v3 + 8);
      v32(v6, v2);
      v32(v10, v2);
LABEL_14:
      LOBYTE(v30) = 0;
      return v30 & 1;
    }
  }

  v27 = *(v3 + 8);
  v27(v6, v2);
  v27(v10, v2);
  if (v26 & 1) != 0 && (v18)
  {
    goto LABEL_14;
  }

  if (v26)
  {
    v28 = v16;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 + 1;
  if (v29 < 3)
  {
    v30 = 4u >> (v29 & 7);
    return v30 & 1;
  }

  sub_269D9B270();
  __break(1u);
LABEL_17:
  result = sub_269D9B270();
  __break(1u);
  return result;
}

uint64_t sub_269D1EF20()
{
  v1 = (*(v0 + 24) / 60.0 + *(v0 + 16)) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    result = swift_once();
  }

    ;
  }

    ;
  }

  return result;
}

uint64_t sub_269D1EFD8(double a1)
{
    ;
  }

    ;
  }

  if (qword_28034D638 != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

    ;
  }

    ;
  }

  v2 = i / 6.28318531 * 24.0;
  v3 = floor(v2);
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = round((v2 - v3) * 60.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v4 < 9.22337204e18)
  {
    return v3;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_269D1F15C(double a1, double a2, double a3)
{
  *v3 = sub_269D1EFD8(a1);
  v3[1] = v7;
  sub_269C67AF0();
  if (v8 >= a2)
  {
    sub_269C67AF0();
    if (v10 <= a3)
    {
      return;
    }

      ;
    }

      ;
    }
  }

  else
  {
      ;
    }

      ;
    }
  }

  v3[2] = sub_269D1EFD8(i);
  v3[3] = v11;
}

BOOL sub_269D1F2A4(double a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = (v1[1] / 60.0 + *v1) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v5 = v4 + *&qword_28035E4B0;
  v6 = v4 + *&qword_28035E4B0;
  if (v4 + *&qword_28035E4B0 < 0.0)
  {
    v6 = v4 + *&qword_28035E4B0;
    do
    {
      v6 = v6 + 6.28318531;
    }

    while (v6 < 0.0);
  }

    ;
  }

  v7 = (v3 / 60.0 + v2) / 24.0 * 6.28318531 + *&qword_28035E4B0;
  v8 = v7;
  if (v7 < 0.0)
  {
    v8 = (v3 / 60.0 + v2) / 24.0 * 6.28318531 + *&qword_28035E4B0;
    do
    {
      v8 = v8 + 6.28318531;
    }

    while (v8 < 0.0);
  }

    ;
  }

  if (v6 >= v8)
  {
    while (v5 < 0.0)
    {
      v5 = v5 + 6.28318531;
    }

      ;
    }

    if (a1 <= 6.28318531 && v5 <= a1)
    {
      return 1;
    }

    if (a1 < 0.0)
    {
      return 0;
    }

      ;
    }

      ;
    }
  }

  else
  {
      ;
    }

      ;
    }

    if (v5 > a1)
    {
      return 0;
    }

      ;
    }

      ;
    }
  }

  return v7 >= a1;
}

unint64_t sub_269D1F4CC()
{
  v1 = v0[2];
  v2 = *v0;
  result = v1 - *v0;
  if (__OFSUB__(v1, *v0))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = v0[1];
  v5 = v0[3];
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v8 = -60;
  if (v6 > 0xFFFFFFFFFFFFFFC4)
  {
    v8 = v5 - v4;
  }

  v9 = v4 + v8;
  if (v9 == v5)
  {
    v10 = v0[3];
  }

  else
  {
    v10 = v5 + 1;
  }

  v11 = v9 == v5;
  v12 = (v9 - v10) / 0x3CuLL;
  if (!v11)
  {
    ++v12;
  }

  if ((v1 ^ 0x8000000000000000) - v2 <= v12)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  result = v1 + ~v2 - v12;
  if ((result & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (result >= 0x18)
    {
      v7 = result - 47;
      if (result < 0x2F)
      {
        v7 = 0;
      }

      return result + (v7 + 23) % 0x18uLL - (v7 + 23) - 24;
    }

    return result;
  }

LABEL_19:
  v13 = -24 - result;
  if (result > 0xFFFFFFFFFFFFFFE8)
  {
    v13 = 0;
  }

  v14 = ((__PAIR128__(v13, result) - 0xFFFFFFFFFFFFFFE8) >> 64) / 0x18;
  if (result < 0xFFFFFFFFFFFFFFE8)
  {
    ++v14;
  }

  result += 24 * v14 + 24;
  return result;
}

__n128 sub_269D1F5E0@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_269D1F5EC@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_269D1F5F8()
{
  v13 = *v0;
  *v14 = v0[1];
  *&v14[11] = *(v0 + 27);
  v1 = sub_269D1F4CC();
  v3 = v2;
  sub_269D1FD28(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DA7DB0;
  sub_269D1F748();
  v5 = sub_269D9A660();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_269C7172C(v5, v6, v8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83C10];
  *(v4 + 96) = MEMORY[0x277D83B88];
  *(v4 + 104) = v11;
  *(v4 + 64) = v9;
  *(v4 + 72) = v13;
  *(v4 + 136) = v10;
  *(v4 + 144) = v11;
  *(v4 + 112) = *(&v13 + 1);
  *(v4 + 176) = v10;
  *(v4 + 184) = v11;
  *(v4 + 152) = *v14;
  *(v4 + 216) = v10;
  *(v4 + 224) = v11;
  *(v4 + 192) = *&v14[8];
  *(v4 + 256) = v10;
  *(v4 + 264) = v11;
  *(v4 + 232) = v1;
  *(v4 + 296) = v10;
  *(v4 + 304) = v11;
  *(v4 + 272) = v3;
  return sub_269D9A640();
}

unint64_t sub_269D1F748()
{
  result = qword_280350CE0;
  if (!qword_280350CE0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280350CE0);
  }

  return result;
}

uint64_t sub_269D1F790(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D971F0();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97150();
  if (v8 & 1) != 0 || (sub_269D971A0(), (v9))
  {
    v10 = *(v21 + 8);

    return v10(a1, v4);
  }

  else
  {
    (*(v21 + 16))(v7, a1, v4);
    v12 = sub_269D97150();
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    v15 = sub_269D971A0();
    v17 = v16;
    v18 = *(v21 + 8);
    v21 += 8;
    v18(a1, v4);
    result = (v18)(v7, v4);
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

    *v2 = v14;
    v2[1] = v19;
  }

  return result;
}

uint64_t sub_269D1F92C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D971F0();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97150();
  if (v8 & 1) != 0 || (sub_269D971A0(), (v9))
  {
    v10 = *(v21 + 8);

    return v10(a1, v4);
  }

  else
  {
    (*(v21 + 16))(v7, a1, v4);
    v12 = sub_269D97150();
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    v15 = sub_269D971A0();
    v17 = v16;
    v18 = *(v21 + 8);
    v21 += 8;
    v18(a1, v4);
    result = (v18)(v7, v4);
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

    *(v2 + 16) = v14;
    *(v2 + 24) = v19;
  }

  return result;
}

uint64_t sub_269D1FAC8(double a1, double a2)
{
  sub_269C67AF0();
  if (v5 < a1)
  {
    sub_269D1EF20();
      ;
    }

      ;
    }

LABEL_12:
    *v2 = sub_269D1EFD8(i);
    v2[1] = v10;
    return 1;
  }

  sub_269C67AF0();
  if (v8 > a2)
  {
    sub_269D1EF20();
      ;
    }

      ;
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_269D1FC18(uint64_t result, uint64_t a2)
{
  if ((a2 | result) < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = *v2;
  v4 = *v2 + result;
  if (__OFADD__(*v2, result))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    v6 = -24;
    if (v4 > 0xFFFFFFFFFFFFFFE8)
    {
      v6 = *v2 + result;
    }

    if (v4 >= 0xFFFFFFFFFFFFFFE8)
    {
      v7 = *v2 + result;
    }

    else
    {
      v7 = v4 + 1;
    }

    v8 = __CFADD__(v4, 24);
    v9 = v3 + result;
    v10 = (v6 - v7) / 0x18;
    if (!v8)
    {
      ++v10;
    }

    v4 = v9 + 24 * v10 + 24;
  }

  else if (v4 >= 0x18)
  {
    v5 = v3 + result;
    if (v4 >= 0x2F)
    {
      v4 = 47;
    }

    v4 = (v5 - v4 + 23) % 0x18 - (23 - v4) - 24;
  }

  v11 = v2[1];
  v12 = v11 + a2;
  if (__OFADD__(v11, a2))
  {
    goto LABEL_25;
  }

  if (v12 < 60)
  {
LABEL_22:
    v2[2] = v4;
    v2[3] = v12;
    return result;
  }

  v13 = v11 + a2;
  if (v12 >= 0x77)
  {
    v12 = 119;
  }

  v14 = (v13 - v12 + 59) / 0x3CuLL;
  if ((v4 ^ 0x7FFFFFFFFFFFFFFFLL) > v14)
  {
    v15 = v4 + v14;
    v12 = v13 - 60 * v14 - 60;
    v4 = v15 + 1;
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_269D1FD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D1FDAC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider);

  return v1;
}

double sub_269D1FE08()
{
  swift_beginAccess();

  return result;
}

uint64_t SleepScheduleProviderWrapper.__allocating_init(sleepStore:)(void *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for SleepScheduleProvider();
  *(v2 + 16) = SleepScheduleProvider.__allocating_init(sleepStore:)(a1);
  return v2;
}

uint64_t SleepScheduleProviderWrapper.init(sleepStore:)(void *a1)
{
  v2 = v1;
  type metadata accessor for SleepScheduleProvider();
  *(v2 + 16) = SleepScheduleProvider.__allocating_init(sleepStore:)(a1);
  return v2;
}

uint64_t SleepScheduleProviderWrapper.__allocating_init(sleepStore:schedule:currentDateProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = objc_allocWithZone(type metadata accessor for SleepScheduleProvider());
  *(v8 + 16) = SleepScheduleProvider.init(sleepStore:schedule:currentDateProvider:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SleepScheduleProviderWrapper.init(sleepStore:schedule:currentDateProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(type metadata accessor for SleepScheduleProvider());
  *(v5 + 16) = SleepScheduleProvider.init(sleepStore:schedule:currentDateProvider:)(a1, a2, a3, a4);
  return v5;
}

uint64_t SleepScheduleProviderWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_269D2009C()
{
  v1 = *(*(*v0 + 16) + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider);

  return v1;
}

double sub_269D20100()
{
  swift_beginAccess();

  return result;
}

id sub_269D20308()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_sleepStore);
  v8[0] = 0;
  v2 = [v1 sleepScheduleModelWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v8[0];
    return v3;
  }

  else
  {
    v6 = v8[0];
    v7 = sub_269D97360();

    swift_willThrow();
    return [objc_allocWithZone(MEMORY[0x277D62500]) init];
  }
}

id ScheduleOccurrenceViewControllerRepresentation.init(sleepStore:provenanceSource:isEditingSchedule:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 16) = a2;
  type metadata accessor for SleepScheduleProvider();
  result = SleepScheduleProvider.__allocating_init(sleepStore:)(a1);
  *(a6 + 8) = result;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

id ScheduleOccurrenceViewControllerRepresentation.makeUIViewController(context:)(uint64_t a1)
{
  v62 = a1;
  v2 = sub_269D97580();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_269D977A0();
  v6 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v7);
  v65 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v55 - v15;
  v17 = *(v1 + 8);
  v19 = sub_269D20B30(v18);
  v20 = sub_269D20308();
  v21 = [objc_opt_self() hk_gregorianCalendar];
  sub_269D97710();

  sub_269D97570();
  v22 = sub_269D974B0();
  v23 = sub_269D976E0();
  v60 = v20;
  v61 = v19;
  v24 = [v20 generateOverrideOccurrenceFromTemplateForCurrentDate:v22 gregorianCalendar:v23 schedule:v19];

  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    goto LABEL_8;
  }

  v26 = result;
  v27 = [result hksp_activePairedDeviceSupportsSleep];

  v59 = v6;
  v28 = *(v6 + 16);
  v29 = v66;
  v28(v12, v16, v66);
  v68[3] = type metadata accessor for SleepScheduleProvider();
  v68[4] = &protocol witness table for SleepScheduleProvider;
  v68[0] = v17;
  v30 = v24;
  v31 = v17;
  result = [v30 isSingleDayOverride];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v32 = v12;
  v57 = v16;
  v58 = v5;
  v33 = v27;
  v34 = *&v31[OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentGoalPublisher];
  v35 = *&v31[OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentSchedulePublisher];
  v36 = v65;
  v56 = v32;
  (v28)(v65);
  type metadata accessor for ScheduleOccurrenceEditModel(0);
  v37 = swift_allocObject();
  v55 = v28;
  v38 = v37;
  sub_269C2D3B8(0);
  swift_allocObject();
  v39 = v30;

  *(v38 + 16) = sub_269D98790();
  sub_269C661F4(0, &qword_28034D820, type metadata accessor for ScheduleOccurrenceEditModel, MEMORY[0x277CBCE10]);
  swift_allocObject();
  *(v38 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v38 + 32) = sub_269D98790();
  v67[0] = 0;
  sub_269C661F4(0, &qword_28034D830, sub_269C662B4, MEMORY[0x277CBCE30]);
  swift_allocObject();
  *(v38 + 40) = sub_269D987F0();
  *(v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [v39 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  swift_dynamicCast();
  *(v38 + 48) = v67[5];
  *(v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v39;
  *(v38 + 56) = 257;
  v40 = v39;
  [v40 weekdays];
  *(v38 + 64) = 0;
  *(v38 + 72) = v34;
  *(v38 + 80) = v35;
  *(v38 + 88) = v33;
  v55(v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v36, v29);

  sub_269D987C0();
  v41 = v67[0];
  if (v67[0])
  {
    v42 = *(v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v43 = sub_269D976E0();
    v44 = [v41 allowableRangeForModifiedOccurrence:v42 gregorianCalendar:v43];
  }

  else
  {
    v44 = 0;
  }

  v67[0] = v44;
  sub_269D987D0();

  v45 = *(v59 + 8);
  v46 = v66;
  v45(v65, v66);
  sub_269C2DB5C(v68, v67);
  v47 = objc_allocWithZone(type metadata accessor for ScheduleOccurrenceViewController());
  sub_269C2F0A4(v38, 0, v67);
  v49 = v48;

  v45(v56, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  sub_269D2148C(0, v50, v51);
  sub_269D99570();
  v52 = v67[0];
  v53 = &v49[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
  swift_beginAccess();
  *(v53 + 1) = &protocol witness table for ScheduleOccurrenceViewControllerRepresentation.Coordinator;
  swift_unknownObjectWeakAssign();

  v54 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  (*(v63 + 8))(v58, v64);
  v45(v57, v46);
  return v54;
}

id sub_269D20B30(uint64_t a1)
{
  sub_269D987C0();
  if (v2 && ([v2 mutableCopy], v2, sub_269D9AED0(), swift_unknownObjectRelease(), sub_269C1B0B8(0, &qword_28034E978, 0x277D62488), (swift_dynamicCast() & 1) != 0))
  {
    return v2;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D62488]) init];
  }
}

id ScheduleOccurrenceViewControllerRepresentation.makeCoordinator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = type metadata accessor for ScheduleOccurrenceViewControllerRepresentation.Coordinator();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  v9 = &v8[OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent];
  *v9 = v1;
  *(v9 + 1) = v2;
  *(v9 + 2) = v4;
  *(v9 + 3) = v3;
  *(v9 + 4) = v5;
  v9[40] = v6;
  v14.receiver = v8;
  v14.super_class = v7;
  v10 = v1;
  v11 = v2;
  v12 = v4;

  return objc_msgSendSuper2(&v14, sel_init);
}

id ScheduleOccurrenceViewControllerRepresentation.Coordinator.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v8 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectWeakInit();
  v6 = &v3[OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent];
  *v6 = *a1;
  *(v6 + 1) = v8;
  *(v6 + 4) = v4;
  v6[40] = v5;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_269D20D5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v12 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v12;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  v9 = v4;
  v10 = v5;

  return v12;
}

uint64_t sub_269D20E04(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v15 = *v8;
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;

  v11 = v2;
  v12 = v3;
  v13 = v5;
}

id sub_269D20ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v12 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v12;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;

  v9 = v4;
  v10 = v5;

  return v12;
}

uint64_t sub_269D20F7C(uint64_t a1)
{
  v10 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  *v5 = *a1;
  *(v5 + 16) = v10;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

id ScheduleOccurrenceViewControllerRepresentation.Coordinator.init(_:)(uint64_t a1)
{
  v7 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent];
  *v5 = *a1;
  *(v5 + 1) = v7;
  *(v5 + 4) = v3;
  v5[40] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScheduleOccurrenceViewControllerRepresentation.Coordinator();
  return objc_msgSendSuper2(&v8, sel_init);
}

id ScheduleOccurrenceViewControllerRepresentation.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScheduleOccurrenceViewControllerRepresentation.Coordinator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceViewControllerRepresentation.Coordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_269D212CC@<X0>(void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = type metadata accessor for ScheduleOccurrenceViewControllerRepresentation.Coordinator();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent];
  *v12 = v4;
  *(v12 + 1) = v5;
  *(v12 + 2) = v7;
  *(v12 + 3) = v6;
  *(v12 + 4) = v8;
  v12[40] = v9;
  v17.receiver = v11;
  v17.super_class = v10;
  v13 = v4;
  v14 = v5;
  v15 = v7;

  result = objc_msgSendSuper2(&v17, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_269D2139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D214E8(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_269D21400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D214E8(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_269D21464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D214E8(a1, a2, a3);
  sub_269D99510();
  __break(1u);
}

void sub_269D2148C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_280350CE8)
  {
    sub_269D214E8(0, a2, a3);
    v3 = sub_269D99580();
    if (!v4)
    {
      atomic_store(v3, &qword_280350CE8);
    }
  }
}

unint64_t sub_269D214E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350CF0;
  if (!qword_280350CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CF0);
  }

  return result;
}

void sub_269D21560(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v6 = sub_269D98250();
  __swift_project_value_buffer(v6, qword_28035E4B8);
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136446210;
    v11 = sub_269D9B4D0();
    v13 = v6;
    v14 = a2;
    v15 = sub_269C2EACC(v11, v12, &aBlock);

    *(v9 + 4) = v15;
    a2 = v14;
    v6 = v13;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Did modify", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v16 = v3 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v17 = *(v16 + 8);
  v18 = sub_269D20B30(v17);

  if (a2)
  {
    v19 = [v18 overrideOccurrence];
    if (v19)
    {
      v20 = v19;
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, qword_280C0B728);
      v21 = sub_269D98230();
      v22 = sub_269D9AB80();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock = v24;
        *v23 = 136446210;
        v25 = sub_269D9B4D0();
        v27 = sub_269C2EACC(v25, v26, &aBlock);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_269C18000, v21, v22, "[%{public}s] Removing override", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x26D652460](v24, -1, -1);
        MEMORY[0x26D652460](v23, -1, -1);
      }

      [v18 removeOccurrence_];
    }
  }

  [v18 saveOccurrence_];
  v28 = *v16;
  v38 = nullsub_1;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_269C7A600;
  v37 = &block_descriptor_8;
  v29 = _Block_copy(&aBlock);
  v30 = v28;
  v31 = v18;
  [v30 saveCurrentSleepSchedule:v31 completion:v29];
  _Block_release(v29);

  v32 = *(v16 + 32);
  v33 = *(v16 + 40);
  aBlock = *(v16 + 24);
  v35 = v32;
  LOBYTE(v36) = v33;
  sub_269D22020();

  sub_269D9A010();
}

void sub_269D21978(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_28035E4B8);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, &aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Did finish by deleting", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  v12 = v2 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v13 = *(v12 + 8);
  v14 = sub_269D20B30(v13);

  [v14 removeOccurrence_];
  v15 = *v12;
  v25 = nullsub_1;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_269C7A600;
  v24 = &block_descriptor_28;
  v16 = _Block_copy(&aBlock);
  v17 = v15;
  v18 = v14;
  [v17 saveCurrentSleepSchedule:v18 completion:v16];
  _Block_release(v16);

  v19 = *(v12 + 32);
  v20 = *(v12 + 40);
  aBlock = *(v12 + 24);
  v22 = v19;
  LOBYTE(v23) = v20;
  sub_269D22020();

  sub_269D9A010();
}

uint64_t sub_269D21C18()
{
  swift_getObjectType();
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_28035E4B8);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] Did cancel", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  swift_beginAccess();
  sub_269D22020();
  return sub_269D9A010();
}

unint64_t sub_269D21DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280350D08;
  if (!qword_280350D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350D08);
  }

  return result;
}

uint64_t sub_269D21E18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_269D21E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D22020()
{
  if (!qword_28034E338)
  {
    v0 = sub_269D9A040();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E338);
    }
  }
}

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t TimeOfDay.init(dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_269D97150();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = sub_269D971A0();
  v9 = v8;
  v10 = sub_269D971F0();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  *a2 = v6;
  a2[1] = v12;
  return result;
}

SleepHealthUI::TimeOfDay __swiftcall TimeOfDay.rounded(toIncrement:)(Swift::Double toIncrement)
{
  v3 = vmulq_f64(vcvtq_f64_s64(*v2), vdupq_n_s64(0x404E000000000000uLL));
  sub_269D225A8(round((60.0 * v3.f64[0] + v3.f64[1]) / toIncrement) * toIncrement, v1);
  result.minute = v5;
  result.hour = v4;
  return result;
}

void TimeOfDay.dateComponents.getter()
{
  v1 = MEMORY[0x277D83D88];
  sub_269D2278C(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v12 - v4;
  sub_269D2278C(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v1);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12 - v8;
  if (v0[1] == 60 && __OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_269D977A0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = sub_269D97810();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_269D971D0();
  }
}

SleepHealthUI::TimeOfDay __swiftcall TimeOfDay.init(hour:minute:)(Swift::Int hour, Swift::Int minute)
{
  *v2 = hour;
  v2[1] = minute;
  result.minute = minute;
  result.hour = hour;
  return result;
}

Swift::Void __swiftcall TimeOfDay.round(toIncrement:)(Swift::Double toIncrement)
{
  v2 = vmulq_f64(vcvtq_f64_s64(*v1), vdupq_n_s64(0x404E000000000000uLL));
  sub_269D225A8(round((60.0 * v2.f64[0] + v2.f64[1]) / toIncrement) * toIncrement, v3.i64);
  *v1 = v3;
}

void sub_269D2245C()
{
  v0 = *MEMORY[0x277D62008];
  qword_280350D10 = *MEMORY[0x277D62000];
  *algn_280350D18 = v0;
}

void sub_269D224A8()
{
  v0 = *MEMORY[0x277D62350];
  qword_280350D20 = *MEMORY[0x277D62348];
  *algn_280350D28 = v0;
}

__n128 sub_269D224F4@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a2 = v5;
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

void sub_269D225A8(double a1@<D0>, uint64_t *a2@<X8>)
{
  v2 = floor(a1 / 60.0 / 60.0);
  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = floor((a1 - v2 * 60.0 * 60.0) / 60.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 9.22337204e18)
  {
    *a2 = v2 % 24;
    a2[1] = v3;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t TimeOfDay.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_269D2278C(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269DA0D60;
  sub_269D227F0();
  v4 = sub_269D9A660();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x277D837D0];
  v8 = sub_269C7172C(v4, v5, v7);
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83C10];
  *(v3 + 96) = MEMORY[0x277D83B88];
  *(v3 + 104) = v10;
  *(v3 + 64) = v8;
  *(v3 + 72) = v2;
  *(v3 + 136) = v9;
  *(v3 + 144) = v10;
  *(v3 + 112) = v1;
  return sub_269D9A640();
}

void sub_269D2278C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_269D227F0()
{
  result = qword_280350D30;
  if (!qword_280350D30)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280350D30);
  }

  return result;
}

uint64_t DateComponents.init(timeOfDay:)(uint64_t *a1)
{
  v1 = MEMORY[0x277D83D88];
  sub_269D2278C(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  sub_269D2278C(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v1);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_269D977A0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_269D97810();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  return sub_269D971D0();
}

uint64_t DateComponents.applying(timeOfDay:)@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_269D971F0();
  (*(*(v5 - 8) + 16))(a2, v3, v5);
  sub_269D97160();
  return sub_269D971B0();
}

_WORD *Text.ViewModel.init(leadingSymbol:text:font:textColor:hidden:accessibilityLabel:)@<X0>(_WORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t static Text.create(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D23074(0, &qword_280350D38, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v44 - v6;
  sub_269D13940(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D139A0(0);
  v14 = v13;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D23074(0, &qword_280350B08, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0338]);
  v19 = v18;
  MEMORY[0x28223BE20](v18, v20);
  v23 = &v44 - v22;
  v24 = a1[1];
  v55 = *a1;
  v56 = v24;
  v25 = a1[3];
  v57 = a1[2];
  v58 = v25;
  if (v24)
  {
    v50 = v9;
    v51 = v21;
    v52 = a2;
    v26 = sub_269D2347C(*(&v55 + 1), v56, v57, v58, *(&v58 + 1));
    v46 = v27;
    v47 = v28;
    v48 = v26;
    v49 = v29;
    sub_269D2362C(&v55, v26, v28, v27 & 1, v53);
    v30 = v54;
    sub_269D2302C(0);
    v32 = v31;
    sub_269C51E5C(0);
    v34 = v33;
    v35 = sub_269D99DB0();
    v45 = v53[0];
    v44 = v53[1];
    v36 = &v17[*(v32 + 36)];
    (*(*(v35 - 8) + 104))(v36 + *(v34 + 28), *MEMORY[0x277CE1050], v35);
    *v36 = swift_getKeyPath();
    v37 = v44;
    *v17 = v45;
    *(v17 + 1) = v37;
    v17[32] = v30;
    v38 = *(&v56 + 1);
    KeyPath = swift_getKeyPath();
    v40 = &v17[*(v14 + 36)];
    *v40 = KeyPath;
    v40[1] = v38;
    if (BYTE8(v57))
    {
      sub_269D23B10(v17, v12, sub_269D139A0);
      sub_269D23B10(v12, v7, sub_269D13940);
      swift_storeEnumTagMultiPayload();
      sub_269D239E8();
      sub_269D13F10();

      sub_269D992D0();
      sub_269D23B78(v12, sub_269D13940);
    }

    else
    {
      sub_269D23B10(v17, v7, sub_269D139A0);
      swift_storeEnumTagMultiPayload();
      sub_269D239E8();
      sub_269D13F10();

      sub_269D992D0();
    }

    sub_269C41568(v48, v47, v46 & 1);

    sub_269D23B78(v17, sub_269D139A0);
    v43 = v52;
    sub_269D23A68(v23, v52);
    return (*(v51 + 56))(v43, 0, 1, v19);
  }

  else
  {
    v41 = *(v21 + 56);

    return v41(a2, 1, 1, v19);
  }
}

void sub_269D23074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t Text.init(_:table:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5[1];
  if (v5)
  {
    v6 = a5[2];
    v7 = *a5;

    v8 = v6;
    sub_269D23BD8(v7, v5, v6);
  }

  return sub_269D99940();
}

uint64_t Text.ViewModel.text.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Text.ViewModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Text.ViewModel.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[7];
  if ((~*v1 & 0xFCFC) != 0)
  {
    sub_269D9B370();
    Symbol.hash(into:)();
    if (v2)
    {
LABEL_3:
      sub_269D9B370();
      sub_269D9A6A0();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_269D9B370();
      if (v3)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_269D9B370();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_269D9B370();
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_269D9B370();
  sub_269D996E0();
  if (v3)
  {
LABEL_5:
    sub_269D9B370();
    sub_269D99CF0();
    goto LABEL_10;
  }

LABEL_9:
  sub_269D9B370();
LABEL_10:
  sub_269D9B370();
  if (!v5)
  {
    return sub_269D9B370();
  }

  sub_269D9B370();

  return sub_269D9A6A0();
}

uint64_t Text.ViewModel.hashValue.getter()
{
  sub_269D9B350();
  Text.ViewModel.hash(into:)(v1);
  return sub_269D9B390();
}

uint64_t sub_269D233F8()
{
  sub_269D9B350();
  Text.ViewModel.hash(into:)(v1);
  return sub_269D9B390();
}

uint64_t sub_269D2343C(uint64_t a1)
{
  sub_269D9B350();
  Text.ViewModel.hash(into:)(v2);
  return sub_269D9B390();
}

uint64_t sub_269D2347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_269C3EEE8(a1, a2, a3);

    v5 = sub_269D99960();
    v7 = v6;
    v9 = v8;
    v10 = sub_269D998F0();
    v12 = v11;
    v14 = v13;
    sub_269C41568(v5, v7, v9 & 1);

    v15 = sub_269D99900();
    sub_269C41568(v10, v12, v14 & 1);
  }

  else
  {
    sub_269C3EEE8(a1, a2, a3);

    v16 = sub_269D99960();
    v18 = v17;
    v20 = v19;
    v15 = sub_269D998F0();
    sub_269C41568(v16, v18, v20 & 1);
  }

  return v15;
}

uint64_t sub_269D2362C@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v30 = a4;
  v10 = sub_269D990F0();
  MEMORY[0x28223BE20](v10 - 8, v11);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *a1;
  if ((~v12 & 0xFCFC) != 0)
  {
    sub_269D990E0();
    sub_269D990D0();
    LOWORD(v31) = v12;
    Symbol.systemName.getter();
    sub_269D99D90();
    v17 = sub_269D99970();
    v19 = v18;
    v21 = v20;
    v29 = a6;
    if ((v12 & 0xF000) == 0x1000 && (v12 & 1) == 0)
    {
      if (qword_28034D620 != -1)
      {
        swift_once();
      }

      v23 = qword_28034E060;
    }

    else
    {
      v22 = [objc_opt_self() hk_sleepKeyColor];
    }

    sub_269D99CC0();
    v24 = sub_269D998F0();
    v26 = v25;
    v28 = v27;
    sub_269C41568(v17, v19, v21 & 1);

    sub_269D990B0();
    sub_269C41568(v24, v26, v28 & 1);

    sub_269D990D0();
    sub_269D990B0();
    sub_269D990D0();
    sub_269D990B0();
    sub_269D990D0();
    sub_269D99110();
    sub_269D99940();
    sub_269D992D0();

    v14 = v31;
    v15 = v32;
    v16 = v33;
    a6 = v29;
  }

  else
  {
    sub_269C41668(a2, a3, v30 & 1);

    sub_269D992D0();

    v14 = v31;
    v15 = v32;
    v16 = v33;
  }

  *a6 = v14;
  *(a6 + 16) = v15;
  *(a6 + 32) = v16;
  return result;
}

unint64_t sub_269D239E8()
{
  result = qword_280350B48;
  if (!qword_280350B48)
  {
    sub_269D13940(255);
    v3 = sub_269D13F10();
    sub_269C419C0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350B48);
  }

  return result;
}

uint64_t sub_269D23A68(uint64_t a1, uint64_t a2)
{
  sub_269D23074(0, &qword_280350B08, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D23B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D23B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269D23BD8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}