uint64_t sub_274B0E618(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for WFContentItemListThumbnailOption(0);
    sub_274B0F25C();
    sub_274BF4DF4();
  }

  v5 = a2;
  v6 = OUTLINED_FUNCTION_11_1();
  v4(v6);
}

uint64_t ContentItemDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__subtitle;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A3F0, &qword_274BFBC68);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__altText, v2);
  v4 = OBJC_IVAR____TtC14WorkflowUICore21ContentItemDataSource__thumbnail;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A410, &qword_274BFBD08);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t ContentItemDataSource.__deallocating_deinit()
{
  ContentItemDataSource.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B0E810@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContentItemDataSource(0);
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ContentItemDataSource(uint64_t a1)
{
  result = qword_28098A430;
  if (!qword_28098A430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274B0E8A4(uint64_t a1)
{
  sub_274B0ED4C(319, &qword_28098A440, &qword_28098A420, &qword_274BFBD18);
  if (v1 <= 0x3F)
  {
    sub_274B0ED4C(319, qword_28098A448, &qword_28098A428, &qword_274BFBD20);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_274B0ED4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_274BF2D94();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_274B0EDA8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_274B0EE04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 3;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 2)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 3) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 4)
        {
          return EnumTagSinglePayload - 3;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_274B0EFD0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 3;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 2)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 3) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 3;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_274B0F25C()
{
  result = qword_280989798;
  if (!qword_280989798)
  {
    type metadata accessor for WFContentItemListThumbnailOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989798);
  }

  return result;
}

unint64_t sub_274B0F2B4()
{
  result = qword_280989F80;
  if (!qword_280989F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280989F80);
  }

  return result;
}

id sub_274B0F2F8(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_274B0F308(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1)
{

  return sub_274BF2D64();
}

uint64_t TapToRadar.RadarComponent.hashValue.getter()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

WorkflowUICore::TapToRadar::RadarClassification_optional __swiftcall TapToRadar.RadarClassification.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_8();
  v2 = sub_274BF5B24();

  v4 = 11;
  if (v2 < 0xB)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t TapToRadar.RadarClassification.rawValue.getter()
{
  result = 0x7974697275636553;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x7265776F50;
      break;
    case 3:
      result = 0x616D726F66726550;
      break;
    case 4:
      result = 0x69626173552F4955;
      break;
    case 5:
      result = 0x2073756F69726553;
      break;
    case 6:
      result = 0x754220726568744FLL;
      break;
    case 7:
      result = 0x2065727574616546;
      break;
    case 8:
      result = 0x6D65636E61686E45;
      break;
    case 9:
      result = 1802723668;
      break;
    case 0xA:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_274B0F5AC@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadar.RadarClassification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WorkflowUICore::TapToRadar::Reproducibility_optional __swiftcall TapToRadar.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_8();
  v2 = sub_274BF5B24();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t TapToRadar.Reproducibility.rawValue.getter()
{
  result = 0x737961776C41;
  switch(*v0)
  {
    case 1:
      result = 0x656D6974656D6F53;
      break;
    case 2:
      result = 0x796C65726152;
      break;
    case 3:
      result = 0x656C62616E55;
      break;
    case 4:
      result = 0x74276E6469442049;
      break;
    case 5:
      result = 0x6C70704120746F4ELL;
      break;
    case 6:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274B0F718@<X0>(uint64_t *a1@<X8>)
{
  result = TapToRadar.Reproducibility.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WorkflowUICore::TapToRadar::Diagnostics_optional __swiftcall TapToRadar.Diagnostics.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_1_8();
  v2 = sub_274BF5B24();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t TapToRadar.Diagnostics.rawValue.getter()
{
  result = 0x656E6F6870;
  switch(*v0)
  {
    case 1:
      result = 0x61772C656E6F6870;
      break;
    case 2:
      result = 48;
      break;
    case 3:
      result = 12589;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_274B0F860@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadar.Diagnostics.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static TapToRadar.launchTapToRadar(title:description:classification:component:reproducibility:diagnostics:attachments:extensionIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v11 = sub_274BF1B94();
  OUTLINED_FUNCTION_1();
  v43 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_10();
  v42 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v15 - 8);
  v44 = v34 - v16;
  v17 = sub_274BF1F54();
  OUTLINED_FUNCTION_1();
  v38 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_10();
  v37 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A4D0, &qword_274BFBE28);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v34 - v22;
  v24 = *a8;
  sub_274BF1B84();
  if (!__swift_getEnumTagSinglePayload(v23, 1, v11))
  {
    v35 = a10;
    v36 = v17;
    v34[0] = a9;
    v34[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A4D8, &unk_274BFBE30);
    sub_274BF1B54();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_274BFBE10;
    v34[2] = v25;
    sub_274BF1B44();
    sub_274BF1B44();
    sub_274BF1B44();

    sub_274BF1B44();

    sub_274BF1B44();

    sub_274BF1B44();

    sub_274BF1B44();

    v45 = v34[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
    sub_274B1023C();
    OUTLINED_FUNCTION_2_10();
    sub_274BF1B44();

    sub_274BF1B44();

    v45 = v35;
    OUTLINED_FUNCTION_2_10();
    sub_274BF1B44();

    sub_274BF1B64();
    v17 = v36;
  }

  if (__swift_getEnumTagSinglePayload(v23, 1, v11))
  {
    v26 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v17);
  }

  else
  {
    v28 = v42;
    v27 = v43;
    (*(v43 + 16))(v42, v23, v11);
    v26 = v44;
    sub_274BF1B74();
    (*(v27 + 8))(v28, v11);
    if (__swift_getEnumTagSinglePayload(v26, 1, v17) != 1)
    {
      v31 = v37;
      v30 = v38;
      (*(v38 + 32))(v37, v26, v17);
      v32 = [objc_opt_self() sharedContext];
      v33 = sub_274BF1ED4();
      [v32 openURL_];

      (*(v30 + 8))(v31, v17);
      return sub_274B0671C(v23, &qword_28098A4D0, &qword_274BFBE28);
    }
  }

  sub_274B0671C(v26, &qword_28098EEE0, &qword_274BFA930);
  return sub_274B0671C(v23, &qword_28098A4D0, &qword_274BFBE28);
}

unint64_t sub_274B1023C()
{
  result = qword_28098A4E0;
  if (!qword_28098A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280989650, &qword_274BF9680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A4E0);
  }

  return result;
}

unint64_t sub_274B102BC()
{
  result = qword_28098A4E8;
  if (!qword_28098A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A4E8);
  }

  return result;
}

unint64_t sub_274B10314()
{
  result = qword_28098A4F0;
  if (!qword_28098A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A4F0);
  }

  return result;
}

unint64_t sub_274B1036C()
{
  result = qword_28098A4F8;
  if (!qword_28098A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A4F8);
  }

  return result;
}

unint64_t sub_274B103C4()
{
  result = qword_28098A500;
  if (!qword_28098A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A500);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TapToRadar.RadarComponent(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadar.RadarClassification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TapToRadar.RadarClassification(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadar.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TapToRadar.Reproducibility(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadar.Diagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TapToRadar.Diagnostics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void ShareButton.init(contentItem:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ContentItemShareManager(0);
  swift_allocObject();
  v4 = a1;
  sub_274B1101C(a1);
  OUTLINED_FUNCTION_0_7();
  sub_274B12EF4(v5, v6, &protocol conformance descriptor for ContentItemShareManager);
  v7 = sub_274BF3264();
  v9 = v8;

  *a2 = v7;
  a2[1] = v9;
}

uint64_t type metadata accessor for ContentItemShareManager(uint64_t a1)
{
  result = qword_28098A538;
  if (!qword_28098A538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F38, &qword_274BFB160);
  sub_274B01CF8();
  sub_274BF47C4();
  type metadata accessor for ContentItemShareManager(0);
  OUTLINED_FUNCTION_0_7();
  sub_274B12EF4(v6, v7, &protocol conformance descriptor for ContentItemShareManager);

  v8 = sub_274BF3264();
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A510, &qword_274BFC180);
  v12 = (a1 + *(result + 36));
  *v12 = v8;
  v12[1] = v10;
  return result;
}

uint64_t sub_274B10B5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0, &qword_274BFC4C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_274BF46D4();
  v6 = [objc_opt_self() defaultMetrics];
  [v6 scaledValueForValue_];

  v7 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = sub_274BF3F44();
  sub_274B12D7C(v4, &qword_280989DC0, &qword_274BFC4C0);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v8;
  return result;
}

double View.contentItemShareSheet(shareManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContentItemShareManager(0);
  OUTLINED_FUNCTION_0_7();
  sub_274B12EF4(v5, v6, &protocol conformance descriptor for ContentItemShareManager);

  v9[0] = sub_274BF3264();
  v9[1] = v7;
  MEMORY[0x277C63D20](v9, a2, &type metadata for ContentItemShareModifier, a3);

  return result;
}

uint64_t sub_274B10D6C(uint64_t a1, uint64_t a2)
{
  sub_274AD8430(0, &qword_28098B310, 0x277D82BB8);
  if (sub_274BF5624())
  {
    v4 = *(a1 + 24) ^ *(a2 + 24) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_274B10DE0()
{

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B10E18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v1;
}

uint64_t sub_274B10E8C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B10EFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B10D64();
  *a1 = result;
  return result;
}

double sub_274B10F34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return result;
}

uint64_t sub_274B10FAC(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274B1101C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A530, &qword_274BFC190);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A520, &qword_274BFC188);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v15 = OBJC_IVAR____TtC14WorkflowUICore23ContentItemShareManager__sharedItem;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A550, &qword_274BFC2D0);
  sub_274BF2D24();
  (*(v11 + 32))(v1 + v15, v14, v9);
  v16 = OBJC_IVAR____TtC14WorkflowUICore23ContentItemShareManager__sharingError;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A560, &qword_274BFC2D8);
  sub_274BF2D24();
  (*(v5 + 32))(v1 + v16, v8, v3);
  *(v1 + 16) = a1;
  return v1;
}

void sub_274B1125C(__n128 a1)
{
  v3 = sub_274BF2BE4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  v11 = *(v1 + 16);
  if (v11)
  {
    v41 = v1;
    v12 = v11;
    sub_274BF2A54();
    v13 = v12;
    v14 = sub_274BF2BD4();
    v15 = sub_274BF5484();

    v16 = os_log_type_enabled(v14, v15);
    v42 = v3;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v40[1] = v2;
      v18 = v17;
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v13;
      *v19 = v11;
      v20 = v13;
      _os_log_impl(&dword_274AD4000, v14, v15, "Sharing content: %@", v18, 0xCu);
      sub_274B12D7C(v19, &qword_28098A5F0, &qword_274BFC478);
      v21 = v19;
      v3 = v42;
      MEMORY[0x277C664A0](v21, -1, -1);
      MEMORY[0x277C664A0](v18, -1, -1);
    }

    v22 = *(v5 + 8);
    v22(v10, v3);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = [v13 attributionSet];
    v25 = [v24 isEligibleToShareWithResultManagedLevel_];

    if (v25)
    {
      v26 = swift_allocObject();
      v26[2] = v41;
      v26[3] = v13;
      v26[4] = v23;
      aBlock[4] = sub_274B12D58;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274B02D5C;
      aBlock[3] = &block_descriptor_1;
      v27 = _Block_copy(aBlock);
      v13 = v13;

      [v13 prepareForPresentationWithCompletionHandler_];
      _Block_release(v27);
    }

    else
    {
      v28 = v44;
      sub_274BF2A54();
      v29 = sub_274BF2BD4();
      v30 = sub_274BF5474();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_274AD4000, v29, v30, "Could not share content because of MDM restrictions", v31, 2u);
        MEMORY[0x277C664A0](v31, -1, -1);
      }

      v22(v28, v42);
      v32 = objc_opt_self();
      sub_274BF4FE4("Share", 5);
      if (qword_2809893B8 != -1)
      {
        swift_once();
      }

      v33 = qword_28098C7C0;
      v34 = sub_274BF4F04();
      v35 = sub_274BF4F04();

      v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

      v37 = sub_274BF4F44();
      v39 = v38;

      sub_274B12CF4(v37, v39, v32);
      swift_willThrow();
    }
  }
}

uint64_t sub_274B11704(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16) == 2;
  type metadata accessor for SharedItem();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  v7 = a2;
  return sub_274B10E8C(v6);
}

uint64_t ContentItemShareManager.deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore23ContentItemShareManager__sharedItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A520, &qword_274BFC188);
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowUICore23ContentItemShareManager__sharingError;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A530, &qword_274BFC190);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t ContentItemShareManager.__deallocating_deinit()
{
  ContentItemShareManager.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274B1188C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContentItemShareManager(0);
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

void sub_274B11924(uint64_t a1)
{
  sub_274B0ED4C(319, &qword_28098A548, &qword_28098A550, &qword_274BFC2D0);
  if (v1 <= 0x3F)
  {
    sub_274B0ED4C(319, &qword_28098A558, &qword_28098A560, &qword_274BFC2D8);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_274B11A40()
{
  result = qword_28098A568;
  if (!qword_28098A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A510, &qword_274BFC180);
    sub_274AFA930(&qword_28098A570, &qword_28098A578, &unk_274BFC2E0, MEMORY[0x277CDF028]);
    sub_274B11AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A568);
  }

  return result;
}

unint64_t sub_274B11AF8()
{
  result = qword_28098A580;
  if (!qword_28098A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A580);
  }

  return result;
}

uint64_t sub_274B11B4C(uint64_t a1, int a2)
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

uint64_t sub_274B11B8C(uint64_t result, int a2, int a3)
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

uint64_t sub_274B11BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v57 = a2;
  v58 = a1;
  v65 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A588, &qword_274BFC3C0);
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  MEMORY[0x28223BE20](v4);
  v54 = &v54 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A590, &qword_274BFC3C8);
  MEMORY[0x28223BE20](v59);
  v66 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A598, &qword_274BFC3D0);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v54 - v9;
  v56 = type metadata accessor for ContentItemShareManager(0);
  sub_274B12EF4(&qword_28098A508, type metadata accessor for ContentItemShareManager, &protocol conformance descriptor for ContentItemShareManager);
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  v74 = v67;
  v75 = v68;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5A0, &qword_274BFC400);
  v11 = type metadata accessor for SharedItem();
  v12 = sub_274AFA930(&qword_28098A5A8, &qword_28098A5A0, &qword_274BFC400, MEMORY[0x277CE04B0]);
  v52 = sub_274B12EF4(&qword_28098A5B0, type metadata accessor for SharedItem, &unk_274BFC384);
  v53 = sub_274B12730();
  sub_274BF4404();

  v13 = v55;
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  v72 = v74;
  v73 = v75;
  *&v67 = v10;
  *(&v67 + 1) = v11;
  v14 = v59;
  v68 = &type metadata for ShareActivityView;
  v69 = v12;
  v70 = v52;
  v71 = v53;
  swift_getOpaqueTypeConformance2();
  sub_274B12784();
  v15 = v66;
  v16 = v60;
  v17 = v54;
  sub_274BF43C4();
  v18 = v73;

  (*(v61 + 8))(v17, v16);
  v19 = *(v13 + 16);
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 == 0;
  v22 = &v15[*(v14 + 36)];
  *v22 = KeyPath;
  v22[1] = sub_274B12AAC;
  v22[2] = v21;
  if (v19)
  {
    v23 = v14;
    v24 = v19;
    sub_274BF4FE4("Share '%@'", 10);
    if (qword_2809893B8 != -1)
    {
      swift_once();
    }

    v25 = qword_28098C7C0;
    v26 = sub_274BF4F04();
    v27 = sub_274BF4F04();

    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    sub_274BF4F44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8, &qword_274C03800);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_274BF8D80;
    v30 = [v24 name];
    v31 = sub_274BF4F44();
    v33 = v32;

    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_274B12CA0();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    v34 = sub_274BF4F14();
    v36 = v35;

    v14 = v23;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  *&v67 = v34;
  *(&v67 + 1) = v36;
  v37 = sub_274B12AC4();
  v38 = sub_274ADDF6C();
  v39 = MEMORY[0x277D837D0];
  v40 = v62;
  v41 = v66;
  sub_274BF43A4();

  sub_274AE7068(v41);
  sub_274BF4FE4("Share", 5);
  v42 = v14;
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v43 = qword_28098C7C0;
  v44 = sub_274BF4F04();
  v45 = sub_274BF4F04();

  v46 = [v43 &selRef_sourceRect + 4];

  v47 = sub_274BF4F44();
  v49 = v48;

  *&v74 = v47;
  *(&v74 + 1) = v49;
  *&v67 = v42;
  *(&v67 + 1) = v39;
  v68 = v37;
  v69 = v38;
  swift_getOpaqueTypeConformance2();
  v50 = v64;
  sub_274BF42F4();

  return (*(v63 + 8))(v40, v50);
}

uint64_t sub_274B1244C(id *a1)
{
  v3 = *a1;
  v1 = v3;
  return sub_274B10FAC(&v3);
}

void sub_274B12488(id *a1@<X0>, uint64_t a2@<X8>)
{
  v28[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5E8, &qword_274BFC470);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v28 - v4;
  v6 = *a1;
  v7 = sub_274B19550(v6);
  v28[3] = v8;
  v28[4] = v7;
  v28[1] = v10;
  v28[2] = v9;
  v11 = [v6 localizedDescription];
  v12 = sub_274BF4F44();
  v14 = v13;

  v29 = v12;
  v30 = v14;
  sub_274ADDF6C();
  v15 = sub_274BF4104();
  sub_274BF4FE4("OK", 2, v15);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v16 = qword_28098C7C0;
  v17 = sub_274BF4F04();
  v18 = sub_274BF4F04();

  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = sub_274BF4F44();
  v22 = v21;

  v29 = v20;
  v30 = v22;
  v23 = sub_274BF4104();
  v25 = v24;
  LOBYTE(v20) = v26;
  sub_274BF4544();
  sub_274AFA1D0(v23, v25, v20 & 1);

  v27 = sub_274BF4554();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v27);
  sub_274BF4504();
}

unint64_t sub_274B12730()
{
  result = qword_28098A5B8;
  if (!qword_28098A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5B8);
  }

  return result;
}

unint64_t sub_274B12784()
{
  result = qword_28098A5C0;
  if (!qword_28098A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5C0);
  }

  return result;
}

id sub_274B127D8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A610, &qword_274BFFF90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_274BF8D80;
  v4 = *(a2 + 16);
  *(v3 + 56) = sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
  *(v3 + 32) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v6 = v4;
  v7 = sub_274B12A00(v3, 0);
  [v7 setIsContentManaged_];
  [v7 setAllowsCustomPresentationStyle_];
  [v7 setModalPresentationStyle_];
  return v7;
}

uint64_t sub_274B12910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B12F40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274B12974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B12F40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274B129D8(uint64_t a1)
{
  sub_274B12F40();
  sub_274BF3D84();
  __break(1u);
}

id sub_274B12A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_274BF5134();

  if (a2)
  {
    sub_274AD8430(0, &qword_28098A618, 0x277D546C8);
    v5 = sub_274BF5134();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 initWithActivityItems:v4 applicationActivities:v5];

  return v6;
}

unint64_t sub_274B12AC4()
{
  result = qword_28098A5C8;
  if (!qword_28098A5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A590, &qword_274BFC3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A588, &qword_274BFC3C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A5A0, &qword_274BFC400);
    type metadata accessor for SharedItem();
    sub_274AFA930(&qword_28098A5A8, &qword_28098A5A0, &qword_274BFC400, MEMORY[0x277CE04B0]);
    sub_274B12EF4(&qword_28098A5B0, type metadata accessor for SharedItem, &unk_274BFC384);
    sub_274B12730();
    swift_getOpaqueTypeConformance2();
    sub_274B12784();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098A5D0, &unk_28098AF40, &unk_274BFC460, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5C8);
  }

  return result;
}

unint64_t sub_274B12CA0()
{
  result = qword_28098A5E0;
  if (!qword_28098A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5E0);
  }

  return result;
}

id sub_274B12CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_274BF4F04();

  v5 = [a3 sharingMixedMDMContentErrorWithActionName_];

  return v5;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274B12D7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_274B12DE0()
{
  result = qword_28098A5F8;
  if (!qword_28098A5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A600, &qword_274BFC538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A590, &qword_274BFC3C8);
    sub_274B12AC4();
    sub_274ADDF6C();
    swift_getOpaqueTypeConformance2();
    sub_274B12EF4(&qword_2815A2F70, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A5F8);
  }

  return result;
}

uint64_t sub_274B12EF4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274B12F40()
{
  result = qword_28098A608;
  if (!qword_28098A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A608);
  }

  return result;
}

