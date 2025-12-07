void sub_25176A730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2)
{

  return objc_opt_class();
}

id OUTLINED_FUNCTION_7(uint64_t a1, void *a2)
{

  return a2;
}

BOOL populateNoiseLevelWithStatistics(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 hk_safeValueForKeyPath:@"averageQuantity" class:objc_opt_class() error:a3];
  if (v6)
  {
    v7 = [v5 hk_safeValueForKeyPath:@"duration" class:objc_opt_class() error:a3];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
      [v6 doubleValueForUnit:v9];
      *a1 = v10;

      v11 = [MEMORY[0x277CCDAB0] secondUnit];
      [v7 doubleValueForUnit:v11];
      a1[1] = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_251771420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_2517730EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _AllProperties()
{
  v2[3] = *MEMORY[0x277D85DE8];
  v2[0] = @"start_date";
  v2[1] = @"end_date";
  v2[2] = @"archived_statistics";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:3];

  return v0;
}

void sub_25177353C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251773B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251773D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251775BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251776170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void sub_251778E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_1_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t HDHearingTestDailyAnalyticsEvent.eventName.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_eventName);

  return v3;
}

void sub_25177E220()
{
  v1 = OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate);
  if (v2)
  {
    goto LABEL_4;
  }

  sub_251783FD0(0, &unk_2813D73D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_251789E40;
  v4 = HDSampleEntityPredicateForDataType();
  v5 = sub_251783940(0, &qword_2813D7410, 0x277D10B70);
  *(v3 + 56) = v5;
  *(v3 + 32) = v4;
  v6 = [*(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile) metadataManager];
  v7 = [v6 predicateWithMetadataKey:*MEMORY[0x277CCE0D0] exists:1];

  *(v3 + 88) = v5;
  *(v3 + 64) = v7;
  v8 = sub_251787858();

  v9 = [objc_opt_self() predicateMatchingAllPredicates_];

  if (v9)
  {
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v9;

    v2 = 0;
LABEL_4:
    v11 = v2;
    return;
  }

  __break(1u);
}

id HDHearingTestDailyAnalyticsEvent.init(profile:)(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v24 = sub_251787688();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2517876C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2517876D8();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251783DD8(0, &qword_2813D7460, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = &v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_eventName];
  *v16 = 0xD000000000000023;
  v16[1] = 0x800000025178C1E0;
  v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_isEventSubmissionIHAGated] = 0;
  v17 = OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType;
  sub_251783940(0, &unk_2813D7418, 0x277CCD8D8);
  *&v2[v17] = [swift_getObjCClassFromMetadata() audiogramSampleType];
  *&v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate] = 0;
  sub_2517876B8();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9988], v6);
  sub_251787678();
  sub_2517876A8();
  v18 = v24;
  (*(v3 + 8))(v5, v24);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v23);
  result = (*(v3 + 48))(v15, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(&v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_oneYearAgo], v15, v18);
    *&v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile] = v22;
    v20 = type metadata accessor for HDHearingTestDailyAnalyticsEvent(0);
    v25.receiver = v2;
    v25.super_class = v20;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  return result;
}

void sub_25177E7D4(void *a1)
{
  v2 = v1;
  v39 = *MEMORY[0x277D85DE8];
  v38 = MEMORY[0x277D83B88];
  *&v37 = 1;
  sub_25177F5A4(&v37, v36);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_251782920(v36, 0xD000000000000010, 0x800000025178BFF0, isUniquelyReferenced_nonNull_native);
  v6 = HKImproveHealthAndActivityAnalyticsAllowed();
  v38 = MEMORY[0x277D839B0];
  LOBYTE(v37) = v6;
  sub_25177F5A4(&v37, v36);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_251782920(v36, 0xD000000000000021, 0x800000025178BFC0, v7);
  v35 = v4;
  v8 = [a1 environmentDataSource];
  v9 = [v8 activePairedDeviceProductType];

  v10 = MEMORY[0x277D837D0];
  if (v9)
  {
    v11 = sub_251787818();
    v13 = v12;

    v38 = v10;
    *&v37 = v11;
    *(&v37 + 1) = v13;
    sub_25177F5A4(&v37, v36);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_251782920(v36, 0xD000000000000016, 0x800000025178BFA0, v14);
    v35 = v4;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCD090]) init];
  *&v37 = 0;
  v16 = [v15 pairedDevicesWithError_];
  v17 = v37;
  if (!v16)
  {
LABEL_16:
    v24 = v17;

    sub_251787648();

    swift_willThrow();
    return;
  }

  v18 = v16;
  sub_251783EA0(0, &qword_2813D7428, &protocolRef_HKCBDevice);
  v19 = sub_251787868();
  v20 = v17;

  v34 = v2;
  if (v19 >> 62)
  {
LABEL_21:
    v21 = sub_251787928();
    if (v21)
    {
LABEL_6:
      v22 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x253081680](v22, v19);
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_21;
          }

          v17 = *(v19 + 8 * v22 + 32);
          swift_unknownObjectRetain();
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_15;
          }
        }

        if ([v17 isHearingTestCapable])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v22;
        if (v23 == v21)
        {
          goto LABEL_22;
        }
      }

      v25 = [v17 productName];
      if (v25)
      {
        v26 = v25;
        v27 = sub_251787818();
        v29 = v28;

        v38 = MEMORY[0x277D837D0];
        *&v37 = v27;
        *(&v37 + 1) = v29;
        sub_25177F5A4(&v37, v36);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        sub_251782920(v36, 0xD000000000000024, 0x800000025178BF70, v30);
        swift_unknownObjectRelease();
        v31 = v35;
        goto LABEL_23;
      }

      sub_2517823A8(v36, 0xD000000000000024, 0x800000025178BF70);
      swift_unknownObjectRelease();
      sub_251783D78(v36, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
      goto LABEL_24;
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_6;
    }
  }

