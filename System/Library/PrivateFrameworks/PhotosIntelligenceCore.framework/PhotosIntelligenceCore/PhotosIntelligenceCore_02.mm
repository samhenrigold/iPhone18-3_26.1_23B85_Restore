uint64_t sub_25E611FE8(uint64_t a1)
{
  v19 = MEMORY[0x277D84FA0];
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);

  v10 = 0;
  while (v5)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_25E5F82CC(*(a1 + 48) + 40 * (v12 | (v11 << 6)), v17);
    v15[0] = v17[0];
    v15[1] = v17[1];
    v16 = v18;
    sub_25E5F82CC(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF92D8, &qword_25E63B788);
    if (swift_dynamicCast())
    {
      [v13[0] boundingBox];
      v20.width = v7;
      v20.height = v8;
      if (!CGSizeEqualToSize(v20, v21))
      {
        sub_25E5F82CC(v15, v13);
        sub_25E60367C(v14, v13);
        swift_unknownObjectRelease();
        sub_25E5F8328(v14);
        goto LABEL_13;
      }

      sub_25E5F8328(v15);
      result = swift_unknownObjectRelease();
      v10 = v11;
    }

    else
    {
LABEL_13:
      result = sub_25E5F8328(v15);
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v19;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_25E6121C4(uint64_t a1, id a2, double a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v3 = a1;
  v5 = [a2 nodeForSignalIdentifier_];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for UtilitySceneConfiguration();
    sub_25E60F494(v3);
    sub_25E60F630(v6);
    v8 = v7;

    return v8 <= a3;
  }

  if (qword_280CB2148 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = sub_25E635710();
  __swift_project_value_buffer(v10, qword_280CB2150);
  v11 = sub_25E6356F0();
  v12 = sub_25E635CE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v3;
    _os_log_impl(&dword_25E5F0000, v11, v12, "Cannot find utilityNode for sceneIdentifier: %llu", v13, 0xCu);
    MEMORY[0x25F8BA800](v13, -1, -1);
  }

  return 0;
}

BOOL sub_25E612328(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for UtilitySceneConfiguration();
  v6 = sub_25E60F494(a1);
  if (sub_25E60F648() <= 0.0)
  {

    return 1;
  }

  else
  {
    v7 = sub_25E6123F0(a2, v6, a3);
    if (v8)
    {

      return 0;
    }

    else
    {
      v10 = *&v7;
      v11 = sub_25E60F648();

      return v11 <= v10;
    }
  }
}

uint64_t sub_25E6123F0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF92D8, &qword_25E63B788);
  if (swift_dynamicCast())
  {
    v32[0] = v29;
    v32[1] = v30;
    v33 = v31;
    if (sub_25E5F7060(v32, a3))
    {
      [a1 boundingBox];
      width = v34.width;
      height = v34.height;
      v8 = CGSizeEqualToSize(*MEMORY[0x277CBF3A8], v34);
      sub_25E5F8328(v32);
      v9 = width * height;
      v10 = !v8;
LABEL_25:
      if (v10)
      {
        return *&v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v11 = *(a2 + 32);
      v12 = 1 << *(a3 + 32);
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(a3 + 56);
      v15 = (v12 + 63) >> 6;

      v17 = 0;
      while (v14)
      {
        while (1)
        {
          v18 = v17;
LABEL_16:
          v19 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          sub_25E5F82CC(*(a3 + 48) + 40 * (v19 | (v18 << 6)), &v29);
          result = swift_dynamicCast();
          if (result)
          {
            break;
          }

          v17 = v18;
          if (!v14)
          {
            goto LABEL_13;
          }
        }

        v20 = [v28 extendedSceneIdentifier];
        if (*(v11 + 16))
        {
          v21 = v20;
          v22 = sub_25E636100();
          v23 = ~(-1 << *(v11 + 32));
          while (1)
          {
            v24 = v22 & v23;
            if (((*(v11 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
            {
              break;
            }

            v22 = v24 + 1;
            if (*(*(v11 + 48) + 8 * v24) == v21)
            {
              [v28 boundingBox];
              v25 = v35.width;
              v26 = v35.height;
              v27 = CGSizeEqualToSize(*MEMORY[0x277CBF3A8], v35);

              swift_unknownObjectRelease();
              sub_25E5F8328(v32);
              v9 = v25 * v26;
              v10 = !v27;
              goto LABEL_25;
            }
          }
        }

        result = swift_unknownObjectRelease();
        v17 = v18;
      }

LABEL_13:
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v15)
        {

          sub_25E5F8328(v32);
          return 0;
        }

        v14 = *(a3 + 56 + 8 * v18);
        ++v17;
        if (v14)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_25E6128DC(&v29);
    return 0;
  }

  return result;
}

PNUtilityTypeClassifier __swiftcall PNUtilityTypeClassifier.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25E612764(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9150, &qword_25E63B100);
  result = sub_25E635DC0();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = ~(-1 << *(result + 32));
  while (v5 < *(a1 + 16))
  {
    v8 = *(a1 + 32 + 8 * v5++);
    for (result = sub_25E636100(); ; result = v9 + 1)
    {
      v9 = result & v7;
      v10 = (result & v7) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v7);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v9) == v8)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + 8 * v9) = v8;
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for PNUtilityTypeClassifier()
{
  result = qword_27FCF92D0;
  if (!qword_27FCF92D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCF92D0);
  }

  return result;
}

uint64_t sub_25E6128DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF92E0, &qword_25E63B790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_25E636070();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_slowAlloc();
}

Swift::String __swiftcall GenericLocationType.localizedText()()
{
  if (*v0)
  {
    v1 = "UtilityTypeClassifier";
  }

  else
  {
    v1 = "nTypeBusinessText";
  }

  type metadata accessor for LocalizedString();
  v2 = static LocalizedString.localizedString(forKey:)(0xD000000000000021, v1 | 0x8000000000000000);
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t GenericLocationType.localizedSynonyms()()
{
  if (*v0)
  {
    v1 = "UtilityTypeClassifier";
  }

  else
  {
    v1 = "nTypeBusinessText";
  }

  v6 = v1 | 0x8000000000000000;

  v2 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v2, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000021, v6);
  v4 = v3;

  return v4;
}

uint64_t static GenericLocationType.from(localizedText:)@<X0>(_BYTE *a3@<X8>)
{
  v3 = sub_25E635830();
  v5 = v4;
  v6 = 0;
  v32 = v3;
  type metadata accessor for LocalizedString();
  while (1)
  {
    v7 = byte_28704A490[v6++ + 32];
    v8 = "PNSeasonSummerText";
    switch(v7)
    {
      case 1:
        v8 = "PNSeasonAutumnText";
        break;
      case 2:
        v8 = "PNSeasonWinterText";
        break;
      case 3:
        v8 = "nTypeLocationText";
        break;
      default:
        break;
    }

    static LocalizedString.localizedString(forKey:)(0xD000000000000012, v8 | 0x8000000000000000);

    v9 = sub_25E635830();
    v11 = v10;

    if (v9 == v3 && v11 == v5)
    {
      break;
    }

    v13 = sub_25E636070();

    if (v13)
    {
      goto LABEL_27;
    }

    v14 = "PNSeasonSummerText";
    switch(v7)
    {
      case 1:
        v14 = "PNSeasonAutumnText";
        break;
      case 2:
        v14 = "PNSeasonWinterText";
        break;
      case 3:
        v14 = "nTypeLocationText";
        break;
      default:
        break;
    }

    v35 = v14 | 0x8000000000000000;

    v15 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v15, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000012, v35);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v33 = v7;
      v19 = v5;
      v34 = MEMORY[0x277D84F90];
      sub_25E5F3468(0, v18, 0);
      v20 = v34;
      v21 = v17 + 40;
      do
      {
        v22 = sub_25E635830();
        v24 = v23;
        v26 = *(v34 + 16);
        v25 = *(v34 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_25E5F3468(v25 > 1, v26 + 1, 1);
        }

        *(v34 + 16) = v26 + 1;
        v27 = v34 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v21 += 16;
        --v18;
      }

      while (v18);

      v5 = v19;
      v3 = v32;
      LOBYTE(v7) = v33;
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v28 = sub_25E5F68AC(v20);
    v29 = sub_25E5F6F28(v3, v5, v28);

    if (v29)
    {
      goto LABEL_27;
    }

    if (v6 == 4)
    {
      LOBYTE(v7) = 4;
      goto LABEL_27;
    }
  }

LABEL_27:

  *a3 = v7;
  return result;
}

PhotosIntelligenceCore::GenericLocationType_optional __swiftcall GenericLocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25E612EA0@<X0>(void *a1@<X8>)
{
  result = GenericLocationType.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E612F94()
{
  result = qword_27FCF92E8;
  if (!qword_27FCF92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF92E8);
  }

  return result;
}

unint64_t sub_25E612FEC()
{
  result = qword_27FCF92F0;
  if (!qword_27FCF92F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF92F8, &qword_25E63B8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF92F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenericLocationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25E61312C()
{
  result = qword_27FCF9300;
  if (!qword_27FCF9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9300);
  }

  return result;
}

uint64_t static SummarizationFeatureHandlingType.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1)
  {
    if (!*a2 || *a2 == 1)
    {
      v5 = sub_25E636070();

      v4 = v5 ^ 1;
      return v4 & 1;
    }

LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  if (*a2)
  {
    v2 = sub_25E636070();

    return v2 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

PhotosIntelligenceCore::SummarizationFeatureHandlingType_optional __swiftcall SummarizationFeatureHandlingType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SummarizationFeatureHandlingType.rawValue.getter()
{
  v1 = 0x697469726F697270;
  if (*v0 != 1)
  {
    v1 = 0x6B61657262656974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465726975716572;
  }
}

uint64_t sub_25E613394@<X0>(uint64_t *a1@<X8>)
{
  result = SummarizationFeatureHandlingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25E613478()
{
  result = qword_27FCF9308;
  if (!qword_27FCF9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9308);
  }

  return result;
}

uint64_t sub_25E6134F4(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a1)
      {
        v2 = sub_25E636070();

        v3 = v2 ^ 1;
      }

      else
      {

        v3 = 0;
      }

      return v3 & 1;
    }

    if (a1 <= 1u)
    {
      v4 = sub_25E636070();

      return v4 & 1;
    }
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_25E613648(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        v2 = sub_25E636070();

        v3 = v2 ^ 1;
      }

      else
      {

        v3 = 0;
      }

      return v3 & 1;
    }

    if (a2 <= 1u)
    {
      v4 = sub_25E636070();

      return v4 & 1;
    }
  }

  v3 = 1;
  return v3 & 1;
}

_BYTE *storeEnumTagSinglePayload for SummarizationFeatureHandlingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25E6138B4(unsigned __int8 a1, char a2)
{
  v2 = a2;
  if (a2)
  {
    if (a2 == 1)
    {
      if (a1)
      {
        v3 = sub_25E636070();

        return v3 & 1;
      }

      v2 = 1;
    }

    else if (a1 > 1u)
    {

      v2 = 0;
    }

    else
    {
      v5 = sub_25E636070();

      v2 = v5 ^ 1;
    }
  }

  return v2 & 1;
}

unint64_t sub_25E6139FC()
{
  result = qword_27FCF9310;
  if (!qword_27FCF9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9310);
  }

  return result;
}

Swift::String __swiftcall Season.localizedText()()
{
  v1 = "PNSeasonSummerText";
  switch(*v0)
  {
    case 1:
      v2 = "PNSeasonSummerText";
      goto LABEL_5;
    case 2:
      v2 = "PNSeasonAutumnText";
      goto LABEL_5;
    case 3:
      v2 = "PNSeasonWinterText";
LABEL_5:
      v1 = v2 - 32;
      break;
    default:
      break;
  }

  type metadata accessor for LocalizedString();
  v3 = static LocalizedString.localizedString(forKey:)(0xD000000000000012, v1 | 0x8000000000000000);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t Season.localizedSynonyms()()
{
  v1 = "PNSeasonSummerText";
  switch(*v0)
  {
    case 1:
      v2 = "PNSeasonSummerText";
      goto LABEL_5;
    case 2:
      v2 = "PNSeasonAutumnText";
      goto LABEL_5;
    case 3:
      v2 = "PNSeasonWinterText";
LABEL_5:
      v1 = v2 - 32;
      break;
    default:
      break;
  }

  v7 = v1 | 0x8000000000000000;

  v3 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v3, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000012, v7);
  v5 = v4;

  return v5;
}

uint64_t static Season.from(localizedText:)@<X0>(_BYTE *a3@<X8>)
{
  v3 = sub_25E635830();
  v5 = v4;
  v6 = 0;
  v32 = v3;
  type metadata accessor for LocalizedString();
  while (1)
  {
    v7 = byte_28704A490[v6++ + 32];
    v8 = "PNSeasonSummerText";
    switch(v7)
    {
      case 1:
        v8 = "PNSeasonAutumnText";
        break;
      case 2:
        v8 = "PNSeasonWinterText";
        break;
      case 3:
        v8 = "nTypeLocationText";
        break;
      default:
        break;
    }

    static LocalizedString.localizedString(forKey:)(0xD000000000000012, v8 | 0x8000000000000000);

    v9 = sub_25E635830();
    v11 = v10;

    if (v9 == v3 && v11 == v5)
    {
      break;
    }

    v13 = sub_25E636070();

    if (v13)
    {
      goto LABEL_27;
    }

    v14 = "PNSeasonSummerText";
    switch(v7)
    {
      case 1:
        v14 = "PNSeasonAutumnText";
        break;
      case 2:
        v14 = "PNSeasonWinterText";
        break;
      case 3:
        v14 = "nTypeLocationText";
        break;
      default:
        break;
    }

    v35 = v14 | 0x8000000000000000;

    v15 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v15, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000012, v35);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v33 = v7;
      v19 = v5;
      v34 = MEMORY[0x277D84F90];
      sub_25E5F3468(0, v18, 0);
      v20 = v34;
      v21 = v17 + 40;
      do
      {
        v22 = sub_25E635830();
        v24 = v23;
        v26 = *(v34 + 16);
        v25 = *(v34 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_25E5F3468(v25 > 1, v26 + 1, 1);
        }

        *(v34 + 16) = v26 + 1;
        v27 = v34 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v21 += 16;
        --v18;
      }

      while (v18);

      v5 = v19;
      v3 = v32;
      LOBYTE(v7) = v33;
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v28 = sub_25E5F68AC(v20);
    v29 = sub_25E5F6F28(v3, v5, v28);

    if (v29)
    {
      goto LABEL_27;
    }

    if (v6 == 4)
    {
      LOBYTE(v7) = 4;
      goto LABEL_27;
    }
  }

LABEL_27:

  *a3 = v7;
  return result;
}

PhotosIntelligenceCore::Season_optional __swiftcall Season.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E613FB4@<X0>(uint64_t *a1@<X8>)
{
  result = Season.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

unint64_t sub_25E6140A4()
{
  result = qword_27FCF9318;
  if (!qword_27FCF9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9318);
  }

  return result;
}

unint64_t sub_25E6140FC()
{
  result = qword_27FCF9320;
  if (!qword_27FCF9320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9328, &qword_25E63BBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Season(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Season(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E6142C4()
{
  result = qword_27FCF9330;
  if (!qword_27FCF9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9330);
  }

  return result;
}

uint64_t sub_25E614318@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 40 * v2;
    v4 = *(v3 - 8);
    v5 = *(v3 + 8);
    v2 = *(v3 + 24);
  }

  else
  {
    v5 = xmmword_25E63BC40;
    v4 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_25E614350(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_25E61D388(result, 1, sub_25E60A6C8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25E61441C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_25E61D388(result, 1, sub_25E60A798);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25E6144F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25E635870();
    sub_25E6358E0();
    OUTLINED_FUNCTION_70();

    return OUTLINED_FUNCTION_40_0();
  }

  return result;
}

uint64_t sub_25E61459C(uint64_t a1)
{
  v4 = v1[1];
  v5 = *(v4 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(v4 + 8 * v5 + 24);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_25E60A244(0, v7, *v1);
  v2 = v8;
  v3 = v9;
  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = OUTLINED_FUNCTION_35_0();
    sub_25E60AEB8(v10, v11, v2, v3);
    v13 = v12;
LABEL_13:
    swift_unknownObjectRelease();
    return v13;
  }

  sub_25E636080();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v14 + 16);

  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_17;
  }

  if (v15 != (v3 >> 1) - v2)
  {
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v13)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  return v13;
}

void sub_25E6146C0(void *a1@<X8>)
{
  v6 = v1[1];
  v7 = *(*v1 + 16);
  if (!v7)
  {
    v2 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  sub_25E60A244(0, v7 - 1, *v1);
  OUTLINED_FUNCTION_70();
  if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_25E636080();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v13 != (v4 >> 1) - v3)
  {
LABEL_25:
    swift_unknownObjectRelease();
LABEL_3:
    v8 = OUTLINED_FUNCTION_40_0();
    sub_25E60AEB8(v8, v9, v10, v4);
    v2 = v11;
    goto LABEL_11;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_65();
  swift_unknownObjectRelease();
  if (v2)
  {
    goto LABEL_12;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = *(v2 + 16);
    v16 = (v6 + 32);
    v17 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v16++;
      v18 = v19;
      if (v19 < v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25E5F3504(0, *(v17 + 16) + 1, 1);
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_25E5F3504(v20 > 1, v21 + 1, 1);
        }

        *(v17 + 16) = v21 + 1;
        *(v17 + 8 * v21 + 32) = v18;
      }

      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  *a1 = v2;
  a1[1] = v17;
}

uint64_t sub_25E614870@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_25E6148EC(uint64_t a1)
{
  OUTLINED_FUNCTION_81(a1);
  MEMORY[0x25F8B9DE0](0);
  return sub_25E636130();
}

BOOL sub_25E6149C4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_25E6149F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_25E614A28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

PhotosIntelligenceCore::RootEventRecorder::Options sub_25E614B1C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = RootEventRecorder.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25E614B5C@<X0>(uint64_t *a1@<X8>)
{
  result = RootEventRecorder.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static RootEventRecorder.Path.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_25E614BF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_35_0();

  return sub_25E614C80(v2, v3);
}

uint64_t sub_25E614BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25E636070() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_25E614C80(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25E614CDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
  if (v4 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025E6393C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_25E636070();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25E614DBC(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_25E614E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E614CDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E614E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E614DB4();
  *a1 = result;
  return result;
}

uint64_t sub_25E614E74(uint64_t a1)
{
  v2 = sub_25E6150B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E614EB0(uint64_t a1)
{
  v2 = sub_25E6150B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RootEventRecorder.Path.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9338, &unk_25E63BC70);
  OUTLINED_FUNCTION_5();
  v25 = v24;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_63(v22, v22[3]);
  v27 = sub_25E6150B4();

  OUTLINED_FUNCTION_61();
  sub_25E636150();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
  OUTLINED_FUNCTION_13_2();
  sub_25E61D91C(v28);
  OUTLINED_FUNCTION_12_2();
  sub_25E636000();

  if (!v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9350, &qword_25E63BC80);
    OUTLINED_FUNCTION_13_2();
    sub_25E615108(v29);
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();
  }

  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_25E6150B4()
{
  result = qword_27FCF9340;
  if (!qword_27FCF9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9340);
  }

  return result;
}

unint64_t sub_25E615108(uint64_t a1)
{
  result = OUTLINED_FUNCTION_69(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9350, &qword_25E63BC80);
    result = OUTLINED_FUNCTION_77(v3);
    atomic_store(result, v1);
  }

  return result;
}

void RootEventRecorder.Path.hash(into:)(uint64_t a1)
{
  sub_25E61D8BC();
  OUTLINED_FUNCTION_35_0();

  sub_25E61D87C();
}

uint64_t RootEventRecorder.Path.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_81(a1);
  sub_25E61D8BC();
  sub_25E61D87C();
  return sub_25E636130();
}

void RootEventRecorder.Path.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_37_0();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9360, &qword_25E63BC88);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_63(v12, v12[3]);
  sub_25E6150B4();
  sub_25E636140();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    OUTLINED_FUNCTION_15_3();
    v17 = sub_25E61D91C(v16);
    OUTLINED_FUNCTION_30_0(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9350, &qword_25E63BC80);
    OUTLINED_FUNCTION_15_3();
    v19 = sub_25E615108(v18);
    OUTLINED_FUNCTION_30_0(v19);
    v20 = OUTLINED_FUNCTION_64();
    v21(v20);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_25E61540C(uint64_t a1)
{
  sub_25E636110();
  sub_25E61D8BC();
  sub_25E61D87C();
  return sub_25E636130();
}