uint64_t sub_274B12F9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668, &unk_274C07120);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_274BF2BB4();
  __swift_allocate_value_buffer(v3, qword_28098A620);
  __swift_project_value_buffer(v3, qword_28098A620);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_274BF2AF4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_274B130D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668, &unk_274C07120);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_274BF2BB4();
  __swift_allocate_value_buffer(v3, qword_28098A638);
  __swift_project_value_buffer(v3, qword_28098A638);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_274BF2AF4();
}

uint64_t sub_274B131CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668, &unk_274C07120);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_274BF2BB4();
  __swift_allocate_value_buffer(v3, qword_28098A650);
  __swift_project_value_buffer(v3, qword_28098A650);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_274BF2B14();
}

uint64_t sub_274B132C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = sub_274BF2BB4();
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
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

uint64_t sub_274B133C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_274B13420(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_274B13460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B13508()
{
  OUTLINED_FUNCTION_17_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0, &qword_274BFB750);
  MEMORY[0x277C64160](&v2, v0);
  return v2;
}

uint64_t sub_274B13554()
{
  OUTLINED_FUNCTION_17_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0, &qword_274BFB750);
  return sub_274BF48D4();
}

uint64_t sub_274B135A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0, &qword_274BFB750);
  sub_274BF48E4();
  return v1;
}

uint64_t sub_274B13600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v277 = a2;
  sub_274BF3CC4();
  OUTLINED_FUNCTION_1();
  v261 = v6;
  v262 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_10();
  v260 = v7;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A6F0, &qword_274BFC6D8);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_0();
  v259 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A6F8, &qword_274BFC6E0);
  OUTLINED_FUNCTION_1();
  v265 = v11;
  v266 = v10;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_0();
  v264 = v13;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A700, &qword_274BFC6E8);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v267 = v15;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  v246 = &v235 - v17;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  v247 = &v235 - v19;
  v251 = sub_274BF3A94();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_10();
  v250 = v21;
  sub_274BF2F54();
  OUTLINED_FUNCTION_1();
  v257 = v23;
  v258 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_10();
  v255 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A708, &qword_274BFC6F0);
  OUTLINED_FUNCTION_1();
  v256 = v26;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13_0();
  v254 = v28;
  v29 = *(a1 + 16);
  v30 = sub_274BF33D4();
  v31 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v253 = v32;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13_0();
  v252 = v34;
  v35 = MEMORY[0x277CDFC60];
  v273 = *(a1 + 24);
  v319 = v273;
  v320 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v317 = WitnessTable;
  v318 = v35;
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_7();
  v40 = sub_274B178D8(v37, v38, &qword_274BFC6F0, v39);
  v283 = v36;
  v284 = v31;
  v313 = v31;
  v314 = v25;
  v280 = v40;
  v281 = v25;
  v315 = v36;
  v316 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v239 = v42;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_13_0();
  v268 = v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A718, &qword_274BFC6F8);
  v240 = OpaqueTypeMetadata2;
  sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v242 = v45;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13_0();
  v241 = v47;
  v279 = v48;
  v49 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v245 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9();
  v244 = v52;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  v243 = &v235 - v54;
  v269 = *(v29 - 8);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3_10();
  v278 = v56;
  v270 = *(v30 - 8);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_9();
  v249 = v58;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  v272 = &v235 - v60;
  v61 = sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v271 = v62;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v63);
  v65 = &v235 - v64;
  v276 = v49;
  sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v274 = v67;
  v275 = v66;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v68);
  v70 = &v235 - v69;
  v71 = v3;
  v72 = *v3;
  v313 = v72;
  v73 = v29;
  sub_274BF51A4();
  swift_getWitnessTable();
  v74 = sub_274BF53F4();
  v78 = MEMORY[0x277CE1410];
  if (v74)
  {
    v79 = WitnessTable;
    sub_274ADB9A0(v74, MEMORY[0x277CE1428], v30, MEMORY[0x277CE1410], WitnessTable, v75, v76, v77, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
    v289 = v78;
    v290 = v79;
    OUTLINED_FUNCTION_3_0();
    v278 = swift_getWitnessTable();
    v80 = v280;
    v81 = v281;
    v313 = v284;
    v314 = v281;
    v315 = v283;
    v316 = v280;
    v82 = OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_8();
    v87 = sub_274B178D8(v83, v84, v85, v86);
    v287 = v82;
    v288 = v87;
    OUTLINED_FUNCTION_4_6();
    v88 = swift_getWitnessTable();
    v89 = sub_274B16E38();
    v285 = v88;
    v286 = v89;
    v90 = v276;
    v91 = swift_getWitnessTable();
    sub_274ADB9A0(v65, v61, v90, v278, v91, v92, v93, v94, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
    (*(v271 + 8))(v65, v61);
    v95 = v79;
    v96 = v80;
LABEL_9:
    v303 = MEMORY[0x277CE1410];
    v304 = v95;
    v204 = swift_getWitnessTable();
    v313 = v284;
    v314 = v81;
    v315 = v283;
    v316 = v96;
    v205 = OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_8();
    v210 = sub_274B178D8(v206, v207, v208, v209);
    v301 = v205;
    v302 = v210;
    v211 = swift_getWitnessTable();
    v212 = sub_274B16E38();
    v299 = v211;
    v300 = v212;
    v213 = swift_getWitnessTable();
    v297 = v204;
    v298 = v213;
    v214 = v275;
    v215 = swift_getWitnessTable();
    sub_274ADB48C(v70, v214, v215);
    return (*(v274 + 8))(v70, v214);
  }

  v237 = v70;
  v238 = v65;
  v236 = v61;
  v97 = sub_274BF5194();
  v98 = v71;
  sub_274B13508();
  sub_274BF51B4();
  v99 = v273;
  v100 = sub_274B95A80(v73);
  v102 = v73;
  v103 = v99;
  if (v97 == 1)
  {
    v232 = v99;
    v224 = v100;
    v227 = v101;
    LOBYTE(v222) = 1;
    LOBYTE(v218) = 1;
    v104 = v249;
    OUTLINED_FUNCTION_12_2(0, 1);
    v105 = OUTLINED_FUNCTION_18_0();
    v106(v105);
    v107 = v272;
    v108 = v30;
    v109 = v30;
    v110 = WitnessTable;
    sub_274ADB48C(v104, v109, WitnessTable);
    v278 = *(v270 + 8);
    v278(v104, v108);
    v111 = v107;
    v112 = v110;
    sub_274ADB48C(v111, v108, v110);
    v113 = MEMORY[0x277CE1410];
    sub_274B2CC88(v104, MEMORY[0x277CE1428], v108, MEMORY[0x277CE1410], v112, v114, v115, v116, 0, v218, 0, v222, v224, v227, v73, v232, v235, v236);
    v295 = v113;
    v296 = v112;
    OUTLINED_FUNCTION_3_0();
    v117 = v236;
    v273 = swift_getWitnessTable();
    v119 = v280;
    v118 = v281;
    v313 = v284;
    v314 = v281;
    v315 = v283;
    v316 = v280;
    v120 = OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_0_8();
    v125 = sub_274B178D8(v121, v122, v123, v124);
    v293 = v120;
    v294 = v125;
    OUTLINED_FUNCTION_4_6();
    v126 = swift_getWitnessTable();
    v127 = sub_274B16E38();
    v291 = v126;
    v292 = v127;
    v81 = v118;
    v96 = v119;
    v128 = v117;
    v129 = v276;
    v130 = swift_getWitnessTable();
    v70 = v237;
    v131 = v238;
    sub_274ADB9A0(v238, v128, v129, v273, v130, v132, v133, v134, v216, v219, v221, v223, v225, v228, v230, v233, v235, v236);
    (*(v271 + 8))(v131, v128);
    v135 = v278;
    v278(v104, v108);
    v95 = WitnessTable;
    v135(v272, v108);
    goto LABEL_9;
  }

  v269 = v97;
  v231 = v73;
  v234 = v99;
  v226 = v100;
  v229 = v101;
  v271 = v72;
  LOBYTE(v222) = 1;
  v136 = v272;
  v137 = v103;
  OUTLINED_FUNCTION_12_2(0, 1);
  v138 = OUTLINED_FUNCTION_18_0();
  v139(v138);
  sub_274BF4A84();
  v140 = v252;
  sub_274BF43F4();
  (*(v270 + 8))(v136, v30);
  sub_274BF3BA4();
  v141 = v255;
  sub_274BF2F14();
  v142 = *(v98 + 16);
  v322[0] = *(v98 + 8);
  v321 = *(v98 + 32);
  OUTLINED_FUNCTION_15_0();
  v143 = swift_allocObject();
  *(v143 + 16) = v73;
  *(v143 + 24) = v137;
  OUTLINED_FUNCTION_8_5(v143);
  sub_274B15E84(v322, &v313);
  v272 = v142;

  sub_274B01968(&v321, &v313, &qword_28098A720, &qword_274BFC700);
  sub_274B16DE4(&qword_28098A728, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  v144 = v254;
  v145 = v258;
  sub_274BF4974();

  (*(v257 + 8))(v141, v145);
  sub_274BF2F74();
  v146 = v284;
  v147 = v281;
  sub_274BF4424();
  (*(v256 + 8))(v144, v147);
  (*(v253 + 8))(v140, v146);
  v148 = sub_274BF4A94();
  v149 = v259;
  *v259 = v148;
  *(v149 + 8) = v150;
  v151 = v149 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A730, &qword_274BFC708) + 44);
  v278 = v102;
  sub_274B14BB0(v98, v102, v137, v151);
  v152 = v260;
  sub_274BF3CB4();
  v153 = sub_274B178D8(&qword_28098A738, &qword_28098A6F0, &qword_274BFC6D8, MEMORY[0x277CE11A8]);
  v154 = v263;
  v155 = v264;
  sub_274BF4354();
  (*(v261 + 8))(v152, v262);
  sub_274B17578(v149, &qword_28098A6F0);
  sub_274BF4FE4("Page Control", 12);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v156 = qword_28098C7C0;
  v157 = sub_274BF4F04();
  v158 = sub_274BF4F04();

  v159 = [v156 localizedStringForKey:v157 value:v158 table:0];

  v160 = sub_274BF4F44();
  v162 = v161;

  v313 = v160;
  v314 = v162;
  v311 = v154;
  v312 = v153;
  swift_getOpaqueTypeConformance2();
  sub_274ADDF6C();
  v164 = v266;
  v163 = v267;
  sub_274BF42F4();

  (*(v265 + 8))(v155, v164);
  sub_274BF4FE4("%ld of %ld", 0, 1);
  v165 = sub_274BF4F04();
  v166 = sub_274BF4F04();

  v167 = [v156 localizedStringForKey:v165 value:v166 table:0];

  sub_274BF4F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8, &qword_274C03800);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_274BFA880;
  result = sub_274B13508();
  if (!__OFADD__(result, 1))
  {
    v170 = MEMORY[0x277D83B88];
    v171 = MEMORY[0x277D83C10];
    *(v168 + 56) = MEMORY[0x277D83B88];
    *(v168 + 64) = v171;
    *(v168 + 32) = result + 1;
    *(v168 + 96) = v170;
    *(v168 + 104) = v171;
    *(v168 + 72) = v269;
    v172 = sub_274BF4F14();
    v174 = v173;

    v313 = v172;
    v314 = v174;
    v175 = v246;
    sub_274BF33B4();

    sub_274B17578(v163, &qword_28098A700);
    OUTLINED_FUNCTION_15_0();
    v176 = swift_allocObject();
    v177 = v273;
    *(v176 + 16) = v278;
    *(v176 + 24) = v177;
    OUTLINED_FUNCTION_8_5(v176);
    sub_274B15E84(v322, &v313);

    sub_274B01968(&v321, &v313, &qword_28098A720, &qword_274BFC700);
    v178 = v247;
    sub_274BF33C4();

    sub_274B17578(v175, &qword_28098A700);
    v313 = v284;
    v314 = v281;
    v315 = v283;
    v316 = v280;
    v179 = OUTLINED_FUNCTION_2_11();
    sub_274B16CB8();
    sub_274BF4A94();
    v181 = v240;
    v180 = v241;
    v182 = v268;
    sub_274BF4454();
    sub_274B17578(v178, &qword_28098A700);
    (*(v239 + 8))(v182, v181);
    OUTLINED_FUNCTION_15_0();
    v183 = swift_allocObject();
    v184 = v273;
    *(v183 + 16) = v278;
    *(v183 + 24) = v184;
    OUTLINED_FUNCTION_8_5(v183);
    sub_274B15E84(v322, &v313);

    sub_274B01968(&v321, &v313, &qword_28098A720, &qword_274BFC700);
    OUTLINED_FUNCTION_0_8();
    v189 = sub_274B178D8(v185, v186, v187, v188);
    v309 = v179;
    v310 = v189;
    OUTLINED_FUNCTION_4_6();
    v190 = v279;
    v191 = swift_getWitnessTable();
    v192 = v244;
    sub_274BF4434();

    (*(v242 + 8))(v180, v190);
    v193 = sub_274B16E38();
    v307 = v191;
    v308 = v193;
    v194 = v276;
    v195 = swift_getWitnessTable();
    v196 = v243;
    sub_274ADB48C(v192, v194, v195);
    v197 = *(v245 + 8);
    v197(v192, v194);
    sub_274ADB48C(v196, v194, v195);
    v95 = WitnessTable;
    v305 = MEMORY[0x277CE1410];
    v306 = WitnessTable;
    OUTLINED_FUNCTION_3_0();
    v198 = v236;
    v199 = swift_getWitnessTable();
    v70 = v237;
    sub_274B2CC88(v192, v198, v194, v199, v195, v200, v201, v202, v217, v220, 0, v222, v226, v229, v231, v234, v235, v236);
    v203 = v192;
    v81 = v281;
    v197(v203, v194);
    v197(v196, v194);
    v96 = v280;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_274B14A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_274BF2F24();
  v7 = fabs(v6);
  sub_274BF2F24();
  if (fabs(v8) >= v7)
  {
    sub_274BF2F24();
    v10 = v9;
    v12 = type metadata accessor for PageView(0, a3, a4, v11);
    if (v10 >= 0.0)
    {
      sub_274B14B6C();
    }

    else
    {
      sub_274B14AEC(v12);
    }
  }
}

uint64_t sub_274B14AEC(uint64_t a1)
{
  v1 = sub_274B13508();
  result = sub_274BF5194();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v1 == result - 1)
  {
    return result;
  }

  v3 = sub_274B13508();
  v4 = __OFADD__(v3, 1);
  result = v3 + 1;
  if (v4)
  {
    goto LABEL_8;
  }

  return sub_274B13554();
}

uint64_t sub_274B14B6C()
{
  result = sub_274B13508();
  if (result)
  {
    v1 = sub_274B13508();
    v2 = __OFSUB__(v1, 1);
    result = v1 - 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {

      return sub_274B13554();
    }
  }

  return result;
}

uint64_t sub_274B14BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a2;
  v84 = a3;
  v79 = a4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A758, &qword_274BFC710);
  MEMORY[0x28223BE20](v71);
  v74 = (&v69 - v5);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A760, &qword_274BFC718);
  MEMORY[0x28223BE20](v72);
  v76 = &v69 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A768, &qword_274BFC720);
  MEMORY[0x28223BE20](v75);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v69 - v11;
  v12 = sub_274BF3CC4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A770, &qword_274BFC728);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A778, &qword_274BFC730);
  v19 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v21 = &v69 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A780, &qword_274BFC738);
  MEMORY[0x28223BE20](v69);
  v81 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v70 = &v69 - v24;
  *v18 = sub_274BF38F4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v25 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A788, &qword_274BFC740) + 44)];
  v82 = a1;
  sub_274B154A8(v25);
  sub_274BF3CB4();
  v26 = sub_274B178D8(&qword_28098A790, &qword_28098A770, &qword_274BFC728, MEMORY[0x277CE1198]);
  sub_274BF4354();
  (*(v13 + 8))(v15, v12);
  sub_274B17578(v18, &qword_28098A770);
  sub_274BF4FE4("Page Control", 12);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v27 = qword_28098C7C0;
  v28 = sub_274BF4F04();
  v29 = sub_274BF4F04();

  v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

  v31 = sub_274BF4F44();
  v33 = v32;

  *&v87 = v31;
  *(&v87 + 1) = v33;
  v85 = v16;
  v86 = v26;
  swift_getOpaqueTypeConformance2();
  sub_274ADDF6C();
  v35 = v80;
  v34 = v81;
  sub_274BF42F4();

  (*(v19 + 8))(v21, v35);
  sub_274BF4FE4("%ld of %ld", v69, v70);
  v36 = sub_274BF4F04();
  v37 = sub_274BF4F04();

  v38 = [v27 localizedStringForKey:v36 value:v37 table:0];

  sub_274BF4F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8, &qword_274C03800);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_274BFA880;
  v40 = v82;
  result = sub_274B13508();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v42 = MEMORY[0x277D83B88];
    v43 = MEMORY[0x277D83C10];
    *(v39 + 56) = MEMORY[0x277D83B88];
    *(v39 + 64) = v43;
    *(v39 + 32) = result + 1;
    v44 = v83;
    v45 = sub_274BF5194();
    *(v39 + 96) = v42;
    *(v39 + 104) = v43;
    *(v39 + 72) = v45;
    v46 = sub_274BF4F14();
    v48 = v47;

    *&v87 = v46;
    *(&v87 + 1) = v48;
    v49 = v70;
    sub_274BF33B4();

    sub_274B17578(v34, &qword_28098A780);
    v50 = sub_274BF3804();
    v51 = v74;
    *v74 = v50;
    *(v51 + 8) = 0;
    *(v51 + 16) = 1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A798, &qword_274BFC748);
    sub_274B15610(v40, v44, v84, v51 + *(v52 + 44));
    LOBYTE(v46) = sub_274BF3E34();
    sub_274BF2E54();
    v53 = v51 + *(v71 + 36);
    *v53 = v46;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    v87 = *(v40 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720, &qword_274BFC700);
    sub_274BF4784();
    if (v85)
    {
      v58 = 1.0;
    }

    else
    {
      v58 = 0.0;
    }

    v59 = v76;
    sub_274B16ED0(v51, v76, &qword_28098A758, &qword_274BFC710);
    *(v59 + *(v72 + 36)) = v58;
    v60 = sub_274BF4AE4();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    v62 = v59;
    v63 = v73;
    sub_274B16ED0(v62, v73, &qword_28098A760, &qword_274BFC718);
    v64 = (v63 + *(v75 + 36));
    *v64 = sub_274B16EC8;
    v64[1] = v61;
    v65 = v77;
    sub_274B16ED0(v63, v77, &qword_28098A768, &qword_274BFC720);
    sub_274B01968(v49, v34, &qword_28098A780, &qword_274BFC738);
    v66 = v78;
    sub_274B01968(v65, v78, &qword_28098A768, &qword_274BFC720);
    v67 = v79;
    sub_274B01968(v34, v79, &qword_28098A780, &qword_274BFC738);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7A0, &qword_274BFC750);
    sub_274B01968(v66, v67 + *(v68 + 48), &qword_28098A768, &qword_274BFC720);
    sub_274B17578(v65, &qword_28098A768);
    sub_274B17578(v49, &qword_28098A780);
    sub_274B17578(v66, &qword_28098A768);
    return sub_274B17578(v34, &qword_28098A780);
  }

  return result;
}

uint64_t sub_274B154A8@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for PageIndicator(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v18 - v9);
  v11 = sub_274BF5194();
  v12 = sub_274B135A4();
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = v5[8];
  *(v10 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  swift_storeEnumTagMultiPayload();
  *(v10 + v5[9]) = 0x4020000000000000;
  *(v10 + v5[10]) = 0x4010000000000000;
  sub_274B16FD0(v10, v7);
  *a3 = 0;
  *(a3 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C8, &qword_274BFC7A0);
  sub_274B16FD0(v7, a3 + *(v16 + 48));
  sub_274B17034(v10);
  return sub_274B17034(v7);
}

uint64_t sub_274B15610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7A8, &qword_274BFC758);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7B0, &qword_274BFC760);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  v23 = sub_274B13508();
  v31 = a3;
  if (v23 < 1)
  {
    v24 = 1;
  }

  else
  {
    sub_274B1598C(a1, a2, a3);
    sub_274BF47C4();
    (*(v8 + 32))(v22, v10, v7);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, v7);
  v25 = sub_274B13508();
  result = sub_274BF5194();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = 1;
    if (v25 < result - 1)
    {
      sub_274B15B00(a1, a2, v31);
      sub_274BF47C4();
      (*(v8 + 32))(v19, v10, v7);
      v27 = 0;
    }

    __swift_storeEnumTagSinglePayload(v19, v27, 1, v7);
    sub_274B01968(v22, v16, &qword_28098A7B0, &qword_274BFC760);
    sub_274B01968(v19, v13, &qword_28098A7B0, &qword_274BFC760);
    v28 = v32;
    sub_274B01968(v16, v32, &qword_28098A7B0, &qword_274BFC760);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7B8, &qword_274BFC768);
    v30 = v28 + *(v29 + 48);
    *v30 = 0;
    *(v30 + 8) = 1;
    sub_274B01968(v13, v28 + *(v29 + 64), &qword_28098A7B0, &qword_274BFC760);
    sub_274B17578(v19, &qword_28098A7B0);
    sub_274B17578(v22, &qword_28098A7B0);
    sub_274B17578(v13, &qword_28098A7B0);
    return sub_274B17578(v16, &qword_28098A7B0);
  }

  return result;
}

