void sub_1CFE27F90()
{
  if (!qword_1EDC32B28[0])
  {
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC32B28);
    }
  }
}

unint64_t sub_1CFE28004()
{
  result = qword_1EC509F68;
  if (!qword_1EC509F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F68);
  }

  return result;
}

uint64_t sub_1CFE28058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49676E696E726F6DLL && a2 == 0xEC0000007865646ELL;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xED000065676E6152 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFE39CD0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x437265696C74756FLL && a2 == 0xEE00747865746E6FLL || (sub_1CFE310B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461527472616568 && a2 == 0xE900000000000065 || (sub_1CFE310B4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79784F646F6F6C62 && a2 == 0xEB000000006E6567 || (sub_1CFE310B4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461726970736572 && a2 == 0xEF6574615279726FLL || (sub_1CFE310B4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFE39AD0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C7341656D6974 && a2 == 0xEA00000000007065)
  {

    return 8;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t SleepingSampleAnalysisFeatureStatus.init(featureStatusByFeatureIdentifier:)(uint64_t a1)
{
  type metadata accessor for HKFeatureIdentifier(0);
  sub_1CFE2848C();
  sub_1CFE2934C(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B458]);
  sub_1CFE2934C(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B450]);
  sub_1CFE2934C(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);

  return sub_1CFE30724();
}

unint64_t sub_1CFE2848C()
{
  result = qword_1EDC32528;
  if (!qword_1EDC32528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC32528);
  }

  return result;
}

uint64_t SleepingSampleAnalysisFeatureStatus.set(_:for:)(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  sub_1CFDFDDF4(0);
  v5 = sub_1CFE306E4();
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v7;
  *v7 = 0x8000000000000000;
  sub_1CFDFC9C4(v4, v3, isUniquelyReferenced_nonNull_native);

  *v7 = v10;
  return v5(v11, 0);
}

void SleepingSampleAnalysisFeatureStatus.dataTypeStatus(for:)(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      sub_1CFDFDDF4(0);
      v16 = sub_1CFE306F4();
      if (*(v16 + 16))
      {
        v17 = sub_1CFDA54DC(*MEMORY[0x1E696B8A8]);
        if (v18)
        {
          v19 = *MEMORY[0x1E696B7F8];
          v8 = *(*(v16 + 56) + 8 * v17);

          v9 = [v8 objectForKeyedSubscript_];
          v10 = 2;
          goto LABEL_20;
        }
      }
    }

    else if (v3 == 3)
    {
      sub_1CFDFDDF4(0);
      v4 = sub_1CFE306F4();
      if (*(v4 + 16))
      {
        v5 = sub_1CFDA54DC(*MEMORY[0x1E696B8C8]);
        if (v6)
        {
          v7 = *MEMORY[0x1E696B800];
          v8 = *(*(v4 + 56) + 8 * v5);

          v9 = [v8 objectForKeyedSubscript_];
          v10 = 3;
LABEL_20:
          v31 = v10;
          sub_1CFDE6D90(v9, &v31, v32);

          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_1CFDFDDF4(0);
      v20 = sub_1CFE306F4();
      if (*(v20 + 16))
      {
        v21 = sub_1CFDA54DC(*MEMORY[0x1E696B8B8]);
        if (v22)
        {
          v23 = *MEMORY[0x1E696B800];
          v8 = *(*(v20 + 56) + 8 * v21);

          v9 = [v8 objectForKeyedSubscript_];
          v10 = 4;
          goto LABEL_20;
        }
      }
    }

    goto LABEL_22;
  }

  if (*a1)
  {
    sub_1CFDFDDF4(0);
    v24 = sub_1CFE306F4();
    if (*(v24 + 16))
    {
      v25 = sub_1CFDA54DC(*MEMORY[0x1E696B8B0]);
      if (v26)
      {
        v27 = *MEMORY[0x1E696B800];
        v8 = *(*(v24 + 56) + 8 * v25);

        v9 = [v8 objectForKeyedSubscript_];
        v10 = 1;
        goto LABEL_20;
      }
    }

LABEL_22:

LABEL_23:
    v28 = 0;
    v29 = 0;
    v30 = -1;
    goto LABEL_24;
  }

  v11 = sub_1CFE308F4();
  sub_1CFDFDDF4(0);
  v12 = sub_1CFE306F4();
  if (!*(v12 + 16) || (v13 = sub_1CFDA54DC(*MEMORY[0x1E696B8C0]), (v14 & 1) == 0))
  {

    goto LABEL_23;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v31 = 0;
  sub_1CFDE6D90([v15 objectForKeyedSubscript_], &v31, v32);

LABEL_21:
  v28 = v32[0];
  v29 = v33;
  v30 = v34;
LABEL_24:
  *a2 = v28;
  *(a2 + 8) = v29;
  *(a2 + 16) = v30;
}

void *SleepingSampleAnalysisFeatureStatus.subscript.getter(uint64_t a1)
{
  sub_1CFDFDDF4(0);
  v2 = sub_1CFE306F4();
  if (*(v2 + 16) && (v3 = sub_1CFDA54DC(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static SleepingSampleAnalysisFeatureStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HKFeatureIdentifier(0);
  v5 = v4;
  v6 = sub_1CFE2848C();
  v7 = sub_1CFE2934C(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B458]);
  v8 = sub_1CFE2934C(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B450]);
  v9 = sub_1CFE2934C(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
  v10 = sub_1CFE2934C(&qword_1EDC31A88, sub_1CFE2848C, MEMORY[0x1E69E81C0]);

  return MEMORY[0x1EEDC7670](a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CFE28A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x80000001CFE39CF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CFE310B4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CFE28B04(uint64_t a1)
{
  v2 = sub_1CFE29294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE28B40(uint64_t a1)
{
  v2 = sub_1CFE29294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleAnalysisFeatureStatus.encode(to:)(void *a1)
{
  sub_1CFE292E8(0, &qword_1EC509F70, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE29294();
  sub_1CFE311A4();
  sub_1CFDFDDF4(0);
  sub_1CFE2934C(&qword_1EC509F80, sub_1CFDFDDF4, MEMORY[0x1E696B3A8]);
  sub_1CFE31054();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SleepingSampleAnalysisFeatureStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1CFDFDDF4(0);
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE292E8(0, &qword_1EC509F88, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SleepingSampleAnalysisFeatureStatus(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE29294();
  sub_1CFE31194();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1CFE2934C(&qword_1EC509F90, sub_1CFDFDDF4, MEMORY[0x1E696B3B8]);
    sub_1CFE30FD4();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1CFE29394(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CFE28FB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HKFeatureIdentifier(0);
  v5 = v4;
  v6 = sub_1CFE2848C();
  v7 = sub_1CFE2934C(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B458]);
  v8 = sub_1CFE2934C(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier, MEMORY[0x1E696B450]);
  v9 = sub_1CFE2934C(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier, &unk_1CFE322F8);
  v10 = sub_1CFE2934C(&qword_1EDC31A88, sub_1CFE2848C, MEMORY[0x1E69E81C0]);

  return MEMORY[0x1EEDC7670](a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CFE2910C(void *a1)
{
  sub_1CFE292E8(0, &qword_1EC509F70, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE29294();
  sub_1CFE311A4();
  sub_1CFDFDDF4(0);
  sub_1CFE2934C(&qword_1EC509F80, sub_1CFDFDDF4, MEMORY[0x1E696B3A8]);
  sub_1CFE31054();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1CFE29294()
{
  result = qword_1EC509F78;
  if (!qword_1EC509F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F78);
  }

  return result;
}

void sub_1CFE292E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE29294();
    v7 = a3(a1, &type metadata for SleepingSampleAnalysisFeatureStatus.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFE2934C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFE29394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAnalysisFeatureStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFE29420(uint64_t a1)
{
  sub_1CFDFDDF4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1CFE294A0()
{
  result = qword_1EC509F98;
  if (!qword_1EC509F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F98);
  }

  return result;
}

unint64_t sub_1CFE294F8()
{
  result = qword_1EC509FA0;
  if (!qword_1EC509FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509FA0);
  }

  return result;
}

unint64_t sub_1CFE29550()
{
  result = qword_1EC509FA8;
  if (!qword_1EC509FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509FA8);
  }

  return result;
}

uint64_t HealthBalanceNotificationsAnalyticsEvent.__allocating_init(notificationContent:action:outOfRangeNotificationLastSentDate:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a1 + 8);
  v8 = *a2;
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 25) = v8;
  sub_1CFDA9CFC(a3, v6 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate);
  return v6;
}

HealthBalance::HealthBalanceNotificationsAnalyticsEvent::NotificationAction_optional __swiftcall HealthBalanceNotificationsAnalyticsEvent.NotificationAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HealthBalanceNotificationsAnalyticsEvent.NotificationAction.rawValue.getter()
{
  v1 = 1852141679;
  if (*v0 != 1)
  {
    v1 = 0x7373696D736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684956531;
  }
}

uint64_t sub_1CFE296C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  if (v2 != 1)
  {
    v5 = 0x7373696D736964;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1684956531;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1852141679;
  if (*a2 != 1)
  {
    v8 = 0x7373696D736964;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684956531;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1CFE310B4();
  }

  return v11 & 1;
}

uint64_t sub_1CFE297A8()
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFE2983C(uint64_t a1)
{
  sub_1CFE30984();
}

uint64_t sub_1CFE298BC(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFE29958(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  if (v2 != 1)
  {
    v5 = 0x7373696D736964;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684956531;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void HealthBalanceNotificationsAnalyticsEvent.notificationContent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t HealthBalanceNotificationsAnalyticsEvent.init(notificationContent:action:outOfRangeNotificationLastSentDate:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v3 + 16) = *a1;
  *(v3 + 24) = v4;
  *(v3 + 25) = v5;
  sub_1CFDA9CFC(a3, v3 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate);
  return v3;
}

void HealthBalanceNotificationsAnalyticsEvent.makeIHAGatedEventPayload(with:)(void *a1)
{
  v4 = [a1 healthDataSource];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 environmentDataSource];
    v7 = *(v1 + 24);
    v11 = *(v1 + 16);
    v12 = v7;
    v10 = *(v1 + 25);
    v8 = sub_1CFE2A8D8(v6, v5, &v11, &v10, v1 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = v8;

      sub_1CFE025C4(v9);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CFE02570();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t HealthBalanceNotificationsAnalyticsEvent.__deallocating_deinit()
{
  sub_1CFE2B8A8(v0 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate, &qword_1EDC32C70, MEMORY[0x1E6969530]);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFE29DF0()
{
  v1 = *v0;
  v2 = *v0 & 0x18;
  if ((*v0 & 6) != 0)
  {
    if (v2)
    {
      result = 3;
      if ((v1 & 0x180) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    result = 1;
    if ((v1 & 0x180) == 0)
    {
LABEL_11:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }

LABEL_4:
    result |= 0x10uLL;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      return result;
    }

    return result | 4;
  }

  if (v2)
  {
    result = 2;
    if ((v1 & 0x180) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  if ((v1 & 0x180) != 0)
  {
    result = 16;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_5:
  result |= 8uLL;
  if ((v1 & 0x40) == 0)
  {
    return result;
  }

  return result | 4;
}

uint64_t sub_1CFE29E78()
{
  v1 = *v0;
  v2 = *v0 & 0x18;
  if ((*v0 & 6) != 0)
  {
    if (v2)
    {
      result = 2;
      if ((v1 & 0x180) != 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

LABEL_8:
    result = 1;
    if ((v1 & 0x180) != 0)
    {
LABEL_4:
      ++result;
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      if ((v1 & 0x40) == 0)
      {
        return result;
      }

      return ++result;
    }

    goto LABEL_9;
  }

  if (v2)
  {
    goto LABEL_8;
  }

  if ((v1 & 0x180) != 0)
  {
    result = 1;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = 0;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_5:
  ++result;
  if ((v1 & 0x40) == 0)
  {
    return result;
  }

  return ++result;
}

double sub_1CFE29EF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1CFDFC4A4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CFDFCE0C();
      v10 = v12;
    }

    sub_1CFDFDB80((*(v10 + 56) + 40 * v8), a3);
    sub_1CFE29F9C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1CFE29F9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CFE30D24() + 1) & ~v5;
    do
    {
      sub_1CFE31144();

      sub_1CFE30984();
      v11 = sub_1CFE31184();

      v12 = v11 & v7;
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
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
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

uint64_t sub_1CFE2A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v30 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E69E6180];
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_1CFDFC4A4(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_1CFDFDB80(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_1CFDFCE0C();
    goto LABEL_7;
  }

  sub_1CFDFC70C(v16, a5 & 1);
  v22 = sub_1CFDFC4A4(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1CFE310F4();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  MEMORY[0x1EEE9AC00](v24, v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_1CFE2A770(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_1CFE2A348(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x1E69E6370];
  v25 = MEMORY[0x1E69E6388];
  v9 = *a5;
  v11 = sub_1CFDFC4A4(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_1CFDFDB80(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1CFDFCE0C();
    goto LABEL_7;
  }

  sub_1CFDFC70C(v14, a4 & 1);
  v20 = sub_1CFDFC4A4(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1CFE310F4();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x1E69E6370]);
  sub_1CFE2A6E0(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t sub_1CFE2A4AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v15 = *a5;
  v17 = sub_1CFDFC4A4(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return sub_1CFDFDB80(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_1CFDFCE0C();
    goto LABEL_7;
  }

  sub_1CFDFC70C(v20, a4 & 1);
  v26 = sub_1CFDFC4A4(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1CFE310F4();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  MEMORY[0x1EEE9AC00](v28, v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_1CFE2A800(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

uint64_t sub_1CFE2A6E0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x1E69E6370];
  v13 = MEMORY[0x1E69E6388];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CFDFDB80(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1CFE2A770(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69E6180];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1CFDFDB80(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1CFE2A800(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1CFDFDB80(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1CFE2A8D8(void *a1, void *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v113 = a2;
  v114 = a1;
  v122 = *MEMORY[0x1E69E9840];
  sub_1CFE2B904(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v106 = &v105 - v11;
  v12 = sub_1CFE30314();
  v110 = *(v12 - 8);
  v111 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v107 = a5;
  v112 = v5;
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0xE400000000000000;
      v18 = 1852141679;
    }

    else
    {
      v17 = 0xE700000000000000;
      v18 = 0x7373696D736964;
    }
  }

  else
  {
    v17 = 0xE400000000000000;
    v18 = 1684956531;
  }

  v108 = *a3;
  v109 = *(a3 + 8);
  v19 = MEMORY[0x1E69E6158];
  v20 = MEMORY[0x1E69E6180];
  v120 = MEMORY[0x1E69E6158];
  v121 = MEMORY[0x1E69E6180];
  *&v119 = v18;
  *(&v119 + 1) = v17;
  sub_1CFDFDB80(&v119, v117);
  v21 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = v21;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
  MEMORY[0x1EEE9AC00](v23, v23);
  v25 = (&v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_1CFE2A158(*v25, v25[1], 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v115);
  __swift_destroy_boxed_opaque_existential_1(v117);
  v27 = v115;
  v116 = v115;
  v28 = [v114 activePairedDeviceProductType];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1CFE30924();
    v32 = v31;

    v120 = v19;
    v121 = v20;
    *&v119 = v30;
    *(&v119 + 1) = v32;
    sub_1CFDFDB80(&v119, v117);
    LOBYTE(v32) = swift_isUniquelyReferenced_nonNull_native();
    v115 = v27;
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
    MEMORY[0x1EEE9AC00](v33, v33);
    v35 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v35);
    sub_1CFE2A4AC(v35, 0xD000000000000016, 0x80000001CFE39870, v32, &v115, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v117);
    v116 = v115;
  }

  else
  {
    sub_1CFE29EF0(0xD000000000000016, 0x80000001CFE39870, &v119);
    sub_1CFE2B8A8(&v119, &qword_1EC509E68, sub_1CFDFDAB8);
  }

  v37 = [v114 currentDate];
  sub_1CFE302F4();

  v38 = sub_1CFE302D4();
  v39 = v111;
  v105 = *(v110 + 8);
  v105(v15, v111);
  *&v119 = 0;
  v40 = [v113 ageWithCurrentDate:v38 error:&v119];

  if (v40)
  {
    v41 = v119;
    v42 = [v40 integerValue];

    v43 = MEMORY[0x1E69E6530];
    v44 = MEMORY[0x1E69E6550];
    v120 = MEMORY[0x1E69E6530];
    v121 = MEMORY[0x1E69E6550];
    *&v119 = v42;
    sub_1CFDFDB80(&v119, v117);
    v45 = v116;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v45;
    v47 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
    MEMORY[0x1EEE9AC00](v47, v47);
    v49 = &v105 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v49);
    v51 = v49;
    v39 = v111;
    sub_1CFE2A4AC(v51, 6645601, 0xE300000000000000, v46, &v115, v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v117);
    v52 = v112;
    v116 = v115;
  }

  else
  {
    v53 = v119;
    v54 = sub_1CFE30184();

    swift_willThrow();
    sub_1CFE29EF0(6645601, 0xE300000000000000, &v119);
    sub_1CFE2B8A8(&v119, &qword_1EC509E68, sub_1CFDFDAB8);
    v52 = 0;
  }

  v117[0] = 0;
  v55 = [v113 biologicalSexWithError_];
  if (!v55)
  {
    v69 = v117[0];

    sub_1CFE30184();

    return swift_willThrow();
  }

  v56 = v55;
  v112 = v52;
  v57 = v117[0];
  v58 = HKAnalyticsPropertyValueForBiologicalSex();

  v59 = sub_1CFE30924();
  v61 = v60;

  v120 = v19;
  v121 = v20;
  *&v119 = v59;
  *(&v119 + 1) = v61;
  sub_1CFDFDB80(&v119, v117);
  v62 = v116;
  LOBYTE(v59) = swift_isUniquelyReferenced_nonNull_native();
  v115 = v62;
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
  MEMORY[0x1EEE9AC00](v63, v63);
  v65 = (&v105 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65);
  sub_1CFE2A158(*v65, v65[1], 0x6369676F6C6F6962, 0xED00007865536C61, v59, &v115);
  __swift_destroy_boxed_opaque_existential_1(v117);
  v116 = v115;
  v67 = v106;
  sub_1CFDE4AA4(v107, v106);
  if ((*(v110 + 48))(v67, 1, v39) == 1)
  {
    v68 = 0;
  }

  else
  {
    v68 = sub_1CFE302D4();
    v105(v67, v39);
  }

  v71 = [v114 bucketedNumberOfDaysSinceDate_];

  if (!v71)
  {
    sub_1CFE29EF0(0xD000000000000019, 0x80000001CFE39D90, &v119);
    sub_1CFE2B8A8(&v119, &qword_1EC509E68, sub_1CFDFDAB8);
    if (v109)
    {
      goto LABEL_19;
    }

LABEL_21:
    v81 = v108;
    v117[0] = v108;
    v82 = sub_1CFE29E78();
    v83 = MEMORY[0x1E69E6530];
    v84 = MEMORY[0x1E69E6550];
    v120 = MEMORY[0x1E69E6530];
    v121 = MEMORY[0x1E69E6550];
    *&v119 = v82;
    sub_1CFDFDB80(&v119, v117);
    v85 = v116;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v85;
    v87 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
    MEMORY[0x1EEE9AC00](v87, v87);
    v89 = &v105 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v90 + 16))(v89);
    sub_1CFE2A4AC(v89, 0x6F69746169766564, 0xEE00746E756F436ELL, v86, &v115, v83, v84);
    __swift_destroy_boxed_opaque_existential_1(v117);
    v91 = v115;
    v117[0] = v81;
    v92 = sub_1CFE29DF0();
    if ((v92 - 1) <= 0xE)
    {
      v92 = qword_1CFE383E8[v92 - 1];
    }

    v120 = v83;
    v121 = v84;
    *&v119 = v92;
    sub_1CFDFDB80(&v119, v117);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v115 = v91;
    v94 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
    MEMORY[0x1EEE9AC00](v94, v94);
    v96 = &v105 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v97 + 16))(v96);
    sub_1CFE2A4AC(v96, 0xD000000000000010, 0x80000001CFE39DB0, v93, &v115, v83, v84);
    __swift_destroy_boxed_opaque_existential_1(v117);
    v80 = v115;
    v20 = MEMORY[0x1E69E6180];
    goto LABEL_24;
  }

  v72 = sub_1CFE2B958();
  v120 = v72;
  v73 = sub_1CFE2B9A4();
  v121 = v73;
  *&v119 = v71;
  sub_1CFDFDB80(&v119, v117);
  v74 = v116;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v74;
  v76 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
  MEMORY[0x1EEE9AC00](v76, v76);
  v78 = &v105 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v79 + 16))(v78);
  sub_1CFE2A4AC(v78, 0xD000000000000019, 0x80000001CFE39D90, v75, &v115, v72, v73);
  __swift_destroy_boxed_opaque_existential_1(v117);
  v20 = MEMORY[0x1E69E6180];
  v116 = v115;
  if ((v109 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_1CFE29EF0(0x6F69746169766564, 0xEE00746E756F436ELL, v117);
  sub_1CFE2B8A8(v117, &qword_1EC509E68, sub_1CFDFDAB8);
  sub_1CFE29EF0(0xD000000000000010, 0x80000001CFE39DB0, v117);
  sub_1CFE2B8A8(v117, &qword_1EC509E68, sub_1CFDFDAB8);
  v80 = v116;
LABEL_24:
  v98 = 0x7365676E616863;
  if ((v109 & (v108 != 0)) != 0)
  {
    v98 = 0x6F4370756D726177;
  }

  v99 = 0xE700000000000000;
  v120 = v19;
  v121 = v20;
  if ((v109 & (v108 != 0)) != 0)
  {
    v99 = 0xEE006574656C706DLL;
  }

  *&v119 = v98;
  *(&v119 + 1) = v99;
  sub_1CFDFDB80(&v119, v117);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v115 = v80;
  v101 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
  MEMORY[0x1EEE9AC00](v101, v101);
  v103 = (&v105 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v104 + 16))(v103);
  sub_1CFE2A158(*v103, v103[1], 1701869940, 0xE400000000000000, v100, &v115);
  __swift_destroy_boxed_opaque_existential_1(v117);
  return v115;
}

unint64_t sub_1CFE2B704()
{
  result = qword_1EC509FB0;
  if (!qword_1EC509FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509FB0);
  }

  return result;
}

uint64_t type metadata accessor for HealthBalanceNotificationsAnalyticsEvent(uint64_t a1)
{
  result = qword_1EC509FB8;
  if (!qword_1EC509FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE2B7AC(uint64_t a1)
{
  sub_1CFE2B904(319, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CFE2B8A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFE2B904(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFE2B904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CFE2B958()
{
  result = qword_1EC509FC8;
  if (!qword_1EC509FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC509FC8);
  }

  return result;
}

unint64_t sub_1CFE2B9A4()
{
  result = qword_1EC509FD0;
  if (!qword_1EC509FD0)
  {
    sub_1CFE2B958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509FD0);
  }

  return result;
}

void SleepingSampleBaseline.init(s:_:_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v8 = type metadata accessor for SleepingSampleBaseline(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = objc_opt_self();
  v19 = [v18 secondUnit];
  v51 = [v17 quantityWithUnit:v19 doubleValue:a3];

  if (a2 > a4)
  {
    __break(1u);
  }

  else
  {
    v47 = v12;
    v48 = v16;
    v49 = v9;
    v50 = a1;
    v20 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v21 = [v18 secondUnit];
    v22 = [v17 quantityWithUnit:v21 doubleValue:a2];

    v23 = [v18 secondUnit];
    v24 = [v17 quantityWithUnit:v23 doubleValue:a4];

    v25 = [v20 initWithMinimum:v22 maximum:v24 isMinimumInclusive:1 isMaximumInclusive:1];
    v26 = [v18 secondUnit];
    v27 = [v17 quantityWithUnit:v26 doubleValue:(a4 - a2) * 0.25];

    v28 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v29 = [v18 secondUnit];
    v30 = [v17 quantityWithUnit:v29 doubleValue:a2];

    v31 = [v18 secondUnit];
    v32 = [v17 quantityWithUnit:v31 doubleValue:a4];

    v33 = [v28 initWithMinimum:v30 maximum:v32 isMinimumInclusive:1 isMaximumInclusive:1];
    v34 = v51;
    if ([v25 containsQuantity_])
    {
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      v35 = v34;
      v36 = v47;
      sub_1CFE306B4();
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v37 = v25;
      sub_1CFE306B4();
      v38 = v27;
      sub_1CFE306B4();
      sub_1CFE306B4();

      v39 = v36;
      v40 = v48;
      sub_1CFDC6388(v39, v48);
      v41 = v49;
      v42 = *(v49 + 56);
      v42(v40, 0, 1, v8);
    }

    else
    {

      v40 = v48;
      v41 = v49;
      v42 = *(v49 + 56);
      v42(v48, 1, 1, v8);
    }

    v43 = (*(v41 + 48))(v40, 1, v8);
    v44 = v50;
    if (v43)
    {
      sub_1CFDC87EC(v40);
      v45 = 1;
    }

    else
    {
      sub_1CFDC6388(v40, v50);
      v45 = 0;
    }

    v42(v44, v45, 1, v8);
  }
}

void SleepingSampleBaseline.init(percent:_:_:iqr:)(double a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v56 = a2;
  v55 = a1;
  v10 = type metadata accessor for SleepingSampleBaseline(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  v20 = objc_opt_self();
  v21 = [v20 percentUnit];
  v57 = [v19 quantityWithUnit:v21 doubleValue:a5 / 100.0];

  if (a4 > a6)
  {
    __break(1u);
  }

  else
  {
    v51 = v14;
    v52 = v18;
    v53 = v11;
    v54 = a3;
    v22 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v23 = [v20 percentUnit];
    v24 = [v19 quantityWithUnit:v23 doubleValue:a4 / 100.0];

    v25 = [v20 percentUnit];
    v26 = a6 / 100.0;
    v27 = [v19 quantityWithUnit:v25 doubleValue:a6 / 100.0];

    v28 = [v22 initWithMinimum:v24 maximum:v27 isMinimumInclusive:1 isMaximumInclusive:1];
    if (v56)
    {
      v29 = (a6 - a4) * 0.25;
    }

    else
    {
      v29 = v55;
    }

    v30 = [v20 percentUnit];
    v31 = [v19 quantityWithUnit:v30 doubleValue:v29 / 100.0];

    v32 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v33 = [v20 percentUnit];
    v34 = [v19 quantityWithUnit:v33 doubleValue:a4 / 100.0];

    v35 = [v20 percentUnit];
    v36 = [v19 quantityWithUnit:v35 doubleValue:v26];

    v37 = [v32 initWithMinimum:v34 maximum:v36 isMinimumInclusive:1 isMaximumInclusive:1];
    v38 = v57;
    if ([v28 containsQuantity_])
    {
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      v39 = v38;
      v40 = v51;
      sub_1CFE306B4();
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v41 = v28;
      sub_1CFE306B4();
      v42 = v31;
      sub_1CFE306B4();
      sub_1CFE306B4();

      v43 = v40;
      v44 = v52;
      sub_1CFDC6388(v43, v52);
      v45 = v53;
      v46 = *(v53 + 56);
      v46(v44, 0, 1, v10);
    }

    else
    {

      v44 = v52;
      v45 = v53;
      v46 = *(v53 + 56);
      v46(v52, 1, 1, v10);
    }

    v47 = (*(v45 + 48))(v44, 1, v10);
    v48 = v54;
    if (v47)
    {
      sub_1CFDC87EC(v44);
      v49 = 1;
    }

    else
    {
      sub_1CFDC6388(v44, v54);
      v49 = 0;
    }

    v46(v48, v49, 1, v10);
  }
}

void sub_1CFE2C3CC(double a1@<X0>, int a2@<W1>, SEL *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  LODWORD(v52) = a2;
  v51 = a1;
  v12 = type metadata accessor for SleepingSampleBaseline(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_opt_self();
  v22 = objc_opt_self();
  v23 = [v22 *a3];
  v53 = [v21 quantityWithUnit:v23 doubleValue:a6];

  if (a5 > a7)
  {
    __break(1u);
  }

  else
  {
    v48 = v16;
    v49 = v13;
    v50 = a4;
    v24 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v25 = [v22 *a3];
    v26 = [v21 quantityWithUnit:v25 doubleValue:a5];

    v27 = [v22 *a3];
    v28 = [v21 quantityWithUnit:v27 doubleValue:a7];

    v29 = [v24 initWithMinimum:v26 maximum:v28 isMinimumInclusive:1 isMaximumInclusive:1];
    if (v52)
    {
      v30 = (a7 - a5) * 0.25;
    }

    else
    {
      v30 = v51;
    }

    v31 = [v22 *a3];
    v52 = [v21 quantityWithUnit:v31 doubleValue:v30];

    v32 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v33 = [v22 *a3];
    v34 = [v21 quantityWithUnit:v33 doubleValue:a5];

    v35 = [v22 *a3];
    v36 = [v21 quantityWithUnit:v35 doubleValue:a7];

    v37 = [v32 initWithMinimum:v34 maximum:v36 isMinimumInclusive:1 isMaximumInclusive:1];
    v38 = v53;
    if ([v29 containsQuantity_])
    {
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      v39 = v38;
      v40 = v48;
      sub_1CFE306B4();
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v41 = v29;
      sub_1CFE306B4();
      v42 = v52;
      sub_1CFE306B4();
      sub_1CFE306B4();

      sub_1CFDC6388(v40, v20);
      v43 = v49;
      v44 = *(v49 + 56);
      v44(v20, 0, 1, v12);
    }

    else
    {

      v43 = v49;
      v44 = *(v49 + 56);
      v44(v20, 1, 1, v12);
    }

    v45 = (*(v43 + 48))(v20, 1, v12);
    v46 = v50;
    if (v45)
    {
      sub_1CFDC87EC(v20);
      v47 = 1;
    }

    else
    {
      sub_1CFDC6388(v20, v50);
      v47 = 0;
    }

    v44(v46, v47, 1, v12);
  }
}

id SleepingSampleBaseline.init(duration:_:_:iqr:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v61 = a8;
  v63 = a7;
  v67 = a9;
  v68 = a4;
  v15 = type metadata accessor for SleepingSampleBaseline(0);
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v62 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v64 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(MEMORY[0x1E696C350]);
  v22 = objc_opt_self();
  v23 = objc_opt_self();
  result = [v23 minuteUnit];
  v25 = 60 * a1;
  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v26 = __OFADD__(v25, a2);
  v27 = v25 + a2;
  if (v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = result;
  v29 = [v22 quantityWithUnit:result doubleValue:v27];

  result = [v23 minuteUnit];
  v30 = 60 * a5;
  if ((a5 * 60) >> 64 != (60 * a5) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = __OFADD__(v30, a6);
  v31 = v30 + a6;
  if (v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = result;
  v33 = [v22 quantityWithUnit:result doubleValue:v31];

  v34 = [v21 initWithMinimum:v29 maximum:v33 isMinimumInclusive:1 isMaximumInclusive:1];
  result = [v23 minuteUnit];
  v35 = 60 * a3;
  if ((a3 * 60) >> 64 != (60 * a3) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = __OFADD__(v35, v68);
  v36 = v35 + v68;
  if (v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = result;
  v38 = [v22 quantityWithUnit:result doubleValue:v36];

  result = [v23 minuteUnit];
  v39 = result;
  if ((a10 & 1) == 0)
  {
    v47 = 60 * v63;
    if ((v63 * 60) >> 64 == (60 * v63) >> 63)
    {
      v26 = __OFADD__(v47, v61);
      v48 = v47 + v61;
      if (!v26)
      {
        v46 = v48;
        goto LABEL_12;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = [v34 maximum];
  [v40 _value];
  v42 = v41;

  v43 = [v34 minimum];
  [v43 _value];
  v45 = v44;

  v46 = (v42 - v45) * 0.25;
LABEL_12:
  v49 = [v22 quantityWithUnit:v39 doubleValue:{v46, v61}];

  v50 = v34;
  if ([v50 containsQuantity_])
  {
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v51 = v38;
    v52 = v62;
    sub_1CFE306B4();
    v53 = v66;
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v54 = v50;
    sub_1CFE306B4();
    v55 = v49;
    sub_1CFE306B4();
    sub_1CFE306B4();

    v56 = v64;
    sub_1CFDC6388(v52, v64);
    v57 = v65;
    v58 = *(v65 + 56);
    v58(v56, 0, 1, v53);
  }

  else
  {

    v56 = v64;
    v57 = v65;
    v58 = *(v65 + 56);
    v53 = v66;
    v58(v64, 1, 1, v66);
  }

  v59 = v67;
  if ((*(v57 + 48))(v56, 1, v53))
  {
    sub_1CFDC87EC(v56);
    v60 = 1;
  }

  else
  {
    sub_1CFDC6388(v56, v59);
    v60 = 0;
  }

  return (v58)(v59, v60, 1, v53);
}

id SleepingSampleBaseline.init(duration:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v67 = a8;
  v64 = a9;
  v65 = a5;
  v15 = type metadata accessor for SleepingSampleBaseline(0);
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v61 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v62 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = objc_allocWithZone(MEMORY[0x1E696C350]);
  v21 = objc_opt_self();
  v22 = objc_opt_self();
  result = [v22 secondUnit];
  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = 3600 * a1;
  if ((60 * a1 * 60) >> 64 != (3600 * a1) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = 60 * a2;
  if ((a2 * 60) >> 64 != (60 * a2) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = __OFADD__(v27, a3);
  v28 = v27 + a3;
  if (v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = result;
  v30 = [v21 quantityWithUnit:result doubleValue:v28];

  result = [v22 secondUnit];
  if ((a6 * 60) >> 64 != (60 * a6) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = 3600 * a6;
  if ((60 * a6 * 60) >> 64 != (3600 * a6) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = 60 * a7;
  if ((a7 * 60) >> 64 != (60 * a7) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v26 = __OFADD__(v31, v32);
  v33 = v31 + v32;
  if (v26)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = __OFADD__(v33, v67);
  v34 = v33 + v67;
  if (v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v35 = result;
  v36 = [v21 quantityWithUnit:result doubleValue:v34];

  v37 = [v66 initWithMinimum:v30 maximum:v36 isMinimumInclusive:1 isMaximumInclusive:1];
  result = [v22 minuteUnit];
  v38 = 60 * a4;
  if ((a4 * 60) >> 64 != (60 * a4) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = __OFADD__(v38, v65);
  v39 = v38 + v65;
  if (v26)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v40 = result;
  v41 = [v21 quantityWithUnit:result doubleValue:v39];

  v42 = v37;
  v43 = [v42 maximum];
  [v43 _value];
  v45 = v44;

  v46 = [v42 minimum];
  [v46 _value];
  v48 = v47;

  v49 = [v22 secondUnit];
  v50 = [v21 quantityWithUnit:v49 doubleValue:(v45 - v48) * 0.25];

  if ([v42 containsQuantity_])
  {
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v51 = v41;
    v52 = v61;
    sub_1CFE306B4();
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v53 = v42;
    sub_1CFE306B4();
    v54 = v50;
    sub_1CFE306B4();
    sub_1CFE306B4();

    v55 = v62;
    sub_1CFDC6388(v52, v62);
    v56 = v63;
    v57 = *(v63 + 56);
    v57(v55, 0, 1, v15);
  }

  else
  {

    v55 = v62;
    v56 = v63;
    v57 = *(v63 + 56);
    v57(v62, 1, 1, v15);
  }

  v58 = v64;
  if ((*(v56 + 48))(v55, 1, v15))
  {
    sub_1CFDC87EC(v55);
    v59 = 1;
  }

  else
  {
    sub_1CFDC6388(v55, v58);
    v59 = 0;
  }

  return (v57)(v58, v59, 1, v15);
}

Swift::String __swiftcall HKQuantity.formattedValue(for:unit:)(HealthBalance::SleepingSampleDataType a1, HKUnit unit)
{
  v52 = a1;
  isa = unit.super.isa;
  v2 = sub_1CFE31244();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE2E650(0, &qword_1EC5094F0, MEMORY[0x1E6968048]);
  v7 = v6;
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v45 - v9;
  sub_1CFE2E650(0, &qword_1EC509500, MEMORY[0x1E6968070]);
  v12 = v11;
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - v14;
  v16 = sub_1CFE30234();
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  v23 = v22;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v31 = &v45 - v30;
  v32 = *v52;
  if (v32 <= 1)
  {
    v35 = v29;
    if (!*v52)
    {
      [v53 doubleValueForUnit_];
      v54 = v36;
      sub_1CFE303D4();
      sub_1CFDBCC00();
      sub_1CFE301A4();
      sub_1CFE30214();
LABEL_12:
      MEMORY[0x1D3875870](v19, v23);
      (*(v49 + 8))(v19, v50);
      v41 = *(v35 + 8);
      v41(v27, v23);
      sub_1CFDBCF44();
      sub_1CFE307F4();
      v41(v31, v23);
      goto LABEL_13;
    }

    [v53 doubleValueForUnit_];
LABEL_11:
    v54 = v38;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    v55 = 1;
    sub_1CFDBCEEC();
    sub_1CFE2F770(&qword_1EC509550, sub_1CFDBCEEC, MEMORY[0x1E69E6ED8]);
    sub_1CFE30224();
    goto LABEL_12;
  }

  if (v32 == 2)
  {
    v35 = v29;
    [v53 doubleValueForUnit_];
    v38 = v37 * 100.0;
    goto LABEL_11;
  }

  if (v32 == 3)
  {
    v33 = v53;
    v34 = isa;
    Measurement<>.init(wristTemperatureForFormatting:unit:)(v33, v34);
    static FormatStyle<>.wristTemperature(unit:)(v34, v10);
    sub_1CFDBCE68();
    sub_1CFE2FFC4();
    (*(v46 + 8))(v10, v7);
    (*(v45 + 8))(v15, v12);
  }

  else
  {
    v39 = v53;
    sub_1CFE2F0F4(v39);

    static FormatStyle<>.sleepDuration.getter(v5);
    sub_1CFE2F770(&qword_1EC509538, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
    v40 = v48;
    sub_1CFE31254();
    (*(v47 + 8))(v5, v40);
  }

LABEL_13:
  v42 = v55;
  v43 = v56;
  result._object = v43;
  result._countAndFlagsBits = v42;
  return result;
}

uint64_t sub_1CFE2D980()
{
  v1 = v0;
  v2 = sub_1CFE31244();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v32 - v11;
  v13 = [v0 _unit];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 _countPerSecondUnit];
  sub_1CFDA6E64(0, &qword_1EC509FE8, 0x1E696C510);
  v17 = sub_1CFE30C54();

  if (v17)
  {

    v18 = [v14 _countPerMinuteUnit];
    [v1 doubleValueForUnit_];
    v20 = v19;

    v38 = v20;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    sub_1CFDBCF44();
    sub_1CFE307F4();
    (*(v9 + 8))(v12, v8);
    v38 = v36;
    v39 = v37;
    MEMORY[0x1D3876060](0x6D2F746E756F6320, 0xEA00000000006E69);
    return v38;
  }

  v21 = v15;
  v22 = [v14 secondUnit];
  v23 = sub_1CFE30C54();

  if (v23)
  {

LABEL_6:
    v26 = [v14 secondUnit];
    [v1 doubleValueForUnit_];

    sub_1CFE31264();
    v27 = v33;
    static FormatStyle<>.sleepDuration.getter(v33);
    sub_1CFE2F770(&qword_1EC509538, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
    v28 = v35;
    sub_1CFE31254();
    (*(v34 + 8))(v27, v28);
    return v38;
  }

  v24 = [v14 minuteUnit];
  v25 = sub_1CFE30C54();

  if (v25)
  {
    goto LABEL_6;
  }

  v30 = [v1 description];
  v31 = sub_1CFE30924();

  return v31;
}

uint64_t static FormatStyle<>.heartRate.getter()
{
  v0 = sub_1CFE30234();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  sub_1CFE303D4();
  sub_1CFDBCC00();
  sub_1CFE301A4();
  sub_1CFE30214();
  MEMORY[0x1D3875870](v4, v8);
  (*(v1 + 8))(v4, v0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1CFE2E02C(unint64_t *a1, uint64_t (*a2)(uint64_t, void, unint64_t), void (*a3)(char *, void, unint64_t), void (*a4)(char *, uint64_t))
{
  v8 = sub_1CFE30234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE2F230(0, a1, a2);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v25 - v21;
  sub_1CFE303D4();
  v23 = sub_1CFDBCC00();
  a3(v16, MEMORY[0x1E69E63B0], v23);
  v25[1] = 1;
  sub_1CFDBCEEC();
  sub_1CFE2F770(&qword_1EC509550, sub_1CFDBCEEC, MEMORY[0x1E69E6ED8]);
  sub_1CFE30224();
  a4(v12, v18);
  (*(v9 + 8))(v12, v8);
  return (*(v19 + 8))(v22, v18);
}

uint64_t static FormatStyle<>.wristTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v25 = sub_1CFE30234();
  v1 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFE301E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  v13 = v12;
  v14 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v24 - v20;
  sub_1CFE303D4();
  sub_1CFDBCC00();
  sub_1CFE301A4();
  sub_1CFE301D4();
  MEMORY[0x1D3875850](v9, v13);
  (*(v6 + 8))(v9, v5);
  v22 = *(v14 + 8);
  v22(v18, v13);
  v26 = 2;
  sub_1CFDBCEEC();
  sub_1CFE2F770(&qword_1EC509550, sub_1CFDBCEEC, MEMORY[0x1E69E6ED8]);
  sub_1CFE30224();
  MEMORY[0x1D3875870](v4, v13);
  (*(v1 + 8))(v4, v25);
  return (v22)(v21, v13);
}

uint64_t Duration.init(sleepDurationForFormatting:)(void *a1)
{
  sub_1CFE2F0F4(a1);
  v3 = v2;

  return v3;
}

void sub_1CFE2E650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDA6E64(255, &qword_1EC5094F8, 0x1E696B080);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static FormatStyle<>.sleepDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v18 = sub_1CFE311E4();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFE311C4();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFE31234();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE2F294(0, &qword_1EC509FE0, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  sub_1CFE31214();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CFE357F0;
  sub_1CFE311F4();
  sub_1CFE31204();
  sub_1CFE2F2F8(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CFE31224();
  sub_1CFE311B4();
  sub_1CFE311D4();
  sub_1CFE2FF84();

  (*(v1 + 8))(v4, v18);
  (*(v5 + 8))(v8, v16);
  return (*(v9 + 8))(v12, v15);
}

void Measurement<>.init(wristTemperatureForFormatting:unit:)(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v12 = a2;
  v5 = [v4 _changeInDegreeCelsiusUnit];
  sub_1CFDA6E64(0, &qword_1EC509FE8, 0x1E696C510);
  v6 = sub_1CFE30C54();

  if (v6)
  {
    v7 = &selRef_celsius;
  }

  else
  {
    v8 = v12;
    v9 = [v4 _changeInDegreeFahrenheitUnit];
    v10 = sub_1CFE30C54();

    if ((v10 & 1) == 0)
    {
      sub_1CFE30ED4();
      __break(1u);
      return;
    }

    v7 = &selRef_fahrenheit;
  }

  v11 = [objc_opt_self() *v7];
  [a1 doubleValueForUnit_];
  sub_1CFDA6E64(0, &qword_1EC5094F8, 0x1E696B080);
  sub_1CFE2FF94();
}

uint64_t static FormatStyle<>.wristTemperature(unit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v42 = a2;
  sub_1CFE2F294(0, &qword_1EC509FF0, MEMORY[0x1E6969660], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v37 - v4;
  v6 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = sub_1CFE30384();
  v40 = *(v8 - 8);
  v41 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v37 - v13;
  sub_1CFE2F60C(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE2E650(0, &qword_1EC50A000, MEMORY[0x1E6968EE0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v37 - v23;
  sub_1CFE2E650(0, &qword_1EC50A008, MEMORY[0x1E6968030]);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v37 - v29;
  sub_1CFDA6E64(0, &qword_1EC5094F8, 0x1E696B080);
  sub_1CFE2FFB4();
  sub_1CFE301C4();
  static FormatStyle<>.wristTemperature.getter(v18);
  sub_1CFE2F230(0, &qword_1EC509508, MEMORY[0x1E6968E78]);
  (*(*(v31 - 8) + 56))(v18, 0, 1, v31);
  sub_1CFE2FF74();
  sub_1CFE2F680(v18);
  (*(v21 + 8))(v24, v20);
  (*(v27 + 8))(v30, v26);
  sub_1CFE303E4();
  sub_1CFE30374();
  sub_1CFDA6E64(0, &qword_1EC509FE8, 0x1E696C510);
  v32 = [objc_opt_self() _changeInDegreeFahrenheitUnit];
  LOBYTE(v26) = sub_1CFE30C54();

  if (v26)
  {
    sub_1CFE303A4();
  }

  else
  {
    sub_1CFE303B4();
  }

  v33 = sub_1CFE303C4();
  (*(*(v33 - 8) + 56))(v5, 0, 1, v33);
  sub_1CFE30364();
  v35 = v40;
  v34 = v41;
  (*(v40 + 16))(v38, v14, v41);
  sub_1CFE30394();
  sub_1CFE2E650(0, &qword_1EC5094F0, MEMORY[0x1E6968048]);
  sub_1CFE2FFA4();
  return (*(v35 + 8))(v14, v34);
}

void sub_1CFE2F0F4(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 secondUnit];
  v4 = [a1 isCompatibleWithUnit_];

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [v2 secondUnit];
  [a1 doubleValueForUnit_];
  v7 = v6;

  v8 = round(v7 / 60.0) * 60.0;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
  }
}

void sub_1CFE2F230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDBCC00();
    v7 = a3(a1, MEMORY[0x1E69E63B0], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1CFE2F294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFE2F2F8(uint64_t a1)
{
  v2 = sub_1CFE31214();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_1CFE2F6DC(0);
    v11 = sub_1CFE30D84();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1CFE2F770(&qword_1EC50A018, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v18 = sub_1CFE30824();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_1CFE2F770(&qword_1EC50A020, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v25 = sub_1CFE308B4();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1CFE2F60C(uint64_t a1)
{
  if (!qword_1EC509FF8)
  {
    sub_1CFE2F230(255, &qword_1EC509508, MEMORY[0x1E6968E78]);
    v1 = sub_1CFE30C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC509FF8);
    }
  }
}

uint64_t sub_1CFE2F680(uint64_t a1)
{
  sub_1CFE2F60C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE2F6DC(uint64_t a1)
{
  if (!qword_1EC50A010)
  {
    sub_1CFE31214();
    sub_1CFE2F770(&qword_1EC50A018, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
    v1 = sub_1CFE30D94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC50A010);
    }
  }
}

uint64_t sub_1CFE2F770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id HKTableFormatter.init(keyValueDomainDictionary:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  while (v4)
  {
LABEL_11:
    v13 = __clz(__rbit64(v4)) | (v7 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1CFDAC5F0(*(a1 + 56) + 32 * v13, &v38);
    v37[0] = v16;
    v37[1] = v15;
    sub_1CFE2FB98(v37, &v34);
    v18 = v34;
    v17 = v35;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1CFDDD778(0, *(v9 + 2) + 1, 1, v9);
    }

    v20 = *(v9 + 2);
    v19 = *(v9 + 3);
    v21 = v9;
    if (v20 >= v19 >> 1)
    {
      v21 = sub_1CFDDD778((v19 > 1), v20 + 1, 1, v9);
    }

    *(v21 + 2) = v20 + 1;
    v9 = v21;
    v22 = &v21[16 * v20];
    *(v22 + 4) = v18;
    *(v22 + 5) = v17;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v34 = v16;
    v35 = v15;
    sub_1CFE2FC64();
    if ((sub_1CFE30CB4() & 1) != 0 && (sub_1CFE2FB98(v37, &v34), , swift_dynamicCast()))
    {
      v36[1] = sub_1CFE30314();
      __swift_allocate_boxed_opaque_existential_0(&v34);
      sub_1CFE30254();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1CFDDDE68(0, *(v8 + 2) + 1, 1, v8);
      }

      v24 = *(v8 + 2);
      v23 = *(v8 + 3);
      if (v24 >= v23 >> 1)
      {
        v8 = sub_1CFDDDE68((v23 > 1), v24 + 1, 1, v8);
      }

      *(v8 + 2) = v24 + 1;
      v10 = &v8[32 * v24];
      v11 = &v34;
    }

    else
    {
      sub_1CFE2FB98(v37, &v34);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1CFDDDE68(0, *(v8 + 2) + 1, 1, v8);
      }

      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      if (v26 >= v25 >> 1)
      {
        v8 = sub_1CFDDDE68((v25 > 1), v26 + 1, 1, v8);
      }

      *(v8 + 2) = v26 + 1;
      v10 = &v8[32 * v26];
      v11 = v36;
    }

    sub_1CFDFDC04(v11, v10 + 2);
    v4 &= v4 - 1;
    result = sub_1CFE2FCB8(v37);
    v5 = v32;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v28 = sub_1CFE30A74();

      v29 = [v27 initWithColumnTitles_];

      v30 = v29;

      v31 = sub_1CFE30A74();

      [v30 appendHeterogenousRow_];

      return v30;
    }

    v4 = *(v1 + 8 * v12);
    ++v7;
    if (v4)
    {
      v7 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFE2FB98(uint64_t a1, uint64_t a2)
{
  sub_1CFE2FBFC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFE2FBFC()
{
  if (!qword_1EC50A028)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC50A028);
    }
  }
}

unint64_t sub_1CFE2FC64()
{
  result = qword_1EC50A030;
  if (!qword_1EC50A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC50A030);
  }

  return result;
}

uint64_t sub_1CFE2FCB8(uint64_t a1)
{
  sub_1CFE2FBFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SleepingSampleBaselineAvailability.available(on:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1CFDA7460(0);
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v28 - v13;
  v15 = sub_1CFE307E4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDCB868(0);
  v21 = *(v20 + 48);
  sub_1CFE30774();
  sub_1CFDF05AC();
  if (sub_1CFE30874())
  {
    v28 = a2;
    v29 = v21;
    v22 = *(v16 + 32);
    v22(v14, v19, v15);
    (*(v16 + 16))(&v14[*(v7 + 48)], a1, v15);
    sub_1CFDE4928(v14, v11);
    v23 = *(v7 + 48);
    v22(a3, v11, v15);
    v24 = *(v16 + 8);
    v24(&v11[v23], v15);
    sub_1CFDE49B0(v14, v11);
    v25 = *(v7 + 48);
    sub_1CFDA7AD0(0);
    v22(&a3[*(v26 + 36)], &v11[v25], v15);
    v24(v11, v15);
    *&a3[v29] = v28;
    type metadata accessor for SleepingSampleBaselineAvailability(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
    return sub_1CFE2FF74();
  }
}