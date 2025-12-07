uint64_t sub_7406C()
{
  if (qword_BF8F0 != -1)
  {
    swift_once();
  }

  sub_8C12C();
  swift_allocObject();

  result = sub_8C11C();
  qword_C4020 = result;
  return result;
}

uint64_t sub_74100()
{
  if (qword_BF8F8 != -1)
  {
    swift_once();
  }
}

BOOL sub_7415C()
{
  if (qword_BF8C0 != -1)
  {
    swift_once();
  }

  v0 = qword_C3FE8;
  type metadata accessor for SmsNLIntent(0);
  sub_75418(&qword_C0E70);
  v1 = *(sub_7544C(v0) + 16);

  if (v1)
  {
    return 0;
  }

  if (qword_BF8C8 != -1)
  {
    swift_once();
  }

  v2 = *(sub_7544C(qword_C3FF0) + 16);

  if (v2)
  {
    return 0;
  }

  if (qword_BF8D0 != -1)
  {
    swift_once();
  }

  v3 = *(sub_7544C(qword_C3FF8) + 16);

  if (v3)
  {
    return 0;
  }

  if (qword_BF8D8 != -1)
  {
    swift_once();
  }

  v4 = *(sub_7544C(qword_C4000) + 16);

  if (v4)
  {
    return 0;
  }

  if (qword_BF8E0 != -1)
  {
    swift_once();
  }

  v6 = *(sub_7544C(qword_C4008) + 16);

  return v6 == 0;
}

unint64_t sub_74314(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8B98;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_74360@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_8C71C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_743E0(uint64_t a1)
{
  v2 = sub_74F44(&qword_C32D8, &unk_93938);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_74448(uint64_t a1)
{
  v2 = sub_74F44(&qword_C32D8, &unk_93938);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_744A0(uint64_t a1)
{
  v2 = sub_74F44(&qword_C32D8, &unk_93938);

  return NLIntentWrapper.description.getter(a1, v2);
}

unint64_t sub_7451C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_74314(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_7454C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_73424(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_745C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_8D47C();

  if (v2 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_7461C(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      v7 = 1920298854;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v5 = 1952868710;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v5 = 1954048371;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v4 = 0x746E65766573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v7 = 1751607653;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v5 = 1953391988;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      v4 = 0x74666C657774;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      v6 = 1919510644;
      goto LABEL_27;
    case 13:
      v6 = 1920298854;
      goto LABEL_27;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v6 = 1751607653;
      goto LABEL_27;
    case 18:
      v6 = 1701734766;
LABEL_27:
      result = v6 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
      result = 1953718636;
      break;
    case 21:
      result = 0x656C6464696DLL;
      break;
    case 22:
      result = 1954047342;
      break;
    case 23:
      result = 0x73756F6976657270;
      break;
    case 24:
      result = 0x6F54646E6F636573;
      break;
    case 25:
      result = 0x4C6F546472696874;
      break;
    case 26:
      result = 6647407;
      break;
    case 27:
      result = 2037277037;
      break;
    case 28:
      result = 6645876;
      break;
    case 29:
      result = 0x6573656874;
      break;
    case 30:
      result = 0x72656C6C6163;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_7493C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_745C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_7496C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7461C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_749E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

uint64_t sub_74A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsNLIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SmsReferenceValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmsReferenceValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
        JUMPOUT(0x74C30);
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_74C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_8C71C();

  return sub_3364(a1, a2, v4);
}

uint64_t sub_74CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_8C71C();

  return sub_6270(a1, a2, a2, v4);
}

uint64_t sub_74D24(uint64_t a1)
{
  result = sub_8C71C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_74DFC()
{
  result = qword_C32B0;
  if (!qword_C32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32B0);
  }

  return result;
}

unint64_t sub_74E98()
{
  result = qword_C32C8;
  if (!qword_C32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32C8);
  }

  return result;
}

unint64_t sub_74EF0()
{
  result = qword_C32D0;
  if (!qword_C32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32D0);
  }

  return result;
}

uint64_t sub_74F44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmsNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_74F88()
{
  result = qword_C32E0;
  if (!qword_C32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32E0);
  }

  return result;
}

unint64_t sub_74FDC()
{
  result = qword_C32E8;
  if (!qword_C32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32E8);
  }

  return result;
}

unint64_t sub_75030()
{
  result = qword_C32F0;
  if (!qword_C32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C32F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmsContactRoleValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x75150);
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

unint64_t sub_7518C()
{
  result = qword_C3310;
  if (!qword_C3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3310);
  }

  return result;
}

uint64_t sub_75224(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_75270()
{
  result = qword_C3328;
  if (!qword_C3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3328);
  }

  return result;
}

unint64_t sub_752C8()
{
  result = qword_C3330;
  if (!qword_C3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3330);
  }

  return result;
}

unint64_t sub_7531C()
{
  result = qword_C3338;
  if (!qword_C3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3338);
  }

  return result;
}

unint64_t sub_75370()
{
  result = qword_C3340;
  if (!qword_C3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3340);
  }

  return result;
}

unint64_t sub_753C4()
{
  result = qword_C3348;
  if (!qword_C3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3348);
  }

  return result;
}

uint64_t sub_75418(unint64_t *a1)
{

  return sub_74F44(a1, &unk_93AB0);
}

uint64_t sub_7544C(uint64_t a1)
{

  return sub_8C4CC();
}

