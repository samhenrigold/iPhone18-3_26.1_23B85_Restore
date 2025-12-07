uint64_t sub_272B80BEC()
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80C30(char a1)
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80C78(uint64_t a1)
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80CE8(uint64_t a1)
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80D28(uint64_t a1, uint64_t a2)
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80D6C(uint64_t a1, char a2)
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t WK2_WeatherAlertSummary.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WK2_WeatherAlertSummary.id.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void WK2_WeatherAlertSummary.attributionUrl.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0xBu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 10);
  v4 = v2 + 10;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + v4);
  if (v5)
  {
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.countryCode.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0xDu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 12);
  v4 = v2 + 12;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + v4);
  if (v5)
  {
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.description.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0xFu)
  {
    v5 = 0;
LABEL_6:
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_9;
  }

  v3 = __OFADD__(v2, 14);
  v4 = v2 + 14;
  if (!v3)
  {
    v5 = *(v1 + v4);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.token.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0x11u)
  {
    v5 = 0;
LABEL_6:
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_9;
  }

  v3 = __OFADD__(v2, 16);
  v4 = v2 + 16;
  if (!v3)
  {
    v5 = *(v1 + v4);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.effectiveTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x13u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 18);
    v4 = v2 + 18;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.expireTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x15u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 20);
    v4 = v2 + 20;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.issuedTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x17u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 22);
    v4 = v2 + 22;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.eventOnsetTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x19u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 24);
  v4 = v2 + 24;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_WeatherAlertSummary.eventEndTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x1Bu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 26);
  v4 = v2 + 26;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_WeatherAlertSummary.detailsUrl.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0x1Du)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 28);
  v4 = v2 + 28;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + v4);
  if (v5)
  {
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.phenomenon.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0x1Fu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 30);
  v4 = v2 + 30;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + v4);
  if (v5)
  {
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.severity.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x21u)
  {
LABEL_6:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 32);
  v5 = v3 + 32;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = *(v1 + v5);
  if (!v6 || !__OFADD__(v6, v2))
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void WK2_WeatherAlertSummary.significance.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_103();
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + v4) < 0x23u)
  {
LABEL_9:
    v9 = 0;
LABEL_10:
    *a1 = v9;
    return;
  }

  v5 = __OFADD__(v4, 34);
  v6 = v4 + 34;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_9;
  }

  v5 = __OFADD__(v7, v3);
  v8 = v7 + v3;
  if (!v5)
  {
    WK2_AlertSignificance.init(rawValue:)(*(v2 + v8));
    v9 = v10;
    if (v10 == 13)
    {
      v9 = 0;
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void WK2_WeatherAlertSummary.source.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0x25u)
  {
    v5 = 0;
LABEL_6:
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_9;
  }

  v3 = __OFADD__(v2, 36);
  v4 = v2 + 36;
  if (!v3)
  {
    v5 = *(v1 + v4);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.eventSource.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0x27u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 38);
  v4 = v2 + 38;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + v4);
  if (v5)
  {
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.urgency.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x29u)
  {
LABEL_6:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 40);
  v5 = v3 + 40;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = *(v1 + v5);
  if (!v6 || !__OFADD__(v6, v2))
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void WK2_WeatherAlertSummary.certainty.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x2Bu)
  {
LABEL_6:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 42);
  v5 = v3 + 42;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = *(v1 + v5);
  if (!v6 || !__OFADD__(v6, v2))
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void WK2_WeatherAlertSummary.importance.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x2Du)
  {
LABEL_6:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 44);
  v5 = v3 + 44;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = *(v1 + v5);
  if (!v6 || !__OFADD__(v6, v2))
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

uint64_t WK2_WeatherAlertSummary.hasResponses.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0x2Fu)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 46);
    v6 = v5 + 46;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

void WK2_WeatherAlertSummary.responsesCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Fu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 46);
  v4 = v2 + 46;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

WeatherData::WK2_AlertResponseType_optional __swiftcall WK2_WeatherAlertSummary.responses(at:)(Swift::Int32 at)
{
  v2 = v1;
  OUTLINED_FUNCTION_103();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v4 + v6) < 0x2Fu)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v7 = __OFADD__(v6, 46);
  v8 = v6 + 46;
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v4 + v8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v7 = __OFADD__(v9, v5);
  v10 = v9 + v5;
  if (v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(v4 + v10);
  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = __OFADD__(v12, 4);
  v13 = v12 + 4;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = __OFADD__(v13, v3);
  v14 = v13 + v3;
  if (v7)
  {
LABEL_17:
    __break(1u);
    return v3;
  }

  LOBYTE(v3) = WK2_AlertResponseType.init(rawValue:)(*(v4 + v14));
  v15 = v17;
LABEL_11:
  *v2 = v15;
  return v3;
}

void WK2_WeatherAlertSummary.area.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 0x31u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 48);
  v4 = v2 + 48;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + v4);
  if (v5)
  {
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

uint64_t WK2_WeatherAlertSummary.hasEventTexts.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0x33u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 50);
    v6 = v5 + 50;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

void WK2_WeatherAlertSummary.eventTextsCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x33u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 50);
  v4 = v2 + 50;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t WK2_WeatherAlertSummary.eventTexts(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 0x33u)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 50);
  v12 = v10 + 50;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t static WK2_WeatherAlertSummary.startWeatherAlertSummary(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 192)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 192;
    *(v2 + 48) = 0;
    *(v2 + 56) = 192;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_WeatherAlertSummary.add(id:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B83D34();
}

void static WK2_WeatherAlertSummary.add(areaId:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B83E48();
}

