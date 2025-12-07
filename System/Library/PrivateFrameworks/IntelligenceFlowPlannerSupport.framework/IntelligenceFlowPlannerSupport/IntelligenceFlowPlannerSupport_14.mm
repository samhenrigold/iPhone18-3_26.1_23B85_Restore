_BYTE *storeEnumTagSinglePayload for EmbeddingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22BF419AC(uint64_t a1)
{
  result = sub_22C26FDF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BF41A38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22BF41A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22BF41B1C()
{
  if (!qword_28107D400[0])
  {
    v0 = sub_22C273844();
    if (!v1)
    {
      atomic_store(v0, qword_28107D400);
    }
  }
}

uint64_t sub_22BF41B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return sub_22BE1AEA8(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24));
    if (v9 <= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = *(a1 + *(a3 + 24));
    }

    v11 = v10 - 4;
    if (v9 >= 4)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22BF41C4C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v8 = sub_22BE23C8C();
  result = v9(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v11 = sub_22BE37694();

    return sub_22BE19DC4(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 4;
  }

  return result;
}

void sub_22BF41D00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_22BF41B1C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BF41DB8(uint64_t a1)
{
  result = sub_22C272224();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BF41E2C(uint64_t a1)
{
  result = sub_22C272224();
  if (v2 <= 0x3F)
  {
    result = sub_22C272CA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxToolScope(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolBoxToolType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BF420D8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF421D0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF422A8(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BF42358()
{
  result = qword_27D90B590;
  if (!qword_27D90B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B590);
  }

  return result;
}

unint64_t sub_22BF423B0()
{
  result = qword_27D90B598;
  if (!qword_27D90B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B598);
  }

  return result;
}

unint64_t sub_22BF42408()
{
  result = qword_27D90B5A0;
  if (!qword_27D90B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5A0);
  }

  return result;
}

unint64_t sub_22BF42460()
{
  result = qword_27D90B5A8;
  if (!qword_27D90B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5A8);
  }

  return result;
}

unint64_t sub_22BF424B8()
{
  result = qword_27D90B5B0;
  if (!qword_27D90B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5B0);
  }

  return result;
}

unint64_t sub_22BF42510()
{
  result = qword_27D90B5B8;
  if (!qword_27D90B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5B8);
  }

  return result;
}

unint64_t sub_22BF42568()
{
  result = qword_27D90B5C0;
  if (!qword_27D90B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5C0);
  }

  return result;
}

unint64_t sub_22BF425C0()
{
  result = qword_27D90B5C8;
  if (!qword_27D90B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5C8);
  }

  return result;
}

unint64_t sub_22BF42618()
{
  result = qword_27D90B5D0;
  if (!qword_27D90B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5D0);
  }

  return result;
}

unint64_t sub_22BF42670()
{
  result = qword_27D90B5D8;
  if (!qword_27D90B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5D8);
  }

  return result;
}

unint64_t sub_22BF426C8()
{
  result = qword_27D90B5E0;
  if (!qword_27D90B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5E0);
  }

  return result;
}

unint64_t sub_22BF42720()
{
  result = qword_27D90B5E8;
  if (!qword_27D90B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5E8);
  }

  return result;
}

unint64_t sub_22BF42778()
{
  result = qword_27D90B5F0;
  if (!qword_27D90B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5F0);
  }

  return result;
}

unint64_t sub_22BF427D0()
{
  result = qword_27D90B5F8;
  if (!qword_27D90B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B5F8);
  }

  return result;
}

unint64_t sub_22BF42828()
{
  result = qword_27D90B600;
  if (!qword_27D90B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B600);
  }

  return result;
}

unint64_t sub_22BF42880()
{
  result = qword_27D90B608;
  if (!qword_27D90B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B608);
  }

  return result;
}

unint64_t sub_22BF428D8()
{
  result = qword_27D90B610;
  if (!qword_27D90B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B610);
  }

  return result;
}

unint64_t sub_22BF42930()
{
  result = qword_27D90B618;
  if (!qword_27D90B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B618);
  }

  return result;
}

unint64_t sub_22BF42988()
{
  result = qword_27D90B620;
  if (!qword_27D90B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B620);
  }

  return result;
}

unint64_t sub_22BF429E0()
{
  result = qword_27D90B628;
  if (!qword_27D90B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B628);
  }

  return result;
}

unint64_t sub_22BF42A38()
{
  result = qword_281079208;
  if (!qword_281079208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079208);
  }

  return result;
}

unint64_t sub_22BF42A90()
{
  result = qword_281079210;
  if (!qword_281079210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079210);
  }

  return result;
}

unint64_t sub_22BF42AE8()
{
  result = qword_27D90B630;
  if (!qword_27D90B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B630);
  }

  return result;
}

unint64_t sub_22BF42B40()
{
  result = qword_27D90B638;
  if (!qword_27D90B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B638);
  }

  return result;
}

unint64_t sub_22BF42B94()
{
  result = qword_27D90B640;
  if (!qword_27D90B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B640);
  }

  return result;
}

unint64_t sub_22BF42BE8(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE7431C(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_22BF42CA8(char *a1@<X8>)
{
  v5 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = sub_22BE5CE4C(&qword_27D90B660, &qword_22C28FE00);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v13);
  sub_22BE1BF5C(v14, v15, v16, v17, v18, v19, v20, v21, v36);
  sub_22BF4375C(v2, v3);
  v22 = *(v12 + 56);
  sub_22BF437CC(v3, v10);
  sub_22BF249B8(v3 + v22);
  sub_22BF4375C(v2, v3);
  sub_22BF437CC(v3 + *(v12 + 56), v7);
  sub_22BF249B8(v3);
  v41 = v10;
  if (qword_281079B90 != -1)
  {
    sub_22BE18DDC(&qword_281079B90);
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BF6ACDC(&dword_281079B98, sub_22BF4386C, &v36, v10, v23, v24, v25, v26, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  if (!v1)
  {
    v28 = v27;
    os_unfair_lock_unlock(&dword_281079B98);
    if (v28 & 1) != 0 || (v29 = sub_22BF2C188(), (v30))
    {
      sub_22BF249B8(v7);
      sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
      sub_22BF249B8(v10);
    }

    else
    {
      v32 = *&v29;
      v33 = COERCE_DOUBLE(sub_22BF2C188());
      v35 = v34;
      sub_22BF249B8(v7);
      sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
      sub_22BF249B8(v10);
      if ((v35 & 1) == 0)
      {
        v31 = v32 > v33;
        goto LABEL_8;
      }
    }

    v31 = 2;
LABEL_8:
    *a1 = v31;
    return;
  }

  os_unfair_lock_unlock(&dword_281079B98);
  __break(1u);
}

IntelligenceFlowPlannerSupport::ToolboxStatus::ReadOnly_optional __swiftcall ToolboxStatus.ReadOnly.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_22BF42F64()
{
  result = qword_27D90B648;
  if (!qword_27D90B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B648);
  }

  return result;
}

unint64_t sub_22BF42FBC()
{
  result = qword_27D90B650;
  if (!qword_27D90B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolboxStatus(_BYTE *result, int a2, int a3)
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

_BYTE *sub_22BF430C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22BF4319C(char *a1, void *a2)
{
  v2 = sub_22C26DEA4();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  sub_22C26DF64();
  sub_22BE179D8();
  v19 = v10;
  v20 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v13 = v12 - v11;
  v14 = *MEMORY[0x277CC91D8];
  v15 = *(v4 + 104);
  v15(v8, v14, v2);
  sub_22BE699D0();
  sub_22C26DF54();
  v16 = *(v4 + 8);
  v16(v8, v2);
  v15(v8, v14, v2);
  v17 = _s19SentinelFileManagerVMa(0);
  sub_22C26DF54();
  v16(v8, v2);
  (*(v19 + 16))(&a1[*(v17 + 20)], v13, v20);
  *a1 = 0xD00000000000001CLL;
  *(a1 + 1) = 0x800000022C2D47A0;
  result = (*(v19 + 8))(v13, v20);
  *a2 = 0xD00000000000001CLL;
  a2[1] = 0x800000022C2D47A0;
  return result;
}

void sub_22BF43408(char *a1@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D90B658, &unk_22C28E620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = _s19SentinelFileManagerVMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = sub_22BE5CE4C(&qword_27D90B660, &qword_22C28FE00);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  sub_22BE17D10();
  MEMORY[0x28223BE20](v14);
  sub_22BE1BF5C(v15, v16, v17, v18, v19, v20, v21, v22, v34);
  sub_22BF4375C(v2, v3);
  sub_22BF437CC(v3 + *(v13 + 56), v11);
  sub_22BF249B8(v3);
  v39 = v11;
  if (qword_281079B90 != -1)
  {
    sub_22BE18DDC(&qword_281079B90);
  }

  os_unfair_lock_lock(&dword_281079B98);
  sub_22BF6ACDC(&dword_281079B98, sub_22BF43830, &v34, v11, v23, v24, v25, v26, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  if (v1)
  {

    os_unfair_lock_unlock(&dword_281079B98);
    __break(1u);
  }

  else
  {
    v28 = v27;
    os_unfair_lock_unlock(&dword_281079B98);
    if (v28)
    {
      sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
      sub_22BF249B8(v11);
      v30 = 2;
    }

    else
    {
      MEMORY[0x28223BE20](v29);
      *(&v34 - 2) = v11;
      os_unfair_lock_lock(&dword_281079B98);
      sub_22BF6B0F4();
      os_unfair_lock_unlock(&dword_281079B98);
      v31 = sub_22C26E164();
      if (sub_22BE1AEA8(v7, 1, v31) == 1)
      {
        sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
        sub_22BE23388(v7, &qword_27D90B658, &unk_22C28E620);
        sub_22BF249B8(v11);
        v30 = 1;
      }

      else
      {
        sub_22BE23388(v7, &qword_27D90B658, &unk_22C28E620);
        sub_22BF2C188();
        v33 = v32;
        sub_22BE23388(v2, &qword_27D90B660, &qword_22C28FE00);
        sub_22BF249B8(v11);
        if (v33)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    *a1 = v30;
  }
}

uint64_t sub_22BF4375C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B660, &qword_22C28FE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF437CC(uint64_t a1, uint64_t a2)
{
  v4 = _s19SentinelFileManagerVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BF43894(uint64_t a1, void *a2)
{
  v88 = a2;
  v3 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v73 - v6;
  v7 = sub_22C272224();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = &v73 - v11;
  MEMORY[0x28223BE20](v12);
  v75 = &v73 - v13;
  MEMORY[0x28223BE20](v14);
  v81 = &v73 - v15;
  v16 = type metadata accessor for ToolboxSearchOutput(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v79 = v8 + 16;
  v83 = v8;
  v87 = v8 + 32;
  v89 = *(a1 + 16);
  v90 = MEMORY[0x277D84F90];
  v84 = a1;
  v80 = v20;
  while (v89 != v19)
  {
    sub_22BF6805C();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v22 = sub_22BE5CE4C(&qword_27D90B6F0, &qword_22C28EC20);
        v23 = v18[*(v22 + 48)];
        v24 = *&v18[*(v22 + 64)];
        v25 = type metadata accessor for ToolBoxAssistantSchemaSearchResult(0);
        *(&v92 + 1) = v25;
        v93 = sub_22BE29F88(&qword_281073938, type metadata accessor for ToolBoxAssistantSchemaSearchResult, &protocol conformance descriptor for ToolBoxAssistantSchemaSearchResult);
        v26 = sub_22BE62524(&v91);
        v27 = sub_22C272CA4();
        (*(*(v27 - 8) + 32))(v26, v18, v27);
        *(v26 + *(v25 + 20)) = v24;
        *(v26 + *(v25 + 24)) = v23;
      }

      else
      {
        v46 = *(v18 + 1);
        v47 = *v88;
        if (!*(*v88 + 16))
        {
          goto LABEL_14;
        }

        v48 = *v18;
        v49 = *(v18 + 4);
        v50 = sub_22BE3B674(*v18, *(v18 + 1));
        if ((v51 & 1) == 0)
        {
          goto LABEL_14;
        }

        v52 = *(v47 + 56);
        v53 = v88;
        v54 = v7;
        v55 = v83;
        v85 = *(v83 + 72);
        v56 = v76;
        (*(v83 + 16))(v76, v52 + v85 * v50, v54);
        v86 = *(v55 + 32);
        v86(v82, v56, v54);
        v57 = sub_22BE3B674(v48, v46);
        if (v58)
        {
          v59 = v57;
          swift_isUniquelyReferenced_nonNull_native();
          *&v94[0] = *v53;
          v74 = *(*&v94[0] + 24);
          sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
          sub_22C273C44();
          v60 = *&v94[0];

          v61 = v78;
          v86(v78, (*(v60 + 56) + v59 * v85), v54);
          sub_22C273C64();
          v62 = 0;
          *v53 = v60;
        }

        else
        {
          v62 = 1;
          v61 = v78;
        }

        sub_22BE19DC4(v61, v62, 1, v54);

        sub_22BE233E8(v61, &qword_27D90B2D8, &qword_22C2B5080);
        v65 = type metadata accessor for ToolBoxClientActionSearchResult(0);
        *(&v92 + 1) = v65;
        v93 = sub_22BE29F88(&qword_2810751A8, type metadata accessor for ToolBoxClientActionSearchResult, &protocol conformance descriptor for ToolBoxClientActionSearchResult);
        v66 = sub_22BE62524(&v91);
        v86(v66, v82, v54);
        *(v66 + *(v65 + 20)) = v49;
        v7 = v54;
      }
    }

    else
    {
      v28 = *(v18 + 1);
      v29 = *v88;
      if (!*(*v88 + 16) || (v30 = *v18, LODWORD(v86) = v18[16], v31 = *(v18 + 5), v32 = sub_22BE3B674(v30, v28), (v33 & 1) == 0))
      {
LABEL_14:

        v93 = 0;
        v91 = 0u;
        v92 = 0u;
LABEL_25:
        sub_22BE233E8(&v91, &qword_27D90B6E0, &qword_22C28EC10);
        goto LABEL_26;
      }

      v34 = *(v29 + 56);
      v35 = v7;
      v36 = v83;
      v37 = *(v83 + 72);
      v38 = v75;
      (*(v83 + 16))(v75, v34 + v37 * v32, v35);
      v85 = *(v36 + 32);
      v85(v81, v38, v35);
      v39 = sub_22BE3B674(v30, v28);
      if (v40)
      {
        v41 = v39;
        v42 = v88;
        LODWORD(v74) = swift_isUniquelyReferenced_nonNull_native();
        *&v94[0] = *v42;
        sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
        sub_22C273C44();
        v43 = *&v94[0];

        v44 = v77;
        v85(v77, (*(v43 + 56) + v41 * v37), v35);
        sub_22C273C64();
        v45 = 0;
        *v88 = v43;
      }

      else
      {
        v45 = 1;
        v44 = v77;
      }

      v7 = v35;
      sub_22BE19DC4(v44, v45, 1, v35);

      sub_22BE233E8(v44, &qword_27D90B2D8, &qword_22C2B5080);
      v63 = type metadata accessor for ToolBoxToolSearchResult(0);
      *(&v92 + 1) = v63;
      v93 = sub_22BE29F88(&qword_28107D4A0, type metadata accessor for ToolBoxToolSearchResult, &protocol conformance descriptor for ToolBoxToolSearchResult);
      v64 = sub_22BE62524(&v91);
      v85(v64, v81, v35);
      *(v64 + *(v63 + 20)) = v31;
      *(v64 + *(v63 + 24)) = v86;
    }

    if (!*(&v92 + 1))
    {
      goto LABEL_25;
    }

    sub_22BE49224(&v91, v94);
    sub_22BE49224(v94, &v91);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE66ED8(0, *(v90 + 16) + 1, 1, v90);
      v90 = v70;
    }

    v68 = *(v90 + 16);
    v67 = *(v90 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_22BE66ED8(v67 > 1, v68 + 1, 1, v90);
      v90 = v71;
    }

    v69 = v90;
    *(v90 + 16) = v68 + 1;
    sub_22BE49224(&v91, v69 + 40 * v68 + 32);
LABEL_26:
    ++v19;
  }

  return v90;
}

void sub_22BF44174(uint64_t *a1)
{
  v2 = *(type metadata accessor for ToolBoxToolSearchResult(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C1160C0(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_22BF648BC(v9);
  *a1 = v3;
}

uint64_t (*sub_22BF4421C(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_22C272D24() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

void sub_22BF442E8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      a1(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return;
      }
    }
  }
}

void sub_22BF4437C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v31 = a3;
  v29 = a2;
  v32 = sub_22C272224();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = 0;
  v30 = *(a1 + 16);
  v28 = v5 + 16;
  v13 = (v5 + 8);
  v26 = (v5 + 32);
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v30 == v12)
    {

LABEL_14:

      return;
    }

    if (v12 >= *(v8 + 16))
    {
      break;
    }

    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    v17 = v8;
    (*(v5 + 16))(v11, v8 + v15 + v16 * v12, v32, v9);
    v18 = sub_22BF56EFC(v11, v29, v31);
    if (v3)
    {
      (*v13)(v11, v32);

      goto LABEL_14;
    }

    if (v18)
    {
      v25 = *v26;
      v25(v27, v11, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE711C4(0, *(v14 + 16) + 1, 1);
        v14 = v33;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = *(v14 + 16);
        v24 = v21 + 1;
        sub_22BE711C4(v20 > 1, v21 + 1, 1);
        v21 = v23;
        v22 = v24;
        v14 = v33;
      }

      ++v12;
      *(v14 + 16) = v22;
      v25((v14 + v15 + v21 * v16), v27, v32);
      v8 = v17;
    }

    else
    {
      (*v13)(v11, v32);
      ++v12;
      v8 = v17;
    }
  }

  __break(1u);
}

void sub_22BF44630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v32 = MEMORY[0x277D84F90];
    sub_22BE70138(0, v1, 0);
    v5 = sub_22C259374();
    v6 = 0;
    v7 = v2 + 64;
    v26 = v3;
    v27 = v1;
    v25 = v2 + 72;
    v28 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v3)
      {
        goto LABEL_23;
      }

      v30 = v6;
      v31 = v3;
      v29 = v4;
      v9 = (*(v2 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = v2;
      v14 = *(v32 + 16);
      v13 = *(v32 + 24);

      if (v14 >= v13 >> 1)
      {
        sub_22BE70138(v13 > 1, v14 + 1, 1);
      }

      *(v32 + 16) = v14 + 1;
      v15 = v32 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      v16 = 1 << *(v12 + 32);
      if (v5 >= v16)
      {
        goto LABEL_24;
      }

      v7 = v28;
      v17 = *(v28 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v12;
      if (*(v12 + 36) != v31)
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v19 = v27;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (v25 + 8 * v8);
        v19 = v27;
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_22BE2FC64(v5, v31, v29 & 1);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        sub_22BE2FC64(v5, v31, v29 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v30 + 1;
      v5 = v16;
      v3 = v26;
      if (v30 + 1 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_22BF44878(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C273064();
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C272CA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v58 = MEMORY[0x277D84F90];
    sub_22BE70138(0, v10, 0);
    v11 = v58;
    v14 = sub_22C259378();
    v15 = v11;
    v16 = 0;
    v56 = a1 + 56;
    v48 = v7 + 16;
    v49 = (v7 + 8);
    v43 = a1 + 64;
    v44 = v10;
    v46 = v6;
    v47 = a1;
    v45 = v7;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < 1 << *(a1 + 32))
      {
        if ((*(v56 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_31;
        }

        if (*(a1 + 36) != v12)
        {
          goto LABEL_32;
        }

        v52 = v14 >> 6;
        v53 = v12;
        v54 = v13;
        v51 = v16;
        v55 = v15;
        (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * v14, v6);
        if (qword_27D906380 != -1)
        {
          swift_once();
        }

        sub_22BE29F88(&qword_28106DEE8, MEMORY[0x277D73358], MEMORY[0x277D73360]);
        v17 = sub_22C26DC04();
        if (v2)
        {
          goto LABEL_28;
        }

        v19 = v17;
        v20 = v18;
        v21 = v6;
        v22 = v9;
        sub_22C273054();
        v23 = sub_22C273044();
        v25 = v24;
        sub_22BE29DD4(v19, v20);
        if (!v25)
        {
          sub_22BF103C8();
          swift_allocError();
          *v41 = 0xD000000000000072;
          *(v41 + 8) = 0x800000022C2D43B0;
          *(v41 + 16) = xmmword_22C28C970;
          *(v41 + 32) = 0xE200000000000000;
          swift_willThrow();
          v9 = v22;
          v6 = v21;
LABEL_28:
          (*v49)(v9, v6);

          return;
        }

        v57 = 0;
        (*v49)(v22, v21);
        v15 = v55;
        v58 = v55;
        v27 = *(v55 + 16);
        v26 = *(v55 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22BE70138(v26 > 1, v27 + 1, 1);
          v15 = v58;
        }

        *(v15 + 16) = v27 + 1;
        v28 = v15 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        if (v54)
        {
          goto LABEL_36;
        }

        a1 = v47;
        v29 = 1 << *(v47 + 32);
        v2 = v57;
        if (v14 >= v29)
        {
          goto LABEL_33;
        }

        v30 = *(v56 + 8 * v52);
        if ((v30 & (1 << v14)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v47 + 36) != v53)
        {
          goto LABEL_35;
        }

        v9 = v22;
        v31 = v30 & (-2 << (v14 & 0x3F));
        if (v31)
        {
          v29 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
          v7 = v45;
          v6 = v46;
          v32 = v44;
        }

        else
        {
          v33 = v52 << 6;
          v34 = v52 + 1;
          v32 = v44;
          v35 = (v43 + 8 * v52);
          v7 = v45;
          v36 = v46;
          while (v34 < (v29 + 63) >> 6)
          {
            v38 = *v35++;
            v37 = v38;
            v33 += 64;
            ++v34;
            if (v38)
            {
              v39 = v15;
              sub_22BE2FC64(v14, v53, 0);
              v15 = v39;
              v29 = __clz(__rbit64(v37)) + v33;
              goto LABEL_23;
            }
          }

          v40 = v15;
          sub_22BE2FC64(v14, v53, 0);
          v15 = v40;
LABEL_23:
          v6 = v36;
          v2 = v57;
        }

        v16 = v51 + 1;
        if (v51 + 1 == v32)
        {
          return;
        }

        v13 = 0;
        v12 = *(a1 + 36);
        v14 = v29;
        if (v29 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

unint64_t sub_22BF44D44(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_22BF682E8(a1, a2);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v45 = MEMORY[0x277D84F90];
  result = sub_22BE7129C(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v45;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v39 = 4 << v9;
    v12 = 15;
    v40 = v6;
    v41 = v3;
    v42 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v36 = v16;
          result = sub_22C192BB0(v12, v3, a2);
          v16 = v36;
          v11 = v42;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_59;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          result = sub_22C26CCB8(result, v3, a2);
          v16 = v18;
          v11 = v42;
          v17 = result >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_60;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_22C273A94();
        v16 = v22;
        v11 = v42;
        v21 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v3;
        v44 = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = &v43 + v17;
        v23 = *(&v43 + v17);
        v21 = *(&v43 + v17);
        if (v23 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
LABEL_33:
              v21 = v19[1] & 0x3F | ((v21 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_34:
              v24 = v19[1];
              v25 = v19[2];
              v26 = ((v21 & 0xF) << 12) | ((v24 & 0x3F) << 6);
              goto LABEL_36;
            case 0x1Cu:
LABEL_35:
              v27 = v19[1];
              v28 = v19[2];
              v25 = v19[3];
              v26 = ((v21 & 0xF) << 18) | ((v27 & 0x3F) << 12) | ((v28 & 0x3F) << 6);
LABEL_36:
              v21 = v26 & 0xFFFFFFC0 | v25 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v37 = v16;
          result = sub_22C273B44();
          v16 = v37;
          v11 = v42;
        }

        v19 = (result + v17);
        v20 = *(result + v17);
        v21 = *(result + v17);
        if (v20 < 0)
        {
          switch(__clz(v21 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_33;
            case 0x1Bu:
              goto LABEL_34;
            case 0x1Cu:
              goto LABEL_35;
            default:
              break;
          }
        }
      }

      v45 = v5;
      v30 = *(v5 + 16);
      v29 = *(v5 + 24);
      if (v30 >= v29 >> 1)
      {
        v38 = v16;
        result = sub_22BE7129C(v29 > 1, v30 + 1, 1);
        v16 = v38;
        v11 = v42;
        v5 = v45;
      }

      *(v5 + 16) = v30 + 1;
      *(v5 + 2 * v30 + 32) = v21;
      if (v16)
      {
        v10 = v39;
        v31 = v40;
        v3 = v41;
        if (v14 == v39)
        {
          result = sub_22C192BB0(v12, v41, a2);
          v11 = v42;
          v12 = result;
        }

        if (v11 <= v12 >> 16)
        {
          goto LABEL_61;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_22C26CCB8(v12, v41, a2);
          v11 = v42;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v31 = v40;
        v3 = v41;
        v10 = v39;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_62;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22C2730F4();
        v11 = v42;
        v12 = result;
      }

      else
      {
        v32 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v43 = v3;
          v44 = a2 & 0xFFFFFFFFFFFFFFLL;
          v33 = *(&v43 + v32);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_22C273B44();
            v11 = v42;
          }

          v33 = *(result + v32);
        }

        v34 = v33;
        v35 = __clz(v33 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        v12 = ((v32 + v35) << 16) | 5;
      }

      ++v8;
      if (v13 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF45140(uint64_t result, __n128 a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      v3 = a2.n128_u16[0];
      result = sub_22C273534();
      v4 = 0;
      v5 = vdupq_n_s64(v2 - 1);
      v6 = (result + 46);
      *(result + 16) = v2;
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_22C28E660)));
        if (vuzp1_s8(vuzp1_s16(v8, *v5.i8), *v5.i8).u8[0])
        {
          *(v6 - 7) = v3;
        }

        if (vuzp1_s8(vuzp1_s16(v8, *&v5), *&v5).i8[1])
        {
          *(v6 - 6) = v3;
        }

        if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_22C28E650)))), *&v5).i8[2])
        {
          *(v6 - 5) = v3;
          *(v6 - 4) = v3;
        }

        v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_22C28E640)));
        if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i32[1])
        {
          *(v6 - 3) = v3;
        }

        if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i8[5])
        {
          *(v6 - 2) = v3;
        }

        if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_22C28E630))))).i8[6])
        {
          *(v6 - 1) = v3;
          *v6 = v3;
        }

        v4 += 8;
        v6 += 8;
      }

      while (((v2 + 7) & 0xFFFFFFFFFFFFFFF8) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22BF452B4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_22C273534();
    v4 = 0;
    v5 = (result + 44);
    *(result + 16) = a2;
    v6 = vdupq_n_s64(a2 - 1);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_22C28E660)));
      if (vuzp1_s16(v8, *v6.i8).u8[0])
      {
        *(v5 - 3) = v3;
      }

      if (vuzp1_s16(v8, *&v6).i8[2])
      {
        *(v5 - 2) = v3;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_22C28E650)))).i32[1])
      {
        *(v5 - 1) = v3;
        *v5 = v3;
      }

      v4 += 4;
      v5 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22BF45398()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_22BF68D0C(&v1[4], &v2);
  os_unfair_lock_unlock(v1 + 6);
}

