void sub_193768344()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD790);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_35_32("metadata");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "assetSelector");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "downloadResult");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193768498()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_89_2();
LABEL_9:
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_147_0();
        goto LABEL_9;
    }
  }
}

void sub_19376855C()
{
  OUTLINED_FUNCTION_75_3();
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[12];
  if (v0[2] != 1)
  {
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_85_3(v11, v12, v13, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata, v14, &off_1F07EE860, v15, v16, v17);
    sub_193447600();
  }

  if (!v1)
  {
    if (v9 != 1)
    {
      OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, v5, &off_1F07EE890, v6, v7, v8);
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if (v10 != 1)
    {
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }
  }
}

void sub_1937686B0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD7A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v5, xmmword_193952660);
  OUTLINED_FUNCTION_83_0("cellularAccessRequest");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_5_4(v8, "cellularAccessResponse");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "constrainedNetworkAccessRequest");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_5_4(v13, "constrainedNetworkAccessResponse");
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v16 = 5;
  v17 = OUTLINED_FUNCTION_5_4(v15, "expensiveNetworkAccessRequest");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  v20 = OUTLINED_FUNCTION_5_4(v18, "expensiveNetworkAccessResponse");
  (v7)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  *v22 = 7;
  v23 = OUTLINED_FUNCTION_5_4(v21, "isMAAutoAsset");
  (v7)(v23);
  v24 = OUTLINED_FUNCTION_44(7 * v4);
  *v25 = 8;
  v26 = OUTLINED_FUNCTION_5_4(v24, "isDiscretionary");
  (v7)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v0 + 8 * v4);
  *v28 = 9;
  v29 = OUTLINED_FUNCTION_5_4(v27, "isUserPriority");
  (v7)(v29);
  v30 = OUTLINED_FUNCTION_44(9 * v4);
  *v31 = 10;
  *v30 = "resultName";
  *(v30 + 8) = 10;
  *(v30 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193768958()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 10:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193768A1C()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v12 = *(v1 + 6);
  v11 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v7 = *(v1 + 7);
  if (*v1 != 2)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C2E0();
  }

  if (!v0)
  {
    if (v2 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v5 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    v8 = (v7 << 56) | (v12 << 48) | (v3 << 16) | (v2 << 8) | (v4 << 24) | (v5 << 32) | (v6 << 40);
    if ((v8 & 0xFF000000000000) != 0x2000000000000)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (HIBYTE(v8) != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v11 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v10)
    {
      OUTLINED_FUNCTION_181(v9, v10, 10);
    }
  }
}

void sub_193768C64()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
LABEL_8:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_89_2();
      goto LABEL_8;
    }
  }
}

void sub_193768CF4()
{
  OUTLINED_FUNCTION_75_3();
  v8 = v0[3];
  v9 = v0[4];
  if (v0[2] != 1)
  {
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_85_3(v10, v11, v12, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata, v13, &off_1F07EE860, v14, v15, v16);
    sub_193447600();
  }

  if (!v1 && v9 != 1)
  {
    OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, v5, &off_1F07EE890, v6, v7, v8);
    OUTLINED_FUNCTION_106();
    sub_193447600();
  }
}

void sub_193768DFC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD7D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBC0);
  *v1 = 1;
  *v0 = "metadata";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_29_1();
  *v8 = "assetSelector";
  v8[1] = 13;
  v9 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v10 = "type";
  *(v10 + 1) = 4;
  v11 = OUTLINED_FUNCTION_1_3(v10);
  (v7)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v13 = 4;
  *v12 = "secureOperationMetadata";
  *(v12 + 8) = 23;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193768FAC()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 4:
        sub_193498018();
        break;
      case 3:
        OUTLINED_FUNCTION_147_0();
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_1937690B8()
{
  v2 = v0;
  OUTLINED_FUNCTION_87_7();
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 81);
  v13 = *(v1 + 96);
  v22 = *(v1 + 88);
  if (v9 != 1)
  {
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
    v2 = v0;
  }

  if (!v2)
  {
    if (v11 == 1 || (v14 = *(v1 + 56), v21[0] = *(v1 + 40), v21[1] = v14, OUTLINED_FUNCTION_182_0(v3, v4, v5, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, v6, &off_1F07EE890, v7, v8, v10), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v0))
    {
      if ((v12 & 1) != 0 || (OUTLINED_FUNCTION_78_1(), sub_193447324(v15, v16, v17, v18, v19, v20), !v0))
      {
        if (v13 != 1)
        {
          memcpy(v21, (v1 + 104), 0x48uLL);
          OUTLINED_FUNCTION_78_1();
          sub_193447600();
        }
      }
    }
  }
}

void sub_19376927C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD7F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "OperationTypeUnknown";
  *(v0 + 8) = 20;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "OperationTypePersonalization";
  v8[1] = 28;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "OperationTypeGraft";
  v11[1] = 18;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "OperationTypeExclave";
  *(v14 + 1) = 20;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  *v16 = "OperationTypeMount";
  *(v16 + 1) = 18;
  v16[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193769488()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD808);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_18(v5, xmmword_1939526E0);
  OUTLINED_FUNCTION_83_0("clientName");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  *v8 = "fromLocation";
  v8[1] = 12;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_5_4(v11, "success");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_5_4(v13, "failureReason");
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v16 = 5;
  *v15 = "secureReason";
  v15[1] = 12;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_44(5 * v4);
  *v19 = 6;
  *v18 = "result";
  *(v18 + 8) = 6;
  *(v18 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193769680()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      default:
        continue;
    }
  }
}

void sub_193769724()
{
  OUTLINED_FUNCTION_75_3();
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  v13 = *(v1 + 56);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v1, v2, 1);
  }

  if (!v0)
  {
    if (v3)
    {
      v8 = OUTLINED_FUNCTION_45_25();
      OUTLINED_FUNCTION_181(v8, v9, v10);
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181(v5, v6, 4);
    }

    if (v7)
    {
      OUTLINED_FUNCTION_181(v13, v7, 5);
    }

    if (v12)
    {
      OUTLINED_FUNCTION_181(v11, v12, 6);
    }
  }
}

void sub_19376987C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAD820);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_35_32("metadata");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "atomicInstance");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "assetCount");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937699D0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 2:
        OUTLINED_FUNCTION_62();
LABEL_9:
        sub_193498018();
        break;
      case 1:
        OUTLINED_FUNCTION_89_2();
        goto LABEL_9;
    }
  }
}

void sub_193769A7C()
{
  OUTLINED_FUNCTION_75_3();
  v8 = *(v0 + 48);
  v9 = *(v0 + 60);
  if (*(v0 + 16) != 1)
  {
    OUTLINED_FUNCTION_47_25();
    OUTLINED_FUNCTION_85_3(v10, v11, v12, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata, v13, &off_1F07EE860, v14, v15, v16);
    sub_193447600();
  }

  if (!v1)
  {
    if (v8 != 1)
    {
      OUTLINED_FUNCTION_182_0(v2, v3, v4, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance, v5, &off_1F07EE8F0, v6, v7, *(v0 + 24));
      OUTLINED_FUNCTION_106();
      sub_193447600();
    }

    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }
  }
}

uint64_t AppleIntelligenceReportingMobileAssetLog.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceReportingMobileAssetLog()
{
  result = qword_1ED50CA60;
  if (!qword_1ED50CA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.event.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  return sub_19344865C(v1 + *(v2 + 28), v0, &qword_1EAE425B0, &qword_193993040);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;

  return sub_193765860(v3, v4, v5, v6, v7);
}

__n128 AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() + 32));
  sub_193762564(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

double sub_193769F30@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetSetConfigurationEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  memcpy(__dst, (v0 + *(v1 + 36)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0x50uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE42648, &unk_193993740);
}

void *AppleIntelligenceReportingMobileAssetLog.mobileAssetSetConfigurationEventState.setter()
{
  v1 = OUTLINED_FUNCTION_65_21();
  memcpy(v5, (v0 + *(v1 + 36)), sizeof(v5));
  sub_193442B60(v5, &qword_1EAE42648, &unk_193993740);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0x50uLL);
}

void sub_19376A05C(uint64_t a1@<X8>)
{
  *&v1 = OUTLINED_FUNCTION_95_16(a1);
  *(v2 + 56) = v1;
  *(v2 + 72) = v1;
  *(v2 + 88) = v1;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  memcpy(__dst, (v0 + *(v1 + 40)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0x68uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE42650, &qword_193993498);
}

void *AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.setter()
{
  v1 = OUTLINED_FUNCTION_65_21();
  memcpy(__dst, (v0 + *(v1 + 40)), sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE42650, &qword_193993498);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0x68uLL);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetUpdateEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  memcpy(__dst, (v0 + *(v1 + 44)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0x48uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE42658, &unk_193993750);
}

void *AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetUpdateEventState.setter()
{
  v1 = OUTLINED_FUNCTION_65_21();
  memcpy(__dst, (v0 + *(v1 + 44)), sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE42658, &unk_193993750);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0x48uLL);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetSecureEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  memcpy(__dst, (v0 + *(v1 + 48)), sizeof(__dst));
  v2 = OUTLINED_FUNCTION_62_5();
  memcpy(v2, v3, 0xB0uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE42660, &qword_1939934A0);
}

void *AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetSecureEventState.setter()
{
  v1 = OUTLINED_FUNCTION_65_21();
  memcpy(v5, (v0 + *(v1 + 48)), sizeof(v5));
  sub_193442B60(v5, &qword_1EAE42660, &qword_1939934A0);
  v2 = OUTLINED_FUNCTION_60_3();
  return memcpy(v2, v3, 0xB0uLL);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.mobileAssetAtomicInstanceEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() + 52));
  *&v9[13] = *(v2 + 45);
  v3 = *&v9[13];
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  *v9 = v2[2];
  v5 = *v9;
  *v0 = v8[0];
  v0[1] = v4;
  v0[2] = v5;
  *(v0 + 45) = v3;
  return sub_19344865C(v8, &v7, &qword_1EAE42668, &qword_193993760);
}

__n128 AppleIntelligenceReportingMobileAssetLog.mobileAssetAtomicInstanceEventState.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_65_21() + 52));
  *&v7[13] = *(v2 + 45);
  v3 = v2[1];
  v6[0] = *v2;
  v6[1] = v3;
  *v7 = v2[2];
  sub_193442B60(v6, &qword_1EAE42668, &qword_193993760);
  v4 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v4;
  v2[2] = *(v0 + 32);
  result = *(v0 + 45);
  *(v2 + 45) = result;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.code.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == *(a2 + 8) && v6 == v7;
    return v9 || (sub_19393CA30() & 1) != 0;
  }

  return !v7;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  if (*(v0 + 4) != 1)
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (v1)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v1)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_51_21();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1 != 1)
  {
    sub_19393CAE0();
  }

  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19376A7E4()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetType.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetVersion.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.init()(IntelligencePlatformLibrary::AppleIntelligenceReportingMobileAssetLog::MobileAssetAssetSelector *__return_ptr retstr)
{
  retstr->assetSpecifier = 0u;
  retstr->assetVersion = 0u;
  retstr->assetType = 0u;
}

uint64_t static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v4 == v9 && v6 == v11;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12)
    {
      if (v5 == v10 && v7 == v12)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[3];
  v2 = v0[5];
  if (v0[1])
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_11_47();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();
  OUTLINED_FUNCTION_51_21();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_2_0();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19376AC5C()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::AppleIntelligenceReportingMobileAssetLog::MobileAssetAssetSet __swiftcall AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.assetSetIdentifier.value._object = v2;
  result.assetSetIdentifier.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_115_0();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.assetSet.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.atomicInstanceId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_193456418(v1, 1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

void static AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  if (v3 != 1)
  {
    if (v6 == 1)
    {
      v11 = OUTLINED_FUNCTION_13_0();
      sub_19350CB08(v11, v12);
      v13 = OUTLINED_FUNCTION_242();
      sub_19350CB08(v13, v14);
      v15 = OUTLINED_FUNCTION_13_0();
      sub_19350CB08(v15, v16);

LABEL_7:
      v19 = OUTLINED_FUNCTION_13_0();
      sub_193456418(v19, v20);
      v21 = OUTLINED_FUNCTION_165_1();
LABEL_21:
      sub_193456418(v21, v22);
      goto LABEL_22;
    }

    if (v3)
    {
      if (v6)
      {
        v23 = *v0;
        if (v2 != *v1 || v3 != v6)
        {
          v25 = sub_19393CA30();
          v26 = OUTLINED_FUNCTION_13_0();
          sub_19350CB08(v26, v27);
          v28 = OUTLINED_FUNCTION_165_1();
          sub_19350CB08(v28, v29);
          v30 = OUTLINED_FUNCTION_13_0();
          sub_19350CB08(v30, v31);
          v32 = OUTLINED_FUNCTION_165_1();
          sub_193456418(v32, v33);
          if (v25)
          {
            goto LABEL_25;
          }

LABEL_20:

          v21 = OUTLINED_FUNCTION_13_0();
          goto LABEL_21;
        }

        sub_19350CB08(v23, v3);
        v45 = OUTLINED_FUNCTION_13_0();
        sub_19350CB08(v45, v46);
        v47 = OUTLINED_FUNCTION_13_0();
        sub_19350CB08(v47, v48);
        v37 = OUTLINED_FUNCTION_13_0();
LABEL_24:
        sub_193456418(v37, v38);
LABEL_25:

        goto LABEL_26;
      }

      v39 = OUTLINED_FUNCTION_13_0();
      sub_19350CB08(v39, v40);
      v34 = v3;
    }

    else
    {
      sub_19350CB08(*v0, 0);
      v34 = 0;
      if (!v6)
      {
        v35 = OUTLINED_FUNCTION_82_15();
        sub_19350CB08(v35, v36);
        sub_19350CB08(v2, 0);
        v37 = OUTLINED_FUNCTION_82_15();
        goto LABEL_24;
      }
    }

    v41 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v41, v42);
    sub_19350CB08(v2, v34);
    v43 = OUTLINED_FUNCTION_165_1();
    sub_193456418(v43, v44);
    goto LABEL_20;
  }

  sub_19350CB08(*v0, 1);
  if (v6 != 1)
  {
    v17 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v17, v18);
    goto LABEL_7;
  }

  v9 = OUTLINED_FUNCTION_242();
  sub_19350CB08(v9, v10);
LABEL_26:
  v49 = OUTLINED_FUNCTION_13_0();
  sub_193456418(v49, v50);
  if (v5 && v7 && (v4 != v8 || v5 != v7))
  {
    OUTLINED_FUNCTION_115_0();
    sub_19393CA30();
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[1];
  v2 = v0[3];
  if (v1 == 1)
  {
    sub_19393CAD0();
    if (!v2)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    v4 = *v0;
    sub_19393CAD0();
    sub_19393CAD0();
    if (v1)
    {

      OUTLINED_FUNCTION_11_47();
      sub_19393C640();
      v5 = OUTLINED_FUNCTION_24_1();
    }

    else
    {
      v5 = v4;
      v6 = 0;
    }

    sub_193456418(v5, v6);
    if (!v2)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_51_21();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  OUTLINED_FUNCTION_119();
  if (v2 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAD0();
    if (v2)
    {

      OUTLINED_FUNCTION_2_0();
      sub_19393C640();
      v4 = OUTLINED_FUNCTION_24_1();
    }

    else
    {
      v4 = v1;
      v5 = 0;
    }

    sub_193456418(v4, v5);
  }

  sub_19393CAD0();
  if (v3)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19376B320()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.numJobsTriggered.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.assetSets.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.init()@<X0>(void *a1@<X8>)
{
  result = OUTLINED_FUNCTION_13_52(a1);
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v1 + 28) = v2;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  return result;
}

void static AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 28);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  if (v4 == 1)
  {
    v79 = *(a1 + 6);
    v10 = OUTLINED_FUNCTION_23_10();
    sub_1935F2318(v10, v11, 1);
    if (v7 == 1)
    {
      v12 = OUTLINED_FUNCTION_24_1();
      sub_1935F2318(v12, v13, 1);
      goto LABEL_4;
    }

    v25 = OUTLINED_FUNCTION_25_34();
    sub_1935F2318(v25, v26, v27);
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    v17 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_24_1();
    sub_1935F2318(v20, v21, 1);
    v22 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v22, v23, v24);

LABEL_10:
    v28 = OUTLINED_FUNCTION_22_9();
    sub_193456F74(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_25_34();
LABEL_34:
    sub_193456F74(v31, v32, v33);
LABEL_35:
    OUTLINED_FUNCTION_107();
    return;
  }

  if ((v3 & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v6 & 0x100000000) != 0 || v3 != v6)
  {
    goto LABEL_31;
  }

  if (!v4)
  {
    v79 = *(a1 + 6);
    v64 = OUTLINED_FUNCTION_23_10();
    sub_1935F2318(v64, v65, 0);
    v55 = 0;
    if (v7)
    {
      goto LABEL_32;
    }

    v66 = OUTLINED_FUNCTION_24_1();
    sub_1935F2318(v66, v67, 0);
    v68 = OUTLINED_FUNCTION_23_10();
    sub_1935F2318(v68, v69, 0);
    v70 = OUTLINED_FUNCTION_24_1();
    v72 = 0;
    goto LABEL_39;
  }

  if (!v7)
  {
LABEL_31:
    v52 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v52, v53, v54);
    v55 = v4;
LABEL_32:
    v56 = OUTLINED_FUNCTION_25_34();
    sub_1935F2318(v56, v57, v58);
    v59 = OUTLINED_FUNCTION_23_10();
    sub_1935F2318(v59, v60, v55);
    v61 = OUTLINED_FUNCTION_25_34();
    sub_193456F74(v61, v62, v63);
    goto LABEL_33;
  }

  v79 = *(a1 + 6);
  if (v2 == *(a2 + 8) && v4 == v7)
  {
    v73 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v73, v74, v75);
    sub_1935F2318(v6, v2, v4);
    v76 = OUTLINED_FUNCTION_22_9();
    sub_1935F2318(v76, v77, v78);
    v70 = v6;
    v71 = v2;
    v72 = v4;
