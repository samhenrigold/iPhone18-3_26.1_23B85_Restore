uint64_t static Apple_Parsec_Siri_V2alpha_AudioData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1B916BFC0(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_37();
  sub_1B8CD29A8(v8, v9, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B916BFC0(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6598, &unk_1B9699860);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  v47 = v8;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  v13 = OUTLINED_FUNCTION_183(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v44 = v14;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v43 - v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  OUTLINED_FUNCTION_521(a1 + 16, v55);
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  OUTLINED_FUNCTION_521(a2 + 16, v54);
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);

  sub_1B8D91FCC(v23, v22);
  sub_1B8D91FCC(v24, v25);
  v26 = MEMORY[0x1BFADC060](v23, v22, v24, v25);
  sub_1B8D538A0(v24, v25);
  sub_1B8D538A0(v23, v22);
  if ((v26 & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription, v53);
  sub_1B916B60C(a1 + v27, v21);
  v28 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription, v52);
  v29 = *(v6 + 48);
  sub_1B916B60C(v21, v11);
  sub_1B916B60C(a2 + v28, &v11[v29]);
  if (__swift_getEnumTagSinglePayload(v11, 1, v49) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC6510, &qword_1B9699320);
    OUTLINED_FUNCTION_90(&v11[v29]);
    if (!v40)
    {
      goto LABEL_9;
    }

    sub_1B8D9207C(v11, &qword_1EBAC6510, &qword_1B9699320);
LABEL_14:
    v34 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
    OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, v51);
    v35 = v46;
    sub_1B916B60C(a1 + v34, v46);
    v36 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
    OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, v50);
    v37 = *(v6 + 48);
    v38 = v47;
    sub_1B916B60C(v35, v47);
    sub_1B916B60C(a2 + v36, v38 + v37);
    OUTLINED_FUNCTION_90(v38);
    if (v40)
    {

      sub_1B8D9207C(v35, &qword_1EBAC6510, &qword_1B9699320);
      OUTLINED_FUNCTION_90(v38 + v37);
      if (v40)
      {
        sub_1B8D9207C(v38, &qword_1EBAC6510, &qword_1B9699320);
        return 1;
      }
    }

    else
    {
      v39 = v44;
      sub_1B916B60C(v38, v44);
      OUTLINED_FUNCTION_90(v38 + v37);
      if (!v40)
      {
        v41 = v45;
        sub_1B916B69C(v38 + v37, v45);
        v42 = static Apple_Parsec_Siri_V2alpha_AudioDescription.== infix(_:_:)(v39, v41);

        sub_1B916B7D4(v41);
        sub_1B8D9207C(v35, &qword_1EBAC6510, &qword_1B9699320);
        sub_1B916B7D4(v39);
        sub_1B8D9207C(v38, &qword_1EBAC6510, &qword_1B9699320);
        return (v42 & 1) != 0;
      }

      sub_1B8D9207C(v35, &qword_1EBAC6510, &qword_1B9699320);
      sub_1B916B7D4(v39);
    }

    sub_1B8D9207C(v38, &qword_1EBAC6598, &unk_1B9699860);
    return 0;
  }

  v30 = v48;
  sub_1B916B60C(v11, v48);
  OUTLINED_FUNCTION_90(&v11[v29]);
  if (!v40)
  {
    v32 = v45;
    sub_1B916B69C(&v11[v29], v45);
    v33 = static Apple_Parsec_Siri_V2alpha_AudioDescription.== infix(_:_:)(v30, v32);
    sub_1B916B7D4(v32);
    sub_1B8D9207C(v21, &qword_1EBAC6510, &qword_1B9699320);
    sub_1B916B7D4(v30);
    sub_1B8D9207C(v11, &qword_1EBAC6510, &qword_1B9699320);
    if ((v33 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1B8D9207C(v21, &qword_1EBAC6510, &qword_1B9699320);
  sub_1B916B7D4(v30);
LABEL_9:
  sub_1B8D9207C(v11, &qword_1EBAC6598, &unk_1B9699860);
LABEL_10:

  return 0;
}

uint64_t sub_1B916C59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD29A8(&qword_1EBAC6590, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B916C61C(uint64_t a1)
{
  v2 = sub_1B8CD29A8(&qword_1EBAC6560, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B916C68C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD29A8(&qword_1EBAC6560, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioData);

  return sub_1B964C5D0();
}

uint64_t sub_1B916C728()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC64F8);
  __swift_project_value_buffer(v0, qword_1EBAC64F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sample_rate";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "audio_format";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "format_id";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "format_flags";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "bytes_per_packet";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "frames_per_packet";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "bytes_per_frame";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "channels_per_frame";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "bits_per_channel";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "reserved";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_288();
        sub_1B916CBF4(v8, v9, a2, a3);
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (OUTLINED_FUNCTION_12(), v5 = sub_1B964C6F0(), !v4))
  {
    if (!*(v3 + 8) || (sub_1B916CE00(), v5 = sub_1B964C680(), !v4))
    {
      v6 = *(v3 + 24);
      if (!v6 || (v5 = OUTLINED_FUNCTION_4_13(v6, 3), !v4))
      {
        v7 = *(v3 + 32);
        if (!v7 || (v5 = OUTLINED_FUNCTION_4_13(v7, 4), !v4))
        {
          v8 = *(v3 + 40);
          if (!v8 || (v5 = OUTLINED_FUNCTION_4_13(v8, 5), !v4))
          {
            v9 = *(v3 + 48);
            if (!v9 || (v5 = OUTLINED_FUNCTION_4_13(v9, 6), !v4))
            {
              v10 = *(v3 + 56);
              if (!v10 || (v5 = OUTLINED_FUNCTION_4_13(v10, 7), !v4))
              {
                v11 = *(v3 + 64);
                if (!v11 || (v5 = OUTLINED_FUNCTION_4_13(v11, 8), !v4))
                {
                  v12 = *(v3 + 72);
                  if (!v12 || (v5 = OUTLINED_FUNCTION_4_13(v12, 9), !v4))
                  {
                    v13 = *(v3 + 80);
                    if (!v13 || (v5 = OUTLINED_FUNCTION_4_13(v13, 10), !v4))
                    {
                      type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
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

  return v5;
}

unint64_t sub_1B916CE00()
{
  result = qword_1EBAC6520;
  if (!qword_1EBAC6520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioFormat, &type metadata for Apple_Parsec_Siri_V2alpha_AudioFormat, v0, v1);
    atomic_store(result, &qword_1EBAC6520);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (*(a2 + 16) == 1)
    {
      switch(v3)
      {
        case 1:
          if (v2 != 1)
          {
            return 0;
          }

          goto LABEL_7;
        case 2:
          if (v2 != 2)
          {
            return 0;
          }

          goto LABEL_7;
        case 3:
          if (v2 != 3)
          {
            return 0;
          }

          goto LABEL_7;
        case 4:
          if (v2 != 4)
          {
            return 0;
          }

          goto LABEL_7;
        default:
          if (!v2)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (v2 == v3)
    {
LABEL_7:
      if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_37();
        sub_1B8CD29A8(v4, v5, MEMORY[0x1E69AAC10]);
        return sub_1B964C850() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B916D028(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD29A8(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B916D108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD29A8(&qword_1EBAC6588, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDescription);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B916D188(uint64_t a1)
{
  v2 = sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDescription);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B916D1F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioDescription);

  return sub_1B964C5D0();
}

unint64_t sub_1B916D278()
{
  result = qword_1EBAC6530;
  if (!qword_1EBAC6530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioFormat, &type metadata for Apple_Parsec_Siri_V2alpha_AudioFormat, v0, v1);
    atomic_store(result, &qword_1EBAC6530);
  }

  return result;
}

unint64_t sub_1B916D2D0()
{
  result = qword_1EBAC6538;
  if (!qword_1EBAC6538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioFormat, &type metadata for Apple_Parsec_Siri_V2alpha_AudioFormat, v0, v1);
    atomic_store(result, &qword_1EBAC6538);
  }

  return result;
}

unint64_t sub_1B916D328()
{
  result = qword_1EBAC6540;
  if (!qword_1EBAC6540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioFormat, &type metadata for Apple_Parsec_Siri_V2alpha_AudioFormat, v0, v1);
    atomic_store(result, &qword_1EBAC6540);
  }

  return result;
}

unint64_t sub_1B916D380()
{
  result = qword_1EBAC6548;
  if (!qword_1EBAC6548)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC6550, &qword_1B9699410);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC6548);
  }

  return result;
}

uint64_t sub_1B916D660(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B916D70C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B916D7B8(uint64_t a1)
{
  sub_1B916D854(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B916D854(uint64_t a1)
{
  if (!qword_1ED9EC210)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9EC210);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_29()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1)
{
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.cityName.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.countryCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.countryName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.timeZoneID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock(0) + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock(uint64_t a1)
{
  result = qword_1ED9D2D50;
  if (!qword_1ED9D2D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock(0) + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B916DD68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC65A0);
  __swift_project_value_buffer(v0, qword_1EBAC65A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "city_name";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country_code";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "country_name";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "time_zone_id";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_Clock._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7618 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC65A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 4), !v1))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock(0);
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_Clock.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock(0);
  sub_1B964C2B0();
  sub_1B8CD29F0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock(0);
  sub_1B8CD29F0(&qword_1EBAC65B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Clock);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B916E3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD29F0(&qword_1EBAC65D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Clock);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B916E44C(uint64_t a1)
{
  v2 = sub_1B8CD29F0(&qword_1EBAC65C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Clock);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B916E4BC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD29F0(&qword_1EBAC65C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Clock);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.companionName.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.deviceName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.inputOrigin.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.userAssignedDeviceName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.getter@<X0>(_WORD *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  sub_1B916ECA4(v1 + *(v6 + 76), v2);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v7);
  if (!v10)
  {
    return sub_1B916ED34(v2, a1);
  }

  *a1 = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v11, v12, v7);
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC65F8, &qword_1B9699A20);
  }

  return result;
}

uint64_t sub_1B916EB48(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B916EFD0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(v2) + 76);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC65F8, &qword_1B9699A20);
  sub_1B916ED34(v0, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.init()@<X0>(_WORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B916ECA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916ED34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0) + 76);
  *(v3 + 10) = v11;
  sub_1B916ECA4(v1 + v11, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    *v10 = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC65F8, &qword_1B9699A20);
    }
  }

  else
  {
    sub_1B916ED34(v6, v10);
  }

  return sub_1B916EEF0;
}

void sub_1B916EEF0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B916EFD0((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBAC65F8, &qword_1B9699A20);
    sub_1B916ED34(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B916F034(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAC65F8, &qword_1B9699A20);
    sub_1B916ED34(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B916EFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916F034(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.hasCarplaySessionData.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  sub_1B916ECA4(v0 + *(v4 + 76), v1);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAC65F8, &qword_1B9699A20);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_DeviceState.clearCarplaySessionData()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0) + 76);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC65F8, &qword_1B9699A20);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0) + 72);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(v2) + 72);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_DeviceState.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 76);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_CarPlaySessionData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(v0);
  return nullsub_1;
}

uint64_t sub_1B916F4F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB49F8);
  __swift_project_value_buffer(v0, qword_1EBAB49F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "companion_name";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "device_name";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "input_origin";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "is_car_dnd";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "is_carplay";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 9;
  *v16 = "is_eyes_free";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "is_locked_with_passcode";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "is_multi_user";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 16;
  *v22 = "is_text_to_speech_enabled";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 18;
  *v24 = "is_voice_gender_female";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 19;
  *v26 = "is_voice_gender_male";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 20;
  *v28 = "is_voice_gender_unknown";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 21;
  *v30 = "is_voice_trigger_enabled";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 24;
  *v32 = "user_assigned_device_name";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 25;
  *v34 = "carplay_session_data";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 24:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
      case 6:
      case 9:
      case 11:
      case 13:
      case 16:
      case 18:
      case 19:
      case 20:
      case 21:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 25:
        sub_1B916FB08(v1, v0, v4, v3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B916FB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  sub_1B91708E8(&qword_1EBAC6600, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v10 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v11, v12, v13), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v15 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v16, v17, v18), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v19 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v20, v21, v22), !v0))
      {
        if (v1[48] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 5), !v0))
        {
          if (v1[49] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 6), !v0))
          {
            if (v1[50] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 9), !v0))
            {
              if (v1[51] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 11), !v0))
              {
                if (v1[52] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 13), !v0))
                {
                  if (v1[53] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 16), !v0))
                  {
                    if (v1[54] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 18), !v0))
                    {
                      if (v1[55] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 19), !v0))
                      {
                        if (v1[56] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 20), !v0))
                        {
                          if (v1[57] != 1 || (result = OUTLINED_FUNCTION_0_31(1, 21), !v0))
                          {
                            OUTLINED_FUNCTION_1();
                            if (!v23 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v24, v25, v26), !v0))
                            {
                              v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
                              sub_1B916ECA4(&v1[*(v27 + 76)], v5);
                              if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
                              {
                                sub_1B8D9207C(v5, &qword_1EBAC65F8, &qword_1B9699A20);
                              }

                              else
                              {
                                v28[1] = v27;
                                sub_1B916ED34(v5, v9);
                                sub_1B91708E8(&qword_1EBAC6600, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);
                                OUTLINED_FUNCTION_79_0();
                                sub_1B964C740();
                                result = sub_1B916F034(v9);
                                if (v0)
                                {
                                  return result;
                                }
                              }

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

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DeviceState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6608, &qword_1B9699A28);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v14 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v15 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (*(v1 + 48) != *(v0 + 48) || *(v1 + 49) != *(v0 + 49) || *(v1 + 50) != *(v0 + 50) || *(v1 + 51) != *(v0 + 51) || *(v1 + 52) != *(v0 + 52) || *(v1 + 53) != *(v0 + 53) || *(v1 + 54) != *(v0 + 54) || *(v1 + 55) != *(v0 + 55) || *(v1 + 56) != *(v0 + 56) || *(v1 + 57) != *(v0 + 57))
  {
    goto LABEL_45;
  }

  v16 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v17 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0) + 76);
  v18 = *(v11 + 48);
  sub_1B916ECA4(v1 + v17, v2);
  sub_1B916ECA4(v0 + v17, v2 + v18);
  v19 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v19, v20, v3);
  if (v13)
  {
    OUTLINED_FUNCTION_178(v2 + v18, 1, v3);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAC65F8, &qword_1B9699A20);
      goto LABEL_36;
    }