uint64_t (*sub_274B1598C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v13 = a1[1];
  v14 = v6;
  v12 = *(a1 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(a1 + 1);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a1 + 2);
  v9 = sub_274BF51A4();
  (*(*(v9 - 8) + 16))(v11, &v14, v9);
  sub_274B15E84(&v13, v11);

  sub_274B01968(&v12, v11, &qword_28098A720, &qword_274BFC700);
  return sub_274B16F20;
}

uint64_t sub_274B15AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF46D4();
  *a1 = result;
  return result;
}

uint64_t (*sub_274B15B00(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v13 = a1[1];
  v14 = v6;
  v12 = *(a1 + 2);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(a1 + 1);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a1 + 2);
  v9 = sub_274BF51A4();
  (*(*(v9 - 8) + 16))(v11, &v14, v9);
  sub_274B15E84(&v13, v11);

  sub_274B01968(&v12, v11, &qword_28098A720, &qword_274BFC700);
  return sub_274B16F78;
}

uint64_t sub_274B15C34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274BF46D4();
  *a1 = result;
  return result;
}

uint64_t sub_274B15C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_274BF3DC4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CDE498])
  {
    v14 = type metadata accessor for PageView(0, a3, a4, v13);
    return sub_274B14AEC(v14);
  }

  else if (v12 == *MEMORY[0x277CDE490])
  {
    type metadata accessor for PageView(0, a3, a4, v13);
    return sub_274B14B6C();
  }

  else
  {
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_274B15EE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7F0, &qword_274BFC808);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7F8, &qword_274BFC810);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A800, &qword_274BFC818);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PageIndicator(0);
  v11 = *(v0 + *(v10 + 32));
  if ((v11 + v11 + *(v0 + *(v10 + 28))) * *v0 >= 100.0)
  {
    sub_274B161C4(v3);
    sub_274B01968(v3, v6, &qword_28098A7F0, &qword_274BFC808);
    swift_storeEnumTagMultiPayload();
    sub_274B17220();
    sub_274B17474(&qword_28098A820, &qword_28098A7F0, &qword_274BFC808, sub_274B172D8);
    sub_274BF3A64();
    return sub_274B17578(v3, &qword_28098A7F0);
  }

  else
  {
    *v9 = sub_274BF3804();
    *(v9 + 1) = 0;
    v9[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A878, &unk_274BFC848);
    sub_274B1658C(v0);
    *&v9[*(v7 + 36)] = 0x3FE3333333333333;
    sub_274B01968(v9, v6, &qword_28098A800, &qword_274BFC818);
    swift_storeEnumTagMultiPayload();
    sub_274B17220();
    sub_274B17474(&qword_28098A820, &qword_28098A7F0, &qword_274BFC808, sub_274B172D8);
    sub_274BF3A64();
    return sub_274B17578(v9, &qword_28098A800);
  }
}

void *sub_274B161C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_274BF4FE4("Page %ld of %ld", v68, v69);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v4 = qword_28098C7C0;
  v5 = sub_274BF4F04();
  v6 = sub_274BF4F04();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  sub_274BF4F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8, &qword_274C03800);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_274BFA880;
  v9 = v2[3];
  v73 = *(v2 + 1);
  v74 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0, &qword_274BFB750);
  result = MEMORY[0x277C64160](&v72, v10);
  v12 = v72 + 1;
  if (__OFADD__(v72, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83C10];
    *(v8 + 56) = MEMORY[0x277D83B88];
    *(v8 + 64) = v14;
    *(v8 + 32) = v12;
    v15 = *v2;
    *(v8 + 96) = v13;
    *(v8 + 104) = v14;
    *(v8 + 72) = v15;
    v16 = sub_274BF4F14();
    v18 = v17;

    *&v73 = v16;
    *(&v73 + 1) = v18;
    sub_274ADDF6C();
    v19 = sub_274BF4104();
    v70 = v20;
    v71 = v19;
    v22 = v21;
    v24 = v23;
    v25 = sub_274BF3EA4();
    sub_274BF2E54();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    LOBYTE(v16) = v22 & 1;
    LOBYTE(v72) = v22 & 1;
    v75 = 0;
    v34 = sub_274BF3E34();
    sub_274BF2E54();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    LOBYTE(v73) = 0;
    v43 = sub_274BF4654();
    KeyPath = swift_getKeyPath();
    v45 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A830, &qword_274BFC828) + 36));
    v46 = *(sub_274BF3484() + 20);
    v47 = *MEMORY[0x277CE0118];
    v48 = sub_274BF38C4();
    (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
    __asm { FMOV            V0.2D, #8.0 }

    *v45 = _Q0;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A8D8, &qword_274BFC8D0);
    sub_274BF4A34();
    *&v45[*(v54 + 56)] = 256;
    v55 = sub_274BF4A94();
    v57 = v56;
    v58 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A870, &qword_274BFC840) + 36)];
    *v58 = v55;
    v58[1] = v57;
    *a1 = v71;
    *(a1 + 8) = v70;
    *(a1 + 16) = v16;
    *(a1 + 24) = v24;
    *(a1 + 32) = v25;
    *(a1 + 40) = v27;
    *(a1 + 48) = v29;
    *(a1 + 56) = v31;
    *(a1 + 64) = v33;
    *(a1 + 72) = 0;
    *(a1 + 80) = v34;
    *(a1 + 88) = v36;
    *(a1 + 96) = v38;
    *(a1 + 104) = v40;
    *(a1 + 112) = v42;
    *(a1 + 120) = 0;
    *(a1 + 128) = KeyPath;
    *(a1 + 136) = v43;
    LOBYTE(v16) = sub_274BF3E44();
    sub_274BF2E54();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7F0, &qword_274BFC808);
    v67 = a1 + *(result + 9);
    *v67 = v16;
    *(v67 + 8) = v60;
    *(v67 + 16) = v62;
    *(v67 + 24) = v64;
    *(v67 + 32) = v66;
    *(v67 + 40) = 0;
  }

  return result;
}

void sub_274B1658C(uint64_t *a1)
{
  v2 = type metadata accessor for PageIndicator(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v10[2] = 0;
    v10[3] = v5;
    swift_getKeyPath();
    sub_274B16FD0(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v7 = swift_allocObject();
    sub_274B175CC(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A128, &qword_274BFCEA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A880, &qword_274BFC870);
    sub_274B08948();
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A888, &qword_274BFC878);
    v9 = sub_274B176B0();
    v10[0] = v8;
    v10[1] = v9;
    swift_getOpaqueTypeConformance2();
    sub_274BF4944();
  }
}

uint64_t sub_274B16758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for PageIndicator(0);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = *a1;
  sub_274BF4A94();
  sub_274BF30D4();
  v7 = v31;
  v8 = v32;
  v9 = v33;
  v23 = v34;
  v24 = v30;
  v22 = v35;
  v10 = *(a2 + 24);
  v36[0] = *(a2 + 8);
  *&v36[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A0E0, &qword_274BFB750);
  MEMORY[0x277C64160](v28, v11);
  v12 = sub_274B169F4(v28[0] == v25);
  KeyPath = swift_getKeyPath();
  LOBYTE(v28[0]) = v7;
  v29 = v9;
  v14 = sub_274BF3E44();
  sub_274BF2E54();
  LOBYTE(v36[0]) = 0;
  v28[0] = v24;
  LOBYTE(v28[1]) = v7;
  v28[2] = v8;
  LOBYTE(v28[3]) = v9;
  v28[4] = v23;
  v28[5] = v22;
  v28[6] = KeyPath;
  v28[7] = v12;
  LOBYTE(v28[8]) = v14;
  v28[9] = v15;
  v28[10] = v16;
  v28[11] = v17;
  v28[12] = v18;
  LOWORD(v28[13]) = 0;
  sub_274B16FD0(a2, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_274B175CC(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A888, &qword_274BFC878);
  sub_274B176B0();
  sub_274BF4254();

  memcpy(v36, v28, 0x6AuLL);
  return sub_274B17578(v36, &qword_28098A888);
}

uint64_t sub_274B169F4(char a1)
{
  v2 = sub_274BF4584();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = var50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF2F04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = var50 - v11;
  v13 = type metadata accessor for PageIndicator(0);
  sub_274ADE30C(v13, v14, v15, v16, v17, v18, v19, v20, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  (*(v7 + 104))(v9, *MEMORY[0x277CDF3C0], v6);
  v21 = sub_274BF2EF4();
  v22 = *(v7 + 8);
  v22(v9, v6);
  v22(v12, v6);
  if (v21 & 1) != 0 && (a1)
  {
    return sub_274BF4604();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
  return sub_274BF4664();
}

unint64_t sub_274B16CB8()
{
  result = qword_28098A740;
  if (!qword_28098A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A700, &qword_274BFC6E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A6F0, &qword_274BFC6D8);
    sub_274B178D8(&qword_28098A738, &qword_28098A6F0, &qword_274BFC6D8, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    sub_274B16DE4(&qword_2815A2F70, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A740);
  }

  return result;
}

uint64_t sub_274B16DE4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274B16E38()
{
  result = qword_28098A750;
  if (!qword_28098A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A750);
  }

  return result;
}

uint64_t sub_274B16E8C(void *a1, uint64_t a2)
{
  result = sub_274BF2FC4();
  if ((result & 1) == 0)
  {

    return sub_274BF2FD4();
  }

  return result;
}

uint64_t sub_274B16ED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t objectdestroyTm_2()
{

  OUTLINED_FUNCTION_15_0();

  return swift_deallocObject();
}

uint64_t type metadata accessor for PageIndicator(uint64_t a1)
{
  result = qword_28098A7D8;
  if (!qword_28098A7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274B16FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageIndicator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B17034(uint64_t a1)
{
  v2 = type metadata accessor for PageIndicator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_274B170B8(uint64_t a1)
{
  sub_274B1715C();
  if (v1 <= 0x3F)
  {
    sub_274B171AC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_274B1715C()
{
  if (!qword_28098A7E8)
  {
    v0 = sub_274BF4914();
    if (!v1)
    {
      atomic_store(v0, &qword_28098A7E8);
    }
  }
}

void sub_274B171AC(uint64_t a1)
{
  if (!qword_2815A3118)
  {
    sub_274BF2F04();
    v1 = sub_274BF2F64();
    if (!v2)
    {
      atomic_store(v1, &qword_2815A3118);
    }
  }
}

unint64_t sub_274B17220()
{
  result = qword_28098A808;
  if (!qword_28098A808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A800, &qword_274BFC818);
    sub_274B178D8(&qword_28098A810, &unk_28098A818, &unk_274BFC820, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A808);
  }

  return result;
}

unint64_t sub_274B172D8()
{
  result = qword_28098A828;
  if (!qword_28098A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A830, &qword_274BFC828);
    sub_274B17390();
    sub_274B178D8(&qword_28098A868, &qword_28098A870, &qword_274BFC840, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A828);
  }

  return result;
}

unint64_t sub_274B17390()
{
  result = qword_28098A838;
  if (!qword_28098A838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A840, &qword_274BFC830);
    sub_274B17474(&qword_28098A848, &unk_28098A850, &unk_274BFC838, sub_274B174F4);
    sub_274B178D8(&qword_2815A2F88, &qword_280989AC8, &qword_274BFE650, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A838);
  }

  return result;
}

uint64_t sub_274B17474(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_19_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_274B174F4()
{
  result = qword_28098A858;
  if (!qword_28098A858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A860, &unk_274C07B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A858);
  }

  return result;
}

uint64_t sub_274B17578(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_274B175CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageIndicator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B17630@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PageIndicator(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_274B16758(a1, v6, a2);
}

unint64_t sub_274B176B0()
{
  result = qword_28098A890;
  if (!qword_28098A890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A888, &qword_274BFC878);
    sub_274B17474(&qword_28098A898, &unk_28098A8A0, &unk_274BFC880, sub_274B17794);
    sub_274B178D8(&qword_28098A8C8, &qword_28098A8D0, &qword_274BFC898, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A890);
  }

  return result;
}

unint64_t sub_274B17794()
{
  result = qword_28098A8A8;
  if (!qword_28098A8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A8B0, &qword_274BFC888);
    sub_274B1784C();
    sub_274B178D8(&qword_2815A2F88, &qword_280989AC8, &qword_274BFE650, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A8A8);
  }

  return result;
}

unint64_t sub_274B1784C()
{
  result = qword_28098A8B8;
  if (!qword_28098A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A8C0, &qword_274BFC890);
    sub_274AD938C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A8B8);
  }

  return result;
}

uint64_t sub_274B178D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_19_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274B1791C()
{
  v1 = *(type metadata accessor for PageIndicator(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_274B16C4C(v0 + v2, v3);
}

unint64_t sub_274B179A8()
{
  result = qword_28098A8E0;
  if (!qword_28098A8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098A8E8, &qword_274BFC8D8);
    sub_274B17220();
    sub_274B17474(&qword_28098A820, &qword_28098A7F0, &qword_274BFC808, sub_274B172D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098A8E0);
  }

  return result;
}

id static PathFormatter.displayString(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = [objc_opt_self() sharedContext];
  v4 = [v3 shouldReverseLayoutDirection];

  v5 = v4 ? 0xEC0000007466656CLL : 0xED00007468676972;
  sub_274AD8430(0, &unk_28098B350, 0x277D79FC8);
  v6 = sub_274B17C90(0x2E6E6F7276656863, v5, 0, 2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  v20 = v7;
  v9 = [v7 platformImage];
  [v8 setImage_];

  v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  sub_274AD8430(0, qword_28098A8F0, 0x277CCA898);
  v11 = 0;
  v12 = (a1 + 40);
  while (v1 != v11)
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    v15 = sub_274B17D10(v14, v13);
    OUTLINED_FUNCTION_0_9(v15);

    if (v11 < v1 - 1)
    {
      v16 = sub_274B17D10(32, 0xE100000000000000);
      OUTLINED_FUNCTION_0_9(v16);

      v17 = [objc_opt_self() attributedStringWithAttachment_];
      OUTLINED_FUNCTION_0_9(v17);

      v18 = sub_274B17D10(32, 0xE100000000000000);
      OUTLINED_FUNCTION_0_9(v18);
    }

    v12 += 2;
    ++v11;
  }

  return v10;
}

id sub_274B17C90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_274BF4F04();

  v7 = [swift_getObjCClassFromMetadata() systemImageNamed:v6 configuration:a3 renderingMode:a4];

  return v7;
}

id sub_274B17D10(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_274BF4F04();

  v4 = [v2 initWithString_];

  return v4;
}

unint64_t sub_274B17D84(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentItemPreview(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PathFormatter(_BYTE *result, int a2, int a3)
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

unint64_t sub_274B17EA4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t LoadingState.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v4 + 8))(v7, a1);
    v8 = *(a1 + 16);
    v9 = a2;
    v10 = 1;
  }

  else
  {
    v11 = *(a1 + 16);
    (*(*(v11 - 8) + 32))(a2, v7, v11);
    v9 = a2;
    v10 = 0;
    v8 = v11;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
}

uint64_t sub_274B18018(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_274B183D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_274B18090(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_274B181DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 <= 3)
  {
    v6 = (1u >> (8 * v5)) ^ 0xFD;
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_274B183D8()
{
  result = qword_28098A978;
  if (!qword_28098A978)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28098A978);
  }

  return result;
}

uint64_t AnyAutocompleteResult.variable.getter()
{
  OUTLINED_FUNCTION_5_4();
  v0 = OUTLINED_FUNCTION_3_12();
  return v1(v0);
}

uint64_t AnyAutocompleteResult.displayName.getter()
{
  OUTLINED_FUNCTION_5_4();
  v0 = OUTLINED_FUNCTION_3_12();
  return v1(v0);
}

uint64_t AnyAutocompleteResult.displayIcon.getter()
{
  OUTLINED_FUNCTION_5_4();
  v0 = OUTLINED_FUNCTION_3_12();
  return v1(v0);
}

uint64_t sub_274B184E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  a3[3] = type metadata accessor for AnyAutocompleteResult.AutocompleteResultStorage(0, a2, a4, a5);
  a3[4] = &off_2883C89C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v9 = *(*(a2 - 8) + 32);

  return v9(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyAutocompleteResult.wrappedResult<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X3>)
{
  v5 = v4;
  v8 = type metadata accessor for AnyAutocompleteResult.AutocompleteResultStorage(255, a1, a3, a4);
  v9 = sub_274BF5724();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-v11 - 8];
  sub_274B1875C(v5, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A980, &qword_274BFC930);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v8);
    (*(*(a1 - 8) + 16))(a2, v12, a1);
    (*(*(v8 - 8) + 8))(v12, v8);
    v13 = a2;
    v14 = 0;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v8);
    (*(v10 + 8))(v12, v9);
    v13 = a2;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, a1);
}

uint64_t sub_274B1875C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t AnyAutocompleteResult.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_6(v1);
  v2 = OUTLINED_FUNCTION_4_7();
  v3(v2);
  sub_274BF5904();
  return sub_274B04AB0(v5);
}

uint64_t static AnyAutocompleteResult.== infix(_:_:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_6(a1);
  v3 = OUTLINED_FUNCTION_4_7();
  v4(v3);
  OUTLINED_FUNCTION_6_6(a2);
  v5 = OUTLINED_FUNCTION_4_7();
  v6(v5);
  LOBYTE(a2) = MEMORY[0x277C65180](v9, v8);
  sub_274B04AB0(v8);
  sub_274B04AB0(v9);
  return a2 & 1;
}

uint64_t AnyAutocompleteResult.hashValue.getter()
{
  sub_274BF5CD4();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_3_12();
  v2(v1);
  sub_274BF5904();
  sub_274B04AB0(&v4);
  return sub_274BF5D44();
}

uint64_t sub_274B18980(uint64_t a1)
{
  sub_274BF5CD4();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v5, v2, v3);
  sub_274BF5904();
  sub_274B04AB0(v5);
  return sub_274BF5D44();
}

unint64_t sub_274B18A04(uint64_t a1)
{
  result = sub_274B01688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_274B18A30()
{
  result = qword_28098A988[0];
  if (!qword_28098A988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28098A988);
  }

  return result;
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

uint64_t sub_274B18AA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_274B18AE8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_274B18B48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_274B18BB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_274B18CF4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
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

void Alert.init(error:)(void **a1@<X0>, uint64_t a2@<X8>)
{
  v29[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5E8, &qword_274BFC470);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v29 - v4;
  v6 = *a1;
  v7 = sub_274B19550(*a1);
  v29[3] = v8;
  v29[4] = v7;
  v29[1] = v10;
  v29[2] = v9;
  v11 = [v6 localizedDescription];
  v12 = sub_274BF4F44();
  v14 = v13;

  v30 = v12;
  v31 = v14;
  sub_274ADDF6C();
  v15 = sub_274BF4104();
  sub_274BF4FE4("OK", 2, v15);
  if (qword_2809893B8 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2809893B8);
  }

  v16 = qword_28098C7C0;
  v17 = sub_274BF4F04();
  v18 = sub_274BF4F04();

  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = sub_274BF4F44();
  v22 = v21;

  v30 = v20;
  v31 = v22;
  v23 = sub_274BF4104();
  v25 = v24;
  LOBYTE(v20) = v26;
  OUTLINED_FUNCTION_0_11(v23, v24, v26, v27);
  sub_274AFA1D0(v23, v25, v20 & 1);

  v28 = sub_274BF4554();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v28);
  sub_274BF4504();
}

