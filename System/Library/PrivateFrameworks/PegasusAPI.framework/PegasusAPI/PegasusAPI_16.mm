uint64_t sub_1B8E4F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_GeoEntity(0);
  sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity, protocol conformance descriptor for Kgqsapipb_GeoEntity);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_GeoEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        if (!*(*(v1 + 48) + 16) || (type metadata accessor for Kgqsapipb_GeoEntity(0), sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity, protocol conformance descriptor for Kgqsapipb_GeoEntity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_37_2(), result = sub_1B964C730(), !v0))
        {
          type metadata accessor for Kgqsapipb_GeoEntity(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_GeoEntity.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7D760(v2[6], v1[6]);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_GeoEntity(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v13 = sub_1B8CD1D90(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t sub_1B8E4FC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC150, type metadata accessor for Kgqsapipb_GeoEntity, protocol conformance descriptor for Kgqsapipb_GeoEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E4FCBC(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity, protocol conformance descriptor for Kgqsapipb_GeoEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E4FD2C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABBE30, type metadata accessor for Kgqsapipb_GeoEntity, protocol conformance descriptor for Kgqsapipb_GeoEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E4FDC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABBD00);
  __swift_project_value_buffer(v0, qword_1EBABBD00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "audio_bytes";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "sample_rate";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "format_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "format_flags";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "bytes_per_packet";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "frames_per_packet";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "bytes_per_frame";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "channels_per_frame";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "bits_per_channel";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "reserved";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGSound.decodeMessage<A>(decoder:)()
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
        sub_1B964C470();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
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
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_KGSound.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (sub_1B8D99EA8(*v0, *(v2 + 8)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6F0(), !v1))
    {
      if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (!*(v2 + 28) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          if (!*(v2 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
          {
            if (!*(v2 + 36) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
            {
              if (!*(v2 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
              {
                if (!*(v2 + 44) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                {
                  if (!*(v2 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                  {
                    if (!*(v2 + 52) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                    {
                      type metadata accessor for Kgqsapipb_KGSound(0);
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

  return result;
}

uint64_t static Kgqsapipb_KGSound.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((MEMORY[0x1BFADC060](*v2, *(v1 + 8), *v0, *(v0 + 8)) & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24) || *(v1 + 28) != *(v0 + 28) || *(v1 + 32) != *(v0 + 32) || *(v1 + 36) != *(v0 + 36) || *(v1 + 40) != *(v0 + 40) || *(v1 + 44) != *(v0 + 44) || *(v1 + 48) != *(v0 + 48) || *(v1 + 52) != *(v0 + 52))
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_KGSound(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_18();
  v5 = sub_1B8CD1D90(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B8E50560(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  OUTLINED_FUNCTION_145_2();
  sub_1B964CA70();
  v4(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD1D90(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E5063C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D90(&qword_1EBABC148, type metadata accessor for Kgqsapipb_KGSound, protocol conformance descriptor for Kgqsapipb_KGSound);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E506BC(uint64_t a1)
{
  v2 = sub_1B8CD1D90(&qword_1EBABC038, type metadata accessor for Kgqsapipb_KGSound, protocol conformance descriptor for Kgqsapipb_KGSound);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E5072C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D90(&qword_1EBABC038, type metadata accessor for Kgqsapipb_KGSound, protocol conformance descriptor for Kgqsapipb_KGSound);

  return sub_1B964C5D0();
}

unint64_t sub_1B8E5090C()
{
  result = qword_1EBABBE20;
  if (!qword_1EBABBE20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_RenderFeatures.AnswerType, &type metadata for Kgqsapipb_RenderFeatures.AnswerType, v0, v1);
    atomic_store(result, &qword_1EBABBE20);
  }

  return result;
}

unint64_t sub_1B8E50964()
{
  result = qword_1EBABBE48;
  if (!qword_1EBABBE48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGDBResponse.ResultSource, &type metadata for Kgqsapipb_KGDBResponse.ResultSource, v0, v1);
    atomic_store(result, &qword_1EBABBE48);
  }

  return result;
}

unint64_t sub_1B8E509BC()
{
  result = qword_1EBABBE50;
  if (!qword_1EBABBE50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGDBResponse.ResultSource, &type metadata for Kgqsapipb_KGDBResponse.ResultSource, v0, v1);
    atomic_store(result, &qword_1EBABBE50);
  }

  return result;
}

unint64_t sub_1B8E50A14()
{
  result = qword_1EBABBE58;
  if (!qword_1EBABBE58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGDBResponse.ResultSource, &type metadata for Kgqsapipb_KGDBResponse.ResultSource, v0, v1);
    atomic_store(result, &qword_1EBABBE58);
  }

  return result;
}

unint64_t sub_1B8E50A6C()
{
  result = qword_1EBABBE60;
  if (!qword_1EBABBE60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGDBResponse.ResultType, &type metadata for Kgqsapipb_KGDBResponse.ResultType, v0, v1);
    atomic_store(result, &qword_1EBABBE60);
  }

  return result;
}

unint64_t sub_1B8E50AC4()
{
  result = qword_1EBABBE68;
  if (!qword_1EBABBE68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGDBResponse.ResultType, &type metadata for Kgqsapipb_KGDBResponse.ResultType, v0, v1);
    atomic_store(result, &qword_1EBABBE68);
  }

  return result;
}

unint64_t sub_1B8E50B1C()
{
  result = qword_1EBABBE70;
  if (!qword_1EBABBE70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGDBResponse.ResultType, &type metadata for Kgqsapipb_KGDBResponse.ResultType, v0, v1);
    atomic_store(result, &qword_1EBABBE70);
  }

  return result;
}

unint64_t sub_1B8E50BD4()
{
  result = qword_1EBABBE98;
  if (!qword_1EBABBE98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGEntity.AttributeType, &type metadata for Kgqsapipb_KGEntity.AttributeType, v0, v1);
    atomic_store(result, &qword_1EBABBE98);
  }

  return result;
}

unint64_t sub_1B8E50C2C()
{
  result = qword_1EBABBEA0;
  if (!qword_1EBABBEA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGEntity.AttributeType, &type metadata for Kgqsapipb_KGEntity.AttributeType, v0, v1);
    atomic_store(result, &qword_1EBABBEA0);
  }

  return result;
}

unint64_t sub_1B8E50C84()
{
  result = qword_1EBABBEA8;
  if (!qword_1EBABBEA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGEntity.AttributeType, &type metadata for Kgqsapipb_KGEntity.AttributeType, v0, v1);
    atomic_store(result, &qword_1EBABBEA8);
  }

  return result;
}

unint64_t sub_1B8E50D0C()
{
  result = qword_1EBABBEC0;
  if (!qword_1EBABBEC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_DebugInfo.Quality, &type metadata for Kgqsapipb_DebugInfo.Quality, v0, v1);
    atomic_store(result, &qword_1EBABBEC0);
  }

  return result;
}

unint64_t sub_1B8E50D64()
{
  result = qword_1EBABBEC8;
  if (!qword_1EBABBEC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_DebugInfo.Quality, &type metadata for Kgqsapipb_DebugInfo.Quality, v0, v1);
    atomic_store(result, &qword_1EBABBEC8);
  }

  return result;
}

unint64_t sub_1B8E50DBC()
{
  result = qword_1EBABBED0;
  if (!qword_1EBABBED0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_DebugInfo.Quality, &type metadata for Kgqsapipb_DebugInfo.Quality, v0, v1);
    atomic_store(result, &qword_1EBABBED0);
  }

  return result;
}

unint64_t sub_1B8E50E44()
{
  result = qword_1EBABBEE8;
  if (!qword_1EBABBEE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_RenderFeatures.AnswerType, &type metadata for Kgqsapipb_RenderFeatures.AnswerType, v0, v1);
    atomic_store(result, &qword_1EBABBEE8);
  }

  return result;
}

unint64_t sub_1B8E50E9C()
{
  result = qword_1EBABBEF0;
  if (!qword_1EBABBEF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_RenderFeatures.AnswerType, &type metadata for Kgqsapipb_RenderFeatures.AnswerType, v0, v1);
    atomic_store(result, &qword_1EBABBEF0);
  }

  return result;
}

unint64_t sub_1B8E50EF4()
{
  result = qword_1EBABBEF8;
  if (!qword_1EBABBEF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_RenderFeatures.AnswerType, &type metadata for Kgqsapipb_RenderFeatures.AnswerType, v0, v1);
    atomic_store(result, &qword_1EBABBEF8);
  }

  return result;
}

void sub_1B8E52080(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8E52230(319, &qword_1EBABC058, type metadata accessor for Kgqsapipb_Span, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E5216C(uint64_t a1)
{
  sub_1B8E52230(319, &qword_1EBABC060, type metadata accessor for Kgqsapipb_ArgInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E52230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8E52378(uint64_t a1)
{
  sub_1B8E52230(319, &qword_1EBABC088, type metadata accessor for Kgqsapipb_Claim, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B8E5252C(319);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        sub_1B8E52230(319, &qword_1EBABC098, type metadata accessor for Kgqsapipb_Entity, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B8E52230(319, &qword_1EBABC0A0, type metadata accessor for Kgqsapipb_Thing, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B8E52230(319, &qword_1EBABC0A8, type metadata accessor for Kgqsapipb_EntityFeatures, MEMORY[0x1E69E6720]);
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

void sub_1B8E5252C(uint64_t a1)
{
  if (!qword_1EBABC090)
  {
    type metadata accessor for Kgqsapipb_AttributeStore(255);
    v1 = sub_1B964C7C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBABC090);
    }
  }
}

void sub_1B8E525CC(uint64_t a1)
{
  sub_1B8E52230(319, &qword_1EBABC088, type metadata accessor for Kgqsapipb_Claim, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B8E52230(319, &qword_1EBABC0C0, type metadata accessor for Kgqsapipb_DebugInfo, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8E526FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_1B964C2B0();
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_0(result, v5, v6, v7, v8, v9, v10, v11, v12, *v13, *&v13[4], 0, v14, a4, v16);
    return 0;
  }

  return result;
}

void sub_1B8E52778(uint64_t a1)
{
  sub_1B8E52230(319, &qword_1EBABB938, type metadata accessor for Kgqsapipb_OntologyPath, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_149Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_231();

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1B8E52928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    v17 = result;
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0(result, v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[4], 0, v16, v17, v18);
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_139Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_140Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8E52A90(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E52B44(uint64_t a1)
{
  sub_1B8E52230(319, &qword_1EBABC118, type metadata accessor for Kgqsapipb_DebugInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8E52C20(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E52CFC(uint64_t a1)
{
  sub_1B8E52230(319, &qword_1EBABC130, type metadata accessor for Kgqsapipb_GeoEntity, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8E52DF0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E52E9C(uint64_t a1)
{
  sub_1B8E52230(319, &qword_1ED9CCF40, type metadata accessor for Kgqsapipb_QueryFeatures, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B8E52230(319, &qword_1ED9CC3D0, type metadata accessor for Kgqsapipb_DisplayableMetadata, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B8E52230(319, &qword_1ED9CCFA0, type metadata accessor for Kgqsapipb_IntentArgInfo, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B8E52230(319, &qword_1ED9CCC80, type metadata accessor for Kgqsapipb_RenderFeatures, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B8E52230(319, &qword_1ED9CC3E8, type metadata accessor for Electionspb_ElectionsResponse, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B8E52230(319, &qword_1ED9CD910, type metadata accessor for Nlgpb_NlgDialog, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B8E52230(319, &qword_1ED9CC9B0, type metadata accessor for Kgqsapipb_KGEventLogMessage, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B8E53240(uint64_t a1)
{
  sub_1B8E52230(319, &qword_1ED9CCC98, type metadata accessor for Kgqsapipb_IntentFeatures, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B8E5335C()
{
  result = qword_1EBABC1C0;
  if (!qword_1EBABC1C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_DebugInfo.Quality, &type metadata for Kgqsapipb_DebugInfo.Quality, v0, v1);
    atomic_store(result, &qword_1EBABC1C0);
  }

  return result;
}

unint64_t sub_1B8E533B0()
{
  result = qword_1EBABC1C8;
  if (!qword_1EBABC1C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGEntity.AttributeType, &type metadata for Kgqsapipb_KGEntity.AttributeType, v0, v1);
    atomic_store(result, &qword_1EBABC1C8);
  }

  return result;
}

unint64_t sub_1B8E53404()
{
  result = qword_1EBABC1D0;
  if (!qword_1EBABC1D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGDBResponse.ResultType, &type metadata for Kgqsapipb_KGDBResponse.ResultType, v0, v1);
    atomic_store(result, &qword_1EBABC1D0);
  }

  return result;
}

unint64_t sub_1B8E53458()
{
  result = qword_1EBABC1D8;
  if (!qword_1EBABC1D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGDBResponse.ResultSource, &type metadata for Kgqsapipb_KGDBResponse.ResultSource, v0, v1);
    atomic_store(result, &qword_1EBABC1D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Kgqsapipb_DebugInfo(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_52_1()
{
  type metadata accessor for Kgqsapipb_DebugInfo._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55_1()
{
  type metadata accessor for Kgqsapipb_KGDBResponse._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_57_2()
{
  *(v1 + v4) = v0;
  __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_98_3()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_115_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_137_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_141_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_144_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_145_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_148_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_167_2(uint64_t a1)
{
  type metadata accessor for Kgqsapipb_KGDBResponse(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_177_2()
{

  return sub_1B8E46784();
}

uint64_t OUTLINED_FUNCTION_180_2(uint64_t a1)
{

  return sub_1B8D9207C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_190_2()
{

  return sub_1B8E46784();
}

uint64_t OUTLINED_FUNCTION_206_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_207_1()
{
}

uint64_t OUTLINED_FUNCTION_209_1()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_216_1(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_217_0()
{

  return sub_1B8E46834();
}

uint64_t OUTLINED_FUNCTION_234_1()
{

  return sub_1B8E46834();
}

uint64_t OUTLINED_FUNCTION_235_1()
{

  return sub_1B8D92024();
}

uint64_t Kgqsapipb_PrimaryName.name.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_PrimaryName.locale.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Kgqsapipb_PrimaryName.description_p.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Kgqsapipb_PrimaryName.shortAbstract.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Kgqsapipb_PrimaryName.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_PrimaryName(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_PrimaryName.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  type metadata accessor for Kgqsapipb_PrimaryName(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.valueLocales.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.qualifiers.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.unknownFields.getter()
{
  type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(v2) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  *(v1 + 48) = sub_1B964C7B0();
  type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_ClaimValues.localeBasedClaimValues.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_ClaimValues.unknownFields.getter()
{
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Kgqsapipb_ClaimValues.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_ClaimValues(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Kgqsapipb_ClaimValues.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_ClaimValues(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_ClaimValues.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_RenderLocalization.primaryname.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Kgqsapipb_RenderLocalization.propToClaimValuesMap.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B8E545B4(void (*a1)(void))
{
  a1(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t sub_1B8E54660()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Kgqsapipb_RenderLocalization.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_RenderLocalization(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_RenderLocalization.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  v1[3] = sub_1B964C7B0();
  v1[4] = 0;
  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E54788()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC230);
  __swift_project_value_buffer(v0, qword_1EBABC230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "short_abstract";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_PrimaryName.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_PrimaryName.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
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
          type metadata accessor for Kgqsapipb_PrimaryName(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_PrimaryName.== infix(_:_:)(uint64_t a1)
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

  type metadata accessor for Kgqsapipb_PrimaryName(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_19();
  v11 = sub_1B8CD1DD8(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8E54CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1DD8(&qword_1EBABC370, type metadata accessor for Kgqsapipb_PrimaryName, protocol conformance descriptor for Kgqsapipb_PrimaryName);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E54D44(uint64_t a1)
{
  v2 = sub_1B8CD1DD8(&qword_1EBABC2B8, type metadata accessor for Kgqsapipb_PrimaryName, protocol conformance descriptor for Kgqsapipb_PrimaryName);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E54DB4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1DD8(&qword_1EBABC2B8, type metadata accessor for Kgqsapipb_PrimaryName, protocol conformance descriptor for Kgqsapipb_PrimaryName);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E54E50()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC248);
  __swift_project_value_buffer(v0, qword_1EBABC248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "locale";
  *(v6 + 8) = 6;
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
  *v12 = "value_type_code";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "value_locales";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "qualifiers";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E551B4(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E551B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  sub_1B8CD1DD8(&qword_1EBABC298, type metadata accessor for Kgqsapipb_ClaimValues, protocol conformance descriptor for Kgqsapipb_ClaimValues);
  sub_1B8CD1DD8(&qword_1EBABC2A0, type metadata accessor for Kgqsapipb_ClaimValues, protocol conformance descriptor for Kgqsapipb_ClaimValues);
  return sub_1B964C3A0();
}

uint64_t Kgqsapipb_LocaleBasedClaimValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6C0(), !v0))
      {
        if (!*(*(v1 + 40) + 16) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6E0(), !v0))
        {
          if (!*(*(v1 + 48) + 16) || (sub_1B964C280(), type metadata accessor for Kgqsapipb_ClaimValues(0), OUTLINED_FUNCTION_11_11(), sub_1B8CD1DD8(v10, v2, protocol conformance descriptor for Kgqsapipb_ClaimValues), OUTLINED_FUNCTION_13_6(&qword_1EBABC2A0), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v0))
          {
            type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_LocaleBasedClaimValue.== infix(_:_:)(uint64_t a1)
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

  if (*(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 40), *(v1 + 40)) & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB0EA4();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_19();
  v10 = sub_1B8CD1DD8(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8E555A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1DD8(&qword_1EBABC368, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue, protocol conformance descriptor for Kgqsapipb_LocaleBasedClaimValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E55620(uint64_t a1)
{
  v2 = sub_1B8CD1DD8(&qword_1EBABC2B0, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue, protocol conformance descriptor for Kgqsapipb_LocaleBasedClaimValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E55690(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1DD8(&qword_1EBABC2B0, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue, protocol conformance descriptor for Kgqsapipb_LocaleBasedClaimValue);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E5571C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC260);
  __swift_project_value_buffer(v0, qword_1EBABC260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "locale_based_claim_values";
  *(v4 + 8) = 25;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Kgqsapipb_ClaimValues.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8E558F4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B8E558F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0);
  sub_1B8CD1DD8(&qword_1EBABC2B0, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue, protocol conformance descriptor for Kgqsapipb_LocaleBasedClaimValue);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_ClaimValues.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(0), sub_1B8CD1DD8(&qword_1EBABC2B0, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue, protocol conformance descriptor for Kgqsapipb_LocaleBasedClaimValue), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    type metadata accessor for Kgqsapipb_ClaimValues(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_ClaimValues.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1B8D78208(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_ClaimValues(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_19();
  v5 = sub_1B8CD1DD8(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B8E55B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1DD8(&qword_1EBABC360, type metadata accessor for Kgqsapipb_ClaimValues, protocol conformance descriptor for Kgqsapipb_ClaimValues);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E55C04(uint64_t a1)
{
  v2 = sub_1B8CD1DD8(&qword_1EBABC298, type metadata accessor for Kgqsapipb_ClaimValues, protocol conformance descriptor for Kgqsapipb_ClaimValues);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E55C74(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1DD8(&qword_1EBABC298, type metadata accessor for Kgqsapipb_ClaimValues, protocol conformance descriptor for Kgqsapipb_ClaimValues);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E55D10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC278);
  __swift_project_value_buffer(v0, qword_1EBABC278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primaryname";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "prop_to_claim_values_map";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "updated_timestamp";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_RenderLocalization.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8E56024(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E560C4(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E56024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_PrimaryName(0);
  sub_1B8CD1DD8(&qword_1EBABC2B8, type metadata accessor for Kgqsapipb_PrimaryName, protocol conformance descriptor for Kgqsapipb_PrimaryName);
  return sub_1B964C570();
}

uint64_t sub_1B8E560C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_ClaimValues(0);
  sub_1B8CD1DD8(&qword_1EBABC298, type metadata accessor for Kgqsapipb_ClaimValues, protocol conformance descriptor for Kgqsapipb_ClaimValues);
  sub_1B8CD1DD8(&qword_1EBABC2A0, type metadata accessor for Kgqsapipb_ClaimValues, protocol conformance descriptor for Kgqsapipb_ClaimValues);
  return sub_1B964C3A0();
}

uint64_t Kgqsapipb_RenderLocalization.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), !v0))
  {
    if (!*(v1[2] + 16) || (type metadata accessor for Kgqsapipb_PrimaryName(0), sub_1B8CD1DD8(&qword_1EBABC2B8, type metadata accessor for Kgqsapipb_PrimaryName, protocol conformance descriptor for Kgqsapipb_PrimaryName), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
    {
      if (!*(v1[3] + 16) || (sub_1B964C280(), type metadata accessor for Kgqsapipb_ClaimValues(0), OUTLINED_FUNCTION_11_11(), sub_1B8CD1DD8(v7, v2, protocol conformance descriptor for Kgqsapipb_ClaimValues), OUTLINED_FUNCTION_13_6(&qword_1EBABC2A0), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v0))
      {
        if (!v1[4] || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6D0(), !v0))
        {
          type metadata accessor for Kgqsapipb_RenderLocalization(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_RenderLocalization.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7AC54(*(v2 + 16), *(v1 + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB0EA4();
  if ((v7 & 1) == 0 || *(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_19();
  v10 = sub_1B8CD1DD8(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8E56464(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD1DD8(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E56548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1DD8(&qword_1EBABC358, type metadata accessor for Kgqsapipb_RenderLocalization, protocol conformance descriptor for Kgqsapipb_RenderLocalization);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E565C8(uint64_t a1)
{
  v2 = sub_1B8CD1DD8(&qword_1EBABC300, type metadata accessor for Kgqsapipb_RenderLocalization, protocol conformance descriptor for Kgqsapipb_RenderLocalization);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E56638(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1DD8(&qword_1EBABC300, type metadata accessor for Kgqsapipb_RenderLocalization, protocol conformance descriptor for Kgqsapipb_RenderLocalization);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E56B60(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E56C08(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B8E56CC4(319);
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

void sub_1B8E56CC4(uint64_t a1)
{
  if (!qword_1EBABC330)
  {
    type metadata accessor for Kgqsapipb_ClaimValues(255);
    v1 = sub_1B964C7C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBABC330);
    }
  }
}

void sub_1B8E56D54(uint64_t a1)
{
  sub_1B8E56EEC(319, &qword_1EBABC348, type metadata accessor for Kgqsapipb_LocaleBasedClaimValue);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E56E1C(uint64_t a1)
{
  sub_1B8E56EEC(319, &qword_1EBABC350, type metadata accessor for Kgqsapipb_PrimaryName);
  if (v1 <= 0x3F)
  {
    sub_1B8E56CC4(319);
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

void sub_1B8E56EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_13_6(unint64_t *a1)
{

  return sub_1B8CD1DD8(a1, v1, protocol conformance descriptor for Kgqsapipb_ClaimValues);
}

uint64_t Kgqsapipb_KGEventLogMessage.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  if (qword_1EBAB6310 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABC398;
}

uint64_t Kgqsapipb_KGEventLogMessage.provider.getter()
{
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_KGEventLogMessage.provider.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_30_9();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E5B2FC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.provider.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_5(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E571B0()
{
  OUTLINED_FUNCTION_58_0();
  if (v3)
  {

    OUTLINED_FUNCTION_461();
    Kgqsapipb_KGEventLogMessage.provider.setter();
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_15_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E5B2FC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 16, v0 + 24);
    *(v7 + 16) = v2;
    *(v7 + 24) = v1;
  }

  free(v0);
}

uint64_t Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_11();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4(v4 + 32, v5);
  v7 = *(v4 + 40);
  *a1 = *(v4 + 32);
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1B8E572A4@<X0>(uint64_t a1@<X8>)
{
  result = Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_30_9();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E5B2FC(v9);
    *(v2 + v1) = v8;
  }

  OUTLINED_FUNCTION_9_3(v8 + 32, v7);
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.typeOfSpeakableAnswer.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_8_11();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  v3[9] = *(v5 + 32);
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E5740C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v5 = *(v4 + 72);
  v6 = *(v2 + 84);
  v7 = *(v2 + 88);
  v8 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v2 + 84);
    v12 = *(v2 + 88);
    OUTLINED_FUNCTION_15_8();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E5B2FC(v13);
    *(v12 + v11) = v10;
  }

  v14 = 48;
  if (a2)
  {
    v14 = 24;
  }

  OUTLINED_FUNCTION_18(v10 + 32, v2 + v14);
  *(v10 + 32) = v5;
  *(v10 + 40) = v8;

  free(v2);
}

uint64_t Kgqsapipb_KGEventLogMessage.speakableAnswer.getter()
{
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 48, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_KGEventLogMessage.speakableAnswer.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_30_9();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E5B2FC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.speakableAnswer.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_5(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E5760C()
{
  OUTLINED_FUNCTION_58_0();
  if (v3)
  {

    OUTLINED_FUNCTION_461();
    Kgqsapipb_KGEventLogMessage.speakableAnswer.setter();
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_15_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E5B2FC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 48, v0 + 24);
    *(v7 + 48) = v2;
    *(v7 + 56) = v1;
  }

  free(v0);
}

uint64_t Kgqsapipb_KGEventLogMessage.intentArgInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5 - 8];
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo, v11);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v6, &qword_1EBABC4D0, &unk_1B965CDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_11();
    return sub_1B8E5BE30();
  }

  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.intentArgInfo.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_30_9() & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E5B2FC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_7_11();
  sub_1B8E5BE30();
  v5 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Kgqsapipb_KGEventLogMessage.IntentArgInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.intentArgInfo.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_521(*(v1 + v10) + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo, v3);
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBABC4D0, &unk_1B965CDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_11();
    sub_1B8E5BE30();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.parentIds.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8E57BCC(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_10_4(*(v1 + v3) + *a1, v4);
}

void sub_1B8E57C48()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_313();
  v5 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(v4) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E5B2FC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *v3;
  OUTLINED_FUNCTION_9_3(v8 + v11, v7);
  *(v8 + v11) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.childIds.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.fbr.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.valueTypeMapListProto.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.entitiesReceivedFromKg.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_5(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8E57FC0(void *a1)
{
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_521(*(v1 + v3) + *a1, v5);

  return OUTLINED_FUNCTION_288();
}

void sub_1B8E58060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_16();
  v28 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v31 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B8E5B2FC(v31);
    *(v27 + v28) = v30;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_18(v32, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.entitiesSentToKg.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_5(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.lastIntentReceivedFromKg.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_5(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.lastIntentSentToKg.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_5(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.attributesRecognized.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.partialResults.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.numberOfResults.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_8_11();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_10_4(v3 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults, v5);
  return *(v3 + v4);
}

uint64_t Kgqsapipb_KGEventLogMessage.numberOfResults.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E5B2FC(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  result = OUTLINED_FUNCTION_9_3(v7 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults, v6);
  *(v7 + v9) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.numberOfResults.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[9] = v1;
  OUTLINED_FUNCTION_8_11();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_68_0();
  *(v3 + 20) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E585A4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v5 = *(v4 + 80);
  v6 = *(v2 + 84);
  v7 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E5B2FC(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_18(v9 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults, v2 + v12);
  *(v9 + v13) = v5;

  free(v2);
}

uint64_t sub_1B8E58654(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_11();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4(v4 + v5, v6);
  return *(v4 + v5);
}

void sub_1B8E586A0()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_30_9();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E5B2FC(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *v3;
  OUTLINED_FUNCTION_9_3(v8 + v11, v7);
  *(v8 + v11) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_KGEventLogMessage.grpcapi.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E58770(uint64_t *a1, char a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 80);
    v12 = *(v5 + 72);
    OUTLINED_FUNCTION_15_8();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E5B2FC(v13);
    *(v12 + v11) = v10;
  }

  v14 = 48;
  if (a2)
  {
    v14 = 24;
  }

  v15 = *a3;
  OUTLINED_FUNCTION_18(v10 + v15, v5 + v14);
  *(v10 + v15) = v8;

  free(v5);
}

uint64_t Kgqsapipb_KGEventLogMessage.successful.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.noValueFound.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.someValueFound.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.pireneResult.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.newsResults.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.kgDebugList.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_5_8(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E58BB0()
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 48);
  if (v5)
  {
    v6 = v2;

    v6(v7);
  }

  else
  {
    v8 = v1;
    v9 = *(v0 + 64);
    v10 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_15_8();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8E5B2FC(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    v15 = *v8;
    OUTLINED_FUNCTION_18(v12 + v15, v0 + 24);
    *(v12 + v15) = v4;
  }

  free(v0);
}

uint64_t Kgqsapipb_KGEventLogMessage.isDisputedResponse.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.nlgDialogInfo.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-v4 - 8];
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_521(*(v1 + v6) + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Nlgpb_NlgDialog(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_28_5();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v5, &qword_1EBABBD40, &qword_1B965A640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_12();
    return sub_1B8E5BE30();
  }

  return result;
}

uint64_t sub_1B8E58DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  sub_1B8E5BE88();
  return a7(v7);
}

uint64_t Kgqsapipb_KGEventLogMessage.nlgDialogInfo.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_30_9() & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E5B2FC(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_11_12();
  sub_1B8E5BE30();
  v5 = type metadata accessor for Nlgpb_NlgDialog(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Kgqsapipb_KGEventLogMessage.nlgDialogInfo.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Nlgpb_NlgDialog(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_521(*(v1 + v10) + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo, v3);
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    v9[6] = 0;
    v9[7] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBABBD40, &qword_1B965A640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_12();
    sub_1B8E5BE30();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E59110(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8E5BE88();
    a3(v6);
    sub_1B8E5BEE0();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t sub_1B8E591EC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-v13 - 8];
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_521(*(v5 + v15) + *a3, v21);
  sub_1B8D92024();
  v16 = (a4)(0);
  OUTLINED_FUNCTION_178(v14, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_1B8D9207C(v14, v6, v4);
  return v18;
}

uint64_t sub_1B8E592F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_79();
  v10 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v11 = OUTLINED_FUNCTION_40_0();
    *(v3 + v10) = sub_1B8E5B2FC(v11);
  }

  v12 = a3(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Kgqsapipb_KGEventLogMessage.catID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_5(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_KGEventLogMessage.isWebExtractedFact.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

double Kgqsapipb_KGEventLogMessage.eventVersion.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_8_11();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  OUTLINED_FUNCTION_10_4(v3 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion, v5);
  return *(v3 + v4);
}

uint64_t Kgqsapipb_KGEventLogMessage.eventVersion.setter(double a1)
{
  v3 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_15_8();
    v6 = sub_1B8E5B2FC(v6);
    *(v1 + v3) = v6;
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  result = OUTLINED_FUNCTION_9_3(v6 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion, v5);
  *(v6 + v7) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.eventVersion.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_8_11();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  OUTLINED_FUNCTION_68_0();
  v3[9] = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E59684(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v5 = *(v4 + 72);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v2 + 88);
    v11 = *(v2 + 80);
    OUTLINED_FUNCTION_15_8();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E5B2FC(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (a2)
  {
    v13 = 24;
  }

  v14 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  OUTLINED_FUNCTION_18(v9 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion, v2 + v13);
  *(v9 + v14) = v5;

  free(v2);
}

uint64_t Kgqsapipb_KGEventLogMessage.eventType.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_5(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E59814()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = v4;

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
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      OUTLINED_FUNCTION_15_8();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E5B2FC(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  free(v0);
}

uint64_t Kgqsapipb_KGEventLogMessage.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Kgqsapipb_KGEventLogMessage.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

unint64_t Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8E599F4@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E59A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E63208();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Kgqsapipb_KGEventLogMessage.ArgInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.IntentArgInfo.args.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B8E59BC4()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8E59C4C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Kgqsapipb_KGEventLogMessage.IntentArgInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0);
  *(v1 + 16) = sub_1B964C7B0();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.title.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.description_p.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.source.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.url.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.punchoutUri.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.init()@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_28_5();
  *(a2 + 64) = 0;
  *(a2 + 72) = v3;
  type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.messages.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.pattern.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.dbQueryPattern.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.queryEntities.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E5A72C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.init()@<X0>(void *a2@<X8>)
{
  OUTLINED_FUNCTION_28_5();
  v3 = MEMORY[0x1E69E7CC0];
  a2[8] = 0;
  a2[9] = v4;
  a2[10] = v3;
  a2[11] = 0;
  a2[12] = v4;
  a2[13] = v3;
  a2[14] = v3;
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18(&off_1EBABC378, v3);
  off_1EBABC378 = a1;
}

uint64_t (*static Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8E5A894@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E5A8D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC380);
  __swift_project_value_buffer(v0, qword_1EBABC380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1B965CDB0;
  v4 = v62 + v3 + v1[14];
  *(v62 + v3) = 1;
  *v4 = "provider";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v62 + v3 + v2 + v1[14];
  *(v62 + v3 + v2) = 2;
  *v8 = "typeOfSpeakableAnswer";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v62 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "speakableAnswer";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v62 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "intentArgInfo";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v62 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "parentIds";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v62 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "childIds";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v62 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "fbr";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v7();
  v19 = (v62 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "valueTypeMapListProto";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v62 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "entitiesReceivedFromKG";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v62 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "entitiesSentToKG";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v62 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "lastIntentReceivedFromKG";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v62 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "lastIntentSentToKG";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v62 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "attributesRecognized";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v7();
  v31 = (v62 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "partialResults";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v62 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "numberOfResults";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v62 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "grpcapi";
  *(v36 + 1) = 7;
  v36[16] = 2;
  v7();
  v37 = (v62 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "successful";
  *(v38 + 1) = 10;
  v38[16] = 2;
  v7();
  v39 = (v62 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "noValueFound";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v62 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "someValueFound";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v7();
  v43 = (v62 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "pireneResult";
  *(v44 + 1) = 12;
  v44[16] = 2;
  v7();
  v45 = (v62 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "newsResults";
  *(v46 + 1) = 11;
  v46[16] = 2;
  v7();
  v47 = (v62 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "kgDebugList";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v62 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "isDisputedResponse";
  *(v50 + 1) = 18;
  v50[16] = 2;
  v7();
  v51 = (v62 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "nlgDialogInfo";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v62 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "catID";
  *(v54 + 1) = 5;
  v54[16] = 2;
  v7();
  v55 = (v62 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "isWebExtractedFact";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v7();
  v57 = (v62 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 49;
  *v58 = "eventVersion";
  *(v58 + 1) = 12;
  v58[16] = 2;
  v7();
  v59 = (v62 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 50;
  *v60 = "eventType";
  *(v60 + 1) = 9;
  v60[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E5B0F0()
{
  OUTLINED_FUNCTION_15_8();
  result = sub_1B8E5B140();
  qword_1EBABC398 = result;
  return result;
}

uint64_t sub_1B8E5B140()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo;
  v2 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto) = v3;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse) = 0;
  v8 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo;
  v9 = type metadata accessor for Nlgpb_NlgDialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion) = 0;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8E5B2FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v114 = v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91[1] = v91 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo;
  v91[0] = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo;
  v8 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds) = MEMORY[0x1E69E7CC0];
  v92 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds) = v10;
  v93 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr) = v10;
  v94 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto) = v10;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  v95 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  v96 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  v97 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v98 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized) = v10;
  v99 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults) = 0;
  v100 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults) = 0;
  v101 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi) = 0;
  v102 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful) = 0;
  v103 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound) = 0;
  v104 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound) = 0;
  v105 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult) = 0;
  v106 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults) = v10;
  v15 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList) = v10;
  v107 = v15;
  v108 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse) = 0;
  v16 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo;
  v109 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo;
  v17 = type metadata accessor for Nlgpb_NlgDialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  v110 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v111 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact) = 0;
  v112 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion) = 0;
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  v113 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  swift_beginAccess();
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v20;
  *(v1 + 24) = v21;
  swift_beginAccess();
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v22;
  *(v1 + 40) = v23;
  swift_beginAccess();
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v24;
  *(v1 + 56) = v25;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
  swift_beginAccess();
  v27 = *(a1 + v26);
  swift_beginAccess();
  *(v1 + v9) = v27;

  v28 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = v92;
  swift_beginAccess();
  *(v1 + v30) = v29;

  v31 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v93;
  swift_beginAccess();
  *(v1 + v33) = v32;

  v34 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = v94;
  swift_beginAccess();
  *(v1 + v36) = v35;

  v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  swift_beginAccess();
  *v11 = v38;
  v11[1] = v39;

  v40 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  v43 = v95;
  swift_beginAccess();
  *v43 = v41;
  v43[1] = v42;

  v44 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v96;
  swift_beginAccess();
  *v47 = v46;
  v47[1] = v45;

  v48 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  v51 = v97;
  swift_beginAccess();
  *v51 = v50;
  v51[1] = v49;

  v52 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
  swift_beginAccess();
  v53 = *(a1 + v52);
  v54 = v98;
  swift_beginAccess();
  *(v1 + v54) = v53;

  v55 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
  swift_beginAccess();
  LOBYTE(v55) = *(a1 + v55);
  v56 = v99;
  swift_beginAccess();
  *(v1 + v56) = v55;
  v57 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  swift_beginAccess();
  LODWORD(v57) = *(a1 + v57);
  v58 = v100;
  swift_beginAccess();
  *(v1 + v58) = v57;
  v59 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
  swift_beginAccess();
  LOBYTE(v59) = *(a1 + v59);
  v60 = v101;
  swift_beginAccess();
  *(v1 + v60) = v59;
  v61 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
  swift_beginAccess();
  LOBYTE(v61) = *(a1 + v61);
  v62 = v102;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v103;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
  swift_beginAccess();
  LOBYTE(v65) = *(a1 + v65);
  v66 = v104;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
  swift_beginAccess();
  LOBYTE(v67) = *(a1 + v67);
  v68 = v105;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
  swift_beginAccess();
  v70 = *(a1 + v69);
  v71 = v106;
  swift_beginAccess();
  *(v1 + v71) = v70;

  v72 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
  swift_beginAccess();
  v73 = *(a1 + v72);
  v74 = v107;
  swift_beginAccess();
  *(v1 + v74) = v73;

  v75 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
  swift_beginAccess();
  LOBYTE(v75) = *(a1 + v75);
  v76 = v108;
  swift_beginAccess();
  *(v1 + v76) = v75;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v77 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];
  v80 = v110;
  swift_beginAccess();
  *v80 = v79;
  v80[1] = v78;

  v81 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
  swift_beginAccess();
  LOBYTE(v81) = *(a1 + v81);
  v82 = v111;
  swift_beginAccess();
  *(v1 + v82) = v81;
  v83 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  swift_beginAccess();
  v84 = *(a1 + v83);
  v85 = v112;
  swift_beginAccess();
  *(v1 + v85) = v84;
  v86 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
  swift_beginAccess();
  v88 = *v86;
  v87 = v86[1];

  v89 = v113;
  swift_beginAccess();
  *v89 = v88;
  v89[1] = v87;

  return v1;
}

uint64_t sub_1B8E5BE30()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E5BE88()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E5BEE0()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B8E5BFF4()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo, &qword_1EBABC4D0, &unk_1B965CDC0);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo, &qword_1EBABBD40, &qword_1B965A640);

  return v0;
}

uint64_t sub_1B8E5C144()
{
  v0 = sub_1B8E5BFF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Kgqsapipb_KGEventLogMessage.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Kgqsapipb_KGEventLogMessage(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Kgqsapipb_KGEventLogMessage._StorageClass(0);
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_40_0();
    *(v0 + v1) = sub_1B8E5B2FC(v2);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B8E5C234(v3, v4, v5, v6);
}

uint64_t sub_1B8E5C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C(a2, a1);
        continue;
      case 2:
        sub_1B8E5C4F4(a2, a1, a3, a4);
        continue;
      case 3:
        sub_1B8DC4778(a2, a1);
        continue;
      case 4:
        sub_1B8E5C588(a2, a1, a3, a4);
        continue;
      case 5:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
        goto LABEL_25;
      case 6:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
        goto LABEL_25;
      case 7:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
        goto LABEL_25;
      case 8:
        sub_1B8E5C664(a2, a1, a3, a4);
        continue;
      case 9:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg;
        goto LABEL_30;
      case 10:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg;
        goto LABEL_30;
      case 11:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg;
        goto LABEL_30;
      case 12:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg;
        goto LABEL_30;
      case 13:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
LABEL_25:
        v15 = MEMORY[0x1E69AACB8];
        goto LABEL_26;
      case 14:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
        goto LABEL_33;
      case 15:
        sub_1B8E5C740(a2, a1, a3, a4);
        continue;
      case 16:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
        goto LABEL_33;
      case 17:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
        goto LABEL_33;
      case 18:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
        goto LABEL_33;
      case 19:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
        goto LABEL_33;
      case 20:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
        goto LABEL_33;
      case 21:
        sub_1B8E5C7CC(a2, a1, a3, a4);
        continue;
      case 22:
        sub_1B8E5C8A8(a2, a1, a3, a4);
        continue;
      case 23:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
        goto LABEL_33;
      case 24:
        sub_1B8E5C984(a2, a1, a3, a4);
        continue;
      case 25:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID;
        goto LABEL_30;
      case 26:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
LABEL_33:
        sub_1B8E5CA60(a2, a1, a3, a4, v13, v11);
        break;
      case 49:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
        v15 = MEMORY[0x1E69AACD0];
LABEL_26:
        sub_1B8E5CABC(a2, a1, a3, a4, v14, v15);
        break;
      case 50:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType;
LABEL_30:
        sub_1B8E5CB50(a2, a1, a3, a4, v12, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E5C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8E63208();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8E5C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  sub_1B8CD1E20(&qword_1EBABC580, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E5C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(0);
  sub_1B8CD1E20(&qword_1EBABC598, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E5C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8E5C7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0);
  sub_1B8CD1E20(&qword_1EBABC5C0, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.KGNewsResult);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E5C8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0);
  sub_1B8CD1E20(&qword_1EBABC5D8, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E5C984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Nlgpb_NlgDialog(0);
  sub_1B8CD1E20(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog, protocol conformance descriptor for Nlgpb_NlgDialog);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E5CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_12();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E5CABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B8E5CB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_12();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t Kgqsapipb_KGEventLogMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8E5CC10(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E5CC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = v87 - v9;
  v10 = type metadata accessor for Nlgpb_NlgDialog(0);
  MEMORY[0x1EEE9AC00](v10);
  v87[1] = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v87 - v13;
  v15 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  MEMORY[0x1EEE9AC00](v15);
  v89 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v93 = a1;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v90 = a4;
  }

  else
  {
    v90 = a4;
  }

  v20 = v93;
  swift_beginAccess();
  if (*(v20 + 32))
  {
    v21 = *(v20 + 40);
    v91 = *(v20 + 32);
    v92 = v21;
    sub_1B8E63208();
    result = sub_1B964C680();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  v23 = *(v20 + 48);
  v24 = *(v20 + 56);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v87[0] = v10;
  }

  else
  {
    v87[0] = v10;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBABC4D0, &unk_1B965CDC0);
  }

  else
  {
    sub_1B8E5BE30();
    sub_1B8CD1E20(&qword_1EBABC580, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);
    sub_1B964C740();
    if (v5)
    {
      return sub_1B8E5BEE0();
    }

    sub_1B8E5BEE0();
  }

  v26 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds;
  v27 = v93;
  swift_beginAccess();
  if (*(*(v27 + v26) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v28 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds;
  v29 = v93;
  swift_beginAccess();
  if (*(*(v29 + v28) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v30 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr;
  v31 = v93;
  swift_beginAccess();
  if (*(*(v31 + v30) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v32 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  v33 = v93;
  swift_beginAccess();
  if (*(*(v33 + v32) + 16))
  {
    type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(0);
    sub_1B8CD1E20(&qword_1EBABC598, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);

    sub_1B964C730();
    if (v5)
    {
    }

    v34 = v93;
  }

  else
  {
    v34 = v33;
  }

  v35 = (v34 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg);
  swift_beginAccess();
  v36 = *v35;
  v37 = v35[1];
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v39 = (v93 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v43 = (v93 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg);
  swift_beginAccess();
  v44 = *v43;
  v45 = v43[1];
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v47 = (v93 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg);
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {
    goto LABEL_53;
  }

  sub_1B964C700();
  if (v5)
  {
  }

LABEL_53:
  v51 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized;
  v52 = v93;
  swift_beginAccess();
  if (*(*(v52 + v51) + 16))
  {

    sub_1B964C6E0();
    if (v5)
    {
    }
  }

  v53 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults;
  v54 = v93;
  swift_beginAccess();
  if (*(v54 + v53) != 1 || (result = sub_1B964C670(), !v5))
  {
    v55 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
    v56 = v93;
    swift_beginAccess();
    if (!*(v56 + v55) || (result = sub_1B964C6C0(), !v5))
    {
      v57 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi;
      v58 = v93;
      swift_beginAccess();
      if (*(v58 + v57) != 1 || (result = sub_1B964C670(), !v5))
      {
        v59 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful;
        v60 = v93;
        swift_beginAccess();
        if (*(v60 + v59) != 1 || (result = sub_1B964C670(), !v5))
        {
          v61 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound;
          v62 = v93;
          swift_beginAccess();
          if (*(v62 + v61) != 1 || (result = sub_1B964C670(), !v5))
          {
            v63 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound;
            v64 = v93;
            swift_beginAccess();
            if (*(v64 + v63) != 1 || (result = sub_1B964C670(), !v5))
            {
              v65 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult;
              v66 = v93;
              swift_beginAccess();
              if (*(v66 + v65) == 1)
              {
                result = sub_1B964C670();
                v67 = v5;
                if (v5)
                {
                  return result;
                }
              }

              else
              {
                v67 = v5;
              }

              v68 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
              v69 = v93;
              swift_beginAccess();
              if (*(*(v69 + v68) + 16))
              {
                type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0);
                sub_1B8CD1E20(&qword_1EBABC5C0, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.KGNewsResult);

                sub_1B964C730();
                if (v67)
                {
                }
              }

              v70 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
              v71 = v93;
              swift_beginAccess();
              if (*(*(v71 + v70) + 16))
              {
                type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0);
                sub_1B8CD1E20(&qword_1EBABC5D8, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo);

                sub_1B964C730();
                if (v67)
                {
                }
              }

              v72 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse;
              v73 = v93;
              swift_beginAccess();
              if (*(v73 + v72) != 1 || (result = sub_1B964C670(), !v67))
              {
                swift_beginAccess();
                v74 = v88;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v74, 1, v87[0]) == 1)
                {
                  sub_1B8D9207C(v88, &qword_1EBABBD40, &qword_1B965A640);
                }

                else
                {
                  sub_1B8E5BE30();
                  sub_1B8CD1E20(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog, protocol conformance descriptor for Nlgpb_NlgDialog);
                  sub_1B964C740();
                  result = sub_1B8E5BEE0();
                  if (v67)
                  {
                    return result;
                  }
                }

                v75 = (v93 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID);
                swift_beginAccess();
                v76 = *v75;
                v77 = v75[1];
                v78 = HIBYTE(v77) & 0xF;
                if ((v77 & 0x2000000000000000) == 0)
                {
                  v78 = v76 & 0xFFFFFFFFFFFFLL;
                }

                if (!v78 || (, sub_1B964C700(), result = , !v67))
                {
                  v79 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact;
                  v80 = v93;
                  swift_beginAccess();
                  if (*(v80 + v79) != 1 || (result = sub_1B964C670(), !v67))
                  {
                    v81 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
                    v82 = v93;
                    swift_beginAccess();
                    if (*(v82 + v81) == 0.0 || (result = sub_1B964C6F0(), !v67))
                    {
                      v83 = (v93 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType);
                      result = swift_beginAccess();
                      v84 = *v83;
                      v85 = v83[1];
                      v86 = HIBYTE(v85) & 0xF;
                      if ((v85 & 0x2000000000000000) == 0)
                      {
                        v86 = v84 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v86)
                      {

                        sub_1B964C700();
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

uint64_t static Kgqsapipb_KGEventLogMessage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_11();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B8E5DB18(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E5DB18(uint64_t a1, void *a2)
{
  v132 = type metadata accessor for Nlgpb_NlgDialog(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v129 = v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC200, &qword_1B965C700);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v127 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD40, &qword_1B965A640);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  v131 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v127 - v14;
  v15 = type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21();
  v135 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC6B8, &qword_1B965DC58);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_79();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC4D0, &unk_1B965CDC0);
  v21 = OUTLINED_FUNCTION_183(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v134 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v127 - v24;
  OUTLINED_FUNCTION_521(a1 + 16, v191);
  v27 = *(a1 + 16);
  v26 = *(a1 + 24);
  OUTLINED_FUNCTION_521((a2 + 2), v190);
  v28 = v27 == a2[2] && v26 == a2[3];
  if (!v28 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 32, v189);
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  OUTLINED_FUNCTION_521((a2 + 4), v188);
  if (!sub_1B8D92198(v29, v30, a2[4]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521(a1 + 48, v187);
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  OUTLINED_FUNCTION_521((a2 + 6), v186);
  v33 = v31 == a2[6] && v32 == a2[7];
  if (!v33 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v127 = v9;
  v128 = a2;
  v34 = a1;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo, &v185);
  v35 = v128;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__intentArgInfo, &v184);
  v36 = *(v18 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2, 1, v15);
  if (v28)
  {

    sub_1B8D9207C(v25, &qword_1EBABC4D0, &unk_1B965CDC0);
    OUTLINED_FUNCTION_178(v2 + v36, 1, v15);
    if (v28)
    {
      sub_1B8D9207C(v2, &qword_1EBABC4D0, &unk_1B965CDC0);
      goto LABEL_17;
    }

    goto LABEL_52;
  }

  v69 = v134;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2 + v36, 1, v15);
  if (v70)
  {

    sub_1B8D9207C(v25, &qword_1EBABC4D0, &unk_1B965CDC0);
    sub_1B8E5BEE0();
LABEL_52:
    sub_1B8D9207C(v2, &qword_1EBABC6B8, &qword_1B965DC58);
LABEL_63:

    return 0;
  }

  OUTLINED_FUNCTION_7_11();
  v71 = v135;
  sub_1B8E5BE30();
  v72 = *v69 == *v71 && v69[1] == v71[1];
  if (!v72 && (sub_1B964C9F0() & 1) == 0)
  {

    goto LABEL_62;
  }

  v73 = v69[2];
  v74 = v135[2];

  sub_1B8D7B15C(v73, v74);
  if ((v75 & 1) == 0)
  {
LABEL_62:
    sub_1B8E5BEE0();
    sub_1B8D9207C(v25, &qword_1EBABC4D0, &unk_1B965CDC0);
    sub_1B8E5BEE0();
    sub_1B8D9207C(v2, &qword_1EBABC4D0, &unk_1B965CDC0);
    goto LABEL_63;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  sub_1B8CD1E20(v76, v77, MEMORY[0x1E69AAC10]);
  v78 = sub_1B964C850();
  sub_1B8E5BEE0();
  sub_1B8D9207C(v25, &qword_1EBABC4D0, &unk_1B965CDC0);
  sub_1B8E5BEE0();
  sub_1B8D9207C(v2, &qword_1EBABC4D0, &unk_1B965CDC0);
  v35 = v128;
  if ((v78 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_17:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds, &v183);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__parentIds, &v182);
  if ((OUTLINED_FUNCTION_88_1() & 1) == 0)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds, &v181);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__childIds, &v180);
  if ((OUTLINED_FUNCTION_88_1() & 1) == 0)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr, &v179);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__fbr, &v178);
  if ((OUTLINED_FUNCTION_88_1() & 1) == 0)
  {
    goto LABEL_63;
  }

  v37 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto, &v177);
  v38 = *(a1 + v37);
  v39 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto;
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__valueTypeMapListProto, &v176);
  v40 = *(v35 + v39);

  sub_1B8D88DB0(v38, v40);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    goto LABEL_63;
  }

  v44 = a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesReceivedFromKg;
  v45 = OUTLINED_FUNCTION_26_6(v43, &v175);
  v46 = *(v44 + 8);
  OUTLINED_FUNCTION_26_6(v45, &v174);
  OUTLINED_FUNCTION_63();
  if (!v28 || v46 != v48)
  {
    v47 = OUTLINED_FUNCTION_120_0();
    if ((v47 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v50 = a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__entitiesSentToKg;
  v51 = OUTLINED_FUNCTION_26_6(v47, &v173);
  v52 = *(v50 + 8);
  OUTLINED_FUNCTION_26_6(v51, &v172);
  OUTLINED_FUNCTION_63();
  if (!v28 || v52 != v54)
  {
    v53 = OUTLINED_FUNCTION_120_0();
    if ((v53 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v56 = a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentReceivedFromKg;
  v57 = OUTLINED_FUNCTION_26_6(v53, &v171);
  v58 = *(v56 + 8);
  OUTLINED_FUNCTION_26_6(v57, &v170);
  OUTLINED_FUNCTION_63();
  if (!v28 || v58 != v60)
  {
    v59 = OUTLINED_FUNCTION_120_0();
    if ((v59 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v62 = a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__lastIntentSentToKg;
  v63 = OUTLINED_FUNCTION_26_6(v59, &v169);
  v64 = *(v62 + 8);
  OUTLINED_FUNCTION_26_6(v63, &v168);
  OUTLINED_FUNCTION_63();
  v66 = v28 && v64 == v65;
  if (!v66 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized, &v167);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__attributesRecognized, &v166);
  if ((OUTLINED_FUNCTION_88_1() & 1) == 0)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults, &v165);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__partialResults, &v164);
  OUTLINED_FUNCTION_84_2();
  if (!v28)
  {
    goto LABEL_63;
  }

  v67 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults, &v163);
  LODWORD(v67) = *(a1 + v67);
  v68 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults;
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__numberOfResults, &v162);
  if (v67 != *(v35 + v68))
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi, &v161);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__grpcapi, &v160);
  OUTLINED_FUNCTION_84_2();
  if (!v28)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful, &v159);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__successful, &v158);
  OUTLINED_FUNCTION_84_2();
  if (!v28)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound, &v157);
  OUTLINED_FUNCTION_521(v35 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__noValueFound, &v156);
  OUTLINED_FUNCTION_84_2();
  if (!v28)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__someValueFound, &v155);
  v80 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v80, &v154);
  OUTLINED_FUNCTION_78_0();
  if (!v28)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__pireneResult, &v153);
  v81 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v81, &v152);
  OUTLINED_FUNCTION_78_0();
  if (!v28)
  {
    goto LABEL_63;
  }

  v82 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults, &v151);
  v83 = *(a1 + v82);
  v84 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults;
  v85 = v128;
  OUTLINED_FUNCTION_521(v128 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__newsResults, &v150);
  v86 = *(v85 + v84);

  sub_1B8D88E04(v83, v86);
  v88 = v87;

  if ((v88 & 1) == 0)
  {
    goto LABEL_63;
  }

  v89 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
  OUTLINED_FUNCTION_521(v34 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList, &v149);
  v90 = *(v34 + v89);
  v91 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList;
  v92 = v128;
  OUTLINED_FUNCTION_521(v128 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__kgDebugList, &v148);
  v93 = *(v92 + v91);

  sub_1B8D8900C(v90, v93);
  v95 = v94;

  if ((v95 & 1) == 0)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(v34 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isDisputedResponse, &v147);
  v96 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v96, &v146);
  OUTLINED_FUNCTION_78_0();
  if (!v28)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(v34 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo, &v145);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v128 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__nlgDialogInfo, &v144);
  v97 = *(v130 + 48);
  v98 = v127;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v98, 1, v132);
  if (v28)
  {
    sub_1B8D9207C(v133, &qword_1EBABBD40, &qword_1B965A640);
    OUTLINED_FUNCTION_178(&v127[v97], 1, v132);
    if (v28)
    {
      v99 = sub_1B8D9207C(v127, &qword_1EBABBD40, &qword_1B965A640);
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  v100 = v127;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v100 + v97, 1, v132);
  if (v101)
  {
    sub_1B8D9207C(v133, &qword_1EBABBD40, &qword_1B965A640);
    sub_1B8E5BEE0();
LABEL_84:
    sub_1B8D9207C(v127, &qword_1EBABC200, &qword_1B965C700);
    goto LABEL_63;
  }

  v102 = v129;
  sub_1B8E5BE30();
  v103 = static Nlgpb_NlgDialog.== infix(_:_:)(v131, v102);
  sub_1B8E5BEE0();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v104, v105, v106);
  sub_1B8E5BEE0();
  OUTLINED_FUNCTION_112_1();
  v99 = sub_1B8D9207C(v107, v108, v109);
  if ((v103 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_86:
  v110 = v34 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__catID;
  v111 = OUTLINED_FUNCTION_26_6(v99, &v143);
  v112 = *(v110 + 8);
  OUTLINED_FUNCTION_26_6(v111, &v142);
  OUTLINED_FUNCTION_63();
  v114 = v28 && v112 == v113;
  if (!v114 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_521(v34 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__isWebExtractedFact, &v141);
  v115 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v115, &v140);
  OUTLINED_FUNCTION_78_0();
  if (!v28)
  {
    goto LABEL_63;
  }

  v116 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  OUTLINED_FUNCTION_521(v34 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion, &v139);
  v117 = *(v34 + v116);
  v118 = OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion;
  v119 = v128;
  v120 = OUTLINED_FUNCTION_521(v128 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventVersion, &v138);
  if (v117 != *(v119 + v118))
  {
    goto LABEL_63;
  }

  v121 = v34 + OBJC_IVAR____TtCV10PegasusAPI27Kgqsapipb_KGEventLogMessageP33_6A25E5D8D9DC5B1B3CE95320DF8D540613_StorageClass__eventType;
  v122 = OUTLINED_FUNCTION_26_6(v120, &v137);
  v123 = *(v121 + 8);
  OUTLINED_FUNCTION_26_6(v122, &v136);
  OUTLINED_FUNCTION_63();
  if (v28 && v123 == v124)
  {
  }

  else
  {
    v126 = OUTLINED_FUNCTION_120_0();

    if ((v126 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B8E5E938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC6A8, type metadata accessor for Kgqsapipb_KGEventLogMessage, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E5E9B8(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC1E8, type metadata accessor for Kgqsapipb_KGEventLogMessage, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E5EA28(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1E20(&qword_1EBABC1E8, type metadata accessor for Kgqsapipb_KGEventLogMessage, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E5EAA8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC3A0);
  __swift_project_value_buffer(v0, qword_1EBABC3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v4 = "NO_SPEAKABLE";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 1;
  *v8 = "KG_NO_SPEAKABLE";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "KG_DICTIONARY";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "KG_DICTIONARY_SUPPRESSED";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "KG_ELECTIONS";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "KG_SPEAKABLE_DIALOG";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "KG_ARTICLE_DISPLAY";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "KG_ARTICLE_READING";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "KG_LIST_DIALOG";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "KG_FAIL";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "KG_SUPPRESSED";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "KG_DIRECT_DIALOG";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "KG_NLG_DIALOG";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E5EF70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC3C8);
  __swift_project_value_buffer(v0, qword_1EBABC3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "arg";
  *(v6 + 8) = 3;
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

uint64_t sub_1B8E5F228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC6A0, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.ArgInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E5F2A8(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC4E8, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.ArgInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E5F318(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1E20(&qword_1EBABC4E8, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.ArgInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E5F3E8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC3F0);
  __swift_project_value_buffer(v0, qword_1EBABC3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "args";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E5F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo(0);
  sub_1B8CD1E20(&qword_1EBABC4E8, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.ArgInfo);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_KGEventLogMessage.IntentArgInfo.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo(0), sub_1B8CD1E20(&qword_1EBABC4E8, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.ArgInfo), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
    {
      type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8E5F82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC698, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E5F8AC(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC580, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E5F91C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1E20(&qword_1EBABC580, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.IntentArgInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E5F99C()
{
  result = MEMORY[0x1BFADC850](0xD00000000000001CLL, 0x80000001B96EE400);
  qword_1EBABC408 = 0xD00000000000001BLL;
  unk_1EBABC410 = 0x80000001B96EE0F0;
  return result;
}

uint64_t sub_1B8E5FA28()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC418);
  __swift_project_value_buffer(v0, qword_1EBABC418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attributeValueTypeMap";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E5FC40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8E5FCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0);
  sub_1B8CD1E20(&qword_1EBABC4F8, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);
  sub_1B8CD1E20(&qword_1EBABC500, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);
  return sub_1B964C3A0();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (sub_1B964C280(), type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0), sub_1B8CD1E20(&qword_1EBABC4F8, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString), sub_1B8CD1E20(&qword_1EBABC500, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v0))
    {
      type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8E5FF2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), void (*a4)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || (a3(*(v5 + 16), *(v4 + 16)) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  v13 = sub_1B8CD1E20(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t sub_1B8E6005C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC690, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E600DC(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC598, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E6014C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1E20(&qword_1EBABC598, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E601CC()
{
  if (qword_1EBAB6340 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBABC408;
  v2 = unk_1EBABC410;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1BFADC850](0x53664F7473694C2ELL, 0xED0000676E697274);

  qword_1EBABC430 = v1;
  *algn_1EBABC438 = v2;
  return result;
}

uint64_t sub_1B8E6029C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC440);
  __swift_project_value_buffer(v0, qword_1EBABC440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "values";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v1))
  {
    type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v0, *v1) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  v4 = sub_1B8CD1E20(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t sub_1B8E60604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC688, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E60684(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC4F8, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E606F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1E20(&qword_1EBABC4F8, type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E607C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC468);
  __swift_project_value_buffer(v0, qword_1EBABC468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "source";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "url";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "punchoutUri";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.decodeMessage<A>(decoder:)()
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
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_KGEventLogMessage.KGNewsResult.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_1_15();
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
            type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_KGEventLogMessage.KGNewsResult.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  v14 = sub_1B8CD1E20(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

uint64_t sub_1B8E60D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC680, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.KGNewsResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E60DD0(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC5C0, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.KGNewsResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E60E40(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1E20(&qword_1EBABC5C0, type metadata accessor for Kgqsapipb_KGEventLogMessage.KGNewsResult, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.KGNewsResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E60EE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD00000000000001BLL;
  *a5 = 0x80000001B96EE0F0;
  return result;
}

uint64_t sub_1B8E60F74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC490);
  __swift_project_value_buffer(v0, qword_1EBABC490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "code";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "encodedIntent";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "algorithm";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "intentName";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "description";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "messages";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "pattern";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "dbQueryPattern";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "queryEntities";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.decodeMessage<A>(decoder:)()
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
      case 5:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 9:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B8E613D4(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E613D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo(0);
  sub_1B8CD1E20(&qword_1EBABC518, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_KGEventLogMessage.DebugInfo.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
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
          OUTLINED_FUNCTION_1();
          if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 5), !v0))
          {
            if (!*(v1[10] + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v20 || (result = OUTLINED_FUNCTION_3(v18, v19, 7), !v0))
              {
                if (!*(v1[13] + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
                {
                  if (!*(v1[14] + 16) || (type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo(0), sub_1B8CD1E20(&qword_1EBABC518, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
                  {
                    type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0);
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

  return result;
}

uint64_t static Kgqsapipb_KGEventLogMessage.DebugInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(v2[10], v1[10]) & 1) == 0)
  {
    return 0;
  }

  v12 = v2[11] == v1[11] && v2[12] == v1[12];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(v2[13], v1[13]) & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7B11C(v2[14], v1[14]);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  v16 = sub_1B8CD1E20(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v16) & 1;
}

uint64_t sub_1B8E6181C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC678, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E6189C(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC5D8, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E6190C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1E20(&qword_1EBABC5D8, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E6198C()
{
  if (qword_1EBAB6370 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBABC480;
  v2 = *algn_1EBABC488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1BFADC850](0x49797469746E452ELL, 0xEB000000006F666ELL);

  qword_1EBABC4A8 = v1;
  unk_1EBABC4B0 = v2;
  return result;
}

uint64_t sub_1B8E61A58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABC4B8);
  __swift_project_value_buffer(v0, qword_1EBABC4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "wikidataId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entitySyn";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E61C70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = OUTLINED_FUNCTION_1_15();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8E61D10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_20();
  v12 = sub_1B8CD1E20(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B8E61E00(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD1E20(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E61EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1E20(&qword_1EBABC670, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E61F2C(uint64_t a1)
{
  v2 = sub_1B8CD1E20(&qword_1EBABC518, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E61F9C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1E20(&qword_1EBABC518, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo, protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B8E62020()
{
  result = qword_1EBABC530;
  if (!qword_1EBABC530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer, &type metadata for Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer, v0, v1);
    atomic_store(result, &qword_1EBABC530);
  }

  return result;
}

unint64_t sub_1B8E62078()
{
  result = qword_1EBABC538;
  if (!qword_1EBABC538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer, &type metadata for Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer, v0, v1);
    atomic_store(result, &qword_1EBABC538);
  }

  return result;
}

unint64_t sub_1B8E620D0()
{
  result = qword_1EBABC540;
  if (!qword_1EBABC540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer, &type metadata for Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer, v0, v1);
    atomic_store(result, &qword_1EBABC540);
  }

  return result;
}

unint64_t sub_1B8E62128()
{
  result = qword_1EBABC548;
  if (!qword_1EBABC548)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABC550, &qword_1B965CEB8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBABC548);
  }

  return result;
}

void sub_1B8E62B40(uint64_t a1)
{
  sub_1B8E62FD4(319, &qword_1EBABC608, type metadata accessor for Kgqsapipb_KGEventLogMessage.ArgInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E62C2C(uint64_t a1)
{
  sub_1B8E62CC0(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E62CC0(uint64_t a1)
{
  if (!qword_1EBABC620)
  {
    type metadata accessor for Kgqsapipb_KGEventLogMessage.EntityAttributeValueTypeMap.ListOfString(255);
    v1 = sub_1B964C7C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBABC620);
    }
  }
}

uint64_t sub_1B8E62D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8E62E34(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E62EE4(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B8E62FD4(319, &qword_1EBABC658, type metadata accessor for Kgqsapipb_KGEventLogMessage.DebugInfo.EntityInfo, MEMORY[0x1E69E62F8]);
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

void sub_1B8E62FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8E63068(uint64_t a1)
{
  sub_1B8E62FD4(319, &qword_1ED9CCAA0, type metadata accessor for Kgqsapipb_KGEventLogMessage.IntentArgInfo, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B8E62FD4(319, &qword_1ED9CD910, type metadata accessor for Nlgpb_NlgDialog, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B8E63208()
{
  result = qword_1EBABC6B0;
  if (!qword_1EBABC6B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer, &type metadata for Kgqsapipb_KGEventLogMessage.TypeOfSpeakableAnswer, v0, v1);
    atomic_store(result, &qword_1EBABC6B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  *(a1 + 80) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Kgqsapipb_KGEventLogMessage(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_8()
{
  type metadata accessor for Kgqsapipb_KGEventLogMessage._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_6(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_28_5()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_30_9()
{
  type metadata accessor for Kgqsapipb_KGEventLogMessage(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_88_1()
{
  v4 = *(v2 + v1);

  return sub_1B8D6123C(v0, v4);
}

uint64_t sub_1B8E6352C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Entity.id.setter(v1, v2);
}

uint64_t Kgqsapipb_Entity.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_Entity.domain.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_28_6();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4(v4 + 32, v5);
  v7 = *(v4 + 40);
  *a1 = *(v4 + 32);
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1B8E636A0@<X0>(uint64_t a1@<X8>)
{
  result = Kgqsapipb_Entity.domain.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void Kgqsapipb_Entity.domain.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = type metadata accessor for Kgqsapipb_Entity(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E6CD90(v10);
    *(v2 + v1) = v9;
  }

  OUTLINED_FUNCTION_9_3(v9 + 32, v8);
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Entity.domain.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 88) = v0;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v5 = *(v0 + 40);
  *(v1 + 72) = *(v0 + 32);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E63804()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1();
  v2 = *(v1 + 72);
  v3 = *(v0 + 84);
  v4 = *(v0 + 88);
  v5 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_38_2();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 32) = v2;
  *(v7 + 40) = v5;
  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t Kgqsapipb_Entity.locale.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_Entity.label.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 56, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Entity.label.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E6CD90(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 56, v7);
  *(v8 + 56) = v2;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Entity.label.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  v6 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E63B20()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Entity.label.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_2();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 56);
    *(v7 + 56) = v3;
    *(v7 + 64) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.enlabel.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 72, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Entity.enlabel.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E6CD90(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 72, v7);
  *(v8 + 72) = v2;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Entity.enlabel.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  v6 = *(v0 + 80);
  *(v1 + 48) = *(v0 + 72);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E63D08()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Entity.enlabel.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_2();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 72);
    *(v7 + 72) = v3;
    *(v7 + 80) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.description_p.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 88, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Entity.description_p.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E6CD90(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 88, v7);
  *(v8 + 88) = v2;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Entity.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Entity(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 88);
  v6 = *(v0 + 96);
  *(v1 + 48) = *(v0 + 88);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E63EF0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Entity.description_p.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_2();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 88);
    *(v7 + 88) = v3;
    *(v7 + 96) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.claims.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 104, v2);
}

uint64_t Kgqsapipb_Entity.claims.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 104, v4);
  *(v5 + 104) = v0;
}

uint64_t Kgqsapipb_Entity.claims.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 104);
  *(v1 + 48) = *(v0 + 104);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E640AC()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.claims.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 104);
    *(v6 + 104) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.labels.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 112, v2);
}

uint64_t Kgqsapipb_Entity.labels.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 112, v4);
  *(v5 + 112) = v0;
}

uint64_t Kgqsapipb_Entity.labels.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  *(v1 + 48) = *(v0 + 112);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64268()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.labels.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 112);
    *(v6 + 112) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.descriptions.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 120, v2);
}

uint64_t Kgqsapipb_Entity.descriptions.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 120, v4);
  *(v5 + 120) = v0;
}

uint64_t Kgqsapipb_Entity.descriptions.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 120);
  *(v1 + 48) = *(v0 + 120);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64424()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.descriptions.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 120);
    *(v6 + 120) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.siteLinks.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 128, v2);
}

uint64_t Kgqsapipb_Entity.siteLinks.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 128, v4);
  *(v5 + 128) = v0;
}

uint64_t Kgqsapipb_Entity.siteLinks.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  *(v1 + 48) = *(v0 + 128);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E645E0()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.siteLinks.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 128);
    *(v6 + 128) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.aliases.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 136, v2);
}

uint64_t Kgqsapipb_Entity.aliases.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 136, v4);
  *(v5 + 136) = v0;
}

uint64_t Kgqsapipb_Entity.aliases.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 136);
  *(v1 + 48) = *(v0 + 136);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6479C()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.aliases.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 136);
    *(v6 + 136) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.shortAbstract.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 144, v2);
}

uint64_t Kgqsapipb_Entity.shortAbstract.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 144, v4);
  *(v5 + 144) = v0;
}

uint64_t Kgqsapipb_Entity.shortAbstract.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  *(v1 + 48) = *(v0 + 144);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64958()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.shortAbstract.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 144);
    *(v6 + 144) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.primary.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 152, v2);
}

uint64_t Kgqsapipb_Entity.primary.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 152, v4);
  *(v5 + 152) = v0;
}

uint64_t Kgqsapipb_Entity.primary.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  *(v1 + 48) = *(v0 + 152);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64B14()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.primary.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 152);
    *(v6 + 152) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.secondary.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 160, v2);
}

uint64_t Kgqsapipb_Entity.secondary.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 160, v4);
  *(v5 + 160) = v0;
}

uint64_t Kgqsapipb_Entity.secondary.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64CD0()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.secondary.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 160);
    *(v6 + 160) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.localizations.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 168, v2);
}

uint64_t Kgqsapipb_Entity.localizations.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 168, v4);
  *(v5 + 168) = v0;
}

uint64_t Kgqsapipb_Entity.localizations.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  *(v1 + 48) = *(v0 + 168);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E64E8C()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.localizations.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 168);
    *(v6 + 168) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Entity.timestamp.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 176, v3);
  return *(v2 + 176);
}

uint64_t Kgqsapipb_Entity.timestamp.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 176, v4);
  *(v5 + 176) = v0;
  return result;
}

uint64_t Kgqsapipb_Entity.timestamp.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_28_6();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 176);
  *(v1 + 72) = *(v5 + 176);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E65018()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_177_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 176) = v2;

  free(v0);
}

uint64_t Kgqsapipb_Entity.indexedTimestamp.getter()
{
  OUTLINED_FUNCTION_28_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 184, v3);
  return *(v2 + 184);
}

uint64_t Kgqsapipb_Entity.indexedTimestamp.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 184, v4);
  *(v5 + 184) = v0;
  return result;
}

uint64_t Kgqsapipb_Entity.indexedTimestamp.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_28_6();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 184);
  *(v1 + 72) = *(v5 + 184);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E65194()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_177_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 184) = v2;

  free(v0);
}

uint64_t Kgqsapipb_Entity.claimMap.getter()
{
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 192, v2);
}

uint64_t Kgqsapipb_Entity.claimMap.setter()
{
  v3 = OUTLINED_FUNCTION_24_6();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_2();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E6CD90(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 192, v4);
  *(v5 + 192) = v0;
}

uint64_t Kgqsapipb_Entity.claimMap.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_12(v3);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  *(v1 + 48) = *(v0 + 192);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E65340()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Entity.claimMap.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Entity._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E6CD90(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 192);
    *(v6 + 192) = v2;
  }

  free(v0);
}

void Kgqsapipb_Entity.assertion.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_Assertion(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E65650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E7EA38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Kgqsapipb_Entity.Domain.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v0, v1);
}

uint64_t (*static Kgqsapipb_Entity.Domain.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8E65740@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_Entity.Domain.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Kgqsapipb_ClaimTrimmed.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_ClaimTrimmed(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E65858()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 16, v3);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8E658A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Claim.id.setter(v1, v2);
}

uint64_t sub_1B8E65924(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v11 = OUTLINED_FUNCTION_11_13();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_216_1(v13);
  v16 = *(v6 + v8);
  if ((v14 & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v18 = a5(v17);
    OUTLINED_FUNCTION_192_2(v18);
  }

  OUTLINED_FUNCTION_9_3(v16 + 16, v15);
  *(v16 + 16) = v7;
  *(v16 + 24) = v5;
}

uint64_t Kgqsapipb_Claim.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8E65A74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Claim.epid.setter(v1, v2);
}

uint64_t Kgqsapipb_Claim.epid.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_Claim.entityID.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 48, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.entityID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = v2;
  *(v7 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.entityID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E65CE0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.entityID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.order.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 64, v3);
  return *(v2 + 64);
}

uint64_t Kgqsapipb_Claim.order.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_67_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.order.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E65E68()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 64) = v2;

  free(v0);
}

double Kgqsapipb_Claim.lionProb.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 72, v3);
  return *(v2 + 72);
}

uint64_t Kgqsapipb_Claim.lionProb.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Kgqsapipb_Claim(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 72, v6);
  *(v7 + 72) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.lionProb.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_22_7();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 72);
  *(v1 + 72) = *(v5 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E66008()
{
  OUTLINED_FUNCTION_86_1();
  v2 = *(v1 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_15(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 72) = v2;

  free(v0);
}

uint64_t Kgqsapipb_Claim.propID.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 80, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.propID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 80, v6);
  *(v7 + 80) = v2;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.propID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E661EC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.propID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v3;
    *(v7 + 88) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.propName.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 96, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.propName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 96, v6);
  *(v7 + 96) = v2;
  *(v7 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.propName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E663C0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.propName.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.propEnName.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 112, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.propEnName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 112, v6);
  *(v7 + 112) = v2;
  *(v7 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.propEnName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  v4 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66594()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.propEnName.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 112);
    *(v7 + 112) = v3;
    *(v7 + 120) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.propType.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 128, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.propType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 128, v6);
  *(v7 + 128) = v2;
  *(v7 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.propType.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66768()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.propType.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 128);
    *(v7 + 128) = v3;
    *(v7 + 136) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.propTypeCode.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 144, v3);
  return *(v2 + 144);
}

uint64_t Kgqsapipb_Claim.propTypeCode.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_67_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 144, v5);
  *(v6 + 144) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.propTypeCode.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  *(v1 + 80) = *(v0 + 144);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E668F0()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 144) = v2;

  free(v0);
}

uint64_t Kgqsapipb_Claim.valueType.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 152, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.valueType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 152, v6);
  *(v7 + 152) = v2;
  *(v7 + 160) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.valueType.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  v4 = *(v0 + 160);
  *(v1 + 48) = *(v0 + 152);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66ABC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.valueType.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 152);
    *(v7 + 152) = v3;
    *(v7 + 160) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.valueTypeCode.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 168, v3);
  return *(v2 + 168);
}

uint64_t Kgqsapipb_Claim.valueTypeCode.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_67_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 168, v5);
  *(v6 + 168) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.valueTypeCode.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  *(v1 + 80) = *(v0 + 168);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E66C44()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 168) = v2;

  free(v0);
}

uint64_t Kgqsapipb_Claim.value.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 176, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.value.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 176, v6);
  *(v7 + 176) = v2;
  *(v7 + 184) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.value.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 176);
  v4 = *(v0 + 184);
  *(v1 + 48) = *(v0 + 176);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66E10()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.value.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 176);
    *(v7 + 176) = v3;
    *(v7 + 184) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.localizedValue.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 192, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.localizedValue.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 192, v6);
  *(v7 + 192) = v2;
  *(v7 + 200) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.localizedValue.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  v4 = *(v0 + 200);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E66FE4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.localizedValue.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 192);
    *(v7 + 192) = v3;
    *(v7 + 200) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.valuePrecision.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 208, v3);
  return *(v2 + 208);
}

uint64_t Kgqsapipb_Claim.valuePrecision.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_67_3();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 208, v5);
  *(v6 + 208) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.valuePrecision.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 208);
  *(v1 + 80) = *(v0 + 208);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E6716C()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 208) = v2;

  free(v0);
}

uint64_t Kgqsapipb_Claim.valueLocales.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 216, v2);
}

uint64_t Kgqsapipb_Claim.valueLocales.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 216, v5);
  *(v6 + 216) = v0;
}

uint64_t Kgqsapipb_Claim.valueLocales.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 216);
  *(v1 + 48) = *(v0 + 216);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E67324()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.valueLocales.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Claim._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 216);
    *(v6 + 216) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.qualifiers.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 224, v2);
}

uint64_t Kgqsapipb_Claim.qualifiers.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 224, v5);
  *(v6 + 224) = v0;
}

uint64_t Kgqsapipb_Claim.qualifiers.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  *(v1 + 48) = *(v0 + 224);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E674EC()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.qualifiers.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Claim._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 224);
    *(v6 + 224) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.qualifierInfo.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 232, v2);
}