LABEL_39:
    sub_193456F74(v70, v71, v72);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_13_0();
  v39 = sub_19393CA30();
  v40 = OUTLINED_FUNCTION_22_9();
  sub_1935F2318(v40, v41, v42);
  v43 = OUTLINED_FUNCTION_25_34();
  sub_1935F2318(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_22_9();
  sub_1935F2318(v46, v47, v48);
  v49 = OUTLINED_FUNCTION_25_34();
  sub_193456F74(v49, v50, v51);
  if ((v39 & 1) == 0)
  {
LABEL_33:

    v31 = OUTLINED_FUNCTION_22_9();
    goto LABEL_34;
  }

LABEL_40:

LABEL_4:
  v14 = OUTLINED_FUNCTION_22_9();
  sub_193456F74(v14, v15, v16);
  if (v5)
  {
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v79 == v8)
    {
      v34 = v9;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_107();

  sub_193713858(v35, v36);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1[2];
  v3 = *(v1 + 28);
  v4 = v1[4];
  if (v2 == 1)
  {
    goto LABEL_7;
  }

  v5 = *v1;
  sub_19393CAD0();
  if ((v5 & 0x100000000) == 0)
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_19393CAD0();
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  sub_19393CAD0();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_19393CAD0();
  sub_19393C640();
  if ((v3 & 1) == 0)
  {
LABEL_5:
    sub_19393CAD0();
    sub_19393CAE0();
    goto LABEL_9;
  }

LABEL_8:
  sub_19393CAD0();
LABEL_9:

  return sub_1937366D4(v0, v4);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.hashValue.getter()
{
  OUTLINED_FUNCTION_47_26();
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376B800()
{
  OUTLINED_FUNCTION_47_26();
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.assetSet.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.configuredCount.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.requestedCount.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.clientDomainName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.init()@<D0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_13_52(a1);
  sub_193456418(0, 1);
  *&result = 1;
  *(v1 + 16) = xmmword_193961910;
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 44) = v2;
  *(v1 + 48) = 0;
  *(v1 + 52) = v2;
  *(v1 + 56) = 0;
  *(v1 + 60) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  return result;
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v5 == 1)
  {
    v139 = *(a2 + 40);
    v140 = *(a1 + 10);
    v141 = *(a2 + 44);
    v142 = *(a2 + 48);
    v143 = *(a2 + 52);
    v144 = *(a1 + 44);
    v145 = *(a2 + 56);
    v146 = *(a2 + 60);
    OUTLINED_FUNCTION_37_28();
    v12 = OUTLINED_FUNCTION_42_29();
    sub_1935F2318(v12, v13, 1);
    if (v9 == 1)
    {
      v14 = OUTLINED_FUNCTION_109_6();
      sub_1935F2318(v14, v15, 1);
      goto LABEL_4;
    }

    v29 = OUTLINED_FUNCTION_24_41();
    sub_1935F2318(v29, v30, v31);
    goto LABEL_10;
  }

  if (v9 == 1)
  {
    v21 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_109_6();
    sub_1935F2318(v24, v25, 1);
    v26 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v26, v27, v28);

LABEL_10:
    v32 = OUTLINED_FUNCTION_17_39();
    sub_193456F74(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_24_41();
LABEL_29:
    sub_193456F74(v35, v36, v37);
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v7 & 0x100000000) != 0 || v2 != v7)
  {
    goto LABEL_26;
  }

  if (!v5)
  {
    v139 = *(a2 + 40);
    v140 = *(a1 + 10);
    v141 = *(a2 + 44);
    v142 = *(a2 + 48);
    v143 = *(a2 + 52);
    v144 = *(a1 + 44);
    v145 = *(a2 + 56);
    v146 = *(a2 + 60);
    OUTLINED_FUNCTION_37_28();
    v135 = v4;
    v86 = OUTLINED_FUNCTION_42_29();
    sub_1935F2318(v86, v87, 0);
    v61 = 0;
    if (v9)
    {
      goto LABEL_27;
    }

    v88 = OUTLINED_FUNCTION_109_6();
    sub_1935F2318(v88, v89, 0);
    v90 = OUTLINED_FUNCTION_42_29();
    sub_1935F2318(v90, v91, 0);
    v92 = OUTLINED_FUNCTION_109_6();
    v94 = 0;
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_26:
    v58 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v58, v59, v60);
    v61 = v5;
LABEL_27:
    v62 = OUTLINED_FUNCTION_24_41();
    sub_1935F2318(v62, v63, v64);
    v65 = OUTLINED_FUNCTION_42_29();
    sub_1935F2318(v65, v66, v61);
    v67 = OUTLINED_FUNCTION_24_41();
    sub_193456F74(v67, v68, v69);
    goto LABEL_28;
  }

  v139 = *(a2 + 40);
  v140 = *(a1 + 10);
  v141 = *(a2 + 44);
  v142 = *(a2 + 48);
  v143 = *(a2 + 52);
  v144 = *(a1 + 44);
  v145 = *(a2 + 56);
  v146 = *(a2 + 60);
  OUTLINED_FUNCTION_37_28();
  v135 = v4;
  if (v3 == v8 && v5 == v9)
  {
    v99 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v99, v100, v101);
    sub_1935F2318(v7, v3, v5);
    v102 = OUTLINED_FUNCTION_17_39();
    sub_1935F2318(v102, v103, v104);
    v92 = v7;
    v93 = v3;
    v94 = v5;
LABEL_45:
    sub_193456F74(v92, v93, v94);
    goto LABEL_46;
  }

  v45 = sub_19393CA30();
  v46 = OUTLINED_FUNCTION_17_39();
  sub_1935F2318(v46, v47, v48);
  v49 = OUTLINED_FUNCTION_24_41();
  sub_1935F2318(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_17_39();
  sub_1935F2318(v52, v53, v54);
  v55 = OUTLINED_FUNCTION_24_41();
  sub_193456F74(v55, v56, v57);
  if ((v45 & 1) == 0)
  {
LABEL_28:

    v35 = OUTLINED_FUNCTION_17_39();
    goto LABEL_29;
  }

LABEL_46:

  v4 = v135;
LABEL_4:
  v16 = OUTLINED_FUNCTION_17_39();
  sub_193456F74(v16, v17, v18);
  if (v6 == 1)
  {
    sub_19350CB08(v4, 1);
    if (v11 == 1)
    {
      v19 = OUTLINED_FUNCTION_242();
      sub_19350CB08(v19, v20);
      goto LABEL_54;
    }

    v70 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v70, v71);
    goto LABEL_31;
  }

  if (v11 == 1)
  {
    v38 = OUTLINED_FUNCTION_13_0();
    sub_19350CB08(v38, v39);
    v40 = OUTLINED_FUNCTION_242();
    sub_19350CB08(v40, v41);
    v42 = OUTLINED_FUNCTION_13_0();
    sub_19350CB08(v42, v43);

LABEL_31:
    v72 = OUTLINED_FUNCTION_13_0();
    sub_193456418(v72, v73);
    v74 = OUTLINED_FUNCTION_165_1();
LABEL_50:
    sub_193456418(v74, v75);
    return 0;
  }

  if (!v6)
  {
    sub_19350CB08(v4, 0);
    if (!v11)
    {
      v95 = OUTLINED_FUNCTION_82_15();
      sub_19350CB08(v95, v96);
      sub_19350CB08(v4, 0);
      v97 = OUTLINED_FUNCTION_82_15();
      sub_193456418(v97, v98);
      goto LABEL_53;
    }

LABEL_48:
    v107 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v107, v108);
    v109 = OUTLINED_FUNCTION_23_10();
    sub_19350CB08(v109, v110);
    v111 = OUTLINED_FUNCTION_165_1();
    sub_193456418(v111, v112);
    goto LABEL_49;
  }

  if (!v11)
  {
    v105 = OUTLINED_FUNCTION_13_0();
    sub_19350CB08(v105, v106);
    goto LABEL_48;
  }

  if (v4 != v10 || v6 != v11)
  {
    v77 = sub_19393CA30();
    v78 = OUTLINED_FUNCTION_127();
    sub_19350CB08(v78, v79);
    v80 = OUTLINED_FUNCTION_165_1();
    sub_19350CB08(v80, v81);
    v82 = OUTLINED_FUNCTION_127();
    sub_19350CB08(v82, v83);
    v84 = OUTLINED_FUNCTION_165_1();
    sub_193456418(v84, v85);
    if (v77)
    {
      goto LABEL_53;
    }

LABEL_49:

    v74 = OUTLINED_FUNCTION_127();
    goto LABEL_50;
  }

  sub_19350CB08(v4, v6);
  v114 = OUTLINED_FUNCTION_13_0();
  sub_19350CB08(v114, v115);
  v116 = OUTLINED_FUNCTION_13_0();
  sub_19350CB08(v116, v117);
  v118 = OUTLINED_FUNCTION_13_0();
  sub_193456418(v118, v119);
LABEL_53:

LABEL_54:
  v120 = OUTLINED_FUNCTION_13_0();
  sub_193456418(v120, v121);
  if (v144)
  {
    v122 = v151;
    v124 = v149;
    v123 = v150;
    v126 = v147;
    v125 = v148;
    v128 = v145;
    v127 = v146;
    v130 = v142;
    v129 = v143;
    if (!v141)
    {
      return 0;
    }
  }

  else
  {
    v131 = v141;
    v130 = v142;
    if (v140 != v139)
    {
      v131 = 1;
    }

    v122 = v151;
    v124 = v149;
    v123 = v150;
    v126 = v147;
    v125 = v148;
    v128 = v145;
    v127 = v146;
    v129 = v143;
    if (v131)
    {
      return 0;
    }
  }

  if (v126)
  {
    if (!v129)
    {
      return 0;
    }
  }

  else
  {
    if (v125 == v130)
    {
      v132 = v129;
    }

    else
    {
      v132 = 1;
    }

    if (v132)
    {
      return 0;
    }
  }

  if (v124)
  {
    if (!v127)
    {
      return 0;
    }
  }

  else
  {
    if (v123 == v128)
    {
      v133 = v127;
    }

    else
    {
      v133 = 1;
    }

    if (v133)
    {
      return 0;
    }
  }

  if (v122)
  {
    if (v138)
    {
      v134 = v137 == v136 && v122 == v138;
      if (v134 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v138;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v0 + 44);
  v12 = *(v0 + 52);
  v4 = *(v0 + 60);
  v5 = v0[9];
  if (v1 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v6 = v0[9];
    v7 = *(v0 + 60);
    v8 = *v0;
    sub_19393CAD0();
    sub_19393CAD0();
    if ((v8 & 0x100000000) == 0)
    {
      sub_19393CAE0();
    }

    sub_19393CAD0();
    if (v1)
    {
      sub_19393C640();
    }

    v4 = v7;
    v5 = v6;
  }

  if (v2 == 1)
  {
    sub_19393CAD0();
    if ((v3 & 1) == 0)
    {
LABEL_10:
      sub_19393CAD0();
      sub_19393CAE0();
      goto LABEL_16;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAD0();
    if (v2)
    {

      sub_19393C640();
      v9 = OUTLINED_FUNCTION_165_1();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_82_15();
    }

    sub_193456418(v9, v10);
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_19393CAD0();
LABEL_16:
  if (v12)
  {
    sub_19393CAD0();
    if (!v4)
    {
      goto LABEL_18;
    }

LABEL_23:
    sub_19393CAD0();
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_24:
    sub_19393CAD0();
    OUTLINED_FUNCTION_107();
    return;
  }

  sub_19393CAD0();
  sub_19393CAE0();
  if (v4)
  {
    goto LABEL_23;
  }

LABEL_18:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_19:
  sub_19393CAD0();
  OUTLINED_FUNCTION_51_21();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376C138()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.hash(into:)();
  return sub_19393CB00();
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.assetSelector.setter()
{
  OUTLINED_FUNCTION_60_21();
  OUTLINED_FUNCTION_53_24();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.downloadResult.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_19376F35C(v2, v3, v4, v5);
}

__n128 AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.downloadResult.setter(uint64_t a1)
{
  sub_19345FF00(v1[9], v1[10], v1[11], v1[12]);
  result = *a1;
  *(v1 + 11) = *(a1 + 16);
  *(v1 + 9) = result;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_13_52(a1);
  OUTLINED_FUNCTION_44_24();
  *(v1 + 16) = xmmword_193961910;
  *(v1 + 32) = v2;
  OUTLINED_FUNCTION_76_16();
  v3 = OUTLINED_FUNCTION_93_12();
  result = sub_19345FF00(v3, v4, v5, v6);
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = v2;
  return result;
}

IntelligencePlatformLibrary::AppleIntelligenceReportingMobileAssetLog::MobileAssetAssetJobState::DownloadResult __swiftcall AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.init()()
{
  *v0 = 0x202020202020202;
  *(v0 + 8) = 2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v19 = a2[4];
  v20 = a2[5];
  v21 = a2[6];
  v22 = a2[7];
  v23 = a2[8];
  v24 = *(a2 + 2);
  v25 = *(a2 + 3);
  if (v4 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v15 == 2 || ((v15 ^ v4) & 1) != 0)
    {
      return v26;
    }
  }

  if (v5 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v16 == 2 || ((v16 ^ v5) & 1) != 0)
    {
      return v26;
    }
  }

  if (v6 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v17 == 2 || ((v17 ^ v6) & 1) != 0)
    {
      return v26;
    }
  }

  if (v7 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v18 == 2 || ((v18 ^ v7) & 1) != 0)
    {
      return v26;
    }
  }

  if (v8 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v19 == 2 || ((v19 ^ v8) & 1) != 0)
    {
      return v26;
    }
  }

  if (v9 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v20 == 2 || ((v20 ^ v9) & 1) != 0)
    {
      return v26;
    }
  }

  if (v10 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v21 == 2 || ((v21 ^ v10) & 1) != 0)
    {
      return v26;
    }
  }

  if (v11 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v22 == 2 || ((v22 ^ v11) & 1) != 0)
    {
      return v26;
    }
  }

  if (v12 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else
  {
    v26 = 0;
    if (v23 == 2 || ((v23 ^ v12) & 1) != 0)
    {
      return v26;
    }
  }

  if (v14)
  {
    if (!v25)
    {
      return 0;
    }

    v27 = v13 == v24 && v14 == v25;
    if (!v27 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  return 1;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v10 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 7);
  v7 = *(v0 + 8);
  v8 = *(v0 + 24);
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v10 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v7 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v8)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_114();

    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_114();
  }
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376C8C8()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hash(into:)();
  return sub_19393CB00();
}

uint64_t static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[6];
  v163 = a1[5];
  v164 = a1[7];
  v165 = a1[8];
  v8 = a1[11];
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  if (v4 == 1)
  {
    v162 = *(a2 + 24);
    v158 = *(a2 + 40);
    v159 = *(a2 + 56);
    v160 = *(a2 + 48);
    v161 = *(a2 + 64);
    OUTLINED_FUNCTION_52_20();
    v12 = OUTLINED_FUNCTION_115_0();
    sub_1935F2318(v12, v13, 1);
    if (v11 == 1)
    {
      v14 = OUTLINED_FUNCTION_48_22();
      sub_1935F2318(v14, v15, 1);
      goto LABEL_4;
    }

    v31 = OUTLINED_FUNCTION_23_41();
    sub_1935F2318(v31, v32, v33);
    goto LABEL_10;
  }

  if (v11 == 1)
  {
    v23 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_48_22();
    sub_1935F2318(v26, v27, 1);
    v28 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v28, v29, v30);

LABEL_10:
    v34 = OUTLINED_FUNCTION_15_51();
    sub_193456F74(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_23_41();
LABEL_29:
    sub_193456F74(v37, v38, v39);
    goto LABEL_30;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v10 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v10 & 0x100000000) != 0 || v2 != v10)
  {
    goto LABEL_26;
  }

  if (!v4)
  {
    v162 = *(a2 + 24);
    v158 = *(a2 + 40);
    v159 = *(a2 + 56);
    v160 = *(a2 + 48);
    v161 = *(a2 + 64);
    OUTLINED_FUNCTION_52_20();
    v152 = v8;
    v119 = OUTLINED_FUNCTION_115_0();
    sub_1935F2318(v119, v120, 0);
    v63 = 0;
    if (v11)
    {
      goto LABEL_27;
    }

    v121 = OUTLINED_FUNCTION_48_22();
    sub_1935F2318(v121, v122, 0);
    v123 = OUTLINED_FUNCTION_115_0();
    sub_1935F2318(v123, v124, 0);
    v125 = OUTLINED_FUNCTION_48_22();
    v127 = 0;
    goto LABEL_47;
  }

  if (!v11)
  {
LABEL_26:
    v60 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v60, v61, v62);
    v63 = v4;
LABEL_27:
    v64 = OUTLINED_FUNCTION_23_41();
    sub_1935F2318(v64, v65, v66);
    v67 = OUTLINED_FUNCTION_115_0();
    sub_1935F2318(v67, v68, v63);
    v69 = OUTLINED_FUNCTION_23_41();
    sub_193456F74(v69, v70, v71);
    goto LABEL_28;
  }

  v162 = *(a2 + 24);
  v158 = *(a2 + 40);
  v159 = *(a2 + 56);
  v160 = *(a2 + 48);
  v161 = *(a2 + 64);
  OUTLINED_FUNCTION_52_20();
  v152 = v8;
  if (v3 == v9 && v4 == v11)
  {
    v143 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v143, v144, v145);
    sub_1935F2318(v10, v3, v4);
    v146 = OUTLINED_FUNCTION_15_51();
    sub_1935F2318(v146, v147, v148);
    v125 = v10;
    v126 = v3;
    v127 = v4;
LABEL_47:
    sub_193456F74(v125, v126, v127);
    goto LABEL_48;
  }

  v47 = sub_19393CA30();
  v48 = OUTLINED_FUNCTION_15_51();
  sub_1935F2318(v48, v49, v50);
  v51 = OUTLINED_FUNCTION_23_41();
  sub_1935F2318(v51, v52, v53);
  v54 = OUTLINED_FUNCTION_15_51();
  sub_1935F2318(v54, v55, v56);
  v57 = OUTLINED_FUNCTION_23_41();
  sub_193456F74(v57, v58, v59);
  if ((v47 & 1) == 0)
  {
LABEL_28:

    v37 = OUTLINED_FUNCTION_15_51();
    goto LABEL_29;
  }

LABEL_48:

  v8 = v152;