LABEL_40:
    v25 = &qword_1EBAC6608;
    v26 = &qword_1B9699A28;
LABEL_44:
    sub_1B8D9207C(v2, v25, v26);
LABEL_45:
    v23 = 0;
    return v23 & 1;
  }

  sub_1B916ECA4(v2, v10);
  OUTLINED_FUNCTION_178(v2 + v18, 1, v3);
  if (v24)
  {
    sub_1B916F034(v10);
    goto LABEL_40;
  }

  sub_1B916ED34(v2 + v18, v6);
  if (*v10 != *v6 || v10[1] != v6[1])
  {
    sub_1B916F034(v6);
    sub_1B916F034(v10);
    v25 = &qword_1EBAC65F8;
    v26 = &qword_1B9699A20;
    goto LABEL_44;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_63();
  sub_1B91708E8(v28, v29, MEMORY[0x1E69AAC10]);
  v30 = sub_1B964C850();
  sub_1B916F034(v6);
  sub_1B916F034(v10);
  sub_1B8D9207C(v2, &qword_1EBAC65F8, &qword_1B9699A20);
  if ((v30 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_36:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_63();
  sub_1B91708E8(v21, v22, MEMORY[0x1E69AAC10]);
  v23 = sub_1B964C850();
  return v23 & 1;
}

uint64_t sub_1B91703C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91708E8(&qword_1EBAC6640, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9170448(uint64_t a1)
{
  v2 = sub_1B91708E8(&qword_1EBAB49E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceState);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91704B8(uint64_t a1, uint64_t a2)
{
  sub_1B91708E8(&qword_1EBAB49E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceState);

  return sub_1B964C5D0();
}

uint64_t sub_1B9170554()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC65E0);
  __swift_project_value_buffer(v0, qword_1EBAC65E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "video_playback_supported";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "video_playback_available";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (result = OUTLINED_FUNCTION_0_31(1, 1), !v1))
  {
    if (*(v2 + 1) != 1 || (result = OUTLINED_FUNCTION_0_31(1, 2), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_CarPlaySessionData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_63();
  sub_1B91708E8(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B91708E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1B9170978(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B91708E8(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9170A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91708E8(&qword_1EBAC6638, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9170ADC(uint64_t a1)
{
  v2 = sub_1B91708E8(&qword_1EBAC6600, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9170B4C(uint64_t a1, uint64_t a2)
{
  sub_1B91708E8(&qword_1EBAC6600, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);

  return sub_1B964C5D0();
}

void sub_1B9170E34(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9170EF4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9170EF4(uint64_t a1)
{
  if (!qword_1ED9C9D00)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9C9D00);
    }
  }
}

uint64_t sub_1B9170F74(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B964C700();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.geoObject.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoObjectComponent.videoUseCase.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.videoUseCase.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.relativeUtsSearchURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(v0);
  return OUTLINED_FUNCTION_25();
}

unint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9171440@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9171474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9178324();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_211_0(a1, v3);
  off_1EBAC6648 = a1;
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B91715F0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter()
{
  OUTLINED_FUNCTION_16_22();
  OUTLINED_FUNCTION_521(*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, v3);
  OUTLINED_FUNCTION_209();
  return sub_1B8D92024();
}

uint64_t sub_1B917169C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_28_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B9174D4C(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B9174F28(v0, v6 + v8);
  return swift_endAccess();
}

void (*Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[6] = v1;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  v3[7] = __swift_coroFrameAllocStub(v8);
  v3[8] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_16_22();
  *(v3 + 18) = v9;
  OUTLINED_FUNCTION_521(*(v1 + v9) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, v3);
  sub_1B8D92024();
  return sub_1B91718DC;
}

void sub_1B91718DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_303();
    sub_1B8D92024();
    Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.setter();
    sub_1B8D9207C(v3, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 72);
      v10 = *(v2 + 48);
      OUTLINED_FUNCTION_28_15();
      v11 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B9174D4C(v11);
      *(v10 + v9) = v8;
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v12 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B9174F28(v3, v8 + v12);
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.tv.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5 - 8];
  OUTLINED_FUNCTION_16_22();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, v13);
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v9 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAC66E8, &qword_1B9699DC0);
    return Apple_Parsec_Siri_V2alpha_TvObject.init()(a1);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
    return Apple_Parsec_Siri_V2alpha_TvObject.init()(a1);
  }

  OUTLINED_FUNCTION_5_30();
  return sub_1B917502C();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = v1;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = v1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_TvOrMovieObject.tv.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_16_22();
  OUTLINED_FUNCTION_521(*(v0 + v10) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, v3);
  OUTLINED_FUNCTION_30_7();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v12 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_5_30();
      OUTLINED_FUNCTION_177_1();
      sub_1B917502C();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
  }

  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v9[2] = 0;
  v9[3] = 0xE000000000000000;
  v9[4] = 0;
  v9[5] = 0xE000000000000000;
  v9[6] = 0;
  v9[7] = 0xE000000000000000;
  v14 = MEMORY[0x1E69E7CC0];
  v9[8] = MEMORY[0x1E69E7CC0];
  v9[9] = v14;
  *(v9 + 80) = 0;
  *(v9 + 92) = 0;
  *(v9 + 84) = 0;
  *(v9 + 25) = 0;
  v9[13] = 0xE000000000000000;
  v9[14] = v14;
  v9[15] = 0;
  v9[16] = 0;
  v9[17] = 0;
  v9[18] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.movie.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5 - 8];
  OUTLINED_FUNCTION_16_22();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, v13);
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v9 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_30();
      return sub_1B917502C();
    }

    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
  }

  return Apple_Parsec_Siri_V2alpha_MovieObject.init()(a1);
}

uint64_t sub_1B9171E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_177_1();
  sub_1B91750A4();
  return a7(v11);
}

uint64_t sub_1B9171F3C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_28_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9174D4C(v10);
    *(v2 + v7) = v9;
  }

  sub_1B917502C();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B9174F28(v6, v9 + v12);
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_TvOrMovieObject.movie.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_16_22();
  OUTLINED_FUNCTION_521(*(v0 + v10) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, v3);
  OUTLINED_FUNCTION_30_7();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v12 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAC66E8, &qword_1B9699DC0);
LABEL_6:
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v14 = MEMORY[0x1E69E7CC0];
    v9[2] = MEMORY[0x1E69E7CC0];
    v9[3] = v14;
    v9[4] = v14;
    v9[5] = v14;
    v9[6] = 0;
    v9[7] = 0;
    v9[8] = 0xE000000000000000;
    *(v9 + 18) = 0;
    *(v9 + 76) = 0;
    v9[10] = 0;
    v9[11] = 0xE000000000000000;
    *(v9 + 24) = 0;
    v9[13] = 0;
    v9[14] = 0xE000000000000000;
    v9[15] = v14;
    v9[16] = 0;
    v9[17] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_128();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_177_1();
  sub_1B917502C();
LABEL_7:
  OUTLINED_FUNCTION_283();
}

void sub_1B91722C8(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B91750A4();
    a3(v5);
    sub_1B9174FD8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t sub_1B9172380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_TvOrMovieObject.machineUtterance.setter(v1, v2);
}

void (*Apple_Parsec_Siri_V2alpha_TvOrMovieObject.machineUtterance.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_16_22();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  OUTLINED_FUNCTION_521(v5, v3);
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return sub_1B917245C;
}

uint64_t sub_1B9172488(void *a1)
{
  OUTLINED_FUNCTION_16_22();
  OUTLINED_FUNCTION_521(*(v1 + v3) + *a1, v5);

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B91724DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_TvOrMovieObject.contentRowDescriptionData.setter(v1, v2);
}