uint64_t sub_25E615460(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_24_0();
  v5 = sub_25E635810();
  v6 = OUTLINED_FUNCTION_52_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_3();
  if ((a3 & 1) == 0)
  {
    if (v3)
    {
      LODWORD(v23) = v3;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_13;
  }

  v7 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = v3 >> 16;
  if (v3 >> 16 > 0x10)
  {
    goto LABEL_14;
  }

  if (v3 > 0x7F)
  {
LABEL_15:
    v11 = (v3 & 0x3F) << 8;
    v12 = (v3 >> 6) + v11 + 33217;
    v13 = (v11 | (v3 >> 6) & 0x3F) << 8;
    v14 = (v3 >> 18) + ((v13 | (v3 >> 12) & 0x3F) << 8) - 2122219023;
    v15 = (v3 >> 12) + v13 + 8487393;
    if (v7)
    {
      v8 = v14;
    }

    else
    {
      v8 = v15;
    }

    if (v3 < 0x800)
    {
      v8 = v12;
    }

    goto LABEL_9;
  }

  v8 = v3 + 1;
LABEL_9:
  v24 = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v8) >> 3))));
  v23 = &v24;
LABEL_10:
  sub_25E635800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9580, &qword_25E63CA98);
  sub_25E61F3E8(&unk_280CB2810);
  result = sub_25E6357E0();
  if (!v10)
  {
LABEL_22:
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_42_0();
    result = OUTLINED_FUNCTION_58(v16, v17, v18, 85, v19, v20, v21, v22, 83, v23);
    __break(1u);
  }

  return result;
}

uint64_t sub_25E615670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067;
  if (v4 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581861 && a2 == 0xE300000000000000;
    if (v6 || (sub_25E636070() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
      if (v7 || (sub_25E636070() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_25E636070();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_25E6157D0(char a1)
{
  result = 0x6E696E6E69676562;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E615868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E610C18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E615894(uint64_t a1)
{
  v2 = sub_25E61DAC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E6158D0(uint64_t a1)
{
  v2 = sub_25E61DAC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25E61590C(uint64_t a1)
{
  v2 = sub_25E61DA1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E615948(uint64_t a1)
{
  v2 = sub_25E61DA1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25E61598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E615670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E6159B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6157C8();
  *a1 = result;
  return result;
}

uint64_t sub_25E6159DC(uint64_t a1)
{
  v2 = sub_25E61D974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E615A18(uint64_t a1)
{
  v2 = sub_25E61D974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25E615A54(uint64_t a1)
{
  v2 = sub_25E61DA70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E615A90(uint64_t a1)
{
  v2 = sub_25E61DA70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25E615ACC(uint64_t a1)
{
  v2 = sub_25E61D9C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E615B08(uint64_t a1)
{
  v2 = sub_25E61D9C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void RootEventRecorder.EventType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_37_0();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9378, &qword_25E63BC90);
  OUTLINED_FUNCTION_5();
  v73 = v31;
  v74 = v30;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v32);
  v72 = &v64 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9380, &qword_25E63BC98);
  OUTLINED_FUNCTION_5();
  v70 = v35;
  v71 = v34;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41_0(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9388, &qword_25E63BCA0);
  OUTLINED_FUNCTION_5();
  v67 = v39;
  v68 = v38;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v40);
  v66 = &v64 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9390, &qword_25E63BCA8);
  OUTLINED_FUNCTION_5();
  v64 = v43;
  v65 = v42;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39_0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9398, &qword_25E63BCB0);
  OUTLINED_FUNCTION_5();
  v47 = v46;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v48);
  v50 = &v64 - v49;
  v51 = *v24;
  OUTLINED_FUNCTION_63(v29, v29[3]);
  sub_25E61D974();
  sub_25E636150();
  switch(v51)
  {
    case 1:
      a12 = 1;
      v61 = sub_25E61DA70();
      v53 = v66;
      OUTLINED_FUNCTION_31_0(&type metadata for RootEventRecorder.EventType.EndCodingKeys, &a12, v62, v63, v61);
      v57 = v67;
      v56 = v68;
      goto LABEL_6;
    case 2:
      a13 = 2;
      v52 = sub_25E61DA1C();
      v53 = v69;
      OUTLINED_FUNCTION_31_0(&type metadata for RootEventRecorder.EventType.CancelCodingKeys, &a13, v54, v55, v52);
      v57 = v70;
      v56 = v71;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_67();
      v58 = sub_25E61D9C8();
      v53 = v72;
      OUTLINED_FUNCTION_31_0(&type metadata for RootEventRecorder.EventType.ErrorCodingKeys, &a14, v59, v60, v58);
      v57 = v73;
      v56 = v74;
LABEL_6:
      (*(v57 + 8))(v53, v56);
      break;
    default:
      sub_25E61DAC4();
      sub_25E635FC0();
      (*(v64 + 8))(v25, v65);
      break;
  }

  (*(v47 + 8))(v50, v45);
  OUTLINED_FUNCTION_38_0();
}

uint64_t RootEventRecorder.EventType.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_81(a1);
  MEMORY[0x25F8B9DE0](v2);
  return sub_25E636130();
}

void RootEventRecorder.EventType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_37_0();
  v98 = v24;
  v28 = v27;
  v94 = v29;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93C8, &qword_25E63BCB8);
  OUTLINED_FUNCTION_5();
  v93 = v30;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v31);
  v96 = &v81 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93D0, &qword_25E63BCC0);
  OUTLINED_FUNCTION_5();
  v90 = v34;
  v91 = v33;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_41_0(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93D8, &qword_25E63BCC8);
  OUTLINED_FUNCTION_5();
  v88 = v38;
  v89 = v37;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v39);
  v41 = &v81 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93E0, &qword_25E63BCD0);
  OUTLINED_FUNCTION_5();
  v87 = v43;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39_0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93E8, &qword_25E63BCD8);
  OUTLINED_FUNCTION_5();
  v95 = v46;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_63(v28, v28[3]);
  sub_25E61D974();
  OUTLINED_FUNCTION_61();
  v48 = v98;
  sub_25E636140();
  if (v48)
  {
    goto LABEL_9;
  }

  v84 = v42;
  v85 = v26;
  v86 = v41;
  v49 = v96;
  v50 = v97;
  v98 = v28;
  v51 = v25;
  v52 = sub_25E635FA0();
  v56 = sub_25E61D4D8(v52, 0);
  if (v54 == v55 >> 1)
  {
LABEL_8:
    v67 = v95;
    v68 = sub_25E635E30();
    swift_allocError();
    v70 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93F0, &qword_25E63BCE0);
    *v70 = &type metadata for RootEventRecorder.EventType;
    sub_25E635F50();
    sub_25E635E20();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x277D84160], v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v51, v45);
    v28 = v98;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