void static WK2_WeatherAlertSummary.add(areaName:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 8)
    {
      LOWORD(v18) = 8;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(attributionUrl:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 10;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0xA)
    {
      LOWORD(v18) = 10;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(countryCode:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 12;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0xC)
    {
      LOWORD(v18) = 12;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(description:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 14;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0xE)
    {
      LOWORD(v18) = 14;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(token:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 16;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x10)
    {
      LOWORD(v18) = 16;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(effectiveTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_21:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = v3[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = OUTLINED_FUNCTION_6(v1, v6);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, v3[3]);
  }

  OUTLINED_FUNCTION_26();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_43();
  *(v11 - 4) = v4;
  v3[2] = v0;
  OUTLINED_FUNCTION_24_1();
  if (!v5 & v12)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 18;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x12)
    {
      LOWORD(v17) = 18;
    }

    *(v16 + 64) = v17;
    goto LABEL_21;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(expireTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_21:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = v3[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = OUTLINED_FUNCTION_6(v1, v6);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, v3[3]);
  }

  OUTLINED_FUNCTION_26();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_43();
  *(v11 - 4) = v4;
  v3[2] = v0;
  OUTLINED_FUNCTION_24_1();
  if (!v5 & v12)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 20;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x14)
    {
      LOWORD(v17) = 20;
    }

    *(v16 + 64) = v17;
    goto LABEL_21;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(issuedTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
LABEL_21:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v3[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = v3[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = OUTLINED_FUNCTION_6(v1, v6);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, v3[3]);
  }

  OUTLINED_FUNCTION_26();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_43();
  *(v11 - 4) = v4;
  v3[2] = v0;
  OUTLINED_FUNCTION_24_1();
  if (!v5 & v12)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 22;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x16)
    {
      LOWORD(v17) = 22;
    }

    *(v16 + 64) = v17;
    goto LABEL_21;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(eventOnsetTime:_:)()
{
  OUTLINED_FUNCTION_219();
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30();
  if (v6 ^ v7 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v8))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = OUTLINED_FUNCTION_6(v4, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_43();
  *(v11 - 4) = v1;
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_24_1();
  if (!v5 & v12)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 24;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x18)
    {
      LOWORD(v17) = 24;
    }

    *(v16 + 64) = v17;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(eventEndTime:_:)()
{
  OUTLINED_FUNCTION_219();
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30();
  if (v6 ^ v7 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v8))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = OUTLINED_FUNCTION_6(v4, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_43();
  *(v11 - 4) = v1;
  *(v0 + 16) = v2;
  OUTLINED_FUNCTION_24_1();
  if (!v5 & v12)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 26;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x1A)
    {
      LOWORD(v17) = 26;
    }

    *(v16 + 64) = v17;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(detailsUrl:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 28;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x1C)
    {
      LOWORD(v18) = 28;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(phenomenon:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 30;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x1E)
    {
      LOWORD(v18) = 30;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(severity:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_38_1();
    v8 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v8);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v10 & 1) == 0)
  {
    if (*(v9 + 32))
    {
      OUTLINED_FUNCTION_41(v9);
      *(v11 + 4) = 32;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v13 <= 0x20)
    {
      LOWORD(v13) = 32;
    }

    *(v12 + 64) = v13;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(significance:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_38_1();
    v8 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v8);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v10 & 1) == 0)
  {
    if (*(v9 + 32))
    {
      OUTLINED_FUNCTION_41(v9);
      *(v11 + 4) = 34;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v13 <= 0x22)
    {
      LOWORD(v13) = 34;
    }

    *(v12 + 64) = v13;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(source:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 36;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x24)
    {
      LOWORD(v18) = 36;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(eventSource:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 38;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x26)
    {
      LOWORD(v18) = 38;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(urgency:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_38_1();
    v8 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v8);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v10 & 1) == 0)
  {
    if (*(v9 + 32))
    {
      OUTLINED_FUNCTION_41(v9);
      *(v11 + 4) = 40;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v13 <= 0x28)
    {
      LOWORD(v13) = 40;
    }

    *(v12 + 64) = v13;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(certainty:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_38_1();
    v8 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v8);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v10 & 1) == 0)
  {
    if (*(v9 + 32))
    {
      OUTLINED_FUNCTION_41(v9);
      *(v11 + 4) = 42;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v13 <= 0x2A)
    {
      LOWORD(v13) = 42;
    }

    *(v12 + 64) = v13;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(importance:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_38_1();
    v8 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v8);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v10 & 1) == 0)
  {
    if (*(v9 + 32))
    {
      OUTLINED_FUNCTION_41(v9);
      *(v11 + 4) = 44;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v13 <= 0x2C)
    {
      LOWORD(v13) = 44;
    }

    *(v12 + 64) = v13;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.addVectorOf(responses:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 46;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x2E)
    {
      LOWORD(v18) = 46;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(area:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 48;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x30)
    {
      LOWORD(v18) = 48;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.addVectorOf(eventTexts:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 50;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x32)
    {
      LOWORD(v18) = 50;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t static WK2_WeatherAlertSummary.endWeatherAlertSummary(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_WeatherAlertSummary.createWeatherAlertSummary(_:idOffset:areaIdOffset:areaNameOffset:attributionUrlOffset:countryCodeOffset:descriptionOffset:tokenOffset:effectiveTime:expireTime:issuedTime:eventOnsetTime:eventEndTime:detailsUrlOffset:phenomenonOffset:severity:significance:sourceOffset:eventSourceOffset:urgency:certainty:importance:responsesVectorOffset:areaOffset:eventTextsVectorOffset:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8, uint64_t a9, uint64_t a10, int *a11, int *a12, uint64_t a13, uint64_t a14, uint64_t a15, int *a16, int *a17, int *a18)
{
  v19 = *a8;
  v20 = *a11;
  v21 = *a12;
  v22 = *a16;
  v23 = *a17;
  v24 = *a18;
  at = static WK2_WeatherAlertSummary.startWeatherAlertSummary(_:)(a1);
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(id:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(areaId:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(areaName:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(attributionUrl:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(countryCode:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(description:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(token:_:)();
  static WK2_WeatherAlertSummary.add(effectiveTime:_:)();
  static WK2_WeatherAlertSummary.add(expireTime:_:)();
  static WK2_WeatherAlertSummary.add(issuedTime:_:)();
  static WK2_WeatherAlertSummary.add(eventOnsetTime:_:)();
  static WK2_WeatherAlertSummary.add(eventEndTime:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(detailsUrl:_:)();
  OUTLINED_FUNCTION_19_2(v19);
  static WK2_WeatherAlertSummary.add(phenomenon:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(severity:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(significance:_:)();
  OUTLINED_FUNCTION_19_2(v20);
  static WK2_WeatherAlertSummary.add(source:_:)();
  OUTLINED_FUNCTION_19_2(v21);
  static WK2_WeatherAlertSummary.add(eventSource:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(urgency:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(certainty:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(importance:_:)();
  OUTLINED_FUNCTION_19_2(v22);
  static WK2_WeatherAlertSummary.addVectorOf(responses:_:)();
  OUTLINED_FUNCTION_19_2(v23);
  static WK2_WeatherAlertSummary.add(area:_:)();
  OUTLINED_FUNCTION_19_2(v24);
  static WK2_WeatherAlertSummary.addVectorOf(eventTexts:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

void static WK2_WeatherAlertSummary.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D774(4, 25705, 0xE200000000000000, 1);
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_91();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_91();
    sub_272B5D6A8();
    v3 = __src[2];
    if (__src[2] >= 19)
    {
      OUTLINED_FUNCTION_51_1();
      if (v5 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *__dst = MEMORY[0x277D84C58];
        v8 = &qword_2808A3160;
        v9 = &unk_272B87CC0;
        v3 = v4;
        goto LABEL_13;
      }

      v66 = v4;
      OUTLINED_FUNCTION_173(v4);
      v67 = v3;
      OUTLINED_FUNCTION_34();
      if (*(v6 + v66))
      {
        OUTLINED_FUNCTION_13();
        if (v7 == 1)
        {
LABEL_11:
          *__dst = MEMORY[0x277D84CC0];
          v8 = &qword_2808A3170;
          v9 = &unk_272B89910;
LABEL_13:
          __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
          v10 = sub_272B87730();
          v12 = v11;
          sub_272B5C86C();
          swift_allocError();
          *v13 = v3;
          *(v13 + 8) = v10;
          *(v13 + 16) = v12;
LABEL_14:
          v14 = *&__dst[32];
          v15 = *&__dst[16];
          *(v13 + 24) = *__dst;
          *(v13 + 40) = v15;
          *(v13 + 56) = v14;
          *(v13 + 64) = 0;
          swift_willThrow();
LABEL_3:
          memcpy(__dst, __src, 0x65uLL);
          sub_272B522C4(__dst);
          return;
        }

        v16 = OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_32(v16);
      }

      if (v3 > 0x14)
      {
        v3 = __src[1] + 20;
        OUTLINED_FUNCTION_51_1();
        if (v5)
        {
          OUTLINED_FUNCTION_20();
          if (v17)
          {
            goto LABEL_77;
          }
        }

        v18 = OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_173(v18);
        OUTLINED_FUNCTION_34();
        if (*(v19 + v3))
        {
          OUTLINED_FUNCTION_13();
          if (v20 == 1)
          {
            goto LABEL_11;
          }

          v21 = OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_32(v21);
        }

        if (v67 > 0x16)
        {
          v3 = __src[1] + 22;
          OUTLINED_FUNCTION_51_1();
          if (v5)
          {
            OUTLINED_FUNCTION_20();
            if (v22)
            {
              goto LABEL_77;
            }
          }

          v23 = OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_173(v23);
          OUTLINED_FUNCTION_34();
          if (*(v24 + v3))
          {
            OUTLINED_FUNCTION_13();
            if (v25 == 1)
            {
              goto LABEL_11;
            }

            v26 = OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_32(v26);
          }

          if (v67 > 0x18)
          {
            v3 = __src[1] + 24;
            OUTLINED_FUNCTION_51_1();
            if (v5)
            {
              OUTLINED_FUNCTION_20();
              if (v27)
              {
                goto LABEL_77;
              }
            }

            v28 = OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_173(v28);
            OUTLINED_FUNCTION_34();
            if (*(v29 + v3))
            {
              OUTLINED_FUNCTION_13();
              if (v30 == 1)
              {
                goto LABEL_11;
              }

              v31 = OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_32(v31);
            }

            if (v67 > 0x1A)
            {
              v3 = __src[1] + 26;
              OUTLINED_FUNCTION_51_1();
              if (v5)
              {
                OUTLINED_FUNCTION_20();
                if (v32)
                {
                  goto LABEL_77;
                }
              }

              v33 = OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_173(v33);
              OUTLINED_FUNCTION_34();
              if (*(v34 + v3))
              {
                OUTLINED_FUNCTION_13();
                if (v35 == 1)
                {
                  goto LABEL_11;
                }

                v36 = OUTLINED_FUNCTION_15_1();
                OUTLINED_FUNCTION_32(v36);
              }
            }
          }
        }
      }

      v3 = v67;
    }

    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    v68 = v3;
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    if (v3 < 33)
    {
      goto LABEL_57;
    }

    v3 = __src[1] + 32;
    OUTLINED_FUNCTION_47_1();
    if (!v5 || (OUTLINED_FUNCTION_20(), (v37 & 1) == 0))
    {
      OUTLINED_FUNCTION_173(v3);
      OUTLINED_FUNCTION_34();
      v39 = *(v38 + v3);
      if (v39)
      {
        OUTLINED_FUNCTION_53_0(v39, v66, v68, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
      }

      if (v68 <= 0x22)
      {
LABEL_57:
        OUTLINED_FUNCTION_91();
        sub_272B5D6A8();
        OUTLINED_FUNCTION_86();
        sub_272B5D6A8();
        if (v68 >= 41)
        {
          v43 = __src[1] + 40;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0();
            if (v44)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34();
          v46 = *(v45 + v43);
          if (v46)
          {
            OUTLINED_FUNCTION_35_1(v46, v66, v68, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }

          if (v68 <= 0x2A)
          {
            goto LABEL_75;
          }

          v43 = __src[1] + 42;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0();
            if (v47)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34();
          v49 = *(v48 + v43);
          if (v49)
          {
            OUTLINED_FUNCTION_35_1(v49, v66, v68, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }

          if (v68 <= 0x2C)
          {
            goto LABEL_75;
          }

          v43 = __src[1] + 44;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0();
            if (v50)
            {
LABEL_78:
              *__dst = MEMORY[0x277D84C58];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
              v63 = sub_272B87730();
              v65 = v64;
              sub_272B5C86C();
              swift_allocError();
              *v13 = v43;
              *(v13 + 8) = v63;
              *(v13 + 16) = v65;
              goto LABEL_14;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34();
          v52 = *(v51 + v43);
          if (v52)
          {
            OUTLINED_FUNCTION_35_1(v52, v66, v68, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }
        }

LABEL_75:
        OUTLINED_FUNCTION_91();
        sub_272B5D7A0(v53, v54, v55, v56, v57, v58);
        OUTLINED_FUNCTION_86();
        sub_272B5D6A8();
        OUTLINED_FUNCTION_86();
        sub_272B5D948(v59, v60, v61, v62);
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_3;
      }

      v3 = __src[1] + 34;
      OUTLINED_FUNCTION_47_1();
      if (!v5 || (OUTLINED_FUNCTION_20(), (v40 & 1) == 0))
      {
        OUTLINED_FUNCTION_173(v3);
        OUTLINED_FUNCTION_34();
        v42 = *(v41 + v3);
        if (v42)
        {
          OUTLINED_FUNCTION_53_0(v42, v66, v68, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
        }

        goto LABEL_57;
      }
    }

LABEL_77:
    *__dst = MEMORY[0x277D84C58];
    v8 = &qword_2808A3160;
    v9 = &unk_272B87CC0;
    goto LABEL_13;
  }
}

void WK2_EventText.language.getter()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 5u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 4);
  v4 = v2 + 4;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + v4);
  if (v5)
  {
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void _s11WeatherData04WK2_A12AlertSummaryV6areaIdSSSgvg_0()
{
  OUTLINED_FUNCTION_65();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + v2) < 7u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 6);
  v4 = v2 + 6;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v1 + v4);
  if (v5)
  {
    if (!__OFADD__(v5, v0))
    {
      Table.directString(at:)(v5 + v0);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

unint64_t static WK2_EventText.startEventText(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 16)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 16;
    *(v2 + 48) = 0;
    *(v2 + 56) = 16;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_272B83D34()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 4)
    {
      LOWORD(v18) = 4;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void sub_272B83E48()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v13)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_57(v14);
      *(v16 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 6)
    {
      LOWORD(v18) = 6;
    }

    *(v17 + 64) = v18;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_EventText.createEventText(_:languageOffset:messageOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = static WK2_EventText.startEventText(_:)(v2);
  static WK2_WeatherAlertSummary.add(id:_:)();
  static WK2_WeatherAlertSummary.add(areaId:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v3);
  OUTLINED_FUNCTION_218();
}

void static WK2_EventText.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

unint64_t sub_272B840AC()
{
  result = qword_2808A3428;
  if (!qword_2808A3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3428);
  }

  return result;
}

unint64_t sub_272B84104()
{
  result = qword_2808A3430;
  if (!qword_2808A3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3430);
  }

  return result;
}

unint64_t sub_272B8415C()
{
  result = qword_2808A3438;
  if (!qword_2808A3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3438);
  }

  return result;
}

unint64_t sub_272B841B4()
{
  result = qword_2808A3440;
  if (!qword_2808A3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3440);
  }

  return result;
}

unint64_t sub_272B8420C()
{
  result = qword_2808A3448;
  if (!qword_2808A3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3448);
  }

  return result;
}

unint64_t sub_272B84264()
{
  result = qword_2808A3450;
  if (!qword_2808A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3450);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_AlertSignificance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_AlertSignificance(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_272B84430(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WK2_AlertImportance(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WK2_AlertResponseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_AlertResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void static WK2_EventText.add(language:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_WeatherAlertSummary.add(id:_:)();
}

void static WK2_EventText.add(message:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_WeatherAlertSummary.add(areaId:_:)();
}

void OUTLINED_FUNCTION_39_1()
{
  v3 = *(v0 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, v1, v3);
}

uint64_t WK2_WeatherAlertCollection.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void sub_272B84900(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D774(4, 25705, 0xE200000000000000, 1);
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_91();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_91();
    sub_272B5D6A8();
    v3 = __src[2];
    if (__src[2] >= 19)
    {
      OUTLINED_FUNCTION_51_1();
      if (v5 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *__dst = MEMORY[0x277D84C58];
        v8 = &qword_2808A3160;
        v9 = &unk_272B87CC0;
        v3 = v4;
        goto LABEL_13;
      }

      v82 = v4;
      OUTLINED_FUNCTION_173(v4);
      v83 = v3;
      OUTLINED_FUNCTION_34();
      if (*(v6 + v82))
      {
        OUTLINED_FUNCTION_13();
        if (v7 == 1)
        {
LABEL_11:
          *__dst = MEMORY[0x277D84CC0];
          v8 = &qword_2808A3170;
          v9 = &unk_272B89910;
LABEL_13:
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
          v13 = OUTLINED_FUNCTION_26_2(v10, v11, v12);
          v15 = v14;
          v16 = sub_272B5C86C();
          v17 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v16);
          *v18 = v3;
          v18[1] = v13;
          v18[2] = v15;
LABEL_14:
          OUTLINED_FUNCTION_6_1(v17, v18, v19, v20, v21, v22, v23, v24, v25, v82, v83, *__dst, v26, *&__dst[16]);
          *(v27 + 64) = 0;
          swift_willThrow();
LABEL_3:
          memcpy(__dst, __src, 0x65uLL);
          sub_272B522C4(__dst);
          return;
        }

        v28 = OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_32(v28);
      }

      if (v3 > 0x14)
      {
        v3 = __src[1] + 20;
        OUTLINED_FUNCTION_51_1();
        if (v5)
        {
          OUTLINED_FUNCTION_20();
          if (v29)
          {
            goto LABEL_77;
          }
        }

        v30 = OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_173(v30);
        OUTLINED_FUNCTION_34();
        if (*(v31 + v3))
        {
          OUTLINED_FUNCTION_13();
          if (v32 == 1)
          {
            goto LABEL_11;
          }

          v33 = OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_32(v33);
        }

        if (v83 > 0x16)
        {
          v3 = __src[1] + 22;
          OUTLINED_FUNCTION_51_1();
          if (v5)
          {
            OUTLINED_FUNCTION_20();
            if (v34)
            {
              goto LABEL_77;
            }
          }

          v35 = OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_173(v35);
          OUTLINED_FUNCTION_34();
          if (*(v36 + v3))
          {
            OUTLINED_FUNCTION_13();
            if (v37 == 1)
            {
              goto LABEL_11;
            }

            v38 = OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_32(v38);
          }

          if (v83 > 0x18)
          {
            v3 = __src[1] + 24;
            OUTLINED_FUNCTION_51_1();
            if (v5)
            {
              OUTLINED_FUNCTION_20();
              if (v39)
              {
                goto LABEL_77;
              }
            }

            v40 = OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_173(v40);
            OUTLINED_FUNCTION_34();
            if (*(v41 + v3))
            {
              OUTLINED_FUNCTION_13();
              if (v42 == 1)
              {
                goto LABEL_11;
              }

              v43 = OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_32(v43);
            }

            if (v83 > 0x1A)
            {
              v3 = __src[1] + 26;
              OUTLINED_FUNCTION_51_1();
              if (v5)
              {
                OUTLINED_FUNCTION_20();
                if (v44)
                {
                  goto LABEL_77;
                }
              }

              v45 = OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_173(v45);
              OUTLINED_FUNCTION_34();
              if (*(v46 + v3))
              {
                OUTLINED_FUNCTION_13();
                if (v47 == 1)
                {
                  goto LABEL_11;
                }

                v48 = OUTLINED_FUNCTION_15_1();
                OUTLINED_FUNCTION_32(v48);
              }
            }
          }
        }
      }

      v3 = v83;
    }

    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    v83 = v3;
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    if (v3 < 33)
    {
      goto LABEL_57;
    }

    v3 = __src[1] + 32;
    OUTLINED_FUNCTION_47_1();
    if (!v5 || (OUTLINED_FUNCTION_20(), (v49 & 1) == 0))
    {
      OUTLINED_FUNCTION_173(v3);
      OUTLINED_FUNCTION_34();
      v51 = *(v50 + v3);
      if (v51)
      {
        OUTLINED_FUNCTION_53_0(v51, v82, v83, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
      }

      if (v83 <= 0x22)
      {
LABEL_57:
        OUTLINED_FUNCTION_91();
        sub_272B5D6A8();
        OUTLINED_FUNCTION_86();
        sub_272B5D6A8();
        if (v83 >= 41)
        {
          v55 = __src[1] + 40;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0();
            if (v56)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34();
          v58 = *(v57 + v55);
          if (v58)
          {
            OUTLINED_FUNCTION_35_1(v58, v82, v83, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }

          if (v83 <= 0x2A)
          {
            goto LABEL_75;
          }

          v55 = __src[1] + 42;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0();
            if (v59)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34();
          v61 = *(v60 + v55);
          if (v61)
          {
            OUTLINED_FUNCTION_35_1(v61, v82, v83, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }

          if (v83 <= 0x2C)
          {
            goto LABEL_75;
          }

          v55 = __src[1] + 44;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0();
            if (v62)
            {
LABEL_78:
              *__dst = MEMORY[0x277D84C58];
              v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
              v78 = OUTLINED_FUNCTION_26_2(v75, v76, v77);
              v80 = v79;
              v81 = sub_272B5C86C();
              v17 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v81);
              *v18 = v55;
              v18[1] = v78;
              v18[2] = v80;
              goto LABEL_14;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34();
          v64 = *(v63 + v55);
          if (v64)
          {
            OUTLINED_FUNCTION_35_1(v64, v82, v83, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }
        }

LABEL_75:
        OUTLINED_FUNCTION_91();
        sub_272B5D7A0(v65, v66, v67, v68, v69, v70);
        OUTLINED_FUNCTION_86();
        sub_272B5D6A8();
        OUTLINED_FUNCTION_86();
        sub_272B5D948(v71, v72, v73, v74);
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_3;
      }

      v3 = __src[1] + 34;
      OUTLINED_FUNCTION_47_1();
      if (!v5 || (OUTLINED_FUNCTION_20(), (v52 & 1) == 0))
      {
        OUTLINED_FUNCTION_173(v3);
        OUTLINED_FUNCTION_34();
        v54 = *(v53 + v3);
        if (v54)
        {
          OUTLINED_FUNCTION_53_0(v54, v82, v83, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
        }

        goto LABEL_57;
      }
    }

LABEL_77:
    *__dst = MEMORY[0x277D84C58];
    v8 = &qword_2808A3160;
    v9 = &unk_272B87CC0;
    goto LABEL_13;
  }
}

uint64_t WK2_WeatherAlertCollection.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void WK2_WeatherAlertCollection.detailsUrl.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v2 + v5) < 7u)
  {
    return;
  }

  v4 = __OFADD__(v5, 6);
  v6 = v5 + 6;
  if (v4)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v2 + v6);
  if (v7)
  {
    if (!__OFADD__(v7, v1))
    {
      Table.directString(at:)(v7 + v1);
      return;
    }

    goto LABEL_10;
  }
}

BOOL WK2_WeatherAlertCollection.hasAlerts.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_WeatherAlertCollection.alerts(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 9u)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 8);
  v12 = v10 + 8;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

void static WK2_WeatherAlertCollection.add(metadata:_:)(int *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    return;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v8))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  *(v1 + 16) = v3;
  if (HIDWORD(v3))
  {
    goto LABEL_29;
  }

  if (v3 - v4 == -4 && *(v1 + 57) != 1)
  {
    return;
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v3, *(v1 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v14 & v13)
  {
LABEL_30:
    __break(1u);
  }

  v15 = *v1;
  if (*(*v1 + 48))
  {
    __break(1u);
  }

  else
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v16 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v18 <= 4)
    {
      LOWORD(v18) = 4;
    }

    *(v17 + 64) = v18;
  }
}

void static WK2_WeatherAlertCollection.add(detailsUrl:_:)(int *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    return;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v8))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  *(v1 + 16) = v3;
  if (HIDWORD(v3))
  {
    goto LABEL_29;
  }

  if (v3 - v4 == -4 && *(v1 + 57) != 1)
  {
    return;
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v3, *(v1 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v14 & v13)
  {
LABEL_30:
    __break(1u);
  }

  v15 = *v1;
  if (*(*v1 + 48))
  {
    __break(1u);
  }

  else
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v16 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v18 <= 6)
    {
      LOWORD(v18) = 6;
    }

    *(v17 + 64) = v18;
  }
}

void static WK2_WeatherAlertCollection.addVectorOf(alerts:_:)(int *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    return;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v8))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  *(v1 + 16) = v3;
  if (HIDWORD(v3))
  {
    goto LABEL_29;
  }

  if (v3 - v4 == -4 && *(v1 + 57) != 1)
  {
    return;
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v3, *(v1 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v14 & v13)
  {
LABEL_30:
    __break(1u);
  }

  v15 = *v1;
  if (*(*v1 + 48))
  {
    __break(1u);
  }

  else
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v16 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v18 <= 8)
    {
      LOWORD(v18) = 8;
    }

    *(v17 + 64) = v18;
  }
}

uint64_t static WK2_WeatherAlertCollection.endWeatherAlertCollection(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_WeatherAlertCollection.createWeatherAlertCollection(_:metadataOffset:detailsUrlOffset:alertsVectorOffset:)@<X0>(unint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, _DWORD *a5@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = static WK2_WeatherAlertCollection.startWeatherAlertCollection(_:)(a1);
  v13 = v6;
  static WK2_WeatherAlertCollection.add(metadata:_:)(&v13);
  v12 = v7;
  static WK2_WeatherAlertCollection.add(detailsUrl:_:)(&v12);
  v11 = v8;
  static WK2_WeatherAlertCollection.addVectorOf(alerts:_:)(&v11);
  result = FlatBufferBuilder.endTable(at:)(v9);
  *a5 = result;
  return result;
}

void static WK2_WeatherAlertCollection.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (v2)
  {
    return;
  }

  OUTLINED_FUNCTION_91();
  sub_272B5D67C(v3, v4, v5, v6);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_86();
  sub_272B5D6A8();
  if (__src[2] < 9)
  {
    goto LABEL_11;
  }

  v7 = __src[1] + 8;
  v8 = LOBYTE(__src[3]);
  if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v7) & 1) != 0)
  {
    *__dst = MEMORY[0x277D84C58];
    v13 = &qword_2808A3160;
    v14 = &unk_272B87CC0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_173(__src[1] + 8);
  v9 = __src[8];
  v10 = *(__src[8] + 24);
  v11 = *(v10 + v7);
  if (!*(v10 + v7))
  {
LABEL_11:
    v15 = sub_272B5C86C();
    v16 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v15);
    *v17 = 8;
    *(v17 + 6) = HIWORD(v72);
    *(v17 + 2) = *(&v72 + 2);
    *(v17 + 8) = 0x737472656C61;
    *(v17 + 16) = 0xE600000000000000;
    OUTLINED_FUNCTION_6_1(v16, v17, v18, v19, v20, v21, v22, v23, v24, v71, v72, *__dst, v25, *&__dst[16]);
    *(v26 + 64) = 3;
    goto LABEL_15;
  }

  v7 = __src[0] + v11;
  if (((v10 + LOBYTE(__src[0]) + v11) & 3) != 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1)
  {
    *__dst = MEMORY[0x277D84CC0];
    v13 = &qword_2808A3170;
    v14 = &unk_272B89910;
LABEL_13:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    v30 = OUTLINED_FUNCTION_26_2(v27, v28, v29);
    v32 = v31;
    v33 = sub_272B5C86C();
    v34 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v33);
    *v35 = v7;
    v35[1] = v30;
    v35[2] = v32;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_32(__src[0] + v11);
  v45 = v7 + *(*(v9 + 24) + v7);
  if (v45 < 0)
  {
    v45 = -v45;
  }

  if (v45 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v46 = v45;
  }

  v47 = sub_272B6EC90(&__src[3], v46);
  v49 = v47 + v48;
  if (v47 < v47 + v48)
  {
    do
    {
      v50 = v47 + 4;
      if (__OFADD__(v47, 4))
      {
        v51 = 0x7FFFFFFFFFFFFFFFLL;
        if ((__src[3] & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v51 = v47 + 4;
        if (!LOBYTE(__src[3]))
        {
          goto LABEL_30;
        }
      }

      if (((*(__src[8] + 24) + v47) & 3) != 0)
      {
        *__dst = MEMORY[0x277D84CC0];
        v63 = v47;
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
        v67 = OUTLINED_FUNCTION_26_2(v64, v65, v66);
        v69 = v68;
        v70 = sub_272B5C86C();
        v34 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v70);
        *v35 = v63;
        v35[1] = v67;
        v35[2] = v69;
LABEL_14:
        OUTLINED_FUNCTION_6_1(v34, v35, v36, v37, v38, v39, v40, v41, v42, v71, v72, *__dst, v43, *&__dst[16]);
        *(v44 + 64) = 0;
LABEL_15:
        swift_willThrow();
LABEL_16:
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        return;
      }

LABEL_30:
      if ((v50 & 0x8000000000000000) != 0)
      {
        v50 = -v50;
      }

      v52 = *(__src[8] + 32);
      if ((v52 & 0x8000000000000000) != 0 || v52 < v50)
      {
        v55 = __src[4];
        v56 = v50;
        v57 = sub_272B5C86C();
        OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v57);
        *v58 = v56;
        *(v58 + 8) = v55;
        v60 = *&__dst[16];
        v59 = *&__dst[32];
        *(v58 + 16) = *__dst;
        *(v58 + 32) = v60;
        *(v58 + 48) = v59;
        v61 = 1;
LABEL_45:
        *(v58 + 64) = v61;
        goto LABEL_15;
      }

      LODWORD(__src[5]) += 4;
      if (LODWORD(__src[11]) < LODWORD(__src[5]))
      {
        v62 = sub_272B5C86C();
        OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v62);
        *v58 = 6;
        *(v58 + 8) = 0u;
        *(v58 + 24) = 0u;
        *(v58 + 40) = 0u;
        *(v58 + 56) = 0;
        v61 = 7;
        goto LABEL_45;
      }

      v53 = v47 + *(*(__src[8] + 24) + v47);
      if (v53 < 0)
      {
        v53 = -v53;
      }

      if (v53 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v53;
      }

      sub_272B84900(&__src[3], v54);
      v47 = v51;
    }

    while (v51 < v49);
  }

  if (!__OFSUB__(__src[7], 1))
  {
    --__src[7];
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t ByteBuffer.read<A>(def:position:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_272B71990();

  return sub_272B878B0();
}

uint64_t ByteBuffer.readString(at:count:type:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_272B87720();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_4();
  sub_272B51468((*(a4 + 24) + a1), a2);
  (*(v11 + 16))(v4, a3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
  sub_272B549E8();
  v13 = sub_272B87700();

  return v13;
}

unint64_t ByteBuffer.size.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    return a2;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer.push(string:len:)(Swift::String string, Swift::Int len)
{
  v3 = v2;
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v28[3] = *MEMORY[0x277D85DE8];
  v9 = v2;
  v8 = *v2;
  v7 = v9[1];
  if (*(v8 + 32) < v7 + len)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(len, v7, v3[2]);
  }

  if (sub_272B46F44(countAndFlagsBits, object, v3, len) != 2)
  {
    goto LABEL_37;
  }

  v10 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = (countAndFlagsBits >> 59) & 1;
  if ((object & 0x1000000000000000) == 0)
  {
    LODWORD(v11) = 1;
  }

  v12 = 11;
  if (v11)
  {
    v12 = 7;
  }

  v13 = v12 | (v10 << 16);
  v14 = 4 << v11;

  while (1)
  {
    if ((v13 & 0xC) != v14)
    {
      if ((object & 0x1000000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    v15 = OUTLINED_FUNCTION_3_5();
    v18 = sub_272B73308(v15, v16, v17);
    if (v18 < 0x4000)
    {
      break;
    }

    v13 = v18;
    if ((object & 0x1000000000000000) == 0)
    {
LABEL_15:
      v13 = (v13 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_20;
    }

LABEL_18:
    if (v10 < v13 >> 16)
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_3_5();
    v13 = sub_272B87770();
LABEL_20:
    v19 = v13;
    if ((v13 & 0xC) == v14)
    {
      v25 = OUTLINED_FUNCTION_3_5();
      v19 = sub_272B73308(v25, v26, v27);
    }

    v20 = v19 >> 16;
    if (v19 >> 16 >= v10)
    {
      goto LABEL_35;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      v22 = sub_272B87790();
    }

    else if ((object & 0x2000000000000000) != 0)
    {
      v28[0] = countAndFlagsBits;
      v28[1] = object & 0xFFFFFFFFFFFFFFLL;
      v22 = *(v28 + v20);
    }

    else
    {
      v21 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((countAndFlagsBits & 0x1000000000000000) == 0)
      {
        v21 = sub_272B878E0();
      }

      v22 = *(v21 + v20);
    }

    v23 = v3[1];
    v24 = *(v8 + 32);
    if (v24 < v23 + 1)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v3[1], v3[2]);
      v24 = *(v8 + 32);
    }

    *(*(v8 + 24) + v24 + ~v23) = v22;
    v3[1] = v23 + 1;
    if (!(v13 >> 14))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:

LABEL_37:
}

Swift::Void __swiftcall ByteBuffer.fill(padding:)(Swift::Int padding)
{
  v2 = v1[1];
  v3 = v2 + padding;
  if (*(*v1 + 32) < v2 + padding)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(padding, v2, v1[2]);
  }

  v1[1] = v3;
}

uint64_t ByteBuffer.push<A>(elements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 - 8) + 64) * sub_272B87810();
  v5 = v3[1];
  if (*(*v3 + 32) < v4 + v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v4, v5, v3[2]);
  }

  v6 = sub_272B87840();

  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x2743D4A10](&v10, v6, WitnessTable);
  MEMORY[0x28223BE20](v8);
  sub_272B87960();
  swift_getWitnessTable();
  sub_272B877C0();
}

uint64_t ByteBuffer.push<A>(value:len:)(uint64_t a1, size_t a2, uint64_t a3)
{

  return sub_272B861CC(a1, a2, a3);
}

uint64_t sub_272B861CC(uint64_t a1, size_t a2, uint64_t a3)
{
  v5 = v3;
  OUTLINED_FUNCTION_2_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_4();
  v14 = v3;
  v13 = *v3;
  v12 = v14[1];
  v15 = v12 + a2;
  if (*(v13 + 32) < (v12 + a2))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a2, v12, v5[2]);
  }

  (*(v10 + 16))(v4, a1, a3);
  memcpy((*(v13 + 24) + *(v13 + 32) - v15), v4, a2);
  v5[1] = v15;
  return (*(v10 + 8))(v4, a3);
}

uint64_t ByteBuffer.duplicate(removing:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  v4 = swift_allocObject();
  result = ByteBuffer.Storage.init(count:alignment:)(v3, 1);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    memmove(*(v4 + 24), v2, v3);
    return v4;
  }

  return result;
}

uint64_t ByteBuffer.Storage.__allocating_init(count:alignment:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_6();
  v4 = swift_allocObject();
  ByteBuffer.Storage.init(count:alignment:)(a1, a2);
  return v4;
}

uint64_t ByteBuffer.Storage.__allocating_init(memory:capacity:unowned:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_6();
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t ByteBuffer.Storage.init(memory:capacity:unowned:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  return v3;
}

uint64_t ByteBuffer._storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ByteBuffer.init(bytes:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  v3 = swift_allocObject();

  ByteBuffer.Storage.init(count:alignment:)(v2, 1);
  v4 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_272B86ACC(a1);
  }

  memmove(*(v3 + 24), v4 + 32, *(a1 + 16));

  return v3;
}

uint64_t ByteBuffer.init<A>(contiguousBytes:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  v7 = swift_allocObject();
  ByteBuffer.Storage.init(count:alignment:)(a2, 1);
  sub_272B87620();
  (*(*(a3 - 8) + 8))(a1, a3);
  return v7;
}

void *sub_272B86604(void *__src, uint64_t a2, uint64_t a3)
{
  if (__src)
  {
    if (a2 - __src >= 0)
    {
      return memmove(*(*a3 + 24), __src, a2 - __src);
    }

    __break(1u);
  }

  __break(1u);
  return __src;
}

uint64_t ByteBuffer.init(assumingMemoryBound:capacity:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 16) = 1;
  return result;
}

Swift::Int __swiftcall ByteBuffer.ensureSpace(size:)(Swift::Int size)
{
  v3 = v1[1];
  if (*(*v1 + 32) < v3 + size)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(size, v3, v1[2]);
  }

  return size;
}

uint64_t sub_272B866BC(uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = *(v11 + 8);
  v13 = v12 + v9;
  if (*(*a2 + 32) < (v12 + v9))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v12, a2[2]);
  }

  (*(v7 + 16))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  memcpy((*(*a2 + 24) + *(*a2 + 32) - (a2[1] + v9)), v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  a2[1] = v13;
  return (*(v7 + 8))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
}

