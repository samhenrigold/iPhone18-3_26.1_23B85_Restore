uint64_t static StaticService.batteryCharacteristicString(services:)(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v3 + 128);
    v10 = *(v4 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1C3BA30(v8, v6, type metadata accessor for StaticService);
      v19 = *&v6[v9];
      HIBYTE(v18) = 11;
      v20 = StaticCharacteristicsBag.int(for:)((&v18 + 7));
      value = v20.value;
      is_nil = v20.is_nil;
      sub_1D1C3BED8(v6, type metadata accessor for StaticService);
      if (!is_nil)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D177D8E4(0, *(v11 + 2) + 1, 1, v11);
        }

        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          v11 = sub_1D177D8E4((v14 > 1), v15 + 1, 1, v11);
        }

        *(v11 + 2) = v15 + 1;
        *&v11[8 * v15 + 32] = value;
      }

      v8 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1D1C3BD48(v11);

  return v16;
}

uint64_t StaticService.tileCharacteristicStateString.getter()
{
  v2 = 1;
  v1 = 0;
  return StaticService.characteristicStateString(context:temperatureScale:)(&v2, &v1).value._countAndFlagsBits;
}

uint64_t sub_1D1C38A64(char a1)
{
  v3 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v13 = v3;
  v12 = a1;
  v4 = sub_1D1CE4920(&v12);
  result = 0;
  if (v4 != 2)
  {
    v13 = v3;
    v12 = 115;
    sub_1D1CE53A4(&v12);
    v7 = v6;
    result = 0;
    if ((v8 & 1) == 0 && v7 > 0.0)
    {
      if (v4)
      {
        v9 = 0xD000000000000021;
      }

      else
      {
        v9 = 0xD000000000000022;
      }

      if (v4)
      {
        v10 = "startUpCurrentLevel";
      }

      else
      {
        v10 = "oachAngleSupported";
      }

      v11 = static String.hfLocalized(_:)(v9, v10 | 0x8000000000000000);

      return v11;
    }
  }

  return result;
}

uint64_t StaticService.accessoryControlCharacteristicStateString.getter()
{
  v2 = 2;
  v1 = 0;
  return StaticService.characteristicStateString(context:temperatureScale:)(&v2, &v1).value._countAndFlagsBits;
}

uint64_t StaticService.isUpdating.getter()
{
  type metadata accessor for StaticService(0);

  v0 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
  StaticCharacteristicsBag.isUpdating(for:)(v0);
  v2 = v1;

  return v2 & 1;
}

uint64_t sub_1D1C38C04(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v29[-1] - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29[-1] - v10;
  v12 = *a1;
  v13 = type metadata accessor for StaticService(0);
  v14 = v13[34];
  LOBYTE(v29[0]) = v12;
  result = sub_1D1D32844(v1 + v14, v29);
  if (!v16)
  {
    v17 = *(v1 + v13[10]);
    if (v17 != 2 && (v17 & 1) != 0)
    {
      result = 0;
      if (v12 <= 2)
      {
        if (v12 < 2)
        {
          return result;
        }

        v18 = 0x80000001D1EC63C0;
        v19 = 0xD00000000000001ELL;
        return static String.hfLocalized(_:)(v19, v18);
      }

      if (v12 != 3)
      {
        return result;
      }

      v25 = "ngHomeKitUncertified_Lock";
      v19 = 0xD000000000000020;
LABEL_22:
      v18 = v25 | 0x8000000000000000;
      return static String.hfLocalized(_:)(v19, v18);
    }

    if (v12 != 3)
    {
      return 0;
    }

    v20 = v13[13];
    sub_1D1741C08(v1 + v20, v11, &qword_1EC644620, &unk_1D1E75A00);
    v21 = type metadata accessor for StaticDeviceMetadata(0);
    v22 = *(*(v21 - 1) + 48);
    if (v22(v11, 1, v21) != 1)
    {
      v23 = v11[v21[11]];
      sub_1D1C3BED8(v11, type metadata accessor for StaticDeviceMetadata);
      sub_1D1741C08(v1 + v20, v9, &qword_1EC644620, &unk_1D1E75A00);
      if (v22(v9, 1, v21) != 1)
      {
        v26 = v9[v21[12]];
        sub_1D1C3BED8(v9, type metadata accessor for StaticDeviceMetadata);
        if (!(v23 & 1 | ((v26 & 1) == 0)))
        {
          v29[3] = &type metadata for HomeAppFeatures;
          v29[4] = sub_1D19C6154();
          LOBYTE(v29[0]) = 1;
          v27 = sub_1D1E66D5C();
          __swift_destroy_boxed_opaque_existential_1(v29);
          if (v27)
          {
            v25 = "ngHomeKitUncertified";
            v19 = 0xD000000000000039;
            goto LABEL_22;
          }
        }

        goto LABEL_12;
      }

      v11 = v9;
    }

    sub_1D1741A30(v11, &qword_1EC644620, &unk_1D1E75A00);
LABEL_12:
    sub_1D1741C08(v1 + v20, v6, &qword_1EC644620, &unk_1D1E75A00);
    if (v22(v6, 1, v21) == 1)
    {
      sub_1D1741A30(v6, &qword_1EC644620, &unk_1D1E75A00);
    }

    else
    {
      v24 = v6[v21[10]];
      sub_1D1C3BED8(v6, type metadata accessor for StaticDeviceMetadata);
      if ((v24 & 1) == 0)
      {
        v25 = "ionValve_OneRunning";
        v19 = 0xD000000000000034;
        goto LABEL_22;
      }
    }

    return 0;
  }

  return result;
}

BOOL StaticService.hasDetailAttentionMessages.getter()
{
  v3 = 2;
  sub_1D1C38C04(&v3);
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t StaticService.TelevisionInputSource.init(mediaSourceIdentifier:configuredName:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t StaticService.TelevisionInputSource.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  MEMORY[0x1D3892850](*v1);
  sub_1D1E6922C();
  if (v2)
  {
    sub_1D1E678EC();
  }

  return sub_1D1E678EC();
}

uint64_t StaticService.TelevisionInputSource.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E6922C();
  if (v2)
  {
    sub_1D1E678EC();
  }

  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C39110()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  sub_1D1E6922C();
  if (v2)
  {
    sub_1D1E678EC();
  }

  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C391AC(uint64_t a1)
{
  v2 = v1[2];
  MEMORY[0x1D3892850](*v1);
  sub_1D1E6922C();
  if (v2)
  {
    sub_1D1E678EC();
  }

  return sub_1D1E678EC();
}

uint64_t sub_1D1C3923C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2);
  sub_1D1E6922C();
  if (v3)
  {
    sub_1D1E678EC();
  }

  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C392D4()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64CB08);
  __swift_project_value_buffer(v0, qword_1EC64CB08);
  return sub_1D1E6708C();
}

uint64_t static Logger.staticServiceStatus.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6423C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC64CB08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_1D1C39404(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1D178D49C(result, v5, 0);
  }

  return result;
}

uint64_t _s13HomeDataModel13StaticServiceV21TelevisionInputSourceV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (v6)
    {
      v9 = a1[1] == a2[1] && v3 == v6;
      if (v9 || (sub_1D1E6904C() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1D1E6904C();
}

uint64_t sub_1D1C3953C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xD000000000000023;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v6 = "ValueAirQualityGood";
      v5 = 0xD000000000000028;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (a1 == 2)
    {
      v6 = "ValueAirQualityFair";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v6 = "ValueAirQualityInferior";
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      case 4:
        v6 = "ValueAirQualityPoor";
        v5 = 0xD000000000000027;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      case 5:
        v6 = "HFCharacteristicTitleAirQuality";
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  return v4;
}

uint64_t sub_1D1C39610(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7)
{
  if (a7 == 2 || (a7 & 1) == 0)
  {
    if ((a2 & 1) == 0 && (a4 & 1) == 0)
    {
      if (a1 == 100)
      {
        if (a3 == 100)
        {
          v7 = 0xD000000000000022;
          v8 = 0x80000001D1EBA6D0;
          return static String.hfLocalized(_:)(v7, v8);
        }
      }

      else if (!a1 && !a3)
      {
        v7 = 0xD000000000000024;
        v8 = 0x80000001D1EBA6A0;
        return static String.hfLocalized(_:)(v7, v8);
      }

      if (a1 == a3)
      {
        v11 = sub_1D19CB618(1, 0.0, 100.0, a1);
        v13 = v12;
        static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D1E739C0;
        *(v14 + 56) = MEMORY[0x1E69E6158];
        *(v14 + 64) = sub_1D1757D20();
        *(v14 + 32) = v11;
        *(v14 + 40) = v13;
        v15 = sub_1D1E6784C();

        return v15;
      }

      v16 = "ValueDoorStateStopped";
      if (a1 < a3)
      {
        v16 = "ValueDoorStateClosing";
      }

LABEL_26:
      v8 = v16 | 0x8000000000000000;
      v7 = 0xD000000000000025;
      return static String.hfLocalized(_:)(v7, v8);
    }

    if (a6)
    {
      return 0;
    }

    if (a5 == 2)
    {
      v10 = "HFCharacteristicValueDoorStateStopped";
    }

    else if (a5 == 1)
    {
      v10 = "HFCharacteristicValueDoorStateOpening";
    }

    else
    {
      if (a5)
      {
        return 0;
      }

      v10 = "HFCharacteristicValueDoorStateClosing";
    }

    v16 = (v10 - 32);
    goto LABEL_26;
  }

  v7 = 0xD000000000000031;
  v8 = 0x80000001D1EC6D40;
  return static String.hfLocalized(_:)(v7, v8);
}

uint64_t sub_1D1C397FC(char a1, uint64_t a2, char a3)
{
  if (a1 == 2)
  {
    return 0;
  }

  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v6 = 0xD000000000000021;
  }

  else
  {
    v6 = 0xD000000000000022;
  }

  if (v4)
  {
    v7 = "oachAngleSupported";
  }

  else
  {
    v7 = "startUpCurrentLevel";
  }

  if ((a1 & 1) != 0 && (a3 & 1) == 0)
  {
    if (*&a2 > 0.0)
    {
      return sub_1D19CB618(1, 0.0, 100.0, *&a2);
    }

    v6 = 0xD000000000000021;
    v7 = "startUpCurrentLevel";
  }

  v8 = static String.hfLocalized(_:)(v6, v7 | 0x8000000000000000);

  return v8;
}

uint64_t sub_1D1C398C4(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  if (a5 == 2 || (a5 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a3 == 1)
      {
        v7 = a2 | (a1 != 1);
        v8 = "ValueDoorStateOpening";
        v9 = "ValueDoorStateStopped";
        v10 = 0xD000000000000024;
        goto LABEL_10;
      }

      if (!a3)
      {
        v7 = a2 | (a1 != 0);
        v8 = "ValueDoorStateClosed";
        v9 = "ValueDoorStateClosing";
        v10 = 0xD000000000000022;
LABEL_10:
        v12 = (v7 & 1) == 0;
        if (v7)
        {
          v5 = v9;
        }

        else
        {
          v5 = v8;
        }

        if (v12)
        {
          v6 = v10;
        }

        else
        {
          v6 = 0xD000000000000025;
        }

        return static String.hfLocalized(_:)(v6, v5 | 0x8000000000000000);
      }
    }

    return 0;
  }

  v5 = "HMServiceTypeDoor";
  v6 = 0xD000000000000031;
  return static String.hfLocalized(_:)(v6, v5 | 0x8000000000000000);
}

uint64_t sub_1D1C3999C(uint64_t a1, char a2, double a3)
{
  v20 = 0;
  v5 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v20, a3);
  v7 = v6;
  if ((a2 & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900), inited = swift_initStackObject(), *(inited + 16) = xmmword_1D1E739C0, *(inited + 32) = a1, v9 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(inited, 1), v11 = v10, swift_setDeallocating(), !v11))
  {
    static String.hfLocalized(_:)(0xD000000000000024, 0x80000001D1EC7750);
    v12 = sub_1D1E677EC();

    sub_1D1C3BE8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D1E739C0;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D1757D20();
    *(v16 + 32) = v5;
    *(v16 + 40) = v7;
  }

  else
  {
    static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC6400);
    v12 = sub_1D1E677EC();

    sub_1D1C3BE8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E73A90;
    v14 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D1757D20();
    *(v13 + 32) = v5;
    *(v13 + 40) = v7;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = v9;
    *(v13 + 80) = v11;
  }

  v17 = sub_1D1E6853C();
  v18 = sub_1D1E6781C();

  return v18;
}

uint64_t sub_1D1C39B94(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  if (a1 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    v15 = 0xD000000000000022;
    v16 = 0x80000001D1EC1E60;
    return static String.hfLocalized(_:)(v15, v16);
  }

  if (a3 & 1) != 0 || (a5)
  {
    goto LABEL_33;
  }

  if (a2 == 3)
  {
    if (a4 == 2 || a4 == 1)
    {
      if ((a9 & 1) == 0)
      {
        v10 = sub_1D19CB618(1, 0.0, 100.0, *&a8);
        v12 = v32;
        v13 = "tionHumidifierAutoWithHumidity";
        v14 = 0xD000000000000034;
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    goto LABEL_15;
  }

  if (a2 == 2)
  {
    if (a4 == 2 || a4 == 1)
    {
      if ((a7 & 1) == 0)
      {
        v10 = sub_1D19CB618(1, 0.0, 100.0, *&a6);
        v12 = v11;
        v13 = "humidifyWithHumidity";
        v14 = 0xD000000000000032;
LABEL_28:
        static String.hfLocalized(_:)(v14, v13 | 0x8000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1D1E739C0;
        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = sub_1D1757D20();
        *(v33 + 32) = v10;
        *(v33 + 40) = v12;
        v34 = sub_1D1E6783C();

        return v34;
      }

      goto LABEL_33;
    }

LABEL_15:
    if (!a4 && (a7 & 1) == 0 && (a9 & 1) == 0)
    {
      v17 = *&a6;
      v18 = *&a8;
LABEL_25:
      static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EC7160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D1E73A90;
      v24 = sub_1D19CB618(1, 0.0, 100.0, v17);
      v26 = v25;
      v27 = MEMORY[0x1E69E6158];
      *(v23 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1D1757D20();
      *(v23 + 64) = v28;
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      v29 = sub_1D19CB618(1, 0.0, 100.0, v18);
      *(v23 + 96) = v27;
      *(v23 + 104) = v28;
      *(v23 + 72) = v29;
      *(v23 + 80) = v30;
      v31 = sub_1D1E6783C();

      return v31;
    }

    goto LABEL_33;
  }

  static String.hfLocalized(_:)(0xD00000000000002ELL, 0x80000001D1EC75A0);
  switch(a4)
  {
    case 2:
      if (a9)
      {
        goto LABEL_32;
      }

      v35 = a8;
      break;
    case 1:
      if (a7)
      {
        goto LABEL_32;
      }

      v35 = a6;
      break;
    case 0:

      if ((a7 & 1) == 0 && (a9 & 1) == 0)
      {
        v17 = *&a6;
        v18 = *&a8;
        goto LABEL_25;
      }

LABEL_33:
      v16 = 0x80000001D1EC1F50;
      v15 = 0xD000000000000021;
      return static String.hfLocalized(_:)(v15, v16);
    default:
LABEL_32:

      goto LABEL_33;
  }

  v36 = sub_1D19CB618(1, 0.0, 100.0, *&v35);
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D1E739C0;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1D1757D20();
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v40 = sub_1D1E6783C();

  return v40;
}

uint64_t sub_1D1C39F74(uint64_t result, char a2)
{
  if (a2)
  {
    *&result = 0.0;
    return result;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&result < 9.22337204e18)
  {
    v2 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](37, 0xE100000000000000);
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D1C3A024(char a1, char a2, uint64_t a3, char a4)
{
  if (a1 == 2)
  {
    return 0;
  }

  v5 = 0xD000000000000030;
  v6 = "ystem, State:Scheduled";
  if (a4 & 1 | ((a2 & 1) == 0) | (a3 == 0))
  {
    v7 = "midifyWithHumidity";
  }

  else
  {
    v7 = "ystem, State:Off";
  }

  if (!(a4 & 1 | ((a2 & 1) == 0) | (a3 == 0)))
  {
    v5 = 0xD000000000000036;
  }

  if (a1)
  {
    v8 = 0xD00000000000003ALL;
  }

  else
  {
    v6 = v7;
    v8 = v5;
  }

  return static String.hfLocalized(_:)(v8, v6 | 0x8000000000000000);
}

uint64_t sub_1D1C3A0BC(char a1, uint64_t a2, char a3)
{
  if (a1 == 2)
  {
    return 0;
  }

  v5 = 0xD000000000000021;
  if (a1)
  {
    v6 = "startUpCurrentLevel";
    if ((a3 & 1) == 0 && a2 >= 1)
    {
      return sub_1D19CB618(1, 0.0, 100.0, a2);
    }
  }

  else
  {
    v6 = "oachAngleSupported";
    v5 = 0xD000000000000022;
  }

  v7 = static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);

  return v7;
}

uint64_t sub_1D1C3A170(uint64_t result, char a2)
{
  if (a2)
  {
    *&result = 0.0;
    return result;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&result < 9.22337204e18)
  {
    v5 = sub_1D1E68FAC();

    MEMORY[0x1D3890F70](32, 0xE100000000000000);

    v2 = static String.hfLocalized(_:)(0xD00000000000003CLL, 0x80000001D1EC7710);
    v4 = v3;

    MEMORY[0x1D3890F70](v2, v4);

    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D1C3A290(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0xD00000000000002ELL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v9 = "ValueLockMechanismStateUnknown";
      v7 = 0xD00000000000002DLL;
      return static String.hfLocalized(_:)(v7, v9 | 0x8000000000000000);
    }

    if (a1 == 3)
    {
      v8 = "HFCharacteristicValueLockMechanismStateUnknown";
      goto LABEL_13;
    }
  }

  else
  {
    if (!a1)
    {
      if (a4)
      {
        return 0;
      }

      if (a3)
      {
        if (a3 == 1)
        {
          v8 = "HFCharacteristicValueLockMechanismStateLocking";
          goto LABEL_13;
        }

        return 0;
      }

      v10 = "HFCharacteristicValueLockMechanismStateUnsecured";
LABEL_21:
      v9 = (v10 - 32);
      v7 = 0xD000000000000030;
      return static String.hfLocalized(_:)(v7, v9 | 0x8000000000000000);
    }

    if (a1 == 1)
    {
      if (a4)
      {
        return 0;
      }

      if (a3)
      {
        if (a3 == 1)
        {
          v8 = "HFCharacteristicValueLockMechanismStateSecured";
LABEL_13:
          v9 = (v8 - 32);
          return static String.hfLocalized(_:)(v7, v9 | 0x8000000000000000);
        }

        return 0;
      }

      v10 = "HFCharacteristicValueLockMechanismStateUnlocking";
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_1D1C3A37C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xD000000000000036;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = "HFCharacteristicValueCurrentSecuritySystemStateNightArm";
    }

    else
    {
      if (a1 != 3)
      {
        return v4;
      }

      v7 = "HFCharacteristicValueCurrentSecuritySystemStateDisarmed";
    }

    v6 = (v7 - 32);
    v5 = 0xD000000000000037;
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  if (!a1)
  {
    v6 = "ritySystemStateAwayArm";
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  if (a1 == 1)
  {
    v6 = "ritySystemStateNightArm";
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  return v4;
}

uint64_t sub_1D1C3A42C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 & 1) != 0 || (a4)
  {
    return 0;
  }

  if (a1 == 4)
  {
    v5 = "smStateUnsecured";
    v6 = 0xD000000000000038;
  }

  else
  {
    result = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v10 = a1 == 2;
        if (a1 == 2)
        {
          v5 = "ritySystemStateDisarmed";
        }

        else
        {
          v5 = "ritySystemStateDisarming";
        }

        v11 = 0xD000000000000035;
      }

      else
      {
        if (a3 != 3)
        {
          return result;
        }

        v10 = a1 == 3;
        if (a1 == 3)
        {
          v5 = "ritySystemStateTriggered";
        }

        else
        {
          v5 = "StateGroupedTitleStatusFault";
        }

        v11 = 0xD000000000000038;
      }

      if (v10)
      {
        v6 = 0xD000000000000037;
      }

      else
      {
        v6 = v11;
      }
    }

    else
    {
      if (a3)
      {
        if (a3 != 1)
        {
          return result;
        }

        v8 = "ritySystemStateNightArm";
        v9 = a1 == 1;
      }

      else
      {
        v8 = "ritySystemStateAwayArm";
        v9 = a1 == 0;
      }

      if (v9)
      {
        v5 = v8;
      }

      else
      {
        v5 = "ritySystemStateDisarming";
      }

      if (v9)
      {
        v6 = 0xD000000000000036;
      }

      else
      {
        v6 = 0xD000000000000035;
      }
    }
  }

  return static String.hfLocalized(_:)(v6, v5 | 0x8000000000000000);
}

char *sub_1D1C3A56C(uint64_t a1)
{
  v2 = type metadata accessor for StaticCharacteristic(0);
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = &v7[v4[12]];
  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v5 + 72);
  v12 = MEMORY[0x1E69E7CC0];
  v32 = v11;
  v33 = v9;
  do
  {
    sub_1D1C3BA30(v10, v7, type metadata accessor for StaticService);
    if (v9[8])
    {
      sub_1D1C3BED8(v7, type metadata accessor for StaticService);
    }

    else
    {
      v35 = *v9;
      v13 = *&v7[v4[32]];
      if (*(v13 + 16) && (v14 = sub_1D171D140(27), (v15 & 1) != 0))
      {
        v16 = v31;
        sub_1D1C3BA30(*(v13 + 56) + *(v29 + 72) * v14, v31, type metadata accessor for StaticCharacteristic);
        v17 = v16 + *(v30 + 24);
        if (*(v17 + 16) == 8)
        {
          v18 = *(v16 + *(v30 + 24) + 8);
          v34 = *v17;
        }

        else
        {
          v34 = 0;
          v18 = 0;
        }

        sub_1D1C3BED8(v31, type metadata accessor for StaticCharacteristic);
      }

      else
      {
        v34 = 0;
        v18 = 0;
      }

      v19 = v4;
      v20 = &v7[v4[5]];
      v21 = *v20;
      v22 = *(v20 + 1);

      sub_1D1C3BED8(v7, type metadata accessor for StaticService);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D177D0D4(0, *(v12 + 2) + 1, 1, v12);
      }

      v24 = *(v12 + 2);
      v23 = *(v12 + 3);
      if (v24 >= v23 >> 1)
      {
        v12 = sub_1D177D0D4((v23 > 1), v24 + 1, 1, v12);
      }

      *(v12 + 2) = v24 + 1;
      v25 = &v12[40 * v24];
      v26 = v34;
      *(v25 + 4) = v35;
      *(v25 + 5) = v26;
      *(v25 + 6) = v18;
      *(v25 + 7) = v21;
      *(v25 + 8) = v22;
      v4 = v19;
      v11 = v32;
      v9 = v33;
    }

    v10 += v11;
    --v8;
  }

  while (v8);
  return v12;
}

uint64_t sub_1D1C3A89C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1)
  {
    if ((a3 & 1) == 0 && a4)
    {
      v6 = *(a4 + 16);
      v5 = a4 + 16;
      v7 = v6 + 1;
      while (--v7)
      {
        v8 = (v5 + 40);
        v9 = *(v5 + 16);
        v5 += 40;
        if (v9 == a2)
        {
          if (*(v8 - 1))
          {
            v10 = *(v8 - 2);
          }

          else
          {
            v10 = *v8;
          }

          return v10;
        }
      }
    }

    v12 = 0x80000001D1EC1F50;
    v11 = 0xD000000000000021;
  }

  else
  {
    v11 = 0xD000000000000022;
    v12 = 0x80000001D1EC1E60;
  }

  return static String.hfLocalized(_:)(v11, v12);
}