LABEL_10:
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v83 = 0;
  if (v54 < (v55 >> 1))
  {
    v57 = *(v53 + v54);
    sub_25E61DB18(v54 + 1, v55 >> 1, v56, v53, v54, v55);
    v59 = v58;
    v61 = v60;
    swift_unknownObjectRelease();
    if (v59 == v61 >> 1)
    {
      v62 = v94;
      v82 = v57;
      v63 = v57;
      v64 = v93;
      switch(v63)
      {
        case 1:
          sub_25E61DA70();
          v71 = v86;
          OUTLINED_FUNCTION_28_0();
          v76 = v83;
          sub_25E635F40();
          if (v76)
          {
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
          v74 = v88;
          v73 = v89;
          goto LABEL_18;
        case 2:
          sub_25E61DA1C();
          v71 = v92;
          OUTLINED_FUNCTION_28_0();
          v72 = v83;
          sub_25E635F40();
          if (v72)
          {
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
          v74 = v90;
          v73 = v91;
LABEL_18:
          (*(v74 + 8))(v71, v73);
          goto LABEL_19;
        case 3:
          OUTLINED_FUNCTION_67();
          sub_25E61D9C8();
          OUTLINED_FUNCTION_28_0();
          v75 = v83;
          sub_25E635F40();
          if (v75)
          {
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
          (*(v64 + 8))(v49, v50);
          goto LABEL_19;
        default:
          sub_25E61DAC4();
          v65 = v85;
          OUTLINED_FUNCTION_28_0();
          v66 = v83;
          sub_25E635F40();
          if (v66)
          {
LABEL_16:
            v77 = OUTLINED_FUNCTION_8_4();
            v78(v77);
            swift_unknownObjectRelease();
            v28 = v98;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v87 + 8))(v65, v84);
LABEL_19:
          v79 = OUTLINED_FUNCTION_8_4();
          v80(v79);
          *v62 = v82;
          __swift_destroy_boxed_opaque_existential_0Tm(v98);
          break;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_25E616534(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v3 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
    if (v6 || (sub_25E636070() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701602409 && a2 == 0xE400000000000000;
      if (v7 || (sub_25E636070() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701013870 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_25E636070();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_25E616690(char a1)
{
  result = 1919251317;
  switch(a1)
  {
    case 1:
      result = 0x6D6574737973;
      break;
    case 2:
      result = 1701602409;
      break;
    case 3:
      result = 1701013870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E6166F0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9550, &qword_25E63CA68);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_63(a1, a1[3]);
  sub_25E61F2CC();
  OUTLINED_FUNCTION_61();
  sub_25E636150();
  OUTLINED_FUNCTION_12_2();
  sub_25E635FF0();
  if (!v1)
  {
    OUTLINED_FUNCTION_12_2();
    sub_25E635FF0();
    OUTLINED_FUNCTION_12_2();
    sub_25E635FF0();
    OUTLINED_FUNCTION_12_2();
    sub_25E635FF0();
  }

  return (*(v6 + 8))(v2, v4);
}

double sub_25E61688C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9560, &qword_25E63CA70);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_63(a1, a1[3]);
  sub_25E61F2CC();
  sub_25E636140();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v12 = 0;
    OUTLINED_FUNCTION_33(&v12);
    v2 = v5;
    v11 = 1;
    OUTLINED_FUNCTION_33(&v11);
    v10 = 2;
    OUTLINED_FUNCTION_33(&v10);
    v9 = 3;
    OUTLINED_FUNCTION_33(&v9);
    v7 = OUTLINED_FUNCTION_62();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v2;
}

uint64_t sub_25E616A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E616534(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E616AB0(uint64_t a1)
{
  v2 = sub_25E61F2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E616AEC(uint64_t a1)
{
  v2 = sub_25E61F2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25E616B28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E61688C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t RootEventRecorder.Event.uuid.getter()
{
  OUTLINED_FUNCTION_49_0();
  sub_25E6355A0();
  OUTLINED_FUNCTION_1_2();
  v0 = OUTLINED_FUNCTION_35_0();

  return v1(v0);
}

uint64_t RootEventRecorder.Event.label.getter()
{
  type metadata accessor for RootEventRecorder.Event(0);

  return OUTLINED_FUNCTION_35_0();
}

uint64_t RootEventRecorder.Event.type.getter()
{
  v2 = OUTLINED_FUNCTION_49_0();
  result = type metadata accessor for RootEventRecorder.Event(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t RootEventRecorder.Event.tag.getter()
{
  v2 = OUTLINED_FUNCTION_49_0();
  v3 = (v1 + *(type metadata accessor for RootEventRecorder.Event(v2) + 28));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t RootEventRecorder.Event.path.getter()
{
  v2 = OUTLINED_FUNCTION_49_0();
  v3 = (v1 + *(type metadata accessor for RootEventRecorder.Event(v2) + 36));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t sub_25E616CF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_25E636070() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_25E636070() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_25E636070() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6775156 && a2 == 0xE300000000000000;
        if (v8 || (sub_25E636070() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
          if (v9 || (sub_25E636070() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1752457584 && a2 == 0xE400000000000000;
            if (v10 || (sub_25E636070() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C6C616D72656874 && a2 == 0xEC0000006C657665;
              if (v11 || (sub_25E636070() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x64616F4C757063 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_25E636070();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25E616F78(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_81(a1);
  MEMORY[0x25F8B9DE0](v1);
  return sub_25E636130();
}

uint64_t sub_25E616FB8(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 6775156;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 1752457584;
      break;
    case 6:
      result = 0x4C6C616D72656874;
      break;
    case 7:
      result = 0x64616F4C757063;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25E617084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E616CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25E6170AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E616F70();
  *a1 = result;
  return result;
}

uint64_t sub_25E6170D4(uint64_t a1)
{
  v2 = sub_25E61DBB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E617110(uint64_t a1)
{
  v2 = sub_25E61DBB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RootEventRecorder.Event.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF93F8, &qword_25E63BCE8);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_63(a1, a1[3]);
  sub_25E61DBB4();
  OUTLINED_FUNCTION_61();
  sub_25E636150();
  sub_25E6355A0();
  OUTLINED_FUNCTION_17_3();
  sub_25E61F320(v8);
  OUTLINED_FUNCTION_12_2();
  sub_25E636000();
  if (!v1)
  {
    type metadata accessor for RootEventRecorder.Event(0);
    OUTLINED_FUNCTION_12_2();
    sub_25E635FE0();
    sub_25E61DC08();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();
    OUTLINED_FUNCTION_67();
    sub_25E61DC5C();
    OUTLINED_FUNCTION_65();

    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();

    OUTLINED_FUNCTION_12_2();
    sub_25E635FF0();
    sub_25E61DCB0();
    OUTLINED_FUNCTION_65();

    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();

    type metadata accessor for ThermalState(0);
    OUTLINED_FUNCTION_14_3();
    sub_25E61F320(v9);
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E636000();
    sub_25E61DD04();
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_12_2();
    sub_25E635FD0();
  }

  return (*(v6 + 8))(v2, v4);
}

void RootEventRecorder.Event.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_37_0();
  v25 = v24;
  v48 = v26;
  v27 = sub_25E6355A0();
  OUTLINED_FUNCTION_5();
  v49 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_3();
  v32 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9438, &qword_25E63BCF0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v33);
  v50 = type metadata accessor for RootEventRecorder.Event(0);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_63(v25, v25[3]);
  sub_25E61DBB4();
  sub_25E636140();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  else
  {
    LOBYTE(v51) = 0;
    OUTLINED_FUNCTION_17_3();
    sub_25E61F320(v38);
    sub_25E635F90();
    (*(v49 + 32))(v37, v32, v27);
    OUTLINED_FUNCTION_59(1);
    v39 = sub_25E635F70();
    v40 = (v37 + v50[5]);
    *v40 = v39;
    v40[1] = v41;
    sub_25E61DD58();
    OUTLINED_FUNCTION_7_4();
    sub_25E635F90();
    *(v37 + v50[6]) = 0;
    OUTLINED_FUNCTION_67();
    sub_25E61DDAC();
    OUTLINED_FUNCTION_7_4();
    sub_25E635F90();
    *(v37 + v50[7]) = v51;
    OUTLINED_FUNCTION_59(4);
    sub_25E635F80();
    *(v37 + v50[8]) = v42;
    sub_25E61DE00();
    OUTLINED_FUNCTION_7_4();
    sub_25E635F90();
    *(v37 + v50[9]) = v51;
    type metadata accessor for ThermalState(0);
    OUTLINED_FUNCTION_14_3();
    sub_25E61F320(v43);
    sub_25E635F90();
    *(v37 + v50[10]) = v51;
    sub_25E61DE54();
    OUTLINED_FUNCTION_7_4();
    sub_25E635F60();
    v44 = OUTLINED_FUNCTION_8_4();
    v45(v44);
    v46 = v37 + v50[11];
    *v46 = v51;
    *(v46 + 16) = v52;
    *(v46 + 32) = v53;
    sub_25E61DEC8(v37, v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    OUTLINED_FUNCTION_5_4();
    sub_25E61DF20(v37, v47);
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t RootEventRecorder.referenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_referenceDate;
  sub_25E635570();
  OUTLINED_FUNCTION_1_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_25E617A64()
{
  v5 = *MEMORY[0x277D85DE8];
  *host_info_out = 0;
  v4 = 0;
  host_info_outCnt = 4;
  v0 = MEMORY[0x25F8BA170]();
  if (host_statistics(v0, 3, host_info_out, &host_info_outCnt))
  {
    return 0;
  }

  else
  {
    return *host_info_out;
  }
}

int *_s22PhotosIntelligenceCore13EventRecorderPA2A04RootdE0CRszrlE6ignoreQrvgZ_0@<X0>(uint64_t a2@<X8>)
{
  sub_25E635590();
  result = type metadata accessor for RootEventRecorder.EventState(0);
  v4 = a2 + result[5];
  *v4 = "";
  *(v4 + 8) = 0;
  *(v4 + 16) = 2;
  v5 = (a2 + result[6]);
  *v5 = 0x65726F6E6769;
  v5[1] = 0xE600000000000000;
  v6 = (a2 + result[7]);
  v7 = MEMORY[0x277D84F90];
  *v6 = MEMORY[0x277D84F90];
  v6[1] = v7;
  *(a2 + result[8]) = 0;
  *(a2 + result[9]) = 0;
  return result;
}

uint64_t RootEventRecorder.__allocating_init(options:defaultTag:logger:)(char *a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  RootEventRecorder.init(options:defaultTag:logger:)(a1, a2, a3);
  return v6;
}

uint64_t RootEventRecorder.init(options:defaultTag:logger:)(char *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v45 = sub_25E635710();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v43 = v11 - v10;
  v46 = sub_25E635690();
  OUTLINED_FUNCTION_5();
  v44 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_41_0(v14);
  v15 = sub_25E6355A0();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  v21 = v20 - v19;
  v22 = *a1;
  v40 = a2[1];
  v41 = *a2;
  *(v4 + 24) = 0;
  v23 = MEMORY[0x277D84F90];
  *(v4 + 32) = MEMORY[0x277D84F90];
  *(v4 + 40) = 0;
  *(v4 + 48) = MEMORY[0x277D84F98];
  sub_25E635560();
  v24 = (v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier);
  sub_25E635590();
  v25 = sub_25E635580();
  v27 = v26;
  (*(v17 + 8))(v21, v15);
  *v24 = sub_25E6144F0(8, v25, v27);
  v24[1] = v28;
  v24[2] = v29;
  v24[3] = v30;
  v31 = (v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  *v31 = v23;
  v31[1] = v23;
  v32 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_processInfo;
  *(v4 + v32) = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v33 = v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_previousCPULoadInfo;
  v34 = sub_25E617A64();
  *v33 = 0;
  *(v33 + 4) = v34;
  *(v33 + 12) = v35;
  *(v33 + 16) = v36;
  *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_warningLimit) = 0x3FB999999999999ALL;
  v37 = (v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag);
  *v37 = v41;
  v37[1] = v40;
  v38 = *(v8 + 16);
  v38(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_logger, a3, v45);
  v38(v43, a3, v45);
  sub_25E635670();
  (*(v8 + 8))(a3, v45);
  (*(v44 + 32))(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_signposter, v42, v46);
  *(v4 + 16) = v22 & 1;
  *(v4 + 18) = (v22 & 2) != 0;
  *(v4 + 17) = (v22 & 4) != 0;
  return v4;
}

double sub_25E617F30@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_previousCPULoadInfo);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_previousCPULoadInfo));
  sub_25E617FCC(&v3[1]._os_unfair_lock_opaque, v7);
  os_unfair_lock_unlock(v3);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_25E617FCC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25E617A64();
  v7 = *a1;
  v8 = a1[1];
  v9 = (result | 0x100000000) - v7;
  v10 = result >= v7;
  v11 = (result - v7);
  if (v10)
  {
    v9 = v11;
  }

  v12 = (HIDWORD(result) | 0x100000000) - v8;
  v10 = HIDWORD(result) >= v8;
  v13 = (HIDWORD(result) - v8);
  if (v10)
  {
    v12 = v13;
  }

  v14 = a1[2];
  v15 = a1[3];
  v16 = (v5 | 0x100000000) - v14;
  v10 = v5 >= v14;
  v17 = v5 - v14;
  if (v10)
  {
    v16 = v17;
  }

  v18 = v6 - v15;
  if (v6 < v15)
  {
    v18 = (v6 | 0x100000000) - v15;
  }

  v19 = v12 + v9 + v16 + v18;
  if (v19)
  {
    *a1 = result;
    a1[2] = v5;
    a1[3] = v6;
    v20 = v9 / v19;
    v21 = v12 / v19;
    v22 = v16 / v19;
    v23 = v18 / v19;
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
  }

  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v19 == 0;
  return result;
}

uint64_t RootEventRecorder.recordBeginning(of:tag:)()
{
  OUTLINED_FUNCTION_37();
  v13 = *v1;
  v11 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  v12 = *(v0 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path + 8);

  OUTLINED_FUNCTION_46_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13);
}

uint64_t sub_25E618150@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v92 = a3;
  *&v99 = a2;
  v100 = a1;
  v90 = a6;
  v98 = type metadata accessor for RootEventRecorder.Event(0);
  v10 = MEMORY[0x28223BE20](v98);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v85 - v13;
  v89 = sub_25E6355A0();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E635660();
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v23 = &v85 - v22;
  v25 = *a4;
  v24 = a4[1];
  v26 = *a5;
  v27 = a5[1];
  v28 = v100;
  v29 = *(v7 + 16);
  v96 = v27;
  v97 = v26;
  v95 = v14;
  v93 = 0;
  v94 = v24;
  v91 = v25;
  if (v29 == 1)
  {
    v93 = v21;
    v30 = v20;
    v85 = v19;
    sub_25E635650();
    v86 = v7;
    v31 = sub_25E635680();
    v32 = sub_25E635D10();
    result = sub_25E635D20();
    if ((result & 1) == 0)
    {
LABEL_11:

      v37 = v85;
      (*(v30 + 16))(v93, v23, v85);
      sub_25E6356D0();
      swift_allocObject();
      v93 = sub_25E6356C0();
      (*(v30 + 8))(v23, v37);
      v28 = v100;
      v7 = v86;
      v27 = v96;
      v26 = v97;
      v24 = v94;
      v14 = v95;
      v25 = v91;
      goto LABEL_12;
    }

    if ((v92 & 1) == 0)
    {
      v34 = v100;
      if (v100)
      {
LABEL_10:
        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = sub_25E635640();
        _os_signpost_emit_with_name_impl(&dword_25E5F0000, v31, v32, v36, v34, "", v35, 2u);
        MEMORY[0x25F8BA800](v35, -1, -1);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v100))
    {
      __break(1u);
    }

    else
    {
      if ((v100 & 0xFFFFF800) == 0xD800)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if (v100 >> 16 <= 0x10)
      {
        v34 = &v101;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  v87 = v16;
  sub_25E635590();
  v105[0] = 0;
  v103 = v25;
  v104 = v24;
  v102[0] = v26;
  v102[1] = v27;
  v38 = v99;
  v39 = v92;
  sub_25E618B94(v16, v28, v99, v92, v105, &v103, v102);
  sub_25E61DEC8(v14, v12);

  v40 = sub_25E6356F0();
  v41 = sub_25E635CF0();

  LODWORD(v86) = v41;
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v103 = v85;
    *v42 = 136315906;
    v43 = MEMORY[0x25F8B9500](*(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 8), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 16), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 24));
    v45 = sub_25E6011D4(v43, v44, &v103);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    v102[0] = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    sub_25E61F3E8(&qword_280CB2808);
    v46 = sub_25E6357A0();
    v48 = v47;
    v49 = v39;

    v50 = sub_25E6011D4(v46, v48, &v103);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2080;
    v51 = sub_25E635DF0();
    v53 = sub_25E6011D4(v51, v52, &v103);

    *(v42 + 24) = v53;
    *(v42 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_25E63A3E0;
    v55 = *&v12[*(v98 + 32)];
    *(v54 + 56) = MEMORY[0x277D839F8];
    *(v54 + 64) = MEMORY[0x277D83A80];
    *(v54 + 32) = v55;
    v56 = sub_25E6357F0();
    v58 = v57;
    sub_25E61DF20(v12, type metadata accessor for RootEventRecorder.Event);
    v59 = sub_25E6011D4(v56, v58, &v103);

    *(v42 + 34) = v59;
    _os_log_impl(&dword_25E5F0000, v40, v86, "EventRecorder (%s): [%s] - Beginning %s at %s", v42, 0x2Au);
    v60 = v85;
    swift_arrayDestroy();
    MEMORY[0x25F8BA800](v60, -1, -1);
    v61 = v42;
    v38 = v99;
    MEMORY[0x25F8BA800](v61, -1, -1);
  }

  else
  {

    sub_25E61DF20(v12, type metadata accessor for RootEventRecorder.Event);
    v49 = v39;
  }

  v63 = v95;
  v62 = v96;
  if (*(v7 + 17) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9470, &qword_25E63BCF8);
    v64 = swift_allocObject();
    v99 = xmmword_25E63A3E0;
    *(v64 + 16) = xmmword_25E63A3E0;
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_25E635DE0();

    v103 = 0x636552746E657645;
    v104 = 0xEF2820726564726FLL;
    v65 = MEMORY[0x25F8B9500](*(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 8), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 16), *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_eventSessionIdentifier + 24));
    MEMORY[0x25F8B9540](v65);

    MEMORY[0x25F8B9540](1528838697, 0xE400000000000000);
    v102[0] = v97;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    sub_25E61F3E8(&qword_280CB2808);
    v66 = sub_25E6357A0();
    v68 = v67;

    MEMORY[0x25F8B9540](v66, v68);

    MEMORY[0x25F8B9540](0x69676542202D205DLL, 0xEE0020676E696E6ELL);
    v69 = sub_25E635DF0();
    MEMORY[0x25F8B9540](v69);

    MEMORY[0x25F8B9540](544497952, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v70 = swift_allocObject();
    *(v70 + 16) = v99;
    v71 = *(v63 + *(v98 + 32));
    *(v70 + 56) = MEMORY[0x277D839F8];
    *(v70 + 64) = MEMORY[0x277D83A80];
    *(v70 + 32) = v71;
    v72 = sub_25E6357F0();
    MEMORY[0x25F8B9540](v72);

    v73 = v103;
    v74 = v104;
    *(v64 + 56) = MEMORY[0x277D837D0];
    *(v64 + 32) = v73;
    *(v64 + 40) = v74;
    sub_25E6360F0();
  }

  v75 = v97;
  v103 = v97;
  v104 = v62;
  v76 = *(v63 + *(v98 + 32));
  v77 = v100;
  sub_25E618DEC(v76);
  sub_25E61DF20(v63, type metadata accessor for RootEventRecorder.Event);
  if (v94)
  {
    v78 = v94;
    v79 = v91;
  }

  else
  {
    v79 = *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag);
    v78 = *(v7 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag + 8);
  }

  v80 = v90;
  (*(v88 + 32))(v90, v87, v89);
  v81 = type metadata accessor for RootEventRecorder.EventState(0);
  v82 = v80 + v81[5];
  *v82 = v77;
  *(v82 + 8) = v38;
  *(v82 + 16) = v49;
  v83 = (v80 + v81[6]);
  *v83 = v79;
  v83[1] = v78;
  v84 = (v80 + v81[7]);
  *v84 = v75;
  v84[1] = v62;
  *(v80 + v81[8]) = v76;
  *(v80 + v81[9]) = v93;
}

void sub_25E618B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_72();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v47 = v21;
  v23 = v22;
  v50 = sub_25E635570();
  OUTLINED_FUNCTION_5();
  v48 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_3();
  v28 = v27 - v26;
  v52 = *v14;
  v29 = *v12;
  v30 = v12[1];
  v31 = *v10;
  v51 = v10[1];
  v32 = sub_25E615460(v20, v18, v16);
  v49 = v33;
  sub_25E617F30(v53);
  if (v30)
  {
    v34 = v30;
    v35 = v29;
  }

  else
  {
    v35 = *(v8 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag);
    v34 = *(v8 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_defaultTag + 8);
  }

  sub_25E6355A0();
  OUTLINED_FUNCTION_1_2();
  (*(v36 + 16))(v23, v47);

  sub_25E635560();
  sub_25E635540();
  v38 = v37;
  (*(v48 + 8))(v28, v50);
  v39 = *(v8 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_processInfo);

  [v39 thermalState];
  v40 = OUTLINED_FUNCTION_24_0();
  v41 = type metadata accessor for RootEventRecorder.Event(v40);
  v42 = (v23 + v41[5]);
  *v42 = v32;
  v42[1] = v49;
  *(v23 + v41[6]) = v52;
  v43 = (v23 + v41[7]);
  *v43 = v35;
  v43[1] = v34;
  *(v23 + v41[8]) = v38;
  v44 = (v23 + v41[9]);
  *v44 = v31;
  v44[1] = v51;
  *(v23 + v41[10]) = v39;
  v45 = v23 + v41[11];
  v46 = v53[1];
  *v45 = v53[0];
  *(v45 + 16) = v46;
  *(v45 + 32) = v54;
  if (*(v8 + 18) == 1)
  {
    os_unfair_lock_lock((v8 + 24));
    sub_25E61AA38((v8 + 32), v23);
    os_unfair_lock_unlock((v8 + 24));
  }

  OUTLINED_FUNCTION_73();
}

void sub_25E618DEC(double a1)
{
  if (*(v2 + 18) == 1)
  {
    OUTLINED_FUNCTION_37();
    v8 = *v6;
    v7 = v6[1];
    os_unfair_lock_lock((v2 + 40));
    sub_25E61AB10((v2 + 48), v8, v7, a1, v2, v4, v3, v1);
    OUTLINED_FUNCTION_78();

    os_unfair_lock_unlock(v9);
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }
}

void RootEventRecorder.recordEnd(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_72();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_24_0();
  v11 = type metadata accessor for RootEventRecorder.EventState(v10);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v160 = (v13 - v14);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_0();
  v159 = v16;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v17);
  *&v164 = &v147 - v18;
  v19 = type metadata accessor for RootEventRecorder.Event(0);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_0();
  v165 = v25;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v26);
  v28 = &v147 - v27;
  sub_25E6356A0();
  OUTLINED_FUNCTION_5();
  v161 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  sub_25E635660();
  OUTLINED_FUNCTION_5();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_3();
  v37 = v36 - v35;
  LODWORD(v35) = *(v8 + 16);
  v162 = v11;
  v163 = v8;
  v157 = v8;
  v158 = v28;
  v166 = v19;
  v156 = v23;
  if (v35 == 1)
  {
    v155 = v34;
    if (!*(v8 + v11[9]))
    {
LABEL_26:
      OUTLINED_FUNCTION_43_0();
      v147 = 223;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_58(v140, v141, v142, 64, v143, v144, v145, v146, v147, v148);
      __break(1u);
      return;
    }

    v38 = v8 + v11[5];
    v39 = *v38;
    v40 = *(v38 + 16);

    v41 = sub_25E635680();
    sub_25E6356B0();
    v42 = sub_25E635D00();
    if ((sub_25E635D20() & 1) == 0)
    {
LABEL_15:

      (*(v32 + 8))(v37, v155);
      v11 = v162;
      v9 = v163;
      v8 = v157;
      v28 = v158;
      v23 = v156;
      goto LABEL_16;
    }

    if (v40)
    {
      if (!(v39 >> 32))
      {
        if ((v39 & 0xFFFFF800) == 0xD800)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v39 >> 16 <= 0x10)
        {
          v39 = &v167;
LABEL_11:
          v43 = v42;

          sub_25E6356E0();

          v44 = OUTLINED_FUNCTION_62();
          v46 = v39;
          if (v45(v44) == *MEMORY[0x277D85B00])
          {
            v47 = "[Error] Interval already ended";
          }

          else
          {
            v48 = OUTLINED_FUNCTION_62();
            v49(v48);
            v47 = "";
          }

          v50 = swift_slowAlloc();
          *v50 = 0;
          v51 = sub_25E635640();
          _os_signpost_emit_with_name_impl(&dword_25E5F0000, v41, v43, v51, v46, v47, v50, 2u);
          OUTLINED_FUNCTION_9();
          goto LABEL_15;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      if (v39)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_16:
  v52 = v11[6];
  v53 = v8 + v11[5];
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = *(v53 + 16);
  v171[0] = 1;
  v57 = *(v8 + v52 + 8);
  v169 = *(v8 + v52);
  v170 = v57;
  v58 = (v8 + v11[7]);
  v60 = *v58;
  v59 = v58[1];
  v153 = v58;
  v168[0] = v60;
  v168[1] = v59;

  v155 = v54;
  v154 = v55;
  LODWORD(v161) = v56;
  sub_25E618B94(v8, v54, v55, v56, v171, &v169, v168);

  v152 = v60;

  sub_25E61DEC8(v8, v164);
  v61 = v159;
  sub_25E61DEC8(v8, v159);
  sub_25E61DEC8(v28, v165);
  sub_25E61DEC8(v28, v23);
  v62 = v160;
  sub_25E61DEC8(v8, v160);

  v63 = sub_25E6356F0();
  v64 = sub_25E635CF0();

  v65 = v9;
  if (os_log_type_enabled(v63, v64))
  {
    v66 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v169 = v151;
    *v66 = 136316162;
    OUTLINED_FUNCTION_80();
    v69 = sub_25E6011D4(v67, v68, &v169);

    *(v66 + 4) = v69;
    *(v66 + 12) = 2080;
    v150 = v63;
    v70 = v162;
    v71 = v162[7];
    v149 = v64;
    v72 = v164;
    v168[0] = *(v164 + v71);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    v73 = v61;
    OUTLINED_FUNCTION_2_8();
    sub_25E61F3E8(v74);
    OUTLINED_FUNCTION_9_3();
    v75 = sub_25E6357A0();
    v77 = v76;

    OUTLINED_FUNCTION_6_3();
    sub_25E61DF20(v72, v78);
    v79 = sub_25E6011D4(v75, v77, &v169);

    *(v66 + 14) = v79;
    *(v66 + 22) = 2080;
    v80 = sub_25E635DF0();
    v82 = v81;
    sub_25E61DF20(v73, &qword_27FCF9198);
    v83 = sub_25E6011D4(v80, v82, &v169);

    *(v66 + 24) = v83;
    *(v66 + 32) = 2080;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v85 = OUTLINED_FUNCTION_48_0(v84);
    v164 = xmmword_25E63A3E0;
    *(v85 + 16) = xmmword_25E63A3E0;
    OUTLINED_FUNCTION_71();
    v86 = v165;
    v88 = *(v165 + v87);
    *(v89 + 56) = MEMORY[0x277D839F8];
    v90 = MEMORY[0x277D83A80];
    *(v89 + 64) = MEMORY[0x277D83A80];
    v93 = OUTLINED_FUNCTION_18_2(v89, v88, v91, v92);
    v95 = v94;
    sub_25E61DF20(v86, type metadata accessor for RootEventRecorder.Event);
    v96 = sub_25E6011D4(v93, v95, &v169);
    v97 = MEMORY[0x277D839F8];

    *(v66 + 34) = v96;
    *(v66 + 42) = 2080;
    v98 = OUTLINED_FUNCTION_48_0(v84);
    *(v98 + 16) = v164;
    OUTLINED_FUNCTION_71();
    v99 = v156;
    v101 = *(v156 + v100) - *(v62 + v70[8]);
    *(v102 + 56) = v97;
    *(v102 + 64) = v90;
    v105 = OUTLINED_FUNCTION_57(v102, v101, v103, v104);
    v107 = v106;
    sub_25E61DF20(v62, &qword_27FCF9198);
    sub_25E61DF20(v99, type metadata accessor for RootEventRecorder.Event);
    v108 = sub_25E6011D4(v105, v107, &v169);
    v65 = v163;

    *(v66 + 44) = v108;
    v109 = v150;
    _os_log_impl(&dword_25E5F0000, v150, v149, "EventRecorder (%s): [%s] - Ending %s at %s, lasted %s seconds", v66, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    v28 = v158;
    OUTLINED_FUNCTION_9();
  }

  else
  {

    OUTLINED_FUNCTION_6_3();
    sub_25E61DF20(v62, v110);
    OUTLINED_FUNCTION_16_3();
    sub_25E61DF20(v23, v111);
    sub_25E61DF20(v165, v62);
    sub_25E61DF20(v61, CLSIVSNSFWModel.superclass);
    sub_25E61DF20(v164, CLSIVSNSFWModel.superclass);
  }

  if (*(v65 + 17) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9470, &qword_25E63BCF8);
    v112 = swift_allocObject();
    OUTLINED_FUNCTION_51_0(v112, xmmword_25E63A3E0);
    sub_25E635DE0();
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_80();
    MEMORY[0x25F8B9540]();

    MEMORY[0x25F8B9540](1528838697, 0xE400000000000000);
    v168[0] = v152;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    OUTLINED_FUNCTION_2_8();
    sub_25E61F3E8(v113);
    OUTLINED_FUNCTION_9_3();
    v114 = sub_25E6357A0();
    v116 = v115;

    MEMORY[0x25F8B9540](v114, v116);

    MEMORY[0x25F8B9540](0x69646E45202D205DLL, 0xEB0000000020676ELL);
    OUTLINED_FUNCTION_34_0();
    v117 = sub_25E635DF0();
    MEMORY[0x25F8B9540](v117);

    MEMORY[0x25F8B9540](544497952, 0xE400000000000000);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v119 = OUTLINED_FUNCTION_48_0(v118);
    OUTLINED_FUNCTION_23_0(v119);
    OUTLINED_FUNCTION_71();
    v121 = *&v28[v120];
    v122 = MEMORY[0x277D839F8];
    *(v123 + 56) = MEMORY[0x277D839F8];
    v124 = MEMORY[0x277D83A80];
    *(v123 + 64) = MEMORY[0x277D83A80];
    v127 = OUTLINED_FUNCTION_74(v123, v125, v126);
    MEMORY[0x25F8B9540](v127);

    OUTLINED_FUNCTION_45_0();
    v128 = OUTLINED_FUNCTION_48_0(v118);
    OUTLINED_FUNCTION_23_0(v128);
    v129 = v121 - *(v157 + v162[8]);
    *(v130 + 56) = v122;
    *(v130 + 64) = v124;
    v133 = OUTLINED_FUNCTION_57(v130, v129, v131, v132);
    MEMORY[0x25F8B9540](v133);

    OUTLINED_FUNCTION_54_0();
    v134 = v169;
    v135 = v170;
    v112[3].n128_u64[1] = MEMORY[0x277D837D0];
    v112[2].n128_u64[0] = v134;
    v112[2].n128_u64[1] = v135;
    OUTLINED_FUNCTION_79(v112);
  }

  v136 = v153[1];
  v169 = *v153;
  v170 = v136;
  OUTLINED_FUNCTION_71();
  v138 = *&v28[v137];

  OUTLINED_FUNCTION_34_0();
  sub_25E6199A0(v138);

  OUTLINED_FUNCTION_5_4();
  sub_25E61DF20(v28, v139);
  OUTLINED_FUNCTION_73();
}

void sub_25E6199A0(double a1)
{
  if (*(v2 + 18) == 1)
  {
    OUTLINED_FUNCTION_37();
    v8 = *v6;
    v7 = v6[1];
    os_unfair_lock_lock((v2 + 40));
    sub_25E61B7DC((v2 + 48), v8, v7, v4, v3, v1, a1);
    OUTLINED_FUNCTION_78();

    os_unfair_lock_unlock(v9);
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }
}

void RootEventRecorder.execute<A>(as:tag:block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v4 = type metadata accessor for RootEventRecorder.EventState(0);
  v5 = OUTLINED_FUNCTION_52_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v8 = v7 - v6;
  v9 = RootEventRecorder.recordBeginning(of:tag:)();
  v3(v9);
  RootEventRecorder.recordEnd(of:)(v8, v10, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v8, v17);
  OUTLINED_FUNCTION_38_0();
}

uint64_t RootEventRecorder.execute<A>(as:tag:block:)()
{
  OUTLINED_FUNCTION_25_0();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 104) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = type metadata accessor for RootEventRecorder.EventState(0);
  OUTLINED_FUNCTION_52_0(v10);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = *v3;
  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_25E619BC8()
{
  RootEventRecorder.recordBeginning(of:tag:)();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_50_0(v1);

  return v3(v2);
}

uint64_t sub_25E619CD0()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *v1;
  OUTLINED_FUNCTION_44_0();
  *v3 = v2;
  *(v4 + 96) = v0;

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25E619DD4()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(v0 + 64);
  RootEventRecorder.recordEnd(of:)(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v1, v9);

  OUTLINED_FUNCTION_53_0();

  return v10();
}

uint64_t sub_25E619E48()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(v0 + 64);
  RootEventRecorder.recordEnd(of:)(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v1, v9);

  OUTLINED_FUNCTION_53_0();

  return v10();
}

void RootEventRecorder.cancelRecord(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_72();
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for RootEventRecorder.EventState(0);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v147 = v14 - v15;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v16);
  *&v146 = &v138 - v17;
  v148 = type metadata accessor for RootEventRecorder.Event(0);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v154 = v19 - v20;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_0();
  v153 = v22;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_0();
  v145 = v24;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v25);
  v27 = &v138 - v26;
  sub_25E6356A0();
  OUTLINED_FUNCTION_5();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  sub_25E635660();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  v32 = *(v9 + 16) == 1;
  v151 = v27;
  v152 = v9;
  v144 = v11;
  v150 = v12;
  if (v32)
  {
    v149 = v29;
    if (!*(v11 + v12[9]))
    {
LABEL_27:
      OUTLINED_FUNCTION_43_0();
      v138 = 254;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_58(v131, v132, v133, 67, v134, v135, v136, v137, v138, v139);
      __break(1u);
      return;
    }

    v33 = v11 + v12[5];
    v34 = *v33;
    v35 = *(v33 + 16);

    v36 = sub_25E635680();
    sub_25E6356B0();
    LODWORD(v143) = sub_25E635D00();
    if ((sub_25E635D20() & 1) == 0)
    {
LABEL_16:

      v45 = OUTLINED_FUNCTION_64();
      v46(v45);
      v27 = v151;
      v9 = v152;
      v11 = v144;
      v12 = v150;
      goto LABEL_17;
    }

    if (v35)
    {
      if (!(v34 >> 32))
      {
        if ((v34 & 0xFFFFF800) == 0xD800)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v34 >> 16 <= 0x10)
        {
          v37 = &v155;
          goto LABEL_12;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      if (v34)
      {
        v37 = v34;
LABEL_12:

        sub_25E6356E0();

        v38 = OUTLINED_FUNCTION_34_0();
        if (v39(v38) == *MEMORY[0x277D85B00])
        {
          v40 = "[Error] Interval already ended";
        }

        else
        {
          v41 = OUTLINED_FUNCTION_34_0();
          v42(v41);
          v40 = "";
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = sub_25E635640();
        _os_signpost_emit_with_name_impl(&dword_25E5F0000, v36, v143, v44, v37, v40, v43, 2u);
        OUTLINED_FUNCTION_9();
        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v47 = v12[6];
  v48 = v11 + v12[5];
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = *(v48 + 16);
  v159[0] = 2;
  v52 = v11 + v47;
  v53 = v11;
  v54 = *(v11 + v47);
  v55 = *(v52 + 8);
  v157 = v54;
  v158 = v55;
  v56 = (v53 + v12[7]);
  v57 = *v56;
  v58 = v56[1];
  v141 = v56;
  v156[0] = v57;
  v156[1] = v58;

  v143 = v49;
  v142 = v50;
  LODWORD(v149) = v51;
  sub_25E618B94(v53, v49, v50, v51, v159, &v157, v156);

  v59 = v145;
  sub_25E61DEC8(v27, v145);
  v60 = v146;
  sub_25E61DEC8(v53, v146);
  v61 = v153;
  sub_25E61DEC8(v27, v153);
  v62 = v154;
  sub_25E61DEC8(v27, v154);
  v63 = v53;
  v64 = v147;
  sub_25E61DEC8(v63, v147);

  v65 = sub_25E6356F0();
  LODWORD(v49) = sub_25E635CF0();

  v140 = v49;
  v66 = v9;
  if (os_log_type_enabled(v65, v49))
  {
    v67 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v157 = v139;
    *v67 = 136316162;
    OUTLINED_FUNCTION_80();
    sub_25E6011D4(v68, v69, &v157);
    v138 = v65;
    OUTLINED_FUNCTION_65();

    *(v67 + 4) = v65;
    *(v67 + 12) = 2080;
    v70 = v148;
    v156[0] = *(v59 + *(v148 + 36));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    OUTLINED_FUNCTION_2_8();
    sub_25E61F3E8(v71);
    OUTLINED_FUNCTION_9_3();
    sub_25E6357A0();

    sub_25E61DF20(v59, type metadata accessor for RootEventRecorder.Event);
    v72 = OUTLINED_FUNCTION_34_0();
    v75 = sub_25E6011D4(v72, v73, v74);

    *(v67 + 14) = v75;
    *(v67 + 22) = 2080;
    v76 = v150;
    v77 = v64;
    v78 = sub_25E635DF0();
    v80 = v79;
    sub_25E61DF20(v60, type metadata accessor for RootEventRecorder.EventState);
    v81 = sub_25E6011D4(v78, v80, &v157);

    *(v67 + 24) = v81;
    *(v67 + 32) = 2080;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v83 = OUTLINED_FUNCTION_48_0(v82);
    v146 = xmmword_25E63A3E0;
    *(v83 + 16) = xmmword_25E63A3E0;
    v84 = v153;
    v85 = *(v153->n128_f64 + *(v70 + 32));
    *(v83 + 56) = MEMORY[0x277D839F8];
    *(v83 + 64) = MEMORY[0x277D83A80];
    OUTLINED_FUNCTION_18_2(v83, v85, v86, v83);
    sub_25E61DF20(v84, type metadata accessor for RootEventRecorder.Event);
    v87 = OUTLINED_FUNCTION_34_0();
    v90 = sub_25E6011D4(v87, v88, v89);
    v91 = v70;

    *(v67 + 34) = v90;
    *(v67 + 42) = 2080;
    v92 = v152;
    v93 = OUTLINED_FUNCTION_48_0(v82);
    *(v93 + 16) = v146;
    v94 = v154;
    v95 = *(v154 + *(v91 + 32)) - *(v77 + v76[8]);
    *(v93 + 56) = MEMORY[0x277D839F8];
    *(v93 + 64) = MEMORY[0x277D83A80];
    v97 = OUTLINED_FUNCTION_18_2(v93, v95, v96, v93);
    v99 = v98;
    sub_25E61DF20(v77, type metadata accessor for RootEventRecorder.EventState);
    sub_25E61DF20(v94, type metadata accessor for RootEventRecorder.Event);
    v100 = sub_25E6011D4(v97, v99, &v157);
    v66 = v92;

    *(v67 + 44) = v100;
    v101 = v138;
    _os_log_impl(&dword_25E5F0000, v138, v140, "EventRecorder (%s): [%s] - Canceling %s at %s, lasted %s seconds", v67, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_9();
  }

  else
  {

    OUTLINED_FUNCTION_6_3();
    sub_25E61DF20(v64, v102);
    OUTLINED_FUNCTION_16_3();
    sub_25E61DF20(v62, v103);
    sub_25E61DF20(v61, v65);
    sub_25E61DF20(v60, CLSIVSNSFWModel.superclass);
    sub_25E61DF20(v59, v65);
    v91 = v148;
  }

  v104 = v151;
  if (*(v66 + 17) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9470, &qword_25E63BCF8);
    v153 = swift_allocObject();
    OUTLINED_FUNCTION_51_0(v153, xmmword_25E63A3E0);
    sub_25E635DE0();
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_80();
    MEMORY[0x25F8B9540]();

    MEMORY[0x25F8B9540](1528838697, 0xE400000000000000);
    v156[0] = *(v104 + *(v91 + 36));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    OUTLINED_FUNCTION_2_8();
    sub_25E61F3E8(v105);
    OUTLINED_FUNCTION_9_3();
    v106 = sub_25E6357A0();
    v108 = v107;

    MEMORY[0x25F8B9540](v106, v108);

    MEMORY[0x25F8B9540](0x636E6143202D205DLL, 0xEE0020676E696C65);
    v109 = sub_25E635DF0();
    MEMORY[0x25F8B9540](v109);

    MEMORY[0x25F8B9540](544497952, 0xE400000000000000);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
    v111 = OUTLINED_FUNCTION_48_0(v110);
    OUTLINED_FUNCTION_23_0(v111);
    v112 = *(v104 + *(v91 + 32));
    v113 = MEMORY[0x277D839F8];
    *(v114 + 56) = MEMORY[0x277D839F8];
    v115 = MEMORY[0x277D83A80];
    *(v114 + 64) = MEMORY[0x277D83A80];
    v118 = OUTLINED_FUNCTION_74(v114, v116, v117);
    MEMORY[0x25F8B9540](v118);

    OUTLINED_FUNCTION_45_0();
    v119 = OUTLINED_FUNCTION_48_0(v110);
    OUTLINED_FUNCTION_23_0(v119);
    v120 = v112 - *(v144 + v150[8]);
    *(v121 + 56) = v113;
    *(v121 + 64) = v115;
    v124 = OUTLINED_FUNCTION_18_2(v121, v120, v122, v123);
    MEMORY[0x25F8B9540](v124);

    OUTLINED_FUNCTION_54_0();
    v125 = v157;
    v126 = v158;
    v127 = v153;
    v153[3].n128_u64[1] = MEMORY[0x277D837D0];
    v127[2].n128_u64[0] = v125;
    v127[2].n128_u64[1] = v126;
    OUTLINED_FUNCTION_79(v127);
  }

  v128 = v141[1];
  v157 = *v141;
  v158 = v128;
  v129 = *(v104 + *(v91 + 32));

  sub_25E6199A0(v129);

  OUTLINED_FUNCTION_5_4();
  sub_25E61DF20(v104, v130);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_25E61AA38(uint64_t *a1, uint64_t a2)
{
  sub_25E60A2B0();
  v4 = *(*a1 + 16);
  sub_25E60A33C(v4);
  v5 = *a1;
  *(*a1 + 16) = v4 + 1;
  v6 = *(type metadata accessor for RootEventRecorder.Event(0) - 8);
  result = sub_25E61DEC8(a2, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
  *a1 = v5;
  return result;
}

uint64_t (*sub_25E61AB10(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint8_t *a7, NSObject *a8))()
{
  v8 = a8;
  v15 = sub_25E607B7C(a2, a3, *a1);
  if (v15 && (sub_25E614318(v15, &v129), , v130 >> 8 != 0xFFFFFFFF))
  {
    switch(v130 >> 62)
    {
      case 1uLL:
        v67 = a4 - v131;
        if (a4 - v131 >= 0.1)
        {
          v127 = a6;

          v68 = sub_25E6356F0();
          v69 = sub_25E635CE0();

          v116 = v69;
          v70 = v69;
          v71 = v68;
          if (os_log_type_enabled(v68, v70))
          {
            v72 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v128[0] = v112;
            *v72 = 134218754;
            *(v72 + 4) = v67;
            *(v72 + 12) = 2080;
            v73 = sub_25E635DF0();
            logc = v71;
            v75 = sub_25E6011D4(v73, v74, v128);

            bufb = v72;
            *(v72 + 14) = v75;
            *(v72 + 22) = 2080;
            a6 = v127;
            v76 = sub_25E635DF0();
            v78 = sub_25E6011D4(v76, v77, v128);

            *(bufb + 3) = v78;
            *(bufb + 16) = 2080;
            v133 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v79 = sub_25E6357A0();
            v81 = v80;

            v82 = sub_25E6011D4(v79, v81, v128);

            *(bufb + 34) = v82;
            _os_log_impl(&dword_25E5F0000, logc, v116, "Too much time (%fs) between rootClose %s and open %s for path %s", bufb, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v112, -1, -1);
            MEMORY[0x25F8BA800](bufb, -1, -1);
          }

          else
          {

            a6 = v127;
          }
        }

        v84 = sub_25E61B71C(v128, a2, a3);
        if (*v102)
        {
          v103 = v102;
          v104 = v8;
          sub_25E60A2C8();
          v105 = *(*v103 + 16);
          sub_25E60A354(v105);
          v106 = *v103;
          *(v106 + 16) = v105 + 1;
          v107 = v106 + 40 * v105;
          *(v107 + 32) = a6;
          *(v107 + 40) = a7;
          *(v107 + 48) = v104;
          *(v107 + 56) = a4;
          *(v107 + 64) = 0;
        }

        goto LABEL_31;
      case 2uLL:
        v125 = v131;
        v35 = a4 - v132;
        if (a4 - v132 >= 0.1)
        {
          buf = a7;

          v36 = sub_25E6356F0();
          v37 = sub_25E635CE0();

          v110 = v37;
          v38 = v37;
          v39 = v36;
          if (os_log_type_enabled(v36, v38))
          {
            v40 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v128[0] = v108;
            *v40 = 134218754;
            *(v40 + 4) = v35;
            *(v40 + 12) = 2080;
            v41 = sub_25E635DF0();
            loga = v39;
            v43 = sub_25E6011D4(v41, v42, v128);

            v114 = v40;
            *(v40 + 14) = v43;
            *(v40 + 22) = 2080;
            a7 = buf;
            v44 = sub_25E635DF0();
            v46 = sub_25E6011D4(v44, v45, v128);

            *(v114 + 3) = v46;
            *(v114 + 16) = 2080;
            v133 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v47 = sub_25E6357A0();
            v49 = v48;

            v50 = sub_25E6011D4(v47, v49, v128);

            *(v114 + 34) = v50;
            _os_log_impl(&dword_25E5F0000, loga, v110, "Too much time (%fs) between open %s and open %s for path %s", v114, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v108, -1, -1);
            MEMORY[0x25F8BA800](v114, -1, -1);
          }

          else
          {

            a7 = buf;
          }
        }

        result = sub_25E61B71C(v128, a2, a3);
        v84 = result;
        if (!*v83)
        {
          goto LABEL_31;
        }

        if (__OFADD__(*&v125, 1))
        {
          __break(1u);
        }

        else
        {
          v85 = v83;
          v86 = v8 | 0x8000000000000000;
          sub_25E60A2C8();
          v87 = *(*v85 + 16);
          sub_25E60A354(v87);
          v88 = *v85;
          *(v88 + 16) = v87 + 1;
          v89 = v88 + 40 * v87;
          *(v89 + 32) = a6;
          *(v89 + 40) = a7;
          *(v89 + 48) = v86;
          *(v89 + 56) = *&v125 + 1;
          *(v89 + 64) = a4;
          return (v84)(v128, 0);
        }

        return result;
      case 3uLL:
        v126 = *&v131;
        v51 = a4 - v132;
        if (a4 - v132 >= 0.1)
        {

          v52 = sub_25E6356F0();
          v53 = sub_25E635CE0();

          v115 = v53;
          v54 = v53;
          v55 = v52;
          if (os_log_type_enabled(v52, v54))
          {
            v56 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v128[0] = v111;
            *v56 = 134218754;
            *(v56 + 4) = v51;
            *(v56 + 12) = 2080;
            v57 = sub_25E635DF0();
            logb = v55;
            v59 = sub_25E6011D4(v57, v58, v128);

            *(v56 + 14) = v59;
            *(v56 + 22) = 2080;
            v60 = sub_25E635DF0();
            v62 = sub_25E6011D4(v60, v61, v128);

            *(v56 + 24) = v62;
            *(v56 + 32) = 2080;
            v133 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v63 = sub_25E6357A0();
            v65 = v64;

            v66 = sub_25E6011D4(v63, v65, v128);

            *(v56 + 34) = v66;
            _os_log_impl(&dword_25E5F0000, logb, v115, "Too much time (%fs) between close %s and open %s for path %s", v56, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v111, -1, -1);
            MEMORY[0x25F8BA800](v56, -1, -1);
          }

          else
          {
          }
        }

        v84 = sub_25E61B71C(v128, a2, a3);
        if (!*v90)
        {
          goto LABEL_31;
        }

        v91 = v90;
        v92 = v8 | 0x8000000000000000;
        sub_25E60A2C8();
        v93 = *(*v91 + 16);
        sub_25E60A354(v93);
        v94 = *v91;
        *(v94 + 16) = v93 + 1;
        v95 = v94 + 40 * v93;
        *(v95 + 32) = a6;
        *(v95 + 40) = a7;
        *(v95 + 48) = v92;
        v96 = v126;
        goto LABEL_27;
      default:
        v19 = a4 - v131;
        if (a4 - v131 >= 0.1)
        {
          v124 = v8;

          v20 = sub_25E6356F0();
          v21 = sub_25E635CE0();

          v113 = v21;
          v22 = v21;
          v23 = v20;
          if (os_log_type_enabled(v20, v22))
          {
            v24 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v128[0] = v109;
            *v24 = 134218754;
            *(v24 + 4) = v19;
            *(v24 + 12) = 2080;
            v25 = sub_25E635DF0();
            log = v23;
            v27 = sub_25E6011D4(v25, v26, v128);

            bufa = v24;
            *(v24 + 14) = v27;
            *(v24 + 22) = 2080;
            v8 = v124;
            v28 = sub_25E635DF0();
            v30 = sub_25E6011D4(v28, v29, v128);

            *(bufa + 3) = v30;
            *(bufa + 16) = 2080;
            v133 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v31 = sub_25E6357A0();
            v33 = v32;

            v34 = sub_25E6011D4(v31, v33, v128);

            *(bufa + 34) = v34;
            _os_log_impl(&dword_25E5F0000, log, v113, "Too much time (%fs) between rootOpen %s and open %s for path %s", bufa, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v109, -1, -1);
            MEMORY[0x25F8BA800](bufa, -1, -1);
          }

          else
          {

            v8 = v124;
          }
        }

        v84 = sub_25E61B71C(v128, a2, a3);
        if (!*v97)
        {
          goto LABEL_31;
        }

        v98 = v97;
        v99 = v8 | 0x8000000000000000;
        sub_25E60A2C8();
        v100 = *(*v98 + 16);
        sub_25E60A354(v100);
        v101 = *v98;
        *(v101 + 16) = v100 + 1;
        v95 = v101 + 40 * v100;
        *(v95 + 32) = a6;
        *(v95 + 40) = a7;
        v96 = 1;
        *(v95 + 48) = v99;
LABEL_27:
        *(v95 + 56) = v96;
        *(v95 + 64) = a4;
LABEL_31:
        result = (v84)(v128, 0);
        break;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91F0, &qword_25E63CAA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_25E63A3E0;
    *(v16 + 32) = a6;
    *(v16 + 40) = a7;
    *(v16 + 48) = v8;
    *(v16 + 56) = a4;
    *(v16 + 64) = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128[0] = *a1;
    result = sub_25E60E12C(v16, a2, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v128[0];
  }

  return result;
}

uint64_t (*sub_25E61B71C(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_25E61D520(v6, a2, a3);
  return sub_25E61B790;
}

void sub_25E61B790(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_25E61B7DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v99 = a6;
  v12 = sub_25E607B7C(a2, a3, *a1);
  if (v12 && (sub_25E614318(v12, &v101), , v102 >> 8 != 0xFFFFFFFF))
  {
    v16 = v103;
    switch(v102 >> 62)
    {
      case 1uLL:
        goto LABEL_3;
      case 2uLL:
        v93 = v103;
        v96 = a5;
        v98 = a4;
        v32 = sub_25E635DF0();
        v34 = v33;
        if (v32 == sub_25E635DF0() && v34 == v35)
        {
        }

        else
        {
          v37 = sub_25E636070();

          if ((v37 & 1) == 0)
          {
            v38 = sub_25E6356F0();
            v39 = sub_25E635CE0();
            if (os_log_type_enabled(v38, v39))
            {
              v87 = v39;
              v40 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v100[0] = v90;
              *v40 = 136315394;
              v41 = sub_25E635DF0();
              v43 = sub_25E6011D4(v41, v42, v100);

              *(v40 + 4) = v43;
              *(v40 + 12) = 2080;
              v44 = sub_25E635DF0();
              v46 = sub_25E6011D4(v44, v45, v100);

              *(v40 + 14) = v46;
              _os_log_impl(&dword_25E5F0000, v38, v87, "Event label %s doesn't match expectation %s", v40, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x25F8BA800](v90, -1, -1);
              MEMORY[0x25F8BA800](v40, -1, -1);
            }
          }
        }

        v65 = sub_25E61B71C(v100, a2, a3);
        if (!*v64)
        {
          goto LABEL_40;
        }

        v66 = v64;
        sub_25E60A2C8();
        v67 = *(*v66 + 16);
        sub_25E60A354(v67);
        v68 = *v66;
        *(v68 + 16) = v67 + 1;
        v69 = v68 + 40 * v67;
        *(v69 + 32) = v98;
        *(v69 + 40) = v96;
        *(v69 + 48) = v99 | 0xC000000000000000;
        *(v69 + 56) = v93;
        goto LABEL_36;
      case 3uLL:
        v47 = a7 - v104;
        if (a7 - v104 >= 0.1)
        {

          v48 = sub_25E6356F0();
          v49 = sub_25E635CE0();

          v91 = v49;
          v50 = v49;
          v51 = v48;
          if (os_log_type_enabled(v48, v50))
          {
            v52 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v100[0] = v88;
            *v52 = 134218754;
            *(v52 + 4) = v47;
            *(v52 + 12) = 2080;
            v53 = sub_25E635DF0();
            v54 = v51;
            v94 = v16;
            v56 = sub_25E6011D4(v53, v55, v100);

            *(v52 + 14) = v56;
            *(v52 + 22) = 2080;
            v57 = sub_25E635DF0();
            v59 = sub_25E6011D4(v57, v58, v100);

            *(v52 + 24) = v59;
            *(v52 + 32) = 2080;
            v105 = a2;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
            sub_25E61F3E8(&qword_280CB2808);
            v60 = sub_25E6357A0();
            v62 = v61;

            v63 = sub_25E6011D4(v60, v62, v100);
            v16 = v94;

            *(v52 + 34) = v63;
            _os_log_impl(&dword_25E5F0000, v54, v91, "Too much time (%fs) between close %s and close %s for path %s", v52, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x25F8BA800](v88, -1, -1);
            MEMORY[0x25F8BA800](v52, -1, -1);
          }

          else
          {
          }
        }

        if (v16 < 2)
        {
          v65 = sub_25E61B71C(v100, a2, a3);
          if (*v82)
          {
            v83 = v82;
            v84 = a5;
            v72 = v99 | 0x4000000000000000;
            sub_25E60A2C8();
            v85 = *(*v83 + 16);
            sub_25E60A354(v85);
            v86 = *v83;
            *(v86 + 16) = v85 + 1;
            v75 = v86 + 40 * v85;
            *(v75 + 32) = a4;
            *(v75 + 40) = v84;
LABEL_39:
            *(v75 + 48) = v72;
            *(v75 + 56) = a7;
            *(v75 + 64) = 0;
          }
        }

        else
        {
          v65 = sub_25E61B71C(v100, a2, a3);
          if (*v76)
          {
            v77 = v76;
            v78 = a5;
            v79 = v16 - 1;
            sub_25E60A2C8();
            v80 = *(*v77 + 16);
            sub_25E60A354(v80);
            v81 = *v77;
            *(v81 + 16) = v80 + 1;
            v69 = v81 + 40 * v80;
            *(v69 + 32) = a4;
            *(v69 + 40) = v78;
            *(v69 + 48) = v99 | 0xC000000000000000;
            *(v69 + 56) = v79;
LABEL_36:
            *(v69 + 64) = a7;
          }
        }

LABEL_40:
        (v65)(v100, 0);
        break;
      default:
        v95 = a5;
        v97 = a4;
        v17 = sub_25E635DF0();
        v19 = v18;
        if (v17 == sub_25E635DF0() && v19 == v20)
        {
        }

        else
        {
          v22 = sub_25E636070();

          if ((v22 & 1) == 0)
          {
            v23 = sub_25E6356F0();
            v24 = sub_25E635CE0();
            if (os_log_type_enabled(v23, v24))
            {
              v89 = v24;
              v25 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v100[0] = v92;
              *v25 = 136315394;
              v26 = sub_25E635DF0();
              v28 = sub_25E6011D4(v26, v27, v100);

              *(v25 + 4) = v28;
              *(v25 + 12) = 2080;
              v29 = sub_25E635DF0();
              v31 = sub_25E6011D4(v29, v30, v100);

              *(v25 + 14) = v31;
              _os_log_impl(&dword_25E5F0000, v23, v89, "Event label %s doesn't match expectation %s", v25, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x25F8BA800](v92, -1, -1);
              MEMORY[0x25F8BA800](v25, -1, -1);
            }
          }
        }

        v65 = sub_25E61B71C(v100, a2, a3);
        if (!*v70)
        {
          goto LABEL_40;
        }

        v71 = v70;
        v72 = v99 | 0x4000000000000000;
        sub_25E60A2C8();
        v73 = *(*v71 + 16);
        sub_25E60A354(v73);
        v74 = *v71;
        *(v74 + 16) = v73 + 1;
        v75 = v74 + 40 * v73;
        *(v75 + 32) = v97;
        *(v75 + 40) = v95;
        goto LABEL_39;
    }
  }

  else
  {
LABEL_3:
    v13 = sub_25E6356F0();
    v14 = sub_25E635CE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25E5F0000, v13, v14, "Event is being closed without having been open", v15, 2u);
      MEMORY[0x25F8BA800](v15, -1, -1);
    }
  }
}

void _s22PhotosIntelligenceCore17RootEventRecorderC10withEvents2doxxSayAC0E0VGzKYTXE_tKlF(void (*a1)(uint64_t))
{
  if (*(v1 + 18) == 1)
  {
    os_unfair_lock_lock((v1 + 24));
    a1(v1 + 32);
    os_unfair_lock_unlock((v1 + 24));
  }

  else
  {
    sub_25E61DF78();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t RootEventRecorder.deinit()
{
  sub_25E61DFCC(v0 + 32, &qword_27FCF9480, &qword_25E63BD10);
  sub_25E61DFCC(v0 + 48, &qword_27FCF9488, &qword_25E63BD18);
  v1 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_logger;
  sub_25E635710();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_signposter;
  sub_25E635690();
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_referenceDate;
  sub_25E635570();
  OUTLINED_FUNCTION_1_2();
  (*(v6 + 8))(v0 + v5);

  return v0;
}

uint64_t RootEventRecorder.__deallocating_deinit()
{
  RootEventRecorder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t RootEventRecorder.spawnConcurrent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_25E61441C(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91E8, " A");
  v10 = swift_initStackObject();
  OUTLINED_FUNCTION_47_0(v10, v11, v12, v13, v14, v15, v16, v17, xmmword_25E63A3E0);

  *a3 = v8;
  a3[1] = v8;
  a3[3] = &type metadata for RootEventRecorder.ChildRecorder;
  a3[4] = &off_28704BBB8;
  a3[2] = v4;
}

uint64_t RootEventRecorder.spawnSerial(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path);
  v9 = *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore17RootEventRecorder_path + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_25E61441C(inited);
  *a3 = v8;
  a3[1] = v9;
  a3[3] = &type metadata for RootEventRecorder.ChildRecorder;
  a3[4] = &off_28704BBB8;
  a3[2] = v4;
}

uint64_t sub_25E61C558()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25E61F610;

  return RootEventRecorder.execute<A>(as:tag:block:)();
}

uint64_t sub_25E61C664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_25E61441C(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91E8, " A");
  v10 = swift_initStackObject();
  OUTLINED_FUNCTION_47_0(v10, v11, v12, v13, v14, v15, v16, v17, xmmword_25E63A3E0);

  *a3 = v7;
  a3[1] = v7;
  a3[3] = &type metadata for RootEventRecorder.ChildRecorder;
  a3[4] = &off_28704BBB8;
  a3[2] = v8;
  return result;
}

uint64_t sub_25E61C774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  result = sub_25E61441C(inited);
  *a3 = v7;
  a3[1] = v8;
  a3[3] = &type metadata for RootEventRecorder.ChildRecorder;
  a3[4] = &off_28704BBB8;
  a3[2] = v9;
  return result;
}

uint64_t sub_25E61C844()
{
  OUTLINED_FUNCTION_37();
  v13 = *v1;
  v11 = *v0;
  v12 = v0[1];

  OUTLINED_FUNCTION_46_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13);
}

void sub_25E61C8E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_0();
  v28 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for RootEventRecorder.EventState(0);
  v13 = OUTLINED_FUNCTION_52_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  v16 = v15 - v14;
  v17 = *v2;
  v18 = v2[1];
  v30 = *v5;
  v29[0] = v17;
  v29[1] = v18;

  sub_25E618150(v11, v9, v7, &v30, v29, v16);

  v28(v19);
  RootEventRecorder.recordEnd(of:)(v16, v20, v21, v22, v23, v24, v25, v26);
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v16, v27);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_25E61C9F8()
{
  OUTLINED_FUNCTION_25_0();
  v3 = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 120) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 16) = v9;
  v10 = type metadata accessor for RootEventRecorder.EventState(0);
  OUTLINED_FUNCTION_52_0(v10);
  *(v1 + 56) = swift_task_alloc();
  v11 = *v0;
  *(v1 + 64) = *v3;
  *(v1 + 80) = v11;
  *(v1 + 96) = *(v0 + 2);
  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_25E61CAA0()
{
  v1 = *(v0 + 120);

  v2 = OUTLINED_FUNCTION_64();
  sub_25E618150(v2, v3, v1, v4, v5, v6);

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_50_0(v7);

  return v9(v8);
}

uint64_t sub_25E61CBF0()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *v1;
  OUTLINED_FUNCTION_44_0();
  *v3 = v2;
  *(v4 + 112) = v0;

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25E61CCF4()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(v0 + 56);
  RootEventRecorder.recordEnd(of:)(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v1, v9);

  OUTLINED_FUNCTION_53_0();

  return v10();
}

uint64_t sub_25E61CD6C()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(v0 + 56);
  RootEventRecorder.recordEnd(of:)(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_7();
  sub_25E61DF20(v1, v9);

  OUTLINED_FUNCTION_53_0();

  return v10();
}

uint64_t sub_25E61CE30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25E61CF14;

  return sub_25E61C9F8();
}

uint64_t sub_25E61CF14()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *v0;
  OUTLINED_FUNCTION_44_0();
  *v2 = v1;

  OUTLINED_FUNCTION_53_0();

  return v3();
}

uint64_t sub_25E61D10C()
{
  v2 = OUTLINED_FUNCTION_49_0();
  v0[3] = type metadata accessor for RootEventRecorder.IgnoreEventRecorder(v2);
  v0[4] = &off_28704BB78;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
  return sub_25E61DEC8(v1, boxed_opaque_existential_1);
}

uint64_t sub_25E61D1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v10 = (a6 + *a6);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_25E61F610;

  return v10(a1);
}

uint64_t sub_25E61D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25E61F610;

  return sub_25E61D1C0(a1, v9, v10, v11, v12, a6);
}

uint64_t sub_25E61D388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_25E61D400(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_25E61D444(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_25E61D490(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_25E61D4D8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void (*sub_25E61D520(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_25E61D84C(v6);
  v6[9] = sub_25E61D618(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_25E61D5B8;
}

void sub_25E61D5B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_25E61D618(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_25E60D6D8(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9200, &unk_25E63B2C8);
  if (sub_25E635EA0())
  {
    v15 = sub_25E60D6D8(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25E6360A0();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_25E61D758;
}

void sub_25E61D758(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_25E61D490(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_25E61F364(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9570, &qword_25E63CA90);
    sub_25E61F394();
    sub_25E635EB0();
  }

  free(v1);
}

void (*sub_25E61D84C(void *a1))(uint64_t a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25E61D874;
}

void sub_25E61D87C()
{
  OUTLINED_FUNCTION_76();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x25F8B9DE0](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_25E61D8BC()
{
  OUTLINED_FUNCTION_76();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_40_0();
      sub_25E635860();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

unint64_t sub_25E61D91C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_69(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9198, &qword_25E63B198);
    result = OUTLINED_FUNCTION_77(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_25E61D974()
{
  result = qword_27FCF93A0;
  if (!qword_27FCF93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93A0);
  }

  return result;
}

unint64_t sub_25E61D9C8()
{
  result = qword_27FCF93A8;
  if (!qword_27FCF93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93A8);
  }

  return result;
}

unint64_t sub_25E61DA1C()
{
  result = qword_27FCF93B0;
  if (!qword_27FCF93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93B0);
  }

  return result;
}

unint64_t sub_25E61DA70()
{
  result = qword_27FCF93B8;
  if (!qword_27FCF93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93B8);
  }

  return result;
}

unint64_t sub_25E61DAC4()
{
  result = qword_27FCF93C0;
  if (!qword_27FCF93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF93C0);
  }

  return result;
}

uint64_t sub_25E61DB18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_25E61DBB4()
{
  result = qword_27FCF9400;
  if (!qword_27FCF9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9400);
  }

  return result;
}

unint64_t sub_25E61DC08()
{
  result = qword_27FCF9410;
  if (!qword_27FCF9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9410);
  }

  return result;
}

unint64_t sub_25E61DC5C()
{
  result = qword_27FCF9418;
  if (!qword_27FCF9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9418);
  }

  return result;
}

unint64_t sub_25E61DCB0()
{
  result = qword_27FCF9420;
  if (!qword_27FCF9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9420);
  }

  return result;
}

unint64_t sub_25E61DD04()
{
  result = qword_27FCF9430;
  if (!qword_27FCF9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9430);
  }

  return result;
}

unint64_t sub_25E61DD58()
{
  result = qword_27FCF9448;
  if (!qword_27FCF9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9448);
  }

  return result;
}

unint64_t sub_25E61DDAC()
{
  result = qword_27FCF9450;
  if (!qword_27FCF9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9450);
  }

  return result;
}

unint64_t sub_25E61DE00()
{
  result = qword_27FCF9458;
  if (!qword_27FCF9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9458);
  }

  return result;
}

unint64_t sub_25E61DE54()
{
  result = qword_27FCF9468;
  if (!qword_27FCF9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9468);
  }

  return result;
}

uint64_t sub_25E61DEC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_0();
  v4(v3);
  OUTLINED_FUNCTION_1_2();
  v5 = OUTLINED_FUNCTION_35_0();
  v6(v5);
  return a2;
}

uint64_t sub_25E61DF20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_25E61DF78()
{
  result = qword_27FCF9478;
  if (!qword_27FCF9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9478);
  }

  return result;
}

uint64_t sub_25E61DFCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_25E61E028()
{
  result = qword_27FCF9490;
  if (!qword_27FCF9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9490);
  }

  return result;
}

unint64_t sub_25E61E080()
{
  result = qword_27FCF9498;
  if (!qword_27FCF9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9498);
  }

  return result;
}

unint64_t sub_25E61E0D8()
{
  result = qword_280CB2868;
  if (!qword_280CB2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB2868);
  }

  return result;
}

unint64_t sub_25E61E130()
{
  result = qword_280CB2860;
  if (!qword_280CB2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB2860);
  }

  return result;
}