LABEL_4:
  v16 = OUTLINED_FUNCTION_15_51();
  sub_193456F74(v16, v17, v18);
  if (v6 != 1)
  {
    *&v170 = v5;
    *(&v170 + 1) = v6;
    *&v171 = v163;
    *(&v171 + 1) = v7;
    v172 = v164;
    v173 = v165;
    if (*(&v162 + 1) != 1)
    {
      v150 = v6;
      v166 = v162;
      *&v167 = v158;
      *(&v167 + 1) = v160;
      v152 = v8;
      v168 = v159;
      v169 = v161;
      HIDWORD(v151) = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.== infix(_:_:)(&v170, &v166);
      OUTLINED_FUNCTION_9_69();
      sub_193641A34(v80, v81);
      sub_193641A34(v162, *(&v162 + 1));
      OUTLINED_FUNCTION_9_69();
      sub_193641A34(v82, v83);

      OUTLINED_FUNCTION_9_69();
      sub_193640C90(v84, v85);
      if ((v151 & 0x100000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_9_69();
    sub_193641A34(v40, v41);
    OUTLINED_FUNCTION_75_19();
    sub_193641A34(v42, v43);
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_9_69();
    sub_193641A34(v44, v45);

LABEL_33:
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_9_69();
    sub_193640C90(v76, v77);
    OUTLINED_FUNCTION_75_19();
    sub_193640C90(v78, v79);
    goto LABEL_30;
  }

  v19 = OUTLINED_FUNCTION_242();
  sub_193641A34(v19, v20);
  if (*(&v162 + 1) != 1)
  {
    OUTLINED_FUNCTION_75_19();
    sub_193641A34(v74, v75);
    goto LABEL_33;
  }

  sub_193641A34(v162, 1);
  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_9_69();
  sub_193640C90(v21, v22);
LABEL_35:
  if (v156 == 1)
  {
    v86 = OUTLINED_FUNCTION_19_49();
    v89 = sub_19376F35C(v86, v87, v88, 1);
    v97 = v153;
    if (v153 == 1)
    {
      v72 = 1;
      sub_19376F35C(v154, *(&v154 + 1), v155, 1);
      v98 = OUTLINED_FUNCTION_19_49();
      v101 = 1;
LABEL_45:
      sub_19345FF00(v98, v99, v100, v101);
      return v72 & 1;
    }

    v128 = OUTLINED_FUNCTION_81_11(v89, v90, v91, v92, v93, v94, v95, v96, v149, v150, v151, v152, v153, v154);
    sub_19376F35C(v128, v129, v130, v97);
  }

  else
  {
    v170 = v157;
    *&v171 = v8;
    *(&v171 + 1) = v156;
    v97 = v153;
    if (v153 != 1)
    {
      v174 = v154;
      *&v175 = v155;
      *(&v175 + 1) = v153;
      v72 = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.== infix(_:_:)(&v170, &v174);
      v176[0] = v174;
      v176[1] = v175;
      v137 = OUTLINED_FUNCTION_19_49();
      sub_19376F35C(v137, v138, v139, v156);
      sub_19376F35C(v154, *(&v154 + 1), v155, v153);
      v140 = OUTLINED_FUNCTION_19_49();
      sub_19376F35C(v140, v141, v142, v156);
      sub_19376F370(v176);
      v166 = v170;
      v167 = v171;
      sub_19376F370(&v166);
      v98 = OUTLINED_FUNCTION_19_49();
      v101 = v156;
      goto LABEL_45;
    }

    v166 = v170;
    v167 = v171;
    v102 = OUTLINED_FUNCTION_19_49();
    v105 = sub_19376F35C(v102, v103, v104, v156);
    v113 = OUTLINED_FUNCTION_81_11(v105, v106, v107, v108, v109, v110, v111, v112, v149, v150, v151, v152, 1, v154);
    sub_19376F35C(v113, v114, v115, 1);
    v116 = OUTLINED_FUNCTION_19_49();
    sub_19376F35C(v116, v117, v118, v156);
    sub_19376F370(&v166);
  }

  v131 = OUTLINED_FUNCTION_19_49();
  sub_19345FF00(v131, v132, v133, v156);
  v134 = OUTLINED_FUNCTION_78_17();
  sub_19345FF00(v134, v135, v136, v97);
LABEL_30:
  v72 = 0;
  return v72 & 1;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v17 = v0[3];
  v3 = v0[6];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[12];
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = v0[12];
    v9 = v0[11];
    v10 = v0[10];
    v11 = v0[9];
    v12 = *v0;
    OUTLINED_FUNCTION_103_0();
    if ((v12 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
    }

    v4 = v11;
    if (v1)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v6 = v10;
    v7 = v9;
    v8 = v16;
  }

  if (v2 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_103_0();
  if (v2)
  {
    OUTLINED_FUNCTION_103_0();

    sub_19393C640();
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_17:
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_18:
    OUTLINED_FUNCTION_104_0();
    v13 = v17;
    v14 = v2;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_104_0();

  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_14:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_15:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  v13 = v17;
  v14 = v2;
LABEL_19:
  sub_193640C90(v13, v14);
LABEL_20:
  if (v8 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  *&v18 = v4;
  *(&v18 + 1) = v6;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  OUTLINED_FUNCTION_103_0();
  v20[0] = v4;
  v20[1] = v6;
  v20[2] = v7;
  v20[3] = v8;
  sub_193763B40(v20, v21);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.DownloadResult.hash(into:)();
  v21[0] = v18;
  v21[1] = v19;
  return sub_19376F370(v21);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376D0B8()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState.hash(into:)();
  return sub_19393CB00();
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.assetSelector.setter()
{
  OUTLINED_FUNCTION_60_21();
  OUTLINED_FUNCTION_53_24();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.init()@<D0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_13_52(a1);
  OUTLINED_FUNCTION_44_24();
  *(v1 + 16) = xmmword_193961910;
  *(v1 + 32) = v2;
  return OUTLINED_FUNCTION_76_16();
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v98 = a1[3];
  v99 = a1[8];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_77_17();
    v12 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v12, v13, 1);
    if (v11 == 1)
    {
      v14 = OUTLINED_FUNCTION_28_28();
      sub_1935F2318(v14, v15, 1);
      goto LABEL_4;
    }

    v28 = OUTLINED_FUNCTION_11_47();
    sub_1935F2318(v28, v29, v30);
    goto LABEL_10;
  }

  if (v11 == 1)
  {
    v24 = OUTLINED_FUNCTION_4_69();
    sub_1935F2318(v24, v10, 1);
    v25 = OUTLINED_FUNCTION_5_64();
    sub_1935F2318(v25, v26, v27);

LABEL_10:
    v31 = OUTLINED_FUNCTION_5_64();
    sub_193456F74(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_11_47();
LABEL_29:
    sub_193456F74(v34, v35, v36);
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v9 & 0x100000000) != 0 || v2 != v9)
  {
    goto LABEL_26;
  }

  if (!v4)
  {
    OUTLINED_FUNCTION_77_17();
    v90 = v8;
    v78 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v78, v79, 0);
    v54 = 0;
    if (v11)
    {
      goto LABEL_27;
    }

    v80 = OUTLINED_FUNCTION_28_28();
    sub_1935F2318(v80, v81, 0);
    v82 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v82, v83, 0);
    v84 = OUTLINED_FUNCTION_28_28();
    v86 = 0;
    goto LABEL_39;
  }

  if (!v11)
  {
LABEL_26:
    v51 = OUTLINED_FUNCTION_5_64();
    sub_1935F2318(v51, v52, v53);
    v54 = v4;
LABEL_27:
    v55 = OUTLINED_FUNCTION_11_47();
    sub_1935F2318(v55, v56, v57);
    v58 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v58, v59, v54);
    v60 = OUTLINED_FUNCTION_11_47();
    sub_193456F74(v60, v61, v62);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_77_17();
  v90 = v8;
  if (v3 == v10 && v4 == v11)
  {
    OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_27_30();
    sub_1935F2318(v87, v88, v89);
    OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_27_30();
LABEL_39:
    sub_193456F74(v84, v85, v86);
    goto LABEL_40;
  }

  v44 = OUTLINED_FUNCTION_83_21();
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_2_0();
  sub_1935F2318(v45, v46, v47);
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_2_0();
  sub_193456F74(v48, v49, v50);
  if ((v44 & 1) == 0)
  {
LABEL_28:

    v34 = OUTLINED_FUNCTION_5_64();
    goto LABEL_29;
  }

LABEL_40:

  v8 = v90;
LABEL_4:
  v16 = OUTLINED_FUNCTION_5_64();
  sub_193456F74(v16, v17, v18);
  if (v6 != 1)
  {
    v101[0] = v98;
    v101[1] = v6;
    v101[2] = v5;
    v101[3] = v7;
    v101[4] = v8;
    v101[5] = v99;
    if (v97 != 1)
    {
      v100[0] = v96;
      v100[1] = v97;
      v100[2] = v92;
      v100[3] = v94;
      v100[4] = v93;
      v100[5] = v95;
      v91 = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.== infix(_:_:)(v101, v100);
      v70 = OUTLINED_FUNCTION_2_73();
      sub_193641A34(v70, v71);
      v72 = OUTLINED_FUNCTION_208();
      sub_193641A34(v72, v73);
      v74 = OUTLINED_FUNCTION_2_73();
      sub_193641A34(v74, v75);

      v76 = OUTLINED_FUNCTION_2_73();
      sub_193640C90(v76, v77);
      return (v91 & 1) != 0;
    }

    v37 = OUTLINED_FUNCTION_2_73();
    sub_193641A34(v37, v38);
    OUTLINED_FUNCTION_73_17();
    sub_193641A34(v39, v40);
    v41 = OUTLINED_FUNCTION_2_73();
    sub_193641A34(v41, v42);

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_7_47();
  sub_193641A34(v19, v20);
  if (v97 != 1)
  {
    OUTLINED_FUNCTION_73_17();
    sub_193641A34(v64, v65);
LABEL_33:
    v66 = OUTLINED_FUNCTION_2_73();
    sub_193640C90(v66, v67);
    OUTLINED_FUNCTION_75_19();
    sub_193640C90(v68, v69);
    return 0;
  }

  v21 = 1;
  sub_193641A34(v96, 1);
  OUTLINED_FUNCTION_7_47();
  sub_193640C90(v22, v23);
  return v21;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  v4 = v0[8];
  if (v1 != 1)
  {
    v5 = *v0;
    sub_19393CAD0();
    if ((v5 & 0x100000000) != 0)
    {
      sub_19393CAD0();
      if (v1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_19393CAD0();
      sub_19393CAE0();
      if (v1)
      {
LABEL_4:
        sub_19393CAD0();
        sub_19393C640();
        goto LABEL_7;
      }
    }
  }

  sub_19393CAD0();
LABEL_7:
  if (v2 == 1)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_116();
    return;
  }

  sub_19393CAD0();
  if (v2)
  {
    sub_19393CAD0();

    sub_19393C640();
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_15:
    sub_19393CAD0();
    OUTLINED_FUNCTION_78_17();
    goto LABEL_16;
  }

  sub_19393CAD0();

  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_19393CAD0();
  OUTLINED_FUNCTION_28_28();
  sub_19393C640();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_19393CAD0();
  sub_19393C640();
  OUTLINED_FUNCTION_78_17();
LABEL_16:
  OUTLINED_FUNCTION_116();

  sub_193640C90(v6, v7);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376D714()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState.hash(into:)();
  return sub_19393CB00();
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.assetSelector.setter()
{
  OUTLINED_FUNCTION_60_21();
  OUTLINED_FUNCTION_53_24();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 81);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  *(v1 + 81) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.secureOperationMetadata.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  memcpy(a1, (v1 + 88), 0x58uLL);
  return sub_19344865C(__dst, &v4, &qword_1EAE427E0, &qword_193993768);
}

void *AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.secureOperationMetadata.setter(const void *a1)
{
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE427E0, &qword_193993768);
  return memcpy((v1 + 88), a1, 0x58uLL);
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 88) = xmmword_1939526A0;
  v2 = (a1 + 88);
  OUTLINED_FUNCTION_72_13();
  sub_193456F74(0, 0, 1);
  *a1 = 0;
  *(a1 + 8) = 0;
  OUTLINED_FUNCTION_44_24();
  *(a1 + 16) = xmmword_193961910;
  *(a1 + 32) = 1;
  *&v3 = OUTLINED_FUNCTION_76_16();
  *(a1 + 65) = v3;
  *(a1 + 81) = 1;
  memcpy(__dst, (a1 + 88), sizeof(__dst));
  sub_193442B60(__dst, &qword_1EAE427E0, &qword_193993768);
  *v2 = xmmword_1939526A0;
  return OUTLINED_FUNCTION_72_13();
}

uint64_t sub_19376D9DC@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19376DA04@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19376DA38()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19376DAF0()
{
  sub_19393CAB0();
  v0 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.clientName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.fromLocation.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.failureReason.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.secureReason.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.result.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void __swiftcall AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.init()(IntelligencePlatformLibrary::AppleIntelligenceReportingMobileAssetLog::MobileAssetAssetSecureState::Metadata *__return_ptr retstr)
{
  retstr->clientName = 0u;
  retstr->fromLocation = 0u;
  retstr->success.value = 2;
  retstr->failureReason = 0u;
  retstr->secureReason = 0u;
  retstr->result = 0u;
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = *(a2 + 40);
  v17 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v22 = *(a2 + 72);
  v21 = *(a2 + 80);
  if (v3)
  {
    if (!v13)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v13)
    {
      v54 = *(a1 + 64);
      v56 = *(a2 + 64);
      v51 = *(a2 + 72);
      v52 = *(a1 + 56);
      v49 = *(a1 + 80);
      v50 = *(a2 + 80);
      v24 = *(a1 + 72);
      v25 = *(a2 + 56);
      v26 = *(a1 + 48);
      v27 = *(a1 + 40);
      v28 = *(a2 + 48);
      v29 = *(a2 + 40);
      v58 = *(a1 + 32);
      v30 = *(a2 + 32);
      v48 = *(a1 + 16);
      v31 = sub_19393CA30();
      v16 = v30;
      v6 = v58;
      v18 = v29;
      v17 = v28;
      v8 = v27;
      v7 = v26;
      v19 = v25;
      v11 = v24;
      v4 = v48;
      v12 = v49;
      v21 = v50;
      v22 = v51;
      v9 = v52;
      v10 = v54;
      v20 = v56;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v14 || v5 != v15)
    {
      v53 = v7;
      v55 = v11;
      v33 = v19;
      v34 = v8;
      v57 = v17;
      v35 = v18;
      v59 = v6;
      v36 = v16;
      v37 = sub_19393CA30();
      v16 = v36;
      v6 = v59;
      v18 = v35;
      v11 = v55;
      v17 = v57;
      v8 = v34;
      v7 = v53;
      v19 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v6 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

    goto LABEL_24;
  }

  result = 0;
  if (v16 != 2 && ((v16 ^ v6) & 1) == 0)
  {
LABEL_24:
    if (v7)
    {
      if (!v17)
      {
        return 0;
      }

      if (v8 != v18 || v7 != v17)
      {
        v40 = v9;
        v41 = v11;
        v42 = v19;
        v43 = sub_19393CA30();
        v19 = v42;
        v11 = v41;
        v9 = v40;
        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v17)
    {
      return 0;
    }

    if (v10)
    {
      if (!v20)
      {
        return 0;
      }

      if (v9 != v19 || v10 != v20)
      {
        v45 = v11;
        v46 = sub_19393CA30();
        v11 = v45;
        if ((v46 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v20)
    {
      return 0;
    }

    if (v12)
    {
      if (!v21)
      {
        return 0;
      }

      v47 = v11 == v22 && v12 == v21;
      return v47 || (sub_19393CA30() & 1) != 0;
    }

    return !v21;
  }

  return result;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v3)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v4)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_19393CAD0();
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_19393CAD0();
    OUTLINED_FUNCTION_114();
    return;
  }

  sub_19393CAD0();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_19393CAD0();
  sub_19393C640();
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_11:
  sub_19393CAD0();
  OUTLINED_FUNCTION_114();

  sub_19393C640();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376E268()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hash(into:)();
  return sub_19393CB00();
}

void static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v216 = v2[4];
  v222 = v2[5];
  v228 = v2[3];
  v234 = v2[6];
  v198 = v2[7];
  v6 = v2[8];
  v174 = v2[9];
  HIDWORD(v168) = *(v2 + 80);
  LODWORD(v186) = *(v2 + 81);
  memcpy(__dst, v2 + 11, sizeof(__dst));
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v192 = v1[3];
  v10 = v1[5];
  v240 = v1[6];
  v204 = v1[7];
  v210 = v1[4];
  v11 = v1[8];
  v162 = v1[9];
  HIDWORD(v156) = *(v1 + 80);
  HIDWORD(v180) = *(v1 + 81);
  memcpy(v255, v1 + 11, 0x58uLL);
  if (v5 == 1)
  {
    v12 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v12, v13, 1);
    if (v9 == 1)
    {
      v14 = OUTLINED_FUNCTION_28_28();
      sub_1935F2318(v14, v15, 1);
      goto LABEL_4;
    }

    v27 = OUTLINED_FUNCTION_11_47();
    sub_1935F2318(v27, v28, v29);
    goto LABEL_10;
  }

  if (v9 == 1)
  {
    v23 = OUTLINED_FUNCTION_4_69();
    sub_1935F2318(v23, v8, 1);
    v24 = OUTLINED_FUNCTION_5_64();
    sub_1935F2318(v24, v25, v26);

LABEL_10:
    v30 = OUTLINED_FUNCTION_5_64();
    sub_193456F74(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_11_47();
LABEL_29:
    sub_193456F74(v33, v34, v35);
    goto LABEL_30;
  }

  if ((v3 & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v7 & 0x100000000) != 0 || v3 != v7)
  {
    goto LABEL_26;
  }

  if (!v5)
  {
    v90 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v90, v91, 0);
    v53 = 0;
    if (v9)
    {
      goto LABEL_27;
    }

    v92 = OUTLINED_FUNCTION_28_28();
    sub_1935F2318(v92, v93, 0);
    v94 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v94, v95, 0);
    v96 = OUTLINED_FUNCTION_28_28();
    v98 = 0;
    goto LABEL_45;
  }

  if (!v9)
  {
LABEL_26:
    v50 = OUTLINED_FUNCTION_5_64();
    sub_1935F2318(v50, v51, v52);
    v53 = v5;
LABEL_27:
    v54 = OUTLINED_FUNCTION_11_47();
    sub_1935F2318(v54, v55, v56);
    v57 = OUTLINED_FUNCTION_208();
    sub_1935F2318(v57, v58, v53);
    v59 = OUTLINED_FUNCTION_11_47();
    sub_193456F74(v59, v60, v61);
    goto LABEL_28;
  }

  if (v4 == v8 && v5 == v9)
  {
    OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_27_30();
    sub_1935F2318(v99, v100, v101);
    OUTLINED_FUNCTION_4_69();
    OUTLINED_FUNCTION_27_30();
LABEL_45:
    sub_193456F74(v96, v97, v98);
    goto LABEL_46;
  }

  v43 = OUTLINED_FUNCTION_83_21();
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_2_0();
  sub_1935F2318(v44, v45, v46);
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_2_0();
  sub_193456F74(v47, v48, v49);
  if ((v43 & 1) == 0)
  {
LABEL_28:

    v33 = OUTLINED_FUNCTION_5_64();
    goto LABEL_29;
  }

LABEL_46:

LABEL_4:
  v16 = OUTLINED_FUNCTION_5_64();
  sub_193456F74(v16, v17, v18);
  if (v216 == 1)
  {
    OUTLINED_FUNCTION_10_58();
    sub_193641A34(v19, v20);
    if (v210 == 1)
    {
      sub_193641A34(v192, 1);
      OUTLINED_FUNCTION_10_58();
      sub_193640C90(v21, v22);
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_208();
    OUTLINED_FUNCTION_94_16();
    sub_193641A34(v62, v63);
LABEL_32:
    v64 = OUTLINED_FUNCTION_6_57();
    sub_193640C90(v64, v65);
    v66 = OUTLINED_FUNCTION_208();
    sub_193640C90(v66, v67);
    goto LABEL_30;
  }

  __src[0] = v228;
  __src[1] = v216;
  __src[2] = v222;
  __src[3] = v234;
  __src[4] = v198;
  __src[5] = v6;
  v150 = v10;
  if (v210 == 1)
  {
    v36 = OUTLINED_FUNCTION_6_57();
    sub_193641A34(v36, v37);
    OUTLINED_FUNCTION_94_16();
    sub_193641A34(v38, v39);
    v40 = OUTLINED_FUNCTION_6_57();
    sub_193641A34(v40, v41);

    goto LABEL_32;
  }

  v249[0] = v192;
  v249[1] = v210;
  v249[2] = v10;
  v249[3] = v240;
  v249[4] = v204;
  v249[5] = v11;
  HIDWORD(v144) = static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.== infix(_:_:)(__src, v249);
  v68 = OUTLINED_FUNCTION_6_57();
  sub_193641A34(v68, v69);
  v70 = OUTLINED_FUNCTION_208();
  sub_193641A34(v70, v71);
  v72 = OUTLINED_FUNCTION_6_57();
  sub_193641A34(v72, v73);

  v74 = OUTLINED_FUNCTION_6_57();
  sub_193640C90(v74, v75);
  if ((v144 & 0x100000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_34:
  if (v186)
  {
    if ((v180 & 0x100000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v180 & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

    __src[0] = v174;
    LOBYTE(__src[1]) = BYTE4(v168) & 1;
    v249[0] = v162;
    LOBYTE(v249[1]) = BYTE4(v156) & 1;
    v76 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
    if (v76 != AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter())
    {
      goto LABEL_30;
    }
  }

  v77 = __dst[0];
  v78 = __dst[1];
  memcpy(v253, &__dst[2], sizeof(v253));
  v80 = v255[0];
  v79 = v255[1];
  v81 = memcpy(v252, &v255[2], sizeof(v252));
  if (__dst[1] == 1)
  {
    if (v255[1] == 1)
    {
      __src[0] = __dst[0];
      __src[1] = 1;
      OUTLINED_FUNCTION_97_11(v81, v82, v83, v84, v85, v86, v87, v88, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v210, v216, v222, v228, v234, v240, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0], v247[1], v247[2], v247[3], v247[4], v247[5], v247[6], v247[7], v247[8], v247[9], v247[10], v248[0], v248[1], v248[2], v248[3], v248[4], v248[5], v248[6], v248[7], v248[8], v248[9], v248[10], v249[0], v249[1], v249[2], v249[3], v249[4]);
      sub_19344865C(__dst, v249, &qword_1EAE427E0, &qword_193993768);
      sub_19344865C(v255, v249, &qword_1EAE427E0, &qword_193993768);
      v89 = __src;
LABEL_52:
      sub_193442B60(v89, &qword_1EAE427E0, &qword_193993768);
      goto LABEL_30;
    }

    sub_19344865C(__dst, __src, &qword_1EAE427E0, &qword_193993768);
    sub_19344865C(v255, __src, &qword_1EAE427E0, &qword_193993768);
  }

  else
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    OUTLINED_FUNCTION_97_11(v81, v82, v83, v84, v85, v86, v87, v88, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v210, v216, v222, v228, v234, v240, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10], v247[0], v247[1], v247[2], v247[3], v247[4], v247[5], v247[6], v247[7], v247[8], v247[9], v247[10], v248[0], v248[1], v248[2], v248[3], v248[4], v248[5], v248[6], v248[7], v248[8], v248[9], v248[10], v249[0], v249[1], v249[2], v249[3], v249[4]);
    memcpy(v249, __src, sizeof(v249));
    if (v79 != 1)
    {
      memcpy(&v248[2], &v255[2], 0x48uLL);
      v248[0] = v80;
      v248[1] = v79;
      static AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.== infix(_:_:)(v249, v248);
      memcpy(v246, v248, sizeof(v246));
      OUTLINED_FUNCTION_84_15(__dst, v123, v124, v125, v126, v127, v128, v129, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v211, v217, v223, v229, v235, v241, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10]);
      OUTLINED_FUNCTION_84_15(v255, v130, v131, v132, v133, v134, v135, v136, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v208, v214, v220, v226, v232, v238, v244, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10]);
      OUTLINED_FUNCTION_84_15(__src, v137, v138, v139, v140, v141, v142, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10]);
      sub_19376F3A0(v246);
      memcpy(v247, v249, sizeof(v247));
      sub_19376F3A0(v247);
      v248[0] = v77;
      v248[1] = v78;
      memcpy(&v248[2], v253, 0x48uLL);
      v89 = v248;
      goto LABEL_52;
    }

    memcpy(v248, __src, sizeof(v248));
    OUTLINED_FUNCTION_85_19(__dst, v102, v103, v104, v105, v106, v107, v108, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v211, v217, v223, v229, v235, v241, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10]);
    OUTLINED_FUNCTION_85_19(v255, v109, v110, v111, v112, v113, v114, v115, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v206, v212, v218, v224, v230, v236, v242, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10]);
    OUTLINED_FUNCTION_85_19(__src, v116, v117, v118, v119, v120, v121, v122, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v213, v219, v225, v231, v237, v243, v246[0], v246[1], v246[2], v246[3], v246[4], v246[5], v246[6], v246[7], v246[8], v246[9], v246[10]);
    sub_19376F3A0(v248);
  }

  __src[0] = v77;
  __src[1] = v78;
  memcpy(&__src[2], v253, 0x48uLL);
  __src[11] = v80;
  __src[12] = v79;
  memcpy(v251, v252, sizeof(v251));
  sub_193442B60(__src, &qword_1EAE427E8, &qword_193993770);
