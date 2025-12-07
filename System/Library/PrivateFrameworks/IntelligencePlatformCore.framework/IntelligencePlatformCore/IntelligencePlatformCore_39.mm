uint64_t sub_1C479AA00(uint64_t a1)
{
  v2 = sub_1C479AFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C479AA3C(uint64_t a1)
{
  v2 = sub_1C479AFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventParticipant.encode(to:)(void *a1)
{
  sub_1C456902C(&qword_1EC0BCB40, &unk_1C4F29ED0);
  sub_1C43FFC58();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = v1[2];
  v12[2] = v1[3];
  v13 = v9;
  v12[1] = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C479AFD4();
  sub_1C4F02BF8();
  v18 = 0;
  v10 = v14;
  sub_1C4F02798();
  if (!v10)
  {
    v15 = v13;
    v17 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
    v16 = 2;
    sub_1C4F02738();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t EventParticipant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BCB50, &qword_1C4F29EE0);
  sub_1C43FFC58();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C479AFD4();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v25 = 0;
  v11 = sub_1C4F02678();
  v21 = v12;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v24 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v20 = v22;
  v23 = 2;
  v13 = sub_1C4F02618();
  v15 = v14;
  v16 = v13;
  (*(v7 + 8))(v10, v3);
  v17 = v21;
  *a2 = v11;
  a2[1] = v17;
  a2[2] = v20;
  a2[3] = v16;
  a2[4] = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t sub_1C479AF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C479AFD4()
{
  result = qword_1EC0BCB48;
  if (!qword_1EC0BCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB48);
  }

  return result;
}

unint64_t sub_1C479B028(uint64_t a1)
{
  result = sub_1C479B050();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C479B050()
{
  result = qword_1EC0BCB58;
  if (!qword_1EC0BCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB58);
  }

  return result;
}

unint64_t sub_1C479B0A4(uint64_t a1)
{
  *(a1 + 8) = sub_1C479B0D4();
  result = sub_1C479B128();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C479B0D4()
{
  result = qword_1EC0BCB60;
  if (!qword_1EC0BCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB60);
  }

  return result;
}

unint64_t sub_1C479B128()
{
  result = qword_1EC0BCB68;
  if (!qword_1EC0BCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventParticipant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C479B26C()
{
  result = qword_1EC0BCB70;
  if (!qword_1EC0BCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB70);
  }

  return result;
}

unint64_t sub_1C479B2C4()
{
  result = qword_1EC0BCB78;
  if (!qword_1EC0BCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB78);
  }

  return result;
}

unint64_t sub_1C479B31C()
{
  result = qword_1EC0BCB80;
  if (!qword_1EC0BCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB80);
  }

  return result;
}

void sub_1C479B3C8(uint64_t (*a1)(uint64_t *))
{
  sub_1C4432274();
  v5 = v2 + 56;
  sub_1C4406D00(v6, v7, v8);
  v9 = 0;
  if (v4)
  {
    while (1)
    {
      v10 = v9;
LABEL_6:
      v11 = sub_1C441F8CC();
      v19 = sub_1C4411C74(v11, v12, v13, v14, v15, v16, v17, v18, v22);
      v20 = a1(v19);
      if (v1)
      {
        break;
      }

      v21 = v20;

      if (v21)
      {
        goto LABEL_10;
      }

      v4 &= v4 - 1;
      v9 = v10;
      if (!v4)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    sub_1C44030B0();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v3)
      {
LABEL_10:

        goto LABEL_11;
      }

      v4 = *(v5 + 8 * v10);
      ++v9;
      if (v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_1C479B4B4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4428DA0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
LABEL_11:
      sub_1C44030B0();
      return;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6940F90](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

BOOL sub_1C479B5CC()
{
  sub_1C43FD6BC();
  v3 = v2 + 48;
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v18 = *(v3 - 16);
    v6 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4411C74(v6, v7, v8, v9, v10, v11, v12, v13, v18);
    v15 = v1(v14);
    if (v0)
    {

      return v5 != 0;
    }

    v16 = v15;
    v3 += 24;
  }

  while ((v16 & 1) == 0);
  return v5 != 0;
}

void sub_1C479B674(uint64_t (*a1)(uint64_t *))
{
  sub_1C4432274();
  v5 = v2 + 64;
  sub_1C4406D00(v6, v7, v8);
  v9 = 0;
  if (v4)
  {
    while (1)
    {
      v10 = v9;
LABEL_6:
      v11 = sub_1C441F8CC();
      v19 = sub_1C4411C74(v11, v12, v13, v14, v15, v16, v17, v18, v22);
      v20 = a1(v19);
      if (v1)
      {
        break;
      }

      v21 = v20;

      if (v21)
      {
        goto LABEL_10;
      }

      v4 &= v4 - 1;
      v9 = v10;
      if (!v4)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    sub_1C44030B0();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v3)
      {
LABEL_10:

        goto LABEL_11;
      }

      v4 = *(v5 + 8 * v10);
      ++v9;
      if (v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

BOOL sub_1C479B790(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *((a4)(0, a2) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t EventSender.identifier.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t EventSender.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventSender.mapLocation.getter()
{
  v1 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t EventSender.mapLocation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1C479B984()
{
  if (qword_1EC0B7128 != -1)
  {
    swift_once();
  }

  qword_1EC0BCB88 = qword_1EC0C38A8;
  *&qword_1EC0BCB90 = *&qword_1EC0C38B0;
  qword_1EC0BCBA0 = qword_1EC0C38C0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C479BA04()
{
  if (qword_1EC0B69D0 != -1)
  {
    sub_1C4419598(&qword_1EC0B69D0);
  }

  return &qword_1EC0BCB88;
}

uint64_t static EventSender.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B69D0 != -1)
  {
    sub_1C4419598(&qword_1EC0B69D0);
  }

  swift_beginAccess();
  v2 = qword_1EC0BCBA0;
  *a1 = qword_1EC0BCB88;
  *(a1 + 8) = *&qword_1EC0BCB90;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static EventSender.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B69D0 != -1)
  {
    sub_1C4419598(&qword_1EC0B69D0);
  }

  swift_beginAccess();
  qword_1EC0BCB88 = v1;
  *&qword_1EC0BCB90 = v4;
  qword_1EC0BCBA0 = v2;
}

uint64_t (*static EventSender.type.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC0B69D0 != -1)
  {
    sub_1C4419598(&qword_1EC0B69D0);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C479BBD0@<X0>(uint64_t a1@<X8>)
{
  sub_1C479BA04();
  swift_beginAccess();
  v2 = qword_1EC0BCBA0;
  *a1 = qword_1EC0BCB88;
  *(a1 + 8) = *&qword_1EC0BCB90;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C479BC38(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C479BA04();
  swift_beginAccess();
  qword_1EC0BCB88 = v1;
  *&qword_1EC0BCB90 = v4;
  qword_1EC0BCBA0 = v2;
}

uint64_t EventSender.basicProperties.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall EventSender.init(mapLocation:displayName:identifier:handles:handleIdentifier:)(IntelligencePlatformCore::EventSender *__return_ptr retstr, Swift::String mapLocation, Swift::String_optional displayName, Swift::String identifier, Swift::OpaquePointer handles, Swift::String handleIdentifier)
{
  countAndFlagsBits = handleIdentifier._countAndFlagsBits;
  object = identifier._object;
  v9 = identifier._countAndFlagsBits;
  v37 = displayName.value._object;
  v38 = mapLocation._countAndFlagsBits;
  v41 = mapLocation._object;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0CE60;
  *(v10 + 32) = 0x696669746E656469;
  *(v10 + 40) = 0xEA00000000007265;
  v40 = v9;
  *(v10 + 48) = v9;
  *(v10 + 56) = object;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 64) = 0;
  *(v10 + 88) = 1;
  *(v10 + 96) = 0xD000000000000010;
  *(v10 + 104) = 0x80000001C4F9A580;
  *(v10 + 112) = countAndFlagsBits;
  *(v10 + 120) = handleIdentifier._object;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  *(v10 + 128) = 0;
  *(v10 + 152) = 1;
  v11 = *(handles._rawValue + 2);
  v42 = object;
  if (v11)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = (handles._rawValue + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = objc_allocWithZone(MEMORY[0x1E6996728]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = [v15 init];
      v17 = sub_1C4F01108();
      v18 = [v16 typeOfHandleString_];

      v20 = *(v10 + 16);
      v21 = v18 == 1;
      if (v18 == 1)
      {
        v22 = 0x6464416C69616D65;
      }

      else
      {
        v22 = 0x6D754E656E6F6870;
      }

      if (v21)
      {
        v23 = 0xEE00736573736572;
      }

      else
      {
        v23 = 0xEC00000073726562;
      }

      if (v20 >= *(v10 + 24) >> 1)
      {
        sub_1C458A900();
        v10 = v19;
      }

      *(v10 + 16) = v20 + 1;
      v24 = v10 + (v20 << 6);
      *(v24 + 32) = v22;
      *(v24 + 40) = v23;
      *(v24 + 48) = v14;
      *(v24 + 56) = v13;
      *(v24 + 72) = 0;
      *(v24 + 80) = 0;
      *(v24 + 64) = 0;
      v12 += 2;
      *(v24 + 88) = 1;
      --v11;
    }

    while (v11);
  }

  else
  {
    v19 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  if (!v37 || (MEMORY[0x1EEE9AC00](v19), v25 = sub_1C44CE068(), , v25))
  {

LABEL_17:
    v26 = v42;
    goto LABEL_18;
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
  v28 = sub_1C4F01108();
  v29 = [v27 typeOfHandleString_];

  v30 = *(v10 + 16);
  v31 = *(v10 + 24) >> 1;
  v32 = v30 + 1;
  if (v29 == 1)
  {
    if (v31 <= v30)
    {
      sub_1C4406D3C();
      v10 = v35;
    }

    *(v10 + 16) = v32;
    v33 = v10 + (v30 << 6);
    strcpy((v33 + 32), "emailAddresses");
    *(v33 + 47) = -18;
    sub_1C440030C(v33);
    goto LABEL_17;
  }

  if (v31 <= v30)
  {
    sub_1C4406D3C();
    v10 = v36;
  }

  *(v10 + 16) = v32;
  v34 = v10 + (v30 << 6);
  *(v34 + 32) = 0x4E79616C70736964;
  *(v34 + 40) = 0xEB00000000656D61;
  sub_1C440030C(v34);
LABEL_18:
  retstr->identifier.value._countAndFlagsBits = v40;
  retstr->identifier.value._object = v26;
  retstr->mapLocation._countAndFlagsBits = v38;
  retstr->mapLocation._object = v41;
  retstr->basicProperties._rawValue = v10;
}

uint64_t sub_1C479C0B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F72506369736162 && a2 == 0xEF73656974726570)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C479C1DC(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x7461636F4C70616DLL;
  }

  return 0x6F72506369736162;
}

uint64_t sub_1C479C254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C479C0B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C479C27C(uint64_t a1)
{
  v2 = sub_1C479C7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C479C2B8(uint64_t a1)
{
  v2 = sub_1C479C7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventSender.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BCBA8, &unk_1C4F2A0F8);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = v1[2];
  v15 = v1[3];
  v16 = v9;
  v14 = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C479C7D0();
  sub_1C4F02BF8();
  v21 = 0;
  v10 = v17;
  sub_1C4F02738();
  if (!v10)
  {
    v11 = v14;
    v20 = 1;
    sub_1C4F02798();
    v18 = v11;
    v19 = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t EventSender.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BCBB8, &qword_1C4F2A108);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C479C7D0();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
  }

  else
  {
    v6 = sub_1C4F02618();
    v9 = v8;
    v16 = v6;
    v10 = sub_1C4F02678();
    v12 = v11;
    v15 = v10;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v13 = sub_1C43FBF04();
    v14(v13);
    *a2 = v16;
    a2[1] = v9;
    a2[2] = v15;
    a2[3] = v12;
    a2[4] = v17;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(a1);
  }
}

unint64_t sub_1C479C7D0()
{
  result = qword_1EC0BCBB0;
  if (!qword_1EC0BCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBB0);
  }

  return result;
}

unint64_t sub_1C479C824(uint64_t a1)
{
  result = sub_1C479C84C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C479C84C()
{
  result = qword_1EC0BCBC0;
  if (!qword_1EC0BCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBC0);
  }

  return result;
}

unint64_t sub_1C479C8A0(uint64_t a1)
{
  *(a1 + 8) = sub_1C479C8D0();
  result = sub_1C479C924();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C479C8D0()
{
  result = qword_1EC0BCBC8;
  if (!qword_1EC0BCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBC8);
  }

  return result;
}

unint64_t sub_1C479C924()
{
  result = qword_1EC0BCBD0;
  if (!qword_1EC0BCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBD0);
  }

  return result;
}

uint64_t sub_1C479C978(uint64_t a1, int a2)
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

uint64_t sub_1C479C9B8(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for EventSender.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C479CAF0()
{
  result = qword_1EC0BCBD8;
  if (!qword_1EC0BCBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBD8);
  }

  return result;
}

unint64_t sub_1C479CB48()
{
  result = qword_1EC0BCBE0;
  if (!qword_1EC0BCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBE0);
  }

  return result;
}

unint64_t sub_1C479CBA0()
{
  result = qword_1EC0BCBE8;
  if (!qword_1EC0BCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBE8);
  }

  return result;
}

uint64_t sub_1C479CBF4(unint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1C479CC54(v2, a1, a2, &v7);
  objc_autoreleasePoolPop(v5);
  return v7;
}

uint64_t sub_1C479CC54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v98 = a3;
  v93 = a2;
  v85 = a4;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v83 - v10;
  v12 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v88 = sub_1C4F00F28();
  v86 = v12;
  v13 = sub_1C4F00F28();
  if (*(a1 + 16))
  {
    v14 = *(a1 + 16);
    v15 = v98;
    v16 = v93;
  }

  else
  {
    v92 = type metadata accessor for ActivityModelDataSource(0);
    v17 = *(v6 + 16);
    v18 = v93;
    v17(v11, v93, v5);
    v15 = v98;
    v17(v8, v98, v5);
    v19 = *(a1 + 24);
    v97 = 0;
    memset(v96, 0, sizeof(v96));
    v95 = 0;
    memset(v94, 0, sizeof(v94));
    v20 = v19;
    v21 = sub_1C4F01108();
    LODWORD(v17) = sub_1C44C1028(v21);

    v16 = v18;
    v14 = sub_1C4574C14(v11, v8, v19, v96, v94, v17);
  }

  v22 = sub_1C4575C24(v16, v15);
  v98 = sub_1C4428DA0(v22);
  if (!v98)
  {
LABEL_52:

    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0CE60;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x80000001C4F9A5A0;
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    v79 = sub_1C479D644(v88);
    if (!v79)
    {
      v79 = [objc_opt_self() undefinedFeatureValueWithType_];
    }

    *(inited + 48) = v79;
    *(inited + 56) = 0xD00000000000001DLL;
    *(inited + 64) = 0x80000001C4F8ABF0;
    v80 = sub_1C479D644(v13);
    if (!v80)
    {
      v80 = [objc_opt_self() undefinedFeatureValueWithType_];
    }

    *(inited + 72) = v80;
    v81 = sub_1C4F00F28();

    *v85 = v81;
    return result;
  }

  v23 = 0;
  v93 = v22 & 0xC000000000000001;
  v91 = v22 & 0xFFFFFFFFFFFFFF8;
  v92 = *MEMORY[0x1E6999318];
  v90 = *MEMORY[0x1E6999310];
  v83[0] = v14;
  v89 = v22;
  while (1)
  {
    if (v93)
    {
      v24 = MEMORY[0x1C6940F90](v23, v22);
    }

    else
    {
      if (v23 >= *(v91 + 16))
      {
        goto LABEL_58;
      }

      v24 = *(v22 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    v27 = sub_1C4F01138();
    v29 = v28;
    v30 = v25;
    v31 = sub_1C479D6D8(v27, v29, v30);
    if (!v31 || (*&v96[0] = v31, sub_1C456902C(&unk_1EC0BCD00, &unk_1C4F0CE00), sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00), (swift_dynamicCast() & 1) == 0))
    {

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v50 = sub_1C4F00978();
      sub_1C442B738(v50, qword_1EDDFECB8);
      v51 = sub_1C4F00968();
      v52 = sub_1C4F01CF8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = v52;
        v55 = v51;
        v56 = "Could not get suggested event meta data from event object";
        goto LABEL_33;
      }

LABEL_34:

      goto LABEL_35;
    }

    v32 = *&v94[0];
    v33 = sub_1C4F01138();
    if (!*(v32 + 16))
    {

      goto LABEL_29;
    }

    v35 = sub_1C445FAA8(v33, v34);
    v37 = v36;

    if ((v37 & 1) == 0)
    {

LABEL_28:

      v22 = v89;
LABEL_29:
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v57 = sub_1C4F00978();
      sub_1C442B738(v57, qword_1EDDFECB8);
      v51 = sub_1C4F00968();
      v58 = sub_1C4F01CF8();
      if (os_log_type_enabled(v51, v58))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = v58;
        v55 = v51;
        v56 = "Could not get suggested event meta category from meta data dictionary";
LABEL_33:
        _os_log_impl(&dword_1C43F8000, v55, v54, v56, v53, 2u);
        MEMORY[0x1C6942830](v53, -1, -1);
      }

      goto LABEL_34;
    }

    sub_1C442B870(*(v32 + 56) + 32 * v35, v96);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_28;
    }

    v38 = v94[0];
    v84 = sub_1C4F01EC8();
    v39 = v88;
    swift_isUniquelyReferenced_nonNull_native();
    *&v96[0] = v39;
    v87 = v38;
    v40 = sub_1C445FAA8(v38, *(&v38 + 1));
    if (__OFADD__(*(v39 + 16), (v41 & 1) == 0))
    {
      goto LABEL_59;
    }

    v42 = v40;
    v43 = v41;
    v83[1] = sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
    if (sub_1C4F02458())
    {
      v44 = sub_1C445FAA8(v87, *(&v87 + 1));
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_63;
      }

      v42 = v44;
    }

    v46 = *&v96[0];
    v88 = *&v96[0];
    if (v43)
    {
      v47 = *(*&v96[0] + 56);
      v48 = *(v47 + 8 * v42);
      *(v47 + 8 * v42) = v84;

      v49 = *(&v87 + 1);
    }

    else
    {
      *(*&v96[0] + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v59 = (v46[6] + 16 * v42);
      v49 = *(&v87 + 1);
      *v59 = v87;
      v59[1] = v49;
      *(v46[7] + 8 * v42) = v84;
      v60 = v46[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_61;
      }

      v46[2] = v62;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v63 = [v30 calendar];

    if (v63 && (v64 = [v63 isSuggestedEventCalendar], v63, (v64 & 1) != 0))
    {

      v22 = v89;
    }

    else
    {
      v65 = sub_1C4F01EC8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v96[0] = v13;
      v66 = sub_1C445FAA8(v87, v49);
      v68 = v67;
      if (__OFADD__(v13[2], (v67 & 1) == 0))
      {
        goto LABEL_60;
      }

      v69 = v66;
      if (sub_1C4F02458())
      {
        v70 = sub_1C445FAA8(v87, *(&v87 + 1));
        v22 = v89;
        if ((v68 & 1) != (v71 & 1))
        {
          goto LABEL_63;
        }

        v69 = v70;
      }

      else
      {
        v22 = v89;
      }

      v13 = *&v96[0];
      if (v68)
      {
        v72 = *(*&v96[0] + 56);
        v73 = *(v72 + 8 * v69);
        *(v72 + 8 * v69) = v65;

        v30 = v73;
      }

      else
      {
        *(*&v96[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
        v74 = (v13[6] + 16 * v69);
        v75 = *(&v87 + 1);
        *v74 = v87;
        v74[1] = v75;
        *(v13[7] + 8 * v69) = v65;
        v76 = v13[2];
        v61 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v61)
        {
          goto LABEL_62;
        }

        v13[2] = v77;
      }
    }

LABEL_35:
    ++v23;
    if (v26 == v98)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

id sub_1C479D644(uint64_t a1)
{
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v1 = sub_1C4F00EC8();

  v2 = [swift_getObjCClassFromMetadata() featureValueWithStringKeyDictionary_];

  return v2;
}

id sub_1C479D6D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();

  v5 = [a3 customObjectForKey_];

  return v5;
}

uint64_t sub_1C479D7A4(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEA48, MEMORY[0x1E69E6370]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1C45C2C2C(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1C44FCC6C(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          v2 = type metadata accessor for CalendarItem(319);
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1C479D964(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = MEMORY[0x1E69E6370];
    sub_1C45C2C2C(319);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_1C44FCC6C(319, qword_1EDDE1BB8, &type metadata for CalendarEventParticipant);
    if (v7 > 0x3F)
    {
      return v5;
    }

    else
    {
      sub_1C44FCC6C(319, &qword_1EDDFEA48, v4);
      v2 = v8;
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1C479DA90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 19))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C479DAE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C479DB4C(uint64_t a1)
{
  if ((a1 + 1) < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1C479DB84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C479DB4C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C479DBB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C479DB60(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C479DD3C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_1C4F00FF8();
  v4 = v3;

  v5 = v2 == 1701736302 && v4 == 0xE400000000000000;
  if (v5 || (sub_1C43FEC00(1701736302, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v2 == 0x746867696C66 && v4 == 0xE600000000000000;
    if (v7 || (sub_1C43FEC00(0x746867696C66, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v2 == 1685024614 && v4 == 0xE400000000000000;
      if (v8 || (sub_1C43FEC00(1685024614, 0xE400000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v2 == 0x6E69617274 && v4 == 0xE500000000000000;
        if (v9 || (sub_1C43FEC00(0x6E69617274, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = v2 == 7566690 && v4 == 0xE300000000000000;
          if (v10 || (sub_1C43FEC00(7566690, 0xE300000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = v2 == 1952542562 && v4 == 0xE400000000000000;
            if (v11 || (sub_1C43FEC00(1952542562, 0xE400000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = v2 == 0x61746E6572726163 && v4 == 0xEF70756B6369706CLL;
              if (v12 || (sub_1C43FEC00(0x61746E6572726163, 0xEF70756B6369706CLL) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = v2 == 0xD000000000000010 && 0x80000001C4F9A5E0 == v4;
                if (v13 || (sub_1C43FEC00(0xD000000000000010, 0x80000001C4F9A5E0) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v14 = v2 == 0x74656B636974 && v4 == 0xE600000000000000;
                  if (v14 || (sub_1C43FEC00(0x74656B636974, 0xE600000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v15 = v2 == 0x6569766F6DLL && v4 == 0xE500000000000000;
                    if (v15 || (sub_1C43FEC00(0x6569766F6DLL, 0xE500000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v16 = v2 == 0x676E6967646F6CLL && v4 == 0xE700000000000000;
                      if (v16 || (sub_1C43FEC00(0x676E6967646F6CLL, 0xE700000000000000) & 1) != 0)
                      {

                        return 10;
                      }

                      else if (v2 == 0x6C6169636F73 && v4 == 0xE600000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v18 = sub_1C43FEC00(0x6C6169636F73, 0xE600000000000000);

                        if (v18)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_1C479E1C8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_1C47851D4(a1);
  [a1 isCurrentUser];
  sub_1C4442C70([a1 participantRole]);
  v3 = [a1 participantType];

  sub_1C4442C70(v3);
  return v2;
}

uint64_t sub_1C479E28C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7069636974726170 && a2 == 0xEF656C6F52746E61;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7069636974726170 && a2 == 0xEF65707954746E61)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

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

uint64_t sub_1C479E3FC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6E65727275437369;
      break;
    case 2:
    case 3:
      result = 0x7069636974726170;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C479E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v33[3] = v24;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0BCCC8, &qword_1C4F2A720);
  sub_1C43FCDF8();
  v29 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v33 - v31;
  sub_1C4409678(v26, v26[3]);
  sub_1C47A2C68();
  sub_1C4F02BF8();
  sub_1C4F02738();
  if (!v23)
  {
    sub_1C440D3E4();
    sub_1C4F027A8();
    sub_1C47A2D64();
    sub_1C440D3E4();
    sub_1C4F027E8();
    sub_1C47A2DB8();
    sub_1C440D3E4();
    sub_1C4F027E8();
  }

  (*(v29 + 8))(v32, v27);
  sub_1C43FBC80();
}

void sub_1C479E64C()
{
  sub_1C43FE96C();
  v1 = v0;
  sub_1C456902C(&qword_1EC0BCCA8, &qword_1C4F2A718);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4409678(v1, v1[3]);
  sub_1C47A2C68();
  sub_1C4F02BC8();
  sub_1C440BCD8();
  sub_1C4F02618();
  sub_1C440BCD8();
  sub_1C4F02688();
  sub_1C47A2CBC();
  sub_1C440BCD8();
  sub_1C4F026C8();
  sub_1C47A2D10();
  sub_1C440BCD8();
  sub_1C4F026C8();
  v3 = sub_1C43FD6E4();
  v4(v3);
  sub_1C440962C(v1);
  sub_1C43FBC80();
}

uint64_t sub_1C479E894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C479E28C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C479E8BC(uint64_t a1)
{
  v2 = sub_1C47A2C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C479E8F8(uint64_t a1)
{
  v2 = sub_1C47A2C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C479E934(uint64_t a1@<X8>)
{
  sub_1C479E64C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 17) = BYTE1(v5);
    *(a1 + 18) = BYTE2(v5);
  }
}

void sub_1C479E9A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v58 - v10;
  *a2 = sub_1C45B4BF8(a1, &selRef_eventIdentifier);
  *(a2 + 8) = v12;
  *(a2 + 16) = [a1 isAllDay];
  v13 = [a1 startDate];
  if (v13)
  {
    v14 = v13;
    sub_1C4EF9C78();

    v15 = sub_1C4EF9CD8();
    v16 = 0;
  }

  else
  {
    v15 = sub_1C4EF9CD8();
    v16 = 1;
  }

  v17 = 1;
  sub_1C440BAA8(v11, v16, 1, v15);
  v18 = type metadata accessor for CalendarItem(0);
  sub_1C45B69E4(v11, a2 + v18[6]);
  v19 = [a1 endDate];
  if (v19)
  {
    v20 = v19;
    sub_1C4EF9C78();

    v17 = 0;
  }

  v21 = sub_1C4EF9CD8();
  sub_1C440BAA8(v8, v17, 1, v21);
  sub_1C45B69E4(v8, a2 + v18[7]);
  v22 = a1;
  v23 = sub_1C45C28F0(v22, &selRef_title);
  if (!v24)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_1C4433340(v23, v24, v18[8]);
  v25 = v22;
  v26 = sub_1C45C28F0(v25, &selRef_location);
  sub_1C4433340(v26, v27, v18[9]);
  v28 = sub_1C479E1C8([v25 organizer]);
  sub_1C4433340(v28, v29, v18[10]);
  *(v31 + 18) = v30;
  *(v31 + 16) = v32;
  v33 = v25;
  v34 = sub_1C45C28F0(v33, &selRef_notes);
  sub_1C4433340(v34, v35, v18[11]);
  *(a2 + v18[12]) = [v33 hasAlarms];
  *(a2 + v18[13]) = [v33 hasRecurrenceRules];
  v36 = [v33 calendar];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 title];

    v37 = sub_1C4F01138();
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = (a2 + v18[14]);
  *v41 = v37;
  v41[1] = v40;
  v42 = v33;
  v43 = sub_1C47A2E24(v42);
  if (v43)
  {
    v44 = sub_1C4428DA0(v43);
  }

  else
  {
    v44 = 0;
  }

  *(a2 + v18[15]) = v44;
  v45 = [v42 calendar];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 isAffectingAvailability];
  }

  else
  {
    v47 = 2;
  }

  *(a2 + v18[16]) = v47;
  v48 = [v42 calendar];
  if (!v48)
  {
    v51 = 2;
    goto LABEL_20;
  }

  v49 = v48;
  v50 = [v48 source];

  if (!v50)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v51 = [v50 supportsLocationDirectorySearches];

LABEL_20:
  *(a2 + v18[17]) = v51;
  v52 = [v42 calendar];

  if (v52)
  {
    v53 = [v52 title];

    v54 = sub_1C4F01138();
    v56 = v55;

    v58[2] = v54;
    v58[3] = v56;
    v58[0] = 1802661751;
    v58[1] = 0xE400000000000000;
    sub_1C4415EA8();
    LOBYTE(v54) = sub_1C4F02018();

    v57 = v54 & 1;
  }

  else
  {

    v57 = 2;
  }

  *(a2 + v18[18]) = v57;
}

uint64_t sub_1C479EE00()
{
  v1 = v0;
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v2 = sub_1C4F00F28();
  v3 = type metadata accessor for CalendarItem(0);
  v4 = *(v0 + v3[15]);
  if ([objc_opt_self() featureValueWithInt64_])
  {
    sub_1C4402288();
    sub_1C440C4DC();
    sub_1C4414A6C();
    sub_1C4660314();
    v2 = v11;
  }

  else
  {
    sub_1C445FAA8(0xD000000000000014, 0x80000001C4F9A600);
    if (v5)
    {
      sub_1C4402288();
      v11 = v2;
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();

      v6 = *(*(v2 + 56) + 8 * v4);
      sub_1C4F02478();
    }
  }

  v7 = *(v1 + v3[18]);
  if (v7 != 2)
  {
    sub_1C4A3B8F8(v7 & 1);
    sub_1C4402288();
    sub_1C440C4DC();
    sub_1C4414A6C();
    sub_1C4660314();
    v2 = v11;
  }

  v8 = *(v1 + v3[16]);
  if (v8 != 2)
  {
    sub_1C4A3B8F8(v8 & 1);
    sub_1C4402288();
    sub_1C440C4DC();
    sub_1C4414A6C();
    sub_1C4660314();
    v2 = v11;
  }

  v9 = *(v1 + v3[17]);
  if (v9 != 2)
  {
    sub_1C4A3B8F8(v9 & 1);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C440C4DC();
    sub_1C4660314();
    return v11;
  }

  return v2;
}

uint64_t sub_1C479F058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x657A696E6167726FLL && a2 == 0xE900000000000072;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7365746F6ELL && a2 == 0xE500000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D72616C41736168 && a2 == 0xE900000000000073;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C4F9A730 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7261646E656C6163 && a2 == 0xED0000656C746954;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E657474416D756ELL && a2 == 0xEC00000073656564;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x80000001C4F9A750 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000021 && 0x80000001C4F9A770 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000019 && 0x80000001C4F9A670 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C4F02938();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

unint64_t sub_1C479F4D8(char a1)
{
  result = 0x656449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7961446C6C417369;
      break;
    case 2:
      result = 0x7461447472617473;
      break;
    case 3:
      result = 0x65746144646E65;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x657A696E6167726FLL;
      break;
    case 7:
      result = 0x7365746F6ELL;
      break;
    case 8:
      result = 0x6D72616C41736168;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x7261646E656C6163;
      break;
    case 11:
      result = 0x6E657474416D756ELL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000021;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C479F6B0()
{
  sub_1C43FE96C();
  v3 = v0;
  v4 = sub_1C456902C(&qword_1EC0BCC90, &unk_1C4F2A708);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4401780();
  sub_1C442DF0C();
  v8 = sub_1C47A2AF8();
  sub_1C444B100(&type metadata for CalendarItem.CodingKeys, v9, v8);
  LOBYTE(v18) = 0;
  sub_1C440AA84();
  sub_1C4F02738();
  if (!v1)
  {
    sub_1C4406D60(1);
    sub_1C4F027A8();
    v10 = type metadata accessor for CalendarItem(0);
    v11 = v10[6];
    LOBYTE(v18) = 2;
    sub_1C4EF9CD8();
    sub_1C44195B8();
    sub_1C47A28A4(v12, v13, MEMORY[0x1E6969538]);
    sub_1C440E244(v3 + v11, &v18);
    v14 = v10[7];
    LOBYTE(v18) = 3;
    sub_1C440E244(v3 + v14, &v18);
    sub_1C4401774(v10[8]);
    LOBYTE(v18) = 4;
    sub_1C440AA84();
    sub_1C4F02798();
    sub_1C4401774(v10[9]);
    LOBYTE(v18) = 5;
    sub_1C440AA84();
    sub_1C4F02738();
    v15 = (v3 + v10[10]);
    v16 = *(v15 + 8);
    v17 = *(v15 + 18);
    v18 = *v15;
    v20 = v17;
    v19 = v16;
    sub_1C47A2C14();
    sub_1C4400324();
    sub_1C4F02778();
    sub_1C4401774(v10[11]);
    LOBYTE(v18) = 7;
    sub_1C440AA84();
    sub_1C4F02738();
    sub_1C4406D60(8);
    sub_1C4F027A8();
    sub_1C4406D60(9);
    sub_1C4F027A8();
    sub_1C4401774(v10[14]);
    LOBYTE(v18) = 10;
    sub_1C440AA84();
    sub_1C4F02738();
    sub_1C4406D60(11);
    sub_1C4F027D8();
    sub_1C4406D60(12);
    sub_1C4F02748();
    sub_1C4406D60(13);
    sub_1C4F02748();
    sub_1C4406D60(14);
    sub_1C4F02748();
  }

  (*(v6 + 8))(v2, v4);
  sub_1C43FBC80();
}

void sub_1C479F9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v28 = v27;
  v29 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v30 = sub_1C43FBD18(v29);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBD08();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v75 - v35;
  v78 = sub_1C456902C(&qword_1EC0BCC78, &qword_1C4F2A700);
  sub_1C43FCDF8();
  v38 = v37;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  v40 = sub_1C4402274();
  v82 = type metadata accessor for CalendarItem(v40);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  v79 = v26;
  v80 = (v43 - v42);
  sub_1C442DF0C();
  sub_1C47A2AF8();
  sub_1C4F02BC8();
  if (v23)
  {
    v81 = v23;
    sub_1C44042F8();
    v45 = v80;
    sub_1C440962C(v79);
    if (v36)
    {
      sub_1C4420C3C(v45 + v82[7], &unk_1EC0B84E0, qword_1C4F0D2D0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    if (v24)
    {
LABEL_5:
      sub_1C44102F0();
    }
  }

  else
  {
    v76 = v28;
    v77 = v38;
    LOBYTE(v83) = 0;
    v44 = sub_1C4F02618();
    v46 = v80;
    *v80 = v44;
    v46[1] = v47;
    sub_1C4411C80(1);
    *(v46 + 16) = sub_1C4F02688() & 1;
    v48 = sub_1C4EF9CD8();
    LOBYTE(v83) = 2;
    sub_1C44195B8();
    v51 = sub_1C47A28A4(v49, v50, MEMORY[0x1E6969558]);
    v81 = v48;
    v75 = v51;
    sub_1C4F02658();
    v52 = v82;
    sub_1C45B69E4(v36, v46 + v82[6]);
    LOBYTE(v83) = 3;
    sub_1C4F02658();
    sub_1C45B69E4(v33, v46 + v52[7]);
    sub_1C4411C80(4);
    v53 = sub_1C4F02678();
    sub_1C4433340(v53, v54, v52[8]);
    sub_1C4411C80(5);
    v55 = sub_1C4F02618();
    sub_1C4433340(v55, v56, v52[9]);
    sub_1C47A2B60();
    sub_1C4F02658();
    v57 = v84;
    v58 = v85;
    v59 = v46 + v52[10];
    *v59 = v83;
    v59[18] = v58;
    *(v59 + 8) = v57;
    sub_1C4411C80(7);
    v60 = sub_1C4F02618();
    sub_1C4433340(v60, v61, v52[11]);
    sub_1C4411C80(8);
    v62 = sub_1C4F02688();
    v81 = 0;
    *(v46 + v82[12]) = v62 & 1;
    sub_1C4411C80(9);
    v63 = sub_1C4F02688();
    v81 = 0;
    *(v80 + v82[13]) = v63 & 1;
    sub_1C43FD6D0(10);
    v64 = sub_1C4F02618();
    v81 = 0;
    v65 = (v80 + v82[14]);
    *v65 = v64;
    v65[1] = v66;
    sub_1C43FD6D0(11);
    v67 = sub_1C4F026B8();
    v81 = 0;
    *(v80 + v82[15]) = v67;
    sub_1C43FD6D0(12);
    v68 = sub_1C4F02628();
    v81 = 0;
    *(v80 + v82[16]) = v68;
    sub_1C43FD6D0(13);
    v69 = sub_1C4F02628();
    v81 = 0;
    *(v80 + v82[17]) = v69;
    sub_1C43FD6D0(14);
    v70 = sub_1C4F02628();
    v81 = 0;
    LOBYTE(v48) = v70;
    v71 = sub_1C4409C54();
    v72(v71);
    v73 = v80;
    *(v80 + v82[18]) = v48;
    sub_1C47A2BB4(v73, v76, type metadata accessor for CalendarItem);
    sub_1C440962C(v79);
    sub_1C4425ADC();
    sub_1C47A2950(v73, v74);
  }

LABEL_8:
  sub_1C43FBC80();
}

uint64_t sub_1C47A00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C479F058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47A00F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46167CC();
  *a1 = result;
  return result;
}

uint64_t sub_1C47A0120(uint64_t a1)
{
  v2 = sub_1C47A2AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47A015C(uint64_t a1)
{
  v2 = sub_1C47A2AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C47A01D0()
{
  result = qword_1EC0BCC00;
  if (!qword_1EC0BCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC00);
  }

  return result;
}

unint64_t sub_1C47A0228()
{
  result = qword_1EC0BCC08;
  if (!qword_1EC0BCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC08);
  }

  return result;
}

void sub_1C47A027C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v66 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v66 - v13;
  *a2 = sub_1C45B4BF8(a1, &selRef_eventIdentifier);
  *(a2 + 8) = v15;
  *(a2 + 16) = [a1 isAllDay];
  v16 = [a1 startDate];
  if (v16)
  {
    v17 = v16;
    sub_1C4EF9C78();

    v18 = sub_1C4EF9CD8();
    v19 = 0;
  }

  else
  {
    v18 = sub_1C4EF9CD8();
    v19 = 1;
  }

  v20 = 1;
  sub_1C440BAA8(v14, v19, 1, v18);
  v21 = type metadata accessor for EventFoundInAppsContent(0);
  sub_1C45B69E4(v14, a2 + v21[6]);
  v22 = [a1 endDate];
  if (v22)
  {
    v23 = v22;
    sub_1C4EF9C78();

    v20 = 0;
  }

  v24 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, v20, 1, v24);
  sub_1C45B69E4(v11, a2 + v21[7]);
  v25 = [a1 structuredLocation];
  if (v25)
  {
    v25 = sub_1C45C28F0(v25, &selRef_title);
  }

  else
  {
    v26 = 0;
  }

  sub_1C4433340(v25, v26, v21[8]);
  v27 = [a1 structuredLocation];
  v28 = 0;
  if (v27 && (v29 = v27, v30 = [v27 geoLocation], v29, v30))
  {
    [v30 coordinate];
    v32 = v31;

    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = 0;
  }

  v34 = a2 + v21[9];
  *v34 = v32;
  *(v34 + 8) = v33;
  v35 = [a1 structuredLocation];
  if (v35 && (v36 = v35, v37 = [v35 geoLocation], v36, v37))
  {
    [v37 coordinate];
    v28 = v38;

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = a2 + v21[10];
  *v40 = v28;
  *(v40 + 8) = v39;
  v41 = [a1 organizer];
  if (v41)
  {
    v41 = sub_1C45C28F0(v41, &selRef_name);
  }

  else
  {
    v42 = 0;
  }

  sub_1C4433340(v41, v42, v21[11]);
  v43 = sub_1C479DB4C([a1 availability]);
  if (v43 == 5)
  {
    v44 = 4;
  }

  else
  {
    v44 = v43;
  }

  *(a2 + v21[12]) = v44;
  v45 = sub_1C45AD7A4([a1 status]);
  if (v45 == 4)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  *(a2 + v21[13]) = v46;
  *(a2 + v21[14]) = [a1 isDetached];
  v47 = [a1 occurrenceDate];
  if (v47)
  {
    v48 = v47;
    sub_1C4EF9C78();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  sub_1C440BAA8(v8, v49, 1, v24);
  sub_1C45B69E4(v8, a2 + v21[15]);
  v50 = sub_1C45B4BF8(a1, &selRef_birthdayContactIdentifier);
  sub_1C4433340(v50, v51, v21[16]);
  v52 = sub_1C4F01138();
  v54 = v53;
  v55 = a1;
  v56 = sub_1C479D6D8(v52, v54, v55);
  if (v56 && (v67[0] = v56, sub_1C456902C(&unk_1EC0BCD00, &unk_1C4F0CE00), sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00), (swift_dynamicCast() & 1) != 0))
  {
    sub_1C4F01138();
    sub_1C465C4B8();

    if (v67[3])
    {
      v57 = swift_dynamicCast();
      v58 = v66[0];
      v59 = v66[1];
      if (!v57)
      {
        v58 = 0;
        v59 = 0;
      }
    }

    else
    {
      sub_1C4420C3C(v67, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      v58 = 0;
      v59 = 0;
    }

    v61 = (a2 + v21[17]);
    *v61 = v58;
    v61[1] = v59;
  }

  else
  {
    v60 = (a2 + v21[17]);
    *v60 = 0;
    v60[1] = 0;
  }

  v62 = v21[18];
  v63 = v55;
  sub_1C479E9A8(v63, a2 + v62);
  v64 = [v63 calendar];

  if (v64)
  {
    v65 = [v64 isSuggestedEventCalendar];
  }

  else
  {
    v65 = 0;
  }

  *(a2 + v21[19]) = v65;
}

uint64_t sub_1C47A0814()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001C4F9A5C0;
  v2 = (v0 + *(type metadata accessor for EventFoundInAppsContent(0) + 68));
  v3 = *v2;
  v4 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  LOBYTE(v3) = sub_1C479DD3C(v3, v4);
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  return sub_1C4F00F28();
}

uint64_t sub_1C47A0914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7961446C6C61 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001C4F9A690 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x80000001C4F9A6B0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x80000001C4F9A6D0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x657A696E6167726FLL && a2 == 0xED0000656D614E72;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6863617465447369 && a2 == 0xEA00000000006465;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6572727563636FLL && a2 == 0xEE00657461446563;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001C4F9A6F0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x746143746E657665 && a2 == 0xED000079726F6765;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7261646E656C6163 && a2 == 0xEC0000006D657449;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000011 && 0x80000001C4F9A710 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1C4F02938();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
}

uint64_t sub_1C47A0E08(char a1)
{
  result = 0x656449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7961446C6C61;
      break;
    case 2:
      v3 = 0x447472617473;
      goto LABEL_14;
    case 3:
      result = 0x65746144646E65;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0x657A696E6167726FLL;
      break;
    case 8:
      result = 0x6962616C69617661;
      break;
    case 9:
      result = 0x737574617473;
      break;
    case 10:
      result = 0x6863617465447369;
      break;
    case 11:
      result = 0x6E6572727563636FLL;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      v3 = 0x43746E657665;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 14:
      result = 0x7261646E656C6163;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C47A1010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v26;
  a23 = v27;
  v28 = v23;
  v29 = sub_1C456902C(&unk_1EC0BCC40, &unk_1C4F2A6F0);
  sub_1C43FCDF8();
  v31 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C4401780();
  sub_1C442DF0C();
  v33 = sub_1C47A27A8();
  sub_1C444B100(&type metadata for EventFoundInAppsContent.CodingKeys, v34, v33);
  a13 = 0;
  sub_1C440AA84();
  sub_1C4F02738();
  if (!v24)
  {
    sub_1C441599C(1);
    sub_1C4400324();
    sub_1C4F02748();
    v35 = type metadata accessor for EventFoundInAppsContent(0);
    v36 = v35[6];
    a13 = 2;
    sub_1C4EF9CD8();
    sub_1C44195B8();
    sub_1C47A28A4(v37, v38, MEMORY[0x1E6969538]);
    sub_1C440E244(v28 + v36, &a13);
    v39 = v35[7];
    a13 = 3;
    sub_1C440E244(v28 + v39, &a13);
    sub_1C4401774(v35[8]);
    sub_1C442C9DC(4);
    sub_1C4F02738();
    sub_1C442C9DC(5);
    sub_1C4F02758();
    sub_1C442C9DC(6);
    sub_1C4F02758();
    sub_1C4401774(v35[11]);
    sub_1C442C9DC(7);
    sub_1C4F02738();
    a13 = *(v28 + v35[12]);
    sub_1C47A29A8();
    sub_1C4400324();
    sub_1C4F027E8();
    a13 = *(v28 + v35[13]);
    sub_1C47A29FC();
    sub_1C4400324();
    sub_1C4F027E8();
    sub_1C441599C(10);
    sub_1C4400324();
    sub_1C4F02748();
    v40 = v35[15];
    a13 = 11;
    sub_1C440E244(v28 + v40, &a13);
    sub_1C4401774(v35[16]);
    sub_1C442C9DC(12);
    sub_1C4F02738();
    sub_1C4401774(v35[17]);
    sub_1C442C9DC(13);
    sub_1C4F02738();
    a13 = 14;
    type metadata accessor for CalendarItem(0);
    sub_1C442FD38();
    sub_1C47A28A4(v41, v42, &unk_1C4F2A42C);
    sub_1C4F027E8();
    sub_1C441599C(15);
    sub_1C4400324();
    sub_1C4F027A8();
  }

  (*(v31 + 8))(v25, v29);
  sub_1C43FBC80();
}

void sub_1C47A1394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v25;
  a23 = v26;
  v120 = v23;
  v28 = v27;
  v114 = v29;
  v30 = type metadata accessor for CalendarItem(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v34 = v33 - v32;
  v35 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v36 = sub_1C43FBD18(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBD08();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v112 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = v112 - v44;
  v117 = sub_1C456902C(&qword_1EC0BCC10, &qword_1C4F2A6E8);
  sub_1C43FCDF8();
  v115 = v46;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  v48 = sub_1C4402274();
  v122 = type metadata accessor for EventFoundInAppsContent(v48);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  v121 = (v51 - v50);
  v119 = v28;
  sub_1C442DF0C();
  sub_1C47A27A8();
  v116 = v24;
  v52 = v120;
  sub_1C4F02BC8();
  if (v52)
  {
    sub_1C44042F8();
    v55 = 0;
    v56 = v121;
    v57 = v122;
    v120 = v52;
    sub_1C440962C(v119);
    v58 = 0;
    v59 = 0;
    LODWORD(v118) = 0;
    v60 = 0;
    if (!v34)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v53 = v45;
    LODWORD(v24) = v42;
    v120 = v39;
    v112[1] = v30;
    v113 = v34;
    a13 = 0;
    v54 = sub_1C4F02618();
    v64 = v121;
    *v121 = v54;
    v64[1] = v65;
    sub_1C4413124(1);
    v66 = sub_1C4F02628();
    v67 = v122;
    *(v64 + 16) = v66;
    v68 = sub_1C4EF9CD8();
    a13 = 2;
    sub_1C44195B8();
    v71 = sub_1C47A28A4(v69, v70, MEMORY[0x1E6969558]);
    sub_1C441C22C(v71, &a13);
    sub_1C45B69E4(v53, v64 + v67[6]);
    sub_1C441599C(3);
    sub_1C441C22C(v72, v73);
    v118 = v71;
    sub_1C45B69E4(v42, v64 + v67[7]);
    sub_1C4413124(4);
    v74 = sub_1C4F02618();
    sub_1C4433340(v74, v75, v67[8]);
    sub_1C4413124(5);
    v76 = sub_1C4F02638();
    sub_1C447F048(v76, v77, v67[9]);
    sub_1C4413124(6);
    v78 = sub_1C4F02638();
    sub_1C447F048(v78, v79, v67[10]);
    sub_1C4413124(7);
    v80 = sub_1C4F02618();
    sub_1C4433340(v80, v81, v67[11]);
    v82 = sub_1C47A27FC();
    sub_1C440BCB4(&type metadata for EventAvailability, v83, v84, v85, v82);
    *(v64 + v67[12]) = a13;
    v86 = sub_1C47A2850();
    sub_1C440BCB4(&type metadata for EventStatus, v87, v88, v89, v86);
    *(v121 + v122[13]) = a13;
    sub_1C443500C(10);
    *(v121 + v122[14]) = sub_1C4F02628();
    sub_1C441599C(11);
    sub_1C4F02658();
    sub_1C45B69E4(v120, v121 + v122[15]);
    sub_1C443500C(12);
    v90 = sub_1C4F02618();
    LODWORD(v118) = 1;
    v120 = 0;
    v92 = (v121 + v122[16]);
    *v92 = v90;
    v92[1] = v91;
    sub_1C443500C(13);
    v93 = v120;
    v94 = sub_1C4F02618();
    v120 = v93;
    if (v93)
    {
      v96 = sub_1C4410C00();
      v97(v96);
      v59 = 0;
      v58 = 0;
    }

    else
    {
      v98 = (v121 + v122[17]);
      *v98 = v94;
      v98[1] = v95;
      a13 = 14;
      sub_1C442FD38();
      sub_1C47A28A4(v99, v100, &unk_1C4F2A454);
      v101 = v120;
      sub_1C4F026C8();
      v120 = v101;
      if (v101)
      {
        v102 = sub_1C4410C00();
        v103(v102);
        v58 = 0;
        v59 = 1;
      }

      else
      {
        sub_1C47A28EC(v113, v121 + v122[18]);
        sub_1C443500C(15);
        v104 = v120;
        v105 = sub_1C4F02688();
        v120 = v104;
        if (!v104)
        {
          v108 = v105;
          v109 = sub_1C4410C00();
          v110(v109);
          v111 = v121;
          *(v121 + v122[19]) = v108 & 1;
          sub_1C47A2BB4(v111, v114, type metadata accessor for EventFoundInAppsContent);
          sub_1C440962C(v119);
          v61 = type metadata accessor for EventFoundInAppsContent;
          v63 = v111;
          goto LABEL_20;
        }

        v106 = sub_1C4410C00();
        v107(v106);
        v59 = 1;
        v58 = 1;
      }
    }

    sub_1C440962C(v119);
    sub_1C43FC290();
    v55 = 1;
    v60 = 1;
    v56 = v121;
    v57 = v122;

    sub_1C4420C3C(v56 + v57[6], &unk_1EC0B84E0, qword_1C4F0D2D0);
    if ((v68 & 1) == 0)
    {
LABEL_5:
      if (v24)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  sub_1C4420C3C(v56 + v57[7], &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (v24)
  {
LABEL_6:
    sub_1C44102F0();
    if ((v55 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  if (!v55)
  {
LABEL_7:
    if (v60)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_1C44102F0();
  if (v60)
  {
LABEL_8:
    sub_1C4420C3C(v56 + v57[15], &unk_1EC0B84E0, qword_1C4F0D2D0);
    if ((v118 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v118)
  {
LABEL_9:
    if (v59)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  sub_1C44102F0();
  if (v59)
  {
LABEL_10:
    sub_1C44102F0();
    if ((v58 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (v58)
  {
LABEL_19:
    sub_1C4425ADC();
    v63 = v56 + v62;
LABEL_20:
    sub_1C47A2950(v63, v61);
  }

LABEL_21:
  sub_1C43FBC80();
}

uint64_t sub_1C47A1B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C47A1B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47A0914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47A1BC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C47A0E00();
  *a1 = result;
  return result;
}

uint64_t sub_1C47A1BEC(uint64_t a1)
{
  v2 = sub_1C47A27A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47A1C28(uint64_t a1)
{
  v2 = sub_1C47A27A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C47A1CB4(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BCD18, &qword_1C4F2A760);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4401780();
  sub_1C4461BB8(0, &unk_1EDDF0390, 0x1E6966A08);
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  return sub_1C4F018F8();
}

uint64_t sub_1C47A1DC8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1C47A2EA4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4575BB0;
  aBlock[3] = &unk_1F43EBA78;
  v13 = _Block_copy(aBlock);

  [a2 enumerateEventsMatchingPredicate:a3 usingBlock:v13];
  _Block_release(v13);
  return sub_1C4F018E8();
}

void sub_1C47A1F88(void *a1, _BYTE *a2)
{
  v4 = sub_1C456902C(&unk_1EC0BCD30, &qword_1C4F2A770);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (*a2 == 1)
  {
    sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
    sub_1C4F018E8();
  }

  v14 = [a1 startDate];
  if (!v14)
  {
    v23 = sub_1C4EF9CD8();
    sub_1C440BAA8(v13, 1, 1, v23);
    v24 = v13;
LABEL_15:
    sub_1C4420C3C(v24, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return;
  }

  v15 = v14;
  sub_1C4EF9C78();

  v16 = sub_1C4EF9CD8();
  sub_1C440BAA8(v13, 0, 1, v16);
  sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v17 = [a1 endDate];
  if (!v17)
  {
    sub_1C440BAA8(v10, 1, 1, v16);
    v24 = v10;
    goto LABEL_15;
  }

  v18 = v17;
  sub_1C4EF9C78();

  sub_1C440BAA8(v10, 0, 1, v16);
  sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v19 = sub_1C4F01138();
  v21 = sub_1C479D6D8(v19, v20, a1);
  if (v21 && (v30 = v21, sub_1C456902C(&unk_1EC0BCD00, &unk_1C4F0CE00), sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00), (swift_dynamicCast() & 1) != 0))
  {

    v30 = a1;
    v22 = a1;
    sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
    sub_1C4F018D8();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CF8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Event did not originate from suggested event", v28, 2u);
      MEMORY[0x1C6942830](v28, -1, -1);
    }
  }
}

void sub_1C47A236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v24 = sub_1C456902C(&unk_1EC0BCCE0, &unk_1C4F2A728);
  sub_1C43FCDF8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = *(v20 + 24);
  v35 = sub_1C4EF9BF8();
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v36 = sub_1C4EF9BF8();
  v37 = [v34 predicateForEventsWithStartDate:v35 endDate:v36 calendars:0];

  sub_1C47A1CB4(v37);
  (*(v26 + 16))(v30, v33, v24);
  sub_1C456902C(&unk_1EC0BCCF0, qword_1C4F2A740);
  sub_1C4401CBC(&unk_1EDDDBB98, &unk_1EC0BCCE0, &unk_1C4F2A728, MEMORY[0x1E69E86A0]);
  sub_1C4F02448();

  (*(v26 + 8))(v33, v24);
  sub_1C43FBC80();
}

uint64_t sub_1C47A2564(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = sub_1C4EF9CD8();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C47A2638, 0, 0);
}

id sub_1C47A2638()
{
  result = [*(v0 + 56) startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = *(v0 + 56);
  sub_1C4EF9C78();

  result = [v3 endDate];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  sub_1C4EF9C78();

  v11 = sub_1C456902C(&unk_1EC0BCCF0, qword_1C4F2A740);
  sub_1C47A027C(v6, v10 + *(v11 + 32));
  v12 = *(v8 + 32);
  v12(v10, v5, v9);
  v12(v10 + *(v11 + 28), v7, v9);

  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_1C47A27A8()
{
  result = qword_1EC0BCC18;
  if (!qword_1EC0BCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC18);
  }

  return result;
}

unint64_t sub_1C47A27FC()
{
  result = qword_1EC0BCC28;
  if (!qword_1EC0BCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC28);
  }

  return result;
}

unint64_t sub_1C47A2850()
{
  result = qword_1EC0BCC30;
  if (!qword_1EC0BCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC30);
  }

  return result;
}

uint64_t sub_1C47A28A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C47A28EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47A2950(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C47A29A8()
{
  result = qword_1EC0BCC50;
  if (!qword_1EC0BCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC50);
  }

  return result;
}

unint64_t sub_1C47A29FC()
{
  result = qword_1EC0BCC58;
  if (!qword_1EC0BCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC58);
  }

  return result;
}

unint64_t sub_1C47A2A50()
{
  result = qword_1EC0BCC68;
  if (!qword_1EC0BCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC68);
  }

  return result;
}

unint64_t sub_1C47A2AA4()
{
  result = qword_1EC0BCC70;
  if (!qword_1EC0BCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC70);
  }

  return result;
}

unint64_t sub_1C47A2AF8()
{
  result = qword_1EC0BCC80;
  if (!qword_1EC0BCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC80);
  }

  return result;
}

uint64_t sub_1C47A2B4C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1C47A2B60()
{
  result = qword_1EC0BCC88;
  if (!qword_1EC0BCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC88);
  }

  return result;
}

uint64_t sub_1C47A2BB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C47A2C14()
{
  result = qword_1EC0BCC98;
  if (!qword_1EC0BCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC98);
  }

  return result;
}

unint64_t sub_1C47A2C68()
{
  result = qword_1EC0BCCB0;
  if (!qword_1EC0BCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCB0);
  }

  return result;
}

unint64_t sub_1C47A2CBC()
{
  result = qword_1EC0BCCB8;
  if (!qword_1EC0BCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCB8);
  }

  return result;
}

unint64_t sub_1C47A2D10()
{
  result = qword_1EC0BCCC0;
  if (!qword_1EC0BCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCC0);
  }

  return result;
}

unint64_t sub_1C47A2D64()
{
  result = qword_1EC0BCCD0;
  if (!qword_1EC0BCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCD0);
  }

  return result;
}

unint64_t sub_1C47A2DB8()
{
  result = qword_1EC0BCCD8;
  if (!qword_1EC0BCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCD8);
  }

  return result;
}

uint64_t sub_1C47A2E24(void *a1)
{
  v2 = [a1 attendees];

  if (!v2)
  {
    return 0;
  }

  sub_1C4461BB8(0, &unk_1EDDDBAF0, 0x1E6966A80);
  v3 = sub_1C4F01678();

  return v3;
}

void sub_1C47A2EA4(void *a1, _BYTE *a2)
{
  v4 = sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
  sub_1C43FBD18(v4);

  sub_1C47A1F88(a1, a2);
}

_BYTE *sub_1C47A2F2C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CalendarItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventFoundInAppsContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C47A3258(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C47A3338()
{
  result = qword_1EC0BCD48;
  if (!qword_1EC0BCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD48);
  }

  return result;
}

unint64_t sub_1C47A3390()
{
  result = qword_1EC0BCD50;
  if (!qword_1EC0BCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD50);
  }

  return result;
}

unint64_t sub_1C47A33E8()
{
  result = qword_1EC0BCD58;
  if (!qword_1EC0BCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD58);
  }

  return result;
}

unint64_t sub_1C47A3440()
{
  result = qword_1EC0BCD60;
  if (!qword_1EC0BCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD60);
  }

  return result;
}

unint64_t sub_1C47A3498()
{
  result = qword_1EC0BCD68;
  if (!qword_1EC0BCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD68);
  }

  return result;
}

unint64_t sub_1C47A34F0()
{
  result = qword_1EC0BCD70;
  if (!qword_1EC0BCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD70);
  }

  return result;
}

unint64_t sub_1C47A3548()
{
  result = qword_1EC0BCD78;
  if (!qword_1EC0BCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD78);
  }

  return result;
}

unint64_t sub_1C47A35A0()
{
  result = qword_1EC0BCD80;
  if (!qword_1EC0BCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD80);
  }

  return result;
}

unint64_t sub_1C47A35F8()
{
  result = qword_1EC0BCD88;
  if (!qword_1EC0BCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD88);
  }

  return result;
}

unint64_t sub_1C47A3650()
{
  result = qword_1EC0BCD90;
  if (!qword_1EC0BCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD90);
  }

  return result;
}

unint64_t sub_1C47A36A8()
{
  result = qword_1EC0BCD98;
  if (!qword_1EC0BCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD98);
  }

  return result;
}

unint64_t sub_1C47A36FC()
{
  result = qword_1EC0BCDA0;
  if (!qword_1EC0BCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCDA0);
  }

  return result;
}

unint64_t sub_1C47A3750()
{
  result = qword_1EC0BCDA8;
  if (!qword_1EC0BCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCDA8);
  }

  return result;
}

uint64_t sub_1C47A37BC()
{
  sub_1C45C8228();

  return swift_deallocClassInstance();
}

uint64_t sub_1C47A3814@<X0>(int a1@<W8>)
{
  v4 = sub_1C4440988();
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C4402FE0();
  v7 = type metadata accessor for EventStreamsDataCollection(v6);
  sub_1C4460108(v1 + *(v7 + 32), v2, &qword_1EC0BCF68, &qword_1C4F2C1A0);
  type metadata accessor for EventStreamsEvent(0);
  sub_1C440A6F0(v2);
  if (v8)
  {
    sub_1C4F00318();
    if (qword_1EDDEF908 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v2, &qword_1EC0BCF68, &qword_1C4F2C1A0);
    }
  }

  else
  {
    sub_1C4410C10();
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A3930()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for EventStreamsDataCollection(v1);
  sub_1C4420C3C(v0 + *(v2 + 32), &qword_1EC0BCF68, &qword_1C4F2C1A0);
  sub_1C4410C10();
  sub_1C44022A0();
  sub_1C47C0140();
  type metadata accessor for EventStreamsEvent(0);
  v3 = sub_1C4410B98();

  return sub_1C440BAA8(v3, v4, v5, v6);
}

uint64_t sub_1C47A39A0@<X0>(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  v3 = type metadata accessor for EventStreamsDataCollection(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a2 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v3[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  type metadata accessor for EventStreamsEvent(0);
  sub_1C43FCF64();
  result = sub_1C440BAA8(v7, v8, v9, v10);
  v12 = a2 + v3[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

uint64_t sub_1C47A3A34()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C4410328(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.MotionState(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BD030, &unk_1C4F2C270);
  }

  return result;
}

uint64_t sub_1C47A3B14()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BD030, &unk_1C4F2C270);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.MotionState(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A3BF0()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C4410328(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.InferredMode(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BD020, &qword_1C4F2C260);
  }

  return result;
}

uint64_t sub_1C47A3CD0(void (*a1)(void))
{
  sub_1C4F00318();
  a1(0);
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v3, v4, v5, v2);
  sub_1C43FCF64();

  return sub_1C440BAA8(v6, v7, v8, v2);
}

uint64_t sub_1C47A3D50()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BD020, &qword_1C4F2C260);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.InferredMode(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A3E4C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A3F40()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A4034()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A4128()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A421C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A42F0@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C44089E8();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for EventStreamsEvent.LocationVisit(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6A38 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0BD010, &unk_1C4F2C248);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A4420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4405A6C();
  v8 = v7;
  sub_1C4F00318();
  v9 = *(v6(0) + 20);
  if (*v5 != -1)
  {
    swift_once();
  }

  *(v8 + v9) = *v4;
}

uint64_t sub_1C47A44A0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BD010, &unk_1C4F2C248);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.LocationVisit(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A459C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A4670()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C4410328(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BCFF0, &qword_1C4F2C228);
  }

  return result;
}

uint64_t sub_1C47A4750()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BCFF0, &qword_1C4F2C228);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A484C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A4920()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C4410328(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BCFE0, &qword_1C4F2C218);
  }

  return result;
}

uint64_t sub_1C47A4A00()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BCFE0, &qword_1C4F2C218);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A4ADC@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C44089E8();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for EventStreamsEvent.AmbientLight(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6AA8 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0BCFD0, &qword_1C4F2C208);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A4C0C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BCFD0, &qword_1C4F2C208);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.AmbientLight(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A4CE8@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C44089E8();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for EventStreamsEvent.Wallet(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EC0B6A20 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A4E18()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BCFC0, &qword_1C4F2C1F8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.Wallet(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A4F14()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A5008()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A50FC()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A51F0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A52C4()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C4410328(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.SemanticLocation(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  }

  return result;
}

uint64_t sub_1C47A53A4()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BCFB0, &qword_1C4F2C1E8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.SemanticLocation(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A5480()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C4410328(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.Bluetooth(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  }

  return result;
}

uint64_t sub_1C47A5560()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BCFA0, &qword_1C4F2C1D8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.Bluetooth(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A565C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A5730@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  sub_1C44089E8();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  type metadata accessor for EventStreamsEvent.Calendar(0);
  sub_1C440A6F0(v5);
  if (v6)
  {
    sub_1C4F00318();
    if (qword_1EDDEEE60 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v5, &qword_1EC0BCF90, &qword_1C4F2C1C8);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A5860()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BCF90, &qword_1C4F2C1C8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.Calendar(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A593C()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44042B0();
  sub_1C4410328(v3);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.POI(0);
  sub_1C4400334();
  if (!v4)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v5 = sub_1C4401790();
  result = sub_1C441F900(v5);
  if (!v4)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  }

  return result;
}

uint64_t sub_1C47A5A1C()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BCF80, &qword_1C4F2C1B8);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  if ((sub_1C447F05C(v2) & 1) == 0)
  {
    sub_1C4425AF4();
    v3 = sub_1C43FD6F4();
    v4 = sub_1C47A8B9C(v3);
    sub_1C44222F4(v4);
  }

  sub_1C441EB9C();
  v5 = type metadata accessor for EventStreamsEvent.POI(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A5BD8()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.Wallet(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.Wallet._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    v4 = sub_1C43FD6F4();
    v5 = sub_1C47B5600(v4);
    sub_1C44222F4(v5);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v6 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v6);
  sub_1C43FC29C();
  v7 = sub_1C44022A0();
  sub_1C44408D4(v7, v8, v9, v10);
  return swift_endAccess();
}

uint64_t sub_1C47A5CDC()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.Wallet(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.Wallet._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    v4 = sub_1C43FD6F4();
    v5 = sub_1C47B5600(v4);
    sub_1C44222F4(v5);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v6 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v6);
  sub_1C43FC29C();
  v7 = sub_1C44022A0();
  sub_1C44408D4(v7, v8, v9, v10);
  return swift_endAccess();
}

uint64_t sub_1C47A5DE0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.LocationVisit(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.LocationVisit._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A5F08()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.LocationVisit(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.LocationVisit._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A6030()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.LocationVisit(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.LocationVisit._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A62D8()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.AmbientLight(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A6400()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.AmbientLight(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A6528()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.AmbientLight(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A6650()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.AmbientLight(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A6778()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.Calendar(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A68A0()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.Calendar(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A69C8()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.Calendar(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A6AF0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C44042B0();
  v11 = *(v4 + *(a1(v10) + 20));
  v12 = *a2;
  sub_1C440D164(v11 + v12, v20);
  sub_1C4460108(v11 + v12, v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v13)
  {
    return sub_1C47C0140();
  }

  v14 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v14;
  a3[2] = v14;
  sub_1C4F00318();
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v18);
  result = sub_1C4400334();
  if (!v13)
  {
    return sub_1C4420C3C(v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C47A6C40()
{
  sub_1C44159A8();
  v0 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C44042B0();
  v3 = type metadata accessor for EventStreamsEvent.Calendar(v2);
  if ((sub_1C4423B64(v3) & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    sub_1C44222F4(v4);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v5);
  sub_1C43FC29C();
  v6 = sub_1C44022A0();
  sub_1C44408D4(v6, v7, v8, v9);
  return swift_endAccess();
}

uint64_t sub_1C47A6D60(uint64_t (*a1)(uint64_t))
{
  v4 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = a1(v6);
  sub_1C4417FEC(*(v7 + 20));
  type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v8)
  {
    return sub_1C47C0140();
  }

  sub_1C444ACD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v9, v10, v11, v12);
  result = sub_1C4400334();
  if (!v8)
  {
    return sub_1C4420C3C(v2, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C47A6E84()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C4420C3C(v0 + *(v3 + 20), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44195D0();
  sub_1C44022A0();
  sub_1C47C0140();
  type metadata accessor for FeatureValue(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C47A6F10(uint64_t (*a1)(uint64_t))
{
  v4 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = a1(v6);
  sub_1C4417FEC(*(v7 + 24));
  type metadata accessor for FeatureValue(0);
  sub_1C4400334();
  if (!v8)
  {
    return sub_1C47C0140();
  }

  sub_1C444ACD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v9, v10, v11, v12);
  result = sub_1C4400334();
  if (!v8)
  {
    return sub_1C4420C3C(v2, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C47A7034()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C4420C3C(v0 + *(v3 + 24), &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C44195D0();
  sub_1C44022A0();
  sub_1C47C0140();
  type metadata accessor for FeatureValue(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C47A70A8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151D88);
  sub_1C442B738(v0, qword_1EC151D88);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dailyUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startdate";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "endDate";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "event";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "protoVersion";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47A7328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_1C4406AC8();
        sub_1C47A73E8(v6, v7, v8, v9);
        break;
      case 2:
        v22 = sub_1C4406AC8();
        sub_1C47A744C(v22, v23, v24, v25);
        break;
      case 3:
        v14 = sub_1C4406AC8();
        sub_1C47A74B0(v14, v15, v16, v17);
        break;
      case 4:
        v18 = sub_1C4406AC8();
        sub_1C47A7514(v18, v19, v20, v21);
        break;
      case 5:
        v10 = sub_1C4406AC8();
        sub_1C47A75C8(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47A7514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EventStreamsDataCollection(0);
  type metadata accessor for EventStreamsEvent(0);
  sub_1C47BF154(qword_1EDDEEBC8, type metadata accessor for EventStreamsEvent, &unk_1C4F2BFBC);
  return sub_1C4F003F8();
}

uint64_t sub_1C47A762C()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C47A7694(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_1C43FEE60();
    sub_1C47A770C(v6, v7, v8, v9);
    v10 = sub_1C43FEE60();
    sub_1C47A7784(v10, v11, v12, v13);
    v14 = sub_1C43FEE60();
    sub_1C47A77FC(v14, v15, v16, v17);
    v18 = sub_1C43FEE60();
    sub_1C47A79D0(v18, v19, v20, v21);
    return sub_1C4435894();
  }

  return result;
}

uint64_t sub_1C47A7694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EventStreamsDataCollection(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47A770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EventStreamsDataCollection(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C47A7784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EventStreamsDataCollection(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C47A77FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BCF68, &qword_1C4F2C1A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for EventStreamsDataCollection(0);
  sub_1C4460108(a1 + *(v9 + 32), v7, &qword_1EC0BCF68, &qword_1C4F2C1A0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCF68, &qword_1C4F2C1A0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDEEBC8, type metadata accessor for EventStreamsEvent, &unk_1C4F2BFBC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47A79D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EventStreamsDataCollection(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

void sub_1C47A7A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for EventStreamsEvent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = sub_1C456902C(&qword_1EC0BCF68, &qword_1C4F2C1A0);
  sub_1C43FBD18(v32);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = sub_1C456902C(&qword_1EC0BCF70, &qword_1C4F2C1A8);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  v38 = sub_1C4402FE0();
  v39 = type metadata accessor for EventStreamsDataCollection(v38);
  v40 = *(v39 + 20);
  v41 = (v26 + v40);
  v42 = *(v26 + v40 + 8);
  v43 = (v24 + v40);
  v44 = v43[1];
  if (!v42)
  {
    if (v44)
    {
      goto LABEL_28;
    }

LABEL_10:
    sub_1C44236C4();
    if (v47)
    {
      if (!v46)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1C43FD5A0();
      if (v48)
      {
        goto LABEL_28;
      }
    }

    sub_1C44236C4();
    if (v50)
    {
      if (!v49)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1C43FD5A0();
      if (v51)
      {
        goto LABEL_28;
      }
    }

    v52 = *(v39 + 32);
    v53 = *(v36 + 48);
    sub_1C4460108(v26 + v52, v20, &qword_1EC0BCF68, &qword_1C4F2C1A0);
    sub_1C4460108(v24 + v52, v20 + v53, &qword_1EC0BCF68, &qword_1C4F2C1A0);
    sub_1C440175C(v20, 1, v27);
    if (v45)
    {
      sub_1C440175C(v20 + v53, 1, v27);
      if (v45)
      {
        sub_1C4420C3C(v20, &qword_1EC0BCF68, &qword_1C4F2C1A0);
        goto LABEL_32;
      }
    }

    else
    {
      sub_1C4460108(v20, v35, &qword_1EC0BCF68, &qword_1C4F2C1A0);
      sub_1C440175C(v20 + v53, 1, v27);
      if (!v54)
      {
        sub_1C4410C10();
        sub_1C47C0140();
        v57 = *(v27 + 20);
        v58 = *&v35[v57];
        v59 = *(v31 + v57);
        if (v58 == v59 || (, , v60 = sub_1C47AF674(v58, v59), , , v60))
        {
          sub_1C4F00328();
          sub_1C4406D78();
          sub_1C47BF154(v61, v62, MEMORY[0x1E69AAC10]);
          v63 = sub_1C4F010B8();
          sub_1C47C00EC();
          sub_1C47C00EC();
          sub_1C4420C3C(v20, &qword_1EC0BCF68, &qword_1C4F2C1A0);
          if ((v63 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_32:
          sub_1C44236C4();
          if (v65)
          {
            if (!v64)
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_1C43FD5A0();
            if (v66)
            {
              goto LABEL_28;
            }
          }

          sub_1C4F00328();
          sub_1C4406D78();
          sub_1C47BF154(v67, v68, MEMORY[0x1E69AAC10]);
          sub_1C4404C28();
          sub_1C4F010B8();
          goto LABEL_28;
        }

        sub_1C47C00EC();
        sub_1C47C00EC();
        v55 = &qword_1EC0BCF68;
        v56 = &qword_1C4F2C1A0;
LABEL_27:
        sub_1C4420C3C(v20, v55, v56);
        goto LABEL_28;
      }

      sub_1C47C00EC();
    }

    v55 = &qword_1EC0BCF70;
    v56 = &qword_1C4F2C1A8;
    goto LABEL_27;
  }

  if (v44)
  {
    v45 = *v41 == *v43 && v42 == v44;
    if (v45 || (sub_1C4F02938() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_28:
  sub_1C43FE9F0();
}

uint64_t sub_1C47A7E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BCF60, type metadata accessor for EventStreamsDataCollection, &unk_1C4F2C0EC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47A7F2C(uint64_t a1)
{
  sub_1C47BF154(&qword_1EDDE1098, type metadata accessor for EventStreamsDataCollection, &unk_1C4F2C124);

  return sub_1C4F00428();
}

uint64_t sub_1C47A7FF4(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EDDE1098, type metadata accessor for EventStreamsDataCollection, &unk_1C4F2C124);

  return sub_1C4F00438();
}

uint64_t sub_1C47A8074()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151DA0);
  sub_1C442B738(v0, qword_1EC151DA0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1C4F2AD00;
  v4 = v58 + v3 + v1[14];
  *(v58 + v3) = 1;
  *v4 = "motionState";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v58 + v3 + v2 + v1[14];
  *(v58 + v3 + v2) = 2;
  *v8 = "inferredMode";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v58 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "localAppCategory";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v58 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "remoteAppCategory";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v58 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "wifiConnected";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v58 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "deviceUnlocked";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v58 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "deviceBacklightOn";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v58 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "locationVisit";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v58 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "placeInference";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v58 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "phoneCharging";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v58 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "virtualInteractions";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v7();
  v27 = (v58 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "userComputedFocusModeType";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v7();
  v29 = (v58 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "nowPlayingState";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v58 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "ambientLight";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v7();
  v33 = (v58 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "wallet";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v7();
  v35 = (v58 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "cdInBedDetected";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v7();
  v37 = (v58 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "carplayConnected";
  *(v38 + 1) = 16;
  v38[16] = 2;
  v7();
  v39 = (v58 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "alarmType";
  *(v40 + 1) = 9;
  v40[16] = 2;
  v7();
  v41 = (v58 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 20;
  *v42 = "airplaneModeEnabled";
  *(v42 + 1) = 19;
  v42[16] = 2;
  v7();
  v43 = (v58 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 21;
  *v44 = "eventFoundInAppsCategory";
  *(v44 + 1) = 24;
  v44[16] = 2;
  v7();
  v45 = (v58 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 22;
  *v46 = "semanticLocation";
  *(v46 + 1) = 16;
  v46[16] = 2;
  v7();
  v47 = (v58 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 23;
  *v48 = "bluetooth";
  *(v48 + 1) = 9;
  v48[16] = 2;
  v7();
  v49 = (v58 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 24;
  *v50 = "lowPowerMode";
  *(v50 + 1) = 12;
  v50[16] = 2;
  v7();
  v51 = (v58 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 25;
  *v52 = "microlocationConfidence";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v58 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 26;
  *v54 = "calendar";
  *(v54 + 1) = 8;
  v54[16] = 2;
  v7();
  v55 = (v58 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 27;
  *v56 = "poi";
  *(v56 + 1) = 3;
  v56[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C47A8830()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__motionState;
  v2 = type metadata accessor for EventStreamsEvent.MotionState(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__inferredMode;
  v4 = type metadata accessor for EventStreamsEvent.InferredMode(0);
  sub_1C440BAA8(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__localAppCategory;
  v6 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v5, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__remoteAppCategory, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wifiConnected, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceUnlocked, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceBacklightOn, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__locationVisit;
  v8 = type metadata accessor for EventStreamsEvent.LocationVisit(0);
  sub_1C440BAA8(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeInference;
  v10 = type metadata accessor for EventStreamsEvent.PlaceInference(0);
  sub_1C440BAA8(v0 + v9, 1, 1, v10);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__phoneCharging, 1, 1, v6);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__virtualInteractions;
  v12 = type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  sub_1C440BAA8(v0 + v11, 1, 1, v12);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userComputedFocusModeType, 1, 1, v6);
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__nowPlayingState;
  v14 = type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  sub_1C440BAA8(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLight;
  v16 = type metadata accessor for EventStreamsEvent.AmbientLight(0);
  sub_1C440BAA8(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wallet;
  v18 = type metadata accessor for EventStreamsEvent.Wallet(0);
  sub_1C440BAA8(v0 + v17, 1, 1, v18);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__cdInBedDetected, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__carplayConnected, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__alarmType, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__airplaneModeEnabled, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__eventFoundInAppsCategory, 1, 1, v6);
  v19 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__semanticLocation;
  v20 = type metadata accessor for EventStreamsEvent.SemanticLocation(0);
  sub_1C440BAA8(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__bluetooth;
  v22 = type metadata accessor for EventStreamsEvent.Bluetooth(0);
  sub_1C440BAA8(v0 + v21, 1, 1, v22);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__lowPowerMode, 1, 1, v6);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__microlocationConfidence, 1, 1, v6);
  v23 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendar;
  v24 = type metadata accessor for EventStreamsEvent.Calendar(0);
  sub_1C440BAA8(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poi;
  v26 = type metadata accessor for EventStreamsEvent.POI(0);
  sub_1C440BAA8(v0 + v25, 1, 1, v26);
  return v0;
}

uint64_t sub_1C47A8B9C(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BCF80, &qword_1C4F2C1B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v155 = &v120 - v4;
  v5 = sub_1C456902C(&qword_1EC0BCF90, &qword_1C4F2C1C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v154 = &v120 - v6;
  v7 = sub_1C456902C(&qword_1EC0BCFA0, &qword_1C4F2C1D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v153 = &v120 - v8;
  v9 = sub_1C456902C(&qword_1EC0BCFB0, &qword_1C4F2C1E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v152 = &v120 - v10;
  v11 = sub_1C456902C(&qword_1EC0BCFC0, &qword_1C4F2C1F8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v151 = &v120 - v12;
  v13 = sub_1C456902C(&qword_1EC0BCFD0, &qword_1C4F2C208);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v150 = &v120 - v14;
  v15 = sub_1C456902C(&qword_1EC0BCFE0, &qword_1C4F2C218);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v146 = &v120 - v16;
  v17 = sub_1C456902C(&qword_1EC0BCFF0, &qword_1C4F2C228);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v120 - v18;
  v19 = sub_1C456902C(&qword_1EC0BD000, &qword_1C4F2C238);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v137 = &v120 - v20;
  v21 = sub_1C456902C(&qword_1EC0BD010, &unk_1C4F2C248);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v134 = &v120 - v22;
  v23 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v120 - v24;
  v26 = sub_1C456902C(&qword_1EC0BD020, &qword_1C4F2C260);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v122 = &v120 - v27;
  v28 = sub_1C456902C(&qword_1EC0BD030, &unk_1C4F2C270);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v120 - v29;
  v31 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__motionState;
  v32 = type metadata accessor for EventStreamsEvent.MotionState(0);
  sub_1C440BAA8(v1 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__inferredMode;
  v120 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__inferredMode;
  v34 = type metadata accessor for EventStreamsEvent.InferredMode(0);
  sub_1C440BAA8(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__localAppCategory;
  v121 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__localAppCategory;
  v36 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v35, 1, 1, v36);
  v123 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__remoteAppCategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__remoteAppCategory, 1, 1, v36);
  v124 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wifiConnected;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wifiConnected, 1, 1, v36);
  v125 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceUnlocked;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceUnlocked, 1, 1, v36);
  v126 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceBacklightOn;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceBacklightOn, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__locationVisit;
  v127 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__locationVisit;
  v38 = type metadata accessor for EventStreamsEvent.LocationVisit(0);
  sub_1C440BAA8(v1 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeInference;
  v128 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeInference;
  v40 = type metadata accessor for EventStreamsEvent.PlaceInference(0);
  sub_1C440BAA8(v1 + v39, 1, 1, v40);
  v129 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__phoneCharging;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__phoneCharging, 1, 1, v36);
  v41 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__virtualInteractions;
  v130 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__virtualInteractions;
  v42 = type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  sub_1C440BAA8(v1 + v41, 1, 1, v42);
  v131 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userComputedFocusModeType;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userComputedFocusModeType, 1, 1, v36);
  v43 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__nowPlayingState;
  v132 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__nowPlayingState;
  v44 = type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  sub_1C440BAA8(v1 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLight;
  v133 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLight;
  v46 = type metadata accessor for EventStreamsEvent.AmbientLight(0);
  sub_1C440BAA8(v1 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wallet;
  v135 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wallet;
  v48 = type metadata accessor for EventStreamsEvent.Wallet(0);
  sub_1C440BAA8(v1 + v47, 1, 1, v48);
  v136 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__cdInBedDetected;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__cdInBedDetected, 1, 1, v36);
  v138 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__carplayConnected;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__carplayConnected, 1, 1, v36);
  v139 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__alarmType;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__alarmType, 1, 1, v36);
  v140 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__airplaneModeEnabled;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__airplaneModeEnabled, 1, 1, v36);
  v142 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__eventFoundInAppsCategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__eventFoundInAppsCategory, 1, 1, v36);
  v49 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__semanticLocation;
  v143 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__semanticLocation;
  v50 = type metadata accessor for EventStreamsEvent.SemanticLocation(0);
  sub_1C440BAA8(v1 + v49, 1, 1, v50);
  v51 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__bluetooth;
  v144 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__bluetooth;
  v52 = type metadata accessor for EventStreamsEvent.Bluetooth(0);
  sub_1C440BAA8(v1 + v51, 1, 1, v52);
  v145 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__lowPowerMode;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__lowPowerMode, 1, 1, v36);
  v147 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__microlocationConfidence;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__microlocationConfidence, 1, 1, v36);
  v53 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendar;
  v148 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendar;
  v54 = type metadata accessor for EventStreamsEvent.Calendar(0);
  sub_1C440BAA8(v1 + v53, 1, 1, v54);
  v55 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poi;
  v149 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poi;
  v56 = type metadata accessor for EventStreamsEvent.POI(0);
  sub_1C440BAA8(v1 + v55, 1, 1, v56);
  v57 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__motionState;
  swift_beginAccess();
  sub_1C4460108(a1 + v57, v30, &qword_1EC0BD030, &unk_1C4F2C270);
  swift_beginAccess();
  sub_1C44408D4(v30, v1 + v31, &qword_1EC0BD030, &unk_1C4F2C270);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__inferredMode;
  swift_beginAccess();
  v59 = v122;
  sub_1C4460108(a1 + v58, v122, &qword_1EC0BD020, &qword_1C4F2C260);
  v60 = v120;
  swift_beginAccess();
  sub_1C44408D4(v59, v1 + v60, &qword_1EC0BD020, &qword_1C4F2C260);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__localAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v61, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v62 = v121;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v62, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__remoteAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v63, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v64 = v123;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wifiConnected;
  swift_beginAccess();
  sub_1C4460108(a1 + v65, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v66 = v124;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceUnlocked;
  swift_beginAccess();
  sub_1C4460108(a1 + v67, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v68 = v125;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceBacklightOn;
  swift_beginAccess();
  sub_1C4460108(a1 + v69, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v70 = v126;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v70, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v71 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__locationVisit;
  swift_beginAccess();
  v72 = v134;
  sub_1C4460108(a1 + v71, v134, &qword_1EC0BD010, &unk_1C4F2C248);
  v73 = v127;
  swift_beginAccess();
  sub_1C44408D4(v72, v1 + v73, &qword_1EC0BD010, &unk_1C4F2C248);
  swift_endAccess();
  v74 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeInference;
  swift_beginAccess();
  v75 = v137;
  sub_1C4460108(a1 + v74, v137, &qword_1EC0BD000, &qword_1C4F2C238);
  v76 = v128;
  swift_beginAccess();
  sub_1C44408D4(v75, v1 + v76, &qword_1EC0BD000, &qword_1C4F2C238);
  swift_endAccess();
  v77 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__phoneCharging;
  swift_beginAccess();
  sub_1C4460108(a1 + v77, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v78 = v129;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v78, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v79 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__virtualInteractions;
  swift_beginAccess();
  v80 = v141;
  sub_1C4460108(a1 + v79, v141, &qword_1EC0BCFF0, &qword_1C4F2C228);
  v81 = v130;
  swift_beginAccess();
  sub_1C44408D4(v80, v1 + v81, &qword_1EC0BCFF0, &qword_1C4F2C228);
  swift_endAccess();
  v82 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userComputedFocusModeType;
  swift_beginAccess();
  sub_1C4460108(a1 + v82, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v83 = v131;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v84 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__nowPlayingState;
  swift_beginAccess();
  v85 = v146;
  sub_1C4460108(a1 + v84, v146, &qword_1EC0BCFE0, &qword_1C4F2C218);
  v86 = v132;
  swift_beginAccess();
  sub_1C44408D4(v85, v1 + v86, &qword_1EC0BCFE0, &qword_1C4F2C218);
  swift_endAccess();
  v87 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLight;
  swift_beginAccess();
  v88 = v150;
  sub_1C4460108(a1 + v87, v150, &qword_1EC0BCFD0, &qword_1C4F2C208);
  v89 = v133;
  swift_beginAccess();
  sub_1C44408D4(v88, v1 + v89, &qword_1EC0BCFD0, &qword_1C4F2C208);
  swift_endAccess();
  v90 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wallet;
  swift_beginAccess();
  v91 = v151;
  sub_1C4460108(a1 + v90, v151, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  v92 = v135;
  swift_beginAccess();
  sub_1C44408D4(v91, v1 + v92, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  swift_endAccess();
  v93 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__cdInBedDetected;
  swift_beginAccess();
  sub_1C4460108(a1 + v93, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v94 = v136;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v94, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v95 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__carplayConnected;
  swift_beginAccess();
  sub_1C4460108(a1 + v95, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v96 = v138;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v96, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v97 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__alarmType;
  swift_beginAccess();
  sub_1C4460108(a1 + v97, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v98 = v139;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v98, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v99 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__airplaneModeEnabled;
  swift_beginAccess();
  sub_1C4460108(a1 + v99, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v100 = v140;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v100, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v101 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__eventFoundInAppsCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v101, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v102 = v142;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v102, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v103 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__semanticLocation;
  swift_beginAccess();
  v104 = v152;
  sub_1C4460108(a1 + v103, v152, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  v105 = v143;
  swift_beginAccess();
  sub_1C44408D4(v104, v1 + v105, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  swift_endAccess();
  v106 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__bluetooth;
  swift_beginAccess();
  v107 = v153;
  sub_1C4460108(a1 + v106, v153, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  v108 = v144;
  swift_beginAccess();
  sub_1C44408D4(v107, v1 + v108, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  swift_endAccess();
  v109 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v109, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v110 = v145;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v110, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v111 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__microlocationConfidence;
  swift_beginAccess();
  sub_1C4460108(a1 + v111, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v112 = v147;
  swift_beginAccess();
  sub_1C44408D4(v25, v1 + v112, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v113 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendar;
  swift_beginAccess();
  v114 = v154;
  sub_1C4460108(a1 + v113, v154, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  v115 = v148;
  swift_beginAccess();
  sub_1C44408D4(v114, v1 + v115, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  swift_endAccess();
  v116 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poi;
  swift_beginAccess();
  v117 = v155;
  sub_1C4460108(a1 + v116, v155, &qword_1EC0BCF80, &qword_1C4F2C1B8);

  v118 = v149;
  swift_beginAccess();
  sub_1C44408D4(v117, v1 + v118, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C47A9EBC()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__motionState, &qword_1EC0BD030, &unk_1C4F2C270);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__inferredMode, &qword_1EC0BD020, &qword_1C4F2C260);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__localAppCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__remoteAppCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wifiConnected, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceUnlocked, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceBacklightOn, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__locationVisit, &qword_1EC0BD010, &unk_1C4F2C248);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeInference, &qword_1EC0BD000, &qword_1C4F2C238);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__phoneCharging, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__virtualInteractions, &qword_1EC0BCFF0, &qword_1C4F2C228);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userComputedFocusModeType, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__nowPlayingState, &qword_1EC0BCFE0, &qword_1C4F2C218);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLight, &qword_1EC0BCFD0, &qword_1C4F2C208);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wallet, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__cdInBedDetected, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__carplayConnected, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__alarmType, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__airplaneModeEnabled, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__eventFoundInAppsCategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__semanticLocation, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__bluetooth, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__lowPowerMode, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__microlocationConfidence, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendar, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poi, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  return v0;
}

void sub_1C47AA204(uint64_t a1)
{
  sub_1C47AA700(319, qword_1EDDEFE38, type metadata accessor for EventStreamsEvent.MotionState);
  if (v1 <= 0x3F)
  {
    sub_1C47AA700(319, qword_1EDDEFBB0, type metadata accessor for EventStreamsEvent.InferredMode);
    if (v2 <= 0x3F)
    {
      sub_1C47AA700(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
      if (v3 <= 0x3F)
      {
        sub_1C47AA700(319, qword_1EDDEF9C8, type metadata accessor for EventStreamsEvent.LocationVisit);
        if (v4 <= 0x3F)
        {
          sub_1C47AA700(319, qword_1EDDEF310, type metadata accessor for EventStreamsEvent.PlaceInference);
          if (v5 <= 0x3F)
          {
            sub_1C47AA700(319, qword_1EDDEF130, type metadata accessor for EventStreamsEvent.VirtualInteractions);
            if (v6 <= 0x3F)
            {
              sub_1C47AA700(319, qword_1EDDEF270, type metadata accessor for EventStreamsEvent.NowPlayingState);
              if (v7 <= 0x3F)
              {
                sub_1C47AA700(319, qword_1EDDEFC50, type metadata accessor for EventStreamsEvent.AmbientLight);
                if (v8 <= 0x3F)
                {
                  sub_1C47AA700(319, qword_1EDDEEED0, type metadata accessor for EventStreamsEvent.Wallet);
                  if (v9 <= 0x3F)
                  {
                    sub_1C47AA700(319, qword_1EDDEF1D0, type metadata accessor for EventStreamsEvent.SemanticLocation);
                    if (v10 <= 0x3F)
                    {
                      sub_1C47AA700(319, qword_1EDDEEC28, type metadata accessor for EventStreamsEvent.Bluetooth);
                      if (v11 <= 0x3F)
                      {
                        sub_1C47AA700(319, qword_1EDDEECC8, type metadata accessor for EventStreamsEvent.Calendar);
                        if (v12 <= 0x3F)
                        {
                          sub_1C47AA700(319, qword_1EDDEF090, type metadata accessor for EventStreamsEvent.POI);
                          if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_1C47AA700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C47AA8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C47AABFC(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C47AACD8(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C47AADB4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C47AAE90(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C47AAF6C(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C47AB048(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C47AB124(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C47AB200(a2, a1, a3, a4);
        break;
      case 9:
        sub_1C47AB2DC(a2, a1, a3, a4);
        break;
      case 10:
        sub_1C47AB3B8(a2, a1, a3, a4);
        break;
      case 12:
        sub_1C47AB494(a2, a1, a3, a4);
        break;
      case 13:
        sub_1C47AB570(a2, a1, a3, a4);
        break;
      case 14:
        sub_1C47AB64C(a2, a1, a3, a4);
        break;
      case 15:
        sub_1C47AB728(a2, a1, a3, a4);
        break;
      case 16:
        sub_1C47AB804(a2, a1, a3, a4);
        break;
      case 17:
        sub_1C47AB8E0(a2, a1, a3, a4);
        break;
      case 18:
        sub_1C47AB9BC(a2, a1, a3, a4);
        break;
      case 19:
        sub_1C47ABA98(a2, a1, a3, a4);
        break;
      case 20:
        sub_1C47ABB74(a2, a1, a3, a4);
        break;
      case 21:
        sub_1C47ABC50(a2, a1, a3, a4);
        break;
      case 22:
        sub_1C47ABD2C(a2, a1, a3, a4);
        break;
      case 23:
        sub_1C47ABE08(a2, a1, a3, a4);
        break;
      case 24:
        sub_1C47ABEE4(a2, a1, a3, a4);
        break;
      case 25:
        sub_1C47ABFC0(a2, a1, a3, a4);
        break;
      case 26:
        sub_1C47AC09C(a2, a1, a3, a4);
        break;
      case 27:
        sub_1C47AC178(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47AABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.MotionState(0);
  sub_1C47BF154(&qword_1EC0BCF28, type metadata accessor for EventStreamsEvent.MotionState, &unk_1C4F2BE54);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.InferredMode(0);
  sub_1C47BF154(&qword_1EC0BCF08, type metadata accessor for EventStreamsEvent.InferredMode, &unk_1C4F2BCEC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AAE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AAF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.LocationVisit(0);
  sub_1C47BF154(&qword_1EC0BCEC8, type metadata accessor for EventStreamsEvent.LocationVisit, &unk_1C4F2BA1C);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.PlaceInference(0);
  sub_1C47BF154(&qword_1EC0BCEA8, type metadata accessor for EventStreamsEvent.PlaceInference, &unk_1C4F2B8B4);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  sub_1C47BF154(&qword_1EC0BCE48, type metadata accessor for EventStreamsEvent.VirtualInteractions, &unk_1C4F2B47C);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  sub_1C47BF154(&qword_1EC0BCE28, type metadata accessor for EventStreamsEvent.NowPlayingState, &unk_1C4F2B314);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.AmbientLight(0);
  sub_1C47BF154(&qword_1EC0BCE08, type metadata accessor for EventStreamsEvent.AmbientLight, &unk_1C4F2B1AC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.Wallet(0);
  sub_1C47BF154(&qword_1EC0BCEE8, type metadata accessor for EventStreamsEvent.Wallet, &unk_1C4F2BB84);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47ABA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47ABB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47ABC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47ABD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.SemanticLocation(0);
  sub_1C47BF154(&qword_1EC0BCE88, type metadata accessor for EventStreamsEvent.SemanticLocation, &unk_1C4F2B74C);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47ABE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.Bluetooth(0);
  sub_1C47BF154(&qword_1EC0BCDD8, type metadata accessor for EventStreamsEvent.Bluetooth, &unk_1C4F2AEDC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47ABEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47ABFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AC09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.Calendar(0);
  sub_1C47BF154(qword_1EDDEED10, type metadata accessor for EventStreamsEvent.Calendar, &unk_1C4F2B044);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AC178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EventStreamsEvent.POI(0);
  sub_1C47BF154(&qword_1EC0BCE68, type metadata accessor for EventStreamsEvent.POI, &unk_1C4F2B5E4);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47AC254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C47AC4E4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C47AC6CC(a1, a2, a3, a4);
    sub_1C47AC8B4(a1, a2, a3, a4);
    sub_1C47ACA9C(a1, a2, a3, a4);
    sub_1C47ACC84(a1, a2, a3, a4);
    sub_1C47ACE6C(a1, a2, a3, a4);
    sub_1C47AD054(a1, a2, a3, a4);
    sub_1C47AD23C(a1, a2, a3, a4);
    sub_1C47AD424(a1, a2, a3, a4);
    sub_1C47AD60C(a1, a2, a3, a4);
    sub_1C47AD7F4(a1, a2, a3, a4);
    sub_1C47AD9DC(a1, a2, a3, a4);
    sub_1C47ADBC4(a1, a2, a3, a4);
    sub_1C47ADDAC(a1, a2, a3, a4);
    sub_1C47ADF94(a1, a2, a3, a4);
    sub_1C47AE17C(a1, a2, a3, a4);
    sub_1C47AE364(a1, a2, a3, a4);
    sub_1C47AE54C(a1, a2, a3, a4);
    sub_1C47AE734(a1, a2, a3, a4);
    sub_1C47AE91C(a1, a2, a3, a4);
    sub_1C47AEB04(a1, a2, a3, a4);
    sub_1C47AECEC(a1, a2, a3, a4);
    sub_1C47AEED4(a1, a2, a3, a4);
    sub_1C47AF0BC(a1, a2, a3, a4);
    sub_1C47AF2A4(a1, a2, a3, a4);
    return sub_1C47AF48C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C47AC4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BD030, &unk_1C4F2C270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.MotionState(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__motionState;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BD030, &unk_1C4F2C270);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BD030, &unk_1C4F2C270);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCF28, type metadata accessor for EventStreamsEvent.MotionState, &unk_1C4F2BE54);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AC6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BD020, &qword_1C4F2C260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.InferredMode(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__inferredMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BD020, &qword_1C4F2C260);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BD020, &qword_1C4F2C260);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCF08, type metadata accessor for EventStreamsEvent.InferredMode, &unk_1C4F2BCEC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AC8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__localAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47ACA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__remoteAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47ACC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wifiConnected;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47ACE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceUnlocked;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AD054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceBacklightOn;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AD23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BD010, &unk_1C4F2C248);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.LocationVisit(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__locationVisit;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BD010, &unk_1C4F2C248);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BD010, &unk_1C4F2C248);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCEC8, type metadata accessor for EventStreamsEvent.LocationVisit, &unk_1C4F2BA1C);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AD424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BD000, &qword_1C4F2C238);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.PlaceInference(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeInference;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BD000, &qword_1C4F2C238);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BD000, &qword_1C4F2C238);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCEA8, type metadata accessor for EventStreamsEvent.PlaceInference, &unk_1C4F2B8B4);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AD60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__phoneCharging;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AD7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BCFF0, &qword_1C4F2C228);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__virtualInteractions;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BCFF0, &qword_1C4F2C228);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCFF0, &qword_1C4F2C228);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCE48, type metadata accessor for EventStreamsEvent.VirtualInteractions, &unk_1C4F2B47C);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AD9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userComputedFocusModeType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47ADBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BCFE0, &qword_1C4F2C218);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__nowPlayingState;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BCFE0, &qword_1C4F2C218);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCFE0, &qword_1C4F2C218);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCE28, type metadata accessor for EventStreamsEvent.NowPlayingState, &unk_1C4F2B314);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47ADDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BCFD0, &qword_1C4F2C208);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.AmbientLight(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLight;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BCFD0, &qword_1C4F2C208);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCFD0, &qword_1C4F2C208);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCE08, type metadata accessor for EventStreamsEvent.AmbientLight, &unk_1C4F2B1AC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47ADF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BCFC0, &qword_1C4F2C1F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.Wallet(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wallet;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCEE8, type metadata accessor for EventStreamsEvent.Wallet, &unk_1C4F2BB84);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AE17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__cdInBedDetected;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AE364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__carplayConnected;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AE54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__alarmType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AE734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__airplaneModeEnabled;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AE91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__eventFoundInAppsCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BCFB0, &qword_1C4F2C1E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.SemanticLocation(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__semanticLocation;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCE88, type metadata accessor for EventStreamsEvent.SemanticLocation, &unk_1C4F2B74C);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BCFA0, &qword_1C4F2C1D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.Bluetooth(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__bluetooth;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCDD8, type metadata accessor for EventStreamsEvent.Bluetooth, &unk_1C4F2AEDC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AF0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__microlocationConfidence;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AF2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BCF90, &qword_1C4F2C1C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.Calendar(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendar;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDEED10, type metadata accessor for EventStreamsEvent.Calendar, &unk_1C4F2B044);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47AF48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BCF80, &qword_1C4F2C1B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for EventStreamsEvent.POI(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poi;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  }

  sub_1C47C0140();
  sub_1C47BF154(&qword_1EC0BCE68, type metadata accessor for EventStreamsEvent.POI, &unk_1C4F2B5E4);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

BOOL sub_1C47AF674(uint64_t a1, uint64_t a2)
{
  v554 = a2;
  v478 = type metadata accessor for EventStreamsEvent.POI(0);
  MEMORY[0x1EEE9AC00](v478);
  v479 = &v440 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_1C456902C(&qword_1EC0BCF78, &qword_1C4F2C1B0);
  MEMORY[0x1EEE9AC00](v475);
  v480 = &v440 - v4;
  v5 = sub_1C456902C(&qword_1EC0BCF80, &qword_1C4F2C1B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v477 = &v440 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v476 = &v440 - v8;
  v470 = type metadata accessor for EventStreamsEvent.Calendar(0);
  MEMORY[0x1EEE9AC00](v470);
  v473 = &v440 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v469 = sub_1C456902C(&qword_1EC0BCF88, &qword_1C4F2C1C0);
  MEMORY[0x1EEE9AC00](v469);
  v474 = &v440 - v10;
  v11 = sub_1C456902C(&qword_1EC0BCF90, &qword_1C4F2C1C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v472 = &v440 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v471 = &v440 - v14;
  v466 = type metadata accessor for EventStreamsEvent.Bluetooth(0);
  MEMORY[0x1EEE9AC00](v466);
  v467 = &v440 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = sub_1C456902C(&qword_1EC0BCF98, &qword_1C4F2C1D0);
  MEMORY[0x1EEE9AC00](v463);
  v468 = &v440 - v16;
  v17 = sub_1C456902C(&qword_1EC0BCFA0, &qword_1C4F2C1D8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v465 = &v440 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v464 = &v440 - v20;
  v459 = type metadata accessor for EventStreamsEvent.SemanticLocation(0);
  MEMORY[0x1EEE9AC00](v459);
  v460 = &v440 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = sub_1C456902C(&qword_1EC0BCFA8, &qword_1C4F2C1E0);
  MEMORY[0x1EEE9AC00](v456);
  v462 = &v440 - v22;
  v23 = sub_1C456902C(&qword_1EC0BCFB0, &qword_1C4F2C1E8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v458 = &v440 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v457 = &v440 - v26;
  v492 = type metadata accessor for EventStreamsEvent.Wallet(0);
  MEMORY[0x1EEE9AC00](v492);
  v484 = &v440 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = sub_1C456902C(&qword_1EC0BCFB8, &qword_1C4F2C1F0);
  MEMORY[0x1EEE9AC00](v487);
  v494 = &v440 - v28;
  v29 = sub_1C456902C(&qword_1EC0BCFC0, &qword_1C4F2C1F8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v488 = &v440 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v491 = &v440 - v32;
  v497 = type metadata accessor for EventStreamsEvent.AmbientLight(0);
  MEMORY[0x1EEE9AC00](v497);
  v489 = &v440 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = sub_1C456902C(&qword_1EC0BCFC8, &qword_1C4F2C200);
  MEMORY[0x1EEE9AC00](v493);
  v500 = &v440 - v34;
  v35 = sub_1C456902C(&qword_1EC0BCFD0, &qword_1C4F2C208);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v495 = &v440 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v496 = &v440 - v38;
  v503 = type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  MEMORY[0x1EEE9AC00](v503);
  v490 = &v440 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = sub_1C456902C(&qword_1EC0BCFD8, &qword_1C4F2C210);
  MEMORY[0x1EEE9AC00](v498);
  v505 = &v440 - v40;
  v41 = sub_1C456902C(&qword_1EC0BCFE0, &qword_1C4F2C218);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v499 = &v440 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v502 = &v440 - v44;
  v511 = type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  MEMORY[0x1EEE9AC00](v511);
  v501 = &v440 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = sub_1C456902C(&qword_1EC0BCFE8, &qword_1C4F2C220);
  MEMORY[0x1EEE9AC00](v507);
  v514 = &v440 - v46;
  v47 = sub_1C456902C(&qword_1EC0BCFF0, &qword_1C4F2C228);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v508 = &v440 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v512 = &v440 - v50;
  v520 = type metadata accessor for EventStreamsEvent.PlaceInference(0);
  MEMORY[0x1EEE9AC00](v520);
  v510 = &v440 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = sub_1C456902C(&qword_1EC0BCFF8, &qword_1C4F2C230);
  MEMORY[0x1EEE9AC00](v519);
  v521 = &v440 - v52;
  v53 = sub_1C456902C(&qword_1EC0BD000, &qword_1C4F2C238);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v515 = &v440 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v532 = &v440 - v56;
  v524 = type metadata accessor for EventStreamsEvent.LocationVisit(0);
  MEMORY[0x1EEE9AC00](v524);
  v518 = &v440 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v523 = sub_1C456902C(&qword_1EC0BD008, &qword_1C4F2C240);
  MEMORY[0x1EEE9AC00](v523);
  v525 = &v440 - v58;
  v59 = sub_1C456902C(&qword_1EC0BD010, &unk_1C4F2C248);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v522 = &v440 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v527 = &v440 - v62;
  v546 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v546);
  v539 = &v440 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v545 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  MEMORY[0x1EEE9AC00](v545);
  v461 = &v440 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v454 = &v440 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v450 = &v440 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v449 = &v440 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v446 = &v440 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v482 = &v440 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v486 = &v440 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v509 = &v440 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v516 = &v440 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v528 = &v440 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v531 = &v440 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v535 = &v440 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v538 = &v440 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v543 = &v440 - v90;
  v91 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v91 - 8);
  v455 = &v440 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v453 = &v440 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v452 = &v440 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v451 = &v440 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v448 = &v440 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v447 = &v440 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v445 = &v440 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v444 = &v440 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v443 = &v440 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v442 = &v440 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v441 = &v440 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v481 = &v440 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v483 = &v440 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v485 = &v440 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v504 = &v440 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v506 = &v440 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v513 = &v440 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v517 = &v440 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v526 = &v440 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v530 = &v440 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v529 = &v440 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v534 = &v440 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v533 = &v440 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v537 = &v440 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v536 = &v440 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v541 = &v440 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v540 = &v440 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v552 = &v440 - v146;
  v550 = type metadata accessor for EventStreamsEvent.InferredMode(0);
  MEMORY[0x1EEE9AC00](v550);
  v542 = &v440 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v548 = sub_1C456902C(&qword_1EC0BD018, &qword_1C4F2C258);
  MEMORY[0x1EEE9AC00](v548);
  v551 = &v440 - v148;
  v149 = sub_1C456902C(&qword_1EC0BD020, &qword_1C4F2C260);
  MEMORY[0x1EEE9AC00](v149 - 8);
  v544 = &v440 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v151);
  v549 = &v440 - v152;
  v153 = type metadata accessor for EventStreamsEvent.MotionState(0);
  MEMORY[0x1EEE9AC00](v153);
  v547 = &v440 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1C456902C(&qword_1EC0BD028, &qword_1C4F2C268);
  v156 = v155 - 8;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v440 - v157;
  v159 = sub_1C456902C(&qword_1EC0BD030, &unk_1C4F2C270);
  MEMORY[0x1EEE9AC00](v159 - 8);
  v553 = &v440 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v161);
  v163 = &v440 - v162;
  v164 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__motionState;
  swift_beginAccess();
  v165 = a1 + v164;
  v166 = v554;
  sub_1C4460108(v165, v163, &qword_1EC0BD030, &unk_1C4F2C270);
  v167 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__motionState;
  swift_beginAccess();
  v168 = *(v156 + 56);
  sub_1C4460108(v163, v158, &qword_1EC0BD030, &unk_1C4F2C270);
  sub_1C4460108(v166 + v167, &v158[v168], &qword_1EC0BD030, &unk_1C4F2C270);
  if (sub_1C44157D4(v158, 1, v153) == 1)
  {

    sub_1C4420C3C(v163, &qword_1EC0BD030, &unk_1C4F2C270);
    v169 = v166;
    if (sub_1C44157D4(&v158[v168], 1, v153) == 1)
    {
      sub_1C4420C3C(v158, &qword_1EC0BD030, &unk_1C4F2C270);
      goto LABEL_8;
    }

LABEL_6:
    v170 = &qword_1EC0BD028;
    v171 = &qword_1C4F2C268;
    v172 = v158;
LABEL_48:
    sub_1C4420C3C(v172, v170, v171);
    goto LABEL_49;
  }

  v169 = v166;
  sub_1C4460108(v158, v553, &qword_1EC0BD030, &unk_1C4F2C270);
  if (sub_1C44157D4(&v158[v168], 1, v153) == 1)
  {

    sub_1C4420C3C(v163, &qword_1EC0BD030, &unk_1C4F2C270);
    sub_1C47C00EC();
    goto LABEL_6;
  }

  sub_1C47C0140();

  sub_1C47BE8DC();
  v174 = v173;
  sub_1C47C00EC();
  sub_1C4420C3C(v163, &qword_1EC0BD030, &unk_1C4F2C270);
  sub_1C47C00EC();
  sub_1C4420C3C(v158, &qword_1EC0BD030, &unk_1C4F2C270);
  if ((v174 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_8:
  v175 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__inferredMode;
  swift_beginAccess();
  v176 = v549;
  sub_1C4460108(a1 + v175, v549, &qword_1EC0BD020, &qword_1C4F2C260);
  v177 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__inferredMode;
  swift_beginAccess();
  v178 = *(v548 + 48);
  v179 = v551;
  sub_1C4460108(v176, v551, &qword_1EC0BD020, &qword_1C4F2C260);
  sub_1C4460108(v169 + v177, v179 + v178, &qword_1EC0BD020, &qword_1C4F2C260);
  v180 = v550;
  if (sub_1C44157D4(v179, 1, v550) == 1)
  {
    sub_1C4420C3C(v176, &qword_1EC0BD020, &qword_1C4F2C260);
    v181 = sub_1C44157D4(v179 + v178, 1, v180);
    v182 = v552;
    if (v181 == 1)
    {
      sub_1C4420C3C(v179, &qword_1EC0BD020, &qword_1C4F2C260);
      goto LABEL_15;
    }

LABEL_13:
    v170 = &qword_1EC0BD018;
    v171 = &qword_1C4F2C258;
LABEL_47:
    v172 = v179;
    goto LABEL_48;
  }

  sub_1C4460108(v179, v544, &qword_1EC0BD020, &qword_1C4F2C260);
  v183 = sub_1C44157D4(v179 + v178, 1, v180);
  v182 = v552;
  if (v183 == 1)
  {
    sub_1C4420C3C(v176, &qword_1EC0BD020, &qword_1C4F2C260);
    sub_1C47C00EC();
    goto LABEL_13;
  }

  sub_1C47C0140();
  sub_1C47BE8DC();
  v185 = v184;
  sub_1C47C00EC();
  sub_1C4420C3C(v176, &qword_1EC0BD020, &qword_1C4F2C260);
  sub_1C47C00EC();
  sub_1C4420C3C(v179, &qword_1EC0BD020, &qword_1C4F2C260);
  if ((v185 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_15:
  v186 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__localAppCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v186, v182, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v187 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__localAppCategory;
  v188 = v554;
  swift_beginAccess();
  v189 = *(v545 + 48);
  v179 = v543;
  sub_1C4460108(v182, v543, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v187, v179 + v189, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v190 = v546;
  if (sub_1C44157D4(v179, 1, v546) == 1)
  {
    sub_1C4420C3C(v182, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v179 + v189, 1, v190) != 1)
    {
      goto LABEL_46;
    }

    sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v191 = v540;
    sub_1C4460108(v179, v540, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v179 + v189, 1, v190) == 1)
    {
      v192 = v182;
      goto LABEL_45;
    }

    v193 = v539;
    sub_1C47C0140();
    v194 = sub_1C47E3504(v191, v193);
    sub_1C47C00EC();
    sub_1C4420C3C(v182, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v194 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v195 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__remoteAppCategory;
  swift_beginAccess();
  v196 = v541;
  sub_1C4460108(a1 + v195, v541, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v197 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__remoteAppCategory;
  swift_beginAccess();
  v198 = *(v545 + 48);
  v179 = v538;
  sub_1C4460108(v196, v538, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v197, v179 + v198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v199 = v546;
  if (sub_1C44157D4(v179, 1, v546) == 1)
  {
    sub_1C4420C3C(v196, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v179 + v198, 1, v199) != 1)
    {
      goto LABEL_46;
    }

    sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v200 = v536;
    sub_1C4460108(v179, v536, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v179 + v198, 1, v199) == 1)
    {
      v192 = v541;
      goto LABEL_45;
    }

    v201 = v539;
    sub_1C47C0140();
    v202 = sub_1C47E3504(v200, v201);
    sub_1C47C00EC();
    sub_1C4420C3C(v541, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v202 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v203 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wifiConnected;
  swift_beginAccess();
  v204 = v537;
  sub_1C4460108(a1 + v203, v537, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v205 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wifiConnected;
  swift_beginAccess();
  v206 = *(v545 + 48);
  v179 = v535;
  sub_1C4460108(v204, v535, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v205, v179 + v206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v207 = v546;
  if (sub_1C44157D4(v179, 1, v546) != 1)
  {
    v208 = v533;
    sub_1C4460108(v179, v533, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v179 + v206, 1, v207) != 1)
    {
      v209 = v539;
      sub_1C47C0140();
      v210 = sub_1C47E3504(v208, v209);
      sub_1C47C00EC();
      sub_1C4420C3C(v537, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C47C00EC();
      sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if ((v210 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_34;
    }

    v192 = v537;
LABEL_45:
    sub_1C4420C3C(v192, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    goto LABEL_46;
  }

  sub_1C4420C3C(v204, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v179 + v206, 1, v207) != 1)
  {
    goto LABEL_46;
  }

  sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_34:
  v211 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceUnlocked;
  swift_beginAccess();
  v212 = v534;
  sub_1C4460108(a1 + v211, v534, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v213 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceUnlocked;
  swift_beginAccess();
  v214 = *(v545 + 48);
  v179 = v531;
  sub_1C4460108(v212, v531, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v213, v179 + v214, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v215 = v546;
  if (sub_1C44157D4(v179, 1, v546) == 1)
  {
    sub_1C4420C3C(v212, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v216 = sub_1C44157D4(v179 + v214, 1, v215);
    v217 = v532;
    if (v216 == 1)
    {
      sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_40;
    }

LABEL_46:
    v170 = &qword_1EC0BB6C0;
    v171 = &unk_1C4F20AE0;
    goto LABEL_47;
  }

  v218 = v529;
  sub_1C4460108(v179, v529, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v219 = sub_1C44157D4(v179 + v214, 1, v215);
  v217 = v532;
  if (v219 == 1)
  {
    v192 = v534;
    goto LABEL_45;
  }

  v220 = v539;
  sub_1C47C0140();
  v221 = sub_1C47E3504(v218, v220);
  sub_1C47C00EC();
  sub_1C4420C3C(v534, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v221 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_40:
  v222 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceBacklightOn;
  swift_beginAccess();
  v223 = v530;
  sub_1C4460108(a1 + v222, v530, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v224 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__deviceBacklightOn;
  swift_beginAccess();
  v225 = *(v545 + 48);
  v179 = v528;
  sub_1C4460108(v223, v528, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v224, v179 + v225, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v226 = v546;
  if (sub_1C44157D4(v179, 1, v546) == 1)
  {
    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v179 + v225, 1, v226) == 1)
    {
      sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_52;
    }

    goto LABEL_46;
  }

  v227 = v526;
  sub_1C4460108(v179, v526, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v179 + v225, 1, v226) == 1)
  {
    v192 = v530;
    goto LABEL_45;
  }

  v229 = v539;
  sub_1C47C0140();
  v230 = sub_1C47E3504(v227, v229);
  sub_1C47C00EC();
  sub_1C4420C3C(v530, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v179, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v230 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_52:
  v231 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__locationVisit;
  swift_beginAccess();
  v232 = v527;
  sub_1C4460108(a1 + v231, v527, &qword_1EC0BD010, &unk_1C4F2C248);
  v233 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__locationVisit;
  swift_beginAccess();
  v234 = *(v523 + 48);
  v235 = v232;
  v236 = v525;
  sub_1C4460108(v235, v525, &qword_1EC0BD010, &unk_1C4F2C248);
  v237 = v188 + v233;
  v238 = v236;
  sub_1C4460108(v237, v236 + v234, &qword_1EC0BD010, &unk_1C4F2C248);
  v239 = v524;
  if (sub_1C44157D4(v236, 1, v524) == 1)
  {
    sub_1C4420C3C(v527, &qword_1EC0BD010, &unk_1C4F2C248);
    if (sub_1C44157D4(v236 + v234, 1, v239) == 1)
    {
      sub_1C4420C3C(v236, &qword_1EC0BD010, &unk_1C4F2C248);
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  v240 = v522;
  sub_1C4460108(v236, v522, &qword_1EC0BD010, &unk_1C4F2C248);
  if (sub_1C44157D4(v236 + v234, 1, v239) == 1)
  {
    sub_1C4420C3C(v527, &qword_1EC0BD010, &unk_1C4F2C248);
    sub_1C47C00EC();
LABEL_57:
    v170 = &qword_1EC0BD008;
    v171 = &qword_1C4F2C240;
    v172 = v236;
    goto LABEL_48;
  }

  v241 = v518;
  sub_1C47C0140();
  if (*(v240 + *(v239 + 20)) != *&v241[*(v239 + 20)])
  {

    sub_1C47BD62C();
    v243 = v242;

    if ((v243 & 1) == 0)
    {
      sub_1C47C00EC();
      v265 = &qword_1EC0BD010;
      v266 = &unk_1C4F2C248;
      sub_1C4420C3C(v527, &qword_1EC0BD010, &unk_1C4F2C248);
      sub_1C47C00EC();
      v172 = v238;
LABEL_82:
      v170 = v265;
      v171 = v266;
      goto LABEL_48;
    }
  }

  sub_1C4F00328();
  sub_1C47BF154(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v244 = sub_1C4F010B8();
  sub_1C47C00EC();
  sub_1C4420C3C(v527, &qword_1EC0BD010, &unk_1C4F2C248);
  sub_1C47C00EC();
  sub_1C4420C3C(v238, &qword_1EC0BD010, &unk_1C4F2C248);
  if ((v244 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_61:
  v245 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeInference;
  swift_beginAccess();
  sub_1C4460108(a1 + v245, v217, &qword_1EC0BD000, &qword_1C4F2C238);
  v246 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeInference;
  swift_beginAccess();
  v247 = *(v519 + 48);
  v248 = v521;
  sub_1C4460108(v217, v521, &qword_1EC0BD000, &qword_1C4F2C238);
  v249 = v248;
  sub_1C4460108(v188 + v246, v248 + v247, &qword_1EC0BD000, &qword_1C4F2C238);
  v250 = v520;
  if (sub_1C44157D4(v248, 1, v520) == 1)
  {
    sub_1C4420C3C(v217, &qword_1EC0BD000, &qword_1C4F2C238);
    if (sub_1C44157D4(v248 + v247, 1, v250) == 1)
    {
      sub_1C4420C3C(v248, &qword_1EC0BD000, &qword_1C4F2C238);
      goto LABEL_70;
    }

    goto LABEL_66;
  }

  v251 = v248;
  v252 = v515;
  sub_1C4460108(v251, v515, &qword_1EC0BD000, &qword_1C4F2C238);
  if (sub_1C44157D4(v249 + v247, 1, v250) == 1)
  {
    sub_1C4420C3C(v217, &qword_1EC0BD000, &qword_1C4F2C238);
    sub_1C47C00EC();
LABEL_66:
    v170 = &qword_1EC0BCFF8;
    v171 = &qword_1C4F2C230;
    v172 = v249;
    goto LABEL_48;
  }

  v253 = v510;
  sub_1C47C0140();
  if (*(v252 + *(v250 + 20)) != *&v253[*(v250 + 20)])
  {

    sub_1C47BD62C();
    v255 = v254;

    if ((v255 & 1) == 0)
    {
      sub_1C47C00EC();
      v265 = &qword_1EC0BD000;
      v266 = &qword_1C4F2C238;
      sub_1C4420C3C(v217, &qword_1EC0BD000, &qword_1C4F2C238);
      sub_1C47C00EC();
      v172 = v521;
      goto LABEL_82;
    }
  }

  sub_1C4F00328();
  sub_1C47BF154(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v256 = sub_1C4F010B8();
  sub_1C47C00EC();
  sub_1C4420C3C(v217, &qword_1EC0BD000, &qword_1C4F2C238);
  sub_1C47C00EC();
  sub_1C4420C3C(v521, &qword_1EC0BD000, &qword_1C4F2C238);
  if ((v256 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_70:
  v257 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__phoneCharging;
  swift_beginAccess();
  v258 = a1;
  v259 = a1 + v257;
  v260 = v517;
  sub_1C4460108(v259, v517, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v261 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__phoneCharging;
  swift_beginAccess();
  v262 = *(v545 + 48);
  v263 = v516;
  sub_1C4460108(v260, v516, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v261, v263 + v262, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v264 = v546;
  if (sub_1C44157D4(v263, 1, v546) == 1)
  {
    sub_1C4420C3C(v517, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v263 + v262, 1, v264) == 1)
    {
      sub_1C4420C3C(v263, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_78;
    }

LABEL_76:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v263;
LABEL_132:
    sub_1C4420C3C(v269, v267, v268);
    goto LABEL_49;
  }

  sub_1C4460108(v263, v513, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v263 + v262, 1, v264) == 1)
  {
    sub_1C4420C3C(v517, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    v263 = v516;
    goto LABEL_76;
  }

  v270 = v516;
  v271 = v539;
  sub_1C47C0140();
  v272 = sub_1C47E3504(v513, v271);
  sub_1C47C00EC();
  sub_1C4420C3C(v517, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v270, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v272 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_78:
  v273 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__virtualInteractions;
  swift_beginAccess();
  v274 = v512;
  sub_1C4460108(v258 + v273, v512, &qword_1EC0BCFF0, &qword_1C4F2C228);
  v275 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__virtualInteractions;
  swift_beginAccess();
  v276 = *(v507 + 48);
  v277 = v274;
  v278 = v514;
  sub_1C4460108(v277, v514, &qword_1EC0BCFF0, &qword_1C4F2C228);
  sub_1C4460108(v188 + v275, v278 + v276, &qword_1EC0BCFF0, &qword_1C4F2C228);
  if (sub_1C44157D4(v278, 1, v511) == 1)
  {
    sub_1C4420C3C(v512, &qword_1EC0BCFF0, &qword_1C4F2C228);
    if (sub_1C44157D4(v514 + v276, 1, v511) == 1)
    {
      sub_1C4420C3C(v514, &qword_1EC0BCFF0, &qword_1C4F2C228);
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v279 = v514;
  sub_1C4460108(v514, v508, &qword_1EC0BCFF0, &qword_1C4F2C228);
  if (sub_1C44157D4(v279 + v276, 1, v511) == 1)
  {
    sub_1C4420C3C(v512, &qword_1EC0BCFF0, &qword_1C4F2C228);
    sub_1C47C00EC();
LABEL_85:
    v267 = &qword_1EC0BCFE8;
    v268 = &qword_1C4F2C220;
    v269 = v514;
    goto LABEL_132;
  }

  v280 = v514;
  sub_1C47C0140();
  sub_1C47BE8DC();
  v282 = v281;
  sub_1C47C00EC();
  sub_1C4420C3C(v512, &qword_1EC0BCFF0, &qword_1C4F2C228);
  sub_1C47C00EC();
  sub_1C4420C3C(v280, &qword_1EC0BCFF0, &qword_1C4F2C228);
  if ((v282 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_87:
  v283 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userComputedFocusModeType;
  swift_beginAccess();
  v284 = v506;
  sub_1C4460108(v258 + v283, v506, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v285 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userComputedFocusModeType;
  swift_beginAccess();
  v286 = *(v545 + 48);
  v287 = v284;
  v288 = v509;
  sub_1C4460108(v287, v509, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v285, v288 + v286, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v288, 1, v546) == 1)
  {
    sub_1C4420C3C(v506, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v509 + v286, 1, v546) == 1)
    {
      sub_1C4420C3C(v509, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_94;
    }

    goto LABEL_92;
  }

  v289 = v509;
  sub_1C4460108(v509, v504, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v289 + v286, 1, v546) == 1)
  {
    sub_1C4420C3C(v506, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
LABEL_92:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v509;
    goto LABEL_132;
  }

  v290 = v509;
  v291 = v539;
  sub_1C47C0140();
  v292 = sub_1C47E3504(v504, v291);
  sub_1C47C00EC();
  sub_1C4420C3C(v506, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v290, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v292 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_94:
  v293 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__nowPlayingState;
  swift_beginAccess();
  v294 = v502;
  sub_1C4460108(v258 + v293, v502, &qword_1EC0BCFE0, &qword_1C4F2C218);
  v295 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__nowPlayingState;
  swift_beginAccess();
  v296 = *(v498 + 48);
  v297 = v294;
  v298 = v505;
  sub_1C4460108(v297, v505, &qword_1EC0BCFE0, &qword_1C4F2C218);
  sub_1C4460108(v188 + v295, v298 + v296, &qword_1EC0BCFE0, &qword_1C4F2C218);
  if (sub_1C44157D4(v298, 1, v503) == 1)
  {
    sub_1C4420C3C(v502, &qword_1EC0BCFE0, &qword_1C4F2C218);
    if (sub_1C44157D4(v505 + v296, 1, v503) == 1)
    {
      sub_1C4420C3C(v505, &qword_1EC0BCFE0, &qword_1C4F2C218);
      goto LABEL_101;
    }

    goto LABEL_99;
  }

  v299 = v505;
  sub_1C4460108(v505, v499, &qword_1EC0BCFE0, &qword_1C4F2C218);
  if (sub_1C44157D4(v299 + v296, 1, v503) == 1)
  {
    sub_1C4420C3C(v502, &qword_1EC0BCFE0, &qword_1C4F2C218);
    sub_1C47C00EC();
LABEL_99:
    v267 = &qword_1EC0BCFD8;
    v268 = &qword_1C4F2C210;
    v269 = v505;
    goto LABEL_132;
  }

  v300 = v505;
  sub_1C47C0140();
  sub_1C47BE8DC();
  v302 = v301;
  sub_1C47C00EC();
  sub_1C4420C3C(v502, &qword_1EC0BCFE0, &qword_1C4F2C218);
  sub_1C47C00EC();
  sub_1C4420C3C(v300, &qword_1EC0BCFE0, &qword_1C4F2C218);
  if ((v302 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_101:
  v303 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLight;
  swift_beginAccess();
  v304 = v496;
  sub_1C4460108(v258 + v303, v496, &qword_1EC0BCFD0, &qword_1C4F2C208);
  v305 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLight;
  swift_beginAccess();
  v306 = *(v493 + 48);
  v307 = v304;
  v308 = v500;
  sub_1C4460108(v307, v500, &qword_1EC0BCFD0, &qword_1C4F2C208);
  sub_1C4460108(v188 + v305, v308 + v306, &qword_1EC0BCFD0, &qword_1C4F2C208);
  if (sub_1C44157D4(v308, 1, v497) == 1)
  {
    sub_1C4420C3C(v496, &qword_1EC0BCFD0, &qword_1C4F2C208);
    if (sub_1C44157D4(v500 + v306, 1, v497) == 1)
    {
      sub_1C4420C3C(v500, &qword_1EC0BCFD0, &qword_1C4F2C208);
      goto LABEL_110;
    }

    goto LABEL_106;
  }

  v309 = v500;
  sub_1C4460108(v500, v495, &qword_1EC0BCFD0, &qword_1C4F2C208);
  if (sub_1C44157D4(v309 + v306, 1, v497) == 1)
  {
    sub_1C4420C3C(v496, &qword_1EC0BCFD0, &qword_1C4F2C208);
    sub_1C47C00EC();
LABEL_106:
    v267 = &qword_1EC0BCFC8;
    v268 = &qword_1C4F2C200;
    v269 = v500;
    goto LABEL_132;
  }

  v310 = v489;
  sub_1C47C0140();
  if (*(v495 + *(v497 + 20)) != *&v310[*(v497 + 20)])
  {

    sub_1C47BD62C();
    v312 = v311;

    if ((v312 & 1) == 0)
    {
      sub_1C47C00EC();
      v333 = &qword_1EC0BCFD0;
      v334 = &qword_1C4F2C208;
      sub_1C4420C3C(v496, &qword_1EC0BCFD0, &qword_1C4F2C208);
      sub_1C47C00EC();
      v269 = v500;
LABEL_131:
      v267 = v333;
      v268 = v334;
      goto LABEL_132;
    }
  }

  sub_1C4F00328();
  sub_1C47BF154(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v313 = sub_1C4F010B8();
  sub_1C47C00EC();
  sub_1C4420C3C(v496, &qword_1EC0BCFD0, &qword_1C4F2C208);
  sub_1C47C00EC();
  sub_1C4420C3C(v500, &qword_1EC0BCFD0, &qword_1C4F2C208);
  if ((v313 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_110:
  v314 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wallet;
  swift_beginAccess();
  v315 = v491;
  sub_1C4460108(v258 + v314, v491, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  v316 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__wallet;
  swift_beginAccess();
  v317 = *(v487 + 48);
  v318 = v315;
  v319 = v494;
  sub_1C4460108(v318, v494, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  sub_1C4460108(v188 + v316, v319 + v317, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  if (sub_1C44157D4(v319, 1, v492) == 1)
  {
    sub_1C4420C3C(v491, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
    if (sub_1C44157D4(v494 + v317, 1, v492) == 1)
    {
      sub_1C4420C3C(v494, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
      goto LABEL_119;
    }

    goto LABEL_115;
  }

  v320 = v494;
  sub_1C4460108(v494, v488, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  if (sub_1C44157D4(v320 + v317, 1, v492) == 1)
  {
    sub_1C4420C3C(v491, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
    sub_1C47C00EC();
LABEL_115:
    v267 = &qword_1EC0BCFB8;
    v268 = &qword_1C4F2C1F0;
    v269 = v494;
    goto LABEL_132;
  }

  v321 = v484;
  sub_1C47C0140();
  v322 = *(v492 + 20);
  v323 = *(v488 + v322);
  v324 = *&v321[v322];
  if (v323 != v324)
  {

    v325 = sub_1C47B653C(v323, v324);

    if (!v325)
    {
      sub_1C47C00EC();
      v333 = &qword_1EC0BCFC0;
      v334 = &qword_1C4F2C1F8;
      sub_1C4420C3C(v491, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
      sub_1C47C00EC();
      v269 = v494;
      goto LABEL_131;
    }
  }

  sub_1C4F00328();
  sub_1C47BF154(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v326 = sub_1C4F010B8();
  sub_1C47C00EC();
  sub_1C4420C3C(v491, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  sub_1C47C00EC();
  sub_1C4420C3C(v494, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
  if ((v326 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_119:
  v327 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__cdInBedDetected;
  swift_beginAccess();
  v328 = v485;
  sub_1C4460108(v258 + v327, v485, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v329 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__cdInBedDetected;
  swift_beginAccess();
  v330 = *(v545 + 48);
  v331 = v328;
  v332 = v486;
  sub_1C4460108(v331, v486, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v329, v332 + v330, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v332, 1, v546) == 1)
  {
    sub_1C4420C3C(v485, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v486 + v330, 1, v546) == 1)
    {
      sub_1C4420C3C(v486, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  v335 = v486;
  sub_1C4460108(v486, v483, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v335 + v330, 1, v546) == 1)
  {
    sub_1C4420C3C(v485, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
LABEL_125:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v486;
    goto LABEL_132;
  }

  v336 = v486;
  v337 = v539;
  sub_1C47C0140();
  v338 = sub_1C47E3504(v483, v337);
  sub_1C47C00EC();
  sub_1C4420C3C(v485, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v336, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v338 & 1) == 0)
  {
LABEL_49:

    return 0;
  }

LABEL_127:
  v339 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__carplayConnected;
  swift_beginAccess();
  v340 = v481;
  sub_1C4460108(v258 + v339, v481, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v341 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__carplayConnected;
  swift_beginAccess();
  v342 = *(v545 + 48);
  v343 = v340;
  v344 = v482;
  sub_1C4460108(v343, v482, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v341, v344 + v342, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v344, 1, v546) == 1)
  {
    sub_1C4420C3C(v481, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v482 + v342, 1, v546) == 1)
    {
      sub_1C4420C3C(v482, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_138;
    }

LABEL_136:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v482;
    goto LABEL_132;
  }

  v345 = v482;
  sub_1C4460108(v482, v441, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v345 + v342, 1, v546) == 1)
  {
    sub_1C4420C3C(v481, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    goto LABEL_136;
  }

  v346 = v482;
  v347 = v539;
  sub_1C47C0140();
  v348 = sub_1C47E3504(v441, v347);
  sub_1C47C00EC();
  sub_1C4420C3C(v481, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v346, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v348 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_138:
  v349 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__alarmType;
  swift_beginAccess();
  v350 = v442;
  sub_1C4460108(v258 + v349, v442, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v351 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__alarmType;
  swift_beginAccess();
  v352 = *(v545 + 48);
  v353 = v350;
  v354 = v446;
  sub_1C4460108(v353, v446, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v351, v354 + v352, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v354, 1, v546) == 1)
  {
    sub_1C4420C3C(v442, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v446 + v352, 1, v546) == 1)
    {
      sub_1C4420C3C(v446, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_145;
    }

LABEL_143:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v446;
    goto LABEL_132;
  }

  v355 = v446;
  sub_1C4460108(v446, v443, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v355 + v352, 1, v546) == 1)
  {
    sub_1C4420C3C(v442, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    goto LABEL_143;
  }

  v356 = v446;
  v357 = v539;
  sub_1C47C0140();
  v358 = sub_1C47E3504(v443, v357);
  sub_1C47C00EC();
  sub_1C4420C3C(v442, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v356, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v358 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_145:
  v359 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__airplaneModeEnabled;
  swift_beginAccess();
  v360 = v444;
  sub_1C4460108(v258 + v359, v444, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v361 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__airplaneModeEnabled;
  swift_beginAccess();
  v362 = *(v545 + 48);
  v363 = v360;
  v364 = v449;
  sub_1C4460108(v363, v449, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v361, v364 + v362, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v364, 1, v546) == 1)
  {
    sub_1C4420C3C(v444, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v449 + v362, 1, v546) == 1)
    {
      sub_1C4420C3C(v449, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_152;
    }

LABEL_150:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v449;
    goto LABEL_132;
  }

  v365 = v449;
  sub_1C4460108(v449, v445, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v365 + v362, 1, v546) == 1)
  {
    sub_1C4420C3C(v444, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    goto LABEL_150;
  }

  v366 = v449;
  v367 = v539;
  sub_1C47C0140();
  v368 = sub_1C47E3504(v445, v367);
  sub_1C47C00EC();
  sub_1C4420C3C(v444, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v366, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v368 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_152:
  v369 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__eventFoundInAppsCategory;
  swift_beginAccess();
  v370 = v447;
  sub_1C4460108(v258 + v369, v447, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v371 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__eventFoundInAppsCategory;
  swift_beginAccess();
  v372 = *(v545 + 48);
  v373 = v370;
  v374 = v450;
  sub_1C4460108(v373, v450, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v371, v374 + v372, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v374, 1, v546) == 1)
  {
    sub_1C4420C3C(v447, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v450 + v372, 1, v546) == 1)
    {
      sub_1C4420C3C(v450, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_159;
    }

LABEL_157:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v450;
    goto LABEL_132;
  }

  v375 = v450;
  sub_1C4460108(v450, v448, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v375 + v372, 1, v546) == 1)
  {
    sub_1C4420C3C(v447, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    goto LABEL_157;
  }

  v376 = v450;
  v377 = v539;
  sub_1C47C0140();
  v378 = sub_1C47E3504(v448, v377);
  sub_1C47C00EC();
  sub_1C4420C3C(v447, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v376, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v378 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_159:
  v379 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__semanticLocation;
  swift_beginAccess();
  v380 = v457;
  sub_1C4460108(v258 + v379, v457, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  v381 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__semanticLocation;
  swift_beginAccess();
  v382 = *(v456 + 48);
  v383 = v380;
  v384 = v462;
  sub_1C4460108(v383, v462, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  sub_1C4460108(v188 + v381, v384 + v382, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  if (sub_1C44157D4(v384, 1, v459) == 1)
  {
    sub_1C4420C3C(v457, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
    if (sub_1C44157D4(v462 + v382, 1, v459) == 1)
    {
      sub_1C4420C3C(v462, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
      goto LABEL_166;
    }

LABEL_164:
    v267 = &qword_1EC0BCFA8;
    v268 = &qword_1C4F2C1E0;
    v269 = v462;
    goto LABEL_132;
  }

  v385 = v462;
  sub_1C4460108(v462, v458, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  if (sub_1C44157D4(v385 + v382, 1, v459) == 1)
  {
    sub_1C4420C3C(v457, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
    sub_1C47C00EC();
    goto LABEL_164;
  }

  v386 = v462;
  sub_1C47C0140();
  sub_1C47BE8DC();
  v388 = v387;
  sub_1C47C00EC();
  sub_1C4420C3C(v457, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  sub_1C47C00EC();
  sub_1C4420C3C(v386, &qword_1EC0BCFB0, &qword_1C4F2C1E8);
  if ((v388 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_166:
  v389 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__bluetooth;
  swift_beginAccess();
  v390 = v464;
  sub_1C4460108(v258 + v389, v464, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  v391 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__bluetooth;
  swift_beginAccess();
  v392 = *(v463 + 48);
  v393 = v390;
  v394 = v468;
  sub_1C4460108(v393, v468, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  sub_1C4460108(v188 + v391, v394 + v392, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  if (sub_1C44157D4(v394, 1, v466) == 1)
  {
    sub_1C4420C3C(v464, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
    if (sub_1C44157D4(v468 + v392, 1, v466) == 1)
    {
      sub_1C4420C3C(v468, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
      goto LABEL_173;
    }

LABEL_171:
    v267 = &qword_1EC0BCF98;
    v268 = &qword_1C4F2C1D0;
    v269 = v468;
    goto LABEL_132;
  }

  v395 = v468;
  sub_1C4460108(v468, v465, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  if (sub_1C44157D4(v395 + v392, 1, v466) == 1)
  {
    sub_1C4420C3C(v464, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
    sub_1C47C00EC();
    goto LABEL_171;
  }

  v396 = v468;
  sub_1C47C0140();
  sub_1C47BE8DC();
  v398 = v397;
  sub_1C47C00EC();
  sub_1C4420C3C(v464, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  sub_1C47C00EC();
  sub_1C4420C3C(v396, &qword_1EC0BCFA0, &qword_1C4F2C1D8);
  if ((v398 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_173:
  v399 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__lowPowerMode;
  swift_beginAccess();
  v400 = v451;
  sub_1C4460108(v258 + v399, v451, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v401 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__lowPowerMode;
  swift_beginAccess();
  v402 = *(v545 + 48);
  v403 = v400;
  v404 = v454;
  sub_1C4460108(v403, v454, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v401, v404 + v402, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v404, 1, v546) == 1)
  {
    sub_1C4420C3C(v451, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v454 + v402, 1, v546) == 1)
    {
      sub_1C4420C3C(v454, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_180;
    }

LABEL_178:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v454;
    goto LABEL_132;
  }

  v405 = v454;
  sub_1C4460108(v454, v452, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v405 + v402, 1, v546) == 1)
  {
    sub_1C4420C3C(v451, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    goto LABEL_178;
  }

  v406 = v454;
  v407 = v539;
  sub_1C47C0140();
  v408 = sub_1C47E3504(v452, v407);
  sub_1C47C00EC();
  sub_1C4420C3C(v451, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v406, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v408 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_180:
  v409 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__microlocationConfidence;
  swift_beginAccess();
  v410 = v453;
  sub_1C4460108(v258 + v409, v453, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v411 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__microlocationConfidence;
  swift_beginAccess();
  v412 = *(v545 + 48);
  v413 = v410;
  v414 = v461;
  sub_1C4460108(v413, v461, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v188 + v411, v414 + v412, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v414, 1, v546) == 1)
  {
    sub_1C4420C3C(v453, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v461 + v412, 1, v546) == 1)
    {
      sub_1C4420C3C(v461, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_187;
    }

LABEL_185:
    v267 = &qword_1EC0BB6C0;
    v268 = &unk_1C4F20AE0;
    v269 = v461;
    goto LABEL_132;
  }

  v415 = v461;
  sub_1C4460108(v461, v455, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415 + v412, 1, v546) == 1)
  {
    sub_1C4420C3C(v453, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    goto LABEL_185;
  }

  v416 = v461;
  v417 = v539;
  sub_1C47C0140();
  v418 = sub_1C47E3504(v455, v417);
  sub_1C47C00EC();
  sub_1C4420C3C(v453, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v416, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v418 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_187:
  v419 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendar;
  swift_beginAccess();
  v420 = v471;
  sub_1C4460108(v258 + v419, v471, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  v421 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendar;
  swift_beginAccess();
  v422 = *(v469 + 48);
  v423 = v420;
  v424 = v474;
  sub_1C4460108(v423, v474, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  sub_1C4460108(v188 + v421, v424 + v422, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  if (sub_1C44157D4(v424, 1, v470) == 1)
  {
    sub_1C4420C3C(v471, &qword_1EC0BCF90, &qword_1C4F2C1C8);
    if (sub_1C44157D4(v474 + v422, 1, v470) == 1)
    {
      sub_1C4420C3C(v474, &qword_1EC0BCF90, &qword_1C4F2C1C8);
      goto LABEL_196;
    }

    goto LABEL_192;
  }

  v425 = v474;
  sub_1C4460108(v474, v472, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  if (sub_1C44157D4(v425 + v422, 1, v470) == 1)
  {
    sub_1C4420C3C(v471, &qword_1EC0BCF90, &qword_1C4F2C1C8);
    sub_1C47C00EC();
LABEL_192:
    v267 = &qword_1EC0BCF88;
    v268 = &qword_1C4F2C1C0;
    v269 = v474;
    goto LABEL_132;
  }

  v426 = v473;
  sub_1C47C0140();
  if (*(v472 + *(v470 + 20)) != *&v426[*(v470 + 20)])
  {

    sub_1C47BD62C();
    v428 = v427;

    if ((v428 & 1) == 0)
    {
      sub_1C47C00EC();
      v333 = &qword_1EC0BCF90;
      v334 = &qword_1C4F2C1C8;
      sub_1C4420C3C(v471, &qword_1EC0BCF90, &qword_1C4F2C1C8);
      sub_1C47C00EC();
      v269 = v474;
      goto LABEL_131;
    }
  }

  sub_1C4F00328();
  sub_1C47BF154(&qword_1EC0BB6B8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v429 = sub_1C4F010B8();
  sub_1C47C00EC();
  sub_1C4420C3C(v471, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  sub_1C47C00EC();
  sub_1C4420C3C(v474, &qword_1EC0BCF90, &qword_1C4F2C1C8);
  if ((v429 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_196:
  v430 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poi;
  swift_beginAccess();
  v431 = v476;
  sub_1C4460108(v258 + v430, v476, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  v432 = OBJC_IVAR____TtCV24IntelligencePlatformCore17EventStreamsEventP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poi;
  swift_beginAccess();
  v433 = *(v475 + 48);
  v434 = v431;
  v435 = v480;
  sub_1C4460108(v434, v480, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  sub_1C4460108(v188 + v432, v435 + v433, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  if (sub_1C44157D4(v435, 1, v478) != 1)
  {
    v436 = v480;
    sub_1C4460108(v480, v477, &qword_1EC0BCF80, &qword_1C4F2C1B8);
    if (sub_1C44157D4(v436 + v433, 1, v478) == 1)
    {

      sub_1C4420C3C(v476, &qword_1EC0BCF80, &qword_1C4F2C1B8);
      sub_1C47C00EC();
      goto LABEL_201;
    }

    v437 = v480;
    sub_1C47C0140();
    sub_1C47BE8DC();
    v439 = v438;

    sub_1C47C00EC();
    sub_1C4420C3C(v476, &qword_1EC0BCF80, &qword_1C4F2C1B8);
    sub_1C47C00EC();
    sub_1C4420C3C(v437, &qword_1EC0BCF80, &qword_1C4F2C1B8);
    return (v439 & 1) != 0;
  }

  sub_1C4420C3C(v476, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  if (sub_1C44157D4(v480 + v433, 1, v478) != 1)
  {
LABEL_201:
    sub_1C4420C3C(v480, &qword_1EC0BCF78, &qword_1C4F2C1B0);
    return 0;
  }

  sub_1C4420C3C(v480, &qword_1EC0BCF80, &qword_1C4F2C1B8);
  return 1;
}

uint64_t sub_1C47B4664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD038, type metadata accessor for EventStreamsEvent, &unk_1C4F2BF84);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}