uint64_t Alert.init(localizedError:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40[7] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5E8, &qword_274BFC470);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - v4;
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  v12 = sub_274BF5BF4();
  if (v12)
  {
    v13 = v12;
    (*(v8 + 8))(v11, v6);
  }

  else
  {
    v13 = swift_allocError();
    (*(v8 + 32))(v14, v11, v6);
  }

  v15 = sub_274BF1E64();

  v16 = sub_274B19550(v15);
  v40[5] = v17;
  v40[6] = v16;
  v40[3] = v19;
  v40[4] = v18;
  v20 = [v15 localizedDescription];
  v21 = sub_274BF4F44();
  v23 = v22;

  v41 = v21;
  v42 = v23;
  sub_274ADDF6C();
  v24 = sub_274BF4104();
  v40[1] = v25;
  v40[2] = v24;
  sub_274BF4FE4("OK", 2);
  if (qword_2809893B8 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2809893B8);
  }

  v26 = qword_28098C7C0;
  v27 = sub_274BF4F04();
  v28 = sub_274BF4F04();

  v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

  v30 = sub_274BF4F44();
  v32 = v31;

  v41 = v30;
  v42 = v32;
  v33 = sub_274BF4104();
  v35 = v34;
  LOBYTE(v30) = v36;
  OUTLINED_FUNCTION_0_11(v33, v34, v36, v37);
  sub_274AFA1D0(v33, v35, v30 & 1);

  v38 = sub_274BF4554();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v38);
  sub_274BF4504();

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_274B19550(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA10, &unk_274BFCB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFA880;
  *(inited + 32) = sub_274B06430(a1, &selRef_localizedFailureReason);
  *(inited + 40) = v3;
  v4 = 0;
  *(inited + 48) = sub_274B06430(a1, &selRef_localizedRecoverySuggestion);
  *(inited + 56) = v5;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (inited + 40 + 16 * v4);
  while (++v4 != 3)
  {
    v8 = v7 + 2;
    v9 = *v7;
    v7 += 2;
    if (v9)
    {
      v10 = *(v8 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAD94();
        v6 = v13;
      }

      v11 = *(v6 + 16);
      if (v11 >= *(v6 + 24) >> 1)
      {
        sub_274BBAD94();
        v6 = v14;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_274BCB96C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
  sub_274B1023C();
  v15 = sub_274BF4EB4();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    sub_274ADDF6C();
    return sub_274BF4104();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_274B19744@<X0>(uint64_t *a1@<X8>)
{
  result = AlertError.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274B19778(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_274B197B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B19804(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_274BF5874();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_274B19828(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a2[1];
  v19 = *a2;
  v17 = a2[2];
  v16 = *(a2 + 24);
  type metadata accessor for ContentCollectionPreviewViewOptions(0);
  OUTLINED_FUNCTION_5_5();
  sub_274B221BC(v6, v7, &protocol conformance descriptor for ContentCollectionPreviewViewOptions);
  v15 = sub_274BF34D4();
  v9 = v8;
  v10 = sub_274B81D64(32.0, 32.0);
  v11 = sub_274B22B94();

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (v11 == v12)
    {
      goto LABEL_10;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x277C65230](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    v14 = sub_274B81410();

    v12 = v13 + 1;
    if (v14 != 1)
    {
      sub_274AFA308(v14);
LABEL_10:

      *a5 = v10;
      *(a5 + 8) = v11 != v13;
      *(a5 + 16) = v19;
      *(a5 + 24) = v18;
      *(a5 + 32) = v17;
      *(a5 + 40) = v16;
      *(a5 + 48) = v15;
      *(a5 + 56) = v9;
      *(a5 + 64) = xmmword_274BFCB20;
      *(a5 + 80) = a3;
      *(a5 + 88) = a4;
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_274B199D4()
{
  v1 = sub_274BF32B4();
  OUTLINED_FUNCTION_0_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(__dst, v0, sizeof(__dst));
  sub_274B19C18(__dst, v13);
  sub_274BF4A94();
  sub_274BF34A4();
  *v11 = v13[0];
  *&v11[16] = v13[1];
  *&v11[32] = v13[2];
  *&v11[48] = v14;
  memcpy(v9, v11, sizeof(v9));
  sub_274BF32A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA90, &qword_274BFCE10);
  sub_274B214A8();
  sub_274BF44E4();
  (*(v3 + 8))(v6, v1);
  memcpy(v10, v9, sizeof(v10));
  return sub_274AFA708(v10, &qword_28098AA90, &qword_274BFCE10);
}

double sub_274B19C18@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *v27 = a1[1];
  *&v27[9] = *(a1 + 25);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00, &qword_274BFCE48);
  MEMORY[0x277C64160](&v31, v4);
  v5 = v31;
  if (!v32)
  {
    v12 = *a1;
    v13 = swift_allocObject();
    memcpy((v13 + 16), a1, 0x60uLL);
    sub_274BF51E4();
    sub_274B21770(a1, v27);

    sub_274B217DC(v5, 0);
    v14 = sub_274BF51D4();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v5;
    sub_274B21770(a1, v27);
    v17 = sub_274BF51D4();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    memcpy(v18 + 4, a1, 0x60uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48, &qword_274BFCB60);
    sub_274BF48F4();
    *&v24 = v12;
    *(&v24 + 1) = sub_274B217C0;
    *v25 = v13;
    *&v25[8] = *v27;
    *&v25[24] = *&v27[16];
    LOBYTE(v26) = 1;
    v23 = *&v27[16];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAD8, &qword_274BFCE30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAE8, &qword_274BFCE38);
    sub_274AFA930(&qword_28098AAD0, &qword_28098AAD8, &qword_274BFCE30, &unk_274BFD220);
    sub_274AFA930(&qword_28098AAE0, &qword_28098AAE8, &qword_274BFCE38, &unk_274BFD1D0);
    sub_274BF3A64();
    v30 = v29;
    v29 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAC8, &qword_274BFCE28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAF8, &qword_274BFCE40);
    sub_274B21670();
    sub_274AFA930(&qword_28098AAF0, &qword_28098AAF8, &qword_274BFCE40, &unk_274BFD180);
    sub_274BF3A64();
    sub_274B21754(v5, 0);

LABEL_6:

    *v27 = v24;
    *&v27[16] = *v25;
    v28 = *&v25[16];
    v29 = v26;
    goto LABEL_7;
  }

  if (v32 != 1)
  {
    v19 = *a1;
    v20 = swift_allocObject();
    memcpy((v20 + 16), a1, 0x60uLL);
    *&v24 = v19;
    *(&v24 + 1) = sub_274B22B98;
    *v25 = v20;
    *&v25[16] = 0uLL;
    LOBYTE(v26) = 0;
    swift_bridgeObjectRetain_n();
    sub_274B21770(a1, v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAD8, &qword_274BFCE30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAE8, &qword_274BFCE38);
    sub_274AFA930(&qword_28098AAD0, &qword_28098AAD8, &qword_274BFCE30, &unk_274BFD220);
    sub_274AFA930(&qword_28098AAE0, &qword_28098AAE8, &qword_274BFCE38, &unk_274BFD1D0);
    sub_274BF3A64();
    v30 = v29;
    v29 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAC8, &qword_274BFCE28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAF8, &qword_274BFCE40);
    sub_274B21670();
    sub_274AFA930(&qword_28098AAF0, &qword_28098AAF8, &qword_274BFCE40, &unk_274BFD180);
    sub_274BF3A64();

    goto LABEL_6;
  }

  v6 = swift_allocObject();
  memcpy((v6 + 16), a1, 0x60uLL);
  sub_274BF51E4();
  sub_274B21770(a1, v27);

  v7 = sub_274BF51D4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  sub_274B21770(a1, v27);
  v10 = sub_274BF51D4();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  memcpy(v11 + 4, a1, 0x60uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB08, &qword_274BFCE50);
  sub_274BF48F4();
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAC8, &qword_274BFCE28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AAF8, &qword_274BFCE40);
  sub_274B21670();
  sub_274AFA930(&qword_28098AAF0, &qword_28098AAF8, &qword_274BFCE40, &unk_274BFD180);
  sub_274BF3A64();
LABEL_7:
  v21 = *&v27[16];
  *a2 = *v27;
  *(a2 + 16) = v21;
  result = *&v28;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  return result;
}

uint64_t sub_274B1A374@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 48);
  type metadata accessor for PreviewableContentCollection.PreviewableListItem(0);
  sub_274B221BC(&qword_280989C18, type metadata accessor for PreviewableContentCollection.PreviewableListItem, &protocol conformance descriptor for PreviewableContentCollection.PreviewableListItem);

  v6 = sub_274BF3264();
  v8 = v7;
  type metadata accessor for ContentCollectionPreviewViewOptions(0);
  OUTLINED_FUNCTION_5_5();
  sub_274B221BC(v9, v10, &protocol conformance descriptor for ContentCollectionPreviewViewOptions);
  v11 = sub_274BF34D4();
  if (v5)
  {
    v13 = v11;
    v14 = v12;
    v15 = *(a2 + 8);
    v16 = v5;
    result = sub_274BF2CD4();
    *a3 = v6;
    *(a3 + 8) = v8;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    *(a3 + 40) = result;
    *(a3 + 48) = v5;
  }

  else
  {
    result = sub_274BF34C4();
    __break(1u);
  }

  return result;
}

void sub_274B1A4AC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v11[0] = *(a4 + 16);
  *(v11 + 9) = *(a4 + 25);
  *v10 = *(a4 + 16);
  *&v10[9] = *(a4 + 25);
  v8[4] = v4;
  v9 = 0;
  v5 = v4;
  sub_274B22670(v11, v8, &qword_28098AB00, &qword_274BFCE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00, &qword_274BFCE48);
  sub_274BF48D4();
  v6 = *&v10[16];
  v7 = v10[24];

  sub_274B21754(v6, v7);
}

void sub_274B1A56C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v10[0] = *(a4 + 16);
  *(v10 + 9) = *(a4 + 25);
  *v9 = *(a4 + 16);
  *&v9[9] = *(a4 + 25);
  v7[4] = v4;
  v8 = 1;

  sub_274B22670(v10, v7, &qword_28098AB00, &qword_274BFCE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB00, &qword_274BFCE48);
  sub_274BF48D4();
  v5 = *&v9[16];
  v6 = v9[24];

  sub_274B21754(v5, v6);
}

uint64_t sub_274B1A634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = a6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38, &qword_274BFD270);
  sub_274B08760();
  v27 = sub_274AFA930(&qword_28098AD40, &qword_28098AD38, &qword_274BFD270, MEMORY[0x277D83980]);
  v26 = sub_274B221BC(&qword_28098AD48, sub_274B08760, MEMORY[0x277D85378]);
  v32[4] = v26;
  v10 = sub_274BF4964();
  v31 = a5;
  WitnessTable = swift_getWitnessTable();
  v32[0] = MEMORY[0x277D84A98];
  v32[1] = v10;
  v32[2] = MEMORY[0x277D84AA8];
  v32[3] = WitnessTable;
  v12 = sub_274BF4054();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v32[0] = a1;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v21 = v29;
  v20[4] = a1;
  v20[5] = v21;
  v20[6] = a3;
  swift_bridgeObjectRetain_n();

  sub_274B1AA50(v32, KeyPath, sub_274B21D44, v20, v28, a4, v27, v26, a5);
  v22 = swift_getWitnessTable();
  sub_274ADB48C(v15, v12, v22);
  v23 = *(v13 + 8);
  v23(v15, v12);
  sub_274ADB48C(v18, v12, v22);
  return (v23)(v18, v12);
}

uint64_t sub_274B1A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v16(*v15, v12);
  sub_274ADB48C(v10, a5, a6);
  v17 = *(v8 + 8);
  v17(v10, a5);
  sub_274ADB48C(v14, a5, a6);
  return (v17)(v14, a5);
}

uint64_t sub_274B1AA50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_274BF4964();
  swift_getWitnessTable();
  sub_274BF4034();

  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t sub_274B1AB8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110, &unk_274BFF810);
  sub_274BF48E4();
  return v1;
}

uint64_t sub_274B1ABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_274BF3B44();
  v54 = v4;
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274B08760();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38, &qword_274BFD270);
  v66 = v7;
  v61 = *(a1 + 16);
  v8 = sub_274BF33D4();
  v9 = sub_274AFA930(&qword_28098AD40, &qword_28098AD38, &qword_274BFD270, MEMORY[0x277D83980]);
  v65 = v9;
  v10 = sub_274B221BC(&qword_28098AD48, sub_274B08760, MEMORY[0x277D85378]);
  *&v80 = v7;
  *(&v80 + 1) = v6;
  v11 = v6;
  v58 = v6;
  v63 = v8;
  *&v81 = v8;
  *(&v81 + 1) = v9;
  v82 = v10;
  v12 = v10;
  v13 = sub_274BF4964();
  v51 = *(a1 + 24);
  v78 = v51;
  v79 = MEMORY[0x277CDF918];
  v68 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v77 = WitnessTable;
  v14 = swift_getWitnessTable();
  *&v80 = v11;
  *(&v80 + 1) = v13;
  *&v81 = v12;
  *(&v81 + 1) = v14;
  v15 = sub_274BF4054();
  v60 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v53 = swift_getWitnessTable();
  *&v80 = v15;
  *(&v80 + 1) = v4;
  *&v81 = v53;
  *(&v81 + 1) = MEMORY[0x277CDE0D0];
  v55 = MEMORY[0x277CDEF88];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v47 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD50, &qword_274BFD298);
  v20 = sub_274BF33D4();
  v62 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v49 = &v47 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD58, &qword_274BFD2A0);
  v22 = sub_274BF33D4();
  v64 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59 = &v47 - v25;
  v85 = *v2;
  v75[0] = v85;
  KeyPath = swift_getKeyPath();

  *&v80 = sub_274B1AB8C();
  *(&v80 + 1) = v26;
  *&v81 = v27;
  v28 = v2[3];
  v83 = v2[5];
  v84 = v28;
  v29 = swift_allocObject();
  v30 = v51;
  *(v29 + 16) = v61;
  *(v29 + 24) = v30;
  v31 = *(v2 + 1);
  *(v29 + 32) = *v2;
  *(v29 + 48) = v31;
  *(v29 + 64) = *(v2 + 2);
  sub_274B22670(&v85, v76, &qword_28098AD38, &qword_274BFD270);

  sub_274B15E84(&v84, v76);

  sub_274B22670(&v83, v76, &qword_28098AA48, &qword_274BFCB60);
  sub_274B1B6D0(v75, KeyPath, &v80, sub_274B21DC0, v29, v58, v66, v63, v17, v12, v65, v12, WitnessTable);
  v32 = v67;
  sub_274BF3B34();
  v33 = v54;
  v34 = v53;
  v35 = MEMORY[0x277CDE0D0];
  sub_274BF44E4();
  (*(v69 + 8))(v32, v33);
  (*(v60 + 8))(v17, v15);
  LOBYTE(v82) = 0;
  v80 = 0u;
  v81 = 0u;
  v75[0] = v15;
  v75[1] = v33;
  v75[2] = v34;
  v75[3] = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v49;
  v38 = OpaqueTypeMetadata2;
  sub_274BF4264();
  (*(v57 + 8))(v19, v38);
  swift_getKeyPath();
  v75[0] = 0x4040000000000000;
  v39 = sub_274AFA930(&qword_28098AD60, &qword_28098AD50, &qword_274BFD298, MEMORY[0x277CE04A0]);
  v73 = OpaqueTypeConformance2;
  v74 = v39;
  v40 = swift_getWitnessTable();
  v41 = v50;
  sub_274BF4204();

  (*(v62 + 8))(v37, v20);
  v42 = sub_274AFA930(&qword_28098AD68, &qword_28098AD58, &qword_274BFD2A0, MEMORY[0x277CE0868]);
  v71 = v40;
  v72 = v42;
  v43 = swift_getWitnessTable();
  v44 = v59;
  sub_274ADB48C(v41, v22, v43);
  v45 = *(v64 + 8);
  v45(v41, v22);
  sub_274ADB48C(v44, v22, v43);
  return (v45)(v44, v22);
}

uint64_t sub_274B1B498@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274BF33D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v23 - v18;
  (*(a2 + 8))(*a1, v17);
  sub_274BF3E34();
  sub_274BF4464();
  (*(v9 + 8))(v11, a3);
  v23[2] = a4;
  v23[3] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v15, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_274ADB48C(v19, v12, WitnessTable);
  return (v21)(v19, v12);
}

uint64_t sub_274B1B6D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = a8;
  v27 = a7;
  v30 = a5;
  v29 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a9;
  v26 = a13;
  v24 = a10;
  v25 = *a2;
  sub_274BF5724();
  sub_274BF4914();
  v17 = sub_274BF5724();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  (*(v18 + 16))(&v24 - v20, a3, v17, v19);
  v34 = a6;
  v35 = v27;
  v36 = v28;
  v37 = a10;
  v38 = a11;
  v39 = a12;
  v40 = v26;
  v41 = a1;
  v42 = a2;
  v43 = v29;
  v44 = v30;
  v21 = *(v25 + *MEMORY[0x277D84DE8] + 8);
  v45 = v27;
  v46 = v21;
  v22 = v27;
  v47 = v28;
  v48 = a11;
  v49 = a12;
  sub_274BF4964();
  swift_getWitnessTable();
  sub_274BF4024();

  (*(v18 + 8))(v31, v17);
  return (*(*(v22 - 8) + 8))(v32, v22);
}

uint64_t sub_274B1B978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD70, &qword_274BFD2E0);
  sub_274BF48E4();
  return v1;
}

uint64_t sub_274B1BA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_274B08760();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD38, &qword_274BFD270);
  v30 = *(a1 + 16);
  v33 = sub_274AFA930(&qword_28098AD40, &qword_28098AD38, &qword_274BFD270, MEMORY[0x277D83980]);
  v5 = sub_274B221BC(&qword_28098AD48, sub_274B08760, MEMORY[0x277D85378]);
  v39 = v34;
  v40 = v4;
  v6 = v4;
  v32 = v4;
  v41 = v30;
  WitnessTable = v33;
  v43 = v5;
  v7 = sub_274BF4964();
  v38 = *(a1 + 24);
  v8 = v38;
  v39 = v6;
  v40 = v7;
  v41 = v5;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_274BF4054();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v39 = *v2;
  v37 = v39;
  KeyPath = swift_getKeyPath();

  v15 = sub_274B1B978();
  v27 = v16;
  v28 = v15;
  v26 = v17;
  v18 = *(v2 + 24);
  v44 = *(v2 + 40);
  v45 = v18;
  v19 = swift_allocObject();
  v20 = v30;
  *(v19 + 16) = v30;
  *(v19 + 24) = v8;
  v21 = *(v2 + 16);
  *(v19 + 32) = *v2;
  *(v19 + 48) = v21;
  *(v19 + 64) = *(v2 + 32);
  sub_274B22670(&v39, v36, &qword_28098AD38, &qword_274BFD270);

  sub_274B15E84(&v45, v36);

  sub_274B22670(&v44, v36, &qword_28098AB08, &qword_274BFCE50);
  sub_274B1BEB0(&v37, KeyPath, v28, v27, v26, sub_274B21DEC, v19, v32, v34, v20, v5, v33, v5, v8);
  v22 = swift_getWitnessTable();
  sub_274ADB48C(v11, v9, v22);
  v23 = *(v31 + 8);
  v23(v11, v9);
  sub_274ADB48C(v14, v9, v22);
  return (v23)(v14, v9);
}

uint64_t sub_274B1BD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  (*(v14 + 8))(*v13, v10);
  sub_274ADB48C(v8, a3, a4);
  v15 = *(v6 + 8);
  v15(v8, a3);
  sub_274ADB48C(v12, a3, a4);
  return (v15)(v12, a3);
}

uint64_t sub_274B1BEB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_274BF4964();
  swift_getWitnessTable();
  sub_274BF4014();

  return (*(*(a9 - 8) + 8))(a1, a9);
}

uint64_t sub_274B1C064()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_274BF2D64();

    if (v5)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    type metadata accessor for ContentCollectionPreviewViewOptions(0);
    sub_274B221BC(&qword_28098AB10, type metadata accessor for ContentCollectionPreviewViewOptions, &protocol conformance descriptor for ContentCollectionPreviewViewOptions);
    result = sub_274BF34C4();
    __break(1u);
  }

  return result;
}

void *sub_274B1C150@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_274BF3804();
  v10 = 1;
  sub_274B1C228(v2);
  memcpy(__dst, __src, 0x102uLL);
  memcpy(v12, __src, 0x102uLL);
  sub_274B22670(__dst, v7, &qword_28098AEC0, &qword_274BFD3F0);
  sub_274AFA708(v12, &qword_28098AEC0, &qword_274BFD3F0);
  memcpy(&v9[7], __dst, 0x102uLL);
  v5 = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), v9, 0x109uLL);
}