LABEL_22:

  v38 = MEMORY[0x277D837D0];
  *&v37 = 4271950;
  *(&v37 + 1) = 0xE300000000000000;
  sub_25177F5A4(&v37, v36);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_251782920(v36, 0xD000000000000024, 0x800000025178BF70, v32);
  v31 = v35;
LABEL_23:
  v35 = v31;
LABEL_24:
  v33 = [a1 healthDataSource];
  if (v33)
  {
    sub_251782D80(&v35, 1, v33);
    sub_25177F73C();
    sub_25177F9AC(&v35);
    sub_251780530(&v35);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25177ECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25177F5A4(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_251782920(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    v8 = MEMORY[0x277D84F70];
    v9 = MEMORY[0x277D83D88];
    sub_251783D78(a1, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
    sub_2517823A8(v11, a2, a3);

    return sub_251783D78(v11, &unk_2813D73D0, v8 + 8, v9, sub_251783FD0);
  }

  return result;
}

uint64_t sub_25177EE08(void *a1)
{
  v70 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v4 = sub_251787688();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F98];
  v66 = MEMORY[0x277D84F98];
  v9 = [a1 healthDataSource];
  if (v9)
  {
    v63 = v4;
    v64 = v9;
    *&v68 = 0;
    v10 = [v9 biologicalSexWithError_];
    v61 = ObjectType;
    if (v10)
    {
      v11 = v10;
      v62 = v1;
      v12 = v68;
      v13 = HKAnalyticsPropertyValueForBiologicalSex();
      v14 = sub_251787818();
      v16 = v15;

      v69 = MEMORY[0x277D837D0];
      *&v68 = v14;
      *(&v68 + 1) = v16;
      sub_25177F5A4(&v68, v67);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v8;
      sub_251782920(v67, 0x6369676F6C6F6962, 0xED00007865536C61, isUniquelyReferenced_nonNull_native);

      v66 = v65;
      v18 = v63;
      v19 = v64;
    }

    else
    {
      v20 = v68;
      v21 = sub_251787648();

      v62 = v21;
      swift_willThrow();
      if (qword_2813D7430 != -1)
      {
        swift_once();
      }

      v22 = sub_2517877A8();
      __swift_project_value_buffer(v22, qword_2813D7468);
      v23 = sub_251787788();
      v24 = sub_251787878();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v68 = v26;
        *v25 = 136446210;
        v27 = sub_2517879B8();
        v29 = sub_251781DD0(v27, v28, &v68);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_251764000, v23, v24, "[%{public}s] Failed to fetch the user's biological sex. A sentinel value will be used.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x253081EF0](v26, -1, -1);
        MEMORY[0x253081EF0](v25, -1, -1);
      }

      v18 = v63;
      v19 = v64;
      v30 = sub_251787818();
      v69 = MEMORY[0x277D837D0];
      *&v68 = v30;
      *(&v68 + 1) = v31;
      sub_25177F5A4(&v68, v67);
      v32 = v66;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v32;
      sub_251782920(v67, 0x6369676F6C6F6962, 0xED00007865536C61, v33);

      v62 = 0;
      v66 = v65;
    }

    v34 = [a1 environmentDataSource];
    v35 = [v34 currentDate];

    sub_251787668();
    v36 = sub_251787658();
    (*(v5 + 8))(v7, v18);
    *&v68 = 0;
    v37 = [v19 ageWithCurrentDate:v36 error:&v68];

    v38 = v68;
    if (v37)
    {
      v39 = sub_251783940(0, &unk_27F45E548, 0x277CCABB0);
      v40 = v38;
      v41 = v37;
      v42 = sub_251787898();
      v43 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

      if (v43)
      {
        v69 = v39;
        *&v68 = v43;
        sub_25177F5A4(&v68, v67);
        v44 = v66;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v65 = v44;
        sub_251782920(v67, 6645601, 0xE300000000000000, v45);

        v66 = v65;
      }

      else
      {
        sub_2517823A8(&v68, 6645601, 0xE300000000000000);

        sub_251783D78(&v68, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
      }
    }

    else
    {
      v46 = v68;
      v47 = sub_251787648();

      swift_willThrow();
      if (qword_2813D7430 != -1)
      {
        swift_once();
      }

      v48 = sub_2517877A8();
      __swift_project_value_buffer(v48, qword_2813D7468);
      v49 = sub_251787788();
      v50 = sub_251787878();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v68 = v52;
        *v51 = 136446210;
        v53 = sub_2517879B8();
        v55 = sub_251781DD0(v53, v54, &v68);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_251764000, v49, v50, "[%{public}s] Failed to fetch the user's age. A sentinel value will be used.", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x253081EF0](v52, -1, -1);
        MEMORY[0x253081EF0](v51, -1, -1);
      }

      v56 = *MEMORY[0x277CCB7A0];
      v69 = sub_251783940(0, &unk_27F45E548, 0x277CCABB0);
      *&v68 = v56;
      sub_25177F5A4(&v68, v67);
      v57 = v56;
      v58 = v66;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v58;
      sub_251782920(v67, 6645601, 0xE300000000000000, v59);

      v66 = v65;
    }

    sub_251782D80(&v66, 0, v19);
    sub_251780E64();
    sub_251781404();
    swift_unknownObjectRelease();
    return v66;
  }

  return v8;
}