uint64_t _s13HomeDataModel13StaticServiceV11valveString6active5inUseSSSgSbSg_AHtFZ_0(char a1, char a2)
{
  if (a1 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (a2 != 2)
    {
      v3 = "rolHeaderCurrentTemp";
      if (a2)
      {
        v3 = "HFStatusDescriptionValve_OneOff";
        v4 = 0xD000000000000024;
      }

      else
      {
        v4 = 0xD00000000000001FLL;
      }

      return static String.hfLocalized(_:)(v4, v3 | 0x8000000000000000);
    }

    return 0;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = "ionValve_OneStopping";
  if (a2)
  {
    v3 = "ionValve_OneStarting";
    v4 = 0xD000000000000023;
  }

  else
  {
    v4 = 0xD000000000000024;
  }

  return static String.hfLocalized(_:)(v4, v3 | 0x8000000000000000);
}

uint64_t sub_1D1C3AA1C(char a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if (a6 != 2 && (a6 & 1) != 0)
  {
    v6 = 0xD000000000000031;
    v7 = 0x80000001D1EC6D40;
    return static String.hfLocalized(_:)(v6, v7);
  }

  if (a3)
  {
    if (a5)
    {
      return 0;
    }

    if (a4 == 2)
    {
      v9 = "HFCharacteristicValueDoorStateStopped";
    }

    else if (a4 == 1)
    {
      v9 = "HFCharacteristicValueDoorStateOpening";
    }

    else
    {
      if (a4)
      {
        return 0;
      }

      v9 = "HFCharacteristicValueDoorStateClosing";
    }

    v7 = (v9 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000025;
    return static String.hfLocalized(_:)(v6, v7);
  }

  if (a2 == 100)
  {
    v6 = 0xD000000000000022;
    v7 = 0x80000001D1EBA6D0;
    return static String.hfLocalized(_:)(v6, v7);
  }

  if (!a2)
  {
    v6 = 0xD000000000000024;
    v7 = 0x80000001D1EBA6A0;
    return static String.hfLocalized(_:)(v6, v7);
  }

  result = sub_1D19CB618(1, 0.0, 100.0, a2);
  if (a1)
  {
    v12 = result;
    v13 = v11;
    static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D1E739C0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D1757D20();
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    v15 = sub_1D1E6784C();

    return v15;
  }

  return result;
}

uint64_t _s13HomeDataModel13StaticServiceV15lightBulbString0fG6ValuesSSSgSaySbSg10powerState_SiSg10brightnesstG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v2 - 16);
      if (v7 != 2)
      {
        v8 = *(v2 - 1);
        v9 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D41C(0, *(v3 + 16) + 1, 1);
        }

        v5 = *(v3 + 16);
        v4 = *(v3 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_1D178D41C((v4 > 1), v5 + 1, 1);
        }

        *(v3 + 16) = v5 + 1;
        v6 = v3 + 24 * v5;
        *(v6 + 32) = v7;
        *(v6 + 40) = v8;
        *(v6 + 48) = v9;
      }

      v2 += 24;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = 32;
    v12 = *(v3 + 16);
    do
    {
      v13 = *(v3 + v11);
      if (v13 != 2 && (v13 & 1) != 0)
      {
        v14 = 1;
        goto LABEL_18;
      }

      v11 += 24;
      --v12;
    }

    while (v12);
    v14 = 0;
LABEL_18:
    v15 = (v3 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((*(v15 - 16) & 1) != 0 && (*v15 & 1) == 0)
      {
        v17 = *(v15 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D8E4(0, *(v16 + 2) + 1, 1, v16);
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        if (v19 >= v18 >> 1)
        {
          v16 = sub_1D177D8E4((v18 > 1), v19 + 1, 1, v16);
        }

        *(v16 + 2) = v19 + 1;
        *&v16[8 * v19 + 32] = v17;
      }

      v15 += 24;
      --v10;
    }

    while (v10);
    v20 = 0xD000000000000021;

    v21 = sub_1D1745B10(v16);
    v23 = v22;

    if (v14)
    {
      v24 = "startUpCurrentLevel";
      if ((v23 & 1) == 0 && v21 >= 1)
      {
        return sub_1D19CB618(1, 0.0, 100.0, v21);
      }
    }

    else
    {
      v24 = "oachAngleSupported";
      v20 = 0xD000000000000022;
    }

    v26 = static String.hfLocalized(_:)(v20, v24 | 0x8000000000000000);

    return v26;
  }

  else
  {

    return 0;
  }
}

uint64_t _s13HomeDataModel13StaticServiceV12switchString16powerStateValuesSSSgSaySbG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0xD000000000000021;
  v4 = (a1 + 32);
  v5 = "oachAngleSupported";
  while (v1)
  {
    v6 = *v4++;
    --v1;
    if (v6 == 1)
    {
      v5 = "startUpCurrentLevel";
      return static String.hfLocalized(_:)(v3, v5 | 0x8000000000000000);
    }
  }

  v3 = 0xD000000000000022;
  return static String.hfLocalized(_:)(v3, v5 | 0x8000000000000000);
}

uint64_t _s13HomeDataModel13StaticServiceV35fanOrAirPurifierRotationSpeedString0F6ValuesSSSgSaySbSg10powerState_SdSg08rotationK0tG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v2 - 16);
      if (v7 != 2)
      {
        v8 = *(v2 - 1);
        v9 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D44C(0, *(v3 + 16) + 1, 1);
        }

        v5 = *(v3 + 16);
        v4 = *(v3 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_1D178D44C((v4 > 1), v5 + 1, 1);
        }

        *(v3 + 16) = v5 + 1;
        v6 = v3 + 24 * v5;
        *(v6 + 32) = v7;
        *(v6 + 40) = v8;
        *(v6 + 48) = v9;
      }

      v2 += 24;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = 32;
    v12 = *(v3 + 16);
    do
    {
      v13 = *(v3 + v11);
      if (v13 != 2 && (v13 & 1) != 0)
      {
        v14 = 1;
        goto LABEL_18;
      }

      v11 += 24;
      --v12;
    }

    while (v12);
    v14 = 0;
LABEL_18:
    v15 = (v3 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((*(v15 - 16) & 1) != 0 && (*v15 & 1) == 0)
      {
        v17 = *(v15 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D4E8(0, *(v16 + 2) + 1, 1, v16);
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        if (v19 >= v18 >> 1)
        {
          v16 = sub_1D177D4E8((v18 > 1), v19 + 1, 1, v16);
        }

        *(v16 + 2) = v19 + 1;
        *&v16[8 * v19 + 32] = v17;
      }

      v15 += 24;
      --v10;
    }

    while (v10);
    v20 = 0xD000000000000021;

    v21 = COERCE_DOUBLE(sub_1D1745ACC(v16));
    v23 = v22;

    if (v14)
    {
      v24 = "startUpCurrentLevel";
      if ((v23 & 1) == 0 && v21 > 0.0)
      {
        return sub_1D19CB618(1, 0.0, 100.0, v21);
      }
    }

    else
    {
      v24 = "oachAngleSupported";
      v20 = 0xD000000000000022;
    }

    v26 = static String.hfLocalized(_:)(v20, v24 | 0x8000000000000000);

    return v26;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1D1C3B158()
{
  result = qword_1EC64CB20;
  if (!qword_1EC64CB20)
  {
    sub_1D1E6634C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB20);
  }

  return result;
}

uint64_t _s13HomeDataModel13StaticServiceV27motorizedDoorOrWindowString04doorhI6ValuesSSSgSaySiSg15currentPosition_AG06targetN0So021HMCharacteristicValueN5StateVSg08positionR0SbSg19obstructionDetectedtG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 73);
  v10 = 1;
  do
  {
    v17 = *v9;
    v14 = v17 == 2;
    v18 = v17 | v2;
    if (!v14)
    {
      v2 = v18;
    }

    if ((*(v9 - 33) | *(v9 - 17)))
    {
      v11 = *(v9 - 9);
      if (v11 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v3;
      }

      if (v11 == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = v8;
      }

      if (v11 == 2)
      {
        v12 = v3;
      }

      v14 = v11 == 0;
      if (v11)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }

      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v4;
      }

      if (v14)
      {
        v12 = v3;
      }

      if ((*(v9 - 1) & 1) == 0)
      {
        v8 = v15;
        v4 = v16;
        v3 = v12;
      }
    }

    else
    {
      v19 = *(v9 - 41);
      v20 = *(v9 - 25);
      if (v19 == 100)
      {
        if (v20 == 100)
        {
          v6 = 1;
          goto LABEL_21;
        }
      }

      else if (!v19 && !v20)
      {
        v7 = 1;
        goto LABEL_21;
      }

      if (v19 == v20)
      {
        if (v10)
        {
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (v5 < v19)
        {
LABEL_34:
          v10 = 0;
          v5 = *(v9 - 41);
          goto LABEL_21;
        }
      }

      if (v19 < v20)
      {
        v3 = 1;
      }

      else
      {
        v4 |= v20 < v19;
      }
    }

LABEL_21:
    v9 += 48;
    --v1;
  }

  while (v1);
  if (v2)
  {
    v21 = "HMServiceTypeDoor";
    v22 = 0xD000000000000031;
    goto LABEL_44;
  }

  if (v6)
  {
    v21 = "ValueDoorStateClosed";
    v22 = 0xD000000000000022;
    goto LABEL_44;
  }

  if (v10)
  {
    if (v3)
    {
      v25 = "HFCharacteristicValueDoorStateOpening";
      goto LABEL_52;
    }

    if (v4)
    {
      v25 = "HFCharacteristicValueDoorStateClosing";
      goto LABEL_52;
    }

    if (v7)
    {
      v21 = "ValueDoorStateOpening";
      v22 = 0xD000000000000024;
LABEL_44:
      v24 = v21 | 0x8000000000000000;
      return static String.hfLocalized(_:)(v22, v24);
    }

    if (v8)
    {
      v25 = "HFCharacteristicValueDoorStateStopped";
LABEL_52:
      v24 = (v25 - 32) | 0x8000000000000000;
      v22 = 0xD000000000000025;
      return static String.hfLocalized(_:)(v22, v24);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v26 = v5;
    static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D1E739C0;
    v28 = sub_1D19CB618(1, 0.0, 100.0, v26);
    v30 = v29;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D1757D20();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v31 = sub_1D1E6784C();

    return v31;
  }
}

uint64_t _s13HomeDataModel13StaticServiceV20airParticulateString0fG5SizesSSSgSaySo024HMCharacteristicValueAirG4SizeVG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = v1;
  v4 = (a1 + 32);
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = *v4++;
    --v3;
  }

  while (v6);
  while (v1)
  {
    v7 = *v2++;
    --v1;
    if (v7 == 1)
    {
      v8 = "HDMStatusTitlePm10Micrometers";
      if (v5)
      {
        v9 = 0xD000000000000022;
      }

      else
      {
        v8 = "HDMAnswerPartsPerMillionUnit";
        v9 = 0xD00000000000001DLL;
      }

      return static String.hfLocalized(_:)(v9, v8 | 0x8000000000000000);
    }
  }

  if (v5)
  {
    v8 = "2_5To10Micrometers";
    v9 = 0xD00000000000001ELL;
    return static String.hfLocalized(_:)(v9, v8 | 0x8000000000000000);
  }

  return 0;
}