LABEL_30:
  OUTLINED_FUNCTION_116();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v16 = v0[3];
  v3 = v0[6];
  v5 = v0[8];
  v4 = v0[9];
  v15 = *(v0 + 80);
  v17 = *(v0 + 81);
  v6 = v0[11];
  v7 = v0[12];
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v14 = v0[9];
    v8 = v0[12];
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    if ((v9 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
    }

    v7 = v8;
    if (v1)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v4 = v14;
  }

  if (v2 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_103_0();
  if (v2)
  {
    OUTLINED_FUNCTION_103_0();

    sub_19393C640();
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_17:
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_18:
    OUTLINED_FUNCTION_104_0();
    v10 = v16;
    v11 = v2;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_104_0();

  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_14:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_15:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  v10 = v16;
  v11 = v2;
LABEL_19:
  sub_193640C90(v10, v11);
LABEL_20:
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    __dst[0] = v4;
    LOBYTE(__dst[1]) = v15 & 1;
    v12 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.OperationType.rawValue.getter();
    MEMORY[0x193B18030](v12);
  }

  if (v7 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  memcpy(&__src[2], v0 + 13, 0x48uLL);
  __src[0] = v6;
  __src[1] = v7;
  OUTLINED_FUNCTION_103_0();
  v19[0] = v6;
  v19[1] = v7;
  memcpy(v20, v0 + 13, sizeof(v20));
  sub_1937642B8(v19, __dst);
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.Metadata.hash(into:)();
  memcpy(__dst, __src, 0x58uLL);
  return sub_19376F3A0(__dst);
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376EBB0()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.atomicInstance.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_19376F3D0(v2, v3, v4, v5);
}

double AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.atomicInstance.setter()
{
  sub_19376F414(v0[3], v0[4], v0[5], v0[6]);
  *&result = OUTLINED_FUNCTION_53_24().n128_u64[0];
  return result;
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_13_52(a1);
  *(v1 + 16) = v2;
  v3 = OUTLINED_FUNCTION_93_12();
  result = sub_19376F414(v3, v4, v5, v6);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  *(v1 + 56) = 0;
  *(v1 + 60) = v2;
  return result;
}

BOOL static AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  v6 = a1[6];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_62_21();
    v10 = OUTLINED_FUNCTION_216();
    sub_1935F2318(v10, v11, 1);
    if (v9 == 1)
    {
      v12 = OUTLINED_FUNCTION_166();
      sub_1935F2318(v12, v13, 1);
      goto LABEL_4;
    }

    v40 = OUTLINED_FUNCTION_26_30();
    sub_1935F2318(v40, v41, v42);
    goto LABEL_10;
  }

  if (v9 == 1)
  {
    v32 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_166();
    sub_1935F2318(v35, v36, 1);
    v37 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v37, v38, v39);

LABEL_10:
    v43 = OUTLINED_FUNCTION_14_53();
    sub_193456F74(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_26_30();
LABEL_29:
    sub_193456F74(v46, v47, v48);
    return 0;
  }

  if ((v3 & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((v8 & 0x100000000) != 0 || v3 != v8)
  {
    goto LABEL_26;
  }

  if (!v4)
  {
    OUTLINED_FUNCTION_62_21();
    v135 = v5;
    v117 = OUTLINED_FUNCTION_216();
    sub_1935F2318(v117, v118, 0);
    v85 = 0;
    if (v9)
    {
      goto LABEL_27;
    }

    v119 = OUTLINED_FUNCTION_166();
    sub_1935F2318(v119, v120, 0);
    v121 = OUTLINED_FUNCTION_216();
    sub_1935F2318(v121, v122, 0);
    v123 = OUTLINED_FUNCTION_166();
    v125 = 0;
    goto LABEL_44;
  }

  if (!v9)
  {
LABEL_26:
    v82 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v82, v83, v84);
    v85 = v4;
LABEL_27:
    v86 = OUTLINED_FUNCTION_26_30();
    sub_1935F2318(v86, v87, v88);
    v89 = OUTLINED_FUNCTION_216();
    sub_1935F2318(v89, v90, v85);
    v91 = OUTLINED_FUNCTION_26_30();
    sub_193456F74(v91, v92, v93);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_62_21();
  v135 = v5;
  if (v2 == v7 && v4 == v9)
  {
    v126 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v126, v127, v128);
    v129 = OUTLINED_FUNCTION_165_1();
    sub_1935F2318(v129, v130, v4);
    v131 = OUTLINED_FUNCTION_14_53();
    sub_1935F2318(v131, v132, v133);
    v123 = OUTLINED_FUNCTION_165_1();
    v125 = v4;
LABEL_44:
    sub_193456F74(v123, v124, v125);
    goto LABEL_45;
  }

  v69 = sub_19393CA30();
  v70 = OUTLINED_FUNCTION_14_53();
  sub_1935F2318(v70, v71, v72);
  v73 = OUTLINED_FUNCTION_26_30();
  sub_1935F2318(v73, v74, v75);
  v76 = OUTLINED_FUNCTION_14_53();
  sub_1935F2318(v76, v77, v78);
  v79 = OUTLINED_FUNCTION_26_30();
  sub_193456F74(v79, v80, v81);
  if ((v69 & 1) == 0)
  {
LABEL_28:

    v46 = OUTLINED_FUNCTION_14_53();
    goto LABEL_29;
  }

LABEL_45:

LABEL_4:
  v14 = OUTLINED_FUNCTION_14_53();
  sub_193456F74(v14, v15, v16);
  if (v6 == 1)
  {
    v17 = OUTLINED_FUNCTION_20_44();
    v20 = sub_19376F3D0(v17, v18, v19, 1);
    v28 = v140;
    if (v140 == 1)
    {
      sub_19376F3D0(v139, v141, v138, 1);
      v29 = OUTLINED_FUNCTION_20_44();
      sub_19376F414(v29, v30, v31, 1);
      goto LABEL_34;
    }

    v95 = OUTLINED_FUNCTION_80_17(v20, v21, v22, v23, v24, v25, v26, v27, v134, v135, v136, v137, v138, v139);
    sub_19376F3D0(v95, v96, v97, v140);
LABEL_32:
    v98 = OUTLINED_FUNCTION_20_44();
    sub_19376F414(v98, v99, v100, v6);
    v101 = OUTLINED_FUNCTION_182();
    sub_19376F414(v101, v102, v2, v28);
    return 0;
  }

  if (v140 == 1)
  {
    v49 = OUTLINED_FUNCTION_20_44();
    v28 = 1;
    v52 = sub_19376F3D0(v49, v50, v51, v6);
    v60 = OUTLINED_FUNCTION_80_17(v52, v53, v54, v55, v56, v57, v58, v59, v134, v135, v136, v137, v138, v139);
    sub_19376F3D0(v60, v61, v62, 1);
    v63 = OUTLINED_FUNCTION_20_44();
    sub_19376F3D0(v63, v64, v65, v6);
    v66 = OUTLINED_FUNCTION_127();
    sub_193456418(v66, v67);

    goto LABEL_32;
  }

  v103 = OUTLINED_FUNCTION_20_44();
  sub_19376F3D0(v103, v104, v105, v6);
  sub_19376F3D0(v139, v141, v138, v140);
  v106 = OUTLINED_FUNCTION_20_44();
  sub_19376F3D0(v106, v107, v108, v6);
  static AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.== infix(_:_:)();
  v110 = v109;
  sub_193456418(v139, v141);

  v111 = OUTLINED_FUNCTION_127();
  sub_193456418(v111, v112);

  v113 = OUTLINED_FUNCTION_20_44();
  sub_19376F414(v113, v114, v115, v6);
  if ((v110 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if ((v137 & 0x100000000) == 0)
  {
    v116 = v137;
    if (HIDWORD(v136) != v136)
    {
      v116 = 1;
    }

    return (v116 & 1) == 0;
  }

  return (v137 & 1) != 0;
}

void AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_77_1();
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(v1 + 60);
  if (v3 != 1)
  {
    v8 = *v1;
    sub_19393CAD0();
    if ((v8 & 0x100000000) != 0)
    {
      sub_19393CAD0();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_19393CAD0();
      sub_19393CAE0();
      if (v3)
      {
LABEL_4:
        sub_19393CAD0();
        sub_19393C640();
        goto LABEL_7;
      }
    }
  }

  sub_19393CAD0();
LABEL_7:
  sub_19376F264(v0, v2, v4, v5, v6);
  sub_19393CAD0();
  if ((v7 & 1) == 0)
  {
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376F1A4()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingMobileAssetLog.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AppleIntelligenceReportingMobileAssetLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376F224()
{
  sub_19393CAB0();
  AppleIntelligenceReportingMobileAssetLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19376F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 == 1)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (a3 == 1)
  {
    sub_19393CAD0();
    if (!a5)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAD0();
    if (a3)
    {

      sub_19393C640();
      v9 = a2;
      v10 = a3;
    }

    else
    {
      v9 = a2;
      v10 = 0;
    }

    sub_193456418(v9, v10);
    if (!a5)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t sub_19376F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_19376F3D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_19350CB08(result, a2);
  }

  return result;
}

uint64_t sub_19376F414(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_193456418(result, a2);
  }

  return result;
}

unint64_t sub_19376F45C()
{
  result = qword_1EAE427F0;
  if (!qword_1EAE427F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE427F0);
  }

  return result;
}

unint64_t sub_19376F4B4()
{
  result = qword_1EAE3A820;
  if (!qword_1EAE3A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A820);
  }

  return result;
}

unint64_t sub_19376F50C()
{
  result = qword_1EAE3A828;
  if (!qword_1EAE3A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A828);
  }

  return result;
}

unint64_t sub_19376F564()
{
  result = qword_1EAE3A830;
  if (!qword_1EAE3A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A830);
  }

  return result;
}

unint64_t sub_19376F5C4()
{
  result = qword_1EAE427F8;
  if (!qword_1EAE427F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE427F8);
  }

  return result;
}

unint64_t sub_19376F624()
{
  result = qword_1EAE42800;
  if (!qword_1EAE42800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE42808, &qword_193993BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42800);
  }

  return result;
}

unint64_t sub_19376F68C()
{
  result = qword_1EAE42810;
  if (!qword_1EAE42810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42810);
  }

  return result;
}

unint64_t sub_19376F6E4()
{
  result = qword_1EAE42818;
  if (!qword_1EAE42818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42818);
  }

  return result;
}

unint64_t sub_19376F744()
{
  result = qword_1EAE42820;
  if (!qword_1EAE42820)
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42820);
  }

  return result;
}

void sub_19376F7C4()
{
  sub_193761CA8(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_193761CA8(319, &qword_1ED503B68, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, qword_1ED503B88, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED5034B8, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1ED5034B0, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState);
            if (v5 <= 0x3F)
            {
              sub_19349D1FC(319, &qword_1ED503B78, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState);
              if (v6 <= 0x3F)
              {
                sub_19349D1FC(319, &qword_1ED503B80, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState);
                if (v7 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED5034C0, &type metadata for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState);
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
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19376FA0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_19376FAD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 104))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_31_35();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FB18(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_32_30(result, a2);
    }
  }

  return result;
}