uint64_t type metadata accessor for StopAnnouncementAceViewProvider(uint64_t a1)
{
  result = qword_C3358;
  if (!qword_C3358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_75558(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  v19 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = sub_2C7AC(v3);
  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_8D27C();
    }

    else
    {
      if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v9 = [v6 originator];
    if (v9 && (v10 = v9, v11 = [v9 home], v10, v11))
    {
      v12 = [v11 spokenPhrase];

      v13 = sub_8CEDC();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_75D80(0, *(v19 + 2) + 1, 1, v19);
      }

      v17 = *(v19 + 2);
      v16 = *(v19 + 3);
      if (v17 >= v16 >> 1)
      {
        v19 = sub_75D80((v16 > 1), v17 + 1, 1, v19);
      }

      *(v19 + 2) = v17 + 1;
      v18 = &v19[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v5 = v8;
    }

    else
    {

      ++v5;
    }
  }

  sub_75738(v19);
}

uint64_t sub_75738(uint64_t a1)
{
  result = sub_8D0FC();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_76834(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_757F8(uint64_t a1)
{
  result = sub_77194(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_771D4(result, v3, 0, a1);
  }
}

uint64_t sub_75890(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_8CFEC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_75938@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_6270(a3, v8, 1, v7);
}

uint64_t sub_75A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;

  sub_100FC(a6, v11);
}

uint64_t sub_75AD4(uint64_t result)
{
  if (result)
  {
    if (*(result + 16) == 1)
    {
      return sub_757F8(result);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_75B10()
{
  v0 = sub_8BB5C();

  sub_2714((v0 + *(*v0 + qword_C3D60 + 24)));
  return v0;
}

uint64_t sub_75BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_8BE1C();
  sub_622C(v17, v17[3]);
  v10 = sub_8B64C();
  sub_2714(v17);
  if (v10)
  {
    sub_75558(sub_77134);
    v12 = sub_75AD4(v11);
    v14 = v13;

    sub_75A04(v12, v14, a4, a5, &unk_BB7D0, sub_75D74);
  }

  else
  {
    sub_2664(&qword_C33A8, &qword_93C88);
    v16 = sub_8BB4C();
    return v16(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_75D18()
{
  v0 = sub_75B10();

  return _swift_deallocClassInstance(v0, 72, 7);
}

char *sub_75D80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2664(&qword_C0F90, &unk_8FAE0);
    v10 = swift_allocObject();
    j__malloc_size(v10);
    sub_7735C();
    *(v10 + 2) = v8;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_75E7C()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_77330(v2, v5, &qword_C0018, &unk_927C0);
  sub_77318();
  sub_8C29C();
  sub_2BC0C();
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for UsoIdentifier, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

char *sub_75F54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2664(&qword_C33D8, &unk_93CC0);
    v10 = swift_allocObject();
    j__malloc_size(v10);
    sub_7735C();
    *(v10 + 2) = v8;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_76048()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_77330(v2, v5, &qword_C33C8, &qword_93CA8);
  sub_77318();
  sub_8B6DC();
  sub_2BC0C();
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for DisplayHint, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_76120()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_77330(v2, v5, &qword_C33D0, &unk_93CB0);
  sub_77318();
  sub_8B73C();
  sub_2BC0C();
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for SemanticValue, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_761F8()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_77330(v2, v5, &qword_C33C0, &qword_93CA0);
  sub_77318();
  sub_8CDCC();
  sub_2BC0C();
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for RREntity, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_762D0()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_77330(v2, v5, &qword_C33B8, &qword_93C98);
  sub_77318();
  sub_8BF1C();
  sub_2BC0C();
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for Siri_Nlu_External_UserDialogAct, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_763A8()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_77330(v2, v5, &qword_C25F8, &unk_92750);
  sub_77318();
  sub_8C99C();
  sub_2BC0C();
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for SpeakableString, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void sub_76480()
{
  sub_772AC();
  if (v4)
  {
    sub_7729C();
    if (v6 != v7)
    {
      sub_77324();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_772BC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_77330(v2, v5, &qword_C2628, &qword_92798);
  sub_77318();
  sub_8C1FC();
  sub_2BC0C();
  sub_22B9C();
  if (v1)
  {
    sub_772FC(&type metadata accessor for UsoEntitySpan, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_772CC();
  }
}

void *sub_76558(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2664(&qword_C2640, &unk_927B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_765D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2664(a3, a4);
  v8 = sub_77318();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_766CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_772EC(a3, result);
  }

  return result;
}

char *sub_76734(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_772EC(a3, result);
  }

  return result;
}

uint64_t sub_7676C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    sub_77348();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_77348();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

BOOL sub_76834(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_8D50C();
  sub_8CF4C();
  v8 = sub_8D54C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_8D45C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_76BDC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_76980(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2664(&qword_C33B0, &qword_93C90);
  result = sub_8D23C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_76D44(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_8D50C();
    sub_8CF4C();
    result = sub_8D54C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_76BDC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_76980(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_76F00(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_8D50C();
      sub_8CF4C();
      result = sub_8D54C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_8D45C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_76DA8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_8D49C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_76D44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_93C40;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_76DA8()
{
  v1 = v0;
  sub_2664(&qword_C33B0, &qword_93C90);
  v2 = *v0;
  v3 = sub_8D22C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_76F00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2664(&qword_C33B0, &qword_93C90);
  result = sub_8D23C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_8D50C();

        sub_8CF4C();
        result = sub_8D54C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_77134(void *a1)
{
  v1 = [a1 stoppedAnnouncementRecords];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2D74C();
  v3 = sub_8D04C();

  return v3;
}

uint64_t sub_771D4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_77250()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_772CC()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_772FC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_7676C(v2 + a2, v4, v3 + a2, a1);
}

void *sub_77330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_765D4(v5, a2, a3, a4, v4);
}

uint64_t type metadata accessor for StopAnnouncementCATs(uint64_t a1)
{
  result = qword_C33E0;
  if (!qword_C33E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_77428(char a1)
{
  sub_2664(&qword_C1CE8, &unk_91960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_8E3F0;
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x8000000000098830;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = a1;
  sub_8C91C();
}

uint64_t sub_77548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8CA2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v9 - 8);
  sub_137BC(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_8C90C();
  (*(v6 + 8))(a2, v5);
  sub_1382C(a1);
  return v11;
}

uint64_t type metadata accessor for StopAnnouncementCATsSimple(uint64_t a1)
{
  result = qword_C3430;
  if (!qword_C3430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_77748()
{
  sub_77DBC(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_139E4;

  return v3(0xD00000000000001DLL, 0x8000000000098850, _swiftEmptyArrayStorage);
}

uint64_t sub_77800(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_77824);
}

uint64_t sub_77824()
{
  v1 = *(v0 + 48);
  sub_2664(&qword_C1CE8, &unk_91960);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x8000000000098830;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  sub_77DBC(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_77948;

  return v6(0xD000000000000026, 0x8000000000098800, v2);
}

uint64_t sub_77948(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_77AA0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_77AA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_77B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8CA2C();
  sub_13DCC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v11 - 8);
  sub_137BC(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_8C9AC();
  (*(v7 + 8))(a2, v3);
  sub_1382C(a1);
  return v13;
}

uint64_t sub_77CB4(uint64_t a1, uint64_t a2)
{
  sub_8CA2C();
  sub_13DCC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_8C9BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_77DD0()
{
  sub_7935C();
  sub_2664(&qword_C35C0, &qword_93E38);
  sub_E6E8();
  __chkstk_darwin(v1);
  sub_79320();
  type metadata accessor for ReadAnnouncementFlowStrategy();
  sub_792D8(&qword_C35C8, type metadata accessor for ReadAnnouncementFlowStrategy, &unk_91BF0);

  sub_79338();
  sub_79384();
  v2 = sub_79370();
  v3(v2);
  return v0;
}

uint64_t sub_77EF4()
{
  sub_7935C();
  sub_2664(&qword_C35B0, &qword_93E30);
  sub_E6E8();
  __chkstk_darwin(v1);
  sub_79320();
  type metadata accessor for SendAnnouncementFlowStrategy();
  sub_792D8(&qword_C35B8, type metadata accessor for SendAnnouncementFlowStrategy, &unk_92AB0);

  sub_79338();
  sub_79384();
  v2 = sub_79370();
  v3(v2);
  return v0;
}

uint64_t sub_78018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2664(&qword_C35A0, &qword_93E28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  v11[1] = a1;
  type metadata accessor for StopAnnouncementFlowStrategy();
  sub_792D8(&qword_C35A8, type metadata accessor for StopAnnouncementFlowStrategy, &unk_93F80);

  sub_8B7AC();
  v9 = sub_8B79C();
  (*(v6 + 8))(v8, v5);
  return v9;
}

BOOL sub_78190()
{
  v0 = sub_8BE0C();
  sub_E6E8();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8BD9C();
  v6 = (*(v2 + 88))(v5, v0);
  v7 = enum case for Parse.directInvocation(_:);
  if (v6 == enum case for Parse.directInvocation(_:))
  {
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v8 = sub_8CD0C();
    sub_33F4(v8, qword_C3DF8);
    v9 = sub_8CCEC();
    v10 = sub_8D11C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "#StopAnnouncementFlow handling direct invocation.", v11, 2u);
    }
  }

  (*(v2 + 8))(v5, v0);
  return v6 == v7;
}

uint64_t sub_78340(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StopAnnouncementFlow(0);
  sub_792D8(&qword_C0450, type metadata accessor for StopAnnouncementFlow, &unk_93DB8);
  return sub_8B34C();
}

uint64_t sub_783D0(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  sub_8B6BC();
  v2[36] = sub_E83C();
  sub_8CA2C();
  v2[37] = sub_E83C();
  v3 = sub_2664(&qword_C3568, &qword_93E10);
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_8BE0C();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = sub_E83C();

  return _swift_task_switch(sub_78544);
}

uint64_t sub_78544()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  *(v0 + 360) = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#StopAnnouncementFlow execute");
  }

  v6 = *(v0 + 280);

  sub_E528(v6 + 64, v0 + 16);
  sub_E528(v6 + 16, v0 + 56);
  sub_8B3FC();
  v7 = *(v0 + 40);
  v8 = sub_E58C(v0 + 16, v7);
  sub_E6E8();
  v10 = v9;
  v11 = sub_E83C();
  (*(v10 + 16))(v11, v8, v7);
  v12 = type metadata accessor for SharedGlobals(0);
  *(v0 + 368) = v12;
  *(v0 + 160) = v12;
  *(v0 + 168) = &off_BB508;
  v13 = sub_E5DC((v0 + 136));
  sub_E63C(v11, v13);
  type metadata accessor for StopAnnouncementFlowStrategy();
  v14 = swift_allocObject();
  *(v0 + 376) = v14;
  v15 = *(v0 + 160);
  v16 = sub_E58C(v0 + 136, v15);
  sub_E6E8();
  v18 = v17;
  v19 = sub_E83C();
  (*(v18 + 16))(v19, v16, v15);
  v14[5] = v12;
  v14[6] = &off_BB508;
  v20 = sub_E5DC(v14 + 2);
  sub_E63C(v19, v20);
  sub_E510((v0 + 56), (v14 + 7));
  sub_E510((v0 + 96), (v14 + 12));
  sub_2714((v0 + 136));

  sub_2714((v0 + 16));

  sub_8BD9C();
  v21 = swift_task_alloc();
  *(v0 + 384) = v21;
  *v21 = v0;
  v21[1] = sub_78854;
  v22 = *(v0 + 352);

  return sub_79758(v22, 0);
}

uint64_t sub_78854(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;
  *v6 = *v2;
  v5[49] = v1;

  v7 = v4[44];
  v8 = v4[43];
  v9 = v4[42];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_78E7C;
  }

  else
  {
    v5[50] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_789D4;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_789D4()
{
  v1 = v0[46];
  v27 = v0[47];
  v28 = v0[50];
  v29 = v0[41];
  v25 = v0[39];
  v26 = v0[40];
  v23 = v0[38];
  v2 = v0[35];
  sub_ADE4(0, &qword_C3570, INStopAnnouncementIntent_ptr);
  sub_ADE4(0, &qword_C3578, INStopAnnouncementIntentResponse_ptr);
  sub_8B31C();
  v24 = v2;
  v22 = *(v2 + 56);
  sub_E528(v2 + 64, (v0 + 22));
  type metadata accessor for StopAnnouncementCATsSimple(0);

  sub_8CA1C();
  v21 = sub_8C9CC();
  type metadata accessor for HomeCommunicationDisplayTextCATsSimple(0);
  sub_8CA1C();
  v20 = sub_8C9CC();
  v3 = v0[25];
  v4 = sub_E58C((v0 + 22), v3);
  sub_E6E8();
  v6 = v5;
  v7 = sub_E83C();
  (*(v6 + 16))(v7, v4, v3);
  v0[30] = v1;
  v0[31] = &off_BB508;
  v8 = sub_E5DC(v0 + 27);
  sub_E63C(v7, v8);
  type metadata accessor for StopAnnouncementIntentHandledStrategy(0);
  v9 = swift_allocObject();
  v10 = v0[30];
  v11 = sub_E58C((v0 + 27), v10);
  sub_E6E8();
  v13 = v12;
  v14 = sub_E83C();
  (*(v13 + 16))(v14, v11, v10);
  v9[5] = v1;
  v9[6] = &off_BB508;
  v15 = sub_E5DC(v9 + 2);
  sub_E63C(v14, v15);
  sub_8B68C();
  sub_8BC3C();
  v9[7] = v21;
  v9[8] = v22;
  v9[9] = v20;
  sub_2714(v0 + 27);

  sub_2714(v0 + 22);

  v0[32] = v9;
  sub_792D8(&qword_C3580, type metadata accessor for StopAnnouncementIntentHandledStrategy, &unk_94168);
  sub_8B27C();
  sub_8B2DC();
  sub_8B28C();
  sub_8B2EC();
  (*(v25 + 16))(v26, v29, v23);
  sub_2664(&qword_C3588, &qword_93E18);
  swift_allocObject();
  v16 = sub_8B32C();
  v17 = sub_622C((v24 + 64), *(v24 + 88));
  sub_622C(v17 + 2, v17[5]);
  v0[33] = sub_78018(v27, v16, v22, v28);
  sub_2664(&qword_C3590, &qword_93E20);
  sub_79274();
  sub_8B33C();

  sub_8B7EC();

  (*(v25 + 8))(v29, v23);

  v18 = v0[1];

  return v18();
}

uint64_t sub_78E7C()
{

  v1 = sub_8CCEC();
  v2 = sub_8D12C();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v3, v4, "#StopAnnouncementFlow Error thrown while creating RCH flow");
  }

  sub_8B7FC();

  v5 = *(v0 + 8);

  return v5();
}

char *sub_78F8C()
{
  sub_2714((v0 + 16));

  sub_2714((v0 + 64));
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin20StopAnnouncementFlow_input;
  v2 = sub_8BDBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_79004()
{
  sub_78F8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for StopAnnouncementFlow(uint64_t a1)
{
  result = qword_C34B0;
  if (!qword_C34B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_790B0(uint64_t a1)
{
  result = sub_8BDBC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_7919C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3D7E4;

  return sub_783D0(a1);
}

uint64_t sub_79238(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StopAnnouncementFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_79274()
{
  result = qword_C3598;
  if (!qword_C3598)
  {
    sub_B9BC(&qword_C3590, &qword_93E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3598);
  }

  return result;
}

uint64_t sub_792D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_79338()
{

  return sub_8B7AC();
}

uint64_t sub_79384()
{

  return sub_8B79C();
}

uint64_t sub_793A4()
{
  v0 = sub_8BDEC();
  sub_3488();
  v29 = v1;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_8BE0C();
  sub_3488();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v11 = sub_8CD0C();
  v12 = sub_33F4(v11, qword_C3DF8);
  v13 = sub_8CCEC();
  v14 = sub_8D11C();
  if (sub_125A0(v14))
  {
    v15 = sub_E8E0();
    v28 = v12;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#StopAnnouncementFlowStrategy.actionForInput() handling", v15, 2u);
    sub_E890(v16);
  }

  sub_8BD9C();
  if ((*(v7 + 88))(v10, v5) != enum case for Parse.directInvocation(_:))
  {
    (*(v7 + 8))(v10, v5);
    goto LABEL_13;
  }

  (*(v7 + 96))(v10, v5);
  v17 = v29;
  (*(v29 + 32))(v4, v10, v0);
  if (sub_8BDCC() == 0xD000000000000036 && 0x8000000000095D10 == v18)
  {
  }

  else
  {
    v20 = sub_8D45C();

    if ((v20 & 1) == 0)
    {
      (*(v17 + 8))(v4, v0);
LABEL_13:
      v21 = sub_8CCEC();
      v22 = sub_8D11C();
      if (sub_125A0(v22))
      {
        v23 = sub_E8E0();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "#StopAnnouncementFlowStrategy the action is not a direct invocation. Ignoring to let flow up the stack to handle this.", v23, 2u);
        sub_E890(v23);
      }

      return sub_8B76C();
    }
  }

  v25 = sub_8CCEC();
  v26 = sub_8D11C();
  if (sub_125A0(v26))
  {
    v27 = sub_E8E0();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "#StopAnnouncementFlowStrategy user tapped stop button. Handling direct invocations.", v27, 2u);
    sub_E890(v27);
  }

  sub_8B75C();
  return (*(v17 + 8))(v4, v0);
}

uint64_t sub_79758(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  return _swift_task_switch(sub_79778);
}

uint64_t sub_79778()
{
  v32 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_125A0(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#StopAnnouncementFlowStrategy makeIntentFromParse(parse:currentIntent:) called", v4, 2u);
    sub_E890(v4);
  }

  v5 = v0[12];

  v6 = v0[12];
  if (v5)
  {
    v7 = v0[12];
  }

  else
  {
    v7 = [objc_allocWithZone(INStopAnnouncementIntent) init];
  }

  v8 = v6;
  v9 = [v7 _metadata];
  if (v9)
  {
    v10 = v9;
    sub_8B5AC();
    sub_622C(v0 + 2, v0[5]);
    sub_8BADC();
    sub_622C(v0 + 7, v0[10]);
    sub_8BACC();
    if (v11)
    {
      v12 = sub_8CEAC();
    }

    else
    {
      v12 = 0;
    }

    sub_2714(v0 + 7);
    sub_2714(v0 + 2);
    [v10 setEndpointId:v12];
  }

  v13 = v7;
  v14 = sub_8CCEC();
  v15 = sub_8D11C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    v18 = [v13 _metadata];
    if (v18)
    {
      v18 = sub_7A240(v18);
    }

    else
    {
      v19 = 0;
    }

    v0[2] = v18;
    v0[3] = v19;
    sub_2664(&qword_C1A08, &unk_92B40);
    v20 = sub_8CEEC();
    v22 = sub_862D8(v20, v21, &v31);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "#StopAnnouncementFlowStrategy setting endpoint ID=%s", v16, 0xCu);
    sub_2714(v17);
    sub_E890(v17);
    sub_E890(v16);
  }

  v23 = v0[13];
  sub_622C(v23 + 12, v23[15]);
  sub_8B59C();
  v24 = v23[10];
  v25 = v23[11];
  sub_622C(v23 + 7, v24);
  v26 = (*(v25 + 16))(v24, v25);
  v27 = sub_1D6AC(v26);
  v28 = [v27 _className];

  sub_8CEDC();

  sub_8B58C();
  sub_8B40C();

  v29 = v0[1];

  return v29(v13);
}

uint64_t sub_79BA0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_3E188;

  return sub_79758(v4, a2);
}

uint64_t sub_79C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StopAnnouncementFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_79C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v10 = v5;
  v10[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_79D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v10 = v5;
  v10[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_79E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v10 = v5;
  v10[1] = sub_3E954;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_79EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v12 = v6;
  v12[1] = sub_3D7E4;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_79FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v12 = v6;
  v12[1] = sub_3E954;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_7A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StopAnnouncementFlowStrategy();
  *v8 = v4;
  v8[1] = sub_3D630;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t sub_7A200(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StopAnnouncementFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7A240(void *a1)
{
  v2 = [a1 endpointId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_8CEDC();

  return v3;
}

unint64_t sub_7A31C()
{
  result = qword_C36A8;
  if (!qword_C36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C36A8);
  }

  return result;
}

unint64_t sub_7A370(uint64_t a1)
{
  result = sub_7A398();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7A398()
{
  result = qword_C36C8;
  if (!qword_C36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C36C8);
  }

  return result;
}

uint64_t sub_7A3EC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return sub_44310(sub_7A404);
}

uint64_t sub_7A404()
{
  sub_152A0();
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_443A4(v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#StopAnnouncementIntentHandledStrategy makeIntentHandledResponse");
    sub_1D214();
  }

  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  sub_443E0(v6);

  return sub_77800(1);
}

uint64_t sub_7A518()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;

  if (v0)
  {
    sub_65A0();

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_7A63C);
  }
}

uint64_t sub_7A63C(uint64_t a1)
{
  sub_8BE1C();
  sub_622C(v1 + 2, v1[5]);
  v2 = sub_8B64C();
  sub_2714(v1 + 2);
  if (v2)
  {
    v3 = v1[11];
    sub_2664(&qword_C0690, &unk_8EBF0);
    v4 = swift_allocObject();
    v1[12] = v4;
    *(v4 + 16) = xmmword_8E860;
    *(v4 + 32) = v3;
    v5 = v3;
    swift_task_alloc();
    sub_44358();
    v1[13] = v6;
    *v6 = v7;
    v6[1] = sub_7A854;

    return sub_7AB78();
  }

  else
  {
    v9 = v1[11];
    v10 = sub_8B8FC();
    sub_60BD8(v10);
    v11 = sub_8B8EC();
    v1[15] = v11;
    v1[7] = v11;
    sub_2664(&qword_C0690, &unk_8EBF0);
    v12 = swift_allocObject();
    v1[16] = v12;
    *(v12 + 16) = xmmword_8E860;
    *(v12 + 32) = v9;
    v13 = v9;
    swift_task_alloc();
    sub_44358();
    v1[17] = v14;
    *v14 = v15;
    v14[1] = sub_7A9B4;
    sub_7C9A8();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
  }
}

uint64_t sub_7A854()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  sub_65D8();
  *v4 = v3;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = sub_7AB18;
  }

  else
  {

    v7 = sub_7A95C;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_7A95C()
{
  sub_6608();

  sub_44364();

  return v1();
}

uint64_t sub_7A9B4()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  v3 = sub_44348();

  return _swift_task_switch(v3);
}

uint64_t sub_7AAB4()
{
  sub_6608();

  sub_44364();

  return v1();
}

uint64_t sub_7AB18()
{
  sub_6608();
  v1 = *(v0 + 88);

  sub_65A0();

  return v2();
}

uint64_t sub_7AB78()
{
  sub_6608();
  v1[203] = v0;
  v1[197] = v2;
  v1[191] = v3;
  v1[209] = type metadata accessor for CarPlayIntercomControlModel(0);
  v1[215] = swift_task_alloc();
  v4 = sub_8BCBC();
  v1[221] = v4;
  v1[222] = *(v4 - 8);
  v1[223] = swift_task_alloc();
  v5 = sub_44348();

  return _swift_task_switch(v5);
}

uint64_t sub_7AC64()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_443A4(v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#StopAnnouncementIntentHandledStrategy makeIntentHandledResponseCarPlay making play/reply snippet");
    sub_1D214();
  }

  v6 = v0[223];
  v7 = v0[222];
  v8 = v0[221];
  v9 = v0[203];

  (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37StopAnnouncementIntentHandledStrategy_completionOutputManifest, v8);
  sub_8BC6C();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2);
}

uint64_t sub_7AE18()
{
  sub_6608();
  v1[224] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_7B2EC);
  }

  else
  {
    v1[225] = v1[177];
    v1[226] = v1[178];

    v2 = sub_4440C();

    return _swift_asyncLet_get_throwing(v2);
  }
}

uint64_t sub_7AEC4()
{
  *(v1 + 1816) = v0;
  if (v0)
  {
    return sub_44310(sub_7B3DC);
  }

  else
  {
    return sub_44310(sub_7AEF0);
  }
}

uint64_t sub_7AEF0()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1440);
  *(v0 + 1448) = *(v0 + 1800);
  *(v0 + 1456) = v1;

  sub_8B05C();
  *(v0 + 1464) = v3;
  *(v0 + 1472) = v4;
  sub_8B05C();
  *(v0 + 1840) = 0;
  sub_8B05C();
  v5 = sub_8B8FC();
  sub_60BD8(v5);
  v6 = sub_8B8EC();
  *(v0 + 1824) = v6;
  *(v0 + 1480) = v6;
  *(v0 + 1360) = type metadata accessor for HomeCommunicationSnippetModel(0);
  *(v0 + 1368) = sub_7C928(&qword_C2078, type metadata accessor for HomeCommunicationSnippetModel, &protocol conformance descriptor for HomeCommunicationSnippetModel);
  v7 = sub_E5DC((v0 + 1336));
  sub_BF24(v2, v7);
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_44358();
  *(v0 + 1832) = v8;
  *v8 = v9;
  v8[1] = sub_7B0B4;
  v10 = *(v0 + 1784);
  v11 = *(v0 + 1576);
  v12 = *(v0 + 1528);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v12, v0 + 1336, v11, v10, &type metadata for String, &protocol witness table for ResponseFactory);
}

uint64_t sub_7B0B4()
{
  sub_6608();
  sub_E884();
  v2 = v1;
  sub_65D8();
  *v3 = v2;
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  sub_2714((v2 + 1336));
  v6 = sub_44348();

  return _swift_task_switch(v6);
}

uint64_t sub_7B19C()
{
  sub_6608();
  sub_BF88(*(v0 + 1720));

  v1 = sub_4440C();

  return _swift_asyncLet_finish(v1);
}

uint64_t sub_7B250()
{
  sub_152A0();
  (*(v0[222] + 8))(v0[223], v0[221]);

  sub_44364();

  return v1();
}

uint64_t sub_7B354()
{
  sub_152A0();
  v0 = sub_7C974();
  v1(v0);

  sub_65A0();

  return v2();
}

uint64_t sub_7B3DC()
{
  sub_6608();

  v0 = sub_4440C();

  return _swift_asyncLet_finish(v0);
}

uint64_t sub_7B484()
{
  sub_152A0();
  v0 = sub_7C974();
  v1(v0);

  sub_65A0();

  return v2();
}

uint64_t sub_7B50C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_7B52C);
}

uint64_t sub_7B52C()
{
  sub_6608();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  sub_443E0(v1);

  return sub_1484C();
}

uint64_t sub_7B5B8()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {
    sub_4441C();

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    v11 = sub_44374();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_7B6DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_7B6FC);
}

uint64_t sub_7B6FC()
{
  sub_6608();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  sub_443E0(v1);

  return sub_14984();
}

uint64_t sub_7B788()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {
    sub_4441C();

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    v11 = sub_44374();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_7B8AC()
{
  sub_152A0();
  v1 = *(v0 + 16);
  v2 = sub_8CA0C();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  sub_44364();

  return v5();
}

uint64_t sub_7B924()
{
  sub_6608();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_8B02C();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_44348();

  return _swift_task_switch(v4);
}

uint64_t sub_7B9D8()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_443A4(v3))
  {
    *swift_slowAlloc() = 0;
    sub_3D9B8(&dword_0, v4, v5, "#StopAnnouncementIntentHandledStrategy makeFailureHandlingIntentResponse");
    sub_1D214();
  }

  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];

  type metadata accessor for RadarUtils();
  inited = swift_initStackObject();
  sub_8C88C();
  swift_allocObject();
  *(inited + 16) = sub_8C87C();
  sub_8BE1C();
  sub_622C(v0 + 2, v0[5]);
  sub_8B5DC();
  v0[10] = sub_8B01C();
  v0[11] = v10;
  v0[12] = 45;
  v0[13] = 0xE100000000000000;
  v0[14] = 95;
  v0[15] = 0xE100000000000000;
  sub_10C68();
  v11 = sub_8D1FC();
  v13 = v12;

  (*(v7 + 8))(v6, v8);
  sub_38AE4(1, 3, v11, v13);
  swift_setDeallocating();

  sub_2714(v0 + 2);
  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  sub_443E0(v14);

  return sub_77748();
}

uint64_t sub_7BC54()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_65D8();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {

    sub_4441C();

    return v9();
  }

  else
  {
    *(v5 + 184) = v3;
    v11 = sub_44374();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_7BD80()
{
  v1 = v0[23];
  v2 = sub_8B8FC();
  sub_60BD8(v2);
  v3 = sub_8B8EC();
  v0[24] = v3;
  v0[16] = v3;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v4 = swift_allocObject();
  v0[25] = v4;
  *(v4 + 16) = xmmword_8E860;
  *(v4 + 32) = v1;
  v5 = v1;
  swift_task_alloc();
  sub_44358();
  v0[26] = v6;
  *v6 = v7;
  v6[1] = sub_7BEA4;
  sub_7C9A8();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v9, v10, v11, v12);
}

uint64_t sub_7BEA4()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  v3 = sub_44348();

  return _swift_task_switch(v3);
}