uint64_t Kgqsapipb_Claim.qualifierInfo.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 232, v5);
  *(v6 + 232) = v0;
}

uint64_t Kgqsapipb_Claim.qualifierInfo.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 232);
  *(v1 + 48) = *(v0 + 232);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E676B4()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.qualifierInfo.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Claim._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 232);
    *(v6 + 232) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.attention.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 240, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_Claim.attention.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_111_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E7078C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 240, v6);
  *(v7 + 240) = v2;
  *(v7 + 248) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Claim.attention.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 240);
  v4 = *(v0 + 248);
  *(v1 + 48) = *(v0 + 240);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E67890()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_Claim.attention.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_34_4();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 240);
    *(v7 + 240) = v3;
    *(v7 + 248) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.references.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 256, v2);
}

uint64_t Kgqsapipb_Claim.references.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 256, v5);
  *(v6 + 256) = v0;
}

uint64_t Kgqsapipb_Claim.references.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 256);
  *(v1 + 48) = *(v0 + 256);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E67A50()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.references.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Claim._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 256);
    *(v6 + 256) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_Claim.geoContainers.getter()
{
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 264, v2);
}

uint64_t Kgqsapipb_Claim.geoContainers.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_110_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 264, v5);
  *(v6 + 264) = v0;
}

uint64_t Kgqsapipb_Claim.geoContainers.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Claim(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 264);
  *(v1 + 48) = *(v0 + 264);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E67C18()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_Claim.geoContainers.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_29_6();
      type metadata accessor for Kgqsapipb_Claim._StorageClass(v7);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E7078C(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v6 + 264);
    *(v6 + 264) = v2;
  }

  free(v0);
}