uint64_t sub_1B9172528(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_16();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_28_15();
    v11 = OUTLINED_FUNCTION_40_0();
    isUniquelyReferenced_nonNull_native = sub_1B9174D4C(v11);
    v10 = isUniquelyReferenced_nonNull_native;
    *(v7 + v8) = isUniquelyReferenced_nonNull_native;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v14);
  *v12 = v5;
  v12[1] = v3;
}

void (*Apple_Parsec_Siri_V2alpha_TvOrMovieObject.contentRowDescriptionData.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_16_22();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
  OUTLINED_FUNCTION_521(v5, v3);
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return sub_1B9172644;
}

void sub_1B9172664(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {

    v8 = OUTLINED_FUNCTION_461();
    a4(v8);
  }

  else
  {
    v10 = *(v4 + 72);
    v11 = *(v4 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v4 + 72);
      v15 = *(v4 + 64);
      OUTLINED_FUNCTION_28_15();
      v16 = OUTLINED_FUNCTION_40_0();
      isUniquelyReferenced_nonNull_native = sub_1B9174D4C(v16);
      v13 = isUniquelyReferenced_nonNull_native;
      *(v15 + v14) = isUniquelyReferenced_nonNull_native;
    }

    v17 = (v13 + *a3);
    OUTLINED_FUNCTION_211_0(isUniquelyReferenced_nonNull_native, v4 + 24);
    *v17 = v5;
    v17[1] = v6;
  }

  free(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

void static Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  v23 = OUTLINED_FUNCTION_183(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  v25 = OUTLINED_FUNCTION_183(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  OUTLINED_FUNCTION_59_1();
  v27 = MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66F0, &qword_1B9699DC8);
  OUTLINED_FUNCTION_183(v30);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  sub_1B91750A4();
  sub_1B91750A4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_24();
    sub_1B91750A4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_30();
      sub_1B917502C();
      v34 = OUTLINED_FUNCTION_128();
      static Apple_Parsec_Siri_V2alpha_MovieObject.== infix(_:_:)(v34);
      sub_1B9174FD8();
      OUTLINED_FUNCTION_461();
LABEL_7:
      sub_1B9174FD8();
      OUTLINED_FUNCTION_0_64();
      sub_1B9174FD8();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_24();
    sub_1B91750A4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_5_30();
      sub_1B917502C();
      static Apple_Parsec_Siri_V2alpha_TvObject.== infix(_:_:)(v29);
      sub_1B9174FD8();
      goto LABEL_7;
    }
  }

  sub_1B9174FD8();
  sub_1B8D9207C(v33, &qword_1EBAC66F0, &qword_1B9699DC8);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Siri_V2alpha_TvObject.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1) == *v1 && *(v2 + 8) == *(v1 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 64), *(v1 + 64)) & 1) == 0 || (sub_1B8D6123C(*(v2 + 72), *(v1 + 72)) & 1) == 0 || *(v2 + 80) != *(v1 + 80) || *(v2 + 84) != *(v1 + 84) || *(v2 + 88) != *(v1 + 88) || *(v2 + 92) != *(v1 + 92))
  {
    return 0;
  }

  v7 = *(v2 + 96) == *(v1 + 96) && *(v2 + 104) == *(v1 + 104);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D758CC(*(v2 + 112), *(v1 + 112));
  if ((v8 & 1) == 0 || *(v2 + 120) != *(v1 + 120) || *(v2 + 128) != *(v1 + 128))
  {
    return 0;
  }

  v9 = *(v2 + 136) == *(v1 + 136) && *(v2 + 144) == *(v1 + 144);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  v12 = sub_1B8CD2A38(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_MovieObject.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1) == *v1 && *(v2 + 8) == *(v1 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 16), *(v1 + 16)) & 1) == 0 || (sub_1B8D6123C(*(v2 + 24), *(v1 + 24)) & 1) == 0 || (sub_1B8D6123C(*(v2 + 32), *(v1 + 32)) & 1) == 0 || (sub_1B8D6123C(*(v2 + 40), *(v1 + 40)) & 1) == 0 || *(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 72) != *(v1 + 72) || *(v2 + 76) != *(v1 + 76))
  {
    return 0;
  }

  v5 = *(v2 + 80) == *(v1 + 80) && *(v2 + 88) == *(v1 + 88);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 96) != *(v1 + 96))
  {
    return 0;
  }

  v6 = *(v2 + 104) == *(v1 + 104) && *(v2 + 112) == *(v1 + 112);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D748B8(*(v2 + 120), *(v1 + 120));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 128) == *(v1 + 128) && *(v2 + 136) == *(v1 + 136);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  v11 = sub_1B8CD2A38(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20);
  if (qword_1EBAB7648 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBAC66B0;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.canonicalID.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.title.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.contentRatingValue.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.genres.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.actors.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.url.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.coverArt.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.contentRatingSystem.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.titles.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.genres.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.actors.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.directors.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingValue.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.url.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.coverArt.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingSystem.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9173A24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6650);
  __swift_project_value_buffer(v0, qword_1EBAC6650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "geo_object";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.decodeMessage<A>(decoder:)()
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
      sub_1B91742C0(v3, v4, v5, v6, v7, &qword_1EBABAFC8, v8, v9);
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Mapspb_LocalSearchBusiness(0), sub_1B8CD2A38(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness, protocol conformance descriptor for Mapspb_LocalSearchBusiness), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_GeoObjectComponent.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_51_2(a1);
  sub_1B8D67AC8(v1, *v2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  v6 = sub_1B8CD2A38(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B9173E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9173EBC(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC6760, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9173F2C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A38(&qword_1EBAC6760, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9173FC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6668);
  __swift_project_value_buffer(v0, qword_1EBAC6668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tv_or_movie_object";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "video_use_case";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "relative_uts_search_url";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_9();
        sub_1B9174358(v10, v11, v12, v13);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91742C0(v3, v4, v5, v6, v7, &qword_1EBAC6700, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_1B91742C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, const char *a8)
{
  a5(0);
  v9 = OUTLINED_FUNCTION_128();
  sub_1B8CD2A38(v9, v10, a8);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0), sub_1B8CD2A38(&qword_1EBAC6700, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (sub_1B9178324(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 3), !v1))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoObjectComponent.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  sub_1B8D67D6C(v3, *v4);
  if ((v5 & 1) == 0 || !sub_1B8D92198(*(v2 + 8), *(v2 + 16), v1[1]))
  {
    return 0;
  }

  v6 = *(v2 + 24) == v1[3] && *(v2 + 32) == v1[4];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  v9 = sub_1B8CD2A38(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B9174644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91746C4(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC6778, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9174734(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A38(&qword_1EBAC6778, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91747B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6680);
  __swift_project_value_buffer(v0, qword_1EBAC6680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_USE_CASE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_USE_CASE_CONTENT_SEARCH";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_USE_CASE_TRAILER_DISAMBIGUATE";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_USE_CASE_DISAMBIGUATE";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9174A34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6698);
  __swift_project_value_buffer(v0, qword_1EBAC6698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tv";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "movie";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "machine_utterance";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "content_row_description_data";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9174CA4()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject._StorageClass(0);
  swift_allocObject();
  result = sub_1B9174CE4();
  qword_1EBAC66B0 = result;
  return result;
}

uint64_t sub_1B9174CE4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B9174D4C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B9174F28(v5, v1 + v6);
  swift_endAccess();
  v10 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  swift_beginAccess();
  *v8 = v12;
  v8[1] = v11;

  v13 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];

  swift_beginAccess();
  *v9 = v15;
  v9[1] = v14;

  return v1;
}

uint64_t sub_1B9174F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9174FD8()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B917502C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B91750A4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B91750FC()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, &qword_1EBAC66E8, &qword_1B9699DC0);

  return v0;
}

uint64_t sub_1B917515C()
{
  v0 = sub_1B91750FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9174D4C(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B9175250(v10, a1, a2, a3);
}

uint64_t sub_1B9175250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9175348(a1, a2, a3, a4);
        break;
      case 2:
        sub_1B91758A8(a1, a2, a3, a4);
        break;
      case 3:
      case 4:
        sub_1B8DAB218();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9175348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v39 = a3;
  v38 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC67F8, &qword_1B969A848);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  __swift_storeEnumTagSinglePayload(&v29 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  swift_beginAccess();
  v30 = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v33 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    v29 = a1;
    sub_1B917502C();
    sub_1B917502C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9174FD8();
    }

    else
    {
      sub_1B8D9207C(v21, &qword_1EBAC67F8, &qword_1B969A848);
      sub_1B917502C();
      sub_1B917502C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    a1 = v29;
  }

  sub_1B8CD2A38(&qword_1EBAC67A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvObject);
  v23 = v36;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAC67F8, &qword_1B969A848);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC67F8, &qword_1B969A848);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAC67F8, &qword_1B969A848);
  }

  sub_1B917502C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v33;
  sub_1B8D9207C(v21, &qword_1EBAC67F8, &qword_1B969A848);
  v27 = v31;
  sub_1B917502C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  v28 = v30;
  swift_beginAccess();
  sub_1B9174F28(v27, a1 + v28);
  return swift_endAccess();
}

uint64_t sub_1B91758A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v39 = a3;
  v38 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6800, &unk_1B969A850);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  __swift_storeEnumTagSinglePayload(&v29 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  swift_beginAccess();
  v30 = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v33 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    v29 = a1;
    sub_1B917502C();
    sub_1B917502C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBAC6800, &unk_1B969A850);
      sub_1B917502C();
      sub_1B917502C();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B9174FD8();
    }

    a1 = v29;
  }

  sub_1B8CD2A38(&qword_1EBAC67B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieObject);
  v23 = v36;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBAC6800, &unk_1B969A850);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAC6800, &unk_1B969A850);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBAC6800, &unk_1B969A850);
  }

  sub_1B917502C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v33;
  sub_1B8D9207C(v21, &qword_1EBAC6800, &unk_1B969A850);
  v27 = v31;
  sub_1B917502C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  v28 = v30;
  swift_beginAccess();
  sub_1B9174F28(v27, a1 + v28);
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B9175E6C(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9175E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  swift_beginAccess();
  sub_1B8D92024();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B91762E4(a1, a2, a3, a4);
  }

  else
  {
    sub_1B91760B0(a1, a2, a3, a4);
  }

  v5 = v4;
  result = sub_1B9174FD8();
  if (!v4)
  {
LABEL_6:
    v15 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (, sub_1B964C700(), result = , !v5))
    {
      v19 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
      result = swift_beginAccess();
      v20 = *v19;
      v21 = v19[1];
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {

        sub_1B964C700();
      }
    }
  }

  return result;
}