uint64_t ByteBuffer.push(bytes:len:)(uint64_t __src, uint64_t a2, size_t a3)
{
  if (__src)
  {
    v4 = v3[1] + a3;
    memcpy((*(*v3 + 24) + *(*v3 + 32) - v4), __src, a3);
    v3[1] = v4;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return __src;
}

uint64_t ByteBuffer.readSlice<A>(index:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_272B876E0();
  sub_272B876F0();
  swift_getWitnessTable();
  return sub_272B87850();
}

Swift::Int32 __swiftcall ByteBuffer.skipPrefix()()
{
  v1 = *v0;
  v0[1] -= 4;
  return **(v1 + 24);
}

uint64_t ByteBuffer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_272B878C0();
  OUTLINED_FUNCTION_5_3();
  sub_272B87930();
  OUTLINED_FUNCTION_5_3();
  v2 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x2743D4AA0](v2);

  MEMORY[0x2743D4AA0](0x6574697277207B0ALL, 0xEF203A657A695372);
  v3 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x2743D4AA0](v3);

  MEMORY[0x2743D4AA0](0x726564616572202CLL, 0xEE00203A657A6953);
  v4 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x2743D4AA0](v4);

  MEMORY[0x2743D4AA0](0x726574697277202CLL, 0xEF203A7865646E49);
  v5 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x2743D4AA0](v5);

  MEMORY[0x2743D4AA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t ByteBuffer.push<A>(struct:size:)(uint64_t a1, size_t a2, uint64_t a3)
{

  return ByteBuffer.push<A>(value:len:)(a1, a2, a3);
}

void getCheckedPrefixedSizeRoot<A>(byteBuffer:fileId:options:)(void *result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v16 = *a4;
  v17 = result[1] - 4;
  result[1] = v17;
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v17))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = **(*result + 24);
  if (v18 < 0 || v18 != v17)
  {
    sub_272B5C86C();
    swift_allocError();
    OUTLINED_FUNCTION_0_7(v19, 1);
  }

  else
  {
    OUTLINED_FUNCTION_1_6(result, a2, a3, v16, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, v20, *v21, v21[4]);
  }
}