uint64_t sub_19376FB98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 72))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_31_35();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FBE0(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_32_30(result, a2);
    }
  }

  return result;
}

uint64_t sub_19376FC50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 176))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_31_35();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FC98(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 168) = 0;
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
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_32_30(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19376FD58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 61))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_31_35();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19376FDA0(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_32_30(result, a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_60_21()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return sub_193640C90(v2, v3);
}

uint64_t OUTLINED_FUNCTION_65_21()
{

  return type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
}

double OUTLINED_FUNCTION_72_13()
{
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  return result;
}

void *OUTLINED_FUNCTION_97_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a72, (v72 + 16), 0x48uLL);
}

uint64_t sub_19376FF38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED512178);
  v4 = __swift_project_value_buffer(v3, qword_1ED512178);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_63 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512178);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42828, &qword_193994580);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog.attribute(_:)(void (*a1)(void))
{
  result = sub_193770348(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193770390(void (*a1)(void))
{
  result = sub_193770348(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1937703C0(uint64_t a1)
{
  result = sub_1937703E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937703E8()
{
  result = qword_1ED503B48;
  if (!qword_1ED503B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503B48);
  }

  return result;
}

_BYTE *_s12ModelCatalogOwst_0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingModelCatalogLog.json()()
{
  v1 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42830, &qword_1939945F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1937706D0(v0, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  sub_193770734();
  v16 = sub_19393C250();
  v18 = v17;
  (*(v3 + 8))(v7, v1);
  sub_19344E6DC(v15, &qword_1EAE42830, &qword_1939945F8);
  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t sub_1937706D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_193770734()
{
  result = qword_1EAE3A870;
  if (!qword_1EAE3A870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE42830, &qword_1939945F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A870);
  }

  return result;
}

uint64_t static AppleIntelligenceReportingModelCatalogLog.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42830, &qword_1939945F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;

  sub_19393C060();
  sub_193770734();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_74();
    return sub_193770FDC(v6, a1, v8);
  }

  return result;
}

uint64_t static AppleIntelligenceReportingModelCatalogLog.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v33 = a5;
  v31 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42830, &qword_1939945F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_6();
  v11 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  if (*sub_193772DF0() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    (*(v13 + 16))(v17, v19, v11);
    sub_193450688(a1, a2);
    sub_193770734();
    v20 = v37;
    sub_19393C280();
    if (v20)
    {
      return (*(v13 + 8))(v19, v11);
    }

    else
    {
      (*(v13 + 8))(v19, v11);
      OUTLINED_FUNCTION_2_74();
      v23 = v32;
      sub_193770FDC(v6, v32, v24);
      v25 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
      v26 = *(v25 + 20);
      sub_19344E6DC(v23 + v26, &qword_1EAE3A9E8, &qword_19394F800);
      v27 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v28 + 16))(v23 + v26, v31, v27);
      __swift_storeEnumTagSinglePayload(v23 + v26, 0, 1, v27);
      v29 = *(v25 + 24);
      sub_19344E6DC(v23 + v29, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v33, v23 + v29);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v22 = a3;
    *(v22 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AppleIntelligenceReportingModelCatalogLog.serialize()()
{
  v1 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42830, &qword_1939945F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1937706D0(v0, v5);
  sub_1934470C8(v5, v1, v8);
  sub_193770734();
  v9 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE42830, &qword_1939945F8);
  return v9;
}

int *sub_193770D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v15 || (sub_19393CA30() & 1) != 0)
  {
    v16 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
    sub_19375F0BC(v3 + *(v16 + 28), v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
    {
      result = sub_19344E6DC(v4, &qword_1EAE425B0, &qword_193993040);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    sub_193770FDC(v4, v14, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
    sub_193494798(v10, &off_1F07EDD08, a3);
    return sub_19375F18C(v14);
  }

  else
  {
    v18 = a1 == 0xD000000000000022 && 0x8000000193A35A60 == a2;
    if (v18 || (sub_19393CA30() & 1) != 0)
    {
      result = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
      if (*(v3 + result[8] + 40) == 1)
      {
        goto LABEL_8;
      }

      return sub_193494798(&type metadata for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState, &off_1F07EF438, a3);
    }

    else
    {
      sub_19349AB64();
      swift_allocError();
      v20 = v19;
      *v19 = a1;
      v19[1] = a2;
      v19[5] = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20 + 2);
      sub_1937706D0(v3, boxed_opaque_existential_1Tm);
      *(v20 + 48) = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_193770FDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193771054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x72656767697274;
  v7 = v3[1];
  v17 = *v3;
  v18 = v7;
  v19 = v3[2];
  v8 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v8 || (result = OUTLINED_FUNCTION_5_5(0x72656767697274, 0xE700000000000000), (result & 1) != 0))
  {
    if (BYTE9(v17))
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    *&v16 = v17;
    BYTE8(v16) = BYTE8(v17) & 1;
    return sub_1934948FC();
  }

  result = 0x6E6F69746361;
  v10 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v10 || (result = OUTLINED_FUNCTION_5_5(0x6E6F69746361, 0xE600000000000000), (result & 1) != 0))
  {
    if (BYTE9(v18))
    {
      goto LABEL_7;
    }

    *&v16 = v18;
    BYTE8(v16) = BYTE8(v18) & 1;
    return sub_1934948FC();
  }

  result = 0x6564496863746162;
  v11 = a1 == 0x6564496863746162 && a2 == 0xEF7265696669746ELL;
  if (v11 || (result = OUTLINED_FUNCTION_5_5(0x6564496863746162, 0xEF7265696669746ELL), (result & 1) != 0))
  {
    if (!*(&v19 + 1))
    {
      goto LABEL_7;
    }

    v16 = v19;
    return sub_1934948FC();
  }

  sub_19349AB64();
  swift_allocError();
  v13 = v12;
  *v12 = a1;
  v12[1] = a2;
  v12[5] = &type metadata for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState;
  v14 = swift_allocObject();
  v13[2] = v14;
  v15 = v19;
  v14[2] = v18;
  v14[3] = v15;
  v14[1] = v17;
  *(v13 + 48) = 1;
  swift_willThrow();

  return sub_193771238(&v17, &v16);
}

double AppleIntelligenceReportingModelCatalogLog.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_193760F9C();
  v6 = (a1 + v2[8]);
  sub_193773088(v6);
  *a1 = *sub_193772DF0();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE425B0, &qword_193993040);
  v8 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);
  sub_193528CDC(*v6, v6[1], v6[2], v6[3], v6[4], v6[5]);
  result = 0.0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[4] = 0;
  v6[5] = 1;
  return result;
}

uint64_t static AppleIntelligenceReportingModelCatalogLog.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B8, &qword_1939930B0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v88 - v12;
  v14 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v15 = *(v14 + 28);
  v16 = *(v11 + 56);
  sub_19375F0BC(a1 + v15, v13);
  sub_19375F0BC(a2 + v15, &v13[v16]);
  OUTLINED_FUNCTION_31(v13);
  if (!v17)
  {
    sub_19375F0BC(v13, v9);
    OUTLINED_FUNCTION_31(&v13[v16]);
    if (!v17)
    {
      sub_19375F934(&v13[v16], v6);
      sub_19375FB68(&qword_1EAE42570);
      v18 = sub_19393C550();
      sub_19375F18C(v6);
      sub_19375F18C(v9);
      sub_19344E6DC(v13, &qword_1EAE425B0, &qword_193993040);
      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_19375F18C(v9);
LABEL_9:
    sub_19344E6DC(v13, &qword_1EAE425B8, &qword_1939930B0);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_31(&v13[v16]);
  if (!v17)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v13, &qword_1EAE425B0, &qword_193993040);
LABEL_11:
  v19 = *(v14 + 32);
  v20 = (a1 + v19);
  v21 = *(a1 + v19);
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = v20[4];
  v26 = v20[5];
  v27 = (a2 + v19);
  v29 = *v27;
  v28 = v27[1];
  v31 = v27[2];
  v30 = v27[3];
  v32 = v27[5];
  v91 = v27[4];
  if (v26 == 1)
  {
    v89 = 1;
    v33 = OUTLINED_FUNCTION_1_73();
    v35 = v34;
    sub_193771838(v33, v36, v37, v38, v34, 1);
    if (v32 == 1)
    {
      OUTLINED_FUNCTION_0_97();
      sub_193771838(v39, v40, v41, v42, v43, 1);
      v44 = OUTLINED_FUNCTION_1_73();
      v48 = v35;
      v49 = 1;
LABEL_21:
      sub_193528CDC(v44, v45, v46, v47, v48, v49);
      return v32 & 1;
    }

    v90 = v29;
    OUTLINED_FUNCTION_0_97();
    sub_193771838(v66, v67, v68, v69, v70, v32);
    v53 = v89;
  }

  else
  {
    v97 = v21;
    v98 = v22;
    v99 = v23;
    v100 = v24;
    v101 = v25;
    v102 = v26;
    if (v32 != 1)
    {
      *&v92 = v29;
      *(&v92 + 1) = v28;
      *&v93 = v31;
      *(&v93 + 1) = v30;
      v81 = v91;
      *&v94 = v91;
      *(&v94 + 1) = v32;
      v88[2] = v21;
      v88[1] = v22;
      sub_193771838(v21, v22, v23, v24, v25, v26);
      sub_193771838(v29, v28, v31, v30, v81, v32);
      OUTLINED_FUNCTION_10_59();
      sub_193771838(v82, v83, v84, v85, v86, v87);
      sub_1937718A0();
      LOBYTE(v32) = sub_19393C550();
      v95[0] = v92;
      v95[1] = v93;
      v95[2] = v94;
      sub_19377184C(v95);
      OUTLINED_FUNCTION_12_47();
      sub_19377184C(v96);
      OUTLINED_FUNCTION_10_59();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_12_47();
    v90 = v29;
    v50 = OUTLINED_FUNCTION_1_73();
    v35 = v51;
    v53 = v52;
    sub_193771838(v50, v54, v55, v56, v51, v52);
    OUTLINED_FUNCTION_0_97();
    sub_193771838(v57, v58, v59, v60, v61, 1);
    v62 = OUTLINED_FUNCTION_1_73();
    sub_193771838(v62, v63, v64, v65, v35, v53);
    sub_19377184C(v96);
  }

  v71 = OUTLINED_FUNCTION_1_73();
  sub_193528CDC(v71, v72, v73, v74, v35, v53);
  OUTLINED_FUNCTION_0_97();
  sub_193528CDC(v75, v76, v77, v78, v79, v32);
LABEL_18:
  LOBYTE(v32) = 0;
  return v32 & 1;
}

uint64_t sub_193771838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

unint64_t sub_1937718A0()
{
  result = qword_1EAE42838;
  if (!qword_1EAE42838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42838);
  }

  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  sub_19375F0BC(v1 + *(v9 + 28), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    sub_19375F934(v8, v5);
    sub_19393CAD0();
    sub_19375FB68(&qword_1EAE425C8);
    sub_19393C540();
    sub_19375F18C(v5);
  }

  v10 = (v1 + *(v9 + 32));
  v11 = v10[5];
  if (v11 == 1)
  {
    return sub_19393CAD0();
  }

  v14 = v10[3];
  v13 = v10[4];
  v16 = v10[1];
  v15 = v10[2];
  *&v18 = *v10;
  v17 = v18;
  *(&v18 + 1) = v16;
  *&v19 = v15;
  *(&v19 + 1) = v14;
  *&v20 = v13;
  *(&v20 + 1) = v11;
  sub_19393CAD0();
  v21[0] = v17;
  v21[1] = v16;
  v21[2] = v15;
  v21[3] = v14;
  v21[4] = v13;
  v21[5] = v11;
  sub_193771238(v21, v22);
  sub_193771AF4();
  sub_19393C540();
  v22[0] = v18;
  v22[1] = v19;
  v22[2] = v20;
  return sub_19377184C(v22);
}

unint64_t sub_193771AF4()
{
  result = qword_1EAE42840;
  if (!qword_1EAE42840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42840);
  }

  return result;
}

void AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42860, &qword_193994718);
  OUTLINED_FUNCTION_17_27();
  if (!(!v9 & v8))
  {
    v26 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v26, v27, v28, v29, &qword_1EAE42860, &qword_193994718);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_15_5(v3, v4, v5, v6);
  if (v15 != v16)
  {
    v30 = OUTLINED_FUNCTION_39(v14);
    sub_1934B0FCC(v30, v1, 1, v31, &qword_1EAE42860, &qword_193994718);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10_36(v10, v11, v12, v13);
  if (v15 != v16)
  {
    v32 = OUTLINED_FUNCTION_39(v21);
    v17 = OUTLINED_FUNCTION_84_2(v32, v33, v34, v35, &qword_1EAE42860, &qword_193994718);
    v20 = v17;
  }

  OUTLINED_FUNCTION_20_27(v17, v18, v19, v20);
  v23 = *(v22 + 3);
  if (v2 + 4 > (v23 >> 1))
  {
    v36 = OUTLINED_FUNCTION_39(v23);
    v22 = sub_1934B0FCC(v36, v2 + 4, 1, v37, &qword_1EAE42860, &qword_193994718);
  }

  *(v22 + 2) = v2 + 4;
  v24 = &v22[16 * v0];
  *(v24 + 4) = 2;
  v24[40] = 1;
  return v22;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6C616E7265746E49;
  if (*v0 != 1)
  {
    v1 = 0x656C756465686353;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v2 == 0xD000000000000012 && 0x8000000193A35A90 == v1;
  if (v9 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A35A90) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0x6C616E7265746E49 && v1 == 0xEC0000006C6F6F54;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x6C616E7265746E49, 0xEC0000006C6F6F54) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  if (v2 == 0x656C756465686353 && v1 == 0xE900000000000064)
  {

    v8 = 1;
    v7 = 2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x656C756465686353, 0xE900000000000064);

    v7 = 2;
    if ((v8 & 1) == 0)
    {
      v7 = 0;
    }
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

void AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42858, &qword_193994710);
  OUTLINED_FUNCTION_17_27();
  if (!(!v7 & v6))
  {
    v22 = OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_84_2(v22, v23, v24, v25, &qword_1EAE42858, &qword_193994710);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_15_5(v1, v2, v3, v4);
  if (v13 != v14)
  {
    v26 = OUTLINED_FUNCTION_39(v12);
    sub_1934B0FCC(v26, v0, 1, v27, &qword_1EAE42858, &qword_193994710);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10_36(v8, v9, v10, v11);
  if (v13 != v14)
  {
    v28 = OUTLINED_FUNCTION_39(v19);
    v15 = OUTLINED_FUNCTION_84_2(v28, v29, v30, v31, &qword_1EAE42858, &qword_193994710);
    v18 = v15;
  }

  OUTLINED_FUNCTION_20_27(v15, v16, v17, v18);
  return v20;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x7263736275736E55;
  }

  return 0x6269726373627553;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2 == 0x6269726373627553 && v1 == 0xE900000000000065;
    if (v9 || (OUTLINED_FUNCTION_0_9(0x6269726373627553, 0xE900000000000065) & 1) != 0)
    {

      v7 = 0;
    }

    else
    {
      if (v2 != 0x7263736275736E55 || v1 != 0xEB00000000656269)
      {
        v8 = OUTLINED_FUNCTION_0_9(0x7263736275736E55, 0xEB00000000656269);

        v7 = v8 & 1;
        goto LABEL_14;
      }

      v7 = 1;
    }

    v8 = 1;
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_1937720FC()
{
  result = qword_1EAE42848;
  if (!qword_1EAE42848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42848);
  }

  return result;
}

unint64_t sub_193772154()
{
  result = qword_1EAE42850;
  if (!qword_1EAE42850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42850);
  }

  return result;
}

void sub_1937721A8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD838);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBE0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("event");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  v10 = OUTLINED_FUNCTION_48(v8, "modelCatalogSubscriptionEventState");
  (v7)(v10);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193772308()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
LABEL_7:
      sub_193498018();
    }

    else if (v1 == 1)
    {
      type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
      type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
      goto LABEL_7;
    }
  }
}

void sub_1937723FC()
{
  sub_1937724E0(v0);
  if (!v1 && *(v0 + *(type metadata accessor for AppleIntelligenceReportingModelCatalogLog() + 32) + 40) != 1)
  {
    sub_193447600();
  }
}

uint64_t sub_1937724E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE425B0, &qword_193993040);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  sub_19375F0BC(a1 + *(v9 + 28), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_193760D5C(v4);
  }

  sub_19375F934(v4, v8);
  sub_193447600();
  return sub_19375F18C(v8);
}

void sub_19377269C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD850);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 1;
  OUTLINED_FUNCTION_69_0("trigger");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = v1;
  *v8 = "action";
  *(v8 + 8) = 6;
  *(v8 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v11 = 3;
  v12 = OUTLINED_FUNCTION_48(v10, "batchIdentifier");
  (v7)(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193772818()
{
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      sub_19393C200();
    }

    else if (v1 == 2 || v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

uint64_t sub_1937728F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 25);
  v8 = v3[5];
  if ((*(v3 + 9) & 1) == 0)
  {
    v10 = *v3;
    v11 = *(v3 + 8);
    result = sub_193447324(&v10, 1, a2, &type metadata for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger, a3, &off_1F07EF4A8);
  }

  if (!v4)
  {
    if ((v7 & 1) == 0)
    {
      v10 = v3[2];
      v11 = *(v3 + 24);
      result = sub_193447324(&v10, 2, a2, &type metadata for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction, a3, &off_1F07EF4D0);
    }

    if (v8)
    {
      return sub_19393C3C0();
    }
  }

  return result;
}

void sub_193772A44()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD868);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBC0;
  v6 = v5 + v4 + dword_1EAEAD8A0;
  *(v5 + v4) = 0;
  *v6 = "TriggerUnknown";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v10 = *(v9 + 104);
  v10(v6, v7, v8);
  v11 = OUTLINED_FUNCTION_3_1(v5 + v4 + v2);
  *v12 = 1;
  v13 = OUTLINED_FUNCTION_25(v11, "TriggerAvailabilityChange");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v5 + v4 + 2 * v2);
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_25(v14, "TriggerInternalTool");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v5 + v4 + 3 * v2);
  *v18 = 3;
  *v17 = "TriggerScheduled";
  *(v17 + 8) = 16;
  *(v17 + 16) = 2;
  (v10)();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193772C4C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD880);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v5, xmmword_19394FBB0);
  *v0 = 0;
  OUTLINED_FUNCTION_69_0("SubscriptionActionUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_10_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v0 + v4);
  *v9 = 1;
  *v8 = "SubscriptionActionSubscribe";
  *(v8 + 8) = 27;
  *(v8 + 16) = v1;
  OUTLINED_FUNCTION_10_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v0 + 2 * v4);
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_48(v10, "SubscriptionActionUnsubscribe");
  (v7)(v12);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t AppleIntelligenceReportingModelCatalogLog.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AppleIntelligenceReportingModelCatalogLog()
{
  result = qword_1ED50CA50;
  if (!qword_1ED50CA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AppleIntelligenceReportingModelCatalogLog.event.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  return sub_19344865C(v1 + *(v2 + 28), v0, &qword_1EAE425B0, &qword_193993040);
}

double sub_193773088@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.modelCatalogSubscriptionEventState.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingModelCatalogLog() + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v8;

  return sub_193771838(v3, v4, v5, v6, v7, v8);
}