uint64_t sub_1D1C3B520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C3B588(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return v2;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    v4 = *(result + 32);
    if ((a2 & 1) == 0)
    {
      return sub_1D1E680FC();
    }

    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return sub_1D1E68FAC();
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v6 = *(result + 32);
  v7 = 40;
  do
  {
    if (*(result + v7) < v6)
    {
      v6 = *(result + v7);
    }

    v7 += 8;
    --v3;
  }

  while (v3);
  result = sub_1D1745ACC(result);
  if (v8)
  {
    return 0;
  }

  v9 = *&result;
  if ((a2 & 1) == 0)
  {
    v2 = sub_1D1E680FC();
    v12 = v15;
    v13 = sub_1D1E680FC();
    goto LABEL_25;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = result;
  result = sub_1D1E68FAC();
  if ((~v10 & 0x7FF0000000000000) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v9 < 9.22337204e18)
  {
    v12 = v11;
    v2 = result;
    v13 = sub_1D1E68FAC();
LABEL_25:
    v16 = v13;
    v17 = v14;
    v18 = v2 == v13 && v12 == v14;
    if (!v18 && (sub_1D1E6904C() & 1) == 0)
    {
      static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D1E73A90;
      v20 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v21 = sub_1D1757D20();
      *(v19 + 32) = v2;
      *(v19 + 40) = v12;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = v16;
      *(v19 + 80) = v17;
      v2 = sub_1D1E6784C();
    }

    return v2;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D1C3B860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = v3 - 1;
  if (v7)
  {
    v8 = (a1 + 40);
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (v6 < v9)
      {
        v6 = v10;
      }

      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v6;
  v12 = sub_1D1C3B588(inited, 1);
  v14 = v13;
  swift_setDeallocating();
  if (!v14)
  {
    return 0;
  }

  static String.hfLocalized(_:)(0xD00000000000001CLL, 0x80000001D1EC73F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D1E739C0;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D1757D20();
  *(v15 + 64) = v17;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v18 = sub_1D1E6784C();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D1E739C0;
  *(v21 + 56) = v16;
  *(v21 + 64) = v17;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  static String.hfLocalized(_:)(a2, a3);
  v22 = sub_1D1E6784C();

  return v22;
}

uint64_t sub_1D1C3BA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C3BA98(uint64_t a1, char a2)
{
  result = *(a1 + 16);
  if (!result)
  {
    return result;
  }

  v4 = result - 1;
  if (result == 1)
  {
    v5 = *(a1 + 32);
    if ((a2 & 1) == 0)
    {
      return sub_1D1E68FAC();
    }

    v6 = v5;
    return sub_1D19CB618(1, 0.0, 100.0, v6);
  }

  v7 = *(a1 + 32);
  if (v4 >= 4)
  {
    v9 = v4 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v10 = vdupq_n_s64(v7);
    v11 = (a1 + 56);
    v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = v10;
    do
    {
      v10 = vbslq_s8(vcgtq_s64(v10, v11[-1]), v11[-1], v10);
      v13 = vbslq_s8(vcgtq_s64(v13, *v11), *v11, v13);
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    v8 = a2;
    v14 = vbslq_s8(vcgtq_s64(v13, v10), v10, v13);
    v15 = vextq_s8(v14, v14, 8uLL).u64[0];
    v7 = vbsl_s8(vcgtd_s64(v15, v14.i64[0]), *v14.i8, v15);
    if (v4 == (v4 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = a2;
    v9 = 1;
  }

  v16 = result - v9;
  v17 = (a1 + 8 * v9 + 32);
  do
  {
    v19 = *v17++;
    v18 = v19;
    if (v19 < v7)
    {
      v7 = v18;
    }

    --v16;
  }

  while (v16);
LABEL_16:
  sub_1D1745B10(a1);
  if (v20)
  {
    return 0;
  }

  v21 = sub_1D1E68FAC();
  v23 = v22;
  v24 = sub_1D1E68FAC();
  v26 = v25;
  v27 = v21 == v24 && v23 == v25;
  if (v27 || (v28 = v24, (sub_1D1E6904C() & 1) != 0))
  {

    if (v8)
    {

      v6 = v7;
      return sub_1D19CB618(1, 0.0, 100.0, v6);
    }

    return v21;
  }

  else
  {
    if (v8)
    {
      v29 = 0xD000000000000025;
      v30 = 0x80000001D1EBA410;
    }

    else
    {
      v30 = 0x80000001D1EBA3F0;
      v29 = 0xD00000000000001BLL;
    }

    static String.hfLocalized(_:)(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D1E73A90;
    v32 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1D1757D20();
    *(v31 + 32) = v21;
    *(v31 + 40) = v23;
    *(v31 + 96) = v32;
    *(v31 + 104) = v33;
    *(v31 + 64) = v33;
    *(v31 + 72) = v28;
    *(v31 + 80) = v26;
    v34 = sub_1D1E6784C();

    return v34;
  }
}

uint64_t sub_1D1C3BD48(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    return sub_1D19CB618(1, 0.0, 100.0, *(a1 + 32));
  }

  else
  {
    return sub_1D1C3BA98(a1, 1);
  }
}

unint64_t sub_1D1C3BD98()
{
  result = qword_1EC64CB48;
  if (!qword_1EC64CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB48);
  }

  return result;
}

uint64_t sub_1D1C3BDEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1C3BE34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D1C3BE8C()
{
  result = qword_1EC645BA8;
  if (!qword_1EC645BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC645BA8);
  }

  return result;
}

uint64_t sub_1D1C3BED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticService.set(_:for:options:context:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, _OWORD *a5)
{
  *(v6 + 128) = a1;
  *(v6 + 136) = a2;
  *(v6 + 208) = *a3;
  v7 = *a4;
  *(v6 + 144) = v5;
  *(v6 + 152) = v7;
  v8 = a5[1];
  *(v6 + 160) = *a5;
  *(v6 + 176) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1D1C3BF70, 0, 0);
}

uint64_t sub_1D1C3BF70()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  sub_1D1741970(v3, inited + 40);
  v5 = sub_1D18DAC64(inited);
  *(v0 + 192) = v5;
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
  *(v0 + 120) = v1;
  *(v0 + 104) = v9;
  *(v0 + 88) = v10;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1D1C3C0C0;
  v7 = *(v0 + 128);

  return StaticService.set(for:options:context:)(v7, v5, (v0 + 120), (v0 + 88));
}

uint64_t sub_1D1C3C0C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t StaticService.toggle(options:context:)(uint64_t a1, void *a2, _OWORD *a3)
{
  *(v4 + 792) = v3;
  *(v4 + 784) = a1;
  *(v4 + 800) = type metadata accessor for StaticService(0);
  *(v4 + 808) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = *a2;
  v7 = a3[1];
  *(v4 + 856) = *a3;
  *(v4 + 872) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3C2E8, 0, 0);
}

uint64_t sub_1D1C3C2E8()
{
  v153 = v0;
  if (!StaticService.canBeToggled.getter())
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 808);
    v16 = *(v0 + 792);
    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE07B5D8);
    sub_1D1C3EB34(v16, v15, type metadata accessor for StaticService);
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6833C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 808);
    if (v20)
    {
      v22 = *(v0 + 800);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v151[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1D1B1312C(0xD000000000000018, 0x80000001D1EC7900, v151);
      *(v23 + 12) = 2080;
      v25 = (v21 + *(v22 + 20));
      v26 = *v25;
      v27 = v25[1];

      sub_1D1B43A7C(v21, type metadata accessor for StaticService);
      v28 = sub_1D1B1312C(v26, v27, v151);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1D16EC000, v18, v19, "%s Service '%s' is not toggleable.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D1B43A7C(v21, type metadata accessor for StaticService);
    }

    goto LABEL_82;
  }

  v1 = *(v0 + 792);
  v2 = *(*(v0 + 800) + 104);
  LOBYTE(v151[0]) = *(v1 + v2);
  ServiceKind.togglingCharacteristicKind.getter(&v150);
  v3 = v150;
  if (v150 != 174)
  {
    v4 = *(v0 + 792);
    v5 = *(*(v0 + 800) + 128);
    v151[0] = *(v4 + v5);
    v6 = sub_1D1CE4920(&v150);
    if (v6 != 2)
    {
      v47 = v6;
      *(v0 + 768) = sub_1D18DAC64(MEMORY[0x1E69E7CC0]);
      v152 = MEMORY[0x1E69E6370];
      LOBYTE(v151[0]) = (v47 & 1) == 0;
      sub_1D1B0ED00(v151, v3);
      if ((v47 & 1) == 0)
      {
        v48 = *(v1 + v2);
        if (v48 > 0x1B)
        {
          if (v48 != 48)
          {
            if (v48 != 28)
            {
              goto LABEL_105;
            }

            v151[0] = *(v4 + v5);
            v150 = 12;
            v160 = StaticCharacteristicsBag.int(for:)(&v150);
            if (v160.is_nil || v160.value)
            {
              goto LABEL_105;
            }

            v64 = *(v4 + v5);
            if (*(v64 + 16))
            {

              v65 = sub_1D171D140(12);
              v66 = *(v0 + 840);
              if (v67)
              {
                v68 = v65;
                v69 = *(v64 + 56);
                v70 = type metadata accessor for StaticCharacteristic(0);
                v71 = *(v70 - 8);
                sub_1D1C3EB34(v69 + *(v71 + 72) * v68, v66, type metadata accessor for StaticCharacteristic);
                (*(v71 + 56))(v66, 0, 1, v70);
              }

              else
              {
                v70 = type metadata accessor for StaticCharacteristic(0);
                (*(*(v70 - 8) + 56))(v66, 1, 1, v70);
              }

              v132 = *(v0 + 840);

              type metadata accessor for StaticCharacteristic(0);
              if ((*(*(v70 - 8) + 48))(v132, 1, v70) != 1)
              {
                v138 = *(v0 + 840);
                v139 = (v138 + *(v70 + 44));
                v93 = *v139;
                v92 = v139[1];
                v95 = v139[2];
                v94 = v139[3];
                v96 = v139[4];
                sub_1D18F323C(*v139, v92, v95, v94, v96);
                sub_1D1B43A7C(v138, type metadata accessor for StaticCharacteristic);
                if (v94 >> 8 == 0xFFFFFFFF)
                {
                  goto LABEL_105;
                }

                if (!(v94 >> 62))
                {
                  v152 = MEMORY[0x1E69E6530];
                  v151[0] = v93;
                  v97 = 12;
                  goto LABEL_112;
                }

LABEL_113:
                sub_1D18F3260(v93, v92, v95, v94, v96);
                goto LABEL_105;
              }
            }

            else
            {
              v130 = *(v0 + 840);
              v131 = type metadata accessor for StaticCharacteristic(0);
              (*(*(v131 - 8) + 56))(v130, 1, 1, v131);
            }

            v89 = *(v0 + 840);
            goto LABEL_104;
          }
        }

        else if (v48 != 3 && v48 != 16)
        {
          goto LABEL_105;
        }

        v151[0] = *(v4 + v5);
        v150 = 115;
        sub_1D1CE53A4(&v150);
        if ((v73 & 1) != 0 || (v72 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_105;
        }

        v74 = *(v4 + v5);
        if (!*(v74 + 16))
        {
          v82 = *(v0 + 832);
          v83 = type metadata accessor for StaticCharacteristic(0);
          (*(*(v83 - 8) + 56))(v82, 1, 1, v83);
LABEL_57:
          v89 = *(v0 + 832);
LABEL_104:
          sub_1D1741A30(v89, &qword_1EC643630, &qword_1D1E71D10);
          goto LABEL_105;
        }

        v75 = sub_1D171D140(115);
        v76 = *(v0 + 832);
        if (v77)
        {
          v78 = v75;
          v79 = *(v74 + 56);
          v80 = type metadata accessor for StaticCharacteristic(0);
          v81 = *(v80 - 8);
          sub_1D1C3EB34(v79 + *(v81 + 72) * v78, v76, type metadata accessor for StaticCharacteristic);
          (*(v81 + 56))(v76, 0, 1, v80);
        }

        else
        {
          v80 = type metadata accessor for StaticCharacteristic(0);
          (*(*(v80 - 8) + 56))(v76, 1, 1, v80);
        }

        v88 = *(v0 + 832);

        type metadata accessor for StaticCharacteristic(0);
        if ((*(*(v80 - 8) + 48))(v88, 1, v80) == 1)
        {
          goto LABEL_57;
        }

        v90 = *(v0 + 832);
        v91 = (v90 + *(v80 + 44));
        v93 = *v91;
        v92 = v91[1];
        v95 = v91[2];
        v94 = v91[3];
        v96 = v91[4];
        sub_1D18F323C(*v91, v92, v95, v94, v96);
        sub_1D1B43A7C(v90, type metadata accessor for StaticCharacteristic);
        if (v94 >> 8 != 0xFFFFFFFF)
        {
          if (v94 >> 62 == 1)
          {
            v152 = MEMORY[0x1E69E63B0];
            v151[0] = v93;
            v97 = 115;
LABEL_112:
            sub_1D1B0ED00(v151, v97);
            goto LABEL_113;
          }

          goto LABEL_113;
        }
      }

LABEL_105:
      v133 = *(v0 + 880);
      v134 = *(v0 + 856);
      v135 = *(v0 + 848);
      v136 = *(v0 + 768);
      *(v0 + 888) = v136;
      *(v0 + 776) = v135;
      *(v0 + 696) = v134;
      *(v0 + 704) = *(v0 + 864);
      *(v0 + 720) = v133;
      v137 = swift_task_alloc();
      *(v0 + 896) = v137;
      *v137 = v0;
      v137[1] = sub_1D1C3D6C8;
      v13 = *(v0 + 784);
      v14 = (v0 + 776);
      v45 = (v0 + 696);
      v46 = v136;
      goto LABEL_106;
    }
  }

  v7 = (v0 + 408);
  v8 = *(v1 + v2);
  if (v8 > 0x22)
  {
    if (v8 - 51 < 2)
    {
LABEL_22:
      v151[0] = *(*(v0 + 792) + *(*(v0 + 800) + 128));
      v150 = -98;
      v157 = StaticCharacteristicsBag.int(for:)(&v150);
      if (!v157.is_nil)
      {
        v40 = *(v0 + 848);
        v41 = 100;
        if (v157.value > 0)
        {
          v41 = 0;
        }

        *(v0 + 656) = MEMORY[0x1E69E6530];
        *(v0 + 632) = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
        v141 = *(v0 + 872);
        v146 = *(v0 + 856);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E739C0;
        *(inited + 32) = -98;
        sub_1D1741970(v0 + 632, inited + 40);
        v43 = sub_1D18DAC64(inited);
        *(v0 + 904) = v43;
        swift_setDeallocating();
        sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
        *(v0 + 760) = v40;
        *(v0 + 664) = v146;
        *(v0 + 680) = v141;
        v44 = swift_task_alloc();
        *(v0 + 912) = v44;
        *v44 = v0;
        v44[1] = sub_1D1C3D878;
        v13 = *(v0 + 784);
        v14 = (v0 + 760);
        v45 = (v0 + 664);
        v46 = v43;
        goto LABEL_106;
      }

      goto LABEL_82;
    }

    if (v8 != 35)
    {
      if (v8 != 46)
      {
        goto LABEL_82;
      }

      v29 = *(v0 + 792);
      v30 = *(*(v0 + 800) + 128);
      v151[0] = *(v29 + v30);
      v150 = -104;
      v156 = StaticCharacteristicsBag.int(for:)(&v150);
      if (v156.is_nil)
      {
        goto LABEL_82;
      }

      v31 = *(v29 + v30);
      if (!*(v31 + 16))
      {
        v84 = *(v0 + 816);
        v85 = type metadata accessor for StaticCharacteristic(0);
        (*(*(v85 - 8) + 56))(v84, 1, 1, v85);
LABEL_63:
        v99 = *(v0 + 816);
LABEL_81:
        sub_1D1741A30(v99, &qword_1EC643630, &qword_1D1E71D10);
        goto LABEL_82;
      }

      value = v156.value;

      v33 = sub_1D171D140(152);
      v34 = *(v0 + 816);
      if (v35)
      {
        v36 = v33;
        v37 = *(v31 + 56);
        v38 = type metadata accessor for StaticCharacteristic(0);
        v39 = *(v38 - 8);
        sub_1D1C3EB34(v37 + *(v39 + 72) * v36, v34, type metadata accessor for StaticCharacteristic);
        (*(v39 + 56))(v34, 0, 1, v38);
      }

      else
      {
        v38 = type metadata accessor for StaticCharacteristic(0);
        (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
      }

      v98 = *(v0 + 816);

      type metadata accessor for StaticCharacteristic(0);
      if ((*(*(v38 - 8) + 48))(v98, 1, v38) == 1)
      {
        goto LABEL_63;
      }

      v100 = *(v0 + 816);
      v101 = (v100 + *(v38 + 44));
      v102 = *v101;
      v103 = v101[1];
      v104 = v101[2];
      v105 = v101[3];
      v106 = v101[4];
      sub_1D18F323C(*v101, v103, v104, v105, v106);
      sub_1D1B43A7C(v100, type metadata accessor for StaticCharacteristic);
      if (v105 >> 8 == 0xFFFFFFFF)
      {
        goto LABEL_82;
      }

      if (!(v105 >> 62))
      {
        if (!v106)
        {
          if (v104 <= 1)
          {
            v107 = 1;
          }

          else
          {
            v107 = v104;
          }

          v106 = sub_1D1C279CC(v103, v102, v107);
        }

        v108 = v106[2];
        v109 = 4;
        while (v108)
        {
          v110 = v106[v109++];
          --v108;
          if (v110)
          {
            v111 = *(v0 + 848);
            if (value)
            {
              v112 = 0;
            }

            else
            {
              v112 = v110;
            }

            v143 = *(v0 + 872);
            v148 = *(v0 + 856);

            *(v0 + 400) = MEMORY[0x1E69E6530];
            *(v0 + 376) = v112;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
            v113 = swift_initStackObject();
            *(v113 + 16) = xmmword_1D1E739C0;
            *(v113 + 32) = -104;
            sub_1D1741970(v0 + 376, v113 + 40);
            v11 = sub_1D18DAC64(v113);
            *(v0 + 968) = v11;
            swift_setDeallocating();
            sub_1D1741A30(v113 + 32, &qword_1EC646178, &unk_1D1E7E740);
            *(v0 + 728) = v111;
            *v7 = v148;
            *(v0 + 424) = v143;
            v114 = swift_task_alloc();
            *(v0 + 976) = v114;
            *v114 = v0;
            v114[1] = sub_1D1C3DF38;
            v13 = *(v0 + 784);
            v14 = (v0 + 728);
            goto LABEL_35;
          }
        }

LABEL_114:

        goto LABEL_82;
      }

      goto LABEL_99;
    }

    v53 = *(v0 + 792);
    v54 = *(*(v0 + 800) + 128);
    v151[0] = *(v53 + v54);
    v150 = -96;
    v159 = StaticCharacteristicsBag.int(for:)(&v150);
    if (v159.is_nil)
    {
      goto LABEL_82;
    }

    v55 = *(v53 + v54);
    if (*(v55 + 16))
    {
      v56 = v159.value;

      v57 = sub_1D171D140(160);
      v58 = *(v0 + 824);
      if (v59)
      {
        v60 = v57;
        v61 = *(v55 + 56);
        v62 = type metadata accessor for StaticCharacteristic(0);
        v63 = *(v62 - 8);
        sub_1D1C3EB34(v61 + *(v63 + 72) * v60, v58, type metadata accessor for StaticCharacteristic);
        (*(v63 + 56))(v58, 0, 1, v62);
      }

      else
      {
        v62 = type metadata accessor for StaticCharacteristic(0);
        (*(*(v62 - 8) + 56))(v58, 1, 1, v62);
      }

      v115 = *(v0 + 824);

      type metadata accessor for StaticCharacteristic(0);
      if ((*(*(v62 - 8) + 48))(v115, 1, v62) != 1)
      {
        v120 = *(v0 + 824);
        v121 = (v120 + *(v62 + 44));
        v102 = *v121;
        v103 = v121[1];
        v104 = v121[2];
        v105 = v121[3];
        v106 = v121[4];
        sub_1D18F323C(*v121, v103, v104, v105, v106);
        sub_1D1B43A7C(v120, type metadata accessor for StaticCharacteristic);
        if (v105 >> 8 == 0xFFFFFFFF)
        {
          goto LABEL_82;
        }

        if (!(v105 >> 62))
        {
          if (!v106)
          {
            if (v104 <= 1)
            {
              v122 = 1;
            }

            else
            {
              v122 = v104;
            }

            v106 = sub_1D1C279CC(v103, v102, v122);
          }

          v123 = v106[2];
          v124 = 4;
          while (v123)
          {
            v125 = v106[v124++];
            --v123;
            if (v125 != 3)
            {
              v126 = *(v0 + 848);
              if (v56 == 3)
              {
                v127 = v125;
              }

              else
              {
                v127 = 3;
              }

              v144 = *(v0 + 856);
              v149 = *(v0 + 872);

              *(v0 + 464) = MEMORY[0x1E69E6530];
              *(v0 + 440) = v127;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
              v128 = swift_initStackObject();
              *(v128 + 16) = xmmword_1D1E739C0;
              *(v128 + 32) = -96;
              sub_1D1741970(v0 + 440, v128 + 40);
              v11 = sub_1D18DAC64(v128);
              *(v0 + 952) = v11;
              swift_setDeallocating();
              sub_1D1741A30(v128 + 32, &qword_1EC646178, &unk_1D1E7E740);
              *(v0 + 736) = v126;
              *(v0 + 472) = v144;
              *(v0 + 488) = v149;
              v7 = (v0 + 472);
              v129 = swift_task_alloc();
              *(v0 + 960) = v129;
              *v129 = v0;
              v129[1] = sub_1D1C3DD88;
              v13 = *(v0 + 784);
              v14 = (v0 + 736);
              goto LABEL_35;
            }
          }

          goto LABEL_114;
        }

LABEL_99:
        sub_1D18F3260(v102, v103, v104, v105, v106);
        goto LABEL_82;
      }
    }

    else
    {
      v86 = *(v0 + 824);
      v87 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v87 - 8) + 56))(v86, 1, 1, v87);
    }

    v99 = *(v0 + 824);
    goto LABEL_81;
  }

  switch(v8)
  {
    case 0xEu:
      goto LABEL_22;
    case 0x13u:
      v151[0] = *(*(v0 + 792) + *(*(v0 + 800) + 128));
      v150 = -107;
      v158 = StaticCharacteristicsBag.int(for:)(&v150);
      if (!v158.is_nil)
      {
        v50 = *(v0 + 848);
        *(v0 + 592) = MEMORY[0x1E69E6530];
        *(v0 + 568) = v158.value != 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
        v142 = *(v0 + 856);
        v147 = *(v0 + 872);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_1D1E739C0;
        *(v51 + 32) = -107;
        sub_1D1741970(v0 + 568, v51 + 40);
        v11 = sub_1D18DAC64(v51);
        *(v0 + 920) = v11;
        swift_setDeallocating();
        sub_1D1741A30(v51 + 32, &qword_1EC646178, &unk_1D1E7E740);
        *(v0 + 752) = v50;
        *(v0 + 600) = v142;
        *(v0 + 616) = v147;
        v7 = (v0 + 600);
        v52 = swift_task_alloc();
        *(v0 + 928) = v52;
        *v52 = v0;
        v52[1] = sub_1D1C3DA28;
        v13 = *(v0 + 784);
        v14 = (v0 + 752);
        goto LABEL_35;
      }

      break;
    case 0x1Eu:
      v151[0] = *(*(v0 + 792) + *(*(v0 + 800) + 128));
      v150 = -100;
      v155 = StaticCharacteristicsBag.int(for:)(&v150);
      if (!v155.is_nil)
      {
        v9 = *(v0 + 848);
        *(v0 + 528) = MEMORY[0x1E69E6530];
        *(v0 + 504) = v155.value != 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
        v140 = *(v0 + 856);
        v145 = *(v0 + 872);
        v10 = swift_initStackObject();
        *(v10 + 16) = xmmword_1D1E739C0;
        *(v10 + 32) = -100;
        sub_1D1741970(v0 + 504, v10 + 40);
        v11 = sub_1D18DAC64(v10);
        *(v0 + 936) = v11;
        swift_setDeallocating();
        sub_1D1741A30(v10 + 32, &qword_1EC646178, &unk_1D1E7E740);
        *(v0 + 744) = v9;
        *(v0 + 536) = v140;
        *(v0 + 552) = v145;
        v7 = (v0 + 536);
        v12 = swift_task_alloc();
        *(v0 + 944) = v12;
        *v12 = v0;
        v12[1] = sub_1D1C3DBD8;
        v13 = *(v0 + 784);
        v14 = (v0 + 744);
LABEL_35:
        v46 = v11;
        v45 = v7;
LABEL_106:

        return StaticService.set(for:options:context:)(v13, v46, v14, v45);
      }

      break;
  }

LABEL_82:
  v116 = *(v0 + 784);
  v117 = type metadata accessor for StateSnapshot(0);
  (*(*(v117 - 8) + 56))(v116, 1, 1, v117);

  v118 = *(v0 + 8);

  return v118();
}

uint64_t sub_1D1C3D6C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1C3D7E0, 0, 0);
}

uint64_t sub_1D1C3D7E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1C3D878()
{
  v1 = *v0;
  v2 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 632));

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1D1C3DA28()
{
  v1 = *v0;
  v2 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 568));

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1D1C3DBD8()
{
  v1 = *v0;
  v2 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 504));

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1D1C3DD88()
{
  v1 = *v0;
  v2 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 440));

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1D1C3DF38()
{
  v1 = *v0;
  v2 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 376));

  v3 = *(v2 + 8);

  return v3();
}

uint64_t StaticService.set(for:options:context:)(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  *(v5 + 296) = a1;
  *(v5 + 304) = a2;
  v6 = *a3;
  *(v5 + 312) = v4;
  *(v5 + 320) = v6;
  v7 = a4[1];
  *(v5 + 328) = *a4;
  *(v5 + 344) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1D1C3E11C, 0, 0);
}

void sub_1D1C3E11C()
{
  v42 = v0;
  v1 = *(v0 + 304);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 304) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v39 = *(v0 + 304);

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  for (i = v3; ; v3 = i)
  {
    *(v0 + 360) = v10;
    if (!v7)
    {
      break;
    }

LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(*(v39 + 48) + v13);
    sub_1D1741970(*(v39 + 56) + 32 * v13, v0 + 24);
    *(v0 + 16) = v14;
    sub_1D17DAA94();
    v15 = *(v0 + 48);
    v16 = __swift_project_boxed_opaque_existential_1((v0 + 24), v15);
    *(v0 + 184) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    v40 = *(v0 + 16);
    static HMService.convert(_:characteristicKind:)(v0 + 160, &v40, v0 + 128);
    sub_1D1741A30(v0 + 160, &qword_1EC645D58, &unk_1D1E7E530);
    if (*(v0 + 152))
    {
      sub_1D16EEE38((v0 + 128), (v0 + 96));
    }

    else
    {
      v18 = *(v0 + 48);
      v19 = __swift_project_boxed_opaque_existential_1((v0 + 24), v18);
      *(v0 + 120) = v18;
      v20 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      (*(*(v18 - 8) + 16))(v20, v19, v18);
      if (*(v0 + 152))
      {
        sub_1D1741A30(v0 + 128, &qword_1EC645D58, &unk_1D1E7E530);
      }
    }

    v21 = *(v0 + 16);
    v22 = *(v0 + 120);
    v23 = __swift_project_boxed_opaque_existential_1((v0 + 96), v22);
    *(v0 + 216) = v22;
    v24 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    sub_1D16EEE38((v0 + 192), (v0 + 224));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v10;
    v27 = sub_1D171D140(v21);
    v28 = v10[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v31 = v26;
    if (v10[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D173BB00();
        v10 = v41;
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D172D2A8(v30, isUniquelyReferenced_nonNull_native);
      v10 = v41;
      v32 = sub_1D171D140(v21);
      if ((v31 & 1) != (v33 & 1))
      {

        sub_1D1E690FC();
        return;
      }

      v27 = v32;
      if (v31)
      {
LABEL_4:
        v11 = (v10[7] + 32 * v27);
        __swift_destroy_boxed_opaque_existential_1(v11);
        sub_1D16EEE38((v0 + 224), v11);
        goto LABEL_5;
      }
    }

    v10[(v27 >> 6) + 8] |= 1 << v27;
    *(v10[6] + v27) = v21;
    sub_1D16EEE38((v0 + 224), (v10[7] + 32 * v27));
    v34 = v10[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_34;
    }

    v10[2] = v36;
LABEL_5:
    v7 &= v7 - 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    sub_1D1741A30(v0 + 16, &qword_1EC64CB50, &unk_1D1EA1930);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  v37 = swift_task_alloc();
  *(v0 + 368) = v37;
  *v37 = v0;
  v37[1] = sub_1D1C3E55C;

  StaticService.service.getter();
}

uint64_t sub_1D1C3E55C(uint64_t a1)
{
  *(*v1 + 376) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3E65C, 0, 0);
}

uint64_t sub_1D1C3E65C()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v2 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(v0 + 384) = inited;
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = v1;
    v4 = v1;
    if ((v2 & 0x402) == 2)
    {
      v5 = swift_task_alloc();
      *(v0 + 400) = v5;
      *v5 = v0;
      v5[1] = sub_1D1C3EA00;
      v6 = *(v0 + 360);
      v7 = *(v0 + 296);

      return sub_1D18CCB18(v7, inited, v6);
    }

    else
    {
      *(v0 + 288) = *(v0 + 320);
      v12 = *(v0 + 344);
      *(v0 + 256) = *(v0 + 328);
      *(v0 + 272) = v12;
      v13 = swift_task_alloc();
      *(v0 + 392) = v13;
      *v13 = v0;
      v13[1] = sub_1D1C3E86C;
      v14 = *(v0 + 360);
      v15 = *(v0 + 296);

      return sub_1D18CD90C(v15, v0 + 288, (v0 + 256), inited, v14);
    }
  }

  else
  {
    v9 = *(v0 + 296);
    v10 = type metadata accessor for StateSnapshot(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D1C3E86C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1C3E9A0, 0, 0);
}

uint64_t sub_1D1C3E9A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1C3EA00()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1C3E9A0, 0, 0);
}

