unint64_t sub_242C9D8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AA0;
  if (!qword_27ECF0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AA0);
  }

  return result;
}

uint64_t sub_242C9D928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_242C9D978(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t sub_242C9D9F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C9DA3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242C9DADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AA8;
  if (!qword_27ECF0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AA8);
  }

  return result;
}

unint64_t sub_242C9DB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AB0;
  if (!qword_27ECF0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AB0);
  }

  return result;
}

unint64_t sub_242C9DB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AB8;
  if (!qword_27ECF0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AB8);
  }

  return result;
}

unint64_t sub_242C9DBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AC0;
  if (!qword_27ECF0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AC0);
  }

  return result;
}

unint64_t sub_242C9DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AC8;
  if (!qword_27ECF0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AC8);
  }

  return result;
}

unint64_t sub_242C9DC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AD0;
  if (!qword_27ECF0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AD0);
  }

  return result;
}

unint64_t sub_242C9DCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AD8;
  if (!qword_27ECF0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AD8);
  }

  return result;
}

unint64_t sub_242C9DD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AE0;
  if (!qword_27ECF0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AE0);
  }

  return result;
}

unint64_t sub_242C9DD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AE8;
  if (!qword_27ECF0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AE8);
  }

  return result;
}

unint64_t sub_242C9DDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AF0;
  if (!qword_27ECF0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AF0);
  }

  return result;
}

unint64_t sub_242C9DE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0AF8;
  if (!qword_27ECF0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AF8);
  }

  return result;
}

unint64_t sub_242C9DEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B00;
  if (!qword_27ECF0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B00);
  }

  return result;
}

uint64_t sub_242C9DEF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F596D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F596F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59710 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_242C9E060(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

BOOL sub_242C9E0F4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_242C9E124@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_242C9E150@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t View.layoutOutput(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_242F045E0();
}

void *sub_242C9E2A0@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_242C9E9E4(a2, a3, a4);
  result = sub_242F04010();
  *a1 = v6;
  return result;
}

uint64_t LayoutOutput.isVisible(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4 - 8];
  v6 = type metadata accessor for Instrument(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *v1;
  sub_242C9E5F0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_242C9E6C8(v5, v9);
    if ((v10 & 4) == 0)
    {
      goto LABEL_4;
    }

    memcpy(v22, &v9[*(v6 + 20)], sizeof(v22));
    v12 = sub_242C9E788(v22);
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        if (*(sub_242C556B4(v22) + 552))
        {
          goto LABEL_9;
        }
      }

      else if (v12 == 2)
      {
        v15 = sub_242C556B4(v22);
        if (!sub_242C9E7A4(v15 + 8))
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      if ((v12 - 3) < 3)
      {
        sub_242C556B4(v22);
LABEL_9:
        v11 = 1;
        goto LABEL_33;
      }

      if (v12 == 7)
      {
        v18 = sub_242C556B4(v22);
        if (!get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v18))
        {
          goto LABEL_9;
        }
      }
    }

LABEL_4:
    if ((v10 & 2) == 0)
    {
      v11 = 0;
LABEL_33:
      sub_242C9E72C(v9);
      return v11;
    }

    memcpy(v22, &v9[*(v6 + 20)], sizeof(v22));
    v13 = sub_242C9E788(v22);
    v14 = 0;
    if (v13 > 3)
    {
      if (v13 == 4 || v13 == 5)
      {
LABEL_23:
        sub_242C556B4(v22);
        v14 = 1;
        goto LABEL_32;
      }

      if (v13 != 7)
      {
LABEL_32:
        v11 = v14 ^ 1u;
        goto LABEL_33;
      }

      v16 = sub_242C556B4(v22);
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v16);
    }

    else
    {
      if (v13 == 1)
      {
        v14 = *(sub_242C556B4(v22) + 552);
        goto LABEL_32;
      }

      if (v13 != 2)
      {
        if (v13 != 3)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }

      v19 = sub_242C556B4(v22);
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = sub_242C9E7A4(v19 + 8);
    }

    v14 = enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 == 0;
    goto LABEL_32;
  }

  sub_242C9E660(v5);
  return 0;
}

uint64_t sub_242C9E5F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C9E660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C9E6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Instrument(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C9E72C(uint64_t a1)
{
  v2 = type metadata accessor for Instrument(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242C9E788(uint64_t a1)
{
  v1 = *(a1 + 552);
  if (v1 >= 0)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_242C9E7A4(uint64_t a1)
{
  v1 = *(a1 + 200);
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

unint64_t sub_242C9E7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B10;
  if (!qword_27ECF0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B10);
  }

  return result;
}

unint64_t sub_242C9E824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B18;
  if (!qword_27ECF0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B18);
  }

  return result;
}

unint64_t sub_242C9E87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B20;
  if (!qword_27ECF0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B20);
  }

  return result;
}

unint64_t sub_242C9E8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B28;
  if (!qword_27ECF0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetDestination(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AssetDestination(uint64_t result, int a2, int a3)
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

unint64_t sub_242C9E980()
{
  result = qword_27ECF0B38;
  if (!qword_27ECF0B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0B30, &unk_242F0CC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B38);
  }

  return result;
}

unint64_t sub_242C9E9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B40;
  if (!qword_27ECF0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B40);
  }

  return result;
}

CarPlayAssetUI::OutsideTemperatureDataIdentifiers __swiftcall OutsideTemperatureDataIdentifiers.init(temperatureDataIdentifier:unitDataIdentifier:icyConditionsDataIdentifier:)(CarPlayAssetUI::InstrumentDataIdentifier temperatureDataIdentifier, CarPlayAssetUI::InstrumentDataIdentifier unitDataIdentifier, CarPlayAssetUI::InstrumentDataIdentifier icyConditionsDataIdentifier)
{
  v4 = *unitDataIdentifier;
  v5 = *icyConditionsDataIdentifier;
  *v3 = *temperatureDataIdentifier;
  v3[1] = v4;
  v3[2] = v5;
  result.temperatureDataIdentifier = temperatureDataIdentifier;
  return result;
}

unint64_t sub_242C9EB04()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_242C9EB5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C9F74C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C9EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9F468(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242C9EBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9F468(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t OutsideTemperatureDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B48, &qword_242F0CC70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v19 = v1[2];
  v20 = v9;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9F468(v10, v11, v12);
  v13 = sub_242F064C0();
  v26 = v8;
  v25 = 0;
  sub_242C8AC28(v13, v14, v15);
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v16 = v19;
  v24 = v20;
  v23 = 1;
  sub_242F05F20();
  v22 = v16;
  v21 = 2;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t OutsideTemperatureDataIdentifiers.hash(into:)(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t OutsideTemperatureDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t OutsideTemperatureDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B58, &qword_242F0CC78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9F468(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v24 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v25;
    v22 = 1;
    sub_242F05E00();
    v19 = v23;
    v20 = 2;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v17 = v21;
    *a2 = v15;
    a2[1] = v19;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242C9F1E0(uint64_t a1)
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI33OutsideTemperatureDataIdentifiersV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = InstrumentDataIdentifier.rawValue.getter();
  v3 = v2;
  if (v1 == InstrumentDataIdentifier.rawValue.getter() && v3 == v4)
  {
  }

  else
  {
    v5 = sub_242F06110();

    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v6 = InstrumentDataIdentifier.rawValue.getter();
  v8 = v7;
  if (v6 == InstrumentDataIdentifier.rawValue.getter() && v8 == v9)
  {

    goto LABEL_9;
  }

  v10 = sub_242F06110();

  if ((v10 & 1) == 0)
  {
LABEL_12:
    v15 = 0;
    return v15 & 1;
  }

LABEL_9:
  v11 = InstrumentDataIdentifier.rawValue.getter();
  v13 = v12;
  if (v11 == InstrumentDataIdentifier.rawValue.getter() && v13 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_242F06110();
  }

  return v15 & 1;
}

unint64_t sub_242C9F468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B50;
  if (!qword_27ECF0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B50);
  }

  return result;
}

unint64_t sub_242C9F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B60;
  if (!qword_27ECF0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B60);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OutsideTemperatureDataIdentifiers(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB)
  {
    if ((a2 + 33554261) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16777045;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16777045;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 0x56;
  v6 = v4 - 86;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for OutsideTemperatureDataIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554261) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xAA)
  {
    v3 = 0;
  }

  if (a2 > 0xAA)
  {
    *result = a2 - 171;
    *(result + 2) = (a2 - 171) >> 16;
    if (v3)
    {
      v4 = ((a2 - 171) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 85;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_242C9F648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B68;
  if (!qword_27ECF0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B68);
  }

  return result;
}

unint64_t sub_242C9F6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B70;
  if (!qword_27ECF0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B70);
  }

  return result;
}

unint64_t sub_242C9F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0B78;
  if (!qword_27ECF0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B78);
  }

  return result;
}

uint64_t sub_242C9F74C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x8000000242F59730 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59750 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F59770 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SingleSelectMenuModel.Entry.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SingleSelectMenuModel.Entry.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SingleSelectMenuModel.Entry.symbolName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SingleSelectMenuModel.Entry.symbolName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void *SingleSelectMenuModel.Entry.init(id:title:symbolName:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = *result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static SingleSelectMenuModel.Entry.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_242F06110();
}

uint64_t sub_242C9FA50(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_242F06110();
}

uint64_t SingleSelectMenuModel.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SingleSelectMenuModel.entries.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void SingleSelectMenuModel.selectedEntryID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t SingleSelectMenuModel.selectedEntryID.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_242C9FBDC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242CA003C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_242C5573C(v3, v4);
}

uint64_t sub_242C9FC5C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242CA0014;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  sub_242C5573C(v3, v4);
  result = sub_242C655DC(v7, v8);
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  return result;
}

uint64_t SingleSelectMenuModel.selectionHandler.getter()
{
  v1 = *(v0 + 40);
  sub_242C5573C(v1, *(v0 + 48));
  return v1;
}

uint64_t SingleSelectMenuModel.selectionHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_242C655DC(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void *SingleSelectMenuModel.init(id:entries:selectedEntryID:isUserSelectionEnabled:selectionHandler:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = result[1];
  v8 = *a3;
  v9 = *(a3 + 8);
  *a7 = *result;
  *(a7 + 8) = v7;
  *(a7 + 16) = a2;
  *(a7 + 24) = v8;
  *(a7 + 32) = v9;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 33) = a4;
  return result;
}

Swift::Double_optional __swiftcall SingleSelectMenuModel.doubleValue()()
{
  v0 = 0;
  result.is_nil = v0;
  return result;
}

uint64_t _s14CarPlayAssetUI21SingleSelectMenuModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_242F06110() & 1) == 0 || (sub_242C72C98(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return v5 ^ v9 ^ 1u;
}

uint64_t sub_242C9FEE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI11TaggedValueVyAA21SingleSelectMenuModelV5EntryVSiGIegn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242C9FF74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C9FFBC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_242CA00A0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_242CA321C(v2, &v14 - v9, &qword_27ECF0BA0, &qword_242F0D080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_242F03BB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_242CA02A0(uint64_t a1)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 36);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_242F05710();
    v9 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_242CA03F4(uint64_t a1)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_242F05710();
    v9 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_242CA0548@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_242F04000();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA8, &qword_242F30940);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_242CA321C(v2 + *(a1 + 44), &v14 - v10, &qword_27ECF0BA8, &qword_242F30940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242CA31AC(v11, a2);
  }

  sub_242F05710();
  v13 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t ElevatedButtonStyle.init(shape:isSelected:solidBackground:wantsBackgroundMaterialPlatter:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for ElevatedButtonStyle(0, a5, a6, v14);
  v16 = &a7[v15[9]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &a7[v15[10]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v15[11];
  *&a7[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA8, &qword_242F30940);
  swift_storeEnumTagMultiPayload();
  result = (*(*(a5 - 8) + 32))(&a7[v15[12]], a1, a5);
  a7[v15[13]] = a2;
  a7[v15[14]] = a3;
  a7[v15[15]] = a4;
  return result;
}

uint64_t ElevatedButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v93 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0, &qword_242F0D120);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB8, &qword_242F0D128);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = a2;
  v107 = MEMORY[0x277CDF6A8];
  v108 = v13;
  v109 = MEMORY[0x277CDF6A0];
  v110 = v12;
  v15 = v12;
  v92 = sub_242F04290();
  v70 = sub_242F03E00();
  v76 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v71 = &v68 - v16;
  v17 = v13;
  v18 = v15;
  v75 = sub_242F041F0();
  v74 = sub_242F03E00();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BC0, &unk_242F0D130);
  v20 = sub_242F03E00();
  v86 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v73 = &v68 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BC8, &unk_242F57790);
  v87 = v20;
  v22 = sub_242F03E00();
  v89 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v88 = &v68 - v23;
  v69 = sub_242F04A30();
  v107 = v17;
  v108 = v69;
  v95 = v17;
  v109 = v18;
  v110 = MEMORY[0x277CE1320];
  v24 = v18;
  sub_242F03B90();
  v25 = sub_242F05860();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v83 = v25;
  v79 = v26;
  v27 = sub_242F041A0();
  v90 = v22;
  v81 = v27;
  v85 = sub_242F03E00();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v80 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v82 = &v68 - v30;
  sub_242F04260();
  v31 = sub_242CA138C(a1, v14);
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BD0, &qword_242F0D140) + 36)] = v31;
  v32 = &v11[*(v9 + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BD8, &qword_242F0D148);
  sub_242CA16B0(v14, (v32 + *(v33 + 28)));
  *v32 = swift_getKeyPath();
  v68 = v14;
  v107 = sub_242CA196C(a1, v14);
  v34 = sub_242CA2784();
  v67 = v18;
  v35 = v71;
  sub_242F04590();
  v36 = v69;

  sub_242C6D138(v11, &qword_27ECF0BB8, &qword_242F0D128);
  v37 = swift_getWitnessTable();
  v104 = v34;
  v105 = v37;
  v38 = v70;
  v39 = swift_getWitnessTable();
  v40 = v78;
  v41 = v72;
  v92 = v24;
  sub_242F04600();
  (*(v76 + 8))(v35, v38);
  v107 = sub_242F04780();
  v42 = swift_getWitnessTable();
  v102 = v39;
  v103 = v42;
  v43 = v74;
  v44 = swift_getWitnessTable();
  v45 = v73;
  sub_242F04660();

  (*(v77 + 8))(v41, v43);
  swift_getKeyPath();
  sub_242CA0548(v68, v40);
  v46 = *(v36 - 8);
  v47 = *(v46 + 48);
  if (v47(v40, 1, v36) == 1)
  {
    v48 = v91;
    sub_242F04A00();
    if (v47(v40, 1, v36) != 1)
    {
      sub_242C6D138(v40, &qword_27ECF0BB0, &qword_242F0D120);
    }
  }

  else
  {
    v48 = v91;
    (*(v46 + 32))(v91, v40, v36);
  }

  (*(v46 + 56))(v48, 0, 1, v36);
  v49 = MEMORY[0x277CE0868];
  v50 = sub_242C7E000(&qword_27ECF0C10, &qword_27ECF0BC0, &unk_242F0D130, MEMORY[0x277CE0868]);
  v100 = v44;
  v101 = v50;
  v51 = v87;
  v52 = swift_getWitnessTable();
  v53 = v88;
  sub_242F045E0();

  sub_242C6D138(v48, &qword_27ECF0BB0, &qword_242F0D120);
  v54 = (*(v86 + 8))(v45, v51);
  MEMORY[0x28223BE20](v54);
  v55 = v92;
  *(&v68 - 4) = v95;
  *(&v68 - 3) = v55;
  v67 = v94;
  sub_242F04A70();
  v56 = sub_242C7E000(qword_27ECF0C18, &qword_27ECF0BC8, &unk_242F57790, v49);
  v98 = v52;
  v99 = v56;
  v57 = v90;
  v58 = swift_getWitnessTable();
  v59 = v80;
  sub_242F04580();
  (*(v89 + 8))(v53, v57);
  v60 = swift_getWitnessTable();
  v96 = v58;
  v97 = v60;
  v61 = v85;
  swift_getWitnessTable();
  v62 = v84;
  v63 = *(v84 + 16);
  v64 = v82;
  v63(v82, v59, v61);
  v65 = *(v62 + 8);
  v65(v59, v61);
  v63(v93, v64, v61);
  return (v65)(v64, v61);
}

uint64_t sub_242CA138C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0CC8, &unk_242F0D1F0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = sub_242F03DD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  sub_242F03DC0();
  if (sub_242CA03F4(a2))
  {
    if (sub_242F04270())
    {
      if (*(v2 + *(a2 + 56)) == 1)
      {
        v14 = [objc_opt_self() _carSystemFocusColor];
        sub_242F047D0();
        v15 = sub_242F04770();

        v18[1] = v15;
      }

      else
      {
        (*(v8 + 16))(v6, v13, v7);
        *&v6[*(v4 + 36)] = 2;
        sub_242C7E000(&qword_27ECF0CD0, &qword_27ECF0CC8, &unk_242F0D1F0, MEMORY[0x277CE0848]);
      }
    }

    else
    {
      (*(v8 + 16))(v10, v13, v7);
    }
  }

  else
  {
    (*(v8 + 16))(v6, v13, v7);
    *&v6[*(v4 + 36)] = 3;
    sub_242C7E000(&qword_27ECF0CD0, &qword_27ECF0CC8, &unk_242F0D1F0, MEMORY[0x277CE0848]);
  }

  v16 = sub_242F03C80();
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_242CA16B0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_242F03BB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  if (sub_242CA02A0(a1))
  {
    sub_242CA00A0(v14);
    v15 = *MEMORY[0x277CDF3D0];
    v16 = *(v6 + 104);
    v16(v11, v15, v5);
    v17 = sub_242F03BA0();
    v18 = *(v6 + 8);
    v18(v11, v5);
    v18(v14, v5);
    if (v17)
    {
      v19 = *MEMORY[0x277CDF3C0];
      v20 = a2;
    }

    else
    {
      v20 = a2;
      v19 = v15;
    }

    return (v16)(v20, v19, v5);
  }

  else if (*(v2 + *(a1 + 52)) == 1 && (sub_242F04270() & 1) != 0 && (*(v2 + *(a1 + 56)) & 1) == 0)
  {
    sub_242CA00A0(v8);
    v22 = *MEMORY[0x277CDF3D0];
    v23 = *(v6 + 104);
    v23(v11, v22, v5);
    v24 = sub_242F03BA0();
    v25 = *(v6 + 8);
    v25(v11, v5);
    v25(v8, v5);
    if (v24)
    {
      v26 = *MEMORY[0x277CDF3C0];
      v27 = a2;
    }

    else
    {
      v27 = a2;
      v26 = v22;
    }

    return (v23)(v27, v26, v5);
  }

  else
  {

    return sub_242CA00A0(a2);
  }
}

