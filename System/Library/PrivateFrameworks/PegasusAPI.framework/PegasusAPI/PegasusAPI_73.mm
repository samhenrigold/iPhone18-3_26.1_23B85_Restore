uint64_t static Searchfoundation_GradientColor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D78670(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 8);
  v6 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v5 = v5 != 0;
  }

  if (*(v0 + 16) == 1)
  {
    if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_GradientColor(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_86();
  v10 = sub_1B8CD3188(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

void static Searchfoundation_WeatherColor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v49 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v44 - v12);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_LatLng(v15);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v44 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  v25 = *v5 == *v3 && *(v5 + 8) == *(v3 + 8);
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v44 = v9;
  v45 = v13;
  v47 = v0;
  v46 = type metadata accessor for Searchfoundation_WeatherColor(0);
  v26 = *(v21 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v24);
  if (v25)
  {
    OUTLINED_FUNCTION_37_0(&v24[v26]);
    if (v25)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v24[v26]);
  if (v29)
  {
    OUTLINED_FUNCTION_5_38();
    sub_1B947C524();
LABEL_18:
    v30 = &qword_1EBACB018;
    v31 = &unk_1B96B9910;
LABEL_25:
    v35 = v24;
LABEL_31:
    sub_1B8D9207C(v35, v30, v31);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_49();
  sub_1B947C474();
  if (*v20 != *v1 || v20[1] != v1[1])
  {
    OUTLINED_FUNCTION_5_38();
    sub_1B947C524();
    goto LABEL_24;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_86();
  sub_1B8CD3188(v32, v33, MEMORY[0x1E69AAC10]);
  v34 = sub_1B964C850();
  OUTLINED_FUNCTION_5_38();
  sub_1B947C524();
  if ((v34 & 1) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_5_38();
    sub_1B947C524();
    v30 = &qword_1EBACAFA0;
    v31 = &unk_1B96CB440;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_5_38();
  sub_1B947C524();
LABEL_10:
  sub_1B8D9207C(v24, &qword_1EBACAFA0, &unk_1B96CB440);
  v27 = v47;
  v28 = *(v48 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_81(v27, 1);
  if (!v25)
  {
    v36 = v45;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v27 + v28);
    if (!v37)
    {
      OUTLINED_FUNCTION_3_61();
      v38 = v44;
      sub_1B947C474();
      if (*v36 == *v38)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_86();
        sub_1B8CD3188(v39, v40, MEMORY[0x1E69AAC10]);
        v41 = sub_1B964C850();
        sub_1B947C524();
        sub_1B947C524();
        sub_1B8D9207C(v27, &qword_1EBAB8E30, &qword_1B964D630);
        if ((v41 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }

      sub_1B947C524();
      sub_1B947C524();
      v30 = &qword_1EBAB8E30;
      v31 = &qword_1B964D630;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_28_21();
    sub_1B947C524();
LABEL_29:
    v30 = &qword_1EBAB8E38;
    v31 = &qword_1B96CD870;
LABEL_30:
    v35 = v27;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_37_0(v27 + v28);
  if (!v25)
  {
    goto LABEL_29;
  }

  sub_1B8D9207C(v27, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_35:
  if (*(v5 + 16) == *(v3 + 16) && *(v5 + 24) == *(v3 + 24) && *(v5 + 32) == *(v3 + 32) && *(v5 + 40) == *(v3 + 40))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_86();
    sub_1B8CD3188(v42, v43, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
  }

LABEL_32:
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_CalendarColor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_CalendarColor(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_AppColor.applicationBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B947A2F4()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B947A37C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_AppColor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_AppColor(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ImageDerivedColor.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ImageDerivedColor(v7);
  OUTLINED_FUNCTION_106_0();
  v8 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *(a1 + v10) = qword_1EBAB5608;
    v11 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_36();
    OUTLINED_FUNCTION_182();
    return sub_1B947C474();
  }

  return result;
}

uint64_t Searchfoundation_ImageDerivedColor.image.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_ImageDerivedColor(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_6_36();
  OUTLINED_FUNCTION_122_0();
  sub_1B947C474();
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_ImageDerivedColor.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v1 + 8) = v5;
  v6 = type metadata accessor for Searchfoundation_Image(0);
  *(v1 + 16) = v6;
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = *(type metadata accessor for Searchfoundation_ImageDerivedColor(v10) + 20);
  *(v1 + 40) = v11;
  OUTLINED_FUNCTION_643(v0 + v11, v5);
  v12 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v12, v13, v6);
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v6 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *(v8 + v15) = qword_1EBAB5608;
    v16 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v6);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_36();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B947A738()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B947C4CC();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
    OUTLINED_FUNCTION_6_36();
    sub_1B947C474();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_30_28();
    sub_1B947C524();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
    OUTLINED_FUNCTION_6_36();
    sub_1B947C474();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_ImageDerivedColor.hasImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_ImageDerivedColor(v4);
  OUTLINED_FUNCTION_115(*(v5 + 20));
  OUTLINED_FUNCTION_161_2();
  type metadata accessor for Searchfoundation_Image(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B96B77D0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_ImageDerivedColor.clearImage()()
{
  v1 = type metadata accessor for Searchfoundation_ImageDerivedColor(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_GradientColor.colors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void Searchfoundation_GradientColor.gradientType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_GradientColor.gradientType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Searchfoundation_GradientColor.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_GradientColor(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_GradientColor.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_GradientColor(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_GradientColor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_GradientColor(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_WeatherColor.location.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_WeatherColor(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_49();
    OUTLINED_FUNCTION_182();
    return sub_1B947C474();
  }

  return result;
}

uint64_t Searchfoundation_WeatherColor.location.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_WeatherColor(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_4_49();
  OUTLINED_FUNCTION_122_0();
  sub_1B947C474();
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_WeatherColor.location.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  *(v0 + 16) = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_89_0(v7);
  v9 = *(type metadata accessor for Searchfoundation_WeatherColor(v8) + 40);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_115(v9);
  OUTLINED_FUNCTION_643(v10, v11);
  OUTLINED_FUNCTION_16_2();
  if (v12)
  {
    *v6 = 0;
    v6[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v12)
    {
      sub_1B8D9207C(v4, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_49();
    OUTLINED_FUNCTION_461();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B947AD88()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B947C4CC();
    sub_1B8D9207C(v4 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_4_49();
    sub_1B947C474();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_5_38();
    sub_1B947C524();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_4_49();
    sub_1B947C474();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_WeatherColor.hasLocation.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_WeatherColor(v4);
  OUTLINED_FUNCTION_115(*(v5 + 40));
  OUTLINED_FUNCTION_161_2();
  type metadata accessor for Searchfoundation_LatLng(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B96CB440);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_WeatherColor.clearLocation()()
{
  v1 = type metadata accessor for Searchfoundation_WeatherColor(0);
  sub_1B8D9207C(v0 + *(v1 + 40), &qword_1EBACAFA0, &unk_1B96CB440);
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_WeatherColor.date.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_WeatherColor(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_61();
    OUTLINED_FUNCTION_182();
    return sub_1B947C474();
  }

  return result;
}

uint64_t Searchfoundation_WeatherColor.date.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_WeatherColor(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_122_0();
  sub_1B947C474();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_WeatherColor.date.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  *(v0 + 16) = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_89_0(v7);
  v9 = *(type metadata accessor for Searchfoundation_WeatherColor(v8) + 44);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_115(v9);
  OUTLINED_FUNCTION_643(v10, v11);
  v12 = OUTLINED_FUNCTION_16_2();
  if (v13)
  {
    OUTLINED_FUNCTION_84_9(v12);
    OUTLINED_FUNCTION_16_2();
    if (!v13)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_61();
    OUTLINED_FUNCTION_461();
    sub_1B947C474();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B947B1DC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B947C4CC();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8E30, &qword_1B964D630);
    OUTLINED_FUNCTION_3_61();
    sub_1B947C474();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_28_21();
    sub_1B947C524();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8E30, &qword_1B964D630);
    OUTLINED_FUNCTION_3_61();
    sub_1B947C474();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_WeatherColor.hasDate.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_WeatherColor(v4);
  OUTLINED_FUNCTION_115(*(v5 + 44));
  OUTLINED_FUNCTION_161_2();
  type metadata accessor for Searchfoundation_Date(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &qword_1B964D630);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_WeatherColor.clearDate()()
{
  v1 = type metadata accessor for Searchfoundation_WeatherColor(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBAB8E30, &qword_1B964D630);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_WeatherColor.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_WeatherColor(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_WeatherColor.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_WeatherColor(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_WeatherColor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_WeatherColor(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B947B598()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACE8E8);
  __swift_project_value_buffer(v0, qword_1EBACE8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ColorTintStyleDefault";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ColorTintStyleNone";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ColorTintStyleStandard";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ColorTintStyleVibrant";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B947B800()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACE900);
  __swift_project_value_buffer(v0, qword_1EBACE900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GradientTypeHorizontal";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GradientTypeVertical";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B947BA08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB56B0);
  __swift_project_value_buffer(v0, qword_1EBAB56B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "redComponent";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "greenComponent";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "blueComponent";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "alphaComponent";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "colorTintStyle";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "darkModeColor";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 51;
  *v18 = "calendarColor";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 52;
  *v20 = "appColor";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 53;
  *v22 = "imageDerivedColor";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 54;
  *v24 = "gradientColor";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 55;
  *v26 = "weatherColor";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B947BE1C()
{
  OUTLINED_FUNCTION_41_21();
  result = sub_1B947BE6C();
  qword_1ED9CD1C8 = result;
  return result;
}

uint64_t sub_1B947BE6C()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__redComponent;
  v2 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__greenComponent, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__blueComponent, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__alphaComponent, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor;
  v5 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value;
  v7 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  return v0;
}

uint64_t sub_1B947BF70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v18[3] = v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v18[2] = v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__redComponent;
  v9 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__greenComponent, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__blueComponent, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__alphaComponent, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor;
  v18[0] = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor;
  v12 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value;
  v18[1] = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value;
  v14 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v15 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle);
  swift_beginAccess();
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  swift_beginAccess();
  *v10 = v16;
  *(v10 + 8) = v15;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B947C474()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B947C4CC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B947C524()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B947C638()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__redComponent, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__greenComponent, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__blueComponent, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__alphaComponent, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value, &qword_1EBACE978, &qword_1B96CB430);
  return v0;
}

uint64_t sub_1B947C710()
{
  v0 = sub_1B947C638();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_Color.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_Color(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_Color._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B947BF70(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B947C804(v10, a1, a2, a3);
}

uint64_t sub_1B947C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__redComponent;
        goto LABEL_13;
      case 2:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__greenComponent;
        goto LABEL_13;
      case 3:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__blueComponent;
        goto LABEL_13;
      case 4:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__alphaComponent;
LABEL_13:
        sub_1B947C9FC(v11, v12, v13, v14, v15);
        break;
      case 5:
        sub_1B947CAD0(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B947CB6C(a2, a1, a3, a4);
        break;
      default:
        switch(result)
        {
          case '3':
            sub_1B947CC48(a1, a2, a3, a4);
            break;
          case '4':
            sub_1B947D19C(a1, a2, a3, a4);
            break;
          case '5':
            sub_1B947D70C(a1, a2, a3, a4);
            break;
          case '6':
            sub_1B947DC7C(a1, a2, a3, a4);
            break;
          case '7':
            sub_1B947E1EC(a1, a2, a3, a4);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B947C9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B8CD3188(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B947CAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B9483F8C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B947CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B947CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for Searchfoundation_CalendarColor(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEAB8, &qword_1B96CC168);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  __swift_storeEnumTagSinglePayload(&v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value;
  swift_beginAccess();
  v30 = a1;
  v28 = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    sub_1B947C474();
    sub_1B947C474();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B947C524();
    }

    else
    {
      sub_1B8D9207C(v21, &qword_1EBACEAB8, &qword_1B96CC168);
      sub_1B947C474();
      sub_1B947C474();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_1B8CD3188(&qword_1EBACEA20, type metadata accessor for Searchfoundation_CalendarColor, protocol conformance descriptor for Searchfoundation_CalendarColor);
  v24 = v33;
  sub_1B964C580();
  if (v24)
  {
    v25 = v21;
    return sub_1B8D9207C(v25, &qword_1EBACEAB8, &qword_1B96CC168);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACEAB8, &qword_1B96CC168);
    v25 = v19;
    return sub_1B8D9207C(v25, &qword_1EBACEAB8, &qword_1B96CC168);
  }

  sub_1B947C474();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v21, &qword_1EBACEAB8, &qword_1B96CC168);
  v27 = v29;
  sub_1B947C474();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B947D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_AppColor(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEAC0, &qword_1B96CC170);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    v28[0] = a1;
    sub_1B947C474();
    sub_1B947C474();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBACEAC0, &qword_1B96CC170);
      sub_1B947C474();
      sub_1B947C474();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B947C524();
    }
  }

  sub_1B8CD3188(&qword_1EBACEA38, type metadata accessor for Searchfoundation_AppColor, protocol conformance descriptor for Searchfoundation_AppColor);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACEAC0, &qword_1B96CC170);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACEAC0, &qword_1B96CC170);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACEAC0, &qword_1B96CC170);
  }

  sub_1B947C474();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACEAC0, &qword_1B96CC170);
  v27 = v29;
  sub_1B947C474();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B947D70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_ImageDerivedColor(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEAC8, &qword_1B96CC178);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    v28[0] = a1;
    sub_1B947C474();
    sub_1B947C474();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v21, &qword_1EBACEAC8, &qword_1B96CC178);
      sub_1B947C474();
      sub_1B947C474();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B947C524();
    }
  }

  sub_1B8CD3188(&qword_1EBACEA50, type metadata accessor for Searchfoundation_ImageDerivedColor, protocol conformance descriptor for Searchfoundation_ImageDerivedColor);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACEAC8, &qword_1B96CC178);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACEAC8, &qword_1B96CC178);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACEAC8, &qword_1B96CC178);
  }

  sub_1B947C474();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACEAC8, &qword_1B96CC178);
  v27 = v29;
  sub_1B947C474();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B947DC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_GradientColor(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEAD0, &qword_1B96CC180);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    v28[0] = a1;
    sub_1B947C474();
    sub_1B947C474();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v21, &qword_1EBACEAD0, &qword_1B96CC180);
      sub_1B947C474();
      sub_1B947C474();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B947C524();
    }
  }

  sub_1B8CD3188(&qword_1EBACEA68, type metadata accessor for Searchfoundation_GradientColor, protocol conformance descriptor for Searchfoundation_GradientColor);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACEAD0, &qword_1B96CC180);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACEAD0, &qword_1B96CC180);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACEAD0, &qword_1B96CC180);
  }

  sub_1B947C474();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACEAD0, &qword_1B96CC180);
  v27 = v29;
  sub_1B947C474();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B947E1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_WeatherColor(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEAD8, &qword_1B96CC188);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    v28[0] = a1;
    sub_1B947C474();
    sub_1B947C474();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v21, &qword_1EBACEAD8, &qword_1B96CC188);
      sub_1B947C474();
      sub_1B947C474();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B947C524();
    }
  }

  sub_1B8CD3188(&qword_1ED9CC3A8, type metadata accessor for Searchfoundation_WeatherColor, protocol conformance descriptor for Searchfoundation_WeatherColor);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACEAD8, &qword_1B96CC188);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACEAD8, &qword_1B96CC188);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACEAD8, &qword_1B96CC188);
  }

  sub_1B947C474();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACEAD8, &qword_1B96CC188);
  v27 = v29;
  sub_1B947C474();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_Color.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B947E7C0(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B947E7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v54 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = v45 - v9;
  v48 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v48);
  v45[1] = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v53 = v45 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v45 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v45 - v19;
  v21 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v47 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v50 = v45 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v52 = v45 - v27;
  MEMORY[0x1EEE9AC00](v26);
  swift_beginAccess();
  v28 = a1;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v29 = v54;
    sub_1B8D9207C(v20, &qword_1EBACAF98, &qword_1B96B98A0);
    v30 = a4;
    v31 = v55;
    v32 = v58;
  }

  else
  {
    sub_1B947C474();
    sub_1B8CD3188(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
    v29 = v54;
    v33 = v55;
    v32 = v58;
    sub_1B964C740();
    v30 = a4;
    v31 = v33;
    if (v33)
    {
      return sub_1B947C524();
    }

    sub_1B947C524();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v18, 1, v21) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACAF98, &qword_1B96B98A0);
    v34 = v32;
    v35 = v31;
  }

  else
  {
    sub_1B947C474();
    sub_1B8CD3188(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
    v34 = v32;
    sub_1B964C740();
    v35 = v31;
    if (v31)
    {
      return sub_1B947C524();
    }

    sub_1B947C524();
  }

  swift_beginAccess();
  v36 = v53;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v36, 1, v21) == 1)
  {
    sub_1B8D9207C(v36, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B947C474();
    sub_1B8CD3188(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
    sub_1B964C740();
    if (v35)
    {
      return sub_1B947C524();
    }

    sub_1B947C524();
  }

  swift_beginAccess();
  v37 = v51;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v37, 1, v21) != 1)
  {
    sub_1B947C474();
    sub_1B8CD3188(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
    sub_1B964C740();
    if (!v35)
    {
      sub_1B947C524();
      goto LABEL_19;
    }

    return sub_1B947C524();
  }

  sub_1B8D9207C(v37, &qword_1EBACAF98, &qword_1B96B98A0);
LABEL_19:
  v39 = v28 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle;
  swift_beginAccess();
  v40 = v49;
  v41 = v48;
  if (!*v39 || (v42 = *(v39 + 8), v56 = *v39, v57 = v42, sub_1B9483F8C(), result = sub_1B964C680(), !v35))
  {
    swift_beginAccess();
    v43 = v46;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v43, 1, v41) == 1)
    {
      sub_1B8D9207C(v43, &qword_1EBACB050, &unk_1B96B7BD0);
    }

    else
    {
      sub_1B947C474();
      sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
      sub_1B964C740();
      result = sub_1B947C524();
      if (v35)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    v44 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
    result = __swift_getEnumTagSinglePayload(v40, 1, v44);
    if (result != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_1B947F44C(v28, v29, v34, v30);
          break;
        case 2u:
          sub_1B947F680(v28, v29, v34, v30);
          break;
        case 3u:
          sub_1B947F8B4(v28, v29, v34, v30);
          break;
        case 4u:
          sub_1B947FAE8(v28, v29, v34, v30);
          break;
        default:
          sub_1B947F21C(v28, v29, v34, v30);
          break;
      }

      return sub_1B947C524();
    }
  }

  return result;
}

