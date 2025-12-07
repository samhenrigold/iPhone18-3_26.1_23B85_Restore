uint64_t sub_1000A08E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A096C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_1000A09AC(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

unint64_t sub_1000A0A14()
{
  result = qword_1002DA830;
  if (!qword_1002DA830)
  {
    result = swift_getWitnessTable(asc_10022ECF4, &unk_1002B4A18, v0, v1);
    atomic_store(result, &qword_1002DA830);
  }

  return result;
}

unint64_t sub_1000A0A6C()
{
  result = qword_1002DA838;
  if (!qword_1002DA838)
  {
    result = swift_getWitnessTable(aU_7, &unk_1002B4990, v0, v1);
    atomic_store(result, &qword_1002DA838);
  }

  return result;
}

unint64_t sub_1000A0AC4()
{
  result = qword_1002DA840;
  if (!qword_1002DA840)
  {
    result = swift_getWitnessTable(byte_10022EE14, &unk_1002B4910, v0, v1);
    atomic_store(result, &qword_1002DA840);
  }

  return result;
}

unint64_t sub_1000A0B4C()
{
  result = qword_1002DA858;
  if (!qword_1002DA858)
  {
    result = swift_getWitnessTable(aQ_11, &unk_1002B4898, v0, v1);
    atomic_store(result, &qword_1002DA858);
  }

  return result;
}

unint64_t sub_1000A0BD4()
{
  result = qword_1002DA870;
  if (!qword_1002DA870)
  {
    result = swift_getWitnessTable(byte_10022F108, &unk_1002B4808, v0, v1);
    atomic_store(result, &qword_1002DA870);
  }

  return result;
}

unint64_t sub_1000A0C2C()
{
  result = qword_1002DA878;
  if (!qword_1002DA878)
  {
    result = swift_getWitnessTable(byte_10022EFD8, &unk_1002B4808, v0, v1);
    atomic_store(result, &qword_1002DA878);
  }

  return result;
}

unint64_t sub_1000A0C84()
{
  result = qword_1002DA880;
  if (!qword_1002DA880)
  {
    result = swift_getWitnessTable(byte_10022F000, &unk_1002B4808, v0, v1);
    atomic_store(result, &qword_1002DA880);
  }

  return result;
}

unint64_t sub_1000A0CDC()
{
  result = qword_1002DA888;
  if (!qword_1002DA888)
  {
    result = swift_getWitnessTable(aU_8, &unk_1002B4898, v0, v1);
    atomic_store(result, &qword_1002DA888);
  }

  return result;
}

unint64_t sub_1000A0D34()
{
  result = qword_1002DA890;
  if (!qword_1002DA890)
  {
    result = swift_getWitnessTable(asc_10022EEA4, &unk_1002B4898, v0, v1);
    atomic_store(result, &qword_1002DA890);
  }

  return result;
}

unint64_t sub_1000A0D88()
{
  result = qword_1002DA8A0;
  if (!qword_1002DA8A0)
  {
    result = swift_getWitnessTable(aY_9, &unk_1002B4BF0, v0, v1);
    atomic_store(result, &qword_1002DA8A0);
  }

  return result;
}

unint64_t sub_1000A0E3C()
{
  result = qword_1002DA8A8;
  if (!qword_1002DA8A8)
  {
    result = swift_getWitnessTable(asc_10022ED84, &unk_1002B4A18, v0, v1);
    atomic_store(result, &qword_1002DA8A8);
  }

  return result;
}

unint64_t sub_1000A0E90()
{
  result = qword_1002DA8B0;
  if (!qword_1002DA8B0)
  {
    result = swift_getWitnessTable(asc_10022EB88, &unk_1002B4648, v0, v1);
    atomic_store(result, &qword_1002DA8B0);
  }

  return result;
}

unint64_t sub_1000A0F54()
{
  result = qword_1002DA8C0;
  if (!qword_1002DA8C0)
  {
    result = swift_getWitnessTable(asc_10022ED5C, &unk_1002B4A18, v0, v1);
    atomic_store(result, &qword_1002DA8C0);
  }

  return result;
}

unint64_t sub_1000A0FA8()
{
  result = qword_1002DA8C8;
  if (!qword_1002DA8C8)
  {
    result = swift_getWitnessTable(a9_4, &unk_1002B4648, v0, v1);
    atomic_store(result, &qword_1002DA8C8);
  }

  return result;
}

unint64_t sub_1000A0FFC()
{
  result = qword_1002DA8D8;
  if (!qword_1002DA8D8)
  {
    result = swift_getWitnessTable(byte_10022F658, &type metadata for TSDataSyncBagModel.TSDataSyncBagModelInner.TSDataSyncBagAnalytics.TSDataSyncBagData.LowerPriorityDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DA8D8);
  }

  return result;
}

unint64_t sub_1000A1050()
{
  result = qword_1002DA8F0;
  if (!qword_1002DA8F0)
  {
    result = swift_getWitnessTable(byte_10022F608, &unk_1002B4AD0, v0, v1);
    atomic_store(result, &qword_1002DA8F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerDatasetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1000A112C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TSDataSyncBagModel.TSDataSyncBagModelInner.TSDataSyncBagAnalytics.TSDataSyncBagData.LowerPriorityDataset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1000A12E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000A13EC()
{
  result = qword_1002DA910;
  if (!qword_1002DA910)
  {
    result = swift_getWitnessTable(a1_9, &unk_1002B4BF0, v0, v1);
    atomic_store(result, &qword_1002DA910);
  }

  return result;
}

unint64_t sub_1000A1444()
{
  result = qword_1002DA918;
  if (!qword_1002DA918)
  {
    result = swift_getWitnessTable(aY_10, &type metadata for TSDataSyncBagModel.TSDataSyncBagModelInner.TSDataSyncBagAnalytics.TSDataSyncBagData.LowerPriorityDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DA918);
  }

  return result;
}

uint64_t sub_1000A14C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10009A468(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A1520()
{
  result = qword_1002DA930;
  if (!qword_1002DA930)
  {
    result = swift_getWitnessTable(asc_10022F5E0, &unk_1002B4AD0, v0, v1);
    atomic_store(result, &qword_1002DA930);
  }

  return result;
}

unint64_t sub_1000A1578()
{
  result = qword_1002DA938;
  if (!qword_1002DA938)
  {
    result = swift_getWitnessTable(asc_10022F4B0, &unk_1002B4AD0, v0, v1);
    atomic_store(result, &qword_1002DA938);
  }

  return result;
}

unint64_t sub_1000A15D0()
{
  result = qword_1002DA940;
  if (!qword_1002DA940)
  {
    result = swift_getWitnessTable(asc_10022F4D8, &unk_1002B4AD0, v0, v1);
    atomic_store(result, &qword_1002DA940);
  }

  return result;
}

unint64_t sub_1000A1628()
{
  result = qword_1002DA948;
  if (!qword_1002DA948)
  {
    result = swift_getWitnessTable(byte_10022F3F8, &type metadata for TSDataSyncBagModel.TSDataSyncBagModelInner.TSDataSyncBagAnalytics.TSDataSyncBagData.LowerPriorityDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DA948);
  }

  return result;
}

unint64_t sub_1000A1680()
{
  result = qword_1002DA950;
  if (!qword_1002DA950)
  {
    result = swift_getWitnessTable(byte_10022F420, &type metadata for TSDataSyncBagModel.TSDataSyncBagModelInner.TSDataSyncBagAnalytics.TSDataSyncBagData.LowerPriorityDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DA950);
  }

  return result;
}

unint64_t sub_1000A16D8()
{
  result = qword_1002DA958;
  if (!qword_1002DA958)
  {
    result = swift_getWitnessTable(a1_10, &unk_1002B4BF0, v0, v1);
    atomic_store(result, &qword_1002DA958);
  }

  return result;
}

unint64_t sub_1000A1730()
{
  result = qword_1002DA960;
  if (!qword_1002DA960)
  {
    result = swift_getWitnessTable(byte_10022F2C8, &unk_1002B4BF0, v0, v1);
    atomic_store(result, &qword_1002DA960);
  }

  return result;
}

void *sub_1000A17C4()
{

  return memcpy((v0 + 8), (v0 + 200), 0xC0uLL);
}

uint64_t sub_1000A1818(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

double sub_1000A1894@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A1948();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *(a3 + 40) = v9;
  }

  return result;
}

unint64_t sub_1000A1948()
{
  result = qword_1002DA968;
  if (!qword_1002DA968)
  {
    result = swift_getWitnessTable(a9_10, &type metadata for TSDataSyncConfigServerResponseBodyWrapper, v0, v1);
    atomic_store(result, &qword_1002DA968);
  }

  return result;
}

uint64_t sub_1000A199C(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Dictionary.init(dictionaryLiteral:)();
  sub_1000A1B24(a1, v8);
  sub_1000A1B88(v8, v5);
  if (*&v5[*(v3 + 28)])
  {
    v12 = *&v5[*(v3 + 28)];
    dispatch thunk of CustomStringConvertible.description.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = v9;
    sub_10014F648();
    sub_1000A1BEC(v5);
    return v12;
  }

  else
  {
    sub_1000A1BEC(v5);
  }

  return v9;
}

uint64_t sub_1000A1B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1BEC(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for PIScheduledRotationConfiguration.JitterConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000A1C5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000A1C9C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000A1D34(uint64_t a1)
{
  sub_1000A1E28(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1000A1EBC();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1000A1F0C(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        v8 = type metadata accessor for Date();
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1000A1E28(uint64_t a1)
{
  if (!qword_1002DA9E0)
  {
    type metadata accessor for TSDataSyncDatasetGroupConfig(255);
    sub_1000A3CC4(&qword_1002DA9E8);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1002DA9E0);
    }
  }
}

void sub_1000A1EBC()
{
  if (!qword_1002DA9F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DA9F0);
    }
  }
}

void sub_1000A1F0C(uint64_t a1)
{
  if (!qword_1002DA9F8)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002DA9F8);
    }
  }
}

uint64_t sub_1000A1F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_10001540C);
}

uint64_t sub_1000A1FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100015450);
}

