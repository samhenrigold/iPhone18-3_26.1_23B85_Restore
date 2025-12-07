uint64_t SleepScoreMetricsDaySummary.Metrics.sleepStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0) + 28);
  v4 = sub_269BF8458();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreMetricsDaySummary.Metrics.sleepStartTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0) + 28);
  v4 = sub_269BF8458();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreMetricsDaySummary.Metrics.deepSleepSegmentsDuration.setter(double a1)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.Metrics.remSegmentsDuration.setter(double a1)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.Metrics.classifiedSleepSegmentsDuration.setter(double a1)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.Metrics.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26D64C470](*&v2);
  MEMORY[0x26D64C450](*(v1 + 8));
  v3 = *(v1 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26D64C470](*&v3);
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  sub_269BF8458();
  sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_269BF86B8();
  v5 = *(v1 + v4[8]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26D64C470](*&v5);
  v6 = *(v1 + v4[9]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26D64C470](*&v6);
  v7 = *(v1 + v4[10]);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return MEMORY[0x26D64C470](*&v7);
}

uint64_t SleepScoreMetricsDaySummary.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD3170(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269BF8458();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8688();
  sub_269BF5D24(&qword_28034AA78, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_269BF86B8();
  v16 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  sub_269BF8508();
  sub_269BF5D24(&qword_28034AA80, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_269BF86B8();
  v17 = (v1 + v16[6]);
  if (*(v17 + 8) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v18 = *v17;
    sub_269BF8C38();
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x26D64C470](v19);
  }

  v20 = (v1 + v16[7]);
  if (*(v20 + 8) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v21 = *v20;
    sub_269BF8C38();
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x26D64C470](v22);
  }

  sub_269BF39E8(v1 + v16[8], v15, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v23 = (*(v10 + 48))(v15, 2, v9);
  if (v23)
  {
    MEMORY[0x26D64C450](v23 != 1);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    MEMORY[0x26D64C450](2);
    sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_269BF86B8();
    (*(v10 + 8))(v12, v9);
  }

  v25 = v30;
  v24 = v31;
  sub_269BF39E8(v2 + v16[9], v8, sub_269BD3170);
  if ((*(v25 + 48))(v8, 1, v24) == 1)
  {
    return sub_269BF8C38();
  }

  v27 = v29;
  sub_269BF5D6C(v8, v29, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  sub_269BF8C38();
  SleepScoreMetricsDaySummary.Metrics.hash(into:)(a1);
  return sub_269BF61E4(v27, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
}

uint64_t sub_269BF540C(uint64_t (*a1)(void *))
{
  sub_269BF8C18();
  a1(v3);
  return sub_269BF8C58();
}

uint64_t sub_269BF546C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_269BF8C18();
  a3(v5);
  return sub_269BF8C58();
}

uint64_t sub_269BF54D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_269BF8C18();
  a4(v6);
  return sub_269BF8C58();
}

uint64_t _s11SleepHealth0A22ScoreMetricsDaySummaryV0A13StartBaselineO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_269BF8458();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF6128(0, &qword_28034AAB8, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_269BF39E8(a1, &v21 - v13, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  sub_269BF39E8(a2, &v14[v15], type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_269BF39E8(v14, v10, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_269BF8438();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_269BF61E4(v14, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_269BF6188(v14, &qword_28034AAB8, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
    v18 = 0;
    return v18 & 1;
  }

  sub_269BF61E4(v14, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v18 = 1;
  return v18 & 1;
}

BOOL _s11SleepHealth0A22ScoreMetricsDaySummaryV0D0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  return (sub_269BF8438() & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]);
}

BOOL _s11SleepHealth0A22ScoreMetricsDaySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD3170(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF6128(0, &qword_28034AAB0, sub_269BD3170);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  sub_269BF8688();
  sub_269BF5D24(qword_280B61430, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  if ((sub_269BF8718() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  if ((MEMORY[0x26D64BD10](a1 + v15[5], a2 + v15[5]) & 1) == 0)
  {
    return 0;
  }

  v16 = v15[6];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = v15[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if ((_s11SleepHealth0A22ScoreMetricsDaySummaryV0A13StartBaselineO2eeoiySbAE_AEtFZ_0(a1 + v15[8], a2 + v15[8]) & 1) == 0)
  {
    return 0;
  }

  v26 = v15[9];
  v27 = *(v12 + 48);
  sub_269BF39E8(a1 + v26, v14, sub_269BD3170);
  sub_269BF39E8(a2 + v26, &v14[v27], sub_269BD3170);
  v28 = *(v5 + 48);
  if (v28(v14, 1, v4) != 1)
  {
    sub_269BF39E8(v14, v10, sub_269BD3170);
    if (v28(&v14[v27], 1, v4) == 1)
    {
      sub_269BF61E4(v10, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
      goto LABEL_21;
    }

    sub_269BF5D6C(&v14[v27], v7, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v30 = _s11SleepHealth0A22ScoreMetricsDaySummaryV0D0V2eeoiySbAE_AEtFZ_0(v10, v7);
    sub_269BF61E4(v7, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    sub_269BF61E4(v10, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    sub_269BF61E4(v14, sub_269BD3170);
    return v30;
  }

  if (v28(&v14[v27], 1, v4) != 1)
  {
LABEL_21:
    sub_269BF6188(v14, &qword_28034AAB0, sub_269BD3170);
    return 0;
  }

  sub_269BF61E4(v14, sub_269BD3170);
  return 1;
}

uint64_t sub_269BF5D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269BF5D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269BF5ED4(uint64_t a1)
{
  sub_269BF8688();
  if (v1 <= 0x3F)
  {
    sub_269BF8508();
    if (v2 <= 0x3F)
    {
      sub_269BF5FA0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(319);
        if (v4 <= 0x3F)
        {
          sub_269BD3170(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269BF5FA0()
{
  if (!qword_280B61588)
  {
    v0 = sub_269BF89A8();
    if (!v1)
    {
      atomic_store(v0, &qword_280B61588);
    }
  }
}

uint64_t sub_269BF6018(uint64_t a1)
{
  v1 = sub_269BF8458();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_269BF6098(uint64_t a1)
{
  result = sub_269BF8458();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_269BF6128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_269BF6188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269BF6128(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269BF61E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269BF6460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269BF67E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

id HKSHCreatePossibleSleepApneaDetectedNotificationRequest(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v3 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"POSSIBLE_SLEEP_APNEA_DETECTED_TITLE" arguments:0];
  [v2 setTitle:v3];

  v4 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"POSSIBLE_SLEEP_APNEA_DETECTED_BODY" arguments:0];
  [v2 setBody:v4];

  v5 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v2 setSound:v5];

  [v2 setCategoryIdentifier:@"PossibleSleepApnea"];
  [v2 setThreadIdentifier:@"SleepApneaNotificationsThreadCategory"];
  if (v1)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:&unk_287A99010 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
    v7 = HKSHSleepApneaEventSampleDetailsLink(v1);
    v8 = [v7 absoluteString];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCE4E0]];

    [v2 setUserInfo:v6];
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [v2 setDate:v9];
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v10 hk_dateByAddingDays:1 toDate:v9];
  [v2 setExpirationDate:v11];

  v12 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"HealthApp.SleepApneaNotifications" content:v2 trigger:0];

  return v12;
}

id HKSHSleepApneaEventSampleDetailsLink(uint64_t a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-apple-health://SleepHealthAppPlugin.healthplugin/%@/%@", @"SleepApneaEventSampleDetail", a1];
  v3 = [v1 URLWithString:v2];

  return v3;
}

id HKSHSleepApneaControlServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9CFB0];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_getBreathingDisturbanceSamplesInDateInterval_includeTimeZones_completion_ argumentIndex:0 ofReply:1];

  return v0;
}