uint64_t sub_1B947F21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_CalendarColor(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B947C474();
      sub_1B8CD3188(&qword_1EBACEA20, type metadata accessor for Searchfoundation_CalendarColor, protocol conformance descriptor for Searchfoundation_CalendarColor);
      sub_1B964C740();
      return sub_1B947C524();
    }

    result = sub_1B947C524();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B947F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_AppColor(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B947C474();
      sub_1B8CD3188(&qword_1EBACEA38, type metadata accessor for Searchfoundation_AppColor, protocol conformance descriptor for Searchfoundation_AppColor);
      sub_1B964C740();
      return sub_1B947C524();
    }

    result = sub_1B947C524();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B947F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_ImageDerivedColor(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B947C474();
      sub_1B8CD3188(&qword_1EBACEA50, type metadata accessor for Searchfoundation_ImageDerivedColor, protocol conformance descriptor for Searchfoundation_ImageDerivedColor);
      sub_1B964C740();
      return sub_1B947C524();
    }

    result = sub_1B947C524();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B947F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_GradientColor(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B947C474();
      sub_1B8CD3188(&qword_1EBACEA68, type metadata accessor for Searchfoundation_GradientColor, protocol conformance descriptor for Searchfoundation_GradientColor);
      sub_1B964C740();
      return sub_1B947C524();
    }

    result = sub_1B947C524();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B947FAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Searchfoundation_WeatherColor(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBACE978, &qword_1B96CB430);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B947C474();
      sub_1B8CD3188(&qword_1ED9CC3A8, type metadata accessor for Searchfoundation_WeatherColor, protocol conformance descriptor for Searchfoundation_WeatherColor);
      sub_1B964C740();
      return sub_1B947C524();
    }

    result = sub_1B947C524();
  }

  __break(1u);
  return result;
}