uint64_t sub_242CA196C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_242F03BB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  if ((sub_242CA03F4(a2) & 1) == 0)
  {
    if (*(v2 + *(a2 + 56)) == 1)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    goto LABEL_25;
  }

  if (*(v2 + *(a2 + 52)) != 1)
  {
    if (sub_242CA02A0(a2))
    {
      if (*(v2 + *(a2 + 56)) == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

LABEL_24:
    v14 = 1;
LABEL_25:
    v26 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0CB8, &qword_242F0D1E8);
    sub_242C7E000(&qword_27ECF0CC0, &qword_27ECF0CB8, &qword_242F0D1E8, MEMORY[0x277CE0848]);
    return sub_242F03C80();
  }

  if ((sub_242F04270() & 1) == 0)
  {
    if (sub_242CA02A0(a2))
    {
      if (*(v2 + *(a2 + 56)) == 1)
      {
LABEL_15:
        v15 = [objc_opt_self() _carSystemFocusColor];
        v16 = sub_242F047D0();
LABEL_21:
        v26 = v16;
        return sub_242F03C80();
      }

LABEL_16:
      sub_242CA00A0(v11);
      (*(v6 + 104))(v8, *MEMORY[0x277CDF3C0], v5);
      v17 = sub_242F03BA0();
      v18 = *(v6 + 8);
      v18(v8, v5);
      v18(v11, v5);
      if ((v17 & 1) == 0)
      {
        sub_242F04730();
LABEL_27:
        v23 = sub_242F04770();

        v26 = v23;
        return sub_242F03C80();
      }

LABEL_26:
      sub_242F04750();
      goto LABEL_27;
    }

    sub_242CA00A0(v11);
    (*(v6 + 104))(v8, *MEMORY[0x277CDF3D0], v5);
    v21 = sub_242F03BA0();
    v22 = *(v6 + 8);
    v22(v8, v5);
    v22(v11, v5);
    if (v21)
    {
LABEL_20:
      v16 = sub_242F04750();
      goto LABEL_21;
    }

    if (*(v3 + *(a2 + 56)) != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (*(v2 + *(a2 + 56)) == 1)
  {
    sub_242CA00A0(v11);
    (*(v6 + 104))(v8, *MEMORY[0x277CDF3C0], v5);
    v12 = sub_242F03BA0();
    v13 = *(v6 + 8);
    v13(v8, v5);
    v13(v11, v5);
    if (v12)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  sub_242F04750();
  sub_242CA00A0(v11);
  (*(v6 + 104))(v8, *MEMORY[0x277CDF3C0], v5);
  sub_242F03BA0();
  v19 = *(v6 + 8);
  v19(v8, v5);
  v19(v11, v5);
  v20 = sub_242F04770();

  v26 = v20;
  return sub_242F03C80();
}

uint64_t sub_242CA1E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0, &qword_242F0D120);
  MEMORY[0x28223BE20](v2 - 8);
  sub_242CA321C(a1, &v5 - v3, &qword_27ECF0BB0, &qword_242F0D120);
  return sub_242F03F00();
}

uint64_t sub_242CA1ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a4;
  v7 = sub_242F04A30();
  v45 = a2;
  v46 = v7;
  v47 = a3;
  v48 = MEMORY[0x277CE1320];
  v8 = sub_242F03B90();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36[0] = v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0, &qword_242F0D120);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v36 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_242F05860();
  v40 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v41 = v36 - v23;
  v37 = a2;
  v38 = a3;
  v25 = type metadata accessor for ElevatedButtonStyle(0, a2, a3, v24);
  v36[1] = a1;
  sub_242CA23C8(v25, v14);
  if ((*(v15 + 48))(v14, 1, v7) == 1)
  {
    sub_242C6D138(v14, &qword_27ECF0BB0, &qword_242F0D120);
    (*(v42 + 56))(v21, 1, 1, v8);
    swift_getWitnessTable();
  }

  else
  {
    (*(v15 + 32))(v18, v14, v7);
    v26 = v39;
    sub_242CA2484(v18, 256, v37, v7, v38, MEMORY[0x277CE1320]);
    (*(v15 + 8))(v18, v7);
    swift_getWitnessTable();
    v27 = v42;
    v28 = *(v42 + 16);
    v29 = v36[0];
    v28(v36[0], v26, v8);
    v30 = *(v27 + 8);
    v30(v26, v8);
    v28(v26, v29, v8);
    v30(v29, v8);
    (*(v27 + 32))(v21, v26, v8);
    (*(v27 + 56))(v21, 0, 1, v8);
  }

  v31 = v40;
  v32 = v41;
  v33 = *(v40 + 16);
  v33(v41, v21, v19);
  v34 = *(v31 + 8);
  v34(v21, v19);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v33(v43, v32, v19);
  return (v34)(v32, v19);
}

uint64_t sub_242CA23C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 60)) != 1)
  {
    goto LABEL_4;
  }

  if (sub_242CA02A0(a1))
  {
    if (*(v2 + *(a1 + 56)))
    {
LABEL_4:
      v5 = 1;
      goto LABEL_8;
    }

    sub_242F04A10();
  }

  else
  {
    sub_242F04A20();
  }

  v5 = 0;
LABEL_8:
  v6 = sub_242F04A30();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_242CA2484(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v12);
  (*(v8 + 16))(v10, a1, a4);
  return sub_242F03B80();
}

uint64_t sub_242CA2634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03FC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242CA2664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03FA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242CA26BC(uint64_t a1)
{
  v2 = sub_242F03BB0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_242F03EC0();
}

unint64_t sub_242CA2784()
{
  result = qword_27ECF0BE0;
  if (!qword_27ECF0BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BB8, &qword_242F0D128);
    sub_242CA283C();
    sub_242C7E000(&qword_27ECF0C08, &qword_27ECF0BD8, &qword_242F0D148, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0BE0);
  }

  return result;
}

unint64_t sub_242CA283C()
{
  result = qword_27ECF0BE8;
  if (!qword_27ECF0BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BD0, &qword_242F0D140);
    sub_242CA28F4();
    sub_242C7E000(&qword_27ECF0BF8, &qword_27ECF0C00, &qword_242F0D180, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0BE8);
  }

  return result;
}

unint64_t sub_242CA28F4()
{
  result = qword_27ECF0BF0;
  if (!qword_27ECF0BF0)
  {
    sub_242F04250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0BF0);
  }

  return result;
}

void sub_242CA29A4(uint64_t a1)
{
  sub_242CA3094(319);
  if (v1 <= 0x3F)
  {
    sub_242CA30EC();
    if (v2 <= 0x3F)
    {
      sub_242CA313C(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_242CA2A68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_242F03BB0() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_242F04A30() - 8);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (*(v8 + 84))
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v8 + 80) & 0xF8 | 7;
  v15 = v13 + v11 + 1;
  if (a2 <= v12)
  {
    goto LABEL_36;
  }

  v16 = *(v9 + 64) + ((v15 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v14 + 33) & ~v14)) & ~v11) + 3;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v20 < 2)
    {
LABEL_36:
      if (v10 > 0xFE)
      {
        v25 = *(v9 + 48);

        return v25((v15 + ((((a1 + v7 + 24) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14)) & ~v11);
      }

      else
      {
        v24 = *(a1 + v7);
        if (v24 >= 2)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_36;
  }

LABEL_23:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_242CA2D04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_242F03BB0() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_242F04A30() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 84);
  v13 = *(v10 + 64);
  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  if (v15 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = v11 & 0xF8 | 7;
  if (v12)
  {
    v19 = v13;
  }

  else
  {
    v19 = v13 + 1;
  }

  if (v19 <= 8)
  {
    v19 = 8;
  }

  v20 = v19 + v16 + 1;
  v21 = *(v14 + 64) + ((v20 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v18 + 33) & ~v18)) & ~v16) + 3;
  if (a3 <= v17)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v17 < a2)
  {
    v23 = ~v17 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_63:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v21] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v22)
  {
    goto LABEL_38;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v28 = v9 + 1;
  if (v15 > 0xFE)
  {
    v29 = *(v14 + 56);

    v29((v20 + (((&a1[v28 + 23] & 0xFFFFFFFFFFFFFFF8) + v18 + 9) & ~v18)) & ~v16, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v28 <= 3)
    {
      v30 = ~(-1 << (8 * v28));
    }

    else
    {
      v30 = -1;
    }

    if (v9 != -1)
    {
      v31 = v30 & (a2 - 255);
      if (v28 <= 3)
      {
        v32 = v9 + 1;
      }

      else
      {
        v32 = 4;
      }

      bzero(a1, v28);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else
        {
          *a1 = v31;
        }
      }

      else if (v32 == 1)
      {
        *a1 = v31;
      }

      else
      {
        *a1 = v31;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_242CA3094(uint64_t a1)
{
  if (!qword_27ECF0CA0)
  {
    sub_242F03BB0();
    v1 = sub_242F03BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF0CA0);
    }
  }
}

void sub_242CA30EC()
{
  if (!qword_27ECF0CA8)
  {
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF0CA8);
    }
  }
}

void sub_242CA313C(uint64_t a1)
{
  if (!qword_27ECF0CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BB0, &qword_242F0D120);
    v1 = sub_242F03BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF0CB0);
    }
  }
}

uint64_t sub_242CA31A0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_242CA31AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0, &qword_242F0D120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242CA321C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t VisibilityConfiguration.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {

    v5 = v4 - 1;
    v6 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 136)
    {
      v8 = *&v2[i + 96];
      v42 = *&v2[i + 112];
      v43 = *&v2[i + 128];
      v9 = *&v2[i + 48];
      *&v37[16] = *&v2[i + 32];
      v38 = v9;
      v10 = *&v2[i + 64];
      v40 = *&v2[i + 80];
      v41 = v8;
      v39 = v10;
      v11 = *&v2[i + 16];
      v36 = *&v2[i];
      *v37 = v11;
      if (sub_242CA35A4(&v36) == 4)
      {
        v12 = sub_242C55EDC(&v36);
        v13 = *v12;
        v14 = *(v12 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_242C831C0(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = sub_242C831C0((v15 > 1), v16 + 1, 1, v6);
        }

        *(v6 + 2) = v16 + 1;
        v17 = &v6[8 * v16];
        v17[32] = v13;
        *(v17 + 9) = v14;
      }

      if (!v5)
      {
        break;
      }

      --v5;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v18 = *(v6 + 2);

  if (!v18)
  {
    if (qword_27ECEEF60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = byte_27ECF1000;
    v21 = dword_27ECF1004;
    if (qword_27ECEEED8 != -1)
    {
      swift_once();
    }

    v23 = DWORD1(xmmword_27ECF0E90);
    v22 = xmmword_27ECF0E90;
    v24 = *(&xmmword_27ECF0E90 + 1);
    v26 = xmmword_27ECF0EA0;
    v25 = unk_27ECF0EB0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_242C830A4(0, *(v2 + 2) + 1, 1, v2);
    }

    v28 = *(v2 + 2);
    v27 = *(v2 + 3);
    if (v28 >= v27 >> 1)
    {
      v2 = sub_242C830A4((v27 > 1), v28 + 1, 1, v2);
    }

    LOBYTE(v36) = v20;
    *(&v36 + 4) = __PAIR64__(v22, v21);
    HIDWORD(v36) = v23;
    *v37 = v24;
    *&v37[8] = v26;
    *&v37[24] = v25;
    *&v38 = __PAIR64__(v23, v22);
    *(&v38 + 1) = v24;
    v39 = v26;
    *&v40 = v25;
    result = sub_242CB5A7C(&v36);
    *(v2 + 2) = v28 + 1;
    v29 = &v2[136 * v28];
    *(v29 + 2) = v36;
    v30 = *v37;
    v31 = *&v37[16];
    v32 = v39;
    *(v29 + 5) = v38;
    *(v29 + 6) = v32;
    *(v29 + 3) = v30;
    *(v29 + 4) = v31;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    *(v29 + 20) = v43;
    *(v29 + 8) = v34;
    *(v29 + 9) = v35;
    *(v29 + 7) = v33;
  }

  *a2 = v2;
  return result;
}

CarPlayAssetUI::VisibilityConfiguration __swiftcall VisibilityConfiguration.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8, &qword_242F0D2C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_242F09510;
  if (qword_27ECEEF60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = byte_27ECF1000;
  v4 = dword_27ECF1004;
  if (qword_27ECEEED8 != -1)
  {
    swift_once();
  }

  v11[0] = v3;
  *&v11[4] = v4;
  *&v11[8] = xmmword_27ECF0E90;
  *&v11[24] = xmmword_27ECF0EA0;
  *&v11[40] = unk_27ECF0EB0;
  v12 = xmmword_27ECF0E90;
  v13 = xmmword_27ECF0EA0;
  *&v14 = unk_27ECF0EB0;
  sub_242CB5A7C(v11);
  v5 = v16;
  *(v2 + 128) = v15;
  *(v2 + 144) = v5;
  *(v2 + 160) = v17;
  v6 = v12;
  *(v2 + 64) = *&v11[32];
  *(v2 + 80) = v6;
  v7 = v14;
  *(v2 + 96) = v13;
  *(v2 + 112) = v7;
  v8 = *&v11[16];
  *(v2 + 32) = *v11;
  *(v2 + 48) = v8;
  result.rules._rawValue = VisibilityConfiguration.init(arrayLiteral:)(v2, &v10);
  *v1 = v10;
  return result;
}

uint64_t sub_242CA3768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CA37EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB5A98(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA3828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB5A98(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1020, &qword_242F0D2C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB5A98(v8, v9, v10);

  sub_242F064C0();
  v12[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1030, &qword_242F0D2D0);
  sub_242CB5B40(&qword_27ECF1038, sub_242CB5AEC, MEMORY[0x277D83948]);
  sub_242F05F20();

  return (*(v4 + 8))(v6, v3);
}

void VisibilityConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x245D279A0](*(*v1 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    VisibilityRule.hash(into:)(a1);
    v5 = v4 - 1;
    if (v5)
    {
      v6 = v3 + 168;
      do
      {
        VisibilityRule.hash(into:)(a1);
        v6 += 136;
        --v5;
      }

      while (v5);
    }
  }
}

uint64_t VisibilityConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    VisibilityRule.hash(into:)(v6);
    v3 = v2 - 1;
    if (v3)
    {
      v4 = v1 + 168;
      do
      {
        VisibilityRule.hash(into:)(v6);
        v4 += 136;
        --v3;
      }

      while (v3);
    }
  }

  return sub_242F063E0();
}

uint64_t VisibilityConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1048, &qword_242F0D2D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB5A98(v9, v10, v11);
  sub_242F06480();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1030, &qword_242F0D2D0);
    sub_242CB5B40(&qword_27ECF1050, sub_242CB5BB8, MEMORY[0x277D83978]);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CA3D90(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    VisibilityRule.hash(into:)(v7);
    v4 = v3 - 1;
    if (v4)
    {
      v5 = v2 + 168;
      do
      {
        VisibilityRule.hash(into:)(v7);
        v5 += 136;
        --v4;
      }

      while (v4);
    }
  }

  return sub_242F063E0();
}

double static VisibilityRule.Animation.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEED8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = xmmword_27ECF0E90;
  *(a1 + 8) = *(&xmmword_27ECF0E90 + 8);
  result = *(&xmmword_27ECF0EA0 + 1);
  *(a1 + 24) = *(&xmmword_27ECF0EA0 + 8);
  return result;
}

double sub_242CA3EEC()
{
  if (qword_27ECEEEE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = word_27ECF0EB8;
  v1 = HIBYTE(word_27ECF0EB8);
  if (qword_27ECEEEC8 != -1)
  {
    swift_once();
  }

  LOBYTE(v3) = v0;
  BYTE1(v3) = v1;
  *(&v3 + 1) = 0x3DEB851F3E99999ALL;
  v4 = xmmword_27ECF0E48;
  v5 = xmmword_27ECF0E58;
  *v6 = 1041865114;
  *&v6[8] = xmmword_27ECF0E48;
  *&v6[24] = xmmword_27ECF0E58;
  sub_242C55EDC(&v3);
  xmmword_27ECF0D38 = v7;
  unk_27ECF0D48 = v8;
  qword_27ECF0D58 = v9;
  xmmword_27ECF0CF8 = v5;
  unk_27ECF0D08 = *v6;
  xmmword_27ECF0D18 = *&v6[16];
  unk_27ECF0D28 = *&v6[32];
  result = *&v4;
  xmmword_27ECF0CD8 = v3;
  unk_27ECF0CE8 = v4;
  return result;
}

__n128 VisibilityRule.Animation.init(duration:delay:bezierCurve:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  *a2 = a3;
  *(a2 + 4) = a4;
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v5;
  return result;
}

__n128 static VisibilityRule.transmissionModeGearSet.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF0D48;
  *(a1 + 96) = xmmword_27ECF0D38;
  *(a1 + 112) = v1;
  *(a1 + 128) = qword_27ECF0D58;
  v2 = unk_27ECF0D08;
  *(a1 + 32) = xmmword_27ECF0CF8;
  *(a1 + 48) = v2;
  v3 = unk_27ECF0D28;
  *(a1 + 64) = xmmword_27ECF0D18;
  *(a1 + 80) = v3;
  result = unk_27ECF0CE8;
  *a1 = xmmword_27ECF0CD8;
  *(a1 + 16) = result;
  return result;
}

double sub_242CA40B4()
{
  if (qword_27ECEEEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = word_27ECF0EBA;
  v1 = HIBYTE(word_27ECF0EBA);
  if (qword_27ECEEEC8 != -1)
  {
    swift_once();
  }

  LOBYTE(v3) = v0;
  BYTE1(v3) = v1;
  *(&v3 + 1) = 0x3DEB851F3E99999ALL;
  v4 = xmmword_27ECF0E48;
  v5 = xmmword_27ECF0E58;
  *v6 = 1041865114;
  *&v6[8] = xmmword_27ECF0E48;
  *&v6[24] = xmmword_27ECF0E58;
  sub_242C55EDC(&v3);
  xmmword_27ECF0DC0 = v7;
  unk_27ECF0DD0 = v8;
  qword_27ECF0DE0 = v9;
  xmmword_27ECF0D80 = v5;
  unk_27ECF0D90 = *v6;
  xmmword_27ECF0DA0 = *&v6[16];
  unk_27ECF0DB0 = *&v6[32];
  result = *&v4;
  xmmword_27ECF0D60 = v3;
  *algn_27ECF0D70 = v4;
  return result;
}

__n128 static VisibilityRule.transmissionModeGearNotSet.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF0DD0;
  *(a1 + 96) = xmmword_27ECF0DC0;
  *(a1 + 112) = v1;
  *(a1 + 128) = qword_27ECF0DE0;
  v2 = unk_27ECF0D90;
  *(a1 + 32) = xmmword_27ECF0D80;
  *(a1 + 48) = v2;
  v3 = unk_27ECF0DB0;
  *(a1 + 64) = xmmword_27ECF0DA0;
  *(a1 + 80) = v3;
  result = *algn_27ECF0D70;
  *a1 = xmmword_27ECF0D60;
  *(a1 + 16) = result;
  return result;
}