uint64_t sub_7BFA4()
{
  sub_6608();

  sub_44364();

  return v1();
}

char *sub_7C010()
{
  sub_2714((v0 + 16));

  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37StopAnnouncementIntentHandledStrategy_completionOutputManifest;
  v2 = sub_8BCBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_7C090()
{
  sub_7C010();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for StopAnnouncementIntentHandledStrategy(uint64_t a1)
{
  result = qword_C3700;
  if (!qword_C3700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7C13C(uint64_t a1)
{
  result = sub_8BCBC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_7C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StopAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StopAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StopAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C440(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3B650;

  return sub_7A3EC(a1);
}

uint64_t sub_7C4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StopAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StopAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_7C66C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_E2A0;

  return sub_7B924();
}

uint64_t sub_7C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for StopAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_E0F4;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t sub_7C818()
{
  sub_6608();
  swift_task_alloc();
  sub_44358();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_7C994(v1);

  return sub_7B50C(v3, v4);
}

uint64_t sub_7C8A0()
{
  sub_6608();
  swift_task_alloc();
  sub_44358();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_7C994(v1);

  return sub_7B6DC(v3, v4);
}

uint64_t sub_7C928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_7C9C0()
{
  result = qword_C37D8;
  if (!qword_C37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C37D8);
  }

  return result;
}

unint64_t sub_7CA14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8FD0;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_7CA60(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x6572676F72506E69;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_7CB5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7CA14(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_7CB8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_7CA60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_7CBC8()
{
  v0 = qword_C37C8;

  return v0;
}

uint64_t sub_7CC00(uint64_t a1)
{
  v2 = sub_7CCEC();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_7CC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7CD40();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_7CC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7CCEC();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

unint64_t sub_7CCEC()
{
  result = qword_C37E0;
  if (!qword_C37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C37E0);
  }

  return result;
}

unint64_t sub_7CD40()
{
  result = qword_C37E8;
  if (!qword_C37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C37E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StopAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for StopAnnouncementIntentResponseCode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x7CEE8);
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

uint64_t sub_7CF20(uint64_t a1)
{
  v2 = sub_7CCEC();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_7CF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7CD40();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

unint64_t sub_7CFAC()
{
  result = qword_C37F0;
  if (!qword_C37F0)
  {
    sub_B9BC(&qword_C37F8, &qword_942F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C37F0);
  }

  return result;
}

unint64_t sub_7D014()
{
  result = qword_C3800;
  if (!qword_C3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3800);
  }

  return result;
}

unint64_t sub_7D06C()
{
  result = qword_C3808;
  if (!qword_C3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3808);
  }

  return result;
}

unint64_t sub_7D0C4()
{
  result = qword_C3810;
  if (!qword_C3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3810);
  }

  return result;
}

unint64_t sub_7D120()
{
  result = qword_C3818;
  if (!qword_C3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3818);
  }

  return result;
}

unint64_t sub_7D178()
{
  result = qword_C3820;
  if (!qword_C3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3820);
  }

  return result;
}

uint64_t type metadata accessor for StopAnnouncementRCHFlowDelegate(uint64_t a1)
{
  result = qword_C3838;
  if (!qword_C3838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7D26C(void *a1)
{
  v2 = v1;
  v4 = *(*v1 + qword_C3D40 + 8);
  sub_E528(a1, v2 + v4);
  sub_E528(v2 + v4, v13);
  sub_622C(v13, v13[3]);
  sub_8B62C();
  sub_2714(v13);
  v5 = sub_8CA8C();
  sub_E824(v5);
  v6 = sub_8CA5C();
  *(v2 + *(*v2 + qword_C3D40 + 16)) = v6;
  sub_2664(&qword_C3890, &unk_944A8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_8E3F0;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_8E860;
  *(v8 + 32) = v6;
  v9 = sub_8CA4C();
  sub_E824(v9);

  v10 = sub_8CA3C();
  *(v7 + 56) = v9;
  *(v7 + 64) = &protocol witness table for DefaultAppSelector;
  *(v7 + 32) = v10;
  v11 = sub_8CA9C();
  sub_2714(a1);
  return v11;
}

uint64_t sub_7D4A0()
{
  v0 = sub_2664(&qword_C0660, &qword_92260);
  v1 = sub_65E4(v0);
  __chkstk_darwin(v1);
  v31 = &v28 - v2;
  v29 = sub_8B02C();
  sub_3488();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_16854();
  v8 = v7 - v6;
  v9 = sub_8CA2C();
  v10 = sub_65E4(v9);
  __chkstk_darwin(v10);
  sub_16854();
  v30 = sub_8BCEC();
  sub_3488();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_16854();
  v16 = v15 - v14;
  sub_8B5BC();
  sub_8BE1C();
  sub_8BCDC();
  type metadata accessor for StopAnnouncementCATs(0);
  sub_8CA1C();
  v17 = sub_8C92C();
  sub_8CC5C();
  v18 = sub_8CC4C();
  v19 = type metadata accessor for StopAnnouncementTemplatingService(0);
  v20 = sub_E824(v19);
  v34[3] = sub_8CC3C();
  v34[4] = &protocol witness table for DeviceResolutionAnalyticsImpl;
  v34[0] = v18;
  sub_E528(v35, v20 + qword_C38A0);
  *(v20 + qword_C38B8) = v17;
  sub_E528(v36, v20 + qword_C38A8);
  sub_E528(v34, v20 + qword_C38B0);
  v28 = "sions.AnnounceIntentExtension";
  sub_622C(v35, v35[3]);
  sub_7E414();

  sub_8B5DC();
  v21 = sub_8B01C();
  v23 = v22;
  (*(v4 + 8))(v8, v29);
  v33[0] = v21;
  v33[1] = v23;
  v32[0] = 45;
  v32[1] = 0xE100000000000000;
  v33[5] = 95;
  v33[6] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  type metadata accessor for INIntentSlotValueType(0);
  sub_10CBC();
  sub_8CE6C();
  sub_E528(v36, v33);
  sub_E528(v35, v32);
  v24 = v31;
  v25 = v30;
  (*(v12 + 16))(v31, v16, v30);
  sub_6270(v24, 0, 1, v25);
  v26 = sub_8BA5C();

  (*(v12 + 8))(v16, v25);
  sub_2714(v36);
  sub_2714(v34);
  sub_2714(v35);
  return v26;
}

void sub_7D8F8()
{
  v0 = sub_8CA2C();
  v1 = sub_65E4(v0);
  __chkstk_darwin(v1);
  sub_16854();
  v2 = sub_8BCEC();
  v3 = sub_65E4(v2);
  __chkstk_darwin(v3);
  sub_16854();
  v6 = v5 - v4;
  sub_8BCDC();
  sub_8B5BC();
  sub_8BE1C();
  type metadata accessor for HomeCommunicationDisplayTextCATs(0);
  sub_8CA1C();
  v7 = sub_8C92C();
  v8 = type metadata accessor for DisplayTextTemplatingService(0);
  sub_E824(v8);
  sub_FDD8(v6, v10, v9, v7);
}

uint64_t sub_7D9F4()
{
  sub_7D8F8();
  v2 = v1;
  sub_E528(v0 + qword_C3830, v10);
  v3 = sub_E58C(v10, v10[3]);
  __chkstk_darwin(v3);
  sub_16854();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4);
  v8 = sub_7E2E4(v2, v6);
  sub_2714(v10);
  return v8;
}

id sub_7DAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_8BDEC();
  sub_3488();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_16854();
  v10 = v9 - v8;
  v11 = sub_8BE0C();
  sub_3488();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_16854();
  v17 = v16 - v15;
  (*(v13 + 16))(v16 - v15, a1, v11);
  if ((*(v13 + 88))(v17, v11) != enum case for Parse.directInvocation(_:))
  {
    (*(v13 + 8))(v17, v11);
    sub_2664(&qword_C3898, &qword_944B8);
    v27 = sub_8B9FC();
    return v27(a1, a2);
  }

  (*(v13 + 96))(v17, v11);
  (*(v6 + 32))(v10, v17, v4);
  if (sub_8BDCC() == 0xD000000000000036 && 0x8000000000095D10 == v18)
  {
  }

  else
  {
    v20 = sub_8D45C();

    if ((v20 & 1) == 0)
    {
      if (qword_BF818 != -1)
      {
        sub_E754(&qword_BF818);
      }

      v21 = sub_8CD0C();
      sub_33F4(v21, qword_C3DF8);
      v22 = sub_8CCEC();
      v23 = sub_8D12C();
      if (os_log_type_enabled(v22, v23))
      {
        *swift_slowAlloc() = 0;
        sub_7E420(&dword_0, v24, v25, "Received unknown direct invocation, returning nil");
      }

      (*(v6 + 8))(v10, v4);
      return 0;
    }
  }

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v28 = sub_8CD0C();
  sub_33F4(v28, qword_C3DF8);
  v29 = sub_8CCEC();
  v30 = sub_8D11C();
  if (os_log_type_enabled(v29, v30))
  {
    *swift_slowAlloc() = 0;
    sub_7E420(&dword_0, v31, v32, "Returning empty INStopAnnouncementIntent for DirectInvocation");
  }

  v26 = [objc_allocWithZone(INStopAnnouncementIntent) init];
  v33 = [v26 _metadata];
  if (v33)
  {
    v34 = v33;
    sub_8B5BC();
    sub_622C(v38, v38[3]);
    sub_7E414();
    sub_8B94C();
    sub_622C(v37, v37[3]);
    sub_7E414();
    sub_8BACC();
    if (v35)
    {
      sub_8CEAC();
      sub_7E414();
    }

    else
    {
      v29 = 0;
    }

    sub_2714(v37);
    sub_2714(v38);
    [v34 setEndpointId:v29];
  }

  (*(v6 + 8))(v10, v4);
  return v26;
}

uint64_t sub_7DF68()
{
  sub_E528(v0 + qword_C3828, v3);
  v1 = sub_2664(&qword_C3888, &qword_944A0);
  sub_E824(v1);
  return sub_7D26C(v3);
}

uint64_t sub_7DFF4()
{
  sub_2714((v0 + qword_C3828));
  v1 = (v0 + qword_C3830);

  return sub_2714(v1);
}

uint64_t sub_7E034()
{
  v0 = sub_8BA0C();
  v1 = qword_C3828;

  sub_2714((v2 + v1));
  sub_2714((v0 + qword_C3830));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_7E0A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_8CA2C();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for SharedGlobals(0);
  v19[3] = v7;
  v19[4] = &off_BB508;
  v8 = sub_E5DC(v19);
  sub_E63C(a2, v8);
  type metadata accessor for StopAnnouncementCATs(0);
  sub_8CA1C();
  *(a3 + qword_C3350) = sub_8C92C();
  sub_E528(v19, v18);
  v9 = sub_E58C(v18, v18[3]);
  __chkstk_darwin(v9);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v17[3] = v7;
  v17[4] = &off_BB508;
  v13 = sub_E5DC(v17);
  sub_E63C(v11, v13);
  *(a3 + *(*a3 + qword_C3D60 + 16)) = a1;
  sub_E528(v17, a3 + *(*a3 + qword_C3D60 + 24));
  v14 = sub_8BB3C();
  sub_2714(v17);
  sub_2714(v19);
  sub_2714(v18);
  return v14;
}

uint64_t sub_7E2E4(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for SharedGlobals(0);
  v15 = &off_BB508;
  v4 = sub_E5DC(v13);
  sub_E63C(a2, v4);
  type metadata accessor for StopAnnouncementAceViewProvider(0);
  v5 = swift_allocObject();
  v6 = sub_E58C(v13, v14);
  __chkstk_darwin(v6);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_7E0A8(a1, v8, v5);
  sub_2714(v13);
  return v10;
}

void sub_7E420(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t type metadata accessor for StopAnnouncementTemplatingService(uint64_t a1)
{
  result = qword_C38C0;
  if (!qword_C38C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7E4E8()
{
  sub_77428(1);

  sub_7E584(1);
}

void sub_7E538()
{
  sub_773FC();

  sub_7E584(0);
}

void sub_7E584(int a1)
{
  LODWORD(v112) = a1;
  v107 = sub_8CC2C();
  sub_3488();
  v114 = v2;
  __chkstk_darwin(v3);
  v106 = &v95[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = sub_8CC1C();
  sub_3488();
  v113 = v5;
  __chkstk_darwin(v6);
  sub_1D164();
  v102 = (v7 - v8);
  sub_22ACC();
  __chkstk_darwin(v9);
  v104 = &v95[-v10];
  sub_22ACC();
  __chkstk_darwin(v11);
  v116 = &v95[-v12];
  v13 = sub_2664(&qword_C3910, &unk_94518);
  __chkstk_darwin(v13 - 8);
  v15 = &v95[-v14];
  v16 = sub_8CC9C();
  sub_3488();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v95[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_8CCAC();
  sub_3488();
  v110 = v23;
  v111 = v22;
  __chkstk_darwin(v22);
  sub_1D164();
  v101 = (v24 - v25);
  sub_22ACC();
  __chkstk_darwin(v26);
  v103 = &v95[-v27];
  sub_22ACC();
  __chkstk_darwin(v28);
  v115 = &v95[-v29];
  v30 = sub_2664(&qword_C19C8, &qword_90FB0);
  __chkstk_darwin(v30 - 8);
  v32 = &v95[-v31];
  v33 = sub_8B00C();
  sub_3488();
  v109 = v34;
  __chkstk_darwin(v35);
  sub_1D164();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  v108 = &v95[-v40];
  v105 = v1;
  sub_622C((v1 + qword_C38A8), *(v1 + qword_C38A8 + 24));
  sub_8B96C();
  if (!v41)
  {
    goto LABEL_4;
  }

  sub_8AFCC();

  if (sub_3364(v32, 1, v33) == 1)
  {
    sub_7F18C(v32);
LABEL_4:
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v42 = sub_8CD0C();
    sub_33F4(v42, qword_C3DF8);
    v43 = sub_8CCEC();
    v44 = sub_8D12C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "StopAnnouncementTemplatingService.logQuickStopHandlingEndedEvent(): startRequestId is nil", v45, 2u);
    }

    return;
  }

  v47 = v108;
  v46 = v109;
  (*(v109 + 32))(v108, v32, v33);
  v48 = *(v46 + 16);
  v97 = v33;
  v48(v38, v47, v33);
  (*(v18 + 104))(v21, enum case for ExecutionInfo.Action.quickStopStop(_:), v16);
  v49 = enum case for ExecutionInfo.QuickStopActionResult.stoppedHomeAnnouncement(_:);
  v50 = sub_8CC8C();
  (*(*(v50 - 8) + 104))(v15, v49, v50);
  sub_6270(v15, 0, 1, v50);
  v51 = v115;
  sub_8CC7C();
  v52 = v113;
  v53 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if ((v112 & 1) == 0)
  {
    v53 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  v54 = v116;
  v55 = v117;
  (*(v113 + 104))(v116, *v53, v117);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v56 = sub_8CD0C();
  sub_33F4(v56, qword_C3DF8);
  v57 = v110;
  v58 = v103;
  v59 = v51;
  v60 = v111;
  v99 = *(v110 + 16);
  v100 = v110 + 16;
  v99(v103, v59, v111);
  v61 = v104;
  v98 = *(v52 + 16);
  v98(v104, v54, v55);
  v62 = sub_8CCEC();
  v63 = sub_8D11C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v118[0] = swift_slowAlloc();
    *v64 = 136315394;
    v96 = v63;
    v99(v101, v58, v60);
    v65 = sub_8CEEC();
    v66 = v60;
    v68 = v67;
    v69 = v57;
    v70 = v66;
    v103 = *(v69 + 8);
    (v103)(v58, v66);
    v71 = sub_862D8(v65, v68, v118);

    *(v64 + 4) = v71;
    *(v64 + 12) = 2080;
    v98(v102, v61, v117);
    v72 = sub_8CEEC();
    v74 = v73;
    v104 = *(v52 + 8);
    (v104)(v61, v117);
    v75 = sub_862D8(v72, v74, v118);

    *(v64 + 14) = v75;
    _os_log_impl(&dword_0, v62, v96, "StopAnnouncementTemplatingService.logQuickStopHandlingEndedEvent() - info: %s, result: %s", v64, 0x16u);
    swift_arrayDestroy();
    v55 = v117;
  }

  else
  {

    v104 = *(v52 + 8);
    (v104)(v61, v55);
    v103 = *(v57 + 8);
    (v103)(v58, v60);
    v70 = v60;
  }

  v76 = (v105 + qword_C38B0);
  sub_622C((v105 + qword_C38B0), *(v105 + qword_C38B0 + 24));
  v77 = *(sub_2664(&qword_C3918, &qword_94528) + 48);
  v78 = v106;
  v99(v106, v115, v70);
  v98(&v78[v77], v116, v55);
  v79 = v114;
  v80 = *(v114 + 104);
  v81 = v107;
  v80(v78, enum case for CrossDeviceCommandExecution.ended(_:), v107);
  sub_8CC6C();
  v82 = v55;
  v85 = *(v79 + 8);
  v84 = v79 + 8;
  v83 = v85;
  v85(v78, v81);
  if (v112)
  {
    (v104)(v116, v82);
    v86 = v111;
    v87 = v115;
  }

  else
  {
    v88 = v76[4];
    v105 = v76[3];
    v112 = v88;
    sub_622C(v76, v105);
    v89 = sub_2664(&qword_C3920, &unk_94530);
    v114 = v84;
    v90 = *(v89 + 48);
    v91 = v115;
    v92 = v111;
    v99(v78, v115, v111);
    v93 = enum case for CrossDeviceCommandExecution.FailureReason.unknown(_:);
    v94 = sub_8CC0C();
    (*(*(v94 - 8) + 104))(&v78[v90], v93, v94);
    v80(v78, enum case for CrossDeviceCommandExecution.failed(_:), v81);
    sub_8CC6C();
    v83(v78, v81);
    (v104)(v116, v117);
    v87 = v91;
    v86 = v92;
  }

  (v103)(v87, v86);
  (*(v109 + 8))(v108, v97);
}

uint64_t sub_7F08C()
{
  sub_2714((v0 + qword_C38A0));
  sub_2714((v0 + qword_C38A8));
  sub_2714((v0 + qword_C38B0));
}

uint64_t sub_7F0EC()
{
  v0 = sub_8BA7C();
  sub_2714((v0 + qword_C38A0));
  sub_2714((v0 + qword_C38A8));
  sub_2714((v0 + qword_C38B0));

  return v0;
}

uint64_t sub_7F154()
{
  v0 = sub_7F0EC();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_7F18C(uint64_t a1)
{
  v2 = sub_2664(&qword_C19C8, &qword_90FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_7F1F4()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  result = sub_7F2A0(0x6C7070612E6D6F63, 0xEE00656D6F482E65, 0);
  if (result)
  {

    return &dword_0 + 1;
  }

  return result;
}

id sub_7F2A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_8CEAC();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_8AF1C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_7F37C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      result = 0xD000000000000010;
      break;
    case 1:
      sub_845AC();
      result = v4 | 4;
      break;
    case 2:
      sub_845AC();
      result = v2 | 3;
      break;
    case 3:
      sub_845AC();
      result = v3 | 1;
      break;
    default:
      sub_8D25C(39);

      sub_8C99C();
      v5._countAndFlagsBits = sub_8D05C();
      sub_8CF7C(v5);

      v6._countAndFlagsBits = 41;
      v6._object = 0xE100000000000000;
      sub_8CF7C(v6);
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t sub_7F4B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4465727574616566 && a2 == 0xEF64656C62617369;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000022 && 0x80000000000954B0 == a2;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000000098D30 == a2;
      if (v7 || (sub_8D45C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000000098D50 == a2;
        if (v8 || (sub_8D45C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000000098D70 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_8D45C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_7F664(char a1)
{
  result = 0x4465727574616566;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_7F768(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E746567726174 && a2 == 0xEB0000000073656DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_8D45C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_7F804(void *a1, uint64_t a2)
{
  v65 = a2;
  sub_2664(&qword_C3B18, &qword_94728);
  sub_3488();
  v63 = v4;
  v64 = v3;
  sub_1D394();
  __chkstk_darwin(v5);
  sub_1D370();
  v62 = v6;
  sub_2664(&qword_C3B20, &qword_94730);
  sub_3488();
  v60 = v8;
  v61 = v7;
  sub_1D394();
  __chkstk_darwin(v9);
  sub_1D370();
  v59 = v10;
  sub_2664(&qword_C3B28, &qword_94738);
  sub_3488();
  v55 = v12;
  v56 = v11;
  sub_1D394();
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  sub_2664(&qword_C3B30, &qword_94740);
  sub_3488();
  v57 = v17;
  v58 = v16;
  sub_1D394();
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  v21 = sub_2664(&qword_C3B38, &qword_94748);
  sub_3488();
  v54 = v22;
  sub_1D394();
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  sub_2664(&qword_C3B40, &qword_94750);
  sub_3488();
  v66 = v26;
  sub_1D394();
  __chkstk_darwin(v27);
  sub_622C(a1, a1[3]);
  sub_836E4();
  v28 = v65;
  sub_8D57C();
  switch(v28)
  {
    case 0:
      v68 = 0;
      v29 = sub_83888();
      sub_845CC(&type metadata for UnsupportedDialogFlow.Reason.FeatureDisabledCodingKeys, &v68, v30, v31, v29);
      (*(v54 + 8))(v25, v21);
      goto LABEL_8;
    case 1:
      v70 = 2;
      v41 = sub_837E0();
      sub_845CC(&type metadata for UnsupportedDialogFlow.Reason.ContactNotSupportedCodingKeys, &v70, v42, v43, v41);
      v39 = v56;
      v40 = *(v55 + 8);
      v38 = v15;
      goto LABEL_7;
    case 2:
      v71 = 3;
      v32 = sub_8378C();
      sub_845CC(&type metadata for UnsupportedDialogFlow.Reason.RepeatNotSupportedCodingKeys, &v71, v33, v34, v32);
      goto LABEL_5;
    case 3:
      v72 = 4;
      v35 = sub_83738();
      sub_845CC(&type metadata for UnsupportedDialogFlow.Reason.SkipNotSupportedCodingKeys, &v72, v36, v37, v35);
LABEL_5:
      v38 = sub_8473C();
LABEL_7:
      v40(v38, v39);
LABEL_8:
      v44 = sub_8475C();
      result = v45(v44);
      break;
    default:
      v69 = 1;
      v47 = sub_83834();
      sub_845CC(&type metadata for UnsupportedDialogFlow.Reason.UnsupportedRecipientsNoTargetFoundCodingKeys, &v69, v48, v49, v47);
      v67 = v28;
      sub_2664(&qword_C2408, &unk_92390);
      sub_838DC(&qword_C3B48, &qword_C3B50, &protocol conformance descriptor for SpeakableString, &protocol conformance descriptor for <A> [A]);
      v50 = v58;
      sub_8D41C();
      (*(v57 + 8))(v20, v50);
      v51 = sub_8475C();
      result = v52(v51);
      break;
  }

  return result;
}

uint64_t sub_7FD18(void *a1)
{
  v81 = sub_2664(&qword_C3AA8, &qword_946F8);
  sub_3488();
  v76 = v2;
  sub_1D394();
  __chkstk_darwin(v3);
  sub_1D370();
  v79 = v4;
  v80 = sub_2664(&qword_C3AB0, &qword_94700);
  sub_3488();
  v73 = v5;
  sub_1D394();
  __chkstk_darwin(v6);
  sub_1D370();
  v78 = v7;
  sub_2664(&qword_C3AB8, &qword_94708);
  sub_3488();
  v71 = v9;
  v72 = v8;
  sub_1D394();
  __chkstk_darwin(v10);
  sub_1D370();
  v77 = v11;
  sub_2664(&qword_C3AC0, &qword_94710);
  sub_3488();
  v74 = v13;
  v75 = v12;
  sub_1D394();
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v17 = sub_2664(&qword_C3AC8, &qword_94718);
  sub_3488();
  v70 = v18;
  sub_1D394();
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = sub_2664(&qword_C3AD0, &qword_94720);
  sub_3488();
  v24 = v23;
  sub_1D394();
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  v28 = a1[3];
  v82 = a1;
  sub_622C(a1, v28);
  sub_836E4();
  v29 = v83;
  sub_8D56C();
  if (!v29)
  {
    v67 = v17;
    v68 = v21;
    v69 = v16;
    v30 = v80;
    v31 = v81;
    v83 = v24;
    v32 = sub_8D3EC();
    sub_285E0(v32, 0);
    if (v34 == v35 >> 1)
    {
      goto LABEL_7;
    }

    v66 = 0;
    if (v34 >= (v35 >> 1))
    {
      __break(1u);
      JUMPOUT(0x804D0);
    }

    v36 = v22;
    v37 = *(v33 + v34);
    sub_28F7C(v34 + 1);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    if (v39 != v41 >> 1)
    {
LABEL_7:
      v24 = sub_8D2AC();
      swift_allocError();
      v48 = v47;
      sub_2664(&qword_C11A0, &qword_900E0);
      *v48 = &type metadata for UnsupportedDialogFlow.Reason;
      sub_8D3BC();
      sub_8D29C();
      (*(*(v24 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      swift_unknownObjectRelease();
      v49 = sub_84430();
      v50(v49);
    }

    else
    {
      v42 = v36;
      switch(v37)
      {
        case 1:
          v86 = 1;
          sub_83834();
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.UnsupportedRecipientsNoTargetFoundCodingKeys, &v86);
          sub_2664(&qword_C2408, &unk_92390);
          sub_838DC(&qword_C3B00, &qword_C3B08, &protocol conformance descriptor for SpeakableString, &protocol conformance descriptor for <A> [A]);
          sub_8D3DC();
          v63 = v83;
          swift_unknownObjectRelease();
          v64 = sub_84748();
          v65(v64);
          (*(v63 + 8))(v27, v42);
          v24 = v84;
          break;
        case 2:
          v87 = 2;
          sub_837E0();
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.ContactNotSupportedCodingKeys, &v87);
          swift_unknownObjectRelease();
          v55 = sub_8473C();
          v56(v55);
          v57 = sub_84430();
          v58(v57);
          v24 = 1;
          break;
        case 3:
          v88 = 3;
          sub_8378C();
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.RepeatNotSupportedCodingKeys, &v88);
          swift_unknownObjectRelease();
          v59 = sub_8473C();
          v60(v59, v30);
          v61 = sub_84430();
          v62(v61);
          v24 = 2;
          break;
        case 4:
          v89 = 4;
          sub_83738();
          v52 = v79;
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.SkipNotSupportedCodingKeys, &v89);
          swift_unknownObjectRelease();
          (*(v76 + 8))(v52, v31);
          v53 = sub_84430();
          v54(v53);
          v24 = 3;
          break;
        default:
          v85 = 0;
          sub_83888();
          sub_84548(&type metadata for UnsupportedDialogFlow.Reason.FeatureDisabledCodingKeys, &v85);
          swift_unknownObjectRelease();
          v43 = sub_8473C();
          v44(v43, v67);
          v45 = sub_84430();
          v46(v45);
          v24 = 0;
          break;
      }
    }
  }

  sub_2714(v82);
  return v24;
}

uint64_t sub_804EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7F4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_80514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_7F65C();
  *a1 = result;
  return result;
}

uint64_t sub_8053C(uint64_t a1)
{
  v2 = sub_836E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80578(uint64_t a1)
{
  v2 = sub_836E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_805B8(uint64_t a1)
{
  v2 = sub_837E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_805F4(uint64_t a1)
{
  v2 = sub_837E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_80630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7F748(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_8065C(uint64_t a1)
{
  v2 = sub_83888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80698(uint64_t a1)
{
  v2 = sub_83888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_806D4(uint64_t a1)
{
  v2 = sub_8378C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80710(uint64_t a1)
{
  v2 = sub_8378C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8074C(uint64_t a1)
{
  v2 = sub_83738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80788(uint64_t a1)
{
  v2 = sub_83738();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_807C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7F768(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_807F4(uint64_t a1)
{
  v2 = sub_83834();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80830(uint64_t a1)
{
  v2 = sub_83834();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_80874@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_7FD18(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_808BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnsupportedDialogFlow();
  sub_83BAC(&qword_C0E20, v2, type metadata accessor for UnsupportedDialogFlow, &unk_946A0);
  return sub_8B34C();
}

uint64_t sub_80948(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  sub_65B8();
  return _swift_task_switch(v3);
}

uint64_t sub_80974()
{
  v14 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);

  v2 = sub_8CCEC();
  v3 = sub_8D11C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    v7 = sub_7F37C(*(v4 + 16));
    v9 = sub_862D8(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "#UnsupportedDialogFlow executing for reason=%s", v5, 0xCu);
    sub_2714(v6);
    sub_44388();
  }

  sub_8BB9C();
  v10 = sub_8B14C();
  sub_E824(v10);

  *(v0 + 16) = sub_8B13C();
  sub_8B7DC();

  sub_65A0();

  return v11();
}

uint64_t sub_80B5C(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v2[29] = type metadata accessor for HomeCommunicationError(0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for HomeCommunicationSnippetModel(0);
  v2[33] = swift_task_alloc();
  v3 = sub_8B02C();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  sub_2664(&qword_C1CE0, &unk_91EC0);
  v2[37] = swift_task_alloc();
  sub_8B6BC();
  v2[38] = swift_task_alloc();
  v4 = sub_8BCBC();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  sub_2664(&qword_C3B58, &unk_94770);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_80D98);
}

uint64_t sub_80D98()
{
  sub_152A0();
  v1 = v0[28];
  sub_6270(v0[44], 1, 1, v0[32]);
  sub_8B6AC();
  sub_8BC3C();
  v2 = *(v1 + 16);
  v0[45] = v2;
  switch(v2)
  {
    case 0:
      v3 = swift_task_alloc();
      v0[50] = v3;
      *v3 = v0;
      sub_443E0(v3);

      result = sub_13920();
      break;
    case 1:
      v7 = swift_task_alloc();
      v0[57] = v7;
      *v7 = v0;
      sub_443E0(v7);

      result = sub_4BF78();
      break;
    case 2:
      v5 = swift_task_alloc();
      v0[60] = v5;
      *v5 = v0;
      sub_443E0(v5);

      result = sub_3BBD0();
      break;
    case 3:
      v6 = swift_task_alloc();
      v0[63] = v6;
      *v6 = v0;
      sub_443E0(v6);

      result = sub_727E0();
      break;
    default:
      v0[46] = *(v0[28] + 72);
      v8 = swift_task_alloc();
      v0[47] = v8;
      *v8 = v0;
      sub_443E0(v8);

      result = sub_4D8F4(v2);
      break;
  }

  return result;
}

uint64_t sub_81064()
{
  sub_6608();
  sub_E884();
  *(v2 + 384) = v1;
  *(v2 + 392) = v0;

  sub_65B8();

  return _swift_task_switch(v3);
}

uint64_t sub_8116C()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v6 = *v2;
  sub_E6F8();
  *v7 = v6;
  *(v4 + 408) = v0;

  if (!v0)
  {
    *(v4 + 416) = v1;
  }

  sub_4DF78();

  return _swift_task_switch(v8);
}

uint64_t sub_81270()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 416);
  sub_844D0();
  sub_8447C();
  if (v2)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    sub_844C0(v4);
    v5 = sub_2664(&qword_C0690, &unk_8EBF0);
    v6 = sub_44464(v5);
    v7 = sub_84600(v6);
    sub_84568(v7, xmmword_8E860);
    v8 = v1;
    v9 = swift_task_alloc();
    v10 = sub_844A0(v9);
    *v10 = v11;
    sub_843A0(v10);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
  }

  else
  {
    sub_84574();
    v18 = sub_8B8FC();
    sub_60BD8(v18);
    v19 = sub_8B8EC();
    sub_84444(v19);
    sub_843C8();
    v22 = sub_83BAC(v20, 255, v21, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v23 = sub_8464C(v22);
    sub_8470C(v23);
    v24 = sub_2664(&qword_C0690, &unk_8EBF0);
    v25 = sub_44464(v24);
    v26 = sub_845F4(v25);
    sub_84568(v26, xmmword_8E860);
    v27 = v1;
    v28 = swift_task_alloc();
    v29 = sub_844B0(v28);
    *v29 = v30;
    sub_84378(v29);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_81434()
{
  sub_71288();
  sub_71264();
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  sub_8BE1C();
  sub_622C((v0 + 56), *(v0 + 80));
  sub_845C0();
  *(v0 + 616) = sub_8B62C() & 1;
  sub_2714((v0 + 56));
  sub_8CA8C();

  *(v0 + 424) = sub_8CA6C();
  v4 = sub_8BB2C();
  sub_E824(v4);

  sub_8BB1C();
  sub_8BE1C();
  sub_622C((v0 + 96), *(v0 + 120));
  sub_845C0();
  sub_8B5DC();
  sub_8BB0C();
  v6 = v5;

  (*(v2 + 8))(v1, v3);
  sub_2714((v0 + 96));
  if (v6)
  {
    sub_8CF2C();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 296);
  v9 = sub_8C99C();
  sub_6270(v8, v7, 1, v9);
  v10 = swift_task_alloc();
  *(v0 + 432) = v10;
  *v10 = v0;
  v10[1] = sub_81648;
  sub_5A0BC();

  return sub_4CCF8();
}

uint64_t sub_81648()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v6 = *v2;
  sub_E6F8();
  *v7 = v6;
  *(v4 + 440) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 448) = v1;
  }

  sub_65B8();

  return _swift_task_switch(v8);
}

uint64_t sub_8177C()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v45 = *(v0 + 296);
  v3 = *(v0 + 256);
  if (*(v0 + 616))
  {
    v4 = 0x8000000000095F70;
  }

  else
  {
    v4 = 0xEE00656D6F482E65;
  }

  if (*(v0 + 616))
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x6C7070612E6D6F63;
  }

  v6 = sub_8CA0C();
  v8 = v7;

  *(v0 + 160) = v5;
  *(v0 + 168) = v4;
  sub_8B05C();
  type metadata accessor for HomeAppLaunchModel(0);
  *(v0 + 176) = v6;
  *(v0 + 184) = v8;
  sub_8B05C();
  sub_1151C(v1, &qword_C3B58, &unk_94770);
  swift_storeEnumTagMultiPayload();
  sub_6270(v2, 0, 1, v3);
  sub_83B3C(v2, v1);
  sub_8BC6C();

  sub_1151C(v45, &qword_C1CE0, &unk_91EC0);
  v9 = *(v0 + 384);
  *(v0 + 528) = v9;
  sub_83A14(*(v0 + 352), *(v0 + 336));
  sub_8447C();
  if (v10)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v11 = sub_8B8FC();
    sub_60BD8(v11);
    v12 = sub_8B8EC();
    sub_844C0(v12);
    v13 = sub_2664(&qword_C0690, &unk_8EBF0);
    v14 = sub_44464(v13);
    v15 = sub_84600(v14);
    sub_84568(v15, xmmword_8E860);
    v16 = v9;
    v17 = swift_task_alloc();
    v18 = sub_844A0(v17);
    *v18 = v19;
    sub_843A0(v18);
    sub_711D0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v20, v21, v22, v23, v24);
  }

  else
  {
    sub_84574();
    v25 = sub_8B8FC();
    sub_60BD8(v25);
    v26 = sub_8B8EC();
    sub_84444(v26);
    sub_843C8();
    v29 = sub_83BAC(v27, 255, v28, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v30 = sub_8464C(v29);
    sub_8470C(v30);
    v31 = sub_2664(&qword_C0690, &unk_8EBF0);
    v32 = sub_44464(v31);
    v33 = sub_845F4(v32);
    sub_84568(v33, xmmword_8E860);
    v34 = v9;
    v35 = swift_task_alloc();
    v36 = sub_844B0(v35);
    *v36 = v37;
    sub_84378(v36);
    sub_8441C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v38, v39, v40, v41, v42, v43);
  }
}

uint64_t sub_81AC8()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v6 = *v2;
  sub_E6F8();
  *v7 = v6;
  *(v4 + 464) = v0;

  if (!v0)
  {
    *(v4 + 472) = v1;
  }

  sub_4DF78();

  return _swift_task_switch(v8);
}

uint64_t sub_81BCC()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 472);
  sub_844D0();
  sub_8447C();
  if (v2)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    sub_844C0(v4);
    v5 = sub_2664(&qword_C0690, &unk_8EBF0);
    v6 = sub_44464(v5);
    v7 = sub_84600(v6);
    sub_84568(v7, xmmword_8E860);
    v8 = v1;
    v9 = swift_task_alloc();
    v10 = sub_844A0(v9);
    *v10 = v11;
    sub_843A0(v10);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
  }

  else
  {
    sub_84574();
    v18 = sub_8B8FC();
    sub_60BD8(v18);
    v19 = sub_8B8EC();
    sub_84444(v19);
    sub_843C8();
    v22 = sub_83BAC(v20, 255, v21, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v23 = sub_8464C(v22);
    sub_8470C(v23);
    v24 = sub_2664(&qword_C0690, &unk_8EBF0);
    v25 = sub_44464(v24);
    v26 = sub_845F4(v25);
    sub_84568(v26, xmmword_8E860);
    v27 = v1;
    v28 = swift_task_alloc();
    v29 = sub_844B0(v28);
    *v29 = v30;
    sub_84378(v29);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_81D90()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v6 = *v2;
  sub_E6F8();
  *v7 = v6;
  *(v4 + 488) = v0;

  if (!v0)
  {
    *(v4 + 496) = v1;
  }

  sub_4DF78();

  return _swift_task_switch(v8);
}

uint64_t sub_81E94()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 496);
  sub_844D0();
  sub_8447C();
  if (v2)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    sub_844C0(v4);
    v5 = sub_2664(&qword_C0690, &unk_8EBF0);
    v6 = sub_44464(v5);
    v7 = sub_84600(v6);
    sub_84568(v7, xmmword_8E860);
    v8 = v1;
    v9 = swift_task_alloc();
    v10 = sub_844A0(v9);
    *v10 = v11;
    sub_843A0(v10);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
  }

  else
  {
    sub_84574();
    v18 = sub_8B8FC();
    sub_60BD8(v18);
    v19 = sub_8B8EC();
    sub_84444(v19);
    sub_843C8();
    v22 = sub_83BAC(v20, 255, v21, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v23 = sub_8464C(v22);
    sub_8470C(v23);
    v24 = sub_2664(&qword_C0690, &unk_8EBF0);
    v25 = sub_44464(v24);
    v26 = sub_845F4(v25);
    sub_84568(v26, xmmword_8E860);
    v27 = v1;
    v28 = swift_task_alloc();
    v29 = sub_844B0(v28);
    *v29 = v30;
    sub_84378(v29);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_82058()
{
  sub_152A0();
  sub_4DF68();
  v4 = v3;
  sub_4DF58();
  *v5 = v4;
  v6 = *v2;
  sub_E6F8();
  *v7 = v6;
  *(v4 + 512) = v0;

  if (!v0)
  {
    *(v4 + 520) = v1;
  }

  sub_4DF78();

  return _swift_task_switch(v8);
}

uint64_t sub_8215C()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 520);
  sub_844D0();
  sub_8447C();
  if (v2)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v3 = sub_8B8FC();
    sub_60BD8(v3);
    v4 = sub_8B8EC();
    sub_844C0(v4);
    v5 = sub_2664(&qword_C0690, &unk_8EBF0);
    v6 = sub_44464(v5);
    v7 = sub_84600(v6);
    sub_84568(v7, xmmword_8E860);
    v8 = v1;
    v9 = swift_task_alloc();
    v10 = sub_844A0(v9);
    *v10 = v11;
    sub_843A0(v10);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v12, v13, v14, v15, v16);
  }

  else
  {
    sub_84574();
    v18 = sub_8B8FC();
    sub_60BD8(v18);
    v19 = sub_8B8EC();
    sub_84444(v19);
    sub_843C8();
    v22 = sub_83BAC(v20, 255, v21, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v23 = sub_8464C(v22);
    sub_8470C(v23);
    v24 = sub_2664(&qword_C0690, &unk_8EBF0);
    v25 = sub_44464(v24);
    v26 = sub_845F4(v25);
    sub_84568(v26, xmmword_8E860);
    v27 = v1;
    v28 = swift_task_alloc();
    v29 = sub_844B0(v28);
    *v29 = v30;
    sub_84378(v29);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_82320()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65B8();

  return _swift_task_switch(v3);
}

uint64_t sub_82440()
{
  v1 = v0[66];
  v2 = v0[44];
  (*(v0[40] + 8))(v0[41], v0[39]);
  sub_1151C(v2, &qword_C3B58, &unk_94770);

  sub_84618();

  sub_65A0();

  return v3();
}

uint64_t sub_82540()
{
  sub_152A0();
  sub_E884();
  v2 = v1;
  sub_4DF58();
  *v3 = v2;
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  sub_2714((v2 + 16));
  sub_65B8();

  return _swift_task_switch(v6);
}

uint64_t sub_82668()
{
  v1 = v0[66];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  sub_83AE8(v0[33], type metadata accessor for HomeCommunicationSnippetModel);
  (*(v4 + 8))(v3, v5);
  sub_1151C(v2, &qword_C3B58, &unk_94770);

  sub_84618();

  sub_65A0();

  return v6();
}

uint64_t sub_8278C()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 608) = v3;
  }

  sub_65B8();

  return _swift_task_switch(v9);
}

uint64_t sub_8289C()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 608);
  v2 = *(v0 + 617);

  if (v2)
  {
  }

  sub_844D0();
  sub_8447C();
  if (v3)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v4 = sub_8B8FC();
    sub_60BD8(v4);
    v5 = sub_8B8EC();
    sub_844C0(v5);
    v6 = sub_2664(&qword_C0690, &unk_8EBF0);
    v7 = sub_44464(v6);
    v8 = sub_84600(v7);
    sub_84568(v8, xmmword_8E860);
    v9 = v1;
    v10 = swift_task_alloc();
    v11 = sub_844A0(v10);
    *v11 = v12;
    sub_843A0(v11);
    sub_711D0();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v14, v15, v16, v17);
  }

  else
  {
    sub_84574();
    v19 = sub_8B8FC();
    sub_60BD8(v19);
    v20 = sub_8B8EC();
    sub_84444(v20);
    sub_843C8();
    v23 = sub_83BAC(v21, 255, v22, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v24 = sub_8464C(v23);
    sub_8470C(v24);
    v25 = sub_2664(&qword_C0690, &unk_8EBF0);
    v26 = sub_44464(v25);
    v27 = sub_845F4(v26);
    sub_84568(v27, xmmword_8E860);
    v28 = v1;
    v29 = swift_task_alloc();
    v30 = sub_844B0(v29);
    *v30 = v31;
    sub_84378(v30);
    sub_8441C();
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v32, v33, v34, v35, v36, v37);
  }
}

uint64_t sub_82A78()
{
  sub_60C80();
  sub_4DFB4();
  v1 = [objc_allocWithZone(DialogExecutionResult) init];
  v2 = *(v0 + 617);

  if (v2)
  {
  }

  *(v0 + 528) = v1;
  v3 = *(v0 + 336);
  v4 = *(v0 + 256);
  sub_83A14(*(v0 + 352), v3);
  if (sub_3364(v3, 1, v4) == 1)
  {
    sub_1151C(*(v0 + 336), &qword_C3B58, &unk_94770);
    v5 = sub_8B8FC();
    sub_E824(v5);
    v6 = sub_8B8EC();
    sub_844C0(v6);
    v7 = sub_2664(&qword_C0690, &unk_8EBF0);
    v8 = sub_44464(v7);
    *(v0 + 544) = v8;
    *(v8 + 16) = xmmword_8E860;
    *(v8 + 32) = v1;
    v9 = v1;
    v10 = swift_task_alloc();
    v11 = sub_844A0(v10);
    *v11 = v12;
    sub_843A0(v11);
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v14, v15, v16, v17);
  }

  else
  {
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    sub_83A84(*(v0 + 336), v19);
    v21 = sub_8B8FC();
    sub_E824(v21);
    v22 = sub_8B8EC();
    *(v0 + 560) = v22;
    *(v0 + 208) = v22;
    *(v0 + 40) = v20;
    sub_843C8();
    v25 = sub_83BAC(v23, 255, v24, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v26 = sub_8464C(v25);
    sub_26984(v19, v26);
    v27 = sub_2664(&qword_C0690, &unk_8EBF0);
    v28 = sub_44464(v27);
    *(v0 + 568) = v28;
    *(v28 + 16) = xmmword_8E860;
    *(v28 + 32) = v1;
    v29 = v1;
    v30 = swift_task_alloc();
    v31 = sub_844B0(v30);
    *v31 = v32;
    sub_84378(v31);
    sub_60C6C();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v33, v34, v35, v36, v37, v38);
  }
}

void *sub_83448()
{
  sub_83BF4(*(v0 + 16));
  sub_2714((v0 + 24));

  return v0;
}

uint64_t sub_83490()
{
  sub_83448();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_834E8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_8350C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_83560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_835BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_83610(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E2A0;

  return sub_80948(a1);
}

uint64_t sub_836AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsupportedDialogFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_836E4()
{
  result = qword_C3AD8;
  if (!qword_C3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AD8);
  }

  return result;
}

unint64_t sub_83738()
{
  result = qword_C3AE0;
  if (!qword_C3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AE0);
  }

  return result;
}

unint64_t sub_8378C()
{
  result = qword_C3AE8;
  if (!qword_C3AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AE8);
  }

  return result;
}

unint64_t sub_837E0()
{
  result = qword_C3AF0;
  if (!qword_C3AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AF0);
  }

  return result;
}

unint64_t sub_83834()
{
  result = qword_C3AF8;
  if (!qword_C3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3AF8);
  }

  return result;
}