unint64_t sub_25E61E188()
{
  result = qword_280CB2878[0];
  if (!qword_280CB2878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB2878);
  }

  return result;
}

unint64_t sub_25E61E1E0()
{
  result = qword_27FCF94A0;
  if (!qword_27FCF94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94A0);
  }

  return result;
}

uint64_t sub_25E61E25C(uint64_t a1)
{
  result = sub_25E635710();
  if (v2 <= 0x3F)
  {
    result = sub_25E635690();
    if (v3 <= 0x3F)
    {
      result = sub_25E635570();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_25E61E40C(uint64_t a1)
{
  sub_25E6355A0();
  if (v1 <= 0x3F)
  {
    sub_25E61E4BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25E61E4BC(uint64_t a1)
{
  if (!qword_280CB2820)
  {
    sub_25E6356D0();
    v1 = sub_25E635D30();
    if (!v2)
    {
      atomic_store(v1, &qword_280CB2820);
    }
  }
}

uint64_t getEnumTagSinglePayload for RootEventRecorder.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RootEventRecorder.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_25E61E5C0(uint64_t a1)
{
  sub_25E6355A0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ThermalState(319);
    if (v2 <= 0x3F)
    {
      sub_25E61E690();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25E61E690()
{
  if (!qword_280CB2870)
  {
    v0 = sub_25E635D30();
    if (!v1)
    {
      atomic_store(v0, &qword_280CB2870);
    }
  }
}

uint64_t sub_25E61E728(uint64_t a1)
{
  result = type metadata accessor for RootEventRecorder.EventState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25E61E7A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25E61E7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RootEventRecorder.EventDebugState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RootEventRecorder.EventDebugState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 17);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RootEventRecorder.EventDebugState(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = -a2 << 8;
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

_BYTE *storeEnumTagSinglePayload for RootEventRecorder.Error(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RootEventRecorder.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RootEventRecorder.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RootEventRecorder.Path.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25E61ECA0()
{
  result = qword_27FCF94C0;
  if (!qword_27FCF94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94C0);
  }

  return result;
}

unint64_t sub_25E61ECF8()
{
  result = qword_27FCF94C8;
  if (!qword_27FCF94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94C8);
  }

  return result;
}

unint64_t sub_25E61ED50()
{
  result = qword_27FCF94D0;
  if (!qword_27FCF94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94D0);
  }

  return result;
}

unint64_t sub_25E61EDA8()
{
  result = qword_27FCF94D8;
  if (!qword_27FCF94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94D8);
  }

  return result;
}

unint64_t sub_25E61EE00()
{
  result = qword_27FCF94E0;
  if (!qword_27FCF94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94E0);
  }

  return result;
}

unint64_t sub_25E61EE58()
{
  result = qword_27FCF94E8;
  if (!qword_27FCF94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94E8);
  }

  return result;
}

unint64_t sub_25E61EEB0()
{
  result = qword_27FCF94F0;
  if (!qword_27FCF94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94F0);
  }

  return result;
}

unint64_t sub_25E61EF08()
{
  result = qword_27FCF94F8;
  if (!qword_27FCF94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF94F8);
  }

  return result;
}

unint64_t sub_25E61EF60()
{
  result = qword_27FCF9500;
  if (!qword_27FCF9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9500);
  }

  return result;
}