double static VisibilityRule.Animation.none.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEED0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_27ECF0E68;
  *(a1 + 8) = xmmword_27ECF0E70;
  result = dbl_27ECF0E80[0];
  *(a1 + 24) = *dbl_27ECF0E80;
  return result;
}

__n128 static VisibilityRule.invalidData(dataIdentifier:showAnimation:hideAnimation:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v11) = *a1;
  *(&v11 + 1) = *a2;
  v5 = *(a2 + 24);
  v12 = *(a2 + 8);
  v13 = v5;
  *v14 = *a3;
  v6 = *(a3 + 24);
  *&v14[8] = *(a3 + 8);
  *&v14[24] = v6;
  sub_242CB5C0C(&v11);
  v7 = v16;
  *(a4 + 96) = v15;
  *(a4 + 112) = v7;
  *(a4 + 128) = v17;
  v8 = *v14;
  *(a4 + 32) = v13;
  *(a4 + 48) = v8;
  v9 = *&v14[32];
  *(a4 + 64) = *&v14[16];
  *(a4 + 80) = v9;
  result = v12;
  *a4 = v11;
  *(a4 + 16) = result;
  return result;
}

_BYTE *VisibilityRule.SecondarySpeedRule.init(dataIdentifier:enabled:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

__n128 sub_242CA43A8@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_27ECEEED8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v8[0] = 75;
  v8[1] = a1;
  *&v8[8] = xmmword_27ECF0E90;
  *&v8[24] = xmmword_27ECF0EA0;
  *&v8[40] = unk_27ECF0EB0;
  v9 = xmmword_27ECF0E90;
  v10 = xmmword_27ECF0EA0;
  *&v11 = unk_27ECF0EB0;
  sub_242CB5C2C(v8);
  v3 = v13;
  *(a2 + 96) = v12;
  *(a2 + 112) = v3;
  *(a2 + 128) = v14;
  v4 = v9;
  *(a2 + 32) = *&v8[32];
  *(a2 + 48) = v4;
  v5 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v5;
  result = *&v8[16];
  *a2 = *v8;
  *(a2 + 16) = result;
  return result;
}

__n128 static VisibilityRule.driveMode.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = byte_27ECF1008;
  v3 = dword_27ECF100C;
  if (qword_27ECEEEC8 != -1)
  {
    swift_once();
  }

  LOBYTE(v8) = v2;
  DWORD1(v8) = v3;
  *(&v8 + 1) = 1053609165;
  v9 = xmmword_27ECF0E48;
  v10 = xmmword_27ECF0E58;
  *v11 = 1053609165;
  *&v11[8] = xmmword_27ECF0E48;
  *&v11[24] = xmmword_27ECF0E58;
  sub_242CB5A7C(&v8);
  v4 = v13;
  *(a1 + 96) = v12;
  *(a1 + 112) = v4;
  *(a1 + 128) = v14;
  v5 = *v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  v6 = *&v11[32];
  *(a1 + 64) = *&v11[16];
  *(a1 + 80) = v6;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t static VisibilityRule.InvalidDataRule.== infix(_:_:)(uint64_t a1)
{
  v1 = InstrumentDataIdentifier.rawValue.getter();
  v3 = v2;
  if (v1 == InstrumentDataIdentifier.rawValue.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_242F06110();
  }

  return v6 & 1;
}

unint64_t sub_242CA46CC(char a1)
{
  result = 0x6D694C6465657073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6E696E69616D6572;
      break;
    case 4:
      result = 0x6F4D74756F79616CLL;
      break;
    case 5:
      result = 0x4464696C61766E69;
      break;
    case 6:
      result = 0x7261646E6F636573;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7974697669746361;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x69646E4965646973;
      break;
    case 12:
      result = 0x646F4D6576697264;
      break;
    case 13:
      result = 0x74736F6F62;
      break;
    case 14:
      result = 0x7453656772616863;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_242CA48B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB82F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA48F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB82F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB7FB0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA496C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB7FB0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA49A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB7EB4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA49E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB7EB4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4A28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CBD680(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CA4A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB7E60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB7E60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8058(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8058(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB81A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB81A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB84F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB84F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8598(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8598(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8250(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8250(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8640(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8640(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8448(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8448(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8100(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8100(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB86E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB86E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB83A0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB83A0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8790(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA4FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8790(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CA4FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8838(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CA502C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8838(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.encode(to:)(void *a1)
{
  v2 = v1;
  *&v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1060, &qword_242F0D2E0);
  v256 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  *&v281 = &v241 - v4;
  *&v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1068, &qword_242F0D2E8);
  v255 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  *&v279 = &v241 - v5;
  *&v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1070, &qword_242F0D2F0);
  v254 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  *&v277 = &v241 - v6;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1078, &qword_242F0D2F8);
  v253 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v275 = &v241 - v7;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1080, &qword_242F0D300);
  v252 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v273 = &v241 - v8;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1088, &qword_242F0D308);
  v251 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v271 = &v241 - v9;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1090, &qword_242F0D310);
  v250 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v269 = &v241 - v10;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1098, &qword_242F0D318);
  v249 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v267 = &v241 - v11;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10A0, &qword_242F0D320);
  v248 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v265 = &v241 - v12;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10A8, &qword_242F0D328);
  v247 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v263 = &v241 - v13;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10B0, &qword_242F0D330);
  v246 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v261 = &v241 - v14;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10B8, &qword_242F0D338);
  v245 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v259 = &v241 - v15;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10C0, &qword_242F0D340);
  v244 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v257 = &v241 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10C8, &qword_242F0D348);
  v243 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v241 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10D0, &qword_242F0D350);
  v242 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v241 - v21;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10D8, &qword_242F0D358);
  v283 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v24 = &v241 - v23;
  v25 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB7E60(v25, v26, v27);
  v286 = v24;
  sub_242F064C0();
  v28 = *(v2 + 112);
  v289[6] = *(v2 + 96);
  v289[7] = v28;
  v290 = *(v2 + 128);
  v29 = *(v2 + 48);
  v289[2] = *(v2 + 32);
  v289[3] = v29;
  v30 = *(v2 + 80);
  v289[4] = *(v2 + 64);
  v289[5] = v30;
  v31 = *(v2 + 16);
  v289[0] = *v2;
  v289[1] = v31;
  LODWORD(a1) = sub_242CA35A4(v289);
  v32 = sub_242C55EDC(v289);
  switch(a1)
  {
    case 1:
      v163 = *v32;
      v164 = *(v32 + 2);
      v165 = v32[1];
      v166 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v166;
      v167 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 1;
      sub_242CB8790(v32, v33, v34);
      v168 = v285;
      v169 = v286;
      v170 = sub_242F05E40();
      *v287 = v163;
      v287[2] = v164;
      v288 = 0;
      sub_242CB87E4(v170, v171, v172);
      v173 = v284;
      v174 = sub_242F05F20();
      if (v173)
      {
        (*(v243 + 8))(v19, v17);
        return (*(v283 + 8))(v169, v168);
      }

      else
      {
        *v287 = v165;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v174, v175, v176);
        sub_242F05F20();
        *v287 = v167;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
        (*(v243 + 8))(v19, v17);
        return (*(v283 + 8))(v286, v168);
      }

    case 2:
      v287[0] = 2;
      v119 = v32;
      sub_242CB86E8(v32, v33, v34);
      v120 = v257;
      v55 = v285;
      v56 = v286;
      v121 = sub_242F05E40();
      v122 = *v119;
      v123 = *(v119 + 1);
      v124 = *(v119 + 2);
      *&v287[47] = *(v119 + 47);
      *&v287[32] = v124;
      *&v287[16] = v123;
      *v287 = v122;
      v288 = 0;
      sub_242CB873C(v121, v125, v126);
      v127 = v258;
      v128 = v284;
      v129 = sub_242F05F20();
      if (!v128)
      {
        *v287 = v119[7];
        v132 = *(v119 + 5);
        *&v287[8] = *(v119 + 4);
        *&v287[24] = v132;
        v288 = 1;
        sub_242CB7F5C(v129, v130, v131);
        sub_242F05F20();
        *v287 = v119[12];
        *&v287[8] = *(v119 + 13);
        *&v287[24] = *(v119 + 15);
        v288 = 2;
        sub_242F05F20();
      }

      (*(v244 + 8))(v120, v127);
      goto LABEL_42;
    case 3:
      v133 = *v32;
      v134 = *(v32 + 1);
      v135 = v32[1];
      v136 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v136;
      v137 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 3;
      sub_242CB8640(v32, v33, v34);
      v54 = v259;
      v55 = v285;
      v56 = v286;
      v138 = sub_242F05E40();
      v287[0] = v133;
      v287[1] = v134;
      v288 = 0;
      sub_242CB8694(v138, v139, v140);
      v60 = v260;
      v141 = v284;
      v142 = sub_242F05F20();
      if (!v141)
      {
        *v287 = v135;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v142, v143, v144);
        sub_242F05F20();
        *v287 = v137;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      v65 = &v277;
      goto LABEL_41;
    case 4:
      v78 = *v32;
      v79 = *(v32 + 1);
      v80 = v32[1];
      v81 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v81;
      v82 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 4;
      sub_242CB8598(v32, v33, v34);
      v83 = v261;
      v84 = v285;
      v85 = v286;
      v86 = sub_242F05E40();
      v287[0] = v78;
      *&v287[4] = v79;
      v288 = 0;
      sub_242CB85EC(v86, v87, v88);
      v89 = v262;
      v90 = v284;
      v91 = sub_242F05F20();
      if (!v90)
      {
        *v287 = v80;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v91, v92, v93);
        sub_242F05F20();
        *v287 = v82;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      v94 = &v277 + 8;
      goto LABEL_34;
    case 5:
      v178 = *v32;
      v179 = v32[1];
      v180 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v180;
      v181 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 5;
      sub_242CB84F0(v32, v33, v34);
      v83 = v263;
      v84 = v285;
      v85 = v286;
      v182 = sub_242F05E40();
      v287[0] = v178;
      v288 = 0;
      sub_242CB8544(v182, v183, v184);
      v89 = v264;
      v185 = v284;
      v186 = sub_242F05F20();
      if (!v185)
      {
        *v287 = v179;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v186, v187, v188);
        sub_242F05F20();
        *v287 = v181;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      v94 = &v278;
LABEL_34:
      (*(*(v94 - 32) + 8))(v83, v89);
      return (*(v283 + 8))(v85, v84);
    case 6:
      v201 = *v32;
      v202 = *(v32 + 1);
      v203 = v32[1];
      v204 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v204;
      v205 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 6;
      sub_242CB8448(v32, v33, v34);
      v54 = v265;
      v55 = v285;
      v56 = v286;
      v206 = sub_242F05E40();
      v287[0] = v201;
      v287[1] = v202;
      v288 = 0;
      sub_242CB849C(v206, v207, v208);
      v60 = v266;
      v209 = v284;
      v210 = sub_242F05F20();
      if (!v209)
      {
        *v287 = v203;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v210, v211, v212);
        sub_242F05F20();
        *v287 = v205;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      v65 = (&v278 + 8);
      goto LABEL_41;
    case 7:
      v145 = *v32;
      v146 = *(v32 + 1);
      v147 = v32;
      v148 = *(v32 + 3);
      v287[0] = 7;
      sub_242CB83A0(v32, v33, v34);
      v149 = v267;
      v150 = v285;
      v151 = v286;
      v152 = sub_242F05E40();
      v287[0] = v145;
      *&v287[1] = v146;
      v287[3] = v148;
      v288 = 0;
      sub_242CB83F4(v152, v153, v154);
      v155 = v268;
      v156 = v284;
      v157 = sub_242F05F20();
      if (!v156)
      {
        v160 = *(v147 + 1);
        v161 = *(v147 + 2);
        *v287 = v147[1];
        *&v287[8] = v160;
        *&v287[24] = v161;
        v288 = 1;
        sub_242CB7F5C(v157, v158, v159);
        sub_242F05F20();
        *v287 = v147[6];
        *&v287[8] = *(v147 + 7);
        *&v287[24] = *(v147 + 9);
        v288 = 2;
        sub_242F05F20();
      }

      v162 = &v279;
      goto LABEL_46;
    case 8:
      v226 = *v32;
      v227 = v32[1];
      v228 = *(v32 + 16);
      v229 = v32[3];
      v230 = *(v32 + 2);
      v281 = *(v32 + 3);
      v282 = v230;
      v231 = v32[8];
      v279 = *(v32 + 11);
      v280 = *(v32 + 9);
      v287[0] = 8;
      sub_242CB82F8(v32, v33, v34);
      v232 = v269;
      v40 = v285;
      v41 = v286;
      v233 = sub_242F05E40();
      v287[0] = v226;
      *&v287[8] = v227;
      v287[16] = v228;
      v288 = 0;
      sub_242CB834C(v233, v234, v235);
      v236 = v270;
      v237 = v284;
      v238 = sub_242F05F20();
      if (!v237)
      {
        *v287 = v229;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v238, v239, v240);
        sub_242F05F20();
        *v287 = v231;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      (*(v250 + 8))(v232, v236);
      goto LABEL_50;
    case 9:
      v107 = *v32;
      v108 = *(v32 + 1);
      v109 = v32[1];
      v110 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v110;
      v111 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 9;
      sub_242CB8250(v32, v33, v34);
      v54 = v271;
      v55 = v285;
      v56 = v286;
      v112 = sub_242F05E40();
      v287[0] = v107;
      v287[1] = v108;
      v288 = 0;
      sub_242CB82A4(v112, v113, v114);
      v60 = v272;
      v115 = v284;
      v116 = sub_242F05F20();
      if (!v115)
      {
        *v287 = v109;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v116, v117, v118);
        sub_242F05F20();
        *v287 = v111;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      v65 = &v280;
      goto LABEL_41;
    case 10:
      v213 = *v32;
      v214 = *(v32 + 2);
      v215 = v32;
      v216 = *(v32 + 3);
      v287[0] = 10;
      sub_242CB81A8(v32, v33, v34);
      v149 = v273;
      v150 = v285;
      v151 = v286;
      v217 = sub_242F05E40();
      *v287 = v213;
      v287[2] = v214;
      v287[3] = v216;
      v288 = 0;
      sub_242CB81FC(v217, v218, v219);
      v155 = v274;
      v220 = v284;
      v221 = sub_242F05F20();
      if (!v220)
      {
        v224 = *(v215 + 1);
        v225 = *(v215 + 2);
        *v287 = v215[1];
        *&v287[8] = v224;
        *&v287[24] = v225;
        v288 = 1;
        sub_242CB7F5C(v221, v222, v223);
        sub_242F05F20();
        *v287 = v215[6];
        *&v287[8] = *(v215 + 7);
        *&v287[24] = *(v215 + 9);
        v288 = 2;
        sub_242F05F20();
      }

      v162 = &v280 + 8;
LABEL_46:
      (*(*(v162 - 32) + 8))(v149, v155);
      return (*(v283 + 8))(v151, v150);
    case 11:
      v66 = *v32;
      v67 = *(v32 + 2);
      v68 = v32[1];
      v69 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v69;
      v70 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 11;
      sub_242CB8100(v32, v33, v34);
      v54 = v275;
      v55 = v285;
      v56 = v286;
      v71 = sub_242F05E40();
      *v287 = v66;
      v287[2] = v67;
      v288 = 0;
      sub_242CB8154(v71, v72, v73);
      v60 = v276;
      v74 = v284;
      v75 = sub_242F05F20();
      if (!v74)
      {
        *v287 = v68;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v75, v76, v77);
        sub_242F05F20();
        *v287 = v70;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      v65 = &v281;
      goto LABEL_41;
    case 12:
      v95 = *v32;
      v96 = *(v32 + 1);
      v97 = v32[1];
      v98 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v98;
      v99 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 12;
      sub_242CB8058(v32, v33, v34);
      v54 = v277;
      v55 = v285;
      v56 = v286;
      v100 = sub_242F05E40();
      v287[0] = v95;
      v287[1] = v96;
      v288 = 0;
      sub_242CB80AC(v100, v101, v102);
      v60 = v278;
      v103 = v284;
      v104 = sub_242F05F20();
      if (!v103)
      {
        *v287 = v97;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v104, v105, v106);
        sub_242F05F20();
        *v287 = v99;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      v65 = (&v281 + 8);
      goto LABEL_41;
    case 13:
      v189 = *v32;
      v190 = *(v32 + 1);
      v191 = v32[1];
      v192 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v192;
      v193 = v32[6];
      v277 = *(v32 + 9);
      v278 = *(v32 + 7);
      v287[0] = 13;
      sub_242CB7FB0(v32, v33, v34);
      v54 = v279;
      v55 = v285;
      v56 = v286;
      v194 = sub_242F05E40();
      v287[0] = v189;
      v287[1] = v190;
      v288 = 0;
      sub_242CB8004(v194, v195, v196);
      v60 = v280;
      v197 = v284;
      v198 = sub_242F05F20();
      if (!v197)
      {
        *v287 = v191;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v198, v199, v200);
        sub_242F05F20();
        *v287 = v193;
        *&v287[24] = v277;
        *&v287[8] = v278;
        v288 = 2;
        sub_242F05F20();
      }

      v65 = &v282;
      goto LABEL_41;
    case 14:
      v49 = *v32;
      v50 = v32[1];
      v51 = v32[2];
      v279 = *(v32 + 5);
      v280 = *(v32 + 3);
      v52 = v32[7];
      v53 = *(v32 + 4);
      v277 = *(v32 + 5);
      v278 = v53;
      v287[0] = 14;
      sub_242CB7EB4(v32, v33, v34);
      v54 = v281;
      v55 = v285;
      v56 = v286;
      v57 = sub_242F05E40();
      v287[0] = v49;
      *&v287[8] = v50;
      v288 = 0;
      sub_242CB7F08(v57, v58, v59);
      v60 = v282;
      v61 = v284;
      v62 = sub_242F05F20();
      if (!v61)
      {
        *v287 = v51;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 1;
        sub_242CB7F5C(v62, v63, v64);
        sub_242F05F20();
        *v287 = v52;
        *&v287[24] = v277;
        *&v287[8] = v278;
        v288 = 2;
        sub_242F05F20();
      }

      v65 = (&v282 + 8);
LABEL_41:
      (*(*(v65 - 32) + 8))(v54, v60);
LABEL_42:
      result = (*(v283 + 8))(v56, v55);
      break;
    default:
      v35 = *v32;
      v36 = *(v32 + 1);
      v37 = v32[1];
      v38 = *(v32 + 1);
      v281 = *(v32 + 2);
      v282 = v38;
      v39 = v32[6];
      v279 = *(v32 + 9);
      v280 = *(v32 + 7);
      v287[0] = 0;
      sub_242CB8838(v32, v33, v34);
      v40 = v285;
      v41 = v286;
      v42 = sub_242F05E40();
      v287[0] = v35;
      v287[1] = v36;
      v288 = 0;
      sub_242CB888C(v42, v43, v44);
      v45 = v284;
      v46 = sub_242F05F20();
      if (!v45)
      {
        *v287 = v37;
        *&v287[24] = v281;
        *&v287[8] = v282;
        v288 = 1;
        sub_242CB7F5C(v46, v47, v48);
        sub_242F05F20();
        *v287 = v39;
        *&v287[24] = v279;
        *&v287[8] = v280;
        v288 = 2;
        sub_242F05F20();
      }

      (*(v242 + 8))(v22, v20);
LABEL_50:
      result = (*(v283 + 8))(v41, v40);
      break;
  }

  return result;
}