unint64_t sub_83888()
{
  result = qword_C3B10;
  if (!qword_C3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B10);
  }

  return result;
}

uint64_t sub_838DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(&qword_C2408, &unk_92390);
    sub_83BAC(a2, 255, &type metadata accessor for SpeakableString, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8397C()
{
  sub_6608();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_E2A0;

  return sub_80B5C(v3, v0);
}

uint64_t sub_83A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3B58, &unk_94770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_83A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeCommunicationSnippetModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83AE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_11580();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_83B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3B58, &unk_94770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83BAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_83BF4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsupportedDialogFlow.Reason.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnsupportedDialogFlow.Reason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x83D58);
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

_BYTE *storeEnumTagSinglePayload for UnsupportedDialogFlow.Reason.UnsupportedRecipientsNoTargetFoundCodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x83E3CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_83EA8()
{
  result = qword_C3B60;
  if (!qword_C3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B60);
  }

  return result;
}

unint64_t sub_83F00()
{
  result = qword_C3B68;
  if (!qword_C3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B68);
  }

  return result;
}

unint64_t sub_83F58()
{
  result = qword_C3B70;
  if (!qword_C3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B70);
  }

  return result;
}

unint64_t sub_83FB0()
{
  result = qword_C3B78;
  if (!qword_C3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B78);
  }

  return result;
}