uint64_t sub_274B1C228(void *a1)
{
  if (a1[4])
  {
    sub_274B1C484(__src);
    v12 = *&__src[16];
    v13 = *__src;
    v2 = *&__src[32] | (__src[34] << 16);
    v3 = __src[35];
    sub_274BF4A94();
    sub_274BF30D4();
    __src[0] = v3;
    v10 = v31;
    v11 = v30;
    v4 = v32;
    v5 = v33;
    v6 = v3 << 24;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v2 = 0;
    v12 = 0u;
    v13 = 0u;
    v6 = 4278190080;
    v10 = 0u;
    v11 = 0u;
  }

  v7 = sub_274BF3904();
  v29[0] = 1;
  sub_274B1CA2C(a1, __src);
  memcpy(__dst, __src, 0x5AuLL);
  memcpy(v27, __src, 0x5AuLL);
  sub_274B22670(__dst, v19, &qword_28098AEC8, &qword_274BFD3F8);
  sub_274AFA708(v27, &qword_28098AEC8, &qword_274BFD3F8);
  memcpy(&v25[7], __dst, 0x5AuLL);
  v8 = v29[0];
  sub_274AF9EE0(__src);
  *v20 = v13;
  *&v20[16] = v12;
  *&v20[56] = v10;
  *&v20[40] = v11;
  *&v20[32] = v6 | v2;
  *&v20[72] = v4;
  *&v20[80] = v5;
  v21 = v20;
  v19[0] = v7;
  v19[1] = 0;
  LOBYTE(v19[2]) = v8;
  memcpy(&v19[2] + 1, v25, 0x61uLL);
  v17 = 0;
  v18 = 1;
  v22 = v19;
  v23 = &v17;
  v14 = *__src;
  v15 = *&__src[16];
  v16 = *&__src[32];
  v24 = &v14;
  sub_274BA0F94();
  sub_274AFA22C(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, SHIBYTE(v16));
  memcpy(__src, v19, sizeof(__src));
  sub_274AFA708(__src, &qword_28098AED0, &qword_274BFD400);
  memcpy(v29, v20, sizeof(v29));
  return sub_274AFA708(v29, &qword_28098AED8, &qword_274BFD408);
}

double sub_274B1C484@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEE0, &qword_274BFD410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-v3 - 16];
  v5 = sub_274BF46E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v9 = sub_274B81410();
  v10 = v9;
  if (v9 >= 2)
  {
    if (v9 == 2)
    {
      *&v23 = sub_274BF4654();
      *(&v23 + 1) = 256;
      memset(v24, 0, 18);
      v24[18] = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AF00, &qword_274BFD428);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AE8, &qword_274BFD420);
      sub_274B22990();
      sub_274AFA930(&qword_280989AE0, &qword_280989AE8, &qword_274BFD420, MEMORY[0x277CDF3A0]);
      sub_274BF3A64();
      v23 = v26;
      *v24 = v27;
      v24[18] = v29 != 0;
      *&v24[16] = v28;
      v25 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEE8, &qword_274BFD418);
      sub_274B228D8();
      sub_274BF3A64();
    }

    else
    {
      if ([v9 tintColor])
      {
        v12 = sub_274BF4594();
      }

      else
      {
        v12 = 0;
      }

      sub_274BF5604();
      (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
      sub_274BF4734();

      (*(v6 + 8))(v8, v5);
      v13 = sub_274BF4724();
      v14 = MEMORY[0x277CE1010];
      if (v12)
      {
        v14 = MEMORY[0x277CE1020];
      }

      (*(*(v13 - 8) + 104))(v4, *v14, v13);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v13);
      v15 = sub_274BF46F4();

      sub_274AFA708(v4, &qword_28098AEE0, &qword_274BFD410);
      KeyPath = swift_getKeyPath();
      [v10 sizeInPoints];
      *&v23 = v15;
      *(&v23 + 1) = KeyPath;
      *v24 = v12;
      *&v24[8] = v17 / v18;
      *&v24[16] = 0;
      v24[18] = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AF00, &qword_274BFD428);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AE8, &qword_274BFD420);
      sub_274B22990();
      sub_274AFA930(&qword_280989AE0, &qword_280989AE8, &qword_274BFD420, MEMORY[0x277CDF3A0]);
      sub_274BF3A64();
      v23 = v26;
      *v24 = v27;
      v24[18] = v29 != 0;
      *&v24[16] = v28;
      v25 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEE8, &qword_274BFD418);
      sub_274B228D8();
      sub_274BF3A64();
      sub_274AFA308(v10);
    }
  }

  else
  {
    sub_274AFA308(v9);
    *&v23 = sub_274BF45E4();
    *(&v23 + 1) = 256;
    memset(v24, 0, sizeof(v24));
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEE8, &qword_274BFD418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989AE8, &qword_274BFD420);
    sub_274B228D8();
    sub_274AFA930(&qword_280989AE0, &qword_280989AE8, &qword_274BFD420, MEMORY[0x277CDF3A0]);
    sub_274BF3A64();
  }

  result = *&v26;
  v20 = v27;
  v21 = v28 | (v29 << 16);
  v22 = v30;
  *a1 = v26;
  *(a1 + 16) = v20;
  *(a1 + 32) = v21;
  *(a1 + 34) = BYTE2(v21);
  *(a1 + 35) = v22;
  return result;
}

uint64_t sub_274B1CA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(*(a1 + 8) + 16) richListTitle];
  v4 = sub_274BF4F44();
  v6 = v5;

  v25 = v4;
  v26 = v6;
  sub_274ADDF6C();
  v22 = sub_274BF4104();
  v23 = v7;
  v24 = v8;
  v10 = v9;
  v21 = sub_274B1C064();
  v12 = v11;
  KeyPath = swift_getKeyPath();
  sub_274AF9BC8(&v25);
  v14 = v25;
  v15 = v26;
  v17 = v27;
  v16 = v28;
  LOBYTE(v6) = v30;
  v18 = v29;
  v10 &= 1u;
  LOBYTE(v25) = v10;
  v19 = v30;
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v10;
  *(a2 + 24) = v23;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v21;
  *(a2 + 48) = v12 & 1;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = v16;
  *(a2 + 88) = v18;
  *(a2 + 89) = v19;
  sub_274AF396C(v22, v24, v10);

  sub_274AFA1E0(v14, v15, v17, v16, v18, v6);
  sub_274AFA22C(v14, v15, v17, v16, v18, v6);
  sub_274AFA1D0(v22, v24, v10);
}

uint64_t __ContentCollectionListView.init(contentItems:contentItemDataSources:previewableContentCollection:context:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

uint64_t __ContentCollectionListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA18, &qword_274BFCB40);
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA20, &qword_274BFCB48);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v13;
  v31 = *(v1 + 32);
  v14 = sub_274B81D64(56.0, 56.0);
  v15 = *&v30[0];
  v16 = sub_274B19804(*&v30[0]);
  v27[4] = a1;
  if (v16 == 1)
  {
    v29 = *(v1 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A228, &qword_274BFBA08);
    sub_274BF4784();
    v17 = v28;
    sub_274B17EC8();
    v27[3] = v3;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x277C65230](0, v17);
    }

    else
    {
      v18 = *(v17 + 32);
    }

    v19 = v31;
    sub_274B17EC8();
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x277C65230](0, v15);
    }

    else
    {
      v20 = *(v15 + 32);
    }

    v21 = v20;
    sub_274B17EC8();
    if ((v14 & 0xC000000000000001) != 0)
    {

      v22 = MEMORY[0x277C65230](0, v14);
    }

    else
    {
      v22 = *(v14 + 32);
    }

    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48, &qword_274BFCB60);
    sub_274BF4774();
    v23 = v29;
    *v12 = v21;
    v12[8] = 0;
    v12[9] = v19;
    *(v12 + 2) = v18;
    *(v12 + 3) = v22;
    *(v12 + 2) = v23;
    swift_storeEnumTagMultiPayload();
    sub_274B207B8();
    OUTLINED_FUNCTION_3_9(&qword_28098AA40, &qword_28098AA18, &qword_274BFCB40);
    v24 = v21;

    v25 = v23;

    sub_274BF3A64();
  }

  else
  {
    v27[2] = v27;
    MEMORY[0x28223BE20](v16);
    v27[-2] = v30;
    v27[-1] = v14;
    sub_274BF3E24();
    v27[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA28, &unk_274BFCB50);
    sub_274AFA930(&qword_28098AA30, &qword_28098AA28, &unk_274BFCB50, MEMORY[0x277CDF340]);
    sub_274BF2EC4();

    (*(v5 + 16))(v12, v8, v3);
    swift_storeEnumTagMultiPayload();
    sub_274B207B8();
    OUTLINED_FUNCTION_3_9(&qword_28098AA40, &qword_28098AA18, &qword_274BFCB40);
    sub_274BF3A64();
    return (*(v5 + 8))(v8, v3);
  }
}

uint64_t sub_274B1D09C(uint64_t a1, uint64_t a2)
{
  v2 = sub_274BF3B54();
  MEMORY[0x28223BE20](v2);
  sub_274BF38F4();
  sub_274B221BC(&qword_2815A2FC8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_274BF5DB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB18, &qword_274BFCE58);
  sub_274AFA930(&qword_28098AB20, &qword_28098AB18, &qword_274BFCE58, MEMORY[0x277CE14C0]);
  return sub_274BF2EB4();
}

uint64_t sub_274B1D204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A248, &unk_274BFBA30);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v91 - v7;
  v105 = sub_274BF1A24();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v97 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v91 - v10;
  v98 = type metadata accessor for LLMAttributionView(0);
  MEMORY[0x28223BE20](v98);
  v103 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB28, &unk_274BFDD50);
  MEMORY[0x28223BE20](v100);
  v102 = &v91 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB30, &qword_274BFCE60);
  MEMORY[0x28223BE20](v101);
  v108 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v91 - v15;
  MEMORY[0x28223BE20](v16);
  v107 = &v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB38, &qword_274BFCE68);
  MEMORY[0x28223BE20](v18);
  v106 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB40, &qword_274BFCE70);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v114 = &v91 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB48, &unk_274BFCE78);
  v112 = *(v28 - 8);
  v113 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v91 - v32;
  v34 = *a1;
  v35 = sub_274B22B94();
  if (v35 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v43 = MEMORY[0x277C65230](0, v34);
  }

  else
  {
    v36 = v35;
    v109 = v30;
    v110 = v25;
    v111 = a3;
    v116 = 0;
    v117 = v35;
    swift_getKeyPath();
    v37 = swift_allocObject();
    v38 = *(a1 + 1);
    *(v37 + 16) = *a1;
    *(v37 + 32) = v38;
    *(v37 + 48) = *(a1 + 32);
    *(v37 + 56) = a2;
    sub_274B218F4(a1, __src);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A128, &qword_274BFCEA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB50, &qword_274BFCEA8);
    sub_274B08948();
    sub_274B2192C();
    v115 = v33;
    sub_274BF4944();
    v39 = 0;
    v40 = v34 & 0xC000000000000001;
    while (v36 != v39)
    {
      if (v40)
      {
        v41 = MEMORY[0x277C65230](v39, v34);
      }

      else
      {
        if (v39 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v41 = *(v34 + 8 * v39 + 32);
      }

      v42 = v41;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v45 = v115;
        goto LABEL_18;
      }

      ++v39;
    }

    if (!v36)
    {
      v48 = 1;
      v45 = v115;
      goto LABEL_20;
    }

    sub_274B17EC8();
    if (v40)
    {
      goto LABEL_24;
    }

    v43 = *(v34 + 32);
  }

  v42 = v43;
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  v45 = v115;
  if (v44)
  {
    v46 = [v44 response];

    v47 = [v46 responseDataModel];
    v48 = 1;
    if (v47)
    {
      v94 = v22;
      sub_274BF4934();
      v49 = sub_274BF3E74();
      sub_274BF2E54();
      v50 = &v22[*(v18 + 36)];
      *v50 = v49;
      *(v50 + 1) = v51;
      *(v50 + 2) = v52;
      *(v50 + 3) = v53;
      *(v50 + 4) = v54;
      v50[40] = 0;
      v55 = v95;
      sub_274BF1A74();
      v92 = sub_274BF1A64();
      v56 = [objc_allocWithZone(sub_274BF1A54()) init];
      v57 = v104;
      v91 = *(v104 + 16);
      v58 = v103;
      v93 = v47;
      v59 = v105;
      v91(v103, v55, v105);
      v60 = v98;
      *(v58 + *(v98 + 20)) = v56;
      v61 = sub_274BF25F4();
      __swift_storeEnumTagSinglePayload(v96, 1, 1, v61);
      v62 = objc_allocWithZone(sub_274BF4D84());
      v63 = sub_274BF4D74();
      v64 = (v58 + *(v60 + 28));
      v116 = v63;
      v65 = v63;
      sub_274BF4774();
      v66 = __src[1];
      *v64 = __src[0];
      v64[1] = v66;
      v67 = v97;
      v91(v97, v55, v59);
      v68 = objc_allocWithZone(type metadata accessor for WFAskLLMFeedbackPresenter(0));
      v69 = WFAskLLMFeedbackPresenter.init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(v67, v92, v65, 0, 0);
      (*(v57 + 8))(v55, v59);
      *(v58 + *(v60 + 24)) = v69;
      sub_274BF4AA4();
      sub_274BF34A4();
      v70 = v102;
      sub_274B226D4(v58, v102, type metadata accessor for LLMAttributionView);
      memcpy((v70 + *(v100 + 36)), __src, 0x70uLL);
      LOBYTE(v69) = sub_274BF3E44();
      v71 = v70;
      v72 = v99;
      sub_274B21EA8(v71, v99, &qword_28098AB28, &unk_274BFDD50);
      v73 = v72 + *(v101 + 36);
      *v73 = v69;
      *(v73 + 8) = xmmword_274BFCB30;
      *(v73 + 24) = xmmword_274BFCB30;
      *(v73 + 40) = 0;
      v74 = v107;
      sub_274B21EA8(v72, v107, &qword_28098AB30, &qword_274BFCE60);
      v75 = v94;
      v76 = v106;
      sub_274B22670(v94, v106, &qword_28098AB38, &qword_274BFCE68);
      v77 = v108;
      sub_274B22670(v74, v108, &qword_28098AB30, &qword_274BFCE60);
      v78 = v114;
      sub_274B22670(v76, v114, &qword_28098AB38, &qword_274BFCE68);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB80, &qword_274BFCEC8);
      sub_274B22670(v77, v78 + *(v79 + 48), &qword_28098AB30, &qword_274BFCE60);

      sub_274AFA708(v74, &qword_28098AB30, &qword_274BFCE60);
      sub_274AFA708(v75, &qword_28098AB38, &qword_274BFCE68);
      sub_274AFA708(v77, &qword_28098AB30, &qword_274BFCE60);
      v45 = v115;
      sub_274AFA708(v76, &qword_28098AB38, &qword_274BFCE68);
      v48 = 0;
    }
  }

  else
  {
LABEL_18:

    v48 = 1;
  }

LABEL_20:
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB70, &qword_274BFCEB8);
  v81 = v114;
  __swift_storeEnumTagSinglePayload(v114, v48, 1, v80);
  v82 = v112;
  v83 = v113;
  v84 = *(v112 + 16);
  v85 = v109;
  v84(v109, v45, v113);
  v86 = v110;
  sub_274B22670(v81, v110, &qword_28098AB40, &qword_274BFCE70);
  v87 = v111;
  v84(v111, v85, v83);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB78, &qword_274BFCEC0);
  sub_274B22670(v86, &v87[*(v88 + 48)], &qword_28098AB40, &qword_274BFCE70);
  sub_274AFA708(v81, &qword_28098AB40, &qword_274BFCE70);
  v89 = *(v82 + 8);
  v89(v115, v83);
  sub_274AFA708(v86, &qword_28098AB40, &qword_274BFCE70);
  return (v89)(v85, v83);
}

uint64_t sub_274B1DD4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a2 & 0xC000000000000001;
  sub_274B17EC8();
  if (v9)
  {
    v10 = MEMORY[0x277C65230](v7, v8);
  }

  else
  {
    v10 = *(v8 + 8 * v7 + 32);
  }

  v11 = v10;
  v12 = sub_274B19804(v8);
  v28 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A228, &qword_274BFBA08);
  sub_274BF4784();
  sub_274B17EC8();
  if ((v27 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x277C65230](v7);
  }

  else
  {
    v13 = *(v27 + 8 * v7 + 32);
  }

  v26 = *(a2 + 32);
  sub_274B17EC8();
  if ((a3 & 0xC000000000000001) != 0)
  {
    v24 = v11;

    v14 = MEMORY[0x277C65230](v7, a3);
  }

  else
  {
    v14 = *(a3 + 8 * v7 + 32);
    v15 = v11;
  }

  v25 = v12 != 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48, &qword_274BFCB60);
  sub_274BF4774();
  v16 = sub_274BF38F4();
  v17 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB50, &qword_274BFCEA8) + 36);
  *v17 = v16;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB88, &qword_274BFCED0);
  sub_274B1DF94(v7, a2, v17 + *(v18 + 44));
  v19 = sub_274BF4A94();
  v21 = v20;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB68, &qword_274BFCEB0);
  v23 = (v17 + *(result + 36));
  *v23 = v19;
  v23[1] = v21;
  *a4 = v11;
  *(a4 + 8) = v25;
  *(a4 + 9) = v26;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v28;
  return result;
}

uint64_t sub_274B1DF94@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB38, &qword_274BFCE68);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB90, &qword_274BFCED8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  result = sub_274B19804(*a2);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = 1;
    if (result - 1 != a1)
    {
      sub_274BF4934();
      v17 = sub_274BF3E74();
      sub_274BF2E54();
      v18 = &v8[*(v6 + 36)];
      *v18 = v17;
      *(v18 + 1) = v19;
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      *(v18 + 4) = v22;
      v18[40] = 0;
      sub_274B21EA8(v8, v14, &qword_28098AB38, &qword_274BFCE68);
      v16 = 0;
    }

    __swift_storeEnumTagSinglePayload(v14, v16, 1, v6);
    sub_274B22670(v14, v11, &qword_28098AB90, &qword_274BFCED8);
    *a3 = 0;
    *(a3 + 8) = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098AB98, &qword_274BFCEE0);
    sub_274B22670(v11, a3 + *(v23 + 48), &qword_28098AB90, &qword_274BFCED8);
    sub_274AFA708(v14, &qword_28098AB90, &qword_274BFCED8);
    return sub_274AFA708(v11, &qword_28098AB90, &qword_274BFCED8);
  }

  return result;
}

uint64_t sub_274B1E19C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v34 = *v1;
  v35 = v3;
  v36 = v4;
  v37 = *(v1 + 8);
  v31 = *(v1 + 8);
  v5 = v34;
  v6 = *(&v3 + 1);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA60, &qword_274BFCDE0) + 40);
  sub_274B21390(&v37, &v38);
  WFContentItem.previewView(configuration:previewableThumbnailItem:previewableListItem:forceUseDefaultPreview:)(&v31, v6, 0, v7);

  v8 = sub_274BF4A94();
  v10 = v9;
  if (BYTE1(v37))
  {
    *&v38 = sub_274BF45E4();
    BYTE8(v38) = 1;
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    sub_274B2080C(sub_274B1E4E8, 0);
    *&v38 = sub_274BF4564();
    BYTE8(v38) = 0;
  }

  sub_274BF3A64();
  v12 = v31;
  v13 = BYTE8(v31);
  v14 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA68, &qword_274BFCDE8) + 36);
  *v14 = v12;
  *(v14 + 8) = v13;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  v38 = v36;
  v33 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA70, &qword_274BFCDF0);
  sub_274BF47A4();
  v30 = v31;
  v15 = v32;
  type metadata accessor for ContentItemShareManager(0);
  swift_allocObject();
  v16 = v5;
  sub_274B1101C(v5);
  sub_274B221BC(&qword_28098A508, type metadata accessor for ContentItemShareManager, &protocol conformance descriptor for ContentItemShareManager);
  v17 = sub_274BF3264();
  v19 = v18;
  v20 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA78, &qword_274BFCDF8) + 36);
  *v20 = v16;
  *(v20 + 8) = v30;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  v33 = v38;
  v21 = v16;
  sub_274BF47A4();
  v22 = v32;
  *a1 = v31;
  *(a1 + 16) = v22;
  *(a1 + 24) = 0;
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 1) = v34;
  *(v23 + 2) = v24;
  *(v23 + 3) = v36;
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA80, &qword_274BFCE00) + 36));
  *v25 = sub_274B213EC;
  v25[1] = v23;
  v25[2] = 0;
  v25[3] = 0;
  v26 = swift_allocObject();
  v27 = v35;
  v26[1] = v34;
  v26[2] = v27;
  v26[3] = v36;
  v28 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA88, &qword_274BFCE08) + 36));
  *v28 = 0;
  v28[1] = 0;
  v28[2] = sub_274B22B8C;
  v28[3] = v26;
  sub_274B21458(&v34, &v31);
  return sub_274B21458(&v34, &v31);
}