void VisibilityRule.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 112);
  v22[6] = *(v1 + 96);
  v22[7] = v2;
  v23 = *(v1 + 128);
  v3 = *(v1 + 48);
  v22[2] = *(v1 + 32);
  v22[3] = v3;
  v4 = *(v1 + 80);
  v22[4] = *(v1 + 64);
  v22[5] = v4;
  v5 = *(v1 + 16);
  v22[0] = *v1;
  v22[1] = v5;
  v6 = sub_242CA35A4(v22);
  v7 = sub_242C55EDC(v22);
  switch(v6)
  {
    case 1:
      v19 = *v7;
      MEMORY[0x245D279A0](1);
      MEMORY[0x245D279A0](v19 + 1);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      goto LABEL_28;
    case 2:
      v14 = *v7;
      v15 = *(v7 + 48);
      MEMORY[0x245D279A0](2);
      MEMORY[0x245D279A0](v14 + 1);
      sub_242F063B0();
      if (v15 != 1)
      {
        sub_242F063C0();
        sub_242F063C0();
        sub_242F04B30();
        sub_242F04B30();
      }

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      sub_242F063C0();
      goto LABEL_34;
    case 3:
      v8 = *v7;
      v9 = 3;
      goto LABEL_11;
    case 4:
      v12 = *v7;
      MEMORY[0x245D279A0](4);
      MEMORY[0x245D279A0](100 * v12);
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      sub_242F063C0();
      break;
    case 5:
      MEMORY[0x245D279A0](5);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      goto LABEL_25;
    case 6:
      v13 = 6;
      goto LABEL_23;
    case 7:
      v17 = *v7;
      MEMORY[0x245D279A0](7);
      if (v17)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      MEMORY[0x245D279A0](v18);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      sub_242F063C0();
LABEL_34:
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      goto LABEL_31;
    case 8:
      v21 = v7[1];
      MEMORY[0x245D279A0](8);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      MEMORY[0x245D279A0](v21);
      sub_242F063B0();
      goto LABEL_28;
    case 9:
      v13 = 9;
      goto LABEL_23;
    case 10:
      v20 = *(v7 + 2);
      MEMORY[0x245D279A0](10);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      MEMORY[0x245D279A0](v20);
      sub_242F063B0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      sub_242F063C0();
      sub_242F063C0();
      goto LABEL_30;
    case 11:
      v11 = *(v7 + 2);
      MEMORY[0x245D279A0](11);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      MEMORY[0x245D279A0](v11);
      goto LABEL_28;
    case 12:
      v13 = 12;
      goto LABEL_23;
    case 13:
      v13 = 13;
LABEL_23:
      MEMORY[0x245D279A0](v13);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      sub_242F063B0();
      goto LABEL_24;
    case 14:
      v10 = v7[1];
      MEMORY[0x245D279A0](14);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      MEMORY[0x245D279A0](v10);
LABEL_24:
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
LABEL_25:
      sub_242F063C0();
      break;
    default:
      v8 = *v7;
      v9 = 0;
LABEL_11:
      MEMORY[0x245D279A0](v9);
      if (v8)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      MEMORY[0x245D279A0](v16);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

LABEL_28:
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      sub_242F063C0();
      break;
  }

  sub_242F063C0();
LABEL_30:
  sub_242F04B30();
LABEL_31:
  sub_242F04B30();
}

uint64_t VisibilityRule.hashValue.getter()
{
  sub_242F06390();
  VisibilityRule.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t VisibilityRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v278 = a2;
  *&v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF11E0, &qword_242F0D360);
  v304 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  *&v316 = &v273 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF11E8, &qword_242F0D368);
  v302 = *(v4 - 8);
  v303 = v4;
  MEMORY[0x28223BE20](v4);
  *&v319 = &v273 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF11F0, &qword_242F0D370);
  v300 = *(v6 - 8);
  v301 = v6;
  MEMORY[0x28223BE20](v6);
  *&v315 = &v273 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF11F8, &qword_242F0D378);
  v298 = *(v8 - 8);
  v299 = v8;
  MEMORY[0x28223BE20](v8);
  *&v318 = &v273 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1200, &qword_242F0D380);
  v296 = *(v10 - 8);
  v297 = v10;
  MEMORY[0x28223BE20](v10);
  *&v314 = &v273 - v11;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1208, &qword_242F0D388);
  v295 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  *&v313 = &v273 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1210, &qword_242F0D390);
  v293 = *(v13 - 8);
  v294 = v13;
  MEMORY[0x28223BE20](v13);
  v312 = &v273 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1218, &qword_242F0D398);
  v291 = *(v15 - 8);
  v292 = v15;
  MEMORY[0x28223BE20](v15);
  v311 = &v273 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1220, &qword_242F0D3A0);
  v289 = *(v17 - 8);
  v290 = v17;
  MEMORY[0x28223BE20](v17);
  v310 = &v273 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1228, &qword_242F0D3A8);
  v287 = *(v19 - 8);
  v288 = v19;
  MEMORY[0x28223BE20](v19);
  v309 = &v273 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1230, &qword_242F0D3B0);
  v285 = *(v21 - 8);
  v286 = v21;
  MEMORY[0x28223BE20](v21);
  v308 = &v273 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1238, &qword_242F0D3B8);
  v283 = *(v23 - 8);
  v284 = v23;
  MEMORY[0x28223BE20](v23);
  v306 = &v273 - v24;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1240, &qword_242F0D3C0);
  v281 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v307 = &v273 - v25;
  *&v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1248, &qword_242F0D3C8);
  v280 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v27 = &v273 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1250, &qword_242F0D3D0);
  v279 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v273 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1258, &unk_242F0D3D8);
  v321 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v273 - v32;
  v34 = a1[3];
  v348 = a1;
  v35 = __swift_project_boxed_opaque_existential_2Tm(a1, v34);
  sub_242CB7E60(v35, v36, v37);
  v38 = v322;
  sub_242F06480();
  if (v38)
  {
LABEL_8:
    v59 = v348;
    return __swift_destroy_boxed_opaque_existential_2Tm(v59);
  }

  v274 = v28;
  v275 = v30;
  v276 = v27;
  v277 = 0;
  v39 = v317;
  v40 = v318;
  v41 = v319;
  v322 = v31;
  v42 = sub_242F05E10();
  v43 = (2 * *(v42 + 16)) | 1;
  v344 = v42;
  v345 = v42 + 32;
  v346 = 0;
  v347 = v43;
  v44 = sub_242C7025C();
  if (v346 != v347 >> 1)
  {
LABEL_6:
    v55 = sub_242F05B10();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
    *v57 = &type metadata for VisibilityRule;
    v58 = v322;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D84160], v55);
    swift_willThrow();
    (*(v321 + 8))(v33, v58);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v44)
  {
    case 0:
      LOBYTE(v333) = 0;
      sub_242CB8838(v44, v45, v46);
      v47 = v275;
      v48 = v33;
      v49 = v322;
      v50 = v277;
      v51 = sub_242F05D10();
      v54 = v348;
      if (v50)
      {
        (*(v321 + 8))(v48, v49);
        goto LABEL_45;
      }

      v157 = v48;
      LOBYTE(v333) = 0;
      sub_242CB8F14(v51, v52, v53);
      v158 = v274;
      v159 = sub_242F05E00();
      LODWORD(v320) = v327;
      v204 = BYTE1(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v159, v205, v206);
      v207 = v47;
      sub_242F05E00();
      v208 = v279;
      LODWORD(v319) = v204;
      v254 = *v332;
      v317 = *&v332[24];
      v318 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v255 = (v321 + 8);
      (*(v208 + 8))(v207, v158);
      (*v255)(v157, v322);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v320;
      BYTE1(v333) = v319;
      *(&v333 + 1) = v254;
      v334[0] = v318;
      v334[1] = v317;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242C55EDC(&v333);
      goto LABEL_48;
    case 1:
      LOBYTE(v333) = 1;
      sub_242CB8790(v44, v45, v46);
      v122 = v276;
      v121 = v277;
      v123 = v322;
      v124 = sub_242F05D10();
      if (v121)
      {
        (*(v321 + 8))(v33, v123);
        goto LABEL_7;
      }

      LOBYTE(v333) = 0;
      sub_242CB8EA4(v124, v125, v126);
      v160 = v39;
      v161 = sub_242F05E00();
      *&v320 = v33;
      v209 = v327;
      v210 = BYTE1(v327);
      v211 = v122;
      v212 = BYTE2(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v161, v213, v214);
      sub_242F05E00();
      LODWORD(v318) = v210;
      LODWORD(v319) = v209;
      v256 = *v332;
      v315 = *&v332[24];
      v316 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v257 = (v321 + 8);
      (*(v280 + 8))(v211, v160);
      (*v257)(v320, v322);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v319;
      BYTE1(v333) = v318;
      BYTE2(v333) = v212;
      *(&v333 + 1) = v256;
      v334[0] = v316;
      v334[1] = v315;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB8EF8(&v333);
      v341 = v334[5];
      v342 = v334[6];
      v343 = *&v334[7];
      v337 = v334[1];
      v338 = v334[2];
      v339 = v334[3];
      v340 = v334[4];
      v335 = v333;
      v336 = v334[0];
      v59 = v348;
      goto LABEL_49;
    case 2:
      LOBYTE(v333) = 2;
      sub_242CB86E8(v44, v45, v46);
      v100 = v307;
      v101 = v322;
      v102 = v277;
      v103 = sub_242F05D10();
      v106 = v348;
      if (v102)
      {
        (*(v321 + 8))(v33, v101);
        swift_unknownObjectRelease();
        v59 = v106;
        return __swift_destroy_boxed_opaque_existential_2Tm(v59);
      }

      v331 = 0;
      sub_242CB8E34(v103, v104, v105);
      v154 = sub_242F05E00();
      v155 = v100;
      v156 = v321;
      *v330 = *v332;
      *&v330[16] = *&v332[16];
      *&v330[32] = *&v332[32];
      *&v330[47] = *&v332[47];
      LOBYTE(v333) = 1;
      sub_242CB8934(v154, v192, v193);
      sub_242F05E00();
      v277 = 0;
      v249 = v327;
      v319 = v329;
      v320 = v328;
      v323 = 2;
      sub_242F05E00();
      (*(v281 + 8))(v155, v305);
      (*(v156 + 8))(v33, v101);
      swift_unknownObjectRelease();
      v333 = *v330;
      v334[0] = *&v330[16];
      v334[1] = *&v330[32];
      *(&v334[1] + 15) = *&v330[47];
      *(&v334[2] + 1) = v249;
      v334[3] = v320;
      v334[4] = v319;
      *&v334[5] = v324;
      *(&v334[5] + 8) = v325;
      *(&v334[6] + 8) = v326;
      sub_242CB8E88(&v333);
      v341 = v334[5];
      v342 = v334[6];
      v343 = *&v334[7];
      v337 = v334[1];
      v338 = v334[2];
      v339 = v334[3];
      v340 = v334[4];
      v335 = v333;
      v336 = v334[0];
      v59 = v106;
      goto LABEL_49;
    case 3:
      LOBYTE(v333) = 3;
      sub_242CB8640(v44, v45, v46);
      v107 = v306;
      v85 = v322;
      v108 = v277;
      sub_242F05D10();
      v89 = v33;
      v90 = v348;
      if (v108)
      {
        goto LABEL_34;
      }

      v111 = v89;
      LOBYTE(v333) = 0;
      sub_242CB8DC0(v89, v109, v110);
      v112 = v284;
      v113 = sub_242F05E00();
      v194 = v107;
      LODWORD(v320) = v327;
      v195 = BYTE1(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v113, v196, v197);
      sub_242F05E00();
      LODWORD(v319) = v195;
      v250 = *v332;
      v317 = *&v332[24];
      v318 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v251 = (v321 + 8);
      (*(v283 + 8))(v194, v112);
      (*v251)(v111, v85);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v320;
      BYTE1(v333) = v319;
      *(&v333 + 1) = v250;
      v334[0] = v318;
      v334[1] = v317;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB8E14(&v333);
      v341 = v334[5];
      v342 = v334[6];
      v343 = *&v334[7];
      v337 = v334[1];
      v338 = v334[2];
      v339 = v334[3];
      v340 = v334[4];
      v335 = v333;
      v336 = v334[0];
      v59 = v90;
      goto LABEL_49;
    case 4:
      LOBYTE(v333) = 4;
      sub_242CB8598(v44, v45, v46);
      v75 = v308;
      v76 = v322;
      v77 = v277;
      v78 = sub_242F05D10();
      v81 = v348;
      if (v77)
      {
        goto LABEL_30;
      }

      LOBYTE(v333) = 0;
      sub_242CB8D6C(v78, v79, v80);
      v82 = v286;
      v83 = sub_242F05E00();
      v177 = v75;
      v178 = v33;
      v179 = v82;
      LODWORD(v82) = v327;
      v180 = HIDWORD(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v83, v181, v182);
      sub_242F05E00();
      LODWORD(v320) = v82;
      v243 = *v332;
      v318 = *&v332[24];
      v319 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v244 = (v321 + 8);
      (*(v285 + 8))(v177, v179);
      (*v244)(v178, v76);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v320;
      DWORD1(v333) = v180;
      *(&v333 + 1) = v243;
      v334[0] = v319;
      v334[1] = v318;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB5A7C(&v333);
      goto LABEL_46;
    case 5:
      LOBYTE(v333) = 5;
      sub_242CB84F0(v44, v45, v46);
      v127 = v309;
      v76 = v322;
      v128 = v277;
      v129 = sub_242F05D10();
      v81 = v348;
      if (v128)
      {
LABEL_30:
        (*(v321 + 8))(v33, v76);
        swift_unknownObjectRelease();
        v59 = v81;
        return __swift_destroy_boxed_opaque_existential_2Tm(v59);
      }

      LOBYTE(v333) = 0;
      sub_242CB8D18(v129, v130, v131);
      v162 = v288;
      v163 = sub_242F05E00();
      v215 = v127;
      v216 = v33;
      v217 = v162;
      LODWORD(v162) = v327;
      LOBYTE(v333) = 1;
      sub_242CB8934(v163, v218, v219);
      sub_242F05E00();
      LODWORD(v320) = v162;
      v258 = *v332;
      v318 = *&v332[24];
      v319 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v259 = (v321 + 8);
      (*(v287 + 8))(v215, v217);
      (*v259)(v216, v76);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v320;
      *(&v333 + 1) = v258;
      v334[0] = v319;
      v334[1] = v318;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB5C0C(&v333);
LABEL_46:
      v341 = v334[5];
      v342 = v334[6];
      v343 = *&v334[7];
      v337 = v334[1];
      v338 = v334[2];
      v339 = v334[3];
      v340 = v334[4];
      v335 = v333;
      v336 = v334[0];
      v59 = v81;
      goto LABEL_49;
    case 6:
      LOBYTE(v333) = 6;
      sub_242CB8448(v44, v45, v46);
      v138 = v310;
      v85 = v322;
      v139 = v277;
      sub_242F05D10();
      v89 = v33;
      v90 = v348;
      if (v139)
      {
        goto LABEL_34;
      }

      v164 = v89;
      LOBYTE(v333) = 0;
      sub_242CB8CC4(v89, v140, v141);
      v165 = v290;
      v166 = sub_242F05E00();
      LODWORD(v320) = v327;
      v224 = BYTE1(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v166, v225, v226);
      sub_242F05E00();
      v227 = v165;
      LODWORD(v319) = v224;
      v262 = *v332;
      v317 = *&v332[24];
      v318 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v263 = (v321 + 8);
      (*(v289 + 8))(v138, v227);
      (*v263)(v164, v85);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v320;
      BYTE1(v333) = v319;
      *(&v333 + 1) = v262;
      v334[0] = v318;
      v334[1] = v317;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB5C2C(&v333);
      goto LABEL_47;
    case 7:
      LOBYTE(v333) = 7;
      sub_242CB83A0(v44, v45, v46);
      v114 = v311;
      v68 = v322;
      v115 = v277;
      v116 = sub_242F05D10();
      v54 = v348;
      if (v115)
      {
        goto LABEL_38;
      }

      LOBYTE(v333) = 0;
      sub_242CB8C54(v116, v117, v118);
      v119 = v292;
      v120 = sub_242F05E00();
      *&v320 = v33;
      LODWORD(v319) = v327;
      v198 = BYTE1(v327);
      v199 = BYTE2(v327);
      v200 = BYTE3(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v120, v201, v202);
      sub_242F05E00();
      v203 = v119;
      LODWORD(v316) = v200;
      LODWORD(v317) = v199;
      LODWORD(v318) = v198;
      v252 = *v332;
      v314 = *&v332[24];
      v315 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v253 = (v321 + 8);
      (*(v291 + 8))(v114, v203);
      (*v253)(v320, v322);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v319;
      BYTE1(v333) = v318;
      BYTE2(v333) = v317;
      BYTE3(v333) = v316;
      *(&v333 + 1) = v252;
      v334[0] = v315;
      v334[1] = v314;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB8CA8(&v333);
      goto LABEL_48;
    case 8:
      LOBYTE(v333) = 8;
      sub_242CB82F8(v44, v45, v46);
      v149 = v312;
      v68 = v322;
      v150 = v277;
      v151 = sub_242F05D10();
      v54 = v348;
      if (v150)
      {
        goto LABEL_38;
      }

      LOBYTE(v333) = 0;
      sub_242CB8BE4(v151, v152, v153);
      v167 = v294;
      v168 = sub_242F05E00();
      *&v320 = v33;
      v234 = v149;
      LODWORD(v319) = v327;
      v235 = v328;
      v236 = BYTE8(v328);
      LOBYTE(v333) = 1;
      sub_242CB8934(v168, v237, v238);
      sub_242F05E00();
      LODWORD(v317) = v236;
      *&v318 = v235;
      v266 = *v332;
      v315 = *&v332[24];
      v316 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v267 = (v321 + 8);
      (*(v293 + 8))(v234, v167);
      (*v267)(v320, v322);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v319;
      *(&v333 + 1) = v318;
      LOBYTE(v334[0]) = v317;
      *(&v334[0] + 1) = v266;
      v334[1] = v316;
      v334[2] = v315;
      *&v334[3] = *v330;
      *(&v334[3] + 8) = *&v330[8];
      *(&v334[4] + 8) = *&v330[24];
      sub_242CB8C38(&v333);
      goto LABEL_48;
    case 9:
      LOBYTE(v333) = 9;
      sub_242CB8250(v44, v45, v46);
      v94 = v313;
      v85 = v322;
      v95 = v277;
      sub_242F05D10();
      v89 = v33;
      v90 = v348;
      if (v95)
      {
        goto LABEL_34;
      }

      *&v320 = v89;
      LOBYTE(v333) = 0;
      sub_242CB8B6C(v89, v96, v97);
      v98 = v282;
      v99 = sub_242F05E00();
      v187 = v327;
      v188 = BYTE1(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v99, v189, v190);
      sub_242F05E00();
      v191 = v98;
      LODWORD(v318) = v187;
      LODWORD(v319) = v188;
      v247 = *v332;
      v316 = *&v332[24];
      v317 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v248 = (v321 + 8);
      (*(v295 + 8))(v94, v191);
      (*v248)(v320, v85);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v318;
      BYTE1(v333) = v319;
      *(&v333 + 1) = v247;
      v334[0] = v317;
      v334[1] = v316;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB8BC0(&v333);
      goto LABEL_47;
    case 10:
      LOBYTE(v333) = 10;
      sub_242CB81A8(v44, v45, v46);
      v142 = v314;
      v68 = v322;
      v143 = v277;
      v144 = sub_242F05D10();
      v54 = v348;
      if (v143)
      {
        goto LABEL_38;
      }

      LOBYTE(v333) = 0;
      sub_242CB8AF8(v144, v145, v146);
      v147 = v297;
      v148 = sub_242F05E00();
      *&v320 = v33;
      LODWORD(v319) = v327;
      v228 = BYTE1(v327);
      v229 = BYTE2(v327);
      v230 = BYTE3(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v148, v231, v232);
      sub_242F05E00();
      v233 = v147;
      LODWORD(v316) = v230;
      LODWORD(v317) = v229;
      LODWORD(v318) = v228;
      v264 = *v332;
      v313 = *&v332[24];
      v315 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v265 = (v321 + 8);
      (*(v296 + 8))(v142, v233);
      (*v265)(v320, v322);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v319;
      BYTE1(v333) = v318;
      BYTE2(v333) = v317;
      BYTE3(v333) = v316;
      *(&v333 + 1) = v264;
      v334[0] = v315;
      v334[1] = v313;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB8B4C(&v333);
      goto LABEL_48;
    case 11:
      LOBYTE(v333) = 11;
      sub_242CB8100(v44, v45, v46);
      v68 = v322;
      v69 = v277;
      v70 = sub_242F05D10();
      v54 = v348;
      if (v69)
      {
LABEL_38:
        (*(v321 + 8))(v33, v68);
LABEL_45:
        swift_unknownObjectRelease();
        v59 = v54;
        return __swift_destroy_boxed_opaque_existential_2Tm(v59);
      }

      LOBYTE(v333) = 0;
      sub_242CB8A88(v70, v71, v72);
      v73 = v299;
      v74 = sub_242F05E00();
      *&v320 = v33;
      v172 = v40;
      LODWORD(v319) = v327;
      v173 = BYTE1(v327);
      v174 = BYTE2(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v74, v175, v176);
      sub_242F05E00();
      LODWORD(v316) = v174;
      LODWORD(v317) = v173;
      v241 = *v332;
      v314 = *&v332[24];
      v315 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v242 = (v321 + 8);
      (*(v298 + 8))(v172, v73);
      (*v242)(v320, v322);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v319;
      BYTE1(v333) = v317;
      BYTE2(v333) = v316;
      *(&v333 + 1) = v241;
      v334[0] = v315;
      v334[1] = v314;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB8ADC(&v333);
LABEL_48:
      v341 = v334[5];
      v342 = v334[6];
      v343 = *&v334[7];
      v337 = v334[1];
      v338 = v334[2];
      v339 = v334[3];
      v340 = v334[4];
      v335 = v333;
      v336 = v334[0];
      v59 = v54;
      goto LABEL_49;
    case 12:
      LOBYTE(v333) = 12;
      sub_242CB8058(v44, v45, v46);
      v84 = v315;
      v85 = v322;
      v86 = v277;
      sub_242F05D10();
      v89 = v33;
      v90 = v348;
      if (v86)
      {
        goto LABEL_34;
      }

      v91 = v89;
      LOBYTE(v333) = 0;
      sub_242CB8A14(v89, v87, v88);
      v92 = v301;
      v93 = sub_242F05E00();
      LODWORD(v320) = v327;
      v183 = BYTE1(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v93, v184, v185);
      sub_242F05E00();
      v186 = v92;
      LODWORD(v319) = v183;
      v245 = *v332;
      v317 = *&v332[24];
      v318 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v246 = (v321 + 8);
      (*(v300 + 8))(v84, v186);
      (*v246)(v91, v85);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v320;
      BYTE1(v333) = v319;
      *(&v333 + 1) = v245;
      v334[0] = v318;
      v334[1] = v317;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB8A68(&v333);
      goto LABEL_47;
    case 13:
      LOBYTE(v333) = 13;
      sub_242CB7FB0(v44, v45, v46);
      v85 = v322;
      v132 = v277;
      sub_242F05D10();
      v89 = v33;
      v90 = v348;
      if (v132)
      {
LABEL_34:
        (*(v321 + 8))(v89, v85);
        swift_unknownObjectRelease();
        v59 = v90;
        return __swift_destroy_boxed_opaque_existential_2Tm(v59);
      }

      v135 = v89;
      LOBYTE(v333) = 0;
      sub_242CB89A4(v89, v133, v134);
      v136 = v303;
      v137 = sub_242F05E00();
      LODWORD(v320) = v327;
      v220 = BYTE1(v327);
      LOBYTE(v333) = 1;
      sub_242CB8934(v137, v221, v222);
      sub_242F05E00();
      v223 = v136;
      LODWORD(v318) = v220;
      v260 = *v332;
      v316 = *&v332[24];
      v317 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v261 = (v321 + 8);
      (*(v302 + 8))(v41, v223);
      (*v261)(v135, v85);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v320;
      BYTE1(v333) = v318;
      *(&v333 + 1) = v260;
      v334[0] = v317;
      v334[1] = v316;
      *&v334[2] = *v330;
      *(&v334[2] + 8) = *&v330[8];
      *(&v334[3] + 8) = *&v330[24];
      sub_242CB89F8(&v333);
LABEL_47:
      v341 = v334[5];
      v342 = v334[6];
      v343 = *&v334[7];
      v337 = v334[1];
      v338 = v334[2];
      v339 = v334[3];
      v340 = v334[4];
      v335 = v333;
      v336 = v334[0];
      v59 = v90;
      goto LABEL_49;
    case 14:
      LOBYTE(v333) = 14;
      sub_242CB7EB4(v44, v45, v46);
      v61 = v316;
      v62 = v322;
      v63 = v277;
      v64 = sub_242F05D10();
      if (v63)
      {
        (*(v321 + 8))(v33, v62);
        goto LABEL_7;
      }

      LOBYTE(v333) = 0;
      sub_242CB88E0(v64, v65, v66);
      v67 = sub_242F05E00();
      LODWORD(v319) = v327;
      v169 = v328;
      LOBYTE(v333) = 1;
      sub_242CB8934(v67, v170, v171);
      sub_242F05E00();
      *&v318 = v169;
      v239 = *v332;
      v315 = *&v332[24];
      v317 = *&v332[8];
      LOBYTE(v324) = 2;
      sub_242F05E00();
      v240 = (v321 + 8);
      (*(v304 + 8))(v61, 0);
      (*v240)(v33, v62);
      swift_unknownObjectRelease();
      LOBYTE(v333) = v319;
      *(&v333 + 1) = v318;
      *&v334[0] = v239;
      *(&v334[1] + 8) = v315;
      *(v334 + 8) = v317;
      *(&v334[2] + 1) = *v330;
      v334[3] = *&v330[8];
      v334[4] = *&v330[24];
      sub_242CB8988(&v333);
      v341 = v334[5];
      v342 = v334[6];
      v343 = *&v334[7];
      v337 = v334[1];
      v338 = v334[2];
      v339 = v334[3];
      v340 = v334[4];
      v335 = v333;
      v336 = v334[0];
      v59 = v348;
LABEL_49:
      v268 = v342;
      v269 = v278;
      *(v278 + 96) = v341;
      *(v269 + 112) = v268;
      *(v269 + 128) = v343;
      v270 = v338;
      *(v269 + 32) = v337;
      *(v269 + 48) = v270;
      v271 = v340;
      *(v269 + 64) = v339;
      *(v269 + 80) = v271;
      v272 = v336;
      *v269 = v335;
      *(v269 + 16) = v272;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v59);
}

