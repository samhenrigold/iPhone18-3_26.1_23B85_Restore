uint64_t sub_21AF81D68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21AF81DD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21AF81F00@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Ondeviceanalytics_RetentionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s23SearchOnDeviceAnalytics44Apple_Parsec_Ondeviceanalytics_RetentionTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_0_6(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Parsec_Ondeviceanalytics_SpotlightMetric(uint64_t result, int a2, int a3)
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

uint64_t sub_21AF81F70(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_0_6(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF81F84(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_21AF821EC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypeSummarized.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF82240()
{
  OUTLINED_FUNCTION_16_4();
  locked = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreen.getter();
  return OUTLINED_FUNCTION_30_0(locked);
}

uint64_t sub_21AF8228C()
{
  OUTLINED_FUNCTION_16_4();
  locked = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenSummarized.getter();
  return OUTLINED_FUNCTION_30_0(locked);
}

uint64_t sub_21AF822D8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageInDaysSince1970.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF82324()
{
  OUTLINED_FUNCTION_16_4();
  IsOlderThanStore = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageDateIsOlderThanStoreTtl.getter();
  return OUTLINED_FUNCTION_30_0(IsOlderThanStore);
}

uint64_t sub_21AF82370()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.dauAggregationDayOfWeek.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF823BC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isDeviceActivelyUsedInDay.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF82408()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInWeek.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF82454()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInFortnight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF824A0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInMonth.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF825F4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.totalSearchesWeekOverWeek.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF82620()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyTotalUsages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8266C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLastMonth.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF826B8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLast3Months.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF82704()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageMonthsInLast3Months.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF827A8()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.invocationTypeSummarized.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF827F4()
{
  OUTLINED_FUNCTION_16_4();
  locked = Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.isLockedScreen.getter();
  return OUTLINED_FUNCTION_30_0(locked);
}

uint64_t sub_21AF82840()
{
  OUTLINED_FUNCTION_16_4();
  locked = Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.isLockedScreenSummarized.getter();
  return OUTLINED_FUNCTION_30_0(locked);
}

uint64_t sub_21AF8288C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_36_0();
  v6 = sub_21B111EC4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21AF82934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B111EC4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21AF829DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 125)
  {
    v4 = *(a1 + 24);
    v5 = (v4 & 0x7E) == 0;
    v6 = (v4 & 0x7E | (v4 >> 7)) ^ 0x7F;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_21B111EC4();
    v11 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_21AF82A60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 125)
  {
    *(result + 16) = 0;
    *(result + 24) = ~a2 & 0x7E | (~a2 << 7);
  }

  else
  {
    v7 = sub_21B111EC4();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21AF82F24()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF82F88()
{
  OUTLINED_FUNCTION_34_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21B111EC4();
    v5 = OUTLINED_FUNCTION_64(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21AF82FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  OUTLINED_FUNCTION_80();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_21B111EC4();
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_21AF83098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  OUTLINED_FUNCTION_80();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v10 = sub_21B111EC4();
    v11 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21AF83144()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*v1);
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB8, &qword_21B114A28);
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF831F4()
{
  OUTLINED_FUNCTION_34_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_21B111EC4();
    OUTLINED_FUNCTION_80();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB8, &qword_21B114A28);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_64(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_21AF832B0()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43300, &qword_21B115FD8);
    OUTLINED_FUNCTION_80();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43308, &qword_21B115FE0);
      v6 = v2[8];
    }
  }

  v8 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_21AF833AC()
{
  OUTLINED_FUNCTION_34_2();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_21B111EC4();
    OUTLINED_FUNCTION_80();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43300, &qword_21B115FD8);
      OUTLINED_FUNCTION_80();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43308, &qword_21B115FE0);
        v8 = v5[8];
      }
    }

    v10 = OUTLINED_FUNCTION_64(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_21AF834BC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  swift_unknownObjectRelease();
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  }

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t sub_21AF83594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21B111E34();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21AF8361C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_21B111E34();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21AF8382C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF83880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF83900(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45();
  v4 = sub_21B111DA4();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_21AF83944(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45();
  v4 = sub_21B111DA4();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_21AF8398C()
{
  sub_21B111CB4();
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_21AF83ACC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = Apple_Parsec_Feedback_V2_SearchSuggestionType.rawValue.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AF83F7C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21AF83F94(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21AF83F94(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21AF83FA4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21AF83FBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21AF83FBC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21AF84474()
{
  OUTLINED_FUNCTION_53_0();
  sub_21B09A19C();
  OUTLINED_FUNCTION_192();
  return sub_21B111FB4();
}

uint64_t sub_21AF846AC()
{
  OUTLINED_FUNCTION_53_0();
  sub_21B099D58();
  OUTLINED_FUNCTION_192();
  return sub_21B111FB4();
}

uint64_t sub_21AF84A5C()
{
  OUTLINED_FUNCTION_53_0();
  sub_21B09A730();
  OUTLINED_FUNCTION_192();
  return sub_21B111FB4();
}

uint64_t sub_21AF84CF8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84D44()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.cellRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84D90()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.cellTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84DDC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.connectAttempts.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84E28()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.connectSuccesses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84E74()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.minRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84EC0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84F0C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84F58()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84FA4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84FF0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8503C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85088()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF850D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.varRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85120()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8516C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF851B8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85204()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85250()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.statsType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8527C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF852C8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF852F4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85320()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8536C()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF85488()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionUuid.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF854B4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.networkProtocolName.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF854E0()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_NetworkTimingData.quicwhitelistedDomain.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF8552C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCount.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85578()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCountW3C.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF855C4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestHeaderSize.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85610()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesDecoded.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8565C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesReceived.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF856A8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseHeaderSize.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF856F4()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_NetworkTimingData.tfosuccess.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF8578C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectStart.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF857D8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectEnd.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85824()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupStart.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85870()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupEnd.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF858BC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.fetchStart.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85908()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectStart.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85954()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectEnd.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF859A0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestStart.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF859EC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestEnd.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85A38()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseStart.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85A84()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseEnd.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85AD0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.secureConnectStart.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF85B1C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85C80()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85D04()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85F28()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultType.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF85FA0()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isStaticCorrection.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF85FEC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.queryID.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF86038()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.intendedQuery.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF86064()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.correctedQuery.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF86090()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.completedQuery.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF860BC()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isLocalApplicationResult.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86108()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.publiclyIndexable.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86154()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.fbr.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF86180()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.userInput.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF861AC()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isFuzzyMatch.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF861F8()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.doNotFold.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86244()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.blockID.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF86290()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.hashedIdentifier.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF86348()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF86438()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF86528()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF865AC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.entityData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF865D8()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldUseCompactDisplay.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86624()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.noGoTakeover.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86670()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.preferTopPlatter.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF866BC()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.wasCompact.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86708()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.didTakeoverGo.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86754()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.usesCompactDisplay.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF867A0()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isInstantAnswer.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF867EC()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldAutoNavigate.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86970()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.containsPersonalResult.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF869BC()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.didRerankPersonalResult.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86C20()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isVideoAssetFromPhotos.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86C6C()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isMailInstantAnswerUpdated.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86CB8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfSectionWhenRanked.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF86D04()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfResultInSectionWhenRanked.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF86DC8()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAppTopHitShortcut_p.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF86F98()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86FE4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87030()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numDaysEngagedLast30Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8707C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast7Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF870C8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast14Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87114()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast21Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87160()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF871AC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.daysSinceReceipt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87290()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF872DC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isRepliedTo.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF87328()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF87374()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF87458()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF874A4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF874F0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8753C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87588()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF875D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87620()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8766C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF876B8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87704()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87750()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8779C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF877E8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87834()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87880()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF878CC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87918()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87964()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF879B0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF879FC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87A48()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87A94()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87AE0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87B2C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87B78()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87BC4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87C10()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87C5C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87CA8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87CF4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87D40()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87D8C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87DD8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87E24()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87E70()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87EBC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87F08()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87F54()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87FA0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87FEC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88038()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88084()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF880D0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8811C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88168()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF881B4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88200()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8824C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88298()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF882E4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88330()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8837C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF883C8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88414()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88658()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF88684()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF886D0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF88764()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF887B0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.resultSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8888C()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didDisplayHandleOptions.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF888D8()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didSelectFromOptionsMenu.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF88AD4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88CA0()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destinationWasParpunchout.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF88CEC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.parPunchoutActionTarget.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF88D18()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSectionID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF88D44()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.resultID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF88E30()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF89054()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSectionID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF89080()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.resultID.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF891D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF89220()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8924C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF892D0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.queryID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF893CC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF89540()
{
  OUTLINED_FUNCTION_16_4();
  started = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.isPhotosScopedSearch.getter();
  return OUTLINED_FUNCTION_30_0(started);
}

uint64_t sub_21AF895E4()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89630()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF8967C()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF896C8()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89714()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89760()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF897AC()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF897F8()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89844()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89890()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF898DC()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89928()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89974()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF899C0()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89A0C()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89AB0()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isUnsafeQuery.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89AFC()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF8B4B0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.agent.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B4DC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.userGuidString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B508()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.resourceVersions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8B5D8()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.removeTimestamps.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8B624()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.parsecDeveloperID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B650()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.duEnabled.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8B69C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.countryCode.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B6C8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B7D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.devicePersistentD20.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8B878()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_ClientSession.isInternalCarry.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF8B8C4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.experimentInfo.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8B8F0()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_ClientSession.searchOptOut.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF8B93C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.jsonFeedback.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B968()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.feedback.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BA38()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_Value.stringValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF8BA64()
{
  OUTLINED_FUNCTION_16_4();
  v1 = Apple_Parsec_Feedback_V2_Value.BOOLValue.getter(v0);
  return OUTLINED_FUNCTION_30_0(v1);
}

uint64_t sub_21AF8BB90()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_Value.bytesValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_21AF8BBBC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BD40()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.uuidBytes.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8BD6C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.sections.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BD98()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.uploadedDataIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8BE1C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionStartTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BE68()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionEndTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BF0C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.totalUsagesInCollectionPeriod.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BFC0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.configuredLookbackTimeInDays.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C00C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.activeDaysInCollectionPeriod.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C058()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.totalEngagements.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C0A4()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_UsageSinceLookback.isDiagnosticsAndUsageEnabled.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8C0F0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.invokedDays.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C13C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.zkwEngagedDays.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C188()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.searchedDays.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C1D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.suggestionOrAppleResultEngagedDays.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C220()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.webEngagedDays.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C26C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.voiceSearchDays.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C2B8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.numSearchEngagements.getter(v1);
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C810()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C8C4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalTopHitEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8CBD8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8CFEC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalTopHitEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8D358()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*v1);
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_753();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44828, &qword_21B118108);
    v6 = *(v2 + 48);
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8D404()
{
  OUTLINED_FUNCTION_34_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v5 + 84) == v3)
    {
      OUTLINED_FUNCTION_756();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44828, &qword_21B118108);
      v6 = *(v2 + 48);
    }

    v7 = OUTLINED_FUNCTION_64(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_21AF8D4B0()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  OUTLINED_FUNCTION_80();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_754();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
    v2 = OUTLINED_FUNCTION_698();
  }

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_21AF8D548()
{
  OUTLINED_FUNCTION_365();
  sub_21B111EC4();
  OUTLINED_FUNCTION_80();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_485();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_698();
  }

  OUTLINED_FUNCTION_447();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_21AF8D5DC()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_753();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8D63C()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_756();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8D6B0(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *(a1 + 8);
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_676();
    v7 = OUTLINED_FUNCTION_78(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_21AF8D724()
{
  OUTLINED_FUNCTION_81();
  if (v2 == 254)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_679();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8D790(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_86();
    v7 = OUTLINED_FUNCTION_78(*(v2 + 80));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_21AF8D808()
{
  OUTLINED_FUNCTION_81();
  if (v3 == 254)
  {
    *(v1 + 16) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v4 = OUTLINED_FUNCTION_64(*(v2 + 80));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8D87C()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 32));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 48));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8D8E0()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_849();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v2 = OUTLINED_FUNCTION_64(*(v0 + 48));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_21AF8D94C()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_681();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8D9A8()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD434E8, &unk_21B116AC0);
    OUTLINED_FUNCTION_708();
  }

  v6 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21AF8DA50()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_627();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD434E8, &unk_21B116AC0);
      OUTLINED_FUNCTION_681();
    }

    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8DB24()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 72));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_753();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
    v6 = *(v2 + 48);
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8DBD0()
{
  OUTLINED_FUNCTION_34_2();
  if (v4)
  {
    *(v1 + 72) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v5 + 84) == v3)
    {
      OUTLINED_FUNCTION_756();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
      v6 = *(v2 + 48);
    }

    v7 = OUTLINED_FUNCTION_64(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_21AF8DC84(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_86();
    v6 = OUTLINED_FUNCTION_351();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_21AF8DCF8()
{
  OUTLINED_FUNCTION_81();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8DD84()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 64));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8DDE8()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v2 = OUTLINED_FUNCTION_64(*(v0 + 64));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8DE48()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 24));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_362();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AF8DEA8()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_627();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8DF08()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 24));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_351();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AF8DF68()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8DFD0()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 16));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_594();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
    OUTLINED_FUNCTION_624();
  }

  v6 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21AF8E078()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_626();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
      OUTLINED_FUNCTION_627();
    }

    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8E11C()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 64));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_676();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_753();
  }

  v6 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21AF8E1C4()
{
  OUTLINED_FUNCTION_34_2();
  if (v3)
  {
    *(v1 + 64) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_679();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
      OUTLINED_FUNCTION_756();
    }

    v6 = OUTLINED_FUNCTION_64(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_21AF8E274()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 16));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_677();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8E2D4()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_710();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8E330()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 16));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 72));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8E394()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v2 = OUTLINED_FUNCTION_64(*(v0 + 72));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8E3F4()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 32));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 64);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AE8, &qword_21B118170);
    v6 = *(v2 + 68);
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8E4A4()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    OUTLINED_FUNCTION_849();
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 64);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AE8, &qword_21B118170);
      v4 = *(v0 + 68);
    }

    v5 = OUTLINED_FUNCTION_64(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_21AF8E554()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_710();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8E5B8()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 16));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B20, &qword_21B118188);
    OUTLINED_FUNCTION_80();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_708();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B28, &qword_21B118190);
      OUTLINED_FUNCTION_676();
    }
  }

  v7 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8E6A8()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_627();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B20, &qword_21B118188);
      OUTLINED_FUNCTION_80();
      if (*(v4 + 84) == v0)
      {
        OUTLINED_FUNCTION_681();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B28, &qword_21B118190);
        OUTLINED_FUNCTION_679();
      }
    }

    v5 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21AF8E794()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 16));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_677();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B30, &qword_21B118198);
    OUTLINED_FUNCTION_594();
  }

  v6 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21AF8E83C()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_710();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B30, &qword_21B118198);
      OUTLINED_FUNCTION_626();
    }

    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8E8E0(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return OUTLINED_FUNCTION_661(*(a1 + 16));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_351();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_21AF8E944(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();

    return __swift_storeEnumTagSinglePayload(v4 + v6, a2, a2, v5);
  }

  return result;
}