__n128 AppleIntelligenceReportingModelCatalogLog.modelCatalogSubscriptionEventState.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + *(type metadata accessor for AppleIntelligenceReportingModelCatalogLog() + 32));
  sub_193528CDC(*v5, v5[1], v5[2], v5[3], v5[4], v5[5]);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v7;
  v5[4] = v3;
  v5[5] = v4;
  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.trigger.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.action.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.batchIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_1937732C4@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937732EC@<X0>(char **a1@<X8>)
{
  result = static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193773348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193773428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193773534@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19377355C@<X0>(uint64_t *a1@<X8>)
{
  result = static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 25);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a2 + 25);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v8 = *(a2 + 40);
    v9 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.rawValue.getter();
    v10 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.rawValue.getter();
    v6 = v8;
    v3 = v17;
    v4 = v18;
    if (v9 != v10)
    {
      return 0;
    }
  }

  if (v2)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      return 0;
    }

    v11 = v3;
    v12 = v6;
    v13 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter();
    v14 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter();
    v6 = v12;
    v3 = v11;
    if (v13 != v14)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v6)
    {
      return 0;
    }

    v15 = v3 == v7 && v4 == v6;
    return v15 || (sub_19393CA30() & 1) != 0;
  }

  return !v6;
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.hash(into:)()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 40);
  if (*(v0 + 9) == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  v5 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.Trigger.rawValue.getter();
  MEMORY[0x193B18030](v5);
  if (v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  v3 = AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction.rawValue.getter();
  MEMORY[0x193B18030](v3);
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19377390C()
{
  sub_19393CAB0();
  AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.hash(into:)();
  return sub_19393CB00();
}

uint64_t AppleIntelligenceReportingModelCatalogLog.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceReportingModelCatalogLog.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193773994()
{
  sub_19393CAB0();
  AppleIntelligenceReportingModelCatalogLog.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_193773A04()
{
  result = qword_1EAE42898;
  if (!qword_1EAE42898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42898);
  }

  return result;
}

unint64_t sub_193773A8C()
{
  result = qword_1EAE428B0;
  if (!qword_1EAE428B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE428B0);
  }

  return result;
}

unint64_t sub_193773AE8()
{
  result = qword_1EAE428B8;
  if (!qword_1EAE428B8)
  {
    type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE428B8);
  }

  return result;
}

void sub_193773B6C()
{
  sub_193761CA8(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      sub_193761CA8(319, &qword_1ED503B68, type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent);
      if (v2 <= 0x3F)
      {
        sub_193773C68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_193773C68()
{
  if (!qword_1ED503B70)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED503B70);
    }
  }
}