uint64_t sub_242CAAC84()
{
  sub_242F06390();
  VisibilityRule.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242CAACC8(uint64_t a1)
{
  sub_242F06390();
  VisibilityRule.hash(into:)(v2);
  return sub_242F063E0();
}

__n128 (*VisibilityRule.BezierCurve.startControlPoint.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_242CAAD44;
}

__n128 sub_242CAAD44(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

__n128 (*VisibilityRule.BezierCurve.endControlPoint.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 16);
  return sub_242CAAD90;
}

__n128 sub_242CAAD90(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 16) = *a1;
  return result;
}

void VisibilityRule.BezierCurve.init(startControlPoint:endControlPoint:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

double sub_242CAADAC()
{
  result = 0.42;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_27ECF0DE8 = xmmword_242F0D200;
  unk_27ECF0DF8 = _Q1;
  return result;
}

double sub_242CAADF0()
{
  qword_27ECF0E08 = 0;
  unk_27ECF0E10 = 0;
  result = 0.58;
  xmmword_27ECF0E18 = xmmword_242F0D210;
  return result;
}

double sub_242CAAE34()
{
  result = 0.42;
  xmmword_27ECF0E28 = xmmword_242F0D200;
  unk_27ECF0E38 = xmmword_242F0D210;
  return result;
}

void sub_242CAAE7C()
{
  xmmword_27ECF0E48 = 0x3FB999999999999AuLL;
  *&xmmword_27ECF0E58 = 0;
  *(&xmmword_27ECF0E58 + 1) = 0x3FF0000000000000;
}

__n128 sub_242CAAEC8@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a5@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a5;
    swift_once();
    a2 = v7;
    a5 = v9;
    a3 = v8;
  }

  result = *a2;
  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;
  return result;
}