uint64_t type metadata accessor for HDHearingTestDailyAnalyticsEvent(uint64_t a1)
{
  result = qword_2813D7438;
  if (!qword_2813D7438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_25177F5A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_25177F5CC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  v9 = sub_2517877B8();

  return v9;
}

uint64_t sub_25177F6C0(uint64_t a1)
{
  v2 = sub_2517878B8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_251782D2C(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_25177F73C()
{
  v20 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_25177E220();
  v5 = v4;
  v18[0] = 0;
  v6 = [v1 countOfSamplesWithType:v2 profile:v3 matchingPredicate:v4 withError:v18];

  if (v18[0])
  {
    v7 = qword_2813D7430;
    v8 = v18[0];
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_2517877A8();
    __swift_project_value_buffer(v9, qword_2813D7468);
    v10 = sub_251787788();
    v11 = sub_251787878();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136446210;
      v14 = sub_2517879B8();
      v16 = sub_251781DD0(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_251764000, v10, v11, "[%{public}s] Could not read number of first party samples.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x253081EF0](v13, -1, -1);
      MEMORY[0x253081EF0](v12, -1, -1);
    }
  }

  else
  {
    v17 = MEMORY[0x277D839B0];
    v19 = MEMORY[0x277D839B0];
    v18[0] = (v6 > 0);
    sub_25177ECE0(v18, 0xD000000000000016, 0x800000025178C080);
    v19 = v17;
    LOBYTE(v18[0]) = v6 > 1;
    sub_25177ECE0(v18, 0xD00000000000001FLL, 0x800000025178C0A0);
  }
}

void sub_25177F9AC(uint64_t a1)
{
  v85 = a1;
  v98 = *MEMORY[0x277D85DE8];
  v79[1] = swift_getObjectType();
  v2 = sub_251787688();
  v91 = *(v2 - 8);
  v92 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v90 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v86 = v79 - v5;
  v6 = sub_2517876D8();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_251787628();
  v87 = *(v83 - 8);
  v9 = MEMORY[0x28223BE20](v83);
  v80 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v79 - v11;
  v13 = objc_opt_self();
  v14 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v15 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_25177E220();
  v17 = v16;
  *&v96 = 0;
  v18 = [v13 oldestSampleWithType:v14 profile:v15 encodingOptions:0 predicate:v16 error:&v96];

  v19 = v96;
  if (v18)
  {
    v20 = v96;
    sub_2517878A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
    v21 = v96;
  }

  v96 = v94;
  v97 = v95;
  v22 = MEMORY[0x277D84F70];
  if (*(&v95 + 1))
  {
    sub_251783940(0, &qword_27F45E5C0, 0x277CCD030);
    if (swift_dynamicCast())
    {
      v23 = v93;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_251783D78(&v96, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
    v23 = 0;
  }

  v24 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate);
  *&v96 = v19;
  v25 = [v13 mostRecentSampleWithType:v14 profile:v15 encodingOptions:0 predicate:v24 anchor:0 error:&v96];
  v82 = v96;

  if (v25)
  {
    sub_2517878A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96 = v94;
  v97 = v95;
  if (*(&v95 + 1))
  {
    sub_251783940(0, &qword_27F45E5C0, 0x277CCD030);
    v26 = swift_dynamicCast();
    v27 = v93;
    if (!v26)
    {
      v27 = 0;
    }

    v81 = v27;
  }

  else
  {
    sub_251783D78(&v96, &unk_2813D73D0, v22 + 8, MEMORY[0x277D83D88], sub_251783FD0);
    v81 = 0;
  }

  v28 = MEMORY[0x277CC9940];
  v84 = v23;
  if (v23)
  {
    v29 = v23;
    sub_2517876B8();
    sub_251783DD8(0, &qword_27F45E5D0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v30 = sub_2517876C8();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_251789E50;
    (*(v31 + 104))(v33 + v32, *v28, v30);
    sub_251783988(v33);
    swift_setDeallocating();
    (*(v31 + 8))(v33 + v32, v30);
    swift_deallocClassInstance();
    v34 = [v29 _creationDate];
    v35 = v86;
    sub_251787668();

    v36 = v90;
    sub_251787678();
    sub_251787698();

    v37 = *(v91 + 8);
    v38 = v36;
    v39 = v92;
    v37(v38, v92);
    v37(v35, v39);
    (*(v88 + 8))(v8, v89);
    v40 = sub_2517875F8();
    LOBYTE(v37) = v41;
    v42 = v12;
    v43 = v83;
    (*(v87 + 8))(v42, v83);
    if (v37)
    {
      v40 = 0;
      v44 = 0;
      *(&v96 + 1) = 0;
      *&v97 = 0;
    }

    else
    {
      v44 = MEMORY[0x277D83B88];
    }

    v49 = v81;
    *&v96 = v40;
    *(&v97 + 1) = v44;
    sub_25177ECE0(&v96, 0xD000000000000018, 0x800000025178C0C0);

    if (v49)
    {
LABEL_32:
      sub_2517876B8();
      sub_251783DD8(0, &qword_27F45E5D0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v65 = sub_2517876C8();
      v66 = *(v65 - 8);
      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_251789E50;
      (*(v66 + 104))(v68 + v67, *MEMORY[0x277CC9940], v65);
      sub_251783988(v68);
      swift_setDeallocating();
      (*(v66 + 8))(v68 + v67, v65);
      swift_deallocClassInstance();
      v69 = [v49 _creationDate];
      v70 = v86;
      sub_251787668();

      v71 = v90;
      sub_251787678();
      v72 = v80;
      sub_251787698();

      v73 = *(v91 + 8);
      v74 = v71;
      v75 = v92;
      v73(v74, v92);
      v73(v70, v75);
      (*(v88 + 8))(v8, v89);
      v76 = sub_2517875F8();
      LOBYTE(v75) = v77;
      (*(v87 + 8))(v72, v43);
      if (v75)
      {
        v76 = 0;
        v78 = 0;
        *(&v96 + 1) = 0;
        *&v97 = 0;
      }

      else
      {
        v78 = MEMORY[0x277D83B88];
      }

      *&v96 = v76;
      *(&v97 + 1) = v78;
      sub_25177ECE0(&v96, 0xD000000000000017, 0x800000025178C0E0);

      return;
    }
  }

  else
  {
    if (qword_2813D7430 != -1)
    {
      swift_once();
    }

    v45 = sub_2517877A8();
    __swift_project_value_buffer(v45, qword_2813D7468);
    v46 = sub_251787788();
    v47 = sub_251787888();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v81;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v96 = v51;
      *v50 = 136446210;
      v52 = sub_2517879B8();
      v54 = sub_251781DD0(v52, v53, &v96);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_251764000, v46, v47, "[%{public}s] Could not find oldest audiogram. Not submiting this data point to analytics.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x253081EF0](v51, -1, -1);
      MEMORY[0x253081EF0](v50, -1, -1);
    }

    v43 = v83;
    if (v49)
    {
      goto LABEL_32;
    }
  }

  if (qword_2813D7430 != -1)
  {
    swift_once();
  }

  v55 = sub_2517877A8();
  __swift_project_value_buffer(v55, qword_2813D7468);
  v56 = sub_251787788();
  v57 = sub_251787888();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v84;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v96 = v61;
    *v60 = 136446210;
    v62 = sub_2517879B8();
    v64 = sub_251781DD0(v62, v63, &v96);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_251764000, v56, v57, "[%{public}s] Could not find newest audiogram. Not submiting this data point to analytics.", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x253081EF0](v61, -1, -1);
    MEMORY[0x253081EF0](v60, -1, -1);
  }
}

void sub_251780530(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_251787688();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v67 - v8;
  v9 = sub_2517876D8();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_251787628();
  v87 = *(v82 - 8);
  v11 = MEMORY[0x28223BE20](v82);
  v81 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - v13;
  v15 = objc_opt_self();
  v16 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v17 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_25177E220();
  v19 = v18;
  *&v90 = 0;
  v20 = [v15 mostRecentSampleWithType:v16 profile:v17 encodingOptions:0 predicate:v18 anchor:0 error:&v90];

  v21 = v90;
  if (v20)
  {
    v22 = v90;
    sub_2517878A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
    v23 = v21;
  }

  v92 = v90;
  v93 = v91;
  if (*(&v91 + 1))
  {
    sub_251783940(0, &qword_27F45E5C0, 0x277CCD030);
    if (swift_dynamicCast())
    {
      ObjectType = a1;
      v79 = v21;
      v80 = v89;
      sub_2517876B8();
      sub_251783DD8(0, &qword_27F45E5D0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v25 = v24;
      v26 = sub_2517876C8();
      v27 = v7;
      v28 = *(v26 - 8);
      v29 = *(v28 + 80);
      v30 = (v29 + 32) & ~v29;
      v73 = *(v28 + 72);
      v72 = v29;
      v74 = v25;
      v31 = swift_allocObject();
      v69 = xmmword_251789E50;
      *(v31 + 16) = xmmword_251789E50;
      v32 = *MEMORY[0x277CC9968];
      v33 = v3;
      v34 = *(v28 + 104);
      v71 = v28 + 104;
      v70 = v34;
      v34(v31 + v30, v32, v26);
      sub_251783988(v31);
      swift_setDeallocating();
      v35 = *(v28 + 8);
      v75 = v26;
      v68 = v35;
      v35(v31 + v30, v26);
      swift_deallocClassInstance();
      v80 = v80;
      v36 = [v80 _creationDate];
      v37 = v86;
      sub_251787668();

      sub_251787678();
      v38 = v88;
      sub_251787698();

      v39 = *(v4 + 8);
      v76 = v27;
      v39(v27, v33);
      v78 = v33;
      v77 = v4 + 8;
      v39(v37, v33);
      v40 = v84;
      v83 = *(v83 + 8);
      (v83)(v38, v84);
      v41 = sub_251787608();
      LOBYTE(v33) = v42;
      v43 = *(v87 + 8);
      v44 = v82;
      v87 += 8;
      v67 = v43;
      v43(v14, v82);
      if (v33)
      {
        v45 = 0;
        v92 = 0uLL;
        *&v93 = 0;
      }

      else
      {
        LOBYTE(v92) = v41 < 31;
        v45 = MEMORY[0x277D839B0];
      }

      *(&v93 + 1) = v45;
      sub_25177ECE0(&v92, 0xD000000000000022, 0x800000025178C100);
      v54 = v88;
      sub_2517876B8();
      v55 = swift_allocObject();
      *(v55 + 16) = v69;
      v56 = v75;
      v70(v55 + v30, *MEMORY[0x277CC9988], v75);
      sub_251783988(v55);
      swift_setDeallocating();
      v68(v55 + v30, v56);
      swift_deallocClassInstance();
      v57 = v80;
      v58 = [v80 _creationDate];

      v59 = v86;
      sub_251787668();

      v60 = v76;
      sub_251787678();
      v61 = v81;
      sub_251787698();

      v62 = v78;
      v39(v60, v78);
      v39(v59, v62);
      (v83)(v54, v40);
      v63 = sub_251787618();
      LOBYTE(v60) = v64;
      v67(v61, v44);
      if (v60)
      {
        v65 = 0;
        v92 = 0uLL;
        *&v93 = 0;
      }

      else
      {
        LOBYTE(v92) = v63 < 1;
        v65 = MEMORY[0x277D839B0];
      }

      v66 = v79;
      *(&v93 + 1) = v65;
      sub_25177ECE0(&v92, 0xD000000000000020, 0x800000025178C130);

      return;
    }
  }

  else
  {
    sub_251783D78(&v92, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
  }

  if (qword_2813D7430 != -1)
  {
    swift_once();
  }

  v46 = sub_2517877A8();
  __swift_project_value_buffer(v46, qword_2813D7468);
  v47 = sub_251787788();
  v48 = sub_251787888();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v92 = v50;
    *v49 = 136446210;
    v51 = sub_2517879B8();
    v53 = sub_251781DD0(v51, v52, &v92);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_251764000, v47, v48, "[%{public}s] Could not find newest audiogram. Not submiting this data point to analytics.", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x253081EF0](v50, -1, -1);
    MEMORY[0x253081EF0](v49, -1, -1);
  }
}

void sub_251780E64()
{
  v46 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_251783FD0(0, &unk_2813D73D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_251789E40;
  sub_25177E220();
  v5 = v4;
  *(v3 + 56) = sub_251783940(0, &qword_27F45E5C8, 0x277D10B20);
  *(v3 + 32) = v5;
  v6 = sub_251787658();
  v7 = HDDataEntityPredicateForCreationDate();

  v43 = sub_251783940(0, &qword_2813D7410, 0x277D10B70);
  *(v3 + 88) = v43;
  *(v3 + 64) = v7;
  v8 = sub_251787858();

  v42 = objc_opt_self();
  v9 = [v42 predicateMatchingAllPredicates_];

  v44[0] = 0;
  v41 = objc_opt_self();
  v10 = [v41 countOfSamplesWithType:v1 profile:v2 matchingPredicate:v9 withError:v44];

  v11 = &OBJC_METACLASS___HDHeadphoneDoseManager;
  v40 = v44[0];
  if (v44[0])
  {
    v12 = qword_2813D7430;
    v13 = v44[0];
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_2517877A8();
    __swift_project_value_buffer(v14, qword_2813D7468);
    v15 = sub_251787788();
    v16 = sub_251787878();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44[0] = v18;
      *v17 = 136446210;
      v19 = sub_2517879B8();
      v21 = v2;
      v22 = v1;
      v23 = sub_251781DD0(v19, v20, v44);

      *(v17 + 4) = v23;
      v1 = v22;
      v2 = v21;
      v11 = &OBJC_METACLASS___HDHeadphoneDoseManager;
      _os_log_impl(&dword_251764000, v15, v16, "[%{public}s] Could not read number of first party samples.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x253081EF0](v18, -1, -1);
      MEMORY[0x253081EF0](v17, -1, -1);
    }
  }

  else
  {
    v45 = MEMORY[0x277D83B88];
    v44[0] = v10;
    sub_25177ECE0(v44, 0xD00000000000001FLL, 0x800000025178C160);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251789E40;
  v25 = HDSampleEntityPredicateForDataType();
  *(v24 + 56) = v43;
  *(v24 + 32) = v25;
  v26 = sub_251787658();
  v27 = HDDataEntityPredicateForCreationDate();

  *(v24 + 88) = v43;
  *(v24 + 64) = v27;
  v28 = sub_251787858();

  v29 = [v42 predicateMatchingAllPredicates_];

  v44[0] = v40;
  v30 = [v41 countOfSamplesWithType:v1 profile:v2 matchingPredicate:v29 withError:v44];

  v31 = v44[0];
  if (v31)
  {

    if (v11[26].info != -1)
    {
      swift_once();
    }

    v32 = sub_2517877A8();
    __swift_project_value_buffer(v32, qword_2813D7468);
    v33 = sub_251787788();
    v34 = sub_251787878();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44[0] = v36;
      *v35 = 136446210;
      v37 = sub_2517879B8();
      v39 = sub_251781DD0(v37, v38, v44);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_251764000, v33, v34, "[%{public}s] Could not read number of total samples.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x253081EF0](v36, -1, -1);
      MEMORY[0x253081EF0](v35, -1, -1);
    }
  }

  else
  {
    v45 = MEMORY[0x277D83B88];
    v44[0] = v30;
    sub_25177ECE0(v44, 0xD00000000000001ALL, 0x800000025178C180);
  }
}

void sub_251781404()
{
  v37 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_25177E220();
  v5 = v4;
  *&v33 = 0;
  v6 = [v1 mostRecentSampleWithType:v2 profile:v3 encodingOptions:0 predicate:v4 anchor:0 error:&v33];

  v7 = v33;
  if (v6)
  {
    v8 = v33;
    sub_2517878A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    sub_251783940(0, &qword_27F45E5C0, 0x277CCD030);
    if (swift_dynamicCast())
    {
      v10 = v31;
    }

    else
    {
      v10 = 0;
    }

    if (!v7)
    {
      if (v10)
      {
        v11 = v10;
        [v11 leftEarDiagnostic];
        v12 = HKLocalizedStringForHearingLevelClassification();
        if (v12 && (v13 = v12, v14 = sub_251787818(), v16 = v15, v13, v16))
        {
          v32 = MEMORY[0x277D837D0];
          *&v31 = v14;
          *(&v31 + 1) = v16;
          sub_25177F5A4(&v31, &v33);
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
        }

        v35 = v33;
        v36 = v34;

        sub_25177ECE0(&v35, 0xD000000000000019, 0x800000025178C1A0);
        v25 = v11;
        [v25 rightEarDiagnostic];
        v26 = HKLocalizedStringForHearingLevelClassification();
        if (v26 && (v27 = v26, v28 = sub_251787818(), v30 = v29, v27, v30))
        {
          v32 = MEMORY[0x277D837D0];
          *&v31 = v28;
          *(&v31 + 1) = v30;
          sub_25177F5A4(&v31, &v33);
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
        }

        v35 = v33;
        v36 = v34;

        goto LABEL_27;
      }

LABEL_20:
      v35 = 0u;
      v36 = 0u;
      sub_25177ECE0(&v35, 0xD000000000000019, 0x800000025178C1A0);
      v25 = 0;
      v35 = 0u;
      v36 = 0u;
LABEL_27:
      sub_25177ECE0(&v35, 0xD00000000000001ALL, 0x800000025178C1C0);

      return;
    }
  }

  else
  {
    sub_251783D78(&v35, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
    if (!v7)
    {
      goto LABEL_20;
    }

    v10 = 0;
  }

  if (qword_2813D7430 != -1)
  {
    swift_once();
  }

  v17 = sub_2517877A8();
  __swift_project_value_buffer(v17, qword_2813D7468);
  v18 = sub_251787788();
  v19 = sub_251787888();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v35 = v21;
    *v20 = 136446210;
    v22 = sub_2517879B8();
    v24 = sub_251781DD0(v22, v23, &v35);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_251764000, v18, v19, "[%{public}s] Could not find newest audiogram. Not submiting this data point to analytics.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x253081EF0](v21, -1, -1);
    MEMORY[0x253081EF0](v20, -1, -1);
  }
}

id HDHearingTestDailyAnalyticsEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHearingTestDailyAnalyticsEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHearingTestDailyAnalyticsEvent(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2517819D8(uint64_t a1, id *a2)
{
  result = sub_2517877F8();
  *a2 = 0;
  return result;
}

uint64_t sub_251781A50(uint64_t a1, id *a2)
{
  v3 = sub_251787808();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_251781AD0@<X0>(uint64_t *a2@<X8>)
{
  sub_251787818();
  v3 = sub_2517877E8();

  *a2 = v3;
  return result;
}

uint64_t sub_251781B14@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2517877E8();

  *a2 = v3;
  return result;
}

uint64_t sub_251781B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_251787818();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_251781B88(uint64_t a1)
{
  v2 = sub_251783D30(&qword_27F45E680, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_25178A028);
  v3 = sub_251783D30(&qword_27F45E688, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_251789FD0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251781C44()
{
  v0 = sub_251787818();
  v1 = MEMORY[0x2530815C0](v0);

  return v1;
}

uint64_t sub_251781C80(uint64_t a1)
{
  sub_251787818();
  sub_251787828();
}

uint64_t sub_251781CD4(uint64_t a1)
{
  sub_251787818();
  sub_251787998();
  sub_251787828();
  v1 = sub_2517879A8();

  return v1;
}

uint64_t sub_251781D48(void *a1, uint64_t *a2)
{
  v2 = sub_251787818();
  v4 = v3;
  if (v2 == sub_251787818() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_251787978();
  }

  return v7 & 1;
}

unint64_t sub_251781DD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251781E9C(v11, 0, 0, 1, a1, a2);
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
    sub_2517838E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_251781E9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251781FA8(a5, a6);
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
    result = sub_251787918();
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

void *sub_251781FA8(uint64_t a1, unint64_t a2)
{
  v3 = sub_251781FF4(a1, a2);
  sub_251782124(&unk_2863A3FD0);
  return v3;
}

void *sub_251781FF4(uint64_t a1, unint64_t a2)
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

  v6 = sub_251782210(v5, 0);
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

  result = sub_251787918();
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
        v10 = sub_251787838();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251782210(v10, 0);
        result = sub_2517878F8();
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

uint64_t sub_251782124(uint64_t result)
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

  result = sub_25178229C(result, v11, 1, v3);
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

void *sub_251782210(uint64_t a1, uint64_t a2)
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

  sub_251783FD0(0, &qword_27F45E5B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25178229C(char *result, int64_t a2, char a3, char *a4)
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
    sub_251783FD0(0, &qword_27F45E5B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

double sub_2517823A8@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_25178244C(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_251782B94();
      v10 = v12;
    }

    sub_25177F5A4((*(v10 + 56) + 32 * v8), a1);
    sub_251782770(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t sub_25178244C(uint64_t a1, uint64_t a2)
{
  sub_251787998();
  sub_251787828();
  v4 = sub_2517879A8();

  return sub_251782ADC(a1, a2, v4);
}

uint64_t sub_2517824C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251784020();
  v33 = v4;
  result = sub_251787948();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_25177F5A4(v24, v34);
      }

      else
      {
        sub_2517838E0(v24, v34);
      }

      sub_251787998();
      sub_251787828();
      result = sub_2517879A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25177F5A4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_251782770(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2517878C8() + 1) & ~v5;
    do
    {
      sub_251787998();

      sub_251787828();
      v10 = sub_2517879A8();

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

  return result;
}

_OWORD *sub_251782920(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25178244C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_251782B94();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2517824C4(v16, a4 & 1);
    v11 = sub_25178244C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_251787988();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_25177F5A4(a1, v22);
  }

  else
  {
    sub_251782A70(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_251782A70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25177F5A4(a4, (a5[7] + 32 * a1));
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

unint64_t sub_251782ADC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_251787978())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_251782B94()
{
  v1 = v0;
  sub_251784020();
  v2 = *v0;
  v3 = sub_251787938();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2517838E0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25177F5A4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_251782D2C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_251782D80(uint64_t a1, int a2, void *a3)
{
  v62 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_2517876F8();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251787738();
  v61 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v55 - v12;
  v14 = sub_251787728();
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251787758();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v66 = v55 - v22;
  v23 = [a3 featureStatusProviderForIdentifier_];
  if (v23 && (v70[0] = v23, sub_251783EA0(0, &unk_2813D7400, &protocolRef_HKFeatureStatusProviding), sub_251783E3C(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v68 + 1))
    {
      v56 = v8;
      v57 = v18;
      v58 = v17;
      v55[1] = a1;
      sub_251783F00(&v67, v70);
      __swift_project_boxed_opaque_existential_1(v70, v70[3]);
      v24 = v66;
      sub_251787778();
      v26 = v57;
      v27 = v58;
      (*(v57 + 16))(v21, v24, v58);
      v28 = (*(v26 + 88))(v21, v27);
      v29 = v24;
      if (v28 == *MEMORY[0x277D11288])
      {
        (*(v26 + 96))(v21, v27);
        v31 = v63;
        v30 = v64;
        (*(v63 + 32))(v16, v21, v64);
        v32 = v56;
        if (v62)
        {
          v33 = sub_251787718();
          v34 = sub_25177F6C0(v33);
          v36 = v35;

          *(&v68 + 1) = MEMORY[0x277D837D0];
          if (!v36)
          {
            v34 = sub_251787818();
            v36 = v37;
          }

          *&v67 = v34;
          *(&v67 + 1) = v36;
          sub_25177ECE0(&v67, 0xD000000000000015, 0x800000025178BF50);
          v38 = MEMORY[0x277D839B0];
          *(&v68 + 1) = MEMORY[0x277D839B0];
          LOBYTE(v67) = 1;
          sub_25177ECE0(&v67, 0xD000000000000017, 0x800000025178C010);
          v39 = sub_251787768();
          v40 = [v39 areAllRequirementsSatisfied];

          *(&v68 + 1) = v38;
          LOBYTE(v67) = v40;
          sub_25177ECE0(&v67, 0xD000000000000017, 0x800000025178C030);
          sub_2517876E8();
          v41 = sub_251787748();
          (*(v61 + 8))(v13, v32);
          v42 = [v41 highestPriorityUnsatisfiedRequirement];

          v43 = 0;
          if (v42)
          {
            type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
          }

          else
          {
            *(&v67 + 1) = 0;
            *&v68 = 0;
          }

          v53 = v58;
          v54 = v57;
          *&v67 = v42;
          *(&v68 + 1) = v43;
          sub_25177ECE0(&v67, 0xD000000000000023, 0x800000025178C050);
          (*(v63 + 8))(v16, v64);
          (*(v54 + 8))(v66, v53);
          return __swift_destroy_boxed_opaque_existential_0Tm(v70);
        }

        (*(v31 + 8))(v16, v30);
      }

      else
      {
        v44 = v56;
        if (v28 != *MEMORY[0x277D11280])
        {
          v52 = *(v26 + 8);
          v52(v29, v27);
          v52(v21, v27);
          return __swift_destroy_boxed_opaque_existential_0Tm(v70);
        }

        (*(v26 + 96))(v21, v27);
        v45 = v59;
        v46 = v21;
        v47 = v60;
        (*(v59 + 32))(v7, v46, v60);
        if (v62)
        {
          *(&v68 + 1) = MEMORY[0x277D837D0];
          *&v67 = 4271950;
          *(&v67 + 1) = 0xE300000000000000;
          sub_25177ECE0(&v67, 0xD000000000000015, 0x800000025178BF50);
          v48 = MEMORY[0x277D839B0];
          *(&v68 + 1) = MEMORY[0x277D839B0];
          LOBYTE(v67) = 0;
          sub_25177ECE0(&v67, 0xD000000000000017, 0x800000025178C010);
          *(&v68 + 1) = v48;
          LOBYTE(v67) = 0;
          sub_25177ECE0(&v67, 0xD000000000000017, 0x800000025178C030);
          sub_2517876E8();
          v49 = sub_251787748();
          (*(v61 + 8))(v11, v44);
          v50 = [v49 highestPriorityUnsatisfiedRequirement];

          v51 = 0;
          if (v50)
          {
            type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
          }

          else
          {
            *(&v67 + 1) = 0;
            *&v68 = 0;
          }

          *&v67 = v50;
          *(&v68 + 1) = v51;
          sub_25177ECE0(&v67, 0xD000000000000023, 0x800000025178C050);
          (*(v45 + 8))(v7, v47);
          (*(v26 + 8))(v66, v27);
          return __swift_destroy_boxed_opaque_existential_0Tm(v70);
        }

        (*(v45 + 8))(v7, v47);
      }

      (*(v26 + 8))(v29, v27);
      return __swift_destroy_boxed_opaque_existential_0Tm(v70);
    }
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
  }

  return sub_251783D78(&v67, &unk_27F45E5F0, sub_251783E3C, MEMORY[0x277D83D88], sub_251783DD8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_251783764(uint64_t a1)
{
  result = sub_251787688();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2517838E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_251783940(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251783988(uint64_t a1)
{
  v2 = sub_2517876C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_251783C9C(0);
    v9 = sub_2517878D8();
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
      sub_251783D30(&qword_27F45E5E0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_2517877C8();
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
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_251783D30(&qword_27F45E5E8, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_2517877D8();
          v24 = *v15;
          (*v15)(v6, v2);
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

void sub_251783C9C(uint64_t a1)
{
  if (!qword_27F45E5D8)
  {
    sub_2517876C8();
    sub_251783D30(&qword_27F45E5E0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v1 = sub_2517878E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45E5D8);
    }
  }
}

uint64_t sub_251783D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251783D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_251783DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251783E3C()
{
  result = qword_2813D7458;
  if (!qword_2813D7458)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D7458);
  }

  return result;
}

uint64_t sub_251783EA0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251783F00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_251783FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_251784020()
{
  if (!qword_2813D73E8)
  {
    v0 = sub_251787958();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D73E8);
    }
  }
}

uint64_t sub_25178415C()
{
  v0 = sub_2517877A8();
  __swift_allocate_value_buffer(v0, qword_2813D7468);
  __swift_project_value_buffer(v0, qword_2813D7468);
  sub_251787818();
  return sub_251787798();
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