float Kgqsapipb_Claim.confidence.getter()
{
  OUTLINED_FUNCTION_22_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 272, v3);
  return *(v2 + 272);
}

uint64_t Kgqsapipb_Claim.confidence.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Kgqsapipb_Claim(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E7078C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 272, v6);
  *(v7 + 272) = a1;
  return result;
}

uint64_t Kgqsapipb_Claim.confidence.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0(v0 + 272);
  *(v1 + 80) = *(v0 + 272);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E67DC4()
{
  OUTLINED_FUNCTION_86_1();
  v2 = *(v1 + 80);
  v3 = *(v0 + 84);
  v4 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E7078C(v7);
    OUTLINED_FUNCTION_15(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 272) = v2;

  free(v0);
}

uint64_t Kgqsapipb_Claim.renderLocalization.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_521(*(v1 + v8) + OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__renderLocalization, v11);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  OUTLINED_FUNCTION_57(v2);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = MEMORY[0x1E69E7CC0];
    type metadata accessor for Kgqsapipb_ClaimValues(0);
    a1[3] = sub_1B964C7B0();
    a1[4] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v2);
    if (!v9)
    {
      return sub_1B8D9207C(v2, &qword_1EBABC878, &qword_1B965DC88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_1();
    return sub_1B8E71084();
  }

  return result;
}