unint64_t sub_25E61EFB8()
{
  result = qword_27FCF9508;
  if (!qword_27FCF9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9508);
  }

  return result;
}

unint64_t sub_25E61F010()
{
  result = qword_27FCF9510;
  if (!qword_27FCF9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9510);
  }

  return result;
}

unint64_t sub_25E61F068()
{
  result = qword_27FCF9518;
  if (!qword_27FCF9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9518);
  }

  return result;
}

unint64_t sub_25E61F0C0()
{
  result = qword_27FCF9520;
  if (!qword_27FCF9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9520);
  }

  return result;
}

unint64_t sub_25E61F118()
{
  result = qword_27FCF9528;
  if (!qword_27FCF9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9528);
  }

  return result;
}

unint64_t sub_25E61F170()
{
  result = qword_27FCF9530;
  if (!qword_27FCF9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9530);
  }

  return result;
}

unint64_t sub_25E61F1C8()
{
  result = qword_27FCF9538;
  if (!qword_27FCF9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9538);
  }

  return result;
}

unint64_t sub_25E61F220()
{
  result = qword_27FCF9540;
  if (!qword_27FCF9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9540);
  }

  return result;
}

unint64_t sub_25E61F278()
{
  result = qword_27FCF9548;
  if (!qword_27FCF9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9548);
  }

  return result;
}