uint64_t sub_1B91760B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B917502C();
      sub_1B8CD2A38(&qword_1EBAC67A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvObject);
      sub_1B964C740();
      return sub_1B9174FD8();
    }

    result = sub_1B9174FD8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91762E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B917502C();
      sub_1B8CD2A38(&qword_1EBAC67B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieObject);
      sub_1B964C740();
      return sub_1B9174FD8();
    }

    result = sub_1B9174FD8();
  }

  __break(1u);
  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_TvOrMovieObject.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_16_22();
  if (*(v1 + v2) != *(v0 + v2))
  {

    OUTLINED_FUNCTION_303();
    sub_1B91765DC();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  sub_1B8CD2A38(v5, v6, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B91765DC()
{
  OUTLINED_FUNCTION_284();
  v44 = v0;
  v2 = v1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v43 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC67F0, &qword_1B969A840) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v11 = OUTLINED_FUNCTION_183(v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, &v50);
  v17 = v44;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v17 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, &v49);
  v18 = *(v6 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v9);
  if (!v20)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_75(&v9[v18]);
    if (!v20)
    {
      OUTLINED_FUNCTION_6_24();
      v21 = v43;
      sub_1B917502C();
      v19 = v2;

      static Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.== infix(_:_:)(v14, v21, v22, v23, v24, v25, v26, v27, v42, v43, v44, v45[0], v45[1], v45[2], v46[0], v46[1], v46[2], v47[0], v47[1], v47[2]);
      v29 = v28;
      sub_1B9174FD8();
      sub_1B8D9207C(v16, &qword_1EBAC66E8, &qword_1B9699DC0);
      sub_1B9174FD8();
      v30 = OUTLINED_FUNCTION_303();
      sub_1B8D9207C(v30, v31, &qword_1B9699DC0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    sub_1B8D9207C(v16, &qword_1EBAC66E8, &qword_1B9699DC0);
    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
LABEL_9:
    sub_1B8D9207C(v9, &qword_1EBAC67F0, &qword_1B969A840);
    goto LABEL_22;
  }

  sub_1B8D9207C(v16, &qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_75(&v9[v18]);
  v19 = v2;
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v9, &qword_1EBAC66E8, &qword_1B9699DC0);
LABEL_12:
  v32 = (v19 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  OUTLINED_FUNCTION_521(v19 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance, &v48);
  v33 = *v32;
  v34 = v32[1];
  v35 = (v17 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  OUTLINED_FUNCTION_521(v17 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance, v47);
  v36 = v33 == *v35 && v34 == v35[1];
  if (v36 || (OUTLINED_FUNCTION_303(), (sub_1B964C9F0() & 1) != 0))
  {
    v37 = (v19 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
    OUTLINED_FUNCTION_521(v19 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData, v46);
    v38 = *v37;
    v39 = v37[1];
    v40 = (v17 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
    OUTLINED_FUNCTION_521(v17 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData, v45);
    if (v38 != *v40 || v39 != v40[1])
    {
      OUTLINED_FUNCTION_303();
      sub_1B964C9F0();
    }
  }

LABEL_22:

  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9176A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9176AF8(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC6700, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9176B68(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A38(&qword_1EBAC6700, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject);

  return sub_1B964C5D0();
}

uint64_t sub_1B9176C00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC66B8);
  __swift_project_value_buffer(v0, qword_1EBAC66B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "content_rating_value";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "genres";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "actors";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "apple_original";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "runtime_in_minutes";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "season_number";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "episode_number_float";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "url";
  *(v26 + 1) = 3;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cover_art";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "premiere_date";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "finale_date";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "content_rating_system";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 4:
      case 11:
      case 15:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 12:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9177230(v3, v4, v5, v6);
        break;
      case 13:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9177230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Tvpb_CoverArt(0);
  sub_1B8CD2A38(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt, protocol conformance descriptor for Tvpb_CoverArt);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 3), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 4), (v0 = v1) == 0))
        {
          if (!*(*(v2 + 64) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), (v0 = v1) == 0))
          {
            if (!*(*(v2 + 72) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), (v0 = v1) == 0))
            {
              if (*(v2 + 80) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v0 = v1) == 0))
              {
                if (!*(v2 + 84) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), (v0 = v1) == 0))
                {
                  if (!*(v2 + 88) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), (v0 = v1) == 0))
                  {
                    if (*(v2 + 92) == 0.0 || (v1 = v0, OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
                    {
                      OUTLINED_FUNCTION_1();
                      if (!v18 || (result = OUTLINED_FUNCTION_3(v16, v17, 11), !v1))
                      {
                        if (!*(*(v2 + 112) + 16) || (type metadata accessor for Tvpb_CoverArt(0), sub_1B8CD2A38(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt, protocol conformance descriptor for Tvpb_CoverArt), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
                        {
                          if (!*(v2 + 120) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                          {
                            if (!*(v2 + 128) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                            {
                              OUTLINED_FUNCTION_1();
                              if (!v21 || (result = OUTLINED_FUNCTION_3(v19, v20, 15), !v1))
                              {
                                type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
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

  return result;
}

uint64_t sub_1B9177608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9177688(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC67A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91776F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A38(&qword_1EBAC67A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_TvObject);

  return sub_1B964C5D0();
}

uint64_t sub_1B9177790()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC66D0);
  __swift_project_value_buffer(v0, qword_1EBAC66D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B9656D00;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "titles";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "genres";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "actors";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "directors";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "release_date_secs";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "thumbnail";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "runtime_in_minutes";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "is_apple_original";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "content_rating_value";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "tomato_meter";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "url";
  *(v28 + 1) = 3;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "cover_art";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "content_rating_system";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.decodeMessage<A>(decoder:)()
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
      case 7:
      case 10:
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 8:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 13:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9177DA0(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9177DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Moviespb_CoverArt(0);
  sub_1B8CD2A38(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt, protocol conformance descriptor for Moviespb_CoverArt);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
    {
      if (!*(*(v1 + 24) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        if (!*(*(v1 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
        {
          if (!*(*(v1 + 40) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
          {
            if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 7), !v0))
              {
                if (!*(v1 + 72) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
                {
                  if (*(v1 + 76) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 10), !v0))
                    {
                      if (!*(v1 + 96) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
                      {
                        OUTLINED_FUNCTION_1();
                        if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 12), !v0))
                        {
                          if (!*(*(v1 + 120) + 16) || (type metadata accessor for Moviespb_CoverArt(0), sub_1B8CD2A38(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt, protocol conformance descriptor for Moviespb_CoverArt), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
                          {
                            OUTLINED_FUNCTION_1();
                            if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 14), !v0))
                            {
                              type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
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

  return result;
}

uint64_t sub_1B91780D4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2A38(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91781B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9178234(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC67B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91782A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A38(&qword_1EBAC67B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MovieObject);

  return sub_1B964C5D0();
}

unint64_t sub_1B9178324()
{
  result = qword_1EBAC6708;
  if (!qword_1EBAC6708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase, &type metadata for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase, v0, v1);
    atomic_store(result, &qword_1EBAC6708);
  }

  return result;
}

unint64_t sub_1B917837C()
{
  result = qword_1EBAC6730;
  if (!qword_1EBAC6730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase, &type metadata for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase, v0, v1);
    atomic_store(result, &qword_1EBAC6730);
  }

  return result;
}

unint64_t sub_1B91783D4()
{
  result = qword_1EBAC6738;
  if (!qword_1EBAC6738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase, &type metadata for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase, v0, v1);
    atomic_store(result, &qword_1EBAC6738);
  }

  return result;
}

unint64_t sub_1B917842C()
{
  result = qword_1EBAC6740;
  if (!qword_1EBAC6740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase, &type metadata for Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase, v0, v1);
    atomic_store(result, &qword_1EBAC6740);
  }

  return result;
}

unint64_t sub_1B9178484()
{
  result = qword_1EBAC6748;
  if (!qword_1EBAC6748)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC6750, &qword_1B9699EB8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC6748);
  }

  return result;
}

void sub_1B9178AB0(uint64_t a1)
{
  sub_1B9178C58(319, &qword_1ED9CF6B8, type metadata accessor for Mapspb_LocalSearchBusiness, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9178B8C(uint64_t a1)
{
  sub_1B9178C58(319, &qword_1ED9CF610, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9178C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9178CF4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9178D78(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9178E14(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B9178C58(319, &qword_1ED9CF6C8, type metadata accessor for Tvpb_CoverArt, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9178F54(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B9178C58(319, &qword_1ED9CF6C0, type metadata accessor for Moviespb_CoverArt, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9179070(uint64_t a1)
{
  sub_1B9178C58(319, &qword_1ED9D9B78, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_28_15()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject._StorageClass(0);

  return swift_allocObject();
}

unint64_t Apple_Parsec_Siri_V2alpha_DomainUseCase.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!v3 & v2)
  {
    v4 = 6;
    v5 = 7;
    if (result == 300)
    {
      v6 = 1;
    }

    else
    {
      v5 = result;
      v6 = 0;
    }

    if (result == 200)
    {
      v6 = 1;
    }

    else
    {
      v4 = v5;
    }

    if (result >= 2)
    {
      v7 = v4;
    }

    else
    {
      v7 = result;
    }

    if (result >= 2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    switch(result)
    {
      case 'd':
        v8 = 1;
        v7 = 2;
        break;
      case 'e':
        v8 = 1;
        v7 = 3;
        break;
      case 'f':
        v8 = 1;
        v7 = 4;
        break;
      case 'g':
        v8 = 1;
        v7 = 5;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCase.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B969AD68[result];
  }

  return result;
}

uint64_t sub_1B9179304@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_DomainUseCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9179338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917B30C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_DomainUseCase.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC6808 = a1;
}

uint64_t sub_1B917949C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_DomainUseCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  sub_1B9179680(v1 + *(v7 + 24), v6);
  v8 = sub_1B964C1E0();
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (!v9)
  {
    return (*(*(v8 - 8) + 32))(a1, v6, v8);
  }

  sub_1B964C1D0();
  result = OUTLINED_FUNCTION_178(v6, 1, v8);
  if (!v9)
  {
    return sub_1B8D9207C(v6, &qword_1EBAB8F88, &qword_1B964D780);
  }

  return result;
}

uint64_t sub_1B9179680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B91796F0(uint64_t a1)
{
  v2 = sub_1B964C1E0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F88, &qword_1B964D780);
  v4 = sub_1B964C1E0();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C1E0();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1();
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0) + 24);
  *(v3 + 12) = v13;
  sub_1B9179680(v1 + v13, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v14)
  {
    sub_1B964C1D0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F88, &qword_1B964D780);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B91799EC;
}

void sub_1B91799EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F88, &qword_1B964D780);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_43_1();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F88, &qword_1B964D780);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  sub_1B9179680(v0 + *(v5 + 24), v4);
  v6 = sub_1B964C1E0();
  OUTLINED_FUNCTION_178(v4, 1, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_1B8D9207C(v4, &qword_1EBAB8F88, &qword_1B964D780);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.clearValue()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0) + 24);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB8F88, &qword_1B964D780);
  v2 = sub_1B964C1E0();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 24);
  v4 = sub_1B964C1E0();

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

void Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parameters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9179FFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB46A0);
  __swift_project_value_buffer(v0, qword_1EBAB46A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DOMAIN_USECASE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DOMAIN_USECASE_WEATHER_GET_WEATHER";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "DOMAIN_USECASE_SPORTS_GET_TEAM_SCORE";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 101;
  *v14 = "DOMAIN_USECASE_SPORTS_GET_TEAM_SCHEDULE";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 102;
  *v16 = "DOMAIN_USECASE_SPORTS_GET_LEAGUE_SCORE";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 103;
  *v18 = "DOMAIN_USECASE_SPORTS_GET_LEAGUE_SCHEDULE";
  *(v18 + 1) = 41;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 200;
  *v20 = "DOMAIN_USECASE_STOCKS_GET_SYMBOL_QUOTE";
  *(v20 + 1) = 38;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 300;
  *v22 = "DOMAIN_USECASE_GEO_GET_DIRECTIONS";
  *(v22 + 1) = 33;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B917A388()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3FA0);
  __swift_project_value_buffer(v0, qword_1EBAB3FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B917A5E4(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B917A5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  sub_1B964C1E0();
  sub_1B917AC0C(&qword_1ED9C8FC8, MEMORY[0x1E69AAB40], MEMORY[0x1E69AAB38]);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  v10 = sub_1B964C1E0();
  OUTLINED_FUNCTION_30_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = sub_1B964C700(), !v4))
  {
    v22[1] = a2;
    v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
    sub_1B9179680(v3 + *(v19 + 24), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1B8D9207C(v9, &qword_1EBAB8F88, &qword_1B964D780);
    }

    else
    {
      (*(v12 + 32))(v15, v9, v10);
      OUTLINED_FUNCTION_1_55();
      sub_1B917AC0C(v20, v21, MEMORY[0x1E69AAB38]);
      sub_1B964C740();
      if (v4)
      {
        return (*(v12 + 8))(v15, v10);
      }

      (*(v12 + 8))(v15, v10);
    }

    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1B964C1E0();
  OUTLINED_FUNCTION_30_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F90, &qword_1B964D788);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = *a1 == *a2 && a1[1] == a2[1];
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0) + 24);
  v20 = *(v14 + 48);
  sub_1B9179680(a1 + v19, v17);
  sub_1B9179680(a2 + v19, &v17[v20]);
  OUTLINED_FUNCTION_178(v17, 1, v4);
  if (v18)
  {
    OUTLINED_FUNCTION_178(&v17[v20], 1, v4);
    if (v18)
    {
      sub_1B8D9207C(v17, &qword_1EBAB8F88, &qword_1B964D780);
LABEL_17:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_37();
      sub_1B917AC0C(v27, v28, MEMORY[0x1E69AAC10]);
      v22 = sub_1B964C850();
      return v22 & 1;
    }

    goto LABEL_14;
  }

  sub_1B9179680(v17, v13);
  OUTLINED_FUNCTION_178(&v17[v20], 1, v4);
  if (v21)
  {
    (*(v6 + 8))(v13, v4);
LABEL_14:
    sub_1B8D9207C(v17, &qword_1EBAB8F90, &qword_1B964D788);
    goto LABEL_15;
  }

  (*(v6 + 32))(v9, &v17[v20], v4);
  OUTLINED_FUNCTION_1_55();
  sub_1B917AC0C(v23, v24, MEMORY[0x1E69AAB48]);
  v25 = sub_1B964C850();
  v26 = *(v6 + 8);
  v26(v9, v4);
  v26(v13, v4);
  sub_1B8D9207C(v17, &qword_1EBAB8F88, &qword_1B964D780);
  if (v25)
  {
    goto LABEL_17;
  }

LABEL_15:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1B917AC0C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1B917ACF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917AC0C(&qword_1EBAC6848, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917AD78(uint64_t a1)
{
  v2 = sub_1B917AC0C(qword_1ED9C9910, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917ADE8(uint64_t a1, uint64_t a2)
{
  sub_1B917AC0C(qword_1ED9C9910, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter);

  return sub_1B964C5D0();
}

uint64_t sub_1B917AE84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3FF8);
  __swift_project_value_buffer(v0, qword_1EBAB3FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameters";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B917B148(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B917B0E0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B917B148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  sub_1B917AC0C(qword_1ED9C9910, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  if (!*v2 || (sub_1B917B30C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v3))
  {
    if (!*(v2[2] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0), sub_1B917AC0C(qword_1ED9C9910, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v3))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0);
      return sub_1B964C290();
    }
  }

  return result;
}

unint64_t sub_1B917B30C()
{
  result = qword_1ED9CA300;
  if (!qword_1ED9CA300)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCase, &type metadata for Apple_Parsec_Siri_V2alpha_DomainUseCase, v0, v1);
    atomic_store(result, &qword_1ED9CA300);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1B969AD68[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_8;
      case 2:
        if (v2 != 100)
        {
          return 0;
        }

        goto LABEL_8;
      case 3:
        if (v2 != 101)
        {
          return 0;
        }

        goto LABEL_8;
      case 4:
        if (v2 != 102)
        {
          return 0;
        }

        goto LABEL_8;
      case 5:
        if (v2 != 103)
        {
          return 0;
        }

        goto LABEL_8;
      case 6:
        if (v2 != 200)
        {
          return 0;
        }

        goto LABEL_8;
      case 7:
        if (v2 != 300)
        {
          return 0;
        }

        goto LABEL_8;
      default:
        if (!v2)
        {
          goto LABEL_8;
        }

        return 0;
    }
  }

  if (v2 == v3)
  {
LABEL_8:
    sub_1B8D6769C(a1[2], a2[2]);
    if (v4)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_37();
      sub_1B917AC0C(v5, v6, MEMORY[0x1E69AAC10]);
      return sub_1B964C850() & 1;
    }
  }

  return 0;
}

uint64_t sub_1B917B4EC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B917AC0C(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B917B5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917AC0C(&qword_1EBAC6840, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917B650(uint64_t a1)
{
  v2 = sub_1B917AC0C(&qword_1EBAB3FE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917B6C0(uint64_t a1, uint64_t a2)
{
  sub_1B917AC0C(&qword_1EBAB3FE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);

  return sub_1B964C5D0();
}

unint64_t sub_1B917B744()
{
  result = qword_1ED9CA2F8;
  if (!qword_1ED9CA2F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCase, &type metadata for Apple_Parsec_Siri_V2alpha_DomainUseCase, v0, v1);
    atomic_store(result, &qword_1ED9CA2F8);
  }

  return result;
}

unint64_t sub_1B917B79C()
{
  result = qword_1ED9CA2E8;
  if (!qword_1ED9CA2E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCase, &type metadata for Apple_Parsec_Siri_V2alpha_DomainUseCase, v0, v1);
    atomic_store(result, &qword_1ED9CA2E8);
  }

  return result;
}

unint64_t sub_1B917B7F4()
{
  result = qword_1ED9CA2F0;
  if (!qword_1ED9CA2F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCase, &type metadata for Apple_Parsec_Siri_V2alpha_DomainUseCase, v0, v1);
    atomic_store(result, &qword_1ED9CA2F0);
  }

  return result;
}

unint64_t sub_1B917B84C()
{
  result = qword_1EBAC6820;
  if (!qword_1EBAC6820)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC6828, &qword_1B969A948);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC6820);
  }

  return result;
}

void sub_1B917BB28(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B917BCD8(319, &qword_1ED9C8FC0, MEMORY[0x1E69AAB40], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B917BC14(uint64_t a1)
{
  sub_1B917BCD8(319, &qword_1ED9C8F50, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B917BCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = v3;
  *(v1 + 72) = v3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v4 + 52);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);

  return __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
}

unint64_t Apple_Parsec_Siri_V2alpha_RewriteType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B917BE70@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_RewriteType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B917BEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918019C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_RewriteType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC6850 = a1;
}

uint64_t sub_1B917BFEC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RewriteType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.utterance.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.queryID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretation.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  sub_1B917C394(v1 + *(v6 + 52), v2);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v7);
  if (!v10)
  {
    return sub_1B917C404(v2, a1);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v11;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v12, v13, v7);
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC6858, &qword_1B969ADB0);
  }

  return result;
}

uint64_t sub_1B917C250(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B917C6A8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretation.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretation.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v2) + 52);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC6858, &qword_1B969ADB0);
  sub_1B917C404(v0, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B917C394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B917C404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0) + 52);
  *(v3 + 10) = v11;
  sub_1B917C394(v1 + v11, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    *v10 = MEMORY[0x1E69E7CC0];
    v10[1] = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC6858, &qword_1B969ADB0);
    }
  }

  else
  {
    sub_1B917C404(v6, v10);
  }

  return sub_1B917C5C8;
}