void *sub_22BF45408(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_22BF45440()
{
  sub_22BE183F0();
  v1[2] = v0;
  v2 = type metadata accessor for ToolboxVersion(0);
  v1[3] = v2;
  sub_22BE19448(v2);
  v1[4] = sub_22BE25184();
  v3 = sub_22C2720A4();
  v1[5] = v3;
  sub_22BE17A18(v3);
  v1[6] = v4;
  v1[7] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BF4550C(__n128 a1)
{
  sub_22C271AD4();

  v3 = sub_22C272084();
  v4 = sub_22C273784();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[6];
  v7 = v1[5];
  if (v5)
  {
    v8 = v1[4];
    v28 = v1[3];
    v29 = v1[7];
    v9 = v1[2];
    sub_22BE1A260();
    swift_slowAlloc();
    sub_22BF6AA04();
    v31 = swift_slowAlloc();
    *v2 = 136315138;
    sub_22BE1BD3C((v9 + 120), *(v9 + 144));
    v10 = sub_22BE3C3AC();
    v11(v10);
    v12 = *(v28 + 20);
    sub_22C26FDE4();
    sub_22BF6AA80();
    sub_22BE18524();
    (*(v13 + 8))(v8 + v12);
    v14 = sub_22BE18040();
    sub_22BE61C88(v14, v15, v16);
    sub_22BE3FDE8();

    *(v2 + 4) = v8 + v12;
    sub_22BE35E74();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    sub_22BE26B64(v31);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v22 = sub_22BE22C7C();
    MEMORY[0x2318AD180](v22);

    (*(v6 + 8))(v29, v7);
  }

  else
  {

    v23 = sub_22BE18040();
    v25(v23, v24);
  }

  v1[8] = sub_22BF52030();
  v30 = sub_22BE36520(&dword_22C28ECF0);

  v26 = swift_task_alloc();
  v1[9] = v26;
  *v26 = v1;
  v26[1] = sub_22BF45744;
  sub_22BE3E418();

  return (v30)();
}

uint64_t sub_22BF45744()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF45850()
{
  sub_22BE183F0();

  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF458B4()
{
  sub_22BE183FC();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF45938()
{
  sub_22BE183F0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for ToolboxVersion(0);
  v1[7] = v6;
  sub_22BE19448(v6);
  v1[8] = sub_22BE25184();
  v7 = sub_22C26E164();
  v1[9] = v7;
  sub_22BE17A18(v7);
  v1[10] = v8;
  v1[11] = sub_22BE25184();
  v9 = sub_22C271FF4();
  v1[12] = v9;
  sub_22BE17A18(v9);
  v1[13] = v10;
  v1[14] = sub_22BE3602C();
  v1[15] = swift_task_alloc();
  v11 = sub_22C2720A4();
  v1[16] = v11;
  sub_22BE17A18(v11);
  v1[17] = v12;
  v1[18] = sub_22BE3602C();
  v1[19] = swift_task_alloc();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BF45ABC(__n128 a1)
{
  sub_22C271AD4();

  v2 = sub_22C272084();
  v3 = sub_22C2737C4();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v6 = v1[16];
  v7 = v1[17];
  if (v4)
  {
    sub_22BE1A260();
    v8 = swift_slowAlloc();
    sub_22BE2386C();
    v34 = swift_slowAlloc();
    *v8 = 136315138;
    v9 = sub_22BE18240();
    *(v8 + 4) = sub_22BE61C88(v9, v10, v11);
    _os_log_impl(&dword_22BE15000, v2, v3, "Replacing client actions for %s", v8, 0xCu);
    sub_22BE26B64(v34);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180](v12);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180](v13);
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v1[20] = v14;
  sub_22C272014();
  sub_22C271FC4();
  v15 = sub_22C272014();
  v16 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v15, v16, v18, "ToolEmbeddingsDatabase:replaceClientActions", "", v17, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180](v19);
  }

  v20 = v1[10];
  v21 = v1[5];

  v22 = sub_22BE1B73C();
  v23(v22);
  sub_22C272064();
  sub_22BE29494();
  swift_allocObject();
  v1[21] = sub_22BE25254();
  v24 = sub_22BE1AEE4();
  v25(v24);
  sub_22C26E154();
  sub_22C26E104();
  v1[22] = v26;
  v1[23] = *(v20 + 8);
  v1[24] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27 = sub_22BE324FC();
  v28(v27);
  v29 = swift_task_alloc();
  v1[25] = v29;
  *v29 = v1;
  v29[1] = sub_22BF45D8C;
  v30 = v1[3];
  v31 = v1[4];
  v32 = v1[2];

  return sub_22BF56B28(v32, v30, v31, v21);
}

uint64_t sub_22BF45D8C()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF45E84(uint64_t a1)
{
  v2 = v1[23];
  sub_22C26E154();
  sub_22C26E104();
  v3 = sub_22BE18040();
  v2(v3);
  sub_22C271AD4();

  v4 = sub_22C272084();
  v5 = sub_22C273784();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = v1[18];
    v28 = v1[20];
    v26 = v1[16];
    v6 = v1[7];
    v7 = v1[8];
    v8 = v1[6];
    sub_22BE33578();
    swift_slowAlloc();
    sub_22BF6AA04();
    v29 = swift_slowAlloc();
    *v2 = 136315394;
    sub_22BE1BD3C((v8 + 120), *(v8 + 144));
    v9 = sub_22BE3C3AC();
    v10(v9);
    v11 = v7 + *(v6 + 20);
    sub_22C26FDE4();
    sub_22BF6AA80();
    sub_22BE18524();
    (*(v12 + 8))(v11);
    v13 = sub_22BE18040();
    sub_22BE61C88(v13, v14, v15);
    sub_22BE3FDE8();

    sub_22BF6AB50();
    sub_22BE35E74();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    sub_22BE26B64(v29);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v21 = sub_22BE22C7C();
    MEMORY[0x2318AD180](v21);

    v28(v27, v26);
  }

  else
  {
    v22 = v1[20];

    v23 = sub_22BE18040();
    v22(v23);
  }

  sub_22BE3A4EC();
  sub_22BF5BCAC();

  sub_22BE1A26C();

  return v24();
}

uint64_t sub_22BF460E8()
{
  sub_22BE2035C();
  sub_22BE3A4EC();
  sub_22BF5BCAC();

  sub_22BE17A94();

  return v0();
}

double sub_22BF461A8()
{
  if (*(v0 + 200))
  {

    sub_22C271B84();
  }

  return result;
}

uint64_t sub_22BF461FC()
{
  sub_22BE183F0();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = type metadata accessor for ToolboxVersion(0);
  *(v1 + 48) = v7;
  sub_22BE19448(v7);
  *(v1 + 56) = sub_22BE25184();
  v8 = sub_22C2720A4();
  *(v1 + 64) = v8;
  sub_22BE17A18(v8);
  *(v1 + 72) = v9;
  *(v1 + 80) = sub_22BE25184();
  v10 = sub_22C26E164();
  *(v1 + 88) = v10;
  sub_22BE17A18(v10);
  *(v1 + 96) = v11;
  *(v1 + 104) = sub_22BE25184();
  v12 = sub_22C271FF4();
  *(v1 + 112) = v12;
  sub_22BE17A18(v12);
  *(v1 + 120) = v13;
  *(v1 + 128) = sub_22BE3602C();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = *v3;
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22BF4637C(uint64_t a1)
{
  sub_22C272014();
  sub_22C271FC4();
  v2 = sub_22C272014();
  v3 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v2, v3, v5, "ToolEmbeddingsDatabase:replaceTools", "", v4, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v6 = v1[18];
  v7 = v1[16];
  v8 = v1[17];
  v9 = v1[14];
  v10 = v1[15];
  v11 = v1[12];
  v12 = v1[13];
  v13 = v1[5];
  v21 = v1[4];
  v22 = v1[3];
  v23 = v1[19];
  v19 = v1[11];
  v20 = v1[2];

  (*(v10 + 16))(v7, v8, v9);
  sub_22C272064();
  sub_22BE29494();
  swift_allocObject();
  v1[20] = sub_22BE25254();
  (*(v10 + 8))(v8, v9);
  sub_22C26E154();
  sub_22C26E104();
  v1[21] = v14;
  v15 = *(v11 + 8);
  v1[22] = v15;
  v1[23] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v19);
  v1[24] = sub_22BF52030();
  v16 = swift_allocObject();
  v1[25] = v16;
  v16[2] = v13;
  v16[3] = v6;
  v16[4] = v23;
  v16[5] = v21;
  v16[6] = v20;
  v16[7] = v22;

  sub_22BF39330(v6);
  v24 = sub_22BE36520(&dword_22C28ECF0);

  v17 = swift_task_alloc();
  v1[26] = v17;
  *v17 = v1;
  v17[1] = sub_22BF465FC;

  return (v24)();
}

uint64_t sub_22BF465FC()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF46704(uint64_t a1)
{
  v2 = v1[22];
  sub_22C26E154();
  sub_22C26E104();
  v3 = sub_22BE18944();
  v2(v3);
  sub_22C271AD4();

  v4 = sub_22C272084();
  v5 = sub_22C273784();

  if (os_log_type_enabled(v4, v5))
  {
    v26 = v1[9];
    v6 = v1[7];
    v27 = v1[8];
    v28 = v1[10];
    v7 = v1[5];
    v8 = v1[6];
    sub_22BE33578();
    swift_slowAlloc();
    sub_22BF6AA04();
    v29 = swift_slowAlloc();
    *v2 = 136315394;
    sub_22BE1BD3C((v7 + 120), *(v7 + 144));
    v9 = sub_22BE3C3AC();
    v10(v9);
    v11 = *(v8 + 20);
    sub_22C26FDE4();
    sub_22BF6AA80();
    sub_22BE18524();
    (*(v12 + 8))(v6 + v11);
    v13 = sub_22BE18040();
    sub_22BE61C88(v13, v14, v15);
    sub_22BE3FDE8();

    sub_22BF6AB50();
    sub_22BE35E74();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    sub_22BE26B64(v29);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v21 = sub_22BE22C7C();
    MEMORY[0x2318AD180](v21);

    (*(v26 + 8))(v28, v27);
  }

  else
  {

    v22 = sub_22BE18040();
    v23(v22);
  }

  sub_22BF5BCAC();

  sub_22BE1A26C();

  return v24();
}

uint64_t sub_22BF46964()
{
  sub_22BE2035C();

  sub_22BF5BCAC();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF46A44()
{
  sub_22C26E4B4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v3 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  sub_22C26E304();
  if (!v1)
  {
    v3 = sub_22C26E4A4();
    v4 = sub_22BE200D4();
    v5(v4);
  }

  return v3;
}

uint64_t sub_22BF46B3C()
{
  sub_22BE183FC();
  *(v0 + 24) = sub_22BF52030();
  v3 = sub_22BE36520(&dword_22C28ECF0);

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22BF46C08;
  sub_22BE3E418();

  return (v3)();
}

uint64_t sub_22BF46C08()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF46D10()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

void static ToolBoxUtility.stableHashData(hashableString:)()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v58 = *MEMORY[0x277D85DE8];
  sub_22C272E24();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE1AB80();
  v6 = sub_22C272E14();
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = v9 - v8;

  sub_22BE297F8(v4, v2);
  sub_22BE29F88(&qword_28106DEB8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
  sub_22BE1A6BC();
  sub_22C272DA4();
  v11 = sub_22BE1B18C();
  sub_22BE29D7C(v11, v12);
  v13 = sub_22BE1B18C();
  sub_22BF15384(v13, v14, v0);
  v15 = sub_22BE1B18C();
  sub_22BE29DD4(v15, v16);
  sub_22BE1A6BC();
  sub_22C272D94();
  v17 = sub_22BE1AB74();
  v18(v17);
  v19 = sub_22BE1B18C();
  sub_22BE29DD4(v19, v20);
  v21 = sub_22BF1418C(v10);
  v23 = v22;
  v24 = sub_22C273534();
  *(v24 + 16) = 8;
  *(v24 + 32) = 0;
  v25 = v24 + 32;
  v26 = sub_22C26E054();
  if (v26 != v27)
  {
    v28 = v26;
    v29 = v27;
    if (v27 >= v26)
    {
      v49 = v21 >> 32;
      v50 = v21;
      v48 = v21 >> 8;
      v46 = v21 >> 24;
      v47 = v21 >> 16;
      v44 = v21 >> 40;
      v45 = HIDWORD(v21);
      v42 = HIBYTE(v21);
      v43 = HIWORD(v21);
      v51 = v21;
      while (2)
      {
        if (v28 >= v29)
        {
          __break(1u);
        }

        else
        {
          v30 = *(v24 + 16);
          if (v30)
          {
            v31 = v28 + 1;
            v32 = v28 % v30;
            switch(v23 >> 62)
            {
              case 1uLL:
                if (v28 < v50 || v28 >= v49)
                {
                  goto LABEL_33;
                }

                v39 = sub_22C26DCF4();
                if (!v39)
                {
                  goto LABEL_39;
                }

                v35 = v39;
                v40 = sub_22C26DD14();
                v37 = v28 - v40;
                if (!__OFSUB__(v28, v40))
                {
                  goto LABEL_22;
                }

                goto LABEL_35;
              case 2uLL:
                if (v28 < *(v21 + 16))
                {
                  goto LABEL_32;
                }

                if (v28 >= *(v21 + 24))
                {
                  goto LABEL_34;
                }

                v34 = sub_22C26DCF4();
                if (!v34)
                {
                  goto LABEL_40;
                }

                v35 = v34;
                v36 = sub_22C26DD14();
                v37 = v28 - v36;
                if (__OFSUB__(v28, v36))
                {
                  goto LABEL_36;
                }

LABEL_22:
                v33 = *(v35 + v37);
                v21 = v51;
LABEL_23:
                if ((v32 & 0x8000000000000000) != 0)
                {
                  goto LABEL_29;
                }

                if (v32 >= *(v24 + 16))
                {
                  goto LABEL_30;
                }

                *(v25 + v32) ^= v33;
                ++v28;
                if (v29 == v31)
                {
                  goto LABEL_26;
                }

                continue;
              case 3uLL:
                goto LABEL_38;
              default:
                if (v28 >= BYTE6(v23))
                {
                  goto LABEL_31;
                }

                v52[0] = v21;
                v52[1] = v48;
                v52[2] = v47;
                v52[3] = v46;
                v52[4] = v45;
                v52[5] = v44;
                v52[6] = v43;
                v52[7] = v42;
                v53 = v23;
                v54 = BYTE2(v23);
                v55 = BYTE3(v23);
                v56 = BYTE4(v23);
                v57 = BYTE5(v23);
                v33 = v52[v28];
                goto LABEL_23;
            }
          }
        }

        break;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

LABEL_26:
  [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v25 length:*(v24 + 16)];
  v41 = sub_22BE28DA8();
  sub_22BE29DD4(v41, v23);

  sub_22BE1AABC();
}

uint64_t sub_22BF471BC()
{
  sub_22BE183FC();
  *(v0 + 24) = sub_22BF52030();
  v3 = sub_22BE36520(&dword_22C28ECF0);

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22BF47288;
  sub_22BE3E418();

  return (v3)();
}

uint64_t sub_22BF47288()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF47390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = swift_allocObject();
  v19 = sub_22BE41FB4();
  sub_22BF52530(v19, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v22, a11, a12, a9, a10, v23, a8, v25, v26, v27, v28, v29);
  return v18;
}

void sub_22BF47454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v134 = v25;
  v135 = v21;
  v133 = v26;
  v126 = v27;
  v127 = v28;
  v119 = v29;
  v136 = v30;
  v131 = v31;
  v132 = v32;
  sub_22C26E4C4();
  sub_22BE179D8();
  v129 = v34;
  v130 = v33;
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v128 = v35;
  sub_22BE183BC();
  v36 = sub_22C26E494();
  v37 = sub_22BE19448(v36);
  MEMORY[0x28223BE20](v37);
  sub_22BE179EC();
  v40 = v39 - v38;
  v41 = sub_22C271FF4();
  sub_22BE179D8();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v45);
  v47 = &v118 - v46;
  sub_22C272014();
  sub_22C271FC4();
  v48 = sub_22C272014();
  v49 = sub_22C2737F4();
  v50 = sub_22C273824();
  v139 = v40;
  if (v50)
  {
    sub_22BE36138();
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v48, v49, v52, "ToolEmbeddingsDatabase:searchToolsStage1", "", v51, 2u);
    v40 = v139;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v43 + 16))(v22, v47, v41);
  sub_22C272064();
  sub_22BE29494();
  swift_allocObject();
  sub_22BE23E90();
  v53 = sub_22C272054();
  sub_22BE392E0(v53);
  v54 = sub_22BE25D0C();
  v55(v54);
  v138 = v20;
  v56 = v127;
  if (v127)
  {
    sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
    v57 = sub_22C26E404();
    sub_22BE17A18(v57);
    sub_22BF6AAD4();
    v137 = swift_allocObject();
    v125 = xmmword_22C275160;
    *(v137 + 16) = xmmword_22C275160;
    v21 = "attributedBundleID";

    sub_22BF6ACAC(v58, 0x800000022C2D48B0);
    v123 = sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v59 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
    v60 = *v59;
    v120 = *(*v59 + 72);
    v122 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v61 = v122;
    v62 = swift_allocObject();
    v121 = v62;
    *(v62 + 16) = xmmword_22C2759F0;
    v63 = v62 + v61;
    v64 = (v62 + v61 + v59[14]);
    v65 = *MEMORY[0x277D78238];
    v66 = sub_22C26E464();
    sub_22BE18000();
    v68 = *(v67 + 104);
    v68(v63, v65, v66);
    *v64 = v126;
    v64[1] = v56;
    v69 = *MEMORY[0x277D78288];
    v70 = sub_22C26E4D4();
    sub_22BE18000();
    (*(v71 + 104))(v64, v69, v70);
    sub_22BE187DC();
    sub_22BE19DC4(v72, v73, v74, v70);
    v40 = v59[14];
    v75 = sub_22BE38614();
    (v68)(v75);
    sub_22BE1A140();
    sub_22BE19DC4(v76, v77, v78, v70);
    sub_22C26E3F4();
    v79 = v122;
    v80 = swift_allocObject();
    *(v80 + 16) = v125;
    sub_22BF53E38(v80 + v79, (v80 + v79 + v59[14]), 3);
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
  }

  v126 = sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE486FC();
  v82 = *(v81 + 72);
  v122 = *(v83 + 80);
  v127 = 3 * v82;
  *&v125 = (v122 + 32) & ~v122;
  v84 = swift_allocObject();
  sub_22BF6AAA8(v84, xmmword_22C27FED0);
  sub_22BE2296C();
  sub_22BF53E38(v85, v86, 2);
  sub_22BE2296C();
  sub_22BF53E38(v87, v88, 4);
  a10 = v84;
  sub_22BE6E0F0(v80);
  v120 = a10;
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v89 = sub_22C26E404();
  sub_22BE17A18(v89);
  v124 = *(v90 + 72);
  sub_22BE3AE8C();
  v91 = swift_allocObject();
  v123 = v91;
  *(v91 + 16) = xmmword_22C2759F0;
  v121 = v91 + v40;
  v92 = v128;
  v93 = v129;
  *v128 = 0;
  *(v92 + 8) = 1;
  v94 = *MEMORY[0x277D78270];
  v95 = *(v93 + 104);
  v96 = v130;
  v95(v92, v94, v130);
  sub_22BE23CD0();
  sub_22C26E474();
  sub_22C26E3F4();
  *v92 = 0;
  *(v92 + 8) = 1;
  v95(v92, v94, v96);
  v97 = v138;
  sub_22BF6AA58();
  sub_22C26E474();
  v98 = swift_allocObject();
  sub_22BF6AAA8(v98, xmmword_22C28E670);
  sub_22BE2296C();
  sub_22BF53E38(v99, v100, 0);
  sub_22BE2296C();
  sub_22BF53E38(v101, v102, 3);
  sub_22BE2296C();
  sub_22BF53E38(v103, v104, 2);
  sub_22BE29454();
  sub_22C26E3F4();
  a10 = v123;
  sub_22BE6E0C4(v137);
  v105 = sub_22BE3C00C();
  sub_22BF58A38(v105, v106, v107, v108, v109, v110);
  if (!v21)
  {

    v111 = sub_22BE19454();
    sub_22BE641D4(v111, v112);
    sub_22BE41760();
    if (v97)
    {
      sub_22C274064();
      swift_unknownObjectRetain_n();
      v113 = swift_dynamicCastClass();
      if (!v113)
      {
        swift_unknownObjectRelease();
        v113 = MEMORY[0x277D84F90];
      }

      v114 = *(v113 + 16);

      if (__OFSUB__(v97 >> 1, v82))
      {
        __break(1u);
      }

      else if (v114 == (v97 >> 1) - v82)
      {
        swift_dynamicCastClass();
        sub_22BF6ACC4();
        swift_unknownObjectRelease();
        sub_22BF6AA4C();
        if (v94)
        {
LABEL_16:
          v115 = sub_22BE18240();
          v117 = sub_22BF576B8(v115, v116, 1);

          a10 = v117;
          sub_22BF5AAB4(&a10, v119);
          sub_22BE36050();
          sub_22BF5BCAC();

          goto LABEL_17;
        }

LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    sub_22BE41E4C();
    sub_22BF6ACC4();
    sub_22BF6AA4C();
    goto LABEL_15;
  }

  sub_22BF6AA4C();
  sub_22BE36050();
  sub_22BF5BCAC();

LABEL_17:
  sub_22BE19650();
  sub_22BE18478();
}

void sub_22BF47D78()
{
  sub_22BE19130();
  v70 = v2;
  v71 = v3;
  sub_22C26E4C4();
  sub_22BE179D8();
  v73 = v5;
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v72 = v6;
  sub_22BE183BC();
  v7 = sub_22C26E494();
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  sub_22BE183BC();
  sub_22C271FF4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  sub_22C272014();
  sub_22C271FC4();
  v14 = sub_22C272014();
  v15 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v14, v15, v17, "ToolEmbeddingsDatabase:searchToolsStage1", "", v16, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v18 = sub_22BE2590C();
  v19(v18);
  sub_22C272064();
  sub_22BE29494();
  swift_allocObject();
  v20 = sub_22C272054();
  sub_22BE392E0(v20);
  v21 = sub_22BE22DF4();
  v22(v21);
  v23 = "IntelligenceFlowPlannerSupport";
  v76 = v0;
  if (v71)
  {
    sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
    sub_22BE17BC4();
    v24 = sub_22C26E404();
    sub_22BE17A18(v24);
    sub_22BF6AAD4();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_22C275160;
    v1 = "attributedBundleID";

    sub_22BF6ACAC(v25, 0x800000022C2D48B0);
    sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
    sub_22BE486FC();
    v65 = *(v26 + 72);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_22C2759F0;
    v29 = (v66 + v28 + *(v12 + 56));
    v30 = *MEMORY[0x277D78238];
    v31 = sub_22C26E464();
    sub_22BE18000();
    v33 = *(v32 + 104);
    v33(v66 + v28, v30, v31);
    *v29 = v70;
    v29[1] = v71;
    v34 = *MEMORY[0x277D78288];
    v35 = sub_22C26E4D4();
    sub_22BE18000();
    (*(v36 + 104))(v29, v34, v35);
    sub_22BE187DC();
    sub_22BE19DC4(v37, v38, v39, v35);
    v33(v66 + v28 + v65, *MEMORY[0x277D78230], v31);
    v23 = "IntelligenceFlowPlannerSupport";
    sub_22BE1A140();
    sub_22BE19DC4(v40, v41, v42, v35);
    sub_22C26E3F4();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22C275160;
    sub_22BE2296C();
    sub_22BF53E38(v44, v45, 3);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
    v75 = MEMORY[0x277D84F90];
  }

  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v46 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  v68 = *(*v46 + 72);
  v69 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
  v47 = v69;
  v48 = swift_allocObject();
  v67 = *(v23 + 159);
  *(v48 + 16) = v67;
  sub_22BF53E38(v48 + v47, (v48 + v47 + v46[14]), 1);
  sub_22BF53E38(v48 + v47 + v68, (v48 + v47 + v68 + v46[14]), 4);
  sub_22BE6E0F0(v43);
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  sub_22BE17BC4();
  v49 = sub_22C26E404();
  sub_22BE17A18(v49);
  *(swift_allocObject() + 16) = v67;
  sub_22BE36238();
  v50 = *MEMORY[0x277D78270];
  v51 = *(v73 + 104);
  v51(v72, v50, v74);
  sub_22BE23CD0();
  sub_22BF6AB80();
  sub_22C26E474();
  sub_22C26E3F4();
  sub_22BE36238();
  v51(v72, v50, v74);
  sub_22BF6AA58();
  sub_22C26E474();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_22C275160;
  sub_22BF53E38(v52 + v69, (v52 + v69 + v46[14]), 0);
  sub_22BE1AB74();
  sub_22C26E3F4();
  sub_22BE6E0C4(v75);
  v53 = sub_22BE3C00C();
  sub_22BF58A38(v53, v54, v55, v56, v57, v58);
  if (!v1)
  {

    v59 = sub_22BE19454();
    sub_22BE641D4(v59, v60);
    sub_22BE41760();
    if (v74)
    {
      sub_22C274064();
      swift_unknownObjectRetain_n();
      v61 = swift_dynamicCastClass();
      if (!v61)
      {
        swift_unknownObjectRelease();
        v61 = MEMORY[0x277D84F90];
      }

      v62 = *(v61 + 16);

      if (__OFSUB__(v74 >> 1, v76))
      {
        __break(1u);
      }

      else if (v62 == (v74 >> 1) - v76)
      {
        swift_dynamicCastClass();
        sub_22BF6ACC4();
        swift_unknownObjectRelease();
        sub_22BF6AA4C();
        if (v72)
        {
LABEL_16:
          v63 = sub_22BE18240();
          sub_22BF576B8(v63, v64, 1);
          sub_22BE48A68();

          sub_22BE36050();
          sub_22BF5BCAC();

          goto LABEL_17;
        }

LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    sub_22BE41E4C();
    sub_22BF6ACC4();
    sub_22BF6AA4C();
    goto LABEL_15;
  }

  sub_22BF6AA4C();

  sub_22BE36050();
  sub_22BF5BCAC();

LABEL_17:
  sub_22BE19650();
  sub_22BE18478();
}

void sub_22BF48634()
{
  sub_22BE19130();
  v2 = v0;
  v108 = v3;
  v109 = v4;
  v113 = v5;
  v106 = v6;
  v107 = v7;
  sub_22C2720A4();
  sub_22BE179D8();
  v111 = v9;
  v112 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BE183AC();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  sub_22BE190A8(v14);
  v15 = sub_22BE5CE4C(&qword_27D90B6D8, &qword_22C28EBF8);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v104 = v17;
  v18 = sub_22BE183BC();
  v105 = type metadata accessor for ToolBoxToolSearchResult(v18);
  sub_22BE179D8();
  v103 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v110 = v21;
  sub_22BE183BC();
  v22 = sub_22C271FF4();
  sub_22BE179D8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v26);
  v28 = v99 - v27;
  sub_22C272014();
  sub_22C271FC4();
  v29 = sub_22C272014();
  v30 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v31 = swift_slowAlloc();
    v102 = v0;
    v32 = v12;
    v33 = v31;
    *v31 = 0;
    v34 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v29, v30, v34, "ToolEmbeddingsDatabase:searchToolStage2", "", v33, 2u);
    v12 = v32;
    v2 = v102;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v35 = sub_22BE22DF4();
  v36(v35);
  sub_22C272064();
  sub_22BE29494();
  swift_allocObject();
  sub_22BE289CC();
  v37 = sub_22C272054();
  (*(v24 + 8))(v28, v22);
  v38 = v113;
  if (*(v113 + 16))
  {
    v39 = sub_22C26E314();
    if (!v1)
    {
      v40 = v39;
      v41 = sub_22BF6AA6C();
      v42 = sub_22BF5B2F4(v41, 0xE800000000000000, v38, v2);
      v44 = v106;
      v43 = v107;
      sub_22BF6AC74(v106, v107, v40, v42);
      v100 = v49;
      v101 = v50;
      v99[1] = v37;

      v51 = sub_22BF5B2F4(0xD000000000000012, 0x800000022C2D4890, v113, v2);
      sub_22BF6AC74(v44, v43, v40, v51);
      v53 = v52;

      v54 = v100;

      sub_22BF2A9E0(v55, v54);
      v57 = v56;
      *&v115[0] = v101;

      sub_22BE6E21C(v58);
      v59 = sub_22BE1B328();
      v61 = sub_22BF576B8(v59, v60, 0);
      v108 = v57;
      v109 = v53;
      v102 = v2;

      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = v61 + 32;
        v64 = MEMORY[0x277D84F90];
        v66 = v104;
        v65 = v105;
        do
        {
          sub_22BE26B00(v63, v115);
          sub_22BE49224(v115, &v114);
          v67 = sub_22BE36658();
          sub_22BE5CE4C(v67, v68);
          if (swift_dynamicCast())
          {
            sub_22BE187DC();
            sub_22BE19DC4(v69, v70, v71, v65);
            sub_22BE29E84();
            sub_22BF68168();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_22BE1B8F8();
              sub_22BE67120(v77, v78, v79, v64);
              v64 = v80;
            }

            v73 = *(v64 + 16);
            v72 = *(v64 + 24);
            if (v73 >= v72 >> 1)
            {
              v81 = sub_22BE18278(v72);
              sub_22BE67120(v81, v82, v83, v64);
              v64 = v84;
            }

            *(v64 + 16) = v73 + 1;
            sub_22BE25AD8();
            sub_22BE29E84();
            sub_22BF68168();
            v66 = v104;
            v65 = v105;
          }

          else
          {
            sub_22BE1A140();
            sub_22BE19DC4(v74, v75, v76, v65);
            sub_22BE233E8(v66, &qword_27D90B6D8, &qword_22C28EBF8);
          }

          v63 += 40;
          --v62;
        }

        while (v62);
      }

      else
      {
        v64 = MEMORY[0x277D84F90];
      }

      *&v115[0] = v64;

      sub_22BF44174(v115);

      sub_22BE406B8();

      sub_22BE3C6E0();
      sub_22C271AD4();

      v85 = v113;

      v86 = sub_22C272084();
      v87 = sub_22C273794();

      if (os_log_type_enabled(v86, v87))
      {
        sub_22BE33578();
        v88 = swift_slowAlloc();
        *&v115[0] = sub_22BE3CF58();
        *v88 = 136315394;
        v89 = sub_22BE200D4();
        v90 = MEMORY[0x2318ABBB0](v89);
        v92 = sub_22BE61C88(v90, v91, v115);

        *(v88 + 4) = v92;
        *(v88 + 12) = 2080;
        v93 = MEMORY[0x2318ABBB0](v85, MEMORY[0x277D837D0]);
        v95 = sub_22BE61C88(v93, v94, v115);

        *(v88 + 14) = v95;
        _os_log_impl(&dword_22BE15000, v86, v87, "Top tool matches: %s for bundleIDS: %s", v88, 0x16u);
        swift_arrayDestroy();
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
        v96 = sub_22BE22C7C();
        MEMORY[0x2318AD180](v96);
      }

      v97 = sub_22BE2399C();
      v39 = v98(v97);
    }
  }

  else
  {
    sub_22C271AD4();
    v45 = sub_22C272084();
    v46 = sub_22C273784();
    if (sub_22BE35F8C(v46))
    {
      sub_22BE36138();
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22BE15000, v45, v46, "ToolBox returning zero tools as it received empty list bundle ids", v47, 2u);
      v48 = sub_22BE3D494();
      MEMORY[0x2318AD180](v48);
    }

    v39 = (*(v111 + 8))(v12, v112);
  }

  sub_22BE39E38(v39, "ToolEmbeddingsDatabase:searchToolStage2");

  sub_22BE18478();
}