unint64_t sub_25E61F2CC()
{
  result = qword_27FCF9558;
  if (!qword_27FCF9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9558);
  }

  return result;
}

unint64_t sub_25E61F320(uint64_t a1)
{
  result = OUTLINED_FUNCTION_69(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_25E61F394()
{
  result = qword_27FCF9578;
  if (!qword_27FCF9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9578);
  }

  return result;
}

unint64_t sub_25E61F3E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_69(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_25E61F42C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E61F50C()
{
  result = qword_27FCF9588;
  if (!qword_27FCF9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9588);
  }

  return result;
}

unint64_t sub_25E61F564()
{
  result = qword_27FCF9590;
  if (!qword_27FCF9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9590);
  }

  return result;
}

unint64_t sub_25E61F5BC()
{
  result = qword_27FCF9598;
  if (!qword_27FCF9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9598);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32) = a2;

  return sub_25E6357F0();
}

__n128 OUTLINED_FUNCTION_23_0(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_27_0()
{
  v2 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v2;

  JUMPOUT(0x25F8B9540);
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1)
{

  return sub_25E635F90();
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_25E635FC0();
}

uint64_t OUTLINED_FUNCTION_32_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{

  return sub_25E635F80();
}

void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x25F8B9540);
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_25E618150(v13, v12, v11, &a11, &a9, v14);
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;
  *(a1 + 32) = *(v9 + 16);

  return sub_25E614350(a1);
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1)
{

  return swift_allocObject();
}

__n128 *OUTLINED_FUNCTION_51_0(__n128 *result, __n128 a2)
{
  *(v2 - 176) = a2;
  result[1] = a2;
  *(v2 - 128) = 0;
  *(v2 - 120) = 0xE000000000000000;
  return result;
}

void OUTLINED_FUNCTION_54_0()
{

  JUMPOUT(0x25F8B9540);
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32) = a2;

  return sub_25E6357F0();
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_25E635EC0();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = v4;

  return sub_25E6357F0();
}

uint64_t OUTLINED_FUNCTION_75()
{

  return sub_25E6355A0();
}

void OUTLINED_FUNCTION_76()
{

  JUMPOUT(0x25F8B9DE0);
}

uint64_t OUTLINED_FUNCTION_77(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1)
{

  return sub_25E6360F0();
}

void OUTLINED_FUNCTION_80()
{

  JUMPOUT(0x25F8B9500);
}

void *OUTLINED_FUNCTION_81(uint64_t a1, ...)
{

  return sub_25E636110();
}

uint64_t EventTag.string.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static EventTag.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25E636070();
  }
}

uint64_t sub_25E61FCF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_25E636070();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25E61FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25E61FCF4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25E61FDAC(uint64_t a1)
{
  v2 = sub_25E61FF50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25E61FDE8(uint64_t a1)
{
  v2 = sub_25E61FF50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EventTag.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF95A0, &qword_25E63CBB0);
  OUTLINED_FUNCTION_1_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25E61FF50();
  sub_25E636150();
  sub_25E635FE0();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_25E61FF50()
{
  result = qword_27FCF95A8;
  if (!qword_27FCF95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95A8);
  }

  return result;
}

uint64_t EventTag.hashValue.getter()
{
  sub_25E636110();
  sub_25E635860();
  return sub_25E636130();
}

uint64_t EventTag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF95B0, &qword_25E63CBB8);
  OUTLINED_FUNCTION_1_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25E61FF50();
  sub_25E636140();
  if (!v2)
  {
    v11 = sub_25E635F70();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_25E620168(uint64_t a1)
{
  sub_25E636110();
  sub_25E635860();
  return sub_25E636130();
}

uint64_t EventRecorder.recordBeginning(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = 0;
  v6[1] = 0;
  return (*(a5 + 24))(a1, a2, a3, v6, a4);
}

uint64_t EventRecorder.execute<A>(as:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = 0;
  v9[1] = 0;
  return (*(a8 + 40))(a1, a2, a3, v9, a4, a5, a7, a6, a8);
}

uint64_t EventRecorder.execute<A>(as:block:)()
{
  OUTLINED_FUNCTION_0_8();
  v0[3] = 0;
  v0[2] = 0;
  OUTLINED_FUNCTION_2_9();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25E6203B4;
  v3 = OUTLINED_FUNCTION_3_7();

  return v5(v3);
}

uint64_t sub_25E6203B4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25E6204E8);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_25E620508()
{
  result = qword_27FCF95B8;
  if (!qword_27FCF95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95B8);
  }

  return result;
}

unint64_t sub_25E620560()
{
  result = qword_27FCF95C0;
  if (!qword_27FCF95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95C0);
  }

  return result;
}

unint64_t sub_25E6205C4()
{
  result = qword_27FCF95C8;
  if (!qword_27FCF95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95C8);
  }

  return result;
}

uint64_t sub_25E620630(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_25E620670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of EventRecorder.execute<A>(as:tag:block:)()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_9();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_25E620874;
  v3 = OUTLINED_FUNCTION_3_7();

  return v5(v3);
}

uint64_t sub_25E620874()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_BYTE *storeEnumTagSinglePayload for EventTag.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_25E620A2C()
{
  result = qword_27FCF95D0;
  if (!qword_27FCF95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95D0);
  }

  return result;
}

unint64_t sub_25E620A84()
{
  result = qword_27FCF95D8;
  if (!qword_27FCF95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF95D8);
  }

  return result;
}

unint64_t sub_25E620ADC()
{
  result = qword_27FCF95E0[0];
  if (!qword_27FCF95E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCF95E0);
  }

  return result;
}

uint64_t sub_25E620BA0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a3;
  v22 = *(a2 - 8);
  v23 = a2;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v7);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  v20 = 1;
  if (__swift_getEnumTagSinglePayload(v17, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v17, v11);
    v25(v15, v9);
    (*(v12 + 8))(v15, v11);
    if (v5)
    {
      return (*(v22 + 32))(v24, v9, v23);
    }

    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v20, 1, v26);
}

uint64_t RoundRobinCluster.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RoundRobinCluster.init(id:items:targetNumberOfItems:itemsByFeature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_25E620E98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_1(v2 + 104, a2);
  *(v2 + 104) = a1;
}

uint64_t sub_25E620F00@<X0>(void *a1@<X8>, uint64_t a2@<X1>)
{
  OUTLINED_FUNCTION_16_4(v2 + 120, a2);
  v4 = *(v2 + 120);
  v5 = *(v2 + 128);
  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_25E620F9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_1(v2 + 136, a2);
  *(v2 + 136) = a1;
}

uint64_t sub_25E621030(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_1(v2 + 144, a2);
  *(v2 + 144) = a1;
}

uint64_t RoundRobinElector.__allocating_init(clusters:requiredItems:requirementCollection:featuresByItem:featuresToRepresent:targetNumberOfCuratedAssets:helper:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v14 = swift_allocObject();
  RoundRobinElector.init(clusters:requiredItems:requirementCollection:featuresByItem:featuresToRepresent:targetNumberOfCuratedAssets:helper:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *RoundRobinElector.init(clusters:requiredItems:requirementCollection:featuresByItem:featuresToRepresent:targetNumberOfCuratedAssets:helper:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v9 = *v7;
  v43 = a3[1];
  v44 = *a3;
  v10 = *(*v7 + 80);
  v7[17] = sub_25E635A30();
  OUTLINED_FUNCTION_44_1();
  swift_getTupleTypeMetadata2();
  v7[18] = sub_25E635A30();
  v7[2] = a1;
  v11 = *(v9 + 88);
  v47 = v7;
  OUTLINED_FUNCTION_21_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_21_1();
  v13 = swift_getAssociatedConformanceWitness();
  swift_bridgeObjectRetain_n();
  v50[0] = v10;
  v50[1] = v11;
  v42 = AssociatedConformanceWitness;
  v50[2] = AssociatedConformanceWitness;
  v50[3] = v13;
  type metadata accessor for RoundRobinCluster(0, v50);
  OUTLINED_FUNCTION_28_1();
  v14 = sub_25E6359E0();
  v50[0] = v14;
  OUTLINED_FUNCTION_28_1();
  if (v14 == sub_25E635A60())
  {
LABEL_2:

    v47[3] = a2;
    v47[4] = v44;
    v47[5] = v43;
    v47[6] = a4;
    v47[7] = a6;

    v15 = sub_25E635A30();
    swift_beginAccess();
    v47[17] = v15;

    v16 = *(a7 + 3);
    v17 = *(a7 + 4);
    __swift_project_boxed_opaque_existential_1(a7, v16);
    v18 = (*(v17 + 40))(a1, v16, v17);

    v47[14] = v18;
    v19 = OUTLINED_FUNCTION_24_1();
    v22 = type metadata accessor for SummaryItemRequirementCollection(v19, v20, v42, v21);
    sub_25E6029D0(v22, &v49);

    *(v47 + 15) = v49;
    v47[13] = a5;
    sub_25E5F20F4(a7, (v47 + 8));
    return v47;
  }

  else
  {
    v24 = a1 + 32;
    v48 = a1 + 32;
    while (1)
    {
      OUTLINED_FUNCTION_28_1();
      v25 = sub_25E635A50();
      sub_25E635A10();
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = (v24 + 40 * v14);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[3];

      OUTLINED_FUNCTION_54_1();
      sub_25E635AA0();
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v30 = sub_25E635710();
      __swift_project_value_buffer(v30, qword_27FCFD930);
      OUTLINED_FUNCTION_18_3();

      v31 = sub_25E6356F0();
      v32 = sub_25E635CF0();
      if (os_log_type_enabled(v31, v32))
      {
        OUTLINED_FUNCTION_6_1();
        v33 = swift_slowAlloc();
        OUTLINED_FUNCTION_6_1();
        v34 = a1;
        v35 = v29;
        v36 = swift_slowAlloc();
        *&v49 = v36;
        *v33 = 136315650;

        v37 = sub_25E6011D4(v27, v28, &v49);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2048;
        *(v33 + 14) = sub_25E635A60();
        *(v33 + 22) = 2048;

        *(v33 + 24) = v35;
        a1 = v34;

        _os_log_impl(&dword_25E5F0000, v31, v32, "Cluster %s has %ld items, targeting %ld elected items", v33, 0x20u);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        v24 = v48;
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      OUTLINED_FUNCTION_28_1();
      v38 = sub_25E635A60();
      v14 = v50[0];
      if (v50[0] == v38)
      {
        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_54_1();
    result = sub_25E635E00();
    __break(1u);
  }

  return result;
}

void sub_25E621598(uint64_t a1)
{
  v3 = v1;
  v150 = *v1;
  v5 = type metadata accessor for ProgressReporter(0);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_35_1();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v139 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v139 - v15;
  ProgressReporter.start()();
  if (v17)
  {
    sub_25E635710();
    OUTLINED_FUNCTION_0_2();
    (*(v18 + 8))(a1);

LABEL_3:
  }

  else
  {
    v151 = v16;
    v152 = v14;
    v139 = v2;
    v140 = v9;
    v144 = v5;
    v156[0] = v1[3];
    v19 = v150[10];
    v20 = sub_25E635AC0();

    OUTLINED_FUNCTION_1_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_39_1();
    v142 = v20;
    v141 = v21;
    sub_25E635960();
    v22 = 0;

    v149 = 0;
    v25 = v1[7];
    v26 = 0.0;
    *&v27 = 134218240;
    v143 = v27;
    *&v27 = 134218242;
    v145 = v27;
    v146 = a1;
    v148 = v1;
    v147 = v19;
    v153 = v25;
    do
    {
      sub_25E620F70(v23, v24);
      sub_25E635A60();
      OUTLINED_FUNCTION_29_0();
      if (v3 >= v25)
      {
        v155 = v22;
        v39 = v26;
        goto LABEL_31;
      }

      ProgressReporter.report(progress:)(v26);
      if (v32)
      {
        sub_25E635710();
        OUTLINED_FUNCTION_0_2();
        (*(v80 + 8))(a1);
        OUTLINED_FUNCTION_47_1();
        goto LABEL_3;
      }

      v155 = 0;
      isa = sub_25E620ED4(v30, v31);
      v34 = v150[12];
      sub_25E635A60();
      OUTLINED_FUNCTION_29_0();
      v154 = v3;
      if (v3 < 0)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        OUTLINED_FUNCTION_0_9();
        swift_once();
        goto LABEL_43;
      }

      v37 = 0;
      v38 = fmin((1.0 - v26) * 0.5, 0.1);
      v39 = v26 + v38;
      v40 = v26 + v38 - v26;
      do
      {
        if (v154 == v37)
        {
          break;
        }

        v41 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_41;
        }

        sub_25E620ED4(v35, v36);
        sub_25E635AE0();

        sub_25E620ED4(v42, v43);
        sub_25E635A60();
        OUTLINED_FUNCTION_29_0();
        sub_25E620ED4(v44, v45);
        sub_25E635A60();
        OUTLINED_FUNCTION_29_0();
        v46 = v151;
        ProgressReporter.child(from:to:)(v151, v26 + v40 * v37 / v3, v26 + v40 * v41 / v3);
        v47 = v46;
        v48 = v152;
        sub_25E5FCC60(v47, v152);
        OUTLINED_FUNCTION_20_1();
        swift_beginAccess();
        v49 = v155;
        sub_25E622A34(&v158, v48);
        v155 = v49;
        if (v49)
        {
          swift_endAccess();
          swift_unknownObjectRelease();
          sub_25E635710();
          OUTLINED_FUNCTION_0_2();
          (*(v79 + 8))(a1);
          OUTLINED_FUNCTION_47_1();

          return;
        }

        swift_endAccess();
        if (qword_27FCF8C18 != -1)
        {
          OUTLINED_FUNCTION_0_9();
          swift_once();
        }

        v50 = sub_25E635710();
        __swift_project_value_buffer(v50, qword_27FCFD930);
        v51 = sub_25E6356F0();
        v52 = sub_25E635CF0();
        if (os_log_type_enabled(v51, v52))
        {
          OUTLINED_FUNCTION_19_1();
          v53 = swift_slowAlloc();
          OUTLINED_FUNCTION_6_1();
          v54 = swift_slowAlloc();
          *v53 = OUTLINED_FUNCTION_36_1(v54).n128_u32[0];
          *(v53 + 4) = v149;
          *(v53 + 12) = 2080;
          v55 = v150[13];
          v56 = *(v55 + 40);
          swift_unknownObjectRetain();
          v56(v156, v34, v55);
          swift_unknownObjectRelease();
          v57 = v156[0];
          v3 = v156[1];

          sub_25E6011D4(v57, v3, &v157);
          OUTLINED_FUNCTION_18_3();
          OUTLINED_FUNCTION_52_1();

          *(v53 + 14) = v57;
          _os_log_impl(&dword_25E5F0000, v51, v52, "Completed round %ld for cluster %s", v53, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v54);
          v19 = v147;
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
          a1 = v146;
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
        }

        isa = v158.isa;
        OUTLINED_FUNCTION_20_1();
        swift_beginAccess();
        OUTLINED_FUNCTION_13_3();
        sub_25E635AC0();
        swift_unknownObjectRetain();
        sub_25E635A20();
        v58 = *(v3 + 112);
        sub_25E626C54(v37, v58, v34);
        *((v58 & 0xFFFFFFFFFFFFFF8) + 8 * v37 + 0x20) = isa;
        swift_unknownObjectRelease();
        v59 = swift_endAccess();
        sub_25E620F70(v59, v60);
        v61 = sub_25E635A60();
        swift_unknownObjectRelease();

        ++v37;
      }

      while (v61 < v153);
      if (__OFADD__(v149++, 1))
      {
        goto LABEL_48;
      }

      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v63 = sub_25E635710();
      v64 = __swift_project_value_buffer(v63, qword_27FCFD930);

      v65 = sub_25E6356F0();
      sub_25E635CF0();
      OUTLINED_FUNCTION_53_1();
      if (os_log_type_enabled(v65, v66))
      {
        OUTLINED_FUNCTION_19_1();
        v67 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_1(v67);
        *(v68 + 4) = v149;
        *(v68 + 12) = 2048;
        sub_25E620F70(v68, v69);
        v70 = v147;
        v71 = sub_25E635A60();

        *(v67 + 14) = v71;
        OUTLINED_FUNCTION_52_1();

        _os_log_impl(&dword_25E5F0000, v65, v19, "Round %ld: There are already %ld elected items", v67, 0x16u);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        v70 = v147;
      }

      v156[0] = sub_25E620ED4(v72, v73);
      MEMORY[0x28223BE20](v156[0]);
      v74 = v150;
      v75 = v150[11];
      *(&v139 - 4) = v70;
      *(&v139 - 3) = v75;
      v76 = v74[13];
      *(&v139 - 2) = v34;
      *(&v139 - 1) = v76;
      OUTLINED_FUNCTION_13_3();
      v3 = sub_25E635AC0();
      OUTLINED_FUNCTION_1_3();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_52_1();
      v77 = v155;
      v78 = sub_25E635900();
      v22 = v77;

      v26 = v39;
      v19 = v70;
      v25 = v153;
    }

    while ((v78 & 1) == 0);
    v81 = sub_25E6356F0();
    sub_25E635CF0();
    v82 = OUTLINED_FUNCTION_7_5();
    if (os_log_type_enabled(v82, v83))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_25E5F0000, v81, v64, "All clusters have no items remaining for processing, stopping early", v85, 2u);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    v155 = v77;

LABEL_31:
    v86 = v150;
    v156[0] = sub_25E621004(v28, v29);
    v19 = v86[12];
    OUTLINED_FUNCTION_44_1();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_13_3();
    v87 = sub_25E635AC0();
    WitnessTable = swift_getWitnessTable();
    sub_25E635C50();
    OUTLINED_FUNCTION_55_1();

    v154 = v87;
    v152 = WitnessTable;
    if ((v156 & 1) == 0)
    {
      sub_25E620F70(v35, v36);
      sub_25E635A60();
      OUTLINED_FUNCTION_29_0();
      if (v3 < v25)
      {
        if (qword_27FCF8C18 != -1)
        {
          OUTLINED_FUNCTION_0_9();
          swift_once();
        }

        v89 = sub_25E635710();
        __swift_project_value_buffer(v89, qword_27FCFD930);
        OUTLINED_FUNCTION_18_3();

        v90 = sub_25E6356F0();
        v91 = sub_25E635CF0();
        v92 = os_log_type_enabled(v90, v91);
        v93 = v140;
        if (v92)
        {
          OUTLINED_FUNCTION_19_1();
          v94 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_1(v94);
          sub_25E621004(v95, v96);
          v3 = sub_25E635A60();

          *(v94 + 4) = v3;
          OUTLINED_FUNCTION_52_1();

          *(v94 + 12) = 2048;
          *(v94 + 14) = v149;
          _os_log_impl(&dword_25E5F0000, v90, v91, "Processing %ld remaining items in the waiting room (after %ld rounds)", v94, 0x16u);
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
        }

        else
        {
        }

        v97 = v139;
        v98 = v146;
        ProgressReporter.child(from:to:)(v139, v39, 1.0);
        sub_25E5FCC60(v97, v93);
        v99 = v155;
        sub_25E625ED8(v93);
        v41 = v99;
        if (v99)
        {
          (*(*(v89 - 8) + 8))(v98, v89);

          goto LABEL_3;
        }

LABEL_41:
        v155 = v41;
      }
    }

    v156[0] = sub_25E621004(v35, v36);
    MEMORY[0x28223BE20](v156[0]);
    v100 = v150;
    v101 = v150[11];
    v102 = v147;
    *(&v139 - 4) = v147;
    *(&v139 - 3) = v101;
    v103 = v101;
    v151 = v101;
    v104 = v100[13];
    *(&v139 - 2) = v19;
    *(&v139 - 1) = v104;
    KeyPath = swift_getKeyPath();
    v106 = MEMORY[0x28223BE20](KeyPath);
    *(&v139 - 4) = v103;
    *(&v139 - 3) = v19;
    *(&v139 - 2) = v104;
    *(&v139 - 1) = v106;
    v107 = OUTLINED_FUNCTION_39_1();
    v108 = v155;
    v113 = sub_25E5FB6F4(v107, v109, v154, v102, v110, v152, v111, v112);
    v154 = v108;

    v156[0] = v113;
    v114 = v19;
    v115 = *(swift_getAssociatedConformanceWitness() + 8);
    v116 = v142;
    v117 = v141;
    v118 = sub_25E635BF0();
    v156[0] = sub_25E620F70(v118, v119);
    v152 = v115;
    v155 = MEMORY[0x25F8B9820](v156, v118, v102, v116, v115, v117);

    v156[0] = sub_25E620ED4(v120, v121);
    MEMORY[0x28223BE20](v156[0]);
    OUTLINED_FUNCTION_34_1();
    v122 = v151;
    *(v123 - 32) = v102;
    *(v123 - 24) = v122;
    *(v123 - 16) = v114;
    *(v123 - 8) = v104;
    OUTLINED_FUNCTION_13_3();
    v124 = sub_25E635AC0();
    OUTLINED_FUNCTION_1_3();
    swift_getWitnessTable();
    v125 = OUTLINED_FUNCTION_39_1();
    isa = sub_25E622620(v125, v118, v124, MEMORY[0x277D84A98], v126, MEMORY[0x277D84AC0], v127);

    if (qword_27FCF8C18 != -1)
    {
      goto LABEL_49;
    }

LABEL_43:
    v128 = sub_25E635710();
    __swift_project_value_buffer(v128, qword_27FCFD930);
    OUTLINED_FUNCTION_18_3();
    swift_retain_n();

    v129 = sub_25E6356F0();
    v130 = sub_25E635CF0();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 134219008;
      sub_25E620F70(v131, v132);
      v133 = sub_25E635A60();
      v154 = isa;
      v134 = v133;

      *(v131 + 4) = v134;

      *(v131 + 12) = 2048;
      *(v131 + 14) = v153;

      *(v131 + 22) = 2048;
      *(v131 + 24) = v154;
      *(v131 + 32) = 2048;
      v135 = sub_25E635B90();

      *(v131 + 34) = v135;

      *(v131 + 42) = 2048;
      *(v131 + 44) = v149;
      _os_log_impl(&dword_25E5F0000, v129, v130, "There are %ld out of %ld elected items, %ld fulfilled clusters, and %ld items left in the waiting room after %ld rounds", v131, 0x34u);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v136 = *(v3 + 96);
    v137 = __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
    sub_25E620ED4(v137, v138);
    (*(v136 + 56))();

    ProgressReporter.complete()();
  }
}

uint64_t sub_25E622478@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v3 = *a2;
  v4 = MEMORY[0x277D84DE8];
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  (*(v6 + 16))(v15 - v10);
  v12 = *(v5 + 48);
  v13 = *&v11[v12];
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(v9, v11);
  *&v9[v12] = v13;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25E622620(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a4;
  v34 = a7;
  v8 = v7;
  v38 = a1;
  v39 = a2;
  v32 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v32 - v13;
  v15 = sub_25E635D30();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v35 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v32 - v23;
  (*(v19 + 16))(v21, v42, a3);
  v41 = v24;
  sub_25E6358F0();
  v42 = v22;
  swift_getAssociatedConformanceWitness();
  v25 = 0;
  v26 = (v37 + 32);
  v27 = (v37 + 8);
  while (1)
  {
    sub_25E635D50();
    if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_7;
    }

    (*v26)(v14, v18, AssociatedTypeWitness);
    v28 = v38(v14, v40);
    if (v8)
    {
      break;
    }

    v29 = v28;
    v8 = 0;
    (*v27)(v14, AssociatedTypeWitness);
    v30 = __OFADD__(v25, v29 & 1);
    v25 += v29 & 1;
    if (v30)
    {
      __break(1u);
LABEL_7:
      (*(v35 + 8))(v41, v42);
      return v25;
    }
  }

  (*v27)(v14, AssociatedTypeWitness);
  (*(v35 + 8))(v41, v42);
  (*(v32 + 32))(v34, v40, v33);
  return v25;
}

void sub_25E622A34(NSObject *a1, uint64_t a2)
{
  v5 = v2;
  v136 = a1;
  v133 = *v5;
  v7 = v133[10];
  v135 = v133[12];
  OUTLINED_FUNCTION_44_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v8);
  v119 = &v115 - v9;
  v10 = sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v120 = v11;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v12);
  v14 = &v115 - v13;
  OUTLINED_FUNCTION_3_8();
  v129 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v127 = &v115 - v21;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_35_1();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v115 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_33_0();
  v137 = a2;
  ProgressReporter.start()();
  v139 = v27;
  if (v27)
  {
    sub_25E635710();
    OUTLINED_FUNCTION_0_2();
    (*(v28 + 8))(v137);
    v29 = type metadata accessor for ProgressReporter(0);
    OUTLINED_FUNCTION_9_4(v29);
  }

  else
  {
    v130 = v19;
    v134 = v14;
    v117 = v10;
    v116 = v26;
    v126 = v4;
    isa = v136->isa;
    (*(v133[13] + 40))(v138, v135);
    v123 = v138[0];
    v133 = v138[1];

    v132 = v129 + 4;
    v135 = v129 + 1;
    v136 = v129 + 2;
    v31 = 0.0;
    *&v32 = 136315394;
    v121 = v32;
    v33 = v3;
    v125 = v3;
    v34 = v127;
    v124 = v5;
    for (i = isa; ; isa = i)
    {
      v35 = v5[11];
      v36 = v5[12];
      __swift_project_boxed_opaque_existential_1(v5 + 8, v35);
      v37 = v35;
      v38 = v134;
      (*(v36 + 48))(isa, v37, v36);
      if (__swift_getEnumTagSinglePayload(v38, 1, v7) == 1)
      {

        (*(v120 + 8))(v38, v117);
        goto LABEL_28;
      }

      (v132->isa)(v33, v38, v7);
      ProgressReporter.report(progress:)(v31);
      if (v41)
      {
        v85 = OUTLINED_FUNCTION_15_4();
        v86(v85);

        sub_25E635710();
        OUTLINED_FUNCTION_0_2();
        (*(v87 + 8))(v137);
        v88 = type metadata accessor for ProgressReporter(0);
        OUTLINED_FUNCTION_9_4(v88);

        return;
      }

      v42 = sub_25E620ED4(v39, v40);
      v43 = OUTLINED_FUNCTION_61_0();
      sub_25E623614(v43, v44, v42, v45, v46, v47, v48, v49, v115, v116, v117, TupleTypeMetadata2, v119, v120, v121, *(&v121 + 1), v122, v123, v124, v125);

      v139 = 0;
      if (LOBYTE(v138[0]) != 2)
      {
        break;
      }

      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v31 = v31 + fmin((1.0 - v31) * 0.5, 0.1);
      v50 = sub_25E635710();
      __swift_project_value_buffer(v50, qword_27FCFD930);
      v51 = v136->isa;
      (v136->isa)(v130, v33, v7);
      v52 = v133;

      v53 = sub_25E6356F0();
      v54 = sub_25E635CF0();

      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_19_1();
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_22_1();
        v129 = swift_slowAlloc();
        *v55 = OUTLINED_FUNCTION_36_1(v129).n128_u32[0];
        OUTLINED_FUNCTION_50_1();
        v51();
        v56 = sub_25E635820();
        v58 = v57;
        LODWORD(v128) = v54;
        v59 = v135->isa;
        v60 = OUTLINED_FUNCTION_21_1();
        v59(v60);
        v61 = sub_25E6011D4(v56, v58, v138);
        v5 = v124;
        v34 = v127;

        *(v55 + 4) = v61;
        *(v55 + 12) = 2080;
        v62 = OUTLINED_FUNCTION_32_1();
        *(v55 + 14) = sub_25E6011D4(v62, v52, v63);
        _os_log_impl(&dword_25E5F0000, v53, v128, "Discarding item %s from cluster %s. Continue to the next item in the cluster", v55, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        v33 = v125;
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();

        v64 = OUTLINED_FUNCTION_15_4();
        v59(v64);
      }

      else
      {

        v65 = v135->isa;
        v66 = OUTLINED_FUNCTION_21_1();
        v65(v66);
        v67 = OUTLINED_FUNCTION_15_4();
        v65(v67);
      }
    }

    if (LOBYTE(v138[0]))
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v89 = sub_25E635710();
      __swift_project_value_buffer(v89, qword_27FCFD930);
      v90 = v136->isa;
      (v136->isa)(v34, v33, v7);
      swift_retain_n();
      v91 = v133;

      v92 = sub_25E6356F0();
      v93 = sub_25E635CF0();

      if (os_log_type_enabled(v92, v93))
      {
        OUTLINED_FUNCTION_6_1();
        v94 = swift_slowAlloc();
        LODWORD(v132) = v93;
        v95 = v90;
        v96 = v34;
        v97 = v94;
        OUTLINED_FUNCTION_22_1();
        v134 = swift_slowAlloc();
        v138[0] = v134;
        *v97 = 136315650;
        OUTLINED_FUNCTION_50_1();
        v95();
        OUTLINED_FUNCTION_62_0();
        v128 = sub_25E635820();
        v129 = v92;
        v99 = v98;
        v130 = v135->isa;
        v100 = v96;
        v90 = v95;
        v130(v100, v7);
        v101 = sub_25E6011D4(v128, v99, v138);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2080;
        v102 = OUTLINED_FUNCTION_32_1();
        sub_25E6011D4(v102, v91, v103);
        OUTLINED_FUNCTION_29_0();
        *(v97 + 14) = v101;
        *(v97 + 22) = 2048;
        sub_25E621004(v104, v105);
        v106 = TupleTypeMetadata2;
        v107 = sub_25E635A60();

        *(v97 + 24) = v107;

        v108 = v129;
        _os_log_impl(&dword_25E5F0000, v129, v132, "Deferring item %s from cluster %s into the waiting room with %ld other deferred items", v97, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        v109 = v130;
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();

        v110 = v119;
      }

      else
      {

        v112 = v34;
        v109 = v135->isa;
        (v135->isa)(v112, v7);
        v110 = v119;
        v106 = TupleTypeMetadata2;
      }

      v113 = *(v106 + 48);
      OUTLINED_FUNCTION_50_1();
      v90();
      *(v110 + v113) = i;
      OUTLINED_FUNCTION_20_1();
      swift_beginAccess();
      sub_25E635AC0();
      swift_unknownObjectRetain();
      sub_25E635A80();
      swift_endAccess();
      v114 = OUTLINED_FUNCTION_62_0();
      v109(v114);
    }

    else
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v68 = sub_25E635710();
      __swift_project_value_buffer(v68, qword_27FCFD930);
      v69 = v136->isa;
      v70 = v116;
      (v136->isa)(v116, v33, v7);
      v71 = v133;

      v72 = sub_25E6356F0();
      v73 = sub_25E635CF0();

      if (os_log_type_enabled(v72, v73))
      {
        OUTLINED_FUNCTION_19_1();
        v74 = swift_slowAlloc();
        OUTLINED_FUNCTION_22_1();
        v134 = swift_slowAlloc();
        *v74 = OUTLINED_FUNCTION_36_1(v134).n128_u32[0];
        OUTLINED_FUNCTION_50_1();
        v69();
        OUTLINED_FUNCTION_62_0();
        v75 = sub_25E635820();
        v77 = v76;
        v78 = v135->isa;
        (v135->isa)(v70, v7);
        v79 = sub_25E6011D4(v75, v77, v138);
        v33 = v125;

        *(v74 + 4) = v79;
        *(v74 + 12) = 2080;
        v80 = OUTLINED_FUNCTION_32_1();
        v82 = sub_25E6011D4(v80, v71, v81);

        *(v74 + 14) = v82;
        _os_log_impl(&dword_25E5F0000, v72, v73, "Electing item %s from cluster %s", v74, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        v78 = v135->isa;
        (v135->isa)(v70, v7);
      }

      sub_25E624B70(v33, i, v83, v84);
      v111 = OUTLINED_FUNCTION_15_4();
      v78(v111);
    }

LABEL_28:
    ProgressReporter.complete()();
  }
}