uint64_t sub_193773CB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      OUTLINED_FUNCTION_71();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *_s10InvocationOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_193773E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5121D8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5121D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AppleIntelligence.Reporting.Invocation.Step.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:104857600 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:0x100000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_64 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5121D8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C0, &qword_193994B20);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AppleIntelligence.Reporting.Invocation.Step.attribute(_:)(void (*a1)(void))
{
  result = sub_193774210(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193774258(void (*a1)(void))
{
  result = sub_193774210(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193774288(uint64_t a1)
{
  result = sub_1937742B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1937742B0()
{
  result = qword_1ED503EC8;
  if (!qword_1ED503EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503EC8);
  }

  return result;
}

_BYTE *_s4StepOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingInvocationStep.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_19345227C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE428C8, &qword_193994B90, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

void static AppleIntelligenceReportingInvocationStep.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v30, &qword_1EAE428C8, &qword_193994B90, v31);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_11_48();
    sub_193775B80(v29, v24, v32);
  }

  OUTLINED_FUNCTION_27();
}

void static AppleIntelligenceReportingInvocationStep.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v37 = v2;
  v38 = v1;
  v36 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428C8, &qword_193994B90);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  if (*sub_19344B5E8() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v15 + 16))(v19, v22, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v23, v24, v25, v26);
    sub_19393C280();
    (*(v15 + 8))(v22, v13);
    if (!v0)
    {
      OUTLINED_FUNCTION_11_48();
      v28 = v37;
      sub_193775B80(v12, v37, v29);
      v30 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
      v31 = *(v30 + 20);
      sub_19344E6DC(v28 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v33 + 16))(v28 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v28 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v28 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v38, v28 + v34);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = v5;
    *(v27 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

id static AppleIntelligenceReportingInvocationStep.columns.getter()
{
  v258 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(0x6574737973627573, 0xE90000000000006DLL);
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  OUTLINED_FUNCTION_32_31();
  OUTLINED_FUNCTION_31_36();
  result = OUTLINED_FUNCTION_3_5(v32, v33);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v34 = swift_initStackObject();
  v42 = OUTLINED_FUNCTION_2_4(v34, v35, v36, v37, v38, v39, v40, v41, v250);
  OUTLINED_FUNCTION_5_10(v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v52 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v52);
  v53 = OUTLINED_FUNCTION_29_28();
  result = OUTLINED_FUNCTION_10_11(v53, 0xEC00000044496E6FLL);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v54 = swift_initStackObject();
  v62 = OUTLINED_FUNCTION_2_4(v54, v55, v56, v57, v58, v59, v60, v61, v251);
  OUTLINED_FUNCTION_5_10(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v72 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v72);
  OUTLINED_FUNCTION_26_31();
  OUTLINED_FUNCTION_25_35();
  result = OUTLINED_FUNCTION_10_11(v73, v74);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v75 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v85 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v95 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v95);
  result = OUTLINED_FUNCTION_10_11(0xD000000000000015, 0x8000000193A35C60);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  v96 = swift_initStackObject();
  v104 = OUTLINED_FUNCTION_2_4(v96, v97, v98, v99, v100, v101, v102, v103, v252);
  OUTLINED_FUNCTION_5_10(v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  v114 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v114);
  v115 = OUTLINED_FUNCTION_34_34();
  result = OUTLINED_FUNCTION_10_11(v115, 0xE900000000000044);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v116 = swift_initStackObject();
  v124 = OUTLINED_FUNCTION_2_4(v116, v117, v118, v119, v120, v121, v122, v123, v253);
  OUTLINED_FUNCTION_5_10(v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
  v134 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v134);
  v135 = OUTLINED_FUNCTION_33_27();
  result = sub_19343D150(v135, 0xE900000000000070, 3, 0, v0, 0, 2);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_2(result);
  v136 = swift_initStackObject();
  v144 = OUTLINED_FUNCTION_2_4(v136, v137, v138, v139, v140, v141, v142, v143, v254);
  OUTLINED_FUNCTION_5_10(v144, v145, v146, v147, v148, v149, v150, v151, v152, v153);
  v154 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v154);
  result = sub_19343D150(1701869940, 0xE400000000000000, 0, 0, v0, 4, 0);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2(result);
  v155 = swift_initStackObject();
  v163 = OUTLINED_FUNCTION_2_4(v155, v156, v157, v158, v159, v160, v161, v162, v255);
  OUTLINED_FUNCTION_5_10(v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
  v173 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v173);
  OUTLINED_FUNCTION_30_26();
  OUTLINED_FUNCTION_28_29();
  result = OUTLINED_FUNCTION_3_5(v174, v175);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_2(result);
  v176 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v176, v177, v178, v179, v180, v181, v182, v183, v184, v185);
  v186 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
  v196 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v196);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000011, 0x8000000193A35C80);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_7_2(result);
  v197 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
  v207 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v207, v208, v209, v210, v211, v212, v213, v214, v215, v216);
  v217 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v217);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000012, 0x8000000193A35CA0);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_2(result);
  v218 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v218, v219, v220, v221, v222, v223, v224, v225, v226, v227);
  v228 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v228, v229, v230, v231, v232, v233, v234, v235, v236, v237);
  v238 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v238);
  result = OUTLINED_FUNCTION_3_5(0xD00000000000001BLL, 0x8000000193A14620);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_2(result);
  v239 = swift_initStackObject();
  v247 = OUTLINED_FUNCTION_2_4(v239, v240, v241, v242, v243, v244, v245, v246, v256);
  *(v247 + 16) = v257;
  *(v247 + 32) = sub_19393C850();
  v248 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v249 = OUTLINED_FUNCTION_24_42();
  result = sub_19343D150(v249, 0xEB00000000444972, 6, 0, v247, 14, 3);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v258;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_193774EC4()
{
  OUTLINED_FUNCTION_26();
  v187 = v0;
  v188 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428D0, &qword_193994B98);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v177 = &v173 - v8;
  v176 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v175 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v180 = &v173 - v14;
  v181 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v179 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v178 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v20 = OUTLINED_FUNCTION_47(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v174 = v21 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v182 = &v173 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v173 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v173 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v173 - v32;
  v184 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v183 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6();
  v173 = v36 - v37;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v173 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v173 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v173 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v173 - v49;
  v185 = v5;
  v186 = v3;
  v51 = v5 == v48 && v3 == 0xE90000000000006DLL;
  if (v51 || (OUTLINED_FUNCTION_15_52(v48, 0xE90000000000006DLL) & 1) != 0)
  {
    v52 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 28);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_36();
  OUTLINED_FUNCTION_32_31();
  OUTLINED_FUNCTION_10_60();
  v58 = v51 && v57 == v56;
  if (v58 || (OUTLINED_FUNCTION_15_52(v55, v56) & 1) != 0)
  {
    v52 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 32);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_28();
  OUTLINED_FUNCTION_10_60();
  v62 = v51 && v61 == v60;
  if (v62 || (OUTLINED_FUNCTION_15_52(v59, v60) & 1) != 0)
  {
    v63 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
    v64 = OUTLINED_FUNCTION_14_54(*(v63 + 36));
    sub_193448758(v64, v33, v65, v66);
    OUTLINED_FUNCTION_21_42(v33);
    if (!v51)
    {
      v71 = v183;
      (*(v183 + 32))(v50, v33, v41);
      sub_1934948FC();
      (*(v71 + 8))(v50, v41);
      goto LABEL_26;
    }

    v67 = &qword_1EAE3AA88;
    v68 = &qword_19394F9C0;
    v69 = v33;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_25_35();
  OUTLINED_FUNCTION_26_31();
  OUTLINED_FUNCTION_10_60();
  v75 = v51 && v74 == v73;
  if (v75 || (OUTLINED_FUNCTION_15_52(v72, v73) & 1) != 0)
  {
    v76 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
    v77 = OUTLINED_FUNCTION_14_54(*(v76 + 40));
    sub_193448758(v77, v31, v78, v79);
    OUTLINED_FUNCTION_21_42(v31);
    if (!v51)
    {
      v80 = v183;
      (*(v183 + 32))(v47, v31, v41);
      sub_1934948FC();
      (*(v80 + 8))(v47, v41);
      goto LABEL_26;
    }

    v67 = &qword_1EAE3AA88;
    v68 = &qword_19394F9C0;
    v69 = v31;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_10_60();
  v84 = v51 && v82 == v83;
  if (v84 || (OUTLINED_FUNCTION_15_52(v81, v82) & 1) != 0)
  {
    v85 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
    v86 = OUTLINED_FUNCTION_14_54(*(v85 + 44));
    sub_193448758(v86, v28, v87, v88);
    OUTLINED_FUNCTION_21_42(v28);
    if (!v51)
    {
      v89 = v183;
      (*(v183 + 32))(v44, v28, v41);
      sub_1934948FC();
      (*(v89 + 8))(v44, v41);
      goto LABEL_26;
    }

    v67 = &qword_1EAE3AA88;
    v68 = &qword_19394F9C0;
    v69 = v28;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_34_34();
  OUTLINED_FUNCTION_10_60();
  v92 = v51 && v91 == 0xE900000000000044;
  if (v92 || (OUTLINED_FUNCTION_15_52(v90, 0xE900000000000044) & 1) != 0)
  {
    v93 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
    v94 = OUTLINED_FUNCTION_14_54(*(v93 + 48));
    v95 = v182;
    sub_193448758(v94, v182, v96, v97);
    v98 = v184;
    if (__swift_getEnumTagSinglePayload(v95, 1, v184) != 1)
    {
      (*(v183 + 32))(v41, v95, v98);
      OUTLINED_FUNCTION_13_0();
      sub_1934948FC();
      v99 = OUTLINED_FUNCTION_13_0();
      v100(v99);
      goto LABEL_26;
    }

    v67 = &qword_1EAE3AA88;
    v68 = &qword_19394F9C0;
    v69 = v95;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_33_27();
  OUTLINED_FUNCTION_10_60();
  v104 = v51 && v103 == v102;
  if (v104 || (OUTLINED_FUNCTION_15_52(v101, v102) & 1) != 0)
  {
    v105 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
    v106 = OUTLINED_FUNCTION_14_54(*(v105 + 52));
    v107 = v180;
    sub_193448758(v106, v180, v108, v109);
    v110 = v181;
    if (__swift_getEnumTagSinglePayload(v107, 1, v181) != 1)
    {
      v112 = v178;
      v111 = v179;
      (*(v179 + 32))(v178, v107, v110);
      sub_1934948FC();
      (*(v111 + 8))(v112);
      goto LABEL_26;
    }

    v67 = &qword_1EAE3A9E8;
    v68 = &qword_19394F800;
    v69 = v107;
    goto LABEL_24;
  }

  v113 = v185 == 1701869940 && v186 == 0xE400000000000000;
  if (v113 || (OUTLINED_FUNCTION_15_52(1701869940, 0xE400000000000000) & 1) != 0)
  {
    v114 = v187 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 56);
    if ((*(v114 + 9) & 1) == 0)
    {
      v115 = *(v114 + 8);
      *&v189 = *v114;
      BYTE8(v189) = v115 & 1;
      goto LABEL_9;
    }

LABEL_25:
    v70 = v188;
    *v188 = 0u;
    *(v70 + 1) = 0u;
    goto LABEL_26;
  }

  v116 = v185 == 0x73726F727265 && v186 == 0xE600000000000000;
  if (v116 || (OUTLINED_FUNCTION_15_52(0x73726F727265, 0xE600000000000000) & 1) != 0)
  {
    v117 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
    OUTLINED_FUNCTION_19_50(*(v117 + 60));
    v118 = &unk_1EAE424C0;
    v119 = &unk_193992828;
LABEL_72:
    __swift_instantiateConcreteTypeFromMangledNameV2(v118, v119);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_60();
  v122 = v51 && v121 == 0xE600000000000000;
  if (v122 || (OUTLINED_FUNCTION_15_52(v120, 0xE600000000000000) & 1) != 0)
  {
    v123 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
    OUTLINED_FUNCTION_19_50(*(v123 + 64));
    v118 = &unk_1EAE428E0;
    v119 = &unk_193994BA8;
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_28_29();
  OUTLINED_FUNCTION_30_26();
  OUTLINED_FUNCTION_10_60();
  v127 = v51 && v126 == v125;
  if (v127 || (OUTLINED_FUNCTION_15_52(v124, v125) & 1) != 0)
  {
    v52 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 68);
  }

  else
  {
    OUTLINED_FUNCTION_10_60();
    v131 = v51 && v130 == v129;
    if (v131 || (OUTLINED_FUNCTION_15_52(v128, v129) & 1) != 0)
    {
      v132 = (v187 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 72));
      v133 = *(v132 + 2);
      if (v133)
      {
        v189 = *v132;
        v190 = v133;
        v191 = *(v132 + 24);
        v192 = *(v132 + 40);
        v193 = *(v132 + 7);
        sub_193494798(&type metadata for AppleIntelligenceReportingUseCase, &off_1F07EDCC8, v188);
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_38();
    v135 = v185 == 0xD000000000000012 && v134 == v186;
    if (v135 || (OUTLINED_FUNCTION_15_52(0xD000000000000012, v134) & 1) != 0)
    {
      v136 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
      OUTLINED_FUNCTION_19_50(*(v136 + 76));
      v118 = &unk_1EAE428D8;
      v119 = &unk_193994BA0;
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_10_60();
    v140 = v51 && v138 == v139;
    if (v140 || (OUTLINED_FUNCTION_15_52(v137, v138) & 1) != 0)
    {
      v52 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 80);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v142 = v185 == 0xD000000000000012 && v141 == v186;
      if (v142 || (OUTLINED_FUNCTION_15_52(0xD000000000000012, v141) & 1) != 0)
      {
        v52 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 84);
      }

      else
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_10_60();
        v146 = v51 && v144 == v145;
        if (!v146 && (OUTLINED_FUNCTION_15_52(v143, v144) & 1) == 0)
        {
          OUTLINED_FUNCTION_24_42();
          OUTLINED_FUNCTION_10_60();
          v150 = v51 && v149 == v148;
          if (v150 || (OUTLINED_FUNCTION_15_52(v147, v148) & 1) != 0)
          {
            v151 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
            v152 = OUTLINED_FUNCTION_14_54(*(v151 + 92));
            v153 = v174;
            sub_193448758(v152, v174, v154, v155);
            if (__swift_getEnumTagSinglePayload(v153, 1, v184) != 1)
            {
              v157 = v183;
              v156 = v184;
              v158 = v173;
              (*(v183 + 32))(v173, v174, v184);
              sub_1934948FC();
              (*(v157 + 8))(v158, v156);
              goto LABEL_26;
            }

            v67 = &qword_1EAE3AA88;
            v68 = &qword_19394F9C0;
            v69 = v174;
          }

          else
          {
            OUTLINED_FUNCTION_10_60();
            v162 = v51 && v161 == v160;
            if (!v162 && (OUTLINED_FUNCTION_15_52(v159, v160) & 1) == 0)
            {
              sub_19349AB64();
              swift_allocError();
              v170 = v169;
              v171 = v186;
              *v169 = v185;
              v169[1] = v171;
              v169[5] = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
              boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v170 + 2);
              sub_19345227C(v187, boxed_opaque_existential_1Tm);
              *(v170 + 48) = 1;
              swift_willThrow();

              goto LABEL_26;
            }

            v163 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
            v164 = OUTLINED_FUNCTION_14_54(*(v163 + 96));
            v165 = v177;
            sub_193448758(v164, v177, v166, v167);
            if (__swift_getEnumTagSinglePayload(v165, 1, v176) != 1)
            {
              v168 = v175;
              sub_193775B80(v177, v175, type metadata accessor for AppleIntelligenceReportingSpanContext);
              sub_193494798(v176, &off_1F07EDD28, v188);
              sub_193775BDC(v168);
              goto LABEL_26;
            }

            v67 = &qword_1EAE428D0;
            v68 = &qword_193994B98;
            v69 = v177;
          }

LABEL_24:
          sub_19344E6DC(v69, v67, v68);
          goto LABEL_25;
        }

        v52 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 88);
      }
    }
  }

LABEL_7:
  v53 = (v187 + v52);
  v54 = *(v187 + v52 + 8);
  if (!v54)
  {
    goto LABEL_25;
  }

  *&v189 = *v53;
  *(&v189 + 1) = v54;
LABEL_9:
  sub_1934948FC();
LABEL_26:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193775B80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_193775BDC(uint64_t a1)
{
  v2 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static AppleIntelligenceReportingInvocationStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428D0, &qword_193994B98);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v215 - v10;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428E8, &qword_193994BF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v215 - v13;
  v229 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v226 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_289();
  v224 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_1();
  v225 = v20;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v228 = v22;
  v238 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v236 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_289();
  v235 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v27 = OUTLINED_FUNCTION_47(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15_8();
  v222 = v28;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_49();
  v230 = v30;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_49();
  v232 = v32;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_49();
  v234 = v34;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v215 - v36;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15_8();
  v223 = v39;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_49();
  v231 = v41;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_49();
  v233 = v43;
  OUTLINED_FUNCTION_47_3();
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v215 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v215 - v48;
  v50 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  v51 = v50[7];
  v239 = a1;
  v240 = a2;
  v52 = *(a2 + v51 + 8);
  if (*(a1 + v51 + 8))
  {
    if (!v52)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(a1 + v51);
    v55 = v55 && v53 == v54;
    if (!v55)
    {
      v56 = v50;
      v57 = sub_19393CA30();
      v50 = v56;
      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v52)
  {
    return 0;
  }

  v58 = v50[8];
  v59 = v239;
  v60 = *(v240 + v58 + 8);
  if (*(v239 + v58 + 8))
  {
    if (!v60)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v239 + v58);
    if (!v55 || v61 != v62)
    {
      v64 = v50;
      v65 = sub_19393CA30();
      v50 = v64;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v60)
  {
    return 0;
  }

  v216 = v7;
  v217 = v11;
  v218 = v4;
  v219 = v14;
  v220 = v50;
  v66 = v50[9];
  v67 = *(v237 + 48);
  sub_1934486F8(v59 + v66, v49, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(v240 + v66, &v49[v67], &qword_1EAE3AA88, &qword_19394F9C0);
  v68 = v238;
  OUTLINED_FUNCTION_6_3(v49, 1, v238);
  if (v55)
  {
    OUTLINED_FUNCTION_3_22(&v49[v67]);
    if (!v55)
    {
      goto LABEL_27;
    }

    sub_19344E6DC(v49, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    sub_1934486F8(v49, v37, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_3_22(&v49[v67]);
    if (v69)
    {
LABEL_26:
      OUTLINED_FUNCTION_29_29();
      v70(v37, v68);
LABEL_27:
      v71 = &qword_1EAE3B4E8;
      v72 = &unk_193952CF0;
      v73 = v49;
LABEL_38:
      sub_19344E6DC(v73, v71, v72);
      return 0;
    }

    v75 = v235;
    v74 = v236;
    OUTLINED_FUNCTION_28_30();
    v76(v75, &v49[v67], v68);
    OUTLINED_FUNCTION_0_99();
    v79 = sub_193777DF0(v77, v78);
    v81 = OUTLINED_FUNCTION_32_32(v37, v75, v80, v79);
    v82 = *(v74 + 8);
    v82(v75, v238);
    v82(v37, v238);
    v68 = v238;
    sub_19344E6DC(v49, &qword_1EAE3AA88, &qword_19394F9C0);
    if ((v81 & 1) == 0)
    {
      return 0;
    }
  }

  v83 = v220[10];
  v84 = *(v237 + 48);
  sub_1934486F8(v59 + v83, v47, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(v240 + v83, &v47[v84], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v47);
  if (v55)
  {
    OUTLINED_FUNCTION_3_22(&v47[v84]);
    if (v55)
    {
      sub_19344E6DC(v47, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_42;
    }

LABEL_37:
    v71 = &qword_1EAE3B4E8;
    v72 = &unk_193952CF0;
    v73 = v47;
    goto LABEL_38;
  }

  v85 = v234;
  sub_1934486F8(v47, v234, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(&v47[v84]);
  if (v86)
  {
    OUTLINED_FUNCTION_29_29();
    v87(v85, v68);
    goto LABEL_37;
  }

  v90 = v235;
  v89 = v236;
  OUTLINED_FUNCTION_28_30();
  v91(v90, &v47[v84], v68);
  OUTLINED_FUNCTION_0_99();
  v94 = sub_193777DF0(v92, v93);
  v96 = OUTLINED_FUNCTION_32_32(v85, v90, v95, v94);
  v97 = *(v89 + 8);
  v97(v90, v68);
  v97(v85, v68);
  sub_19344E6DC(v47, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v98 = v220[11];
  v99 = *(v237 + 48);
  v49 = v233;
  OUTLINED_FUNCTION_15_4(v59 + v98, v233);
  OUTLINED_FUNCTION_15_4(v240 + v98, &v49[v99]);
  OUTLINED_FUNCTION_3_22(v49);
  if (v55)
  {
    OUTLINED_FUNCTION_3_22(&v49[v99]);
    if (v55)
    {
      sub_19344E6DC(v49, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_49;
    }

    goto LABEL_27;
  }

  v37 = v232;
  sub_1934486F8(v49, v232, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(&v49[v99]);
  if (v100)
  {
    goto LABEL_26;
  }

  v102 = v235;
  v101 = v236;
  (*(v236 + 32))(v235, &v49[v99], v68);
  OUTLINED_FUNCTION_0_99();
  v105 = sub_193777DF0(v103, v104);
  v107 = OUTLINED_FUNCTION_32_32(v37, v102, v106, v105);
  v108 = *(v101 + 8);
  v108(v102, v68);
  v108(v37, v68);
  sub_19344E6DC(v49, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v107 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  v109 = v59;
  v110 = *(v237 + 48);
  v111 = v231;
  OUTLINED_FUNCTION_15_4(v109 + v220[12], v231);
  v112 = OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_15_4(v112, v111 + v110);
  OUTLINED_FUNCTION_3_22(v111);
  if (v55)
  {
    OUTLINED_FUNCTION_3_22(v111 + v110);
    if (v55)
    {
      sub_19344E6DC(v111, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_59;
    }

LABEL_57:
    v71 = &qword_1EAE3B4E8;
    v72 = &unk_193952CF0;
LABEL_68:
    v73 = v111;
    goto LABEL_38;
  }

  v113 = v230;
  sub_1934486F8(v111, v230, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_22(v111 + v110);
  if (v114)
  {
    OUTLINED_FUNCTION_29_29();
    v115(v113, v68);
    goto LABEL_57;
  }

  v117 = v235;
  v116 = v236;
  (*(v236 + 32))(v235, v111 + v110, v68);
  OUTLINED_FUNCTION_0_99();
  v120 = sub_193777DF0(v118, v119);
  v122 = OUTLINED_FUNCTION_32_32(v113, v117, v121, v120);
  v123 = *(v116 + 8);
  v123(v117, v68);
  v123(v113, v68);
  sub_19344E6DC(v111, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v122 & 1) == 0)
  {
    return 0;
  }

LABEL_59:
  v111 = v228;
  v124 = *(v227 + 48);
  OUTLINED_FUNCTION_15_4(v239 + v220[13], v228);
  v125 = OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_15_4(v125, v111 + v124);
  v126 = v229;
  OUTLINED_FUNCTION_6_3(v111, 1, v229);
  if (v55)
  {
    OUTLINED_FUNCTION_6_3(v111 + v124, 1, v126);
    if (v55)
    {
      sub_19344E6DC(v111, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v127 = v225;
  sub_1934486F8(v111, v225, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v111 + v124, 1, v126);
  if (v128)
  {
    (*(v226 + 8))(v127, v126);
LABEL_67:
    v71 = &qword_1EAE3B968;
    v72 = &qword_193972430;
    goto LABEL_68;
  }

  v129 = v226;
  v130 = v111 + v124;
  v131 = v224;
  (*(v226 + 32))(v224, v130, v126);
  OUTLINED_FUNCTION_12_48();
  sub_193777DF0(v132, v133);
  v134 = sub_19393C550();
  v135 = *(v129 + 8);
  v135(v131, v126);
  v135(v127, v126);
  sub_19344E6DC(v111, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v134 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  v136 = v220;
  v137 = v220[14];
  v138 = v239;
  v139 = v239 + v137;
  v140 = *(v239 + v137 + 9);
  v141 = (v240 + v137);
  v142 = *(v240 + v137 + 9);
  if (v140)
  {
    if ((v142 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v143 = *v141;
    v144 = *(v141 + 8);
    v145 = *(v139 + 8);
    *&v249 = *v139;
    WORD4(v249) = v145;
    if (v142)
    {
      return 0;
    }

    *&v267 = v143;
    BYTE8(v267) = v144 & 1;
    sub_19375DFB4();
    v146 = sub_19393C550();
    v136 = v220;
    if ((v146 & 1) == 0)
    {
      return 0;
    }
  }

  v147 = v136;
  if ((sub_19375A3C8(*(v138 + v136[15]), *(v240 + v136[15])) & 1) == 0 || (sub_1937778B4(*(v138 + v147[16]), *(v240 + v147[16])) & 1) == 0)
  {
    return 0;
  }

  v148 = v147[17];
  v149 = *(v240 + v148 + 8);
  if (*(v138 + v148 + 8))
  {
    if (!v149)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v138 + v148);
    v152 = v55 && v150 == v151;
    if (!v152 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v149)
  {
    return 0;
  }

  v153 = v220[18];
  v154 = (v239 + v153);
  v155 = *(v239 + v153 + 16);
  v263 = *(v239 + v153);
  v264 = v155;
  v156 = *(v239 + v153 + 48);
  v265 = *(v239 + v153 + 32);
  v266 = v156;
  v157 = (v240 + v153);
  v158 = v157[1];
  v267 = *v157;
  v268 = v158;
  v159 = v157[3];
  v269 = v157[2];
  v270 = v159;
  v262 = v263;
  v160 = v264;
  v161 = *(v154 + 40);
  v259 = *(v154 + 24);
  v260 = v161;
  v261 = *(v154 + 7);
  v258 = v267;
  v162 = v268;
  v163 = *(v157 + 40);
  v255 = *(v157 + 24);
  v256 = v163;
  v257 = *(v157 + 7);
  if (!v264)
  {
    if (!v268)
    {
      v249 = *v154;
      *(v250 + 8) = *(v154 + 24);
      *(&v250[1] + 8) = *(v154 + 40);
      v166 = *(v154 + 7);
      *&v250[0] = 0;
      *(&v250[2] + 1) = v166;
      OUTLINED_FUNCTION_15_4(&v263, &v245);
      OUTLINED_FUNCTION_15_4(&v267, &v245);
      sub_19344E6DC(&v249, &qword_1EAE42550, &qword_193992990);
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_15_4(&v263, &v249);
    OUTLINED_FUNCTION_15_4(&v267, &v249);
    goto LABEL_93;
  }

  v249 = *v154;
  *(v250 + 8) = *(v154 + 24);
  *(&v250[1] + 8) = *(v154 + 40);
  v164 = *(v154 + 7);
  *&v250[0] = v264;
  *(&v250[2] + 1) = v164;
  v245 = v249;
  v246 = v250[0];
  v247 = v250[1];
  v248 = v250[2];
  if (!v268)
  {
    v243 = v249;
    v244[0] = v250[0];
    v244[1] = v250[1];
    v244[2] = v250[2];
    OUTLINED_FUNCTION_15_4(&v263, v242);
    OUTLINED_FUNCTION_15_4(&v267, v242);
    OUTLINED_FUNCTION_15_4(&v249, v242);
    sub_19375DCC0(&v243);
LABEL_93:
    v249 = v262;
    *(v250 + 8) = v259;
    *(&v250[1] + 8) = v260;
    v250[3] = v258;
    v253 = v256;
    *&v250[0] = v160;
    *(&v250[2] + 1) = v261;
    v251 = v162;
    v254 = v257;
    v252 = v255;
    v71 = &unk_1EAE42558;
    v72 = &unk_193992998;
    v73 = &v249;
    goto LABEL_38;
  }

  v243 = *v157;
  *(v244 + 8) = *(v157 + 24);
  *(&v244[1] + 8) = *(v157 + 40);
  *(&v244[2] + 1) = *(v157 + 7);
  *&v244[0] = v268;
  OUTLINED_FUNCTION_26_32(&v263);
  OUTLINED_FUNCTION_26_32(&v267);
  OUTLINED_FUNCTION_26_32(&v249);
  sub_19375DD6C();
  v165 = sub_19393C550();
  v241[0] = v243;
  v241[1] = v244[0];
  v241[2] = v244[1];
  v241[3] = v244[2];
  sub_19375DCC0(v241);
  v242[0] = v245;
  v242[1] = v246;
  v242[2] = v247;
  v242[3] = v248;
  sub_19375DCC0(v242);
  v243 = v262;
  *(v244 + 8) = v259;
  *(&v244[1] + 8) = v260;
  *&v244[0] = v160;
  *(&v244[2] + 1) = v261;
  sub_19344E6DC(&v243, &qword_1EAE42550, &qword_193992990);
  if ((v165 & 1) == 0)
  {
    return 0;
  }

LABEL_95:
  if ((sub_193777A00(*(v239 + v220[19]), *(v240 + v220[19])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_55();
  if (v169)
  {
    if (!v167)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v168);
    v172 = v55 && v170 == v171;
    if (!v172 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v167)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_55();
  if (v175)
  {
    if (!v173)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v174);
    v178 = v55 && v176 == v177;
    if (!v178 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v173)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_55();
  if (v181)
  {
    if (!v179)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v180);
    v184 = v55 && v182 == v183;
    if (!v184 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v179)
  {
    return 0;
  }

  v185 = *(v237 + 48);
  v186 = v223;
  OUTLINED_FUNCTION_15_4(v239 + v220[23], v223);
  v187 = OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_15_4(v187, v186 + v185);
  OUTLINED_FUNCTION_6_3(v186, 1, v238);
  if (v55)
  {
    OUTLINED_FUNCTION_6_3(v223 + v185, 1, v238);
    if (v55)
    {
      sub_19344E6DC(v223, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_133;
    }

    goto LABEL_131;
  }

  v188 = v223;
  sub_1934486F8(v223, v222, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v188 + v185, 1, v238);
  if (v189)
  {
    OUTLINED_FUNCTION_29_29();
    v190(v222, v238);
LABEL_131:
    v71 = &qword_1EAE3B4E8;
    v72 = &unk_193952CF0;
    v73 = v223;
    goto LABEL_38;
  }

  v192 = v235;
  v191 = v236;
  OUTLINED_FUNCTION_28_30();
  v193 = v223;
  v194 = v223 + v185;
  v195 = v238;
  v196(v192, v194, v238);
  OUTLINED_FUNCTION_0_99();
  sub_193777DF0(v197, v198);
  v199 = v222;
  v200 = sub_19393C550();
  v201 = *(v191 + 8);
  v201(v192, v195);
  v201(v199, v195);
  sub_19344E6DC(v193, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v200 & 1) == 0)
  {
    return 0;
  }

LABEL_133:
  v202 = *(v221 + 48);
  v203 = v219;
  OUTLINED_FUNCTION_15_4(v239 + v220[24], v219);
  v204 = OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_15_4(v204, v203 + v202);
  OUTLINED_FUNCTION_6_3(v203, 1, v218);
  if (v55)
  {
    OUTLINED_FUNCTION_6_3(v219 + v202, 1, v218);
    if (v55)
    {
      sub_19344E6DC(v219, &qword_1EAE428D0, &qword_193994B98);
      return 1;
    }

    goto LABEL_141;
  }

  v205 = v219;
  sub_1934486F8(v219, v217, &qword_1EAE428D0, &qword_193994B98);
  OUTLINED_FUNCTION_6_3(v205 + v202, 1, v218);
  if (v206)
  {
    OUTLINED_FUNCTION_13_53();
    sub_193777E38(v217, v207);
LABEL_141:
    v71 = &qword_1EAE428E8;
    v72 = &qword_193994BF8;
    v73 = v219;
    goto LABEL_38;
  }

  v208 = v219;
  v209 = v219 + v202;
  v210 = v216;
  sub_193777B14(v209, v216);
  OUTLINED_FUNCTION_11_49();
  sub_193777DF0(v211, v212);
  v213 = v217;
  v214 = sub_19393C550();
  sub_193777E38(v210, type metadata accessor for AppleIntelligenceReportingSpanContext);
  sub_193777E38(v213, type metadata accessor for AppleIntelligenceReportingSpanContext);
  sub_19344E6DC(v208, &qword_1EAE428D0, &qword_193994B98);
  return (v214 & 1) != 0;
}

uint64_t AppleIntelligenceReportingInvocationStep.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v106 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v98 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE428D0, &qword_193994B98);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v105 = v8;
  v102 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v97 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_289();
  v96 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v101 = v14;
  v15 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v104 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_289();
  v107 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v20 = OUTLINED_FUNCTION_47(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_8();
  v103 = v21;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_49();
  v100 = v23;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_49();
  v99 = v25;
  OUTLINED_FUNCTION_47_3();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v96 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v96 - v30;
  v32 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  if (*(v1 + v32[7] + 8))
  {
    OUTLINED_FUNCTION_16_37();
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (*(v1 + v32[8] + 8))
  {
    OUTLINED_FUNCTION_16_37();
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v33 = v104;
  sub_1934486F8(v1 + v32[9], v31, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v31, 1, v15);
  if (v34)
  {
    OUTLINED_FUNCTION_95_8();
    v35 = v107;
  }

  else
  {
    v35 = v107;
    (*(v33 + 32))();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    v38 = sub_193777DF0(v36, v37);
    OUTLINED_FUNCTION_7_48(v38);
    v39 = OUTLINED_FUNCTION_5_65();
    v40(v39);
  }

  sub_1934486F8(v1 + v32[10], v29, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v29, 1, v15);
  if (v34)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    (*(v33 + 32))(v35, v29, v15);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    v43 = sub_193777DF0(v41, v42);
    OUTLINED_FUNCTION_7_48(v43);
    v44 = OUTLINED_FUNCTION_5_65();
    v45(v44);
  }

  v46 = v102;
  sub_1934486F8(v1 + v32[11], v99, &qword_1EAE3AA88, &qword_19394F9C0);
  v47 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v47, v48, v15);
  if (v34)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v49 = OUTLINED_FUNCTION_9_70();
    v50(v49);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    v53 = sub_193777DF0(v51, v52);
    OUTLINED_FUNCTION_7_48(v53);
    v54 = OUTLINED_FUNCTION_5_65();
    v55(v54);
  }

  sub_1934486F8(v1 + v32[12], v100, &qword_1EAE3AA88, &qword_19394F9C0);
  v56 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v56, v57, v15);
  if (v34)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v58 = OUTLINED_FUNCTION_9_70();
    v59(v58);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    v62 = sub_193777DF0(v60, v61);
    OUTLINED_FUNCTION_7_48(v62);
    v63 = OUTLINED_FUNCTION_5_65();
    v64(v63);
  }

  v65 = v101;
  sub_1934486F8(v2 + v32[13], v101, &qword_1EAE3A9E8, &qword_19394F800);
  v66 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v66, v67, v46);
  if (v34)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v68 = v97;
    OUTLINED_FUNCTION_28_30();
    v69 = v33;
    v70 = v96;
    v71(v96, v65, v46);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_12_48();
    sub_193777DF0(v72, v73);
    sub_19393C540();
    v74 = v70;
    v33 = v69;
    v35 = v107;
    (*(v68 + 8))(v74, v46);
  }

  v75 = v2 + v32[14];
  if (*(v75 + 9) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v76 = *(v75 + 8);
    *&v115[0] = *v75;
    BYTE8(v115[0]) = v76 & 1;
    OUTLINED_FUNCTION_94();
    sub_193777B78();
    sub_19393C540();
  }

  sub_19375D790(a1, *(v2 + v32[15]));
  sub_193777C88(a1, *(v2 + v32[16]));
  OUTLINED_FUNCTION_31_37();
  if (v46)
  {
    OUTLINED_FUNCTION_16_37();
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v77 = (v2 + v32[18]);
  v119 = *v77;
  v78 = *(v77 + 2);
  v79 = *(v77 + 40);
  v116 = *(v77 + 24);
  v117 = v79;
  v118 = *(v77 + 7);
  if (v78)
  {
    v108 = *v77;
    *(v109 + 8) = *(v77 + 24);
    *(&v109[1] + 8) = *(v77 + 40);
    *(&v109[2] + 1) = *(v77 + 7);
    *&v109[0] = v78;
    OUTLINED_FUNCTION_94();
    v110 = v119;
    v111 = v78;
    v112 = v116;
    v113 = v117;
    v114 = v118;
    sub_1937568B8(&v110, v115);
    sub_193777D48();
    sub_19393C540();
    v115[0] = v108;
    v115[1] = v109[0];
    v115[2] = v109[1];
    v115[3] = v109[2];
    sub_19375DCC0(v115);
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_193777BCC(a1, *(v2 + v32[19]));
  OUTLINED_FUNCTION_31_37();
  if (v78)
  {
    OUTLINED_FUNCTION_16_37();
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_31_37();
  if (v78)
  {
    OUTLINED_FUNCTION_16_37();
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_31_37();
  if (v78)
  {
    OUTLINED_FUNCTION_16_37();
    OUTLINED_FUNCTION_94_5();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v80 = v106;
  sub_1934486F8(v2 + v32[23], v103, &qword_1EAE3AA88, &qword_19394F9C0);
  v81 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v81, v82, v15);
  if (v34)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v83 = OUTLINED_FUNCTION_9_70();
    v84(v83);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_99();
    v87 = sub_193777DF0(v85, v86);
    OUTLINED_FUNCTION_7_48(v87);
    (*(v33 + 8))(v35, v15);
  }

  v88 = v105;
  sub_1934486F8(v2 + v32[24], v105, &qword_1EAE428D0, &qword_193994B98);
  v89 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v89, v90, v80);
  if (v34)
  {
    return OUTLINED_FUNCTION_95_8();
  }

  v91 = v98;
  sub_193777B14(v88, v98);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_11_49();
  sub_193777DF0(v92, v93);
  sub_19393C540();
  OUTLINED_FUNCTION_13_53();
  return sub_193777E38(v91, v94);
}

uint64_t sub_1937778B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_19375DEAC();
      v3 = 0;
      do
      {

        v4 = sub_19393C550();

        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 32;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_193777A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 4)
    {
      v5 = v3[1];
      v21[0] = *v3;
      v21[1] = v5;
      v6 = v3[3];
      v22 = v3[2];
      v23 = v6;
      v17 = v21[0];
      v18 = v5;
      v19 = v22;
      v20 = v6;
      v7 = *i;
      v8 = i[1];
      v9 = i[3];
      v25 = i[2];
      v26 = v9;
      v24[0] = v7;
      v24[1] = v8;
      v13 = v7;
      v14 = v8;
      v15 = v25;
      v16 = v9;
      sub_1937568B8(v21, v12);
      sub_1937568B8(v24, v12);
      sub_19375DD6C();
      v10 = sub_19393C550();
      v27[0] = v13;
      v27[1] = v14;
      v27[2] = v15;
      v27[3] = v16;
      sub_19375DCC0(v27);
      v28[0] = v17;
      v28[1] = v18;
      v28[2] = v19;
      v28[3] = v20;
      sub_19375DCC0(v28);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_193777B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_193777B78()
{
  result = qword_1EAE428F0;
  if (!qword_1EAE428F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE428F0);
  }

  return result;
}

uint64_t sub_193777BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v8[0] = *v5;
      v8[1] = v6;
      v7 = v5[3];
      v9 = v5[2];
      v10 = v7;
      v12 = v8[0];
      v13 = v6;
      v14 = v9;
      v15 = v7;
      sub_1937568B8(v8, v11);
      sub_193777D48();
      sub_19393C540();
      v11[0] = v12;
      v11[1] = v13;
      v11[2] = v14;
      v11[3] = v15;
      result = sub_19375DCC0(v11);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193777C88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    sub_193777D9C();
    v5 = a2 + 56;
    do
    {

      sub_19393C540();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_193777D48()
{
  result = qword_1EAE428F8;
  if (!qword_1EAE428F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE428F8);
  }

  return result;
}

unint64_t sub_193777D9C()
{
  result = qword_1EAE42908;
  if (!qword_1EAE42908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42908);
  }

  return result;
}

uint64_t sub_193777DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_193777E38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_193777E90()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAD898);
  __swift_project_value_buffer(v0, &qword_1EAEAD898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_193969E30;
  v4 = v61 + v3;
  v5 = v61 + v3 + v1[14];
  *(v61 + v3) = 1;
  *v5 = "subsystem";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  v9(v5, v6, v7);
  v10 = OUTLINED_FUNCTION_3_1(v4 + v2);
  *v11 = 2;
  *v10 = "stepIdentifier";
  v10[1] = 14;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v4 + 2 * v2);
  *v14 = 3;
  *v13 = "invocationID";
  v13[1] = 12;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_44(3 * v2);
  *v17 = 4;
  *v16 = "clientRequestID";
  v16[1] = 15;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v4 + 4 * v2);
  *v20 = 5;
  *v19 = "modelManagerRequestID";
  v19[1] = 21;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v2);
  *v23 = 6;
  *v22 = "sessionID";
  v22[1] = 9;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v4 + 6 * v2);
  *v26 = 7;
  *v25 = "timestamp";
  v25[1] = 9;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v2);
  *v29 = 8;
  *v28 = "type";
  v28[1] = 4;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v9)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v4 + 8 * v2);
  *v32 = 9;
  *v31 = "errors";
  v31[1] = 6;
  v33 = OUTLINED_FUNCTION_41(v31);
  (v9)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v2);
  *v35 = 10;
  *v34 = "assets";
  v34[1] = 6;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v9)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v4 + 10 * v2);
  *v38 = 11;
  *v37 = "assetBundleID";
  v37[1] = 13;
  v39 = OUTLINED_FUNCTION_41(v37);
  (v9)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v4 + 11 * v2);
  *v41 = 12;
  *v40 = "primaryUseCase";
  v40[1] = 14;
  v42 = OUTLINED_FUNCTION_41(v40);
  (v9)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v4 + 12 * v2);
  *v44 = 13;
  *v43 = "additionalUseCases";
  v43[1] = 18;
  v45 = OUTLINED_FUNCTION_41(v43);
  (v9)(v45);
  v46 = OUTLINED_FUNCTION_3_1(v4 + 13 * v2);
  *v47 = 14;
  *v46 = "requestorBundleID";
  v46[1] = 17;
  v48 = OUTLINED_FUNCTION_41(v46);
  (v9)(v48);
  v49 = OUTLINED_FUNCTION_3_1(v4 + 14 * v2);
  *v50 = 15;
  *v49 = "onBehalfOfBundleID";
  v49[1] = 18;
  v51 = OUTLINED_FUNCTION_41(v49);
  (v9)(v51);
  v52 = OUTLINED_FUNCTION_44(15 * v2);
  *v53 = 16;
  *v52 = "inferenceProviderIdentifier";
  v52[1] = 27;
  v54 = OUTLINED_FUNCTION_41(v52);
  (v9)(v54);
  v55 = OUTLINED_FUNCTION_3_1(v4 + 16 * v2);
  *v56 = 18;
  *v55 = "eventPairID";
  v55[1] = 11;
  v57 = OUTLINED_FUNCTION_41(v55);
  (v9)(v57);
  v58 = OUTLINED_FUNCTION_44(17 * v2);
  *v59 = 19;
  *v58 = "spanContext";
  *(v58 + 8) = 11;
  *(v58 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

void sub_193778348()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  while (1)
  {
    v7 = sub_19393C0E0();
    if (v2 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
      case 2:
      case 11:
      case 14:
      case 15:
      case 16:
        type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
        sub_19393C200();
        goto LABEL_21;
      case 3:
        v9 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 36);
        goto LABEL_16;
      case 4:
        v9 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 40);
        goto LABEL_16;
      case 5:
        v9 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 44);
        goto LABEL_16;
      case 6:
        v9 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 48);
        goto LABEL_16;
      case 7:
        v20 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
        sub_1934976E4(v0 + *(v20 + 52), 2020175477, 0xE400000000000000, v6, v4);
        goto LABEL_21;
      case 8:
        v18 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
        OUTLINED_FUNCTION_160(*(v18 + 56));
        sub_1934982A8();
        goto LABEL_21;
      case 9:
        type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
        type metadata accessor for AppleIntelligenceReportingGeneralError(0);
        v12 = OUTLINED_FUNCTION_42_4();
        v16 = &off_1F07EDD98;
        goto LABEL_20;
      case 10:
        v17 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
        v12 = OUTLINED_FUNCTION_160(*(v17 + 64));
        v14 = &type metadata for AppleIntelligenceReportingAsset;
        v15 = v4;
        v16 = &off_1F07EDE28;
        goto LABEL_20;
      case 12:
        v10 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
        OUTLINED_FUNCTION_160(*(v10 + 72));
        goto LABEL_14;
      case 13:
        v11 = type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
        v12 = OUTLINED_FUNCTION_160(*(v11 + 76));
        v14 = &type metadata for AppleIntelligenceReportingUseCase;
        v15 = v4;
        v16 = &off_1F07EDD38;
LABEL_20:
        sub_193498238(v12, v13, v14, v15, v16);
        goto LABEL_21;
      case 18:
        v9 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep(0) + 92);
LABEL_16:
        v19 = OUTLINED_FUNCTION_160(v9);
        sub_193497890(v19);
        goto LABEL_21;
      case 19:
        type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
        type metadata accessor for AppleIntelligenceReportingSpanContext(0);
        OUTLINED_FUNCTION_42_4();
LABEL_14:
        sub_193498018();
LABEL_21:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1937785E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_5_66();
  sub_1934486F8(v25 + *(v32 + 96), v29, &qword_1EAE428D0, &qword_193994B98);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_19344E6DC(v29, &qword_1EAE428D0, &qword_193994B98);
  }

  else
  {
    sub_193777B14(v29, v20);
    sub_193447600();
    sub_193775BDC(v20);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193778728(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE42910;

  return v1;
}

uint64_t sub_19377876C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE93290 != -1)
  {
    OUTLINED_FUNCTION_6_59(&qword_1EAE93290);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, &qword_1EAEAD898);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t AppleIntelligenceReportingInvocationStep.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t AppleIntelligenceReportingInvocationStep.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t AppleIntelligenceReportingInvocationStep.subsystem.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.stepIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.invocationID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 36));
}

uint64_t AppleIntelligenceReportingInvocationStep.clientRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 40));
}