void sub_22BF48E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v109 = v20;
  v106 = v26;
  v107 = v27;
  v29 = v28;
  v104 = v30;
  v105 = v31;
  sub_22C2720A4();
  sub_22BE179D8();
  v99 = v33;
  v100 = v32;
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  v98 = v35;
  sub_22BE183BC();
  sub_22C26E4C4();
  sub_22BE179D8();
  v102 = v37;
  v103 = v36;
  MEMORY[0x28223BE20](v36);
  sub_22BE17A44();
  v101 = v38;
  sub_22BE183BC();
  v39 = sub_22C26E494();
  v40 = sub_22BE19448(v39);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE179D8();
  v115 = v42;
  v116 = v41;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE234F4();
  v44 = sub_22C271FF4();
  sub_22BE179D8();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v48);
  sub_22BE324EC();
  sub_22C272014();
  sub_22C271FC4();
  v49 = sub_22C272014();
  v50 = sub_22C2737F4();
  v108 = v29;
  if (sub_22C273824())
  {
    sub_22BE36138();
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v49, v50, v52, "ToolEmbeddingsDatabase:searchToolsStage3", "", v51, 2u);
    v29 = v108;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v46 + 16))(v22, v23, v44);
  sub_22C272064();
  sub_22BE29494();
  swift_allocObject();
  sub_22BE28DA8();
  sub_22C272054();
  (*(v46 + 8))(v23, v44);
  v53 = *(v29 + 16);
  if (!v53)
  {
    sub_22C271AD4();
    v76 = sub_22C272084();
    sub_22C273784();
    sub_22BE4612C();
    if (os_log_type_enabled(v76, v77))
    {
      sub_22BE36138();
      v78 = swift_slowAlloc();
      sub_22BF6AB44(v78);
      sub_22BF6AC20();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
    }

    v84 = sub_22BE39058();
    v85(v84);
    goto LABEL_16;
  }

  a10 = MEMORY[0x277D84F90];
  sub_22BE7123C(0, v53, 0);
  v54 = a10;
  v113 = *MEMORY[0x277D78238];
  v111 = sub_22C26E464();
  sub_22BE18000();
  v110 = *(v55 + 104);
  v56 = *MEMORY[0x277D78288];
  v57 = (v29 + 40);
  do
  {
    v58 = *(v57 - 1);
    v59 = *v57;
    v60 = (v21 + *(v116 + 48));
    v110(v21, v113, v111);
    *v60 = v58;
    v60[1] = v59;
    v61 = sub_22C26E4D4();
    sub_22BE18000();
    (*(v62 + 104))(v60, v56, v61);
    sub_22BE187DC();
    sub_22BE19DC4(v63, v64, v65, v61);
    a10 = v54;
    v67 = *(v54 + 16);
    v66 = *(v54 + 24);

    if (v67 >= v66 >> 1)
    {
      sub_22BE39E18();
      sub_22BE7123C(v69, v70, v71);
      v54 = a10;
    }

    *(v54 + 16) = v67 + 1;
    v68 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    sub_22BEBFD18();
    v57 += 2;
    --v53;
  }

  while (v53);
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v72 = sub_22C26E404();
  sub_22BE17A18(v72);
  sub_22BE3AE8C();
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_22C2759F0;
  *v101 = 0;
  v101[1] = 0;
  v112 = *(v102 + 104);
  (v112)(v101, *MEMORY[0x277D78268], v103);
  sub_22C26E474();
  sub_22C26E3F4();
  *v101 = 0;
  *(v101 + 8) = 1;
  v73 = sub_22BE38614();
  v112(v73);
  sub_22BE23CD0();
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_22C275160;
  sub_22BF53E38(v74 + v68, (v74 + v68 + *(v116 + 48)), 4);
  sub_22C26E3F4();
  v75 = sub_22BF5B8C8(v104, v105, v114, v106, v107);
  if (!v109)
  {
    v86 = v75;

    sub_22C271AD4();

    v87 = sub_22C272084();
    v88 = sub_22C273794();

    if (os_log_type_enabled(v87, v88))
    {
      sub_22BE33578();
      v89 = swift_slowAlloc();
      a10 = sub_22BE3CF58();
      *v89 = 136315394;
      v90 = type metadata accessor for ToolBoxToolSearchResult(0);
      v91 = MEMORY[0x2318ABBB0](v86, v90);
      v93 = sub_22BE61C88(v91, v92, &a10);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      v94 = MEMORY[0x2318ABBB0](v108, MEMORY[0x277D837D0]);
      v96 = sub_22BE61C88(v94, v95, &a10);

      *(v89 + 14) = v96;
      _os_log_impl(&dword_22BE15000, v87, v88, "Top tool matches: %s for toolIds: %s", v89, 0x16u);
      swift_arrayDestroy();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      v97 = sub_22BE3D494();
      MEMORY[0x2318AD180](v97);
    }

    (*(v99 + 8))(v98, v100);
LABEL_16:
    sub_22BE36050();
    sub_22BF5BCAC();

    goto LABEL_17;
  }

  sub_22BE36050();
  sub_22BF5BCAC();

LABEL_17:
  sub_22BE18478();
}