void sub_25E623614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_63_0();
  a19 = v21;
  a20 = v22;
  v229 = v23;
  v238 = v24;
  v26 = v25;
  v240 = v27;
  v28 = *v20;
  v29 = *(*v20 + 80);
  v239 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v25);
  v235 = &v216 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40_1();
  v233 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_40_1();
  v226 = v37;
  v39 = *(v38 + 88);
  OUTLINED_FUNCTION_24_1();
  sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v230 = v41;
  v231 = v40;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_57_0(v43, v216);
  *&v241 = sub_25E620F70(v44, v45);
  OUTLINED_FUNCTION_13_3();
  sub_25E635AC0();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  v232 = *(v28 + 96);
  v46 = *(&v232 + 1);
  v237 = v232;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = *(AssociatedConformanceWitness + 8);
  sub_25E635980();
  OUTLINED_FUNCTION_55_1();

  if (&v241)
  {
    if (qword_27FCF8C18 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v50 = sub_25E635710();
    OUTLINED_FUNCTION_38_1(v50, qword_27FCFD930);
    v51 = v239;
    v52 = *(v239 + 16);
    v53 = v235;
    v52(v235, v26, v29);
    v54 = sub_25E6356F0();
    sub_25E635CD0();
    v55 = OUTLINED_FUNCTION_7_5();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_7_1();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_1();
      v58 = swift_slowAlloc();
      *&v241 = v58;
      *v57 = 136315138;
      v52(v233, v53, v29);
      OUTLINED_FUNCTION_61_0();
      v59 = sub_25E635820();
      v61 = v60;
      (*(v51 + 8))(v53, v29);
      v62 = sub_25E6011D4(v59, v61, &v241);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_25E5F0000, v54, &v241, "Item %s has already been elected", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
    }

    else
    {

      (*(v51 + 8))(v53, v29);
    }

    goto LABEL_31;
  }

  sub_25E620E6C(v48, v49);
  v223 = v20;
  OUTLINED_FUNCTION_24_1();
  sub_25E635AC0();
  v224 = v29;
  sub_25E635750();
  v63 = v241;
  v235 = v26;
  v220 = v47;
  if (!v241)
  {
    OUTLINED_FUNCTION_24_1();
    v63 = sub_25E635A30();
  }

  v64 = v237;
  *&v241 = v63;
  v65 = v46;
  v66 = *(swift_getAssociatedConformanceWitness() + 24);
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  v67 = sub_25E635B70();

  v68 = (*(v46 + 64))(v64, v46);
  v70 = v224;
  if (v68)
  {
    v221 = v67;
    *&v241 = v67;
    MEMORY[0x28223BE20](v68);
    *(&v216 - 6) = v70;
    *(&v216 - 5) = v39;
    *(&v216 - 2) = v232;
    v71 = v229;
    *(&v216 - 2) = v229;
    OUTLINED_FUNCTION_24_1();
    sub_25E635BE0();
    swift_getWitnessTable();
    v222 = v39;
    v72 = v236;
    sub_25E635920();
    v73 = v222;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v222);
    if (EnumTagSinglePayload == 1)
    {
      *&v241 = v71;
      MEMORY[0x28223BE20](EnumTagSinglePayload);
      OUTLINED_FUNCTION_34_1();
      *&v75 = v70;
      *(&v75 + 1) = v73;
      v76 = v232;
      *(v77 - 32) = v75;
      *(v77 - 16) = v76;
      v78 = sub_25E635AC0();
      OUTLINED_FUNCTION_1_3();
      swift_getWitnessTable();
      if (sub_25E635970())
      {

        if (qword_27FCF8C18 != -1)
        {
          OUTLINED_FUNCTION_0_9();
          swift_once();
        }

        v79 = sub_25E635710();
        OUTLINED_FUNCTION_38_1(v79, qword_27FCFD930);
        v80 = *(v239 + 16);
        v81 = OUTLINED_FUNCTION_12_3(&a15);
        v80(v81);
        swift_unknownObjectRetain_n();
        v82 = sub_25E6356F0();
        v83 = sub_25E635CF0();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          LODWORD(AssociatedConformanceWitness) = v83;
          v85 = v84;
          OUTLINED_FUNCTION_22_1();
          v235 = swift_slowAlloc();
          *&v244 = v235;
          *v85 = 136315906;
          *&v232 = v82;
          (v80)(v233, &v216 - 8, v70);
          sub_25E635820();
          v87 = v86;
          v88 = OUTLINED_FUNCTION_45_1();
          v89(v88);
          v90 = OUTLINED_FUNCTION_17_4();
          v92 = sub_25E6011D4(v90, v87, v91);

          *(v85 + 4) = v92;
          *(v85 + 12) = 2080;
          v93 = *(v65 + 40);
          v94 = OUTLINED_FUNCTION_21_1();
          v93(v94);
          v95 = v241;

          v96 = OUTLINED_FUNCTION_17_4();
          sub_25E6011D4(v96, *(&v95 + 1), v97);
          OUTLINED_FUNCTION_18_3();

          *(v85 + 14) = v95;
          *(v85 + 22) = 2048;
          v98 = OUTLINED_FUNCTION_21_1();
          v100 = v99(v98);
          v102 = OUTLINED_FUNCTION_23_1(v100, v101);
          swift_unknownObjectRelease();

          *(v85 + 24) = v102;
          swift_unknownObjectRelease();
          *(v85 + 32) = 2048;
          v103 = OUTLINED_FUNCTION_21_1();
          v93(v103);
          v104 = v243;
          swift_unknownObjectRelease();

          *(v85 + 34) = v104;
          swift_unknownObjectRelease();
          v105 = v232;
          OUTLINED_FUNCTION_42_1();
          _os_log_impl(v106, v107, v108, v109, v110, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
          OUTLINED_FUNCTION_2_5();
          MEMORY[0x25F8BA800]();
        }

        else
        {

          swift_unknownObjectRelease_n();
          v181 = OUTLINED_FUNCTION_45_1();
          v182(v181);
        }

        (*(v230 + 8))(v236, v231);
        goto LABEL_34;
      }

      *&v232 = v66;
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v148 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v148, qword_27FCFD930);
      v149 = *(v239 + 16);
      swift_unknownObjectRetain();
      v150 = OUTLINED_FUNCTION_12_3(&a16);
      (v149)(v150);
      swift_unknownObjectRetain_n();
      v151 = sub_25E6356F0();
      sub_25E635CF0();
      OUTLINED_FUNCTION_53_1();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        OUTLINED_FUNCTION_22_1();
        v229 = swift_slowAlloc();
        *&v244 = v229;
        *v153 = 136315906;
        v218 = *(v65 + 40);
        v228 = v151;
        v154 = OUTLINED_FUNCTION_15_4();
        v155(v154);
        v219 = v149;
        v156 = *(&v241 + 1);
        LODWORD(v226) = v78;

        v157 = OUTLINED_FUNCTION_17_4();
        v159 = sub_25E6011D4(v157, v156, v158);

        *(v153 + 4) = v159;
        *(v153 + 12) = 2048;
        v160 = OUTLINED_FUNCTION_15_4();
        v162 = v161(v160);
        v164 = OUTLINED_FUNCTION_23_1(v162, v163);
        swift_unknownObjectRelease();

        *(v153 + 14) = v164;
        swift_unknownObjectRelease();
        *(v153 + 22) = 2048;
        v165 = OUTLINED_FUNCTION_15_4();
        v218(v165);
        v166 = *(&v241 + 1);
        v167 = v242;
        v168 = v243;
        swift_unknownObjectRelease();

        *(v153 + 24) = v168;
        swift_unknownObjectRelease();
        *(v153 + 32) = 2080;
        OUTLINED_FUNCTION_54_1();
        v219();
        OUTLINED_FUNCTION_45_1();
        sub_25E635820();
        v169 = OUTLINED_FUNCTION_25_1();
        v170(v169);
        v171 = OUTLINED_FUNCTION_17_4();
        sub_25E6011D4(v171, v167, v172);
        OUTLINED_FUNCTION_65_0();
        *(v153 + 34) = v166;
        OUTLINED_FUNCTION_58_0();
        v173 = v228;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v174, v175, v176, v177, v178, 0x2Au);
        OUTLINED_FUNCTION_51_1();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        swift_unknownObjectRelease_n();
        v183 = OUTLINED_FUNCTION_45_1();
        v184(v183);
      }
    }

    else
    {
      *&v232 = v66;
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v111 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v111, qword_27FCFD930);
      v113 = (v239 + 16);
      v112 = *(v239 + 16);
      swift_unknownObjectRetain();
      v114 = OUTLINED_FUNCTION_12_3(&a17);
      v229 = v112;
      (v112)(v114);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v115 = sub_25E6356F0();
      sub_25E635CF0();
      OUTLINED_FUNCTION_53_1();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        *&v244 = v227;
        *v117 = 136316162;
        v218 = v113;
        v217 = *(v65 + 40);
        v226 = v115;
        v118 = OUTLINED_FUNCTION_62();
        v119(v118);
        LODWORD(v219) = &v216;
        v120 = *(&v241 + 1);

        v121 = OUTLINED_FUNCTION_17_4();
        v123 = sub_25E6011D4(v121, v120, v122);

        *(v117 + 4) = v123;
        *(v117 + 12) = 2048;
        v124 = OUTLINED_FUNCTION_62();
        v126 = v125(v124);
        v128 = OUTLINED_FUNCTION_23_1(v126, v127);
        swift_unknownObjectRelease();

        *(v117 + 14) = v128;
        swift_unknownObjectRelease();
        *(v117 + 22) = 2048;
        v129 = OUTLINED_FUNCTION_62();
        v217(v129);
        v130 = v242;
        v131 = v243;
        swift_unknownObjectRelease();

        *(v117 + 24) = v131;
        swift_unknownObjectRelease();
        *(v117 + 32) = 2080;
        v132 = v233;
        OUTLINED_FUNCTION_54_1();
        v229();
        sub_25E635820();
        v133 = OUTLINED_FUNCTION_25_1();
        v134(v133);
        v135 = OUTLINED_FUNCTION_17_4();
        sub_25E6011D4(v135, v130, v136);
        OUTLINED_FUNCTION_65_0();
        *(v117 + 34) = v132;
        *(v117 + 42) = 2080;
        v137 = sub_25E635B50();
        v139 = v138;
        swift_bridgeObjectRelease_n();
        v140 = OUTLINED_FUNCTION_17_4();
        sub_25E6011D4(v140, v139, v141);
        OUTLINED_FUNCTION_65_0();
        *(v117 + 44) = v137;
        OUTLINED_FUNCTION_58_0();
        v142 = v226;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v143, v144, v145, v146, v147, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease_n();
        v179 = OUTLINED_FUNCTION_45_1();
        v180(v179);
      }
    }

    (*(v230 + 8))(v236, v231);
  }

  v185 = v223;
  sub_25E620F00(&v241, v69);
  v244 = v241;
  v187 = type metadata accessor for SummaryItemRequirementEvaluationCollection(0, v70, AssociatedConformanceWitness, v186);
  v188 = SummaryItemRequirementEvaluationCollection.evaluationResults(of:)(v235, v187);
  v189 = v244;

  if ((sub_25E5F7120(2u, v188) & 1) == 0)
  {
    sub_25E5F7120(1u, v188);
    OUTLINED_FUNCTION_55_1();

    if ((v189 & 1) == 0)
    {
      sub_25E620E6C(v191, v192);
      sub_25E635BB0();
      OUTLINED_FUNCTION_55_1();

      if (v185)
      {
      }

      else
      {
        v193 = sub_25E635B90();

        if (v193 <= 0)
        {
          v194 = v235;
          if (qword_27FCF8C18 != -1)
          {
            OUTLINED_FUNCTION_0_9();
            swift_once();
          }

          v195 = sub_25E635710();
          OUTLINED_FUNCTION_38_1(v195, qword_27FCFD930);
          v196 = *(v239 + 16);
          v197 = v225;
          v196(v225, v194, v70);
          v198 = sub_25E6356F0();
          sub_25E635CF0();
          v199 = OUTLINED_FUNCTION_7_5();
          if (os_log_type_enabled(v199, v200))
          {
            OUTLINED_FUNCTION_7_1();
            v201 = swift_slowAlloc();
            OUTLINED_FUNCTION_6_1();
            v202 = swift_slowAlloc();
            *&v241 = v202;
            *v201 = 136315138;
            v196(v233, v197, v70);
            v203 = sub_25E635820();
            v205 = v204;
            v206 = OUTLINED_FUNCTION_61_0();
            v207(v206);
            v208 = sub_25E6011D4(v203, v205, &v241);

            *(v201 + 4) = v208;
            OUTLINED_FUNCTION_42_1();
            _os_log_impl(v209, v210, v211, v212, v213, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v202);
            OUTLINED_FUNCTION_2_5();
            MEMORY[0x25F8BA800]();
            OUTLINED_FUNCTION_2_5();
            MEMORY[0x25F8BA800]();
          }

          else
          {

            v214 = OUTLINED_FUNCTION_61_0();
            v215(v214);
          }

          goto LABEL_34;
        }
      }

      v190 = 0;
      goto LABEL_39;
    }

LABEL_34:
    v190 = 1;
    goto LABEL_39;
  }