uint64_t sub_21AF8EA84()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 32));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_351();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AF8EAE4()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_849();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8EB68()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 32));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_594();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
    OUTLINED_FUNCTION_624();
  }

  v6 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21AF8EC10()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_849();
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_626();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
      OUTLINED_FUNCTION_627();
    }

    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8ECB4()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 16));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_708();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B40, &unk_21B1181A8);
    OUTLINED_FUNCTION_676();
  }

  v6 = OUTLINED_FUNCTION_78(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_21AF8ED5C()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_681();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B40, &unk_21B1181A8);
      OUTLINED_FUNCTION_679();
    }

    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_21AF8EE00()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_681();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8EE5C()
{
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_80();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_754();
  }

  else
  {
    sub_21B111EC4();
    OUTLINED_FUNCTION_677();
    v3 = v1 + v5;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_21AF8EEF4()
{
  OUTLINED_FUNCTION_365();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_80();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_485();
  }

  else
  {
    sub_21B111EC4();
    OUTLINED_FUNCTION_710();
  }

  OUTLINED_FUNCTION_447();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_21AF8EF88()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_708();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8EFE8()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_681();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8F044()
{
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  OUTLINED_FUNCTION_80();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_754();
  }

  else
  {
    sub_21B111EC4();
    v2 = OUTLINED_FUNCTION_698();
  }

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_21AF8F0DC()
{
  OUTLINED_FUNCTION_365();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  OUTLINED_FUNCTION_80();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_485();
  }

  else
  {
    sub_21B111EC4();
    OUTLINED_FUNCTION_698();
  }

  OUTLINED_FUNCTION_447();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_21AF8F170()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*v0);
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8F1D4()
{
  OUTLINED_FUNCTION_34_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v4 = OUTLINED_FUNCTION_64(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8F238()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 40));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_362();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AF8F298()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    *(v1 + 40) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_627();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8F2F8()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_523();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21AF8F340()
{
  OUTLINED_FUNCTION_81();
  sub_21B111EC4();
  v0 = OUTLINED_FUNCTION_367();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21AF8F388()
{
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  OUTLINED_FUNCTION_80();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_754();
  }

  else
  {
    if (v0 == 12)
    {
      OUTLINED_FUNCTION_675();
      return OUTLINED_FUNCTION_661(*(v5 + 8));
    }

    sub_21B111EC4();
    OUTLINED_FUNCTION_80();
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_676();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
      OUTLINED_FUNCTION_753();
    }

    v3 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

void sub_21AF8F48C()
{
  OUTLINED_FUNCTION_365();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  OUTLINED_FUNCTION_80();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_485();
  }

  else
  {
    if (v1 == 12)
    {
      OUTLINED_FUNCTION_675();
      *v3 = 0;
      v3[1] = (((-v0 >> 2) & 3) - 4 * v0) << 60;
      return;
    }

    sub_21B111EC4();
    OUTLINED_FUNCTION_80();
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_679();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
      OUTLINED_FUNCTION_756();
    }
  }

  OUTLINED_FUNCTION_447();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_21AF8F898@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_4();
  result = (*(v2 + 136))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21AF8FA04()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21AF8FA5C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21AF8FAA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21AF90000(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111954();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF90048(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111954();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF900BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111834();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF90104(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111834();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF901F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111924();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF90238(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111924();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF902AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B110D94();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21AF9035C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B110D94();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21AF90444()
{

  OUTLINED_FUNCTION_6_21();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21AF90668(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111874();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF906B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111874();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF90780()
{

  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21AF907CC()
{

  OUTLINED_FUNCTION_61();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21AF90C1C()
{

  sub_21B0F6A44(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21AF90D78@<X0>(uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_30();
  result = sub_21B0F96AC(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_21AF914C0()
{

  OUTLINED_FUNCTION_61();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21AF914F4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21AF91778()
{

  sub_21B0F6A44(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  OUTLINED_FUNCTION_35_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_21AF91888()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21AF91984(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF919D8@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  v7 = OUTLINED_FUNCTION_0();
  result = sub_21AF91984(v7, v8);
  if (result == 2)
  {
    v10 = *(v3 + 16);
    swift_getObjectType();
    v16[0] = v10;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_0();
    sub_21B1113E4();
    return swift_unknownObjectRelease();
  }

  else if (result)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    sub_21AF92198(a2, v16);
    result = sub_21B0B9734(v16);
    if (!v4)
    {
      v13 = result;
      v14 = v11;
      v15 = v12;
      *(a3 + 24) = &unk_282C95BB0;
      result = sub_21AF921FC();
      *(a3 + 32) = result;
      *a3 = v13;
      *(a3 + 8) = v14;
      *(a3 + 16) = v15 & 1;
    }
  }

  return result;
}

uint64_t sub_21AF91B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v7 = v5;

  v11 = sub_21AF91984(a1, a2);
  if (v11 == 2)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_21B1113C4();
    return swift_unknownObjectRelease();
  }

  v13 = v11;
  v14 = *(v5 + 24);
  swift_getObjectType();
  v15 = *(v14 + 16);
  swift_unknownObjectRetain();
  v16 = OUTLINED_FUNCTION_0();
  v15(v16);
  result = swift_unknownObjectRelease();
  if (v13)
  {
    if (v6)
    {
      return result;
    }

    v17 = *(v5 + 32);
    v18 = *(v7 + 40);
    v19 = type metadata accessor for SentinelBlock();
    swift_allocObject();
    sub_21AF92188(v17, v18);
    v20 = OUTLINED_FUNCTION_0();
    v22 = sub_21B0B19B0(v20, v21, v17, v18);
    a5[3] = v19;
    v23 = &unk_27CD42AA0;
    v24 = type metadata accessor for SentinelBlock;
    v25 = &unk_21B128518;
  }

  else
  {
    if (v6)
    {
      return result;
    }

    sub_21B111484();
    v26 = type metadata accessor for AggregationWindowBlock();
    swift_allocObject();
    v27 = OUTLINED_FUNCTION_0();
    v22 = sub_21B0BA780(v27, v28, v29);
    a5[3] = v26;
    v23 = &unk_27CD42A98;
    v24 = type metadata accessor for AggregationWindowBlock;
    v25 = &unk_21B129028;
  }

  result = sub_21AF92140(v23, 255, v24, v25);
  a5[4] = result;
  *a5 = v22;
  return result;
}

void *sub_21AF91D54()
{
  swift_unknownObjectRelease();
  sub_21AF92250(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t sub_21AF91D7C()
{
  sub_21AF91D54();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AF91DE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF91E04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_21AF91ED4(uint64_t a1, id *a2)
{
  result = sub_21B1123E4();
  *a2 = 0;
  return result;
}

uint64_t sub_21AF91F4C(uint64_t a1, id *a2)
{
  v3 = sub_21B1123F4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21AF91FDC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_21AF924C8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_21AF92004@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21B1123D4();

  *a2 = v3;
  return result;
}

uint64_t sub_21AF9204C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AF92078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21AF9207C(uint64_t a1)
{
  v2 = sub_21AF92140(&qword_27CD42AD0, 255, type metadata accessor for URLResourceKey, &unk_21B113CE8);
  v3 = sub_21AF92140(&qword_27CD42AD8, 255, type metadata accessor for URLResourceKey, &unk_21B113C88);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21AF92140(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21AF92188(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21AF92198(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21AF921FC()
{
  result = qword_27CD42AA8;
  if (!qword_27CD42AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42AA8);
  }

  return result;
}

uint64_t sub_21AF92250(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_21AF92274(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21AF92358(uint64_t a1)
{
  v1 = sub_21B112404();
  v2 = MEMORY[0x21CEE97E0](v1);

  return v2;
}

uint64_t sub_21AF92390(uint64_t a1, uint64_t a2)
{
  sub_21B112404();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21AF923E4(uint64_t a1, uint64_t a2)
{
  sub_21B112404();
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v2 = sub_21B112F14();

  return v2;
}

uint64_t sub_21AF924C8(uint64_t a1)
{
  sub_21B112404();
  v1 = sub_21B1123D4();

  return v1;
}

uint64_t sub_21AF9250C(uint64_t a1, uint64_t a2)
{

  v2 = OUTLINED_FUNCTION_7();
  v4 = sub_21AF9CF60(v2, v3);
  if (v4 == 3)
  {
    v5 = OUTLINED_FUNCTION_7();
    v7 = sub_21AF91984(v5, v6);
    if (v7)
    {
      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    if (v7 == 2)
    {
      return 5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v10 = v4;

    return 0x20300u >> (8 * v10);
  }
}

unint64_t sub_21AF9259C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B111594();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  (*(v8 + 16))(v11 - v10, a1, v6);
  v13 = (*(v8 + 88))(v12, v6);
  if (v13 == *MEMORY[0x277D3E180])
  {
    v14 = OUTLINED_FUNCTION_0_0();
    v15(v14);

    return 2;
  }

  if (v13 == *MEMORY[0x277D3E168])
  {
    v17 = OUTLINED_FUNCTION_0_0();
    v18(v17);

    return 3;
  }

  if (v13 == *MEMORY[0x277D3E160])
  {
    v19 = OUTLINED_FUNCTION_0_0();
    v20(v19);

    return 4;
  }

  if (v13 == *MEMORY[0x277D3E190])
  {
    v21 = OUTLINED_FUNCTION_0_0();
    v22(v21);

    return 7;
  }

  if (v13 == *MEMORY[0x277D3E178])
  {
    v23 = OUTLINED_FUNCTION_0_0();
    v24(v23);

    return 10;
  }

  if (v13 == *MEMORY[0x277D3E188])
  {
    v25 = OUTLINED_FUNCTION_0_0();
    v26(v25);

    return 5;
  }

  else
  {
    if (v13 != *MEMORY[0x277D3E170])
    {
      v30 = *(v8 + 8);
      v30(a1, v6);

      v30(v12, v6);
      return 10;
    }

    v27 = sub_21AF9250C(a2, a3);
    v28 = OUTLINED_FUNCTION_0_0();
    v29(v28);
    return 0xA0908060100uLL >> (8 * (v27 & 0x1Fu));
  }
}

unint64_t sub_21AF92830(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21AF9287C(char a1)
{
  result = 0x746E6174736E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7461676572676761;
      break;
    case 4:
      result = 0x6974636172747865;
      break;
    case 5:
      result = 1852403562;
      break;
    case 6:
      result = 0x6572615761746164;
      break;
    case 7:
      result = 0x6574616C706D6574;
      break;
    case 8:
      result = 0x64616F6C7075;
      break;
    case 9:
      result = 0x6C656E69746E6573;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21AF929D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AF92830(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21AF92A00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21AF9287C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

const char *sub_21AF92A48()
{
  v1 = sub_21B1113D4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  (*(v3 + 16))(v6 - v5, v0, v1);
  v7 = OUTLINED_FUNCTION_7();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D3E098])
  {
    return "initialization";
  }

  if (v9 == *MEMORY[0x277D3E090])
  {
    return "validation";
  }

  if (v9 == *MEMORY[0x277D3E088])
  {
    return "processing";
  }

  v11 = OUTLINED_FUNCTION_7();
  v12(v11);
  return "unknown";
}

uint64_t sub_21AF92BDC(uint64_t a1)
{
  *(a1 + 8) = sub_21AF92C44(&qword_27CD42C00, MEMORY[0x277D3E0A8]);
  result = sub_21AF92C44(&unk_27CD477F0, MEMORY[0x277D3E0B0]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21AF92C44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B1113D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21AF92C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v11 = a3;
  v45 = a3;
  v46 = a2;
  v52 = a1;
  v13 = type metadata accessor for RecipeIdentifier(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v47 = v16 - v15;
  v18 = sub_21B1113D4();
  OUTLINED_FUNCTION_1();
  v51 = v19;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v44[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v49 = &v44[-v24];
  v50 = v7;
  v25 = (v7 + qword_27CD6E6B0);
  *v25 = 0;
  v25[1] = 0;
  *(v7 + qword_27CD42C08) = 0;
  *(v7 + qword_27CD6E6A0) = v11;
  *(v7 + qword_27CD6E6A8) = a7;
  *v25 = a5;
  v25[1] = a6;
  v27 = *(v26 + 16);
  v27(&v44[-v24], a2, v18);
  v28 = v48;
  sub_21AF93E20(v48, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D80;
  v30 = v28;
  v31 = sub_21AFC9D08();
  v33 = v32;
  *(inited + 56) = MEMORY[0x277D837D0];
  v34 = sub_21AF93F18();
  *(inited + 64) = v34;
  *(inited + 32) = v31;
  *(inited + 40) = v33;
  v35 = *(v30 + *(v14 + 28));
  v36 = MEMORY[0x277D83ED0];
  *(inited + 96) = MEMORY[0x277D83E88];
  *(inited + 104) = v36;
  *(inited + 72) = v35;
  v37 = sub_21AF9287C(v45);
  *(inited + 136) = MEMORY[0x277D837D0];
  *(inited + 144) = v34;
  *(inited + 112) = v37;
  *(inited + 120) = v38;
  v39 = v46;
  v27(v23, v46, v18);
  v40 = sub_21B112454();
  *(inited + 176) = MEMORY[0x277D837D0];
  *(inited + 184) = v34;
  *(inited + 152) = v40;
  *(inited + 160) = v41;
  v42 = sub_21B0B219C(v52, v49, v47, "recipeName=%{signpost.description:attribute,public}s,\nrecipeVersion=%{signpost.description:attribute,public}lu,\nblock=%{signpost.description:attribute,public}s,\nactivity=%{signpost.description:attribute,public}s", 211, 2, inited);
  sub_21AF93E84(v30);
  (*(v51 + 8))(v39, v18);
  return v42;
}

void *sub_21AF92FA4()
{
  if ((*(v0 + *(*v0 + 120)) & 1) == 0)
  {
    sub_21AF93490();
  }

  v1 = sub_21B0EA46C();
  sub_21AF93E84(v1 + *(*v1 + 464));

  return v1;
}

uint64_t sub_21AF9301C()
{
  v0 = sub_21AF92FA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for BlockActivitySpan(uint64_t a1)
{
  result = qword_27CD42C10;
  if (!qword_27CD42C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21AF93120()
{
  v1 = v0;
  v38 = type metadata accessor for RecipeIdentifier(0) - 8;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2();
  v4 = v3 - v2;
  v5 = *(v0 + *(*v0 + 128));
  v6 = sub_21B112704();
  sub_21B112264("LEAKED BLOCK ACTIVITY SPAN: {{{", 31, 2, &dword_21AF80000, v5, v6, MEMORY[0x277D84F90]);
  sub_21B0E7180();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B113D90;
  v8 = sub_21B112454();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v11 = sub_21AF93F18();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_21B112264("Outcome: %s", v35);

  sub_21B112704();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_6(v12);
  v13 = v1 + *(*v1 + 464);
  sub_21AF93E20(v13, v4);
  v14 = sub_21AFC9D08();
  v16 = v15;
  v17 = v4;
  v18 = v11;
  v19 = v5;
  sub_21AF93E84(v17);
  v20 = MEMORY[0x277D837D0];
  v12[3].n128_u64[1] = MEMORY[0x277D837D0];
  v12[4].n128_u64[0] = v11;
  v12[2].n128_u64[0] = v14;
  v12[2].n128_u64[1] = v16;
  sub_21B112264("Recipe: %s", v36);

  sub_21B112704();
  v21 = OUTLINED_FUNCTION_5();
  *&v22 = OUTLINED_FUNCTION_6(v21).n128_u64[0];
  v23 = *(v13 + *(v38 + 28));
  v24 = MEMORY[0x277D83ED0];
  v25[7] = MEMORY[0x277D83E88];
  v25[8] = v24;
  v25[4] = v23;
  OUTLINED_FUNCTION_4("Recipe Version: %lu", 19, v22);

  sub_21B112704();
  v26 = OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(v26);
  v27 = sub_21AF9287C(*(v1 + qword_27CD6E6A0));
  v26[3].n128_u64[1] = v20;
  v26[4].n128_u64[0] = v11;
  v26[2].n128_u64[0] = v27;
  v26[2].n128_u64[1] = v28;
  OUTLINED_FUNCTION_4("Block: %s", 9);

  v29 = *(v1 + qword_27CD6E6B0 + 8);
  if (v29)
  {
    v30 = *(v1 + qword_27CD6E6B0);

    sub_21B112704();
    v31 = OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_6(v31);
    v32[7] = v20;
    v32[8] = v18;
    v32[4] = v30;
    v32[5] = v29;
    sub_21B112264("Feature: %d", v37);
  }

  v33 = sub_21B112704();
  return sub_21B112264("}}}", 3, 2, &dword_21AF80000, v19, v33, MEMORY[0x277D84F90]);
}

uint64_t sub_21AF93490()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = sub_21B1113D4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = type metadata accessor for RecipeIdentifier(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  result = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  v22 = *v1;
  v23 = *(*v1 + 120);
  if ((*(v1 + v23) & 1) == 0)
  {
    v47 = result;
    v49 = v23;
    v48 = v1 + *(v22 + 464);
    sub_21AF93E20(v48, &v46 - v20);
    v24 = *(v1 + qword_27CD6E6B0);
    v25 = *(v1 + qword_27CD6E6B0 + 8);

    v26 = sub_21AFC9E18(v24, v25);

    sub_21AF93E84(v21);
    if ((*(v1 + qword_27CD42C08) & 1) == 0)
    {
      sub_21AF93E20(v48, v21);
      if (qword_27CD42518 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v47, qword_27CD6E770);
      sub_21AF93E20(v27, v18);
      v28 = static RecipeIdentifier.== infix(_:_:)(v21, v18);
      sub_21AF93E84(v18);
      sub_21AF93E84(v21);
      if (!v28)
      {
        OUTLINED_FUNCTION_8();
        (*(v7 + 16))(v11, v1 + *(v29 + 112), v5);
        v30 = (*(v7 + 88))(v11, v5);
        v31 = *MEMORY[0x277D3E088];
        (*(v7 + 8))(v11, v5);
        if (v30 == v31)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21B113DA0;
          *(inited + 32) = 0x696669746E656469;
          *(inited + 40) = 0xEA00000000007265;
          sub_21AF93E20(v48, v15);
          sub_21AF93F6C(v15, v4);
          v33 = sub_21B111DA4();
          if (__swift_getEnumTagSinglePayload(v4, 1, v33) == 1)
          {
            sub_21AF93E84(v15);
            sub_21AF94004(v4);
            v34 = 0;
          }

          else
          {
            v34 = sub_21B111D44();
            sub_21AF93E84(v15);
            (*(*(v33 - 8) + 8))(v4, v33);
          }

          *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
          *(inited + 56) = 0x6B636F6C62;
          *(inited + 64) = 0xE500000000000000;
          *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          *(inited + 80) = 0x65727574616566;
          *(inited + 88) = 0xE700000000000000;
          *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
          strcpy((inited + 104), "recipe_version");
          *(inited + 119) = -18;
          sub_21AF9406C(0, &qword_27CD42C38, 0x277CCACA8);
          v50 = *(v48 + *(v47 + 20));
          v35 = sub_21B112B84();
          *(inited + 120) = sub_21AF93B98(v35, v36);
          *(inited + 128) = 0x656D6F6374756FLL;
          *(inited + 136) = 0xE700000000000000;
          OUTLINED_FUNCTION_8();
          *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
          *(inited + 152) = 0x44496B636F6C62;
          *(inited + 160) = 0xE700000000000000;
          *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
          sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
          sub_21B112334();
          sub_21B0ED1F8();
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_21B113DB0;
    v39 = MEMORY[0x277D83ED0];
    *(v38 + 56) = MEMORY[0x277D83E88];
    *(v38 + 64) = v39;
    *(v38 + 32) = v26;
    OUTLINED_FUNCTION_8();
    LOBYTE(v50) = *(v1 + *(v40 + 472));
    v41 = sub_21B112454();
    v43 = v42;
    *(v38 + 96) = MEMORY[0x277D837D0];
    *(v38 + 104) = sub_21AF93F18();
    *(v38 + 72) = v41;
    *(v38 + 80) = v43;
    sub_21B0ED1F4();

    OUTLINED_FUNCTION_8();
    v45 = *(*(v1 + *(v44 + 152)) + 16);

    os_unfair_lock_lock(v45);
    if ((*(v1 + v49) & 1) == 0)
    {
      sub_21B0E866C();
    }

    os_unfair_lock_unlock(v45);
  }

  return result;
}

id sub_21AF93B98(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21B1123D4();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t getEnumTagSinglePayload for CABlockType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CABlockType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AF93D84()
{
  result = qword_27CD42C20;
  if (!qword_27CD42C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42C20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21AF93E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF93E84(uint64_t a1)
{
  v2 = type metadata accessor for RecipeIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21AF93F18()
{
  result = qword_27CD475D0;
  if (!qword_27CD475D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD475D0);
  }

  return result;
}

uint64_t sub_21AF93F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF94004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF9406C(uint64_t a1, unint64_t *a2, void *a3)
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

double OUTLINED_FUNCTION_4(const char *a1, uint64_t a2, ...)
{

  return sub_21B112264(a1, a2, 2, v5, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_6(__n128 *a1)
{
  result = *(v1 - 112);
  a1[1] = result;
  return result;
}

uint64_t sub_21AF94164@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C40, &qword_21B114178);
  if (swift_dynamicCast())
  {
    sub_21B0DA8B0(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_21B110D94();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  }
}

uint64_t sub_21AF94278(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  (*(v3 + 16))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C40, &qword_21B114178);
  if (swift_dynamicCast())
  {
    v4 = sub_21B0DAA90();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_21AF94394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D1>, double a4@<D2>)
{
  v9 = sub_21B110F84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  sub_21B111EB4();
  v13 = sub_21B0B0870(4);
  if (v4)
  {
    sub_21B1112A4();
    OUTLINED_FUNCTION_0_1();
    (*(v15 + 8))(a1);
    return sub_21AF946A0(a2);
  }

  *a2 = v13;
  a2[1] = v14;
  v28[1] = sub_21B0B0970(7);
  a2[2] = sub_21B112B84();
  a2[3] = v16;
  sub_21B110F74();
  sub_21B110F44();
  v18 = v17;
  v19 = v17;
  v20 = *(v10 + 8);
  result = v20(v12, v9);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18 >= 1.84467441e19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a2[5] = v18;
  v22 = a3 / 86400.0;
  if (COERCE__INT64(fabs(a3 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v22 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v22 >= 1.84467441e19)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  a2[4] = v22;
  sub_21B110F64();
  sub_21B110F44();
  v24 = v23;
  sub_21B1112A4();
  OUTLINED_FUNCTION_0_1();
  (*(v25 + 8))(a1);
  result = v20(v12, v9);
  v26 = 0;
  if (v24 - a4 < 0.0)
  {
LABEL_15:
    a2[6] = v26;
    return result;
  }

  v27 = (v24 - a4) * 1000.0;
  if (COERCE_UNSIGNED_INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v27 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v27 < 1.84467441e19)
  {
    v26 = v27;
    goto LABEL_15;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21AF946A0(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF94710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21B111294();
  sub_21B0DF074(0x65735F6C61746F74, 0xEE00736E6F697373, v3, v2);

  v4 = sub_21B111334();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    sub_21AF94B38(v2);
    v5 = sub_21AF94BA0();
    OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v5);
    *v6 = xmmword_21B1141A0;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    sub_21B111314();
    (*(*(v4 - 8) + 8))(v2, v4);
    sub_21AF94BF4(v14, v15);
    sub_21AF94C04(v15, v14);
    if (OUTLINED_FUNCTION_1_0())
    {
      __swift_destroy_boxed_opaque_existential_0(v15);
      return v13;
    }

    else
    {
      OUTLINED_FUNCTION_2_0();

      v13 = OUTLINED_FUNCTION_0_2(0x800000021B130580);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C58, &qword_21B1141C8);
      v8 = sub_21B112454();
      MEMORY[0x21CEE9770](v8);

      v9 = sub_21AF94BA0();
      v10 = OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v9);
      OUTLINED_FUNCTION_3_0(v10, v11);
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }
  }
}

uint64_t sub_21AF94924()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21B111294();
  sub_21B0DF074(0x735F657669746361, 0xEF736E6F69737365, v3, v2);

  v4 = sub_21B111334();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    sub_21AF94B38(v2);
    v5 = sub_21AF94BA0();
    OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v5);
    *v6 = xmmword_21B1141B0;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    sub_21B111314();
    (*(*(v4 - 8) + 8))(v2, v4);
    sub_21AF94BF4(v14, v15);
    sub_21AF94C04(v15, v14);
    if (OUTLINED_FUNCTION_1_0())
    {
      __swift_destroy_boxed_opaque_existential_0(v15);
      return v13;
    }

    else
    {
      OUTLINED_FUNCTION_2_0();

      v13 = OUTLINED_FUNCTION_0_2(0x800000021B130550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C58, &qword_21B1141C8);
      v8 = sub_21B112454();
      MEMORY[0x21CEE9770](v8);

      v9 = sub_21AF94BA0();
      v10 = OUTLINED_FUNCTION_4_0(&type metadata for DatasetError, v9);
      OUTLINED_FUNCTION_3_0(v10, v11);
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }
  }
}

uint64_t sub_21AF94B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21AF94BA0()
{
  result = qword_27CD42C50;
  if (!qword_27CD42C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42C50);
  }

  return result;
}

_OWORD *sub_21AF94BF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21AF94C04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t OUTLINED_FUNCTION_0_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v2 - 88) = a1;
  __swift_project_boxed_opaque_existential_0((v2 - 64), *(v2 - 40));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_21B112904();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_21AF94DF0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, void *a4)
{
  v7 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = (*(v9 + 104))(v12 - v11, *MEMORY[0x277D39DD8], v7);
  v15 = a2(v14);
  v17 = v16;
  result = (*(v9 + 8))(v13, v7);
  *a3 = v15;
  *a4 = v17;
  return result;
}

uint64_t sub_21AF94EF0(char a1)
{
  if (!a1)
  {
    return 0x6D617473656D6974;
  }

  if (a1 == 1)
  {
    return 0x5F747865746E6F63;
  }

  return 0x64616F6C796170;
}

void sub_21AF94F50()
{
  sub_21B112904();
  MEMORY[0x21CEE9770](0x5420455441455243, 0xED000020454C4241);
  if (qword_27CD42440 != -1)
  {
    OUTLINED_FUNCTION_3_1();
    swift_once();
  }

  v0 = qword_2811FAB10;

  v1 = OUTLINED_FUNCTION_27();
  MEMORY[0x21CEE9770](v1, v0);

  MEMORY[0x21CEE9770](0xD000000000000034, 0x800000021B130620);
  MEMORY[0x21CEE9770](0x6D617473656D6974, 0xE900000000000070);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_27();
  MEMORY[0x21CEE9770](v2, 0xEA00000000006469);
  OUTLINED_FUNCTION_31();
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_27();
  MEMORY[0x21CEE9770](v3, 0xEA00000000006469);
  MEMORY[0x21CEE9770](0xD000000000000011, 0x800000021B1306B0);
  if (qword_27CD429E8 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_27CD429E8);
  }

  v4 = unk_27CD6E7C0;

  v5 = OUTLINED_FUNCTION_27();
  MEMORY[0x21CEE9770](v5, v4);

  MEMORY[0x21CEE9770](40, 0xE100000000000000);
  MEMORY[0x21CEE9770](0x6469776F72, 0xE500000000000000);
  OUTLINED_FUNCTION_32();
  qword_27CD6E6B8 = 0;
  unk_27CD6E6C0 = 0xE000000000000000;
}

uint64_t sub_21AF95164()
{
  sub_21B112904();

  strcpy(v3, "DELETE FROM ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  if (qword_27CD42440 != -1)
  {
    swift_once();
  }

  v0 = qword_2811FAB08;
  v1 = qword_2811FAB10;

  MEMORY[0x21CEE9770](v0, v1);

  MEMORY[0x21CEE9770](0x200A45524548570ALL, 0xEB00000000202020);
  MEMORY[0x21CEE9770](0x6D617473656D6974, 0xE900000000000070);
  result = MEMORY[0x21CEE9770](0x3B3F203C20, 0xE500000000000000);
  qword_27CD6E6C8 = v3[0];
  unk_27CD6E6D0 = v3[1];
  return result;
}

uint64_t sub_21AF95294(unsigned __int8 a1)
{
  if (a1 < 2u)
  {
    return MEMORY[0x277D84D38];
  }

  v1 = MEMORY[0x277CC9318];
  sub_21AF997C4();
  return v1;
}

unint64_t sub_21AF952E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21AF95330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AF99988();

  return MEMORY[0x28219E770](a1, a2, a3, v6);
}

unint64_t sub_21AF9539C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21AF952E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21AF953CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AF94EF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21AF95410(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF999DC();
  v5 = sub_21AF99A30();

  return MEMORY[0x28219E788](a1, a2, v4, v5);
}

uint64_t sub_21AF954BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D08, &qword_21B114278);
  sub_21B111664();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21B113DB0;
  if (qword_27CD429E8 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_27CD429E8);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D10, &qword_21B114280);
  OUTLINED_FUNCTION_2_1();
  v10 = sub_21AF99EEC(v1, v2, &qword_21B114280, v3);
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_21AF99AE4();
  sub_21AF99B38();
  sub_21AF99B8C();

  OUTLINED_FUNCTION_22();
  sub_21B111644();
  if (qword_27CD42440 != -1)
  {
    OUTLINED_FUNCTION_3_1();
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CD0, &qword_21B114260);
  OUTLINED_FUNCTION_2_1();
  v10 = sub_21AF99EEC(v4, v5, &qword_21B114260, v6);
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_21AF99988();
  sub_21AF999DC();
  sub_21AF99A30();

  OUTLINED_FUNCTION_22();
  result = sub_21B111644();
  qword_27CD6E6D8 = v0;
  return result;
}

uint64_t sub_21AF956FC()
{
  v0 = sub_21B111924();
  __swift_allocate_value_buffer(v0, qword_27CD6E6E0);
  __swift_project_value_buffer(v0, qword_27CD6E6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D58, &qword_21B114298);
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D60, &qword_21B1142A0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  if (qword_27CD429F0 != -1)
  {
    swift_once();
  }

  v6 = unk_27CD6E7D0;
  *v5 = qword_27CD6E7C8;
  v5[1] = v6;

  sub_21B111934();
  if (qword_27CD42448 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  v8 = qword_2811FAB20;
  *v7 = qword_2811FAB18;
  v7[1] = v8;

  sub_21B111934();
  sub_21B111954();
  sub_21B112334();
  sub_21B111834();
  sub_21B112334();
  return sub_21B1118D4();
}

void sub_21AF9591C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v4 = v2;
  v32 = v5;
  v7 = v6;
  v8 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_insertStatement;
  v16 = sub_21B1117B4();
  v26 = v15;
  __swift_storeEnumTagSinglePayload(v4 + v15, 1, 1, v16);
  v25 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_deleteStatement;
  __swift_storeEnumTagSinglePayload(v4 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_deleteStatement, 1, 1, v16);
  *(v4 + 16) = v7;
  type metadata accessor for ContextStore(0);
  swift_allocObject();
  v17 = sub_21B0B86FC(v7);
  v27 = v10;
  v28 = v8;
  if (v3)
  {
    v18 = sub_21B111BA4();
    OUTLINED_FUNCTION_4_1();
    v20 = *(v19 + 8);

    v20(v32, v18);

    sub_21AF99BE0(v4 + v26, &qword_27CD42CC8, &unk_21B128DB0);
    sub_21AF99BE0(v4 + v25, &qword_27CD42CC8, &unk_21B128DB0);
    type metadata accessor for MetricStore(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_contextStore) = v17;
    swift_retain_n();
    sub_21B111B94();
    (*(v10 + 32))(v4 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_schemaUrl, v14, v8);
    sub_21B111B94();
    sub_21B112334();
    v21 = sub_21B1114A4();
    swift_allocObject();
    v22 = sub_21B111494();
    v30 = v21;
    v31 = MEMORY[0x277D3E148];

    *&v29 = v22;
    sub_21B111BA4();
    OUTLINED_FUNCTION_4_1();
    (*(v23 + 8))(v32);
    sub_21AF81D68(&v29, v4 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_protobufFactory);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21AF95CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v5 = v3;
  v6 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  v9 = OUTLINED_FUNCTION_25(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v24 = v10 - v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v15 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_insertStatement;
  swift_beginAccess();
  sub_21AF99A84(v5 + v15, v14, &qword_27CD42CC8, &unk_21B128DB0);
  OUTLINED_FUNCTION_14(v14);
  if (!v16)
  {
    goto LABEL_7;
  }

  sub_21AF99BE0(v14, &qword_27CD42CC8, &unk_21B128DB0);
  v23[2] = *(v5 + 16);
  if (qword_27CD42440 != -1)
  {
    OUTLINED_FUNCTION_3_1();
    swift_once();
  }

  v23[0] = qword_2811FAB10;
  v23[1] = qword_2811FAB08;
  v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CD0, &qword_21B114260);
  OUTLINED_FUNCTION_2_1();
  v25[4] = sub_21AF99EEC(v17, v18, &qword_21B114260, v19);
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_21AF99988();
  sub_21AF999DC();
  sub_21AF99A30();
  MEMORY[0x21CEE88A0]();
  sub_21AF98A00(MEMORY[0x277D84F90]);
  sub_21B1116E4();

  __swift_destroy_boxed_opaque_existential_0(v25);
  if (!v4)
  {
    v20 = v24;
    OUTLINED_FUNCTION_28();
    v21();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v6);
    swift_beginAccess();
    sub_21AF99870(v20, v5 + v15);
    swift_endAccess();
LABEL_7:
    OUTLINED_FUNCTION_28();
    v22();
  }

  OUTLINED_FUNCTION_13();
}

void sub_21AF95F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v6 = v3;
  v19[1] = v7;
  v8 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  v11 = OUTLINED_FUNCTION_25(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  v15 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_deleteStatement;
  swift_beginAccess();
  sub_21AF99A84(v6 + v15, v14, &qword_27CD42CC8, &unk_21B128DB0);
  OUTLINED_FUNCTION_14(v14);
  if (!v16)
  {
    goto LABEL_7;
  }

  sub_21AF99BE0(v14, &qword_27CD42CC8, &unk_21B128DB0);
  if (qword_27CD42458 != -1)
  {
    swift_once();
  }

  sub_21B1116F4();
  if (!v4)
  {
    OUTLINED_FUNCTION_28();
    v17();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    swift_beginAccess();
    sub_21AF99870(v5, v6 + v15);
    swift_endAccess();
LABEL_7:
    OUTLINED_FUNCTION_28();
    v18();
  }

  OUTLINED_FUNCTION_13();
}

void sub_21AF961D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v29 = v5;
  v30 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_17();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v28 - v20;
  sub_21AF95CB0(v19, v22, v23);
  if (!v3)
  {
    v28 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CB0, &qword_21B114248);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B1141D0;
    v25 = MEMORY[0x277D84D38];
    v26 = MEMORY[0x277D3E398];
    *(inited + 32) = 0x6D617473656D6974;
    *(inited + 40) = 0xE900000000000070;
    *(inited + 72) = v25;
    *(inited + 80) = v26;
    *(inited + 48) = v29;
    *(inited + 88) = 0x5F747865746E6F63;
    *(inited + 96) = 0xEA00000000006469;
    *(inited + 128) = v25;
    *(inited + 136) = v26;
    *(inited + 104) = v30;
    *(inited + 144) = 0x64616F6C796170;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 184) = MEMORY[0x277CC9318];
    *(inited + 192) = sub_21AF997C4();
    *(inited + 160) = v10;
    *(inited + 168) = v8;
    sub_21AF99818(v10, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC0, &unk_21B114250);
    sub_21B112334();
    sub_21B111764();

    sub_21B111754();
    v27 = *(v28 + 8);
    v27(v4, v11);
    v27(v18, v11);
    v27(v21, v11);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21AF964E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21B0B8B10(a2, a3);
  if (!v5)
  {
    sub_21AF961D0(a4, a5, v8);
  }
}

void sub_21AF96554(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v4 = v2;
  v35 = v5;
  v7 = v6;
  v8 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v38 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if (sub_21B111264() != 0xD000000000000012 || 0x800000021B130700 != v14)
  {
    v16 = sub_21B112D04();

    if (v16)
    {
      goto LABEL_8;
    }

    v28 = 0;
    sub_21B1129C4("Fatal error", 11, 2, 0, 0xE000000000000000, "SearchOnDeviceAnalytics/MetricStore.swift", 41, 2, 149);
    __break(1u);
  }

LABEL_8:
  MEMORY[0x28223BE20](v17);
  v27 = v7;
  sub_21AFCF3A4(sub_21AF9970C, (&v29 - 4), &unk_282C8D838);
  if (!v3)
  {
    v18 = sub_21AF96930();
    v33 = v4;
    v34 = v18;
    v32 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_protobufFactory;
    sub_21AF92198(v4 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_protobufFactory, v36);
    __swift_project_boxed_opaque_existential_0(v36, v37);
    if (qword_27CD42448 != -1)
    {
      OUTLINED_FUNCTION_9(&qword_27CD42448);
    }

    sub_21B111274();
    v19 = sub_21B1113B4();
    v31 = v20;
    v30 = *(v38 + 8);
    v30(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v36);
    sub_21AF92198(v33 + v32, v36);
    __swift_project_boxed_opaque_existential_0(v36, v37);
    if (qword_27CD429F0 != -1)
    {
      OUTLINED_FUNCTION_8_0(&qword_27CD429F0);
    }

    sub_21B111274();

    v21 = sub_21B1113B4();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_29();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v26 = v31;
    sub_21AF96490(v19, v31, v21, v23, v35);
    sub_21AF99728(v21, v23);
    sub_21AF99728(v19, v26);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_21AF96930()
{
  v0 = sub_21B111334();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v43 = v8 - v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v54 = (v40 - v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24();
  v53 = v13;
  v14 = sub_21B111294();
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D837E0];
  v49 = MEMORY[0x21CEE95A0](8, MEMORY[0x277D837D0], v0, MEMORY[0x277D837E0]);
  v55 = v0;
  v17 = MEMORY[0x21CEE95A0](128, v15, v0, v16);
  v47 = v14;
  v48 = v17;
  v18 = v14 + 64;
  v19 = 1 << *(v14 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v14 + 64);
  v22 = (v19 + 63) >> 6;
  v40[1] = v2 + 32;
  v40[2] = v2 + 16;
  v46 = v2;
  v40[0] = v2 + 8;

  v24 = 0;
  v25 = 0;
  v41 = v22;
  v42 = v14 + 64;
  v45 = v6;
  v26 = v53;
  if (v21)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v22)
    {

      return v49;
    }

    v21 = *(v18 + 8 * v27);
    ++v24;
    if (v21)
    {
      v24 = v27;
      do
      {
LABEL_8:
        v28 = __clz(__rbit64(v21)) | (v24 << 6);
        v29 = v46;
        v30 = (*(v47 + 48) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
        v33 = v44;
        v34 = (*(v46 + 16))(&v26[*(v44 + 48)], *(v47 + 56) + *(v46 + 72) * v28, v55);
        *v26 = v32;
        *(v26 + 1) = v31;
        v56[0] = v32;
        v56[1] = v31;
        MEMORY[0x28223BE20](v34);
        v40[-2] = v56;

        LOBYTE(v31) = sub_21B0C64B0(sub_21AF99780, &v40[-4], &unk_282C8D838);
        v52 = v25;
        v35 = v54;
        sub_21AF99A84(v26, v54, &qword_27CD42CA8, &qword_21B114240);
        v36 = *(v33 + 48);
        v50 = *v35;
        v51 = v36;
        v37 = v43;
        sub_21AF99A84(v26, v43, &qword_27CD42CA8, &qword_21B114240);

        (*(v29 + 32))(v45, v37 + *(v33 + 48), v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_19(isUniquelyReferenced_nonNull_native, v39);

        if (v31)
        {
          v49 = v56[0];
        }

        else
        {
          v48 = v56[0];
        }

        v22 = v41;
        v18 = v42;
        v21 &= v21 - 1;
        (*v40[0])(v54 + v51, v55);
        result = sub_21AF99BE0(v53, &qword_27CD42CA8, &qword_21B114240);
        v25 = v52;
      }

      while (v21);
    }
  }

  __break(1u);
  return result;
}

void sub_21AF96D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v72 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v7 = OUTLINED_FUNCTION_25(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v73 = v8 - v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = v70 - v11;
  v13 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  v19 = v70 - v18;
  v20 = sub_21B1114B4();
  v22 = v21;
  v23 = *(v20 + 16);
  v77 = v21;
  v78 = v23;
  v75 = v15 + 16;
  v76 = v15;
  v70[1] = v85 + 1;
  v24 = (v15 + 8);
  v25 = v5;
  v26 = v20;
  v74 = v24;
  v79 = v19;
  for (i = v12; ; v12 = i)
  {
    if (v22 == v78)
    {

      goto LABEL_99;
    }

    if ((v77 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:

LABEL_98:

      v68 = OUTLINED_FUNCTION_30();
      v69(v68);
LABEL_99:
      OUTLINED_FUNCTION_13();
      return;
    }

    if (v22 >= *(v26 + 16))
    {
      goto LABEL_96;
    }

    v86 = v22;
    (*(v76 + 16))(v19, v26 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v22, v13);
    v27 = sub_21B111294();
    if (*(v27 + 16))
    {
      v28 = sub_21AF98B58(0x6D617473656D6974, 0xE900000000000070);
      if (v29)
      {
        v30 = v28;
        v31 = *(v27 + 56);
        v32 = sub_21B111334();
        OUTLINED_FUNCTION_4_1();
        v34 = v31 + *(v33 + 72) * v30;
        v12 = i;
        (*(v33 + 16))(i, v34, v32);
        v35 = v12;
        v36 = 0;
        goto LABEL_11;
      }

      v32 = sub_21B111334();
      v12 = i;
    }

    else
    {
      v32 = sub_21B111334();
    }

    v35 = v12;
    v36 = 1;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v35, v36, 1, v32);

    sub_21B111334();
    if (__swift_getEnumTagSinglePayload(v12, 1, v32) == 1)
    {

      v64 = OUTLINED_FUNCTION_30();
      v65(v64);
      sub_21AF99BE0(v12, &qword_27CD42C48, &qword_21B1141C0);
      goto LABEL_99;
    }

    sub_21B111314();
    v37 = *(v32 - 8);
    (*(v37 + 8))(v12, v32);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_98;
    }

    v80 = v37;
    v38 = HIBYTE(v84) & 0xF;
    v39 = v83 & 0xFFFFFFFFFFFFLL;
    if ((v84 & 0x2000000000000000) != 0)
    {
      v40 = HIBYTE(v84) & 0xF;
    }

    else
    {
      v40 = v83 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40)
    {
      goto LABEL_97;
    }

    if ((v84 & 0x1000000000000000) == 0)
    {
      break;
    }

    v82 = sub_21AF98CF4(v83, v84, 10);
    v53 = v63;
LABEL_81:

    if (v53)
    {
      goto LABEL_98;
    }

    v54 = sub_21B111294();
    v55 = sub_21AF98B58(0x6D617473656D6974, 0xE900000000000070);
    if (v56)
    {
      v57 = v55;
      swift_isUniquelyReferenced_nonNull_native();
      v71 = v32;
      v85[0] = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477B0, &qword_21B114230);
      v32 = v71;
      sub_21B112994();
      v58 = v85[0];

      v59 = v73;
      (*(v80 + 32))(v73, *(v58 + 56) + *(v80 + 72) * v57, v32);
      sub_21B1129B4();
      v60 = 0;
    }

    else
    {
      v60 = 1;
      v59 = v73;
    }

    __swift_storeEnumTagSinglePayload(v59, v60, 1, v32);
    sub_21AF99BE0(v59, &qword_27CD42C48, &qword_21B1141C0);
    v61 = v79;
    sub_21B111264();
    sub_21B111274();
    sub_21AF96554(v25, v82);
    if (v4)
    {

      v66 = v25;
      v67 = *v74;
      (*v74)(v66, v13);
      v67(v61, v13);
      goto LABEL_99;
    }

    v22 = v86 + 1;
    v62 = *v74;
    (*v74)(v25, v13);
    v62(v61, v13);
    v19 = v61;
  }

  if ((v84 & 0x2000000000000000) == 0)
  {
    if ((v83 & 0x1000000000000000) != 0)
    {
      v41 = ((v84 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v41 = sub_21B112944();
    }

    v42 = *v41;
    if (v42 == 43)
    {
      if (v39 < 1)
      {
        goto LABEL_103;
      }

      if (v39 != 1)
      {
        v43 = 0;
        if (!v41)
        {
          goto LABEL_87;
        }

        while (1)
        {
          OUTLINED_FUNCTION_7_0();
          if (!v45 && v44)
          {
            break;
          }

          OUTLINED_FUNCTION_6_0();
          if (!v45)
          {
            break;
          }

          OUTLINED_FUNCTION_18();
          if (v44)
          {
            break;
          }

          OUTLINED_FUNCTION_20();
          if (v45)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_78;
    }

    if (v42 == 45)
    {
      if (v39 < 1)
      {
        goto LABEL_101;
      }

      if (v39 != 1)
      {
        v43 = 0;
        if (v41)
        {
          while (1)
          {
            OUTLINED_FUNCTION_7_0();
            if (!v45 && v44)
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_6_0();
            if (!v45 || 10 * v47 < v46)
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_20();
            if (v45)
            {
              goto LABEL_79;
            }
          }
        }

LABEL_87:
        v48 = 0;
LABEL_79:
        v82 = v43;
LABEL_80:
        LOBYTE(v83) = v48;
        v53 = v48;
        goto LABEL_81;
      }

LABEL_78:
      v43 = 0;
      v48 = 1;
      goto LABEL_79;
    }

    if (v39)
    {
      v51 = 0;
      if (v41)
      {
        do
        {
          v52 = *v41 - 48;
          if (v52 > 9)
          {
            goto LABEL_88;
          }

          if (!is_mul_ok(v51, 0xAuLL))
          {
            goto LABEL_88;
          }

          v44 = __CFADD__(10 * v51, v52);
          v51 = 10 * v51 + v52;
          if (v44)
          {
            goto LABEL_88;
          }

          ++v41;
        }

        while (--v39);
      }

      v48 = 0;
    }

    else
    {
LABEL_88:
      v51 = 0;
      v48 = 1;
    }

    v82 = v51;
    goto LABEL_80;
  }

  v85[0] = v83;
  v85[1] = v84 & 0xFFFFFFFFFFFFFFLL;
  if (v83 == 43)
  {
    if (!v38)
    {
      goto LABEL_102;
    }

    if (v38 != 1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_7_0();
        if (!v45 && v44)
        {
          break;
        }

        OUTLINED_FUNCTION_6_0();
        if (!v45)
        {
          break;
        }

        OUTLINED_FUNCTION_18();
        if (v44)
        {
          break;
        }

        OUTLINED_FUNCTION_20();
        if (v45)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

  if (v83 != 45)
  {
    if (v38)
    {
      while (1)
      {
        OUTLINED_FUNCTION_7_0();
        if (!v45 && v44)
        {
          break;
        }

        OUTLINED_FUNCTION_6_0();
        if (!v45)
        {
          break;
        }

        OUTLINED_FUNCTION_18();
        if (v44)
        {
          break;
        }

        OUTLINED_FUNCTION_20();
        if (v45)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

  if (v38)
  {
    if (v38 != 1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_7_0();
        if (!v45 && v44)
        {
          break;
        }

        OUTLINED_FUNCTION_6_0();
        if (!v45 || 10 * v50 < v49)
        {
          break;
        }

        OUTLINED_FUNCTION_20();
        if (v45)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
}

void sub_21AF974E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v4 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_21B111514();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = sub_21B0BE1EC();
  if (v3)
  {
LABEL_11:
    OUTLINED_FUNCTION_13();
    return;
  }

  v27 = v13;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (v18 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v18 < 1.84467441e19)
  {
    v19 = v4;
    v24 = v11;
    v25 = v18;
    sub_21B111534();
    v20 = sub_21B1114B4();
    v22 = v21;
    v26 = *(v20 + 16);
    for (i = v21; ; ++i)
    {
      if (v26 == i)
      {

        (*(v27 + 8))(v17, v24);
        goto LABEL_11;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (i >= *(v20 + 16))
      {
        goto LABEL_13;
      }

      (*(v6 + 16))(v10, v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, v19);
      sub_21AF96554(v10, v25);
      (*(v6 + 8))(v10, v19);
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

void sub_21AF97794(double a1)
{
  v7 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v29 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v29 - v18;
  sub_21AF95F9C(v17, v20, v21);
  if (!v2)
  {
    v29[1] = v1;
    v30 = v4;
    v29[0] = v3;
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA0, &unk_21B114220);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D839F8];
    *(v22 + 16) = xmmword_21B113D90;
    v24 = MEMORY[0x277D3E358];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = a1;
    sub_21B111774();
    v25 = *(v31 + 8);
    v25(v15, v7);

    sub_21B111754();
    v25(v5, v7);
    v25(v19, v7);
    v26 = v25;
    v27 = v30;
    sub_21B0B9164();
    v28 = v29[0];
    sub_21B111754();
    v26(v27, v7);
    v26(v28, v7);
  }
}

void sub_21AF97A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_11();
  v133 = v11;
  v134 = v10;
  v13 = v12;
  v15 = v14;
  sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v122 = v17;
  v123 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v121 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D38, &qword_21B114288);
  v21 = OUTLINED_FUNCTION_25(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_1();
  v126 = v22 - v23;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24();
  v128 = v25;
  v26 = sub_21B111954();
  OUTLINED_FUNCTION_1();
  v129 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_1();
  v127 = v29 - v30;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24();
  v131 = v32;
  v33 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  v39 = &v116 - v38;
  v40 = sub_21B111924();
  OUTLINED_FUNCTION_1();
  v132 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_1();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24();
  v130 = v47;
  if (v13)
  {
    v48 = v134;
    sub_21B112494();
    if (v48)
    {
      goto LABEL_23;
    }

    v119 = v13;
    v120 = v45;
    v118 = v15;
    v124 = v40;
    v125 = v26;
    v134 = 0;
  }

  else
  {
    v119 = 0;
    v120 = v45;
    v118 = v15;
    v124 = v40;
    v125 = v26;
  }

  v49 = [objc_opt_self() defaultManager];
  sub_21B111B94();
  sub_21B110D44();
  v50 = *(v35 + 8);
  v50(v39, v33);
  v51 = sub_21B1123D4();

  v52 = [v49 fileExistsAtPath_];

  if (v52)
  {
    sub_21B111B94();
    v53 = v134;
    sub_21B110DC4();
    v54 = v53;
    if (v53)
    {
      v55 = OUTLINED_FUNCTION_26();
      (v50)(v55);
      goto LABEL_23;
    }

    v72 = OUTLINED_FUNCTION_26();
    (v50)(v72);
    v59 = v120;
    sub_21B1118B4();
    v56 = v124;
    v60 = v125;
    v58 = v132;
  }

  else
  {
    if (qword_27CD42468 != -1)
    {
      swift_once();
    }

    v56 = v124;
    v57 = __swift_project_value_buffer(v124, qword_27CD6E6E0);
    v58 = v132;
    v59 = v120;
    (*(v132 + 16))(v120, v57, v56);
    v54 = v134;
    v60 = v125;
  }

  v61 = v130;
  v62 = v128;
  (*(v58 + 32))(v130, v59, v56);
  v63 = sub_21B1118E4();
  if (qword_27CD429F0 != -1)
  {
    OUTLINED_FUNCTION_8_0(&qword_27CD429F0);
  }

  v64 = qword_27CD6E7C8;
  v65 = qword_27CD6E7D0;
  sub_21B0DF08C(qword_27CD6E7C8, qword_27CD6E7D0, v63, v62);

  OUTLINED_FUNCTION_14(v62);
  if (v66)
  {
    sub_21AF99BE0(v62, &qword_27CD42D38, &qword_21B114288);
    sub_21AF99C38();
    swift_allocError();
    OUTLINED_FUNCTION_34(v67, 0xD000000000000012);
LABEL_21:
    (*(v58 + 8))(v61, v56);
    goto LABEL_23;
  }

  v128 = v65;
  v133 = v64;
  v68 = *(v129 + 32);
  v68(v131, v62, v60);
  v69 = sub_21B1118E4();
  if (qword_27CD42448 != -1)
  {
    OUTLINED_FUNCTION_9(&qword_27CD42448);
  }

  v70 = v126;
  v120 = qword_2811FAB18;
  v117 = qword_2811FAB20;
  sub_21B0DF08C(qword_2811FAB18, qword_2811FAB20, v69, v126);

  OUTLINED_FUNCTION_14(v70);
  if (v66)
  {
    sub_21AF99BE0(v70, &qword_27CD42D38, &qword_21B114288);
    sub_21AF99C38();
    swift_allocError();
    OUTLINED_FUNCTION_34(v71, 0xD000000000000011);
    (*(v129 + 8))(v131, v60);
    goto LABEL_21;
  }

  v124 = v56;
  v125 = v60;
  v134 = v54;
  v68(v127, v70, v60);
  sub_21B111944();
  v73 = sub_21B0C00A0();

  v74 = *(v73 + 16);
  if (v74)
  {
    OUTLINED_FUNCTION_23();
    v75 = a10;
    v126 = v73;
    v76 = (v73 + 40);
    do
    {
      v77 = *(v76 - 1);
      v78 = *v76;
      v135 = 0;
      v136 = 0xE000000000000000;

      sub_21B112904();

      v135 = 0x6F63287465675F70;
      v136 = 0xEF272C747865746ELL;
      MEMORY[0x21CEE9770](v77, v78);
      OUTLINED_FUNCTION_33();
      MEMORY[0x21CEE9770](v77, v78);

      v79 = v135;
      v80 = v136;
      a10 = v75;
      v82 = *(v75 + 16);
      v81 = *(v75 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_21AFCC4E4(v81 > 1, v82 + 1, 1);
      }

      *(v75 + 16) = v82 + 1;
      v83 = v75 + 16 * v82;
      *(v83 + 32) = v79;
      *(v83 + 40) = v80;
      v76 += 2;
      --v74;
    }

    while (v74);
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  sub_21B111944();
  v84 = sub_21B0C00A0();

  v85 = *(v84 + 16);
  if (v85)
  {
    OUTLINED_FUNCTION_23();
    v86 = a10;
    v126 = v84;
    v87 = (v84 + 40);
    do
    {
      v88 = *(v87 - 1);
      v89 = *v87;
      v135 = 0;
      v136 = 0xE000000000000000;

      sub_21B112904();

      v135 = 0x656D287465675F70;
      v136 = 0xEF272C7363697274;
      MEMORY[0x21CEE9770](v88, v89);
      OUTLINED_FUNCTION_33();
      MEMORY[0x21CEE9770](v88, v89);

      v90 = v135;
      v91 = v136;
      v93 = *(a10 + 16);
      v92 = *(a10 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_21AFCC4E4(v92 > 1, v93 + 1, 1);
      }

      *(a10 + 16) = v93 + 1;
      v94 = a10 + 16 * v93;
      *(v94 + 32) = v90;
      *(v94 + 40) = v91;
      v87 += 2;
      --v85;
    }

    while (v85);
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  v135 = v75;
  sub_21B0D0BE4(v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D48, &qword_21B114290);
  sub_21AF99EEC(&qword_27CD42D50, &qword_27CD42D48, &qword_21B114290, MEMORY[0x277D83958]);
  v95 = sub_21B112384();
  v97 = v96;

  v98 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v98 = v95 & 0xFFFFFFFFFFFFLL;
  }

  if (v98)
  {
    v135 = 0x2020202020200A2CLL;
    v136 = 0xEA00000000002020;
    v99 = OUTLINED_FUNCTION_26();
    MEMORY[0x21CEE9770](v99);
  }

  if (v119)
  {
    v135 = v118;
    v136 = v119;

    MEMORY[0x21CEE9770](46, 0xE100000000000000);
    v100 = v136;
    v119 = v135;
  }

  else
  {
    v119 = 0;
    v100 = 0xE000000000000000;
  }

  v126 = v100;
  v135 = 0;
  v136 = 0xE000000000000000;
  sub_21B112904();
  MEMORY[0x21CEE9770](0xD000000000000011, 0x800000021B130790);
  LODWORD(v118) = *MEMORY[0x277D39DD8];
  v101 = v121;
  v102 = v122;
  v116 = *(v122 + 104);
  v103 = v123;
  v116(v121);
  v104 = sub_21B111C44();
  v106 = v105;
  v122 = *(v102 + 8);
  (v122)(v101, v103);
  MEMORY[0x21CEE9770](v104, v106);

  MEMORY[0x21CEE9770](0xD000000000000017, 0x800000021B1307B0);
  OUTLINED_FUNCTION_21();
  v107 = OUTLINED_FUNCTION_26();
  MEMORY[0x21CEE9770](v107);

  MEMORY[0x21CEE9770](0xD000000000000029, 0x800000021B1307D0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x21CEE9770](542327072, 0xE400000000000000);
  OUTLINED_FUNCTION_21();
  MEMORY[0x21CEE9770](0xD000000000000016, 0x800000021B130800);
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  MEMORY[0x21CEE9770](2564140, 0xE300000000000000);
  MEMORY[0x21CEE9770](v120, v117);
  MEMORY[0x21CEE9770](0xD000000000000023, 0x800000021B130820);
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  MEMORY[0x21CEE9770](2564140, 0xE300000000000000);
  MEMORY[0x21CEE9770](v133, v128);
  MEMORY[0x21CEE9770](0xD000000000000027, 0x800000021B130850);
  v108 = v119;
  v109 = v126;
  MEMORY[0x21CEE9770](v119, v126);
  (v116)(v101, v118, v103);
  v110 = sub_21B111C54();
  v112 = v111;
  (v122)(v101, v103);
  MEMORY[0x21CEE9770](v110, v112);

  MEMORY[0x21CEE9770](0xD00000000000001FLL, 0x800000021B130880);
  MEMORY[0x21CEE9770](v108, v109);

  v113 = sub_21B111B84();
  MEMORY[0x21CEE9770](v113);

  MEMORY[0x21CEE9770](0xD00000000000001FLL, 0x800000021B1308A0);
  MEMORY[0x21CEE9770](0x6469776F72, 0xE500000000000000);
  MEMORY[0x21CEE9770](0x2E6D203D20, 0xE500000000000000);
  MEMORY[0x21CEE9770](0x5F747865746E6F63, 0xEA00000000006469);
  MEMORY[0x21CEE9770](0x29202020200ALL, 0xE600000000000000);
  v114 = *(v129 + 8);
  v115 = v125;
  v114(v127, v125);
  v114(v131, v115);
  (*(v132 + 8))(v130, v124);
LABEL_23:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21AF9874C()
{

  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_insertStatement, &qword_27CD42CC8, &unk_21B128DB0);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_deleteStatement, &qword_27CD42CC8, &unk_21B128DB0);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_protobufFactory));
  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_schemaUrl;
  sub_21B110D94();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_21AF98814()
{
  sub_21AF9874C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MetricStore(uint64_t a1)
{
  result = qword_27CD42C88;
  if (!qword_27CD42C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AF988C0(uint64_t a1)
{
  sub_21AF989A8(319);
  if (v1 <= 0x3F)
  {
    sub_21B110D94();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21AF989A8(uint64_t a1)
{
  if (!qword_27CD42C98)
  {
    sub_21B1117B4();
    v1 = sub_21B112774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD42C98);
    }
  }
}

unint64_t sub_21AF98A00(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = MEMORY[0x277D84F98];
LABEL_9:

    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CF8, &qword_21B114268);
  v2 = sub_21B112A14();
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1 + 32;

  while (1)
  {
    sub_21AF99A84(v4, &v13, &qword_27CD42D00, &qword_21B114270);
    v5 = v13;
    v6 = v14;
    result = sub_21AF98B58(v13, v14);
    if (v8)
    {
      break;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = (v2[6] + 16 * result);
    *v9 = v5;
    v9[1] = v6;
    result = sub_21AF81D68(&v15, v2[7] + 40 * result);
    v10 = v2[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v2[2] = v12;
    v4 += 56;
    if (!--v3)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_21AF98B58(uint64_t a1, uint64_t a2)
{
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v4 = sub_21B112F14();

  return sub_21AF98BD0(a1, a2, v4);
}

unint64_t sub_21AF98BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21B112D04() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_21AF98C84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_21AF98CF4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_21B112584();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF9927C(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21B112944();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_21AF9927C(uint64_t a1, unint64_t a2)
{
  v2 = sub_21AF992E8(sub_21AF992E4, 0, a1, a2);
  v6 = sub_21AF9931C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21AF9931C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21B1127A4();
    if (!v9 || (v10 = v9, v11 = sub_21AF98C84(v9, 0), v12 = sub_21AF9947C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21B1124C4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21B1124C4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21B112944();
LABEL_4:

  return sub_21B1124C4();
}

unint64_t sub_21AF9947C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_21AF9968C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21B112544();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21B112944();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_21AF9968C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_21B112524();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_21AF9968C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21B112554();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEE97B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_21AF99728(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_21AF997C4()
{
  result = qword_27CD42CB8;
  if (!qword_27CD42CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42CB8);
  }

  return result;
}

uint64_t sub_21AF99818(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_21AF99870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_21AF99988()
{
  result = qword_27CD42CE0;
  if (!qword_27CD42CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42CE0);
  }

  return result;
}

unint64_t sub_21AF999DC()
{
  result = qword_27CD42CE8;
  if (!qword_27CD42CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42CE8);
  }

  return result;
}

unint64_t sub_21AF99A30()
{
  result = qword_27CD42CF0;
  if (!qword_27CD42CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42CF0);
  }

  return result;
}

uint64_t sub_21AF99A84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_21AF99AE4()
{
  result = qword_27CD42D20;
  if (!qword_27CD42D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D20);
  }

  return result;
}

unint64_t sub_21AF99B38()
{
  result = qword_27CD42D28;
  if (!qword_27CD42D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D28);
  }

  return result;
}

unint64_t sub_21AF99B8C()
{
  result = qword_27CD42D30;
  if (!qword_27CD42D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D30);
  }

  return result;
}

uint64_t sub_21AF99BE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_21AF99C38()
{
  result = qword_27CD42D40;
  if (!qword_27CD42D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D40);
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

uint64_t getEnumTagSinglePayload for MetricStore.Columns(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MetricStore.Columns(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AF99E54()
{
  result = qword_27CD42D68;
  if (!qword_27CD42D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D68);
  }

  return result;
}

uint64_t sub_21AF99EEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21AF99F38()
{
  result = qword_27CD42D80[0];
  if (!qword_27CD42D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD42D80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, double a2)
{
  *(v5 - 104) = v2;
  v7 = *(v5 - 160);

  return sub_21B0EC95C(a2, v4, v7, v3);
}

void OUTLINED_FUNCTION_21()
{

  JUMPOUT(0x21CEE9770);
}

void OUTLINED_FUNCTION_22()
{

  JUMPOUT(0x21CEE88A0);
}

void OUTLINED_FUNCTION_23()
{
  *(v2 - 72) = v0;

  sub_21AFCC4E4(0, v1, 0);
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x21CEE9770);
}

void OUTLINED_FUNCTION_32()
{

  JUMPOUT(0x21CEE9770);
}

void OUTLINED_FUNCTION_33()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t OUTLINED_FUNCTION_34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 5;

  return swift_willThrow();
}

uint64_t sub_21AF9A29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_23SearchOnDeviceAnalytics22CustomFeedbackReporter_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21AF9A304(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21AF9A344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UploadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UploadError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AF9A528()
{
  result = qword_27CD42E08;
  if (!qword_27CD42E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42E08);
  }

  return result;
}

uint64_t sub_21AF9A5C8(unsigned __int8 a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a1);
  return sub_21B112F14();
}

uint64_t sub_21AF9A62C(uint64_t a1)
{
  v2 = *v1;
  sub_21B112EC4();
  MEMORY[0x21CEEA150](v2);
  return sub_21B112F14();
}

uint64_t sub_21AF9A6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  v92 = a8;
  v95 = a6;
  v84 = a5;
  v83 = a4;
  v94 = a3;
  v93 = a2;
  v97 = a1;
  v80 = a9;
  v81 = a12;
  v79 = *(a12 - 8);
  v85 = a11;
  v86 = a10;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2();
  v87 = v14 - v13;
  v89 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v88 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v77 - v21;
  v23 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v78 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v28 = (v27 - v26);
  v82 = type metadata accessor for RecipeIdentifier(0);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  v32 = sub_21B1113D4();
  OUTLINED_FUNCTION_1();
  v96 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_1();
  v91 = v35 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v77 - v38;
  sub_21B111594();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2();
  v43 = v42 - v41;
  (*(v44 + 16))(v42 - v41, v84);

  v84 = a7;
  v45 = sub_21AF9259C(v43, v95, a7);
  v46 = 0;
  if (v45 != 10)
  {
    v47 = v45;
    v48 = *(v96 + 16);
    v77 = v32;
    v48(v39, v97, v32);

    sub_21B111D84();
    v49 = v23;
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      sub_21AF94004(v22);
      v50 = 0;
      v51 = 1;
    }

    else
    {
      v52 = *(v78 + 32);
      v52(v28, v22, v23);
      v52(v31, v28, v23);
      v51 = 0;
      v50 = v83;
    }

    __swift_storeEnumTagSinglePayload(v31, v51, 1, v49);
    *(v31 + *(v82 + 20)) = v50;
    type metadata accessor for BlockActivitySpan(0);
    swift_allocObject();
    v53 = v84;

    v46 = sub_21AF92C88(v54, v39, v47, v31, v95, v53, v92);
    v32 = v77;
  }

  sub_21B110F74();
  sub_21B110F44();
  v56 = v88 + 8;
  v55 = *(v88 + 8);
  v57 = v89;
  v58 = v55(v19, v89);
  v59 = v87;
  v60 = v90;
  v86(v58);
  if (v60)
  {
    sub_21B110F74();
    sub_21B110F44();
    v55(v19, v57);
    if (v46)
    {

      sub_21B0B234C(v60);
    }

    v61 = OUTLINED_FUNCTION_9_0();
    v62(v61);
    OUTLINED_FUNCTION_2_2();
    v65 = sub_21AF9C430(v63, v64, MEMORY[0x277D3E0B0]);
    OUTLINED_FUNCTION_12_0(v65);
    OUTLINED_FUNCTION_16_0();
    (*(v57 + 8))(v56, v32);
    OUTLINED_FUNCTION_5_1();
    if (v66)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47740, &qword_21B114608);
      inited = swift_initStackObject();
      inited[3].n128_u64[0] = OUTLINED_FUNCTION_8_1(inited, xmmword_21B113D90);
      sub_21AF9406C(0, &qword_27CD42E10, 0x277CCABB0);
      v68 = sub_21B112334();
      OUTLINED_FUNCTION_7_1(v68);
    }

    swift_willThrow();
  }

  else
  {
    (*(v79 + 32))(v80, v59, v81);
    sub_21B110F74();
    sub_21B110F44();
    v55(v19, v57);
    if (v46)
    {
      *(v46 + *(*v46 + 472)) = 1;
    }

    v69 = OUTLINED_FUNCTION_9_0();
    v70(v69);
    OUTLINED_FUNCTION_2_2();
    v73 = sub_21AF9C430(v71, v72, MEMORY[0x277D3E0B0]);
    OUTLINED_FUNCTION_12_0(v73);
    OUTLINED_FUNCTION_16_0();
    (*(v57 + 8))(v56, v32);
    OUTLINED_FUNCTION_5_1();
    if (v66)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47740, &qword_21B114608);
      v74 = swift_initStackObject();
      v74[3].n128_u64[0] = OUTLINED_FUNCTION_8_1(v74, xmmword_21B113D90);
      sub_21AF9406C(0, &qword_27CD42E10, 0x277CCABB0);
      v75 = sub_21B112334();
      OUTLINED_FUNCTION_7_1(v75);
    }
  }
}

void sub_21AF9AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v41[2] = a4;
  v41[1] = a3;
  v43 = a2;
  v45 = 0xD00000000000001CLL;
  v6 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v41 - v14;
  v16 = *(v8 + 104);
  v16(v41 - v14, *MEMORY[0x277D39DF8], v6);
  v17 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v19 = v18;
  v20 = *(v8 + 8);
  v20(v15, v6);
  v44 = "Spotlight.SurveyWeekly.blocks";
  if (v17 == a1 && v19 == v43)
  {
    goto LABEL_13;
  }

  v41[0] = a1;
  v22 = v43;
  v23 = sub_21B112D04();

  if (v23)
  {
    goto LABEL_14;
  }

  v16(v12, *MEMORY[0x277D39E00], v6);
  v24 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v26 = v25;
  v20(v12, v6);
  if (v24 == v41[0] && v26 == v22)
  {
    v44 = "SearchAnalyticsWorker";
    v45 = 0xD00000000000001DLL;
LABEL_13:

    goto LABEL_14;
  }

  v28 = sub_21B112D04();

  if ((v28 & 1) == 0)
  {
    return;
  }

  v44 = "SearchAnalyticsWorker";
  v45 = 0xD00000000000001DLL;
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_10_0(inited, xmmword_21B1141D0);
  OUTLINED_FUNCTION_15_0();
  inited[3].n128_u64[0] = v30;
  inited[3].n128_u64[1] = v31;
  inited[4].n128_u64[0] = 0xE700000000000000;
  sub_21B1127D4();
  OUTLINED_FUNCTION_14_0();
  inited[4].n128_u64[1] = v32;
  inited[5].n128_u64[0] = v33;
  OUTLINED_FUNCTION_13_0();
  inited[5].n128_u64[1] = v34;
  inited[6].n128_u64[0] = sub_21B1127D4();
  sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
  v35 = sub_21B112334();
  if (v42)
  {
    sub_21B0DF3EC(v42);
    v37 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v35;
    sub_21AF9C0DC(v37, sub_21AF9C478, 0, isUniquelyReferenced_nonNull_native, &v46);
  }

  OUTLINED_FUNCTION_4_2();
  MEMORY[0x21CEE9770](v45, v44 | 0x8000000000000000);

  v39 = sub_21B1123D4();

  v40 = sub_21B1122E4();
  AnalyticsSendEvent();
}

uint64_t sub_21AF9B2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v75 = a5;
  v80 = a1;
  v73 = a6;
  v71 = a4;
  v65 = a8;
  v66 = a7;
  v64 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2();
  v72 = v11 - v10;
  sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v77 = v13;
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v64 - v18;
  v20 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2();
  v26 = (v25 - v24);
  v69 = type metadata accessor for RecipeIdentifier(0);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  sub_21B111424();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_1();
  v74 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v64 - v34;
  v79 = v36;
  v37 = *(v36 + 16);
  v70 = v38;
  v37(&v64 - v34, v80);

  v67 = a2;
  v68 = a3;
  sub_21B111D84();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_21AF94004(v19);
    v39 = 0;
    v40 = 1;
  }

  else
  {
    v41 = *(v22 + 32);
    v41(v26, v19, v20);
    v41(v29, v26, v20);
    v40 = 0;
    v39 = v71;
  }

  __swift_storeEnumTagSinglePayload(v29, v40, 1, v20);
  *(v29 + *(v69 + 20)) = v39;
  type metadata accessor for EngineActivitySpan(0);
  swift_allocObject();

  v43 = sub_21B0B26A0(v42, v35, v29);
  sub_21B110F74();
  sub_21B110F44();
  v44 = v78;
  v45 = v77 + 8;
  v46 = *(v77 + 8);
  v47 = v46(v16, v78);
  v48 = v72;
  v49 = v76;
  v75(v47);
  if (v49)
  {
    sub_21B110F74();
    sub_21B110F44();
    v46(v16, v44);
    sub_21B0B30FC(v49);
    v50 = OUTLINED_FUNCTION_11_0();
    v51 = v70;
    v52(v50);
    OUTLINED_FUNCTION_3_2();
    sub_21AF9C430(v53, v54, MEMORY[0x277D3E0E8]);
    sub_21B1125B4();
    sub_21B1125B4();
    (*(v45 + 8))(v16, v51);
    OUTLINED_FUNCTION_5_1();
    v56 = v67;
    v55 = v68;
    if (v57)
    {
      sub_21AF9B8E8(v67, v68, qword_21B114618[*(v43 + *(*v43 + 472))], v71);
    }

    sub_21AF9BC4C(v56, v55);
    swift_willThrow();
  }

  else
  {
    (*(v64 + 32))(v65, v48, v66);
    sub_21B110F74();
    sub_21B110F44();
    v46(v16, v44);
    *(v43 + *(*v43 + 472)) = 1;
    v58 = OUTLINED_FUNCTION_11_0();
    v59 = v70;
    v60(v58);
    OUTLINED_FUNCTION_3_2();
    sub_21AF9C430(v61, v62, MEMORY[0x277D3E0E8]);
    sub_21B1125B4();
    sub_21B1125B4();
    (*(v45 + 8))(v16, v59);
    OUTLINED_FUNCTION_5_1();
    if (v57)
    {
      sub_21AF9B8E8(v67, v68, 1, v71);
    }
  }
}

void sub_21AF9B8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v42 = a2;
  v43 = 0xD000000000000019;
  v5 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = *(v7 + 104);
  v15(&v38 - v13, *MEMORY[0x277D39DF8], v5);
  v16 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v18 = v17;
  v19 = *(v7 + 8);
  v19(v14, v5);
  v20 = "Spotlight.SurveyWeekly.e2e";
  if (v16 == a1 && v18 == v42)
  {
    goto LABEL_13;
  }

  v39 = a1;
  v22 = v42;
  v23 = sub_21B112D04();

  if (v23)
  {
    goto LABEL_14;
  }

  v15(v11, *MEMORY[0x277D39E00], v5);
  v24 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v26 = v25;
  v19(v11, v5);
  v20 = " AS c\n        ON\n            c.";
  if (v24 == v39 && v26 == v22)
  {
    v43 = 0xD00000000000001ALL;
LABEL_13:

    goto LABEL_14;
  }

  v28 = sub_21B112D04();

  if ((v28 & 1) == 0)
  {
    return;
  }

  v43 = 0xD00000000000001ALL;
LABEL_14:
  v29 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_10_0(inited, xmmword_21B1141D0);
  OUTLINED_FUNCTION_15_0();
  inited[3].n128_u64[0] = v31;
  inited[3].n128_u64[1] = v32;
  inited[4].n128_u64[0] = 0xE700000000000000;
  sub_21B1127D4();
  OUTLINED_FUNCTION_14_0();
  inited[4].n128_u64[1] = v33;
  inited[5].n128_u64[0] = v34;
  OUTLINED_FUNCTION_13_0();
  inited[5].n128_u64[1] = v35;
  inited[6].n128_u64[0] = sub_21B1127D4();
  sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
  sub_21B112334();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x21CEE9770](v29, v20 | 0x8000000000000000);

  v36 = sub_21B1123D4();

  v37 = sub_21B1122E4();
  AnalyticsSendEvent();
}

void sub_21AF9BC4C(uint64_t a1, uint64_t a2)
{
  if (qword_27CD42A18 != -1)
  {
    swift_once();
  }

  if (byte_27CD6E890 == 1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
    sub_21AF9BECC(a1, a2);
  }
}

uint64_t sub_21AF9BD9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B1123D4();
  v6 = sub_21B1123D4();
  v7 = sub_21B1123D4();
  v8 = sub_21B1123D4();
  v9 = sub_21AF9C398(v5, v6, v7, a1, a2, v8, 0, v2);

  if (v9)
  {
    sub_21B1122F4();
  }

  return 0;
}

void sub_21AF9BECC(uint64_t a1, uint64_t a2)
{
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  if (sub_21AF9BD9C(a1, a2))
  {
    v6 = sub_21B1122E4();
  }

  else
  {
    v6 = 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v10[4] = sub_21AF9C0BC;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21AF9C02C;
  v10[3] = &block_descriptor;
  v8 = _Block_copy(v10);
  v9 = v5;

  [v2 snapshotWithSignature:v6 delay:0 events:0 payload:0 actions:v8 reply:0.0];
  _Block_release(v8);

  sub_21B112724();
}

uint64_t sub_21AF9C02C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_21B112304();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AF9C0DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  sub_21B0DEF50(v46, a1, a2, a3);
  v6 = v46[1];
  v7 = v46[3];
  v8 = v46[4];
  v39 = v46[5];
  v40 = v46[0];
  v9 = (v46[2] + 64) >> 6;

  v38 = v6;
  if (v8)
  {
    while (1)
    {
      v41 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v40 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v40 + 56) + 8 * v12);
      v45[0] = *v13;
      v45[1] = v14;
      v45[2] = v15;

      v16 = v15;
      v39(&v42, v45);

      v17 = v42;
      v18 = v43;
      v19 = v44;
      v20 = *v47;
      v22 = sub_21AF98B58(v42, v43);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((v41 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD42E18, &qword_21B114610);
          sub_21B1129A4();
        }
      }

      else
      {
        sub_21B0C11B4(v25, v41 & 1);
        v27 = sub_21AF98B58(v17, v18);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v22 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v47;
      if (v26)
      {
        v30 = *(v29[7] + 8 * v22);

        v31 = v29[7];
        v32 = *(v31 + 8 * v22);
        *(v31 + 8 * v22) = v30;
      }

      else
      {
        v29[(v22 >> 6) + 8] |= 1 << v22;
        v33 = (v29[6] + 16 * v22);
        *v33 = v17;
        v33[1] = v18;
        *(v29[7] + 8 * v22) = v19;
        v34 = v29[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_23;
        }

        v29[2] = v36;
      }

      a4 = 1;
      v7 = v10;
      v6 = v38;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_21AF9C4BC(v40);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v41 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_21B112E54();
  __break(1u);
  return result;
}

id sub_21AF9C398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_21B1123D4();
  v15 = [a8 signatureWithDomain:a1 type:a2 subType:a3 subtypeContext:v14 detectedProcess:a6 triggerThresholdValues:a7];

  return v15;
}

uint64_t sub_21AF9C430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21AF9C478@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B0DEE18(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

void OUTLINED_FUNCTION_4_2()
{
  strcpy((v0 - 224), "com.apple.odla");
  *(v0 - 209) = -18;

  JUMPOUT(0x21CEE9770);
}

void OUTLINED_FUNCTION_7_1(uint64_t a1)
{
  v4 = *(v1 - 264);
  v5 = *(v1 - 256);
  v6 = *(v1 - 344);

  sub_21AF9AEDC(v4, v5, 1, v6, a1);
}

uint64_t OUTLINED_FUNCTION_8_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x64695F6B636F6C62;
  a1[2].n128_u64[1] = 0xE800000000000000;

  return sub_21B1127D4();
}

uint64_t OUTLINED_FUNCTION_10_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6E6F697461727564;
  a1[2].n128_u64[1] = 0xE800000000000000;

  return sub_21B112674();
}

void *OUTLINED_FUNCTION_12_0(uint64_t a1)
{

  return sub_21B1125B4();
}

void *OUTLINED_FUNCTION_16_0()
{

  return sub_21B1125B4();
}

uint64_t sub_21AF9C69C(uint64_t a1)
{
  result = type metadata accessor for RecipeIdentifier(319);
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

uint64_t sub_21AF9C734()
{
  v0 = sub_21B0B4600();
  sub_21AF93E84(v0 + *(*v0 + 464));
  return v0;
}

uint64_t sub_21AF9C79C()
{
  v0 = sub_21AF9C734();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AF9C8D8(uint64_t a1, uint64_t (*a2)(uint64_t), double (*a3)(uint64_t), double *a4)
{
  v7 = sub_21B110F84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2(v9);
  v13 = a3(v12);
  result = (*(v8 + 8))(v11, v7);
  *a4 = v13;
  return result;
}

double sub_21AF9C9CC()
{
  if (qword_27CD42470 != -1)
  {
    swift_once();
  }

  v0 = *&qword_27CD42EA0;
  if (qword_27CD42480 != -1)
  {
    swift_once();
  }

  result = v0 - *&qword_27CD42EB0;
  *&qword_27CD42EC0 = v0 - *&qword_27CD42EB0;
  return result;
}

uint64_t Double.fromReferenceToUnixTime.getter(double a1)
{
  if (qword_27CD42480 != -1)
  {
    result = OUTLINED_FUNCTION_2_3(&qword_27CD42480);
  }

  if (*&qword_27CD42EB0 >= a1)
  {
    if (qword_27CD42470 != -1)
    {
      return OUTLINED_FUNCTION_4_3(&qword_27CD42470);
    }
  }

  else
  {
    if (qword_27CD42488 != -1)
    {
      result = OUTLINED_FUNCTION_1_2(&qword_27CD42488);
    }

    if (*&qword_27CD42EB8 <= a1)
    {
      if (qword_27CD42478 != -1)
      {
        return OUTLINED_FUNCTION_3_3(&qword_27CD42478);
      }
    }

    else if (qword_27CD42490 != -1)
    {
      return OUTLINED_FUNCTION_0_3(&qword_27CD42490);
    }
  }

  return result;
}

uint64_t Double.fromUnixToReferenceTime.getter(double a1)
{
  if (qword_27CD42470 != -1)
  {
    result = OUTLINED_FUNCTION_4_3(&qword_27CD42470);
  }

  if (*&qword_27CD42EA0 >= a1)
  {
    if (qword_27CD42480 != -1)
    {
      return OUTLINED_FUNCTION_2_3(&qword_27CD42480);
    }
  }

  else
  {
    if (qword_27CD42478 != -1)
    {
      result = OUTLINED_FUNCTION_3_3(&qword_27CD42478);
    }

    if (*&qword_27CD42EA8 <= a1)
    {
      if (qword_27CD42488 != -1)
      {
        return OUTLINED_FUNCTION_1_2(&qword_27CD42488);
      }
    }

    else if (qword_27CD42490 != -1)
    {
      return OUTLINED_FUNCTION_0_3(&qword_27CD42490);
    }
  }

  return result;
}

double ClosedRange<>.fromUnixToReferenceTime.getter(double a1, double a2)
{
  if (qword_27CD42470 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_27CD42470);
  }

  v4 = *&qword_27CD42EA0;
  if (*&qword_27CD42EA0 >= a1)
  {
    if (qword_27CD42480 != -1)
    {
      OUTLINED_FUNCTION_2_3(&qword_27CD42480);
    }

    a1 = *&qword_27CD42EB0;
    goto LABEL_15;
  }

  if (qword_27CD42478 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if (*&qword_27CD42EA8 <= a1)
    {
      if (qword_27CD42488 != -1)
      {
        OUTLINED_FUNCTION_1_2(&qword_27CD42488);
      }

      a1 = *&qword_27CD42EB8;
    }

    else
    {
      if (qword_27CD42490 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_27CD42490);
      }

      a1 = a1 - *&qword_27CD42EC0;
    }

LABEL_15:
    if (v4 >= a2)
    {
      if (qword_27CD42480 != -1)
      {
        OUTLINED_FUNCTION_2_3(&qword_27CD42480);
      }

      v5 = *&qword_27CD42EB0;
    }

    else
    {
      if (qword_27CD42478 != -1)
      {
        OUTLINED_FUNCTION_3_3(&qword_27CD42478);
      }

      if (*&qword_27CD42EA8 <= a2)
      {
        if (qword_27CD42488 != -1)
        {
          OUTLINED_FUNCTION_1_2(&qword_27CD42488);
        }

        v5 = *&qword_27CD42EB8;
      }

      else
      {
        if (qword_27CD42490 != -1)
        {
          OUTLINED_FUNCTION_0_3(&qword_27CD42490);
        }

        v5 = a2 - *&qword_27CD42EC0;
      }
    }

    if (a1 <= v5)
    {
      break;
    }

    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_3_3(&qword_27CD42478);
  }

  return a1;
}