void sub_22BF4970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v382 = v25;
  v383 = v21;
  v325 = v26;
  v348 = sub_22C26E4D4();
  sub_22BE179D8();
  v380 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  sub_22BE190A8(v30);
  v322 = sub_22BE5CE4C(&qword_27D90B290, &qword_22C28C8F0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v31);
  sub_22BE17B98();
  v376 = v32;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v33);
  sub_22BE19E94();
  sub_22BE190A8(v34);
  v35 = sub_22BE5CE4C(&qword_27D90B2E8, &unk_22C28EBB0);
  v36 = sub_22BE19448(v35);
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  sub_22BE18950(v38);
  v346 = sub_22C272CA4();
  sub_22BE179D8();
  v331 = v39;
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  sub_22BE18950(v42);
  v372 = sub_22C2720A4();
  sub_22BE179D8();
  v371 = v43;
  MEMORY[0x28223BE20](v44);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v45);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v46);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v47);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v49);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  sub_22BE19E94();
  v52 = sub_22BE18950(v51);
  v362 = type metadata accessor for ToolboxCustomKeyResult(v52);
  sub_22BE179D8();
  v329 = v53;
  MEMORY[0x28223BE20](v54);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v55);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v57);
  sub_22BE19E94();
  sub_22BE18950(v58);
  v344 = sub_22C272224();
  sub_22BE179D8();
  v364 = v59;
  MEMORY[0x28223BE20](v60);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v61);
  sub_22BE19E94();
  sub_22BE190A8(v62);
  v360[0] = sub_22BE5CE4C(&qword_27D90B348, &qword_22C28CA00);
  sub_22BE179D8();
  v365 = v63;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v64);
  sub_22BE1A174();
  sub_22BE18950(v65);
  v367 = sub_22C2722D4();
  sub_22BE179D8();
  v357 = v66;
  MEMORY[0x28223BE20](v67);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v68);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v69);
  sub_22BE19E94();
  sub_22BE190A8(v70);
  v71 = sub_22BE5CE4C(&qword_27D90B6D0, &unk_22C28EBA0);
  sub_22BE19448(v71);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v72);
  v73 = sub_22BE3A208();
  v74 = type metadata accessor for ToolboxDatabasePayload(v73);
  sub_22BE18000();
  MEMORY[0x28223BE20](v75);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v76);
  sub_22BE19E94();
  sub_22BE18950(v77);
  v368 = sub_22C26E504();
  sub_22BE179D8();
  v381 = v78;
  MEMORY[0x28223BE20](v79);
  sub_22BE17A44();
  sub_22BE18950(v80);
  sub_22C26E4C4();
  sub_22BE179D8();
  v377 = v82;
  v378 = v81;
  MEMORY[0x28223BE20](v81);
  sub_22BE17A44();
  sub_22BE18950(v83);
  v84 = sub_22C26E494();
  v85 = sub_22BE19448(v84);
  MEMORY[0x28223BE20](v85);
  sub_22BE17A44();
  v379 = v86;
  sub_22BE183BC();
  v373 = sub_22C271FF4();
  sub_22BE179D8();
  v88 = v87;
  MEMORY[0x28223BE20](v89);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v90);
  v92 = &v320 - v91;
  v93 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter;
  sub_22C272014();
  sub_22C271FC4();
  v366 = v20;
  v94 = sub_22C272014();
  v95 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v96 = swift_slowAlloc();
    sub_22BF6AB44(v96);
    v97 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v94, v95, v97, "ToolEmbeddingsDatabase:searchToolCustomKey", "", v93, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v98 = sub_22BE18240();
  v99 = v373;
  v100(v98);
  sub_22C272064();
  sub_22BE29494();
  swift_allocObject();
  sub_22BE48A68();
  v332 = sub_22C272054();
  (*(v88 + 8))(v92, v99);
  a10 = MEMORY[0x277D84FA0];
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v101 = sub_22C26E404();
  sub_22BE17A18(v101);
  v373 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v358 = swift_allocObject();
  v363 = xmmword_22C275160;
  *(v358 + 16) = xmmword_22C275160;
  v103 = v374;
  *v374 = 0;
  v103[1] = 0;
  (*(v377 + 104))(v103, *MEMORY[0x277D78268], v378);
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE486FC();
  v105 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v106 = swift_allocObject();
  *(v106 + 16) = v363;
  v107 = v106 + v105;
  v108 = *(v103 + 14);
  v109 = *MEMORY[0x277D78238];
  sub_22C26E464();
  sub_22BE18000();
  (*(v110 + 104))(v107, v109);
  v111 = v380 + 16;
  v112 = v348;
  v324 = *(v380 + 16);
  v324(v107 + v108, v382, v348);
  v113 = v358;
  sub_22BE187DC();
  sub_22BE19DC4(v114, v115, v116, v112);
  sub_22C26E3F4();
  v117 = *(v366 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
  v118 = v383;
  v119 = sub_22C26E314();
  if (v118)
  {
    goto LABEL_4;
  }

  v120 = v119 - 1;
  if (__OFSUB__(v119, 1))
  {
    goto LABEL_103;
  }

  if (v120 < -999)
  {
LABEL_104:
    __break(1u);
    return;
  }

  v336 = v117;
  v320 = v111;
  v383 = 0;
  v121 = 0;
  v339 = v120 / 500 + 1;
  v337 = v339 & ~(v339 >> 63);
  v374 = (v381 + 16);
  v373 = v381 + 8;
  sub_22BE33B48();
  v371 = v122 + 8;
  v356 = v365 + 104;
  v355 = v365 + 8;
  ++v357;
  v341 = v364 + 16;
  v340 = v364 + 8;
  v338 = (v331 + 32);
  v343 = v331 + 16;
  v342 = v331 + 8;
  *&v123 = 136315138;
  v323 = v123;
  v354 = *MEMORY[0x277D721B8];
  sub_22BE33A18();
  v353 = v22;
  v365 = v74;
  v124 = v368;
  for (i = v125; ; i = v348)
  {
    if (v121 == v339)
    {
      sub_22BE3CCE0();
      v121 = a10;
      if (*(a10 + 16) < 2uLL)
      {
        v266 = v327;
        v267 = v326;
      }

      else
      {
        sub_22BE1B754();
        sub_22C271AD4();
        v221 = sub_22C272084();
        v222 = sub_22C2737A4();
        if (sub_22BE35F8C(v222))
        {
          sub_22BE36138();
          v223 = swift_slowAlloc();
          sub_22BF6AB44(v223);
          sub_22BE37784(&dword_22BE15000, v224, v225, "Retrieving tool from the database via a custom key, and received multiple matches");
          sub_22BE1B2A4();
          MEMORY[0x2318AD180]();
        }

        sub_22BE33B48();
        sub_22BE3C558();
        v375 = v226;
        v226();
        v227 = v121 + 56;
        sub_22BE185B4();
        v230 = v229 & v228;
        v232 = (v231 + 63) >> 6;

        v233 = 0;
        v377 = MEMORY[0x277D84F90];
        v234 = v346;
        while (1)
        {
          v235 = v233;
          if (!v230)
          {
            break;
          }

LABEL_65:
          v236 = v121;
          sub_22BE22944();
          sub_22BF6805C();
          v237 = v328;
          sub_22BF68168();
          sub_22BE32508();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22BE33554();
            v238(v330, v237, v234);
            sub_22BE187DC();
            sub_22BE19DC4(v239, v240, v241, v234);
          }

          else
          {
            sub_22BF6AB2C(&v358);
            sub_22BE1A140();
            sub_22BE19DC4(v242, v243, v244, v234);
            sub_22BE3B038();
            sub_22BF680B4();
          }

          v230 &= v230 - 1;
          sub_22BEBFD18();
          v245 = sub_22BE23E90();
          sub_22BE1AB5C(v245, v246, v234);
          v121 = v236;
          if (v247)
          {
            sub_22BE233E8(v112, &qword_27D90B2E8, &unk_22C28EBB0);
          }

          else
          {
            v248 = *v338;
            (*v338)(v321, v112, v234);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v255 = sub_22BE1B8F8();
              sub_22BE66E18(v255, v256, v257, v258);
              v377 = v259;
            }

            v251 = *(v377 + 16);
            v250 = *(v377 + 24);
            if (v251 >= v250 >> 1)
            {
              v260 = sub_22BE18278(v250);
              sub_22BE66E18(v260, v261, v262, v377);
              v377 = v263;
            }

            *(v377 + 16) = v251 + 1;
            sub_22BE25AD8();
            v234 = v346;
            v248(v253 + v252 + *(v254 + 72) * v251, v321, v346);
            v112 = v370;
          }
        }

        while (1)
        {
          v233 = v235 + 1;
          if (__OFADD__(v235, 1))
          {
            goto LABEL_102;
          }

          if (v233 >= v232)
          {
            break;
          }

          v230 = *(v227 + 8 * v233);
          ++v235;
          if (v230)
          {
            goto LABEL_65;
          }
        }

        v289 = v377;
        v22 = *(v377 + 16);
        if (!v22)
        {
          goto LABEL_90;
        }

        v373 = v121;
        v384 = MEMORY[0x277D84F90];
        sub_22BE7125C(0, v22, 0);
        v290 = v384;
        sub_22BE25AD8();
        v292 = v289 + v291;
        v294 = *(v293 + 72);
        v378 = *(v293 + 16);
        v379 = v294;
        v374 = v22;
        do
        {
          sub_22BE3D694();
          v295 = sub_22BE1B73C();
          (v378)(v295);
          v296 = sub_22C272C64();
          v381 = v297;
          v298 = sub_22C272C54();
          v300 = v299;
          sub_22BE33554();
          v301 = sub_22BE18944();
          v302(v301);
          v384 = v290;
          v304 = *(v290 + 16);
          v303 = *(v290 + 24);
          if (v304 >= v303 >> 1)
          {
            v307 = sub_22BE1AAE4(v303);
            sub_22BE7125C(v307, v304 + 1, 1);
            v290 = v384;
          }

          *(v290 + 16) = v304 + 1;
          v305 = (v290 + 32 * v304);
          v306 = v381;
          v305[4] = v296;
          v305[5] = v306;
          v305[6] = v298;
          v305[7] = v300;
          v292 += v379;
          --v22;
        }

        while (v22);

        v22 = v374;
        v121 = v373;
LABEL_91:
        sub_22BF397C0(v290);
        v266 = v327;
        i = v348;
        v267 = v326;
        v113 = v376;
        if (v22 != *(v121 + 16))
        {

LABEL_97:

          v318 = sub_22BF38764();
          sub_22BE196B4(&type metadata for ToolBoxError, v318);
          *v319 = 1;
          swift_willThrow();
          goto LABEL_5;
        }

        v312 = *(v311 + 16);

        if (v312 != 1)
        {
          goto LABEL_97;
        }

        sub_22C271AD4();
        v313 = sub_22C272084();
        v314 = sub_22C2737A4();
        if (sub_22BE35F8C(v314))
        {
          sub_22BE36138();
          v315 = swift_slowAlloc();
          sub_22BF6AB44(v315);
          sub_22BE37784(&dword_22BE15000, v316, v317, "Received multiple results, but all were assistant schemas of the same domain+kind. Proceeding, since these are equivalent");
          sub_22BE1B2A4();
          MEMORY[0x2318AD180]();
        }

        sub_22BE33B48();
        v375();
        v117 = v382;
      }

      sub_22BF2DBA8(v121, v266);

      sub_22C271AD4();
      sub_22BE22868();
      v268 = v324;
      v324(v267, v117, i);
      v269 = sub_22C272084();
      v270 = v113;
      v271 = sub_22C273794();
      if (os_log_type_enabled(v269, v271))
      {
        sub_22BE33578();
        v272 = swift_slowAlloc();
        v382 = sub_22BE3CF58();
        v384 = v382;
        *v272 = 136315394;
        sub_22C273834();
        sub_22BE233E8(v270, &qword_27D90B290, &qword_22C28C8F0);
        v273 = sub_22BE1B18C();
        sub_22BE61C88(v273, v274, v275);
        sub_22BE48A68();

        *(v272 + 4) = v270;
        *(v272 + 12) = 2080;
        v276 = sub_22BF6AB2C(&v345);
        v268(v276, v326, i);
        sub_22BE261AC();
        v277 = sub_22C273074();
        v278 = sub_22BE36318();
        v279(v278);
        v280 = sub_22BE1B73C();
        sub_22BE61C88(v280, v281, v282);
        sub_22BE48A68();

        *(v272 + 14) = v277;
        sub_22BF6AC20();
        _os_log_impl(v283, v284, v285, v286, v287, 0x16u);
        swift_arrayDestroy();
        v288 = sub_22BE19F74();
        MEMORY[0x2318AD180](v288);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      else
      {

        v308 = sub_22BE36318();
        v309(v308);
        sub_22BE233E8(v270, &qword_27D90B290, &qword_22C28C8F0);
      }

      sub_22BE35858();
      sub_22BE3C558();
      v310();
      sub_22BEBFD18();
      sub_22BE3CA84(v385);
      sub_22BF5BCAC();

      goto LABEL_6;
    }

    if (v121 == v337)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v121 == 0x4189374BC6A7F0)
    {
      goto LABEL_99;
    }

    v347 = v121;
    v127 = v383;
    v128 = sub_22C26E3B4();
    if (v127)
    {
      break;
    }

    v383 = 0;
    v379 = *(v128 + 16);
    if (v379)
    {
      v129 = 0;
      sub_22BE19E14();
      v377 = v130;
      v378 = (v130 + v131);
      while (1)
      {
        if (v129 >= *(v130 + 16))
        {
          __break(1u);
LABEL_90:

          v290 = MEMORY[0x277D84F90];
          goto LABEL_91;
        }

        v121 = v381;
        (*(v381 + 16))(v375, &v378[*(v381 + 72) * v129], v124);
        sub_22C26E4F4();
        v113 = v132;
        v133 = sub_22BE1B73C();
        v134(v133);
        if (v113 >> 60 == 15)
        {
          sub_22BE351B8();
          sub_22C271AD4();
          v135 = sub_22C272084();
          v136 = sub_22C2737A4();
          if (sub_22BE35F8C(v136))
          {
            sub_22BE36138();
            v137 = swift_slowAlloc();
            *v137 = 0;
            _os_log_impl(&dword_22BE15000, v135, v136, "ANN search for custom key did not return a payload", v137, 2u);
            v138 = sub_22BE3D494();
            MEMORY[0x2318AD180](v138);
          }

          sub_22BE35858();
          sub_22BE3C558();
          v139();
          v113 = v376;
          v117 = v382;
          goto LABEL_52;
        }

        if (qword_281079BD8 != -1)
        {
          swift_once();
        }

        sub_22BE29F88(&qword_281079998, type metadata accessor for ToolboxDatabasePayload, &unk_22C28F0C0);
        sub_22BE260B8();
        v140 = v383;
        sub_22C26DB54();
        v121 = v140;
        if (v140)
        {
          v383 = 0;

          sub_22BE1A140();
          sub_22BE19DC4(v141, v142, v143, v74);
          sub_22BE233E8(v22, &qword_27D90B6D0, &unk_22C28EBA0);
          sub_22BE351B8();
          sub_22C271AD4();
          v117 = sub_22C272084();
          v112 = sub_22C2737A4();
          if (sub_22BE35F8C(v112))
          {
            sub_22BE36138();
            v144 = swift_slowAlloc();
            *v144 = 0;
            _os_log_impl(&dword_22BE15000, v117, v112, "Payload from ANN search for custom key could not be decoded", v144, 2u);
            v124 = v368;
            sub_22BE1B2A4();
            MEMORY[0x2318AD180]();
          }

          v145 = sub_22BE2590C();
          sub_22BF158B4(v145, v146);

          sub_22BE35858();
          sub_22BE3C558();
          v147();
          sub_22BE33A18();
          goto LABEL_52;
        }

        sub_22BE187DC();
        sub_22BE19DC4(v148, v149, v150, v74);
        sub_22BE185FC();
        sub_22BE22944();
        sub_22BF68168();
        sub_22BE37584();
        sub_22BE22944();
        sub_22BF6805C();
        sub_22BE18944();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v383 = 0;
        if (!EnumCaseMultiPayload)
        {
          break;
        }

        if (EnumCaseMultiPayload != 1)
        {
          sub_22BE25C30();
          v352 = v187;
          v351 = v189;
          v350 = sub_22BE1BD3C((v188 + 32), v189);
          sub_22BE29E4C();
          sub_22C2722B4();
          swift_getKeyPath();
          sub_22BE2BA74();
          v190 = swift_allocObject();
          sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
          inited = swift_initStackObject();
          sub_22BE46B10(inited);
          sub_22BE78DC8(0);
          *(v190 + 16) = v192;
          *v359 = v190;
          sub_22BE33554();
          v193 = sub_22BE3C604();
          v194(v193);
          sub_22BE269EC();
          sub_22BE29F88(&qword_28106DF70, v195, MEMORY[0x277D724A0]);
          sub_22BF68104();
          sub_22BE351B8();
          sub_22BE291B0();
          sub_22C2724E4();

          sub_22BE33554();
          v196 = sub_22BE1B62C();
          v197(v196);
          v169 = *v357;
          sub_22BF6AB38();
          v169();
          if (qword_27D906378 != -1)
          {
            sub_22BE185D0();
            swift_once();
          }

          v198 = sub_22C26E244();
          v199 = sub_22BE199F4(v198, qword_27D90B298);
          v200 = v383;
          v201 = (*(v352 + 72))(0, v199, v351);
          v383 = v200;
          if (v200)
          {
            goto LABEL_77;
          }

          v202 = v201;
          sub_22BF6AB38();
          v169();
          v203 = *(v202 + 16);
          if (v203 >= 2)
          {
LABEL_56:

            sub_22BE3CCE0();

            v217 = sub_22BF38764();
            sub_22BE196B4(&type metadata for ToolBoxError, v217);
            *v218 = 2;
            swift_willThrow();
            v219 = sub_22BE2590C();
            sub_22BF158B4(v219, v220);
            sub_22BE1A2C4();
            goto LABEL_5;
          }

          v175 = v349;
          if (v203)
          {

            if (!*(v202 + 16))
            {
              goto LABEL_100;
            }

            sub_22BE25AD8();
            v112 = *(v204 + 16);
            v121 = v344;
            v112(v334, v202 + v205, v344);

            v206 = sub_22BE33B3C();
            (v112)(v206);
            sub_22BE32508();
            swift_storeEnumTagMultiPayload();
            v117 = &a10;
            sub_22BE1B62C();
            sub_22C1A8078();
            v207 = sub_22BE2590C();
            sub_22BF158B4(v207, v208);
            sub_22BE3B038();
            sub_22BF680B4();
            sub_22BE31718();
            v185 = sub_22BE180C8();
            goto LABEL_50;
          }

          v209 = v360;
LABEL_46:
          v117 = *(v209 - 32);
          sub_22C271AD4();

          v210 = sub_22C272084();
          v112 = sub_22C2737C4();

          if (os_log_type_enabled(v210, v112))
          {
            sub_22BE1A260();
            swift_slowAlloc();
            v121 = v117;
            sub_22BF6AA04();
            v117 = swift_slowAlloc();
            v384 = v117;
            *v124 = v323;
            v352 = sub_22BE61C88(v335, v175, &v384);

            *(v124 + 4) = v352;
            _os_log_impl(&dword_22BE15000, v210, v112, "ToolDefinition not found for %s", v124, 0xCu);
            sub_22BE26B64(v117);
            v211 = sub_22BE19F74();
            MEMORY[0x2318AD180](v211);
            v212 = sub_22BE22C7C();
            MEMORY[0x2318AD180](v212);
            v213 = sub_22BE2590C();
            sub_22BF158B4(v213, v214);
          }

          else
          {
            v215 = sub_22BE2590C();
            sub_22BF158B4(v215, v216);
          }

          sub_22BE35858();
          sub_22BE3C558();
          goto LABEL_50;
        }

        sub_22BE33554();
        v121 = v345;
        v112 = v346;
        v152(v345, v369, v346);
        sub_22BE33554();
        v153 = sub_22BE1AEE4();
        v154(v153);
        sub_22BE32508();
        swift_storeEnumTagMultiPayload();
        v117 = &a10;
        sub_22BE1B62C();
        sub_22C1A8078();
        v155 = sub_22BE2590C();
        sub_22BF158B4(v155, v156);
        sub_22BE3B038();
        sub_22BF680B4();
        sub_22BE33554();
        v157(v121, v112);
        sub_22BE1A2C4();
        sub_22BE33A18();
LABEL_51:
        v74 = v365;
        v124 = v368;
LABEL_52:
        ++v129;
        v130 = v377;
        if (v379 == v129)
        {
          goto LABEL_55;
        }
      }

      sub_22BE25C30();
      v351 = v158;
      v352 = v160;
      v350 = sub_22BE1BD3C((v159 + 32), v160);
      sub_22BE351B8();
      sub_22C2722B4();
      swift_getKeyPath();
      sub_22BE2BA74();
      v161 = swift_allocObject();
      sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
      v162 = swift_initStackObject();
      sub_22BE46B10(v162);
      sub_22BE78DC8(0);
      *(v161 + 16) = v163;
      *v359 = v161;
      sub_22BE33554();
      v164 = sub_22BE3C604();
      v165(v164);
      sub_22BE269EC();
      sub_22BE29F88(&qword_28106DF70, v166, MEMORY[0x277D724A0]);
      sub_22BF68104();
      sub_22BE29E4C();
      sub_22BE291B0();
      sub_22C2724E4();

      sub_22BE33554();
      v167 = sub_22BE1B62C();
      v168(v167);
      v169 = *v357;
      sub_22BF6AB38();
      v169();
      if (qword_27D906378 != -1)
      {
        sub_22BE185D0();
        swift_once();
      }

      v170 = sub_22C26E244();
      v171 = sub_22BE199F4(v170, qword_27D90B298);
      v172 = v350;
      v173 = v383;
      (*(v351 + 72))(v22, v171, v352);
      v383 = v173;
      if (v173)
      {
LABEL_77:

        sub_22BE3CCE0();
        v264 = sub_22BE2590C();
        sub_22BF158B4(v264, v265);

        sub_22BF6AB38();
        v169();
        sub_22BE1A2C4();

        goto LABEL_5;
      }

      sub_22BE28DA8();
      sub_22BF6AB38();
      v169();
      v174 = *(v172 + 2);
      if (v174 >= 2)
      {
        goto LABEL_56;
      }

      v175 = v349;
      if (!v174)
      {

        v209 = &v359;
        goto LABEL_46;
      }

      if (!*(v172 + 2))
      {
        goto LABEL_101;
      }

      sub_22BE25AD8();
      v177 = *(v176 + 16);
      v179 = v333;
      v180 = v344;
      v177(v333, &v172[v178], v344);

      v121 = v361;
      v177(v361, v179, v180);
      sub_22BE32508();
      swift_storeEnumTagMultiPayload();
      v117 = &a10;
      v112 = v360[1];
      sub_22BE3EA80();
      sub_22C1A8078();
      v181 = sub_22BE2590C();
      sub_22BF158B4(v181, v182);
      sub_22BE3B038();
      sub_22BF680B4();
      sub_22BE31718();
      v184 = *(v183 + 8);
      v185 = v179;
      v186 = v180;
LABEL_50:
      v184(v185, v186);
      sub_22BE1A2C4();
      sub_22BE33A18();
      v22 = v353;
      goto LABEL_51;
    }

    v117 = v382;
LABEL_55:
    v121 = v347 + 1;
  }

  sub_22BE3CCE0();
LABEL_4:

LABEL_5:
  sub_22BE3CA84(v385);
  sub_22BF5BCAC();

LABEL_6:
  sub_22BE18478();
}