uint64_t sub_1B8E67F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_167_3();
  v10 = v9(0);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  sub_1B8E710DC();
  return a7(v7);
}

uint64_t Kgqsapipb_Claim.renderLocalization.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC878, &qword_1B965DC88);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_31_2();
  if ((OUTLINED_FUNCTION_111_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8E7078C(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_39_1();
  sub_1B8E71084();
  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Kgqsapipb_Claim.renderLocalization.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_RenderLocalization(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = MEMORY[0x1E69E7CC0];
    type metadata accessor for Kgqsapipb_ClaimValues(0);
    v13[3] = sub_1B964C7B0();
    v13[4] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABC878, &qword_1B965DC88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8E68294()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8E710DC();
    v2(v3);
    sub_1B8E71134();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Kgqsapipb_Claim.hasRenderLocalization.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22_7();
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_521(v6 + OBJC_IVAR____TtCV10PegasusAPI15Kgqsapipb_ClaimP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__renderLocalization, v11);
  OUTLINED_FUNCTION_147_2();
  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  OUTLINED_FUNCTION_129_2();
  return v6;
}

Swift::Void __swiftcall Kgqsapipb_Claim.clearRenderLocalization()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABC878, &qword_1B965DC88);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  if ((OUTLINED_FUNCTION_67_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_36_1();
    v2 = OUTLINED_FUNCTION_40_0();
    v3 = sub_1B8E7078C(v2);
    OUTLINED_FUNCTION_157_2(v3);
  }

  type metadata accessor for Kgqsapipb_RenderLocalization(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void Kgqsapipb_Claim.assertion.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_Assertion(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E6869C()
{
  OUTLINED_FUNCTION_167_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5 - 8];
  v2(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_521(v0 + *v1, v12);
  sub_1B8D92024();
  v7 = type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v6, &qword_1EBAB9230, &qword_1B965DC80);
  return v9;
}

void sub_1B8E687CC()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_91();
  v9 = v5(v8);
  if ((OUTLINED_FUNCTION_216_1(v9) & 1) == 0)
  {
    v3(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_192_2(v11);
  }

  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8E68930@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t Kgqsapipb_Qualifierinfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_Qualifierinfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_Qualifierinfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  type metadata accessor for Kgqsapipb_Qualifierinfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_Claims.claims.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_Claims.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_Claims(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_Claims.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_Claims(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_Claims.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_Claims(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_Claims.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_Claims(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_Pronunciation.format.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Kgqsapipb_Pronunciation.assertion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_Pronunciation(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    Kgqsapipb_Assertion.init()(a1);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    return sub_1B8E71084();
  }

  return result;
}

uint64_t Kgqsapipb_Pronunciation.assertion.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Kgqsapipb_Pronunciation(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E71084();
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Kgqsapipb_Pronunciation.assertion.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  *(v3 + 10) = *(type metadata accessor for Kgqsapipb_Pronunciation(0) + 32);
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v9)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v9)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8E68F74()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    sub_1B8E710DC();
    sub_1B8D9207C(v6 + v1, &qword_1EBAB9230, &qword_1B965DC80);
    sub_1B8E71084();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    sub_1B8E71134();
  }

  else
  {
    sub_1B8D9207C(v6 + v1, &qword_1EBAB9230, &qword_1B965DC80);
    OUTLINED_FUNCTION_0_21();
    sub_1B8E71084();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Kgqsapipb_Pronunciation.hasAssertion.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Kgqsapipb_Pronunciation(v5);
  OUTLINED_FUNCTION_147_2();
  type metadata accessor for Kgqsapipb_Assertion(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  OUTLINED_FUNCTION_129_2();
  return v0;
}

Swift::Void __swiftcall Kgqsapipb_Pronunciation.clearAssertion()()
{
  v1 = type metadata accessor for Kgqsapipb_Pronunciation(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9230, &qword_1B965DC80);
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8E69198()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8E69220()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Kgqsapipb_Pronunciation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_Pronunciation(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_Pronunciation.Format.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B8E6930C@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_Pronunciation.Format.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E69340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E7C9AC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Kgqsapipb_Pronunciation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  type metadata accessor for Kgqsapipb_Pronunciation(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Kgqsapipb_Assertion(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t static Kgqsapipb_Pronunciation.Format.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521(v0, v1);
}

uint64_t (*static Kgqsapipb_Pronunciation.Format.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B8E694A0@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_Pronunciation.Format.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E694E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Name.displayName.setter(v1, v2);
}

uint64_t Kgqsapipb_Name.displayName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Name(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E6960C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_191();
    v10 = OUTLINED_FUNCTION_461();
    v9(v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      v5(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = v4(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_59_3(v12 + 16);
    *(v12 + 16) = v3;
    *(v12 + 24) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t sub_1B8E696D8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 32, v3);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8E69724(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Kgqsapipb_Name.spokenName.setter(v1, v2);
}

uint64_t sub_1B8E697A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v11 = OUTLINED_FUNCTION_11_13();
  v13 = v12(v11);
  v14 = OUTLINED_FUNCTION_216_1(v13);
  v16 = *(v6 + v8);
  if ((v14 & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v18 = a5(v17);
    OUTLINED_FUNCTION_192_2(v18);
  }

  OUTLINED_FUNCTION_9_3(v16 + 32, v15);
  *(v16 + 32) = v7;
  *(v16 + 40) = v5;
}

uint64_t Kgqsapipb_Name.spokenName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Kgqsapipb_Name(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E698E4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_191();
    v10 = OUTLINED_FUNCTION_461();
    v9(v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      v5(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = v4(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_59_3(v12 + 32);
    *(v12 + 32) = v3;
    *(v12 + 40) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v16);
}

uint64_t sub_1B8E699B0()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_10_4(*(v0 + *(v3 + 20)) + 48, v4);
}

void sub_1B8E69A64()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_65_3();
  v9 = *(v8(v7) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_40_0();
    v12 = v4(v13);
    *(v2 + v9) = v12;
  }

  OUTLINED_FUNCTION_9_3(v12 + 48, v11);
  *(v12 + 48) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_Name.orderedPronunciation.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Name(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

void Kgqsapipb_Name.displayNameAssertion.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_Assertion(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  type metadata accessor for Kgqsapipb_Name(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void Kgqsapipb_Name.spokenNameAssertion.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Kgqsapipb_Assertion(v9);
  OUTLINED_FUNCTION_59_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  type metadata accessor for Kgqsapipb_Name(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_33_5(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9230, &qword_1B965DC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_135_4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Kgqsapipb_Name.qualifiers.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Kgqsapipb_Name(v4);
  OUTLINED_FUNCTION_53_2(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI14Kgqsapipb_NameP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__qualifiers;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI14Kgqsapipb_NameP33_FBC61C2DB3C387DAC19C4543E8DB96DE13_StorageClass__qualifiers);
  *(v1 + 48) = *(v0 + v6);

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_Localizations.locale.getter()
{
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);
}

uint64_t Kgqsapipb_Localizations.locale.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Kgqsapipb_Localizations(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Kgqsapipb_Localizations._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E76FD0(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  OUTLINED_FUNCTION_9_3(v7 + 16, v6);
  *(v7 + 16) = v0;
}