uint64_t static Searchfoundation_Color.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_21_24();
  if (*(v1 + v2) != *(v0 + v2))
  {

    sub_1B947FDE4();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_86();
  sub_1B8CD3188(v5, v6, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B947FDE4()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v165 = type metadata accessor for Searchfoundation_Color.OneOf_Value(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v162[1] = v5;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEAE0, &unk_1B96CC190);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v166 = v162 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE978, &qword_1B96CB430);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v162[2] = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  v167 = v162 - v12;
  v13 = OUTLINED_FUNCTION_201();
  v170 = type metadata accessor for Searchfoundation_Color(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v163 = v15;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v171 = v162 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44_0();
  v168 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  v172 = v162 - v22;
  v23 = OUTLINED_FUNCTION_201();
  v188 = type metadata accessor for Searchfoundation_GraphicalFloat(v23);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44_0();
  v173 = v25;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_682();
  v175 = v27;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_682();
  v179 = v29;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v30);
  v182 = (v162 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB020, &unk_1B96B7BC0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44_0();
  v176 = v34;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_682();
  v180 = v36;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_682();
  v184 = v38;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v162 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v43 = OUTLINED_FUNCTION_183(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44_0();
  v174 = v44;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_682();
  v177 = v46;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_682();
  v178 = v48;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_682();
  v183 = v50;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_682();
  v181 = v52;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_682();
  v186 = v54;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_682();
  v187 = v56;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v57);
  v59 = v162 - v58;
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__redComponent, &v202);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__redComponent, &v201);
  v185 = v32;
  v60 = *(v32 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v41);
  if (v64)
  {

    sub_1B8D9207C(v59, &qword_1EBACAF98, &qword_1B96B98A0);
    OUTLINED_FUNCTION_37_0(&v41[v60]);
    v61 = v1;
    if (!v64)
    {
      goto LABEL_21;
    }

    sub_1B8D9207C(v41, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    v62 = v1;
    v63 = v187;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(&v41[v60]);
    if (v64)
    {

      sub_1B8D9207C(v59, &qword_1EBACAF98, &qword_1B96B98A0);
      OUTLINED_FUNCTION_25_19();
LABEL_20:
      sub_1B947C524();
LABEL_21:
      v80 = &qword_1EBACB020;
      v81 = &unk_1B96B7BC0;
      v82 = v41;
LABEL_22:
      sub_1B8D9207C(v82, v80, v81);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_60();
    v65 = v182;
    sub_1B947C474();
    if (*v63 != *v65)
    {

      OUTLINED_FUNCTION_14_26();
      sub_1B947C524();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v83, v84, v85);
      sub_1B947C524();
      OUTLINED_FUNCTION_466();
      goto LABEL_22;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_86();
    sub_1B8CD3188(v66, v67, MEMORY[0x1E69AAC10]);

    v61 = v62;

    HIDWORD(v162[0]) = sub_1B964C850();
    sub_1B947C524();
    v68 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v68, v69, &qword_1B96B98A0);
    sub_1B947C524();
    sub_1B8D9207C(v41, &qword_1EBACAF98, &qword_1B96B98A0);
    if ((v162[0] & 0x100000000) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__greenComponent, &v200);
  v70 = v186;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v61 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__greenComponent, &v199);
  v41 = v184;
  v71 = v185;
  v72 = *(v185 + 48);
  OUTLINED_FUNCTION_198_2();
  OUTLINED_FUNCTION_84_0();
  v73 = OUTLINED_FUNCTION_602();
  v74 = v188;
  OUTLINED_FUNCTION_81(v73, v75);
  if (v64)
  {
    sub_1B8D9207C(v70, &qword_1EBACAF98, &qword_1B96B98A0);
    OUTLINED_FUNCTION_37_0(&v41[v72]);
    v76 = v183;
    if (!v64)
    {
      goto LABEL_21;
    }

    sub_1B8D9207C(v41, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    v77 = v181;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(&v41[v72]);
    if (v78)
    {
      v79 = v186;
LABEL_19:
      sub_1B8D9207C(v79, &qword_1EBACAF98, &qword_1B96B98A0);
      OUTLINED_FUNCTION_25_19();
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_2_60();
    v86 = v179;
    sub_1B947C474();
    if (*v77 != *v86)
    {
      goto LABEL_38;
    }

    v87 = *(v74 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_86();
    sub_1B8CD3188(v88, v89, MEMORY[0x1E69AAC10]);
    LODWORD(v187) = OUTLINED_FUNCTION_731(v77 + v87);
    OUTLINED_FUNCTION_26_22();
    sub_1B947C524();
    sub_1B8D9207C(v186, &qword_1EBACAF98, &qword_1B96B98A0);
    sub_1B947C524();
    v76 = v183;
    sub_1B8D9207C(v41, &qword_1EBACAF98, &qword_1B96B98A0);
    if ((v187 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__blueComponent, &v198);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v61 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__blueComponent, &v197);
  v90 = *(v71 + 48);
  v91 = v180;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v92 = OUTLINED_FUNCTION_207();
  v93 = v188;
  OUTLINED_FUNCTION_81(v92, v94);
  if (v64)
  {
    sub_1B8D9207C(v76, &qword_1EBACAF98, &qword_1B96B98A0);
    OUTLINED_FUNCTION_37_0(v91 + v90);
    if (v64)
    {
      sub_1B8D9207C(v91, &qword_1EBACAF98, &qword_1B96B98A0);
      goto LABEL_41;
    }

LABEL_36:
    v80 = &qword_1EBACB020;
    v81 = &unk_1B96B7BC0;
LABEL_37:
    v82 = v91;
    goto LABEL_22;
  }

  v95 = v178;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v91 + v90);
  if (v96)
  {
    sub_1B8D9207C(v183, &qword_1EBACAF98, &qword_1B96B98A0);
    OUTLINED_FUNCTION_25_19();
    sub_1B947C524();
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_2_60();
  v100 = v175;
  sub_1B947C474();
  if (*v95 != *v100)
  {
    OUTLINED_FUNCTION_14_26();
    sub_1B947C524();
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v115, v116, v117);
LABEL_50:
    sub_1B947C524();
    goto LABEL_51;
  }

  v101 = *(v93 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_86();
  sub_1B8CD3188(v102, v103, MEMORY[0x1E69AAC10]);
  v104 = OUTLINED_FUNCTION_731(v95 + v101);
  OUTLINED_FUNCTION_26_22();
  sub_1B947C524();
  sub_1B8D9207C(v183, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B947C524();
  v105 = OUTLINED_FUNCTION_186();
  sub_1B8D9207C(v105, v106, &qword_1B96B98A0);
  if ((v104 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_41:
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__alphaComponent, &v196);
  v107 = v177;
  OUTLINED_FUNCTION_198_2();
  OUTLINED_FUNCTION_521(v61 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__alphaComponent, &v195);
  v108 = *(v71 + 48);
  v109 = v107;
  v41 = v176;
  OUTLINED_FUNCTION_198_2();
  OUTLINED_FUNCTION_84_0();
  v110 = OUTLINED_FUNCTION_602();
  v111 = v188;
  OUTLINED_FUNCTION_81(v110, v112);
  if (v64)
  {
    sub_1B8D9207C(v109, &qword_1EBACAF98, &qword_1B96B98A0);
    OUTLINED_FUNCTION_37_0(&v41[v108]);
    if (v64)
    {
      sub_1B8D9207C(v41, &qword_1EBACAF98, &qword_1B96B98A0);
      goto LABEL_54;
    }

    goto LABEL_21;
  }

  v113 = v174;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v41[v108]);
  if (v114)
  {
    v79 = v177;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_2_60();
  v118 = v173;
  sub_1B947C474();
  if (*v113 != *v118)
  {
LABEL_38:
    OUTLINED_FUNCTION_14_26();
    sub_1B947C524();
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v97, v98, v99);
    sub_1B947C524();
LABEL_51:
    OUTLINED_FUNCTION_176_2();
    goto LABEL_22;
  }

  v119 = *(v111 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_86();
  sub_1B8CD3188(v120, v121, MEMORY[0x1E69AAC10]);
  v122 = OUTLINED_FUNCTION_731(v113 + v119);
  OUTLINED_FUNCTION_26_22();
  sub_1B947C524();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v123, v124, v125);
  sub_1B947C524();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v126, v127, v128);
  if ((v122 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_54:
  v129 = v3 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle;
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle, &v194);
  v130 = *v129;
  v131 = *(v129 + 8);
  v132 = (v61 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle);
  OUTLINED_FUNCTION_521(v61 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__colorTintStyle, &v193);
  if (!sub_1B8D92198(v130, v131, *v132))
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor, &v192);
  v133 = v172;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v61 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__darkModeColor, &v191);
  v134 = *(v169 + 48);
  v135 = v171;
  OUTLINED_FUNCTION_198_2();
  v91 = v135;
  OUTLINED_FUNCTION_84_0();
  v136 = OUTLINED_FUNCTION_602();
  v137 = v170;
  OUTLINED_FUNCTION_178(v136, v138, v170);
  if (!v64)
  {
    v139 = v168;
    sub_1B8D92024();
    OUTLINED_FUNCTION_57(v135 + v134);
    if (!v140)
    {
      OUTLINED_FUNCTION_15_24();
      v141 = v163;
      sub_1B947C474();
      if (*(v139 + *(v137 + 20)) == *(v141 + *(v137 + 20)) || (, , sub_1B947FDE4(), v143 = v142, , , (v143 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_86();
        sub_1B8CD3188(v144, v145, MEMORY[0x1E69AAC10]);
        v146 = sub_1B964C850();
        sub_1B947C524();
        sub_1B8D9207C(v172, &qword_1EBACB050, &unk_1B96B7BD0);
        sub_1B947C524();
        sub_1B8D9207C(v91, &qword_1EBACB050, &unk_1B96B7BD0);
        if (v146)
        {
          goto LABEL_68;
        }

LABEL_23:

        goto LABEL_24;
      }

      sub_1B947C524();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v159, v160, v161);
      goto LABEL_50;
    }

    sub_1B8D9207C(v172, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B947C524();
    goto LABEL_64;
  }

  sub_1B8D9207C(v133, &qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_57(v135 + v134);
  if (!v64)
  {
LABEL_64:
    v80 = &qword_1EBACB058;
    v81 = &unk_1B96CA9D0;
    goto LABEL_37;
  }

  sub_1B8D9207C(v135, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_68:
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value, &v190);
  v147 = v167;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v61 + OBJC_IVAR____TtCV10PegasusAPI22Searchfoundation_ColorP33_BD117D9E58F8D4465981BB8249D7A34213_StorageClass__value, &v189);
  v148 = *(v164 + 48);
  v149 = v166;
  OUTLINED_FUNCTION_198_2();
  OUTLINED_FUNCTION_84_0();
  v150 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v150, v151, v165);
  if (!v64)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_57(v149 + v148);
    if (!v152)
    {
      sub_1B947C474();
      OUTLINED_FUNCTION_186();
      static Searchfoundation_Color.OneOf_Value.== infix(_:_:)();

      sub_1B947C524();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v153, v154, v155);
      sub_1B947C524();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v156, v157, v158);
      goto LABEL_24;
    }

    sub_1B8D9207C(v167, &qword_1EBACE978, &qword_1B96CB430);
    OUTLINED_FUNCTION_1_73();
    sub_1B947C524();
LABEL_76:
    sub_1B8D9207C(v149, &qword_1EBACEAE0, &unk_1B96CC190);
    goto LABEL_24;
  }

  sub_1B8D9207C(v147, &qword_1EBACE978, &qword_1B96CB430);
  OUTLINED_FUNCTION_57(v149 + v148);
  if (!v64)
  {
    goto LABEL_76;
  }

  sub_1B8D9207C(v149, &qword_1EBACE978, &qword_1B96CB430);
LABEL_24:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9481008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEAA8, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9481088(uint64_t a1)
{
  v2 = sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94810F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);

  return sub_1B964C5D0();
}

uint64_t sub_1B9481284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEAA0, type metadata accessor for Searchfoundation_CalendarColor, protocol conformance descriptor for Searchfoundation_CalendarColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9481304(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1EBACEA20, type metadata accessor for Searchfoundation_CalendarColor, protocol conformance descriptor for Searchfoundation_CalendarColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9481374(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3188(&qword_1EBACEA20, type metadata accessor for Searchfoundation_CalendarColor, protocol conformance descriptor for Searchfoundation_CalendarColor);

  return sub_1B964C5D0();
}

uint64_t sub_1B948148C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v6 || (result = sub_1B964C700(), !v4))
  {
    a4(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B94815AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEA98, type metadata accessor for Searchfoundation_AppColor, protocol conformance descriptor for Searchfoundation_AppColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B948162C(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1EBACEA38, type metadata accessor for Searchfoundation_AppColor, protocol conformance descriptor for Searchfoundation_AppColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B948169C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3188(&qword_1EBACEA38, type metadata accessor for Searchfoundation_AppColor, protocol conformance descriptor for Searchfoundation_AppColor);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_ImageDerivedColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B94817BC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B94817BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ImageDerivedColor(0);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3188(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ImageDerivedColor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Searchfoundation_ImageDerivedColor(0);
  v13 = v3;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    OUTLINED_FUNCTION_6_36();
    sub_1B947C474();
    sub_1B8CD3188(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
    sub_1B964C740();
    OUTLINED_FUNCTION_30_28();
    result = sub_1B947C524();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t sub_1B9481AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEA90, type metadata accessor for Searchfoundation_ImageDerivedColor, protocol conformance descriptor for Searchfoundation_ImageDerivedColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9481B64(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1EBACEA50, type metadata accessor for Searchfoundation_ImageDerivedColor, protocol conformance descriptor for Searchfoundation_ImageDerivedColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9481BD4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3188(&qword_1EBACEA50, type metadata accessor for Searchfoundation_ImageDerivedColor, protocol conformance descriptor for Searchfoundation_ImageDerivedColor);

  return sub_1B964C5D0();
}

uint64_t sub_1B9481C6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACE960);
  __swift_project_value_buffer(v0, qword_1EBACE960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "colors";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gradientType";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_GradientColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B9481F5C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9481EBC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B9481EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  return sub_1B964C570();
}

uint64_t Searchfoundation_GradientColor.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_Color(0), sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (sub_1B9482EB4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      type metadata accessor for Searchfoundation_GradientColor(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t sub_1B9482178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEA88, type metadata accessor for Searchfoundation_GradientColor, protocol conformance descriptor for Searchfoundation_GradientColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94821F8(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1EBACEA68, type metadata accessor for Searchfoundation_GradientColor, protocol conformance descriptor for Searchfoundation_GradientColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9482268(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3188(&qword_1EBACEA68, type metadata accessor for Searchfoundation_GradientColor, protocol conformance descriptor for Searchfoundation_GradientColor);

  return sub_1B964C5D0();
}

uint64_t sub_1B9482300()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5238);
  __swift_project_value_buffer(v0, qword_1EBAB5238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "condition";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "location";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "date";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "cloudCover";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cloudCoverLowAltPct";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "cloudCoverMidAltPct";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "cloudCoverHighAltPct";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Searchfoundation_WeatherColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B94826D8(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B948278C(v3, v4, v5, v6);
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94826D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_WeatherColor(0);
  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B8CD3188(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
  return sub_1B964C580();
}

uint64_t sub_1B948278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_WeatherColor(0);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B8CD3188(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  return sub_1B964C580();
}

uint64_t Searchfoundation_WeatherColor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v20 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v19[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  v15 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v17 || (result = sub_1B964C700(), !v4))
  {
    v19[0] = type metadata accessor for Searchfoundation_WeatherColor(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1B8D9207C(v14, &qword_1EBACAFA0, &unk_1B96CB440);
    }

    else
    {
      OUTLINED_FUNCTION_4_49();
      sub_1B947C474();
      sub_1B8CD3188(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
      sub_1B964C740();
      OUTLINED_FUNCTION_5_38();
      result = sub_1B947C524();
      if (v4)
      {
        return result;
      }
    }

    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
    {
      sub_1B8D9207C(v8, &qword_1EBAB8E30, &qword_1B964D630);
    }

    else
    {
      OUTLINED_FUNCTION_3_61();
      sub_1B947C474();
      sub_1B8CD3188(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
      sub_1B964C740();
      OUTLINED_FUNCTION_28_21();
      result = sub_1B947C524();
      if (v4)
      {
        return result;
      }
    }

    if (v3[2] == 0.0 || (result = OUTLINED_FUNCTION_93_9(4), !v4))
    {
      if (v3[3] == 0.0 || (result = OUTLINED_FUNCTION_93_9(5), !v4))
      {
        if (v3[4] == 0.0 || (result = OUTLINED_FUNCTION_93_9(6), !v4))
        {
          if (v3[5] == 0.0)
          {
            return sub_1B964C290();
          }

          result = OUTLINED_FUNCTION_93_9(7);
          if (!v4)
          {
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B9482C64(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD3188(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9482D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEA80, type metadata accessor for Searchfoundation_WeatherColor, protocol conformance descriptor for Searchfoundation_WeatherColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9482DC4(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1ED9CC3A8, type metadata accessor for Searchfoundation_WeatherColor, protocol conformance descriptor for Searchfoundation_WeatherColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9482E34(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3188(&qword_1ED9CC3A8, type metadata accessor for Searchfoundation_WeatherColor, protocol conformance descriptor for Searchfoundation_WeatherColor);

  return sub_1B964C5D0();
}

unint64_t sub_1B9482EB4()
{
  result = qword_1EBACE9A8;
  if (!qword_1EBACE9A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_GradientType, &type metadata for Searchfoundation_GradientType, v0, v1);
    atomic_store(result, &qword_1EBACE9A8);
  }

  return result;
}

unint64_t sub_1B9482F0C()
{
  result = qword_1EBACE9C0;
  if (!qword_1EBACE9C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ColorTintStyle, &type metadata for Searchfoundation_ColorTintStyle, v0, v1);
    atomic_store(result, &qword_1EBACE9C0);
  }

  return result;
}

unint64_t sub_1B9482F64()
{
  result = qword_1EBACE9C8;
  if (!qword_1EBACE9C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ColorTintStyle, &type metadata for Searchfoundation_ColorTintStyle, v0, v1);
    atomic_store(result, &qword_1EBACE9C8);
  }

  return result;
}

unint64_t sub_1B9482FBC()
{
  result = qword_1EBACE9D0;
  if (!qword_1EBACE9D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ColorTintStyle, &type metadata for Searchfoundation_ColorTintStyle, v0, v1);
    atomic_store(result, &qword_1EBACE9D0);
  }

  return result;
}

unint64_t sub_1B9483044()
{
  result = qword_1EBACE9E8;
  if (!qword_1EBACE9E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_GradientType, &type metadata for Searchfoundation_GradientType, v0, v1);
    atomic_store(result, &qword_1EBACE9E8);
  }

  return result;
}

unint64_t sub_1B948309C()
{
  result = qword_1EBACE9F0;
  if (!qword_1EBACE9F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_GradientType, &type metadata for Searchfoundation_GradientType, v0, v1);
    atomic_store(result, &qword_1EBACE9F0);
  }

  return result;
}

unint64_t sub_1B94830F4()
{
  result = qword_1EBACE9F8;
  if (!qword_1EBACE9F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_GradientType, &type metadata for Searchfoundation_GradientType, v0, v1);
    atomic_store(result, &qword_1EBACE9F8);
  }

  return result;
}

uint64_t sub_1B9483880(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_Color._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9483904(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_CalendarColor(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_AppColor(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_ImageDerivedColor(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_GradientColor(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_WeatherColor(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void __swift_store_extra_inhabitant_index_61Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_1B9483A9C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9483C34(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9483B78(uint64_t a1)
{
  sub_1B9483C34(319, &qword_1ED9C8FA0, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9483C34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9483CC0(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9483C34(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9483C34(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9483DE8(uint64_t a1)
{
  sub_1B9483C34(319, &qword_1ED9F8FC0, type metadata accessor for Searchfoundation_GraphicalFloat, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9483C34(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9483C34(319, &qword_1ED9E5908, type metadata accessor for Searchfoundation_Color.OneOf_Value, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B9483F8C()
{
  result = qword_1EBACEAB0;
  if (!qword_1EBACEAB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_ColorTintStyle, &type metadata for Searchfoundation_ColorTintStyle, v0, v1);
    atomic_store(result, &qword_1EBACEAB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_41_21()
{
  type metadata accessor for Searchfoundation_Color._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_84_9(uint64_t a1)
{
  *v1 = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_93_9(uint64_t a1)
{

  return sub_1B964C6F0();
}

uint64_t OUTLINED_FUNCTION_108_8(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_113_11()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_119_6@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  type metadata accessor for Searchfoundation_GradientColor(0);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_126_4()
{

  return type metadata accessor for Searchfoundation_Color(0);
}

uint64_t sub_1B94843F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9485B48();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_CoreSpotlightResultQueryRecency.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B94844E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_CoreSpotlightResultQueryRecency.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9484548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9485B9C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_EmbeddingStatusType.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9484638@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_EmbeddingStatusType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.resultQueryRecency.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.embeddingStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals(0) + 80);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals(uint64_t a1)
{
  result = qword_1EBACEBC0;
  if (!qword_1EBACEBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals(0) + 80);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9484B7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEAF8);
  __swift_project_value_buffer(v0, qword_1EBACEAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "CoreSpotlightResultQueryRecencyUnknown";
  *(v4 + 8) = 38;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "CoreSpotlightResultQueryRecencyLastDay";
  *(v8 + 8) = 38;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CoreSpotlightResultQueryRecencyLast3Days";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CoreSpotlightResultQueryRecencyLastWeek";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CoreSpotlightResultQueryRecencyLastMonth";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CoreSpotlightResultQueryRecencyLast3Months";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CoreSpotlightResultQueryRecencyLastYear";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CoreSpotlightResultQueryRecencyLast18Months";
  *(v20 + 1) = 43;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CoreSpotlightResultQueryRecencyBefore18Months";
  *(v22 + 1) = 45;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9484F10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEB10);
  __swift_project_value_buffer(v0, qword_1EBACEB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "EmbeddingStatusTypeNoEmbedding";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EmbeddingStatusTypeNonPurgeableEmbedding";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EmbeddingStatusTypePurgeableEmbedding";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9485158()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEB28);
  __swift_project_value_buffer(v0, qword_1EBACEB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "topicalityScore";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "freshness";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "engagementScore";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "predictedLikelihoodOfEngagement";
  *(v13 + 1) = 31;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "wasNominatedAsTopHit";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sodiumL2Score";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isExactMatchOfLaunchString";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "wasEngagedInSpotlight";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "resultQueryRecency";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "pommesL2Score";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "isSemanticMatch";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "semanticScore";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "isSyntacticMatch";
  *(v31 + 1) = 16;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "syntacticScore";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "embeddingStatus";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "itemAgeInDays";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 10:
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
      case 7:
      case 8:
      case 11:
      case 13:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
        v10 = OUTLINED_FUNCTION_288();
        sub_1B94857C8(v10, v11, a2, a3);
        break;
      case 15:
        v8 = OUTLINED_FUNCTION_288();
        sub_1B9485830(v8, v9, a2, a3);
        break;
      case 16:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.traverse<A>(visitor:)(uint64_t result, uint64_t a2)
{
  if (*v2 == 0.0 || (v7 = OUTLINED_FUNCTION_23_3(1, *v2), !v3))
  {
    v4 = *(v2 + 4);
    if (v4 == 0.0 || (v7 = OUTLINED_FUNCTION_23_3(2, v4), !v3))
    {
      v5 = *(v2 + 8);
      if (v5 == 0.0 || (v7 = OUTLINED_FUNCTION_23_3(3, v5), !v3))
      {
        v6 = *(v2 + 12);
        if (v6 == 0.0 || (v7 = OUTLINED_FUNCTION_23_3(4, v6), !v3))
        {
          if (*(v2 + 16) != 1 || (OUTLINED_FUNCTION_29(), v7 = sub_1B964C670(), !v3))
          {
            v8 = *(v2 + 20);
            if (v8 == 0.0 || (v7 = OUTLINED_FUNCTION_23_3(6, v8), !v3))
            {
              if (*(v2 + 24) != 1 || (OUTLINED_FUNCTION_29(), v7 = sub_1B964C670(), !v3))
              {
                if (*(v2 + 25) != 1 || (OUTLINED_FUNCTION_29(), v7 = sub_1B964C670(), !v3))
                {
                  if (!*(v2 + 32) || (v9 = *(v2 + 40), v16 = *(v2 + 32), v17 = v9, v10 = sub_1B9485B48(), v7 = OUTLINED_FUNCTION_3_31(&v16, 9, &type metadata for Searchfoundation_CoreSpotlightResultQueryRecency, v10), !v3))
                  {
                    v11 = *(v2 + 44);
                    if (v11 == 0.0 || (v7 = OUTLINED_FUNCTION_23_3(10, v11), !v3))
                    {
                      if (*(v2 + 48) != 1 || (OUTLINED_FUNCTION_29(), v7 = sub_1B964C670(), !v3))
                      {
                        v12 = *(v2 + 52);
                        if (v12 == 0.0 || (v7 = OUTLINED_FUNCTION_23_3(12, v12), !v3))
                        {
                          if (*(v2 + 56) != 1 || (OUTLINED_FUNCTION_29(), v7 = sub_1B964C670(), !v3))
                          {
                            v13 = *(v2 + 60);
                            if (v13 == 0.0 || (v7 = OUTLINED_FUNCTION_23_3(14, v13), !v3))
                            {
                              if (!*(v2 + 64) || (v14 = *(v2 + 72), v16 = *(v2 + 64), v17 = v14, v15 = sub_1B9485B9C(), v7 = OUTLINED_FUNCTION_3_31(&v16, 15, &type metadata for Searchfoundation_EmbeddingStatusType, v15), !v3))
                              {
                                if (!*(v2 + 76) || (OUTLINED_FUNCTION_29(), v7 = sub_1B964C710(), !v3))
                                {
                                  type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals(0);
                                  OUTLINED_FUNCTION_12();
                                  return sub_1B964C290();
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
            }
          }
        }
      }
    }
  }

  return v7;
}

unint64_t sub_1B9485B48()
{
  result = qword_1EBACEB40;
  if (!qword_1EBACEB40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CoreSpotlightResultQueryRecency, &type metadata for Searchfoundation_CoreSpotlightResultQueryRecency, v0, v1);
    atomic_store(result, &qword_1EBACEB40);
  }

  return result;
}

unint64_t sub_1B9485B9C()
{
  result = qword_1EBACEB48;
  if (!qword_1EBACEB48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EmbeddingStatusType, &type metadata for Searchfoundation_EmbeddingStatusType, v0, v1);
    atomic_store(result, &qword_1EBACEB48);
  }

  return result;
}

uint64_t static Searchfoundation_CoreSpotlightRankingSignals.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 25) != *(a2 + 25) || !sub_1B8D92198(*(a1 + 32), *(a1 + 40), *(a2 + 32)) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || !sub_1B8D92198(*(a1 + 64), *(a1 + 72), *(a2 + 64)) || *(a1 + 76) != *(a2 + 76))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals(0);
  sub_1B964C2B0();
  sub_1B8CD31D0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals(0);
  sub_1B8CD31D0(&qword_1EBACEB50, type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals, protocol conformance descriptor for Searchfoundation_CoreSpotlightRankingSignals);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9485E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD31D0(&qword_1EBACEBD0, type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals, protocol conformance descriptor for Searchfoundation_CoreSpotlightRankingSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9485F00(uint64_t a1)
{
  v2 = sub_1B8CD31D0(&qword_1EBACEBB0, type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals, protocol conformance descriptor for Searchfoundation_CoreSpotlightRankingSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9485F70(uint64_t a1, uint64_t a2)
{
  sub_1B8CD31D0(&qword_1EBACEBB0, type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals, protocol conformance descriptor for Searchfoundation_CoreSpotlightRankingSignals);

  return sub_1B964C5D0();
}

unint64_t sub_1B9485FF0()
{
  result = qword_1EBACEB58;
  if (!qword_1EBACEB58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CoreSpotlightResultQueryRecency, &type metadata for Searchfoundation_CoreSpotlightResultQueryRecency, v0, v1);
    atomic_store(result, &qword_1EBACEB58);
  }

  return result;
}

unint64_t sub_1B9486048()
{
  result = qword_1EBACEB60;
  if (!qword_1EBACEB60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CoreSpotlightResultQueryRecency, &type metadata for Searchfoundation_CoreSpotlightResultQueryRecency, v0, v1);
    atomic_store(result, &qword_1EBACEB60);
  }

  return result;
}

unint64_t sub_1B94860A0()
{
  result = qword_1EBACEB68;
  if (!qword_1EBACEB68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_CoreSpotlightResultQueryRecency, &type metadata for Searchfoundation_CoreSpotlightResultQueryRecency, v0, v1);
    atomic_store(result, &qword_1EBACEB68);
  }

  return result;
}

unint64_t sub_1B9486128()
{
  result = qword_1EBACEB80;
  if (!qword_1EBACEB80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EmbeddingStatusType, &type metadata for Searchfoundation_EmbeddingStatusType, v0, v1);
    atomic_store(result, &qword_1EBACEB80);
  }

  return result;
}

unint64_t sub_1B9486180()
{
  result = qword_1EBACEB88;
  if (!qword_1EBACEB88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EmbeddingStatusType, &type metadata for Searchfoundation_EmbeddingStatusType, v0, v1);
    atomic_store(result, &qword_1EBACEB88);
  }

  return result;
}

unint64_t sub_1B94861D8()
{
  result = qword_1EBACEB90;
  if (!qword_1EBACEB90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EmbeddingStatusType, &type metadata for Searchfoundation_EmbeddingStatusType, v0, v1);
    atomic_store(result, &qword_1EBACEB90);
  }

  return result;
}

uint64_t sub_1B94863C8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Searchfoundation_Date.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Searchfoundation_Date(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_TimeZone.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Searchfoundation_TimeZone(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_TimeZone.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Searchfoundation_TimeZone.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B9486694@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1B9486728(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t Searchfoundation_Date.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C510();
    }
  }

  return result;
}

uint64_t Searchfoundation_Date.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v1 == 0.0 || (result = sub_1B964C6F0(), !v0))
  {
    type metadata accessor for Searchfoundation_Date(0);
    return OUTLINED_FUNCTION_2_7();
  }

  return result;
}

uint64_t static Searchfoundation_Date.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_Date(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_87();
  v4 = sub_1B8CD3218(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t sub_1B9486A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3218(&qword_1EBACEC20, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9486AB8(uint64_t a1)
{
  v2 = sub_1B8CD3218(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9486B28(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3218(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);

  return sub_1B964C5D0();
}

uint64_t sub_1B9486BDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B964D050;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  (*(v13 + 104))(v11, v12);
  return sub_1B964C760();
}

uint64_t Searchfoundation_TimeZone.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_TimeZone.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1B964C700(), !v0))
  {
    type metadata accessor for Searchfoundation_TimeZone(0);
    return OUTLINED_FUNCTION_2_7();
  }

  return result;
}

uint64_t static Searchfoundation_TimeZone.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_TimeZone(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_87();
  v5 = sub_1B8CD3218(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B9486F1C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD3218(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9487000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3218(&qword_1EBACEC18, type metadata accessor for Searchfoundation_TimeZone, protocol conformance descriptor for Searchfoundation_TimeZone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9487080(uint64_t a1)
{
  v2 = sub_1B8CD3218(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone, protocol conformance descriptor for Searchfoundation_TimeZone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94870F0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3218(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone, protocol conformance descriptor for Searchfoundation_TimeZone);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_DescriptionCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  if (qword_1EBAB8390 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBACEC40;
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutOptions.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = a1;
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_39();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9487604()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Searchfoundation_DescriptionCardSection.punchoutOptions.setter(v4);
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v0 + 64);
      v10 = *(v0 + 56);
      OUTLINED_FUNCTION_7_40();
      v11 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B948B190(v11);
      *(v10 + v9) = v8;
    }

    OUTLINED_FUNCTION_59_3(v8 + 16);
    *(v8 + 16) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_10_4(v0 + 24, v1);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_DescriptionCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_16_29();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 24, v5);
  *(v6 + 24) = v2;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutPickerTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_74(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 24);
  v6 = *(v5 + 32);
  *(v1 + 48) = *(v5 + 24);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B94877FC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_DescriptionCardSection.punchoutPickerTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_40();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B948B190(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 24);
    *(v7 + 24) = v3;
    *(v7 + 32) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_10_4(v0 + 40, v1);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_16_29();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v2;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_74(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 40);
  v6 = *(v5 + 48);
  *(v1 + 48) = *(v5 + 40);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B94879DC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_40();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B948B190(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 40);
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_DescriptionCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_5_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 56, v3);
  return *(v2 + 56);
}

uint64_t Searchfoundation_DescriptionCardSection.canBeHidden.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 56, v5);
  *(v6 + 56) = a1 & 1;
  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.canBeHidden.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  *(v1 + 84) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9487B68(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_5_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 57, v3);
  return *(v2 + 57);
}

uint64_t Searchfoundation_DescriptionCardSection.hasTopPadding_p.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 57, v5);
  *(v6 + 57) = a1 & 1;
  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.hasTopPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 57);
  *(v1 + 84) = *(v0 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9487CE0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_5_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 58, v3);
  return *(v2 + 58);
}

uint64_t Searchfoundation_DescriptionCardSection.hasBottomPadding_p.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 58, v5);
  *(v6 + 58) = a1 & 1;
  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.hasBottomPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 58);
  *(v1 + 84) = *(v0 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9487E58(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.type.getter()
{
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_DescriptionCardSection.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_16_29();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.type.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_74(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9488024()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_DescriptionCardSection.type.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_40();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B948B190(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_DescriptionCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_50();
  result = OUTLINED_FUNCTION_10_4(v1 + 80, v3);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v5;
  return result;
}

void Searchfoundation_DescriptionCardSection.separatorStyle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_16_29();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v9);
    *(v2 + v1) = v8;
  }

  OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v4;
  *(v8 + 88) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v4 = *(v0 + 88);
  *(v1 + 72) = *(v0 + 80);
  *(v1 + 80) = v4;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94881D8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 72);
  v3 = *(v0 + 84);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_73_2(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 80) = v2;
  *(v7 + 88) = v5;
  OUTLINED_FUNCTION_242();

  free(v10);
}

uint64_t Searchfoundation_DescriptionCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_39();
    return OUTLINED_FUNCTION_78_8();
  }

  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_16_29() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B948B190(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_8_39();
  OUTLINED_FUNCTION_65_10();
  v4 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v12[v14] = qword_1ED9CD1C8;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_39();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_DescriptionCardSection.title.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_74(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9488728(void *a1)
{
  OUTLINED_FUNCTION_5_39();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521(v4, v7);
  v5 = *v4;

  return v5;
}

void sub_1B94887CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_16();
  v28 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v31 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B948B190(v31);
    *(v27 + v28) = v30;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_18(v32, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.subtitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_74(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_36();
    return OUTLINED_FUNCTION_78_8();
  }

  return result;
}

uint64_t sub_1B94889D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B948F92C();
  return a7(v11);
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionText.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_16_29() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B948B190(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_65_10();
  v4 = type metadata accessor for Searchfoundation_Text(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.descriptionText.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_Text(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    *(v11 + 4) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_36();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B9488CBC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13 - 8];
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_521(v5 + *a3, v19);
  sub_1B8D92024();
  v15 = a4(0);
  v16 = __swift_getEnumTagSinglePayload(v14, 1, v15) != 1;
  sub_1B8D9207C(v14, v6, v4);
  return v16;
}

void sub_1B9488DC0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v10 = OUTLINED_FUNCTION_40_0();
    *(v0 + v9) = sub_1B948B190(v10);
  }

  v11 = v2(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_DescriptionCardSection.expandText.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_74(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_DescriptionCardSection.image.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_16_29() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B948B190(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_65_10();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.image.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *&v12[v14] = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_88();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_DescriptionCardSection.titleNoWrap.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_DescriptionCardSection.titleWeight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight);
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9489378(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_50();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4(v1 + v3, v4);
  return *(v1 + v3);
}

void sub_1B94893C0()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionSize.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize);
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9489494()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 80);
  v5 = *(v0 + 84);
  v6 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B948B190(v9);
    OUTLINED_FUNCTION_73_2(v10);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v8 + v2) = v4;
  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionWeight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight);
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B94895C8(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_50();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4(v1 + v3, v4);
  return *(v1 + v3);
}

void sub_1B9489610()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v7 + v3) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionExpand.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94896E8()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_73_2(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v7 + v1) = v5;
  OUTLINED_FUNCTION_242();

  free(v10);
}

uint64_t Searchfoundation_DescriptionCardSection.imageAlign.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_5_39();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9489824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_5_39();
  v6 = *(v2 + v5) + *a1;
  result = OUTLINED_FUNCTION_521(v6, v9);
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

void *sub_1B9489884@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B94898CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void sub_1B948991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = v20;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v20 + v29);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v32 = OUTLINED_FUNCTION_40_0();
    v31 = sub_1B948B190(v32);
    *(v25 + v29) = v31;
  }

  v33 = v31 + *v24;
  OUTLINED_FUNCTION_18(v33, &a10);
  *v33 = v27;
  *(v33 + 8) = v28;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.textAlign.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_5_39();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9489A20()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_238();
  v6 = *(v5 + 72);
  v7 = *(v0 + 84);
  v8 = *(v0 + 88);
  v9 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v0 + 84);
    v13 = *(v0 + 88);
    OUTLINED_FUNCTION_7_40();
    v14 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B948B190(v14);
    *(v13 + v12) = v11;
  }

  v15 = 48;
  if (v4)
  {
    v15 = 24;
  }

  v16 = v11 + *v2;
  OUTLINED_FUNCTION_18(v16, v0 + v15);
  *v16 = v6;
  *(v16 + 8) = v9;
  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t Searchfoundation_DescriptionCardSection.attributionText.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_74(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9489BB4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = v4;
    OUTLINED_FUNCTION_191();
    v7 = OUTLINED_FUNCTION_461();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_7_40();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B948B190(v13);
      OUTLINED_FUNCTION_73_2(v14);
    }

    v15 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v15, v0 + 24);
    *v15 = v2;
    v15[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t Searchfoundation_DescriptionCardSection.attributionURL.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_31();
    return OUTLINED_FUNCTION_78_8();
  }

  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.attributionURL.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_16_29() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B948B190(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_65_10();
  v4 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.attributionURL.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Searchfoundation_URL(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9489FE4@<X0>(int a1@<W8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-v4 - 8];
  OUTLINED_FUNCTION_4_50();
  v6 = OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521(v6, v10);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (!v7)
  {
    return OUTLINED_FUNCTION_78_8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  if (qword_1EBAB5600 != -1)
  {
    OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
  }

  result = OUTLINED_FUNCTION_59_0();
  if (a1 != 1)
  {
    return sub_1B8D9207C(v5, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.attributionGlyph.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_16_29() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B948B190(v2);
    OUTLINED_FUNCTION_135(v3);
  }

  OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_65_10();
  v4 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v4);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.attributionGlyph.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    *&v12[v14] = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_88();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B948A364()
{
  OUTLINED_FUNCTION_243();
  v3 = v1;
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 32);
  if (v7)
  {
    v8 = v2;
    sub_1B948F92C();
    v3(v4);
    sub_1B948F984(v5, v8);
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Searchfoundation_DescriptionCardSection.richDescriptions.getter()
{
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions, v2);
}

uint64_t Searchfoundation_DescriptionCardSection.richDescriptions.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B948B190(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  OUTLINED_FUNCTION_9_3(v6 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions, v5);
  *(v6 + v9) = a1;
}

uint64_t Searchfoundation_DescriptionCardSection.richDescriptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_39();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B948A5C8()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Searchfoundation_DescriptionCardSection.richDescriptions.setter(v4);
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v0 + 64);
      v10 = *(v0 + 56);
      OUTLINED_FUNCTION_7_40();
      v11 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B948B190(v11);
      *(v10 + v9) = v8;
    }

    v12 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
    OUTLINED_FUNCTION_59_3(v8 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions);
    *(v8 + v12) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_DescriptionCardSection.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_DescriptionCardSection.unknownFields.setter(uint64_t a1)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1B948A774()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEC28);
  __swift_project_value_buffer(v0, qword_1EBACEC28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1B966D600;
  v4 = v56 + v3 + v1[14];
  *(v56 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v56 + v3 + v2 + v1[14];
  *(v56 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v56 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v56 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v56 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v56 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v56 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v56 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v56 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v56 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v56 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v56 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 101;
  *v28 = "descriptionText";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v56 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 102;
  *v30 = "expandText";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v56 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 103;
  *v32 = "image";
  *(v32 + 1) = 5;
  v32[16] = 2;
  v7();
  v33 = (v56 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 104;
  *v34 = "titleNoWrap";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v56 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 105;
  *v36 = "titleWeight";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v56 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 106;
  *v38 = "descriptionSize";
  *(v38 + 1) = 15;
  v38[16] = 2;
  v7();
  v39 = (v56 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 107;
  *v40 = "descriptionWeight";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v7();
  v41 = (v56 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 108;
  *v42 = "descriptionExpand";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v56 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 109;
  *v44 = "imageAlign";
  *(v44 + 1) = 10;
  v44[16] = 2;
  v7();
  v45 = (v56 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 110;
  *v46 = "textAlign";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v7();
  v47 = (v56 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 111;
  *v48 = "attributionText";
  *(v48 + 1) = 15;
  v48[16] = 2;
  v7();
  v49 = (v56 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 112;
  *v50 = "attributionURL";
  *(v50 + 1) = 14;
  v50[16] = 2;
  v7();
  v51 = (v56 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 113;
  *v52 = "attributionGlyph";
  *(v52 + 1) = 16;
  v52[16] = 2;
  v7();
  v53 = (v56 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 114;
  *v54 = "richDescriptions";
  *(v54 + 1) = 16;
  v54[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_DescriptionCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8388 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACEC28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B948AF80()
{
  OUTLINED_FUNCTION_7_40();
  result = sub_1B948AFD0();
  qword_1EBACEC40 = result;
  return result;
}

uint64_t sub_1B948AFD0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText;
  v7 = type metadata accessor for Searchfoundation_Text(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__image;
  v10 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand) = 0;
  v11 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL;
  v15 = type metadata accessor for Searchfoundation_URL(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionGlyph, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions) = v1;
  return v0;
}

uint64_t sub_1B948B190(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v73 - v10;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v73 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v74 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v75 = (v1 + 80);
  *(v1 + 88) = 1;
  v11 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor;
  v76 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor;
  v12 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  v77 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  v79 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText;
  v80 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText;
  v16 = type metadata accessor for Searchfoundation_Text(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  v81 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__image;
  v82 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__image;
  v19 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v83 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap) = 0;
  v85 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight) = 0;
  v86 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize) = 0;
  v87 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight) = 0;
  v88 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand) = 0;
  v20 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  v89 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign;
  v91 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  v92 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL;
  v93 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL;
  v24 = type metadata accessor for Searchfoundation_URL(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v94 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionGlyph;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionGlyph, 1, 1, v19);
  v95 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v25 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v25;
  swift_beginAccess();
  v27 = *(a1 + 24);
  v26 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v27;
  *(v1 + 32) = v26;

  swift_beginAccess();
  v29 = *(a1 + 40);
  v28 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v29;
  *(v1 + 48) = v28;

  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v28;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v28;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 58);
  v30 = v73;
  swift_beginAccess();
  *v30 = v28;
  swift_beginAccess();
  v32 = *(a1 + 64);
  v31 = *(a1 + 72);
  v33 = v74;
  swift_beginAccess();
  *v33 = v32;
  *(v1 + 72) = v31;

  swift_beginAccess();
  v34 = *(a1 + 80);
  v35 = *(a1 + 88);
  v36 = v75;
  swift_beginAccess();
  *v36 = v34;
  *(v1 + 88) = v35;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  v40 = v77;
  swift_beginAccess();
  *v40 = v39;
  v40[1] = v38;

  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v79;
  swift_beginAccess();
  *v44 = v43;
  v44[1] = v42;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  v48 = v81;
  swift_beginAccess();
  *v48 = v47;
  v48[1] = v46;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  swift_beginAccess();
  LOBYTE(v49) = *(a1 + v49);
  v50 = v83;
  swift_beginAccess();
  *(v1 + v50) = v49;
  v51 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  swift_beginAccess();
  LODWORD(v51) = *(a1 + v51);
  v52 = v85;
  swift_beginAccess();
  *(v1 + v52) = v51;
  v53 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  swift_beginAccess();
  LODWORD(v53) = *(a1 + v53);
  v54 = v86;
  swift_beginAccess();
  *(v1 + v54) = v53;
  v55 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  swift_beginAccess();
  LODWORD(v55) = *(a1 + v55);
  v56 = v87;
  swift_beginAccess();
  *(v1 + v56) = v55;
  v57 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  swift_beginAccess();
  LOBYTE(v57) = *(a1 + v57);
  v58 = v88;
  swift_beginAccess();
  *(v1 + v58) = v57;
  v59 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign);
  swift_beginAccess();
  v60 = *v59;
  LOBYTE(v59) = *(v59 + 8);
  v61 = v89;
  swift_beginAccess();
  *v61 = v60;
  *(v61 + 8) = v59;
  v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign);
  swift_beginAccess();
  v63 = *v62;
  LOBYTE(v62) = *(v62 + 8);
  v64 = v91;
  swift_beginAccess();
  *v64 = v63;
  *(v64 + 8) = v62;
  v65 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  swift_beginAccess();
  v67 = *v65;
  v66 = v65[1];
  v68 = v92;
  swift_beginAccess();
  *v68 = v67;
  v68[1] = v66;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v69 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  swift_beginAccess();
  v70 = *(a1 + v69);

  v71 = v95;
  swift_beginAccess();
  *(v1 + v71) = v70;

  return v1;
}

void *sub_1B948BCB0()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText, &qword_1EBAB8E40, &unk_1B964D640);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__image, &qword_1EBAB8EA8, &unk_1B96B77D0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL, &qword_1EBAB8E20, &unk_1B964D620);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionGlyph, &qword_1EBAB8EA8, &unk_1B96B77D0);

  return v0;
}

uint64_t sub_1B948BDF8()
{
  v0 = sub_1B948BCB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_DescriptionCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_DescriptionCardSection._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B948B190(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B948BEEC(v10, a1, a2, a3);
}

uint64_t sub_1B948BEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 'e':
        sub_1B948C480(a2, a1, a3, a4);
        continue;
      case 'f':
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText;
        goto LABEL_33;
      case 'g':
        sub_1B948C55C(a2, a1, a3, a4);
        continue;
      case 'h':
        v29 = a2;
        v30 = a1;
        v31 = a3;
        v32 = a4;
        v33 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
        goto LABEL_21;
      case 'i':
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
        goto LABEL_30;
      case 'j':
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
        goto LABEL_30;
      case 'k':
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
LABEL_30:
        sub_1B8EC15CC(v17, v18, v19, v20, v21, v11);
        continue;
      case 'l':
        v29 = a2;
        v30 = a1;
        v31 = a3;
        v32 = a4;
        v33 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
LABEL_21:
        sub_1B8EC19CC(v29, v30, v31, v32, v33, v11);
        continue;
      case 'm':
        v22 = sub_1B92CDA04;
        v23 = a2;
        v24 = a1;
        v25 = a3;
        v26 = a4;
        v27 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
        v28 = &type metadata for Searchfoundation_ImageAlignment;
        goto LABEL_35;
      case 'n':
        v22 = sub_1B94634AC;
        v23 = a2;
        v24 = a1;
        v25 = a3;
        v26 = a4;
        v27 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign;
        v28 = &type metadata for Searchfoundation_TextAlignment;
LABEL_35:
        sub_1B948C638(v23, v24, v25, v26, v27, v22, v28);
        break;
      case 'o':
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText;
LABEL_33:
        sub_1B8EC1A14(v12, v13, v14, v15, v16, v11);
        break;
      case 'p':
        sub_1B948C6D8(a2, a1, a3, a4);
        break;
      case 'q':
        sub_1B948C7B4(a2, a1, a3, a4);
        break;
      case 'r':
        sub_1B948C890(a2, a1, a3, a4);
        break;
      default:
        switch(result)
        {
          case 1:
            sub_1B948C2D8(a2, a1, a3, a4);
            break;
          case 2:
            sub_1B8FD77E8(a2, a1);
            break;
          case 3:
            sub_1B8FD786C(a2, a1);
            break;
          case 4:
            sub_1B92D3D10(a2, a1, a3, a4);
            break;
          case 5:
            sub_1B92D3D94(a2, a1, a3, a4);
            break;
          case 6:
            sub_1B92D3E18(a2, a1, a3, a4);
            break;
          case 7:
            sub_1B8E16ACC(a2, a1);
            break;
          case 8:
            sub_1B92D3E9C(a2, a1, a3, a4);
            break;
          case 9:
            sub_1B948C3A4(a2, a1, a3, a4);
            break;
          default:
            if (result == 51)
            {
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title;
              goto LABEL_33;
            }

            if (result == 52)
            {
              v12 = a2;
              v13 = a1;
              v14 = a3;
              v15 = a4;
              v16 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle;
              goto LABEL_33;
            }

            break;
        }

        break;
    }
  }
}

uint64_t sub_1B948C2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD3260(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B948C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3260(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Text(0);
  sub_1B8CD3260(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text, protocol conformance descriptor for Searchfoundation_Text);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3260(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  v9 = sub_1B964C420();
  return OUTLINED_FUNCTION_199_1(v9);
}

uint64_t sub_1B948C6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_URL(0);
  sub_1B8CD3260(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3260(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText(0);
  sub_1B8CD3260(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t Searchfoundation_DescriptionCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  result = sub_1B948C9D8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B948C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v73 - v9;
  v78 = type metadata accessor for Searchfoundation_URL(0);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v77 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v73 - v14;
  v15 = type metadata accessor for Searchfoundation_Image(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v73 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v83 = &v73 - v21;
  v84 = type metadata accessor for Searchfoundation_Text(0);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v86 = &v73 - v24;
  v93 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v93);
  v85 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v75 = a1;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD3260(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    v5 = v4;
    if (v4)
    {
    }

    a1 = v75;
  }

  swift_beginAccess();
  v26 = *(a1 + 32);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    sub_1B964C700();
    if (!v5)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v28 = *(a1 + 48);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) == 1)
  {
    result = sub_1B964C670();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 57) == 1)
  {
    result = sub_1B964C670();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 58) == 1)
  {
    result = sub_1B964C670();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 72);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    v33 = *(a1 + 88);
    v91 = *(a1 + 80);
    v92 = v33;
    sub_1B92C8A2C();
    result = sub_1B964C680();
    if (v5)
    {
      return result;
    }
  }

  v74 = a2;
  swift_beginAccess();
  v34 = v86;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v34, 1, v93) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  else
  {
    v35 = v85;
    sub_1B948F8D4();
    sub_1B8CD3260(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
    sub_1B964C740();
    if (v5)
    {
      v36 = type metadata accessor for Searchfoundation_Color;
      return sub_1B948F984(v35, v36);
    }

    sub_1B948F984(v35, type metadata accessor for Searchfoundation_Color);
  }

  v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v74;
  if (v40)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[1];
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v74 = v41;
  swift_beginAccess();
  v46 = v83;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v46, 1, v84) == 1)
  {
    sub_1B8D9207C(v46, &qword_1EBAB8E40, &unk_1B964D640);
    v47 = v74;
  }

  else
  {
    v35 = v82;
    sub_1B948F8D4();
    sub_1B8CD3260(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text, protocol conformance descriptor for Searchfoundation_Text);
    v47 = v74;
    sub_1B964C740();
    if (v5)
    {
      v36 = type metadata accessor for Searchfoundation_Text;
      return sub_1B948F984(v35, v36);
    }

    sub_1B948F984(v35, type metadata accessor for Searchfoundation_Text);
  }

  v48 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v51)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  v52 = v81;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v52, 1, v15) != 1)
  {
    v35 = v80;
    sub_1B948F8D4();
    sub_1B8CD3260(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
    sub_1B964C740();
    if (!v5)
    {
      sub_1B948F984(v35, type metadata accessor for Searchfoundation_Image);
      goto LABEL_60;
    }

    v36 = type metadata accessor for Searchfoundation_Image;
    return sub_1B948F984(v35, v36);
  }

  sub_1B8D9207C(v52, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_60:
  v53 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  swift_beginAccess();
  if (*(a1 + v53) != 1 || (result = sub_1B964C670(), !v5))
  {
    v54 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
    swift_beginAccess();
    if (!*(a1 + v54) || (result = sub_1B964C6C0(), !v5))
    {
      v55 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
      swift_beginAccess();
      if (!*(a1 + v55) || (result = sub_1B964C6C0(), !v5))
      {
        v56 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
        swift_beginAccess();
        if (!*(a1 + v56) || (result = sub_1B964C6C0(), !v5))
        {
          v57 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
          swift_beginAccess();
          if (*(a1 + v57) != 1 || (result = sub_1B964C670(), !v5))
          {
            v58 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign);
            swift_beginAccess();
            v59 = *v58;
            v74 = v47;
            if (!v59 || (v60 = *(v58 + 8), v89 = v59, v90 = v60, sub_1B92CDA04(), result = sub_1B964C680(), !v5))
            {
              v86 = v18;
              v93 = v15;
              v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign[0]);
              swift_beginAccess();
              if (!*v61 || (v62 = *(v61 + 8), v87 = *v61, v88 = v62, sub_1B94634AC(), result = sub_1B964C680(), !v5))
              {
                v75 = a1;
                v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
                swift_beginAccess();
                v64 = *v63;
                v65 = v63[1];
                v66 = HIBYTE(v65) & 0xF;
                if ((v65 & 0x2000000000000000) == 0)
                {
                  v66 = v64 & 0xFFFFFFFFFFFFLL;
                }

                if (!v66 || (, sub_1B964C700(), result = , !v5))
                {
                  swift_beginAccess();
                  v67 = v79;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v67, 1, v78) == 1)
                  {
                    sub_1B8D9207C(v79, &qword_1EBAB8E20, &unk_1B964D620);
                  }

                  else
                  {
                    v68 = v76;
                    sub_1B948F8D4();
                    sub_1B8CD3260(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL, protocol conformance descriptor for Searchfoundation_URL);
                    sub_1B964C740();
                    result = sub_1B948F984(v68, type metadata accessor for Searchfoundation_URL);
                    if (v5)
                    {
                      return result;
                    }
                  }

                  swift_beginAccess();
                  v69 = v77;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v69, 1, v93) == 1)
                  {
                    sub_1B8D9207C(v77, &qword_1EBAB8EA8, &unk_1B96B77D0);
                  }

                  else
                  {
                    v70 = v86;
                    sub_1B948F8D4();
                    sub_1B8CD3260(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image, protocol conformance descriptor for Searchfoundation_Image);
                    sub_1B964C740();
                    result = sub_1B948F984(v70, type metadata accessor for Searchfoundation_Image);
                    if (v5)
                    {
                      return result;
                    }
                  }

                  v71 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
                  v72 = v75;
                  result = swift_beginAccess();
                  if (*(*(v72 + v71) + 16))
                  {
                    type metadata accessor for Searchfoundation_RichText(0);
                    sub_1B8CD3260(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText, protocol conformance descriptor for Searchfoundation_RichText);

                    sub_1B964C730();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_DescriptionCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_5_39();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B948DB34(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B948DB34(uint64_t a1, uint64_t a2)
{
  v175 = type metadata accessor for Searchfoundation_URL(0);
  MEMORY[0x1EEE9AC00](v175);
  v168 = (&v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  MEMORY[0x1EEE9AC00](v171);
  v176 = &v164 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v172 = (&v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v174 = &v164 - v9;
  v181 = type metadata accessor for Searchfoundation_Image(0);
  v10 = MEMORY[0x1EEE9AC00](v181);
  v167 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v164 - v12;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v13 = MEMORY[0x1EEE9AC00](v180);
  v173 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v179 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v169 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v170 = &v164 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v178 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v188 = &v164 - v23;
  v185 = type metadata accessor for Searchfoundation_Text(0);
  MEMORY[0x1EEE9AC00](v185);
  v182 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40);
  MEMORY[0x1EEE9AC00](v184);
  v186 = &v164 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v183 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v189 = &v164 - v29;
  v30 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v30);
  v187 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v32);
  v190 = &v164 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v164 - v38;
  swift_beginAccess();
  v40 = *(a1 + 16);
  swift_beginAccess();
  v41 = *(a2 + 16);

  sub_1B8D67B1C(v40, v41);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v45 = *(a1 + 24);
  v44 = *(a1 + 32);
  swift_beginAccess();
  v46 = v45 == *(a2 + 24) && v44 == *(a2 + 32);
  if (!v46 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v47 = *(a1 + 40);
  v48 = *(a1 + 48);
  swift_beginAccess();
  v49 = v47 == *(a2 + 40) && v48 == *(a2 + 48);
  if (!v49 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v50 = *(a1 + 56);
  swift_beginAccess();
  if (v50 != *(a2 + 56))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v51 = *(a1 + 57);
  swift_beginAccess();
  if (v51 != *(a2 + 57))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v52 = *(a1 + 58);
  swift_beginAccess();
  if (v52 != *(a2 + 58))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v53 = *(a1 + 64);
  v54 = *(a1 + 72);
  swift_beginAccess();
  v55 = v53 == *(a2 + 64) && v54 == *(a2 + 72);
  if (!v55 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v56 = *(a1 + 80);
  v57 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v56, v57, *(a2 + 80)))
  {
    goto LABEL_24;
  }

  v166 = a2;
  swift_beginAccess();
  v165 = a1;
  sub_1B8D92024();
  swift_beginAccess();
  v58 = *(v32 + 48);
  v59 = v190;
  sub_1B8D92024();
  v60 = v166;
  v61 = v59;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v59, 1, v30) == 1)
  {
    sub_1B8D9207C(v39, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59 + v58, 1, v30);
    v63 = v188;
    v64 = v189;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v61, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_34;
    }

LABEL_28:
    v68 = &qword_1EBACB058;
    v69 = &unk_1B96CA9D0;
    v70 = v61;
LABEL_29:
    sub_1B8D9207C(v70, v68, v69);
    goto LABEL_24;
  }

  sub_1B8D92024();
  v67 = __swift_getEnumTagSinglePayload(v59 + v58, 1, v30);
  v64 = v189;
  if (v67 == 1)
  {
    sub_1B8D9207C(v39, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B948F984(v37, type metadata accessor for Searchfoundation_Color);
    goto LABEL_28;
  }

  v71 = v187;
  sub_1B948F8D4();
  if (*&v37[*(v30 + 20)] != *(v71 + *(v30 + 20)))
  {

    sub_1B947FDE4();
    v73 = v72;

    if ((v73 & 1) == 0)
    {
      sub_1B948F984(v71, type metadata accessor for Searchfoundation_Color);
      sub_1B8D9207C(v39, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B948F984(v37, type metadata accessor for Searchfoundation_Color);
      v70 = v190;
      v68 = &qword_1EBACB050;
      v69 = &unk_1B96B7BD0;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v74 = sub_1B964C850();
  sub_1B948F984(v71, type metadata accessor for Searchfoundation_Color);
  sub_1B8D9207C(v39, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B948F984(v37, type metadata accessor for Searchfoundation_Color);
  sub_1B8D9207C(v190, &qword_1EBACB050, &unk_1B96B7BD0);
  v63 = v188;
  if ((v74 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_34:
  v75 = (v165 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  swift_beginAccess();
  v76 = *v75;
  v77 = v75[1];
  v78 = (v60 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  swift_beginAccess();
  v79 = v76 == *v78 && v77 == v78[1];
  if (!v79 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  v80 = (v165 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = (v60 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  swift_beginAccess();
  v84 = v81 == *v83 && v82 == v83[1];
  if (!v84 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v85 = *(v184 + 48);
  v86 = v186;
  sub_1B8D92024();
  sub_1B8D92024();
  v87 = v185;
  if (__swift_getEnumTagSinglePayload(v86, 1, v185) == 1)
  {
    sub_1B8D9207C(v64, &qword_1EBAB8E40, &unk_1B964D640);
    if (__swift_getEnumTagSinglePayload(v86 + v85, 1, v87) == 1)
    {
      sub_1B8D9207C(v86, &qword_1EBAB8E40, &unk_1B964D640);
      goto LABEL_47;
    }

LABEL_57:
    v68 = &qword_1EBAB8E48;
    v69 = &unk_1B96CCC40;
LABEL_58:
    v70 = v86;
    goto LABEL_29;
  }

  v95 = v183;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v86 + v85, 1, v87) == 1)
  {
    sub_1B8D9207C(v64, &qword_1EBAB8E40, &unk_1B964D640);
    sub_1B948F984(v95, type metadata accessor for Searchfoundation_Text);
    goto LABEL_57;
  }

  v96 = v182;
  sub_1B948F8D4();
  v97 = *v95 == *v96 && *(v95 + 8) == *(v96 + 8);
  if (!v97 && (sub_1B964C9F0() & 1) == 0 || *(v95 + 16) != *(v96 + 16))
  {
    sub_1B8D9207C(v64, &qword_1EBAB8E40, &unk_1B964D640);
    sub_1B948F984(v96, type metadata accessor for Searchfoundation_Text);
    sub_1B948F984(v95, type metadata accessor for Searchfoundation_Text);
    v70 = v86;
    v68 = &qword_1EBAB8E40;
    v69 = &unk_1B964D640;
    goto LABEL_29;
  }

  sub_1B964C2B0();
  v98 = v64;
  v99 = v95;
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v100 = sub_1B964C850();
  sub_1B8D9207C(v98, &qword_1EBAB8E40, &unk_1B964D640);
  sub_1B948F984(v96, type metadata accessor for Searchfoundation_Text);
  sub_1B948F984(v99, type metadata accessor for Searchfoundation_Text);
  sub_1B8D9207C(v86, &qword_1EBAB8E40, &unk_1B964D640);
  if ((v100 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_47:
  v88 = (v165 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = (v60 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  swift_beginAccess();
  v92 = v89 == *v91 && v90 == v91[1];
  if (!v92 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v86 = v179;
  v93 = *(v180 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v94 = v181;
  if (__swift_getEnumTagSinglePayload(v86, 1, v181) == 1)
  {
    sub_1B8D9207C(v63, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v86 + v93, 1, v94) == 1)
    {
      sub_1B8D9207C(v86, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_75;
    }

    goto LABEL_71;
  }

  v101 = v178;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v86 + v93, 1, v94) == 1)
  {
    sub_1B8D9207C(v63, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B948F984(v101, type metadata accessor for Searchfoundation_Image);
LABEL_71:
    v68 = &qword_1EBAB8EB0;
    v69 = &qword_1B964D6B0;
    goto LABEL_58;
  }

  v102 = v177;
  sub_1B948F8D4();
  if (*(v101 + *(v94 + 20)) != *(v102 + *(v94 + 20)))
  {

    sub_1B94C6890();
    v104 = v103;

    if ((v104 & 1) == 0)
    {
      sub_1B948F984(v102, type metadata accessor for Searchfoundation_Image);
      sub_1B8D9207C(v188, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B948F984(v178, type metadata accessor for Searchfoundation_Image);
      v70 = v86;
      v68 = &qword_1EBAB8EA8;
      v69 = &unk_1B96B77D0;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v105 = v178;
  v106 = sub_1B964C850();
  sub_1B948F984(v102, type metadata accessor for Searchfoundation_Image);
  sub_1B8D9207C(v188, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B948F984(v105, type metadata accessor for Searchfoundation_Image);
  sub_1B8D9207C(v86, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v106 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_75:
  v107 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  v108 = v165;
  swift_beginAccess();
  LODWORD(v107) = *(v108 + v107);
  v109 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  swift_beginAccess();
  if (v107 != *(v60 + v109))
  {
    goto LABEL_24;
  }

  v110 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  swift_beginAccess();
  LODWORD(v110) = *(v108 + v110);
  v111 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  swift_beginAccess();
  if (v110 != *(v60 + v111))
  {
    goto LABEL_24;
  }

  v112 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  swift_beginAccess();
  LODWORD(v112) = *(v108 + v112);
  v113 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  swift_beginAccess();
  if (v112 != *(v60 + v113))
  {
    goto LABEL_24;
  }

  v114 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  v115 = v165;
  swift_beginAccess();
  LODWORD(v114) = *(v115 + v114);
  v116 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  v117 = v166;
  swift_beginAccess();
  if (v114 != *(v117 + v116))
  {
    goto LABEL_24;
  }

  v118 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  v119 = v165;
  swift_beginAccess();
  LODWORD(v118) = *(v119 + v118);
  v120 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  v121 = v166;
  swift_beginAccess();
  if (v118 != *(v121 + v120))
  {
    goto LABEL_24;
  }

  v122 = v165 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  swift_beginAccess();
  v123 = *v122;
  v124 = *(v122 + 8);
  v125 = (v166 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign);
  swift_beginAccess();
  if (!sub_1B8D92198(v123, v124, *v125))
  {
    goto LABEL_24;
  }

  v126 = v165 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign[0];
  swift_beginAccess();
  v127 = *v126;
  v128 = *(v126 + 8);
  v129 = (v166 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign[0]);
  swift_beginAccess();
  if (!sub_1B8D92198(v127, v128, *v129))
  {
    goto LABEL_24;
  }

  v130 = (v165 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  swift_beginAccess();
  v131 = *v130;
  v132 = v130[1];
  v133 = (v166 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  swift_beginAccess();
  v134 = v131 == *v133 && v132 == v133[1];
  if (!v134 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v135 = *(v171 + 48);
  v136 = v176;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v136, 1, v175) == 1)
  {
    sub_1B8D9207C(v174, &qword_1EBAB8E20, &unk_1B964D620);
    if (__swift_getEnumTagSinglePayload(v176 + v135, 1, v175) == 1)
    {
      sub_1B8D9207C(v176, &qword_1EBAB8E20, &unk_1B964D620);
      goto LABEL_101;
    }

LABEL_94:
    v138 = &qword_1EBAB8E28;
    v139 = &unk_1B96B7BB0;
    v140 = v176;
LABEL_114:
    sub_1B8D9207C(v140, v138, v139);
    goto LABEL_24;
  }

  v137 = v176;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v137 + v135, 1, v175) == 1)
  {
    sub_1B8D9207C(v174, &qword_1EBAB8E20, &unk_1B964D620);
    sub_1B948F984(v172, type metadata accessor for Searchfoundation_URL);
    goto LABEL_94;
  }

  v141 = v168;
  sub_1B948F8D4();
  v142 = *v172 == *v141 && v172[1] == v141[1];
  if (!v142 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B948F984(v168, type metadata accessor for Searchfoundation_URL);
    v162 = &qword_1EBAB8E20;
    v163 = &unk_1B964D620;
    sub_1B8D9207C(v174, &qword_1EBAB8E20, &unk_1B964D620);
    sub_1B948F984(v172, type metadata accessor for Searchfoundation_URL);
    v140 = v176;
LABEL_113:
    v138 = v162;
    v139 = v163;
    goto LABEL_114;
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v143 = v172;
  v144 = v168;
  v145 = sub_1B964C850();
  sub_1B948F984(v144, type metadata accessor for Searchfoundation_URL);
  sub_1B8D9207C(v174, &qword_1EBAB8E20, &unk_1B964D620);
  sub_1B948F984(v143, type metadata accessor for Searchfoundation_URL);
  sub_1B8D9207C(v176, &qword_1EBAB8E20, &unk_1B964D620);
  if ((v145 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_101:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v146 = *(v180 + 48);
  v147 = v173;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v147, 1, v181) == 1)
  {
    sub_1B8D9207C(v170, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v173 + v146, 1, v181) == 1)
    {
      sub_1B8D9207C(v173, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_110:
      v155 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
      v156 = v165;
      swift_beginAccess();
      v157 = *(v156 + v155);
      v158 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
      v159 = v166;
      swift_beginAccess();
      v160 = *(v159 + v158);

      sub_1B8D912C0(v157, v160);
      v65 = v161;

      return v65 & 1;
    }

    goto LABEL_106;
  }

  v148 = v173;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v148 + v146, 1, v181) == 1)
  {
    sub_1B8D9207C(v170, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B948F984(v169, type metadata accessor for Searchfoundation_Image);
LABEL_106:
    v138 = &qword_1EBAB8EB0;
    v139 = &qword_1B964D6B0;
    v140 = v173;
    goto LABEL_114;
  }

  v149 = v167;
  sub_1B948F8D4();
  if (*(v169 + *(v181 + 20)) != *(v149 + *(v181 + 20)))
  {

    sub_1B94C6890();
    v151 = v150;

    if ((v151 & 1) == 0)
    {
      sub_1B948F984(v167, type metadata accessor for Searchfoundation_Image);
      v162 = &qword_1EBAB8EA8;
      v163 = &unk_1B96B77D0;
      sub_1B8D9207C(v170, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B948F984(v169, type metadata accessor for Searchfoundation_Image);
      v140 = v173;
      goto LABEL_113;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v152 = v169;
  v153 = v167;
  v154 = sub_1B964C850();
  sub_1B948F984(v153, type metadata accessor for Searchfoundation_Image);
  sub_1B8D9207C(v170, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B948F984(v152, type metadata accessor for Searchfoundation_Image);
  sub_1B8D9207C(v173, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v154)
  {
    goto LABEL_110;
  }

LABEL_24:

  v65 = 0;
  return v65 & 1;
}

uint64_t Searchfoundation_DescriptionCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  sub_1B8CD3260(&qword_1EBACEC48, type metadata accessor for Searchfoundation_DescriptionCardSection, protocol conformance descriptor for Searchfoundation_DescriptionCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B948F764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3260(&qword_1EBACEC60, type metadata accessor for Searchfoundation_DescriptionCardSection, protocol conformance descriptor for Searchfoundation_DescriptionCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B948F7E4(uint64_t a1)
{
  v2 = sub_1B8CD3260(&qword_1EBACE780, type metadata accessor for Searchfoundation_DescriptionCardSection, protocol conformance descriptor for Searchfoundation_DescriptionCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B948F854(uint64_t a1, uint64_t a2)
{
  sub_1B8CD3260(&qword_1EBACE780, type metadata accessor for Searchfoundation_DescriptionCardSection, protocol conformance descriptor for Searchfoundation_DescriptionCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B948F8D4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B948F92C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B948F984(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B948FB24(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_DescriptionCardSection._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B948FBB0(uint64_t a1)
{
  sub_1B948FDD4(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    sub_1B948FDD4(319, &qword_1ED9F31F0, type metadata accessor for Searchfoundation_Text);
    if (v2 <= 0x3F)
    {
      sub_1B948FDD4(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v3 <= 0x3F)
      {
        sub_1B948FDD4(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B948FDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_74(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_62(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Searchfoundation_DescriptionCardSection(0);
}

uint64_t OUTLINED_FUNCTION_7_40()
{
  type metadata accessor for Searchfoundation_DescriptionCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_29()
{
  type metadata accessor for Searchfoundation_DescriptionCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_41_22()
{
  type metadata accessor for Searchfoundation_DescriptionCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_65_10()
{

  return sub_1B948F8D4();
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return sub_1B948F8D4();
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return sub_1B948F8D4();
}

uint64_t Searchfoundation_DynamicURLImageResource.pixelWidth.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_17_27(*(v5 + 32));
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_9_2();
  if (!v6)
  {
    return sub_1B94901B8(v1, a1);
  }

  *a1 = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v6)
  {
    return sub_1B8D9207C(v1, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  return result;
}

uint64_t type metadata accessor for Searchfoundation_DynamicURLImageResource(uint64_t a1)
{
  result = qword_1EBACECA8;
  if (!qword_1EBACECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9490148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B94901B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Searchfoundation_DynamicURLImageResource.pixelWidth.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_30() + 32);
  sub_1B8D9207C(v1 + v2, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B94901B8(v0, v1 + v2);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t (*Searchfoundation_DynamicURLImageResource.pixelWidth.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Searchfoundation_DynamicURLImageResource(0) + 32);
  *(v3 + 10) = v10;
  sub_1B9490148(v1 + v10, v6);
  OUTLINED_FUNCTION_17_5();
  if (v11)
  {
    *v9 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_5();
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    sub_1B94901B8(v6, v9);
  }

  return sub_1B94903C8;
}

uint64_t sub_1B94903CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9490430(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Searchfoundation_DynamicURLImageResource.hasPixelWidth.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_17_27(*(v3 + 32));
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_11(v4);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_DynamicURLImageResource.clearPixelWidth()()
{
  v1 = type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBACAF98, &qword_1B96B98A0);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_DynamicURLImageResource.pixelHeight.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_17_27(*(v5 + 36));
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_9_2();
  if (!v6)
  {
    return sub_1B94901B8(v1, a1);
  }

  *a1 = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v6)
  {
    return sub_1B8D9207C(v1, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  return result;
}

uint64_t sub_1B9490630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B94903CC(a1, v10);
  return a5(v10);
}

uint64_t Searchfoundation_DynamicURLImageResource.pixelHeight.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_30() + 36);
  sub_1B8D9207C(v1 + v2, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B94901B8(v0, v1 + v2);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t (*Searchfoundation_DynamicURLImageResource.pixelHeight.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Searchfoundation_DynamicURLImageResource(0) + 36);
  *(v3 + 10) = v10;
  sub_1B9490148(v1 + v10, v6);
  OUTLINED_FUNCTION_17_5();
  if (v11)
  {
    *v9 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_5();
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    sub_1B94901B8(v6, v9);
  }

  return sub_1B94920B4;
}

void sub_1B9490868(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B94903CC((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBACAF98, &qword_1B96B98A0);
    sub_1B94901B8(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B9490430(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBACAF98, &qword_1B96B98A0);
    sub_1B94901B8(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Searchfoundation_DynamicURLImageResource.hasPixelHeight.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_17_27(*(v3 + 36));
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_11(v4);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_DynamicURLImageResource.clearPixelHeight()()
{
  v1 = type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBACAF98, &qword_1B96B98A0);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_DynamicURLImageResource.formatURL.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Searchfoundation_DynamicURLImageResource.formatURL.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_DynamicURLImageResource.imageOptions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_DynamicURLImageResource.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_DynamicURLImageResource(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_DynamicURLImageResource.unknownFields.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_30() + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t Searchfoundation_DynamicURLImageResource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 36);

  return __swift_storeEnumTagSinglePayload(v5, 1, 1, v4);
}

uint64_t sub_1B9490D10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEC68);
  __swift_project_value_buffer(v0, qword_1EBACEC68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pixelWidth";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pixelHeight";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "formatURL";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supportsResizing";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "imageOptions";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_DynamicURLImageResource._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8398 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACEC68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_DynamicURLImageResource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_9();
        sub_1B949110C(v6, v7, v8, v9);
        break;
      case 2:
        v14 = OUTLINED_FUNCTION_9();
        sub_1B94911C0(v14, v15, v16, v17);
        break;
      case 3:
        sub_1B964C530();
        break;
      case 4:
        sub_1B964C400();
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B9491274(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B949110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B949206C(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
  return sub_1B964C580();
}

uint64_t sub_1B94911C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B949206C(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
  return sub_1B964C580();
}

uint64_t sub_1B9491274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_ImageOption(0);
  sub_1B949206C(&qword_1EBACEC80, type metadata accessor for Searchfoundation_ImageOption, protocol conformance descriptor for Searchfoundation_ImageOption);
  return sub_1B964C570();
}

uint64_t Searchfoundation_DynamicURLImageResource.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v30[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v7 = OUTLINED_FUNCTION_183(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_66();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v30 - v20;
  v30[0] = type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
  v22 = *(v30[0] + 32);
  v31 = v5;
  sub_1B9490148(v5 + v22, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B94901B8(v13, v21);
    OUTLINED_FUNCTION_4_51();
    sub_1B949206C(v23, v24, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    result = sub_1B9490430(v21);
    if (v4)
    {
      return result;
    }
  }

  sub_1B9490148(v31 + *(v30[0] + 36), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B94901B8(v10, v18);
    OUTLINED_FUNCTION_4_51();
    sub_1B949206C(v26, v27, protocol conformance descriptor for Searchfoundation_GraphicalFloat);
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    result = sub_1B9490430(v18);
    if (v4)
    {
      return result;
    }
  }

  v28 = *(v31 + 8);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29 || (OUTLINED_FUNCTION_153_1(), result = sub_1B964C700(), !v4))
  {
    if (*(v31 + 16) != 1 || (OUTLINED_FUNCTION_153_1(), result = sub_1B964C670(), !v4))
    {
      if (!*(*(v31 + 24) + 16))
      {
        return sub_1B964C290();
      }

      type metadata accessor for Searchfoundation_ImageOption(0);
      sub_1B949206C(&qword_1EBACEC80, type metadata accessor for Searchfoundation_ImageOption, protocol conformance descriptor for Searchfoundation_ImageOption);
      OUTLINED_FUNCTION_153_1();
      result = sub_1B964C730();
      if (!v4)
      {
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_DynamicURLImageResource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66();
  v49 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v49 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66();
  v50 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v49 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB020, &unk_1B96B7BC0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_66();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v51 = type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
  v52 = a1;
  v25 = *(v51 + 32);
  v26 = *(v17 + 48);
  sub_1B9490148(a1 + v25, v24);
  sub_1B9490148(a2 + v25, &v24[v26]);
  OUTLINED_FUNCTION_99_0(v24);
  if (v27)
  {
    OUTLINED_FUNCTION_99_0(&v24[v26]);
    if (v27)
    {
      sub_1B8D9207C(v24, &qword_1EBACAF98, &qword_1B96B98A0);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1B9490148(v24, v16);
  OUTLINED_FUNCTION_99_0(&v24[v26]);
  if (v27)
  {
    sub_1B9490430(v16);
LABEL_9:
    v28 = &qword_1EBACB020;
    v29 = &unk_1B96B7BC0;
LABEL_10:
    v30 = v24;
LABEL_23:
    sub_1B8D9207C(v30, v28, v29);
    goto LABEL_24;
  }

  sub_1B94901B8(&v24[v26], v9);
  if (*v16 != *v9)
  {
    sub_1B9490430(v9);
    sub_1B9490430(v16);
    v28 = &qword_1EBACAF98;
    v29 = &qword_1B96B98A0;
    goto LABEL_10;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_89();
  sub_1B949206C(v31, v32, MEMORY[0x1E69AAC10]);
  v33 = sub_1B964C850();
  sub_1B9490430(v9);
  sub_1B9490430(v16);
  sub_1B8D9207C(v24, &qword_1EBACAF98, &qword_1B96B98A0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  v34 = v52;
  v35 = *(v51 + 36);
  v36 = *(v17 + 48);
  sub_1B9490148(v52 + v35, v21);
  sub_1B9490148(a2 + v35, v21 + v36);
  OUTLINED_FUNCTION_99_0(v21);
  if (!v27)
  {
    v37 = v50;
    sub_1B9490148(v21, v50);
    OUTLINED_FUNCTION_99_0(v21 + v36);
    if (!v38)
    {
      v41 = v49;
      sub_1B94901B8(v21 + v36, v49);
      if (*v37 == *v41)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_89();
        sub_1B949206C(v42, v43, MEMORY[0x1E69AAC10]);
        v44 = sub_1B964C850();
        sub_1B9490430(v41);
        sub_1B9490430(v37);
        sub_1B8D9207C(v21, &qword_1EBACAF98, &qword_1B96B98A0);
        if ((v44 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

      sub_1B9490430(v41);
      sub_1B9490430(v37);
      v28 = &qword_1EBACAF98;
      v29 = &qword_1B96B98A0;
      goto LABEL_22;
    }

    sub_1B9490430(v37);
LABEL_21:
    v28 = &qword_1EBACB020;
    v29 = &unk_1B96B7BC0;
LABEL_22:
    v30 = v21;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_99_0(v21 + v36);
  if (!v27)
  {
    goto LABEL_21;
  }

  sub_1B8D9207C(v21, &qword_1EBACAF98, &qword_1B96B98A0);
LABEL_29:
  v45 = *v34 == *a2 && *(v34 + 8) == *(a2 + 8);
  if (v45 || (sub_1B964C9F0()) && *(v34 + 16) == *(a2 + 16))
  {
    sub_1B8D6C500(*(v34 + 24), *(a2 + 24));
    if (v46)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_89();
      sub_1B949206C(v47, v48, MEMORY[0x1E69AAC10]);
      v39 = sub_1B964C850();
      return v39 & 1;
    }
  }

LABEL_24:
  v39 = 0;
  return v39 & 1;
}

uint64_t Searchfoundation_DynamicURLImageResource.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
  sub_1B949206C(&qword_1EBACEC88, type metadata accessor for Searchfoundation_DynamicURLImageResource, protocol conformance descriptor for Searchfoundation_DynamicURLImageResource);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9491C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B949206C(&qword_1EBACECC0, type metadata accessor for Searchfoundation_DynamicURLImageResource, protocol conformance descriptor for Searchfoundation_DynamicURLImageResource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9491CBC(uint64_t a1)
{
  v2 = sub_1B949206C(&qword_1EBACEC98, type metadata accessor for Searchfoundation_DynamicURLImageResource, protocol conformance descriptor for Searchfoundation_DynamicURLImageResource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9491D2C(uint64_t a1, uint64_t a2)
{
  sub_1B949206C(&qword_1EBACEC98, type metadata accessor for Searchfoundation_DynamicURLImageResource, protocol conformance descriptor for Searchfoundation_DynamicURLImageResource);

  return sub_1B964C5D0();
}

void sub_1B9491EF4(uint64_t a1)
{
  sub_1B9492008(319, &qword_1EBACECB8, type metadata accessor for Searchfoundation_ImageOption, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B9492008(319, &qword_1ED9F8FC0, type metadata accessor for Searchfoundation_GraphicalFloat, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9492008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B949206C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
}

uint64_t OUTLINED_FUNCTION_16_30()
{

  return type metadata accessor for Searchfoundation_DynamicURLImageResource(0);
}

uint64_t OUTLINED_FUNCTION_17_27@<X0>(uint64_t a1@<X8>)
{

  return sub_1B9490148(v1 + a1, v2);
}

uint64_t Searchfoundation_EngagementSignal.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Searchfoundation_EngagementSignal(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Searchfoundation_EngagementDomain.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x58;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B94921E4@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_EngagementDomain.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9492218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9494FD8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_EngagementDomain.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBACECC8 = a1;
}

uint64_t sub_1B949237C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_EngagementDomain.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_EngagementSignal.domainEngagementScores.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_EngagementSignal.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_EngagementSignal(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_EngagementSignal.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_EngagementSignal(v2) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_EngagementSignal.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_EngagementSignal(v0);
  return nullsub_1;
}

void Searchfoundation_DomainEngagementScore.domain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_DomainEngagementScore.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_DomainEngagementScore.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_DomainEngagementScore(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Searchfoundation_DomainEngagementScore.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_DomainEngagementScore(v2) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Searchfoundation_DomainEngagementScore.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_DomainEngagementScore(v0);
  return nullsub_1;
}

uint64_t Searchfoundation_DomainEngagementScore.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 12) = 0;
  type metadata accessor for Searchfoundation_DomainEngagementScore(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9492848()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACECD0);
  __swift_project_value_buffer(v0, qword_1EBACECD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_1B9689640;
  v4 = v182 + v3 + v1[14];
  *(v182 + v3) = 0;
  *v4 = "EngagementDomainUnknown";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v182 + v3 + v2 + v1[14];
  *(v182 + v3 + v2) = 1;
  *v8 = "EngagementDomainApplications";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v182 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "EngagementDomainBookmarks";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v182 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "EngagementDomainCalculator";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v7();
  v13 = (v182 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "EngagementDomainCalendar";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v182 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "EngagementDomainCoreSuggestions";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v7();
  v17 = (v182 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "EngagementDomainDeveloper";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v182 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "EngagementDomainDictionary";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v7();
  v21 = (v182 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "EngagementDomainDirectories";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v182 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "EngagementDomainDocuments";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v7();
  v25 = (v182 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "EngagementDomainIBooks";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v7();
  v27 = (v182 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "EngagementDomainKeynote";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v7();
  v29 = (v182 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "EngagementDomainMail";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v7();
  v31 = (v182 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "EngagementDomainMobileTimer";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v7();
  v33 = (v182 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "EngagementDomainAppleNews";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v7();
  v35 = (v182 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "EngagementDomainNumbers";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v7();
  v37 = (v182 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "EngagementDomainOther";
  *(v38 + 1) = 21;
  v38[16] = 2;
  v7();
  v39 = (v182 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "EngagementDomainPDFs";
  *(v40 + 1) = 20;
  v40[16] = 2;
  v7();
  v41 = (v182 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "EngagementDomainPhotos";
  *(v42 + 1) = 22;
  v42[16] = 2;
  v7();
  v43 = (v182 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "EngagementDomainReminders";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v182 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "EngagementDomainSettings";
  *(v46 + 1) = 24;
  v46[16] = 2;
  v7();
  v47 = (v182 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "EngagementDomainVoiceMemos";
  *(v48 + 1) = 26;
  v48[16] = 2;
  v7();
  v49 = (v182 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "EngagementDomainApplication";
  *(v50 + 1) = 27;
  v50[16] = 2;
  v7();
  v51 = (v182 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "EngagementDomainApps";
  *(v52 + 1) = 20;
  v52[16] = 2;
  v7();
  v53 = (v182 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "EngagementDomainDropbox";
  *(v54 + 1) = 23;
  v54[16] = 2;
  v7();
  v55 = (v182 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "EngagementDomainFlights";
  *(v56 + 1) = 23;
  v56[16] = 2;
  v7();
  v57 = (v182 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "EngagementDomainGiphyForMessenger";
  *(v58 + 1) = 33;
  v58[16] = 2;
  v7();
  v59 = (v182 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "EngagementDomainGoogleChromeIOS";
  *(v60 + 1) = 31;
  v60[16] = 2;
  v7();
  v61 = (v182 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "EngagementDomainGoogleMaps";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v7();
  v63 = (v182 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "EngagementDomainGooglePhotos";
  *(v64 + 1) = 28;
  v64[16] = 2;
  v7();
  v65 = (v182 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "EngagementDomainGroupon";
  *(v66 + 1) = 23;
  v66[16] = 2;
  v7();
  v67 = (v182 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "EngagementDomainKG";
  *(v68 + 1) = 18;
  v68[16] = 2;
  v7();
  v69 = (v182 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "EngagementDomainLinkedin";
  *(v70 + 1) = 24;
  v70[16] = 2;
  v7();
  v71 = (v182 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "EngagementDomainMaps";
  *(v72 + 1) = 20;
  v72[16] = 2;
  v7();
  v73 = (v182 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "EngagementDomainParsecMaps";
  *(v74 + 1) = 26;
  v74[16] = 2;
  v7();
  v75 = (v182 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "EngagementDomainMedia";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v7();
  v77 = (v182 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "EngagementDomainMicrosoftOfficeOutlook";
  *(v78 + 1) = 38;
  v78[16] = 2;
  v7();
  v79 = (v182 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "EngagementDomainMLBAtBat";
  *(v80 + 1) = 24;
  v80[16] = 2;
  v7();
  v81 = (v182 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "EngagementDomainMobileAddressBook";
  *(v82 + 1) = 33;
  v82[16] = 2;
  v7();
  v83 = (v182 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "EngagementDomainMobileCal";
  *(v84 + 1) = 25;
  v84[16] = 2;
  v7();
  v85 = (v182 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "EngagementDomainMobileDocumentsFileProvider";
  *(v86 + 1) = 43;
  v86[16] = 2;
  v7();
  v87 = (v182 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "EngagementDomainMobileMail";
  *(v88 + 1) = 26;
  v88[16] = 2;
  v7();
  v89 = (v182 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "EngagementDomainMobileNotes";
  *(v90 + 1) = 27;
  v90[16] = 2;
  v7();
  v91 = (v182 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "EngagementDomainMobileSafari";
  *(v92 + 1) = 28;
  v92[16] = 2;
  v7();
  v93 = (v182 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "EngagementDomainMobileSMS";
  *(v94 + 1) = 25;
  v94[16] = 2;
  v7();
  v95 = (v182 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "EngagementDomainMovies";
  *(v96 + 1) = 22;
  v96[16] = 2;
  v7();
  v97 = (v182 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = 0x1B971F000;
  *(v98 + 1) = 21;
  v98[16] = 2;
  v7();
  v99 = (v182 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "EngagementDomainNews";
  *(v100 + 1) = 20;
  v100[16] = 2;
  v7();
  v101 = (v182 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "EngagementDomainOtherSearchAppStore";
  *(v102 + 1) = 35;
  v102[16] = 2;
  v7();
  v103 = (v182 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "EngagementDomainOtherSearchMaps";
  *(v104 + 1) = 31;
  v104[16] = 2;
  v7();
  v105 = (v182 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "EngagementDomainOtherSearchWeb";
  *(v106 + 1) = 30;
  v106[16] = 2;
  v7();
  v107 = (v182 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "EngagementDomainOtherTapToRadar";
  *(v108 + 1) = 31;
  v108[16] = 2;
  v7();
  v109 = (v182 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "EngagementDomainPandora";
  *(v110 + 1) = 23;
  v110[16] = 2;
  v7();
  v111 = (v182 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "EngagementDomainPinterest";
  *(v112 + 1) = 25;
  v112[16] = 2;
  v7();
  v113 = (v182 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "EngagementDomainPodcasts";
  *(v114 + 1) = 24;
  v114[16] = 2;
  v7();
  v115 = (v182 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "EngagementDomainPreferences";
  *(v116 + 1) = 27;
  v116[16] = 2;
  v7();
  v117 = (v182 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "EngagementDomainRelatedSearch";
  *(v118 + 1) = 29;
  v118[16] = 2;
  v7();
  v119 = (v182 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "EngagementDomainRiffsyKeyboard";
  *(v120 + 1) = 30;
  v120[16] = 2;
  v7();
  v121 = (v182 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "EngagementDomainSports";
  *(v122 + 1) = 22;
  v122[16] = 2;
  v7();
  v123 = (v182 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "EngagementDomainSpotlightSuggestionListContact";
  *(v124 + 1) = 46;
  v124[16] = 2;
  v7();
  v125 = (v182 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "EngagementDomainSpotlightSuggestionListLocal";
  *(v126 + 1) = 44;
  v126[16] = 2;
  v7();
  v127 = (v182 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "EngagementDomainSuggestionListUserTypedString";
  *(v128 + 1) = 45;
  v128[16] = 2;
  v7();
  v129 = (v182 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 62;
  *v130 = "EngagementDomainStocks";
  *(v130 + 1) = 22;
  v130[16] = 2;
  v7();
  v131 = (v182 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 63;
  *v132 = "EngagementDomainParsecStocks";
  *(v132 + 1) = 28;
  v132[16] = 2;
  v7();
  v133 = (v182 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 64;
  *v134 = "EngagementDomainStubHub";
  *(v134 + 1) = 23;
  v134[16] = 2;
  v7();
  v135 = (v182 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 65;
  *v136 = "EngagementDomainSuggestion";
  *(v136 + 1) = 26;
  v136[16] = 2;
  v7();
  v137 = (v182 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 66;
  *v138 = "EngagementDomainSuggestionListParsec";
  *(v138 + 1) = 36;
  v138[16] = 2;
  v7();
  v139 = (v182 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 67;
  *v140 = "EngagementDomainTapToRadar";
  *(v140 + 1) = 26;
  v140[16] = 2;
  v7();
  v141 = (v182 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 68;
  *v142 = "EngagementDomainTv";
  *(v142 + 1) = 18;
  v142[16] = 2;
  v7();
  v143 = (v182 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 69;
  *v144 = "EngagementDomainTweetie";
  *(v144 + 1) = 23;
  v144[16] = 2;
  v7();
  v145 = (v182 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 70;
  *v146 = "EngagementDomainTwitch";
  *(v146 + 1) = 22;
  v146[16] = 2;
  v7();
  v147 = (v182 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 71;
  *v148 = "EngagementDomainWeather";
  *(v148 + 1) = 23;
  v148[16] = 2;
  v7();
  v149 = (v182 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 72;
  *v150 = "EngagementDomainParsecWeather";
  *(v150 + 1) = 29;
  v150[16] = 2;
  v7();
  v151 = (v182 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 73;
  *v152 = "EngagementDomainWebAnswer";
  *(v152 + 1) = 25;
  v152[16] = 2;
  v7();
  v153 = (v182 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 74;
  *v154 = "EngagementDomainWebImages";
  *(v154 + 1) = 25;
  v154[16] = 2;
  v7();
  v155 = (v182 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 75;
  *v156 = "EngagementDomainWebIndex";
  *(v156 + 1) = 24;
  v156[16] = 2;
  v7();
  v157 = (v182 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 76;
  *v158 = "EngagementDomainWebVideo";
  *(v158 + 1) = 24;
  v158[16] = 2;
  v7();
  v159 = (v182 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 77;
  *v160 = "EngagementDomainWhatsApp";
  *(v160 + 1) = 24;
  v160[16] = 2;
  v7();
  v161 = (v182 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 78;
  *v162 = "EngagementDomainYahooAerogram";
  *(v162 + 1) = 29;
  v162[16] = 2;
  v7();
  v163 = (v182 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 79;
  *v164 = "EngagementDomainYelp";
  *(v164 + 1) = 20;
  v164[16] = 2;
  v7();
  v165 = (v182 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 80;
  *v166 = "EngagementDomainYoutube";
  *(v166 + 1) = 23;
  v166[16] = 2;
  v7();
  v167 = (v182 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 81;
  *v168 = "EngagementDomainZillow";
  *(v168 + 1) = 22;
  v168[16] = 2;
  v7();
  v169 = (v182 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 82;
  *v170 = "EngagementDomainParsecDictionary";
  *(v170 + 1) = 32;
  v170[16] = 2;
  v7();
  v171 = (v182 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 83;
  *v172 = "EngagementDomainShortcuts";
  *(v172 + 1) = 25;
  v172[16] = 2;
  v7();
  v173 = (v182 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 84;
  *v174 = "EngagementDomainTips";
  *(v174 + 1) = 20;
  v174[16] = 2;
  v7();
  v175 = (v182 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 85;
  *v176 = "EngagementDomainHealth";
  *(v176 + 1) = 22;
  v176[16] = 2;
  v7();
  v177 = (v182 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 86;
  *v178 = "EngagementDomainSystemPreferences";
  *(v178 + 1) = 33;
  v178[16] = 2;
  v7();
  v179 = (v182 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 87;
  *v180 = "EngagementDomainConversion";
  *(v180 + 1) = 26;
  v180[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9493E6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACECE8);
  __swift_project_value_buffer(v0, qword_1EBACECE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serverScore";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localScore";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "serverScoreConfidence";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "localScoreConfidence";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "domainEngagementScores";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_EngagementSignal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 6:
        OUTLINED_FUNCTION_24_3();
        sub_1B9494210(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9494210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_DomainEngagementScore(0);
  sub_1B9494F90(&qword_1EBACED18, type metadata accessor for Searchfoundation_DomainEngagementScore, protocol conformance descriptor for Searchfoundation_DomainEngagementScore);
  return sub_1B964C570();
}

uint64_t Searchfoundation_EngagementSignal.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      if (*(v2 + 8) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
      {
        if (!*(v2 + 12) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
        {
          if (!*(v2 + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
          {
            if (!*(*(v2 + 24) + 16) || (type metadata accessor for Searchfoundation_DomainEngagementScore(0), sub_1B9494F90(&qword_1EBACED18, type metadata accessor for Searchfoundation_DomainEngagementScore, protocol conformance descriptor for Searchfoundation_DomainEngagementScore), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
            {
              type metadata accessor for Searchfoundation_EngagementSignal(0);
              OUTLINED_FUNCTION_12();
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_EngagementSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_1B8D76954(*(a1 + 24), *(a2 + 24));
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_EngagementSignal(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_90();
  sub_1B9494F90(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B94945C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9494F90(&qword_1EBACEDB0, type metadata accessor for Searchfoundation_EngagementSignal, protocol conformance descriptor for Searchfoundation_EngagementSignal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9494644(uint64_t a1)
{
  v2 = sub_1B9494F90(&qword_1EBACA1A8, type metadata accessor for Searchfoundation_EngagementSignal, protocol conformance descriptor for Searchfoundation_EngagementSignal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94946B4(uint64_t a1, uint64_t a2)
{
  sub_1B9494F90(&qword_1EBACA1A8, type metadata accessor for Searchfoundation_EngagementSignal, protocol conformance descriptor for Searchfoundation_EngagementSignal);

  return sub_1B964C5D0();
}

uint64_t sub_1B9494750()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACED00);
  __swift_project_value_buffer(v0, qword_1EBACED00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scoreConfidence";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "iFunScore";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_DomainEngagementScore.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_24_3();
        sub_1B9494A64(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_DomainEngagementScore.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!Searchfoundation_EngagementDomain.rawValue.getter() || (sub_1B9494FD8(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v0))
  {
    if (!*(v1 + 12) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v0))
    {
      if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
      {
        if (*(v1 + 20) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
        {
          type metadata accessor for Searchfoundation_DomainEngagementScore(0);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_DomainEngagementScore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = Searchfoundation_EngagementDomain.rawValue.getter();
  if (v4 != Searchfoundation_EngagementDomain.rawValue.getter() || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_DomainEngagementScore(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_90();
  sub_1B9494F90(v5, v6, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B9494D3C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B9494F90(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9494E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9494F90(&qword_1EBACEDA8, type metadata accessor for Searchfoundation_DomainEngagementScore, protocol conformance descriptor for Searchfoundation_DomainEngagementScore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9494EA0(uint64_t a1)
{
  v2 = sub_1B9494F90(&qword_1EBACED18, type metadata accessor for Searchfoundation_DomainEngagementScore, protocol conformance descriptor for Searchfoundation_DomainEngagementScore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9494F10(uint64_t a1, uint64_t a2)
{
  sub_1B9494F90(&qword_1EBACED18, type metadata accessor for Searchfoundation_DomainEngagementScore, protocol conformance descriptor for Searchfoundation_DomainEngagementScore);

  return sub_1B964C5D0();
}

uint64_t sub_1B9494F90(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B9494FD8()
{
  result = qword_1EBACED28;
  if (!qword_1EBACED28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EngagementDomain, &type metadata for Searchfoundation_EngagementDomain, v0, v1);
    atomic_store(result, &qword_1EBACED28);
  }

  return result;
}

unint64_t sub_1B9495030()
{
  result = qword_1EBACED38;
  if (!qword_1EBACED38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EngagementDomain, &type metadata for Searchfoundation_EngagementDomain, v0, v1);
    atomic_store(result, &qword_1EBACED38);
  }

  return result;
}

unint64_t sub_1B9495088()
{
  result = qword_1EBACED40;
  if (!qword_1EBACED40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EngagementDomain, &type metadata for Searchfoundation_EngagementDomain, v0, v1);
    atomic_store(result, &qword_1EBACED40);
  }

  return result;
}

unint64_t sub_1B94950E0()
{
  result = qword_1EBACED48;
  if (!qword_1EBACED48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Searchfoundation_EngagementDomain, &type metadata for Searchfoundation_EngagementDomain, v0, v1);
    atomic_store(result, &qword_1EBACED48);
  }

  return result;
}

unint64_t sub_1B9495138()
{
  result = qword_1EBACED50;
  if (!qword_1EBACED50)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBACED58, &qword_1B96CCEE8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBACED50);
  }

  return result;
}

void sub_1B9495414(uint64_t a1)
{
  sub_1B94954BC(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94954BC(uint64_t a1)
{
  if (!qword_1EBACED90)
  {
    type metadata accessor for Searchfoundation_DomainEngagementScore(255);
    v1 = sub_1B964C910();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBACED90);
    }
  }
}

uint64_t sub_1B949553C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Searchfoundation_FindMyCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_FindMyCardSection(0) + 20);
  v4 = type metadata accessor for Searchfoundation_Person(0);

  return __swift_storeEnumTagSinglePayload(a2 + v3, 1, 1, v4);
}

uint64_t type metadata accessor for Searchfoundation_FindMyCardSection(uint64_t a1)
{
  result = qword_1ED9F1A30;
  if (!qword_1ED9F1A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_FindMyCardSection.person.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_5_40();
  sub_1B9495798(v1 + *(v6 + 20), v2);
  v7 = type metadata accessor for Searchfoundation_Person(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_1B9495808(v2, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = v8;
  a1[7] = v8;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  return result;
}