void sub_22BF4B6F0()
{
  sub_22BE19130();
  v0 = sub_22C26E4C4();
  sub_22BE179D8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  v7 = sub_22C26E494();
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v9 = sub_22C26E404();
  sub_22BE17A18(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22C275160;
  sub_22BE36238();
  (*(v2 + 104))(v6, *MEMORY[0x277D78270], v0);
  sub_22BE23CD0();
  sub_22BF6AB80();
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v11 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22C27FED0;
  v15 = v14 + v13;
  sub_22BF53E38(v15, (v15 + v11[14]), 1);
  sub_22BF53E38(v15 + v12, (v15 + v12 + v11[14]), 2);
  sub_22BF53E38(v15 + 2 * v12, (v15 + 2 * v12 + v11[14]), 4);
  sub_22BE194F8();
  sub_22C26E3F4();
  sub_22BF5BF00(v10);

  sub_22BE22978();
  sub_22BE18478();
}

void sub_22BF4B988()
{
  sub_22BE19130();
  v51 = v1;
  v47 = v2;
  v4 = v3;
  v50 = sub_22C26E404();
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v48 = v6;
  sub_22BE183BC();
  v7 = sub_22C26E4C4();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  sub_22BE3A208();
  v11 = sub_22C26E494();
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  sub_22BE3AC88();
  v13 = *v4;
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v49 = v5;
  v14 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v46 = *(v5 + 72);
  v15 = swift_allocObject();
  sub_22BF6ABF4(v15, xmmword_22C275160);
  (*(v9 + 104))(v0, *MEMORY[0x277D78270], v7);
  sub_22BE23CD0();
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE3C200();
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v19 = sub_22BF6ABE0(v18, xmmword_22C275160);
  sub_22BF53E38(v19, v20, v13);
  v45 = v14;
  sub_22C26E3F4();
  if (v51)
  {

    sub_22BF6ACAC(v21, 0x800000022C2D48B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_22C2759F0;
    v23 = v22 + v17;
    v24 = (v22 + v17 + *(v7 + 48));
    v25 = *MEMORY[0x277D78238];
    v26 = sub_22C26E464();
    v44 = v15;
    v27 = *(*(v26 - 8) + 104);
    v27(v23, v25, v26);
    *v24 = v47;
    v24[1] = v51;
    v28 = *MEMORY[0x277D78288];
    v29 = sub_22C26E4D4();
    sub_22BE18000();
    (*(v30 + 104))(v24, v28, v29);
    sub_22BE187DC();
    sub_22BE19DC4(v31, v32, v33, v29);
    v34 = sub_22BE38614();
    (v27)(v34);
    v15 = v44;
    sub_22BE1A140();
    sub_22BE19DC4(v35, v36, v37, v29);
    sub_22C26E3F4();
    v39 = *(v44 + 16);
    v38 = *(v44 + 24);
    if (v39 >= v38 >> 1)
    {
      v40 = sub_22BE18278(v38);
      sub_22BE66E98(v40, v41, v42, v44);
      v15 = v43;
    }

    v15[1].n128_u64[0] = v39 + 1;
    (*(v49 + 32))(v15 + v45 + v39 * v46, v48, v50);
  }

  sub_22BF5BF00(v15);

  sub_22BE22978();
  sub_22BE18478();
}

void sub_22BF4BE4C()
{
  sub_22BE19460();
  v1 = type metadata accessor for ToolboxVersion(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v5 = v4 - v3;
  sub_22C2720A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22C271AD4();

  v7 = sub_22C272084();
  v8 = sub_22C273784();

  if (os_log_type_enabled(v7, v8))
  {
    sub_22BE1A260();
    v9 = swift_slowAlloc();
    sub_22BE2386C();
    v23 = swift_slowAlloc();
    *v9 = 136315138;
    v10 = v0[19];
    sub_22BE1BD3C(v0 + 15, v0[18]);
    v11 = sub_22BE3FDE8();
    v12(v11, v10);
    v13 = *(v1 + 20);
    sub_22C26FDE4();
    sub_22BF6AA80();
    sub_22BE18524();
    (*(v14 + 8))(v5 + v13);
    v15 = sub_22BE18040();
    sub_22BE61C88(v15, v16, v17);
    sub_22BE3FDE8();

    *(v9 + 4) = v5 + v13;
    sub_22BE40940(&dword_22BE15000, v18, v19, "%s toolbox: Warming up database");
    sub_22BE26B64(v23);
    v20 = sub_22BE19F74();
    MEMORY[0x2318AD180](v20);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    v21 = sub_22BE2399C();
  }

  else
  {

    v21 = sub_22BE25D18();
  }

  v22(v21);
  sub_22C26E374();
  sub_22BE1AABC();
}

void sub_22BF4C080()
{
  sub_22BE19460();
  v1 = type metadata accessor for ToolboxVersion(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v5 = v4 - v3;
  sub_22C2720A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22C271AD4();

  v7 = sub_22C272084();
  v8 = sub_22C273784();

  if (os_log_type_enabled(v7, v8))
  {
    sub_22BE1A260();
    v9 = swift_slowAlloc();
    sub_22BE2386C();
    v23 = swift_slowAlloc();
    *v9 = 136315138;
    v10 = v0[19];
    sub_22BE1BD3C(v0 + 15, v0[18]);
    v11 = sub_22BE3FDE8();
    v12(v11, v10);
    v13 = *(v1 + 20);
    sub_22C26FDE4();
    sub_22BF6AA80();
    sub_22BE18524();
    (*(v14 + 8))(v5 + v13);
    v15 = sub_22BE18040();
    sub_22BE61C88(v15, v16, v17);
    sub_22BE3FDE8();

    *(v9 + 4) = v5 + v13;
    sub_22BE40940(&dword_22BE15000, v18, v19, "%s toolbox: Cooling down database");
    sub_22BE26B64(v23);
    v20 = sub_22BE19F74();
    MEMORY[0x2318AD180](v20);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    v21 = sub_22BE2399C();
  }

  else
  {

    v21 = sub_22BE25D18();
  }

  v22(v21);
  sub_22C26E394();
  sub_22BE1AABC();
}

void sub_22BF4C2B0()
{
  sub_22BE19130();
  v56 = v2;
  v51 = v3;
  v5 = v4;
  v54 = sub_22C26E404();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  sub_22BE17A44();
  v52 = v7;
  sub_22BE183BC();
  v8 = sub_22C26E4C4();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  sub_22BE3A208();
  v12 = sub_22C26E494();
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE3AC88();
  v14 = *v5;
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v53 = v6;
  v15 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v50 = *(v6 + 72);
  v16 = swift_allocObject();
  sub_22BF6ABF4(v16, xmmword_22C275160);
  (*(v10 + 104))(v1, *MEMORY[0x277D78270], v8);
  sub_22BE23CD0();
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  sub_22BE3C200();
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = sub_22BF6ABE0(v19, xmmword_22C275160);
  sub_22BF53E38(v20, v21, v14);
  v55 = v15;
  sub_22C26E3F4();
  if (v56)
  {

    sub_22BF6ACAC(v22, 0x800000022C2D48B0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_22C2759F0;
    v23 = v49 + v18;
    v24 = (v49 + v18 + *(v8 + 48));
    v25 = *MEMORY[0x277D78238];
    v26 = sub_22C26E464();
    sub_22BE18000();
    v28 = *(v27 + 104);
    v28(v23, v25, v26);
    *v24 = v51;
    v24[1] = v56;
    v29 = *MEMORY[0x277D78288];
    v30 = sub_22C26E4D4();
    sub_22BE18000();
    (*(v31 + 104))(v24, v29, v30);
    sub_22BE187DC();
    sub_22BE19DC4(v32, v33, v34, v30);
    v35 = sub_22BE38614();
    (v28)(v35);
    sub_22BE1A140();
    sub_22BE19DC4(v36, v37, v38, v30);
    sub_22C26E3F4();
    v40 = v16[1].n128_u64[0];
    v39 = v16[1].n128_u64[1];
    if (v40 >= v39 >> 1)
    {
      v45 = sub_22BE18278(v39);
      sub_22BE66E98(v45, v46, v47, v16);
      v16 = v48;
    }

    v16[1].n128_u64[0] = v40 + 1;
    (*(v53 + 32))(v16 + v55 + v40 * v50, v52, v54);
  }

  sub_22BF5BF58(v16);
  if (v0)
  {
LABEL_7:
  }

  else
  {
    v42 = v41;

    switch(v14)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        goto LABEL_7;
      default:
        sub_22BF44878(v42);
        v44 = v43;

        sub_22BF3954C(v44);
        break;
    }
  }

  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22BF4C7A0()
{
  sub_22BE183F0();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_22C2720A4();
  v1[10] = v3;
  sub_22BE17A18(v3);
  v1[11] = v4;
  v1[12] = sub_22BE25184();
  v5 = sub_22C2722D4();
  v1[13] = v5;
  sub_22BE17A18(v5);
  v1[14] = v6;
  v1[15] = sub_22BE25184();
  v7 = sub_22C272224();
  v1[16] = v7;
  sub_22BE17A18(v7);
  v1[17] = v8;
  v1[18] = sub_22BE3602C();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v9 = sub_22C26E244();
  v1[21] = v9;
  sub_22BE17A18(v9);
  v1[22] = v10;
  v1[23] = sub_22BE25184();
  sub_22BE201FC();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_22BF4C944()
{
  v1 = v0[9];
  v2 = v1[7];
  v3 = v1[8];
  sub_22BE1BD3C(v1 + 4, v2);
  (*(v3 + 96))(&v101, v2, v3);
  v4 = v101;
  if (v101)
  {

    sub_22BF2A9E0(v5, v4);
    v7 = v6;
    v8 = sub_22BE18944();
    sub_22BF2AE88(v8);
    sub_22BE2BA74();
    v9 = swift_allocObject();
    v0[24] = v9;
    *(v9 + 16) = MEMORY[0x277D84F90];
    if (qword_27D906378 != -1)
    {
      sub_22BE185D0();
      swift_once();
    }

    v10 = v0[22];
    v11 = v0[23];
    v12 = v0[21];
    v13 = sub_22BE199F4(v12, qword_27D90B298);
    (*(v10 + 16))(v11, v13, v12);
    if (!*(v7 + 16))
    {

      sub_22BE1BD3C(v1 + 4, v1[7]);
      sub_22C2722B4();

      v72 = swift_task_alloc();
      v0[25] = v72;
      *v72 = v0;
      v72[1] = sub_22BF4D1A8;
      sub_22BE336F4();

      __asm { BRAA            X6, X16 }
    }

    v14 = 0;
    v97 = v0[17];
    v99 = *(v0[8] + 16);
    v94 = (v97 + 32);
    v91 = v9;
    v15 = MEMORY[0x277D84F90];
    v100 = v0;
    while (v14 != v99)
    {
      v16 = v0[20];
      v17 = v0[16];
      v18 = v0[8];
      v19 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v20 = *(v97 + 72);
      (*(v97 + 16))(v16, v18 + v19 + v20 * v14++, v17);
      v21 = sub_22C2721D4();
      v23 = v22;
      if (*(v7 + 16))
      {
        v24 = v21;
        sub_22C274154();
        sub_22C272F44();
        v25 = sub_22C2741A4();
        v26 = ~(-1 << *(v7 + 32));
        do
        {
          v27 = v25 & v26;
          if (((*(v7 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
          {
            goto LABEL_20;
          }

          v28 = (*(v7 + 48) + 16 * v27);
          if (*v28 == v24 && v28[1] == v23)
          {
            break;
          }

          v30 = sub_22C274014();
          v25 = v27 + 1;
        }

        while ((v30 & 1) == 0);
        v32 = v100[19];
        v31 = v100[20];
        v33 = v100[16];

        v34 = *v94;
        (*v94)(v32, v31, v33);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v15;
        v36 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BE711C4(0, v15[2] + 1, 1);
          v15 = v102;
        }

        v38 = v15[2];
        v37 = v15[3];
        v0 = v100;
        if (v38 >= v37 >> 1)
        {
          v43 = sub_22BE1AAE4(v37);
          sub_22BE711C4(v43, v38 + 1, 1);
          v15 = v102;
        }

        v39 = v100[19];
        v40 = v100[16];
        v15[2] = v38 + 1;
        v34(v15 + v36 + v38 * v20, v39, v40);
      }

      else
      {
LABEL_20:
        v0 = v100;

        v41 = sub_22BE1B73C();
        v42(v41);
      }
    }

    *(v91 + 16) = v15;

    sub_22C271AD4();

    v44 = sub_22C272084();
    v45 = sub_22C273794();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[24];
    if (v46)
    {
      v95 = v45;
      log = v44;
      sub_22BE1A260();
      v48 = swift_slowAlloc();
      sub_22BE2386C();
      v92 = swift_slowAlloc();
      v102 = v92;
      buf = v48;
      *v48 = 136315138;
      sub_22BF6AA9C();
      swift_beginAccess();
      v49 = *(v47 + 16);
      v50 = *(v49 + 16);
      if (v50)
      {
        v51 = v0[17];
        v101 = MEMORY[0x277D84F90];

        sub_22BE70138(0, v50, 0);
        v52 = v101;
        sub_22BE19E14();
        v54 = v49 + v53;
        v98 = *(v51 + 72);
        do
        {
          v55 = sub_22BE261AC();
          v56(v55);
          v57 = sub_22C2721D4();
          v59 = v58;
          v60 = sub_22BE336E8();
          v61(v60);
          v101 = v52;
          v63 = *(v52 + 16);
          v62 = *(v52 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_22BE1AAE4(v62);
            sub_22BE39E18();
            sub_22BE70138(v65, v66, v67);
            v52 = v101;
          }

          *(v52 + 16) = v63 + 1;
          v64 = v52 + 16 * v63;
          *(v64 + 32) = v57;
          *(v64 + 40) = v59;
          v54 += v98;
          --v50;
        }

        while (v50);
      }

      else
      {

        v52 = MEMORY[0x277D84F90];
      }

      v79 = v100[12];
      v80 = v100[11];
      v81 = v100[10];
      MEMORY[0x2318ABBB0](v52, MEMORY[0x277D837D0]);

      v82 = sub_22BE324FC();
      v85 = sub_22BE61C88(v82, v83, v84);

      *(buf + 4) = v85;
      _os_log_impl(&dword_22BE15000, log, v95, "Allowed tools: %s either set through user default or ToolBoxAllowList.plist", buf, 0xCu);
      sub_22BE26B64(v92);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      v86 = sub_22BE3D494();
      MEMORY[0x2318AD180](v86);

      v0 = v100;
      (*(v80 + 8))(v79, v81);
      v87 = sub_22BE1B73C();
      v88(v87);
    }

    else
    {

      v75 = sub_22BE1B18C();
      v76(v75);
      v77 = sub_22BE324FC();
      v78(v77);
    }

    sub_22BF6AA9C();
    swift_beginAccess();
  }

  else
  {
  }

  sub_22BE46054(v0[23], v68, v69, v70, v71);

  sub_22BE336F4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22BF4D1A8()
{
  sub_22BE201F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 208) = v0;

  v7 = sub_22BE324FC();
  v8(v7);

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BF4D31C(__n128 a1)
{
  v2 = v1[12];
  sub_22C271AD4();

  v3 = sub_22C272084();
  sub_22C273794();
  sub_22BE4612C();
  if (os_log_type_enabled(v3, v4))
  {
    v45 = v2;
    log = v3;
    v5 = v1[24];
    sub_22BE1A260();
    v6 = swift_slowAlloc();
    sub_22BE2386C();
    v44 = swift_slowAlloc();
    buf = v6;
    *v6 = 136315138;
    sub_22BF6AA9C();
    swift_beginAccess();
    v7 = *(v5 + 16);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v1[17];
      v50 = MEMORY[0x277D84F90];

      sub_22BE70138(0, v8, 0);
      v10 = v50;
      sub_22BE19E14();
      v12 = v7 + v11;
      v48 = *(v9 + 72);
      v49 = v13;
      do
      {
        v14 = sub_22BE261AC();
        v49(v14);
        v15 = sub_22C2721D4();
        v17 = v16;
        v18 = sub_22BE336E8();
        v19(v18);
        v20 = *(v50 + 16);
        if (v20 >= *(v50 + 24) >> 1)
        {
          sub_22BE39E18();
          sub_22BE70138(v22, v23, v24);
        }

        *(v50 + 16) = v20 + 1;
        v21 = v50 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v12 += v48;
        --v8;
      }

      while (v8);
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    MEMORY[0x2318ABBB0](v10, MEMORY[0x277D837D0]);

    v29 = sub_22BE324FC();
    v32 = sub_22BE61C88(v29, v30, v31);

    *(buf + 4) = v32;
    _os_log_impl(&dword_22BE15000, log, v45, "Allowed tools: %s either set through user default or ToolBoxAllowList.plist", buf, 0xCu);
    sub_22BE26B64(v44);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v33 = sub_22BE3D494();
    MEMORY[0x2318AD180](v33);

    v34 = sub_22BE2BA80();
    v35(v34);
    v27 = sub_22BE1B73C();
  }

  else
  {

    v25 = sub_22BE29454();
    v26(v25);
    v27 = sub_22BE18040();
  }

  v28(v27);
  v36 = v1[24];
  sub_22BF6AA9C();
  swift_beginAccess();
  v37 = *(v36 + 16);

  sub_22BE46054(v1[23], v38, v39, v40, v41);

  v42 = v1[1];

  return v42(v37);
}

uint64_t sub_22BF4D690()
{
  sub_22BE201F0();
  (*(v0[22] + 8))(v0[23], v0[21]);

  sub_22BE46054(v0[23], v1, v2, v3, v4);

  sub_22BE17A94();

  return v5();
}

uint64_t ToolBoxAllowList.init(global:local:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_22BF4D750()
{
  sub_22BE19130();
  sub_22C26DF64();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE3AC88();
  v47 = sub_22C2720A4();
  sub_22BE179D8();
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19490();
  v46 = v7;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BE324EC();
  sub_22BE45D84(0, &qword_28106DAF0, 0x277CCA8D8);
  v9 = sub_22BF3A464(0xD000000000000039, 0x800000022C2D4490);
  swift_getKeyPath();
  sub_22C26E624();

  if (v9)
  {
    v10 = v9;
    v11 = sub_22BE19454();
    sub_22BF3A694(v11, v12, 1852797802, 0xE400000000000000, v10);
    v14 = v13;
    v45 = v10;

    if (v14)
    {
      sub_22C271AD4();
      v15 = sub_22C272084();
      v16 = sub_22C2737C4();
      if (sub_22BE35F8C(v16))
      {
        sub_22BE36138();
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_22BE15000, v15, v16, "Example utterances override file accessed", v17, 2u);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      v18 = *(v50 + 8);
      v18(v2, v47);
      sub_22BE260B8();
      sub_22C26DEC4();

      sub_22C26DFA4();
      if (v0)
      {
        v19 = sub_22BE2593C();
        v20(v19);
      }

      else
      {
        v29 = sub_22BE2593C();
        v30(v29);
        sub_22C26DB74();
        sub_22BE29494();
        swift_allocObject();
        sub_22C26DB64();
        sub_22BF68D44();
        sub_22C26DB54();

        v31 = v48;
        sub_22C271AD4();

        v32 = sub_22C272084();
        v33 = sub_22C273794();

        v34 = v32;
        if (os_log_type_enabled(v32, v33))
        {
          sub_22BE1A260();
          v35 = swift_slowAlloc();
          sub_22BE2386C();
          v49 = swift_slowAlloc();
          *v35 = 136315138;
          sub_22BF44630(v31);
          MEMORY[0x2318ABBB0]();

          v36 = sub_22BE18944();
          v39 = sub_22BE61C88(v36, v37, v38);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_22BE15000, v34, v33, "Override for toolsIDs: %s found", v35, 0xCu);
          sub_22BE26B64(v49);
          v40 = sub_22BE19F74();
          MEMORY[0x2318AD180](v40);
          sub_22BE1B2A4();
          MEMORY[0x2318AD180]();
          v41 = sub_22BE191C0();
          sub_22BE29DD4(v41, v42);
        }

        else
        {

          v43 = sub_22BE191C0();
          sub_22BE29DD4(v43, v44);
        }

        v18(v46, v47);
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  sub_22C271AD4();
  v21 = sub_22C272084();
  sub_22C2737A4();
  sub_22BE4612C();
  if (os_log_type_enabled(v21, v22))
  {
    sub_22BE36138();
    v23 = swift_slowAlloc();
    sub_22BF6AB44(v23);
    sub_22BF6AC20();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v50 + 8))(v1, v47);
  sub_22C272E84();

LABEL_12:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22BF4DCB4()
{
  sub_22BE19130();
  v2 = v1;
  v53 = v3;
  v61 = sub_22C272CA4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v60 = v7;
  sub_22BE183BC();
  v8 = sub_22C2720D4();
  sub_22BE179D8();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = v13 - v12;
  v16 = *v2;
  v15 = v2[1];
  if (sub_22BF540EC())
  {
    v52 = v15;
    v51 = v0;
    v63 = MEMORY[0x277D84FA0];
    v17 = sub_22C272164();
    v18 = 0;
    v19 = *(v17 + 16);
    v20 = v5;
    v21 = *MEMORY[0x277D72148];
    v56 = *MEMORY[0x277D72140];
    v57 = *MEMORY[0x277D72148];
    v54 = *MEMORY[0x277D72150];
    v59 = v19;
    v55 = (v20 + 8);
    v58 = v8;
    while (1)
    {
      if (v19 == v18)
      {

        goto LABEL_14;
      }

      if (v18 >= *(v17 + 16))
      {
        break;
      }

      sub_22BE19E14();
      (*(v10 + 16))(v14, v17 + v22 + *(v10 + 72) * v18, v8);
      v23 = (*(v10 + 88))(v14, v8);
      if (v23 == v21)
      {
        v24 = sub_22BE3BF9C();
        v25(v24);
        v26 = sub_22BE200D4();
        v27(v26);
        v28 = sub_22C272C54();
        sub_22C1A7B60(&v62, v28, v29, v29, v30, v31, v32, v33, v50, v51);
        v19 = v59;

        v8 = v58;
        v21 = v57;
        (*v55)(v60, v61);
      }

      else
      {
        if (v23 == v56 || v23 == v54)
        {

          v37 = sub_22BE3BF9C();
          v38(v37);
LABEL_14:
          sub_22C2721D4();
          if (!v16)
          {

            v42 = 0;
            goto LABEL_24;
          }

          sub_22BE289CC();

          v39 = sub_22BE18944();
          if (sub_22C269E10(v39, v40, v16))
          {

            v41 = *(v63 + 16) != 0;

            v42 = 2 * v41;
            goto LABEL_24;
          }

          v43 = sub_22BE18944();
          v45 = sub_22C269E10(v43, v44, v52);

          if (v45)
          {

            v42 = 1;
            goto LABEL_24;
          }

          v46 = sub_22BF6633C()[2];

          if (v46)
          {

            v42 = 2;
            goto LABEL_24;
          }

          sub_22BE260B8();
          v47 = sub_22BF6633C();

          v48 = v47[2];

          if (v48)
          {
            v42 = 3;
LABEL_24:
            v49 = v42 | ((v59 != v18) << 8);
          }

          else
          {
            v49 = 512;
          }

          *v53 = v49;
          goto LABEL_26;
        }

        v34 = sub_22BE3BF9C();
        v36(v34, v35);
      }

      ++v18;
    }

    __break(1u);
  }

  else
  {
    *v53 = 512;
LABEL_26:
    sub_22BE18478();
  }
}

void sub_22BF4E0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v73 = v28;
  v82 = sub_22C272224();
  sub_22BE179D8();
  v74 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  v81 = v31;
  sub_22BE183BC();
  v76 = sub_22C272BA4();
  sub_22BE179D8();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  sub_22BE1AB80();
  sub_22C272D44();
  sub_22BE179D8();
  v77 = v36;
  v78 = v35;
  MEMORY[0x28223BE20](v35);
  sub_22BE179EC();
  sub_22BE3AC88();
  v72 = *v27;
  a10 = MEMORY[0x277D84FA0];
  v75 = v20;
  sub_22BE1BD3C((v20 + 32), *(v20 + 56));
  sub_22BE5CE4C(&qword_27D90B318, &qword_22C28C9E0);
  sub_22BE17BC4();
  v37 = sub_22C2720C4();
  sub_22BE179D8();
  v39 = v38;
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22C275160;
  v42 = (v41 + v40);
  *v42 = sub_22C272C54();
  v42[1] = v43;
  (*(v39 + 104))(v41 + v40, *MEMORY[0x277D720F0], v37);
  sub_22C272C74();
  sub_22C272D34();
  (*(v33 + 8))(v22, v76);
  sub_22BE1A6BC();
  sub_22BF6AA9C();
  v45 = v44();
  if (v21)
  {
    (*(v77 + 8))(v23, v78);
  }

  else
  {
    v46 = v45;
    (*(v77 + 8))(v23, v78);

    sub_22BF4437C(v46, &a10, v75);
    v48 = v47;
    v49 = *(v47 + 16);
    if (v49)
    {
      v83 = MEMORY[0x277D84F90];
      sub_22BE70138(0, v49, 0);
      v50 = v83;
      sub_22BE19E14();
      v52 = v48 + v51;
      v79 = *(v74 + 72);
      v80 = v53;
      v54 = v81;
      do
      {
        v55 = sub_22BE1AEE4();
        v80(v55);
        v56 = sub_22C2721D4();
        v58 = v57;
        (*(v74 + 8))(v54, v82);
        v60 = *(v83 + 16);
        v59 = *(v83 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_22BE1AAE4(v59);
          sub_22BE39E18();
          sub_22BE70138(v62, v63, v64);
        }

        *(v83 + 16) = v60 + 1;
        v61 = v83 + 16 * v60;
        *(v61 + 32) = v56;
        *(v61 + 40) = v58;
        v52 += v79;
        --v49;
        v54 = v81;
      }

      while (v49);
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
    }

    if (v72)
    {

      sub_22BF3954C(v65);
      v66 = sub_22BF6633C();
    }

    else
    {
      v66 = MEMORY[0x277D84FA0];
    }

    if (v73 && (v67 = sub_22C272C54(), v69 = sub_22C269E10(v67, v68, v73), , !v69))
    {
      v70 = v66[2];

      if (!v70)
      {

        goto LABEL_4;
      }
    }

    else
    {
    }

    v71 = *(v50 + 16);

    if (v71)
    {
    }
  }

LABEL_4:

  sub_22BE19454();
  sub_22BE18478();
}

void sub_22BF4E610(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, void *a5)
{
  v6 = v5;
  v58 = a5;
  v59 = a1;
  v10 = sub_22C2720A4();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BE5CE4C(&qword_27D90B728, &qword_22C28EC58);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v52 - v13;
  v57 = sub_22C271FF4();
  v14 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v56 = *a4;
  sub_22C272014();
  sub_22C271FC4();
  v20 = sub_22C272014();
  v21 = sub_22C2737F4();
  if (sub_22C273824())
  {
    v22 = swift_slowAlloc();
    v52 = a3;
    v23 = v22;
    *v22 = 0;
    v24 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v20, v21, v24, "ToolboxEmbeddingModel:embed", "", v23, 2u);
    v25 = v23;
    a3 = v52;
    MEMORY[0x2318AD180](v25, -1, -1);
  }

  v26 = v57;
  (*(v14 + 16))(v16, v19, v57);
  sub_22C272064();
  swift_allocObject();
  v27 = sub_22C272054();
  v28 = (*(v14 + 8))(v19, v26);
  if (v56)
  {
    swift_getKeyPath();
    sub_22C26E624();

    sub_22C26FDB4();
    if (qword_28107D1C8 != -1)
    {
      swift_once();
    }

    v29 = sub_22BF1C884(0, 0, 0);
    if (v5)
    {
      v30 = v53;
      sub_22C271B14();
      v31 = v5;
      v32 = sub_22C272084();
      v33 = sub_22C2737A4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v5;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_22BE15000, v32, v33, "Sentence piece model missing. Embedding failed. Error: %@", v34, 0xCu);
        sub_22BE233E8(v35, &qword_27D907870, &qword_22C27AB50);
        MEMORY[0x2318AD180](v35, -1, -1);
        MEMORY[0x2318AD180](v34, -1, -1);
      }

      (*(v54 + 8))(v30, v55);
      sub_22BF1C114();
      swift_allocError();
      *v38 = 2;
      swift_willThrow();

      sub_22BE233E8(v61, &qword_27D90B728, &qword_22C28EC58);
LABEL_31:
      sub_22BF4F4A8(a3, "ToolboxEmbeddingModel:embed", 27, 2, v27);

      return;
    }

    v45 = v29;
    v46 = sub_22BF1C838();
    v57 = v27;
    if (a2)
    {
      v47 = v46;
      v48 = 0;
      v49 = *(v59 + 16);
      while (1)
      {
        v50 = v49 >= v48;
        if (a2 > 0)
        {
          v50 = v48 >= v49;
        }

        if (v50)
        {
          break;
        }

        v51 = MEMORY[0x2318ACA20]();
        sub_22BF506C8(v59, v48, a2, v61, v45, 128, v47, 384, v58, &v60);
        if (__OFADD__(v48, a2))
        {
          v48 = ((v48 + a2) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v48 += a2;
        }

        objc_autoreleasePoolPop(v51);
      }

      sub_22BE233E8(v61, &qword_27D90B728, &qword_22C28EC58);

      v27 = v57;
      goto LABEL_31;
    }
  }

  else
  {
    v39 = v58;
    v40 = v59;
    if (a2)
    {
      v41 = 0;
      v42 = *(v59 + 16);
      while (1)
      {
        v43 = v42 >= v41;
        if (a2 > 0)
        {
          v43 = v41 >= v42;
        }

        if (v43)
        {
          goto LABEL_31;
        }

        v44 = MEMORY[0x2318ACA20](v28);
        sub_22BF4F744(v40, v41, a2, 128, v39, &v60);
        if (v6)
        {
          objc_autoreleasePoolPop(v44);
          goto LABEL_31;
        }

        v6 = 0;
        if (__OFADD__(v41, a2))
        {
          v41 = ((v41 + a2) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v41 += a2;
        }

        objc_autoreleasePoolPop(v44);
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22BF4ECAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v71 = a6;
  v72 = a1;
  v77 = a4;
  v17 = sub_22C2720A4();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x28223BE20](v17);
  v63 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BE5CE4C(&qword_27D90B728, &qword_22C28EC58);
  MEMORY[0x28223BE20](v19 - 8);
  v70 = &v62 - v20;
  v69 = sub_22C271FF4();
  v21 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  LODWORD(v68) = *v77;
  v73 = a9;
  swift_retain_n();
  v74 = a5;
  swift_bridgeObjectRetain_n();
  v77 = a7;
  swift_bridgeObjectRetain_n();
  v75 = a8;
  swift_retain_n();
  sub_22C272014();
  sub_22C271FC4();
  v66 = a3;
  v26 = sub_22C272014();
  v27 = sub_22C2737F4();
  if (sub_22C273824())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v26, v27, v29, "ToolboxEmbeddingModel:embed", "", v28, 2u);
    MEMORY[0x2318AD180](v28, -1, -1);
  }

  v30 = v69;
  (*(v21 + 16))(v67, v25, v69);
  sub_22C272064();
  swift_allocObject();
  v31 = sub_22C272054();
  v32 = (*(v21 + 8))(v25, v30);
  if ((v68 & 1) == 0)
  {
    if (a2)
    {
      v68 = v31;
      v43 = 0;
      v44 = *(v72 + 16);
      while (1)
      {
        v45 = v44 >= v43;
        if (a2 > 0)
        {
          v45 = v43 >= v44;
        }

        if (v45)
        {
          goto LABEL_33;
        }

        v46 = MEMORY[0x2318ACA20](v32);
        v47 = v74;

        v48 = v77;

        v49 = v75;

        sub_22BF4FA50(v72, v43, a2, 128, v47, v71, v48, v49, v50, a10, &v76);
        if (v11)
        {
          objc_autoreleasePoolPop(v46);
          v31 = v68;
          goto LABEL_22;
        }

        v11 = 0;
        if (__OFADD__(v43, a2))
        {
          v43 = ((v43 + a2) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v43 += a2;
        }

        objc_autoreleasePoolPop(v46);
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  sub_22C26E624();

  sub_22C26FDB4();
  if (qword_28107D1C8 != -1)
  {
    swift_once();
  }

  v33 = sub_22BF1C884(0, 0, 0);
  if (!v10)
  {
    v51 = v33;
    v69 = sub_22BF1C838();
    v68 = v31;
    if (a2)
    {
      v52 = 0;
      v53 = *(v72 + 16);
      while (1)
      {
        v54 = v53 >= v52;
        if (a2 > 0)
        {
          v54 = v52 >= v53;
        }

        if (v54)
        {
          break;
        }

        v55 = MEMORY[0x2318ACA20]();
        v56 = v51;
        v57 = v74;

        v58 = v77;

        v59 = v75;

        v61 = v57;
        v51 = v56;
        sub_22BF51120(v72, v52, a2, v70, v56, 128, v69, 384, v61, v71, v58, v59, v60, a10, &v76);
        if (__OFADD__(v52, a2))
        {
          v52 = ((v52 + a2) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v52 += a2;
        }

        objc_autoreleasePoolPop(v55);
      }

      sub_22BE233E8(v70, &qword_27D90B728, &qword_22C28EC58);

LABEL_33:
      sub_22BF4F4A8(v66, "ToolboxEmbeddingModel:embed", 27, 2, v68);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_35;
  }

  v34 = v63;
  sub_22C271B14();
  v35 = v10;
  v36 = sub_22C272084();
  v37 = sub_22C2737A4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = v10;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v41;
    *v39 = v41;
    _os_log_impl(&dword_22BE15000, v36, v37, "Sentence piece model missing. Embedding failed. Error: %@", v38, 0xCu);
    sub_22BE233E8(v39, &qword_27D907870, &qword_22C27AB50);
    MEMORY[0x2318AD180](v39, -1, -1);
    MEMORY[0x2318AD180](v38, -1, -1);
  }

  (*(v64 + 8))(v34, v65);
  sub_22BF1C114();
  swift_allocError();
  *v42 = 2;
  swift_willThrow();

  sub_22BE233E8(v70, &qword_27D90B728, &qword_22C28EC58);
LABEL_22:
  sub_22BF4F4A8(v66, "ToolboxEmbeddingModel:embed", 27, 2, v31);

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();
}

uint64_t sub_22BF4F4A8(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_22C272034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22C271FF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22C272014();
  sub_22C272044();
  v21 = sub_22C2737E4();
  result = sub_22C273824();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_22C272074();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_22C271FD4();
      _os_signpost_emit_with_name_impl(&dword_22BE15000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x2318AD180](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_22BF4F744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  if (v7 >= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  if (v7 < a2)
  {
    goto LABEL_41;
  }

  v44 = v7;
  sub_22C26D134();
  if (v9 != v10 >> 1)
  {
    v47 = a4;
    v12 = v10 >> 1;
    v11 = MEMORY[0x277D84F90];
    while (v9 < v12)
    {
      v13 = v9 + 1;

      v14 = MEMORY[0x277D84F90];
      while (1)
      {
        v15 = sub_22C273204();
        if (!v16)
        {
          break;
        }

        v17 = sub_22BF44D44(v15, v16);

        v18 = *(v17 + 16);
        v19 = *(v14 + 16);
        if (__OFADD__(v19, v18))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v19 + v18 > *(v14 + 24) >> 1)
        {
          sub_22BE67418();
          v14 = v20;
        }

        if (*(v17 + 16))
        {
          v21 = *(v14 + 16);
          if ((*(v14 + 24) >> 1) - v21 < v18)
          {
            goto LABEL_35;
          }

          memcpy((v14 + 2 * v21 + 32), (v17 + 32), 2 * v18);

          if (v18)
          {
            v22 = *(v14 + 16);
            v23 = __OFADD__(v22, v18);
            v24 = v22 + v18;
            if (v23)
            {
              goto LABEL_36;
            }

            *(v14 + 16) = v24;
          }
        }

        else
        {

          if (v18)
          {
            goto LABEL_34;
          }
        }
      }

      v25 = sub_22BE64268(v47, v14);
      v30 = (v28 >> 1) - v27;
      if (__OFSUB__(v28 >> 1, v27))
      {
        goto LABEL_38;
      }

      v23 = __OFSUB__(v47, v30);
      v31 = v47 - v30;
      if (v23)
      {
        goto LABEL_39;
      }

      v32 = v25;
      v33 = v26;
      v34 = v27;
      v35 = v28;
      v29.n128_u64[0] = 0;
      v36 = sub_22BF45140(v31 & ~(v31 >> 63), v29);
      sub_22BF4FDBC(v32, v33, v34, v35, v36);
      v38 = v37;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE673F4(0, *(v11 + 16) + 1, 1, v11);
        v11 = v41;
      }

      v40 = *(v11 + 16);
      v39 = *(v11 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22BE673F4(v39 > 1, v40 + 1, 1, v11);
        v11 = v42;
      }

      swift_unknownObjectRelease();
      *(v11 + 16) = v40 + 1;
      *(v11 + 8 * v40 + 32) = v38;
      v9 = v13;
      if (v13 == v12)
      {
        goto LABEL_7;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_7:
  swift_unknownObjectRelease();
  sub_22BF51E78(a2, v44, v11, a5);

  if (v6)
  {
    *a6 = v6;
  }
}

void sub_22BF4FA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  if (v12 >= *(a1 + 16))
  {
    v12 = *(a1 + 16);
  }

  if (v12 < a2)
  {
    goto LABEL_42;
  }

  v48 = v12;
  sub_22C26D134();
  if (v14 != v15 >> 1)
  {
    v54 = a4;
    v17 = v15 >> 1;
    v16 = MEMORY[0x277D84F90];
    while (v14 < v17)
    {
      v18 = v14 + 1;

      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        v20 = sub_22C273204();
        if (!v21)
        {
          break;
        }

        v22 = sub_22BF44D44(v20, v21);

        v23 = *(v22 + 16);
        v24 = *(v19 + 16);
        if (__OFADD__(v24, v23))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v24 + v23 > *(v19 + 24) >> 1)
        {
          sub_22BE67418();
          v19 = v25;
        }

        if (*(v22 + 16))
        {
          v26 = *(v19 + 16);
          if ((*(v19 + 24) >> 1) - v26 < v23)
          {
            goto LABEL_36;
          }

          memcpy((v19 + 2 * v26 + 32), (v22 + 32), 2 * v23);

          if (v23)
          {
            v27 = *(v19 + 16);
            v28 = __OFADD__(v27, v23);
            v29 = v27 + v23;
            if (v28)
            {
              goto LABEL_37;
            }

            *(v19 + 16) = v29;
          }
        }

        else
        {

          if (v23)
          {
            goto LABEL_35;
          }
        }
      }

      v30 = sub_22BE64268(v54, v19);
      v35 = (v33 >> 1) - v32;
      if (__OFSUB__(v33 >> 1, v32))
      {
        goto LABEL_39;
      }

      v28 = __OFSUB__(v54, v35);
      v36 = v54 - v35;
      if (v28)
      {
        goto LABEL_40;
      }

      v37 = v30;
      v38 = v31;
      v39 = v32;
      v40 = v33;
      v34.n128_u64[0] = 0;
      v41 = sub_22BF45140(v36 & ~(v36 >> 63), v34);
      sub_22BF4FDBC(v37, v38, v39, v40, v41);
      v43 = v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE673F4(0, *(v16 + 16) + 1, 1, v16);
        v16 = v46;
      }

      v45 = *(v16 + 16);
      v44 = *(v16 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22BE673F4(v44 > 1, v45 + 1, 1, v16);
        v16 = v47;
      }

      swift_unknownObjectRelease();
      *(v16 + 16) = v45 + 1;
      *(v16 + 8 * v45 + 32) = v43;
      v14 = v18;
      if (v18 == v17)
      {
        goto LABEL_7;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_7:
  swift_unknownObjectRelease();
  sub_22BF5F0E4(a2, v48, v16, a5, a6, a7, a8, a9, a10);

  if (v11)
  {
    *a11 = v11;
  }
}

void sub_22BF4FDBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if (!__OFADD__(*(a5 + 16), (a4 >> 1) - a3))
  {
    sub_22BE67418();
    swift_unknownObjectRetain();
    sub_22BE6E528();

    sub_22BE6E47C(v5);
    return;
  }

  __break(1u);
}

void sub_22BF4FE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22BF45398();
  if (__OFSUB__(a4, 2))
  {
    goto LABEL_23;
  }

  sub_22BE64280(a4 - 2, v5);
  v9 = v8 >> 1;
  v10 = (v8 >> 1) - v7;
  if (__OFSUB__(v8 >> 1, v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v6;
    v13 = v7;
    v25 = MEMORY[0x277D84F90];
    sub_22BE712BC(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v14 = v25;
    while (v13 < v9)
    {
      v15 = [*(v12 + 8 * v13) intValue];
      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22BE712BC(v16 > 1, v17 + 1, 1);
      }

      *(v25 + 16) = v17 + 1;
      *(v25 + 4 * v17 + 32) = v15;
      if (v9 == ++v13)
      {
        swift_unknownObjectRelease();
        v11 = MEMORY[0x277D84F90];
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  v14 = MEMORY[0x277D84F90];
LABEL_12:
  v18 = *(v14 + 16);
  if (v18)
  {
    sub_22BE712BC(0, v18, 0);
    v19 = 32;
    v20 = v11;
    while (1)
    {
      v21 = *(v14 + v19);
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22BE712BC(v23 > 1, v24 + 1, 1);
      }

      *(v11 + 16) = v24 + 1;
      *(v11 + 4 * v24 + 32) = v22;
      v19 += 4;
      if (!--v18)
      {

        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_20:
  sub_22BE6E5F4(v20);
  sub_22BE6E5F4(&unk_283F8B840);
}

void sub_22BF500A4(void **a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  sub_22C272EF4();
  v6 = sub_22C272FF4();

  v7 = [v5 encodeAsIDsFrom_];

  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  v8 = sub_22C273494();

  *a4 = v8;
}

uint64_t sub_22BF50154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22BE5CE4C(&qword_27D90B728, &qword_22C28EC58);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  sub_22BE22868();
  v15 = sub_22C26FDC4();
  if (sub_22BE1AEA8(v14, 1, v15) != 1)
  {
    sub_22BE22868();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 88))(v11, v15);
    if (v17 != *MEMORY[0x277D1CE60] && v17 != *MEMORY[0x277D1CE58])
    {
      (*(v16 + 8))(v11, v15);
    }
  }

  sub_22BF4FE70(a1, a2, a4, a5);
  v20 = v19;

  sub_22BE233E8(v14, &qword_27D90B728, &qword_22C28EC58);
  v21 = *(v20 + 16);

  v22.n128_u16[0] = COERCE_UNSIGNED_INT(1.0);
  result = sub_22BF45140(v21, v22);
  v24 = __OFSUB__(a5, v21);
  v25 = a5 - v21;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v26 = result;
    v27 = sub_22BF452B4(0, v25);
    v28.n128_u64[0] = 0;
    v29 = sub_22BF45140(v25, v28);
    v32 = v20;
    sub_22BE6E5F4(v27);
    v30 = v32;
    v32 = v26;
    sub_22BE6E47C(v29);
    return v30;
  }

  return result;
}

id sub_22BF5039C(uint64_t a1)
{
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C28E680;
  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  *(v3 + 32) = sub_22C273804();
  v4 = *(a1 + 16);
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v6 = sub_22BF647C0(v3, 131104);
  if (!v1 && v4)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
      [v6 setObject:v9 atIndexedSubscript:v7];

      ++v7;
    }

    while (v4 != v7);
  }

  return v6;
}

id sub_22BF504F0(uint64_t a1)
{
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C28E680;
  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  *(v3 + 32) = sub_22C273804();
  v4 = *(a1 + 16);
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v6 = sub_22BF647C0(v3, 65552);
  if (!v1 && v4)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      _H0 = *(v8 + 2 * v7);
      __asm { FCVT            S8, H0 }

      v15 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v16) = _S8;
      v17 = [v15 initWithFloat_];
      [v6 setObject:v17 atIndexedSubscript:v7];

      ++v7;
    }

    while (v4 != v7);
  }

  return v6;
}

void *sub_22BF50658(void *a1)
{
  v2 = [a1 dataPointer];
  [a1 count];
  v3 = [a1 count];

  return sub_22C25D5D0(v2, v3);
}

void sub_22BF506C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t *a10)
{
  v11 = v10;
  v97 = a8;
  v98 = a7;
  v102 = a6;
  v101 = a5;
  v100 = a4;
  v15 = sub_22C2720A4();
  MEMORY[0x28223BE20](v15);
  v89 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v88 = &v85 - v20;
  if (!__OFADD__(a2, a3))
  {
    if (a2 + a3 >= *(a1 + 16))
    {
      v21 = *(a1 + 16);
    }

    else
    {
      v21 = a2 + a3;
    }

    if (v21 < a2)
    {
      goto LABEL_34;
    }

    v90 = v19;
    v91 = v18;
    v92 = a10;
    v85 = a9;
    v87 = a2;
    v86 = v21;
    v93 = sub_22C26D134();
    v23 = v22;
    v25 = v24 >> 1;
    v27 = (v26 + 16 * v22 + 8);
    v28 = MEMORY[0x277D84F90];
    v99 = xmmword_22C2759F0;
    for (i = v24 >> 1; ; v25 = i)
    {
      if (v25 == v23)
      {
        swift_unknownObjectRelease();
        sub_22BF51E78(v87, v86, v28, v85);
        if (!v11)
        {

          return;
        }

        goto LABEL_27;
      }

      if (v23 >= v25)
      {
        break;
      }

      v108 = v28;
      v30 = *(v27 - 1);
      v29 = *v27;

      v31 = sub_22BF50154(v30, v29, v100, v101, v102);
      v33 = v32;
      v34 = sub_22BF5039C(v31);
      if (v11)
      {

        swift_unknownObjectRelease();

LABEL_27:

        goto LABEL_31;
      }

      v35 = v34;
      v105 = v27;
      v11 = 0;
      v36 = sub_22BF504F0(v33);

      sub_22BE5CE4C(&qword_27D90B258, &qword_22C28C710);
      inited = swift_initStackObject();
      *(inited + 16) = v99;
      *(inited + 32) = 0x64695F6E656B6F74;
      *(inited + 40) = 0xE900000000000073;
      v38 = sub_22BE45D84(0, &qword_28106DB68, 0x277CBFF48);
      *(inited + 48) = v35;
      *(inited + 72) = v38;
      strcpy((inited + 80), "padding_mask");
      *(inited + 120) = v38;
      *(inited + 93) = 0;
      *(inited + 94) = -5120;
      *(inited + 96) = v36;
      v39 = v35;
      v40 = v36;
      v41 = sub_22C272E84();
      v42 = objc_allocWithZone(MEMORY[0x277CBFED0]);
      v43 = sub_22BF646D8(v41);
      v104 = v23;
      MEMORY[0x28223BE20](v43);
      *(&v85 - 2) = v44;
      sub_22BF45398();
      v46 = v45;
      v106 = v39;
      v107 = v43;
      v47 = sub_22C272FF4();
      v48 = [v46 featureValueForName_];

      swift_unknownObjectRelease();
      if (!v48 || (v49 = [v48 multiArrayValue], v48, !v49))
      {

        v62 = v89;
        sub_22C271AD4();
        v63 = sub_22C272084();
        v64 = sub_22C2737A4();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_22BE15000, v63, v64, "TR Embedding output is not MLDictionaryFeatureProvider", v65, 2u);
          MEMORY[0x2318AD180](v65, -1, -1);
        }

        (*(v90 + 8))(v62, v91);
        sub_22BF1C114();
        v11 = swift_allocError();
        *v66 = 6;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_30:
LABEL_31:
        *v92 = v11;
        return;
      }

      v95 = v30;
      v103 = v40;
      v50 = [v49 shape];
      v94 = sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
      v51 = sub_22C273494();

      v109 = MEMORY[0x277D84F90];
      sub_22C273B84();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_22C273B54();
      sub_22C273B94();
      sub_22C273BA4();
      sub_22C273B64();
      v52 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      [v52 initWithInteger_];
      sub_22C273B54();
      sub_22C273B94();
      sub_22C273BA4();
      sub_22C273B64();
      LOBYTE(v50) = sub_22BEA273C(v51, v109);

      if ((v50 & 1) == 0 || [v49 dataType] != 65552)
      {

        v67 = v88;
        sub_22C271B14();
        v68 = v49;

        v69 = v68;
        v70 = sub_22C272084();
        v71 = sub_22C2737A4();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v109 = v73;
          *v72 = 136315650;
          v74 = sub_22BE61C88(v95, v29, &v109);

          *(v72 + 4) = v74;
          *(v72 + 12) = 2080;
          v75 = [v69 shape];
          v76 = v94;
          v77 = sub_22C273494();

          v78 = MEMORY[0x2318ABBB0](v77, v76);
          v80 = v79;

          v81 = sub_22BE61C88(v78, v80, &v109);

          *(v72 + 14) = v81;
          *(v72 + 22) = 2048;
          v82 = [v69 dataType];

          *(v72 + 24) = v82;
          _os_log_impl(&dword_22BE15000, v70, v71, "Failed to embed %s. Received embedding shaped: %s and data type: %ld, which are unexpected.", v72, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2318AD180](v73, -1, -1);
          MEMORY[0x2318AD180](v72, -1, -1);
        }

        else
        {
        }

        (*(v90 + 8))(v67, v91);
        v83 = v106;
        sub_22BF1C114();
        v11 = swift_allocError();
        *v84 = 5;
        swift_willThrow();
        swift_unknownObjectRelease();

        goto LABEL_30;
      }

      v53 = sub_22BF50658(v49);
      v28 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE673F4(0, *(v28 + 16) + 1, 1, v28);
        v28 = v60;
      }

      v56 = v103;
      v57 = v107;
      v59 = *(v28 + 16);
      v58 = *(v28 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_22BE673F4(v58 > 1, v59 + 1, 1, v28);
        v28 = v61;
      }

      *(v28 + 16) = v59 + 1;
      *(v28 + 8 * v59 + 32) = v53;
      v27 = v105 + 2;
      v23 = v104 + 1;
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_22BF51120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  v16 = v15;
  v107 = a8;
  v108 = a7;
  v112 = a6;
  v111 = a5;
  v110 = a4;
  v20 = sub_22C2720A4();
  MEMORY[0x28223BE20](v20);
  v95 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  if (__OFADD__(a2, a3))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  if (a2 + a3 >= *(a1 + 16))
  {
    v26 = *(a1 + 16);
  }

  else
  {
    v26 = a2 + a3;
  }

  if (v26 < a2)
  {
    goto LABEL_33;
  }

  v94 = &v89 - v24;
  v96 = v25;
  v97 = v23;
  v98 = a15;
  v91 = a14;
  v101 = a13;
  v100 = a12;
  v27 = a11;
  v90 = a10;
  v28 = a9;
  v93 = a2;
  v92 = v26;
  v99 = sub_22C26D134();
  v30 = v29;
  v32 = v31 >> 1;
  v34 = (v33 + 16 * v29 + 8);
  v35 = MEMORY[0x277D84F90];
  v109 = xmmword_22C2759F0;
  v106 = a11;
  v105 = a9;
  v104 = v31 >> 1;
  while (v32 != v30)
  {
    if (v30 >= v32)
    {
      __break(1u);
      goto LABEL_32;
    }

    v118 = v35;
    v37 = *(v34 - 1);
    v36 = *v34;
    v115 = v34;

    v38 = sub_22BF50154(v37, v36, v110, v111, v112);
    v40 = v39;
    v41 = sub_22BF5039C(v38);
    if (v16)
    {

      swift_unknownObjectRelease();

      goto LABEL_29;
    }

    v42 = v41;
    v114 = v30;
    v16 = 0;
    v43 = sub_22BF504F0(v40);

    sub_22BE5CE4C(&qword_27D90B258, &qword_22C28C710);
    inited = swift_initStackObject();
    *(inited + 16) = v109;
    *(inited + 32) = 0x64695F6E656B6F74;
    *(inited + 40) = 0xE900000000000073;
    v45 = sub_22BE45D84(0, &qword_28106DB68, 0x277CBFF48);
    *(inited + 48) = v42;
    *(inited + 72) = v45;
    strcpy((inited + 80), "padding_mask");
    *(inited + 120) = v45;
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = v43;
    v46 = v42;
    v47 = v43;
    v48 = sub_22C272E84();
    v49 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v50 = sub_22BF646D8(v48);
    v117 = v46;
    MEMORY[0x28223BE20](v50);
    v116 = v51;
    sub_22BF45398();
    v53 = v52;
    v54 = sub_22C272FF4();
    v55 = [v53 featureValueForName_];

    swift_unknownObjectRelease();
    if (!v55 || (v56 = [v55 multiArrayValue], v55, !v56))
    {

      v67 = v95;
      sub_22C271AD4();
      v68 = sub_22C272084();
      v69 = sub_22C2737A4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_22BE15000, v68, v69, "TR Embedding output is not MLDictionaryFeatureProvider", v70, 2u);
        MEMORY[0x2318AD180](v70, -1, -1);
      }

      (*(v96 + 8))(v67, v97);
      sub_22BF1C114();
      v16 = swift_allocError();
      *v71 = 6;
      swift_willThrow();

      swift_unknownObjectRelease();

      goto LABEL_29;
    }

    v103 = v37;
    v113 = v47;
    v57 = [v56 shape];
    v102 = sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
    v58 = sub_22C273494();

    v119 = MEMORY[0x277D84F90];
    sub_22C273B84();
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_22C273B54();
    sub_22C273B94();
    sub_22C273BA4();
    sub_22C273B64();
    v59 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    [v59 initWithInteger_];
    sub_22C273B54();
    sub_22C273B94();
    sub_22C273BA4();
    sub_22C273B64();
    v60 = sub_22BEA273C(v58, v119);

    if ((v60 & 1) == 0 || [v56 dataType] != 65552)
    {

      v72 = v94;
      sub_22C271B14();
      v73 = v56;

      v74 = v73;
      v75 = sub_22C272084();
      v76 = sub_22C2737A4();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v119 = v78;
        *v77 = 136315650;
        v79 = sub_22BE61C88(v103, v36, &v119);

        *(v77 + 4) = v79;
        *(v77 + 12) = 2080;
        v80 = [v74 shape];
        v81 = v102;
        v82 = sub_22C273494();

        v83 = MEMORY[0x2318ABBB0](v82, v81);
        v85 = v84;

        v86 = sub_22BE61C88(v83, v85, &v119);

        *(v77 + 14) = v86;
        *(v77 + 22) = 2048;
        v87 = [v74 dataType];

        *(v77 + 24) = v87;
        _os_log_impl(&dword_22BE15000, v75, v76, "Failed to embed %s. Received embedding shaped: %s and data type: %ld, which are unexpected.", v77, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318AD180](v78, -1, -1);
        MEMORY[0x2318AD180](v77, -1, -1);
      }

      else
      {
      }

      (*(v96 + 8))(v72, v97);
      sub_22BF1C114();
      v16 = swift_allocError();
      *v88 = 5;
      swift_willThrow();

      swift_unknownObjectRelease();

      goto LABEL_29;
    }

    v61 = sub_22BF50658(v56);
    v35 = v118;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE673F4(0, *(v35 + 16) + 1, 1, v35);
      v35 = v65;
    }

    v27 = v106;
    v28 = v105;
    v62 = v113;
    v64 = *(v35 + 16);
    v63 = *(v35 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_22BE673F4(v63 > 1, v64 + 1, 1, v35);
      v35 = v66;
    }

    *(v35 + 16) = v64 + 1;
    *(v35 + 8 * v64 + 32) = v61;
    v34 = v115 + 2;
    v30 = v114 + 1;
    v32 = v104;
  }

  swift_unknownObjectRelease();
  sub_22BF5F0E4(v93, v92, v35, v28, v90, v27, v100, v101, v91);
  if (v16)
  {

LABEL_29:

    *v98 = v16;

    return;
  }
}

id sub_22BF51CE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v9[0] = 0;
  v5 = [v4 predictionFromFeatures:a2 error:v9];
  v6 = v9[0];
  if (v5)
  {
    *a3 = v5;
    return v6;
  }

  else
  {
    v8 = v9[0];
    sub_22C26DE84();

    return swift_willThrow();
  }
}

void sub_22BF51D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v11 = 0;
  v10 = v8;
  sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C275160;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_22BF4E610(inited, 1, a3, &v10, &v11);
  if (v4)
  {
    swift_setDeallocating();
    sub_22BEDDB40();
  }

  else
  {
    swift_setDeallocating();
    sub_22BEDDB40();
    if (!v11)
    {
      __break(1u);
    }
  }
}

uint64_t sub_22BF51E78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 16))
  {
    *a4 = *(a3 + 32);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BF51F2C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  sub_22BE29494();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_22BF51F7C()
{
  sub_22C26DF64();
  sub_22C2702A4();
  sub_22BE29F88(&qword_28107F360, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v0 = sub_22C272E84();
  sub_22BE5CE4C(&qword_27D90B790, &qword_22C28ED70);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_281079CA8 = result;
  return result;
}

uint64_t sub_22BF52030()
{
  v1 = sub_22C26DF64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_databaseBaseURL, v1, v3);
  if (qword_281079CA0 != -1)
  {
    v6 = swift_once();
  }

  v7 = qword_281079CA8;
  MEMORY[0x28223BE20](v6);
  *(&v10 - 2) = v5;
  os_unfair_lock_lock((v7 + 24));
  sub_22BF68FEC((v7 + 16), &v11);
  os_unfair_lock_unlock((v7 + 24));
  v8 = v11;
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_22BF521D0()
{
  sub_22BE183FC();
  sub_22C26E384();
  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF52250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_22C2702A4();
  v4[6] = sub_22BE29F88(qword_28107F1F0, MEMORY[0x277D42528], MEMORY[0x277D42530]);
  v6 = sub_22C2735D4();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_22BF52310, v6, v5);
}

uint64_t sub_22BF52310()
{
  sub_22BE183FC();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_22BF52414;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v1, v2, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22BF68E5C, v3, v7);
}

uint64_t sub_22BF52414()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];

    return MEMORY[0x2822009F8](sub_22BF35850, v7, v8);
  }

  else
  {

    sub_22BE17A94();

    return v9();
  }
}