uint64_t sub_1D1C3EB34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C3EB9C(uint64_t a1)
{
  v30 = type metadata accessor for StaticService(0);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v24 = v1;
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D178CF80(0, v5, 0);
  v6 = v32;
  v31 = a1 + 64;
  result = sub_1D1E6869C();
  v8 = result;
  v9 = 0;
  v25 = a1 + 72;
  v26 = v5;
  v10 = a1;
  v27 = v4;
  v29 = a1;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v10 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v31 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_24;
    }

    v13 = *(v10 + 36);
    sub_1D1C53710(*(v10 + 56) + *(v28 + 72) * v8, v4, type metadata accessor for StaticService);
    v14 = v4[*(v30 + 112)];
    if (v14 == 53)
    {
      LOBYTE(v14) = v4[*(v30 + 104)];
    }

    result = sub_1D1C53778(v4, type metadata accessor for StaticService);
    v32 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1D178CF80((v15 > 1), v16 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v16 + 1;
    *(v6 + v16 + 32) = v14;
    v10 = v29;
    v11 = 1 << *(v29 + 32);
    if (v8 >= v11)
    {
      goto LABEL_25;
    }

    v17 = *(v31 + 8 * v12);
    if ((v17 & (1 << v8)) == 0)
    {
      goto LABEL_26;
    }

    if (v13 != *(v29 + 36))
    {
      goto LABEL_27;
    }

    v18 = v17 & (-2 << (v8 & 0x3F));
    if (v18)
    {
      v11 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v12 << 6;
      v20 = v12 + 1;
      v21 = (v25 + 8 * v12);
      while (v20 < (v11 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D1716920(v8, v13, 0);
          v11 = __clz(__rbit64(v22)) + v19;
          goto LABEL_21;
        }
      }

      result = sub_1D1716920(v8, v13, 0);
LABEL_21:
      v10 = v29;
    }

    ++v9;
    v8 = v11;
    v4 = v27;
    if (v9 == v26)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t StaticServiceGroup.description.getter()
{
  sub_1D1E6884C();

  v1 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1D3890F70](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1D3890F70](0x27206469202C27, 0xE700000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0x6976726573202C27, 0xEE0027203A736563);
  v3 = StaticServiceGroup.sortedStaticServices.getter();
  v4 = type metadata accessor for StaticService(0);
  v5 = MEMORY[0x1D3891260](v3, v4);
  v7 = v6;

  MEMORY[0x1D3890F70](v5, v7);

  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  return 0x2065636976726553;
}

uint64_t type metadata accessor for StaticServiceGroup(uint64_t a1)
{
  result = qword_1EE07D510;
  if (!qword_1EE07D510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticServiceGroup.serviceGroup.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F150, 0, 0);
}

uint64_t sub_1D1C3F150()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1C3F240;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1C3F6AC;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1C3F240()
{
  v43 = v0;
  v2 = v0;
  v3 = v0[10];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v6);
    sub_1D1747DDC(&v42);

    v7 = v42;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[5];
  v11 = *(v0[7] + 16);
  v11(v0[9], v10, v9);
  v11(v8, v10, v9);
  v40 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = v7 & 0xC000000000000001;
  v39 = v7 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v1 = v7;
      v15 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v15 = *(v7 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v2;
    v18 = v2[8];
    v19 = [v15 serviceGroups];
    sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
    v20 = sub_1D1E67C1C();

    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    v22 = sub_1D174A6C4(sub_1D1749C64, v21, v20);

    if (v22)
    {
      v12 = v13;
      v7 = v1;
      v2 = v17;
      break;
    }

    v23 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v17;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  if (!v40)
  {
    if (v12 != *(v41 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v2[7] + 8);
    v1(v2[9], v2[6]);
    v32 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v24 = MEMORY[0x1D3891EF0](v12, v7);
  }

  else
  {
    if (v12 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = *(v39 + 8 * v12);
  }

  v25 = v24;
  v26 = v2[9];
  v28 = v2[6];
  v27 = v2[7];
  v29 = [v24 serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v30 = sub_1D1E67C1C();

  v31 = swift_task_alloc();
  *(v31 + 16) = v26;
  v32 = sub_1D174A6C4(sub_1D1778988, v31, v30);

  v1 = *(v27 + 8);
  v1(v26, v28);

  if (!v32)
  {
LABEL_34:
    v35 = (v1)(v2[8], v2[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

LABEL_26:
  v2[11] = v32;
  v33 = v2[8];
  v34 = v2[6];

  v1(v33, v34);
  v35 = sub_1D1B9A998;
  v36 = 0;
  v37 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1D1C3F6AC()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F744, 0, 0);
}

uint64_t sub_1D1C3F744(uint64_t a1)
{
  *(v1 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F7D0, v3, v2);
}

uint64_t sub_1D1C3F7D0()
{

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F844, 0, 0);
}

uint64_t sub_1D1C3F844(uint64_t a1)
{
  *(v1 + 128) = sub_1D1E66A2C();
  *(v1 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F8DC, v3, v2);
}

uint64_t sub_1D1C3F8DC()
{
  v1 = v0[16];
  v2 = v0[15];

  v3 = [v2 serviceGroupFor_];

  v4 = v0[1];

  return v4(v3);
}

uint64_t StaticServiceGroup.set(displayName:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_1D1C3FA08;

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C3FA08(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3FB08, 0, 0);
}

uint64_t sub_1D1C3FB08()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = sub_1D1E677EC();
    v0[22] = v2;
    v0[2] = v0;
    v0[3] = sub_1D1C122A0;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_52;
    v0[14] = v3;
    [v1 updateName:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t StaticServiceGroup.set(staticRoom:)()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C3FD10;

  return StaticRoom.room.getter();
}

uint64_t sub_1D1C3FD10(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3FE10, 0, 0);
}

uint64_t sub_1D1C3FE10()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1D1C3FF60;
    v5 = MEMORY[0x1E69E7CA8] + 8;
    v6 = MEMORY[0x1E69E7CA8] + 8;
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v4, v5, v6, 0, 0, &unk_1D1E768B0, v3, v7);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

void sub_1D1C3FF60()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D1BADF78, 0, 0);
  }
}

uint64_t StaticServiceGroup.set(room:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1C400BC, 0, 0);
}

uint64_t sub_1D1C400BC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1D1C401A4;
  v3 = MEMORY[0x1E69E7CA8] + 8;
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v2, v3, v4, 0, 0, &unk_1D1EA1978, v1, v5);
}

void sub_1D1C401A4()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D16FB500, 0, 0);
  }
}

uint64_t StaticServiceGroup.set(showInDashboard:)(char a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C40370;

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C40370(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C40470, 0, 0);
}

uint64_t sub_1D1C40470()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v19 = *(v0 + 72);
    v2 = [v1 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v3 = sub_1D1E67C1C();

    if (v3 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = *(v0 + 80);
        v10 = [v6 applicationData];
        v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v12 = sub_1D1E677EC();
        [v10 setObject:v11 forKeyedSubscript:v12];

        v13 = [v7 applicationData];
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        *(v0 + 48) = sub_1D1C52DA4;
        *(v0 + 56) = v14;
        *(v0 + 16) = MEMORY[0x1E69E9820];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_1D1C40BA8;
        *(v0 + 40) = &block_descriptor_14;
        v15 = _Block_copy((v0 + 16));
        v16 = v7;

        [v16 updateApplicationData:v13 completionHandler:v15];
        _Block_release(v15);

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t StaticServiceGroup.set(favorite:)(char a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C407D4;

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C407D4(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C408D4, 0, 0);
}

uint64_t sub_1D1C408D4()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v19 = *(v0 + 72);
    v2 = [v1 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v3 = sub_1D1E67C1C();

    if (v3 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = *(v0 + 80);
        v10 = [v6 applicationData];
        v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v12 = sub_1D1E677EC();
        [v10 setObject:v11 forKeyedSubscript:v12];

        v13 = [v7 applicationData];
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        *(v0 + 48) = sub_1D1C52DA4;
        *(v0 + 56) = v14;
        *(v0 + 16) = MEMORY[0x1E69E9820];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_1D1C40BA8;
        *(v0 + 40) = &block_descriptor_21;
        v15 = _Block_copy((v0 + 16));
        v16 = v7;

        [v16 updateApplicationData:v13 completionHandler:v15];
        _Block_release(v15);

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  v17 = *(v0 + 8);

  return v17();
}

void sub_1D1C40BA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D1C40C14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31[-v3];
  v5 = type metadata accessor for StatusStrings.Options(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v40.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  countAndFlagsBits = v40.tileOnStateIconInfo.name._countAndFlagsBits;
  object = v40.tileOnStateIconInfo.name._object;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  MEMORY[0x1D3890F70](0x6E776F6E6B6E75, 0xE700000000000000);
  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v9);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v10 = type metadata accessor for ActionEndpoint(0);
  MEMORY[0x1D3890F70](*(v1 + v10[6]), *(v1 + v10[6] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v11 = v6[13];
  v12 = sub_1D1E669FC();
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  *v8 = 65793;
  *(v8 + 2) = 1;
  v8[6] = 0;
  v8[v6[14]] = 2;
  v13 = &v8[v6[15]];
  v13[4] = 0;
  *v13 = 2;
  v14 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
  v17 = v16;
  sub_1D1741A30(v4, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v8, type metadata accessor for StatusStrings.Options);
  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 7104878;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v18, v19);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + v10[11]), &v39);
  if (v39 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v36 = *&qword_1EC646788;
    name = xmmword_1EC646798;
    *v38 = xmmword_1EC6467A8;
    *&v38[9] = *(&xmmword_1EC6467A8 + 9);
    v34 = xmmword_1EC646768;
    v35 = xmmword_1EC646778;
    v40.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
    *&v40.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
    *&v40.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
    *&v40.tileOffStateIconInfo.name._object = *&qword_1EC646788;
    *(&v40.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
    v40.tileOnStateIconInfo.name = xmmword_1EC646768;
    sub_1D18A9844(&v34, v32);
  }

  else
  {
    LOBYTE(v34._countAndFlagsBits) = v39;
    Icon.init(deviceType:)(&v40, &v34);
  }

  v36 = *&v40.tileOffStateIconInfo.name._object;
  name = v40.accessoryControlOnStateIconInfo.name;
  *v38 = *&v40.accessoryControlOnStateIconInfo.renderingMode;
  *&v38[9] = *(&v40.accessoryControlOffStateIconInfo.name + 1);
  v34 = v40.tileOnStateIconInfo.name;
  v35 = *&v40.tileOnStateIconInfo.renderingMode;
  v32[2] = *&v40.tileOffStateIconInfo.name._object;
  v32[3] = v40.accessoryControlOnStateIconInfo.name;
  v33[0] = *&v40.accessoryControlOnStateIconInfo.renderingMode;
  *(v33 + 9) = *(&v40.accessoryControlOffStateIconInfo.name + 1);
  v32[0] = v40.tileOnStateIconInfo.name;
  v32[1] = *&v40.tileOnStateIconInfo.renderingMode;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v34);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v20 = 0xE500000000000000;
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v1 + v10[7]))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + v10[7]))
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v21, v20);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v32[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v22 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v22);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v32[0] = sub_1D1C75ED0(*(v1 + v10[5]));
  v23 = sub_1D1E6770C();
  v25 = v24;

  MEMORY[0x1D3890F70](v23, v25);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v26 = ActionEndpoint.isActivated.getter();
  v27 = !v26;
  if (v26)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v28, v29);

  return countAndFlagsBits;
}

uint64_t sub_1D1C41290()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v72 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v73 = &v64 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v64 - v13;
  v15 = type metadata accessor for StatusStrings.Options(0);
  v16 = (v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v85.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  countAndFlagsBits = v85.tileOnStateIconInfo.name._countAndFlagsBits;
  object = v85.tileOnStateIconInfo.name._object;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  MEMORY[0x1D3890F70](0x6E776F6E6B6E75, 0xE700000000000000);
  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  v19 = sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v68 = v19;
  v20 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v20);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v21 = type metadata accessor for ActionMatterDevice(0);
  MEMORY[0x1D3890F70](*(v1 + *(v21 + 24)), *(v1 + *(v21 + 24) + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v22 = v16[13];
  v23 = sub_1D1E669FC();
  (*(*(v23 - 8) + 56))(&v18[v22], 1, 1, v23);
  *v18 = 65793;
  *(v18 + 2) = 1;
  v18[6] = 0;
  v18[v16[14]] = 2;
  v24 = &v18[v16[15]];
  v24[4] = 0;
  *v24 = 2;
  v25 = type metadata accessor for StaticMatterDevice(0);
  v26 = *(*(v25 - 8) + 56);
  v65 = v14;
  v26(v14, 1, 1, v25);
  v74 = v21;
  v75 = v1;
  v27 = *(v1 + *(v21 + 44));
  v76 = v1;

  sub_1D1746B24(sub_1D1903ECC, v27, v9);
  v66 = 0;

  v28 = type metadata accessor for ActionEndpoint(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v31 = v30(v9, 1, v28);
  v64 = v29;
  if (v31 == 1)
  {

    sub_1D1771D3C(v32, v11);

    if (v30(v9, 1, v28) != 1)
    {
      sub_1D1741A30(v9, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D1C5381C(v9, v11, type metadata accessor for ActionEndpoint);
    (*(v29 + 56))(v11, 0, 1, v28);
  }

  v69 = v30;
  v33 = v30(v11, 1, v28);
  v71 = v28;
  if (v33 == 1)
  {
    sub_1D1741A30(v65, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1C53778(v18, type metadata accessor for StatusStrings.Options);
    sub_1D1741A30(v11, &qword_1EC646C40, &unk_1D1E825E0);
  }

  else
  {
    v34 = v65;
    v35 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
    v37 = v36;
    sub_1D1741A30(v34, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1C53778(v18, type metadata accessor for StatusStrings.Options);
    sub_1D1C53778(v11, type metadata accessor for ActionEndpoint);
    if (v37)
    {
      goto LABEL_9;
    }
  }

  v37 = 0xE300000000000000;
  v35 = 7104878;
LABEL_9:
  MEMORY[0x1D3890F70](v35, v37);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v75 + *(v74 + 32)), &v84);
  v70 = v29 + 48;
  v67 = v27;
  if (v84 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v81 = *&qword_1EC646788;
    name = xmmword_1EC646798;
    *v83 = xmmword_1EC6467A8;
    *&v83[9] = *(&xmmword_1EC6467A8 + 9);
    v79 = xmmword_1EC646768;
    v80 = xmmword_1EC646778;
    v85.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
    *&v85.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
    *&v85.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
    *&v85.tileOffStateIconInfo.name._object = *&qword_1EC646788;
    *(&v85.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
    v85.tileOnStateIconInfo.name = xmmword_1EC646768;
    sub_1D18A9844(&v79, v77);
  }

  else
  {
    LOBYTE(v79._countAndFlagsBits) = v84;
    Icon.init(deviceType:)(&v85, &v79);
  }

  v81 = *&v85.tileOffStateIconInfo.name._object;
  name = v85.accessoryControlOnStateIconInfo.name;
  *v83 = *&v85.accessoryControlOnStateIconInfo.renderingMode;
  *&v83[9] = *(&v85.accessoryControlOffStateIconInfo.name + 1);
  v79 = v85.tileOnStateIconInfo.name;
  v80 = *&v85.tileOnStateIconInfo.renderingMode;
  v77[2] = *&v85.tileOffStateIconInfo.name._object;
  v77[3] = v85.accessoryControlOnStateIconInfo.name;
  v78[0] = *&v85.accessoryControlOnStateIconInfo.renderingMode;
  *(v78 + 9) = *(&v85.accessoryControlOffStateIconInfo.name + 1);
  v77[0] = v85.tileOnStateIconInfo.name;
  v77[1] = *&v85.tileOnStateIconInfo.renderingMode;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v79);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  v39 = v74;
  v38 = v75;
  v40 = *(v75 + *(v74 + 28));
  if (v40 == 1)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v40 == 1)
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v41, v42);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v77[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v43 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v43);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v44 = v68;
  v45 = *(v68 - 8);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D1E739C0;
  (*(v45 + 16))(v47 + v46, v38 + *(v39 + 40), v44);
  v48 = sub_1D179BE14(v47);
  swift_setDeallocating();
  (*(v45 + 8))(v47 + v46, v44);
  swift_deallocClassInstance();
  v49 = sub_1D1C75ED0(v48);

  *&v77[0] = v49;
  v50 = sub_1D1E6770C();
  v52 = v51;

  MEMORY[0x1D3890F70](v50, v52);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  v53 = MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  MEMORY[0x1EEE9AC00](v53);
  *(&v64 - 2) = v38;
  v54 = v67;

  v55 = v72;
  sub_1D1746B24(sub_1D1904B4C, v54, v72);

  v56 = v71;
  v57 = v69;
  if (v69(v55, 1, v71) == 1)
  {

    v59 = v73;
    sub_1D1771D3C(v58, v73);

    if (v57(v55, 1, v56) != 1)
    {
      sub_1D1741A30(v55, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    v59 = v73;
    sub_1D1C5381C(v55, v73, type metadata accessor for ActionEndpoint);
    (*(v64 + 56))(v59, 0, 1, v56);
  }

  if (v57(v59, 1, v56) == 1)
  {
    sub_1D1741A30(v59, &qword_1EC646C40, &unk_1D1E825E0);
LABEL_28:
    v61 = 0xE500000000000000;
    v62 = 0x65736C6166;
    goto LABEL_29;
  }

  v60 = ActionEndpoint.isActivated.getter();
  sub_1D1C53778(v59, type metadata accessor for ActionEndpoint);
  if (!v60)
  {
    goto LABEL_28;
  }

  v61 = 0xE400000000000000;
  v62 = 1702195828;
LABEL_29:
  MEMORY[0x1D3890F70](v62, v61);

  return countAndFlagsBits;
}

uint64_t sub_1D1C41E58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45[-v3];
  v5 = type metadata accessor for StatusStrings.Options(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v54.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  countAndFlagsBits = v54.tileOnStateIconInfo.name._countAndFlagsBits;
  object = v54.tileOnStateIconInfo.name._object;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  MEMORY[0x1D3890F70](0x6E776F6E6B6E75, 0xE700000000000000);
  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v9);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v10 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1D3890F70](*(v1 + v10[6]), *(v1 + v10[6] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v11 = v6[13];
  v12 = sub_1D1E669FC();
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  *v8 = 65793;
  *(v8 + 2) = 1;
  v8[6] = 0;
  v8[v6[14]] = 2;
  v13 = &v8[v6[15]];
  v13[4] = 0;
  *v13 = 2;
  v14 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = StaticEndpoint.statusString(with:associatedMatterDevice:)(v8);
  v17 = v16;
  sub_1D1741A30(v4, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v8, type metadata accessor for StatusStrings.Options);
  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 7104878;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v18, v19);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0x6E45636974617473, 0xEE00746E696F7064);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  v20 = v1 + v10[13];
  v21 = *(v20 + 24);
  if (v21)
  {
    v22 = *(v20 + 16);

    v23._countAndFlagsBits = v22;
    v23._object = v21;
    Icon.init(customIconName:)(&v54, v23);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*(v1 + v10[8]), &v53);
    if (v53 == 28)
    {
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v50 = *&qword_1EC646788;
      name = xmmword_1EC646798;
      *v52 = xmmword_1EC6467A8;
      *&v52[9] = *(&xmmword_1EC6467A8 + 9);
      v48 = xmmword_1EC646768;
      v49 = xmmword_1EC646778;
      v54.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
      *&v54.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
      *&v54.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
      *&v54.tileOffStateIconInfo.name._object = *&qword_1EC646788;
      *(&v54.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
      v54.tileOnStateIconInfo.name = xmmword_1EC646768;
      sub_1D18A9844(&v48, v46);
    }

    else
    {
      LOBYTE(v48._countAndFlagsBits) = v53;
      Icon.init(deviceType:)(&v54, &v48);
    }
  }

  v50 = *&v54.tileOffStateIconInfo.name._object;
  name = v54.accessoryControlOnStateIconInfo.name;
  *v52 = *&v54.accessoryControlOnStateIconInfo.renderingMode;
  *&v52[9] = *(&v54.accessoryControlOffStateIconInfo.name + 1);
  v48 = v54.tileOnStateIconInfo.name;
  v49 = *&v54.tileOnStateIconInfo.renderingMode;
  v46[2] = *&v54.tileOffStateIconInfo.name._object;
  v46[3] = v54.accessoryControlOnStateIconInfo.name;
  v47[0] = *&v54.accessoryControlOnStateIconInfo.renderingMode;
  *(v47 + 9) = *(&v54.accessoryControlOffStateIconInfo.name + 1);
  v46[0] = v54.tileOnStateIconInfo.name;
  v46[1] = *&v54.tileOnStateIconInfo.renderingMode;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v48);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v24 = StaticEndpoint.isDoubleHigh.getter();
  v25 = (v24 & 1) == 0;
  if (v24)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v26, v27);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  v28 = *(v1 + v10[7]);
  if (v28 == 1)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v28 == 1)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v29, v30);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v46[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v31 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v31);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v46[0] = sub_1D1C75ED0(*(v1 + v10[12]));
  v32 = sub_1D1E6770C();
  v34 = v33;

  MEMORY[0x1D3890F70](v32, v34);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  v35 = *(v20 + 49);
  if (v35 == 2 || (v35 & 1) == 0)
  {
    v36 = 0xE500000000000000;
    v37 = 0x65736C6166;
  }

  else
  {
    v36 = 0xE400000000000000;
    v37 = 1702195828;
  }

  MEMORY[0x1D3890F70](v37, v36);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if ((*(v20 + 50) == 2) | *(v20 + 50) & 1)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if ((*(v20 + 50) == 2) | *(v20 + 50) & 1)
  {
    v39 = 0xE400000000000000;
  }

  else
  {
    v39 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v38, v39);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v40 = StaticEndpoint.isActivated.getter();
  v41 = (v40 & 1) == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE500000000000000;
  }

  else
  {
    v43 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v42, v43);

  return countAndFlagsBits;
}