uint64_t getRoot<A>(byteBuffer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v5 = a1[1];
  v6 = *(result + 32) - v5;
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v7 = *(*(result + 24) + v6);
  if (v7 < 0)
  {
    goto LABEL_7;
  }

  v8 = (v7 + v6);
  if (!__OFADD__(v7, v6))
  {
    v10 = a1[2];
    v11 = *(a3 + 8);
    v12 = *(v11 + 8);

    return v12(v13, v5, v10, v8, a2, v11);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of static ObjectAPIPacker.pack(_:obj:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 16))(a1, a2, a3);
}

{
  return (*(a4 + 24))(a1, a2, a3);
}

uint64_t Scalar<>.convertedEndian.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_272B86F1C@<X0>(_BYTE *a1@<X8>)
{
  result = Bool.convertedEndian.getter(*v1);
  *a1 = result;
  return result;
}

void Struct.readBuffer<A>(of:at:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (__OFADD__(a2, a6))
  {
    __break(1u);
  }

  else
  {
    sub_272B71990();

    sub_272B878B0();
  }
}

Swift::Int32 __swiftcall Table.offset(_:)(Swift::Int32 result)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + v2);
  v5 = __OFSUB__(v2, v4);
  v6 = v2 - v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (*(v3 + v6) <= result)
    {
      return 0;
    }

    v5 = __OFADD__(v6, result);
    v7 = v6 + result;
    if (!v5)
    {
      return *(v3 + v7);
    }
  }

  __break(1u);
  return result;
}