LABEL_31:
  v190 = 2;
LABEL_39:
  *v240 = v190;
  OUTLINED_FUNCTION_64_0();
}

BOOL sub_25E6247DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(&v12, a4, AssociatedConformanceWitness);
  if (!v12)
  {

    goto LABEL_5;
  }

  v8 = sub_25E636070();

  if (v8)
  {
LABEL_5:
    MEMORY[0x28223BE20](v9);
    sub_25E635AC0();
    swift_getWitnessTable();
    sub_25E635920();
    v10 = v12 == 0;
    swift_unknownObjectRelease();
    return v10;
  }

  return 0;
}

BOOL sub_25E6249B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(a6 + 64))(a5, a6))
  {
    return 0;
  }

  (*(a6 + 40))(&v11, a5, a6);

  sub_25E635AC0();
  swift_getAssociatedConformanceWitness();
  sub_25E635750();

  v8 = v10 != 0;
  if (v10)
  {
  }

  return v8;
}

uint64_t sub_25E624AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for RoundRobinElector.ItemAndClusterState(0, v14);
  *(a7 + *(result + 52)) = a2;
  return result;
}

void sub_25E624B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_63_0();
  v121 = v6;
  v123 = v7;
  OUTLINED_FUNCTION_49_1();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_49_1();
  v11 = *(v10 + 96);
  OUTLINED_FUNCTION_44_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_24_1();
  v103 = sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v102 = v13;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_57_0(v15, v102);
  OUTLINED_FUNCTION_3_8();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v122 = v19 - v20;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_49_1();
  v23 = *(v22 + 88);
  OUTLINED_FUNCTION_49_1();
  v25 = *(v24 + 104);
  *&v26 = v11;
  *(&v26 + 1) = v25;
  v114 = v26;
  v115 = v27;
  v125[1] = v26;
  v125[0] = v27;
  v28 = type metadata accessor for RoundRobinElector.ItemAndClusterState(255, v125);
  OUTLINED_FUNCTION_13_3();
  v124 = sub_25E635D30();
  OUTLINED_FUNCTION_3_8();
  v105 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v106 = v31 - v32;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v33);
  v35 = &v102 - v34;
  v36 = *(v17 + 16);
  v17 += 16;
  v36(v5, v123, v9);
  v37 = v5;
  v38 = v11;
  v108 = v23;
  sub_25E624AD8(v37, v121, v9, v23, v11, v25, v35);
  v119 = 1;
  v39 = v28;
  v40 = v9;
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v39);
  v111 = v17 + 16;
  v123 = *(v4 + 56);
  v110 = v25 + 72;
  v112 = v17 - 8;
  v117 = (v105 + 8);
  v105 += 32;
  v41 = swift_unknownObjectRetain();
  v43 = 0;
  v44 = 0;
  *&v45 = 134217984;
  v104 = v45;
  v107 = v38;
  v113 = v25;
  v118 = TupleTypeMetadata2;
  v109 = v35;
  v120 = v4;
  while (1)
  {
    sub_25E620F70(v41, v42);
    v46 = sub_25E635A60();

    if (v46 >= v123)
    {
      v96 = OUTLINED_FUNCTION_31_1();
      goto LABEL_18;
    }

    MEMORY[0x28223BE20](v47);
    v48 = v114;
    *(&v102 - 2) = v115;
    *(&v102 - 1) = v48;
    v49 = v116;
    sub_25E620BA0(sub_25E627078, MEMORY[0x277D84A98], TupleTypeMetadata2, v50, v116);
    if (__swift_getEnumTagSinglePayload(v49, 1, TupleTypeMetadata2) == 1)
    {
      v98 = OUTLINED_FUNCTION_31_1();
      v99(v98, v124);
      (*(v102 + 8))(v49, v103);
      goto LABEL_19;
    }

    v121 = v44;
    OUTLINED_FUNCTION_17();
    v51 = v122;
    v52(v122, v49, v40);
    sub_25E6253E0(v51, v53, v54, v55);
    (*(v113 + 72))(v51, v38, v113);
    OUTLINED_FUNCTION_20_1();
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    v56 = OUTLINED_FUNCTION_13_3();
    v60 = type metadata accessor for SummaryItemRequirementEvaluationCollection(v56, v57, v58, v59);
    v61 = SummaryItemRequirementEvaluationCollection.updateRequirements(with:)(v51, v60);
    v62 = v40;
    v63 = v61;
    v64 = swift_endAccess();
    sub_25E620F70(v64, v65);
    v66 = v62;
    v67 = sub_25E635A60();

    if (v67 >= v123)
    {
      break;
    }

    sub_25E620E6C(v68, v69);
    OUTLINED_FUNCTION_18_3();
    swift_getAssociatedConformanceWitness();
    v70 = sub_25E635BB0();

    if ((v70 | v63))
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v74 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v74, qword_27FCFD930);

      v75 = sub_25E6356F0();
      v76 = sub_25E635CF0();
      if (os_log_type_enabled(v75, v76))
      {
        OUTLINED_FUNCTION_7_1();
        v77 = swift_slowAlloc();
        OUTLINED_FUNCTION_30_1(v77);
        sub_25E621004(v78, v79);
        v80 = sub_25E635A60();

        *(v77 + 4) = v80;

        _os_log_impl(&dword_25E5F0000, v75, v76, "Re-processing %ld items in waiting room", v77, 0xCu);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }

      else
      {
      }

      v90 = v109;
      *&v125[0] = 0;
      v91 = v106;
      sub_25E6258A0(v125, v81, v82, v83);
      swift_unknownObjectRelease();
      v92 = OUTLINED_FUNCTION_11_4();
      v40 = v66;
      v93(v92, v66);
      v94 = OUTLINED_FUNCTION_31_1();
      v86 = v124;
      v95(v94, v124);
      OUTLINED_FUNCTION_17();
      v87 = v90;
      v88 = v91;
    }

    else
    {
      v40 = v66;
      if (v119)
      {
        break;
      }

      *&v125[0] = v43;
      sub_25E6258A0(v125, v71, v72, v73);
      swift_unknownObjectRelease();
      v84 = OUTLINED_FUNCTION_11_4();
      v85(v84, v66);
      v86 = v124;
      (*v117)(v109, v124);
      OUTLINED_FUNCTION_17();
      v87 = OUTLINED_FUNCTION_62();
    }

    v41 = v89(v87, v88, v86);
    v119 = 0;
    v43 = *&v125[0];
    v38 = v107;
    TupleTypeMetadata2 = v118;
    v44 = v121;
  }

  swift_unknownObjectRelease();
  v100 = OUTLINED_FUNCTION_11_4();
  v101(v100, v66);
  v97 = *v117;
  v96 = v109;
LABEL_18:
  v97(v96, v124);
LABEL_19:
  OUTLINED_FUNCTION_64_0();
}

double sub_25E625314@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a2 - 8) + 16))(a6, a1, a2);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  *(a6 + v12) = *(a1 + *(type metadata accessor for RoundRobinElector.ItemAndClusterState(0, v14) + 52));
  swift_unknownObjectRetain();
  return result;
}

void sub_25E6253E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_63_0();
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_62_0();
  v10(v9);
  OUTLINED_FUNCTION_20_1();
  swift_beginAccess();
  sub_25E635AC0();
  sub_25E635A80();
  swift_endAccess();
  v11 = *(v5 + 88);
  v12 = sub_25E635AC0();
  v48 = *(v6 + 96);
  swift_getAssociatedConformanceWitness();
  v13 = sub_25E635750();
  if (v50[0])
  {
    v15 = sub_25E620E6C(v13, v14);
    v16 = *(swift_getAssociatedConformanceWitness() + 24);
    OUTLINED_FUNCTION_1_3();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x25F8B9820](v50, v15, v11, v12, v16, WitnessTable);
    OUTLINED_FUNCTION_65_0();
    v19 = sub_25E620E98(v15, v18);
    sub_25E620E6C(v19, v20);
    v21 = sub_25E635B90();

    if (v21 <= 0)
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v38 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v38, qword_27FCFD930);
      v39 = sub_25E6356F0();
      sub_25E635CF0();
      v40 = OUTLINED_FUNCTION_7_5();
      if (os_log_type_enabled(v40, v41))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v42, v43, v44, v45, v46, 2u);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }
    }

    else
    {
      if (qword_27FCF8C18 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v22 = sub_25E635710();
      OUTLINED_FUNCTION_38_1(v22, qword_27FCFD930);

      v23 = sub_25E6356F0();
      v24 = sub_25E635CF0();

      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_7_1();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_6_1();
        v26 = swift_slowAlloc();
        v50[0] = v26;
        *v25 = 136315138;
        v47[1] = v47;
        v49 = sub_25E620E6C(v26, v27);
        MEMORY[0x28223BE20](v49);
        *&v28 = v7;
        *(&v28 + 1) = v11;
        v29 = v48;
        *&v47[-4] = v28;
        *&v47[-2] = v29;
        v30 = sub_25E635BE0();
        OUTLINED_FUNCTION_8_5();
        v31 = swift_getWitnessTable();
        v33 = sub_25E5FB6F4(sub_25E627054, &v47[-6], v30, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v32);

        v49 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
        sub_25E60EF1C();
        v34 = sub_25E6357A0();
        v36 = v35;

        v37 = sub_25E6011D4(v34, v36, v50);

        *(v25 + 4) = v37;
        _os_log_impl(&dword_25E5F0000, v23, v24, "[featuresToRepresent] Remaining\n%s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
        OUTLINED_FUNCTION_2_5();
        MEMORY[0x25F8BA800]();
      }
    }
  }

  OUTLINED_FUNCTION_64_0();
}

void sub_25E6258A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_63_0();
  v87 = v7;
  v85 = v8;
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = *(*v4 + 96);
  OUTLINED_FUNCTION_44_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  OUTLINED_FUNCTION_3_8();
  v86 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_35_1();
  MEMORY[0x28223BE20](v17);
  v82 = &v80 - v18;
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x28223BE20](v19);
  v88 = &v80 - v20;
  if (qword_27FCF8C18 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v21 = sub_25E635710();
  OUTLINED_FUNCTION_38_1(v21, qword_27FCFD930);

  v81 = v4;
  v22 = sub_25E6356F0();
  sub_25E635CF0();
  OUTLINED_FUNCTION_53_1();
  v24 = os_log_type_enabled(v22, v23);
  v84 = v9;
  v80 = v6;
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    sub_25E621004(v25, v26);
    v27 = v10;
    v28 = sub_25E635A60();

    *(v25 + 4) = v28;
    v10 = v27;

    _os_log_impl(&dword_25E5F0000, v22, v5, "Checking %ld items in waiting room for new requirements...", v25, 0xCu);
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x25F8BA800](v29);
  }

  else
  {
  }

  v32 = *v87;
  sub_25E621004(v30, v31);
  v33 = sub_25E635A60();

  v90 = v33;
  if (v33 < v32)
  {
    __break(1u);
  }

  else
  {
    v83 = v11;
    v89 = (v86 + 32);
    v36 = (v86 + 8);
    v37 = v88;
    while (1)
    {
      if (v90 == v32)
      {
        v50 = *(v84 + 88);
        v51 = *(v84 + 104);
        v92 = v10;
        v93 = v50;
        v94 = v83;
        v95 = v51;
        v52 = type metadata accessor for RoundRobinElector.ItemAndClusterState(0, &v92);
        v53 = 1;
        v54 = v85;
        goto LABEL_16;
      }

      sub_25E621004(v34, v35);
      sub_25E635AE0();

      isa = v89->isa;
      v39 = (v89->isa)(v37, v14, v10);
      v41 = v10;
      v42 = sub_25E620ED4(v39, v40);
      v43 = OUTLINED_FUNCTION_15_4();
      sub_25E623614(v43, v44, v42, v45, v46, v47, v48, v49, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, TupleTypeMetadata2);

      if (!v92)
      {
        break;
      }

      (v36->isa)(v37, v41);
      v34 = swift_unknownObjectRelease();
      ++v32;
      v10 = v41;
    }

    v55 = v82;
    v86 = *(v86 + 2);
    (v86)(v82, v37, v41);
    swift_unknownObjectRetain();
    v56 = sub_25E6356F0();
    v57 = sub_25E635CF0();
    swift_unknownObjectRelease();
    LODWORD(v90) = v57;
    v58 = os_log_type_enabled(v56, v57);
    TupleTypeMetadata2 = v32 + 1;
    if (v58)
    {
      OUTLINED_FUNCTION_19_1();
      v59 = v55;
      v60 = swift_slowAlloc();
      OUTLINED_FUNCTION_22_1();
      v81 = swift_slowAlloc();
      v96 = v81;
      *v60 = 136315394;
      v61 = v80;
      (v86)(v80, v59, v41);
      v62 = sub_25E635820();
      v86 = v56;
      v63 = v62;
      v65 = v64;
      (v36->isa)(v59, v41);
      v66 = sub_25E6011D4(v63, v65, &v96);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2080;
      v68 = v83;
      v67 = v84;
      (*(*(v84 + 104) + 40))(&v92, v83);
      v69 = v92;
      v70 = v93;

      v37 = v88;

      v71 = sub_25E6011D4(v69, v70, &v96);

      *(v60 + 14) = v71;
      v72 = v86;
      _os_log_impl(&dword_25E5F0000, v86, v90, "Accepting item %s from cluster %s from the waiting room", v60, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();
      OUTLINED_FUNCTION_2_5();
      MEMORY[0x25F8BA800]();

      v73 = v41;
    }

    else
    {

      (v36->isa)(v55, v41);
      v68 = v83;
      v67 = v84;
      v73 = v41;
      v61 = v80;
    }

    *v87 = TupleTypeMetadata2;
    isa(v61, v37, v73);
    v74 = *(v67 + 88);
    v75 = *(v67 + 104);
    v76 = v73;
    v54 = v85;
    v77 = OUTLINED_FUNCTION_62();
    sub_25E624AD8(v77, v78, v76, v74, v68, v75, v79);
    v92 = v76;
    v93 = v74;
    v94 = v68;
    v95 = v75;
    v52 = type metadata accessor for RoundRobinElector.ItemAndClusterState(0, &v92);
    v53 = 0;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v54, v53, 1, v52);
    OUTLINED_FUNCTION_64_0();
  }
}