uint64_t static VisibilityRule.BezierCurve.== infix(_:_:)(double *a1, double *a2)
{
  if ((sub_242F04B20() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04B20();
}

double VisibilityRule.BezierCurve.hash(into:)(uint64_t a1)
{
  sub_242F04B30();

  sub_242F04B30();
  return result;
}

uint64_t VisibilityRule.BezierCurve.hashValue.getter()
{
  sub_242F06390();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t sub_242CAB05C()
{
  sub_242F06390();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

double sub_242CAB0CC(uint64_t a1)
{
  sub_242F04B30();

  sub_242F04B30();
  return result;
}

uint64_t sub_242CAB11C(uint64_t a1)
{
  sub_242F06390();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t sub_242CAB188(double *a1, double *a2)
{
  if ((sub_242F04B20() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04B20();
}

__n128 VisibilityRule.Animation.bezierCurve.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double sub_242CAB24C(double a1, uint64_t a2, double *a3, _OWORD *a4, _OWORD *a5)
{
  if (qword_27ECEEEC8 != -1)
  {
    v6 = a3;
    v7 = a5;
    v8 = a4;
    v9 = a1;
    swift_once();
    a1 = v9;
    a3 = v6;
    a4 = v8;
    a5 = v7;
  }

  *a3 = a1;
  *a4 = xmmword_27ECF0E48;
  result = *&xmmword_27ECF0E58;
  *a5 = xmmword_27ECF0E58;
  return result;
}

uint64_t sub_242CAB2E8()
{
  v1 = 0x79616C6564;
  if (*v0 != 1)
  {
    v1 = 0x75437265697A6562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_242CAB348@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CBDC90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CAB370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8F68(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CAB3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB8F68(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.Animation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF12E0, &qword_242F0D3E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *(v1 + 8);
  v16 = *(v1 + 24);
  v17 = v8;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB8F68(v9, v10, v11);
  sub_242F064C0();
  LOBYTE(v19) = 0;
  sub_242F05EF0();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    v13 = sub_242F05EF0();
    v19 = v17;
    v20 = v16;
    v18 = 2;
    sub_242CB8FBC(v13, v14, v15);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

double VisibilityRule.Animation.hash(into:)(uint64_t a1)
{
  sub_242F063C0();
  sub_242F063C0();
  sub_242F04B30();

  sub_242F04B30();
  return result;
}

uint64_t VisibilityRule.Animation.hashValue.getter()
{
  sub_242F06390();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t VisibilityRule.Animation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF12F8, &qword_242F0D3F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB8F68(v9, v10, v11);
  sub_242F06480();
  if (!v2)
  {
    LOBYTE(v22[0]) = 0;
    sub_242F05DD0();
    v13 = v12;
    LOBYTE(v22[0]) = 1;
    v14 = sub_242F05DD0();
    v17 = v16;
    v23 = 2;
    sub_242CB9010(v14, v18, v19);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v20 = v22[0];
    v21 = v22[1];
    *a2 = v13;
    *(a2 + 4) = v17;
    *(a2 + 8) = v20;
    *(a2 + 24) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CAB950(uint64_t a1)
{
  sub_242F06390();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t VisibilityRule.BezierCurve.encode(to:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064A0();
  v13 = v4;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  sub_242C7DB7C(v7, v8, v9);
  sub_242F05FA0();
  if (!v2)
  {
    v13 = v3;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_242F05FA0();
    v13 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_242F05FA0();
    v13 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_242F05FA0();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v11);
}

uint64_t VisibilityRule.BezierCurve.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06460();
  if (!v2)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    sub_242C7DBD0(v5, v6, v7);
    sub_242F05F80();
    v8 = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    sub_242F05F80();
    v9 = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    sub_242F05F80();
    v10 = v15;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    sub_242F05F80();
    v12 = v15;
    __swift_destroy_boxed_opaque_existential_2Tm(v13);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t (*static VisibilityRule.TransmissionModeRule.numeric.modify(uint64_t a1))()
{
  if (qword_27ECEEEE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static VisibilityRule.TransmissionModeRule.nonnumeric.modify(uint64_t a1))()
{
  if (qword_27ECEEEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CABFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9064(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CAC038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9064(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.TransmissionModeRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1308, &qword_242F0D3F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v20 = v1[1];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9064(v9, v10, v11);
  v12 = sub_242F064C0();
  v24 = v8;
  v23 = 0;
  sub_242CB90B8(v12, v13, v14);
  v15 = sub_242F05F20();
  if (!v2)
  {
    v22 = v20;
    v21 = 1;
    sub_242C8AC28(v15, v16, v17);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.TransmissionModeRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1320, &qword_242F0D400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9064(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v24 = 0;
    sub_242CB910C(v12, v13, v14);
    v15 = sub_242F05E00();
    v16 = v25;
    v22 = 1;
    sub_242C8AC7C(v15, v17, v18);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v20 = v23;
    *a2 = v16;
    a2[1] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

CarPlayAssetUI::VisibilityRule::TickmarksSpeedUnitRule::Rule_optional __swiftcall VisibilityRule.TickmarksSpeedUnitRule.Rule.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.noUnit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EBE;
  *a1 = word_27ECF0EBC;
  *(a1 + 2) = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.noUnit.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EBC) = v1;
  HIBYTE(word_27ECF0EBC) = v2;
  byte_27ECF0EBE = v3;
  return result;
}

uint64_t (*static VisibilityRule.TickmarksSpeedUnitRule.noUnit.modify(uint64_t a1))()
{
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CAC6A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EBE;
  *a1 = word_27ECF0EBC;
  *(a1 + 2) = v3;
  return result;
}

uint64_t sub_242CAC72C(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EBC) = v1;
  HIBYTE(word_27ECF0EBC) = v2;
  byte_27ECF0EBE = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.mph.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EC1;
  *a1 = word_27ECF0EBF;
  *(a1 + 2) = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.mph.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EBF) = v1;
  HIBYTE(word_27ECF0EBF) = v2;
  byte_27ECF0EC1 = v3;
  return result;
}

uint64_t (*static VisibilityRule.TickmarksSpeedUnitRule.mph.modify(uint64_t a1))()
{
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CAC974@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EC1;
  *a1 = word_27ECF0EBF;
  *(a1 + 2) = v3;
  return result;
}

uint64_t sub_242CAC9F8(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EBF) = v1;
  HIBYTE(word_27ECF0EBF) = v2;
  byte_27ECF0EC1 = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.kmh.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EC4;
  *a1 = word_27ECF0EC2;
  *(a1 + 2) = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.kmh.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EC2) = v1;
  HIBYTE(word_27ECF0EC2) = v2;
  byte_27ECF0EC4 = v3;
  return result;
}

uint64_t (*static VisibilityRule.TickmarksSpeedUnitRule.kmh.modify(uint64_t a1))()
{
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CACC40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EC4;
  *a1 = word_27ECF0EC2;
  *(a1 + 2) = v3;
  return result;
}

uint64_t sub_242CACCC4(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EC2) = v1;
  HIBYTE(word_27ECF0EC2) = v2;
  byte_27ECF0EC4 = v3;
  return result;
}

unint64_t sub_242CACD54()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701606770;
  }
}

uint64_t sub_242CACDB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CBDDA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CACDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9160(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CACE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9160(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.TickmarksSpeedUnitRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1330, &qword_242F0D408);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = v1[2];
  v23 = v9;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9160(v10, v11, v12);
  v13 = sub_242F064C0();
  v29 = v8;
  v28 = 0;
  sub_242CB91B4(v13, v14, v15);
  v16 = sub_242F05F20();
  if (!v2)
  {
    v19 = v22;
    v27 = v23;
    v26 = 1;
    sub_242C8AC28(v16, v17, v18);
    sub_242F05F20();
    v25 = v19;
    v24 = 2;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.TickmarksSpeedUnitRule.hash(into:)(uint64_t a1)
{
  MEMORY[0x245D279A0](*v1 + 1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t VisibilityRule.TickmarksSpeedUnitRule.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.TickmarksSpeedUnitRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1348, &qword_242F0D410);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9160(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v27 = 0;
    sub_242CB9208(v12, v13, v14);
    v15 = sub_242F05E00();
    v16 = v28;
    v25 = 1;
    sub_242C8AC7C(v15, v17, v18);
    sub_242F05E00();
    v22 = v26;
    v23 = 2;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v20 = v24;
    *a2 = v16;
    a2[1] = v22;
    a2[2] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CAD3E8(uint64_t a1)
{
  MEMORY[0x245D279A0](*v1 + 1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t sub_242CAD494(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](v2 + 1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::SpeedLimiterRule::Rule_optional __swiftcall VisibilityRule.SpeedLimiterRule.Rule.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242CAD630()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  return sub_242F063E0();
}

uint64_t sub_242CAD678(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](v2 + 1);
  return sub_242F063E0();
}

double sub_242CAD6BC()
{
  LOBYTE(xmmword_27ECF0EC8) = 0;
  result = 0.0;
  *(&xmmword_27ECF0EC8 + 8) = 0u;
  unk_27ECF0EE0 = 0u;
  qword_27ECF0EF0 = 0;
  byte_27ECF0EF8 = 1;
  *algn_27ECF0EF9 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.cruiseControl.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0ED8;
  *a1 = xmmword_27ECF0EC8;
  *(a1 + 16) = v2;
  result = dbl_27ECF0EE8;
  *(a1 + 32) = *&dbl_27ECF0EE8;
  *(a1 + 47) = *(&qword_27ECF0EF0 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.cruiseControl.setter(uint64_t a1)
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0EC8 = *a1;
  unk_27ECF0ED8 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0EE8 = result;
  *(&qword_27ECF0EF0 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.cruiseControl.modify(uint64_t a1))()
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CAD898@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0ED8;
  *a1 = xmmword_27ECF0EC8;
  *(a1 + 16) = v2;
  result = dbl_27ECF0EE8;
  *(a1 + 32) = *&dbl_27ECF0EE8;
  *(a1 + 47) = *(&qword_27ECF0EF0 + 7);
  return result;
}

__n128 sub_242CAD924(uint64_t a1)
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0EC8 = *a1;
  unk_27ECF0ED8 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0EE8 = result;
  *(&qword_27ECF0EF0 + 7) = *(a1 + 47);
  return result;
}

double sub_242CAD9B0()
{
  LOBYTE(xmmword_27ECF0F00) = 2;
  result = 0.0;
  *(&xmmword_27ECF0F00 + 8) = 0u;
  *&algn_27ECF0F10[8] = 0u;
  qword_27ECF0F28 = 0;
  byte_27ECF0F30 = 1;
  *algn_27ECF0F31 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabel.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *algn_27ECF0F10;
  *a1 = xmmword_27ECF0F00;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F20;
  *(a1 + 32) = *&dbl_27ECF0F20;
  *(a1 + 47) = *(&qword_27ECF0F28 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabel.setter(uint64_t a1)
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F00 = *a1;
  *algn_27ECF0F10 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F20 = result;
  *(&qword_27ECF0F28 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabel.modify(uint64_t a1))()
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CADB90@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *algn_27ECF0F10;
  *a1 = xmmword_27ECF0F00;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F20;
  *(a1 + 32) = *&dbl_27ECF0F20;
  *(a1 + 47) = *(&qword_27ECF0F28 + 7);
  return result;
}

__n128 sub_242CADC1C(uint64_t a1)
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F00 = *a1;
  *algn_27ECF0F10 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F20 = result;
  *(&qword_27ECF0F28 + 7) = *(a1 + 47);
  return result;
}

double sub_242CADCA8()
{
  LOBYTE(xmmword_27ECF0F38) = 2;
  result = 0.0;
  *(&xmmword_27ECF0F38 + 8) = 0u;
  unk_27ECF0F50 = 0u;
  qword_27ECF0F60 = 0;
  byte_27ECF0F68 = 1;
  *algn_27ECF0F69 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabelNoHide.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0F48;
  *a1 = xmmword_27ECF0F38;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F58;
  *(a1 + 32) = *&dbl_27ECF0F58;
  *(a1 + 47) = *(&qword_27ECF0F60 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabelNoHide.setter(uint64_t a1)
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F38 = *a1;
  unk_27ECF0F48 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F58 = result;
  *(&qword_27ECF0F60 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabelNoHide.modify(uint64_t a1))()
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CADE88@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0F48;
  *a1 = xmmword_27ECF0F38;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F58;
  *(a1 + 32) = *&dbl_27ECF0F58;
  *(a1 + 47) = *(&qword_27ECF0F60 + 7);
  return result;
}

__n128 sub_242CADF14(uint64_t a1)
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F38 = *a1;
  unk_27ECF0F48 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F58 = result;
  *(&qword_27ECF0F60 + 7) = *(a1 + 47);
  return result;
}

double sub_242CADFA0()
{
  LOBYTE(xmmword_27ECF0F70) = 1;
  result = 0.0;
  *(&xmmword_27ECF0F70 + 8) = 0u;
  unk_27ECF0F88 = 0u;
  qword_27ECF0F98 = 0;
  byte_27ECF0FA0 = 1;
  *algn_27ECF0FA1 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.speedLimited.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0F80;
  *a1 = xmmword_27ECF0F70;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F90;
  *(a1 + 32) = *&dbl_27ECF0F90;
  *(a1 + 47) = *(&qword_27ECF0F98 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.speedLimited.setter(uint64_t a1)
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F70 = *a1;
  unk_27ECF0F80 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F90 = result;
  *(&qword_27ECF0F98 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.speedLimited.modify(uint64_t a1))()
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CAE17C@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0F80;
  *a1 = xmmword_27ECF0F70;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F90;
  *(a1 + 32) = *&dbl_27ECF0F90;
  *(a1 + 47) = *(&qword_27ECF0F98 + 7);
  return result;
}

__n128 sub_242CAE208(uint64_t a1)
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F70 = *a1;
  unk_27ECF0F80 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F90 = result;
  *(&qword_27ECF0F98 + 7) = *(a1 + 47);
  return result;
}

double sub_242CAE294()
{
  LOBYTE(xmmword_27ECF0FA8) = 3;
  result = 0.0;
  *(&xmmword_27ECF0FA8 + 8) = 0u;
  unk_27ECF0FC0 = 0u;
  qword_27ECF0FD0 = 0;
  byte_27ECF0FD8 = 1;
  unk_27ECF0FD9 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.cruiseControlActivated.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0FB8;
  *a1 = xmmword_27ECF0FA8;
  *(a1 + 16) = v2;
  result = dbl_27ECF0FC8;
  *(a1 + 32) = *&dbl_27ECF0FC8;
  *(a1 + 47) = *(&qword_27ECF0FD0 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.cruiseControlActivated.setter(uint64_t a1)
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0FA8 = *a1;
  unk_27ECF0FB8 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0FC8 = result;
  *(&qword_27ECF0FD0 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.cruiseControlActivated.modify(uint64_t a1))()
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CAE474@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0FB8;
  *a1 = xmmword_27ECF0FA8;
  *(a1 + 16) = v2;
  result = dbl_27ECF0FC8;
  *(a1 + 32) = *&dbl_27ECF0FC8;
  *(a1 + 47) = *(&qword_27ECF0FD0 + 7);
  return result;
}

__n128 sub_242CAE500(uint64_t a1)
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0FA8 = *a1;
  unk_27ECF0FB8 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0FC8 = result;
  *(&qword_27ECF0FD0 + 7) = *(a1 + 47);
  return result;
}

unint64_t sub_242CAE58C()
{
  v1 = 1701606770;
  v2 = 0xD00000000000001CLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242CAE60C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CBDECC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CAE634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB925C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CAE670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB925C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.SpeedLimiterRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1358, &qword_242F0D418);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v29 = *(v1 + 24);
  v30 = v9;
  v28 = *(v1 + 5);
  v35 = v1[48];
  v10 = v1[49];
  v26 = v1[50];
  v27 = v10;
  v11 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB925C(v11, v12, v13);
  v14 = sub_242F064C0();
  LOBYTE(v31) = v8;
  v36 = 0;
  sub_242CB92B0(v14, v15, v16);
  v17 = sub_242F05F20();
  if (!v2)
  {
    v21 = v26;
    v20 = v27;
    v31 = v30;
    v32 = v29;
    v33 = v28;
    v34 = v35;
    v36 = 1;
    sub_242CB7F5C(v17, v18, v19);
    v22 = sub_242F05EB0();
    LOBYTE(v31) = v20;
    v36 = 2;
    sub_242C8AC28(v22, v23, v24);
    sub_242F05F20();
    LOBYTE(v31) = v21;
    v36 = 3;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.SpeedLimiterRule.hash(into:)(uint64_t a1)
{
  v2 = v1[48];
  MEMORY[0x245D279A0](*v1 + 1);
  sub_242F063B0();
  if (v2 != 1)
  {
    sub_242F063C0();
    sub_242F063C0();
    sub_242F04B30();
    sub_242F04B30();
  }

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t VisibilityRule.SpeedLimiterRule.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[48];
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  sub_242F063B0();
  if (v2 != 1)
  {
    sub_242F063C0();
    sub_242F063C0();
    sub_242F04B30();
    sub_242F04B30();
  }

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.SpeedLimiterRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1370, &qword_242F0D420);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB925C(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v36 = 0;
    sub_242CB9304(v12, v13, v14);
    v15 = sub_242F05E00();
    v16 = v31;
    v36 = 1;
    sub_242CB8934(v15, v17, v18);
    v19 = sub_242F05D90();
    v29 = v16;
    v30 = v32;
    v28 = v31;
    v20 = v33;
    v35 = v34;
    v36 = 2;
    sub_242C8AC7C(v19, v21, v22);
    sub_242F05E00();
    v27 = v20;
    LOBYTE(v20) = v31;
    v36 = 3;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v24 = v31;
    v25 = v35;
    *a2 = v29;
    *(a2 + 8) = v28;
    *(a2 + 24) = v30;
    *(a2 + 40) = v27;
    *(a2 + 48) = v25;
    *(a2 + 49) = v20;
    *(a2 + 50) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CAEE60(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[48];
  sub_242F06390();
  MEMORY[0x245D279A0](v2 + 1);
  sub_242F063B0();
  if (v3 != 1)
  {
    sub_242F063C0();
    sub_242F063C0();
    sub_242F04B30();
    sub_242F04B30();
  }

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::RemainingRangeRule::Rule_optional __swiftcall VisibilityRule.RemainingRangeRule.Rule.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VisibilityRule.RemainingRangeRule.Rule.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

CarPlayAssetUI::VisibilityRule::RemainingRangeRule __swiftcall VisibilityRule.RemainingRangeRule.init(rule:dataIdentifier:)(CarPlayAssetUI::VisibilityRule::RemainingRangeRule::Rule rule, CarPlayAssetUI::InstrumentDataIdentifier dataIdentifier)
{
  v3 = *dataIdentifier;
  *v2 = *rule;
  v2[1] = v3;
  result.rule = rule;
  return result;
}

uint64_t (*static VisibilityRule.RemainingRangeRule.iconOnly.modify(uint64_t a1))()
{
  if (qword_27ECEEF30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CAF1CC@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v9 = *a3;
  *a5 = *a2;
  a5[1] = v9;
  return result;
}

uint64_t sub_242CAF268(char *a1, void *a2, _BYTE *a3, char *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = v7;
  *a4 = v8;
  return result;
}

uint64_t (*static VisibilityRule.RemainingRangeRule.rangeAndIcon.modify(uint64_t a1))()
{
  if (qword_27ECEEF38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CAF364@<X0>(void *a1@<X3>, _BYTE *a2@<X4>, char *a3@<X5>, _BYTE *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v9 = *a3;
  *a5 = *a2;
  a5[1] = v9;
  return result;
}

uint64_t sub_242CAF3DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, char *a7, uint64_t a8)
{
  v10 = *a1;
  v11 = a1[1];
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v10;
  *a7 = v11;
  return result;
}

uint64_t sub_242CAF450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CAF534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9358(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CAF570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9358(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.RemainingRangeRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1380, &qword_242F0D428);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v20 = v1[1];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9358(v9, v10, v11);
  v12 = sub_242F064C0();
  v24 = v8;
  v23 = 0;
  sub_242CB93AC(v12, v13, v14);
  v15 = sub_242F05F20();
  if (!v2)
  {
    v22 = v20;
    v21 = 1;
    sub_242C8AC28(v15, v16, v17);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242CAF74C(uint64_t a1)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t sub_242CAF7D4()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.RemainingRangeRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1398, &qword_242F0D430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9358(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v24 = 0;
    sub_242CB9400(v12, v13, v14);
    v15 = sub_242F05E00();
    v16 = v25;
    v22 = 1;
    sub_242C8AC7C(v15, v17, v18);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v20 = v23;
    *a2 = v16;
    a2[1] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CAFA60(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x245D279A0](v3);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::LayoutModeRule::Level_optional __swiftcall VisibilityRule.LayoutModeRule.Level.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 199)
  {
    if (!rawValue)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 100)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 400)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 300)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 200)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_242CAFC30()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](100 * v1);
  return sub_242F063E0();
}

uint64_t sub_242CAFCB0(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](100 * v2);
  return sub_242F063E0();
}

uint64_t (*static VisibilityRule.LayoutModeRule.none.modify(uint64_t a1))()
{
  if (qword_27ECEEF40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static VisibilityRule.LayoutModeRule.exit.modify(uint64_t a1))()
{
  if (qword_27ECEEF48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static VisibilityRule.LayoutModeRule.ghost.modify(uint64_t a1))()
{
  if (qword_27ECEEF50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static VisibilityRule.LayoutModeRule.ghostFaded.modify(uint64_t a1))()
{
  if (qword_27ECEEF58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*static VisibilityRule.LayoutModeRule.accessory.modify(uint64_t a1))()
{
  if (qword_27ECEEF60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

float sub_242CB01FC@<S0>(void *a1@<X0>, _BYTE *a2@<X1>, float *a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *a3;
  *a5 = *a2;
  *(a5 + 4) = result;
  return result;
}

uint64_t sub_242CB0298(char *a1, void *a2, _BYTE *a3, _DWORD *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = v7;
  *a4 = v8;
  return result;
}

uint64_t (*static VisibilityRule.LayoutModeRule.drive.modify(uint64_t a1))()
{
  if (qword_27ECEEF68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

float sub_242CB039C@<S0>(void *a1@<X3>, _BYTE *a2@<X4>, float *a3@<X5>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *a3;
  *a5 = *a2;
  *(a5 + 4) = result;
  return result;
}

uint64_t sub_242CB0414(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, _DWORD *a7, uint64_t a8)
{
  v10 = *a1;
  v11 = *(a1 + 1);
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v10;
  *a7 = v11;
  return result;
}

uint64_t sub_242CB0490()
{
  if (*v0)
  {
    return 0x7974696361706FLL;
  }

  else
  {
    return 0x6C6576656CLL;
  }
}

uint64_t sub_242CB04C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6576656CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CB05A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9454(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB05DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9454(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.LayoutModeRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13A8, &qword_242F0D438);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v8 = *v1;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9454(v9, v10, v11);
  v12 = sub_242F064C0();
  v16[15] = v8;
  v16[14] = 0;
  sub_242CB94A8(v12, v13, v14);
  sub_242F05F20();
  if (!v2)
  {
    v16[13] = 1;
    sub_242F05EF0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.LayoutModeRule.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](100 * v1);
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t VisibilityRule.LayoutModeRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13C0, &qword_242F0D440);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9454(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v19[14] = 0;
    sub_242CB94FC(v12, v13, v14);
    sub_242F05E00();
    v15 = v19[15];
    v19[13] = 1;
    sub_242F05DD0();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v15;
    *(a2 + 4) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB0AD4(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  MEMORY[0x245D279A0](100 * v2);
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t sub_242CB0B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CB0C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9550(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB0C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9550(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.InvalidDataRule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13D0, &qword_242F0D448);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9550(v8, v9, v10);
  v11 = sub_242F064C0();
  v16 = v7;
  sub_242C8AC28(v11, v12, v13);
  sub_242F05F20();
  return (*(v4 + 8))(v6, v3);
}

uint64_t VisibilityRule.InvalidDataRule.hash(into:)(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t VisibilityRule.InvalidDataRule.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.InvalidDataRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13E0, &qword_242F0D450);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9550(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB1040()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CB10A8(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t sub_242CB110C(uint64_t a1)
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CB1170(uint64_t a1)
{
  v1 = InstrumentDataIdentifier.rawValue.getter();
  v3 = v2;
  if (v1 == InstrumentDataIdentifier.rawValue.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_242F06110();
  }

  return v6 & 1;
}

uint64_t sub_242CB120C()
{
  if (*v0)
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB1254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CB1338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB95A4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB1374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB95A4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.SecondarySpeedRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13E8, &qword_242F0D458);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  v17 = v1[1];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB95A4(v9, v10, v11);
  v12 = sub_242F064C0();
  v21 = v8;
  v20 = 0;
  sub_242C8AC28(v12, v13, v14);
  sub_242F05F20();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.SecondarySpeedRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13F8, &unk_242F0D460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB95A4(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v21 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v22;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1400, &qword_242F503D0);
    sub_242CB95F8();
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v16 = v19;
    *a2 = v15;
    a2[1] = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB183C()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  return sub_242F063E0();
}

uint64_t sub_242CB188C(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x245D279A0](v3);
  return sub_242F063E0();
}

double sub_242CB18D8()
{
  *&result = 488381185;
  dword_27ECF1010 = 488381185;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.engineTemperatureIconOnly.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1010 + 1);
  v4 = HIBYTE(dword_27ECF1010);
  *a1 = dword_27ECF1010;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.engineTemperatureIconOnly.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1010) = v1;
  BYTE1(dword_27ECF1010) = v2;
  BYTE2(dword_27ECF1010) = v3;
  HIBYTE(dword_27ECF1010) = v4;
  return result;
}

uint64_t (*static VisibilityRule.TemperatureLabelRule.engineTemperatureIconOnly.modify(uint64_t a1))()
{
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CB1AA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1010 + 1);
  v4 = HIBYTE(dword_27ECF1010);
  *a1 = dword_27ECF1010;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t sub_242CB1B30(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1010) = v1;
  BYTE1(dword_27ECF1010) = v2;
  BYTE2(dword_27ECF1010) = v3;
  HIBYTE(dword_27ECF1010) = v4;
  return result;
}

double sub_242CB1BD0()
{
  *&result = 488381184;
  dword_27ECF1014 = 488381184;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.engineTemperatureLabelAndIcon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1014 + 1);
  v4 = HIBYTE(dword_27ECF1014);
  *a1 = dword_27ECF1014;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.engineTemperatureLabelAndIcon.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1014) = v1;
  BYTE1(dword_27ECF1014) = v2;
  BYTE2(dword_27ECF1014) = v3;
  HIBYTE(dword_27ECF1014) = v4;
  return result;
}

uint64_t (*static VisibilityRule.TemperatureLabelRule.engineTemperatureLabelAndIcon.modify(uint64_t a1))()
{
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CB1D9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1014 + 1);
  v4 = HIBYTE(dword_27ECF1014);
  *a1 = dword_27ECF1014;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t sub_242CB1E28(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1014) = v1;
  BYTE1(dword_27ECF1014) = v2;
  BYTE2(dword_27ECF1014) = v3;
  HIBYTE(dword_27ECF1014) = v4;
  return result;
}

double sub_242CB1EC8()
{
  *&result = 50462977;
  dword_27ECF1018 = 50462977;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.batteryTemperatureIconOnly.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1018 + 1);
  v4 = HIBYTE(dword_27ECF1018);
  *a1 = dword_27ECF1018;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.batteryTemperatureIconOnly.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1018) = v1;
  BYTE1(dword_27ECF1018) = v2;
  BYTE2(dword_27ECF1018) = v3;
  HIBYTE(dword_27ECF1018) = v4;
  return result;
}

uint64_t (*static VisibilityRule.TemperatureLabelRule.batteryTemperatureIconOnly.modify(uint64_t a1))()
{
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CB2094@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1018 + 1);
  v4 = HIBYTE(dword_27ECF1018);
  *a1 = dword_27ECF1018;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t sub_242CB2120(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1018) = v1;
  BYTE1(dword_27ECF1018) = v2;
  BYTE2(dword_27ECF1018) = v3;
  HIBYTE(dword_27ECF1018) = v4;
  return result;
}

double sub_242CB21C0()
{
  *&result = 50462976;
  dword_27ECF101C = 50462976;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.batteryTemperatureLabelAndIcon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF101C + 1);
  v4 = HIBYTE(dword_27ECF101C);
  *a1 = dword_27ECF101C;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.batteryTemperatureLabelAndIcon.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF101C) = v1;
  BYTE1(dword_27ECF101C) = v2;
  BYTE2(dword_27ECF101C) = v3;
  HIBYTE(dword_27ECF101C) = v4;
  return result;
}

uint64_t (*static VisibilityRule.TemperatureLabelRule.batteryTemperatureLabelAndIcon.modify(uint64_t a1))()
{
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CB238C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF101C + 1);
  v4 = HIBYTE(dword_27ECF101C);
  *a1 = dword_27ECF101C;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t sub_242CB2418(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF101C) = v1;
  BYTE1(dword_27ECF101C) = v2;
  BYTE2(dword_27ECF101C) = v3;
  HIBYTE(dword_27ECF101C) = v4;
  return result;
}

unint64_t sub_242CB24B8()
{
  v1 = 1701606770;
  if (*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_242CB2534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CBE038(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CB255C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB965C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB2598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB965C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.TemperatureLabelRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1410, &qword_242F0D470);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = *v1;
  v9 = v1[1];
  v23 = v1[2];
  v24 = v9;
  HIDWORD(v22) = v1[3];
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB965C(v10, v11, v12);
  v13 = sub_242F064C0();
  v32 = v8;
  v31 = 0;
  sub_242CB96B0(v13, v14, v15);
  v16 = sub_242F05F20();
  if (!v2)
  {
    v19 = BYTE4(v22);
    v20 = v23;
    v30 = v24;
    v29 = 1;
    sub_242C8AC28(v16, v17, v18);
    sub_242F05F20();
    v28 = v20;
    v27 = 2;
    sub_242F05F20();
    v26 = v19;
    v25 = 3;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.TemperatureLabelRule.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t VisibilityRule.TemperatureLabelRule.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.TemperatureLabelRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1428, &qword_242F0D478);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB965C(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v32 = 0;
    sub_242CB9704(v12, v13, v14);
    v15 = sub_242F05E00();
    v16 = v33;
    v30 = 1;
    sub_242C8AC7C(v15, v17, v18);
    sub_242F05E00();
    v25 = v16;
    v19 = v31;
    v28 = 2;
    sub_242F05E00();
    v24 = v19;
    LOBYTE(v19) = v29;
    v26 = 3;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v21 = v27;
    v22 = v24;
    *a2 = v25;
    a2[1] = v22;
    a2[2] = v19;
    a2[3] = v21;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB2C74(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x245D279A0](v3);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::ActivityRule __swiftcall VisibilityRule.ActivityRule.init(dataIdentifier:deactivatedValue:showWhenDeactivated:)(CarPlayAssetUI::InstrumentDataIdentifier dataIdentifier, Swift::Int deactivatedValue, Swift::Bool showWhenDeactivated)
{
  *v3 = *dataIdentifier;
  *(v3 + 8) = deactivatedValue;
  *(v3 + 16) = showWhenDeactivated;
  result.deactivatedValue = deactivatedValue;
  result.showWhenDeactivated = showWhenDeactivated;
  result.dataIdentifier = dataIdentifier;
  return result;
}

unint64_t sub_242CB2D78()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB2DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CBE1A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CB2E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9758(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB2E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9758(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.ActivityRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1438, &qword_242F0D480);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *v1;
  v16[1] = *(v1 + 1);
  v17 = v1[16];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9758(v9, v10, v11);
  v12 = sub_242F064C0();
  v21 = v8;
  v20 = 0;
  sub_242C8AC28(v12, v13, v14);
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = 1;
  sub_242F05F00();
  v18 = 2;
  sub_242F05ED0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.ActivityRule.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v2);
  return sub_242F063B0();
}

uint64_t VisibilityRule.ActivityRule.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t VisibilityRule.ActivityRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1448, &qword_242F0D488);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9758(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v22 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v23;
    v21 = 1;
    v17 = sub_242F05DE0();
    v20 = 2;
    v18 = sub_242F05DB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB3380(uint64_t a1)
{
  v2 = *(v1 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v2);
  return sub_242F063B0();
}

uint64_t sub_242CB33FC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v2);
  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::PowerConsumptionRule __swiftcall VisibilityRule.PowerConsumptionRule.init(dataIdentifier:showWhenPositive:)(CarPlayAssetUI::InstrumentDataIdentifier dataIdentifier, Swift::Bool showWhenPositive)
{
  *v2 = *dataIdentifier;
  v2[1] = showWhenPositive;
  result.dataIdentifier = dataIdentifier;
  return result;
}

uint64_t sub_242CB349C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB34E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F599C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CB35D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB97AC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB3610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB97AC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

CarPlayAssetUI::VisibilityRule::EmphasizedEngineGaugeRule __swiftcall VisibilityRule.EmphasizedEngineGaugeRule.init(emphasizedEngineGaugeDataIdentifier:secondaryEngineGaugeHiddenDataIdentifier:gaugeType:isSecondaryGauge:)(CarPlayAssetUI::InstrumentDataIdentifier emphasizedEngineGaugeDataIdentifier, CarPlayAssetUI::InstrumentDataIdentifier secondaryEngineGaugeHiddenDataIdentifier, CarPlayAssetUI::VisibilityRule::EmphasizedEngineGaugeRule::GaugeType gaugeType, Swift::Bool isSecondaryGauge)
{
  v5 = *secondaryEngineGaugeHiddenDataIdentifier;
  v6 = *gaugeType;
  *v4 = *emphasizedEngineGaugeDataIdentifier;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = isSecondaryGauge;
  result.emphasizedEngineGaugeDataIdentifier = emphasizedEngineGaugeDataIdentifier;
  return result;
}

unint64_t sub_242CB37D4()
{
  v1 = 0x7079546567756167;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000028;
  if (!*v0)
  {
    v2 = 0xD000000000000023;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_242CB3858@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CBE2D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CB3880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9800(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB38BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9800(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.EmphasizedEngineGaugeRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1468, &qword_242F0D4A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = v1[2];
  v23 = v9;
  v21[1] = v1[3];
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9800(v10, v11, v12);
  v13 = sub_242F064C0();
  v30 = v8;
  v29 = 0;
  sub_242C8AC28(v13, v14, v15);
  sub_242F05F20();
  if (!v2)
  {
    v17 = v22;
    v28 = v23;
    v27 = 1;
    v18 = sub_242F05F20();
    v26 = v17;
    v25 = 2;
    sub_242CB9854(v18, v19, v20);
    sub_242F05F20();
    v24 = 3;
    sub_242F05ED0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.EmphasizedEngineGaugeRule.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v2);
  return sub_242F063B0();
}

uint64_t VisibilityRule.EmphasizedEngineGaugeRule.hashValue.getter()
{
  v1 = *(v0 + 2);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t VisibilityRule.EmphasizedEngineGaugeRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1480, &qword_242F0D4A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9800(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v29 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v30;
    v27 = 1;
    v16 = sub_242F05E00();
    v17 = v28;
    v25 = 2;
    sub_242CB98A8(v16, v18, v19);
    sub_242F05E00();
    v23 = v26;
    v24 = 3;
    v21 = sub_242F05DB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v15;
    a2[1] = v17;
    a2[2] = v23;
    a2[3] = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB3F48(uint64_t a1)
{
  v2 = *(v1 + 2);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v2);
  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::SideIndicatorRule::Side_optional __swiftcall VisibilityRule.SideIndicatorRule.Side.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

char *static VisibilityRule.SideIndicatorRule.turnIndicator(side:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 21073;
  *(a2 + 2) = v2;
  return result;
}

char *static VisibilityRule.SideIndicatorRule.proximityAlert(side:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 21587;
  *(a2 + 2) = v2;
  return result;
}

unint64_t sub_242CB410C()
{
  v1 = 1701079411;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_242CB4164@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242CBE448(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242CB418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB98FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB41C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB98FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.SideIndicatorRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1490, &qword_242F0D4B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = v1[2];
  v23 = v9;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB98FC(v10, v11, v12);
  v13 = sub_242F064C0();
  v29 = v8;
  v28 = 0;
  sub_242C8AC28(v13, v14, v15);
  sub_242F05F20();
  if (!v2)
  {
    v17 = v22;
    v27 = v23;
    v26 = 1;
    v18 = sub_242F05F20();
    v25 = v17;
    v24 = 2;
    sub_242CB9950(v18, v19, v20);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.SideIndicatorRule.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return MEMORY[0x245D279A0](v2);
}

uint64_t VisibilityRule.SideIndicatorRule.hashValue.getter()
{
  v1 = *(v0 + 2);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t VisibilityRule.SideIndicatorRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF14A8, &qword_242F0D4B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB98FC(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v27 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v28;
    v25 = 1;
    v16 = sub_242F05E00();
    v18 = v26;
    v23 = 2;
    sub_242CB99A4(v16, v19, v20);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v21 = v24;
    *a2 = v15;
    a2[1] = v18;
    a2[2] = v21;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB47BC(uint64_t a1)
{
  v2 = *(v1 + 2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return MEMORY[0x245D279A0](v2);
}

uint64_t sub_242CB485C(uint64_t a1)
{
  v2 = *(v1 + 2);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v2);
  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::DriveModeRule __swiftcall VisibilityRule.DriveModeRule.init(showWhenHidden:)(Swift::Bool showWhenHidden)
{
  *v1 = 18;
  v1[1] = showWhenHidden;
  result.dataIdentifier = showWhenHidden;
  return result;
}

uint64_t sub_242CB491C()
{
  if (*v0)
  {
    return 0x6E656857776F6873;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB4970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656857776F6873 && a2 == 0xEE006E6564646948)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CB4A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB99F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB4A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB99F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CB4B8C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB4BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59AA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CB4CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9A4C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB4D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9A4C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242CB4D80(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = *v5;
  v18 = v5[1];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  (v17[0])();
  v12 = sub_242F064C0();
  v21 = v11;
  v20 = 0;
  sub_242C8AC28(v12, v13, v14);
  v15 = v17[1];
  sub_242F05F20();
  if (!v15)
  {
    v19 = 1;
    sub_242F05ED0();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO014SecondarySpeedF0V4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063B0();
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO014SecondarySpeedF0V9hashValueSivg_0()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t sub_242CB5058@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a6@<X8>)
{
  v21 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  a4();
  v12 = sub_242F06480();
  if (!v6)
  {
    v16 = v20;
    v15 = v21;
    v23 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v17 = v24;
    v22 = 1;
    v18 = sub_242F05DB0();
    (*(v16 + 8))(v11, v9);
    *v15 = v17;
    v15[1] = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB5250(uint64_t a1)
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::ChargeStateRule __swiftcall VisibilityRule.ChargeStateRule.init(visibleState:)(CarPlayAssetUI::VisibilityRule::ChargeStateRule visibleState)
{
  *v1 = 13;
  *(v1 + 8) = *&visibleState.dataIdentifier;
  return visibleState;
}

uint64_t sub_242CB52DC()
{
  if (*v0)
  {
    return 0x53656C6269736976;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x53656C6269736976 && a2 == 0xEC00000065746174)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242CB5414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9AA0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242CB5450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242CB9AA0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t VisibilityRule.ChargeStateRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF14E8, &qword_242F0D4E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *v1;
  v16[1] = *(v1 + 1);
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9AA0(v9, v10, v11);
  v12 = sub_242F064C0();
  v19 = v8;
  v18 = 0;
  sub_242C8AC28(v12, v13, v14);
  sub_242F05F20();
  if (!v2)
  {
    v17 = 1;
    sub_242F05F00();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.ChargeStateRule.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return MEMORY[0x245D279A0](v2);
}

uint64_t VisibilityRule.ChargeStateRule.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t VisibilityRule.ChargeStateRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF14F8, &qword_242F0D4E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9AA0(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v20 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v21;
    v19 = 1;
    v16 = sub_242F05DE0();
    (*(v6 + 8))(v8, v5);
    *a2 = v15;
    *(a2 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB590C()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242CB598C(uint64_t a1)
{
  v2 = *(v1 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return MEMORY[0x245D279A0](v2);
}

uint64_t sub_242CB59FC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v2);
  return sub_242F063E0();
}

unint64_t sub_242CB5A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1028;
  if (!qword_27ECF1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1028);
  }

  return result;
}

unint64_t sub_242CB5AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1040;
  if (!qword_27ECF1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1040);
  }

  return result;
}

uint64_t sub_242CB5B40(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1030, &qword_242F0D2D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242CB5BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF1058;
  if (!qword_27ECF1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1058);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO018TickmarksSpeedUnitF0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_9;
  }

  v2 = InstrumentDataIdentifier.rawValue.getter();
  v4 = v3;
  if (v2 == InstrumentDataIdentifier.rawValue.getter() && v4 == v5)
  {

    goto LABEL_6;
  }

  v6 = sub_242F06110();

  if ((v6 & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

LABEL_6:
  v7 = InstrumentDataIdentifier.rawValue.getter();
  v9 = v8;
  if (v7 == InstrumentDataIdentifier.rawValue.getter() && v9 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO012SpeedLimiterF0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  if (a1[48])
  {
    if ((a2[48] & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    if (a2[48])
    {
      return v6 & 1;
    }

    v7 = *(a2 + 1);
    if (COERCE_FLOAT(*(a1 + 1)) != *&v7 || COERCE_FLOAT(HIDWORD(*(a1 + 1))) != *(&v7 + 1))
    {
      return v6 & 1;
    }

    if ((sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v2 = InstrumentDataIdentifier.rawValue.getter();
  v4 = v3;
  if (v2 == InstrumentDataIdentifier.rawValue.getter() && v4 == v5)
  {

    goto LABEL_14;
  }

  v8 = sub_242F06110();

  if ((v8 & 1) == 0)
  {
LABEL_17:
    v6 = 0;
    return v6 & 1;
  }

LABEL_14:
  v9 = InstrumentDataIdentifier.rawValue.getter();
  v11 = v10;
  if (v9 == InstrumentDataIdentifier.rawValue.getter() && v11 == v12)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_242F06110();
  }

  return v6 & 1;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO016TemperatureLabelF0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_2;
  }

  v3 = InstrumentDataIdentifier.rawValue.getter();
  v5 = v4;
  if (v3 == InstrumentDataIdentifier.rawValue.getter() && v5 == v6)
  {
  }

  else
  {
    v7 = sub_242F06110();

    if ((v7 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v8 = InstrumentDataIdentifier.rawValue.getter();
  v10 = v9;
  if (v8 == InstrumentDataIdentifier.rawValue.getter() && v10 == v11)
  {

    goto LABEL_11;
  }

  v12 = sub_242F06110();

  if ((v12 & 1) == 0)
  {
LABEL_2:
    v2 = 0;
    return v2 & 1;
  }

LABEL_11:
  v13 = InstrumentDataIdentifier.rawValue.getter();
  v15 = v14;
  if (v13 == InstrumentDataIdentifier.rawValue.getter() && v15 == v16)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_242F06110();
  }

  return v2 & 1;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO021EmphasizedEngineGaugeF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = InstrumentDataIdentifier.rawValue.getter();
  v8 = v7;
  if (v6 == InstrumentDataIdentifier.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_242F06110();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = InstrumentDataIdentifier.rawValue.getter();
  v13 = v12;
  if (v11 == InstrumentDataIdentifier.rawValue.getter() && v13 == v14)
  {

    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v16 = sub_242F06110();

  result = 0;
  if ((v16 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO013SideIndicatorF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v4 = InstrumentDataIdentifier.rawValue.getter();
  v6 = v5;
  if (v4 == InstrumentDataIdentifier.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_242F06110();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = InstrumentDataIdentifier.rawValue.getter();
  v11 = v10;
  if (v9 == InstrumentDataIdentifier.rawValue.getter() && v11 == v12)
  {

    return v2 ^ v3 ^ 1u;
  }

  v13 = sub_242F06110();

  if (v13)
  {
    return v2 ^ v3 ^ 1u;
  }

  return 0;
}

BOOL _s14CarPlayAssetUI14VisibilityRuleO2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v308[6] = *(a1 + 96);
  v308[7] = v3;
  v309 = *(a1 + 128);
  v4 = *(a1 + 48);
  v308[2] = *(a1 + 32);
  v308[3] = v4;
  v5 = *(a1 + 80);
  v308[4] = *(a1 + 64);
  v308[5] = v5;
  v6 = *(a1 + 16);
  v308[0] = *a1;
  v308[1] = v6;
  switch(sub_242CA35A4(v308))
  {
    case 1u:
      v141 = sub_242C55EDC(v308);
      v142 = *v141;
      v143 = *(v141 + 1);
      v144 = *(v141 + 2);
      v146 = *(v141 + 2);
      v145 = *(v141 + 3);
      v279 = *(v141 + 12);
      v277 = *(v141 + 13);
      v147 = a2[7];
      v305 = a2[6];
      v306 = v147;
      v307 = *(a2 + 16);
      v148 = a2[5];
      v303 = a2[4];
      v304 = v148;
      v149 = a2[3];
      v301 = a2[2];
      v302 = v149;
      v150 = a2[1];
      v299 = *a2;
      v300 = v150;
      if (sub_242CA35A4(&v299) != 1)
      {
        return 0;
      }

      v151 = sub_242C55EDC(&v299);
      v152 = *v151;
      v153 = *(v151 + 2);
      v155 = *(v151 + 2);
      v154 = *(v151 + 3);
      v272 = *(v151 + 12);
      v270 = *(v151 + 13);
      LOBYTE(v297[0]) = v142;
      BYTE1(v297[0]) = v143;
      BYTE2(v297[0]) = v144;
      LOWORD(v295[0]) = v152;
      BYTE2(v295[0]) = v153;
      if ((_s14CarPlayAssetUI14VisibilityRuleO018TickmarksSpeedUnitF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) == 0 || v146 != v155 || v145 != v154 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v279 != v272 || v277 != v270 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 2u:
      v105 = sub_242C55EDC(v308);
      v106 = a2[7];
      v305 = a2[6];
      v306 = v106;
      v307 = *(a2 + 16);
      v107 = a2[3];
      v301 = a2[2];
      v302 = v107;
      v108 = a2[5];
      v303 = a2[4];
      v304 = v108;
      v109 = a2[1];
      v299 = *a2;
      v300 = v109;
      if (sub_242CA35A4(&v299) == 2)
      {
        v110 = sub_242C55EDC(&v299);
        v111 = *(v105 + 1);
        v297[0] = *v105;
        v297[1] = v111;
        v298[0] = *(v105 + 2);
        *(v298 + 15) = *(v105 + 47);
        v112 = *(v110 + 1);
        v295[0] = *v110;
        v295[1] = v112;
        v296[0] = *(v110 + 2);
        *(v296 + 15) = *(v110 + 47);
        if (_s14CarPlayAssetUI14VisibilityRuleO012SpeedLimiterF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) != 0 && *(v105 + 14) == *(v110 + 14) && *(v105 + 15) == *(v110 + 15) && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && *(v105 + 24) == *(v110 + 24) && *(v105 + 25) == *(v110 + 25) && (sub_242F04B20())
        {
          return (sub_242F04B20() & 1) != 0;
        }
      }

      return 0;
    case 3u:
      v113 = sub_242C55EDC(v308);
      v114 = *v113;
      v115 = *(v113 + 1);
      v117 = *(v113 + 2);
      v116 = *(v113 + 3);
      v119 = *(v113 + 12);
      v118 = *(v113 + 13);
      v120 = a2[7];
      v305 = a2[6];
      v306 = v120;
      v307 = *(a2 + 16);
      v121 = a2[5];
      v303 = a2[4];
      v304 = v121;
      v122 = a2[3];
      v301 = a2[2];
      v302 = v122;
      v123 = a2[1];
      v299 = *a2;
      v300 = v123;
      if (sub_242CA35A4(&v299) != 3)
      {
        return 0;
      }

      v124 = sub_242C55EDC(&v299);
      if (v114 != *v124)
      {
        return 0;
      }

      v274 = v124[2];
      v273 = v124[3];
      v252 = v124[12];
      v251 = v124[13];
      v125 = *(v124 + 1);
      LOBYTE(v297[0]) = v115;
      LOBYTE(v295[0]) = v125;
      v126 = InstrumentDataIdentifier.rawValue.getter();
      v128 = v127;
      if (v126 == InstrumentDataIdentifier.rawValue.getter() && v128 == v129)
      {
      }

      else
      {
        v247 = sub_242F06110();

        if ((v247 & 1) == 0)
        {
          return 0;
        }
      }

      if (v117 == v274 && v116 == v273 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v119 == v252 && v118 == v251 && (sub_242F04B20() & 1) != 0)
      {
        return (sub_242F04B20() & 1) != 0;
      }

      return 0;
    case 4u:
      v56 = sub_242C55EDC(v308);
      v57 = *v56;
      v58 = v56[1];
      v59 = v56[2];
      v60 = v56[3];
      v61 = v56[12];
      v288 = v56[13];
      v62 = a2[3];
      v301 = a2[2];
      v302 = v62;
      v63 = a2[5];
      v303 = a2[4];
      v304 = v63;
      v64 = a2[7];
      v305 = a2[6];
      v306 = v64;
      v307 = *(a2 + 16);
      v65 = a2[1];
      v299 = *a2;
      v300 = v65;
      if (sub_242CA35A4(&v299) != 4)
      {
        return 0;
      }

      v66 = sub_242C55EDC(&v299);
      if (v57 != *v66)
      {
        return 0;
      }

      if (v58 != v66[1])
      {
        return 0;
      }

      if (v59 != v66[2])
      {
        return 0;
      }

      if (v60 != v66[3])
      {
        return 0;
      }

      v68 = v66[12];
      v67 = v66[13];
      return (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v61 == v68 && v288 == v67 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0;
    case 5u:
      v156 = sub_242C55EDC(v308);
      v157 = *v156;
      v159 = v156[2];
      v158 = v156[3];
      v291 = v156[12];
      v283 = v156[13];
      v160 = a2[3];
      v301 = a2[2];
      v302 = v160;
      v161 = a2[5];
      v303 = a2[4];
      v304 = v161;
      v162 = a2[7];
      v305 = a2[6];
      v306 = v162;
      v307 = *(a2 + 16);
      v163 = a2[1];
      v299 = *a2;
      v300 = v163;
      if (sub_242CA35A4(&v299) != 5)
      {
        return 0;
      }

      v164 = sub_242C55EDC(&v299);
      v165 = *v164;
      v167 = v164[2];
      v166 = v164[3];
      v265 = v164[12];
      v257 = v164[13];
      LOBYTE(v297[0]) = v157;
      LOBYTE(v295[0]) = v165;
      v168 = InstrumentDataIdentifier.rawValue.getter();
      v170 = v169;
      if (v168 == InstrumentDataIdentifier.rawValue.getter() && v170 == v171)
      {
      }

      else
      {
        v242 = sub_242F06110();

        if ((v242 & 1) == 0)
        {
          return 0;
        }
      }

      if (v159 == v167 && v158 == v166 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v291 == v265 && v283 == v257 && (sub_242F04B20() & 1) != 0)
      {
        return (sub_242F04B20() & 1) != 0;
      }

      return 0;
    case 6u:
      v190 = sub_242C55EDC(v308);
      v191 = *v190;
      v192 = *(v190 + 1);
      v193 = v190[2];
      v194 = v190[3];
      v293 = v190[12];
      v285 = v190[13];
      v195 = a2[7];
      v305 = a2[6];
      v306 = v195;
      v307 = *(a2 + 16);
      v196 = a2[5];
      v303 = a2[4];
      v304 = v196;
      v197 = a2[3];
      v301 = a2[2];
      v302 = v197;
      v198 = a2[1];
      v299 = *a2;
      v300 = v198;
      if (sub_242CA35A4(&v299) != 6)
      {
        return 0;
      }

      v199 = sub_242C55EDC(&v299);
      v200 = *v199;
      v201 = *(v199 + 1);
      v203 = v199[2];
      v202 = v199[3];
      v267 = v199[12];
      v259 = v199[13];
      LOBYTE(v297[0]) = v191;
      LOBYTE(v295[0]) = v200;
      v204 = InstrumentDataIdentifier.rawValue.getter();
      v206 = v205;
      if (v204 == InstrumentDataIdentifier.rawValue.getter() && v206 == v207)
      {

        if (v192 != v201)
        {
          return 0;
        }
      }

      else
      {
        v244 = sub_242F06110();

        if (v244 & 1) == 0 || ((v192 ^ v201))
        {
          return 0;
        }
      }

      if (v193 != v203 || v194 != v202 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v293 != v267 || v285 != v259 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 7u:
      v130 = sub_242C55EDC(v308);
      v131 = a2[7];
      v305 = a2[6];
      v306 = v131;
      v307 = *(a2 + 16);
      v132 = a2[3];
      v301 = a2[2];
      v302 = v132;
      v133 = a2[5];
      v303 = a2[4];
      v304 = v133;
      v134 = a2[1];
      v299 = *a2;
      v300 = v134;
      if (sub_242CA35A4(&v299) == 7)
      {
        v135 = sub_242C55EDC(&v299);
        v136 = *(v130 + 1);
        v137 = *(v130 + 3);
        v138 = *v135;
        v139 = *(v135 + 1);
        v140 = *(v135 + 3);
        LOBYTE(v297[0]) = *v130;
        *(v297 + 1) = v136;
        BYTE3(v297[0]) = v137;
        LOBYTE(v295[0]) = v138;
        *(v295 + 1) = v139;
        BYTE3(v295[0]) = v140;
        if (_s14CarPlayAssetUI14VisibilityRuleO016TemperatureLabelF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) != 0 && *(v130 + 2) == *(v135 + 2) && *(v130 + 3) == *(v135 + 3) && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && *(v130 + 12) == *(v135 + 12) && *(v130 + 13) == *(v135 + 13) && (sub_242F04B20())
        {
          return (sub_242F04B20() & 1) != 0;
        }
      }

      return 0;
    case 8u:
      v219 = sub_242C55EDC(v308);
      v220 = *v219;
      v221 = *(v219 + 1);
      v222 = *(v219 + 16);
      v224 = v219[6];
      v223 = v219[7];
      v294 = v219[16];
      v286 = v219[17];
      v225 = a2[7];
      v305 = a2[6];
      v306 = v225;
      v307 = *(a2 + 16);
      v226 = a2[5];
      v303 = a2[4];
      v304 = v226;
      v227 = a2[3];
      v301 = a2[2];
      v302 = v227;
      v228 = a2[1];
      v299 = *a2;
      v300 = v228;
      if (sub_242CA35A4(&v299) != 8)
      {
        return 0;
      }

      v229 = sub_242C55EDC(&v299);
      v230 = *v229;
      v231 = *(v229 + 1);
      v232 = *(v229 + 16);
      v234 = v229[6];
      v233 = v229[7];
      v268 = v229[16];
      v260 = v229[17];
      LOBYTE(v297[0]) = v220;
      LOBYTE(v295[0]) = v230;
      v235 = InstrumentDataIdentifier.rawValue.getter();
      v237 = v236;
      if (v235 == InstrumentDataIdentifier.rawValue.getter() && v237 == v238)
      {
      }

      else
      {
        v245 = sub_242F06110();

        if ((v245 & 1) == 0)
        {
          return 0;
        }
      }

      if (v221 == v231 && ((v222 ^ v232) & 1) == 0 && v224 == v234 && v223 == v233 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v294 == v268 && v286 == v260 && (sub_242F04B20() & 1) != 0)
      {
        return (sub_242F04B20() & 1) != 0;
      }

      return 0;
    case 9u:
      v87 = sub_242C55EDC(v308);
      v88 = *v87;
      v89 = *(v87 + 1);
      v90 = v87[2];
      v91 = v87[3];
      v290 = v87[12];
      v282 = v87[13];
      v92 = a2[7];
      v305 = a2[6];
      v306 = v92;
      v307 = *(a2 + 16);
      v93 = a2[5];
      v303 = a2[4];
      v304 = v93;
      v94 = a2[3];
      v301 = a2[2];
      v302 = v94;
      v95 = a2[1];
      v299 = *a2;
      v300 = v95;
      if (sub_242CA35A4(&v299) != 9)
      {
        return 0;
      }

      v96 = sub_242C55EDC(&v299);
      v97 = *v96;
      v98 = *(v96 + 1);
      v100 = v96[2];
      v99 = v96[3];
      v264 = v96[12];
      v256 = v96[13];
      LOBYTE(v297[0]) = v88;
      LOBYTE(v295[0]) = v97;
      v101 = InstrumentDataIdentifier.rawValue.getter();
      v103 = v102;
      if (v101 == InstrumentDataIdentifier.rawValue.getter() && v103 == v104)
      {

        if (v89 != v98)
        {
          return 0;
        }
      }

      else
      {
        v241 = sub_242F06110();

        if (v241 & 1) == 0 || ((v89 ^ v98))
        {
          return 0;
        }
      }

      if (v90 != v100 || v91 != v99 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v290 != v264 || v282 != v256 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 0xAu:
      v208 = sub_242C55EDC(v308);
      v209 = a2[7];
      v305 = a2[6];
      v306 = v209;
      v307 = *(a2 + 16);
      v210 = a2[3];
      v301 = a2[2];
      v302 = v210;
      v211 = a2[5];
      v303 = a2[4];
      v304 = v211;
      v212 = a2[1];
      v299 = *a2;
      v300 = v212;
      if (sub_242CA35A4(&v299) != 10)
      {
        return 0;
      }

      v213 = sub_242C55EDC(&v299);
      v214 = *(v208 + 2);
      v215 = *(v208 + 3);
      v216 = *v213;
      v217 = *(v213 + 2);
      v218 = *(v213 + 3);
      LOWORD(v297[0]) = *v208;
      BYTE2(v297[0]) = v214;
      BYTE3(v297[0]) = v215;
      LOWORD(v295[0]) = v216;
      BYTE2(v295[0]) = v217;
      BYTE3(v295[0]) = v218;
      if ((_s14CarPlayAssetUI14VisibilityRuleO021EmphasizedEngineGaugeF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) == 0 || *(v208 + 2) != *(v213 + 2) || *(v208 + 3) != *(v213 + 3) || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || *(v208 + 12) != *(v213 + 12) || *(v208 + 13) != *(v213 + 13) || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 0xBu:
      v41 = sub_242C55EDC(v308);
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = *(v41 + 2);
      v46 = *(v41 + 2);
      v45 = *(v41 + 3);
      v278 = *(v41 + 12);
      v276 = *(v41 + 13);
      v47 = a2[7];
      v305 = a2[6];
      v306 = v47;
      v307 = *(a2 + 16);
      v48 = a2[5];
      v303 = a2[4];
      v304 = v48;
      v49 = a2[3];
      v301 = a2[2];
      v302 = v49;
      v50 = a2[1];
      v299 = *a2;
      v300 = v50;
      if (sub_242CA35A4(&v299) == 11)
      {
        v51 = sub_242C55EDC(&v299);
        v52 = *v51;
        v53 = *(v51 + 2);
        v55 = *(v51 + 2);
        v54 = *(v51 + 3);
        v271 = *(v51 + 12);
        v269 = *(v51 + 13);
        LOBYTE(v297[0]) = v42;
        BYTE1(v297[0]) = v43;
        BYTE2(v297[0]) = v44;
        LOWORD(v295[0]) = v52;
        BYTE2(v295[0]) = v53;
        if (_s14CarPlayAssetUI14VisibilityRuleO013SideIndicatorF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) != 0 && v46 == v55 && v45 == v54 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v278 == v271 && v276 == v269 && (sub_242F04B20())
        {
          return (sub_242F04B20() & 1) != 0;
        }
      }

      return 0;
    case 0xCu:
      v69 = sub_242C55EDC(v308);
      v70 = *v69;
      v71 = *(v69 + 1);
      v72 = v69[2];
      v73 = v69[3];
      v289 = v69[12];
      v281 = v69[13];
      v74 = a2[7];
      v305 = a2[6];
      v306 = v74;
      v307 = *(a2 + 16);
      v75 = a2[5];
      v303 = a2[4];
      v304 = v75;
      v76 = a2[3];
      v301 = a2[2];
      v302 = v76;
      v77 = a2[1];
      v299 = *a2;
      v300 = v77;
      if (sub_242CA35A4(&v299) != 12)
      {
        return 0;
      }

      v78 = sub_242C55EDC(&v299);
      v79 = *v78;
      v80 = *(v78 + 1);
      v82 = v78[2];
      v81 = v78[3];
      v263 = v78[12];
      v255 = v78[13];
      LOBYTE(v297[0]) = v70;
      LOBYTE(v295[0]) = v79;
      v83 = InstrumentDataIdentifier.rawValue.getter();
      v85 = v84;
      if (v83 == InstrumentDataIdentifier.rawValue.getter() && v85 == v86)
      {

        if (v71 != v80)
        {
          return 0;
        }
      }

      else
      {
        v240 = sub_242F06110();

        if (v240 & 1) == 0 || ((v71 ^ v80))
        {
          return 0;
        }
      }

      if (v72 != v82 || v73 != v81 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v289 != v263 || v281 != v255 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 0xDu:
      v172 = sub_242C55EDC(v308);
      v173 = *v172;
      v174 = *(v172 + 1);
      v175 = v172[2];
      v176 = v172[3];
      v292 = v172[12];
      v284 = v172[13];
      v177 = a2[7];
      v305 = a2[6];
      v306 = v177;
      v307 = *(a2 + 16);
      v178 = a2[5];
      v303 = a2[4];
      v304 = v178;
      v179 = a2[3];
      v301 = a2[2];
      v302 = v179;
      v180 = a2[1];
      v299 = *a2;
      v300 = v180;
      if (sub_242CA35A4(&v299) != 13)
      {
        return 0;
      }

      v181 = sub_242C55EDC(&v299);
      v182 = *v181;
      v183 = *(v181 + 1);
      v185 = v181[2];
      v184 = v181[3];
      v266 = v181[12];
      v258 = v181[13];
      LOBYTE(v297[0]) = v173;
      LOBYTE(v295[0]) = v182;
      v186 = InstrumentDataIdentifier.rawValue.getter();
      v188 = v187;
      if (v186 == InstrumentDataIdentifier.rawValue.getter() && v188 == v189)
      {

        if (v174 != v183)
        {
          return 0;
        }
      }

      else
      {
        v243 = sub_242F06110();

        if (v243 & 1) == 0 || ((v174 ^ v183))
        {
          return 0;
        }
      }

      if (v175 != v185 || v176 != v184 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v292 != v266 || v284 != v258 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 0xEu:
      v23 = sub_242C55EDC(v308);
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = v23[4];
      v27 = v23[5];
      v287 = v23[14];
      v280 = v23[15];
      v28 = a2[7];
      v305 = a2[6];
      v306 = v28;
      v307 = *(a2 + 16);
      v29 = a2[5];
      v303 = a2[4];
      v304 = v29;
      v30 = a2[3];
      v301 = a2[2];
      v302 = v30;
      v31 = a2[1];
      v299 = *a2;
      v300 = v31;
      if (sub_242CA35A4(&v299) != 14)
      {
        return 0;
      }

      v32 = sub_242C55EDC(&v299);
      v33 = *v32;
      v34 = *(v32 + 1);
      v36 = v32[4];
      v35 = v32[5];
      v262 = v32[14];
      v254 = v32[15];
      LOBYTE(v297[0]) = v24;
      LOBYTE(v295[0]) = v33;
      v37 = InstrumentDataIdentifier.rawValue.getter();
      v39 = v38;
      if (v37 == InstrumentDataIdentifier.rawValue.getter() && v39 == v40)
      {
      }

      else
      {
        v239 = sub_242F06110();

        if ((v239 & 1) == 0)
        {
          return 0;
        }
      }

      if (v25 != v34 || v26 != v36 || v27 != v35 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v287 != v262 || v280 != v254 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    default:
      v7 = sub_242C55EDC(v308);
      v8 = *v7;
      v9 = *(v7 + 1);
      v10 = *(v7 + 2);
      v11 = *(v7 + 3);
      v12 = *(v7 + 13);
      v275 = *(v7 + 12);
      v13 = a2[7];
      v305 = a2[6];
      v306 = v13;
      v307 = *(a2 + 16);
      v14 = a2[5];
      v303 = a2[4];
      v304 = v14;
      v15 = a2[3];
      v301 = a2[2];
      v302 = v15;
      v16 = a2[1];
      v299 = *a2;
      v300 = v16;
      if (sub_242CA35A4(&v299))
      {
        return 0;
      }

      v17 = sub_242C55EDC(&v299);
      if (v8 != *v17)
      {
        return 0;
      }

      v261 = v17[2];
      v253 = v17[3];
      v250 = v17[12];
      v249 = v17[13];
      v18 = *(v17 + 1);
      LOBYTE(v297[0]) = v9;
      LOBYTE(v295[0]) = v18;
      v19 = InstrumentDataIdentifier.rawValue.getter();
      v21 = v20;
      if (v19 == InstrumentDataIdentifier.rawValue.getter() && v21 == v22)
      {
      }

      else
      {
        v248 = sub_242F06110();

        if ((v248 & 1) == 0)
        {
          return 0;
        }
      }

      return v10 == v261 && v11 == v253 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v275 == v250 && v12 == v249 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0;
  }
}