void sub_22BF52530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22BE19130();
  v208 = v29;
  v209 = v27;
  v206 = v30;
  v193 = v31;
  v33 = v32;
  v215 = v35;
  v216 = v34;
  v212 = a25;
  v213 = v36;
  v214 = a24;
  v207 = a21;
  v217[2] = *MEMORY[0x277D85DE8];
  v211 = v26;
  v210 = *v26;
  v194 = sub_22C273064();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  v39 = sub_22BE18950(v38);
  _s19SentinelFileManagerVMa(v39);
  sub_22BE18000();
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  v42 = sub_22BE18950(v41);
  v198 = type metadata accessor for ToolboxVersion(v42);
  sub_22BE18000();
  MEMORY[0x28223BE20](v43);
  sub_22BE17A44();
  sub_22BE18950(v44);
  v197 = sub_22C272024();
  sub_22BE179D8();
  v196 = v45;
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  sub_22BE18950(v47);
  v48 = sub_22C26E3E4();
  v49 = sub_22BE19448(v48);
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  sub_22BE18950(v50);
  v51 = sub_22C26E454();
  sub_22BE392E0(v51);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE19E94();
  sub_22BE18950(v54);
  sub_22C26E414();
  sub_22BE179D8();
  v200 = v56;
  v201 = v55;
  MEMORY[0x28223BE20](v55);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v57);
  sub_22BE19E94();
  v202 = v58;
  sub_22BE183BC();
  sub_22C2720A4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v59);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v61);
  sub_22BE19E94();
  sub_22BE18950(v62);
  sub_22C26DF64();
  sub_22BE179D8();
  v204 = v64;
  v205 = v63;
  MEMORY[0x28223BE20](v63);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v65);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v66);
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v67);
  sub_22BE23858();
  MEMORY[0x28223BE20](v68);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v69);
  sub_22BE324EC();
  LODWORD(v203) = *v33;
  v70 = v213;
  sub_22BF6B4D4(v213, v216, v215, a22, a23, a24, a25, v71, v178, v179, SWORD2(v179), SBYTE6(v179), SHIBYTE(v179), v180, v182, v184, v185, v186, v187, v188, v189, v190, v191);
  v209 = v27;
  if (v27)
  {

    sub_22BF1CE1C(v208);
    sub_22BE233E8(v215, &qword_27D908088, &qword_22C278EC0);
    sub_22BE1BC24();
    (*(v73 + 8))(v216, a23);
    sub_22BE1BC24();
    (*(v74 + 8))(v213, a22);
LABEL_22:
    sub_22BE3EA80();
    swift_deallocPartialClassInstance();
    goto LABEL_23;
  }

  *(v211 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_accessToken) = v72;
  LOBYTE(v217[0]) = v203;
  v192 = v28;
  static ToolEmbeddingsDatabasePaths.storagePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:overridenBaseURL:)(v70, v216, v217, v215, a22, a23, v214, v212, v28);
  LOBYTE(v217[0]) = 2;
  v75 = sub_22BE29454();
  static ToolEmbeddingsDatabasePaths.storagePath<A, B>(toolboxDelegate:planGenerationToolboxDelegate:replica:overridenBaseURL:)(v75, v76, v77, v215, a22, a23, v214, v212, v78);
  v79 = v211;
  v80 = v215;
  if (v203)
  {
    sub_22BF43408(v217);
    v81 = v204;
    v82 = v205;
    if (v209)
    {

      sub_22BF1CE1C(v208);
      sub_22BE233E8(v215, &qword_27D908088, &qword_22C278EC0);
      sub_22BE1C340();
      (*(v83 + 8))(v216);
      sub_22BE1C340();
      (*(v84 + 8))(v213);
      v85 = *(v204 + 8);
      v86 = sub_22BE27BA4();
      v85(v86);
      (v85)(v192, v205);
LABEL_21:

      goto LABEL_22;
    }

    LODWORD(v209) = LOBYTE(v217[0]);
    sub_22BE3C6E0();
    sub_22C271AD4();
    v91 = sub_22BE3CDC8();
    v92(v91);
    v93 = sub_22C272084();
    v94 = sub_22C2737C4();
    if (sub_22BE35F8C(v94))
    {
      swift_slowAlloc();
      sub_22BF6AA04();
      v217[0] = swift_slowAlloc();
      *v94 = 136315394;
      sub_22BE40C1C();
      sub_22BE29F88(v95, v96, MEMORY[0x277CC9290]);
      sub_22C273FD4();
      v97 = sub_22BE289CC();
      v98 = *(v81 + 8);
      v98(v97, v82);
      v99 = sub_22BE336E8();
      sub_22BE61C88(v99, v100, v101);
      sub_22BE289CC();

      *(v94 + 4) = v70;
      *(v94 + 12) = 1024;
      *(v94 + 14) = v209;
      _os_log_impl(&dword_22BE15000, v93, v94, "Creating a write-only database instance at %s with status: %d", v94, 0x12u);
      v102 = sub_22BF6AB2C(&v202);
      sub_22BE26B64(v102);
      v103 = sub_22BE19F74();
      MEMORY[0x2318AD180](v103);
      v104 = sub_22BE22C7C();
      MEMORY[0x2318AD180](v104);
    }

    else
    {

      v98 = *(v204 + 8);
      v121 = sub_22BE25D0C();
      (v98)(v121);
    }

    v122 = sub_22BE3BEF8();
    v123(v122);
    v124 = sub_22BE36C98();
    v125 = sub_22BE292A4(v124);

    if ((v125 & 1) == 0)
    {
      v130 = [objc_opt_self() defaultManager];
      v131 = sub_22C26DEE4();
      v217[0] = 0;
      v132 = [v130 createDirectoryAtURL:v131 withIntermediateDirectories:1 attributes:0 error:v217];

      if (!v132)
      {
        v166 = v217[0];

        sub_22C26DE84();

        swift_willThrow();

        sub_22BF1CE1C(v208);
        sub_22BE233E8(v215, &qword_27D908088, &qword_22C278EC0);
        sub_22BE1C340();
        (*(v167 + 8))(v216);
        sub_22BE1C340();
        (*(v168 + 8))(v213);
        v169 = v205;
        v170 = sub_22BF6AB1C();
        (v98)(v170);
        v98(v192, v169);
        goto LABEL_21;
      }

      v133 = v217[0];
    }

    v118 = v214;
  }

  else
  {
    sub_22BF42CA8(v217);
    if (v209)
    {

      sub_22BF1CE1C(v208);
      sub_22BE233E8(v215, &qword_27D908088, &qword_22C278EC0);
      sub_22BE1C340();
      (*(v87 + 8))(v216);
      sub_22BE1C340();
      (*(v88 + 8))(v213);
      v89 = *(v204 + 8);
      v90 = sub_22BE27BA4();
      v89(v90);
      (v89)(v28, v205);
      goto LABEL_21;
    }

    LODWORD(v209) = LOBYTE(v217[0]);
    sub_22BE3C6E0();
    sub_22C271AD4();
    v105 = sub_22BE3CDC8();
    v106(v105);
    v107 = v204;
    v108 = sub_22C272084();
    sub_22C2737C4();
    sub_22BE4612C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      sub_22BE2386C();
      v217[0] = swift_slowAlloc();
      *v110 = 136315394;
      sub_22BE40C1C();
      sub_22BE29F88(v111, v112, MEMORY[0x277CC9290]);
      v113 = sub_22C273FD4();
      v115 = v114;
      (*(v107 + 8))(v70, v205);
      sub_22BE61C88(v113, v115, v217);
      sub_22BE28DA8();

      *(v110 + 4) = v113;
      *(v110 + 12) = 1024;
      *(v110 + 14) = v209;
      _os_log_impl(&dword_22BE15000, v108, v80, "Creating a read-only database instance at %s with status: %d", v110, 0x12u);
      v116 = sub_22BF6AB2C(&v203);
      sub_22BE26B64(v116);
      v117 = sub_22BE19F74();
      MEMORY[0x2318AD180](v117);
      v118 = v214;
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      v119 = sub_22BE3BEF8();
      v120(v119);
    }

    else
    {

      v126 = sub_22BE25D0C();
      v127(v126);
      v128 = sub_22BE3BEF8();
      v129(v128);
      v118 = v214;
    }
  }

  v134 = sub_22BE25D0C();
  v135(v134);
  (*(v200 + 104))(v202, *MEMORY[0x277D781F8], v201);
  sub_22BE2590C();
  sub_22BF539E0();
  sub_22BE1B754();
  (*(v136 + 104))();
  v214 = v204 + 16;
  v181(v25, v192, v205);
  (*(v200 + 16))(v199, v202, v201);
  (*(a22 + 16))();
  v209 = 0;
  if (v203)
  {
    v137 = sub_22BE36C98();
    sub_22BE292A4(v137);
  }

  sub_22BE33B48();
  sub_22BE1B754();
  sub_22C26E3D4();
  sub_22C26E3C4();
  sub_22BE29494();
  swift_allocObject();
  sub_22BE289CC();
  v138 = sub_22C26E334();
  v79[18] = a22;
  v79[19] = v118;
  v139 = sub_22BE62524(v79 + 15);
  v210 = *(a22 - 8);
  (*(v210 + 16))(v139, v213, a22);
  v140 = v212;
  v79[23] = a23;
  v79[24] = v140;
  v141 = sub_22BE62524(v79 + 20);
  v203 = *(a23 - 8);
  (*(v203 + 16))(v141, v216, a23);
  *(v79 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database) = v138;
  v142 = v205;
  sub_22BE3E9E4();
  v143();
  sub_22BF1CDC0(v208, (v79 + 2));
  v212 = v138;

  sub_22BE3C6E0();
  sub_22C271AD4();
  sub_22C272004();
  (*(v196 + 32))(v79 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter, v195, v197);
  v79[25] = v207;
  v144 = *(v118 + 16);

  sub_22BE3C6E0();
  v145 = sub_22BE180C8();
  v144(v145);
  v146 = *(v198 + 20);
  v147 = sub_22C26FDE4();
  v149 = v148;
  sub_22C26FDF4();
  sub_22BE18524();
  (*(v150 + 8))(a23 + v146);
  v151 = (v79 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_sentinelFileManager);
  sub_22BE3E9E4();
  v152();
  *v151 = v147;
  v151[1] = v149;
  v153 = v206;
  if (v206)
  {
    sub_22BE22944();
    sub_22BF6805C();
    sub_22BE28C80();
    sub_22BF2BBE0();
    sub_22BE25F54();
    sub_22BF680B4();
    v217[0] = v193;
    v217[1] = v153;
    sub_22BE1B754();
    sub_22C273054();
    sub_22BE699D0();
    v154 = v209;
    sub_22C273944();
    v209 = v154;

    sub_22BF1CE1C(v208);
    sub_22BE233E8(v215, &qword_27D908088, &qword_22C278EC0);
    v155 = sub_22BF6AC60();
    v156(v155);
    v157 = sub_22BF6AB68();
    v158(v157);
    sub_22BE1B5D4();
    v159(v142, v194);
    v160 = sub_22BF6AC2C();
    (v217[0])(v160);
    v161 = sub_22BE1ABE0();
    v162(v161);
    v163 = sub_22BF6AB0C();
    v164(v163);
    (v217[0])(v183, v142);
    v165 = sub_22BF6AC14();
    (v217[0])(v165);

    if (v154)
    {
    }
  }

  else
  {

    sub_22BF1CE1C(v208);
    sub_22BE233E8(v215, &qword_27D908088, &qword_22C278EC0);
    (*(v203 + 8))(v216, a23);
    (*(v210 + 8))(v213, a22);
    v171 = sub_22BE1ABE0();
    v172(v171);
    v173 = sub_22BF6AB0C();
    v174(v173);
    v175 = *(v204 + 8);
    v176 = sub_22BF6AB1C();
    v175(v176);
    v177 = sub_22BE33BE8();
    v175(v177);
  }