unint64_t sub_84008()
{
  result = qword_C3B80;
  if (!qword_C3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B80);
  }

  return result;
}

unint64_t sub_84060()
{
  result = qword_C3B88;
  if (!qword_C3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B88);
  }

  return result;
}

unint64_t sub_840B8()
{
  result = qword_C3B90;
  if (!qword_C3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B90);
  }

  return result;
}

unint64_t sub_84110()
{
  result = qword_C3B98;
  if (!qword_C3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3B98);
  }

  return result;
}

unint64_t sub_84168()
{
  result = qword_C3BA0;
  if (!qword_C3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BA0);
  }

  return result;
}

unint64_t sub_841C0()
{
  result = qword_C3BA8;
  if (!qword_C3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BA8);
  }

  return result;
}

unint64_t sub_84218()
{
  result = qword_C3BB0;
  if (!qword_C3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BB0);
  }

  return result;
}

unint64_t sub_84270()
{
  result = qword_C3BB8;
  if (!qword_C3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BB8);
  }

  return result;
}

unint64_t sub_842C8()
{
  result = qword_C3BC0;
  if (!qword_C3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BC0);
  }

  return result;
}

unint64_t sub_84320()
{
  result = qword_C3BC8;
  if (!qword_C3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3BC8);
  }

  return result;
}

uint64_t sub_84444(uint64_t result)
{
  v1[70] = result;
  v1[26] = result;
  v1[5] = v2;
  return result;
}

uint64_t sub_84458()
{

  return swift_getErrorValue();
}

uint64_t sub_844C0(uint64_t result)
{
  *(v1 + 536) = result;
  *(v1 + 200) = result;
  return result;
}

uint64_t sub_844D0()
{
  v0[66] = v1;
  v3 = v0[44];
  v4 = v0[42];

  return sub_83A14(v3, v4);
}

uint64_t sub_844F4()
{
  sub_2714(v0);
}