void sub_1B917C5C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B917C6A8((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBAC6858, &qword_1B969ADB0);
    sub_1B917C404(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B917C70C(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBAC6858, &qword_1B969ADB0);
    sub_1B917C404(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B917C6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B917C70C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.hasAsrInterpretation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_88();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  sub_1B917C394(v0 + *(v4 + 52), v1);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v5 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAC6858, &qword_1B969ADB0);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.clearAsrInterpretation()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0) + 52);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC6858, &qword_1B969ADB0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretations.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.rewrittenUtterances.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.preItnToken.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.postItnToken.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.phoneSequence.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.ipaPhoneSequence.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.recognitionStability.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 66) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0);
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B917D344()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4938);
  __swift_project_value_buffer(v0, qword_1EBAB4938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REWRITE_TYPE_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REWRITE_TYPE_MACHINE_CORRECTION";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REWRITE_TYPE_SIRI_TAP_TO_EDIT";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REWRITE_TYPE_CORRECTION_BY_REPETITION";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REWRITE_TYPE_BY_MENTION_REFERENCE_RESOLUTION";
  *(v16 + 1) = 44;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "REWRITE_TYPE_BY_NL_ROUTER";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "REWRITE_TYPE_BY_NL_ROUTER_DISFLUENCY";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B917D674()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5CB8);
  __swift_project_value_buffer(v0, qword_1EBAB5CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_id";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "asr_rank";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_score";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "asr_interpretation";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "asr_interpretations";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "false_trigger_mitigator";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 1001;
  *v22 = "rewritten_utterances";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 2002;
  *v24 = "profile_slices";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B917DB18(v7, v8, v9, v10);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B917DBCC(v15, v16, v17, v18);
        break;
      default:
        if (result == 1001)
        {
          v11 = OUTLINED_FUNCTION_9();
          sub_1B917DC6C(v11, v12, v13, v14);
        }

        else if (result == 2002)
        {
          v3 = OUTLINED_FUNCTION_9();
          sub_1B917DD0C(v3, v4, v5, v6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B917DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  sub_1B917E0F8(&qword_1EBAB44D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);
  return sub_1B964C580();
}

uint64_t sub_1B917DBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  sub_1B917E0F8(&qword_1EBAB44D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);
  return sub_1B964C570();
}

uint64_t sub_1B917DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0);
  sub_1B917E0F8(&qword_1EBAB4328, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance);
  return sub_1B964C570();
}