uint64_t sub_1D1C42598()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v54 - v3;
  v5 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v65.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  countAndFlagsBits = v65.tileOnStateIconInfo.name._countAndFlagsBits;
  object = v65.tileOnStateIconInfo.name._object;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v8 = type metadata accessor for StaticMatterDevice(0);
  v9 = (v0 + v8[11]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v10, v11);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  v12 = sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v56 = v12;
  v13 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v13);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v8[6]), *(v0 + v8[6] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v14 = v5[11];
  v15 = sub_1D1E669FC();
  (*(*(v15 - 8) + 56))(&v7[v14], 1, 1, v15);
  *v7 = 65793;
  *(v7 + 2) = 1;
  v7[6] = 0;
  v7[v5[12]] = 2;
  v16 = &v7[v5[13]];
  v16[4] = 0;
  *v16 = 2;
  (*(*(v8 - 1) + 56))(v4, 1, 1, v8);
  v17 = StaticMatterDevice.statusString(with:associatedMatterDevice:)(v7);
  v19 = v18;
  sub_1D1741A30(v4, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v7, type metadata accessor for StatusStrings.Options);
  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 7104878;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v20, v21);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC38D0);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  v22 = v8[15];
  v23 = *(v1 + v22 + 24);
  v55 = v1 + v22;
  if (v23)
  {
    v24 = *(v1 + v22 + 16);

    v25._countAndFlagsBits = v24;
    v25._object = v23;
    Icon.init(customIconName:)(&v65, v25);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*(v1 + v8[8]), &v64);
    if (v64 == 28)
    {
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v61 = *&qword_1EC646788;
      name = xmmword_1EC646798;
      *v63 = xmmword_1EC6467A8;
      *&v63[9] = *(&xmmword_1EC6467A8 + 9);
      v59 = xmmword_1EC646768;
      v60 = xmmword_1EC646778;
      v65.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
      *&v65.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
      *&v65.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
      *&v65.tileOffStateIconInfo.name._object = *&qword_1EC646788;
      *(&v65.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
      v65.tileOnStateIconInfo.name = xmmword_1EC646768;
      sub_1D18A9844(&v59, v57);
    }

    else
    {
      LOBYTE(v59._countAndFlagsBits) = v64;
      Icon.init(deviceType:)(&v65, &v59);
    }
  }

  v61 = *&v65.tileOffStateIconInfo.name._object;
  name = v65.accessoryControlOnStateIconInfo.name;
  *v63 = *&v65.accessoryControlOnStateIconInfo.renderingMode;
  *&v63[9] = *(&v65.accessoryControlOffStateIconInfo.name + 1);
  v59 = v65.tileOnStateIconInfo.name;
  v60 = *&v65.tileOnStateIconInfo.renderingMode;
  v57[2] = *&v65.tileOffStateIconInfo.name._object;
  v57[3] = v65.accessoryControlOnStateIconInfo.name;
  v58[0] = *&v65.accessoryControlOnStateIconInfo.renderingMode;
  *(v58 + 9) = *(&v65.accessoryControlOffStateIconInfo.name + 1);
  v57[0] = v65.tileOnStateIconInfo.name;
  v57[1] = *&v65.tileOnStateIconInfo.renderingMode;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v59);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v26 = StaticMatterDevice.isDoubleHigh.getter();
  v27 = (v26 & 1) == 0;
  if (v26)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v28, v29);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  v30 = *(v1 + v8[7]);
  if (v30 == 1)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (v30 == 1)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v31, v32);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v57[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v33 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v33);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v34 = v56;
  v35 = *(v56 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D1E739C0;
  (*(v35 + 16))(v37 + v36, v1 + v8[10], v34);
  v38 = sub_1D179BE14(v37);
  swift_setDeallocating();
  (*(v35 + 8))(v37 + v36, v34);
  swift_deallocClassInstance();
  v39 = sub_1D1C75ED0(v38);

  *&v57[0] = v39;
  v40 = sub_1D1E6770C();
  v42 = v41;

  MEMORY[0x1D3890F70](v40, v42);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  v43 = v55;
  v44 = *(v55 + 49);
  if (v44 == 2 || (v44 & 1) == 0)
  {
    v45 = 0xE500000000000000;
    v46 = 0x65736C6166;
  }

  else
  {
    v45 = 0xE400000000000000;
    v46 = 1702195828;
  }

  MEMORY[0x1D3890F70](v46, v45);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if ((*(v43 + 50) == 2) | *(v43 + 50) & 1)
  {
    v47 = 1702195828;
  }

  else
  {
    v47 = 0x65736C6166;
  }

  if ((*(v43 + 50) == 2) | *(v43 + 50) & 1)
  {
    v48 = 0xE400000000000000;
  }

  else
  {
    v48 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v47, v48);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v49 = StaticMatterDevice.isActivated.getter();
  v50 = (v49 & 1) == 0;
  if (v49)
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (v50)
  {
    v52 = 0xE500000000000000;
  }

  else
  {
    v52 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v51, v52);

  return countAndFlagsBits;
}

uint64_t sub_1D1C42E1C()
{
  v25.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v25.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v1 = type metadata accessor for StaticCameraProfile(0);
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v5 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v1[5]), *(v0 + v1[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v6 = _s13HomeDataModel19StaticCameraProfileV12statusString4with22associatedMatterDeviceSSSgAA13StatusStringsV7OptionsV_AA0dkL0VSgtF_0();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 7104878;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v6, v8);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC5E20);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  v9._countAndFlagsBits = 0x69662E6F65646976;
  v9._object = 0xEA00000000006C6CLL;
  Icon.init(customIconName:)(&v25, v9);
  sub_1D1E68ABC();
  sub_1D18A98A0(&v25);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v10 = 0xE500000000000000;
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v0 + v1[10]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + v1[10]))
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v11, v10);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v12 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v12);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  sub_1D1C75ED0(*(v0 + v1[6]));
  v13 = sub_1D1E6770C();
  v15 = v14;

  MEMORY[0x1D3890F70](v13, v15);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v0 + v1[15]))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v0 + v1[15]))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v16, v17);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if (*(v0 + v1[14]))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v0 + v1[14]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v18, v19);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v20 = StaticCameraProfile.isActivated.getter();
  v21 = !v20;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v22, v23);

  return v26;
}

uint64_t sub_1D1C432EC()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  MEMORY[0x1D3890F70](0x6E776F6E6B6E75, 0xE700000000000000);
  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v2 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1D3890F70](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  if (*(v0 + v2[15]) == 2)
  {
    v3 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC64E0);
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x1D3890F70](v3, v5);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0x6341636974617473, 0xEF7465536E6F6974);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  MEMORY[0x1D3890F70](1702195828, 0xE400000000000000);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v6 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  sub_1D1C75ED0(*(v0 + v2[11]));
  v7 = sub_1D1E6770C();
  v9 = v8;

  MEMORY[0x1D3890F70](v7, v9);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v0 + v2[12]))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + v2[12]))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v10, v11);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  MEMORY[0x1D3890F70](v10, v11);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  if (*(v0 + v2[14]))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + v2[14]))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v12, v13);

  return 0;
}

uint64_t sub_1D1C43758()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39[-v3];
  v5 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v45[0] = 0;
  *(&v45[0] + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v47 = v45[0];
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v8 = type metadata accessor for StaticMediaProfile(0);
  v9 = (v0 + v8[7]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v10, v11);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v12 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v12);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v8[5]), *(v0 + v8[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v13 = v5[11];
  v14 = sub_1D1E669FC();
  (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
  *v7 = 65793;
  *(v7 + 2) = 1;
  v7[6] = 0;
  v7[v5[12]] = 2;
  v15 = &v7[v5[13]];
  v15[4] = 0;
  *v15 = 2;
  v16 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = StaticMediaProfile.statusString(with:associatedMatterDevice:)(v7);
  v19 = v18;
  sub_1D1741A30(v4, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v7, type metadata accessor for StatusStrings.Options);
  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 7104878;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v20, v21);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  StaticMediaProfile.tileIcon.getter(v45);
  v42 = v45[2];
  v43 = v45[3];
  v44[0] = v46[0];
  *(v44 + 9) = *(v46 + 9);
  v40 = v45[0];
  v41 = v45[1];
  sub_1D1E68ABC();
  sub_1D18A98A0(v45);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  if (*(v1 + v8[10]))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + v8[10]))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v22, v23);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v1 + v8[15]))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v1 + v8[15]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v24, v25);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v40 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v26 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v26);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v40 = sub_1D1C75ED0(*(v1 + v8[6]));
  v27 = sub_1D1E6770C();
  v29 = v28;

  MEMORY[0x1D3890F70](v27, v29);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v1 + v8[11]))
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (*(v1 + v8[11]))
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v30, v31);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if (*(v1 + v8[12]))
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (*(v1 + v8[12]))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v32, v33);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v34 = StaticMediaProfile.isActivated.getter();
  v35 = !v34;
  if (v34)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v36, v37);

  return v47;
}

uint64_t sub_1D1C43DBC()
{
  v1 = v0;
  v2 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41[-v6];
  v8 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v49 = v47[0];
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v11 = (v0 + v2[22]);
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v13 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v12, v13);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v14 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v14);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v15 = v8[11];
  v16 = sub_1D1E669FC();
  (*(*(v16 - 8) + 56))(&v10[v15], 1, 1, v16);
  *v10 = 65793;
  *(v10 + 2) = 1;
  v10[6] = 0;
  v10[v8[12]] = 2;
  v17 = &v10[v8[13]];
  v17[4] = 0;
  *v17 = 2;
  v18 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = StaticMediaSystem.statusString(with:associatedMatterDevice:)(v10);
  v21 = v20;
  sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v10, type metadata accessor for StatusStrings.Options);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 7104878;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v22, v23);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC6950);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  sub_1D1C53710(v1, v4, type metadata accessor for StaticMediaSystem);
  Icon.init(staticMediaSystem:)(v4, v47);
  v44 = v47[2];
  v45 = v47[3];
  v46[0] = v48[0];
  *(v46 + 9) = *(v48 + 9);
  v42 = v47[0];
  v43 = v47[1];
  sub_1D1E68ABC();
  sub_1D18A98A0(v47);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  if (*(v1 + v2[9]))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v1 + v2[9]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v24, v25);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v1 + v2[13]))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v1 + v2[13]))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v26, v27);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v42 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v28 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v28);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v42 = sub_1D1C75ED0(*(v1 + v2[21]));
  v29 = sub_1D1E6770C();
  v31 = v30;

  MEMORY[0x1D3890F70](v29, v31);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v1 + v2[10]))
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (*(v1 + v2[10]))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v32, v33);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if (*(v1 + v2[11]))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v1 + v2[11]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v34, v35);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v36 = StaticMediaSystem.isActivated.getter();
  v37 = !v36;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v38, v39);

  return v49;
}

uint64_t sub_1D1C44494()
{
  v1 = v0;
  v63 = type metadata accessor for StaticService(0);
  v64 = *(v63 - 8);
  v2 = MEMORY[0x1EEE9AC00](v63);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v63 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v63 - v8;
  v10 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v71[0] = 0;
  *(&v71[0] + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v73 = v71[0];
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v13 = type metadata accessor for StaticServiceGroup(0);
  v14 = (v0 + v13[10]);
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v16 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1D3890F70](v15, v16);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v17 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v17);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1D3890F70](*(v0 + v13[5]), *(v0 + v13[5] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v18 = v10[11];
  v19 = sub_1D1E669FC();
  (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
  *v12 = 65793;
  *(v12 + 2) = 1;
  v12[6] = 0;
  v12[v10[12]] = 2;
  v20 = &v12[v10[13]];
  v20[4] = 0;
  *v20 = 2;
  v21 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  StaticServiceGroup.statusString(with:associatedMatterDevice:)(v12);
  v23 = v22;
  v25 = v24;
  sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v12, type metadata accessor for StatusStrings.Options);
  if (v25)
  {
    v26 = v23;
  }

  else
  {
    v26 = 7104878;
  }

  if (!v25)
  {
    v25 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v26, v25);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  v27 = StaticServiceGroup.description.getter();
  MEMORY[0x1D3890F70](v27);

  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  StaticServiceGroup.tileIcon.getter(v71);
  v68 = v71[2];
  v69 = v71[3];
  v70[0] = v72[0];
  *(v70 + 9) = *(v72 + 9);
  v66 = v71[0];
  v67 = v71[1];
  sub_1D1E68ABC();
  sub_1D18A98A0(v71);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v28 = StaticServiceGroup.sortedStaticServices.getter();
  if (!*(v28 + 16))
  {

    goto LABEL_13;
  }

  sub_1D1C53710(v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v6, type metadata accessor for StaticService);

  v29 = v6[*(v63 + 28)];
  sub_1D1C53778(v6, type metadata accessor for StaticService);
  if ((v29 & 1) == 0)
  {
LABEL_13:
    v30 = 0xE500000000000000;
    v32 = 0x65736C6166;
    v31 = 0x65736C6166;
    goto LABEL_14;
  }

  v30 = 0xE400000000000000;
  v31 = 1702195828;
  v32 = 0x65736C6166;
LABEL_14:
  MEMORY[0x1D3890F70](v31, v30);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v1 + v13[6]))
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (*(v1 + v13[6]))
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v33, v34);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  v35 = sub_1D1C56320();
  v36 = *(v35 + 16);
  if (v36)
  {
    *&v66 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v36, 0);
    v37 = 32;
    v38 = v66;
    do
    {
      v65 = *(v35 + v37);
      v39 = ServiceKind.localizedDescription.getter();
      *&v66 = v38;
      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      if (v42 >= v41 >> 1)
      {
        v63 = v39;
        v44 = v40;
        sub_1D178CD24((v41 > 1), v42 + 1, 1);
        v40 = v44;
        v39 = v63;
        v38 = v66;
      }

      *(v38 + 16) = v42 + 1;
      v43 = v38 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      ++v37;
      --v36;
    }

    while (v36);

    v32 = 0x65736C6166;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  *&v66 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v45 = sub_1D1E6770C();
  v47 = v46;

  MEMORY[0x1D3890F70](v45, v47);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v66 = sub_1D1C75ED0(*(v1 + v13[9]));
  v48 = sub_1D1E6770C();
  v50 = v49;

  MEMORY[0x1D3890F70](v48, v50);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  if (*(v1 + v13[11]))
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (*(v1 + v13[11]))
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v51, v52);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  if (*(v1 + v13[12]))
  {
    v53 = 1702195828;
  }

  else
  {
    v53 = 0x65736C6166;
  }

  if (*(v1 + v13[12]))
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v53, v54);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v55 = StaticServiceGroup.sortedStaticServices.getter();
  v56 = *(v55 + 16);
  if (!v56)
  {

LABEL_48:
    v61 = 0xE500000000000000;
    goto LABEL_51;
  }

  v57 = 0;
  v58 = v55 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
  v59 = *(v64 + 72);
  for (i = v56 - 1; ; --i)
  {
    sub_1D1C53710(v58, v4, type metadata accessor for StaticService);
    if ((v57 & 1) == 0)
    {
      break;
    }

    sub_1D1C53778(v4, type metadata accessor for StaticService);
    if (!i)
    {

      goto LABEL_50;
    }

    v57 = 1;
LABEL_42:
    v58 += v59;
  }

  v57 = StaticService.isActivated.getter();
  sub_1D1C53778(v4, type metadata accessor for StaticService);
  if (i)
  {
    goto LABEL_42;
  }

  if ((v57 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_50:
  v61 = 0xE400000000000000;
  v32 = 1702195828;
LABEL_51:
  MEMORY[0x1D3890F70](v32, v61);

  return v73;
}

uint64_t StaticServiceGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticServiceGroup.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticServiceGroup(0) + 20));

  return v1;
}

uint64_t StaticServiceGroup.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticServiceGroup(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

double StaticServiceGroup.roomIds.getter()
{
  type metadata accessor for StaticServiceGroup(0);

  return result;
}

uint64_t StaticServiceGroup.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticServiceGroup(0) + 40));

  return v1;
}

double StaticServiceGroup.staticServicesDictionary.getter()
{
  type metadata accessor for StaticServiceGroup(0);

  return result;
}