uint64_t sub_84528(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_84548(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

__n128 *sub_84568(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_84574()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 264);

  return sub_83A84(v2, v3);
}

uint64_t sub_84590()
{

  return swift_slowAlloc();
}

uint64_t sub_845CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_8D3FC();
}

uint64_t sub_84618()
{
}

uint64_t *sub_8464C(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_E5DC((v1 + 16));
}

uint64_t sub_84664(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_862D8(a1, a2, &a9);
}

uint64_t sub_8467C()
{

  return sub_15350(v0);
}

uint64_t sub_84694()
{

  return sub_8D4BC();
}

uint64_t sub_846AC(float a1)
{
  *v1 = a1;

  return sub_7F37C(v2);
}

uint64_t sub_846C4()
{
}

uint64_t sub_846DC()
{

  return sub_8CD0C();
}

uint64_t sub_846F4()
{

  return sub_83AE8(v1, v0);
}

uint64_t sub_8470C(uint64_t a1)
{

  return sub_26984(v1, a1);
}

uint64_t sub_84724()
{
}

uint64_t sub_84770(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  sub_65B8();
  return _swift_task_switch(v3);
}

uint64_t sub_8479C()
{
  v29 = v0;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_8CD0C();
  v0[29] = sub_33F4(v2, qword_C3DF8);

  v3 = sub_8CCEC();
  v4 = sub_8D11C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    sub_1D358();
    v6 = sub_868E0();
    v28 = v6;
    *v1 = 136315138;
    v7 = sub_261EC(*(v5 + 16));
    v9 = sub_862D8(v7, v8, &v28);

    *(v1 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "#UnsupportedFlowOutputFactory makeUnsupportedOutput for reason=%s", v1, 0xCu);
    sub_2714(v6);

    sub_1D214();
  }

  switch(*(v0[28] + 16))
  {
    case 1:
      v22 = swift_task_alloc();
      v0[31] = v22;
      *v22 = v0;
      sub_443E0(v22);
      sub_8699C();

      result = sub_4BF78();
      break;
    case 2:
      v15 = swift_task_alloc();
      v0[34] = v15;
      *v15 = v0;
      sub_443E0(v15);
      sub_8699C();

      result = sub_4D3A8();
      break;
    case 3:
      v17 = swift_task_alloc();
      v0[36] = v17;
      *v17 = v0;
      v17[1] = sub_85AB0;
      sub_8699C();

      result = sub_4D8F4(v18);
      break;
    case 4:
      v13 = swift_task_alloc();
      v0[32] = v13;
      *v13 = v0;
      sub_443E0(v13);
      sub_8699C();

      result = sub_3BBD0();
      break;
    case 5:
      v24 = swift_task_alloc();
      v0[33] = v24;
      *v24 = v0;
      sub_443E0(v24);
      sub_8699C();

      result = sub_727E0();
      break;
    case 6:
      v26 = swift_task_alloc();
      v0[35] = v26;
      *v26 = v0;
      sub_443E0(v26);
      sub_8699C();

      result = sub_4C878();
      break;
    case 7:
      v20 = swift_task_alloc();
      v0[37] = v20;
      *v20 = v0;
      sub_443E0(v20);
      sub_8699C();

      result = sub_4DA30();
      break;
    default:
      v10 = swift_task_alloc();
      v0[30] = v10;
      *v10 = v0;
      sub_443E0(v10);
      sub_8699C();

      result = sub_4D44C();
      break;
  }

  return result;
}

uint64_t sub_84C70()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  sub_60C10();
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_84D84()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 24));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6, v7);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v8, v9, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v10 = sub_869B4();
  sub_868FC(v10);
  v11 = sub_8B8EC();
  sub_8687C(v11);
  v12 = sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = sub_44464(v12);
  v14 = sub_8696C(v13);
  sub_86990(v14, xmmword_8E860);
  v15 = swift_task_alloc();
  v16 = sub_8689C(v15);
  *v16 = v17;
  sub_86844(v16);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22);
}

uint64_t sub_84ED0()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  sub_60C10();
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_84FE4()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 48));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6, v7);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v8, v9, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v10 = sub_869B4();
  sub_868FC(v10);
  v11 = sub_8B8EC();
  sub_8687C(v11);
  v12 = sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = sub_44464(v12);
  v14 = sub_8696C(v13);
  sub_86990(v14, xmmword_8E860);
  v15 = swift_task_alloc();
  v16 = sub_8689C(v15);
  *v16 = v17;
  sub_86844(v16);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22);
}

uint64_t sub_85130()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  sub_60C10();
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_85244()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 72));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6, v7);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v8, v9, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v10 = sub_869B4();
  sub_868FC(v10);
  v11 = sub_8B8EC();
  sub_8687C(v11);
  v12 = sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = sub_44464(v12);
  v14 = sub_8696C(v13);
  sub_86990(v14, xmmword_8E860);
  v15 = swift_task_alloc();
  v16 = sub_8689C(v15);
  *v16 = v17;
  sub_86844(v16);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22);
}

uint64_t sub_85390()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  sub_60C10();
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_854A4()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 96));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6, v7);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v8, v9, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v10 = sub_869B4();
  sub_868FC(v10);
  v11 = sub_8B8EC();
  sub_8687C(v11);
  v12 = sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = sub_44464(v12);
  v14 = sub_8696C(v13);
  sub_86990(v14, xmmword_8E860);
  v15 = swift_task_alloc();
  v16 = sub_8689C(v15);
  *v16 = v17;
  sub_86844(v16);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22);
}

uint64_t sub_855F0()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  sub_60C10();
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_85704()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 120));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6, v7);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v8, v9, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v10 = sub_869B4();
  sub_868FC(v10);
  v11 = sub_8B8EC();
  sub_8687C(v11);
  v12 = sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = sub_44464(v12);
  v14 = sub_8696C(v13);
  sub_86990(v14, xmmword_8E860);
  v15 = swift_task_alloc();
  v16 = sub_8689C(v15);
  *v16 = v17;
  sub_86844(v16);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22);
}

uint64_t sub_85850()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  sub_60C10();
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_85964()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 144));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6, v7);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v8, v9, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v10 = sub_869B4();
  sub_868FC(v10);
  v11 = sub_8B8EC();
  sub_8687C(v11);
  v12 = sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = sub_44464(v12);
  v14 = sub_8696C(v13);
  sub_86990(v14, xmmword_8E860);
  v15 = swift_task_alloc();
  v16 = sub_8689C(v15);
  *v16 = v17;
  sub_86844(v16);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22);
}

uint64_t sub_85AB0()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  sub_60C10();
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_85BC4()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 168));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6, v7);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v8, v9, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v10 = sub_869B4();
  sub_868FC(v10);
  v11 = sub_8B8EC();
  sub_8687C(v11);
  v12 = sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = sub_44464(v12);
  v14 = sub_8696C(v13);
  sub_86990(v14, xmmword_8E860);
  v15 = swift_task_alloc();
  v16 = sub_8689C(v15);
  *v16 = v17;
  sub_86844(v16);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22);
}

uint64_t sub_85D10()
{
  sub_6608();
  sub_E884();
  sub_8688C();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  sub_60C10();
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;

  if (v0)
  {
    sub_65A0();

    return v7();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v9);
  }
}

uint64_t sub_85E24()
{
  sub_86934();
  sub_86984();
  v2 = sub_869E4(*(v1 + 192));
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (sub_22B18(v4))
  {
    sub_1D358();
    sub_868E0();
    sub_86978();
    *v0 = 136315138;
    v5 = [v2 catId];
    sub_8CEDC();
    sub_869CC();
    sub_86918(v6, v7);
    sub_869FC();
    *(v0 + 4) = v5;
    sub_5D4E8(&dword_0, v8, v9, "#UnsupportedFlowOutputFactory dialogExecutionResult.catId: %s");
    sub_868AC();
    sub_1D214();
  }

  v10 = sub_869B4();
  sub_868FC(v10);
  v11 = sub_8B8EC();
  sub_8687C(v11);
  v12 = sub_2664(&qword_C0690, &unk_8EBF0);
  v13 = sub_44464(v12);
  v14 = sub_8696C(v13);
  sub_86990(v14, xmmword_8E860);
  v15 = swift_task_alloc();
  v16 = sub_8689C(v15);
  *v16 = v17;
  sub_86844(v16);
  sub_86868();
  sub_86950();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22);
}

uint64_t sub_85F70()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65B8();

  return _swift_task_switch(v3);
}

uint64_t sub_86090()
{
  sub_6608();

  sub_65A0();

  return v1();
}