id sub_274B1E4E8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray5Color;
  if (v1 != 2)
  {
    v3 = &selRef_whiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_274B1E5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD78, &qword_274BFD2E8);
  MEMORY[0x28223BE20](v94);
  v78 = &v76 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD80, &qword_274BFD2F0);
  MEMORY[0x28223BE20](v97);
  v98 = &v76 - v7;
  v92 = sub_274BF3454();
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v86 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD88, &qword_274BFD2F8);
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v76 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD90, &qword_274BFD300);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = &v76 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AD98, &qword_274BFD308);
  MEMORY[0x28223BE20](v95);
  v87 = &v76 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADA0, &qword_274BFD310);
  MEMORY[0x28223BE20](v102);
  v96 = &v76 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADA8, &qword_274BFD318);
  MEMORY[0x28223BE20](v93);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB0, &qword_274BFD320);
  MEMORY[0x28223BE20](v15);
  v103 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8, &qword_274BFD328);
  v81 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADC0, &qword_274BFD330);
  MEMORY[0x28223BE20](v99);
  v100 = &v76 - v23;
  *&v112 = *v3;
  v24 = v112;
  sub_274B08760();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADC8, &qword_274BFD338);
  v26 = swift_dynamicCast();
  v101 = a2;
  if ((v26 & 1) == 0)
  {
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    sub_274AFA708(&v104, &qword_28098ADD0, &qword_274BFD340);
LABEL_5:
    *&v104 = v25;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v109 = 0;
      v107 = 0u;
      v108 = 0u;
    }

    sub_274B22670(&v107, &v104, &qword_28098ADD0, &qword_274BFD340);
    v30 = *(&v105 + 1);
    v79 = v25;
    if (*(&v105 + 1))
    {
      v31 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
      (*(v31 + 8))(v30, v31);
      __swift_destroy_boxed_opaque_existential_0(&v104);
    }

    else
    {
      sub_274AFA708(&v104, &qword_28098ADD0, &qword_274BFD340);
      v32 = type metadata accessor for ContentItemPreview.Action(0);
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADD8, &qword_274BFD348);
    v34 = *(*(v33 - 8) + 16);
    v35 = v103;
    v80 = v33;
    v34(v103, a1);
    v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADE0, &qword_274BFD350) + 36)] = 0;
    v112 = *(v3 + 32);
    type metadata accessor for ContentItemShareManager(0);
    sub_274B221BC(&qword_28098A508, type metadata accessor for ContentItemShareManager, &protocol conformance descriptor for ContentItemShareManager);

    v36 = sub_274BF3264();
    v37 = &v35[*(v15 + 36)];
    *v37 = v36;
    v37[1] = v38;
    sub_274B1F518(v22, v3, v14);
    sub_274B22670(&v107, &v104, &qword_28098ADD0, &qword_274BFD340);
    v39 = *(&v105 + 1);
    if (*(&v105 + 1))
    {
      v40 = v22;
      v41 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
      v42 = (*(v41 + 24))(v39, v41);
      v43 = __swift_destroy_boxed_opaque_existential_0(&v104);
      if ((v42 & 1) == 0)
      {
        MEMORY[0x28223BE20](v43);
        *(&v76 - 2) = v14;
        sub_274B2204C();
        sub_274B22234();
        v44 = v78;
        v45 = v103;
        sub_274BF41F4();
        KeyPath = swift_getKeyPath();
        v47 = (v44 + *(v94 + 36));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE40, &qword_274BFD3A8);
        sub_274BF4B24();
        *v47 = KeyPath;
        v48 = &qword_28098AD78;
        v49 = &qword_274BFD2E8;
        sub_274B22670(v44, v98, &qword_28098AD78, &qword_274BFD2E8);
        swift_storeEnumTagMultiPayload();
        sub_274B222E4();
        sub_274B224C4();
        v50 = v96;
LABEL_15:
        sub_274BF3A64();
        sub_274AFA708(v44, v48, v49);
        sub_274B22670(v50, v100, &qword_28098ADA0, &qword_274BFD310);
        swift_storeEnumTagMultiPayload();
        sub_274AFA930(&qword_28098AE10, &qword_28098ADD8, &qword_274BFD348, MEMORY[0x277CE04B0]);
        sub_274B225E4();
        sub_274BF3A64();
        sub_274AFA708(v50, &qword_28098ADA0, &qword_274BFD310);
        sub_274AFA708(v14, &qword_28098ADA8, &qword_274BFD318);
        sub_274AFA708(v45, &qword_28098ADB0, &qword_274BFD320);
        sub_274AFA708(v40, &qword_28098ADB8, &qword_274BFD328);
        return sub_274AFA708(&v107, &qword_28098ADD0, &qword_274BFD340);
      }
    }

    else
    {
      v40 = v22;
      sub_274AFA708(&v104, &qword_28098ADD0, &qword_274BFD340);
    }

    v77 = v40;
    sub_274B22670(v40, v19, &qword_28098ADB8, &qword_274BFD328);
    v51 = *(v3 + 8);
    v110 = *(v3 + 24);
    v111 = v51;
    v52 = v14;
    v53 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v54 = v19;
    v55 = (v82 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v57 = v56 + v53;
    v14 = v52;
    v58 = sub_274B21EA8(v54, v57, &qword_28098ADB8, &qword_274BFD328);
    v59 = (v56 + v55);
    v60 = *(v3 + 16);
    *v59 = *v3;
    v59[1] = v60;
    v59[2] = *(v3 + 32);
    MEMORY[0x28223BE20](v58);
    v45 = v103;
    *(&v76 - 2) = v103;
    v61 = v79;
    sub_274B22670(&v112, &v104, &qword_28098ADE8, &qword_274BFD358);
    sub_274B15E84(&v111, &v104);

    sub_274B22670(&v110, &v104, &qword_28098AA48, &qword_274BFCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADF0, &unk_274BFD360);
    sub_274B21F94();
    v62 = v83;
    sub_274BF47C4();
    v63 = v86;
    sub_274BF3444();
    v64 = sub_274AFA930(&qword_28098AE18, &qword_28098AD88, &qword_274BFD2F8, MEMORY[0x277CDF028]);
    v65 = sub_274B221BC(&qword_28098AE20, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v66 = v84;
    v67 = v88;
    v68 = v92;
    sub_274BF41D4();
    (*(v89 + 8))(v63, v68);
    v69 = (*(v85 + 8))(v62, v67);
    MEMORY[0x28223BE20](v69);
    *(&v76 - 2) = v14;
    *&v104 = v67;
    *(&v104 + 1) = v68;
    *&v105 = v64;
    *(&v105 + 1) = v65;
    swift_getOpaqueTypeConformance2();
    sub_274B22234();
    v44 = v87;
    v70 = v91;
    sub_274BF41F4();
    v71 = v66;
    v40 = v77;
    (*(v90 + 8))(v71, v70);
    v72 = swift_getKeyPath();
    v73 = (v44 + *(v95 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE40, &qword_274BFD3A8);
    sub_274BF4B24();
    *v73 = v72;
    v48 = &qword_28098AD98;
    v49 = &qword_274BFD308;
    sub_274B22670(v44, v98, &qword_28098AD98, &qword_274BFD308);
    swift_storeEnumTagMultiPayload();
    sub_274B222E4();
    sub_274B224C4();
    v50 = v96;
    goto LABEL_15;
  }

  v76 = v19;
  v80 = a1;
  v27 = v14;
  sub_274B226BC(&v104, &v107);
  v28 = *(&v108 + 1);
  v29 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  if ((*(v29 + 16))(v28, v29))
  {
    __swift_destroy_boxed_opaque_existential_0(&v107);
    v14 = v27;
    a1 = v80;
    v19 = v76;
    goto LABEL_5;
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADD8, &qword_274BFD348);
  (*(*(v75 - 8) + 16))(v100, v80, v75);
  swift_storeEnumTagMultiPayload();
  sub_274AFA930(&qword_28098AE10, &qword_28098ADD8, &qword_274BFD348, MEMORY[0x277CE04B0]);
  sub_274B225E4();
  sub_274BF3A64();
  return __swift_destroy_boxed_opaque_existential_0(&v107);
}

uint64_t sub_274B1F518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE68, &qword_274BFD3B0);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE70, &qword_274BFD3B8);
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8, &qword_274BFD328);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v36 - v13;
  v15 = type metadata accessor for ContentItemPreview.Action(0);
  MEMORY[0x28223BE20](v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE78, &unk_274BFD3C0);
  MEMORY[0x28223BE20](v18 - 8);
  v39 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v36 - v21;
  sub_274B22670(a1, v14, &qword_28098ADB8, &qword_274BFD328);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_274AFA708(v14, &qword_28098ADB8, &qword_274BFD328);
    v23 = __swift_storeEnumTagSinglePayload(v22, 1, 1, v9);
  }

  else
  {
    v24 = sub_274B226D4(v14, v17, type metadata accessor for ContentItemPreview.Action);
    v36[1] = v36;
    MEMORY[0x28223BE20](v24);
    v36[-2] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE98, &qword_274BFD3D8);
    v25 = v37;
    sub_274AFA930(&qword_28098AEA0, &qword_28098AE98, &qword_274BFD3D8, MEMORY[0x277CDF028]);
    sub_274BF49C4();
    (*(v25 + 32))(v22, v11, v9);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v9);
    v23 = sub_274B22730(v17);
  }

  v38 = v22;
  MEMORY[0x28223BE20](v23);
  v36[-2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE80, &qword_274BFDD90);
  sub_274AFA930(&qword_28098AE88, &qword_28098AE80, &qword_274BFDD90, MEMORY[0x277CE14C0]);
  v26 = v40;
  sub_274BF49C4();
  v27 = v39;
  sub_274B22670(v22, v39, &qword_28098AE78, &unk_274BFD3C0);
  v28 = v41;
  v29 = v42;
  v30 = *(v41 + 16);
  v31 = v43;
  v30(v43, v26, v42);
  v32 = v44;
  sub_274B22670(v27, v44, &qword_28098AE78, &unk_274BFD3C0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE90, &qword_274BFD3D0);
  v30((v32 + *(v33 + 48)), v31, v29);
  v34 = *(v28 + 8);
  v34(v26, v29);
  sub_274AFA708(v38, &qword_28098AE78, &unk_274BFD3C0);
  v34(v31, v29);
  return sub_274AFA708(v27, &qword_28098AE78, &unk_274BFD3C0);
}

uint64_t sub_274B1FA98(uint64_t a1)
{
  v2 = type metadata accessor for ContentItemPreview.Action(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_274B2279C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_274B226D4(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for ContentItemPreview.Action);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEA8, &qword_274BFD3E0);
  sub_274AFA930(&qword_28098AEB0, &qword_28098AEA8, &qword_274BFD3E0, MEMORY[0x277CDEFF0]);
  return sub_274BF47C4();
}

uint64_t sub_274B1FCD4@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for ContentItemPreview.Action(0);
  sub_274ADDF6C();

  result = sub_274BF4104();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_274B1FD54@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContentItemPreview.Action(0);

  result = sub_274BF4704();
  *a2 = result;
  return result;
}

uint64_t sub_274B1FDAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE98, &qword_274BFD3D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v34 = *(a1 + 24);
  v35 = v14;
  v33 = *(a1 + 32);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = *(a1 + 32);
  v28 = v15;
  sub_274B15E84(&v35, v32);

  sub_274B22670(&v34, v32, &qword_28098AA48, &qword_274BFCB60);
  sub_274B22670(&v33, v32, &qword_28098ADE8, &qword_274BFD358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEA8, &qword_274BFD3E0);
  sub_274AFA930(&qword_28098AEB0, &qword_28098AEA8, &qword_274BFD3E0, MEMORY[0x277CDEFF0]);
  sub_274BF47C4();
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = *(a1 + 32);
  v20 = v28;
  sub_274B15E84(&v35, v32);

  sub_274B22670(&v34, v32, &qword_28098AA48, &qword_274BFCB60);
  sub_274B22670(&v33, v32, &qword_28098ADE8, &qword_274BFD358);
  sub_274BF47C4();
  v21 = *(v4 + 16);
  v22 = v29;
  v21(v29, v13, v3);
  v23 = v30;
  v21(v30, v10, v3);
  v24 = v31;
  v21(v31, v22, v3);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEB8, &qword_274BFD3E8);
  v21(&v24[*(v25 + 48)], v23, v3);
  v26 = *(v4 + 8);
  v26(v10, v3);
  v26(v13, v3);
  v26(v23, v3);
  return (v26)(v22, v3);
}

uint64_t sub_274B2019C(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110, &unk_274BFF810);
  return sub_274BF48D4();
}

uint64_t sub_274B20200()
{
  v0 = sub_274BF4FE4("Content Item Preview Quick Look Action", 38);
  sub_274BF4FE4("Quick Look", 10, v0);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v1 = qword_28098C7C0;
  v2 = sub_274BF4F04();

  v3 = sub_274BF4F04();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  sub_274BF4F44();
  sub_274ADDF6C();
  return sub_274BF4754();
}

uint64_t sub_274B20364()
{
  v0 = sub_274BF4FE4("Content Item Preview Share Action", 33);
  sub_274BF4FE4("Share", 5, v0);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v1 = qword_28098C7C0;
  v2 = sub_274BF4F04();

  v3 = sub_274BF4F04();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  sub_274BF4F44();
  sub_274ADDF6C();
  return sub_274BF4754();
}

uint64_t sub_274B204B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8, &qword_274BFD328);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ContentItemPreview.Action(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274B22670(a1, v6, &qword_28098ADB8, &qword_274BFD328);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_274AFA708(v6, &qword_28098ADB8, &qword_274BFD328);
    v15 = *(a2 + 8);
    v16 = *(a2 + 24);
    v14 = *a2;
    v10 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A110, &unk_274BFF810);
    return sub_274BF48D4();
  }

  else
  {
    v12 = sub_274B226D4(v6, v9, type metadata accessor for ContentItemPreview.Action);
    (*&v9[*(v7 + 28)])(v12);
    return sub_274B22730(v9);
  }
}

uint64_t sub_274B20658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_274B22670(a1, a2, &qword_28098ADB0, &qword_274BFD320);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADF0, &unk_274BFD360);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_274B206AC(uint64_t a1)
{
  v2 = sub_274BF4B34();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_274BF3754();
}

unint64_t sub_274B207B8()
{
  result = qword_28098AA38;
  if (!qword_28098AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AA38);
  }

  return result;
}

id sub_274B2080C(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_274B208B0;
  v6[3] = &block_descriptor_2;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

id sub_274B208B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_274B20918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v43 = a9;
  v37 = a1;
  v38 = a10;
  v14 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = v16;
  v18 = *(v17 + *MEMORY[0x277D84DE8] + 8);
  v44 = v19;
  v45 = v18;
  v46 = v20;
  v47 = v21;
  v36[0] = v20;
  v48 = v22;
  v23 = sub_274BF4964();
  v39 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v36 - v28;
  (*(v14 + 16))(v16, v37, a5, v27);
  v30 = swift_allocObject();
  v30[2] = a5;
  v30[3] = v18;
  v30[4] = a6;
  v30[5] = a7;
  v31 = v38;
  v30[6] = a8;
  v30[7] = v31;
  v32 = v42;
  v30[8] = v41;
  v30[9] = v32;

  sub_274BF4944();
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v25, v23, WitnessTable);
  v34 = *(v39 + 8);
  v34(v25, v23);
  sub_274ADB48C(v29, v23, WitnessTable);
  return (v34)(v29, v23);
}

uint64_t sub_274B20BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  v17(v14);
  sub_274ADB48C(v12, a6, a9);
  v18 = *(v10 + 8);
  v18(v12, a6);
  sub_274ADB48C(v16, a6, a9);
  return (v18)(v16, a6);
}

uint64_t sub_274B20D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a8;
  v45 = a1;
  v48 = a5;
  v49 = a3;
  v43 = a2;
  v52 = a9;
  v50 = a4;
  v51 = a14;
  v46 = a13;
  v47 = a12;
  v16 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[2] = v18;
  v20 = *(v19 + *MEMORY[0x277D84DE8] + 8);
  v53 = v21;
  v54 = v20;
  v55 = v22;
  v56 = v23;
  v24 = v23;
  v57 = a11;
  v25 = sub_274BF4964();
  OUTLINED_FUNCTION_0_5();
  v42 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v41 - v32;
  v34 = *(v16 + 16);
  v41[1] = a6;
  v34(v18, v45, a6, v31);
  v35 = swift_allocObject();
  v36 = v47;
  v35[2] = v48;
  v35[3] = a6;
  v35[4] = v20;
  v35[5] = a7;
  v35[6] = v44;
  v35[7] = v24;
  v35[8] = a11;
  v35[9] = v36;
  v37 = v50;
  v35[10] = v49;
  v35[11] = v37;

  sub_274BF4944();
  OUTLINED_FUNCTION_0_12();
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v29, v25, WitnessTable);
  v39 = *(v42 + 8);
  v39(v29, v25);
  sub_274ADB48C(v33, v25, WitnessTable);
  return (v39)(v33, v25);
}

uint64_t sub_274B20FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_0_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - v19;
  v21(v18);
  sub_274ADB48C(v16, a7, a11);
  v22 = *(v13 + 8);
  v22(v16, a7);
  sub_274ADB48C(v20, a7, a11);
  return (v22)(v20, a7);
}

uint64_t sub_274B21138(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_274B21178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274B211C8()
{
  result = qword_28098AA50;
  if (!qword_28098AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA58, &qword_274BFCC20);
    sub_274B207B8();
    sub_274AFA930(&qword_28098AA40, &qword_28098AA18, &qword_274BFCB40, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AA50);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore28ContentCollectionPreviewViewV22MultipleSelectionStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_274B212A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_274B212E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  OUTLINED_FUNCTION_10_1();

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_274B214A8()
{
  result = qword_28098AA98;
  if (!qword_28098AA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA90, &qword_274BFCE10);
    sub_274B21534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AA98);
  }

  return result;
}

unint64_t sub_274B21534()
{
  result = qword_28098AAA0;
  if (!qword_28098AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AAA8, &qword_274BFCE18);
    sub_274B215B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AAA0);
  }

  return result;
}

unint64_t sub_274B215B8()
{
  result = qword_28098AAB0;
  if (!qword_28098AAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AAB8, &qword_274BFCE20);
    sub_274B21670();
    sub_274AFA930(&qword_28098AAF0, &qword_28098AAF8, &qword_274BFCE40, &unk_274BFD180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AAB0);
  }

  return result;
}

unint64_t sub_274B21670()
{
  result = qword_28098AAC0;
  if (!qword_28098AAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AAC8, &qword_274BFCE28);
    sub_274AFA930(&qword_28098AAD0, &qword_28098AAD8, &qword_274BFCE30, &unk_274BFD220);
    sub_274AFA930(&qword_28098AAE0, &qword_28098AAE8, &qword_274BFCE38, &unk_274BFD1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AAC0);
  }

  return result;
}

void sub_274B21754(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_274B217DC(id result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

id sub_274B217F8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  sub_274B21754(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm()
{

  sub_274B21754(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_274B2192C()
{
  result = qword_28098AB58;
  if (!qword_28098AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AB50, &qword_274BFCEA8);
    sub_274B207B8();
    sub_274AFA930(&qword_28098AB60, &qword_28098AB68, &qword_274BFCEB0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AB58);
  }

  return result;
}

uint64_t sub_274B219F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B21A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B21AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_274B21AFC()
{
  result = qword_28098AD20;
  if (!qword_28098AD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA88, &qword_274BFCE08);
    sub_274B21B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AD20);
  }

  return result;
}

unint64_t sub_274B21B88()
{
  result = qword_28098AD28;
  if (!qword_28098AD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AA80, &qword_274BFCE00);
    sub_274AFA930(&qword_28098AD30, &qword_28098AA60, &qword_274BFCDE0, &unk_274BFF7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AD28);
  }

  return result;
}

uint64_t sub_274B21EA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_2();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return v4;
}

uint64_t sub_274B21EF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098ADB8, &qword_274BFD328) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_274B204B0(v0 + v2, v3);
}

unint64_t sub_274B21F94()
{
  result = qword_28098ADF8;
  if (!qword_28098ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADF0, &unk_274BFD360);
    sub_274B2204C();
    sub_274AFA930(&qword_28098A8C8, &qword_28098A8D0, &qword_274BFC898, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098ADF8);
  }

  return result;
}

unint64_t sub_274B2204C()
{
  result = qword_28098AE00;
  if (!qword_28098AE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADB0, &qword_274BFD320);
    sub_274B220D8();
    sub_274B11AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE00);
  }

  return result;
}

unint64_t sub_274B220D8()
{
  result = qword_28098AE08;
  if (!qword_28098AE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADE0, &qword_274BFD350);
    sub_274AFA930(&qword_28098AE10, &qword_28098ADD8, &qword_274BFD348, MEMORY[0x277CE04B0]);
    sub_274AFA930(&qword_28098A8C8, &qword_28098A8D0, &qword_274BFC898, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE08);
  }

  return result;
}