LABEL_23:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22BF539E0()
{
  v0 = sub_22C26E4C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D90B6C8, &unk_22C28EB80);
  sub_22C26E494();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22C28E690;
  *v3 = 0;
  v3[8] = 1;
  v4 = *MEMORY[0x277D78270];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_22C26E474();
  *v3 = 0;
  v3[8] = 1;
  v5(v3, v4, v0);
  sub_22C26E474();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6 = *MEMORY[0x277D78268];
  v5(v3, v6, v0);
  sub_22C26E474();
  *v3 = 0;
  *(v3 + 1) = 0;
  v5(v3, v6, v0);
  sub_22C26E474();
  *v3 = 0;
  *(v3 + 1) = 0;
  v5(v3, v6, v0);
  sub_22C26E474();
  *v3 = 0;
  *(v3 + 1) = 0;
  v5(v3, v6, v0);
  sub_22C26E474();
  *v3 = 0;
  *(v3 + 1) = 0;
  v5(v3, v6, v0);
  sub_22C26E474();
  *v3 = 0;
  *(v3 + 1) = 0;
  v5(v3, v6, v0);
  sub_22C26E474();
  *v3 = 0;
  *(v3 + 1) = 0;
  v5(v3, v6, v0);
  sub_22C26E474();
  return v9;
}

uint64_t sub_22BF53DC0()
{
  v3[1] = *MEMORY[0x277D85DE8];
  static ToolBoxUtility.stableHashData(hashableString:)();
  v1 = v0;
  v3[0] = 0;
  [v0 getBytes:v3 length:8];

  return v3[0];
}

uint64_t sub_22BF53E38(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D78238];
  v7 = sub_22C26E464();
  (*(*(v7 - 8) + 104))(a1, v6, v7);
  *a2 = a3;
  v8 = *MEMORY[0x277D78290];
  v9 = sub_22C26E4D4();
  (*(*(v9 - 8) + 104))(a2, v8, v9);

  return sub_22BE19DC4(a2, 0, 1, v9);
}