uint64_t AppleIntelligenceReportingInvocationStep.modelManagerRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 44));
}

uint64_t AppleIntelligenceReportingInvocationStep.sessionID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 48));
}

uint64_t AppleIntelligenceReportingInvocationStep.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 52));
}

uint64_t AppleIntelligenceReportingInvocationStep.type.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AppleIntelligenceReportingInvocationStep(v2);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.errors.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
}

uint64_t AppleIntelligenceReportingInvocationStep.assets.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
}

uint64_t AppleIntelligenceReportingInvocationStep.assetBundleID.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

double sub_193778E70@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.primaryUseCase.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep(v2) + 72));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *v0 = v9[0];
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  return sub_19344865C(v9, &v8, &qword_1EAE42550, &qword_193992990);
}

uint64_t sub_193778EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42550, &qword_193992990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppleIntelligenceReportingInvocationStep.additionalUseCases.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
}

uint64_t AppleIntelligenceReportingInvocationStep.requestorBundleID.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.onBehalfOfBundleID.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.inferenceProviderIdentifier.getter()
{
  type metadata accessor for AppleIntelligenceReportingInvocationStep(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.eventPairID.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 92));
}

uint64_t sub_1937791B8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AppleIntelligenceReportingSpanContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t AppleIntelligenceReportingInvocationStep.spanContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AppleIntelligenceReportingInvocationStep(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE428D0, &qword_193994B98, *(v1 + 96));
}

uint64_t AppleIntelligenceReportingInvocationStep.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceReportingInvocationStep.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1937792E8()
{
  sub_19393CAB0();
  AppleIntelligenceReportingInvocationStep.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_193779328()
{
  result = qword_1EAE42920;
  if (!qword_1EAE42920)
  {
    type metadata accessor for AppleIntelligenceReportingInvocationStep(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42920);
  }

  return result;
}

uint64_t sub_1937793AC()
{
  sub_1937796A8(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      OUTLINED_FUNCTION_0_100(v3, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1937796A8(319, &qword_1ED508298, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          OUTLINED_FUNCTION_0_100(v7, &qword_1ED503ED0, &type metadata for AppleIntelligenceReportingEventType);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_1937796A8(319, &qword_1EAE425A0, type metadata accessor for AppleIntelligenceReportingGeneralError, MEMORY[0x1E69E62F8]);
            OUTLINED_FUNCTION_4_0();
            if (!(!v2 & v1))
            {
              OUTLINED_FUNCTION_4_70(v9, &qword_1ED503EB8, &type metadata for AppleIntelligenceReportingAsset);
              OUTLINED_FUNCTION_4_0();
              if (!(!v2 & v1))
              {
                OUTLINED_FUNCTION_0_100(v10, qword_1ED503ED8, &type metadata for AppleIntelligenceReportingUseCase);
                OUTLINED_FUNCTION_4_0();
                if (!(!v2 & v1))
                {
                  OUTLINED_FUNCTION_4_70(v11, &qword_1ED503EB0, &type metadata for AppleIntelligenceReportingUseCase);
                  OUTLINED_FUNCTION_4_0();
                  if (!(!v2 & v1))
                  {
                    sub_1937796A8(319, &qword_1EAE42928, type metadata accessor for AppleIntelligenceReportingSpanContext, MEMORY[0x1E69E6720]);
                    OUTLINED_FUNCTION_4_0();
                    if (!(!v2 & v1))
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

  return v0;
}

void sub_193779658(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1937796A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_193779728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED512238);
  v4 = __swift_project_value_buffer(v3, qword_1ED512238);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.GeneratedImageFeatures.FailureReason.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_65 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512238);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42930, &qword_193994D70);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.GeneratedImageFeatures.FailureReason.attribute(_:)(void (*a1)(void))
{
  result = sub_193779B38(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193779B80(void (*a1)(void))
{
  result = sub_193779B38(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193779BB0(uint64_t a1)
{
  result = sub_193779BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193779BD8()
{
  result = qword_1EAE42938;
  if (!qword_1EAE42938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42938);
  }

  return result;
}

_BYTE *_s13FailureReasonOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}