unint64_t sub_1D1C4509C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x6168636165527369;
    v8 = 0xD000000000000015;
    if (a1 != 3)
    {
      v8 = 0x6564644165746164;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000017;
    if (a1 != 9)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7364496D6F6F72;
    v4 = 0x656D614E6D6F6F72;
    if (a1 != 6)
    {
      v4 = 0x69726F7661467369;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D1C45204@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1C53384(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1C4522C(uint64_t a1)
{
  v2 = sub_1D1C52DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C45268(uint64_t a1)
{
  v2 = sub_1D1C52DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticServiceGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB58, &qword_1D1EA1998);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C52DC4();
  sub_1D1E6930C();
  LOBYTE(v11) = 0;
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticServiceGroup(0);
    LOBYTE(v11) = 1;
    sub_1D1E68ECC();
    LOBYTE(v11) = 2;
    sub_1D1E68EDC();
    LOBYTE(v11) = *(v3 + v9[7]);
    v12 = 3;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
    LOBYTE(v11) = 4;
    sub_1D1E669FC();
    sub_1D1C53A0C(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    v11 = *(v3 + v9[9]);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C52E18(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v11) = 6;
    sub_1D1E68E0C();
    LOBYTE(v11) = 7;
    sub_1D1E68EDC();
    LOBYTE(v11) = 8;
    sub_1D1E68EDC();
    LOBYTE(v11) = 9;
    sub_1D1E68EDC();
    v11 = *(v3 + v9[14]);
    v12 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticServiceGroup.hash(into:)(__int128 *a1)
{
  v3 = sub_1D1E669FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D1E66A7C();
  sub_1D1C53A0C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticServiceGroup(0);
  sub_1D1E678EC();
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v1 + v10[7]));
  sub_1D1741C08(v1 + v10[8], v9, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D1E6922C();
    sub_1D1C53A0C(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v4 + 8))(v6, v3);
  }

  sub_1D176D4E8(a1, *(v1 + v10[9]));
  if (*(v1 + v10[10] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D18599F4(a1, *(v1 + v10[14]));
}

uint64_t StaticServiceGroup.hashValue.getter()
{
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticServiceGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_1D1E66A7C();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB68, &unk_1D1EA19A0);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C52DC4();
  v35 = v10;
  v14 = v36;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v5;
  v36 = a1;
  v29 = v13;
  LOBYTE(v37) = 0;
  sub_1D1C53A0C(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v32;
  sub_1D1E68D7C();
  v17 = v6;
  v18 = v29;
  (*(v31 + 32))(v29, v16, v17);
  LOBYTE(v37) = 1;
  v19 = sub_1D1E68D2C();
  v28 = v17;
  v20 = &v18[v11[5]];
  *v20 = v19;
  v20[1] = v21;
  LOBYTE(v37) = 2;
  v32 = 0;
  v18[v11[6]] = sub_1D1E68D3C() & 1;
  v38 = 3;
  sub_1D1BC934C();
  sub_1D1E68D7C();
  v18[v11[7]] = v37;
  sub_1D1E669FC();
  LOBYTE(v37) = 4;
  sub_1D1C53A0C(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  sub_1D1741A90(v15, &v18[v11[8]], &qword_1EC642570, &qword_1D1E6C6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v38 = 5;
  sub_1D1C52E18(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *&v18[v11[9]] = v37;
  LOBYTE(v37) = 6;
  v22 = sub_1D1E68C6C();
  v23 = &v18[v11[10]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v37) = 7;
  v18[v11[11]] = sub_1D1E68D3C() & 1;
  LOBYTE(v37) = 8;
  v18[v11[12]] = sub_1D1E68D3C() & 1;
  LOBYTE(v37) = 9;
  v29[v11[13]] = sub_1D1E68D3C() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  v38 = 10;
  sub_1D1B43CAC();
  sub_1D1E68D7C();
  (*(v33 + 8))(v35, v34);
  v26 = v29;
  v25 = v30;
  *&v29[v11[14]] = v37;
  sub_1D1C53710(v26, v25, type metadata accessor for StaticServiceGroup);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1D1C53778(v26, type metadata accessor for StaticServiceGroup);
}

uint64_t sub_1D1C461EC()
{
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C46230(uint64_t a1)
{
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticServiceGroup.displayAsServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-v7];
  v9 = type metadata accessor for StaticServiceGroup(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v42[-v14];
  v16 = *(v1 + *(v13 + 56));

  v18 = sub_1D1C3EB9C(v17);
  v19 = sub_1D1784388(v18);

  if (*(v19 + 16) < 2uLL)
  {
  }

  else
  {
    v46 = a1;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D1E6709C();
    __swift_project_value_buffer(v20, qword_1EE07B5D8);
    sub_1D1C53710(v1, v15, type metadata accessor for StaticServiceGroup);
    sub_1D1C53710(v1, v12, type metadata accessor for StaticServiceGroup);

    v21 = sub_1D1E6707C();
    v22 = sub_1D1E6833C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47[0] = v45;
      *v23 = 136315650;
      v24 = &v15[*(v9 + 20)];
      v44 = v21;
      v25 = *v24;
      v26 = v24[1];

      v43 = v22;
      sub_1D1C53778(v15, type metadata accessor for StaticServiceGroup);
      v27 = sub_1D1B1312C(v25, v26, v47);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      sub_1D1E66A7C();
      sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v28 = sub_1D1E68FAC();
      v30 = v29;
      sub_1D1C53778(v12, type metadata accessor for StaticServiceGroup);
      v31 = sub_1D1B1312C(v28, v30, v47);

      *(v23 + 14) = v31;
      *(v23 + 22) = 2080;
      sub_1D1785814();
      v32 = sub_1D1E6817C();
      v34 = v33;

      v35 = sub_1D1B1312C(v32, v34, v47);

      *(v23 + 24) = v35;
      v36 = v44;
      _os_log_impl(&dword_1D16EC000, v44, v43, "Service group %s %s has multiple service kinds: %s", v23, 0x20u);
      v37 = v45;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v37, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D1C53778(v12, type metadata accessor for StaticServiceGroup);
      sub_1D1C53778(v15, type metadata accessor for StaticServiceGroup);
    }

    a1 = v46;
  }

  sub_1D1771E98(v16, v8);
  v38 = type metadata accessor for StaticService(0);
  v39 = *(*(v38 - 8) + 48);
  if (v39(v8, 1, v38) == 1)
  {
    sub_1D1741A30(v8, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  else
  {
    v40 = v8[*(v38 + 112)];
    sub_1D1C53778(v8, type metadata accessor for StaticService);
    if (v40 != 53)
    {

      goto LABEL_16;
    }
  }

  sub_1D1771E98(v16, v6);

  if (v39(v6, 1, v38) == 1)
  {
    result = sub_1D1741A30(v6, &qword_1EC6436F0, &qword_1D1E99BC0);
    LOBYTE(v40) = 0;
  }

  else
  {
    LOBYTE(v40) = v6[*(v38 + 104)];
    result = sub_1D1C53778(v6, type metadata accessor for StaticService);
  }

LABEL_16:
  *a1 = v40;
  return result;
}

uint64_t StaticServiceGroup.tileIcon.getter@<X0>(__int128 *a1@<X8>)
{
  v55 = a1;
  v1 = type metadata accessor for StaticService(0);
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = StaticServiceGroup.sortedStaticServices.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    v79 = MEMORY[0x1E69E7CC0];
    v7 = v5;
    sub_1D178D818(0, v6, 0);
    v8 = v79;
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v54 = v7;
    v10 = v7 + v9;
    v11 = *(v2 + 72);
    v59 = v1;
    v60 = v11;
    v56 = 0x80000001D1EBD590;
    v12 = v6 - 1;
    v58 = v4;
    while (1)
    {
      sub_1D1C53710(v10, v4, type metadata accessor for StaticService);
      v13 = &v4[v1[25]];
      v14 = v13[1];
      if (v14)
      {
        v65 = v12;
        v15 = *v13;

        v16._countAndFlagsBits = v15;
        v16._object = v14;
        IconSymbol.init(rawValue:)(v16);
        v17 = v68;
        v66 = v10;
        v61 = v8;
        if (v68 == 92)
        {
          if (qword_1EC642238 != -1)
          {
            swift_once();
          }

          v73 = xmmword_1EC646768;
          v74 = xmmword_1EC646778;
          v75 = *&qword_1EC646788;
          name = xmmword_1EC646798;
          v77[0] = xmmword_1EC6467A8;
          *(v77 + 9) = *(&xmmword_1EC6467A8 + 9);
          v67 = *(&xmmword_1EC646768 + 1);
          v64 = xmmword_1EC646778;
          *(v71 + 3) = DWORD1(xmmword_1EC646778);
          v71[0] = *(&xmmword_1EC646778 + 1);
          v18 = qword_1EC646788;
          v62 = *(&xmmword_1EC646778 + 1);
          v63 = xmmword_1EC646768;
          v19 = byte_1EC646790;
          *(v70 + 3) = dword_1EC646794;
          v70[0] = *algn_1EC646791;
          v21 = *(&xmmword_1EC646798 + 1);
          v20 = xmmword_1EC646798;
          v22 = xmmword_1EC6467A8;
          *(v69 + 3) = DWORD1(xmmword_1EC6467A8);
          v69[0] = *(&xmmword_1EC6467A8 + 1);
          v23 = *(&v77[0] + 1);
          v24 = (*(&xmmword_1EC6467A8 + 9) >> 56);
          v25 = byte_1EC6467C0;
          sub_1D18A9844(&v73, v72);
          v26 = v64;
          v27 = v63;
        }

        else
        {
          LOBYTE(v73._countAndFlagsBits) = v68;
          v29 = IconSymbol.onStateSymbolName.getter();
          v67 = v30;
          v31 = 2;
          v63 = v29;
          if ((v17 - 26) <= 0x2D && ((1 << (v17 - 26)) & 0x200000000181) != 0)
          {
            v31 = 0;
          }

          v64 = v31;
          LOBYTE(v73._countAndFlagsBits) = v17;
          v62 = IconSymbol.rawValue.getter();
          v18 = v32;
          if ((v17 - 41) < 7 || v17 == 27)
          {
            v33 = 2;
          }

          else
          {
            v33 = 0;
          }

          v57 = v33;
          if (v17 == 31)
          {
            v25 = HomeDataModel_StaticRenderingMode_hierarchical;
            v23 = 0xD000000000000014;
            v24 = v56;
          }

          else
          {
            v34 = v32;
            LOBYTE(v73._countAndFlagsBits) = v17;
            v23 = IconSymbol.rawValue.getter();
            v24 = v35;
            if ((v17 - 41) < 7 || v17 == 27)
            {
              v25 = HomeDataModel_StaticRenderingMode_monochrome;
            }

            else
            {
              v25 = HomeDataModel_StaticRenderingMode_hierarchical;
            }

            v18 = v34;
          }

          v21 = v67;

          v27 = v63;
          v20 = v63;
          v26 = v64;
          v22 = v64;
          v19 = v57;
        }

        *(&v78.tileOnStateIconInfo.renderingMode + 1) = v71[0];
        *(&v78.tileOnStateIconInfo.renderingMode + 1) = *(v71 + 3);
        *(&v78.tileOffStateIconInfo.renderingMode + 1) = v70[0];
        *(&v78.tileOffStateIconInfo.renderingMode + 1) = *(v70 + 3);
        *(&v78.accessoryControlOnStateIconInfo.renderingMode + 1) = v69[0];
        *(&v78.accessoryControlOnStateIconInfo.renderingMode + 1) = *(v69 + 3);
        v78.tileOnStateIconInfo.name._countAndFlagsBits = v27;
        v78.tileOnStateIconInfo.name._object = v67;
        v78.tileOnStateIconInfo.renderingMode = v26;
        v78.tileOffStateIconInfo.name._countAndFlagsBits = v62;
        v78.tileOffStateIconInfo.name._object = v18;
        v78.tileOffStateIconInfo.renderingMode = v19;
        v78.accessoryControlOnStateIconInfo.name._countAndFlagsBits = v20;
        v78.accessoryControlOnStateIconInfo.name._object = v21;
        v78.accessoryControlOnStateIconInfo.renderingMode = v22;
        v78.accessoryControlOffStateIconInfo.name._countAndFlagsBits = v23;
        v78.accessoryControlOffStateIconInfo.name._object = v24;
        v78.accessoryControlOffStateIconInfo.renderingMode = v25;
        v4 = v58;
        v1 = v59;
        v12 = v65;
        v10 = v66;
        v8 = v61;
      }

      else
      {
        v28 = v4[v1[28]];
        if (v28 == 53)
        {
          LOBYTE(v28) = v4[v1[26]];
        }

        LOBYTE(v73._countAndFlagsBits) = v28;
        v72[0] = v4[v1[27]];
        Icon.init(serviceKind:serviceSubKind:)(&v78, &v73, v72);
      }

      name = v78.accessoryControlOnStateIconInfo.name;
      v77[0] = *&v78.accessoryControlOnStateIconInfo.renderingMode;
      *(v77 + 9) = *(&v78.accessoryControlOffStateIconInfo.name + 1);
      v73 = v78.tileOnStateIconInfo.name;
      v74 = *&v78.tileOnStateIconInfo.renderingMode;
      v75 = *&v78.tileOffStateIconInfo.name._object;
      sub_1D1C53778(v4, type metadata accessor for StaticService);
      v79 = v8;
      v37 = *(v8 + 16);
      v36 = *(v8 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D178D818((v36 > 1), v37 + 1, 1);
        v8 = v79;
      }

      *(v8 + 16) = v37 + 1;
      v38 = (v8 + 96 * v37);
      v39 = v74;
      v38[2] = v73;
      v38[3] = v39;
      v40 = v75;
      v41 = name;
      v42 = v77[0];
      *(v38 + 105) = *(v77 + 9);
      v38[5] = v41;
      v38[6] = v42;
      v38[4] = v40;
      if (!v12)
      {
        break;
      }

      --v12;
      v10 += v60;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1C47328(v8, &v78);

  object = v78.tileOnStateIconInfo.name._object;
  if (v78.tileOnStateIconInfo.name._object)
  {
    v45 = v55;
    *v55 = v78.tileOnStateIconInfo.name._countAndFlagsBits;
    *(v45 + 1) = object;
    v46 = *&v78.tileOffStateIconInfo.name._object;
    v47 = *&v78.accessoryControlOnStateIconInfo.renderingMode;
    v45[3] = v78.accessoryControlOnStateIconInfo.name;
    v45[4] = v47;
    *(v45 + 73) = *(&v78.accessoryControlOffStateIconInfo.name + 1);
    v45[1] = *&v78.tileOnStateIconInfo.renderingMode;
    v45[2] = v46;
  }

  else
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v48 = *&qword_1EC646788;
    v49 = xmmword_1EC6467A8;
    name = xmmword_1EC646798;
    v77[0] = xmmword_1EC6467A8;
    v50 = *(&xmmword_1EC6467A8 + 9);
    *(v77 + 9) = *(&xmmword_1EC6467A8 + 9);
    v51 = xmmword_1EC646768;
    v52 = xmmword_1EC646778;
    v73 = xmmword_1EC646768;
    v74 = xmmword_1EC646778;
    v75 = *&qword_1EC646788;
    v53 = v55;
    v55[3] = xmmword_1EC646798;
    v53[4] = v49;
    v53[1] = v52;
    v53[2] = v48;
    *(v53 + 73) = v50;
    *v53 = v51;
    return sub_1D18A9844(&v73, v72);
  }

  return result;
}

uint64_t StaticServiceGroup.sortedStaticServices.getter()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v1 = *(v29 - 8);
  v2 = MEMORY[0x1EEE9AC00](v29);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v28 = v25 - v5;
  v6 = type metadata accessor for StaticService(0);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + *(type metadata accessor for StaticServiceGroup(0) + 56));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_1D18041C0(*(v9 + 16), 0);
    v12 = sub_1D18046C0(v30, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v10, v9);
    v13 = v30[0];
    v25[1] = v30[4];
    v26 = v30[3];
    swift_bridgeObjectRetain_n();
    sub_1D1716918(v13);
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v30[0] = v11;
  sub_1D1C4F9D0(v30);

  v14 = v30[0];
  v15 = *(v30[0] + 16);
  if (v15)
  {
    v30[0] = MEMORY[0x1E69E7CC0];
    sub_1D17915E0(0, v15, 0);
    v16 = v30[0];
    v17 = *(v1 + 80);
    v26 = v14;
    v18 = v14 + ((v17 + 32) & ~v17);
    v19 = *(v1 + 72);
    do
    {
      v20 = v28;
      sub_1D1741C08(v18, v28, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1741A90(v20, v4, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1C5381C(&v4[*(v29 + 48)], v8, type metadata accessor for StaticService);
      v21 = sub_1D1E66A7C();
      (*(*(v21 - 8) + 8))(v4, v21);
      v30[0] = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D17915E0(v22 > 1, v23 + 1, 1);
        v16 = v30[0];
      }

      *(v16 + 16) = v23 + 1;
      sub_1D1C5381C(v8, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for StaticService);
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

void sub_1D1C4715C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D18F9944(a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AB50]);
  v5 = sub_1D1E67BFC();

  v6 = [v4 initWithArray_];

  v7 = *(a1 + 16);
  if (v7)
  {
    v24 = v6;
    v25 = 0;
    v20 = a2;
    v8 = 0;
    v22 = 0;
    v23 = 0;
    v9 = (a1 + 56);
    v21 = 1;
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 16);
      v12 = *(v9 - 15);
      v13 = *(v9 - 1);
      v14 = *v9;
      v26 = *(v9 - 16);
      sub_1D18F098C(v10, v26);

      sub_1D18F098C(v10, v26);

      v15 = [v24 countForObject_];
      swift_unknownObjectRelease();
      if (v8 < v15)
      {
        sub_1D1C537D8(v25, v22, v23, v21);
        v8 = v15;
        v25 = v10;
        v21 = v14;
        v22 = v11 | (v12 << 8);
        v23 = v13;
      }

      else
      {
        sub_1D1820F58(v10, v11);
      }

      v9 += 4;
      --v7;
    }

    while (v7);

    a2 = v20;
    v16 = v21;
    v17 = v25;
    v19 = v22;
    v18 = v23;
  }

  else
  {

    v17 = 0;
    v19 = 0;
    v18 = 0;
    v16 = 1;
  }

  *a2 = v17;
  a2[1] = v19;
  a2[2] = v18;
  a2[3] = v16;
}

void sub_1D1C47328(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D18F9A64(a1);
  v4 = objc_allocWithZone(MEMORY[0x1E696AB50]);
  v5 = sub_1D1E67BFC();

  v6 = [v4 initWithArray_];

  v7 = *(a1 + 16);
  if (v7)
  {
    v31 = a2;
    v32 = v6;
    v8 = (a1 + 32);
    v50 = 0u;
    memset(v51, 0, 25);
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v33 = 0;
    v35 = v7 - 1;
    while (1)
    {
      v9 = v8[3];
      v10 = v8[1];
      v44 = v8[2];
      v45 = v9;
      v11 = v8[3];
      v46[0] = v8[4];
      *(v46 + 9) = *(v8 + 73);
      v12 = v8[1];
      v43[0] = *v8;
      v43[1] = v12;
      v40 = v44;
      v41 = v11;
      v42[0] = v8[4];
      *(v42 + 9) = *(v8 + 73);
      v38 = v43[0];
      v39 = v10;
      sub_1D18A9844(v43, v37);
      sub_1D18A9844(v43, v37);
      v13 = [v6 countForObject_];
      swift_unknownObjectRelease();
      if (v33 >= v13)
      {
        sub_1D18A98A0(v43);
        v14 = &v47;
      }

      else
      {
        sub_1D1741A30(&v47, &qword_1EC64CBA8, &unk_1D1EA1D08);
        v14 = v43;
        v33 = v13;
      }

      v15 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = *(v14 + 4);
      v17 = *(v14 + 5);
      v20 = *(v14 + 6);
      v19 = *(v14 + 7);
      v22 = *(v14 + 8);
      v21 = *(v14 + 9);
      v23 = *(v14 + 10);
      v24 = *(v14 + 88);
      v25 = *v14;
      v26 = *(v14 + 1);
      if (!v35)
      {
        break;
      }

      *&v47 = *v14;
      *(&v47 + 1) = v26;
      *&v48 = v15;
      *(&v48 + 1) = v16;
      *&v49 = v18;
      *(&v49 + 1) = v17;
      *&v50 = v20;
      *(&v50 + 1) = v19;
      v51[0] = v22;
      v51[1] = v21;
      v51[2] = v23;
      --v35;
      v8 += 6;
      LOBYTE(v51[3]) = v24;
      v6 = v32;
    }

    v36 = *(v14 + 88);
    v27 = *(v14 + 10);
    v34 = *(v14 + 9);

    v28 = v34;
    v29 = v27;
    v30 = v36;
    a2 = v31;
  }

  else
  {

    v30 = 0;
    v29 = 0;
    v28 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = 0;
    v26 = 0;
    v25 = 0;
  }

  *a2 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20;
  *(a2 + 56) = v19;
  *(a2 + 64) = v22;
  *(a2 + 72) = v28;
  *(a2 + 80) = v29;
  *(a2 + 88) = v30;
}

void Array.mostCommon.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v24 - v10;
  sub_1D1E68AAC();
  v11 = objc_allocWithZone(MEMORY[0x1E696AB50]);
  v12 = sub_1D1E67BFC();

  v30 = [v11 initWithArray_];

  v13 = *(v6 + 56);
  v27 = v6 + 56;
  v28 = a3;
  v26 = v13;
  v13(a3, 1, 1, a2);
  if (sub_1D1E67CBC())
  {
    v14 = 0;
    v31 = 0;
    v29 = (v6 + 16);
    v15 = (v6 + 32);
    v25 = (v6 + 8);
    while (1)
    {
      v16 = sub_1D1E67C9C();
      sub_1D1E67C4C();
      if (v16)
      {
        (*(v6 + 16))(v32, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, a2);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = sub_1D1E688AC();
        if (v24 != 8)
        {
          __break(1u);
          return;
        }

        v33 = v22;
        (*v29)(v32, &v33, a2);
        swift_unknownObjectRelease();
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:

          return;
        }
      }

      v18 = *v15;
      (*v15)(v9, v32, a2);
      v19 = [v30 countForObject_];
      swift_unknownObjectRelease();
      if (v31 >= v19)
      {
        (*v25)(v9, a2);
      }

      else
      {
        v20 = sub_1D1E685AC();
        v21 = v28;
        (*(*(v20 - 8) + 8))(v28, v20);
        v18(v21, v9, a2);
        v26(v21, 0, 1, a2);
        v31 = v19;
      }

      ++v14;
      if (v17 == sub_1D1E67CBC())
      {
        goto LABEL_13;
      }
    }
  }

  v23 = v30;
}

uint64_t sub_1D1C47960(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = StaticServiceGroup.sortedStaticServices.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      v11 = sub_1D1C53710(v9, v5, type metadata accessor for StaticService);
      if (v8)
      {
        v8 = 1;
      }

      else
      {
        v8 = a1(v11);
      }

      sub_1D1C53778(v5, type metadata accessor for StaticService);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t StaticServiceGroup.canBeToggled.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v77 = &v70 - v5;
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + *(type metadata accessor for StaticServiceGroup(0) + 56));
  v11 = v6;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v76 = "00-8000-0026BB765291";
  v80 = 0x80000001D1EB3340;
  v75 = "00-8000-0026BB765291";
  v79 = 0x80000001D1EB3550;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  v83 = "takeSnaphotsWhenBusy";
  while (1)
  {
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v18 >= v16)
          {

            v67 = 1;
            goto LABEL_173;
          }

          v15 = *(v12 + 8 * v18);
          ++v17;
          if (v15)
          {
            v17 = v18;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_175:
        v69 = type metadata accessor for StaticCharacteristic(0);
        v53 = v74;
        (*(*(v69 - 8) + 56))(v74, 1, 1, v69);
LABEL_176:
        sub_1D1C53778(v9, type metadata accessor for StaticService);

        sub_1D1741A30(v53, &qword_1EC643630, &qword_1D1E71D10);
        v67 = 0;
        goto LABEL_173;
      }

LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1D1C53710(*(v10 + 56) + *(v7 + 72) * (v19 | (v17 << 6)), v9, type metadata accessor for StaticService);
      v20 = v9[*(v11 + 104)];
      v21 = v20 > 0x30 || ((1 << v20) & 0x1964490330008) == 0;
      if (v21)
      {
        break;
      }

LABEL_14:
      sub_1D1C53778(v9, type metadata accessor for StaticService);
    }

    v71 = *(v11 + 104);
    v73 = v11;
    if (qword_1EC642230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = *(off_1EC646318 + 2);
    v72 = v10;
    v74 = v4;
    v70 = v7;
    if (v22)
    {
      v82 = off_1EC646318;
      sub_1D1E6920C();
      v84 = v20;
      ServiceKind.rawValue.getter();

      sub_1D1E678EC();

      v23 = sub_1D1E6926C();
      v24 = v82;
      v25 = -1 << v82[32];
      v26 = v23 & ~v25;
      v81 = v82 + 56;
      if ((*&v82[((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v26))
      {
        v78 = ~v25;
        while (1)
        {
          v27 = v83;
          switch(*(v24[6] + v26))
          {
            case 1:
              v28 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 2:
              v28 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 3:
              v28 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 4:
              v28 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 5:
              v28 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 6:
              v28 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 7:
              v28 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 8:
              v28 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 9:
              v28 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xA:
              v28 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xB:
              v28 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xC:
              v28 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xD:
              v28 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xE:
              v28 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0xF:
              v28 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x10:
              v28 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x11:
              v28 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x12:
              v28 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x13:
              v28 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x14:
              v28 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x15:
              v28 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x16:
              v28 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x17:
              v28 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x18:
              v28 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x19:
              v28 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1A:
              v28 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1B:
              v28 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1C:
              v28 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1D:
              v28 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1E:
              v28 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x1F:
              v28 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x20:
              v28 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x21:
              v28 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x22:
              v28 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x23:
              v27 = v76;
              break;
            case 0x24:
              v28 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x25:
              v28 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x26:
              v28 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x27:
              v28 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x28:
              v28 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x29:
              v28 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2A:
              v28 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2B:
              v28 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2C:
              v28 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2D:
              v28 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x2E:
              v27 = v75;
              break;
            case 0x2F:
              v28 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x30:
              v28 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x31:
              v28 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x32:
              v28 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x33:
              v28 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_73;
            case 0x34:
              v28 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_73:
              v27 = v28 - 32;
              break;
            default:
              break;
          }

          v29 = v27 | 0x8000000000000000;
          v30 = v83;
          switch(v20)
          {
            case 1u:
              v31 = "0000003E-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 2u:
              v31 = "00000270-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 3u:
              v31 = "000000BB-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 4u:
              v31 = "0000008D-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 5u:
              v31 = "00000096-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 6u:
              v31 = "00000042-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 7u:
              v31 = "00000110-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 8u:
              v31 = "00000204-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 9u:
              v31 = "00000097-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xAu:
              v31 = "0000007F-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xBu:
              v31 = "00000080-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xCu:
              v31 = "00000129-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xDu:
              v31 = "00000237-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xEu:
              v31 = "00000081-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0xFu:
              v31 = "00000121-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x10u:
              v31 = "00000040-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x11u:
              v31 = "000000D7-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x12u:
              v31 = "000000BA-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x13u:
              v31 = "00000041-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x14u:
              v31 = "000000BC-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x15u:
              v31 = "000000BD-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x16u:
              v31 = "00000082-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x17u:
              v31 = "000000D9-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x18u:
              v31 = "000000CF-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x19u:
              v31 = "000000CC-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Au:
              v31 = "00000083-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Bu:
              v31 = "00000084-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Cu:
              v31 = "00000043-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Du:
              v31 = "00000044-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Eu:
              v31 = "00000045-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x1Fu:
              v31 = "00000112-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x20u:
              v31 = "00000085-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x21u:
              v31 = "00000086-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x22u:
              v31 = "00000047-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x23u:
              v30 = v76;
              break;
            case 0x24u:
              v31 = "000000B9-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x25u:
              v31 = "00000087-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x26u:
              v31 = "00000113-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x27u:
              v31 = "00000088-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x28u:
              v31 = "00000089-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x29u:
              v31 = "00000049-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Au:
              v31 = "00000125-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Bu:
              v31 = "00000122-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Cu:
              v31 = "000000D8-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Du:
              v31 = "0000008A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x2Eu:
              v30 = v75;
              break;
            case 0x2Fu:
              v31 = "000000D0-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x30u:
              v31 = "000000B7-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x31u:
              v31 = "0000020A-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x32u:
              v31 = "0000020F-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x33u:
              v31 = "0000008B-0000-1000-8000-0026BB765291";
              goto LABEL_127;
            case 0x34u:
              v31 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_127:
              v30 = v31 - 32;
              break;
            default:
              break;
          }

          if (v29 == (v30 | 0x8000000000000000))
          {
            break;
          }

          v32 = sub_1D1E6904C();

          if (v32)
          {
            goto LABEL_170;
          }

          v26 = (v26 + 1) & v78;
          v24 = v82;
          if (((*&v81[(v26 >> 3) & 0xFFFFFFFFFFFFFF8] >> v26) & 1) == 0)
          {
            goto LABEL_131;
          }
        }

LABEL_170:

        v10 = v72;
        v4 = v74;
        v11 = v73;
        v7 = v70;
        goto LABEL_14;
      }

LABEL_131:

      v10 = v72;
    }

    LOBYTE(v85[0]) = v9[v71];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v80 == v33)
    {
    }

    else
    {
      v34 = sub_1D1E6904C();

      if ((v34 & 1) == 0)
      {
        goto LABEL_143;
      }
    }

    v35 = *&v9[*(v73 + 128)];
    if (!*(v35 + 16))
    {
      v43 = type metadata accessor for StaticCharacteristic(0);
      v42 = v77;
      (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
LABEL_142:
      sub_1D1741A30(v42, &qword_1EC643630, &qword_1D1E71D10);
      goto LABEL_143;
    }

    v36 = sub_1D171D140(160);
    if (v37)
    {
      v38 = v36;
      v82 = *(v35 + 56);
      v39 = type metadata accessor for StaticCharacteristic(0);
      v40 = *(v39 - 8);
      v41 = &v82[*(v40 + 72) * v38];
      v42 = v77;
      sub_1D1C53710(v41, v77, type metadata accessor for StaticCharacteristic);
      (*(v40 + 56))(v42, 0, 1, v39);
      v10 = v72;
    }

    else
    {
      v39 = type metadata accessor for StaticCharacteristic(0);
      v42 = v77;
      (*(*(v39 - 8) + 56))(v77, 1, 1, v39);
    }

    type metadata accessor for StaticCharacteristic(0);
    if ((*(*(v39 - 8) + 48))(v42, 1, v39) == 1)
    {
      goto LABEL_142;
    }

    v62 = v42 + *(v39 + 44);
    v63 = *v62;
    v64 = *(v62 + 16);
    v65 = *(v62 + 24);
    v59 = *(v62 + 32);
    v81 = *(v62 + 8);
    v82 = v63;
    sub_1D18F323C(v63, v81, v64, v65, v59);
    sub_1D1C53778(v42, type metadata accessor for StaticCharacteristic);
    if (v65 >> 8 != 0xFFFFFFFF)
    {
      if (!(v65 >> 62))
      {
        if (!v59)
        {
          if (v64 <= 1)
          {
            v66 = 1;
          }

          else
          {
            v66 = v64;
          }

          v59 = sub_1D1C279CC(v81, v82, v66);
        }

        goto LABEL_160;
      }

      sub_1D18F3260(v82, v81, v64, v65, v59);
    }

LABEL_143:
    LOBYTE(v85[0]) = v9[v71];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v79 == v44)
    {
    }

    else
    {
      v45 = sub_1D1E6904C();

      if ((v45 & 1) == 0)
      {
        break;
      }
    }

    v46 = *&v9[*(v73 + 128)];
    if (!*(v46 + 16))
    {
      goto LABEL_175;
    }

    v47 = sub_1D171D140(152);
    if (v48)
    {
      v49 = v47;
      v82 = *(v46 + 56);
      v50 = type metadata accessor for StaticCharacteristic(0);
      v51 = *(v50 - 8);
      v52 = &v82[*(v51 + 72) * v49];
      v53 = v74;
      sub_1D1C53710(v52, v74, type metadata accessor for StaticCharacteristic);
      (*(v51 + 56))(v53, 0, 1, v50);
    }

    else
    {
      v50 = type metadata accessor for StaticCharacteristic(0);
      v53 = v74;
      (*(*(v50 - 8) + 56))(v74, 1, 1, v50);
    }

    type metadata accessor for StaticCharacteristic(0);
    if ((*(*(v50 - 8) + 48))(v53, 1, v50) == 1)
    {
      goto LABEL_176;
    }

    v54 = (v53 + *(v50 + 44));
    v56 = *v54;
    v55 = v54[1];
    v58 = v54[2];
    v57 = v54[3];
    v59 = v54[4];
    sub_1D18F323C(*v54, v55, v58, v57, v59);
    sub_1D1C53778(v74, type metadata accessor for StaticCharacteristic);
    if (v57 >> 8 == 0xFFFFFFFF)
    {
      break;
    }

    if (v57 >> 62)
    {
      sub_1D18F3260(v56, v55, v58, v57, v59);

      sub_1D1C53778(v9, type metadata accessor for StaticService);
      v67 = 0;
      goto LABEL_173;
    }

    if (!v59)
    {
      if (v58 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = v58;
      }

      v59 = sub_1D1C279CC(v55, v56, v60);
    }

    v10 = v72;
LABEL_160:
    v7 = v70;
    sub_1D1C53778(v9, type metadata accessor for StaticService);
    v61 = v59[2];

    v21 = v61 == 2;
    v4 = v74;
    v11 = v73;
    if (!v21)
    {
      goto LABEL_180;
    }
  }

  sub_1D1C53778(v9, type metadata accessor for StaticService);
LABEL_180:

  v67 = 0;
LABEL_173:

  return v67;
}

uint64_t StaticServiceGroup.toggle()(uint64_t a1)
{
  *(v1 + 48) = 2;
  *(v1 + 16) = xmmword_1D1E88490;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D186C9D4;

  return StaticServiceGroup.toggle(options:context:)(a1, (v1 + 48), (v1 + 16));
}

uint64_t sub_1D1C48BD4()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = StaticServiceGroup.sortedStaticServices.getter();
  if (*(v4 + 16))
  {
    sub_1D1C53710(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for StaticService);

    v5 = v3[*(v0 + 28)];
    sub_1D1C53778(v3, type metadata accessor for StaticService);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t StaticServiceGroup.isDoubleHigh.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = StaticServiceGroup.sortedStaticServices.getter();
  if (*(v4 + 16))
  {
    sub_1D1C53710(v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for StaticService);

    v5 = v3[*(v0 + 28)];
    sub_1D1C53778(v3, type metadata accessor for StaticService);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1D1C48E04(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

void StaticServiceGroup.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v3 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v52 = &v43 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v43 - v7;
  v8 = StaticServiceGroup.sortedStaticServices.getter();
  v58 = a1;
  v9 = sub_1D1C92604(0, 0, sub_1D1C52EB4, v57, v8);
  v11 = v10;

  v12 = type metadata accessor for StaticServiceGroup(0);
  if (*(v1 + v12[6]) == 1)
  {
    v45 = v11;
    v46 = v9;
    v48 = a1;
    v44 = v12;
    v13 = v12[14];
    v47 = v1;
    v14 = *(v1 + v13);
    v15 = *(v14 + 64);
    v49 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v50 = v14;

    v20 = 0;
    v21 = v54;
    while (v18)
    {
      v22 = v20;
LABEL_11:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v22 << 6);
      v25 = v50;
      v26 = *(v50 + 48);
      v27 = sub_1D1E66A7C();
      v28 = *(v27 - 8);
      v55 = v27;
      v56 = v28;
      v29 = v51;
      (*(v28 + 16))(v51, v26 + *(v28 + 72) * v24, v27);
      v30 = *(v25 + 56);
      v31 = (type metadata accessor for StaticService(0) - 8);
      sub_1D1C53710(v30 + *(*v31 + 72) * v24, v29 + *(v21 + 48), type metadata accessor for StaticService);
      v32 = v52;
      sub_1D1741C08(v29, v52, &qword_1EC642DB0, &unk_1D1E6F360);
      v33 = v32 + *(v21 + 48);
      v34 = *(v33 + v31[34]);

      sub_1D1C53778(v33, type metadata accessor for StaticService);
      *&v62[0] = v34;
      v35 = v53;
      sub_1D1741C08(v29, v53, &qword_1EC642DB0, &unk_1D1E6F360);
      v36 = v35 + *(v21 + 48);
      LOBYTE(v34) = *(v36 + v31[28]);
      sub_1D1C53778(v36, type metadata accessor for StaticService);
      LOBYTE(v59) = v34;
      LOBYTE(v34) = StaticCharacteristicsBag.isReachable(for:)(&v59);

      sub_1D1741A30(v29, &qword_1EC642DB0, &unk_1D1E6F360);
      v37 = v55;
      v38 = *(v56 + 8);
      v38(v35, v55);
      v38(v32, v37);
      if ((v34 & 1) == 0)
      {
        v39 = 0;
LABEL_15:

        a1 = v48;
        v1 = v47;
        v9 = v46;
        v11 = v45;
        v12 = v44;
        goto LABEL_16;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v39 = 1;
        goto LABEL_15;
      }

      v18 = *(v49 + 8 * v22);
      ++v20;
      if (v18)
      {
        v20 = v22;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = 0;
LABEL_16:
    v40 = *(v1 + v12[7]);
    v41 = StaticServiceGroup.isUpdating.getter() & 1;
    LOBYTE(v62[0]) = a1[4];
    v42 = StaticServiceGroup.stateStatusString(context:)(v62);
    LOBYTE(v59) = v39;
    BYTE1(v59) = v40;
    WORD1(v59) = 514;
    BYTE4(v59) = v41;
    *(&v59 + 1) = v42.value._countAndFlagsBits;
    *&v60 = v42.value._object;
    *(&v60 + 1) = v9;
    v61 = v11;
    StatusStrings.string(for:)(a1);
    v62[0] = v59;
    v62[1] = v60;
    v63 = v61;
    sub_1D1A46590(v62);
  }
}

uint64_t sub_1D1C492E8(uint64_t a1)
{
  *(v1 + 48) = 2;
  *(v1 + 16) = xmmword_1D1E88490;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D186E3E4;

  return StaticServiceGroup.toggle(options:context:)(a1, (v1 + 48), (v1 + 16));
}

uint64_t sub_1D1C493B4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A44134;

  return StaticServiceGroup.set(showInDashboard:)(a1);
}

uint64_t sub_1D1C49448(uint64_t a1)
{
  v2 = a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A08578;

  return StaticServiceGroup.set(includeInStatus:)(v2);
}

uint64_t StaticServiceGroup.set(includeInStatus:)(char a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C4956C;

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C4956C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C4966C, 0, 0);
}

uint64_t sub_1D1C4966C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v19 = *(v0 + 72);
    v2 = [v1 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v3 = sub_1D1E67C1C();

    if (v3 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = *(v0 + 80);
        v10 = [v6 applicationData];
        v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v12 = sub_1D1E677EC();
        [v10 setObject:v11 forKeyedSubscript:v12];

        v13 = [v7 applicationData];
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        *(v0 + 48) = sub_1D1C52DA4;
        *(v0 + 56) = v14;
        *(v0 + 16) = MEMORY[0x1E69E9820];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_1D1C40BA8;
        *(v0 + 40) = &block_descriptor_29;
        v15 = _Block_copy((v0 + 16));
        v16 = v7;

        [v16 updateApplicationData:v13 completionHandler:v15];
        _Block_release(v15);

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  v17 = *(v0 + 8);

  return v17();
}

double sub_1D1C49944@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    v6 = v4;
  }

  else
  {
    v8 = *(a2 + 4);
    v5 = sub_1D1C38C04(&v8);
  }

  *a3 = v5;
  a3[1] = v6;

  return result;
}

uint64_t StaticServiceGroup.isUpdating.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = StaticServiceGroup.sortedStaticServices.getter();
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  while (1)
  {
    v8 = v6;
    if (v7 == v6)
    {
LABEL_5:

      return v7 != v8;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    sub_1D1C53710(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6++, v3, type metadata accessor for StaticService);
    v13 = *&v3[*(v0 + 128)];
    v12[7] = v3[*(v0 + 104)];

    v9 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
    StaticCharacteristicsBag.isUpdating(for:)(v9);
    v11 = v10;

    result = sub_1D1C53778(v3, type metadata accessor for StaticService);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall StaticServiceGroup.stateStatusString(context:)(HomeDataModel::StatusContext context)
{
  v2 = context;
  v323 = type metadata accessor for StaticService(0);
  v320 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v323);
  v4 = &v295 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for StaticCharacteristic(0);
  v317 = *(v321 - 8);
  v5 = MEMORY[0x1EEE9AC00](v321);
  v7 = (&v295 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v295 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v295 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v304 = &v295 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v300 = &v295 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v303 = &v295 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v299 = &v295 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v302 = (&v295 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v308 = &v295 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v295 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v298 = &v295 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v301 = (&v295 - v31);
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v32 = MEMORY[0x1EEE9AC00](v322);
  v316 = (&v295 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x1EEE9AC00](v32);
  v315 = &v295 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v314 = (&v295 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v313 = (&v295 - v39);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v312 = (&v295 - v41);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v307 = &v295 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v311 = &v295 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v295 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v306 = &v295 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v310 = &v295 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v295 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v318 = &v295 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v319 = &v295 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v305 = &v295 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v309 = &v295 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v295 - v64;
  v66 = *v2;
  StaticServiceGroup.displayAsServiceKind.getter(v326);
  if (v326[0] <= 0x28u)
  {
    if (v326[0] != 16)
    {
      if (v326[0] != 28)
      {
        if (v326[0] != 34)
        {
          goto LABEL_144;
        }

        goto LABEL_54;
      }

      v208 = *(v1 + *(type metadata accessor for StaticServiceGroup(0) + 56));
      v209 = v208 + 64;
      v210 = 1 << *(v208 + 32);
      v211 = -1;
      if (v210 < 64)
      {
        v211 = ~(-1 << v210);
      }

      v212 = v211 & *(v208 + 64);
      v213 = (v210 + 63) >> 6;
      v313 = (v317 + 48);
      v314 = (v317 + 56);
      v315 = v208;

      v214 = 0;
      v319 = MEMORY[0x1E69E7CC0];
      if (!v212)
      {
LABEL_149:
        while (1)
        {
          v215 = v214 + 1;
          if (__OFADD__(v214, 1))
          {
            goto LABEL_248;
          }

          if (v215 >= v213)
          {

            v156 = _s13HomeDataModel13StaticServiceV15lightBulbString0fG6ValuesSSSgSaySbSg10powerState_SiSg10brightnesstG_tFZ_0(v319);
LABEL_241:
            countAndFlagsBits = v156;
            object = v157;
            goto LABEL_242;
          }

          v212 = *(v209 + 8 * v215);
          ++v214;
          if (v212)
          {
            v214 = v215;
            break;
          }
        }
      }

      while (1)
      {
        v216 = __clz(__rbit64(v212)) | (v214 << 6);
        v217 = v315;
        v218 = *(v315 + 48);
        v219 = sub_1D1E66A7C();
        v316 = *(v219 - 8);
        v220 = v218 + v316[9] * v216;
        v221 = v316[2];
        v318 = v219;
        v221(v65, v220);
        v222 = *(v217 + 56) + *(v320 + 72) * v216;
        v223 = v322;
        sub_1D1C53710(v222, &v65[*(v322 + 48)], type metadata accessor for StaticService);
        v224 = v309;
        sub_1D1741C08(v65, v309, &qword_1EC642DB0, &unk_1D1E6F360);
        v225 = v224 + *(v223 + 48);
        v226 = *(v225 + *(v323 + 128));
        if (*(v226 + 16))
        {
          v227 = sub_1D171D140(105);
          v228 = v298;
          if (v229)
          {
            sub_1D1C53710(*(v226 + 56) + *(v317 + 72) * v227, v301, type metadata accessor for StaticCharacteristic);
            v230 = 0;
          }

          else
          {
            v230 = 1;
          }
        }

        else
        {
          v230 = 1;
          v228 = v298;
        }

        v231 = v301;
        v232 = v321;
        (*v314)(v301, v230, 1, v321);
        sub_1D1741A90(v231, v228, &qword_1EC643630, &qword_1D1E71D10);
        isUniquelyReferenced_nonNull_native = (*v313)(v228, 1, v232);
        if (isUniquelyReferenced_nonNull_native != 1)
        {
          break;
        }

        sub_1D1741A30(v228, &qword_1EC643630, &qword_1D1E71D10);
        v233 = 2;
LABEL_181:
        sub_1D1C53778(v225, type metadata accessor for StaticService);
        v238 = v305;
        sub_1D1741C08(v65, v305, &qword_1EC642DB0, &unk_1D1E6F360);
        v239 = v238 + *(v322 + 48);
        v324 = *(v239 + *(v323 + 128));
        v325 = 12;
        v329 = StaticCharacteristicsBag.int(for:)(&v325);
        value = v329.value;
        is_nil = v329.is_nil;
        sub_1D1C53778(v239, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v319 = sub_1D177DB10(0, *(v319 + 2) + 1, 1, v319);
        }

        v243 = *(v319 + 2);
        v242 = *(v319 + 3);
        if (v243 >= v242 >> 1)
        {
          v319 = sub_1D177DB10((v242 > 1), v243 + 1, 1, v319);
        }

        v212 &= v212 - 1;
        sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
        v244 = v319;
        *(v319 + 2) = v243 + 1;
        v245 = &v244[24 * v243];
        v245[32] = v233;
        *(v245 + 5) = value;
        v245[48] = is_nil;
        v246 = v316[1];
        v247 = v318;
        v246(v305, v318);
        isUniquelyReferenced_nonNull_native = (v246)(v309, v247);
        if (!v212)
        {
          goto LABEL_149;
        }
      }

      v234 = v228 + *(v232 + 24);
      v235 = *v234;
      v236 = *(v234 + 16);
      v233 = 2;
      if (v236 <= 2)
      {
        if (v236)
        {
          if (v236 == 1)
          {
            v235 = v235;
          }

          else
          {
            v235 = v235;
          }

LABEL_174:
          if (v235 == 1)
          {
            v237 = 1;
          }

          else
          {
            v237 = 2;
          }

          if (v235)
          {
            v233 = v237;
          }

          else
          {
            v233 = 0;
          }

          goto LABEL_180;
        }

        v233 = v235 & 1;
      }

      else
      {
        if (v236 <= 4)
        {
          if (v236 == 3)
          {
            v235 = v235;
          }

          else if (v235 < 0)
          {
            goto LABEL_254;
          }

          goto LABEL_174;
        }

        if (v236 == 5 || v236 == 6)
        {
          v235 = v235;
          goto LABEL_174;
        }
      }

LABEL_180:
      sub_1D1C53778(v228, type metadata accessor for StaticCharacteristic);
      goto LABEL_181;
    }

    v312 = v9;
    v158 = *(v1 + *(type metadata accessor for StaticServiceGroup(0) + 56));
    v159 = v158 + 64;
    v160 = 1 << *(v158 + 32);
    v161 = -1;
    if (v160 < 64)
    {
      v161 = ~(-1 << v160);
    }

    v162 = v161 & *(v158 + 64);
    v163 = (v160 + 63) >> 6;
    v313 = (v317 + 48);
    v314 = (v317 + 56);
    v315 = v158;

    v164 = 0;
    v165 = MEMORY[0x1E69E7CC0];
    if (!v162)
    {
LABEL_98:
      while (1)
      {
        v166 = v164 + 1;
        if (__OFADD__(v164, 1))
        {
          break;
        }

        if (v166 >= v163)
        {
          goto LABEL_237;
        }

        v162 = *(v159 + 8 * v166);
        ++v164;
        if (v162)
        {
          v319 = v165;
          v164 = v166;
          goto LABEL_102;
        }
      }

LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
      goto LABEL_255;
    }

    while (1)
    {
      v319 = v165;
LABEL_102:
      v167 = __clz(__rbit64(v162)) | (v164 << 6);
      v168 = v315;
      v169 = *(v315 + 48);
      v170 = sub_1D1E66A7C();
      v316 = *(v170 - 8);
      v171 = v169 + v316[9] * v167;
      v172 = v316[2];
      v318 = v170;
      v172(v55, v171);
      v173 = *(v168 + 56) + *(v320 + 72) * v167;
      v174 = v322;
      sub_1D1C53710(v173, &v55[*(v322 + 48)], type metadata accessor for StaticService);
      v175 = v310;
      sub_1D1741C08(v55, v310, &qword_1EC642DB0, &unk_1D1E6F360);
      v176 = v175 + *(v174 + 48);
      v177 = *(v176 + *(v323 + 128));
      if (*(v177 + 16))
      {
        v178 = sub_1D171D140(105);
        v179 = v299;
        if (v180)
        {
          sub_1D1C53710(*(v177 + 56) + *(v317 + 72) * v178, v302, type metadata accessor for StaticCharacteristic);
          v181 = 0;
        }

        else
        {
          v181 = 1;
        }
      }

      else
      {
        v181 = 1;
        v179 = v299;
      }

      v182 = v302;
      v183 = v321;
      (*v314)(v302, v181, 1, v321);
      sub_1D1741A90(v182, v179, &qword_1EC643630, &qword_1D1E71D10);
      isUniquelyReferenced_nonNull_native = (*v313)(v179, 1, v183);
      if (isUniquelyReferenced_nonNull_native != 1)
      {
        break;
      }

      sub_1D1741A30(v179, &qword_1EC643630, &qword_1D1E71D10);
      v184 = 2;
      v165 = v319;
LABEL_130:
      sub_1D1C53778(v176, type metadata accessor for StaticService);
      v189 = v306;
      sub_1D1741C08(v55, v306, &qword_1EC642DB0, &unk_1D1E6F360);
      v190 = v189 + *(v322 + 48);
      v191 = *(v190 + *(v323 + 128));
      if (!*(v191 + 16))
      {
        goto LABEL_135;
      }

      v192 = sub_1D171D140(115);
      if ((v193 & 1) == 0)
      {
        goto LABEL_135;
      }

      v194 = v312;
      sub_1D1C53710(*(v191 + 56) + *(v317 + 72) * v192, v312, type metadata accessor for StaticCharacteristic);
      v195 = (v194 + *(v321 + 24));
      if (*(v195 + 16) != 7)
      {
        sub_1D1C53778(v194, type metadata accessor for StaticCharacteristic);
LABEL_135:
        v324 = v191;
        v325 = 115;
        v328 = StaticCharacteristicsBag.int(for:)(&v325);
        if (v328.is_nil)
        {
          v197 = 1;
          v196 = 0.0;
        }

        else
        {
          v197 = 0;
          v196 = v328.value;
        }

        goto LABEL_138;
      }

      v196 = *v195;
      sub_1D1C53778(v194, type metadata accessor for StaticCharacteristic);
      v197 = 0;
LABEL_138:
      sub_1D1C53778(v190, type metadata accessor for StaticService);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_1D177DAFC(0, *(v165 + 2) + 1, 1, v165);
      }

      v199 = *(v165 + 2);
      v198 = *(v165 + 3);
      if (v199 >= v198 >> 1)
      {
        v165 = sub_1D177DAFC((v198 > 1), v199 + 1, 1, v165);
      }

      v162 &= v162 - 1;
      sub_1D1741A30(v55, &qword_1EC642DB0, &unk_1D1E6F360);
      *(v165 + 2) = v199 + 1;
      v200 = &v165[24 * v199];
      v200[32] = v184;
      *(v200 + 5) = v196;
      v200[48] = v197;
      v201 = v316[1];
      v202 = v318;
      v201(v306, v318);
      isUniquelyReferenced_nonNull_native = (v201)(v310, v202);
      if (!v162)
      {
        goto LABEL_98;
      }
    }

    v185 = v179 + *(v183 + 24);
    v186 = *v185;
    v187 = *(v185 + 16);
    v184 = 2;
    v165 = v319;
    if (v187 <= 2)
    {
      if (v187)
      {
        if (v187 == 1)
        {
          v186 = v186;
        }

        else
        {
          v186 = v186;
        }

LABEL_123:
        if (v186 == 1)
        {
          v188 = 1;
        }

        else
        {
          v188 = 2;
        }

        if (v186)
        {
          v184 = v188;
        }

        else
        {
          v184 = 0;
        }

        goto LABEL_129;
      }

      v184 = v186 & 1;
    }

    else
    {
      if (v187 <= 4)
      {
        if (v187 == 3)
        {
          v186 = v186;
        }

        else if (v186 < 0)
        {
          goto LABEL_252;
        }

        goto LABEL_123;
      }

      if (v187 == 5 || v187 == 6)
      {
        v186 = v186;
        goto LABEL_123;
      }
    }

LABEL_129:
    sub_1D1C53778(v179, type metadata accessor for StaticCharacteristic);
    goto LABEL_130;
  }

  switch(v326[0])
  {
    case ')':
LABEL_54:
      v116 = *(v1 + *(type metadata accessor for StaticServiceGroup(0) + 56));
      v117 = v116 + 64;
      v118 = 1 << *(v116 + 32);
      v119 = -1;
      if (v118 < 64)
      {
        v119 = ~(-1 << v118);
      }

      v120 = v119 & *(v116 + 64);
      v121 = (v118 + 63) >> 6;
      v312 = (v317 + 48);
      v313 = (v317 + 56);
      v314 = v116;

      v122 = 0;
      v311 = MEMORY[0x1E69E7CC0];
      v123 = &qword_1EC642DB0;
      v124 = &qword_1EC643630;
      for (i = v28; v120; v155[v154 + 32] = v151 & 1)
      {
        while (1)
        {
          v125 = v124;
          v126 = v28;
          v127 = v123;
LABEL_62:
          v129 = __clz(__rbit64(v120)) | (v122 << 6);
          v130 = v314;
          v131 = v314[6];
          v132 = sub_1D1E66A7C();
          v315 = *(v132 - 1);
          v133 = v131 + *(v315 + 72) * v129;
          v134 = *(v315 + 16);
          v135 = v319;
          v316 = v132;
          v134(v319, v133);
          v136 = *(v130 + 56) + *(v320 + 72) * v129;
          v137 = v322;
          sub_1D1C53710(v136, &v135[*(v322 + 48)], type metadata accessor for StaticService);
          v138 = v135;
          v139 = v318;
          v123 = v127;
          sub_1D1741C08(v138, v318, v127, &unk_1D1E6F360);
          v140 = v139 + *(v137 + 48);
          v141 = *(v140 + *(v323 + 128));
          if (*(v141 + 16))
          {
            v142 = sub_1D171D140(105);
            v143 = v126;
            if (v144)
            {
              sub_1D1C53710(*(v141 + 56) + *(v317 + 72) * v142, v126, type metadata accessor for StaticCharacteristic);
              v145 = 0;
            }

            else
            {
              v145 = 1;
            }
          }

          else
          {
            v145 = 1;
            v143 = v126;
          }

          v124 = v125;
          v120 &= v120 - 1;
          sub_1D1741A30(v319, v123, &unk_1D1E6F360);
          v146 = v145;
          v147 = v321;
          (*v313)(v143, v146, 1, v321);
          v148 = v143;
          v149 = v308;
          sub_1D1741A90(v148, v308, v125, &qword_1D1E71D10);
          isUniquelyReferenced_nonNull_native = (*v312)(v149, 1, v147);
          if (isUniquelyReferenced_nonNull_native != 1)
          {
            break;
          }

          sub_1D1741A30(v149, v125, &qword_1D1E71D10);
LABEL_83:
          sub_1D1C53778(v140, type metadata accessor for StaticService);
          isUniquelyReferenced_nonNull_native = (*(v315 + 8))(v318, v316);
          v28 = i;
          if (!v120)
          {
            goto LABEL_58;
          }
        }

        v150 = v149 + *(v147 + 24);
        v151 = *v150;
        v152 = *(v150 + 16);
        if (v152 > 3)
        {
          if (v152 == 4)
          {
            if ((v151 & 0x8000000000000000) != 0)
            {
              goto LABEL_250;
            }
          }

          else
          {
            if (v152 != 5 && v152 != 6)
            {
LABEL_82:
              sub_1D1C53778(v149, type metadata accessor for StaticCharacteristic);
              goto LABEL_83;
            }

            v151 = v151;
          }
        }

        else if (v152 <= 1)
        {
          if (v152 != 1)
          {
            goto LABEL_87;
          }

          v151 = v151;
        }

        else if (v152 == 2)
        {
          v151 = v151;
        }

        else
        {
          v151 = v151;
        }

        if (v151 > 1)
        {
          goto LABEL_82;
        }

        LOBYTE(v151) = v151 == 1;
LABEL_87:
        sub_1D1C53778(v149, type metadata accessor for StaticCharacteristic);
        sub_1D1C53778(v140, type metadata accessor for StaticService);
        (*(v315 + 8))(v318, v316);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1D177D8F8(0, *(v311 + 2) + 1, 1, v311);
          v311 = isUniquelyReferenced_nonNull_native;
        }

        v28 = i;
        v154 = *(v311 + 2);
        v153 = *(v311 + 3);
        if (v154 >= v153 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1D177D8F8((v153 > 1), v154 + 1, 1, v311);
          v311 = isUniquelyReferenced_nonNull_native;
        }

        v155 = v311;
        *(v311 + 2) = v154 + 1;
      }

LABEL_58:
      while (1)
      {
        v128 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          break;
        }

        if (v128 >= v121)
        {

          v156 = _s13HomeDataModel13StaticServiceV12switchString16powerStateValuesSSSgSaySbG_tFZ_0(v311);
          goto LABEL_241;
        }

        v120 = *(v117 + 8 * v128);
        ++v122;
        if (v120)
        {
          v125 = v124;
          v126 = v28;
          v127 = v123;
          v122 = v128;
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_246;
    case '0':
      v312 = v7;
      v248 = *(v1 + *(type metadata accessor for StaticServiceGroup(0) + 56));
      v249 = v248 + 64;
      v250 = 1 << *(v248 + 32);
      v251 = -1;
      if (v250 < 64)
      {
        v251 = ~(-1 << v250);
      }

      v252 = v251 & *(v248 + 64);
      v253 = (v250 + 63) >> 6;
      v313 = (v317 + 48);
      v314 = (v317 + 56);
      v315 = v248;

      v254 = 0;
      v165 = MEMORY[0x1E69E7CC0];
      if (!v252)
      {
LABEL_191:
        while (1)
        {
          v255 = v254 + 1;
          if (__OFADD__(v254, 1))
          {
            goto LABEL_249;
          }

          if (v255 >= v253)
          {
LABEL_237:

            v292 = _s13HomeDataModel13StaticServiceV35fanOrAirPurifierRotationSpeedString0F6ValuesSSSgSaySbSg10powerState_SdSg08rotationK0tG_tFZ_0(v165);
LABEL_239:
            countAndFlagsBits = v292;
            object = v293;
LABEL_242:

            goto LABEL_243;
          }

          v252 = *(v249 + 8 * v255);
          ++v254;
          if (v252)
          {
            v319 = v165;
            v254 = v255;
            goto LABEL_195;
          }
        }
      }

      while (1)
      {
        v319 = v165;
LABEL_195:
        v256 = __clz(__rbit64(v252)) | (v254 << 6);
        v257 = v315;
        v258 = *(v315 + 48);
        v259 = sub_1D1E66A7C();
        v316 = *(v259 - 8);
        v260 = v258 + v316[9] * v256;
        v261 = v316[2];
        v318 = v259;
        v261(v48, v260);
        v262 = *(v257 + 56) + *(v320 + 72) * v256;
        v263 = v322;
        sub_1D1C53710(v262, &v48[*(v322 + 48)], type metadata accessor for StaticService);
        v264 = v311;
        sub_1D1741C08(v48, v311, &qword_1EC642DB0, &unk_1D1E6F360);
        v265 = &v264[*(v263 + 48)];
        v266 = *(v265 + *(v323 + 128));
        if (*(v266 + 16))
        {
          v267 = sub_1D171D140(3);
          v268 = v300;
          if (v269)
          {
            sub_1D1C53710(*(v266 + 56) + *(v317 + 72) * v267, v303, type metadata accessor for StaticCharacteristic);
            v270 = 0;
          }

          else
          {
            v270 = 1;
          }
        }

        else
        {
          v270 = 1;
          v268 = v300;
        }

        v271 = v303;
        v272 = v321;
        (*v314)(v303, v270, 1, v321);
        sub_1D1741A90(v271, v268, &qword_1EC643630, &qword_1D1E71D10);
        isUniquelyReferenced_nonNull_native = (*v313)(v268, 1, v272);
        if (isUniquelyReferenced_nonNull_native != 1)
        {
          break;
        }

        sub_1D1741A30(v268, &qword_1EC643630, &qword_1D1E71D10);
        v273 = 2;
        v165 = v319;
LABEL_223:
        sub_1D1C53778(v265, type metadata accessor for StaticService);
        v278 = v307;
        sub_1D1741C08(v48, v307, &qword_1EC642DB0, &unk_1D1E6F360);
        v279 = v278 + *(v322 + 48);
        v280 = *(v279 + *(v323 + 128));
        if (!*(v280 + 16))
        {
          goto LABEL_228;
        }

        v281 = sub_1D171D140(115);
        if ((v282 & 1) == 0)
        {
          goto LABEL_228;
        }

        v283 = v312;
        sub_1D1C53710(*(v280 + 56) + *(v317 + 72) * v281, v312, type metadata accessor for StaticCharacteristic);
        v284 = (v283 + *(v321 + 24));
        if (*(v284 + 16) != 7)
        {
          sub_1D1C53778(v283, type metadata accessor for StaticCharacteristic);
LABEL_228:
          v324 = v280;
          v325 = 115;
          v330 = StaticCharacteristicsBag.int(for:)(&v325);
          if (v330.is_nil)
          {
            v286 = 1;
            v285 = 0.0;
          }

          else
          {
            v286 = 0;
            v285 = v330.value;
          }

          goto LABEL_231;
        }

        v285 = *v284;
        sub_1D1C53778(v283, type metadata accessor for StaticCharacteristic);
        v286 = 0;
LABEL_231:
        sub_1D1C53778(v279, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v165 = sub_1D177DAFC(0, *(v165 + 2) + 1, 1, v165);
        }

        v288 = *(v165 + 2);
        v287 = *(v165 + 3);
        if (v288 >= v287 >> 1)
        {
          v165 = sub_1D177DAFC((v287 > 1), v288 + 1, 1, v165);
        }

        v252 &= v252 - 1;
        sub_1D1741A30(v48, &qword_1EC642DB0, &unk_1D1E6F360);
        *(v165 + 2) = v288 + 1;
        v289 = &v165[24 * v288];
        v289[32] = v273;
        *(v289 + 5) = v285;
        v289[48] = v286;
        v290 = v316[1];
        v291 = v318;
        v290(v307, v318);
        isUniquelyReferenced_nonNull_native = (v290)(v311, v291);
        if (!v252)
        {
          goto LABEL_191;
        }
      }

      v274 = v268 + *(v272 + 24);
      v275 = *v274;
      v276 = *(v274 + 16);
      v273 = 2;
      v165 = v319;
      if (v276 <= 2)
      {
        if (v276)
        {
          if (v276 == 1)
          {
            v275 = v275;
          }

          else
          {
            v275 = v275;
          }

LABEL_216:
          if (v275 == 1)
          {
            v277 = 1;
          }

          else
          {
            v277 = 2;
          }

          if (v275)
          {
            v273 = v277;
          }

          else
          {
            v273 = 0;
          }

          goto LABEL_222;
        }

        v273 = v275 & 1;
      }

      else
      {
        if (v276 <= 4)
        {
          if (v276 == 3)
          {
            v275 = v275;
          }

          else if (v275 < 0)
          {
            goto LABEL_251;
          }

          goto LABEL_216;
        }

        if (v276 == 5 || v276 == 6)
        {
          v275 = v275;
          goto LABEL_216;
        }
      }

LABEL_222:
      sub_1D1C53778(v268, type metadata accessor for StaticCharacteristic);
      goto LABEL_223;
    case '4':
      v67 = *(v1 + *(type metadata accessor for StaticServiceGroup(0) + 56));
      v68 = (v67 + 64);
      v69 = 1 << *(v67 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v67 + 64);
      v72 = (v69 + 63) >> 6;
      v302 = (v317 + 56);
      v301 = (v317 + 48);
      v303 = v67;

      v75 = 0;
      v76 = MEMORY[0x1E69E7CC0];
      v300 = v68;
      v299 = v72;
      v296 = v13;
      if (!v71)
      {
LABEL_13:
        while (1)
        {
          v77 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            goto LABEL_247;
          }

          if (v77 >= v72)
          {

            v292 = _s13HomeDataModel13StaticServiceV27motorizedDoorOrWindowString04doorhI6ValuesSSSgSaySiSg15currentPosition_AG06targetN0So021HMCharacteristicValueN5StateVSg08positionR0SbSg19obstructionDetectedtG_tFZ_0(v76);
            goto LABEL_239;
          }

          v71 = *&v68[8 * v77];
          ++v75;
          if (v71)
          {
            v319 = v76;
            v75 = v77;
            goto LABEL_17;
          }
        }
      }

      while (1)
      {
        v319 = v76;
LABEL_17:
        v78 = __clz(__rbit64(v71)) | (v75 << 6);
        v79 = v303;
        v80 = *(v303 + 48);
        v81 = sub_1D1E66A7C();
        v311 = *(v81 - 8);
        v82 = v80 + *(v311 + 9) * v78;
        v83 = *(v311 + 2);
        v84 = v312;
        v318 = v81;
        v83(v312, v82);
        v85 = v322;
        sub_1D1C53710(*(v79 + 56) + *(v320 + 72) * v78, v84 + *(v322 + 48), type metadata accessor for StaticService);
        v86 = v313;
        sub_1D1741C08(v84, v313, &qword_1EC642DB0, &unk_1D1E6F360);
        v87 = v86 + *(v85 + 48);
        v88 = v323;
        v324 = *(v87 + *(v323 + 128));
        v325 = 40;
        *&v89 = StaticCharacteristicsBag.int(for:)(&v325);
        v310 = v89;
        LODWORD(v309) = DWORD2(v89);
        sub_1D1C53778(v87, type metadata accessor for StaticService);
        v90 = v314;
        sub_1D1741C08(v84, v314, &qword_1EC642DB0, &unk_1D1E6F360);
        v91 = v90 + *(v85 + 48);
        v324 = *(v91 + *(v88 + 128));
        v325 = -98;
        *&v92 = StaticCharacteristicsBag.int(for:)(&v325);
        v308 = v92;
        LODWORD(v307) = DWORD2(v92);
        sub_1D1C53778(v91, type metadata accessor for StaticService);
        v93 = v315;
        sub_1D1741C08(v84, v315, &qword_1EC642DB0, &unk_1D1E6F360);
        v94 = v93 + *(v85 + 48);
        v324 = *(v94 + *(v88 + 128));
        v325 = 102;
        v327 = StaticCharacteristicsBag.int(for:)(&v325);
        LODWORD(v305) = *&v327.is_nil;
        v95 = v327.is_nil ? 0 : v327.value;
        v306 = v95;
        sub_1D1C53778(v94, type metadata accessor for StaticService);
        v96 = v316;
        sub_1D1741C08(v84, v316, &qword_1EC642DB0, &unk_1D1E6F360);
        v97 = v96 + *(v85 + 48);
        v98 = *(v97 + *(v88 + 128));
        if (*(v98 + 16))
        {
          v99 = sub_1D171D140(88);
          v100 = v296;
          if (v101)
          {
            sub_1D1C53710(*(v98 + 56) + *(v317 + 72) * v99, v304, type metadata accessor for StaticCharacteristic);
            v102 = 0;
          }

          else
          {
            v102 = 1;
          }
        }

        else
        {
          v102 = 1;
          v100 = v296;
        }

        v103 = v304;
        v104 = v321;
        (*v302)(v304, v102, 1, v321);
        sub_1D1741A90(v103, v100, &qword_1EC643630, &qword_1D1E71D10);
        isUniquelyReferenced_nonNull_native = (*v301)(v100, 1, v104);
        if (isUniquelyReferenced_nonNull_native != 1)
        {
          break;
        }

        sub_1D1741A30(v100, &qword_1EC643630, &qword_1D1E71D10);
        v105 = 2;
        v76 = v319;
LABEL_48:
        sub_1D1C53778(v97, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1D177D9EC(0, *(v76 + 2) + 1, 1, v76);
        }

        v111 = *(v76 + 2);
        v110 = *(v76 + 3);
        if (v111 >= v110 >> 1)
        {
          v76 = sub_1D177D9EC((v110 > 1), v111 + 1, 1, v76);
        }

        v71 &= v71 - 1;
        sub_1D1741A30(v312, &qword_1EC642DB0, &unk_1D1E6F360);
        *(v76 + 2) = v111 + 1;
        v112 = &v76[48 * v111];
        v113 = v311;
        *(v112 + 4) = v310;
        v112[40] = v309 & 1;
        *(v112 + 6) = v308;
        v112[56] = v307 & 1;
        *(v112 + 8) = v306;
        v112[72] = v305 & 1;
        v112[73] = v105;
        v114 = *(v113 + 1);
        v115 = v318;
        v114(v316, v318);
        v114(v315, v115);
        v114(v314, v115);
        isUniquelyReferenced_nonNull_native = (v114)(v313, v115);
        v68 = v300;
        v72 = v299;
        if (!v71)
        {
          goto LABEL_13;
        }
      }

      v106 = v100 + *(v104 + 24);
      v107 = *v106;
      v108 = *(v106 + 16);
      v105 = 2;
      v76 = v319;
      if (v108 <= 2)
      {
        if (v108)
        {
          if (v108 == 1)
          {
            v107 = v107;
          }

          else
          {
            v107 = v107;
          }

LABEL_41:
          if (v107 == 1)
          {
            v109 = 1;
          }

          else
          {
            v109 = 2;
          }

          if (v107)
          {
            v105 = v109;
          }

          else
          {
            v105 = 0;
          }

          goto LABEL_47;
        }

        v105 = v107 & 1;
      }

      else
      {
        if (v108 <= 4)
        {
          if (v108 == 3)
          {
            v107 = v107;
          }

          else if (v107 < 0)
          {
            goto LABEL_253;
          }

          goto LABEL_41;
        }

        if (v108 == 5 || v108 == 6)
        {
          v107 = v107;
          goto LABEL_41;
        }
      }

LABEL_47:
      sub_1D1C53778(v100, type metadata accessor for StaticCharacteristic);
      goto LABEL_48;
  }

LABEL_144:
  v203 = StaticServiceGroup.sortedStaticServices.getter();
  if (*(v203 + 16))
  {
    v204 = v4;
    sub_1D1C53710(v203 + ((*(v320 + 80) + 32) & ~*(v320 + 80)), v4, type metadata accessor for StaticService);

    LOBYTE(v324) = v66;
    v325 = 0;
    v205 = StaticService.characteristicStateString(context:temperatureScale:)(&v324, &v325);
    countAndFlagsBits = v205.value._countAndFlagsBits;
    object = v205.value._object;
    sub_1D1C53778(v204, type metadata accessor for StaticService);
  }

  else
  {

    countAndFlagsBits = 0;
    object = 0;
  }

LABEL_243:
  isUniquelyReferenced_nonNull_native = countAndFlagsBits;
  v74 = object;
LABEL_255:
  result.value._object = v74;
  result.value._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}