uint64_t sub_1B917DD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0);
  sub_1B917E0F8(&qword_1EBAB4788, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSlice);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v16 || (result = OUTLINED_FUNCTION_3(v14, v15, 2), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        if (*(v1 + 40) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
        {
          v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
          sub_1B917C394(v1 + *(v22 + 52), v5);
          if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
          {
            sub_1B8D9207C(v5, &qword_1EBAC6858, &qword_1B969ADB0);
          }

          else
          {
            sub_1B917C404(v5, v9);
            OUTLINED_FUNCTION_13_23();
            sub_1B917E0F8(v17, v18, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);
            OUTLINED_FUNCTION_687();
            sub_1B964C740();
            result = sub_1B917C70C(v9);
            if (v0)
            {
              return result;
            }
          }

          if (!*(*(v1 + 48) + 16) || (OUTLINED_FUNCTION_13_23(), sub_1B917E0F8(v19, v20, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ASRInterpretation), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
          {
            if (!*(v1 + 56) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
            {
              if (!*(*(v1 + 64) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0), sub_1B917E0F8(&qword_1EBAB4328, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
              {
                if (!*(*(v1 + 72) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0), sub_1B917E0F8(&qword_1EBAB4788, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSlice), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
                {
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

  return result;
}

uint64_t sub_1B917E0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t static Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v34 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6860, &qword_1B969ADB8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  v14 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v14 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 32) != *(v0 + 32) || *(v1 + 40) != *(v0 + 40))
  {
    goto LABEL_33;
  }

  v15 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0) + 52);
  v16 = *(v11 + 48);
  sub_1B917C394(v1 + v15, v2);
  sub_1B917C394(v0 + v15, v2 + v16);
  v17 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v17, v18, v3);
  if (v13)
  {
    OUTLINED_FUNCTION_178(v2 + v16, 1, v3);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAC6858, &qword_1B969ADB0);
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  sub_1B917C394(v2, v10);
  OUTLINED_FUNCTION_178(v2 + v16, 1, v3);
  if (v25)
  {
    sub_1B917C70C(v10);
LABEL_26:
    v26 = &qword_1EBAC6860;
    v27 = &qword_1B969ADB8;
LABEL_32:
    sub_1B8D9207C(v2, v26, v27);
LABEL_33:
    v24 = 0;
    return v24 & 1;
  }

  sub_1B917C404(v2 + v16, v6);
  sub_1B8D84EBC(*v10, *v6);
  if ((v28 & 1) == 0 || (sub_1B8D84EBC(v10[1], v6[1]), (v29 & 1) == 0))
  {
    sub_1B917C70C(v6);
    sub_1B917C70C(v10);
    v26 = &qword_1EBAC6858;
    v27 = &qword_1B969ADB0;
    goto LABEL_32;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  sub_1B917E0F8(v30, v31, MEMORY[0x1E69AAC10]);
  v32 = sub_1B964C850();
  sub_1B917C70C(v6);
  sub_1B917C70C(v10);
  sub_1B8D9207C(v2, &qword_1EBAC6858, &qword_1B969ADB0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  sub_1B8D84F10(*(v1 + 48), *(v0 + 48));
  if ((v19 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (*(v1 + 56) != *(v0 + 56))
  {
    goto LABEL_33;
  }

  sub_1B8D85654(*(v1 + 64), *(v0 + 64));
  if ((v20 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1B8D85888(*(v1 + 72), *(v0 + 72));
  if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  sub_1B917E0F8(v22, v23, MEMORY[0x1E69AAC10]);
  v24 = sub_1B964C850();
  return v24 & 1;
}

uint64_t sub_1B917E558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917E0F8(&qword_1EBAC68D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917E5D8(uint64_t a1)
{
  v2 = sub_1B917E0F8(&qword_1EBAB5CA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917E648(uint64_t a1, uint64_t a2)
{
  sub_1B917E0F8(&qword_1EBAB5CA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B917E6E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB44E8);
  __swift_project_value_buffer(v0, qword_1EBAB44E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pre_itn_token";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "post_itn_token";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B917E9D0(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B917E930(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B917E930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0);
  sub_1B917E0F8(&qword_1EBAB4210, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_InterpretationToken);
  return sub_1B964C570();
}

uint64_t sub_1B917E9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0);
  sub_1B917E0F8(&qword_1EBAB4210, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_InterpretationToken);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0), OUTLINED_FUNCTION_14_21(), sub_1B917E0F8(v3, v4, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_InterpretationToken), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0), OUTLINED_FUNCTION_14_21(), sub_1B917E0F8(v6, v7, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_InterpretationToken), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ASRInterpretation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1B8D84EBC(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D84EBC(a1[1], a2[1]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  v8 = sub_1B917E0F8(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B917ECBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917E0F8(&qword_1EBAC68C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917ED3C(uint64_t a1)
{
  v2 = sub_1B917E0F8(&qword_1EBAB44D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917EDAC(uint64_t a1, uint64_t a2)
{
  sub_1B917E0F8(&qword_1EBAB44D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ASRInterpretation);

  return sub_1B964C5D0();
}

uint64_t sub_1B917EE48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4220);
  __swift_project_value_buffer(v0, qword_1EBAB4220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B9656D00;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "text";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "original_text";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "phone_sequence";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "ipa_phone_sequence";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_space_removed_before";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_space_removed_after";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_space_added_after";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "start_time";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "end_time";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "silence_start_time";
  *(v25 + 1) = 18;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "recognition_stability";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "confidence_score";
  *(v29 + 1) = 16;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "acoustic_cost";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "graph_cost";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
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
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 12:
      case 13:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 4), !v0))
        {
          if (*(v1 + 64) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
          {
            if (*(v1 + 65) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
            {
              if (*(v1 + 66) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
              {
                if (!*(v1 + 72) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
                {
                  if (!*(v1 + 80) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
                  {
                    if (!*(v1 + 88) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
                    {
                      OUTLINED_FUNCTION_1();
                      if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 11), !v0))
                      {
                        if (*(v1 + 112) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
                        {
                          if (*(v1 + 120) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
                          {
                            if (*(v1 + 128) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
                            {
                              type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0);
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

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_InterpretationToken.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 64) != *(v1 + 64) || *(v2 + 65) != *(v1 + 65) || *(v2 + 66) != *(v1 + 66) || *(v2 + 72) != *(v1 + 72) || *(v2 + 80) != *(v1 + 80) || *(v2 + 88) != *(v1 + 88))
  {
    return 0;
  }

  v9 = *(v2 + 96) == *(v1 + 96) && *(v2 + 104) == *(v1 + 104);
  if (!v9 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 112) != *(v1 + 112) || *(v2 + 120) != *(v1 + 120) || *(v2 + 128) != *(v1 + 128))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  v12 = sub_1B917E0F8(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B917F868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917E0F8(&qword_1EBAC68C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_InterpretationToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917F8E8(uint64_t a1)
{
  v2 = sub_1B917E0F8(&qword_1EBAB4210, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_InterpretationToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917F958(uint64_t a1, uint64_t a2)
{
  sub_1B917E0F8(&qword_1EBAB4210, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_InterpretationToken);

  return sub_1B964C5D0();
}

uint64_t sub_1B917F9E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4338);
  __swift_project_value_buffer(v0, qword_1EBAB4338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewritten_utterance";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rewrite_type";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B917FC98(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RewrittenUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
    {
      if (!*(v1 + 24) || (sub_1B918019C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_RewrittenUtterance.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  v6 = *(v2 + 24);
  v7 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_12;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_12;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_12;
        }

        return 0;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_12;
        }

        return 0;
      case 5:
        if (v6 == 5)
        {
          goto LABEL_12;
        }

        return 0;
      case 6:
        if (v6 == 6)
        {
          goto LABEL_12;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_12;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_12:
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_65();
  v11 = sub_1B917E0F8(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B917FF48(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B917E0F8(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B918002C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917E0F8(&qword_1EBAC68B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91800AC(uint64_t a1)
{
  v2 = sub_1B917E0F8(&qword_1EBAB4328, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B918011C(uint64_t a1, uint64_t a2)
{
  sub_1B917E0F8(&qword_1EBAB4328, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance);

  return sub_1B964C5D0();
}

unint64_t sub_1B918019C()
{
  result = qword_1EBAB4928;
  if (!qword_1EBAB4928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewriteType, &type metadata for Apple_Parsec_Siri_V2alpha_RewriteType, v0, v1);
    atomic_store(result, &qword_1EBAB4928);
  }

  return result;
}

unint64_t sub_1B91801F4()
{
  result = qword_1EBAB4920;
  if (!qword_1EBAB4920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewriteType, &type metadata for Apple_Parsec_Siri_V2alpha_RewriteType, v0, v1);
    atomic_store(result, &qword_1EBAB4920);
  }

  return result;
}

unint64_t sub_1B918024C()
{
  result = qword_1EBAB4910;
  if (!qword_1EBAB4910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewriteType, &type metadata for Apple_Parsec_Siri_V2alpha_RewriteType, v0, v1);
    atomic_store(result, &qword_1EBAB4910);
  }

  return result;
}

unint64_t sub_1B91802A4()
{
  result = qword_1EBAB4918;
  if (!qword_1EBAB4918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RewriteType, &type metadata for Apple_Parsec_Siri_V2alpha_RewriteType, v0, v1);
    atomic_store(result, &qword_1EBAB4918);
  }

  return result;
}

unint64_t sub_1B91802FC()
{
  result = qword_1EBAC6888;
  if (!qword_1EBAC6888)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC6890, &qword_1B969AEA8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBAC6888);
  }

  return result;
}

void sub_1B9180818(uint64_t a1)
{
  sub_1B91809C8(319, &qword_1ED9CF5F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B91809C8(319, &qword_1ED9CF5D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B91809C8(319, &qword_1ED9CF650, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1B964C2B0();
        if (v4 <= 0x3F)
        {
          sub_1B91809C8(319, &qword_1ED9D1450, type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B91809C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9180A54(uint64_t a1)
{
  sub_1B91809C8(319, &qword_1ED9CF5C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9180B30(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9180C10(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.givenName.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.middleName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.familyName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.nickname.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.fullName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.addresses.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(v2) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_Person.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_6_25(a1);
  v1[10] = MEMORY[0x1E69E7CC0];
  v1[11] = 0;
  v1[12] = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(v2) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Apple_Parsec_Siri_V2alpha_ContactAddress.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(v0);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_6_25(a1);
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9181450()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4FC8);
  __swift_project_value_buffer(v0, qword_1EBAB4FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "given_name";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "middle_name";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "family_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "nickname";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "full_name";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "addresses";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "contact_identifier";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.decodeMessage<A>(decoder:)()
{
  v4 = v0;
  OUTLINED_FUNCTION_12_8();
  v6 = v5;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v1 || (v8 & 1) != 0)
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
      case 7:
        sub_1B964C530();
        break;
      case 6:
        sub_1B9181854(v6, v4, v3, v2);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9181854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0);
  sub_1B918262C(&qword_1EBAC68F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ContactAddress);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_Person.traverse<A>(visitor:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v2 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), (v2 = v1) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 3), (v2 = v1) == 0))
      {
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 4), (v2 = v1) == 0))
        {
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(v16, v17, 5), (v2 = v1) == 0))
          {
            if (!*(*(v0 + 80) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0), sub_1B918262C(&qword_1EBAC68F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ContactAddress), v1 = v2, result = sub_1B964C730(), !v2))
            {
              OUTLINED_FUNCTION_1();
              if (!v21 || (result = OUTLINED_FUNCTION_3(v19, v20, 7), !v1))
              {
                type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_Person.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D77F8C(v2[10], v1[10]);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v2[11] == v1[11] && v2[12] == v1[12];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_Person(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_38();
  v14 = sub_1B918262C(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

uint64_t sub_1B9181C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918262C(&qword_1EBAC6928, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9181CCC(uint64_t a1)
{
  v2 = sub_1B918262C(&qword_1EBAB4FB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9181D3C(uint64_t a1, uint64_t a2)
{
  sub_1B918262C(&qword_1EBAB4FB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Person, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Person);

  return sub_1B964C5D0();
}

uint64_t sub_1B9181DD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC68D8);
  __swift_project_value_buffer(v0, qword_1EBAC68D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B964E4A0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "address_label";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "street";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "city";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "state";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "zip_code";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "country_code";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12_8();
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
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_ContactAddress.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v10 || (result = OUTLINED_FUNCTION_3(v8, v9, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v13 || (result = OUTLINED_FUNCTION_3(v11, v12, 4), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v16 || (result = OUTLINED_FUNCTION_3(v14, v15, 5), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v19 || (result = OUTLINED_FUNCTION_3(v17, v18, 6), !v0))
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ContactAddress.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[10] == v1[10] && v2[11] == v1[11];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_38();
  v13 = sub_1B918262C(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t sub_1B91823D8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B918262C(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91824BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918262C(&qword_1EBAC6920, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ContactAddress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B918253C(uint64_t a1)
{
  v2 = sub_1B918262C(&qword_1EBAC68F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ContactAddress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91825AC(uint64_t a1, uint64_t a2)
{
  sub_1B918262C(&qword_1EBAC68F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ContactAddress);

  return sub_1B964C5D0();
}

uint64_t sub_1B918262C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_1B91828DC(uint64_t a1)
{
  sub_1B918297C(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B918297C(uint64_t a1)
{
  if (!qword_1ED9CF630)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(255);
    v1 = sub_1B964C910();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9CF630);
    }
  }
}

uint64_t sub_1B91829FC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_6_25(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
}

uint64_t sub_1B9182B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D16C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9182BEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ProfileSliceLabel.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9182C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D1C0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9182D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9182D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D214();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9182E30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_53_11();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(v5);
  sub_1B8D92024();
  v6 = sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v6);
  if (!v9)
  {
    return (*(*(v6 - 8) + 32))(a1, v1, v6);
  }

  sub_1B964C1B0();
  v10 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v10, v11, v6);
  if (!v9)
  {
    return sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
  }

  return result;
}

uint64_t sub_1B918313C(uint64_t a1)
{
  v2 = sub_1B964C1C0();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(v2) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v1 + 8) = v7;
  v8 = sub_1B964C1C0();
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_30_1();
  v10 = v9;
  *(v1 + 24) = v9;
  v12 = *(v11 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 40) = v13;
  v14 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0) + 32);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_643(v0 + v14, v7);
  OUTLINED_FUNCTION_178(v7, 1, v8);
  if (v15)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_178(v7, 1, v8);
    if (!v15)
    {
      sub_1B8D9207C(v7, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B9183428(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    v10 = OUTLINED_FUNCTION_543();
    v11(v10);
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_53_11();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(v3);
  sub_1B8D92024();
  sub_1B964C1C0();
  v4 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v4, v5, v6);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
  return v8;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ProfileSliceValue.clearValue()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0) + 32);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB8F20, &qword_1B964D720);
  v2 = sub_1B964C1C0();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1B9183704()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B918378C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v3 + 32);
  v5 = sub_1B964C1C0();

  return __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appName.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.supportedIntents.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.vocabConcepts.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.displayAppName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appNameMap.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.displayAppNameMap.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appNameSynonyms.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appNameSynonymsMap.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.fallbackSpokenName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.spokenNameMap.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.spotlightName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.spotlightNameMap.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.appIntentsProtocolMetadata.setter(uint64_t a1)
{

  *(v1 + 160) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms.appNameSynonym.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = OUTLINED_FUNCTION_32_16();
  *(a1 + 88) = OUTLINED_FUNCTION_32_16();
  *(a1 + 96) = v2;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(0);
  OUTLINED_FUNCTION_113_0();
  *(a1 + 104) = sub_1B964C7B0();
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  *(a1 + 128) = OUTLINED_FUNCTION_32_16();
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  *(a1 + 152) = OUTLINED_FUNCTION_32_16();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0);
  OUTLINED_FUNCTION_113_0();
  *(a1 + 160) = sub_1B964C7B0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B918437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918F0AC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.init(rawValue:)(void *a1@<X8>, unint64_t a2@<X0>)
{
  if (a2 >= 3)
  {
    v2 = 4;
    v3 = 5;
    v4 = 6;
    v5 = 3;
    if (a2 != 4)
    {
      v5 = a2;
    }

    if (a2 != 32)
    {
      v4 = v5;
    }

    if (a2 != 16)
    {
      v3 = v4;
    }

    if (a2 != 8)
    {
      v2 = v3;
    }

    if (a2 == 64)
    {
      a2 = 7;
    }

    else
    {
      a2 = v2;
    }
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B969D628[result];
  }

  return result;
}

uint64_t sub_1B9184478@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91844AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918F058();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9184554(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918F004();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9184634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B91846E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9184794@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9184920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB99C8, &unk_1B96506F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.showInAppStringSearchResultsMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB99C8, &unk_1B96506F0);
LABEL_6:
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
    return OUTLINED_FUNCTION_163_2(v10);
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B9184D18();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_32();
  return sub_1B9184FE4();
}

uint64_t sub_1B9184AF0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a1(0);
  return OUTLINED_FUNCTION_163_2(v2);
}

void (*Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.showInAppStringSearchResultsMetadata.modify())(uint64_t a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[1] = v6;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v0[2] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v0[3] = v9;
  v10 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643(v10, v11);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v0[4] = v12;
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v12);
  if (v15)
  {
    sub_1B8D9207C(v6, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_128();
      sub_1B9184FE4();
      return sub_1B9184CE8;
    }

    sub_1B9184D18();
  }

  *v9 = MEMORY[0x1E69E7CC0];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  return sub_1B9184CE8;
}

uint64_t sub_1B9184D18()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.playVideoMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB99C8, &unk_1B96506F0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_7_31();
      return sub_1B9184FE4();
    }

    sub_1B9184D18();
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  return OUTLINED_FUNCTION_163_2(v11);
}

uint64_t sub_1B9184E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B918530C();
  return a7(v7);
}

uint64_t sub_1B9184F24()
{
  sub_1B8D9207C(v0, &qword_1EBAB99C8, &unk_1B96506F0);
  OUTLINED_FUNCTION_128();
  sub_1B9184FE4();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t sub_1B9184FE4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

void (*Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.playVideoMetadata.modify())(uint64_t a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v0[1] = v6;
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v0[2] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v0[3] = v9;
  v10 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643(v10, v11);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(0);
  v0[4] = v12;
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v12);
  if (v15)
  {
    sub_1B8D9207C(v6, &qword_1EBAB99C8, &unk_1B96506F0);
LABEL_7:
    *v9 = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    return sub_1B91851B4;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9184D18();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_31();
  OUTLINED_FUNCTION_128();
  sub_1B9184FE4();
  return sub_1B91851B4;
}

void sub_1B91851E4()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    sub_1B918530C();
    sub_1B8D9207C(v5, &qword_1EBAB99C8, &unk_1B96506F0);
    sub_1B9184FE4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B9184D18();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB99C8, &unk_1B96506F0);
    sub_1B9184FE4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t sub_1B918530C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B918537C()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9185404()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(v0);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v21[1] = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_62();
  v4 = (v3 - v2);
  v21[0] = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_53_11();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6A90, &unk_1B969B9D0);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  sub_1B918530C();
  sub_1B918530C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_9_25();
    sub_1B918530C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_31();
      sub_1B9184FE4();
      if (sub_1B8D62F34(*v10, *v4))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_66();
        sub_1B8CD2A80(v17, v18, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_30_22();
      sub_1B9184D18();
LABEL_12:
      sub_1B9184D18();
      OUTLINED_FUNCTION_3_38();
      sub_1B9184D18();
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_25();
    sub_1B918530C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_8_32();
      sub_1B9184FE4();
      if (sub_1B8D62FDC(*v12, *v0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_66();
        sub_1B8CD2A80(v19, v20, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_29_21();
      sub_1B9184D18();
      goto LABEL_12;
    }
  }

  sub_1B9184D18();
  sub_1B8D9207C(v16, &qword_1EBAC6A90, &unk_1B969B9D0);
LABEL_13:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9185970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D268();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9185A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918D2BC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata(v1);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0);
  return OUTLINED_FUNCTION_163_2(v3);
}

uint64_t sub_1B9185BA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9185C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B9185C7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4478);
  __swift_project_value_buffer(v0, qword_1EBAB4478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1B964EE90;
  v4 = v68 + v3 + v1[14];
  *(v68 + v3) = 0;
  *v4 = "SLICE_LABEL_UNKNOWN";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v68 + v3 + v2 + v1[14];
  *(v68 + v3 + v2) = 1;
  *v8 = "SLICE_LABEL_PLAYLIST";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v68 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "SLICE_LABEL_FULL_NAME";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v68 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SLICE_LABEL_HOME_AUTOMATION_ACCESSORY_NAME";
  *(v12 + 1) = 42;
  v12[16] = 2;
  v7();
  v13 = (v68 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SLICE_LABEL_HOME_AUTOMATION_ROOM";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v7();
  v15 = (v68 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SLICE_LABEL_APP_NAME";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v68 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "SLICE_LABEL_AMP_USERS_STATE";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v68 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SLICE_LABEL_PHONE";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v68 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "SLICE_LABEL_EMAIL";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v68 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SLICE_LABEL_ADDRESS";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v68 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SLICE_LABEL_PERSON_PLACE";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v68 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SLICE_LABEL_FIRST_NAME";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  v29 = (v68 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SLICE_LABEL_MIDDLE_NAME";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v68 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SLICE_LABEL_LAST_NAME";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v7();
  v33 = (v68 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SLICE_LABEL_NICK_NAME";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v7();
  v35 = (v68 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SLICE_LABEL_COMPANY";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v7();
  v37 = (v68 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "SLICE_LABEL_RELATIONSHIP";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v7();
  v39 = (v68 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "SLICE_LABEL_APP_PLAYLIST_TITLE";
  *(v40 + 1) = 30;
  v40[16] = 2;
  v7();
  v41 = (v68 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "SLICE_LABEL_APP_MUSIC_ARTIST";
  *(v42 + 1) = 28;
  v42[16] = 2;
  v7();
  v43 = (v68 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "SLICE_LABEL_APP_AUDIO_BOOK_TITLE";
  *(v44 + 1) = 32;
  v44[16] = 2;
  v7();
  v45 = (v68 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "SLICE_LABEL_APP_AUDIO_BOOK_AUTHOR";
  *(v46 + 1) = 33;
  v46[16] = 2;
  v7();
  v47 = (v68 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "SLICE_LABEL_APP_SHOW_TITLE";
  *(v48 + 1) = 26;
  v48[16] = 2;
  v7();
  v49 = (v68 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "SLICE_LABEL_ME";
  *(v50 + 1) = 14;
  v50[16] = 2;
  v7();
  v51 = (v68 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "SLICE_LABEL_AUDIO_QUEUE_STATE";
  *(v52 + 1) = 29;
  v52[16] = 2;
  v7();
  v53 = (v68 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "SLICE_LABEL_ROUTE_INFO";
  *(v54 + 1) = 22;
  v54[16] = 2;
  v7();
  v55 = (v68 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "SLICE_LABEL_PARKING_LOCATION";
  *(v56 + 1) = 28;
  v56[16] = 2;
  v7();
  v57 = (v68 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "SLICE_LABEL_HOME_AUTOMATION_SERVICE_GROUP";
  *(v58 + 1) = 41;
  v58[16] = 2;
  v7();
  v59 = (v68 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "SLICE_LABEL_HOME_AUTOMATION_SERVICE_NAME";
  *(v60 + 1) = 40;
  v60[16] = 2;
  v7();
  v61 = (v68 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "SLICE_LABEL_HOME_AUTOMATION_ZONE";
  *(v62 + 1) = 32;
  v62[16] = 2;
  v7();
  v63 = (v68 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "SLICE_LABEL_FOREGROUND_APP_INFO";
  *(v64 + 1) = 31;
  v64[16] = 2;
  v7();
  v65 = (v68 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "SLICE_LABEL_PREFERRED_MAP_APP_BUNDLE_ID";
  *(v66 + 1) = 39;
  v66[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9186540()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3F40);
  __swift_project_value_buffer(v0, qword_1EBAB3F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B966F8E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VALUE_LABEL_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VALUE_LABEL_IS_CURRENTLY_PLAYING";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VALUE_LABEL_LAST_PLAYED_AT";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VALUE_LABEL_IDENTIFIER";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VALUE_LABEL_HASHED_ROUTE_UID";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VALUE_LABEL_HOME";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "VALUE_LABEL_ROOM_NAME";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "VALUE_LABEL_DEVICE_NAME";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "VALUE_LABEL_AMP_USER";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "VALUE_LABEL_APP_INFO";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "VALUE_LABEL_PERSON";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "VALUE_LABEL_AUDIO_QUEUE_STATE";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "VALUE_LABEL_ROUTE_INFO";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v9();
  v33 = (v5 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "VALUE_LABEL_PARKING_LOCATION";
  *(v34 + 1) = 28;
  v34[16] = 2;
  v9();
  v35 = (v5 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "VALUE_LABEL_SIRIKIT_APP_INFO";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9186A48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3BC8);
  __swift_project_value_buffer(v0, qword_1EBAB3BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RESOLUTION_STATE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RESOLUTION_STATE_RESOLVED";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RESOLUTION_STATE_FAILED";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9186C8C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4798);
  __swift_project_value_buffer(v0, qword_1EBAB4798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "is_from_companion";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9186FA8(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9186F40(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9186FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
  sub_1B8CD2A80(&qword_1EBAB4428, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSlice.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (sub_1B8D92198(*v0, *(v2 + 8), 0) || (sub_1B918D16C(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0), sub_1B8CD2A80(&qword_1EBAB4428, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C730(), !v1))
    {
      if (*(v2 + 24) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ProfileSlice.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if (!sub_1B8D92198(*v2, *(v1 + 8), *v0))
  {
    return 0;
  }

  sub_1B8D71E14(*(v1 + 16), *(v0 + 16));
  if ((v3 & 1) == 0 || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_66();
  v7 = sub_1B8CD2A80(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t sub_1B91872D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CD0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSlice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9187354(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAB4788, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSlice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91873C4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAB4788, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSlice);

  return sub_1B964C5D0();
}

uint64_t sub_1B918745C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4438);
  __swift_project_value_buffer(v0, qword_1EBAB4438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "state";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_post_resolution";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B918776C(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B91877D4(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B9187888(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91877D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
  sub_1B964C1C0();
  sub_1B8CD2A80(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v16 = v15 - v14;
  if (!*v3 || (v17 = *(v3 + 8), v22 = *v3, v23 = v17, sub_1B918D1C0(), OUTLINED_FUNCTION_17_15(), result = sub_1B964C680(), (v5 = v4) == 0))
  {
    v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1B8D9207C(v9, &qword_1EBAB8F20, &qword_1B964D720);
    }

    else
    {
      (*(v12 + 32))(v16, v9, v10);
      OUTLINED_FUNCTION_28_16();
      sub_1B8CD2A80(v19, v20, MEMORY[0x1E69AAB08]);
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      v5 = v4;
      if (v4)
      {
        return (*(v12 + 8))(v16, v10);
      }

      (*(v12 + 8))(v16, v10);
    }

    if (!v3[2] || (v21 = *(v3 + 24), v22 = v3[2], v23 = v21, sub_1B918D214(), OUTLINED_FUNCTION_17_15(), result = sub_1B964C680(), (v5 = v4) == 0))
    {
      if (*(v3 + 25) != 1)
      {
        return sub_1B964C290();
      }

      result = sub_1B964C670();
      if (!v5)
      {
        return sub_1B964C290();
      }
    }
  }

  return result;
}

void static Apple_Parsec_Siri_V2alpha_ProfileSliceValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v3 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_79();
  if (!sub_1B8D92198(*v1, *(v1 + 8), *v0))
  {
    goto LABEL_15;
  }

  v27 = v5;
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue(0);
  v16 = *(v14 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2, 1, v3);
  if (!v17)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2 + v16, 1, v3);
    if (!v17)
    {
      v18 = v27;
      (*(v27 + 32))(v9, v2 + v16, v3);
      OUTLINED_FUNCTION_28_16();
      sub_1B8CD2A80(v19, v20, MEMORY[0x1E69AAB20]);
      v21 = sub_1B964C850();
      v22 = *(v18 + 8);
      v23 = OUTLINED_FUNCTION_128();
      v22(v23);
      (v22)(v13, v3);
      sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    (*(v27 + 8))(v13, v3);
LABEL_10:
    sub_1B8D9207C(v2, &qword_1EBAB8F28, &unk_1B9683B20);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_178(v2 + v16, 1, v3);
  if (!v17)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_12:
  if (sub_1B8D92198(*(v1 + 16), *(v1 + 24), *(v0 + 16)) && *(v1 + 25) == *(v0 + 25))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_66();
    sub_1B8CD2A80(v24, v25, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
  }

LABEL_15:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9187FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A80(&qword_1EBAC6CC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9188030(uint64_t a1)
{
  v2 = sub_1B8CD2A80(&qword_1EBAB4428, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91880A0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2A80(&qword_1EBAB4428, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue);

  return sub_1B964C5D0();
}

uint64_t sub_1B9188138()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4EC8);
  __swift_project_value_buffer(v0, qword_1EBAB4EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "app_name";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bundle_id";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "has_siri_integration";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "supported_intents";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "vocab_concepts";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_from_companion";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "display_app_name";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "app_name_map";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "display_app_name_map";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "app_name_synonyms";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "app_name_synonyms_map";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "fallback_spoken_name";
  *(v29 + 1) = 20;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "spoken_name_map";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "spotlight_name";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "spotlight_name_map";
  *(v35 + 1) = 18;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "app_intents_protocol_metadata";
  *(v37 + 1) = 29;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.decodeMessage<A>(decoder:)()
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
      case 2:
      case 7:
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 4:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B91887C0(v7, v8, v9, v10);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B9188860(v19, v20, v21, v22);
        break;
      case 9:
        v27 = OUTLINED_FUNCTION_9();
        sub_1B91888D8(v27, v28, v29, v30);
        break;
      case 11:
        v23 = OUTLINED_FUNCTION_9();
        sub_1B9188950(v23, v24, v25, v26);
        break;
      case 13:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9188A48(v11, v12, v13, v14);
        break;
      case 15:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9188AC0(v3, v4, v5, v6);
        break;
      case 16:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B9188B38(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91887C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0);
  sub_1B8CD2A80(&qword_1EBAC6AA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept);
  return sub_1B964C570();
}

uint64_t sub_1B9188950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(0);
  sub_1B8CD2A80(&qword_1EBAC6AB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);
  sub_1B8CD2A80(&qword_1EBAC6AB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms);
  return sub_1B964C3A0();
}

uint64_t sub_1B9188B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0);
  sub_1B8CD2A80(&qword_1EBAC6AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);
  sub_1B8CD2A80(&qword_1EBAC6AC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata);
  return sub_1B964C3A0();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v3, v4, v5), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v8, v9, v10), !v0))
    {
      if (*(v1 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
      {
        if (!*(*(v1 + 40) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
        {
          if (!*(*(v1 + 48) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(0), sub_1B8CD2A80(&qword_1EBAC6AA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C730(), !v0))
          {
            if (*(v1 + 56) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v11 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v12, v13, v14), !v0))
              {
                if (!*(*(v1 + 80) + 16) || (sub_1B964C280(), OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_74_12(v15, v16, v17, v18, v19, v20), !v0))
                {
                  if (!*(*(v1 + 88) + 16) || (sub_1B964C280(), OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_74_12(v21, v22, v23, v24, v25, v26), !v0))
                  {
                    if (!*(*(v1 + 96) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
                    {
                      if (!*(*(v1 + 104) + 16) || (sub_1B964C280(), type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms(0), sub_1B8CD2A80(&qword_1EBAC6AB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms), sub_1B8CD2A80(&qword_1EBAC6AB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppInfo.list_app_name_synonyms), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v0))
                      {
                        OUTLINED_FUNCTION_1();
                        if (!v27 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v28, v29, v30), !v0))
                        {
                          if (!*(*(v1 + 128) + 16) || (sub_1B964C280(), OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_74_12(v31, v32, v33, v34, v35, v36), !v0))
                          {
                            OUTLINED_FUNCTION_1();
                            if (!v37 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(v38, v39, v40), !v0))
                            {
                              if (!*(*(v1 + 152) + 16) || (sub_1B964C280(), OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_74_12(v41, v42, v43, v44, v45, v46), !v0))
                              {
                                if (!*(*(v1 + 160) + 16) || (sub_1B964C280(), type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata(0), sub_1B8CD2A80(&qword_1EBAC6AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata), sub_1B8CD2A80(&qword_1EBAC6AC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v0))
                                {
                                  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo(0);
                                  return OUTLINED_FUNCTION_8_1();
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

  return result;
}