Swift::Int32 __swiftcall Table.indirect(_:)(Swift::Int32 a1)
{
  v2 = *(*(v1 + 24) + a1);
  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t Table.readBuffer<A>(of:at:)(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = __OFADD__(a2, a6);
  v8 = a2 + a6;
  if (!v7)
  {
    return Table.directRead<A>(of:offset:)(result, v8, a3, a4, a5, a6, a7);
  }

  __break(1u);
  return result;
}

Swift::Int32 __swiftcall Table.vector(count:)(Swift::Int32 count)
{
  v3 = count + v2;
  if (__OFADD__(count, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v4 + v3);
    v6 = __OFADD__(v3, v5);
    v7 = v3 + v5;
    if (!v6)
    {
      return *(v4 + v7);
    }
  }

  __break(1u);
  return count;
}

Swift::Int32 __swiftcall Table.vector(at:)(Swift::Int32 at)
{
  v3 = at + v2;
  if (__OFADD__(at, v2))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(*(v1 + 24) + v3);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  at = v6 + 4;
  if (__OFADD__(v6, 4))
  {
LABEL_7:
    __break(1u);
  }

  return at;
}

Swift::String_optional __swiftcall Table.string(at:)(Swift::Int32 at)
{
  v2 = __OFADD__(at, v1);
  countAndFlagsBits = (at + v1);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v5 = Table.directString(at:)(countAndFlagsBits);
    object = v5.value._object;
    countAndFlagsBits = v5.value._countAndFlagsBits;
  }

  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t Table.getVector<A>(at:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v7 = *(v6 + a5);
  v8 = __OFSUB__(a5, v7);
  v9 = a5 - v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v6 + v9) <= result)
  {
    return 0;
  }

  v8 = __OFADD__(v9, result);
  v10 = v9 + result;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(v6 + v10);
  if (!v11)
  {
    return 0;
  }

  v8 = __OFADD__(v11, a5);
  v12 = v11 + a5;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(v6 + v12);
  v8 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (!v8)
  {
    if (!__OFADD__(v14, 4))
    {
      sub_272B876E0();
      sub_272B876F0();
      swift_getWitnessTable();
      return sub_272B87850();
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t Table.directRead<A>(of:offset:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_272B71990();

  return sub_272B878B0();
}

uint64_t Table.union<A>(_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = __OFADD__(a1, a5);
  result = (a1 + a5);
  if (!v7)
  {
    return Table.directUnion<A>(_:)(result, a2, a3, a4, a5, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t Table.directUnion<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(*(a2 + 24) + result);
  v8 = (result + v7);
  if (__OFADD__(result, v7))
  {
    __break(1u);
  }

  else
  {
    v13 = *(a7 + 8);

    return v13(v14, a3, a4, v8, a6, a7);
  }

  return result;
}

uint64_t static Table.indirect(_:_:)(int a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) + a1);
  v3 = __OFADD__(a1, v2);
  result = (a1 + v2);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Table.offset(_:vOffset:fbb:)(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(v3, result);
  v5 = v3 - result;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 + v5);
  v4 = __OFSUB__(v6, v8);
  v9 = v6 - v8;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(v7 + v9);
  result = (v5 + v10);
  if (__OFADD__(v5, v10))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static Table.compare(_:_:fbb:)(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 + result);
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = *(v3 + a2);
  v7 = a2 + v6;
  if (__OFADD__(a2, v6))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v5 + 4;
  if (__OFADD__(v5, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v7 + 4;
  if (__OFADD__(v7, 4))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = *(v3 + v5);
  v11 = *(v3 + v7);
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v13 = 0;
  while (1)
  {
    if (v13 == v12)
    {
      v14 = 0;
    }

    else
    {
      if (v13 == 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      v14 = v13 + 1;
    }

    if (__OFADD__(v13, v8))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = (v13 + v9);
    if (__OFADD__(v13, v9))
    {
      goto LABEL_25;
    }

    v15 = *(v3 + v13 + v8);
    result = *(v3 + result);
    if (v15 != result)
    {
      break;
    }

    v16 = v13 == v12;
    v13 = v14;
    if (v16)
    {
      result = (v10 - v11);
      if (!__OFSUB__(v10, v11))
      {
        return result;
      }

      __break(1u);
      break;
    }
  }

  v17 = result - v15;
  result = (result - v15);
  if (result != v17)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t static Table.compare(_:_:fbb:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 + result);
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(a2 + 16);
  if (v6 >> 31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v5 + 4;
  if (__OFADD__(v5, 4))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LODWORD(v8) = *(v3 + v5);
  if ((v8 & 0x80000000) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = 0;
  result = (v8 - v6);
  if (v8 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v8;
  }

  while (v8 != v9)
  {
    if (v9 == 0x7FFFFFFF)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v9, v7))
    {
      goto LABEL_18;
    }

    if (v6 == v9)
    {
      goto LABEL_19;
    }

    v10 = *(v3 + v9 + v7);
    v11 = *(a2 + 32 + v9);
    if ((v10 & 0x80000000) == 0)
    {
      ++v9;
      if (v10 == v11)
      {
        continue;
      }
    }

    if (v11 < 0)
    {
      goto LABEL_24;
    }

    result = (v10 - v11);
    if (result != v10 - v11)
    {
      goto LABEL_25;
    }

    return result;
  }

  return result;
}