uint64_t sub_22BF53F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (sub_22BF16ECC(a2, *a1))
  {
  }

  else
  {
    sub_22C2702A4();
    sub_22C270294();
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *a1;
    sub_22BE62CB4();
    v6 = v8;
    *a1 = v8;
  }

  result = sub_22BF16ECC(a2, v6);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BF53FF8()
{
  sub_22BE201F0();
  sub_22C26E3A4();
  sub_22BF2B458();
  sub_22BF2BF70();
  sub_22BF2B2D4();
  sub_22BF2BF9C();
  sub_22BF2B484();
  sub_22BF2B578();
  sub_22BF2B300();
  sub_22BF2BFC8();
  sub_22BE1A26C();

  return v1();
}

uint64_t sub_22BF540EC()
{
  sub_22BF32CAC();
  if (v1)
  {
    return 0;
  }

  sub_22BE1BD3C((v0 + 120), *(v0 + 144));
  v3 = sub_22BE260B8();
  return v4(v3) & 1;
}

uint64_t sub_22BF54168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[18] = type metadata accessor for ToolboxVersion(0);
  v7[19] = swift_task_alloc();
  v8 = sub_22C2720A4();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_22C2722D4();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BF542BC, 0, 0);
}

uint64_t sub_22BF542BC()
{
  v35 = v0;
  sub_22BF4D750();
  v0[26] = v1;
  v2 = v1;
  sub_22BE2BA74();
  v3 = swift_allocObject();
  v0[27] = v3;
  *(v3 + 16) = MEMORY[0x277D84FA0];
  sub_22BF54F00(0, 0);
  v0[28] = v4;
  v5 = v4;
  v6 = v0[13];
  sub_22BE2BA74();
  v7 = swift_allocObject();
  v0[29] = v7;
  *(v7 + 16) = MEMORY[0x277D84F90];
  sub_22C2722B4();
  if (v6)
  {
    v8 = v0[13];
    v9 = v0[14];
    v10 = v8;
LABEL_3:
    v32 = v5;
    sub_22BF39330(v8);

    sub_22BF2A9E0(v11, v10);

    goto LABEL_4;
  }

  v24 = v0[12];
  v25 = v24[7];
  v26 = v24[8];
  sub_22BE1BD3C(v24 + 4, v25);
  (*(v26 + 96))(v34, v25, v26);
  v10 = v34[0];
  v9 = v34[1];
  if (v34[0])
  {
    v8 = v0[13];
    goto LABEL_3;
  }

  v32 = v5;
  sub_22BF39330(0);
LABEL_4:
  v29 = v9;
  v27 = v7;
  v0[30] = v9;
  v0[31] = v10;
  if (qword_27D906378 != -1)
  {
    sub_22BE185D0();
    swift_once();
  }

  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[15];
  v15 = v0[12];
  v16 = sub_22C26E244();
  v17 = sub_22BE199F4(v16, qword_27D90B298);
  v18 = v15[8];
  v30 = v15[7];
  v31 = v17;
  v28 = v18;
  sub_22BE1BD3C(v15 + 4, v30);
  v19 = swift_allocObject();
  v0[32] = v19;
  v19[2] = v14;
  v19[3] = v27;
  v19[4] = v13;
  v19[5] = v12;
  v19[6] = v15;
  v19[7] = v10;
  v19[8] = v29;
  v19[9] = v32;
  v19[10] = v2;
  v19[11] = v3;
  v20 = *(v18 + 80);

  sub_22BF39330(v10);

  v33 = (v20 + *v20);
  v21 = swift_task_alloc();
  v0[33] = v21;
  *v21 = v0;
  v21[1] = sub_22BF546C4;
  v22 = v0[25];

  return (v33)(v22, v31, sub_22BF69144, v19, v30, v28);
}

uint64_t sub_22BF546C4()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF547C4()
{
  v1 = v0[34];
  v2 = v0[29];
  sub_22BF6AC94(v2 + 16, (v0 + 2));
  if (*(*(v2 + 16) + 16))
  {
    sub_22BE291C8();

    sub_22BE464F4();
    sub_22BF55940(v3, v4, v5, v6, v7, v8, v9);
    v11 = v0[29];
    if (v1)
    {
      (*(v0[24] + 8))(v0[25], v0[23]);

      v12 = sub_22BE29454();
      sub_22BF2AE88(v12);

LABEL_8:

      sub_22BE17A94();
      goto LABEL_10;
    }

    v14 = v10;
    v15 = v0[27];

    v16 = sub_22BE29454();
    sub_22BF2AE88(v16);
    sub_22BF6AC94(v15 + 16, (v0 + 5));
    v17 = *(v15 + 16);

    sub_22BF2AAD0(v14, v17);
    *(v15 + 16) = v18;

    *(v11 + 16) = MEMORY[0x277D84F90];

    v1 = 0;
  }

  else
  {

    v13 = sub_22BE22DF4();
    sub_22BF2AE88(v13);
  }

  v19 = v0[28];
  sub_22BF6AA9C();
  swift_beginAccess();

  sub_22BF55CC4(v20, v19);
  if (v1)
  {
    v21 = sub_22BE42534();
    v22(v21);

    goto LABEL_8;
  }

  v24 = sub_22BE42534();
  v25(v24);

  sub_22BE1A26C();
LABEL_10:

  return v23();
}

uint64_t sub_22BF54A3C()
{
  v54 = v0;
  v1 = *(v0 + 272);

  *(v0 + 88) = v1;
  v2 = v1;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 280) == 5)
  {
    v3 = v0 + 16;

    sub_22C271AD4();

    v4 = sub_22C272084();
    v5 = sub_22C273784();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 168);
    if (v6)
    {
      v51 = *(v0 + 176);
      v52 = *(v0 + 160);
      v8 = *(v0 + 152);
      v49 = *(v0 + 144);
      v9 = *(v0 + 96);
      sub_22BE1A260();
      v10 = swift_slowAlloc();
      sub_22BE2386C();
      v50 = swift_slowAlloc();
      *v10 = 136315138;
      v53[0] = v50;
      sub_22BE1BD3C((v9 + 120), *(v9 + 144));
      v11 = sub_22BE1B18C();
      v12(v11);
      v13 = *(v49 + 20);
      v14 = sub_22C26FDE4();
      v16 = v15;
      sub_22C26FDF4();
      sub_22BE18524();
      (*(v17 + 8))(v8 + v13);
      v18 = sub_22BE61C88(v14, v16, v53);
      v3 = v0 + 16;

      *(v10 + 4) = v18;
      sub_22BE40940(&dword_22BE15000, v19, v20, "ToolEmbeddingToolDatabase: received cancellation request. Cancelling %s toolbox.");
      sub_22BE26B64(v50);
      v21 = sub_22BE19F74();
      MEMORY[0x2318AD180](v21);
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      (*(v7 + 8))(v51, v52);
    }

    else
    {

      v23 = sub_22BE18040();
      v25(v23, v24);
    }

    v26 = *(v0 + 232);
    sub_22BF6AC94(v26 + 16, v3);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    if (*(*(v26 + 16) + 16))
    {
      sub_22BE291C8();
      v53[0] = v27;
      v53[1] = v28;

      sub_22BE464F4();
      sub_22BF55940(v29, v30, v31, v32, v33, v34, v35);
      v36 = *(v0 + 232);
      v38 = v37;
      v39 = *(v0 + 216);

      v40 = sub_22BE1B18C();
      sub_22BF2AE88(v40);
      sub_22BF6AC94(v39 + 16, v0 + 40);
      v41 = *(v39 + 16);

      sub_22BF2AAD0(v38, v41);
      *(v39 + 16) = v42;

      *(v36 + 16) = MEMORY[0x277D84F90];
    }

    else
    {

      sub_22BF2AE88(v27);
    }

    v43 = *(v0 + 224);
    sub_22BF6AA9C();
    swift_beginAccess();

    sub_22BF55CC4(v44, v43);
    v47 = sub_22BE42534();
    v48(v47);

    sub_22BE1A26C();
  }

  else
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v22 = sub_22BE18944();
    sub_22BF2AE88(v22);

    sub_22BE17A94();
  }

  return v45();
}

void sub_22BF54F00(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C26E4C4();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22C26E494();
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  if (a2)
  {
    v41 = a1;
    v44 = sub_22C26E404();
    v8 = *(v44 - 8);
    v43 = (v44 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v40[4] = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *&v49 = swift_allocObject();
    v42 = xmmword_22C275160;
    *(v49 + 16) = xmmword_22C275160;

    sub_22C26E484();
    v40[2] = sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v9 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
    v10 = *v9;
    v40[1] = *(*v9 + 72);
    v11 = *(v10 + 80);
    v40[3] = v2;
    v12 = (v11 + 32) & ~v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v42;
    v14 = v13 + v12;
    v15 = (v13 + v12 + v9[14]);
    v16 = *MEMORY[0x277D78238];
    v17 = sub_22C26E464();
    (*(*(v17 - 8) + 104))(v14, v16, v17);
    *v15 = v41;
    v15[1] = a2;
    v18 = *MEMORY[0x277D78288];
    v19 = sub_22C26E4D4();
    (*(*(v19 - 8) + 104))(v15, v18, v19);
    sub_22BE19DC4(v15, 0, 1, v19);
    sub_22C26E3F4();
    v20 = swift_allocObject();
    *(v20 + 16) = v42;
    *&v42 = v20;
    sub_22BF53E38(v20 + v12, (v20 + v12 + v9[14]), 3);
  }

  else
  {
    v44 = sub_22C26E404();
    v43 = (v44 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v21 = swift_allocObject();
    v49 = xmmword_22C275160;
    *(v21 + 16) = xmmword_22C275160;
    sub_22C26E484();
    sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
    v22 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
    v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v49;
    v25 = v24 + v23;
    v26 = v22[14];
    v27 = *MEMORY[0x277D78230];
    v28 = sub_22C26E464();
    (*(*(v28 - 8) + 104))(v25, v27, v28);
    v29 = sub_22C26E4D4();
    sub_22BE19DC4(v25 + v26, 1, 1, v29);
    *&v49 = v21;
    sub_22C26E3F4();
    *&v42 = MEMORY[0x277D84F90];
  }

  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  sub_22C26E404();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22C275160;
  v32 = v45;
  v31 = v46;
  *v45 = 0;
  *(v32 + 8) = 1;
  (*(v31 + 104))(v32, *MEMORY[0x277D78270], v47);
  sub_22C26E474();
  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v33 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  v34 = *(*v33 + 72);
  v35 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22C27FED0;
  v37 = v36 + v35;
  sub_22BF53E38(v36 + v35, (v36 + v35 + v33[14]), 1);
  sub_22BF53E38(v37 + v34, (v37 + v34 + v33[14]), 2);
  sub_22BF53E38(v37 + 2 * v34, (v37 + 2 * v34 + v33[14]), 4);
  v50 = v36;
  sub_22BE6E0F0(v42);
  sub_22C26E3F4();
  v50 = v30;
  sub_22BE6E0C4(v49);
  v38 = v48;
  v39 = sub_22C26E324();

  if (!v38)
  {
    sub_22BF3998C(v39);
  }
}

void sub_22BF556A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  if (a2)
  {
    v19 = *(a2 + 16);

    if (v19)
    {
      sub_22BF38764();
      swift_allocError();
      *v20 = 5;
      swift_willThrow();

      return;
    }
  }

  v31 = a8;
  v32[7] = a6;
  swift_beginAccess();
  sub_22BE78B08();
  v21 = *(*(a3 + 16) + 16);
  sub_22BE78BF4(v21);
  v22 = *(a3 + 16);
  *(v22 + 16) = v21 + 1;
  v23 = sub_22C272224();
  (*(*(v23 - 8) + 16))(v22 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)) + *(*(v23 - 8) + 72) * v21, a1, v23);
  *(a3 + 16) = v22;
  swift_endAccess();
  sub_22C26E2E4();
  v32[3] = sub_22C2721D4();
  v32[4] = v24;
  sub_22C26E2D4();

  swift_beginAccess();
  if (*(*(a3 + 16) + 16) >= 0x32uLL)
  {
    v32[0] = a7;
    v32[1] = v31;

    sub_22BF55940(v25, v32, a9, a10, 0, 0, a2);
    v27 = v26;

    if (!v12)
    {
      swift_beginAccess();
      v28 = *(a11 + 16);

      sub_22BF2AAD0(v27, v28);
      v30 = v29;
      swift_beginAccess();
      *(a11 + 16) = v30;

      swift_beginAccess();
      *(a3 + 16) = MEMORY[0x277D84F90];
    }
  }
}

void sub_22BF55940(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v8 = v7;
  v14 = *a2;
  v13 = a2[1];
  v15 = *(a1 + 16);

  sub_22BF39330(v14);
  v47 = a3;

  v46 = a4;

  v49 = a6;

  v16 = 0;
  v44 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84F90];
  while (v15 != v16)
  {
    if (v16 >= v15)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    v18 = *(sub_22C272224() - 8);
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_31;
    }

    v20 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16;
    v48[0] = v14;
    v48[1] = v13;
    v21 = sub_22BF56040(v20, v48, v47, v46, a5, v49);
    if (v8)
    {

      sub_22BF2AE88(v14);

LABEL_28:

      return;
    }

    v23 = v21;
    ++v16;
    if (v21)
    {
      sub_22BF2AAD0(v22, v44);
      v44 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22BE1B8F8();
        sub_22BE6769C(v27, v28, v29, v17);
        v17 = v30;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        v31 = sub_22BE1AAE4(v25);
        sub_22BE6769C(v31, v26 + 1, 1, v17);
        v17 = v32;
      }

      *(v17 + 16) = v26 + 1;
      *(v17 + 8 * v26 + 32) = v23;
      v16 = v19;
    }
  }

  sub_22BF2AE88(v14);

  v33 = 0;
  v34 = *(v17 + 16);
  v35 = MEMORY[0x277D84F90];
  while (v34 != v33)
  {
    if (v33 >= *(v17 + 16))
    {
      goto LABEL_32;
    }

    v36 = *(v17 + 8 * v33 + 32);
    v37 = *(v36 + 16);
    v38 = *(v35 + 16);
    if (__OFADD__(v38, v37))
    {
      goto LABEL_33;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v38 + v37 > *(v35 + 24) >> 1)
    {
      sub_22BE675B0();
      v35 = v39;
    }

    if (*(v36 + 16))
    {
      if ((*(v35 + 24) >> 1) - *(v35 + 16) < v37)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      if (v37)
      {
        v40 = *(v35 + 16);
        v41 = __OFADD__(v40, v37);
        v42 = v40 + v37;
        if (v41)
        {
          goto LABEL_36;
        }

        *(v35 + 16) = v42;
      }
    }

    else
    {

      if (v37)
      {
        goto LABEL_34;
      }
    }

    ++v33;
  }

  sub_22BF567B0(v35, a5, v49, a7);
  if (v8)
  {
    goto LABEL_28;
  }
}

void sub_22BF55CC4(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for ToolboxVersion(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C2720A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_22BF57588(a1, a2);
  v15 = v14;
  if (*(v14 + 16))
  {
    v37 = v11;
    sub_22BE68E64(v14);
    sub_22C26E344();
    if (v3)
    {
    }

    else
    {

      sub_22C271AD4();

      v16 = sub_22C272084();
      v17 = sub_22C273784();

      v36 = v16;
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v32 = v18;
        v34 = swift_slowAlloc();
        v38 = v34;
        *v18 = 136315394;
        v33 = v17;
        v35 = v10;
        v20 = v4[18];
        v19 = v4[19];
        sub_22BE1BD3C(v4 + 15, v20);
        v21 = v36;
        (*(v19 + 16))(v20, v19);
        v22 = *(v7 + 20);
        v23 = sub_22C26FDE4();
        v25 = v24;
        v26 = sub_22C26FDF4();
        (*(*(v26 - 8) + 8))(&v9[v22], v26);
        v27 = sub_22BE61C88(v23, v25, &v38);

        v28 = v32;
        *(v32 + 1) = v27;
        *(v28 + 6) = 2048;
        v29 = *(v15 + 16);

        *(v28 + 14) = v29;
        v30 = v28;

        _os_log_impl(&dword_22BE15000, v21, v33, "%s toolbox: Removed %ld tools from the toolbox", v28, 0x16u);
        v31 = v34;
        sub_22BE26B64(v34);
        MEMORY[0x2318AD180](v31, -1, -1);
        MEMORY[0x2318AD180](v30, -1, -1);

        (*(v37 + 8))(v13, v35);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        (*(v37 + 8))(v13, v10);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_22BF56040(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a6;
  v85 = a5;
  v88 = a3;
  v11 = sub_22C272AC4();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C270B14();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v83 = a2[1];
  v84 = v19;
  v92 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84FA0];
  (*(v15 + 104))(v18, *MEMORY[0x277D1ECA0], v14, v16);
  v20 = sub_22C270B04();
  (*(v15 + 8))(v18, v14);
  v21 = sub_22C2721D4();
  if (*(a4 + 16))
  {
    v23 = sub_22BE3B674(v21, v22);
    v25 = v24;

    if (v25)
    {
      v26 = (*(a4 + 56) + 32 * v23);
      v27 = *v26;
      v28 = v26[2];
      v29 = v26[3];
      v80 = v26[1];

      v89 = sub_22C2721D4();
      v90 = v30;

      v79 = v28;
      MEMORY[0x2318AB8D0](v28, v29);

      v31 = sub_22BF53DC0();

      sub_22C1A8734(&v89, v31);
      if (sub_22C26A128(v31, v88))
      {
      }

      else
      {
        sub_22BE677F4();
        v45 = v32;
        v46 = *(v32 + 16);
        if (v46 >= *(v32 + 24) >> 1)
        {
          sub_22BE677F4();
          v45 = v32;
        }

        *(v45 + 16) = v46 + 1;
        v47 = v45 + 32 * v46;
        v48 = v79;
        *(v47 + 32) = v31;
        *(v47 + 40) = v48;
        *(v47 + 48) = v29;
        *(v47 + 56) = 0;
        v92 = v45;
      }

      v43 = v87;
      if (v20)
      {
      }

      else
      {
        if (v27)
        {
          MEMORY[0x28223BE20](v32);
          *(&v78 - 6) = v43;
          *(&v78 - 5) = a1;
          v49 = v88;
          *(&v78 - 4) = &v91;
          *(&v78 - 3) = v49;
          *(&v78 - 2) = &v92;
          sub_22BF442E8(sub_22BF6A9C8, (&v78 - 8), v27);
        }

        else
        {
          v49 = v88;
        }

        v50 = v80;
        if (v80)
        {
          MEMORY[0x28223BE20](v32);
          *(&v78 - 6) = v43;
          *(&v78 - 5) = a1;
          *(&v78 - 4) = &v91;
          *(&v78 - 3) = v49;
          *(&v78 - 2) = &v92;
          sub_22BF442E8(sub_22BF6A9E0, (&v78 - 8), v50);
        }
      }

LABEL_24:
      sub_22C272154();
      v51 = sub_22C272A54();
      v53 = v52;
      (*(v81 + 8))(v13, v82);
      v54 = sub_22C2721E4();
      v56 = v55;
      v89 = v51;
      v90 = v53;

      MEMORY[0x2318AB8D0](v54, v56);

      sub_22C26AD34(0, v89, v90);
      v58 = v57;
      v60 = v59;

      v89 = sub_22C2721D4();
      v90 = v61;

      MEMORY[0x2318AB8D0](v58, v60);

      v62 = sub_22BF53DC0();

      sub_22C1A8734(&v89, v62);
      if (sub_22C26A128(v62, v88))
      {
      }

      else
      {
        v67 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BE677F4();
          v67 = v75;
        }

        v68 = *(v67 + 16);
        if (v68 >= *(v67 + 24) >> 1)
        {
          sub_22BE677F4();
          v67 = v76;
        }

        *(v67 + 16) = v68 + 1;
        v69 = v67 + 32 * v68;
        *(v69 + 32) = v62;
        *(v69 + 40) = v58;
        *(v69 + 48) = v60;
        *(v69 + 56) = 0;
        v92 = v67;
        v43 = v87;
      }

      v90 = v83;
      v44 = v43;
      sub_22BF5CD0C(a1, &v89, v85, v86, v63, v64, v65, v66, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v84);
      if (!v7)
      {
        v71 = v70;
        if (v70)
        {
          MEMORY[0x28223BE20](v70);
          *(&v78 - 2) = a1;
          *(&v78 - 1) = v71;
          sub_22C26131C(sub_22BF68F48, (&v78 - 4), v72);
          v44 = v73;
        }

        else
        {
          v44 = 0;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  v33 = sub_22C272184();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    v89 = sub_22C2721D4();
    v90 = v37;

    MEMORY[0x2318AB8D0](v35, v36);

    v38 = sub_22BF53DC0();

    sub_22C1A8734(&v89, v38);
    if (sub_22C26A128(v38, v88))
    {
    }

    else
    {
      sub_22BE677F4();
      v40 = v39;
      v41 = *(v39 + 16);
      if (v41 >= *(v39 + 24) >> 1)
      {
        sub_22BE677F4();
        v40 = v77;
      }

      *(v40 + 16) = v41 + 1;
      v42 = v40 + 32 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v35;
      *(v42 + 48) = v36;
      *(v42 + 56) = 0;
      v92 = v40;
    }
  }

  v43 = v87;
  v44 = v87;
  sub_22BF5CC1C(a1, v88, &v92, &v91, v20 & 1);
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_36:

  return v44;
}

void sub_22BF567B0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v43 = *v7;
  v12 = sub_22C2720A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v16 = *(a4 + 16);

    if (v16)
    {
      sub_22BF38764();
      swift_allocError();
      *v17 = 5;
      swift_willThrow();

      return;
    }
  }

  v40 = a2;
  v41 = a3;
  v42 = v6;
  v18 = v7[18];
  v19 = v7[19];
  sub_22BE1BD3C(v7 + 15, v18);
  (*(v19 + 8))(&v46, v18, v19);
  v45 = v46;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  v35 = v20;
  if (v20)
  {
    v37 = v15;
    v38 = v13;
    v39 = v12;
    v44 = MEMORY[0x277D84F90];
    sub_22BE70138(0, v20, 0);
    v21 = v44;
    v36 = a1;
    v22 = (a1 + 64);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v44 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_22BE70138(v25 > 1, v26 + 1, 1);
        v21 = v44;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      v22 += 7;
      --v20;
    }

    while (v20);
    v13 = v38;
    v12 = v39;
    a1 = v36;
    v15 = v37;
  }

  v28 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter;
  v29 = v41;

  v30 = v7 + v28;
  v31 = v42;
  sub_22BF4ECAC(v21, 200, v30, &v45, a1, v40, v29, v7, a4, v43);
  if (v31)
  {
  }

  else
  {

    sub_22C271B14();

    v32 = sub_22C272084();
    v33 = sub_22C2737C4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v35;

      _os_log_impl(&dword_22BE15000, v32, v33, "ToolEmbeddingToolDatabase inserted %ld embeddings", v34, 0xCu);
      MEMORY[0x2318AD180](v34, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v15, v12);
  }
}