uint64_t sub_274B221BC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_274B22234()
{
  result = qword_28098AE28;
  if (!qword_28098AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADA8, &qword_274BFD318);
    sub_274AFA930(&qword_28098AE30, &qword_28098AE38, &qword_274BFD370, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE28);
  }

  return result;
}

unint64_t sub_274B222E4()
{
  result = qword_28098AE48;
  if (!qword_28098AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD98, &qword_274BFD308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD90, &qword_274BFD300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADA8, &qword_274BFD318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD88, &qword_274BFD2F8);
    sub_274BF3454();
    sub_274AFA930(&qword_28098AE18, &qword_28098AD88, &qword_274BFD2F8, MEMORY[0x277CDF028]);
    sub_274B221BC(&qword_28098AE20, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_274B22234();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098AE50, &qword_28098AE40, &qword_274BFD3A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE48);
  }

  return result;
}

unint64_t sub_274B224C4()
{
  result = qword_28098AE58;
  if (!qword_28098AE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AD78, &qword_274BFD2E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADB0, &qword_274BFD320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADA8, &qword_274BFD318);
    sub_274B2204C();
    sub_274B22234();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098AE50, &qword_28098AE40, &qword_274BFD3A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE58);
  }

  return result;
}

unint64_t sub_274B225E4()
{
  result = qword_28098AE60;
  if (!qword_28098AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098ADA0, &qword_274BFD310);
    sub_274B222E4();
    sub_274B224C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AE60);
  }

  return result;
}

uint64_t sub_274B22670(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_2();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return v4;
}

uint64_t sub_274B226BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_274B226D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_274B22730(uint64_t a1)
{
  v2 = type metadata accessor for ContentItemPreview.Action(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274B2279C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentItemPreview.Action(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B22800()
{
  v1 = *(type metadata accessor for ContentItemPreview.Action(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_274B1FC20(v2);
}

uint64_t objectdestroy_106Tm()
{

  OUTLINED_FUNCTION_10_1();

  return swift_deallocObject();
}

unint64_t sub_274B228D8()
{
  result = qword_28098AEF0;
  if (!qword_28098AEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AEE8, &qword_274BFD418);
    sub_274B22990();
    sub_274AFA930(&qword_280989AE0, &qword_280989AE8, &qword_274BFD420, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AEF0);
  }

  return result;
}

unint64_t sub_274B22990()
{
  result = qword_28098AEF8;
  if (!qword_28098AEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AF00, &qword_274BFD428);
    sub_274B22A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AEF8);
  }

  return result;
}

unint64_t sub_274B22A1C()
{
  result = qword_28098AF08;
  if (!qword_28098AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AF10, &unk_274BFD430);
    sub_274AFA930(&qword_2815A2F88, &qword_280989AC8, &qword_274BFE650, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AF08);
  }

  return result;
}

unint64_t sub_274B22AD4()
{
  result = qword_28098AF18;
  if (!qword_28098AF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098AF20, &qword_274BFD4F0);
    sub_274AFA930(&qword_28098AE10, &qword_28098ADD8, &qword_274BFD348, MEMORY[0x277CE04B0]);
    sub_274B225E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AF18);
  }

  return result;
}

uint64_t sub_274B22BC4()
{
  *&v9 = sub_274AD8430(0, &qword_28098B318, off_279EF2E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B320, &qword_274BFDB28);
  v1 = sub_274BF4FA4();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v0 + 16);

  sub_274B0691C(v1, v3, v4, &v9);

  if (!v10)
  {
    sub_274AFA708(&v9, &qword_28098B300, &qword_274BFDB20);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B328, &qword_274BFDB30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B328, &qword_274BFDB30);
    swift_allocObject();
    v5 = sub_274B22FC4();
    v10 = v6;
    *&v9 = v5;
    swift_beginAccess();

    sub_274B22D58(&v9, v1, v3);
    swift_endAccess();
    return v5;
  }

  return v8;
}

uint64_t sub_274B22D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_274B29EBC(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_274B31430(v11, a2, a3, isUniquelyReferenced_nonNull_native, v7, v8);

    *v3 = v10;
  }

  else
  {
    sub_274AFA708(a1, &qword_28098B300, &qword_274BFDB20);
    sub_274B296C0(a2, a3, v11);

    return sub_274AFA708(v11, &qword_28098B300, &qword_274BFDB20);
  }

  return result;
}

uint64_t sub_274B22E2C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*(v1 + 16))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = sub_274BF5874();

  if (!v2)
  {
    return 0;
  }

LABEL_3:
  swift_beginAccess();
  v3 = sub_274B22EE0();
  swift_endAccess();
  return v3;
}

uint64_t sub_274B22EE0()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    result = sub_274BF5874();
    if (result)
    {
LABEL_3:
      v3 = sub_274B29948(v1);
      v5 = v4;
      v7 = v6;
      sub_274B299A8(v3, v4, v6 & 1);
      v9 = v8;
      sub_274B29EB0(v3, v5, v7 & 1);
      return v9;
    }
  }

  else
  {
    result = *(v1 + 16);
    if (result)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_274B22F64(void *a1)
{
  swift_beginAccess();
  sub_274B91058(&v3, a1);
  v2 = v3;
  swift_endAccess();
}

uint64_t sub_274B22FC4()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_274BF5874())
  {
    sub_274B47944(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_274B23018()
{
  v1 = sub_274BF3774();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_274BF54A4();
    v6 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void *AttributedTextEditor.placeholder.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t AttributedTextEditor.init(editingSession:placeholder:keyboardType:autocapitalizationType:isBorderless:isRinglessOnFocus:isClear:padding:focusImmediatelyWhenPresented:overrideSizeThatFits:minHeight:maxHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, char a13)
{
  result = swift_getKeyPath();
  *a9 = result;
  *(a9 + 8) = 0;
  *(a9 + 88) = 0x4014000000000000;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 80) = a5;
  *(a9 + 48) = a6;
  *(a9 + 49) = a7;
  *(a9 + 64) = a12;
  *(a9 + 72) = a10;
  *(a9 + 50) = a8;
  *(a9 + 51) = a13;
  *(a9 + 56) = a11;
  return result;
}

uint64_t AttributedTextEditor.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v25 = *v2;
  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  v8 = *(v2 + 4);
  v7 = *(v2 + 5);
  v9 = v2[4];
  v30 = v2[3];
  v31 = v9;
  v32 = v2[5];
  v26 = v6;
  v27 = v5;
  v28 = v8;
  v29 = v7;

  v10 = sub_274B23018();
  v11 = v5;
  v12 = v8;
  v13 = WFAutocapitalizationTypeFromString(v7);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_274B234F0((v10 & 1) == 0, v5, 1, v12, v13, &v25, 5.0, 10.0, 11.0, 10.0, 11.0);
  swift_getKeyPath();
  type metadata accessor for UIKitTextEditor(0, v15, v14, v16);
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  sub_274BF4374();

  (*(*(v14 - 8) + 8))(&v25, v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28098AF40, &unk_274BFC460);
  v17 = sub_274BF33D4();
  OUTLINED_FUNCTION_10_2();
  sub_274AFA930(v18, &unk_28098AF40, &unk_274BFC460, v19);
  OUTLINED_FUNCTION_8_6();
  swift_getWitnessTable();
  v20 = *(v17 - 8);
  v21 = *(v20 + 16);
  v21(&v25, v24, v17);
  v22 = *(v20 + 8);
  v22(v24, v17);
  v21(a2, &v25, v17);
  return v22(&v25, v17);
}

void sub_274B234F0(char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  *(a7 + 96) = swift_getKeyPath();
  *(a7 + 104) = 0;
  *(a7 + 112) = 0;
  *(a7 + 120) = 0;
  *(a7 + 128) = 0;
  *(a7 + 136) = swift_getKeyPath();
  *(a7 + 176) = 0;

  *a7 = sub_274B24324(v23, v24, v25, v26);
  *(a7 + 8) = v27;
  *(a7 + 88) = a2;
  *(a7 + 16) = a3;
  v28 = a4 & 1;
  *(a7 + 24) = v28;
  *(a7 + 32) = a8;
  *(a7 + 40) = a9;
  *(a7 + 48) = a10;
  *(a7 + 56) = a11;
  *(a7 + 64) = a12;
  *(a7 + 72) = a5;
  *(a7 + 80) = a6;
  v29 = sub_274B44B6C(&v51);
  v31 = *(&v51 + 1);
  if (*(&v51 + 1) != 2)
  {
    v38 = v51;

    sub_274B295B0(v38, v31);
    return;
  }

  if (v28)
  {
    v32 = 700;
  }

  else
  {
    v32 = 100;
  }

  v33 = sub_274B44AE4(v29, v30);
  v34 = [v33 length];

  if (v28)
  {
    if (v32 < v34)
    {
      sub_274AD8430(0, &unk_28098EEF0, 0x277CCAB48);
      sub_274BF4FE4("Show More", 9);
      if (qword_2809893B8 != -1)
      {
        swift_once();
      }

      v39 = qword_28098C7C0;
      OUTLINED_FUNCTION_24();
      v40 = sub_274BF4F04();
      OUTLINED_FUNCTION_24();
      v41 = sub_274BF4F04();

      v42 = [v39 localizedStringForKey:v40 value:v41 table:0];

      v43 = sub_274BF4F44();
      v44 = sub_274B4DB08(v43);
      v35 = v44;
      if (v44)
      {
        v45 = [v44 string];
        sub_274BF4F44();

        v46 = sub_274BF5004();

        v47 = *MEMORY[0x277D740E8];
        *&v51 = 0x65726F4D776F6873;
        *(&v51 + 1) = 0xE800000000000000;
        MEMORY[0x277C648E0](3092282, 0xE300000000000000);
        v48 = sub_274BF4F04();

        [v35 addAttribute:v47 value:v48 range:{0, v46}];

        v49 = *MEMORY[0x277D740A8];
        v50 = [objc_opt_self() preferredFontForTextStyle_];
        [v35 addAttribute:v49 value:v50 range:{0, v46}];

        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      v37 = 700;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v32 >= v34)
  {
LABEL_14:
    v37 = 0;
    v36 = 0;
    v35 = 1;
    goto LABEL_17;
  }

  v35 = 0;
  v36 = 0;
  v37 = 100;
LABEL_17:
  *&v51 = v37;
  *(&v51 + 1) = v35;
  sub_274B44B78(&v51);
}

uint64_t sub_274B2388C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3704();
  *a1 = result & 1;
  return result;
}

void sub_274B2390C(void *a1, void *a2)
{
  v5 = [a1 length];
  v27 = 0;
  v28 = 0;
  v29 = 1;
  v6 = *MEMORY[0x277D74060];
  OUTLINED_FUNCTION_35();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = &v27;
  OUTLINED_FUNCTION_35();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_274B29E8C;
  *(v8 + 24) = v7;
  v25 = sub_274B29E94;
  v26 = v8;
  OUTLINED_FUNCTION_6_7();
  v22 = 1107296256;
  v23 = sub_274B44878;
  v24 = &block_descriptor_34;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  [a1 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v9}];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if ((v29 & 1) == 0)
    {
      v13 = v27;
      v12 = v28;
      v14 = swift_allocObject();
      *(v14 + 32) = 0u;
      *(v14 + 16) = 0u;
      v15 = [a2 glyphRangeForCharacterRange:v13 actualCharacterRange:{v12, 0}];
      v17 = v16;
      v18 = swift_allocObject();
      v18[2] = v15;
      v18[3] = v17;
      v18[4] = a2;
      v18[5] = v14;
      v25 = sub_274B29E9C;
      v26 = v18;
      OUTLINED_FUNCTION_6_7();
      v22 = 1107296256;
      v23 = sub_274B23F28;
      v24 = &block_descriptor_43;
      v19 = _Block_copy(aBlock);
      v20 = a2;

      [v20 enumerateLineFragmentsForGlyphRange:v15 usingBlock:{v17, v19}];
      _Block_release(v19);
      swift_beginAccess();
    }
  }
}

void sub_274B23BEC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  sub_274AD8D30(a1, v11, &qword_28098B300, &qword_274BFDB20);
  if (v12)
  {
    sub_274AD8430(0, &qword_28098B308, 0x277D74270);
    if (swift_dynamicCast())
    {
      sub_274AD8430(0, &qword_28098B310, 0x277D82BB8);
      if (sub_274BF5624())
      {
        *a6 = a2;
        *(a6 + 8) = a3;
        *(a6 + 16) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_274AFA708(v11, &qword_28098B300, &qword_274BFDB20);
  }
}

void sub_274B23CF4(uint64_t a1, NSRange range2, uint64_t a3, NSRange range1, void *a5, uint64_t a6)
{
  v10 = NSIntersectionRange(range1, range2);
  v11 = sub_274BF1A84();
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a3;
  v14[4] = sub_274B29EA8;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_274B23EA4;
  v14[3] = &block_descriptor_49;
  v13 = _Block_copy(v14);

  [a5 enumerateEnclosingRectsForGlyphRange:v10.location withinSelectedGlyphRange:v10.length inTextContainer:v11 usingBlock:{0, a1, v13}];
  _Block_release(v13);
}

uint64_t sub_274B23E24(_BYTE *a1, double *a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  result = swift_beginAccess();
  a2[2] = a4;
  a2[3] = a5;
  a2[4] = a6;
  a2[5] = a7;
  *a3 = 1;
  *a1 = 1;
  return result;
}

double sub_274B23EA4(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v11(a2, a3, a4, a5, a6);

  return result;
}

void sub_274B23F28(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_274B24014(void *a1)
{
  v2 = a1;
  v3 = [a1 length];
  [v1 beginEditing];
  v14 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_36();
  v4 = swift_allocObject();
  *(v4 + 16) = &v14;
  OUTLINED_FUNCTION_35();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_274B29678;
  *(v5 + 24) = v4;
  aBlock[4] = sub_274B29680;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B243B0;
  aBlock[3] = &block_descriptor_3;
  v6 = _Block_copy(aBlock);

  [v2 enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Key(0);
    sub_274B29ECC(&qword_280989580, type metadata accessor for Key, &unk_274BF957C);
    v7 = sub_274BF4E14();
    sub_274B29C0C(v7, 0, v3, v1);
    v8 = *(v14 + 16);
    if (v8)
    {
      v9 = ( + 48);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v9 += 3;

        v12 = sub_274BF4DE4();

        [v1 addAttributes:v12 range:{v10, v11}];

        --v8;
      }

      while (v8);
    }

    [v1 endEditing];
  }
}

uint64_t sub_274B242B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  sub_274B478B8(v9);
  v10 = *(*a5 + 16);
  result = sub_274B03EF0(v10);
  v12 = *a5;
  *(v12 + 16) = v10 + 1;
  v13 = (v12 + 24 * v10);
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  return result;
}

uint64_t sub_274B24324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttributedTextEditingSession(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11();

  return sub_274BF3264();
}

uint64_t sub_274B243B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_274B29ECC(&qword_280989580, type metadata accessor for Key, &unk_274BF957C);
  v9 = sub_274BF4DF4();
  v8(v9, a3, a4, a5);
}

uint64_t sub_274B24488(uint64_t a1)
{
  sub_274BF5CD4();
  sub_274AEF504(v3, *v1);
  return sub_274BF5D44();
}

uint64_t sub_274B244C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_274BF3774();
  OUTLINED_FUNCTION_0_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v63 - v12;
  OUTLINED_FUNCTION_11_2();
  swift_getWitnessTable();
  v64 = a2;
  sub_274BF3CF4();
  sub_274BF3CE4();
  sub_274AF6CB0();
  sub_274BF37A4();
  v14 = *(v7 + 8);
  v14(v13, v5);
  v15 = sub_274B22BC4();

  OUTLINED_FUNCTION_17_2();
  sub_274BF3CD4();
  v16 = v68;

  sub_274B260A8(v17);

  v18 = sub_274B22E2C();
  v63[1] = v15;
  v63[2] = v3;
  v66 = v14;
  v67 = v5;
  v65 = v7 + 8;
  if (v18)
  {
    v19 = v18;
    v20 = v64;
  }

  else
  {
    v63[0] = 0;
    OUTLINED_FUNCTION_17_2();
    sub_274BF3CE4();
    sub_274B294FC();
    sub_274BF37A4();
    v14(v10, v5);
    if (v68)
    {
      OUTLINED_FUNCTION_21();
      sub_274BA253C();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v20 = v64;
    type metadata accessor for UIKitTextView(0, v64[2], v64[3], v21);
    v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v25 = sub_274B279D4(v3[24]);
    sub_274B30B80(v25, v26, v27, v28, v29, v30);
    sub_274B27A54(&v68);
    v31 = objc_opt_self();
    v32 = *MEMORY[0x277D76918];
    v33 = v24;
    v34 = [v31 preferredFontForTextStyle_];
    [v33 setFont_];

    v35 = [objc_opt_self() labelColor];
    [v33 setTextColor_];

    v36 = v33;
    [v36 setBackgroundColor_];
    LODWORD(v37) = 1144750080;
    [v36 setContentHuggingPriority:1 forAxis:v37];
    LODWORD(v38) = 1132068864;
    [v36 setContentCompressionResistancePriority:0 forAxis:v38];
    LODWORD(v39) = 1144750080;
    [v36 setContentCompressionResistancePriority:1 forAxis:v39];
    v40 = [v36 layoutManager];
    [v40 wf:v36 setControlView:?];

    v41 = [objc_allocWithZone(MEMORY[0x277D7D7D8]) init];
    v42 = [v36 textContainer];
    [v41 setTextContainer_];

    [v36 addInteraction_];
    v43 = [objc_allocWithZone(WFTextScrollView) initWithTextView_];

    v19 = v43;
    if (v23)
    {

      sub_274BA2CC8();
    }

    else
    {
    }

    v18 = v63[0];
  }

  v44 = v18;
  v64 = v19;
  v45 = [v19 textView];
  type metadata accessor for UIKitTextView(0, v20[2], v20[3], v46);
  v63[0] = v45;
  v47 = swift_dynamicCastClassUnconditional();
  OUTLINED_FUNCTION_17_2();
  sub_274BF3CE4();
  sub_274B294FC();
  sub_274BF37A4();
  v66(v13, v67);
  v48 = sub_274B280C8(v68);
  v67 = v47;
  v49 = [v47 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B2F8, &qword_274BFDB18);
  v50 = sub_274BF5144();

  result = sub_274B22B94();
  if (!result)
  {
    goto LABEL_19;
  }

  v52 = result;
  if (result >= 1)
  {
    for (i = 0; i != v52; ++i)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C65230](i, v50);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        OUTLINED_FUNCTION_17_2();
        sub_274BF3CD4();
        v56 = v68;
        [v55 setDelegate_];
      }

      swift_unknownObjectRelease();
    }

LABEL_19:

    OUTLINED_FUNCTION_17_2();
    sub_274BF3CD4();
    v57 = v68;
    v58 = v63[0];
    v59 = v67;
    sub_274B262AC(v67);

    OUTLINED_FUNCTION_17_2();
    sub_274BF3CD4();
    v60 = v68;
    v61 = v64;
    [v64 setTextViewDelegate_];

    OUTLINED_FUNCTION_36();
    *(swift_allocObject() + 16) = v59;
    v62 = v58;

    sub_274B44FCC();

    return v61;
  }

  __break(1u);
  return result;
}

double sub_274B24B90@<D0>(void *a2@<X1>, uint64_t a3@<X8>, uint64_t x3_0@<X3>)
{
  v7 = *a2;
  v8 = *MEMORY[0x277D85000];
  v13 = a2;
  v9 = type metadata accessor for UIKitTextView(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), x3_0);
  v10 = a2;
  sub_274B29CF0(&v13, v9, &off_2883C93D0, v14);

  result = *v14;
  v12 = v14[1];
  *a3 = v14[0];
  *(a3 + 16) = v12;
  *(a3 + 32) = v15;
  return result;
}