uint64_t sub_1000A2064(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1000A2134(uint64_t a1)
{
  result = type metadata accessor for AccountIdentity();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000A21F0(uint64_t a1)
{
  sub_1000A1F0C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccountIdentity();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1000A22A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

BOOL sub_1000A22C8()
{
  sub_100002FBC();
  if ((static AccountIdentity.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  return *(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20));
}

void sub_1000A2314()
{
  sub_100002834();
  type metadata accessor for AccountIdentity();
  sub_100006C58();
  sub_1000A3CC4(v1);
  sub_100008A44();
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  Hasher._combine(_:)(*(v0 + *(v2 + 20)));
}

Swift::Int sub_1000A238C()
{
  sub_100005BE8();
  type metadata accessor for AccountIdentity();
  sub_100006C58();
  v2 = sub_1000A3CC4(v1);
  sub_100002DE8(v2, v3, v2, v4, v5, v6, v7, v8, v11, v12);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  Hasher._combine(_:)(*(v0 + *(v9 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_1000A2410(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  sub_10000307C();
  __chkstk_darwin(v4);
  sub_10000308C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100099DF4(&qword_1002DACF8, &qword_10022FBB0);
  sub_1000030B8(v11);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100004880();
  v14 = *(v13 + 56);
  sub_1000A9A48();
  sub_1000A9A48();
  sub_1000A1B88(v2, v10);
  sub_1000A1B88(v2 + v14, v7);
  if (static AccountIdentity.== infix(_:_:)())
  {
    v15 = *&v10[*(v3 + 20)];
    sub_1000A9AA4();
    v16 = *(v7 + *(v3 + 20));
    sub_1000A9AA4();
    if (v15 == v16)
    {
      return 1;
    }
  }

  else
  {
    sub_1000A9AA4();
    sub_1000A9AA4();
  }

  return 0;
}

uint64_t sub_1000A25C4()
{
  v0 = sub_100002834();
  v1 = type metadata accessor for TSDataSyncConfigServerRequest.Get(v0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  sub_10000306C();
  v5 = v4 - v3;
  v6 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  v7 = sub_1000030B8(v6);
  __chkstk_darwin(v7);
  sub_10000306C();
  sub_1000AC3B8();
  sub_1000A9A48();
  v8 = sub_100007B1C();
  sub_1000A1B88(v8, v9);
  Hasher._combine(_:)(0);
  type metadata accessor for AccountIdentity();
  sub_100006C58();
  sub_1000A3CC4(v10);
  sub_100008A44();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v5 + *(v2 + 28)));
  return sub_1000A9AA4();
}

void sub_1000A2708()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v61 = type metadata accessor for Date();
  sub_100003724();
  v59 = v4;
  __chkstk_darwin(v5);
  sub_10000306C();
  v56 = v7 - v6;
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_10000308C();
  v55 = v10 - v11;
  __chkstk_darwin(v12);
  v58 = &v53[-v13];
  v60 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v14);
  sub_10000308C();
  v57 = (v15 - v16);
  __chkstk_darwin(v17);
  v19 = &v53[-v18];
  v20 = *v3;
  v21 = v3[1];
  v22 = v3[2];
  v23 = v3[3];
  v25 = v3[4];
  v24 = v3[5];
  v26 = *v1;
  v27 = v1[1];
  v29 = v1[2];
  v28 = v1[3];
  v62 = v1;
  v30 = v1[4];
  v31 = v1[5];
  v32 = v20 == v26 && v21 == v27;
  if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = v22 == v29 && v23 == v28;
    if (v33 || (sub_1000AC378(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v34 = v25 == v30 && v24 == v31;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v35 = type metadata accessor for TSDataSyncConfigServerResponse(0);
        v36 = *(v35 + 20);
        v37 = v60;
        v38 = *(v60 + 48);
        sub_1000A9914(v3 + v36, v19);
        v39 = v62;
        sub_1000A9914(v62 + v36, &v19[v38]);
        v40 = v61;
        if (sub_100004DFC(v19, 1, v61) == 1)
        {
          sub_1000AC2E0();
          if (!v32)
          {
            goto LABEL_31;
          }

          sub_100004E24(v19, &qword_1002DA970, &qword_1002318B0);
        }

        else
        {
          v41 = v58;
          sub_1000A9914(v19, v58);
          sub_1000AC2E0();
          if (v32)
          {
            (*(v59 + 8))(v41, v40);
            goto LABEL_31;
          }

          v42 = sub_100005C00();
          v43(v42);
          sub_1000049CC();
          sub_1000A3CC4(v44);
          sub_1000AC378();
          v54 = dispatch thunk of static Equatable.== infix(_:_:)();
          v30 = *(v30 + 8);
          (v30)(v23, v40);
          (v30)(v41, v40);
          sub_100004E24(v19, &qword_1002DA970, &qword_1002318B0);
          if ((v54 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v45 = *(v35 + 24);
        v46 = *(v37 + 48);
        v19 = v57;
        sub_1000A9914(v3 + v45, v57);
        sub_1000A9914(v39 + v45, &v19[v46]);
        if (sub_100004DFC(v19, 1, v40) == 1)
        {
          sub_1000AC2E0();
          if (!v32)
          {
            goto LABEL_31;
          }

          sub_100004E24(v19, &qword_1002DA970, &qword_1002318B0);
LABEL_34:
          if (static Date.== infix(_:_:)())
          {
            static AccountIdentity.== infix(_:_:)();
          }

          goto LABEL_32;
        }

        v47 = v55;
        sub_1000A9914(v19, v55);
        sub_1000AC2E0();
        if (!v32)
        {
          v48 = sub_100005C00();
          v49(v48);
          sub_1000049CC();
          sub_1000A3CC4(v50);
          v51 = dispatch thunk of static Equatable.== infix(_:_:)();
          v52 = *(v30 + 8);
          v52(v23, v40);
          v52(v47, v40);
          sub_100004E24(v19, &qword_1002DA970, &qword_1002318B0);
          if ((v51 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_34;
        }

        (*(v59 + 8))(v47, v40);
LABEL_31:
        sub_100004E24(v19, &qword_1002DACF0, &qword_100232140);
      }
    }
  }

LABEL_32:
  sub_1000027F8();
}

void sub_1000A2BD8()
{
  sub_100004168();
  v1 = v0;
  sub_100002834();
  v2 = type metadata accessor for Date();
  sub_100003724();
  v24 = v3;
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_10000308C();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v16 = type metadata accessor for TSDataSyncConfigServerResponse(0);
  sub_1000A9914(v1 + v16[5], v15);
  sub_100007AFC(v15);
  if (v17)
  {
    sub_100008C3C();
    v18 = v24;
  }

  else
  {
    v18 = v24;
    (*(v24 + 32))(v7, v15, v2);
    sub_100005C20();
    sub_1000049CC();
    sub_1000A3CC4(v19);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    (*(v18 + 8))(v7, v2);
  }

  sub_1000A9914(v1 + v16[6], v12);
  sub_100007AFC(v12);
  if (v17)
  {
    sub_100008C3C();
  }

  else
  {
    (*(v18 + 32))(v7, v12, v2);
    sub_100005C20();
    sub_1000049CC();
    sub_1000A3CC4(v20);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    (*(v18 + 8))(v7, v2);
  }

  sub_1000049CC();
  sub_1000A3CC4(v21);
  sub_100004ED8();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for AccountIdentity();
  sub_100006C58();
  sub_1000A3CC4(v22);
  sub_100004ED8();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v16[9]));
  sub_1000027F8();
}

uint64_t sub_1000A2ED0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1000A2F60(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = v2 == v6 && v4 == v7;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v3 == v8 && v5 == v9;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_1000A302C()
{
  sub_100002FE8();
  sub_100099DF4(&qword_1002DAEA8, &qword_1002305F8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v0);
  sub_100004880();
  sub_100002810();
  sub_1000AA63C();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000AACA4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v1 = sub_100002980();
  v2(v1);
  sub_1000AC3F8();
}

uint64_t sub_1000A3140()
{
  sub_1000AC358();
  String.hash(into:)();
  sub_10000DB20();

  return String.hash(into:)();
}

Swift::Int sub_1000A3198()
{
  v0 = sub_100005BE8();
  sub_100002DE8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A3210()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DADB0, &qword_100230598);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100003B38();
  sub_100008B3C(v2, v2[3]);
  sub_1000AA63C();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_1000AA690();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = sub_10000B7A4();
    v8(v7, v5);
    sub_100004118(v2);
    *v4 = v9;
    *(v4 + 16) = v10;
    *(v4 + 32) = v11;
    *(v4 + 40) = v12;
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t sub_1000A3360(char a1)
{
  if (a1)
  {
    return 0x645F6769666E6F63;
  }

  else
  {
    return 1635018093;
  }
}

uint64_t sub_1000A3398()
{
  sub_100002FBC();
  sub_10000DE4C(v6);
  v9 = v9 && v7 == v8;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v4 && v3 == v5;
  if (!v10 && (sub_100006260() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000A343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002FE8();
  sub_10000508C();
  sub_100099DF4(&qword_1002DAD20, &qword_10022FBC0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v13);
  sub_10000AF24();
  sub_100002810();
  v14 = sub_1000A9B88();
  sub_10000A484(&type metadata for TSDataSyncConfigServerResponseBody.CodingKeys, v15, v14);
  sub_1000A9C84();
  sub_10000B9AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    sub_1000A9CD8();
    sub_10000B9AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v16 = sub_10000EF58();
  v17(v16);
  sub_1000048A0();
  sub_1000AC3F8();
}

uint64_t sub_1000A356C()
{
  sub_1000AC358();
  String.hash(into:)();
  sub_10000DB20();

  return String.hash(into:)();
}

Swift::Int sub_1000A35B4()
{
  sub_100005BE8();
  v0 = String.hash(into:)();
  sub_100002DE8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A3614()
{
  sub_100004868();
  sub_10000ADE8();
  v3 = v2;
  sub_100099DF4(&qword_1002DAD00, &qword_10022FBB8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100003B38();
  sub_100008B3C(v0, v0[3]);
  sub_1000A9B88();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_1000A9BDC();
    sub_100008D0C(&type metadata for TSDataSyncConfigServerMetadata);
    sub_1000AC3A0();
    sub_1000A9C30();
    sub_100008D0C(&type metadata for TSDataSyncConfigServerEncodedData);
    v5 = sub_10000EF48();
    v6(v5);
    sub_100004118(v0);
    *v3 = v7;
    v3[1] = v8;
    v3[2] = v9;
    v3[3] = v10;
    v3[4] = v7;
    v3[5] = v8;
  }

  sub_100003550();
  sub_100005074();
}

Swift::Int sub_1000A37A8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for AccountIdentity();
  sub_1000A3CC4(&qword_1002DE9E0);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

Swift::Int sub_1000A38F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000A3934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A2ED0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000A397C@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A39A8(uint64_t a1)
{
  v2 = sub_1000AA63C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A39E4(uint64_t a1)
{
  v2 = sub_1000AA63C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A3A28@<D0>(_OWORD *a1@<X8>)
{
  sub_1000A3210();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1000A3AAC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

uint64_t sub_1000A3AE4()
{
  v1 = sub_10000B318();
  result = sub_1000A3360(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A3B14@<X0>(_BYTE *a3@<X8>)
{
  result = sub_1000A5178();
  *a3 = result;
  return result;
}

uint64_t sub_1000A3B44(uint64_t a1)
{
  v2 = sub_1000A9B88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A3B80(uint64_t a1)
{
  v2 = sub_1000A9B88();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A3BC4@<D0>(_OWORD *a1@<X8>)
{
  sub_1000A3614();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_1000A3C28()
{
  result = qword_1002DAC10;
  if (!qword_1002DAC10)
  {
    result = swift_getWitnessTable(byte_10022F804, &type metadata for TSDataSyncConfigServerResponseBody, v0, v1);
    atomic_store(result, &qword_1002DAC10);
  }

  return result;
}

unint64_t sub_1000A3CC4(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

BOOL sub_1000A3D98()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3128, v2);
  sub_100008C18();
  return v1 != 0;
}

uint64_t sub_1000A3DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_1000A3DEC()
{
  sub_100004868();
  sub_100099DF4(&qword_1002DAE68, &qword_1002305E0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v0);
  sub_100003B38();
  v1 = sub_1000AC378();
  sub_100008B3C(v1, v2);
  sub_1000AA9F0();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100007B1C();
  KeyedEncodingContainer.encode(_:forKey:)();
  v3 = sub_10000EF48();
  v4(v3);
  sub_100005074();
}

Swift::Int sub_1000A3EEC()
{
  sub_100002FBC();
  sub_100005BE8();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A3F30()
{
  sub_100002FE8();
  sub_10000ADE8();
  sub_100099DF4(&qword_1002DAE48, &qword_1002305D0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v2);
  sub_100004880();
  sub_1000075BC(v0);
  sub_1000AA9F0();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000AC368();
    KeyedDecodingContainer.decode(_:forKey:)();
    v3 = sub_100002980();
    v4(v3);
  }

  sub_100004118(v0);
  sub_1000AC3F8();
}

BOOL sub_1000A4048()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3160, v2);
  sub_100008C18();
  return v1 != 0;
}

void sub_1000A4084()
{
  sub_100004868();
  sub_10000F398(v1, v2, v3, v4, v5);
  sub_100099DF4(&qword_1002DAE58, &qword_1002305D8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100008B3C(v0, v0[3]);
  v7 = sub_1000AA948();
  sub_100010F58(&type metadata for TSDataSyncConfigServerMetadata.CodingKeys, v8, v7);
  v9 = sub_1000AAA44();
  sub_100002FC8(v9, v10);
  v11 = sub_1000AC38C();
  v12(v11);
  sub_100005074();
}

void sub_1000A4184()
{
  sub_100002FE8();
  sub_1000AC3AC();
  sub_100099DF4(&qword_1002DAE30, &qword_1002305C8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v2);
  sub_100004880();
  sub_1000075BC(v0);
  sub_1000AA948();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000AA99C();
    sub_100008B54(&type metadata for TSDataSyncConfigServerCommonAll, v3);
    v4 = sub_100003E4C();
    v5(v4);
  }

  sub_100004118(v0);
  sub_1000AC320();
  sub_1000AC3F8();
}

void sub_1000A4314(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DAE08, &qword_1002305B8);
  sub_100003724();
  v6 = v5;
  sub_100003774();
  __chkstk_darwin(v7);
  sub_1000AC3B8();
  sub_100002810();
  sub_1000AA6E4();
  sub_10000CF84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    sub_10000355C();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v3, v4);
  sub_10000A7AC();
}

void sub_1000A4450()
{
  sub_100002FBC();
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  Hasher._combine(_:)(v0);
}

Swift::Int sub_1000A448C(Swift::UInt a1, double a2)
{
  sub_100005BE8();
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

void sub_1000A44F0()
{
  sub_10000ADE8();
  sub_100099DF4(&qword_1002DADC8, &qword_1002305A0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100004880();
  sub_1000075BC(v0);
  sub_1000AA6E4();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000AC368();
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000355C();
  sub_1000AC368();
  KeyedDecodingContainer.decode(_:forKey:)();
  v2 = sub_100002980();
  v3(v2);
  sub_100004118(v0);
  sub_100003550();
}

uint64_t sub_1000A4648(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 1635018093;
  }
}

uint64_t sub_1000A467C()
{
  sub_100002FBC();
  sub_10000DE4C(v6);
  v9 = v9 && v7 == v8;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v4 && v3 == v5;
  if (!v10 && (sub_100006260() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v1 + 32);
  v12 = *(v0 + 32);

  return sub_100142EEC(v11, v12);
}

void sub_1000A4708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002FE8();
  sub_10000508C();
  sub_100099DF4(&qword_1002DAE10, &qword_1002305C0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v13);
  sub_10000AF24();
  sub_100002810();
  v14 = sub_1000AA738();
  sub_10000A484(&type metadata for TSDataSyncConfigServerProducer.CodingKeys, v15, v14);
  sub_1000AA8A0();
  sub_10000B9AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    sub_100099DF4(&qword_1002DADF0, &qword_1002305B0);
    sub_1000AA7E0(&unk_1002DAE20);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v16 = sub_10000EF58();
  v17(v16);
  sub_1000048A0();
  sub_1000AC3F8();
}

void sub_1000A4880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, Swift::UInt8 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1000AC358();
  String.hash(into:)();
  sub_10000DB20();
  v39 = *(v32 + 32);

  sub_1001144B8(v31, v39, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

void sub_1000A4928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  sub_10000ADE8();
  v26 = v25;
  sub_100099DF4(&qword_1002DADD8, &qword_1002305A8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v27);
  sub_100003B38();
  sub_100008B3C(v23, v23[3]);
  sub_1000AA738();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100004118(v23);
  }

  else
  {
    sub_1000AA78C();
    sub_100008D0C(&type metadata for TSDataSyncConfigServerProducerMeta);
    sub_100099DF4(&qword_1002DADF0, &qword_1002305B0);
    sub_1000AC3A0();
    sub_1000AA7E0(&unk_1002DADF8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = sub_10000EF48();
    v29(v28);
    sub_100004118(v23);
    *v26 = v30;
    v26[1] = v31;
    v26[2] = v32;
    v26[3] = v33;
    v26[4] = v30;
  }

  sub_100003550();
  sub_100005074();
}

BOOL sub_1000A4B10()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3288, v2);
  sub_100008C18();
  return v1 != 0;
}

BOOL sub_1000A4B4C()
{
  sub_100010948();
  v6 = v6 && v4 == v5;
  result = 0;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v3 == v1 && v2 == v0)
    {
      return 1;
    }

    sub_100010930();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  return result;
}

void sub_1000A4BB4()
{
  sub_100004868();
  sub_10000F398(v1, v2, v3, v4, v5);
  sub_100099DF4(&qword_1002DAF80, &qword_100231168);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100008B3C(v0, v0[3]);
  v7 = sub_1000AB680();
  sub_100010F58(&type metadata for TSDataSyncConfigServerProducerMeta.CodingKeys, v8, v7);
  v9 = sub_1000AB728();
  sub_100002FC8(v9, v10);
  v11 = sub_1000AC38C();
  v12(v11);
  sub_100005074();
}

void sub_1000A4CB4()
{
  sub_100002FE8();
  sub_1000AC3AC();
  sub_100099DF4(&qword_1002DAF68, &qword_100231160);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v2);
  sub_100004880();
  sub_1000075BC(v0);
  sub_1000AB680();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000AB6D4();
    sub_100008B54(&type metadata for TSDataSyncConfigServerProducerConfigCommonAll, v3);
    v4 = sub_100003E4C();
    v5(v4);
  }

  sub_100004118(v0);
  sub_1000AC320();
  sub_1000AC3F8();
}

uint64_t sub_1000A4DCC(char a1)
{
  if (a1)
  {
    return 0x6C72755F61746164;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

uint64_t sub_1000A4E08()
{
  sub_100010948();
  v6 = v6 && v4 == v5;
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3 == v1 && v2 == v0)
    {
      return 1;
    }

    else
    {
      sub_100010930();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_1000A4E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v26 = v25;
  v28 = v27;
  v31 = sub_100099DF4(v29, v30);
  sub_100003724();
  v33 = v32;
  sub_100003774();
  __chkstk_darwin(v34);
  sub_100004880();
  sub_10000C4FC(v28, v28[3]);
  v26();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v23)
  {
    sub_10000355C();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v33 + 8))(v24, v31);
  sub_100005074();
}

void sub_1000A4FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004868();
  v24 = v23;
  v26 = v25;
  sub_100099DF4(v27, v28);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v29);
  sub_100004880();
  sub_10000C4FC(v26, v26[3]);
  v24();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000355C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v30 = sub_100002960();
    v31(v30);
  }

  sub_100004118(v26);
  sub_100005074();
}

uint64_t sub_1000A5178()
{
  sub_100002DDC();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  sub_100008C18();
  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A51F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a5 == a6 && a1 == a3)
  {
    return sub_100143968(a2, a4);
  }

  else
  {
    return 0;
  }
}

void sub_1000A5210()
{
  v2 = sub_100099DF4(&qword_1002DAC70, &qword_10022FB88);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  v6 = sub_1000AC378();
  sub_100008B3C(v6, v7);
  sub_1000A90DC();
  sub_1000AC2D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000A91D8();
  sub_10000B9AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_100099DF4(&qword_1002DAC58, &qword_10022FB80);
    sub_1000A922C(&unk_1002DAC80);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v4 + 8))(v1, v2);
  sub_10000A7AC();
}

void sub_1000A53C8(uint64_t a1, Swift::UInt a2, uint64_t a3, double a4)
{
  if (a4 == 0.0)
  {
    a4 = 0.0;
  }

  Hasher._combine(_:)(*&a4);
  Hasher._combine(_:)(a2);

  sub_1001141DC();
}

Swift::Int sub_1000A542C(Swift::UInt a1, double a2)
{
  sub_100005BE8();
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(a1);
  sub_100002DE8(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_1001141DC();
  return Hasher._finalize()();
}

void sub_1000A54A4()
{
  sub_10000ADE8();
  sub_100099DF4(&qword_1002DAC40, &qword_10022FB78);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100004880();
  sub_1000075BC(v0);
  sub_1000A90DC();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000A9130();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100099DF4(&qword_1002DAC58, &qword_10022FB80);
  sub_1000AC3A0();
  sub_1000A922C(&unk_1002DAC60);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v2 = sub_100002980();
  v3(v2);
  sub_100004118(v0);
  sub_100003550();
}

unint64_t sub_1000A568C()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3360, v2);
  sub_100008C18();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A56CC(char a1)
{
  if (!a1)
  {
    return 1684632420;
  }

  if (a1 == 1)
  {
    return 0x64695F72657375;
  }

  return 0x695F746E65696C63;
}

BOOL sub_1000A572C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A3D98();
  *a1 = result;
  return result;
}

BOOL sub_1000A57AC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A3D98();
  *a1 = result;
  return result;
}

uint64_t sub_1000A57D8(uint64_t a1)
{
  v2 = sub_1000AA9F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5814(uint64_t a1)
{
  v2 = sub_1000AA9F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A5860(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A58A8(uint64_t *a1@<X8>)
{
  sub_1000A3F30();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

BOOL sub_1000A5910@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A4048();
  *a1 = result;
  return result;
}

BOOL sub_1000A5960@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A4048();
  *a1 = result;
  return result;
}

uint64_t sub_1000A598C(uint64_t a1)
{
  v2 = sub_1000AA948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A59C8(uint64_t a1)
{
  v2 = sub_1000AA948();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A5A74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

void sub_1000A5AAC()
{
  v1 = sub_10000B318();
  sub_1000A429C(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1000A5ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5B0C(uint64_t a1)
{
  v2 = sub_1000AB77C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5B48(uint64_t a1)
{
  v2 = sub_1000AB77C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A5C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

void sub_1000A5C9C()
{
  v1 = sub_10000B318();
  sub_1000A42D0(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1000A5CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5CFC(uint64_t a1)
{
  v2 = sub_1000AA6E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5D38(uint64_t a1)
{
  v2 = sub_1000AA6E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A5D8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000A5DF4(void *a1@<X8>)
{
  sub_1000A44F0();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v3;
  }
}

uint64_t sub_1000A5E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5EB4()
{
  v1 = sub_10000B318();
  result = sub_1000A4648(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A5EE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5F14(uint64_t a1)
{
  v2 = sub_1000AA738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5F50(uint64_t a1)
{
  v2 = sub_1000AA738();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_1000A6034@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A4B10();
  *a1 = result;
  return result;
}

BOOL sub_1000A6068@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A4B10();
  *a1 = result;
  return result;
}

uint64_t sub_1000A6094(uint64_t a1)
{
  v2 = sub_1000AB680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A60D0(uint64_t a1)
{
  v2 = sub_1000AB680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A6138@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000A61D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A6208()
{
  v1 = sub_10000B318();
  result = sub_1000A4DCC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A6238@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A6268(uint64_t a1)
{
  v2 = sub_1000ABFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A62A4(uint64_t a1)
{
  v2 = sub_1000ABFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A62E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  Hasher.init(_seed:)();
  a4(v11, v6, v7, v9, v8);
  return Hasher._finalize()();
}

uint64_t sub_1000A644C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

void sub_1000A6484()
{
  v1 = sub_10000B318();
  sub_1000A51BC(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1000A64B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A64E4(uint64_t a1)
{
  v2 = sub_1000A90DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A6520(uint64_t a1)
{
  v2 = sub_1000A90DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A6574(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(v3);
  sub_1001141DC();
  return Hasher._finalize()();
}

void sub_1000A65F0(void *a1@<X8>)
{
  sub_1000A54A4();
  if (!v1)
  {
    *a1 = v5;
    a1[1] = v3;
    a1[2] = v4;
  }
}

unint64_t sub_1000A6668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A568C();
  *a1 = result;
  return result;
}

uint64_t sub_1000A6698()
{
  v1 = sub_10000B318();
  result = sub_1000A56CC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1000A6788()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B33C8, v2);
  sub_100008C18();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A67C8(char a1)
{
  result = 0x5F74657361746164;
  switch(a1)
  {
    case 1:
      result = 0x6372735F6469;
      break;
    case 2:
      result = 0x69616D6F645F6469;
      break;
    case 3:
      result = 0x79726576696C6564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A6854()
{
  sub_100002FBC();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100152CD8(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_1000A7074();
}

void sub_1000A68F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100002FE8();
  sub_10000508C();
  sub_100099DF4(&qword_1002DAE90, &qword_1002305F0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v11);
  sub_10000AF24();
  sub_100002810();
  v12 = sub_1000AAA98();
  sub_10000A484(&type metadata for TSDataSyncConfigServerDataset.CodingKeys, v13, v12);
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    sub_1000AC3A0();
    sub_1000AABFC();
    sub_10000B9AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000AAC50();
    sub_10000B9AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v14 = sub_10000EF58();
  v15(v14);
  sub_1000048A0();
  sub_1000AC3F8();
}

uint64_t sub_1000A6A68(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  String.hash(into:)();
  v2 = *(v1 + 64);
  sub_1000A6F34(*(v1 + 40));
  String.hash(into:)();

  sub_10000DB20();
  Hasher._combine(_:)(v2 & 1);

  return String.hash(into:)();
}

Swift::Int sub_1000A6B7C()
{
  sub_100005BE8();
  sub_1000A6A68(v1);
  return Hasher._finalize()();
}

void sub_1000A6BB4()
{
  sub_100004868();
  sub_1000AC3AC();
  v3 = v2;
  sub_100099DF4(&qword_1002DAE70, &qword_1002305E8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_1000075BC(v0);
  sub_1000AAA98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_100008C30();
    v5 = KeyedDecodingContainer.decode(_:forKey:)();
    v7 = v6;
    LOBYTE(v19[0]) = 1;
    sub_1000AAAEC();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v20[0]) = 2;
    sub_100008C30();
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v8;
    sub_1000AAB40();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = sub_100010D1C();
    v10(v9);
    v16 = v30;
    v15 = v31;
    v14 = v32;
    v11 = v33;
    v13 = v34;
    v12 = v35;
    v19[0] = v5;
    v19[1] = v7;
    LOBYTE(v19[2]) = 0;
    v19[3] = v17;
    v19[4] = v18;
    LOBYTE(v19[5]) = v30;
    v19[6] = v31;
    v19[7] = v32;
    LOBYTE(v19[8]) = v33;
    v19[9] = v34;
    v19[10] = v35;
    sub_1000AAB94(v19, v20);
    sub_100004118(v0);
    v20[0] = v5;
    v20[1] = v7;
    v21 = 0;
    v22 = v17;
    v23 = v18;
    v24 = v16;
    v25 = v15;
    v26 = v14;
    v27 = v11;
    v28 = v13;
    v29 = v12;
    sub_1000AABCC(v20);
    memcpy(v3, v19, 0x58uLL);
  }

  sub_100005074();
}

unint64_t sub_1000A6EF4()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3448, v2);
  sub_100008C18();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000A6F34(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
    case 4:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000A6FBC()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B34E0, v2);
  sub_100008C18();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A6FFC(char a1)
{
  result = 1701080941;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x656C756465686373;
      break;
    case 3:
      result = 0x797469726F697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A7074()
{
  sub_100002FBC();
  v4 = *v3;
  v5 = sub_1000A6F34(*v2);
  v7 = v6;
  if (v5 == sub_1000A6F34(v4) && v7 == v8)
  {
  }

  else
  {
    sub_100007B1C();
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(v1 + 24) ^ *(v0 + 24)) & 1) != 0)
  {
    return 0;
  }

  if (*(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000A7188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100002FE8();
  sub_10000508C();
  sub_100099DF4(&qword_1002DAFC8, &qword_100231188);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v17);
  sub_10000AF24();
  sub_100002810();
  v18 = sub_1000AB824();
  sub_10000A484(&type metadata for TSDataSyncConfigServerDatasetDelivery.CodingKeys, v19, v18);
  sub_1000AB8CC();
  sub_10000B9AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v16)
  {
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000B9AC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v20 = sub_10000EF58();
  v21(v20);
  sub_1000048A0();
  sub_1000AC3F8();
}

uint64_t sub_1000A72E0(uint64_t a1)
{
  sub_1000A6F34(*v1);
  String.hash(into:)();

  String.hash(into:)();
  Hasher._combine(_:)(v1[24] & 1);

  return String.hash(into:)();
}

Swift::Int sub_1000A7364()
{
  sub_100005BE8();
  sub_1000A6F34(*v0);
  String.hash(into:)();

  String.hash(into:)();
  Hasher._combine(_:)(v0[24] & 1);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A73E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  sub_1000AC3AC();
  v26 = v25;
  v27 = sub_100099DF4(&qword_1002DAFB0, &qword_100231180);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v28);
  sub_100003B38();
  sub_100008B3C(v23, v23[3]);
  sub_1000AB824();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100004118(v23);
  }

  else
  {
    sub_1000AB878();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100004890();
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v30;
    v38 = v29;
    sub_100004890();
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100004890();
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = sub_10000B7A4();
    v36 = v35;
    v37(v34, v27);
    sub_100004118(v23);
    *v26 = a13;
    *(v26 + 8) = v38;
    *(v26 + 16) = v31;
    *(v26 + 24) = v32 & 1;
    *(v26 + 32) = v33;
    *(v26 + 40) = v36;
  }

  sub_100005074();
}

uint64_t sub_1000A75F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736769666E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000100272550 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000100272570 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000100272590 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001002725B0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001002725D0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000011 && 0x80000001002725F0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1000A787C(char a1)
{
  result = 0x736769666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000A7984()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Date();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v12 = sub_1000030B8(v11);
  __chkstk_darwin(v12);
  sub_10000308C();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v58[-v17];
  v19 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v20);
  sub_10000308C();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v58[-v25];
  sub_1000B95B4(*v3, *v1);
  if ((v27 & 1) == 0)
  {
    goto LABEL_40;
  }

  v28 = v3[2];
  v29 = v1[2];
  if (v28)
  {
    if (!v29)
    {
      goto LABEL_40;
    }

    v30 = v3[1] == v1[1] && v28 == v29;
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v29)
  {
    goto LABEL_40;
  }

  v60 = v15;
  v62 = v6;
  v61 = type metadata accessor for TSDataSyncServerConfigModel(0);
  v31 = *(v61 + 24);
  v32 = *(v19 + 48);
  sub_1000A9914(v3 + v31, v26);
  sub_1000A9914(v1 + v31, &v26[v32]);
  sub_1000071D8(v26);
  if (v30)
  {
    sub_1000071D8(&v26[v32]);
    if (v30)
    {
      sub_100004E24(v26, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_22;
    }

LABEL_19:
    v36 = v26;
LABEL_20:
    sub_100004E24(v36, &qword_1002DACF0, &qword_100232140);
    goto LABEL_40;
  }

  sub_1000A9914(v26, v18);
  sub_1000071D8(&v26[v32]);
  if (v33)
  {
    v34 = sub_1000AC3C4();
    v35(v34);
    goto LABEL_19;
  }

  v37 = v62;
  (*(v62 + 32))(v10, &v26[v32], v4);
  sub_1000049CC();
  v39 = sub_1000A3CC4(v38);
  v59 = sub_1000AC3D8(v39);
  v40 = *(v37 + 8);
  v40(v10, v4);
  v40(v18, v4);
  sub_100004E24(v26, &qword_1002DA970, &qword_1002318B0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  v41 = v61;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_40;
  }

  v42 = v41[8];
  v43 = *(v19 + 48);
  sub_1000A9914(v3 + v42, v23);
  sub_1000A9914(v1 + v42, v23 + v43);
  sub_1000071D8(v23);
  if (!v30)
  {
    v44 = v60;
    sub_1000A9914(v23, v60);
    sub_1000071D8(v23 + v43);
    if (!v45)
    {
      v48 = v62;
      (*(v62 + 32))(v10, v23 + v43, v4);
      sub_1000049CC();
      v50 = sub_1000A3CC4(v49);
      v51 = sub_1000AC3D8(v50);
      v52 = *(v48 + 8);
      v52(v10, v4);
      v52(v44, v4);
      v41 = v61;
      sub_100004E24(v23, &qword_1002DA970, &qword_1002318B0);
      if ((v51 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    v46 = sub_1000AC3C4();
    v47(v46);
    goto LABEL_31;
  }

  sub_1000071D8(v23 + v43);
  if (!v30)
  {
LABEL_31:
    v36 = v23;
    goto LABEL_20;
  }

  sub_100004E24(v23, &qword_1002DA970, &qword_1002318B0);
LABEL_33:
  if (*(v3 + v41[9]) == *(v1 + v41[9]) && *(v3 + v41[10]) == *(v1 + v41[10]))
  {
    v53 = v41[11];
    v54 = *(v3 + v53);
    v55 = *(v3 + v53 + 8);
    v56 = (v1 + v53);
    if (v54 != *v56 || v55 != v56[1])
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_40:
  sub_1000027F8();
}

void sub_1000A7E30()
{
  sub_100004868();
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DACD0, &unk_10022FBA0);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  v6 = sub_1000A9984();
  sub_10000A484(&type metadata for TSDataSyncServerConfigModel.CodingKeys, v7, v6);
  sub_100099DF4(&qword_1002DACB0, &qword_10022FB98);
  sub_1000A9AF8(&unk_1002DACD8);
  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for TSDataSyncServerConfigModel(0);
    type metadata accessor for Date();
    sub_1000049CC();
    sub_1000A3CC4(v8);
    sub_10000AA50();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000AA50();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000AA50();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000B9AC();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v4 + 8))(v1, v2);
  sub_10000A7AC();
  sub_100005074();
}

void sub_1000A80B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v23;
  a20 = v24;
  sub_100002834();
  v25 = type metadata accessor for Date();
  sub_100003724();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_10000306C();
  sub_1000AC3B8();
  v29 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v30 = sub_1000030B8(v29);
  __chkstk_darwin(v30);
  sub_10000308C();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_1000A9440(v20, *v21);
  if (v21[2])
  {
    sub_100005C20();
    String.hash(into:)();
  }

  else
  {
    sub_100008C3C();
  }

  v37 = type metadata accessor for TSDataSyncServerConfigModel(0);
  sub_1000A9914(v21 + v37[6], v36);
  sub_100007AFC(v36);
  if (v38)
  {
    sub_100008C3C();
  }

  else
  {
    (*(v27 + 32))(v22, v36, v25);
    sub_100005C20();
    sub_1000049CC();
    sub_1000A3CC4(v39);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    v40 = sub_100007B1C();
    v41(v40);
  }

  sub_1000049CC();
  sub_1000A3CC4(v42);
  sub_100004ED8();
  dispatch thunk of Hashable.hash(into:)();
  sub_1000A9914(v21 + v37[8], v33);
  sub_100007AFC(v33);
  if (v38)
  {
    sub_100008C3C();
  }

  else
  {
    (*(v27 + 32))(v22, v33, v25);
    sub_100005C20();
    dispatch thunk of Hashable.hash(into:)();
    v43 = sub_100007B1C();
    v44(v43);
  }

  v45 = *(v21 + v37[9]);
  if (v45 == 0.0)
  {
    v45 = 0.0;
  }

  Hasher._combine(_:)(*&v45);
  Hasher._combine(_:)(*(v21 + v37[10]));
  String.hash(into:)();
  sub_1000027F8();
}

Swift::Int sub_1000A8368(void (*a1)(_BYTE *))
{
  sub_100005BE8();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1000A83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v62 = v20;
  v23 = v22;
  v58[1] = v24;
  type metadata accessor for Date();
  sub_100003724();
  v59 = v26;
  v60 = v25;
  __chkstk_darwin(v25);
  sub_10000306C();
  sub_1000AC3B8();
  v27 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v28 = sub_1000030B8(v27);
  __chkstk_darwin(v28);
  sub_10000308C();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = v58 - v33;
  v61 = sub_100099DF4(&qword_1002DACA0, &qword_10022FB90);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v35);
  sub_100003B38();
  v65 = type metadata accessor for TSDataSyncServerConfigModel(0);
  sub_10000307C();
  __chkstk_darwin(v36);
  sub_10000306C();
  v63 = (v38 - v37);
  v64 = v23;
  v39 = sub_1000AC378();
  sub_100008B3C(v39, v40);
  sub_1000A9984();
  sub_1000AC33C();
  v41 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    sub_100004118(v64);
  }

  else
  {
    v62 = v21;
    v58[0] = v31;
    sub_100099DF4(&qword_1002DACB0, &qword_10022FB98);
    v66 = 0;
    sub_1000A9AF8(&unk_1002DACB8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v63;
    *v63 = a10;
    v42[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42[2] = v43;
    sub_1000049CC();
    sub_1000A3CC4(v44);
    v45 = v34;
    v46 = v60;
    sub_1000AC348();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = v65;
    sub_1000A99D8(v45, v42 + *(v65 + 24));
    v48 = v62;
    sub_1000AC348();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = v42;
    (*(v59 + 32))(v42 + v47[7], v48, v46);
    v50 = v58[0];
    sub_1000AC348();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v50, v49 + v47[8]);
    sub_10000A1AC(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v49 + v47[9]) = v51;
    sub_10000A1AC(6);
    *(v49 + v47[10]) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000A1AC(7);
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = v53;
    v55 = sub_100003F58();
    v56(v55);
    v57 = (v49 + v47[11]);
    *v57 = v52;
    v57[1] = v54;
    sub_1000A9A48();
    sub_100004118(v64);
    sub_1000A9AA4();
  }

  sub_100005074();
}

unint64_t sub_1000A89A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6788();
  *a1 = result;
  return result;
}

uint64_t sub_1000A89D0()
{
  v1 = sub_10000B318();
  result = sub_1000A67C8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1000A8A00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6788();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8A28(uint64_t a1)
{
  v2 = sub_1000AAA98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A8A64(uint64_t a1)
{
  v2 = sub_1000AAA98();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A8AA8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000A6A68(v2);
  return Hasher._finalize()();
}

void sub_1000A8AE4(void *a1@<X8>)
{
  sub_1000A6BB4();
  if (!v1)
  {
    memcpy(a1, __src, 0x58uLL);
  }
}

unint64_t sub_1000A8B70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6EF4();
  *a1 = result;
  return result;
}

unint64_t sub_1000A8BA0()
{
  v1 = sub_10000B318();
  result = sub_1000A6F34(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1000A8C9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6FBC();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8CCC()
{
  v1 = sub_10000B318();
  result = sub_1000A6FFC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1000A8CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6FBC();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8D24(uint64_t a1)
{
  v2 = sub_1000AB824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A8D60(uint64_t a1)
{
  v2 = sub_1000AB824();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A8DBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

Swift::Int sub_1000A8E68(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PIKeypairsModificationKind.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_1000A8EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A75F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A8EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A7874();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8F04(uint64_t a1)
{
  v2 = sub_1000A9984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A8F40(uint64_t a1)
{
  v2 = sub_1000A9984();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A8FC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

unint64_t sub_1000A9088()
{
  result = qword_1002DAC38;
  if (!qword_1002DAC38)
  {
    result = swift_getWitnessTable(aE_6, &type metadata for TSDataSyncConfigServer, v0, v1);
    atomic_store(result, &qword_1002DAC38);
  }

  return result;
}

unint64_t sub_1000A90DC()
{
  result = qword_1002DAC48;
  if (!qword_1002DAC48)
  {
    result = swift_getWitnessTable(byte_100230520, &type metadata for TSDataSyncConfigServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAC48);
  }

  return result;
}

unint64_t sub_1000A9130()
{
  result = qword_1002DAC50;
  if (!qword_1002DAC50)
  {
    result = swift_getWitnessTable(byte_1002304F8, &type metadata for TSDataSyncConfigServerCommonProducer, v0, v1);
    atomic_store(result, &qword_1002DAC50);
  }

  return result;
}

unint64_t sub_1000A9184()
{
  result = qword_1002DAC68;
  if (!qword_1002DAC68)
  {
    result = swift_getWitnessTable(byte_1002304D0, &type metadata for TSDataSyncConfigServerProducer, v0, v1);
    atomic_store(result, &qword_1002DAC68);
  }

  return result;
}

unint64_t sub_1000A91D8()
{
  result = qword_1002DAC78;
  if (!qword_1002DAC78)
  {
    result = swift_getWitnessTable(byte_1002304A8, &type metadata for TSDataSyncConfigServerCommonProducer, v0, v1);
    atomic_store(result, &qword_1002DAC78);
  }

  return result;
}

unint64_t sub_1000A922C(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    v5 = sub_10009A468(&qword_1002DAC58, &qword_10022FB80);
    v4();
    v6 = sub_10000509C();
    result = swift_getWitnessTable(v6, v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000A9298()
{
  result = qword_1002DAC88;
  if (!qword_1002DAC88)
  {
    result = swift_getWitnessTable(byte_100230480, &type metadata for TSDataSyncConfigServerProducer, v0, v1);
    atomic_store(result, &qword_1002DAC88);
  }

  return result;
}

void sub_1000A92EC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_1000A9440(const void *a1, uint64_t a2)
{
  v26 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v23 = Hasher._finalize()();
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;
  v27 = a2;

  v11 = 0;
  v12 = 0;
  v34 = "scheduledDevicePull";
  v35 = "priority";
  v33 = "ediateDevicePull";
  v32 = "eduledDevicePull";
  v31 = "appTriggerImmediateDevicePull";
  v22 = a2 + 56;
  v24 = v5;
  for (i = v10; v9; v12 = v29)
  {
    v30 = v11;
LABEL_9:
    v29 = v12;
    sub_1000A9A48();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v28 = v9;
    String.hash(into:)();

    String.hash(into:)();
    v14 = v26;
    type metadata accessor for URL();
    sub_1000A3CC4(&qword_1002DAC98);
    dispatch thunk of Hashable.hash(into:)();
    v15 = *&v5[*(v14 + 24)];
    Hasher._combine(_:)(*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 48;
      do
      {
        v18 = *(v17 + 40);

        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();

        String.hash(into:)();
        Hasher._combine(_:)(v18);

        v17 += 64;
        --v16;
      }

      while (v16);
    }

    v9 = (v28 - 1) & v28;
    v19 = Hasher._finalize()();
    v5 = v24;
    sub_1000A9AA4();
    v11 = v19 ^ v30;
    v6 = v22;
    v10 = i;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      Hasher._combine(_:)(v11);
      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v30 = v11;
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000A9914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A9984()
{
  result = qword_1002DACA8;
  if (!qword_1002DACA8)
  {
    result = swift_getWitnessTable(byte_100230430, &type metadata for TSDataSyncServerConfigModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DACA8);
  }

  return result;
}

uint64_t sub_1000A99D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9A48()
{
  sub_100002FBC();
  v2(0);
  sub_10000307C();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000A9AA4()
{
  v1 = sub_100002834();
  v2(v1);
  sub_10000307C();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1000A9AF8(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    v5 = sub_10009A468(&qword_1002DACB0, &qword_10022FB98);
    sub_1000A3CC4(v4);
    v6 = sub_10000509C();
    result = swift_getWitnessTable(v6, v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000A9B88()
{
  result = qword_1002DAD08;
  if (!qword_1002DAD08)
  {
    result = swift_getWitnessTable(aA_11, &type metadata for TSDataSyncConfigServerResponseBody.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAD08);
  }

  return result;
}

unint64_t sub_1000A9BDC()
{
  result = qword_1002DAD10;
  if (!qword_1002DAD10)
  {
    result = swift_getWitnessTable(byte_1002303B8, &type metadata for TSDataSyncConfigServerMetadata, v0, v1);
    atomic_store(result, &qword_1002DAD10);
  }

  return result;
}

unint64_t sub_1000A9C30()
{
  result = qword_1002DAD18;
  if (!qword_1002DAD18)
  {
    result = swift_getWitnessTable(byte_100230390, &type metadata for TSDataSyncConfigServerEncodedData, v0, v1);
    atomic_store(result, &qword_1002DAD18);
  }

  return result;
}

unint64_t sub_1000A9C84()
{
  result = qword_1002DAD28;
  if (!qword_1002DAD28)
  {
    result = swift_getWitnessTable(a1_11, &type metadata for TSDataSyncConfigServerMetadata, v0, v1);
    atomic_store(result, &qword_1002DAD28);
  }

  return result;
}

unint64_t sub_1000A9CD8()
{
  result = qword_1002DAD30;
  if (!qword_1002DAD30)
  {
    result = swift_getWitnessTable(aY_11, &type metadata for TSDataSyncConfigServerEncodedData, v0, v1);
    atomic_store(result, &qword_1002DAD30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerConfigModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000A9E20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000A9E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A9ED4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000A9F14(uint64_t result, int a2, int a3)
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

      return sub_100005254(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return sub_100005254(result, a2);
    }
  }

  return result;
}

__n128 sub_1000A9F68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A9F7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000A9FBC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 initializeBufferWithCopyOfBuffer for TSDataSyncConfigServerCommonProducer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncConfigServerCommonProducer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TSDataSyncConfigServerCommonProducer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000AA078(uint64_t a1, int a2)
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

uint64_t sub_1000AA0B8(uint64_t result, int a2, int a3)
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

unint64_t sub_1000AA118()
{
  result = qword_1002DAD38;
  if (!qword_1002DAD38)
  {
    result = swift_getWitnessTable(aA_15, &type metadata for TSDataSyncConfigServerMetadata, v0, v1);
    atomic_store(result, &qword_1002DAD38);
  }

  return result;
}

unint64_t sub_1000AA170()
{
  result = qword_1002DAD40;
  if (!qword_1002DAD40)
  {
    result = swift_getWitnessTable(byte_10022FE28, &type metadata for TSDataSyncConfigServerEncodedData, v0, v1);
    atomic_store(result, &qword_1002DAD40);
  }

  return result;
}

unint64_t sub_1000AA1C8()
{
  result = qword_1002DAD48;
  if (!qword_1002DAD48)
  {
    result = swift_getWitnessTable(aQ_14, &type metadata for TSDataSyncConfigServerCommonProducer, v0, v1);
    atomic_store(result, &qword_1002DAD48);
  }

  return result;
}

unint64_t sub_1000AA220()
{
  result = qword_1002DAD50;
  if (!qword_1002DAD50)
  {
    result = swift_getWitnessTable(asc_10022FEF8, &type metadata for TSDataSyncConfigServerProducer, v0, v1);
    atomic_store(result, &qword_1002DAD50);
  }

  return result;
}

unint64_t sub_1000AA278()
{
  result = qword_1002DAD58;
  if (!qword_1002DAD58)
  {
    result = swift_getWitnessTable(byte_10022FF60, &type metadata for TSDataSyncConfigServerResponseBodyWrapper, v0, v1);
    atomic_store(result, &qword_1002DAD58);
  }

  return result;
}

unint64_t sub_1000AA2D0()
{
  result = qword_1002DAD60;
  if (!qword_1002DAD60)
  {
    result = swift_getWitnessTable(aI_13, &type metadata for TSDataSyncConfigServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAD60);
  }

  return result;
}

unint64_t sub_1000AA328()
{
  result = qword_1002DAD68;
  if (!qword_1002DAD68)
  {
    result = swift_getWitnessTable(asc_1002300E0, &type metadata for TSDataSyncConfigServerDataset, v0, v1);
    atomic_store(result, &qword_1002DAD68);
  }

  return result;
}

unint64_t sub_1000AA380()
{
  result = qword_1002DAD70;
  if (!qword_1002DAD70)
  {
    result = swift_getWitnessTable(byte_100230228, &type metadata for TSDataSyncServerConfigModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAD70);
  }

  return result;
}

unint64_t sub_1000AA3D8()
{
  result = qword_1002DAD78;
  if (!qword_1002DAD78)
  {
    result = swift_getWitnessTable(byte_100230318, &type metadata for TSDataSyncConfigServerResponseBody.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAD78);
  }

  return result;
}

unint64_t sub_1000AA430()
{
  result = qword_1002DAD80;
  if (!qword_1002DAD80)
  {
    result = swift_getWitnessTable(byte_100230250, &type metadata for TSDataSyncConfigServerResponseBody.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAD80);
  }

  return result;
}

unint64_t sub_1000AA488()
{
  result = qword_1002DAD88;
  if (!qword_1002DAD88)
  {
    result = swift_getWitnessTable(aI_14, &type metadata for TSDataSyncConfigServerResponseBody.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAD88);
  }

  return result;
}

unint64_t sub_1000AA4E0()
{
  result = qword_1002DAD90;
  if (!qword_1002DAD90)
  {
    result = swift_getWitnessTable(a9_5, &type metadata for TSDataSyncServerConfigModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAD90);
  }

  return result;
}

unint64_t sub_1000AA538()
{
  result = qword_1002DAD98;
  if (!qword_1002DAD98)
  {
    result = swift_getWitnessTable(asc_1002301C0, &type metadata for TSDataSyncServerConfigModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAD98);
  }

  return result;
}

unint64_t sub_1000AA590()
{
  result = qword_1002DADA0;
  if (!qword_1002DADA0)
  {
    result = swift_getWitnessTable(byte_10022FFF0, &type metadata for TSDataSyncConfigServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DADA0);
  }

  return result;
}

unint64_t sub_1000AA5E8()
{
  result = qword_1002DADA8;
  if (!qword_1002DADA8)
  {
    result = swift_getWitnessTable(byte_100230018, &type metadata for TSDataSyncConfigServer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DADA8);
  }

  return result;
}

unint64_t sub_1000AA63C()
{
  result = qword_1002DADB8;
  if (!qword_1002DADB8)
  {
    result = swift_getWitnessTable(byte_100231110, &type metadata for TSDataSyncConfigServerResponseBodyWrapper.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DADB8);
  }

  return result;
}

unint64_t sub_1000AA690()
{
  result = qword_1002DADC0;
  if (!qword_1002DADC0)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for TSDataSyncConfigServerResponseBody, v0, v1);
    atomic_store(result, &qword_1002DADC0);
  }

  return result;
}

unint64_t sub_1000AA6E4()
{
  result = qword_1002DADD0;
  if (!qword_1002DADD0)
  {
    result = swift_getWitnessTable(aA_12, &type metadata for TSDataSyncConfigServerCommonProducer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DADD0);
  }

  return result;
}

unint64_t sub_1000AA738()
{
  result = qword_1002DADE0;
  if (!qword_1002DADE0)
  {
    result = swift_getWitnessTable(byte_100231070, &type metadata for TSDataSyncConfigServerProducer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DADE0);
  }

  return result;
}

unint64_t sub_1000AA78C()
{
  result = qword_1002DADE8;
  if (!qword_1002DADE8)
  {
    result = swift_getWitnessTable(aA_13, &type metadata for TSDataSyncConfigServerProducerMeta, v0, v1);
    atomic_store(result, &qword_1002DADE8);
  }

  return result;
}

unint64_t sub_1000AA7E0(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    v5 = sub_10009A468(&qword_1002DADF0, &qword_1002305B0);
    v4();
    v6 = sub_10000509C();
    result = swift_getWitnessTable(v6, v5);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000AA84C()
{
  result = qword_1002DAE00;
  if (!qword_1002DAE00)
  {
    result = swift_getWitnessTable(aY_12, &type metadata for TSDataSyncConfigServerDataset, v0, v1);
    atomic_store(result, &qword_1002DAE00);
  }

  return result;
}

unint64_t sub_1000AA8A0()
{
  result = qword_1002DAE18;
  if (!qword_1002DAE18)
  {
    result = swift_getWitnessTable(aY_13, &type metadata for TSDataSyncConfigServerProducerMeta, v0, v1);
    atomic_store(result, &qword_1002DAE18);
  }

  return result;
}

unint64_t sub_1000AA8F4()
{
  result = qword_1002DAE28;
  if (!qword_1002DAE28)
  {
    result = swift_getWitnessTable(byte_100230108, &type metadata for TSDataSyncConfigServerDataset, v0, v1);
    atomic_store(result, &qword_1002DAE28);
  }

  return result;
}

unint64_t sub_1000AA948()
{
  result = qword_1002DAE38;
  if (!qword_1002DAE38)
  {
    result = swift_getWitnessTable(aQ_12, &type metadata for TSDataSyncConfigServerMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAE38);
  }

  return result;
}

unint64_t sub_1000AA99C()
{
  result = qword_1002DAE40;
  if (!qword_1002DAE40)
  {
    result = swift_getWitnessTable(byte_100230FA8, &type metadata for TSDataSyncConfigServerCommonAll, v0, v1);
    atomic_store(result, &qword_1002DAE40);
  }

  return result;
}

unint64_t sub_1000AA9F0()
{
  result = qword_1002DAE50;
  if (!qword_1002DAE50)
  {
    result = swift_getWitnessTable(byte_100230F58, &type metadata for TSDataSyncConfigServerEncodedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAE50);
  }

  return result;
}

unint64_t sub_1000AAA44()
{
  result = qword_1002DAE60;
  if (!qword_1002DAE60)
  {
    result = swift_getWitnessTable(aI_12, &type metadata for TSDataSyncConfigServerCommonAll, v0, v1);
    atomic_store(result, &qword_1002DAE60);
  }

  return result;
}

unint64_t sub_1000AAA98()
{
  result = qword_1002DAE78;
  if (!qword_1002DAE78)
  {
    result = swift_getWitnessTable(aA_14, &type metadata for TSDataSyncConfigServerDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAE78);
  }

  return result;
}

unint64_t sub_1000AAAEC()
{
  result = qword_1002DAE80;
  if (!qword_1002DAE80)
  {
    result = swift_getWitnessTable(byte_100230EB8, &type metadata for TSDataSyncConfigServerDatasetSource, v0, v1);
    atomic_store(result, &qword_1002DAE80);
  }

  return result;
}

unint64_t sub_1000AAB40()
{
  result = qword_1002DAE88;
  if (!qword_1002DAE88)
  {
    result = swift_getWitnessTable(byte_100230E90, &type metadata for TSDataSyncConfigServerDatasetDelivery, v0, v1);
    atomic_store(result, &qword_1002DAE88);
  }

  return result;
}

unint64_t sub_1000AABFC()
{
  result = qword_1002DAE98;
  if (!qword_1002DAE98)
  {
    result = swift_getWitnessTable(a1_12, &type metadata for TSDataSyncConfigServerDatasetSource, v0, v1);
    atomic_store(result, &qword_1002DAE98);
  }

  return result;
}

unint64_t sub_1000AAC50()
{
  result = qword_1002DAEA0;
  if (!qword_1002DAEA0)
  {
    result = swift_getWitnessTable(aY_14, &type metadata for TSDataSyncConfigServerDatasetDelivery, v0, v1);
    atomic_store(result, &qword_1002DAEA0);
  }

  return result;
}

unint64_t sub_1000AACA4()
{
  result = qword_1002DAEB0;
  if (!qword_1002DAEB0)
  {
    result = swift_getWitnessTable(aM_8, &type metadata for TSDataSyncConfigServerResponseBody, v0, v1);
    atomic_store(result, &qword_1002DAEB0);
  }

  return result;
}

uint64_t sub_1000AAD58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000AAD98(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for TSDataSyncConfigServerDatasetSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000AAEF4()
{
  result = qword_1002DAEB8;
  if (!qword_1002DAEB8)
  {
    result = swift_getWitnessTable(byte_100230700, &type metadata for TSDataSyncConfigServerCommonAll, v0, v1);
    atomic_store(result, &qword_1002DAEB8);
  }

  return result;
}

unint64_t sub_1000AAF4C()
{
  result = qword_1002DAEC0;
  if (!qword_1002DAEC0)
  {
    result = swift_getWitnessTable(byte_100230768, &type metadata for TSDataSyncConfigServerProducerMeta, v0, v1);
    atomic_store(result, &qword_1002DAEC0);
  }

  return result;
}

unint64_t sub_1000AAFA4()
{
  result = qword_1002DAEC8;
  if (!qword_1002DAEC8)
  {
    result = swift_getWitnessTable(byte_100230848, &type metadata for TSDataSyncConfigServerDatasetSource, v0, v1);
    atomic_store(result, &qword_1002DAEC8);
  }

  return result;
}

unint64_t sub_1000AAFFC()
{
  result = qword_1002DAED0;
  if (!qword_1002DAED0)
  {
    result = swift_getWitnessTable(byte_100230870, &type metadata for TSDataSyncConfigServerDatasetDelivery, v0, v1);
    atomic_store(result, &qword_1002DAED0);
  }

  return result;
}

unint64_t sub_1000AB054()
{
  result = qword_1002DAED8;
  if (!qword_1002DAED8)
  {
    result = swift_getWitnessTable(byte_100230968, &type metadata for TSDataSyncConfigServerResponseBodyWrapper.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAED8);
  }

  return result;
}

unint64_t sub_1000AB0AC()
{
  result = qword_1002DAEE0;
  if (!qword_1002DAEE0)
  {
    result = swift_getWitnessTable(byte_100230A58, &type metadata for TSDataSyncConfigServerCommonProducer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAEE0);
  }

  return result;
}

unint64_t sub_1000AB104()
{
  result = qword_1002DAEE8;
  if (!qword_1002DAEE8)
  {
    result = swift_getWitnessTable(byte_100230B48, &type metadata for TSDataSyncConfigServerProducer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAEE8);
  }

  return result;
}

unint64_t sub_1000AB15C()
{
  result = qword_1002DAEF0;
  if (!qword_1002DAEF0)
  {
    result = swift_getWitnessTable(byte_100230C38, &type metadata for TSDataSyncConfigServerMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAEF0);
  }

  return result;
}

unint64_t sub_1000AB1B4()
{
  result = qword_1002DAEF8;
  if (!qword_1002DAEF8)
  {
    result = swift_getWitnessTable(byte_100230D28, &type metadata for TSDataSyncConfigServerEncodedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAEF8);
  }

  return result;
}

unint64_t sub_1000AB20C()
{
  result = qword_1002DAF00;
  if (!qword_1002DAF00)
  {
    result = swift_getWitnessTable(byte_100230E18, &type metadata for TSDataSyncConfigServerDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF00);
  }

  return result;
}

unint64_t sub_1000AB264()
{
  result = qword_1002DAF08;
  if (!qword_1002DAF08)
  {
    result = swift_getWitnessTable(byte_100230D50, &type metadata for TSDataSyncConfigServerDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF08);
  }

  return result;
}

unint64_t sub_1000AB2BC()
{
  result = qword_1002DAF10;
  if (!qword_1002DAF10)
  {
    result = swift_getWitnessTable(aI_15, &type metadata for TSDataSyncConfigServerDataset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF10);
  }

  return result;
}

unint64_t sub_1000AB314()
{
  result = qword_1002DAF18;
  if (!qword_1002DAF18)
  {
    result = swift_getWitnessTable(aQ_15, &type metadata for TSDataSyncConfigServerEncodedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF18);
  }

  return result;
}

unint64_t sub_1000AB36C()
{
  result = qword_1002DAF20;
  if (!qword_1002DAF20)
  {
    result = swift_getWitnessTable(aY_15, &type metadata for TSDataSyncConfigServerEncodedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF20);
  }

  return result;
}

unint64_t sub_1000AB3C4()
{
  result = qword_1002DAF28;
  if (!qword_1002DAF28)
  {
    result = swift_getWitnessTable(aA_16, &type metadata for TSDataSyncConfigServerMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF28);
  }

  return result;
}

unint64_t sub_1000AB41C()
{
  result = qword_1002DAF30;
  if (!qword_1002DAF30)
  {
    result = swift_getWitnessTable(aI_16, &type metadata for TSDataSyncConfigServerMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF30);
  }

  return result;
}

unint64_t sub_1000AB474()
{
  result = qword_1002DAF38;
  if (!qword_1002DAF38)
  {
    result = swift_getWitnessTable(aQ_16, &type metadata for TSDataSyncConfigServerProducer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF38);
  }

  return result;
}

unint64_t sub_1000AB4CC()
{
  result = qword_1002DAF40;
  if (!qword_1002DAF40)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for TSDataSyncConfigServerProducer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF40);
  }

  return result;
}

unint64_t sub_1000AB524()
{
  result = qword_1002DAF48;
  if (!qword_1002DAF48)
  {
    result = swift_getWitnessTable(aA_17, &type metadata for TSDataSyncConfigServerCommonProducer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF48);
  }

  return result;
}

unint64_t sub_1000AB57C()
{
  result = qword_1002DAF50;
  if (!qword_1002DAF50)
  {
    result = swift_getWitnessTable(asc_1002309B8, &type metadata for TSDataSyncConfigServerCommonProducer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF50);
  }

  return result;
}

unint64_t sub_1000AB5D4()
{
  result = qword_1002DAF58;
  if (!qword_1002DAF58)
  {
    result = swift_getWitnessTable(byte_1002308D8, &type metadata for TSDataSyncConfigServerResponseBodyWrapper.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF58);
  }

  return result;
}

unint64_t sub_1000AB62C()
{
  result = qword_1002DAF60;
  if (!qword_1002DAF60)
  {
    result = swift_getWitnessTable(byte_100230900, &type metadata for TSDataSyncConfigServerResponseBodyWrapper.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF60);
  }

  return result;
}

unint64_t sub_1000AB680()
{
  result = qword_1002DAF70;
  if (!qword_1002DAF70)
  {
    result = swift_getWitnessTable(byte_100231708, &type metadata for TSDataSyncConfigServerProducerMeta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF70);
  }

  return result;
}

unint64_t sub_1000AB6D4()
{
  result = qword_1002DAF78;
  if (!qword_1002DAF78)
  {
    result = swift_getWitnessTable(byte_1002316E0, &type metadata for TSDataSyncConfigServerProducerConfigCommonAll, v0, v1);
    atomic_store(result, &qword_1002DAF78);
  }

  return result;
}

unint64_t sub_1000AB728()
{
  result = qword_1002DAF88;
  if (!qword_1002DAF88)
  {
    result = swift_getWitnessTable(byte_1002316B8, &type metadata for TSDataSyncConfigServerProducerConfigCommonAll, v0, v1);
    atomic_store(result, &qword_1002DAF88);
  }

  return result;
}

unint64_t sub_1000AB77C()
{
  result = qword_1002DAF98;
  if (!qword_1002DAF98)
  {
    result = swift_getWitnessTable(byte_100231668, &type metadata for TSDataSyncConfigServerCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAF98);
  }

  return result;
}

unint64_t sub_1000AB7D0()
{
  result = qword_1002DAFA8;
  if (!qword_1002DAFA8)
  {
    result = swift_getWitnessTable(byte_100230810, &type metadata for TSDataSyncConfigServerDatasetSource, v0, v1);
    atomic_store(result, &qword_1002DAFA8);
  }

  return result;
}

unint64_t sub_1000AB824()
{
  result = qword_1002DAFB8;
  if (!qword_1002DAFB8)
  {
    result = swift_getWitnessTable(asc_100231618, &type metadata for TSDataSyncConfigServerDatasetDelivery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAFB8);
  }

  return result;
}

unint64_t sub_1000AB878()
{
  result = qword_1002DAFC0;
  if (!qword_1002DAFC0)
  {
    result = swift_getWitnessTable(byte_1002315F0, &type metadata for TSDataSyncConfigServerDatasetSyncMode, v0, v1);
    atomic_store(result, &qword_1002DAFC0);
  }

  return result;
}

unint64_t sub_1000AB8CC()
{
  result = qword_1002DAFD0;
  if (!qword_1002DAFD0)
  {
    result = swift_getWitnessTable(byte_1002315C8, &type metadata for TSDataSyncConfigServerDatasetSyncMode, v0, v1);
    atomic_store(result, &qword_1002DAFD0);
  }

  return result;
}

_BYTE *sub_1000AB920(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_100006284(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000ABA08(unsigned __int8 *a1, int a2)
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

  return sub_10000BEA0(a1);
}

_BYTE *sub_1000ABA54(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for TSDataSyncConfigServerDatasetSyncMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000ABBDC(uint64_t result, int a2, int a3)
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

      return sub_100005254(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_100005254(result, a2);
    }
  }

  return result;
}

unint64_t sub_1000ABC28()
{
  result = qword_1002DAFD8;
  if (!qword_1002DAFD8)
  {
    result = swift_getWitnessTable(byte_1002311F0, &type metadata for TSDataSyncConfigServerProducerConfigCommonAll, v0, v1);
    atomic_store(result, &qword_1002DAFD8);
  }

  return result;
}

unint64_t sub_1000ABC80()
{
  result = qword_1002DAFE0;
  if (!qword_1002DAFE0)
  {
    result = swift_getWitnessTable(a1_13, &type metadata for TSDataSyncConfigServerDatasetSyncMode, v0, v1);
    atomic_store(result, &qword_1002DAFE0);
  }

  return result;
}

unint64_t sub_1000ABCD8()
{
  result = qword_1002DAFE8;
  if (!qword_1002DAFE8)
  {
    result = swift_getWitnessTable(aA_18, &type metadata for TSDataSyncConfigServerProducerMeta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAFE8);
  }

  return result;
}

unint64_t sub_1000ABD30()
{
  result = qword_1002DAFF0;
  if (!qword_1002DAFF0)
  {
    result = swift_getWitnessTable(aQ_17, &type metadata for TSDataSyncConfigServerCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAFF0);
  }

  return result;
}

unint64_t sub_1000ABD88()
{
  result = qword_1002DAFF8;
  if (!qword_1002DAFF8)
  {
    result = swift_getWitnessTable(aA_19, &type metadata for TSDataSyncConfigServerDatasetDelivery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DAFF8);
  }

  return result;
}

unint64_t sub_1000ABDE0()
{
  result = qword_1002DB000;
  if (!qword_1002DB000)
  {
    result = swift_getWitnessTable(byte_1002314D8, &type metadata for TSDataSyncConfigServerDatasetDelivery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB000);
  }

  return result;
}

unint64_t sub_1000ABE38()
{
  result = qword_1002DB008;
  if (!qword_1002DB008)
  {
    result = swift_getWitnessTable(byte_100231500, &type metadata for TSDataSyncConfigServerDatasetDelivery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB008);
  }

  return result;
}

unint64_t sub_1000ABE90()
{
  result = qword_1002DB010;
  if (!qword_1002DB010)
  {
    result = swift_getWitnessTable(byte_1002313E8, &type metadata for TSDataSyncConfigServerCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB010);
  }

  return result;
}

unint64_t sub_1000ABEE8()
{
  result = qword_1002DB018;
  if (!qword_1002DB018)
  {
    result = swift_getWitnessTable(byte_100231410, &type metadata for TSDataSyncConfigServerCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB018);
  }

  return result;
}

unint64_t sub_1000ABF40()
{
  result = qword_1002DB020;
  if (!qword_1002DB020)
  {
    result = swift_getWitnessTable(byte_1002312F8, &type metadata for TSDataSyncConfigServerProducerMeta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB020);
  }

  return result;
}

unint64_t sub_1000ABF98()
{
  result = qword_1002DB028;
  if (!qword_1002DB028)
  {
    result = swift_getWitnessTable(byte_100231320, &type metadata for TSDataSyncConfigServerProducerMeta.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB028);
  }

  return result;
}

unint64_t sub_1000ABFEC()
{
  result = qword_1002DB038;
  if (!qword_1002DB038)
  {
    result = swift_getWitnessTable(byte_100231858, &type metadata for TSDataSyncConfigServerProducerConfigCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB038);
  }

  return result;
}

unint64_t sub_1000AC040()
{
  result = qword_1002DB048;
  if (!qword_1002DB048)
  {
    result = swift_getWitnessTable(aQ_13, &type metadata for TSDataSyncConfigServerDatasetSyncMode, v0, v1);
    atomic_store(result, &qword_1002DB048);
  }

  return result;
}

_BYTE *sub_1000AC094(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_100006284(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000AC170()
{
  result = qword_1002DB050;
  if (!qword_1002DB050)
  {
    result = swift_getWitnessTable(byte_100231830, &type metadata for TSDataSyncConfigServerProducerConfigCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB050);
  }

  return result;
}

unint64_t sub_1000AC1C8()
{
  result = qword_1002DB058;
  if (!qword_1002DB058)
  {
    result = swift_getWitnessTable(aI_17, &type metadata for TSDataSyncConfigServerProducerConfigCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB058);
  }

  return result;
}

unint64_t sub_1000AC220()
{
  result = qword_1002DB060;
  if (!qword_1002DB060)
  {
    result = swift_getWitnessTable(aQ_18, &type metadata for TSDataSyncConfigServerProducerConfigCommonAll.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB060);
  }

  return result;
}

uint64_t sub_1000AC3D8(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void sub_1000AC40C(double *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a3;
  v5 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  v23 = type metadata accessor for TSDataSyncConfigScheduleInput(0);
  sub_1000A9914(a1 + v23[11], v10);
  v24 = sub_100004DFC(v10, 1, v11);
  v61 = a2;
  if (v24 == 1)
  {
    sub_1000ACD3C(v10);
  }

  else
  {
    (*(v12 + 32))(v22, v10, v11);
    v25 = a1[6];
    Date.timeIntervalSince(_:)();
    v27 = v26;
    (*(v12 + 8))(v22, v11);
    if (v25 >= v27)
    {
      goto LABEL_20;
    }
  }

  sub_1000A9914(a1 + v23[10], v7);
  if (sub_100004DFC(v7, 1, v11) != 1)
  {
    v44 = *(v12 + 32);
    v44(v19, v7, v11);
    v46 = *a1;
    v45 = *(a1 + 1);
    v47 = v62;
    v44(v62, v19, v11);
    type metadata accessor for TSDataSyncConfigSchedule(0);
    sub_100003790();
    *v49 = v46;
LABEL_23:
    v49[1] = v45;
    sub_100002728(v47, 0, 1, v48);

    return;
  }

  sub_1000ACD3C(v7);
  v28 = v23[13];
  v29 = *(v28 + a1);
  if (!v29)
  {
    v50 = (a1 + v23[14]);
    v51 = v50[1];
    if (!v51 || (*(a1 + v23[17]) & 1) != 0 || (v52 = *v50, v53 = (a1 + v23[15]), (v54 = v53[1]) != 0) && (v52 == *v53 ? (v55 = v51 == v54) : (v55 = 0), !v55 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) || sub_1000AC92C(*(a1 + v23[16]), *(a1 + v23[16] + 8), v52, v51))
    {
      v56 = *a1;
      v45 = *(a1 + 1);
      v47 = v62;
      (*(v12 + 16))(v62, v61, v11);
      type metadata accessor for TSDataSyncConfigSchedule(0);
      sub_100003790();
      *v49 = v56;
      goto LABEL_23;
    }

LABEL_20:
    v57 = type metadata accessor for TSDataSyncConfigSchedule(0);
    sub_100002728(v62, 1, 1, v57);
    return;
  }

  v30 = *(a1 + 5);
  v31 = a1[2];
  NSDecimal.init(_:)(v28, a1[3]);
  if ((v29 & 0x8000000000000000) == 0)
  {
    pow(_:_:)(v34, v32, v33);
    NSDecimal.init(_:)(v35, v31);
    sub_100007B28();
    static NSDecimal.+ infix(_:_:)();
    NSDecimal.init(_:)(v36, v30);
    sub_100007B28();
    static NSDecimal.* infix(_:_:)();
    NSDecimal._bridgeToObjectiveC()(v37);
    v39 = v38;
    [v38 doubleValue];

    Date.addingTimeInterval(_:)();
    v40 = v61;
    v41 = static Date.> infix(_:_:)();
    v42 = v60;
    if (v41)
    {
      v43 = *(v12 + 32);
      v43(v60, v16, v11);
    }

    else
    {
      (*(v12 + 8))(v16, v11);
      (*(v12 + 16))(v42, v40, v11);
      v43 = *(v12 + 32);
    }

    v58 = *a1;
    v45 = *(a1 + 1);
    v47 = v62;
    v43(v62, v42, v11);
    type metadata accessor for TSDataSyncConfigSchedule(0);
    sub_100003790();
    *v49 = v58;
    goto LABEL_23;
  }

  __break(1u);
}

BOOL sub_1000AC92C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  if (!a2 || !a4)
  {
    return result;
  }

  v9 = v77;
  v10 = 46;
  v11 = 0xE100000000000000;
  v78 = 46;
  v79 = 0xE100000000000000;
  __chkstk_darwin(0);
  v76 = &v78;

  v12 = sub_10011BF54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000ADC60, v75, a1, a2);
  v13 = v77;
  v78 = 46;
  v79 = 0xE100000000000000;
  __chkstk_darwin(v12);
  v76 = &v78;
  v14 = sub_10011BF54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000ADCD4, v75, a3, a4);
  if (v12[2])
  {
    v9 = v12[4];
    v10 = v12[5];
    v11 = v12[6];
    v13 = v12[7];
  }

  else
  {
    sub_1000068F4();
    sub_100006C70();
  }

  if (!((v10 ^ v9) >> 14))
  {

    goto LABEL_11;
  }

  v15 = sub_1000049E4();
  v20 = sub_1000AD748(v15, v16, v17, v18, v19);
  if ((v21 & 0x100) == 0)
  {
    v22 = v20;
    v23 = v21;

    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_27;
  }

  v24 = sub_1000049E4();
  v22 = sub_1000ACDA4(v24, v25, v26, v27, v28);
  v9 = v29;

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_1000ACC6C(v12);
  sub_100006C70();

  if (!v13)
  {
    sub_1000068F4();
    sub_100006C70();
  }

  if (!((v10 ^ v9) >> 14))
  {
    goto LABEL_11;
  }

  v30 = sub_1000049E4();
  v35 = sub_1000AD748(v30, v31, v32, v33, v34);
  if ((v36 & 0x100) != 0)
  {
    v39 = sub_1000049E4();
    v37 = sub_1000ACDA4(v39, v40, v41, v42, v43);
    v9 = v44;

    if (v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v37 = v35;
    v38 = v36;

    if (v38)
    {
      goto LABEL_27;
    }
  }

  if (v14[2])
  {
    v10 = v14[4];
    v11 = v14[5];
    v9 = v14[7];
  }

  else
  {
    sub_1000068F4();
    sub_10000658C();
  }

  if (!((v11 ^ v10) >> 14))
  {
    goto LABEL_11;
  }

  v45 = sub_100007EC4();
  v50 = sub_1000AD748(v45, v46, v47, v48, v49);
  if ((v51 & 0x100) == 0)
  {
    v52 = v50;
    v53 = v51;

    if ((v53 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_27:

    return 0;
  }

  v54 = sub_100007EC4();
  v52 = sub_1000ACDA4(v54, v55, v56, v57, v58);
  v10 = v59;

  if (v10)
  {
    goto LABEL_27;
  }

LABEL_30:
  sub_1000ACC6C(v14);
  sub_10000658C();

  if (!v9)
  {
    sub_1000068F4();
    sub_10000658C();
  }

  if (!((v11 ^ v10) >> 14))
  {
    goto LABEL_27;
  }

  v60 = sub_100007EC4();
  v65 = sub_1000AD748(v60, v61, v62, v63, v64);
  if ((v66 & 0x100) != 0)
  {
    v67 = sub_100007EC4();
    v65 = sub_1000ACDA4(v67, v68, v69, v70, v71);
  }

  v72 = v65;
  v73 = v66;

  if (v73)
  {
    return 0;
  }

  if (v52 < v22)
  {
    return 1;
  }

  return v22 >= v52 && v72 < v37;
}

uint64_t sub_1000ACC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

uint64_t sub_1000ACCD0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_1000ACD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000ACD3C(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *sub_1000ACDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1000ADC80();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000AD338(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000AD338(uint64_t a1, unint64_t a2)
{
  v2 = sub_1000AD3A4(sub_1000AD3A0, 0, a1, a2);
  v6 = sub_1000AD3D8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1000AD3D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1001AE0EC(v9, 0), v12 = sub_1000AD538(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000AD538(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_10009A610(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_10009A610(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000AD748(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1000AD824(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1000AD824(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_10009A610(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_10009A610(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_10009A610(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_1000ADC80()
{
  result = qword_1002DB068;
  if (!qword_1002DB068)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Substring, &type metadata for Substring, v0, v1);
    atomic_store(result, &qword_1002DB068);
  }

  return result;
}

void sub_1000ADD38(uint64_t a1)
{
  sub_1000A1F0C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1000A1EBC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000ADE54(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000ADF10(uint64_t a1)
{
  sub_1000ADF68();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1000ADF68()
{
  if (!qword_1002DB248)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DB248);
    }
  }
}

uint64_t sub_1000ADFB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496B736174 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000AE07C(char a1)
{
  if (a1)
  {
    return 0x44496B736174;
  }

  else
  {
    return 0x636E79537478656ELL;
  }
}

uint64_t sub_1000AE0B4(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TSDataSyncConfigSchedule(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000AE134(void *a1)
{
  v4 = sub_100099DF4(&qword_1002DB298, &qword_100231A58);
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000051B0();
  sub_10000C4FC(a1, a1[3]);
  sub_1000AEDEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_1000049FC();
  sub_1000AEDA4(v8, v9, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for TSDataSyncConfigSchedule(0);
    sub_1000AEE94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1000AE2E8(uint64_t a1)
{
  type metadata accessor for Date();
  sub_1000049FC();
  sub_1000AEDA4(v1, v2, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TSDataSyncConfigSchedule(0);

  return String.hash(into:)();
}

Swift::Int sub_1000AE378()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1000049FC();
  sub_1000AEDA4(v0, v1, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TSDataSyncConfigSchedule(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000AE40C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = type metadata accessor for Date();
  sub_100003724();
  v20 = v5;
  __chkstk_darwin(v6);
  sub_10000306C();
  sub_1000051B0();
  sub_100099DF4(&qword_1002DB280, &qword_100231A50);
  sub_100003724();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for TSDataSyncConfigSchedule(0);
  sub_10000307C();
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = v11 - v10;
  sub_10000C4FC(a1, a1[3]);
  sub_1000AEDEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004118(a1);
  }

  LOBYTE(v22) = 0;
  sub_1000049FC();
  sub_1000AEDA4(v13, v14, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 32))(v12, v3, v21);
  sub_1000AEE40();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = sub_1000037A0();
  v16(v15);
  v17 = (v12 + *(v8 + 20));
  *v17 = v22;
  v17[1] = v23;
  sub_1000AEEE8(v12, a2, type metadata accessor for TSDataSyncConfigSchedule);
  sub_100004118(a1);
  return sub_1000AEFB0(v12, type metadata accessor for TSDataSyncConfigSchedule);
}

uint64_t sub_1000AE724(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = type metadata accessor for TSDataSyncConfigScheduleAction(0);
  __chkstk_darwin(v12 - 8);
  sub_10000306C();
  sub_1000051B0();
  v13 = sub_100099DF4(&qword_1002DB2A8, &qword_100231A60);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v17 = *(v16 + 56);
  sub_1000AEEE8(a1, &v23 - v14, type metadata accessor for TSDataSyncConfigScheduleAction);
  sub_1000AEEE8(a2, &v15[v17], type metadata accessor for TSDataSyncConfigScheduleAction);
  sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  sub_1000075D8(v15);
  if (!v20)
  {
    sub_1000065A0();
    sub_1000AEEE8(v15, v2, v19);
    sub_1000075D8(&v15[v17]);
    if (!v20)
    {
      (*(v7 + 32))(v11, &v15[v17], v5);
      v18 = static Date.== infix(_:_:)();
      v21 = *(v7 + 8);
      v21(v11, v5);
      v21(v2, v5);
      sub_100007B44();
      return v18 & 1;
    }

    (*(v7 + 8))(v2, v5);
LABEL_9:
    sub_1000AEF48(v15);
    v18 = 0;
    return v18 & 1;
  }

  sub_1000075D8(&v15[v17]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_100007B44();
  v18 = 1;
  return v18 & 1;
}

void sub_1000AE970(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = type metadata accessor for TSDataSyncConfigScheduleAction(0);
  __chkstk_darwin(v10 - 8);
  sub_10000306C();
  sub_1000051B0();
  sub_1000065A0();
  sub_1000AEEE8(v1, v2, v11);
  v12 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  if (sub_100004DFC(v2, 1, v12) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v9, v2, v3);
    Hasher._combine(_:)(1uLL);
    sub_1000049FC();
    sub_1000AEDA4(v13, v14, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v9, v3);
  }
}

Swift::Int sub_1000AEB04()
{
  Hasher.init(_seed:)();
  sub_1000AE970(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000AEB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000ADFB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000AEB74(uint64_t a1)
{
  v2 = sub_1000AEDEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AEBB0(uint64_t a1)
{
  v2 = sub_1000AEDEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000AEBF4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1000AEDA4(&qword_1002DAC90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000AECD4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000AE970(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000AEDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1000AEDEC()
{
  result = qword_1002DB288;
  if (!qword_1002DB288)
  {
    result = swift_getWitnessTable(byte_100231B2C, &type metadata for TSDataSyncConfigSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB288);
  }

  return result;
}

unint64_t sub_1000AEE40()
{
  result = qword_1002DB290;
  if (!qword_1002DB290)
  {
    result = swift_getWitnessTable(aE_7, &unk_1002BC148, v0, v1);
    atomic_store(result, &qword_1002DB290);
  }

  return result;
}

unint64_t sub_1000AEE94()
{
  result = qword_1002DB2A0;
  if (!qword_1002DB2A0)
  {
    result = swift_getWitnessTable(asc_10024061C, &unk_1002BC148, v0, v1);
    atomic_store(result, &qword_1002DB2A0);
  }

  return result;
}

uint64_t sub_1000AEEE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000AEF48(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DB2A8, &qword_100231A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AEFB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncConfigSchedule.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000AF0E8()
{
  result = qword_1002DB2B0;
  if (!qword_1002DB2B0)
  {
    result = swift_getWitnessTable(byte_100231B04, &type metadata for TSDataSyncConfigSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB2B0);
  }

  return result;
}

unint64_t sub_1000AF140()
{
  result = qword_1002DB2B8;
  if (!qword_1002DB2B8)
  {
    result = swift_getWitnessTable(asc_100231A74, &type metadata for TSDataSyncConfigSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB2B8);
  }

  return result;
}

unint64_t sub_1000AF198()
{
  result = qword_1002DB2C0;
  if (!qword_1002DB2C0)
  {
    result = swift_getWitnessTable(aE_8, &type metadata for TSDataSyncConfigSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB2C0);
  }

  return result;
}

void sub_1000AF1EC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v247 = a4;
  v256 = a3;
  v249 = a2;
  v234 = a5;
  v8 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_10000307C();
  __chkstk_darwin(v9);
  sub_10000308C();
  sub_1000B31C8();
  __chkstk_darwin(v10);
  sub_10000DE68();
  __chkstk_darwin(v11);
  sub_100002DD0();
  v243 = v12;
  sub_100005238();
  __chkstk_darwin(v13);
  sub_100002DD0();
  v244 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  sub_100002DD0();
  v232 = v16;
  sub_100005238();
  __chkstk_darwin(v17);
  sub_10000D478();
  v233 = v18;
  v19 = sub_100099DF4(&qword_1002DB2E8, &qword_100231B98);
  v20 = sub_1000030B8(v19);
  __chkstk_darwin(v20);
  v22 = &v230 - v21;
  v23 = type metadata accessor for HTTPHelpers.Errors();
  sub_100003724();
  v257 = v24;
  __chkstk_darwin(v25);
  sub_10000308C();
  v254 = v26 - v27;
  sub_100005238();
  __chkstk_darwin(v28);
  sub_10000D478();
  v30 = v29;
  v31 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v32 = sub_1000030B8(v31);
  __chkstk_darwin(v32);
  sub_10000308C();
  v255 = (v33 - v34);
  sub_100005238();
  __chkstk_darwin(v35);
  v253 = v8[6];
  v248 = &v230 - v36;
  sub_10003D178(v249 + v253, &v230 - v36, &qword_1002DA970, &qword_1002318B0);
  *&v281[0] = a1;
  v245 = a1;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if (swift_dynamicCast())
  {
    sub_100004E24(v248, &qword_1002DA970, &qword_1002318B0);
    sub_10000B7B0();
    sub_100002728(v37, v38, v39, v23);
    v40 = v257;
    v41 = *(v257 + 32);
    v41(v30, v22, v23);
    v42 = v254;
    v41(v254, v30, v23);
    if ((*(v40 + 88))(v42, v23) == enum case for HTTPHelpers.Errors.httpStatus429(_:))
    {
      (*(v257 + 96))(v42, v23);
      v43 = type metadata accessor for Date();
      sub_10000307C();
      v45 = v248;
      (*(v44 + 32))(v248, v42, v43);
      sub_10000B7B0();
      sub_100002728(v46, v47, v48, v43);
      v49 = v249;
    }

    else
    {
      v45 = v248;
      v49 = v249;
      sub_10003D178(v249 + v253, v248, &qword_1002DA970, &qword_1002318B0);
      (*(v257 + 8))(v42, v23);
    }
  }

  else
  {
    sub_100007B78();
    sub_100002728(v50, v51, v52, v23);
    sub_100004E24(v22, &qword_1002DB2E8, &qword_100231B98);
    v45 = v248;
    v49 = v249;
  }

  v53 = v247;
  v251 = *(v49 + v8[17]);

  if (static HTTPHelpers.isAuthError(error:)())
  {
    v54 = type metadata accessor for Date();
    sub_10000307C();
    v56 = v255;
    (*(v55 + 16))(v255, v53, v54);
    sub_10000B7B0();
    sub_100002728(v57, v58, v59, v54);
    v231 = sub_1000B1018(v251, v256, v56);
    sub_100004E24(v56, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
  }

  v60 = v49[1];
  v253 = *v49;
  v256 = v49[2];
  v257 = v60;
  v242 = v8[6];
  sub_10003D178(v45, v6 + v242, &qword_1002DA970, &qword_1002318B0);
  v61 = v8[7];
  v252 = type metadata accessor for Date();
  sub_10000307C();
  v63 = *(v62 + 16);
  v254 = v62 + 16;
  v255 = v63;
  (v63)(v6 + v61, v49 + v61);
  v239 = v8[8];
  sub_10003D178(v49 + v239, v6 + v239, &qword_1002DA970, &qword_1002318B0);
  v238 = v8[9];
  sub_10003D178(v49 + v238, v6 + v238, &qword_1002DA970, &qword_1002318B0);
  v64 = v8[11];
  v246 = *(v49 + v8[10]);
  v65 = v246;
  v66 = *(v49 + v64);
  v67 = v8[13];
  v250 = *(v49 + v8[12]);
  v68 = v250;
  v69 = *(v49 + v67);
  v70 = v8[14];
  v237 = v8[15];
  v71 = *(v49 + v70);
  sub_10003D178(v49 + v237, v6 + v237, &qword_1002DA970, &qword_1002318B0);
  sub_10003D178(v49 + v8[16], v6 + v8[16], &qword_1002DA970, &qword_1002318B0);
  v72 = (v49 + v8[18]);
  v73 = v72[1];
  v74 = v72[3];
  v259 = v72[2];
  v75 = v259;
  v260 = v74;
  v76 = *v72;
  v77 = v72[1];
  v78 = v256;
  v79 = v257;
  *v6 = v253;
  v6[1] = v79;
  v6[2] = v78;
  *(v6 + v8[10]) = v65;
  *(v6 + v8[11]) = v66;
  *(v6 + v8[12]) = v68;
  *(v6 + v8[13]) = v69;
  *(v6 + v8[14]) = v71;
  v80 = *v72;
  v258[0] = v76;
  v258[1] = v77;
  v81 = v251;
  *(v6 + v8[17]) = v251;
  v82 = (v6 + v8[18]);
  *v82 = v80;
  v82[1] = v73;
  v83 = v72[3];
  v82[2] = v75;
  v82[3] = v83;
  v240 = v8[6];
  v84 = sub_100005260();
  sub_10003D178(v84, v85, v86, &qword_1002318B0);
  v241 = v8[7];
  (v255)(v241 + v5, v247, v252);
  v87 = sub_100005260();
  sub_10003D178(v87, v88, v89, &qword_1002318B0);
  v239 = v8[9];
  v90 = sub_100005260();
  sub_10003D178(v90, v91, v92, &qword_1002318B0);
  v238 = v8[15];
  v93 = sub_100005260();
  sub_10003D178(v93, v94, v95, &qword_1002318B0);
  v237 = v8[16];
  sub_10000AF34();
  sub_10003D178(v96, v97, v98, v99);
  v100 = v82[1];
  v261 = *v82;
  v262 = v100;
  v101 = v82[3];
  v263 = v82[2];
  v264 = v101;
  v102 = v256;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v103 = v253;
  swift_bridgeObjectRetain_n();
  sub_10003D178(v258, v281, &qword_1002DB2E0, &unk_10023F030);
  sub_10003D178(&v261, v281, &qword_1002DB2E0, &unk_10023F030);
  sub_100007EDC();
  v247 = v104;
  sub_1000B310C(v6, v105);
  v106 = v257;
  *v5 = v103;
  v5[1] = v106;
  v5[2] = v102;
  v107 = v246;
  *(v5 + v8[10]) = v246;
  *(v5 + v8[11]) = v66;
  v108 = v250;
  *(v5 + v8[12]) = v250;
  sub_1000B31D8();
  *(v5 + v109) = v81;
  v110 = (v5 + v8[18]);
  v111 = v262;
  *v110 = v261;
  v110[1] = v111;
  v112 = v264;
  v110[2] = v263;
  v110[3] = v112;
  v242 = v8[8];
  v113 = v243;
  sub_100007B78();
  v114 = v252;
  sub_100002728(v115, v116, v117, v252);
  v235 = v8[6];
  sub_10003D178(v5 + v240, v113 + v235, &qword_1002DA970, &qword_1002318B0);
  v236 = v8[7];
  (v255)(v113 + v236, v241 + v5, v114);
  sub_10003D178(v5 + v239, v113 + v8[9], &qword_1002DA970, &qword_1002318B0);
  v240 = v8[15];
  sub_100005C38(v238);
  v241 = v8[16];
  sub_100005C38(v237);
  v118 = v110[1];
  v265 = *v110;
  v266 = v118;
  v119 = v110[3];
  v267 = v110[2];
  v268 = v119;
  v120 = v251;

  v121 = v253;

  v122 = v256;

  sub_10003D178(&v265, v281, &qword_1002DB2E0, &unk_10023F030);
  sub_1000B310C(v5, v247);
  v123 = v121;
  v124 = v257;
  *v113 = v121;
  v113[1] = v124;
  v113[2] = v122;
  *(v113 + v8[10]) = v107;
  *(v113 + v8[11]) = v66;
  *(v113 + v8[12]) = v108;
  *(v113 + v8[13]) = v69;
  *(v113 + v8[14]) = v71;
  *(v113 + v8[17]) = v120;
  v125 = (v113 + v8[18]);
  v126 = v266;
  *v125 = v265;
  v125[1] = v126;
  v127 = v268;
  v125[2] = v267;
  v125[3] = v127;
  v128 = v244;
  v237 = v244 + v8[9];
  sub_100007B78();
  sub_100002728(v129, v130, v131, v114);
  v239 = v128 + v8[6];
  sub_10003D178(v113 + v235, v239, &qword_1002DA970, &qword_1002318B0);
  v238 = v128 + v8[7];
  v255();
  v236 = v128 + v8[8];
  sub_10003D178(v113 + v242, v236, &qword_1002DA970, &qword_1002318B0);
  v242 = v128 + v8[15];
  sub_10003D178(v113 + v240, v242, &qword_1002DA970, &qword_1002318B0);
  v132 = v241 + v113;
  v241 = (v128 + v8[16]);
  sub_10003D178(v132, v241, &qword_1002DA970, &qword_1002318B0);
  v133 = v125[1];
  v269 = *v125;
  v270 = v133;
  v134 = v125[3];
  v271 = v125[2];
  v272 = v134;

  v135 = v256;

  sub_10003D178(&v269, v281, &qword_1002DB2E0, &unk_10023F030);
  sub_1000B310C(v113, v247);
  v136 = v257;
  *v128 = v123;
  v128[1] = v136;
  v128[2] = v135;
  *(v128 + v8[10]) = v246;
  *(v128 + v8[11]) = v66;
  *(v128 + v8[12]) = v250;
  sub_100013F94();
  *(v128 + v137) = v120;
  v138 = (v128 + v8[18]);
  v139 = v270;
  *v138 = v269;
  v138[1] = v139;
  v140 = v272;
  v138[2] = v271;
  v138[3] = v140;
  v142 = v141 + 1;
  if (v141 == -1)
  {
    __break(1u);
  }

  else
  {
    v243 = v8[6];
    v143 = v232;
    sub_100007B6C();
    v235 = v142;
    sub_10003D178(v144, v145, v146, v147);
    v246 = v8[7];
    (v255)(v143 + v246, v238, v252);
    v240 = v8[8];
    sub_100007B6C();
    sub_10003D178(v148, v149, v150, v151);
    v239 = v8[9];
    sub_100007B6C();
    sub_10003D178(v152, v153, v154, v155);
    v238 = v8[15];
    sub_100007B6C();
    sub_10003D178(v156, v157, v158, v159);
    v237 = v8[16];
    sub_100007B6C();
    sub_10003D178(v160, v161, v162, v163);
    v164 = v138[1];
    v273 = *v138;
    v274 = v164;
    v165 = v138[3];
    v275 = v138[2];
    v276 = v165;
    v166 = v253;

    v167 = v256;

    sub_10003D178(&v273, v281, &qword_1002DB2E0, &unk_10023F030);
    v241 = type metadata accessor for TSDataSyncDeviceState;
    sub_1000B310C(v128, type metadata accessor for TSDataSyncDeviceState);
    v168 = v257;
    *v143 = v166;
    v143[1] = v168;
    v143[2] = v167;
    *(v143 + v8[10]) = v142;
    *(v143 + v8[11]) = v66;
    *(v143 + v8[12]) = v250;
    sub_1000B31D8();
    *(v143 + v169) = v170;
    v171 = (v143 + v8[18]);
    v172 = v274;
    *v171 = v273;
    v171[1] = v172;
    v173 = v276;
    v171[2] = v275;
    v171[3] = v173;
    v247 = v8[6];
    v174 = v233;
    sub_100007B6C();
    sub_10003D178(v175, v176, v177, v178);
    v251 = v8[7];
    (v255)(v174 + v251, v143 + v246, v252);
    v246 = v8[8];
    sub_100007B6C();
    sub_10003D178(v179, v180, v181, v182);
    v244 = v8[9];
    sub_100007B6C();
    sub_10003D178(v183, v184, v185, v186);
    v243 = v8[15];
    sub_100007B6C();
    sub_10003D178(v187, v188, v189, v190);
    v242 = v8[16];
    sub_100007B6C();
    sub_10003D178(v191, v192, v193, v194);
    v195 = v171[1];
    v277 = *v171;
    v278 = v195;
    v196 = v171[3];
    v279 = v171[2];
    v280 = v196;
    v197 = v253;

    sub_10003D178(&v277, v281, &qword_1002DB2E0, &unk_10023F030);
    sub_1000B310C(v143, type metadata accessor for TSDataSyncDeviceState);
    v198 = v257;
    *v174 = v197;
    v174[1] = v198;
    v174[2] = v167;
    v199 = v235;
    *(v174 + v8[10]) = v235;
    *(v174 + v8[11]) = v66;
    v200 = v250;
    *(v174 + v8[12]) = v250;
    sub_100013F94();
    v201 = v231;
    *(v174 + v202) = v231;
    v203 = (v174 + v8[18]);
    v204 = v278;
    *v203 = v277;
    v203[1] = v204;
    v205 = v280;
    v203[2] = v279;
    v203[3] = v205;

    sub_1000B1590(v245, v249, v281);
    sub_100004E24(v248, &qword_1002DA970, &qword_1002318B0);
    v206 = v234;
    sub_100007B6C();
    sub_10003D178(v207, v208, v209, v210);
    (v255)(v206 + v8[7], v174 + v251, v252);
    sub_100007B6C();
    sub_10003D178(v211, v212, v213, v214);
    sub_100007B6C();
    sub_10003D178(v215, v216, v217, v218);
    sub_100007B6C();
    sub_10003D178(v219, v220, v221, v222);
    sub_100007B6C();
    sub_10003D178(v223, v224, v225, v226);
    sub_1000B310C(v174, v241);
    *v206 = v253;
    v206[1] = v198;
    v206[2] = v256;
    *(v206 + v8[10]) = v199;
    *(v206 + v8[11]) = v66;
    *(v206 + v8[12]) = v200;
    *(v206 + v8[13]) = v69;
    *(v206 + v8[14]) = v71;
    *(v206 + v8[17]) = v201;
    v227 = (v206 + v8[18]);
    v228 = v281[1];
    *v227 = v281[0];
    v227[1] = v228;
    v229 = v281[3];
    v227[2] = v281[2];
    v227[3] = v229;
  }
}

uint64_t sub_1000B0098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v252 = a1;
  v253 = a3;
  v251 = a2;
  v243 = a4;
  v6 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_10000307C();
  __chkstk_darwin(v7);
  sub_10000308C();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  sub_100002DD0();
  v241 = v12;
  sub_100005238();
  __chkstk_darwin(v13);
  sub_100002DD0();
  v242 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  v17 = v219 - v16;
  __chkstk_darwin(v18);
  v20 = v219 - v19;
  __chkstk_darwin(v21);
  sub_10000DE68();
  __chkstk_darwin(v22);
  sub_1000B31C8();
  __chkstk_darwin(v23);
  v25 = v219 - v24;
  __chkstk_darwin(v26);
  v28 = v219 - v27;
  v250 = type metadata accessor for TSDataSyncServerConfigModel(0);
  sub_10000307C();
  __chkstk_darwin(v29);
  sub_10000306C();
  v254 = (v31 - v30);
  v32 = v255;
  result = sub_1000B1B70(v252);
  if (!v32)
  {
    v226 = v17;
    v227 = v20;
    v228 = v4;
    v229 = v5;
    v230 = v25;
    v238 = v28;
    v239 = 0;
    v34 = v251;
    sub_1000B1590(0, v251, v294);
    v35 = v254;
    v36 = (v254 + *(v250 + 44));
    v37 = v36[1];
    v237 = *v36;
    v38 = v296;
    v39 = v298;
    v234 = v297;
    v235 = v295;
    v231 = v300;
    v232 = v299;

    v236 = v37;

    v233 = v39;

    result = sub_1000B2E50(v294);
    v40 = 0;
    v293 = v38;
    v255 = *v35;
    if (!*(v255 + 16) && (v41 = *(v34 + v6[10]), v40 = v41 + 1, v41 == -1))
    {
      __break(1u);
    }

    else
    {
      v240 = v40;
      v42 = *(v34 + 16);
      v246 = *(v34 + 8);
      v247 = v42;
      v225 = v6[6];
      sub_10000AF34();
      v43 = v34;
      sub_10003D178(v44, v45, v46, v47);
      v48 = v6[7];
      v252 = type metadata accessor for Date();
      sub_10000307C();
      v249 = *(v49 + 16);
      v253 = v49 + 16;
      v224 = v48;
      v249(&v10[v48], v34 + v48);
      v223 = v6[8];
      sub_10000AF34();
      sub_10003D178(v50, v51, v52, v53);
      v222 = v6[9];
      sub_10000AF34();
      sub_10003D178(v54, v55, v56, v57);
      v58 = v6[11];
      v59 = *(v34 + v6[10]);
      v244 = v59;
      v60 = *(v43 + v58);
      v61 = v6[13];
      v248 = *(v43 + v6[12]);
      v62 = v248;
      v63 = *(v43 + v61);
      v64 = v6[14];
      v221 = v6[15];
      v65 = *(v43 + v64);
      sub_10000AF34();
      sub_10003D178(v66, v67, v68, v69);
      sub_10003D178(v43 + v6[16], &v10[v6[16]], &qword_1002DA970, &qword_1002318B0);
      v70 = v6[17];
      v71 = (v43 + v6[18]);
      v72 = v71[1];
      v73 = v71[3];
      v259 = v71[2];
      v74 = v259;
      v260 = v73;
      v75 = v71[1];
      v257 = *v71;
      v76 = v257;
      v258 = v75;
      v77 = *(v43 + v70);
      v78 = v246;
      *v10 = v255;
      *(v10 + 1) = v78;
      *(v10 + 2) = v247;
      *&v10[v6[10]] = v59;
      *&v10[v6[11]] = v60;
      *&v10[v6[12]] = v62;
      *&v10[v6[13]] = v63;
      *&v10[v6[14]] = v65;
      *&v10[v6[17]] = v77;
      v79 = v77;
      v80 = &v10[v6[18]];
      *v80 = v76;
      v80[1] = v72;
      v81 = v71[3];
      v80[2] = v74;
      v80[3] = v81;
      v82 = v254[2];
      v245 = v254[1];
      v246 = v82;
      v83 = v241;
      sub_1000037B4();
      sub_10003D178(v84, v85, v86, v87);
      v225 = v6[7];
      (v249)(v83 + v225, &v10[v224], v252);
      v224 = v6[8];
      sub_1000037B4();
      sub_10003D178(v88, v89, v90, v91);
      v223 = v6[9];
      sub_1000037B4();
      sub_10003D178(v92, v93, v94, v95);
      v222 = v6[15];
      sub_1000037B4();
      sub_10003D178(v96, v97, v98, v99);
      v221 = v6[16];
      sub_1000037B4();
      sub_10003D178(v100, v101, v102, v103);
      v104 = v80[1];
      v261 = *v80;
      v262 = v104;
      v105 = v80[3];
      v263 = v80[2];
      v264 = v105;

      v106 = v255;
      swift_bridgeObjectRetain_n();
      v107 = v79;
      v251 = v79;
      swift_bridgeObjectRetain_n();
      sub_100007B6C();
      sub_10003D178(v108, v109, v110, v111);
      v112 = v246;

      sub_100007B6C();
      sub_10003D178(v113, v114, v115, v116);
      sub_100007EDC();
      v247 = v117;
      sub_1000B310C(v10, v118);
      v119 = v245;
      *v83 = v106;
      v83[1] = v119;
      v83[2] = v112;
      *(v83 + v6[10]) = v244;
      *(v83 + v6[11]) = v60;
      *(v83 + v6[12]) = v248;
      *(v83 + v6[13]) = v63;
      *(v83 + v6[14]) = v65;
      *(v83 + v6[17]) = v107;
      v120 = (v83 + v6[18]);
      v121 = v262;
      *v120 = v261;
      v120[1] = v121;
      v122 = v264;
      v120[2] = v263;
      v120[3] = v122;
      v123 = *(v250 + 24);
      v220 = v6[6];
      v124 = v242;
      sub_10003D178(v254 + v123, v242 + v220, &qword_1002DA970, &qword_1002318B0);
      (v249)(v124 + v6[7], v83 + v225, v252);
      v225 = v6[8];
      sub_1000075F8(v224);
      v219[1] = v6[9];
      sub_1000075F8(v223);
      v223 = v6[15];
      sub_1000075F8(v222);
      v222 = v6[16];
      sub_1000075F8(v221);
      v125 = v120[1];
      v265 = *v120;
      v266 = v125;
      v126 = v120[3];
      v267 = v120[2];
      v268 = v126;
      v127 = v246;
      swift_bridgeObjectRetain_n();
      v128 = v255;

      sub_10003D178(&v265, &v289, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v83, v247);
      *v124 = v128;
      v124[1] = v119;
      v124[2] = v127;
      v129 = v127;
      sub_1000B31FC(v6[10]);
      *(v124 + v130) = v248;
      sub_10000EDA8();
      v132 = (v124 + v131);
      v133 = v266;
      *v132 = v265;
      v132[1] = v133;
      v134 = v268;
      v132[2] = v267;
      v132[3] = v134;
      v135 = *(v250 + 28);
      v241 = v6[6];
      v136 = v226;
      sub_10003D178(v124 + v220, &v226[v241], &qword_1002DA970, &qword_1002318B0);
      v224 = v6[7];
      v137 = v254 + v135;
      v138 = v249;
      (v249)(&v136[v224], v137, v252);
      sub_10000BF7C(v6[8]);
      v221 = v6[9];
      sub_10000BF7C(v221);
      v220 = v6[15];
      sub_10000BF7C(v220);
      v223 = v6[16];
      sub_10000BF7C(v223);
      v139 = v132[1];
      v269 = *v132;
      v270 = v139;
      v140 = v132[3];
      v271 = v132[2];
      v272 = v140;
      v141 = v255;

      v142 = v251;

      sub_10003D178(&v269, &v289, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v124, v247);
      v143 = v245;
      *v136 = v141;
      *(v136 + 1) = v143;
      *(v136 + 2) = v129;
      sub_100007204();
      *&v136[v144] = v142;
      v145 = &v136[v6[18]];
      v146 = v270;
      *v145 = v269;
      v145[1] = v146;
      v147 = v272;
      v145[2] = v271;
      v145[3] = v147;
      v148 = *(v250 + 32);
      v225 = v6[6];
      v149 = v227;
      sub_10003D178(&v136[v241], &v227[v225], &qword_1002DA970, &qword_1002318B0);
      v241 = v6[7];
      v138(&v149[v241], &v136[v224], v252);
      v224 = v6[8];
      sub_10003D178(v254 + v148, &v149[v224], &qword_1002DA970, &qword_1002318B0);
      sub_100008D34(v6[9]);
      v222 = v6[15];
      sub_100008D34(v222);
      v221 = v6[16];
      sub_100008D34(v221);
      v150 = v145[1];
      v273 = *v145;
      v274 = v150;
      v151 = v145[3];
      v275 = v145[2];
      v276 = v151;
      v152 = v255;

      v153 = v251;

      v154 = v246;

      sub_10003D178(&v273, &v289, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v136, v247);
      v156 = v244;
      v155 = v245;
      *v149 = v152;
      *(v149 + 1) = v155;
      *(v149 + 2) = v154;
      *&v149[v6[10]] = v156;
      sub_10000A4A4();
      *&v149[v157] = v153;
      v158 = &v149[v6[18]];
      v159 = v274;
      *v158 = v273;
      v158[1] = v159;
      v160 = v276;
      v158[2] = v275;
      v158[3] = v160;
      v242 = v6[9];
      v161 = v228;
      sub_100007B78();
      v162 = v252;
      sub_100002728(v163, v164, v165, v252);
      v220 = v6[6];
      sub_10003D178(&v149[v225], &v161[v220], &qword_1002DA970, &qword_1002318B0);
      v226 = v6[7];
      v166 = v249;
      (v249)(&v226[v161], &v149[v241], v162);
      v225 = v6[8];
      sub_10003D178(&v149[v224], &v161[v225], &qword_1002DA970, &qword_1002318B0);
      v224 = v6[15];
      sub_100010D2C(v224);
      v223 = v6[16];
      sub_100010D2C(v223);
      v167 = v158[1];
      v277 = *v158;
      v278 = v167;
      v168 = v158[3];
      v279 = v158[2];
      v280 = v168;
      v169 = v255;

      v170 = v251;

      v171 = v246;

      sub_10003D178(&v277, &v289, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v149, v247);
      v172 = v245;
      *v161 = v169;
      *(v161 + 1) = v172;
      *(v161 + 2) = v171;
      v173 = v171;
      sub_100007204();
      *&v161[v174] = v170;
      v175 = &v161[v6[18]];
      v176 = v278;
      *v175 = v277;
      v175[1] = v176;
      v177 = v280;
      v175[2] = v279;
      v175[3] = v177;
      v241 = v6[6];
      v178 = v229;
      sub_10003D178(&v161[v220], v229 + v241, &qword_1002DA970, &qword_1002318B0);
      v244 = v6[7];
      v166(&v178[v244], &v226[v161], v252);
      v227 = v6[8];
      sub_100013C08(v227);
      v226 = v6[9];
      sub_10003D178(&v161[v242], &v226[v178], &qword_1002DA970, &qword_1002318B0);
      v225 = v6[15];
      sub_100013C08(v225);
      v224 = v6[16];
      sub_100013C08(v224);
      v179 = v175[1];
      v281 = *v175;
      v282 = v179;
      v180 = v175[3];
      v283 = v175[2];
      v284 = v180;
      v181 = v255;

      v182 = v251;

      sub_10003D178(&v281, &v289, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v161, v247);
      v183 = v245;
      *v178 = v181;
      *(v178 + 1) = v183;
      *(v178 + 2) = v173;
      v184 = v240;
      *&v178[v6[10]] = v240;
      sub_10000A4A4();
      *&v178[v185] = v182;
      v186 = &v178[v6[18]];
      v187 = v282;
      *v186 = v281;
      v186[1] = v187;
      v188 = v284;
      v186[2] = v283;
      v186[3] = v188;
      v189 = *(v254 + *(v250 + 36));
      v228 = v6[6];
      v190 = v230;
      sub_10003D178(&v178[v241], &v228[v230], &qword_1002DA970, &qword_1002318B0);
      v242 = v6[7];
      (v249)(v190 + v242, &v178[v244], v252);
      v244 = v6[8];
      sub_10000AA6C(v244);
      v241 = v6[9];
      sub_10000AA6C(v241);
      v227 = v6[15];
      sub_10000AA6C(v227);
      v226 = v6[16];
      sub_10000AA6C(v226);
      v191 = v186[1];
      v285 = *v186;
      v286 = v191;
      v192 = v186[3];
      v287 = v186[2];
      v288 = v192;
      v193 = v255;

      v194 = v251;

      v195 = v246;

      sub_10003D178(&v285, &v289, &qword_1002DB2E0, &unk_10023F030);
      v196 = v178;
      v197 = v247;
      sub_1000B310C(v196, v247);
      *v190 = v193;
      v190[1] = v183;
      v190[2] = v195;
      *(v190 + v6[10]) = v184;
      *(v190 + v6[11]) = v189;
      *(v190 + v6[12]) = v248;
      *(v190 + v6[13]) = v63;
      *(v190 + v6[14]) = v65;
      *(v190 + v6[17]) = v194;
      v198 = (v190 + v6[18]);
      v199 = v286;
      *v198 = v285;
      v198[1] = v199;
      v200 = v288;
      v198[2] = v287;
      v198[3] = v200;
      v225 = *(v254 + *(v250 + 40));
      v248 = v6[6];
      v201 = v238;
      sub_10003D178(&v228[v190], v238 + v248, &qword_1002DA970, &qword_1002318B0);
      v250 = v6[7];
      (v249)(v201 + v250, v190 + v242, v252);
      v242 = v6[8];
      sub_100003B58(v242);
      v244 = v6[9];
      sub_100003B58(v244);
      v241 = v6[15];
      sub_100003B58(v241);
      v229 = v6[16];
      sub_100003B58(v229);
      v202 = v198[1];
      v289 = *v198;
      v290 = v202;
      v203 = v198[3];
      v291 = v198[2];
      v292 = v203;
      v204 = v255;

      v205 = v246;

      sub_10003D178(&v289, &v256, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v190, v197);
      *v201 = v204;
      v206 = v245;
      v201[1] = v245;
      v201[2] = v205;
      v207 = v240;
      sub_1000B31FC(v6[10]);
      v208 = v225;
      *(v201 + v209) = v225;
      sub_10000EDA8();
      v211 = (v201 + v210);
      v212 = v290;
      *v211 = v289;
      v211[1] = v212;
      v213 = v292;
      v211[2] = v291;
      v211[3] = v213;
      LODWORD(v230) = v293;
      v214 = v243;
      sub_10003D178(v201 + v248, v243 + v6[6], &qword_1002DA970, &qword_1002318B0);
      (v249)(v214 + v6[7], v201 + v250, v252);
      sub_100008260(v6[8]);
      sub_100008260(v6[9]);
      sub_100008260(v6[15]);
      sub_100008260(v6[16]);
      sub_1000B310C(v201, v247);
      *v214 = v255;
      v214[1] = v206;
      v214[2] = v246;
      *(v214 + v6[10]) = v207;
      *(v214 + v6[11]) = v189;
      *(v214 + v6[12]) = v208;
      *(v214 + v6[13]) = v63;
      *(v214 + v6[14]) = v65;
      *(v214 + v6[17]) = v251;
      v215 = v214 + v6[18];
      v216 = v236;
      *v215 = v237;
      *(v215 + 1) = v216;
      *(v215 + 2) = v235;
      v215[24] = v230;
      v217 = v233;
      *(v215 + 4) = v234;
      *(v215 + 5) = v217;
      v218 = v231;
      *(v215 + 6) = v232;
      *(v215 + 7) = v218;
      return sub_1000B310C(v254, type metadata accessor for TSDataSyncServerConfigModel);
    }
  }

  return result;
}

uint64_t sub_1000B1018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v6 = type metadata accessor for Date();
  sub_100003724();
  v62 = v7;
  __chkstk_darwin(v8);
  sub_10000308C();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v16 = sub_1000030B8(v15);
  __chkstk_darwin(v16);
  sub_10000308C();
  sub_1000B31C8();
  __chkstk_darwin(v17);
  sub_100002DD0();
  v61 = v18;
  sub_100005238();
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  v22 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_10000306C();
  v28 = v27 - v26;
  if (a1)
  {
    (*(v24 + 16))(v28, a2, v22);
    sub_10003D178(v63, v21, &qword_1002DA970, &qword_1002318B0);
    v29 = v6;
    if (sub_100004DFC(v21, 1, v6) == 1)
    {

      sub_100004E24(v21, &qword_1002DA970, &qword_1002318B0);
      v30 = sub_10000DA08();
      if (v31)
      {
        v32 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = a1;
        v34 = *(a1 + 24);
        sub_100099DF4(&qword_1002DB2D8, &qword_100231B90);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34);
        a1 = v64;
        v35 = *(v24 + 8);
        v35(*(v64 + 48) + *(v24 + 72) * v32, v22);
        v36 = v61;
        (*(v62 + 32))(v61, *(a1 + 56) + *(v62 + 72) * v32, v29);
        sub_1000030C4();
        sub_10000DA94(v37, v38, &protocol conformance descriptor for AccountIdentity);
        sub_1000B31F0();
        _NativeDictionary._delete(at:)();
        sub_10000B7B0();
        sub_100002728(v39, v40, v41, v29);
      }

      else
      {
        v36 = v61;
        sub_100007B78();
        sub_100002728(v57, v58, v59, v6);
        v35 = *(v24 + 8);
      }

      v35(v28, v22);
      sub_100004E24(v36, &qword_1002DA970, &qword_1002318B0);
    }

    else
    {
      (*(v62 + 32))(v14, v21, v6);

      v43 = swift_isUniquelyReferenced_nonNull_native();
      sub_10014F748(v14, v28, v43, v44, v45, v46, v47, v48, v61, v62, v63, a1);
      a1 = v64;
      (*(v24 + 8))(v28, v22);
    }
  }

  else
  {
    v42 = a2;
    sub_10003D178(v63, v3, &qword_1002DA970, &qword_1002318B0);
    if (sub_100004DFC(v3, 1, v6) == 1)
    {
      sub_100004E24(v3, &qword_1002DA970, &qword_1002318B0);
      return 0;
    }

    else
    {
      v49 = v62;
      (*(v62 + 32))(v11, v3, v6);
      sub_100099DF4(&qword_1002DB2C8, &qword_100231B80);
      v50 = (sub_100099DF4(&qword_1002DB2D0, &qword_100231B88) - 8);
      v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_10022E400;
      v53 = v52 + v51;
      v54 = v50[14];
      (*(v24 + 16))(v53, v42, v22);
      (*(v49 + 16))(v53 + v54, v11, v6);
      sub_1000030C4();
      sub_10000DA94(v55, v56, &protocol conformance descriptor for AccountIdentity);
      a1 = Dictionary.init(dictionaryLiteral:)();
      (*(v49 + 8))(v11, v6);
    }
  }

  return a1;
}

void sub_1000B1590(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    *&v30 = a1;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_1000B2EA4();
    if (swift_dynamicCast())
    {
      v5 = v26[0];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = (a2 + *(type metadata accessor for TSDataSyncDeviceState(0) + 72));
  v7 = v6[1];
  v30 = *v6;
  v31 = v7;
  v8 = v6[3];
  v32 = v6[2];
  v33 = v8;
  v9 = *(&v30 + 1);
  if (*(&v30 + 1) == 1)
  {
    v10 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0uLL;
    v13 = 1;
    v14 = 0uLL;
  }

  else
  {
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v14 = v33;
    v13 = BYTE8(v31);
  }

  v26[0] = v10;
  v26[1] = v9;
  v26[2] = v11;
  v27 = v13 & 1;
  v28 = v12;
  v29 = v14;
  sub_10003D178(&v30, v25, &qword_1002DB2E0, &unk_10023F030);
  if (v5)
  {
    v15 = [v5 code];

    sub_1000B2E50(v26);
    v16 = [v5 domain];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = v5;
  }

  else
  {

    sub_1000B2E50(v26);
    v20 = 0;
    v17 = 0;
    v19 = 0;
    v15 = 0;
  }

  v21 = v5 == 0;
  v22 = static HTTPHelpers.statusCodeString(error:)();
  v24 = v23;

  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = v15;
  *(a3 + 24) = v21;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  *(a3 + 48) = v22;
  *(a3 + 56) = v24;
}

double sub_1000B1778@<D0>(char *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for TSDataSyncDeviceState(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  sub_10000306C();
  v10 = (v9 - v8);
  v80 = *a1;
  v82 = *(a1 + 1);
  v81 = *(a1 + 2);
  sub_1000037B4();
  sub_10003D178(v11, v12, v13, v14);
  v15 = v7[9];
  v77 = type metadata accessor for Date();
  sub_10000307C();
  v76 = *(v16 + 16);
  v78 = v15;
  v76(&v10[v15], &a1[v15]);
  sub_1000037B4();
  sub_10003D178(v17, v18, v19, v20);
  sub_1000037B4();
  sub_10003D178(v21, v22, v23, v24);
  v25 = *&a1[v7[12]];
  v79 = v25;
  v26 = *&a1[v7[13]];
  v27 = *&a1[v7[14]];
  v28 = *&a1[v7[15]];
  sub_1000037B4();
  sub_10003D178(v29, v30, v31, v32);
  sub_1000037B4();
  sub_10003D178(v33, v34, v35, v36);
  v37 = *&a1[v7[19]];
  v38 = &a1[v7[20]];
  v39 = *(v38 + 1);
  v40 = *(v38 + 2);
  *v10 = v80;
  *(v10 + 1) = v82;
  *(v10 + 2) = v81;
  *&v10[v7[12]] = v25;
  *&v10[v7[13]] = v26;
  *&v10[v7[14]] = v27;
  *&v10[v7[15]] = v28;
  *&v10[v7[16]] = a3;
  v41 = *v38;
  v42 = v37;
  *&v10[v7[19]] = v37;
  v43 = &v10[v7[20]];
  *v43 = v41;
  *(v43 + 1) = v39;
  v44 = *(v38 + 3);
  *(v43 + 2) = v40;
  *(v43 + 3) = v44;
  sub_1000037B4();
  sub_10003D178(v45, v46, v47, v48);
  (v76)(a2 + v7[9], &v10[v78], v77);
  sub_1000037B4();
  sub_10003D178(v49, v50, v51, v52);
  sub_1000037B4();
  sub_10003D178(v53, v54, v55, v56);
  sub_1000037B4();
  sub_10003D178(v57, v58, v59, v60);
  sub_1000037B4();
  sub_10003D178(v61, v62, v63, v64);
  v83 = *v43;
  v84 = *(v43 + 1);
  v85 = *(v43 + 2);
  v86 = *(v43 + 3);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1000037B4();
  sub_10003D178(v65, v66, v67, v68);
  sub_1000037B4();
  sub_10003D178(v69, v70, v71, v72);
  sub_100007EDC();
  sub_1000B310C(v10, v73);
  *a2 = v80;
  a2[1] = v82;
  a2[2] = v81;
  *(a2 + v7[12]) = v79;
  *(a2 + v7[13]) = v26;
  *(a2 + v7[14]) = v27;
  *(a2 + v7[15]) = v26;
  *(a2 + v7[16]) = a3;
  *(a2 + v7[19]) = v42;
  v74 = (a2 + v7[20]);
  *v74 = v83;
  v74[1] = v84;
  result = *&v85;
  v74[2] = v85;
  v74[3] = v86;
  return result;
}

uint64_t sub_1000B1B70(uint64_t a1)
{
  v207 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  sub_100003724();
  v201 = v4;
  __chkstk_darwin(v5);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v6);
  sub_10000D478();
  sub_10000A1C0(v7);
  v8 = sub_100099DF4(&qword_1002DB300, &qword_100231BA0);
  v9 = sub_1000030B8(v8);
  __chkstk_darwin(v9);
  sub_10000308C();
  sub_10000DE68();
  __chkstk_darwin(v10);
  sub_10000D478();
  sub_10000A1C0(v11);
  sub_100099DF4(&qword_1002DB308, &qword_100231BA8);
  sub_100003724();
  v221 = v13;
  v222 = v12;
  __chkstk_darwin(v12);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v14);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v15);
  sub_100002DD0();
  v230 = v16;
  sub_100005238();
  __chkstk_darwin(v17);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v18);
  sub_10000D478();
  sub_10000A1C0(v19);
  v219 = sub_100099DF4(&qword_1002DB310, &qword_100231BB0);
  sub_10000307C();
  __chkstk_darwin(v20);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v21);
  v23 = (&v187 - v22);
  v24 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  v25 = sub_1000030B8(v24);
  __chkstk_darwin(v25);
  sub_10000A1C0(&v187 - v26);
  type metadata accessor for URL();
  sub_100003724();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_10000306C();
  sub_10000A1C0(v31 - v30);
  v33 = *(a1 + 40);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  v231 = v32;
  v220 = v23;
  if (v34)
  {
    Data.init(base64Encoded:options:)();
    if (v35 >> 60 == 15)
    {
      sub_1000B2EE8();
      swift_allocError();
      *v36 = 1;
      *(v36 + 8) = 0;
      return swift_willThrow();
    }

    sub_10000CF90();
    v40 = objc_opt_self();
    sub_1000B31F0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v42 = [v40 decompressedDataWithGzippedData:isa];

    if (!v42)
    {
      sub_1000B2EE8();
      swift_allocError();
      *v119 = 2;
      *(v119 + 8) = 1;
      swift_willThrow();
      v120 = sub_1000B31F0();
      return sub_10009A7A0(v120, v121);
    }

    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v43;
    v44 = sub_1000B31F0();
    sub_10009A7A0(v44, v45);

    v23 = v220;
  }

  else
  {
    sub_10000CF90();
    v38 = 0;
    v39 = 0xC000000000000000;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000B2F3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000D170(v38, v39);

  v192 = v1;
  if (v1)
  {
    return result;
  }

  v193 = v2;
  v46 = v234;
  v47 = v236;
  v188 = v235;
  sub_1000B2F90();
  v48 = Dictionary.init(dictionaryLiteral:)();
  v196 = *(v47 + 16);
  v195 = v47 + 32;
  v211 = (v28 + 32);
  v213 = (v28 + 16);
  v194 = v28 + 8;
  v198 = v47;

  v49 = 0;
  v50 = v197;
  while (1)
  {
    if (v49 == v196)
    {
      sub_1000B3210();

      v122 = v48 + 64;
      v123 = 1 << *(v48 + 32);
      v124 = -1;
      if (v123 < 64)
      {
        v124 = ~(-1 << v123);
      }

      v125 = v124 & *(v48 + 64);
      v126 = (v123 + 63) >> 6;

      v127 = 0;
      v128 = _swiftEmptyArrayStorage;
      v223 = v126;
      for (i = v48 + 64; ; v122 = i)
      {
        v232 = v128;
        if (v125)
        {
          v129 = v127;
          goto LABEL_49;
        }

        do
        {
          v129 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            goto LABEL_64;
          }

          if (v129 >= v126)
          {
            sub_100099DF4(&qword_1002DB348, &unk_100231BC0);
            v140 = v193;
            sub_100007B78();
            sub_100002728(v159, v160, v161, v162);
            v125 = 0;
            goto LABEL_50;
          }

          v125 = *(v122 + 8 * v129);
          ++v127;
        }

        while (!v125);
        v127 = v129;
LABEL_49:
        v130 = __clz(__rbit64(v125));
        v125 &= v125 - 1;
        v131 = v130 | (v129 << 6);
        v132 = *(v48 + 56);
        v133 = *(v48 + 48) + 40 * v131;
        v134 = *(v133 + 8);
        v230 = *v133;
        LODWORD(v229) = *(v133 + 16);
        v135 = *(v133 + 24);
        v136 = *(v133 + 32);
        v137 = v199;
        sub_10003D178(v132 + *(v221 + 72) * v131, v199, &qword_1002DB308, &qword_100231BA8);
        v138 = sub_100099DF4(&qword_1002DB348, &unk_100231BC0);
        v139 = *(v138 + 48);
        v140 = v193;
        *v193 = v230;
        v140[1] = v134;
        *(v140 + 16) = v229;
        v140[3] = v135;
        v140[4] = v136;
        sub_100012CF4(v137, v140 + v139, &qword_1002DB308, &qword_100231BA8);
        sub_10000B7B0();
        sub_100002728(v141, v142, v143, v138);

LABEL_50:
        v144 = v140;
        v145 = v202;
        sub_100012CF4(v144, v202, &qword_1002DB300, &qword_100231BA0);
        v146 = sub_100099DF4(&qword_1002DB348, &unk_100231BC0);
        if (sub_100004DFC(v145, 1, v146) == 1)
        {

          v232 = sub_1000B2BEC(v232);
          v169 = v190;
          v170 = *v190;
          v230 = v190[1];
          v231 = v170;
          v171 = type metadata accessor for TSDataSyncConfigServerResponse(0);
          v172 = *(v171 + 24);
          v173 = type metadata accessor for TSDataSyncServerConfigModel(0);
          v174 = v191;
          sub_10003D178(v169 + v172, v191 + v173[6], &qword_1002DA970, &qword_1002318B0);
          v175 = v173[7];
          v176 = type metadata accessor for Date();
          sub_10000307C();
          v178 = *(v177 + 16);
          v178(v174 + v175, v189, v176);
          v178(v174 + v173[8], v169 + *(v171 + 28), v176);
          sub_10000B7B0();
          sub_100002728(v179, v180, v181, v176);
          v182 = v230;

          sub_1000B3210();

          v184 = v169[2];
          v183 = v169[3];

          v185 = v231;
          *v174 = v232;
          v174[1] = v185;
          v174[2] = v182;
          *(v174 + v173[9]) = v46;
          *(v174 + v173[10]) = v188;
          v186 = (v174 + v173[11]);
          *v186 = v184;
          v186[1] = v183;
          return result;
        }

        v147 = *v145;
        v229 = *(v145 + 8);
        v230 = v147;
        LODWORD(v228) = *(v145 + 16);
        v148 = *(v145 + 24);
        v226 = *(v145 + 32);
        v227 = v148;
        v149 = (v145 + *(v146 + 48));
        v225 = *v149;
        v150 = *(v222 + 48);
        v151 = *v211;
        v152 = v200;
        v153 = v231;
        (*v211)(v200 + v150, &v149[v150], v231);
        v154 = v205;
        v151(v205 + *(v207 + 20), (v152 + v150), v153);
        v155 = v229;
        *v154 = v230;
        *(v154 + 8) = v155;
        *(v154 + 16) = v228;
        v156 = v226;
        *(v154 + 24) = v227;
        *(v154 + 32) = v156;
        *(v154 + *(v207 + 24)) = v225;
        sub_1000B30A8(v154, v206);
        v128 = v232;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10013BD10(0, v128[2] + 1, 1, v128);
          v128 = v163;
        }

        v126 = v223;
        v158 = v128[2];
        v157 = v128[3];
        if (v158 >= v157 >> 1)
        {
          sub_10013BD10(v157 > 1, v158 + 1, 1, v128);
          v128 = v164;
        }

        sub_1000B310C(v205, type metadata accessor for TSDataSyncDatasetGroupConfig);
        v128[2] = v158 + 1;
        sub_1000B3164(v206, v128 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v158);
      }
    }

    if (v49 >= *(v198 + 16))
    {
      goto LABEL_65;
    }

    v203 = v49;
    v51 = (v195 + 40 * v49);
    v52 = v51[1];
    v217 = *v51;
    v53 = v51[2];
    v54 = v51[3];
    v55 = v51[4];
    swift_bridgeObjectRetain_n();
    i = v52;

    URL.init(string:encodingInvalidCharacters:)();
    v204 = v54;

    v56 = v231;
    if (sub_100004DFC(v50, 1, v231) == 1)
    {
      sub_1000B3210();
      swift_bridgeObjectRelease_n();
      sub_100004E24(v50, &qword_1002DB318, &qword_10023F230);
LABEL_59:
      sub_1000B2FE4();
      swift_allocError();
      v167 = v204;
      *v168 = v53;
      v168[1] = v167;
      v168[2] = 1;
      swift_willThrow();
    }

    v210 = *v211;
    v210(v218, v50, v56);
    URL.scheme.getter();
    if (!v57)
    {
      sub_1000B3210();
      swift_bridgeObjectRelease_n();
      v165 = sub_10000B7BC();
      v166(v165);
      goto LABEL_59;
    }

    v58 = *(v55 + 16);
    if (v58)
    {
      break;
    }

LABEL_38:
    v116 = v203 + 1;
    swift_bridgeObjectRelease_n();
    v117 = sub_10000B7BC();
    v118(v117);
    v49 = v116;
  }

  v232 = 0;
  v215 = v58 - 1;
  v59 = (v55 + 56);
  v216 = v55;
  while (v232 < v58)
  {
    v60 = *(v59 - 2);
    v227 = *(v59 - 3);
    LODWORD(v229) = *(v59 + 16);
    v61 = v59[3];
    v62 = v59[4];
    v63 = v59[7];
    v225 = v59[6];
    LODWORD(v64) = *(v59 + 40);
    v65 = *v59;
    v66 = v59[1];
    v67 = *(v59 - 8);
    *&v237 = v217;
    *(&v237 + 1) = i;
    LOBYTE(v238) = v67;
    *(&v238 + 1) = v65;
    v239 = v66;
    v68 = *(v48 + 16);

    v223 = v66;

    v228 = v60;

    v226 = v63;

    if (v68 && (sub_10014EB48(), (v69 & 1) != 0))
    {
      sub_10000B324();
      v73 = v209;
      sub_10003D178(v71 + v72 * v70, v209, &qword_1002DB308, &qword_100231BA8);
      v74 = *(v222 + 48);
      v75 = *(v219 + 48);
      v76 = v208;
      *v208 = *v73;
      v77 = v73 + v74;
      v212 = v64;
      v64 = v48;
      v78 = v219;
      v79 = v231;
      v210(v76 + v75, v77, v231);
      sub_10000B7B0();
      v80 = v79;
      v81 = v78;
      v48 = v64;
      LOBYTE(v64) = v212;
      sub_100002728(v82, v83, v84, v80);
      v23 = v220;
      sub_100012CF4(v76, v220, &qword_1002DB310, &qword_100231BB0);
    }

    else
    {
      v81 = v219;
      *v23 = _swiftEmptyArrayStorage;
      sub_100007B78();
      sub_100002728(v85, v86, v87, v231);
    }

    v88 = *v23;
    sub_100004E24(v23 + *(v81 + 48), &qword_1002DB318, &qword_10023F230);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10013BD4C();
      v88 = v114;
    }

    v89 = *(v88 + 16);
    if (v89 >= *(v88 + 24) >> 1)
    {
      sub_10013BD4C();
      v88 = v115;
    }

    *(v88 + 16) = v89 + 1;
    v90 = v88 + (v89 << 6);
    v91 = v228;
    *(v90 + 32) = v227;
    *(v90 + 40) = v91;
    v92 = v226;
    *(v90 + 48) = v225;
    *(v90 + 56) = v92;
    *(v90 + 64) = v229;
    LODWORD(v92) = *&v233[3];
    *(v90 + 65) = *v233;
    *(v90 + 68) = v92;
    *(v90 + 72) = v61;
    *(v90 + 80) = v62;
    *(v90 + 88) = v64;
    v93 = *(v222 + 48);
    v94 = v214;
    *v214 = v88;
    (*v213)(v94 + v93, v218, v231);
    sub_100012CF4(v94, v230, &qword_1002DB308, &qword_100231BA8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v234 = v48;
    v96 = sub_10014EB48();
    v98 = *(v48 + 16);
    v99 = (v97 & 1) == 0;
    v100 = v98 + v99;
    if (__OFADD__(v98, v99))
    {
      goto LABEL_62;
    }

    v101 = v96;
    v102 = v97;
    sub_100099DF4(&qword_1002DB340, &qword_100231BB8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v100))
    {
      v103 = sub_10014EB48();
      v23 = v220;
      if ((v102 & 1) != (v104 & 1))
      {
        goto LABEL_66;
      }

      v101 = v103;
      if (v102)
      {
LABEL_33:

        v48 = v234;
        sub_10000B324();
        sub_1000B3038(v230, v112 + v113 * v101);
        goto LABEL_34;
      }
    }

    else
    {
      v23 = v220;
      if (v102)
      {
        goto LABEL_33;
      }
    }

    v48 = v234;
    *(v234 + 8 * (v101 >> 6) + 64) |= 1 << v101;
    v105 = *(v48 + 48) + 40 * v101;
    v106 = v238;
    *v105 = v237;
    *(v105 + 16) = v106;
    *(v105 + 32) = v239;
    sub_10000B324();
    sub_100012CF4(v230, v107 + v108 * v101, &qword_1002DB308, &qword_100231BA8);
    v109 = *(v48 + 16);
    v110 = __OFADD__(v109, 1);
    v111 = v109 + 1;
    if (v110)
    {
      goto LABEL_63;
    }

    *(v48 + 16) = v111;
LABEL_34:
    if (v215 == v232)
    {

      v50 = v197;
      goto LABEL_38;
    }

    v58 = *(v216 + 16);
    v59 += 11;
    ++v232;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}