char *sub_860EC()
{
  sub_2714((v0 + 24));

  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin28UnsupportedFlowOutputFactory_completionOutputManifest;
  v2 = sub_8BCBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_86174()
{
  sub_860EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for UnsupportedFlowOutputFactory(uint64_t a1)
{
  result = qword_C3BF8;
  if (!qword_C3BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_86220(uint64_t a1)
{
  result = sub_8BCBC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_862D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_65B8();
  v9 = sub_86398(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_1412C(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_2714(v14);
  return v10;
}

unint64_t sub_86398(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_86498(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_8D2BC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_86498(uint64_t a1, unint64_t a2)
{
  v3 = sub_864E4(a1, a2);
  sub_865FC(&off_B6D80);
  return v3;
}

void *sub_864E4(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_8CF8C())
  {
    result = sub_866E0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_8D24C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_8D2BC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_865FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_86750(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_866E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_2664(&qword_C3CB8, &unk_94D60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_86750(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2664(&qword_C3CB8, &unk_94D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_8687C(uint64_t result)
{
  *(v1 + 312) = result;
  *(v1 + 208) = result;
  return result;
}

uint64_t sub_868AC()
{
  sub_2714(v0);
}

uint64_t sub_868E0()
{

  return swift_slowAlloc();
}

uint64_t sub_868FC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_86918(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_862D8(v2, v3, va);
}

__n128 *sub_86990(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_869B4()
{

  return sub_8B8FC();
}

void sub_869CC()
{
}

id sub_869E4@<X0>(void *a1@<X8>)
{
  *(v1 + 304) = a1;

  return a1;
}

uint64_t sub_869FC()
{
}

_BYTE *storeEnumTagSinglePayload for UserNotificationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x86AE0);
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

unint64_t sub_86B1C()
{
  result = qword_C3CD0;
  if (!qword_C3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CD0);
  }

  return result;
}

uint64_t sub_86B70(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_B90A8;
  v7._object = a2;
  v4 = sub_8D39C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_86BC4(char a1)
{
  if (a1)
  {
    return 0x79726576696C6564;
  }

  else
  {
    return 0x65636E756F6E6E61;
  }
}

uint64_t sub_86C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_86B70(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_86C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_86BC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_86CA0()
{
  v0 = qword_C3CC0;

  return v0;
}

uint64_t sub_86CD8(uint64_t a1)
{
  v2 = sub_8711C();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_86D14(uint64_t a1)
{
  v2 = sub_8711C();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_86D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_86F58();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_86D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8711C();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_86E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_86F58();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

unint64_t sub_86E50()
{
  result = qword_C3CD8;
  if (!qword_C3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CD8);
  }

  return result;
}

unint64_t sub_86EA8()
{
  result = qword_C3CE0;
  if (!qword_C3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CE0);
  }

  return result;
}

unint64_t sub_86F00()
{
  result = qword_C3CE8;
  if (!qword_C3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CE8);
  }

  return result;
}

unint64_t sub_86F58()
{
  result = qword_C3CF0;
  if (!qword_C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CF0);
  }

  return result;
}

unint64_t sub_86FB0()
{
  result = qword_C3CF8;
  if (!qword_C3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3CF8);
  }

  return result;
}

unint64_t sub_87008()
{
  result = qword_C3D00;
  if (!qword_C3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D00);
  }

  return result;
}

unint64_t sub_87060()
{
  result = qword_C3D08;
  if (!qword_C3D08)
  {
    sub_B9BC(&qword_C3D10, &qword_94ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D08);
  }

  return result;
}

unint64_t sub_870C8()
{
  result = qword_C3D18;
  if (!qword_C3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D18);
  }

  return result;
}

unint64_t sub_8711C()
{
  result = qword_C3D20;
  if (!qword_C3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3D20);
  }

  return result;
}

uint64_t sub_87174()
{
  v0 = 0;
  v1 = 0x73656D616ELL;
  v135 = sub_8C48C();
  sub_3488();
  v127 = v2;
  __chkstk_darwin(v3);
  sub_9378();
  v121 = v4;
  sub_22ACC();
  __chkstk_darwin(v5);
  v130 = &v115 - v6;
  v137 = sub_8C1CC();
  sub_3488();
  v134 = v7;
  __chkstk_darwin(v8);
  sub_9378();
  v126 = v9;
  sub_22ACC();
  v11 = __chkstk_darwin(v10);
  v13 = &v115 - v12;
  __chkstk_darwin(v11);
  v136 = &v115 - v14;
  sub_22ACC();
  __chkstk_darwin(v15);
  v17 = &v115 - v16;
  v18 = sub_2664(&qword_C3D28, &qword_94FB0);
  __chkstk_darwin(v18 - 8);
  sub_9378();
  v129 = v19;
  sub_22ACC();
  __chkstk_darwin(v20);
  v128 = (&v115 - v21);
  sub_22ACC();
  v23 = __chkstk_darwin(v22);
  v25 = &v115 - v24;
  __chkstk_darwin(v23);
  v138 = (&v115 - v26);
  sub_22ACC();
  __chkstk_darwin(v27);
  v29 = &v115 - v28;
  v139 = sub_8C1FC();
  sub_3488();
  v124 = v30;
  __chkstk_darwin(v31);
  sub_9378();
  v120 = v32;
  sub_22ACC();
  __chkstk_darwin(v33);
  v132 = &v115 - v34;
  sub_8C19C();
  v35 = sub_8C78C();

  v36 = sub_5A2B4(0x73656D616ELL, 0xE500000000000000, v35);

  if (!v36)
  {
    if (qword_BF818 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

  v37 = sub_2D3B4();
  v122 = v25;
  v118 = v13;
  v119 = v17;
  if (v37)
  {
    v38 = v37;
    v140 = _swiftEmptyArrayStorage;
    sub_55244(0, v37 & ~(v37 >> 63), 0);
    if (v38 < 0)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      swift_once();
LABEL_13:
      v44 = sub_8CD0C();
      sub_33F4(v44, qword_C3DF8);
      v45 = sub_8CCEC();
      v46 = sub_8D11C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v140 = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_862D8(v1, 0xE500000000000000, &v140);
        _os_log_impl(&dword_0, v45, v46, "#UsoEntity_common_UserEntity+SiriHomeCommunication no entity spans for attribute %s.", v47, 0xCu);
        sub_2714(v48);
      }

      return 0;
    }

    v133 = 0;
    v39 = 0;
    v1 = v140;
    v40 = v38;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        sub_8D27C();
      }

      else
      {
      }

      v41 = sub_8C72C();

      v140 = v1;
      v43 = *(v1 + 16);
      v42 = *(v1 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_55244((v42 > 1), v43 + 1, 1);
        v1 = v140;
      }

      ++v39;
      *(v1 + 16) = v43 + 1;
      *(v1 + 8 * v43 + 32) = v41;
    }

    while (v40 != v39);

    v0 = v133;
  }

  else
  {

    v1 = _swiftEmptyArrayStorage;
  }

  v49 = 0;
  v50 = *(v1 + 16);
  v131 = (v124 + 32);
  v133 = _swiftEmptyArrayStorage;
  v51 = v139;
  while (1)
  {
    if (v50 == v49)
    {

      v60 = v122;
      sub_87EAC(v133, v122);

      v61 = v128;
      sub_888B8(v60, v128);
      if (sub_3364(v61, 1, v51) == 1)
      {
        sub_92C0(v61, &qword_C3D28, &qword_94FB0);
        v62 = v129;
      }

      else
      {
        v63 = sub_8A16C();
        (*(v124 + 8))(v61, v139);
        v51 = v139;
        v62 = v129;
        if (v63 != 2)
        {
          if (v63)
          {
            v80 = 0x6E69685F6D6F6F72;
          }

          else
          {
            v80 = 0x69685F6573756F68;
          }

          sub_92C0(v60, &qword_C3D28, &qword_94FB0);
          return v80;
        }
      }

      sub_888B8(v60, v62);
      if (sub_3364(v62, 1, v51) == 1)
      {
        sub_92C0(v60, &qword_C3D28, &qword_94FB0);
        v64 = v62;
LABEL_61:
        sub_92C0(v64, &qword_C3D28, &qword_94FB0);
        return 0;
      }

      (*v131)(v120, v62, v51);
      v65 = sub_8C1DC();
      v66 = 0;
      v125 = *(v65 + 16);
      v67 = v135;
      v133 = (v134 + 16);
      v123 = enum case for IdentifierNamespace.nsSemanticValue(_:);
      v131 = (v127 + 8);
      v132 = (v127 + 104);
      v138 = (v134 + 8);
      while (1)
      {
        if (v125 == v66)
        {

          v81 = sub_8A140();
          v82(v81, v139);
          v64 = v122;
          goto LABEL_61;
        }

        if (v66 >= *(v65 + 16))
        {
          goto LABEL_70;
        }

        v68 = (*(v134 + 80) + 32) & ~*(v134 + 80);
        v69 = v65;
        v127 = *(v134 + 72);
        v129 = *(v134 + 16);
        v129(v136, v65 + v68 + v127 * v66, v137);
        v70 = sub_8C1BC();
        v72 = v71;
        v73 = v130;
        v128 = *v132;
        (v128)(v130, v123, v67);
        v74 = sub_8C47C();
        v76 = v75;
        v77 = v73;
        v78 = *v131;
        (*v131)(v77, v67);
        if (v70 == v74 && v72 == v76)
        {
          break;
        }

        v1 = sub_8D45C();

        if (v1)
        {
          goto LABEL_48;
        }

        (*v138)(v136, v137);
        ++v66;
        v65 = v69;
      }

LABEL_48:

      v83 = v119;
      v1 = v134 + 32;
      v84 = v137;
      v117 = *(v134 + 32);
      v117(v119, v136, v137);
      v85 = sub_8C1AC();
      v87 = v86;
      v134 = v1;
      v130 = *(v1 - 24);
      (v130)(v83, v84);
      v88 = v122;
      v136 = v78;
      if (!v87)
      {
        v103 = sub_8A140();
        v105 = v139;
LABEL_60:
        v104(v103, v105);
        v64 = v88;
        goto LABEL_61;
      }

      v116 = v85;
      v119 = v87;
      v89 = sub_8C1DC();
      v90 = 0;
      v125 = *(v89 + 16);
      v91 = v89 + v68;
      v123 = enum case for IdentifierNamespace.nsHomeKitEntityType(_:);
      while (1)
      {
        v92 = v139;
        if (v125 == v90)
        {

          v103 = sub_8A140();
          v105 = v92;
          goto LABEL_60;
        }

        if (v90 >= *(v89 + 16))
        {
          goto LABEL_71;
        }

        v93 = v91;
        (v129)(v126);
        v94 = sub_8C1BC();
        v96 = v95;
        v97 = v121;
        v1 = v135;
        (v128)(v121, v123, v135);
        v98 = sub_8C47C();
        v100 = v99;
        (v136)(v97, v1);
        if (v94 == v98 && v96 == v100)
        {
          v107 = v116;

          goto LABEL_66;
        }

        v102 = sub_8D45C();

        if (v102)
        {
          break;
        }

        (v130)(v126, v137);
        v91 = v93 + v127;
        ++v90;
        v88 = v122;
      }

      v107 = v116;
LABEL_66:

      v108 = v122;
      v109 = v118;
      v110 = v137;
      v117(v118, v126, v137);
      sub_8C1AC();
      v112 = v111;
      (v130)(v109, v110);
      v113 = sub_8A140();
      v114(v113, v139);
      sub_92C0(v108, &qword_C3D28, &qword_94FB0);
      if (v112)
      {
        return v107;
      }

      return 0;
    }

    if (v49 >= *(v1 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v140 = *(v1 + 8 * v49 + 32);
    swift_bridgeObjectRetain_n();
    v52 = sub_8A154();
    sub_88788(v52, 0);
    if (v0)
    {
      break;
    }

    v53 = v138;
    sub_87F34(v140, v138);

    sub_88848(v53, v29);

    v51 = v139;
    if (sub_3364(v29, 1, v139) == 1)
    {
      sub_92C0(v29, &qword_C3D28, &qword_94FB0);
      ++v49;
    }

    else
    {
      v54 = *v131;
      (*v131)(v132, v29, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_76480();
        v133 = v58;
      }

      v55 = v133[2];
      if (v55 >= v133[3] >> 1)
      {
        sub_76480();
        v133 = v59;
      }

      ++v49;
      v56 = v132;
      v57 = v133;
      v133[2] = v55 + 1;
      v51 = v139;
      v54(v57 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v55, v56, v139);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_87EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v3 = sub_8A154();
  sub_88788(v3, 0);
  sub_87F34(a1, a2);
}

uint64_t sub_87F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_8C1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = (v4 + 8);
  while (v8 != v7)
  {
    (*(v4 + 16))(v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, v3);
    if (sub_8A16C() != 2)
    {
      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v19 = sub_8CD0C();
      sub_33F4(v19, qword_C3DF8);
      v20 = sub_8CCEC();
      v21 = sub_8D11C();
      v22 = os_log_type_enabled(v20, v21);
      v13 = v35;
      if (v22)
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v20, v21, "#UsoEntity_common_UserEntity+SiriHomeCommunication selecting span for house or room hint.", v23, 2u);
      }

      goto LABEL_29;
    }

    v10 = sub_8A3C8();
    if (v11)
    {
      v12 = v11;
      v36 = v10;
      switch(sub_8A6E4())
      {
        case 1u:
          v24 = "homeAutomationRoom";
          goto LABEL_21;
        case 2u:
          v24 = "homeAutomationZone";
LABEL_21:
          v25 = (v24 - 32);
          v26 = 0xD000000000000012;
          break;
        case 3u:
          (*v9)(v6, v3);

          goto LABEL_8;
        default:
          v26 = 0xD00000000000001BLL;
          v25 = "oom_hint";
          break;
      }

      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v27 = sub_8CD0C();
      sub_33F4(v27, qword_C3DF8);

      v28 = sub_8CCEC();
      v29 = sub_8D11C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v37 = v34;
        *v30 = 136315394;
        v31 = sub_862D8(v36, v12, &v37);

        *(v30 + 4) = v31;
        *(v30 + 12) = 2080;
        v32 = sub_862D8(v26, v25 | 0x8000000000000000, &v37);

        *(v30 + 14) = v32;
        _os_log_impl(&dword_0, v28, v29, "#UsoEntity_common_UserEntity+SiriHomeCommunication Selected node name=%s, type=%s.", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v13 = v35;
LABEL_29:
      (*(v4 + 32))(v13, v6, v3);
      v18 = 0;
      return sub_6270(v13, v18, 1, v3);
    }

    (*v9)(v6, v3);
LABEL_8:
    ++v7;
  }

  v13 = v35;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v14 = sub_8CD0C();
  sub_33F4(v14, qword_C3DF8);
  v15 = sub_8CCEC();
  v16 = sub_8D11C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#UsoEntity_common_UserEntity+SiriHomeCommunication no UsoEntitySpan correspond to a HomeAutomationTargetNode.", v17, 2u);
  }

  v18 = 1;
  return sub_6270(v13, v18, 1, v3);
}

BOOL sub_88458()
{
  v0 = sub_2664(&qword_C3D30, &qword_94FB8);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v12 - v4;
  if ((sub_8AA60() & 1) != 0 && (sub_8AA60() & 1) != 0 && (sub_8ABF0() & 1) != 0 && (sub_8ABF0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_8AA60() & 1) != 0 && (sub_8AA60() & 1) != 0 && (sub_8ABF0() & 1) == 0 && (sub_8ABF0() & 1) != 0 || (sub_8AA60() & 1) != 0 && (sub_8AA60() & 1) == 0)
  {
    return 1;
  }

  if (sub_8AA60() & 1) == 0 && (sub_8AA60())
  {
    return 0;
  }

  if (sub_8A16C() != 2 && sub_8A16C() == 2)
  {
    return 1;
  }

  if (sub_8A16C() == 2 && sub_8A16C() != 2)
  {
    return 0;
  }

  if ((sub_8ACD4() & 1) != 0 && (sub_8ACD4() & 1) == 0)
  {
    return 1;
  }

  if (sub_8ACD4() & 1) == 0 && (sub_8ACD4())
  {
    return 0;
  }

  if ((sub_8ADA8() & 1) != 0 && (sub_8ADA8() & 1) == 0)
  {
    return 1;
  }

  if (sub_8ADA8() & 1) == 0 && (sub_8ADA8())
  {
    return 0;
  }

  sub_8C1EC();
  v7 = sub_8C77C();
  if (sub_3364(v5, 1, v7) == 1)
  {
    sub_92C0(v5, &qword_C3D30, &qword_94FB8);
    v8 = -1.0;
  }

  else
  {
    v9 = sub_8C76C();
    (*(*(v7 - 8) + 8))(v5, v7);
    if ((v9 & 0x100000000) != 0)
    {
      v8 = -1.0;
    }

    else
    {
      v8 = *&v9;
    }
  }

  sub_8C1EC();
  if (sub_3364(v3, 1, v7) == 1)
  {
    sub_92C0(v3, &qword_C3D30, &qword_94FB8);
    v10 = -1.0;
  }

  else
  {
    v11 = sub_8C76C();
    (*(*(v7 - 8) + 8))(v3, v7);
    v10 = -1.0;
    if ((v11 & 0x100000000) == 0)
    {
      v10 = *&v11;
    }
  }

  return v10 <= v8;
}

Swift::Int sub_88788(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_8C1FC();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_8A12C(v5);
  }

  result = sub_88928(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_88848(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3D28, &qword_94FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_888B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3D28, &qword_94FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_88928(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = *(v2 + 8);
  result = sub_8D42C(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_8C1FC();
        v9 = sub_8D07C();
        v9[2] = v8;
      }

      v10 = *(sub_8C1FC() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_88D54(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_88A68(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_88A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_8C1FC();
  v12 = __chkstk_darwin(v11);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v54 = &v38 - v15;
  result = __chkstk_darwin(v14);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v17;
    v19 = *v5;
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        v48(v50, v25, v11);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          return (v37)(v28, v11);
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        result = (v33)(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v34)(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = v42 + v38;
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_88D54(char **a1, uint64_t a2, char **a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v169 = a4;
  v170 = a5;
  v150 = a1;
  v8 = sub_8C1FC();
  v9 = __chkstk_darwin(v8);
  v151 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v155 = &v142 - v12;
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v17 = &v142 - v16;
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v21 = &v142 - v20;
  result = __chkstk_darwin(v19);
  v167 = v25;
  v168 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_104:
    v21 = *v150;
    if (*v150)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_106;
    }

    goto LABEL_149;
  }

  v149 = &v142 - v24;
  v157 = v23;
  v158 = v17;
  v153 = v27;
  v154 = v26;
  v145 = a6;
  v29 = 0;
  v164 = v25 + 16;
  v165 = (v25 + 8);
  v166 = result;
  v161 = (v25 + 32);
  v30 = _swiftEmptyArrayStorage;
  v147 = v21;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v162 = v28;
      v33 = *v168;
      v34 = *(v25 + 72);
      v152 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v25 + 16);
      v37 = v29;
      v38 = v166;
      v36(v149, v35, v166);
      v163 = v33;
      v159 = v36;
      v36(v21, &v33[v34 * v37], v38);
      v39 = v149;
      v40 = v171;
      LODWORD(v160) = v169(v149, v21);
      v171 = v40;
      if (v40)
      {
        v141 = *v165;
        (*v165)(v21, v38);
        (v141)(v39, v38);
      }

      v148 = v30;
      v41 = *v165;
      (*v165)(v21, v38);
      v156 = v41;
      result = (v41)(v39, v38);
      v146 = v37;
      v42 = v37 + 2;
      v43 = v162;
      v44 = &v163[v34 * (v37 + 2)];
      v32 = v152;
      v45 = v34;
      v163 = v34;
      while (1)
      {
        v46 = v32;
        v47 = v42;
        if (v32 + 1 >= v43)
        {
          break;
        }

        v21 = v157;
        v48 = v166;
        v49 = v159;
        (v159)(v157, v44, v166);
        v50 = v158;
        v49(v158, v35, v48);
        v51 = v171;
        v52 = v169(v21, v50);
        v171 = v51;
        if (v51)
        {
          v139 = v156;
          (v156)(v50, v48);
          v139(v21, v48);
        }

        v53 = v52;
        v54 = v46;
        v55 = v35;
        v56 = v47;
        v57 = v156;
        (v156)(v50, v48);
        result = v57(v21, v48);
        v47 = v56;
        v58 = v55;
        v46 = v54;
        v43 = v162;
        v45 = v163;
        v44 = &v163[v44];
        v35 = &v163[v58];
        v32 = v54 + 1;
        v42 = v47 + 1;
        if ((v160 ^ v53))
        {
          goto LABEL_11;
        }
      }

      v32 = v43;
LABEL_11:
      if (v160)
      {
        if (v32 < v146)
        {
          goto LABEL_143;
        }

        if (v146 > v46)
        {
          v25 = v167;
          v30 = v148;
          v31 = v146;
          goto LABEL_34;
        }

        if (v43 >= v47)
        {
          v59 = v47;
        }

        else
        {
          v59 = v43;
        }

        v60 = v45 * (v59 - 1);
        v61 = v45 * v59;
        v62 = v146 * v45;
        v152 = v32;
        v63 = v146;
        do
        {
          if (v63 != --v32)
          {
            v64 = *v168;
            if (!*v168)
            {
              goto LABEL_147;
            }

            v65 = v166;
            v21 = *v161;
            (*v161)(v151, &v64[v62], v166);
            v66 = v62 < v60 || &v64[v62] >= &v64[v61];
            if (v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v21)(&v64[v60], v151, v65);
            v45 = v163;
          }

          ++v63;
          v60 -= v45;
          v61 -= v45;
          v62 += v45;
        }

        while (v63 < v32);
        v25 = v167;
        v30 = v148;
        v32 = v152;
      }

      else
      {
        v25 = v167;
        v30 = v148;
      }

      v31 = v146;
    }

LABEL_34:
    v67 = v168[1];
    if (v32 >= v67)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v32, v31))
    {
      goto LABEL_139;
    }

    if (v32 - v31 >= v145)
    {
      goto LABEL_42;
    }

    v68 = (v31 + v145);
    if (__OFADD__(v31, v145))
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      return result;
    }

    if (v68 >= v67)
    {
      v68 = v168[1];
    }

    if (v68 < v31)
    {
      goto LABEL_142;
    }

    if (v32 != v68)
    {
      v148 = v30;
      v114 = *v168;
      v115 = *(v25 + 72);
      v163 = *(v25 + 16);
      v116 = &v114[v115 * (v32 - 1)];
      v160 = -v115;
      v146 = v31;
      v117 = (v31 - v32);
      v162 = v114;
      v142 = v115;
      v118 = &v114[v32 * v115];
      v143 = v68;
      do
      {
        v152 = v32;
        v144 = v118;
        v156 = v117;
        v119 = v117;
        v159 = v116;
        v120 = v116;
        v121 = v166;
        do
        {
          v122 = v153;
          v123 = v163;
          (v163)(v153, v118, v121);
          v124 = v154;
          v123(v154, v120, v121);
          v125 = v171;
          v126 = v169(v122, v124);
          v171 = v125;
          if (v125)
          {
            v140 = *v165;
            (*v165)(v124, v121);
            (v140)(v122, v121);
          }

          v127 = v126;
          v21 = v165;
          v128 = *v165;
          (*v165)(v124, v121);
          result = (v128)(v122, v121);
          if ((v127 & 1) == 0)
          {
            break;
          }

          if (!v162)
          {
            goto LABEL_146;
          }

          v21 = v161;
          v129 = *v161;
          v130 = v155;
          v121 = v166;
          (*v161)(v155, v118, v166);
          swift_arrayInitWithTakeFrontToBack();
          (v129)(v120, v130, v121);
          v120 += v160;
          v118 += v160;
          v66 = __CFADD__(v119++, 1);
        }

        while (!v66);
        v32 = v152 + 1;
        v116 = &v159[v142];
        v117 = v156 - 1;
        v118 = &v144[v142];
      }

      while ((v152 + 1) != v143);
      v32 = v143;
      v30 = v148;
      v31 = v146;
    }

LABEL_42:
    if (v32 < v31)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_75F54(0, v30[2] + 1, 1, v30);
      v30 = result;
    }

    v70 = v30[2];
    v69 = v30[3];
    v71 = v70 + 1;
    v152 = v32;
    if (v70 >= v69 >> 1)
    {
      result = sub_75F54((v69 > 1), v70 + 1, 1, v30);
      v30 = result;
    }

    v30[2] = v71;
    v72 = v30 + 4;
    v73 = &v30[2 * v70 + 4];
    v74 = v152;
    *v73 = v31;
    v73[1] = v74;
    if (!*v150)
    {
      goto LABEL_148;
    }

    if (v70)
    {
      break;
    }

LABEL_92:
    v25 = v167;
    v28 = v168[1];
    v29 = v152;
    v21 = v147;
    if (v152 >= v28)
    {
      goto LABEL_104;
    }
  }

  v21 = *v150;
  while (1)
  {
    v75 = v71 - 1;
    v76 = &v72[2 * v71 - 2];
    v77 = &v30[2 * v71];
    if (v71 >= 4)
    {
      v82 = &v72[2 * v71];
      v83 = *(v82 - 8);
      v84 = *(v82 - 7);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_126;
      }

      v87 = *(v82 - 6);
      v86 = *(v82 - 5);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_127;
      }

      v89 = v77[1];
      v90 = v89 - *v77;
      if (__OFSUB__(v89, *v77))
      {
        goto LABEL_129;
      }

      v88 = __OFADD__(v80, v90);
      v91 = v80 + v90;
      if (v88)
      {
        goto LABEL_132;
      }

      if (v91 >= v85)
      {
        v105 = *v76;
        v104 = v76[1];
        v88 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v88)
        {
          goto LABEL_137;
        }

        if (v80 < v106)
        {
          v75 = v71 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

    if (v71 == 3)
    {
      v78 = v30[4];
      v79 = v30[5];
      v88 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      v81 = v88;
LABEL_63:
      if (v81)
      {
        goto LABEL_128;
      }

      v93 = *v77;
      v92 = v77[1];
      v94 = __OFSUB__(v92, v93);
      v95 = v92 - v93;
      v96 = v94;
      if (v94)
      {
        goto LABEL_131;
      }

      v97 = v76[1];
      v98 = v97 - *v76;
      if (__OFSUB__(v97, *v76))
      {
        goto LABEL_134;
      }

      if (__OFADD__(v95, v98))
      {
        goto LABEL_136;
      }

      if (v95 + v98 >= v80)
      {
        if (v80 < v98)
        {
          v75 = v71 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v71 < 2)
    {
      goto LABEL_130;
    }

    v100 = *v77;
    v99 = v77[1];
    v88 = __OFSUB__(v99, v100);
    v95 = v99 - v100;
    v96 = v88;
LABEL_78:
    if (v96)
    {
      goto LABEL_133;
    }

    v102 = *v76;
    v101 = v76[1];
    v88 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v88)
    {
      goto LABEL_135;
    }

    if (v103 < v95)
    {
      goto LABEL_92;
    }

LABEL_85:
    if (v75 - 1 >= v71)
    {
      break;
    }

    if (!*v168)
    {
      goto LABEL_144;
    }

    v107 = &v72[2 * v75 - 2];
    v108 = *v107;
    v109 = &v72[2 * v75];
    v110 = v109[1];
    v111 = v171;
    sub_898C8(&(*v168)[*(v167 + 72) * *v107], &(*v168)[*(v167 + 72) * *v109], &(*v168)[*(v167 + 72) * v110], v21, v169, v170);
    v171 = v111;
    if (v111)
    {
    }

    if (v110 < v108)
    {
      goto LABEL_120;
    }

    v112 = v30;
    v30 = v30[2];
    if (v75 > v30)
    {
      goto LABEL_121;
    }

    *v107 = v108;
    v107[1] = v110;
    if (v75 >= v30)
    {
      goto LABEL_122;
    }

    v71 = v30 - 1;
    result = memmove(&v72[2 * v75], v109 + 2, 16 * (v30 - v75 - 1));
    v112[2] = v30 - 1;
    v113 = v30 > 2;
    v30 = v112;
    if (!v113)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  result = sub_89EF8(v30);
  v30 = result;
LABEL_106:
  v131 = v30 + 2;
  v132 = v30[2];
  while (v132 >= 2)
  {
    if (!*v168)
    {
      goto LABEL_145;
    }

    v133 = v30;
    v134 = &v30[2 * v132];
    v30 = *v134;
    v135 = &v131[2 * v132];
    v136 = v135[1];
    v137 = v171;
    sub_898C8(&(*v168)[*(v167 + 72) * *v134], &(*v168)[*(v167 + 72) * *v135], &(*v168)[*(v167 + 72) * v136], v21, v169, v170);
    v171 = v137;
    if (v137)
    {
      break;
    }

    if (v136 < v30)
    {
      goto LABEL_123;
    }

    if (v132 - 2 >= *v131)
    {
      goto LABEL_124;
    }

    *v134 = v30;
    v134[1] = v136;
    v138 = *v131 - v132;
    if (*v131 < v132)
    {
      goto LABEL_125;
    }

    v132 = *v131 - 1;
    result = memmove(v135, v135 + 2, 16 * v138);
    *v131 = v132;
    v30 = v133;
  }
}

uint64_t sub_898C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v75 = a6;
  v80 = a5;
  v12 = sub_8C1FC();
  v13 = __chkstk_darwin(v12);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v68 - v19;
  result = __chkstk_darwin(v18);
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v26 = a2 - a1 == 0x8000000000000000 && v25 == -1;
  if (v26)
  {
    goto LABEL_66;
  }

  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_67;
  }

  v86 = a1;
  v85 = a4;
  v78 = (v22 + 16);
  v79 = (v22 + 8);
  v29 = v27 / v25;
  if ((a2 - a1) / v25 >= v27 / v25)
  {
    v71 = v17;
    sub_7671C(a2, v27 / v25, a4);
    v45 = a2;
    v46 = a4 + v29 * v25;
    v47 = -v25;
    v48 = v46;
    v81 = a1;
    v70 = a4;
    v73 = -v25;
LABEL_38:
    i = (v45 + v47);
    v68 = v48;
    v49 = v48;
    v82 = v45;
    while (1)
    {
      if (v46 <= a4)
      {
        v86 = v45;
        v84 = v49;
        goto LABEL_64;
      }

      if (v45 <= a1)
      {
        v86 = v45;
        v66 = v68;
        goto LABEL_63;
      }

      v50 = a3;
      v69 = v49;
      v83 = v7;
      v51 = *v78;
      v52 = v71;
      v76 = (v46 + v47);
      v77 = v46;
      v51(v71);
      v53 = v72;
      (v51)(v72, i, v12);
      v54 = v83;
      v55 = v80(v52, v53);
      v83 = v54;
      if (v54)
      {
        break;
      }

      v56 = v55;
      v57 = v50 + v47;
      v58 = *v79;
      (*v79)(v53, v12);
      v58(v52, v12);
      if (v56)
      {
        if (v50 < v82 || v57 >= v82)
        {
          v63 = i;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v63;
          a1 = v81;
          v7 = v83;
          a4 = v70;
          a3 = v57;
          v48 = v69;
          v47 = v73;
          v46 = v77;
        }

        else
        {
          v26 = v50 == v82;
          v47 = v73;
          v64 = i;
          v45 = i;
          a1 = v81;
          v7 = v83;
          a4 = v70;
          a3 = v57;
          v48 = v69;
          v46 = v77;
          if (!v26)
          {
            v48 = v69;
            swift_arrayInitWithTakeBackToFront();
            v46 = v77;
            v45 = v64;
          }
        }

        goto LABEL_38;
      }

      if (v50 < v77 || v57 >= v77)
      {
        v60 = v76;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v57;
        v46 = v60;
        v49 = v60;
        a1 = v81;
        v45 = v82;
        v7 = v83;
        a4 = v70;
        v47 = v73;
      }

      else
      {
        v46 = v76;
        v49 = v76;
        a3 = v57;
        a1 = v81;
        v45 = v82;
        v7 = v83;
        a4 = v70;
        v47 = v73;
        if (v77 != v50)
        {
          v61 = v76;
          swift_arrayInitWithTakeBackToFront();
          v45 = v82;
          a3 = v57;
          v46 = v61;
          v49 = v61;
        }
      }
    }

    v67 = *v79;
    (*v79)(v53, v12);
    v67(v52, v12);
    v86 = v82;
    v66 = v69;
LABEL_63:
    v84 = v66;
  }

  else
  {
    v76 = &v68 - v23;
    sub_7671C(a1, (a2 - a1) / v25, a4);
    v30 = a2;
    v77 = a4 + (a2 - a1) / v25 * v25;
    v84 = v77;
    v73 = v25;
    for (i = v20; a4 < v77 && v30 < a3; v20 = i)
    {
      v81 = a1;
      v82 = v30;
      v32 = *v78;
      v33 = v76;
      (*v78)(v76);
      (v32)(v20, a4, v12);
      v34 = v12;
      v35 = v20;
      v36 = v80(v33, v20);
      if (v7)
      {
        v65 = *v79;
        (*v79)(v35, v34);
        v65(v33, v34);
        break;
      }

      v37 = v36;
      v83 = 0;
      v38 = a4;
      v39 = *v79;
      (*v79)(v20, v34);
      v39(v33, v34);
      v12 = v34;
      if (v37)
      {
        v40 = v81;
        v41 = v73;
        v42 = v82 + v73;
        v43 = v81 < v82 || v81 >= v42;
        a4 = v38;
        if (v43)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v81 != v82)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v30 = v42;
      }

      else
      {
        v41 = v73;
        a4 = v38 + v73;
        v40 = v81;
        if (v81 < v38 || v81 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v81 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v85 = a4;
        v30 = v82;
      }

      v7 = v83;
      a1 = v40 + v41;
      v86 = a1;
    }
  }

LABEL_64:
  sub_89F0C(&v86, &v85, &v84);
  return 1;
}

uint64_t sub_89F0C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_8C1FC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_89FEC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_8A018(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2664(&qword_C33D8, &unk_93CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_8A16C()
{
  v0 = sub_8C1CC();
  sub_3488();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1D164();
  v6 = v4 - v5;
  v8 = __chkstk_darwin(v7);
  v31 = &v30 - v9;
  __chkstk_darwin(v8);
  v32 = &v30 - v10;
  result = sub_8C1DC();
  v12 = result;
  v13 = 0;
  v14 = *(result + 16);
  v33 = v2 + 16;
  while (1)
  {
    if (v14 == v13)
    {

      return 2;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    sub_8AE7C();
    v15(v6);
    if (sub_8C1BC() == 0xD000000000000017 && 0x8000000000096FF0 == v16)
    {

LABEL_12:

      v21 = *(v2 + 32);
      v22 = v31;
      v21(v31, v6, v0);
      v21(v32, v22, v0);
      v23 = sub_8C1AC();
      if (v24)
      {
        v25 = sub_13DE4(v23, v24);
        v26 = sub_8AE9C();
        v27(v26);
        if (v25 != 2)
        {
          return v25;
        }
      }

      else
      {
        v28 = sub_8AE9C();
        v29(v28);
      }

      return 2;
    }

    v18 = sub_8D45C();

    if (v18)
    {
      goto LABEL_12;
    }

    v19 = sub_8AE9C();
    result = v20(v19);
    ++v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_8A3C8()
{
  v38 = sub_8C48C();
  sub_3488();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_16854();
  v5 = v4 - v3;
  v6 = sub_8C1CC();
  sub_3488();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1D164();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v32 = &v31 - v14;
  result = sub_8C1DC();
  v16 = 0;
  v39 = *(result + 16);
  v36 = v8 + 16;
  v35 = enum case for IdentifierNamespace.nsSemanticValue(_:);
  v33 = (v1 + 8);
  v34 = (v1 + 104);
  v40 = v8;
  v37 = (v8 + 8);
  while (1)
  {
    if (v39 == v16)
    {

      return 0;
    }

    if (v16 >= *(result + 16))
    {
      break;
    }

    v17 = result;
    v18 = v6;
    (*(v40 + 16))(v12, result + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v16, v6);
    v19 = sub_8C1BC();
    v21 = v20;
    v22 = v38;
    (*v34)(v5, v35, v38);
    v23 = sub_8C47C();
    v25 = v24;
    (*v33)(v5, v22);
    if (v19 == v23 && v21 == v25)
    {

LABEL_12:

      v29 = v40 + 32;
      v30 = v32;
      (*(v40 + 32))(v32, v12, v18);
      v28 = sub_8C1AC();
      (*(v29 - 24))(v30, v18);
      return v28;
    }

    v27 = sub_8D45C();

    if (v27)
    {
      goto LABEL_12;
    }

    v6 = v18;
    (*v37)(v12, v18);
    ++v16;
    result = v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_8A6E4()
{
  v0 = sub_8C1CC();
  sub_3488();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_16854();
  v6 = v5 - v4;
  v7 = sub_2664(&qword_C3D38, &unk_94FC0);
  __chkstk_darwin(v7 - 8);
  sub_1D164();
  v30 = v8 - v9;
  __chkstk_darwin(v10);
  v29 = &v28 - v11;
  result = sub_8C1DC();
  v13 = result;
  v14 = 0;
  v15 = *(result + 16);
  v31 = v2 + 16;
  v16 = (v2 + 8);
  while (1)
  {
    if (v15 == v14)
    {

      v21 = 1;
      v23 = v29;
      v22 = v30;
      goto LABEL_13;
    }

    if (v14 >= *(v13 + 16))
    {
      break;
    }

    sub_8AE7C();
    v17(v6);
    if (sub_8C1BC() == 0xD000000000000011 && 0x8000000000098E10 == v18)
    {

LABEL_12:

      v23 = v29;
      (*(v2 + 32))(v29, v6, v0);
      v21 = 0;
      v22 = v30;
LABEL_13:
      sub_6270(v23, v21, 1, v0);
      sub_8A9F0(v23, v22);
      if (sub_3364(v22, 1, v0) == 1)
      {
        sub_92C0(v23, &qword_C3D38, &unk_94FC0);
        goto LABEL_19;
      }

      v24 = sub_8C1AC();
      v26 = v25;
      (*v16)(v22, v0);
      if (v26)
      {
        v27 = sub_13E38(v24, v26);
        sub_92C0(v23, &qword_C3D38, &unk_94FC0);
        if (v27 != 3)
        {
          return v27;
        }
      }

      else
      {
        v22 = v23;
LABEL_19:
        sub_92C0(v22, &qword_C3D38, &unk_94FC0);
      }

      return 3;
    }

    v20 = sub_8D45C();

    if (v20)
    {
      goto LABEL_12;
    }

    result = (*v16)(v6, v0);
    ++v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_8A9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C3D38, &unk_94FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8AA60()
{
  v0 = sub_8C75C();
  sub_3488();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_16854();
  v6 = v5 - v4;
  v7 = sub_2664(&qword_C3D30, &qword_94FB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_8C1EC();
  v10 = sub_8C77C();
  if (sub_3364(v9, 1, v10) == 1)
  {
    sub_92C0(v9, &qword_C3D30, &qword_94FB8);
    v11 = 0;
  }

  else
  {
    sub_8C74C();
    v11 = sub_8C73C();
    (*(v2 + 8))(v6, v0);
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  return v11 & 1;
}

uint64_t sub_8ABF0()
{
  sub_8A6E4();
  sub_8AEAC();
  v0 = 1;
  v1 = 0;
  v2 = "oom_hint";
  switch(v3)
  {
    case 1:
      v0 = 0;
      v4 = "homeAutomationRoom";
      goto LABEL_4;
    case 2:
      v0 = 0;
      v4 = "homeAutomationZone";
LABEL_4:
      v2 = (v4 - 32);
      goto LABEL_5;
    case 3:
      return v1 & 1;
    default:
LABEL_5:
      if (v0 && (v2 | 0x8000000000000000) == 0x80000000000953B0)
      {
        v1 = 1;
      }

      else
      {
        v1 = sub_8D45C();
      }

      return v1 & 1;
  }
}

uint64_t sub_8ACD4()
{
  sub_8A6E4();
  v0 = sub_8AEAC();
  v3 = "oom_hint";
  v4 = 0;
  switch(v5)
  {
    case 1:
      v3 = "homeAutomationAccessoryName";
      goto LABEL_4;
    case 2:
      v3 = "homeAutomationRoom";
LABEL_4:
      v4 = 1;
      v0 = 0xD000000000000012;
      goto LABEL_5;
    case 3:
      return v4 & 1;
    default:
LABEL_5:
      if (v4 && (v3 | 0x8000000000000000) == 0x80000000000953F0)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = sub_8AEBC(v0, v1, v2, 0x80000000000953F0);
      }

      return v4 & 1;
  }
}

uint64_t sub_8ADA8()
{
  sub_8A6E4();
  v0 = sub_8AEAC();
  v3 = "oom_hint";
  v4 = 0;
  switch(v5)
  {
    case 1:
      v3 = "homeAutomationAccessoryName";
      goto LABEL_4;
    case 2:
      v3 = "homeAutomationRoom";
LABEL_4:
      v4 = 1;
      v0 = 0xD000000000000012;
      goto LABEL_5;
    case 3:
      return v4 & 1;
    default:
LABEL_5:
      if (v4 && (v3 | 0x8000000000000000) == 0x80000000000953D0)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = sub_8AEBC(v0, v1, v2, 0x80000000000953D0);
      }

      return v4 & 1;
  }
}

uint64_t sub_8AEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_8D45C();
}