void sub_274B24C4C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_274BF33A4();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4();
  v97 = v7 - v6;
  v8 = sub_274BF3774();
  OUTLINED_FUNCTION_0_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v96 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v96 - v17;
  OUTLINED_FUNCTION_11_2();
  swift_getWitnessTable();
  sub_274BF3CF4();
  sub_274BF3CE4();
  sub_274B294FC();
  sub_274BF37A4();
  v96 = v10;
  v19 = *(v10 + 8);
  v104 = v8;
  v107 = v10 + 8;
  v106 = v19;
  v19(v18, v8);
  if (*&v109[0])
  {
    OUTLINED_FUNCTION_21();
    sub_274BA253C();
    v98 = v20;
  }

  else
  {
    v98 = 0;
  }

  v21 = v108;
  v22 = *(a3 + 16);
  v23 = *(a3 + 24);
  v103 = *(v108 + 24);
  [a1 setAdjustmentEnabled_];
  v24 = [a1 textView];
  *&v101 = v22;
  *&v100 = v23;
  type metadata accessor for UIKitTextView(0, v22, v23, v25);
  v99 = v24;
  v102 = swift_dynamicCastClassUnconditional();
  sub_274BF3CD4();
  v26 = v111;
  (*(*(a3 - 8) + 16))(v109, v21, a3);
  sub_274B25FC4(v109);

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_13_3();
  sub_274BF37A4();
  v27 = v104;
  v28 = v106;
  v106(v15, v104);
  sub_274B26090(v111);

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_13_3();
  sub_274B29550();
  sub_274BF37A4();
  v28(v15, v27);
  sub_274B261B8(v111);

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_13_3();
  sub_274B82DD8();
  v29 = OUTLINED_FUNCTION_28();
  (v28)(v29);
  sub_274B2624C(v15, a3);

  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_13_3();
  sub_274BE454C();
  v30 = OUTLINED_FUNCTION_28();
  (v28)(v30);
  OUTLINED_FUNCTION_19_1();
  sub_274B26290(v31, v32);

  if (v113 && (v33 = [v113 mutableCopy]) != 0)
  {
    v34 = v33;
    sub_274AD8430(0, &unk_28098B2E0, 0x277D74240);
    v35 = v34;
    sub_274BF3CE4();
    OUTLINED_FUNCTION_19_1();
    v37 = sub_274B7AE50(v36);
    [v35 addAttribute:*MEMORY[0x277D74118] value:v37 range:{0, objc_msgSend(v35, sel_length)}];
  }

  else
  {
    v35 = 0;
  }

  v38 = v102;
  sub_274BF3CE4();
  v99 = v99;
  v102 = v35;
  [v38 setAttributedPlaceholder_];

  sub_274B280F0(v39);
  OUTLINED_FUNCTION_12_3();
  v40 = *&v109[0];
  v41 = *(v112 + *(*v112 + 168));

  v111 = v41;
  OUTLINED_FUNCTION_36();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v44 = v100;
  v43[2] = v101;
  v43[3] = v44;
  v43[4] = v42;
  v45 = OUTLINED_FUNCTION_11();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
  sub_274AFA930(&qword_28098B2C8, &qword_28098B2C0, &unk_274BFF0F0, MEMORY[0x277CBCE20]);
  v48 = sub_274BF2DB4();
  OUTLINED_FUNCTION_19_1();

  sub_274B262F4(v48);

  OUTLINED_FUNCTION_37();
  v49 = sub_274B44AB0();

  OUTLINED_FUNCTION_12_3();
  v50 = *&v109[0];
  v51 = sub_274B260B4();

  if ((v51 & 0x100000000) != 0 || v49 != v51)
  {
    OUTLINED_FUNCTION_37();
    sub_274B44B6C(v109);

    v53 = *(&v109[0] + 1);
    v52 = *&v109[0];
    *&v101 = *&v109[0];
    if (*(&v109[0] + 1) == 2)
    {
      v52 = 0;
    }

    *&v100 = *(&v109[0] + 1);
    if (*(&v109[0] + 1) == 2)
    {
      v53 = 1;
    }

    *&v109[0] = v52;
    *(&v109[0] + 1) = v53;
    OUTLINED_FUNCTION_37();
    v56 = sub_274B44AE4(v54, v55);

    v57.super.isa = TextEditorContentDisplayStyle.style(_:)(v56).super.isa;

    v58 = [v38 text];
    if (v58)
    {
      v59 = v58;
      v60 = sub_274BF4F44();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v47 = [(objc_class *)v57.super.isa string];
    v63 = sub_274BF4F44();
    v65 = v64;

    if (v62)
    {
      if (v60 == v63 && v62 == v65)
      {

        OUTLINED_FUNCTION_19_1();
        goto LABEL_27;
      }

      v67 = sub_274BF5C24();

      OUTLINED_FUNCTION_19_1();
      if (v67)
      {
LABEL_27:
        v68 = [v38 textStorage];
        v69 = [v68 isEqualToAttributedString_];

        if ((v69 & 1) == 0)
        {
          v70 = [v38 textStorage];
          sub_274B24014(v57.super.isa);
        }

        goto LABEL_29;
      }
    }

    else
    {

      OUTLINED_FUNCTION_19_1();
    }

    [v38 setAttributedText_];
LABEL_29:
    OUTLINED_FUNCTION_12_3();
    sub_274B295B0(v101, v100);

    v71 = *&v109[0];
    OUTLINED_FUNCTION_37();
    v72 = sub_274B44AB0();

    v73 = &v71[qword_28098B000];
    *v73 = v72;
    v73[4] = 0;
  }

  [v38 setScrollEnabled_];
  v74 = [v38 textContainer];
  [v74 setLineFragmentPadding_];

  v75 = v47[6];
  v76 = v47[7];
  if (*(v47 + 129) == 1)
  {
    v77 = v104;
    if ((v47[8] & 1) == 0)
    {
LABEL_37:
      v81 = v108;
      goto LABEL_38;
    }
  }

  else
  {
    v101 = v47[7];
    v100 = v75;

    sub_274BF54A4();
    v78 = sub_274BF3DF4();
    OUTLINED_FUNCTION_32_0(v78, &dword_274AD4000, v79, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_274BF3764();
    swift_getAtKeyPath();
    OUTLINED_FUNCTION_29();
    v77 = v104;
    OUTLINED_FUNCTION_1_11();
    v80();
    if ((v110 & 1) == 0)
    {

      sub_274BF54A4();
      v82 = sub_274BF3DF4();
      OUTLINED_FUNCTION_32_0(v82, &dword_274AD4000, v83, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_274BF3764();
      swift_getAtKeyPath();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_1_11();
      v84();
      if (v110)
      {
        __break(1u);
        return;
      }

      v76 = v109[1];
      v75 = v109[0];
      goto LABEL_37;
    }
  }

  v81 = v108;
  v76 = *(v108 + 56);
  v75 = *(v108 + 40);
LABEL_38:
  [v38 setTextContainerInset_];
  [v38 setEditable_];
  (*(v96 + 16))(v15, v105, v77);
  v85 = sub_274BF3684();
  v86 = v97;
  sub_274BF3564();
  v87 = NSTextAlignment.init(alignment:layoutDirection:)(v85, v86);
  OUTLINED_FUNCTION_1_11();
  v88();
  [v38 setTextAlignment_];
  [v38 setKeyboardType_];
  if (v103)
  {
    v89 = 0;
  }

  else
  {
    v89 = 9;
  }

  [v38 setReturnKeyType_];
  [v38 setAutocorrectionType_];
  [v38 setAutocapitalizationType_];
  sub_274B295D0();
  sub_274BF37A4();
  [v38 setSmartQuotesType_];
  sub_274B29624();
  sub_274BF37A4();
  [v38 setSmartDashesType_];
  v90 = *(v81 + 8);

  v91 = v90;
  sub_274B45BCC();
  OUTLINED_FUNCTION_31();
  if (v86)
  {

    sub_274B475AC(1);
    OUTLINED_FUNCTION_31();
    v92 = v99;

    v93 = v102;
  }

  else
  {
    v93 = v102;
    [v38 setSelectedRange_];
    v92 = v99;

    if (([v38 isFirstResponder] & 1) == 0)
    {
      [v38 becomeFirstResponder];
    }
  }

  if (v98)
  {

    sub_274BA2CC8();

    OUTLINED_FUNCTION_1_11();
    v94();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v95();
  }
}

void sub_274B2593C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong layoutManager];

    [v6 invalidateDisplayForCharacterRange_];
  }
}

void sub_274B259CC(double *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_274BF3774();
  OUTLINED_FUNCTION_0_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v45 = [a3 textView];
  type metadata accessor for UIKitTextView(0, *(a4 + 16), *(a4 + 24), v9);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = v45;
    v13 = [v11 font];
    if (v13)
    {
      v14 = v13;
      [v13 lineHeight];
      v16 = v15;
    }

    else
    {
      v16 = 1.0;
    }

    if ([v11 isScrollEnabled])
    {
      [v11 textContainerInset];
      v22 = v21;
      v24 = v23;
      if (*(v11 + qword_28098B178) != 1)
      {
        v32 = v12;
        v29 = v16;
LABEL_20:

        v40 = fmax(fmin(v22 + v24 + v29, 350.0), 75.0);
LABEL_24:
        a1[1] = v40;
        goto LABEL_25;
      }

      v25 = v19;
      v26 = v20;
      v27 = [v11 textStorage];
      v28 = [v27 length];

      v29 = 350.0;
      v30 = ceil(350.0 / v16);
      if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v30 > -9.22337204e18)
      {
        if (v30 < 9.22337204e18)
        {
          v31 = 70 * v30;
          if ((v30 * 70) >> 64 == v31 >> 63)
          {
            v32 = v12;
            if (v31 >= v28)
            {
              v33 = [v11 layoutManager];
              v32 = [v11 textContainer];

              [v33 wf:v32 calculateIntrinsicHeightForWidth:*a1 - (v25 + v26) textContainer:?];
              v29 = v34;
            }

            goto LABEL_20;
          }

          goto LABEL_29;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_28;
    }

    v35 = *(v4 + 96);
    v36 = *(v4 + 112);
    v37 = *(v4 + 128);
    if (*(v4 + 129) == 1)
    {

      if ((v37 & 1) == 0)
      {
        v38 = *&v35;
        v39 = *&v36;
LABEL_23:
        v40 = v16 + v38 + v39;
        goto LABEL_24;
      }
    }

    else
    {
      v44 = *(v4 + 120);
      v46 = *(v4 + 104);

      sub_274BF54A4();
      v41 = sub_274BF3DF4();
      sub_274BF2BC4();

      sub_274BF3764();
      swift_getAtKeyPath();
      sub_274B294F0(v35, v46, v36, v44, v37, 0);
      v42 = OUTLINED_FUNCTION_24();
      v43(v42);

      if ((v49 & 1) == 0)
      {
        v38 = v47;
        v39 = v48;
        goto LABEL_23;
      }
    }

LABEL_25:
    OUTLINED_FUNCTION_39();
    return;
  }

  OUTLINED_FUNCTION_39();
}

double sub_274B25DB0(void *a1)
{
  if (sub_274B26084())
  {
    v2 = OUTLINED_FUNCTION_21();
    sub_274BA2180(v2, v3, v4, 0xE900000000000065);
  }

  if (sub_274B2609C())
  {
    sub_274B22F64(a1);
  }

  return result;
}

id sub_274B25E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for UIKitTextEditor.Coordinator(0, *(a1 + 16), *(a1 + 24), a4);
  v12 = OUTLINED_FUNCTION_25(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16[0]);
  v13(v12);
  return sub_274B25ED8(v16);
}

uint64_t sub_274B25F0C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28098AFE8;
  swift_beginAccess();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  type metadata accessor for UIKitTextEditor(0, v5, *(v4 + 88), v6);
  OUTLINED_FUNCTION_0_2();
  return (*(v7 + 16))(a1, v1 + v3);
}

uint64_t sub_274B25FC4(uint64_t a1)
{
  v3 = qword_28098AFE8;
  swift_beginAccess();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  type metadata accessor for UIKitTextEditor(0, v5, *(v4 + 88), v6);
  OUTLINED_FUNCTION_0_2();
  (*(v7 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_274B260E0(uint64_t result)
{
  v2 = v1 + qword_28098B000;
  *v2 = result;
  *(v2 + 4) = BYTE4(result) & 1;
  return result;
}

void *sub_274B260FC()
{
  v1 = *(v0 + qword_28098B008);
  v2 = v1;
  return v1;
}

void sub_274B2612C(uint64_t a1)
{
  v2 = *(v1 + qword_28098B008);
  *(v1 + qword_28098B008) = a1;
}

void sub_274B26140()
{
  v0 = sub_274B260FC();
  if (v0)
  {
    v2 = v0;

    sub_274B70F90(v1);
  }
}

double sub_274B261B8(uint64_t a1)
{
  *(v1 + qword_28098B010) = a1;

  sub_274B26140();

  return result;
}

uint64_t sub_274B26214()
{
  v0 = OUTLINED_FUNCTION_11();
  sub_274ADDED0(v0, v1);
  return OUTLINED_FUNCTION_11();
}

uint64_t sub_274B26258()
{
  v0 = OUTLINED_FUNCTION_11();
  sub_274ADDED0(v0, v1);
  return OUTLINED_FUNCTION_11();
}

void sub_274B262AC(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_274B26300(uint64_t a1)
{
  *&v1[qword_28098AFF0] = 0;
  *&v1[qword_28098AFF8] = 0;
  v3 = &v1[qword_28098B000];
  *v3 = 0;
  v3[4] = 1;
  *&v1[qword_28098B008] = 0;
  *&v1[qword_28098B010] = 0;
  v4 = &v1[qword_28098B018];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[qword_28098B020];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_28098B030] = 0;
  v6 = qword_28098AFE8;
  v7 = OUTLINED_FUNCTION_23();
  v11 = type metadata accessor for UIKitTextEditor(v7, v8, v9, v10);
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v1[v6], a1, v11);
  v13 = OUTLINED_FUNCTION_23();
  v19.receiver = v1;
  v19.super_class = type metadata accessor for UIKitTextEditor.Coordinator(v13, v14, v15, v16);
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v12 + 8))(a1, v11);
  return v17;
}

double sub_274B26498(void *a1)
{
  OUTLINED_FUNCTION_18_1();
  v4 = v3;
  v5 = sub_274B260FC();
  if (v5)
  {

    v6 = sub_274B25F0C(v27);
    OUTLINED_FUNCTION_38(v6, *(v4 + 80), *(v4 + 88), v7);
    OUTLINED_FUNCTION_0_2();
    v9 = *(v8 + 8);

    v9(v27, v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20, &qword_274BFDB50);
    OUTLINED_FUNCTION_20();
    sub_274AFA930(v10, v11, v12, v13);
    sub_274BF2D14();
  }

  else
  {
    v14 = [objc_allocWithZone(type metadata accessor for UIKitAutocompleteCoordinator()) init];
    v15 = a1;
    sub_274B70C4C(a1);
    v16 = &v14[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate];
    swift_beginAccess();
    *(v16 + 1) = &off_2883C93F8;
    swift_unknownObjectWeakAssign();
    v17 = sub_274B261AC();
    sub_274B70F90(v17);
    v18 = v14;
    sub_274B2612C(v14);
  }

  sub_274B25F0C(v27);
  v20 = type metadata accessor for UIKitTextEditor(0, *(v4 + 80), *(v4 + 88), v19);
  OUTLINED_FUNCTION_0_2();
  v22 = *(v21 + 8);

  (v22)(v27, v20);
  sub_274B44BEC(v26);
  OUTLINED_FUNCTION_26();
  if (!v24 && v23 != 2)
  {
    sub_274B295C0(*v22, v23);
    *v22 = xmmword_274BFBC10;
  }

  v20(v26, 0);

  return result;
}

void sub_274B2672C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274B26498(v4);
}

double sub_274B26794()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_274B2612C(0);
  sub_274B25F0C(v8);
  v4 = type metadata accessor for UIKitTextEditor(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  OUTLINED_FUNCTION_0_2();
  v6 = *(v5 + 8);

  v6(v8, v4);

  sub_274B47624(0, 0, 1, 1);

  return result;
}

void sub_274B2687C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274B26794();
}

void sub_274B268DC(void *a1)
{
  sub_274B25F0C(v19);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_38(v3, v4, *(v2 + 88), v5);
  OUTLINED_FUNCTION_0_2();
  v7 = *(v6 + 8);

  v16 = OUTLINED_FUNCTION_25(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19[0]);
  v7(v16);
  v17 = [a1 textStorage];
  sub_274B45BE4(v17);
}

void sub_274B269B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274B268DC(v4);
}

double sub_274B26A20(void *a1)
{
  sub_274B25F0C(v21);
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_38(v3, v4, *(v2 + 88), v5);
  OUTLINED_FUNCTION_0_2();
  v7 = *(v6 + 8);

  v16 = OUTLINED_FUNCTION_25(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21[0]);
  v7(v16);

  v17 = [a1 selectedRange];
  sub_274B47624(v17, v18, 0, 1);

  return result;
}

void sub_274B26AFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274B26A20(v4);
}

uint64_t sub_274B26B64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x277D85000] & *v5;
  v8 = a4 == 10 && a5 == 0xE100000000000000;
  if (!v8 && (sub_274BF5C24() & 1) == 0)
  {
    return 1;
  }

  sub_274B25F0C(v13);
  v9 = v13[24];
  type metadata accessor for UIKitTextEditor(0, *(v7 + 80), *(v7 + 88), v10);
  OUTLINED_FUNCTION_0_2();
  (*(v11 + 8))(v13);
  if (v9)
  {
    return 1;
  }

  [a1 resignFirstResponder];
  return 0;
}

uint64_t sub_274B26C58(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_274BF4F44();
  v10 = v9;
  v11 = a3;
  v12 = a1;
  LOBYTE(v8) = sub_274B26B64(v11, v13, v14, v8, v10);

  return v8 & 1;
}

uint64_t sub_274B26CCC()
{
  v0 = sub_274BF1F24();
  if (v1)
  {
    v2 = v0 == 0x65726F4D776F6873 && v1 == 0xE800000000000000;
    if (v2)
    {
    }

    else
    {
      v3 = sub_274BF5C24();

      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    sub_274B25F0C(v14);
    v4 = OUTLINED_FUNCTION_23();
    v8 = type metadata accessor for UIKitTextEditor(v4, v5, v6, v7);
    OUTLINED_FUNCTION_0_2();
    v10 = *(v9 + 8);

    (v10)(v14, v8);
    sub_274B44BEC(v13);
    OUTLINED_FUNCTION_26();
    if (!v2 && v11 != 2)
    {
      sub_274B295C0(*v10, v11);
      *v10 = xmmword_274BFBC10;
    }

    v8(v13, 0);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_274B26E6C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_274BF1F54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF1F04();
  v10 = a3;
  v11 = a1;
  sub_274B26CCC();

  (*(v7 + 8))(v9, v6);
  return 0;
}

void sub_274B26F68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_1();
  v4 = v3;
  v5 = sub_274B2629C();
  if (v5)
  {
    v22 = v5;
    v6 = sub_274B26214();
    if (v6)
    {
      v8 = v6;
      v23[3] = type metadata accessor for UIKitTextView(0, *(v4 + 80), *(v4 + 88), v7);
      v23[4] = &off_2883C93D0;
      v23[0] = v22;
      v9 = v22;
      v10 = [v9 textStorage];
      v11 = [v9 layoutManager];
      sub_274B2390C(v10, v11);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v8(v23, a2, v13, v15, v17, v19);
      v20 = OUTLINED_FUNCTION_24();
      sub_274AD81C4(v20, v21);
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
    }
  }
}

void sub_274B270FC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_274B26F68(v8, v7);
}

void sub_274B27170()
{
  OUTLINED_FUNCTION_18_1();
  v1 = v0;
  v2 = sub_274B2629C();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 selectedRange];
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_274B25F0C(v26);
  OUTLINED_FUNCTION_38(v7, *(v1 + 80), *(v1 + 88), v8);
  OUTLINED_FUNCTION_0_2();
  v10 = *(v9 + 8);

  v19 = OUTLINED_FUNCTION_25(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26[0]);
  v10(v19);

  v20 = &v4[v6];
  if (__OFADD__(v4, v6))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(v20, 1))
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_274B47624((v20 + 1), 0, 0, 1);

  v21 = sub_274B26258();
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    OUTLINED_FUNCTION_20();
    v23();
    sub_274AD81C4(v23, v24);
  }
}

void sub_274B272D8()
{
  v0 = sub_274B2629C();
  [v0 resignFirstResponder];
}

id sub_274B2735C()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_18_1();
  v4 = type metadata accessor for UIKitTextEditor.Coordinator(0, v2, *(v1 + 88), v3);
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

double sub_274B273C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_28098AFE8;
  type metadata accessor for UIKitTextEditor(0, *((*MEMORY[0x277D85000] & *a1) + 0x50), *((*MEMORY[0x277D85000] & *a1) + 0x58), a4);
  OUTLINED_FUNCTION_0_2();
  (*(v6 + 8))(&a1[v5]);

  sub_274AD81C4(*&a1[qword_28098B018], *&a1[qword_28098B018 + 8]);
  sub_274AD81C4(*&a1[qword_28098B020], *&a1[qword_28098B020 + 8]);
  MEMORY[0x277C665A0](&a1[qword_28098B028]);

  return result;
}

id sub_274B27500@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_274B25E5C(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_274B2752C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_274B275A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_274B27624(uint64_t a1)
{
  swift_getWitnessTable();
  sub_274BF3A24();
  __break(1u);
}