unint64_t sub_20CE09584()
{
  result = qword_27C813750;
  if (!qword_27C813750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813750);
  }

  return result;
}

void sub_20CE0963C()
{
  if (!qword_27C812350)
  {
    v0 = sub_20CE14214();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812350);
    }
  }
}

uint64_t sub_20CE096A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F62412072657355;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v2)
    {
      v3 = 0xEA00000000007472;
    }

    else
    {
      v3 = 0x800000020CE1A980;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x800000020CE1A9B0;
    v4 = 0xD000000000000013;
  }

  else if (a1 == 3)
  {
    v3 = 0x800000020CE1A9D0;
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x646E452074736554;
    v3 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6F62412072657355;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (a2)
    {
      v5 = 0xEA00000000007472;
    }

    else
    {
      v5 = 0x800000020CE1A980;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000020CE1A9B0;
    if (v4 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000020CE1A9D0;
    if (v4 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEA00000000006465;
    if (v4 != 0x646E452074736554)
    {
LABEL_31:
      v7 = sub_20CE14284();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_20CE0984C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "available";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v3 == 2)
    {
      v4 = "audioDeviceIncompatible";
    }

    else
    {
      v4 = "audioDeviceNotInEar";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "audioDeviceNotConnected";
    }

    else
    {
      v4 = "available";
    }

    v5 = 0xD000000000000017;
  }

  v6 = "audioDeviceIncompatible";
  v7 = 0xD000000000000013;
  if (a2 != 2)
  {
    v7 = 0xD000000000000011;
    v6 = "audioDeviceNotInEar";
  }

  if (a2)
  {
    v2 = "audioDeviceNotConnected";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20CE14284();
  }

  return v10 & 1;
}

unint64_t HearingTestFlowEventIHAFieldNames.rawValue.getter()
{
  result = 0x7275446C61746F74;
  switch(*v0)
  {
    case 1:
    case 0xA:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x6172754470657473;
      break;
    case 7:
      result = 0x72617453776F6C66;
      break;
    case 8:
      result = 6645601;
      break;
    case 9:
      result = 0x6369676F6C6F6962;
      break;
    case 0xB:
    case 0x11:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD000000000000017;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t HearingTestFlowEventDUFieldNames.rawValue.getter()
{
  result = 1885697139;
  switch(*v0)
  {
    case 1:
      return 0x6E6F69746361;
    case 2:
      return 0x6174654470657473;
    case 3:
      return 0x6F73616552646E65;
    case 4:
      return 0x696F507972746E65;
    case 5:
      v4 = 10;
      goto LABEL_14;
    case 6:
      return 0x4673646F50726961;
    case 7:
      return 0xD000000000000018;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0xD000000000000021;
    case 0xA:
      return 0xD000000000000016;
    case 0xB:
      v3 = 1953721961;
      goto LABEL_16;
    case 0xC:
      v2 = 1953721961;
      goto LABEL_7;
    case 0xD:
      v3 = 1952543859;
LABEL_16:
      result = v3 | 0x73696F4E00000000;
      break;
    case 0xE:
      v2 = 1952543859;
LABEL_7:
      result = v2 | 0x73696F4E00000000;
      break;
    case 0xF:
      v4 = 5;
LABEL_14:
      result = v4 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t HearingTestFlowAnalyticsStep.rawValue.getter()
{
  result = 0x20676E6974746547;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      return result;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0xD000000000000026;
      break;
    case 0xA:
      result = 0x697461756C617645;
      break;
    case 0xB:
      result = 0xD00000000000002FLL;
      break;
    case 0xC:
      result = 0x73746C75736552;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0x7075727265746E49;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t HearingTestFlowActionType.rawValue.getter()
{
  result = 0x746E452070657453;
  switch(*v0)
  {
    case 1:
      result = 0x78654E2065766F4DLL;
      break;
    case 2:
      result = 0x6361422065766F4DLL;
      break;
    case 3:
      result = 1701736260;
      break;
    case 4:
      result = 0x46206C65636E6143;
      break;
    case 5:
      result = 0x764F207472617453;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x73736563637553;
      break;
    case 9:
      result = 0x6572756C696146;
      break;
    case 0xA:
      result = 0x74654420776F6853;
      break;
    case 0xB:
      result = 0x74724120776F6853;
      break;
    case 0xC:
      result = 0xD000000000000015;
      break;
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t HearingTestFlowEndReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F62412072657355;
  v3 = 0xD000000000000013;
  v4 = 0x646E452074736554;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20CE0A1DC(uint64_t a1)
{
  v2 = *(v1 + 1);
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  if (v2 == 16)
  {
    return sub_20CE143A4();
  }

  sub_20CE143A4();
  HearingTestFlowActionType.rawValue.getter();
  sub_20CE139C4();
}

uint64_t sub_20CE0A2AC()
{
  v1 = *(v0 + 1);
  sub_20CE14384();
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  sub_20CE143A4();
  if (v1 != 16)
  {
    HearingTestFlowActionType.rawValue.getter();
    sub_20CE139C4();
  }

  return sub_20CE143B4();
}

uint64_t sub_20CE0A374(uint64_t a1)
{
  v2 = *(v1 + 1);
  sub_20CE14384();
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  sub_20CE143A4();
  if (v2 != 16)
  {
    HearingTestFlowActionType.rawValue.getter();
    sub_20CE139C4();
  }

  return sub_20CE143B4();
}

HearingTestUI::HearingTestFlowAnalyticsStep_optional __swiftcall HearingTestFlowAnalyticsStep.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14234();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20CE0A4FC@<X0>(unint64_t *a1@<X8>)
{
  result = HearingTestFlowAnalyticsStep.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20CE0A544()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

uint64_t sub_20CE0A5B8(uint64_t a1)
{
  v2 = *v1;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v2);
  return sub_20CE143B4();
}

unint64_t sub_20CE0A5FC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20CE0B088(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

HearingTestUI::HearingTestFlowActionType_optional __swiftcall HearingTestFlowActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14234();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_20CE0A6F8@<X0>(unint64_t *a1@<X8>)
{
  result = HearingTestFlowActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HearingTestUI::HearingTestFlowEndReason_optional __swiftcall HearingTestFlowEndReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14234();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CE0A788()
{
  sub_20CE14384();
  sub_20CE139C4();

  return sub_20CE143B4();
}

uint64_t sub_20CE0A880(uint64_t a1)
{
  sub_20CE139C4();
}

uint64_t sub_20CE0A964(uint64_t a1)
{
  sub_20CE14384();
  sub_20CE139C4();

  return sub_20CE143B4();
}

void sub_20CE0AA64(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007472;
  v4 = 0x6F62412072657355;
  v5 = 0x800000020CE1A9B0;
  v6 = 0xD000000000000013;
  v7 = 0x800000020CE1A9D0;
  v8 = 0x646E452074736554;
  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xEA00000000006465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000020CE1A980;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

HearingTestUI::HearingTestFlowEventDUFieldNames_optional __swiftcall HearingTestFlowEventDUFieldNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14234();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CE0ABEC@<X0>(uint64_t *a1@<X8>)
{
  result = HearingTestFlowEventDUFieldNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HearingTestUI::HearingTestFlowEventIHAFieldNames_optional __swiftcall HearingTestFlowEventIHAFieldNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14294();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CE0ACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20CE14284();
  }

  return v11 & 1;
}

uint64_t sub_20CE0AD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_20CE14384();
  a3(v4);
  sub_20CE139C4();

  return sub_20CE143B4();
}

uint64_t sub_20CE0ADF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_20CE139C4();
}

uint64_t sub_20CE0AE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_20CE14384();
  a4(v5);
  sub_20CE139C4();

  return sub_20CE143B4();
}

unint64_t sub_20CE0AEEC@<X0>(unint64_t *a1@<X8>)
{
  result = HearingTestFlowEventIHAFieldNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_20CE0AF24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = HearingTestFlowAnalyticsStep.rawValue.getter();
  v6 = v5;
  if (v4 != HearingTestFlowAnalyticsStep.rawValue.getter() || v6 != v7)
  {
    v9 = sub_20CE14284();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }

    if (v2 == 16)
    {
      return v3 == 16;
    }

LABEL_10:
    if (v3 != 16)
    {
      v11 = HearingTestFlowActionType.rawValue.getter();
      v13 = v12;
      if (v11 == HearingTestFlowActionType.rawValue.getter() && v13 == v14)
      {

        return 1;
      }

      v15 = sub_20CE14284();

      if (v15)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 != 16)
  {
    goto LABEL_10;
  }

  return v3 == 16;
}

unint64_t sub_20CE0B088(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20CE0B09C()
{
  result = qword_27C8137B8;
  if (!qword_27C8137B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137B8);
  }

  return result;
}

unint64_t sub_20CE0B0F4()
{
  result = qword_27C8137C0;
  if (!qword_27C8137C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137C0);
  }

  return result;
}

unint64_t sub_20CE0B14C()
{
  result = qword_27C8137C8;
  if (!qword_27C8137C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137C8);
  }

  return result;
}

unint64_t sub_20CE0B1A4()
{
  result = qword_27C8137D0;
  if (!qword_27C8137D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137D0);
  }

  return result;
}

unint64_t sub_20CE0B1FC()
{
  result = qword_27C8137D8;
  if (!qword_27C8137D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137D8);
  }

  return result;
}

unint64_t sub_20CE0B284()
{
  result = qword_27C8137F0;
  if (!qword_27C8137F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8137F0);
  }

  return result;
}

uint64_t sub_20CE0B308(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_20CE0B358(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CE0B358(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20CE13B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HearingTestFlowEndReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingTestFlowEndReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20CE0B524(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20CE0B5B4(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HearingTestFlowEventIHAFieldNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingTestFlowEventIHAFieldNames(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HearingTestFlowAnalyticsStepActionPair(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 65295 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65295 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65295;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65295;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65295;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for HearingTestFlowAnalyticsStepActionPair(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65295 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65295 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 16) + 1;
    *result = a2 - 241;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CE0B928()
{
  result = qword_27C813808;
  if (!qword_27C813808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813808);
  }

  return result;
}

void sub_20CE0B9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [v4 font];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() configurationWithFont_];

    v11 = sub_20CE13914();
    v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

    if (v12)
    {
      v13 = [v12 imageWithRenderingMode_];
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    [v14 setImage_];
    sub_20CE0BBDC();
    v18 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    MEMORY[0x20F312EF0](a1, a2);
    v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v16 = sub_20CE13914();

    v17 = [v15 initWithString_];

    [v18 appendAttributedString_];
    [v5 setAttributedText_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_20CE0BBDC()
{
  result = qword_27C813810;
  if (!qword_27C813810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C813810);
  }

  return result;
}

uint64_t sub_20CE0BC28(uint64_t a1, uint64_t a2)
{
  v7 = (*MEMORY[0x277D12CA0] + MEMORY[0x277D12CA0]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7C660;

  return v7(a1, a2);
}

uint64_t dispatch thunk of Session.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20CD7C660;

  return v11(a1, a2, a3, a4);
}

uint64_t LabelledProgressView.init(model:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_20CE13384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LabelledProgressView(0);
  v11 = 0x4008000000000000;
  v8 = *(v5 + 104);
  v8(v7, *MEMORY[0x277CE0AA0], v4);
  sub_20CDA1354();
  sub_20CE12EE4();
  v11 = 0x4020000000000000;
  v8(v7, *MEMORY[0x277CE0A90], v4);
  result = sub_20CE12EE4();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for LabelledProgressView(uint64_t a1)
{
  result = qword_27C8138D0;
  if (!qword_27C8138D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *LabelledProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LabelledProgressView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
  sub_20CE12EF4();
  v7 = *v23;
  sub_20CE12EF4();
  v8 = *v23;
  v9 = sub_20CE13114();
  v21 = 0;
  sub_20CE0C2F4(v2, v19);
  memcpy(v22, v19, sizeof(v22));
  memcpy(v23, v19, 0x128uLL);
  sub_20CE0EA3C(v22, v18, &qword_27C813820, sub_20CE0CCBC);
  sub_20CE0E9E0(v23, &qword_27C813820, sub_20CE0CCBC, MEMORY[0x277CE14B8]);
  memcpy(&v20[7], v22, 0x128uLL);
  v10 = v21;
  if (qword_27C811DD0 != -1)
  {
    swift_once();
  }

  v11 = qword_27C8179F0;
  KeyPath = swift_getKeyPath();
  sub_20CE0E2E4(v2, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LabelledProgressView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_20CE0E34C(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  sub_20CE0E47C(0);
  v16 = (a1 + *(v15 + 36));
  sub_20CE12F44();

  sub_20CE13B94();
  *v16 = &unk_20CE1A278;
  v16[1] = v14;
  *a1 = v9;
  *(a1 + 8) = v7 + v8 * -0.5;
  *(a1 + 16) = v10;
  result = memcpy((a1 + 17), v20, 0x12FuLL);
  *(a1 + 320) = KeyPath;
  *(a1 + 328) = v11;
  return result;
}

uint64_t sub_20CE0C2F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  sub_20CE0E97C(0, &qword_27C8125C0, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v62 - v4;
  v5 = sub_20CE13154();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_20CE13B84();
  v71 = sub_20CE13B74();
  v62 = v6;
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE13144();
  sub_20CE13134();
  v7 = *a1;
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtCV13HearingTestUI20LabelledProgressView5Model___observationRegistrar;
  *&v104 = v7;
  v9 = sub_20CE0D3C0(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  v68 = v8;
  v65 = v9;
  sub_20CE12AF4();

  v69 = v7;
  v63 = a1;

  sub_20CE13124();

  sub_20CE13134();
  sub_20CE13164();
  v10 = sub_20CE133F4();
  v12 = v11;
  v14 = v13;
  sub_20CE13364();
  sub_20CE132E4();

  v15 = sub_20CE133E4();
  v17 = v16;
  v19 = v18;

  sub_20CD93620(v10, v12, v14 & 1);

  v20 = *MEMORY[0x277CE09A0];
  v21 = sub_20CE132F4();
  v22 = *(v21 - 8);
  v23 = v72;
  (*(v22 + 104))(v72, v20, v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  v24 = sub_20CE13394();
  v66 = v25;
  v67 = v24;
  LOBYTE(v22) = v26;
  v73 = v27;
  sub_20CD93620(v15, v17, v19 & 1);

  sub_20CE0E9E0(v23, &qword_27C8125C0, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  type metadata accessor for LabelledProgressView(0);
  sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
  v28 = v63;
  sub_20CE12EF4();
  v64 = sub_20CE132A4();
  sub_20CE12E94();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LODWORD(v72) = v22 & 1;
  v113 = v22 & 1;
  v110 = 0;
  v37 = sub_20CE135F4();
  v39 = v38;
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = sub_20CE135F4();
  v42 = v41;
  sub_20CE0D408(v28, &v104);
  v81 = *&v108[32];
  v82 = *&v108[48];
  v83 = *&v108[64];
  v77 = v106;
  v78 = v107;
  v79 = *v108;
  v80 = *&v108[16];
  v75 = v104;
  v76 = v105;
  v85[6] = *&v108[32];
  v85[7] = *&v108[48];
  v85[8] = *&v108[64];
  v85[2] = v106;
  v85[3] = v107;
  v85[4] = *v108;
  v85[5] = *&v108[16];
  v84 = *&v108[80];
  v86 = *&v108[80];
  v85[0] = v104;
  v85[1] = v105;
  sub_20CE0EA3C(&v75, v103, &qword_27C813848, sub_20CE0CF00);
  sub_20CE0E9E0(v85, &qword_27C813848, sub_20CE0CF00, MEMORY[0x277CE14B8]);

  v97 = v81;
  v98 = v82;
  v99 = v83;
  v93 = v77;
  v94 = v78;
  v95 = v79;
  v96 = v80;
  v91 = v75;
  v92 = v76;
  v87[7] = v81;
  v87[8] = v82;
  v87[9] = v83;
  v87[3] = v77;
  v87[4] = v78;
  v87[5] = v79;
  v87[6] = v80;
  *&v87[0] = v40;
  *(&v87[0] + 1) = v42;
  v87[1] = v75;
  v87[2] = v76;
  *&v88 = v84;
  *(&v88 + 1) = v37;
  v89 = v39;
  *(&v114[11] + 7) = v39;
  *(&v114[7] + 7) = v81;
  *(&v114[3] + 7) = v77;
  *(&v114[8] + 7) = v82;
  *(&v114[9] + 7) = v83;
  *(&v114[4] + 7) = v78;
  *(&v114[5] + 7) = v79;
  *(&v114[6] + 7) = v80;
  *(v114 + 7) = v87[0];
  *(&v114[1] + 7) = v75;
  *(&v114[2] + 7) = v76;
  *(&v114[10] + 7) = v88;
  v90[0] = v40;
  v90[1] = v42;
  v100 = v84;
  v101 = v37;
  v102 = v39;
  sub_20CE0E2E4(v87, &v104, sub_20CE0CDB8);
  sub_20CE0EABC(v90, sub_20CE0CDB8);
  swift_getKeyPath();
  v43 = v69;
  *&v104 = v69;
  sub_20CE12AF4();

  v44 = *(v43 + 24);
  *&v104 = *(v43 + 16);
  *(&v104 + 1) = v44;
  sub_20CD935CC();

  v45 = sub_20CE13414();
  v47 = v46;
  v49 = v48;
  sub_20CE13334();
  sub_20CE132E4();

  v50 = sub_20CE133E4();
  v68 = v52;
  v69 = v51;
  v54 = v53;

  sub_20CD93620(v45, v47, v49 & 1);

  *(&v103[25] + 1) = v114[8];
  *(&v103[27] + 1) = v114[9];
  *(&v103[29] + 1) = v114[10];
  *&v103[31] = *(&v114[10] + 15);
  *(&v103[17] + 1) = v114[4];
  *(&v103[19] + 1) = v114[5];
  *(&v103[21] + 1) = v114[6];
  *(&v103[23] + 1) = v114[7];
  *(&v103[9] + 1) = v114[0];
  *(&v103[11] + 1) = v114[1];
  *(&v103[13] + 1) = v114[2];
  v56 = v66;
  v55 = v67;
  v103[0] = v67;
  v103[1] = v66;
  LOBYTE(v103[2]) = v72;
  *(&v103[2] + 1) = *v112;
  HIDWORD(v103[2]) = *&v112[3];
  v103[3] = v73;
  v57 = v64;
  LOBYTE(v103[4]) = v64;
  *(&v103[4] + 1) = *v111;
  HIDWORD(v103[4]) = *&v111[3];
  v103[5] = v30;
  v103[6] = v32;
  v103[7] = v34;
  v103[8] = v36;
  LOBYTE(v103[9]) = 0;
  *(&v103[15] + 1) = v114[3];
  LOBYTE(v45) = v54 & 1;
  v74 = v54 & 1;
  v58 = v70;
  memcpy(v70, v103, 0x108uLL);
  v60 = v68;
  v59 = v69;
  v58[33] = v50;
  v58[34] = v59;
  *(v58 + 280) = v45;
  v58[36] = v60;
  sub_20CE0E2E4(v103, &v104, sub_20CE0CD24);
  sub_20CD93B54(v50, v59, v45);

  sub_20CD93620(v50, v59, v45);

  *&v104 = v55;
  *(&v104 + 1) = v56;
  LOBYTE(v105) = v72;
  *(&v105 + 1) = *v112;
  DWORD1(v105) = *&v112[3];
  *(&v105 + 1) = v73;
  LOBYTE(v106) = v57;
  *(&v106 + 1) = *v111;
  DWORD1(v106) = *&v111[3];
  *(&v106 + 1) = v30;
  *&v107 = v32;
  *(&v107 + 1) = v34;
  *v108 = v36;
  v108[8] = 0;
  *&v108[137] = v114[8];
  *&v108[153] = v114[9];
  v109[0] = v114[10];
  *(v109 + 15) = *(&v114[10] + 15);
  *&v108[73] = v114[4];
  *&v108[89] = v114[5];
  *&v108[105] = v114[6];
  *&v108[121] = v114[7];
  *&v108[9] = v114[0];
  *&v108[25] = v114[1];
  *&v108[41] = v114[2];
  *&v108[57] = v114[3];
  sub_20CE0EABC(&v104, sub_20CE0CD24);
}

void sub_20CE0CCBC(uint64_t a1)
{
  if (!qword_27C813828)
  {
    sub_20CE0CD24(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813828);
    }
  }
}

void sub_20CE0CD24(uint64_t a1)
{
  if (!qword_27C813830)
  {
    sub_20CE0D36C(255, &qword_27C812F60, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_20CE0CDB8(255);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813830);
    }
  }
}

void sub_20CE0CDB8(uint64_t a1)
{
  if (!qword_27C813838)
  {
    sub_20CE0CE4C(255);
    sub_20CE0D3C0(&qword_27C8138A8, sub_20CE0CE4C, MEMORY[0x277CE11A8]);
    v1 = sub_20CE13004();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813838);
    }
  }
}

void sub_20CE0CE4C(uint64_t a1)
{
  if (!qword_27C813840)
  {
    sub_20CE0E97C(255, &qword_27C813848, sub_20CE0CF00, MEMORY[0x277CE14B8]);
    sub_20CE0E630(&qword_27C8138A0, &qword_27C813848, sub_20CE0CF00);
    v1 = sub_20CE13594();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813840);
    }
  }
}

void sub_20CE0CF00(uint64_t a1)
{
  if (!qword_27C813850)
  {
    sub_20CE0CF70(255);
    sub_20CE0D0E4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813850);
    }
  }
}

void sub_20CE0CF70(uint64_t a1)
{
  if (!qword_27C813858)
  {
    sub_20CE0D274(255, &qword_27C813860, sub_20CE0D040, MEMORY[0x277CE1120], MEMORY[0x277CDF770]);
    sub_20CE0E97C(255, &qword_27C812FE0, sub_20CE0D094, MEMORY[0x277CE0860]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813858);
    }
  }
}

unint64_t sub_20CE0D040()
{
  result = qword_27C813868;
  if (!qword_27C813868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813868);
  }

  return result;
}

void sub_20CE0D094()
{
  if (!qword_27C812FE8)
  {
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812FE8);
    }
  }
}

void sub_20CE0D0E4(uint64_t a1)
{
  if (!qword_27C813870)
  {
    sub_20CE0D178(255);
    sub_20CE0D36C(255, &qword_27C813898, MEMORY[0x277D839F8], MEMORY[0x277D83A28], MEMORY[0x277CE0190]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813870);
    }
  }
}

void sub_20CE0D178(uint64_t a1)
{
  if (!qword_27C813878)
  {
    sub_20CE0D1D8(255);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813878);
    }
  }
}

void sub_20CE0D1D8(uint64_t a1)
{
  if (!qword_27C813880)
  {
    sub_20CE0D274(255, &qword_27C813888, sub_20CE0D040, MEMORY[0x277CE1120], MEMORY[0x277CDF788]);
    sub_20CE0D2DC();
    v1 = sub_20CE12F34();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813880);
    }
  }
}

void sub_20CE0D274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_20CE0D2DC()
{
  result = qword_27C813890;
  if (!qword_27C813890)
  {
    sub_20CE0D274(255, &qword_27C813888, sub_20CE0D040, MEMORY[0x277CE1120], MEMORY[0x277CDF788]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813890);
  }

  return result;
}

void sub_20CE0D36C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20CE0D3C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CE0D408@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LabelledProgressView(0);
  sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
  sub_20CE12EF4();
  sub_20CE12EC4();
  v4 = v60;
  v26 = v62;
  v27 = v61;
  v5 = v63;
  v25 = v64;
  v6 = v65;
  if (qword_27C811DD8 != -1)
  {
    swift_once();
  }

  v23 = qword_27C8179F8;
  KeyPath = swift_getKeyPath();
  v7 = *a1;
  swift_getKeyPath();
  v51[0] = v7;
  sub_20CE0D3C0(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);

  sub_20CE12AF4();

  if (*(v7 + 48) <= 1.0)
  {
    v8 = *(v7 + 48);
  }

  else
  {
    v8 = 1.0;
  }

  sub_20CE12EF4();
  sub_20CE12EC4();
  sub_20CE13664();
  v10 = v9;
  v12 = v11;
  swift_getKeyPath();
  sub_20CE12AF4();

  v13 = sub_20CE13604();
  swift_getKeyPath();
  v51[0] = v7;
  sub_20CE12AF4();

  v14 = *(v7 + 48);
  *&v47[0] = 0;
  *(v47 + 1) = v8;
  v47[1] = v40;
  v47[2] = v41;
  v15 = v42;
  *&v48 = v42;
  *(&v48 + 1) = 0x4012D97C7F3321D2;
  *&v49 = v10;
  *(&v49 + 1) = v12;
  *&v50 = v13;
  *(&v50 + 1) = v14;
  *&v39[24] = v40;
  *&v39[8] = v47[0];
  *&v39[88] = v50;
  *&v39[72] = v49;
  *&v39[56] = v48;
  *&v39[40] = v41;
  *(a2 + 144) = v14;
  *&v43 = v4;
  *(&v43 + 1) = __PAIR64__(v26, v27);
  *&v44 = v5;
  *(&v44 + 1) = v25;
  *&v45 = v6;
  *(&v45 + 1) = KeyPath;
  v46 = v23;
  *v39 = v23;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v16 = v44;
  *a2 = v43;
  *(a2 + 16) = v16;
  v17 = v38;
  v18 = *v39;
  v19 = *&v39[32];
  *(a2 + 64) = *&v39[16];
  *(a2 + 80) = v19;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  v20 = *&v39[48];
  v21 = *&v39[80];
  *(a2 + 112) = *&v39[64];
  *(a2 + 128) = v21;
  *(a2 + 96) = v20;
  v51[0] = 0;
  *&v51[1] = v8;
  v52 = v40;
  v53 = v41;
  v54 = v15;
  v55 = 0x4012D97C7F3321D2;
  v56 = v10;
  v57 = v12;
  v58 = v13;
  v59 = v14;
  sub_20CE0E2E4(&v43, &v28, sub_20CE0CF70);
  sub_20CE0E2E4(v47, &v28, sub_20CE0D0E4);
  sub_20CE0EABC(v51, sub_20CE0D0E4);
  v28 = v4;
  v29 = v27;
  v30 = v26;
  v31 = v5;
  v32 = v25;
  v33 = v6;
  v34 = KeyPath;
  v35 = v23;
  sub_20CE0EABC(&v28, sub_20CE0CF70);
}

uint64_t sub_20CE0D898()
{
  v0[2] = sub_20CE13B84();
  v0[3] = sub_20CE13B74();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20CE0D944;

  return sub_20CE0DAE0();
}

uint64_t sub_20CE0D944()
{

  v1 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CE0DA80, v1, v0);
}

uint64_t sub_20CE0DA80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CE0DAE0()
{
  v1[7] = v0;
  v2 = sub_20CE14184();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_20CE14194();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_20CE13B84();
  v1[15] = sub_20CE13B74();
  v5 = sub_20CE13B24();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x2822009F8](sub_20CE0DC3C, v5, v4);
}

uint64_t sub_20CE0DC3C()
{
  if (sub_20CE13BE4())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 144) = **(v0 + 56);
    sub_20CDB6728();
    sub_20CE14314();
    *(v0 + 40) = xmmword_20CE1A230;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x2822009F8](sub_20CE0DD2C, 0, 0);
  }
}

uint64_t sub_20CE0DD2C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_20CE0D3C0(&qword_27C811ED0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_20CE142F4();
  sub_20CE0D3C0(&qword_27C811ED8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_20CE141A4();
  v5 = *(v2 + 8);
  v0[19] = v5;
  v0[20] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_20CE0DEB0;
  v8 = v0[11];
  v7 = v0[12];

  return MEMORY[0x2822008C8](v8, v0 + 2, v7, v4);
}

uint64_t sub_20CE0DEB0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[11];
    v5 = v2[8];

    v3(v4, v5);
    v6 = sub_20CE0E10C;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v2[13];
    v9 = v2[14];
    v11 = v2[12];
    (v2[19])(v2[11], v2[8]);
    (*(v10 + 8))(v9, v11);
    v7 = v2[16];
    v8 = v2[17];
    v6 = sub_20CE0E024;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_20CE0E024()
{
  if (sub_20CE13BE4())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_20CDB6728();
    sub_20CE14314();
    *(v0 + 40) = xmmword_20CE1A230;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x2822009F8](sub_20CE0DD2C, 0, 0);
  }
}

uint64_t sub_20CE0E10C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x2822009F8](sub_20CE0EB1C, v1, v2);
}

uint64_t sub_20CE0E180()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8179E8;
  result = sub_20CE13524();
  qword_27C8179F0 = result;
  return result;
}

uint64_t sub_20CE0E208()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8179E8;
  result = sub_20CE13524();
  qword_27C8179F8 = result;
  return result;
}

uint64_t sub_20CE0E28C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CE13054();
  *a1 = result;
  return result;
}

uint64_t sub_20CE0E2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE0E34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelledProgressView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE0E3B0()
{
  type metadata accessor for LabelledProgressView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CD7C660;

  return sub_20CE0D898();
}

void sub_20CE0E47C(uint64_t a1)
{
  if (!qword_27C8138B0)
  {
    sub_20CE0E4E4(255);
    sub_20CE12F44();
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8138B0);
    }
  }
}

void sub_20CE0E4E4(uint64_t a1)
{
  if (!qword_27C8138B8)
  {
    sub_20CE0E57C(255);
    sub_20CE0E97C(255, &qword_27C812FE0, sub_20CE0D094, MEMORY[0x277CE0860]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8138B8);
    }
  }
}

void sub_20CE0E57C(uint64_t a1)
{
  if (!qword_27C8138C0)
  {
    sub_20CE0E97C(255, &qword_27C813820, sub_20CE0CCBC, MEMORY[0x277CE14B8]);
    sub_20CE0E630(&qword_27C8138C8, &qword_27C813820, sub_20CE0CCBC);
    v1 = sub_20CE13574();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8138C0);
    }
  }
}

uint64_t sub_20CE0E630(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_20CE0E97C(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CE0E6D8(uint64_t a1)
{
  type metadata accessor for LabelledProgressView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_20CE0D274(319, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20CE0E794()
{
  result = qword_27C8138E0;
  if (!qword_27C8138E0)
  {
    sub_20CE0E47C(255);
    sub_20CE0E844();
    sub_20CE0D3C0(&qword_27C8138F8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8138E0);
  }

  return result;
}

unint64_t sub_20CE0E844()
{
  result = qword_27C8138E8;
  if (!qword_27C8138E8)
  {
    sub_20CE0E4E4(255);
    sub_20CE0D3C0(&qword_27C8138F0, sub_20CE0E57C, MEMORY[0x277CE1138]);
    sub_20CE0E8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8138E8);
  }

  return result;
}

unint64_t sub_20CE0E8F4()
{
  result = qword_27C813028;
  if (!qword_27C813028)
  {
    sub_20CE0E97C(255, &qword_27C812FE0, sub_20CE0D094, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813028);
  }

  return result;
}

void sub_20CE0E97C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE0E9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_20CE0E97C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_20CE0EA3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE0E97C(0, a3, a4, MEMORY[0x277CE14B8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE0EABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE0EB20()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3)
    {
      v4 = sub_20CE13914();
      v5 = [v0 hk:v4 keyExists:?];

      result = 2;
      if (v5)
      {
        v6 = sub_20CE13914();
        v7 = [v0 BOOLForKey_];

        if (v7)
        {
          return 0;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0EC10()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overridenLeftEarInconclusive.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overridenRightEarInconclusive.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0EEBC@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v4 = result;
    v5 = [result isAppleInternalInstall];

    if (v5 && (v6 = sub_20CE13914(), v7 = [v1 hk:v6 keyExists:?], v6, v7))
    {
      v8 = sub_20CE13914();
      v9 = [v1 integerForKey_];

      return sub_20CDAB020(v9, a1);
    }

    else
    {
      v10 = sub_20CE129C4();
      v11 = *(*(v10 - 8) + 56);

      return v11(a1, 1, 1, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F018()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F0FC()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F1E0()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F2C4()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE0F3A8()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overrideHearingTestSessionPauseThreshold.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5) && (v6 = sub_20CE13914(), objc_msgSend(v0, sel_doubleForKey_, v6), v8 = v7, v6, v8 > 1.0))
    {
      return *&v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overridenHTThresholds(channel:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20CE12854();
  v92 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v91 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE12924();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D12CD8], v6);
  sub_20CD8B030();
  sub_20CE13A84();
  sub_20CE13A84();
  v10 = *(v7 + 8);
  v93 = v9;
  v10(v9, v6);
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
LABEL_101:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [result isAppleInternalInstall];

  if (!v13 || (v14 = sub_20CE13914(), v15 = [v1 hk:v14 keyExists:?], v14, (v15 & 1) == 0))
  {
LABEL_32:

    return 0;
  }

  v16 = sub_20CE13914();

  v17 = [v2 arrayForKey_];

  if (!v17)
  {
    return 0;
  }

  v18 = sub_20CE13AB4();

  v19 = sub_20CE10F38(v18);

  if (!v19)
  {
    return 0;
  }

  v83 = v7;
  v88 = v4;
  v89 = v6;
  v90 = a1;
  v21 = *(v19 + 16);
  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
    goto LABEL_35;
  }

  v23 = 0;
  v24 = 0;
  v25 = v19 + 40;
  v86 = v21 - 1;
  v87 = v19 + 40;
  do
  {
    v26 = v22;
    v22 = v25 + 16 * v23;
    v27 = v23;
    while (1)
    {
      if (v27 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_79;
      }

      v28 = *(v22 - 8);
      v15 = *v22;
      v97 = 0;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      *(&v83 - 2) = &v97;
      if ((v15 & 0x1000000000000000) == 0)
      {
        if ((v15 & 0x2000000000000000) != 0)
        {
          v94 = v28;
          v95 = v15 & 0xFFFFFFFFFFFFFFLL;

          if (v28 >= 0x21u || ((0x100003E01uLL >> v28) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
LABEL_20:
              v96 = *v30 == 0;
              goto LABEL_22;
            }
          }

          goto LABEL_21;
        }

        if ((v28 & 0x1000000000000000) != 0)
        {
          v29 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v29 >= 0x21 || ((0x100003E01uLL >> v29) & 1) == 0)
          {
            v30 = _swift_stdlib_strtod_clocale();
            if (v30)
            {
              goto LABEL_20;
            }
          }

LABEL_21:
          v96 = 0;
          goto LABEL_22;
        }
      }

      sub_20CE140D4();
LABEL_22:

      if (v96)
      {
        break;
      }

      ++v27;
      v22 += 16;
      if (v21 == v27)
      {
        v22 = v26;
        goto LABEL_35;
      }
    }

    v31 = v97;
    v22 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_20CD895D4(0, *(v26 + 16) + 1, 1, v26);
      v22 = isUniquelyReferenced_nonNull_native;
    }

    v33 = *(v22 + 16);
    v32 = *(v22 + 24);
    v15 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_20CD895D4((v32 > 1), v33 + 1, 1, v22);
      v22 = isUniquelyReferenced_nonNull_native;
    }

    v23 = v27 + 1;
    *(v22 + 16) = v15;
    *(v22 + 8 * v33 + 32) = v31;
    v25 = v87;
  }

  while (v86 != v27);
LABEL_35:

  v24 = *(v22 + 16);
  v35 = _HKAudiogramStandardFrequencies();
  v15 = sub_20CD83128(0, &qword_27C812458, 0x277CCABB0);
  v36 = sub_20CE13AB4();

  if (v36 >> 62)
  {
LABEL_79:
    v37 = sub_20CE141C4();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v37 * 3) >> 64 != (3 * v37) >> 63)
  {
    __break(1u);
LABEL_81:
    v66 = sub_20CE141C4();
    if (!v66)
    {
      goto LABEL_82;
    }

LABEL_69:
    v94 = MEMORY[0x277D84F90];
    result = sub_20CDB46B0(0, v66 & ~(v66 >> 63), 0);
    if ((v66 & 0x8000000000000000) == 0)
    {
      v67 = 0;
      v68 = v94;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x20F313610](v67, v22);
        }

        else
        {
          v69 = *(v22 + 8 * v67 + 32);
        }

        v70 = v69;
        [v69 doubleValue];
        v72 = v71;

        v94 = v68;
        v74 = *(v68 + 16);
        v73 = *(v68 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_20CDB46B0((v73 > 1), v74 + 1, 1);
          v68 = v94;
        }

        ++v67;
        *(v68 + 16) = v74 + 1;
        *(v68 + 8 * v74 + 32) = v72;
      }

      while (v66 != v67);

      goto LABEL_83;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v24 != 3 * v37)
  {
    goto LABEL_32;
  }

  v38 = *(v22 + 16);
  if (v38)
  {
    v84 = v15;
    v39 = 0;
    v40 = 0;
    v41 = v22 + 32;
    v42 = MEMORY[0x277D84F90];
    do
    {
      if (!(v39 + 3 * (v40 / 3)))
      {
        v46 = *(v41 + 8 * v40);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v42;
        if ((v47 & 1) == 0)
        {
          sub_20CDB46D0(0, *(v42 + 16) + 1, 1);
          v42 = v94;
        }

        v44 = *(v42 + 16);
        v43 = *(v42 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_20CDB46D0((v43 > 1), v44 + 1, 1);
          v42 = v94;
        }

        *(v42 + 16) = v44 + 1;
        v45 = v42 + 16 * v44;
        *(v45 + 32) = v40;
        *(v45 + 40) = v46;
      }

      ++v40;
      --v39;
    }

    while (v38 != v40);
    v87 = v42;
    v48 = 0;
    v49 = MEMORY[0x277D84F90];
    v50 = 1;
    do
    {
      if (!(v50 + 3 * (v48 / 3)))
      {
        v54 = *(v41 + 8 * v48);
        v55 = v49;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v49 = v55;
        v94 = v55;
        if ((v56 & 1) == 0)
        {
          sub_20CDB46D0(0, *(v55 + 16) + 1, 1);
          v49 = v94;
        }

        v52 = *(v49 + 16);
        v51 = *(v49 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_20CDB46D0((v51 > 1), v52 + 1, 1);
          v49 = v94;
        }

        *(v49 + 16) = v52 + 1;
        v53 = v49 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v54;
      }

      ++v48;
      --v50;
    }

    while (v38 != v48);
    v85 = v22;
    v57 = 0;
    v24 = MEMORY[0x277D84F90];
    v58 = 2;
    do
    {
      if (!(v58 + 3 * (v57 / 3)))
      {
        v62 = v49;
        v63 = *(v41 + 8 * v57);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v24;
        if ((v64 & 1) == 0)
        {
          sub_20CDB46D0(0, *(v24 + 16) + 1, 1);
          v24 = v94;
        }

        v60 = *(v24 + 16);
        v59 = *(v24 + 24);
        v49 = v62;
        if (v60 >= v59 >> 1)
        {
          sub_20CDB46D0((v59 > 1), v60 + 1, 1);
          v49 = v62;
          v24 = v94;
        }

        *(v24 + 16) = v60 + 1;
        v61 = v24 + 16 * v60;
        *(v61 + 32) = v57;
        *(v61 + 40) = v63;
      }

      ++v57;
      --v58;
    }

    while (v38 != v57);
    v86 = v49;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    v86 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
  }

  v65 = _HKAudiogramStandardFrequencies();
  v22 = sub_20CE13AB4();

  if (v22 >> 62)
  {
    goto LABEL_81;
  }

  v66 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v66)
  {
    goto LABEL_69;
  }

LABEL_82:

  v68 = MEMORY[0x277D84F90];
LABEL_83:
  v75 = *(v68 + 16);
  v76 = v91;
  if (v75)
  {
    v94 = MEMORY[0x277D84F90];
    result = sub_20CDB4670(0, v75, 0);
    v77 = 0;
    v78 = *(v68 + 16);
    v84 = v68 + 32;
    v85 = v78;
    v34 = v94;
    v79 = (v83 + 16);
    v83 = v92 + 32;
    v80 = 40;
    while (v85 != v77)
    {
      if (v77 >= *(v68 + 16))
      {
        goto LABEL_96;
      }

      if (v77 >= *(v87 + 16))
      {
        goto LABEL_97;
      }

      result = (*v79)(v93, v90, v89);
      if (v77 >= *(v86 + 16))
      {
        goto LABEL_98;
      }

      if (v77 >= *(v24 + 16))
      {
        goto LABEL_99;
      }

      sub_20CE12824();
      v94 = v34;
      v82 = *(v34 + 16);
      v81 = *(v34 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_20CDB4670((v81 > 1), v82 + 1, 1);
        v34 = v94;
      }

      ++v77;
      *(v34 + 16) = v82 + 1;
      result = (*(v92 + 32))(v34 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v82, v76, v88);
      v80 += 16;
      if (v75 == v77)
      {

        return v34;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20CE10080()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overriddenLeftSessionResultState.getter@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v4 = result;
    v5 = [result isAppleInternalInstall];

    if (v5 && (v6 = sub_20CE13914(), v7 = [v1 hk:v6 keyExists:?], v6, v7))
    {
      v8 = sub_20CE13914();
      v9 = [v1 integerForKey_];

      return sub_20CD7D814(v9, a1);
    }

    else
    {
      v10 = sub_20CE12644();
      v11 = *(*(v10 - 8) + 56);

      return v11(a1, 1, 1, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUserDefaults.overriddenRightSessionResultState.getter@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v4 = result;
    v5 = [result isAppleInternalInstall];

    if (v5 && (v6 = sub_20CE13914(), v7 = [v1 hk:v6 keyExists:?], v6, v7))
    {
      v8 = sub_20CE13914();
      v9 = [v1 integerForKey_];

      return sub_20CD7D814(v9, a1);
    }

    else
    {
      v10 = sub_20CE12644();
      v11 = *(*(v10 - 8) + 56);

      return v11(a1, 1, 1, v10);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *NSUserDefaults.overriddenHearingLossSensitivity(ear:)(uint64_t a1)
{
  if (!a1)
  {
    v2 = "RightEarInconclusiveOverrideKey";
    v4 = 0xD000000000000025;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v2 = "ssSensitivityOverride";
    v4 = 0xD000000000000026;
LABEL_5:
    v5 = [objc_opt_self() sharedBehavior];
    if (!v5)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v6 = v5;
    v7 = [v5 isAppleInternalInstall];

    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = sub_20CE13914();
    v9 = [v73 hk:v8 keyExists:?];

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    v10 = _HKAudiogramStandardFrequencies();
    sub_20CD83128(0, &qword_27C812458, 0x277CCABB0);
    v11 = sub_20CE13AB4();

    if (v11 >> 62)
    {
      v12 = sub_20CE141C4();
      v72 = v2;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v72 = v2;
      if (v12)
      {
LABEL_10:
        v71 = v4;
        v74 = MEMORY[0x277D84F90];
        sub_20CE14154();
        if (v12 < 0)
        {
LABEL_62:
          __break(1u);
LABEL_63:
          v2 = v11;
          v1 = v3;
          v51 = sub_20CE141C4();
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          __break(1u);
          goto LABEL_65;
        }

        v13 = objc_opt_self();
        v14 = objc_opt_self();
        v15 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x20F313610](v15, v11);
          }

          else
          {
            v16 = *(v11 + 8 * v15 + 32);
          }

          v17 = v16;
          ++v15;
          v18 = [v13 hertzUnit];
          [v17 doubleValue];
          v19 = [v14 quantityWithUnit:v18 doubleValue:?];

          sub_20CE14134();
          sub_20CE14164();
          sub_20CE14174();
          sub_20CE14144();
        }

        while (v12 != v15);

        v3 = v74;
LABEL_21:
        v22 = sub_20CE13914();
        v23 = [v73 arrayForKey_];

        v11 = v3 >> 62;
        if (v23)
        {
          v24 = sub_20CE13AB4();

          v25 = sub_20CE10F38(v24);

          if (v25)
          {
            v71 = v3 >> 62;
            v27 = *(v25 + 16);
            if (!v27)
            {
              *&v73 = MEMORY[0x277D84F90];
              goto LABEL_60;
            }

            v28 = 0;
            v29 = v25 + 40;
            v68 = v27 - 1;
            *&v73 = MEMORY[0x277D84F90];
            v69 = v25 + 40;
            v70 = v3;
            while (1)
            {
              v30 = (v29 + 16 * v28);
              v31 = v28;
              while (1)
              {
                if (v31 >= *(v25 + 16))
                {
                  __break(1u);
                  goto LABEL_62;
                }

                v11 = &v67;
                v33 = *(v30 - 1);
                v32 = *v30;
                v77 = 0;
                MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
                v3 = &v64;
                v65 = &v77;
                if ((v32 & 0x1000000000000000) == 0)
                {
                  if ((v32 & 0x2000000000000000) != 0)
                  {
                    v74 = v33;
                    v75 = v32 & 0xFFFFFFFFFFFFFFLL;

                    if (v33 >= 0x21u || ((0x100003E01uLL >> v33) & 1) == 0)
                    {
                      v35 = _swift_stdlib_strtod_clocale();
                      if (v35)
                      {
LABEL_37:
                        v76 = *v35 == 0;
                        goto LABEL_39;
                      }
                    }

                    goto LABEL_38;
                  }

                  if ((v33 & 0x1000000000000000) != 0)
                  {
                    v34 = *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                    if (v34 >= 0x21 || ((0x100003E01uLL >> v34) & 1) == 0)
                    {
                      v35 = _swift_stdlib_strtod_clocale();
                      if (v35)
                      {
                        goto LABEL_37;
                      }
                    }

LABEL_38:
                    v76 = 0;
                    goto LABEL_39;
                  }
                }

                sub_20CE140D4();
LABEL_39:

                if (v76)
                {
                  break;
                }

                ++v31;
                v30 += 2;
                if (v27 == v31)
                {
                  v3 = v70;
                  goto LABEL_60;
                }
              }

              v36 = v77;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_20CD895D4(0, *(v73 + 16) + 1, 1, v73);
                *&v73 = isUniquelyReferenced_nonNull_native;
              }

              v3 = v70;
              v11 = *(v73 + 16);
              v37 = *(v73 + 24);
              if (v11 >= v37 >> 1)
              {
                isUniquelyReferenced_nonNull_native = sub_20CD895D4((v37 > 1), v11 + 1, 1, v73);
                *&v73 = isUniquelyReferenced_nonNull_native;
              }

              v28 = v31 + 1;
              v38 = v73;
              *(v73 + 16) = v11 + 1;
              *(v38 + 8 * v11 + 32) = v36;
              v29 = v69;
              if (v68 == v31)
              {
LABEL_60:

                v43 = v73;
                v11 = v71;
                goto LABEL_69;
              }
            }
          }
        }

        v39 = sub_20CE13914();

        [v73 doubleForKey_];
        v73 = v40;

        if (!v11)
        {
          v41 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v41)
          {
            goto LABEL_51;
          }

LABEL_68:
          v43 = MEMORY[0x277D84F90];
          goto LABEL_69;
        }

        goto LABEL_63;
      }
    }

    v3 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_66:
  v66 = 0;
  v65 = 134;
  v51 = sub_20CE141B4();
  __break(1u);
LABEL_67:
  v41 = v51;
  v3 = v1;
  v11 = v2;
  if (!v51)
  {
    goto LABEL_68;
  }

LABEL_51:
  v42 = sub_20CE13AE4();
  v43 = v42;
  *(v42 + 16) = v41;
  v44 = (v42 + 32);
  if (v41 < 4)
  {
    v45 = 0;
    v46 = v73;
LABEL_56:
    v50 = v41 - v45;
    do
    {
      *v44++ = v46;
      --v50;
    }

    while (v50);
    goto LABEL_69;
  }

  v45 = v41 & 0x7FFFFFFFFFFFFFFCLL;
  v44 += v41 & 0x7FFFFFFFFFFFFFFCLL;
  v46 = v73;
  v47 = vdupq_lane_s64(v73, 0);
  v48 = (v42 + 48);
  v49 = v41 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v48[-1] = v47;
    *v48 = v47;
    v48 += 2;
    v49 -= 4;
  }

  while (v49);
  if (v41 != v45)
  {
    goto LABEL_56;
  }

LABEL_69:
  v52 = *(v43 + 16);
  if (v11)
  {
    goto LABEL_87;
  }

  if (v52 != *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:

LABEL_16:

    return 0;
  }

  if (!v52)
  {
LABEL_89:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v74 = MEMORY[0x277D84F90];
    result = sub_20CDB4630(0, v52 & ~(v52 >> 63), 0);
    if (v52 < 0)
    {
      break;
    }

    v20 = v74;
    if (v11)
    {
      v53 = sub_20CE141C4();
    }

    else
    {
      v53 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v73 = objc_opt_self();
    result = objc_opt_self();
    v72 = result;
    if (v52 > *(v43 + 16))
    {
      goto LABEL_92;
    }

    v71 = v3 & 0xC000000000000001;
    v54 = 4;
    v55 = v53 & ~(v53 >> 63);
    v56 = v3;
    while (v55)
    {
      if (v71)
      {
        v57 = MEMORY[0x20F313610](v54 - 4, v3);
      }

      else
      {
        v57 = *(v3 + 8 * v54);
      }

      v58 = v57;
      v59 = [v73 decibelHearingLevelUnit];
      v11 = v43;
      v60 = [v72 quantityWithUnit:v59 doubleValue:*(v43 + 8 * v54)];

      v74 = v20;
      v62 = v20[2];
      v61 = v20[3];
      if (v62 >= v61 >> 1)
      {
        sub_20CDB4630((v61 > 1), v62 + 1, 1);
        v20 = v74;
      }

      v20[2] = v62 + 1;
      v63 = &v20[2 * v62];
      v63[4] = v58;
      v63[5] = v60;
      --v55;
      ++v54;
      --v52;
      v3 = v56;
      v43 = v11;
      if (!v52)
      {

        return v20;
      }
    }

    __break(1u);
LABEL_87:
    if (v52 != sub_20CE141C4())
    {
      goto LABEL_90;
    }

    v52 = sub_20CE141C4();
    if (!v52)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

unint64_t HearingTestUIUserDefaultsKey.rawValue.getter()
{
  result = 0x65746E4965646948;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 0xA:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD000000000000025;
      break;
    case 8:
    case 0x10:
      result = 0xD000000000000026;
      break;
    case 0xB:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xD:
    case 0x17:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 0xD00000000000001CLL;
      break;
    case 0x11:
      result = 0xD000000000000020;
      break;
    case 0x12:
      result = 0xD000000000000022;
      break;
    case 0x13:
      result = 0xD000000000000028;
      break;
    case 0x14:
      result = 0xD000000000000019;
      break;
    case 0x15:
      result = 0xD000000000000015;
      break;
    case 0x16:
      return result;
    default:
      result = 0xD000000000000024;
      break;
  }

  return result;
}

uint64_t sub_20CE10F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_20CDB4650(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_20CD8A98C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20CDB4650((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_20CE1104C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_20CDB4730(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_20CD8A98C(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20CDB4730((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

HearingTestUI::HearingTestUIUserDefaultsKey_optional __swiftcall HearingTestUIUserDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20CE14294();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20CE1129C()
{
  v0 = HearingTestUIUserDefaultsKey.rawValue.getter();
  v2 = v1;
  if (v0 == HearingTestUIUserDefaultsKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20CE14284();
  }

  return v5 & 1;
}

uint64_t sub_20CE11338()
{
  sub_20CE14384();
  HearingTestUIUserDefaultsKey.rawValue.getter();
  sub_20CE139C4();

  return sub_20CE143B4();
}

uint64_t sub_20CE113A0(uint64_t a1)
{
  HearingTestUIUserDefaultsKey.rawValue.getter();
  sub_20CE139C4();
}

uint64_t sub_20CE11404(uint64_t a1)
{
  sub_20CE14384();
  HearingTestUIUserDefaultsKey.rawValue.getter();
  sub_20CE139C4();

  return sub_20CE143B4();
}

unint64_t sub_20CE11474@<X0>(unint64_t *a1@<X8>)
{
  result = HearingTestUIUserDefaultsKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20CE114AC(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (*(a4 + 16) <= a1)
  {
    goto LABEL_11;
  }

  v6 = *(a4 + 16 * a1 + 40);
  sub_20CD98B04();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16F10;
  v8 = objc_allocWithZone(MEMORY[0x277CCD050]);
  v24[0] = 0;
  v9 = a3;
  v10 = a2;
  v11 = v6;
  v12 = [v8 initWithSensitivity:v9 type:0 masked:0 side:0 clampingRange:0 error:v24];
  if (!v12)
  {
    v21 = v24[0];

    sub_20CE12394();
    swift_willThrow();

LABEL_8:
    *(v7 + 16) = 0;

    return v7;
  }

  v13 = v12;
  v14 = v24[0];

  *(v7 + 32) = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCD050]);
  v24[0] = 0;
  v16 = v11;
  v17 = [v15 initWithSensitivity:v16 type:0 masked:0 side:1 clampingRange:0 error:v24];
  v18 = v24[0];
  if (!v17)
  {
    v22 = v24[0];

    sub_20CE12394();
    swift_willThrow();

    v10 = *(v7 + 32);
    goto LABEL_8;
  }

  v19 = v17;
  sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
  v20 = v18;

  *(v7 + 40) = v19;
  v7 = sub_20CE11808(v10, v7);

  return v7;
}

id sub_20CE116F8()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result isAppleInternalInstall];

    if (v3 && (v4 = sub_20CE13914(), v5 = [v0 hk:v4 keyExists:?], v4, v5))
    {
      v6 = sub_20CE13914();
      v7 = [v0 BOOLForKey_];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20CE11808(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  sub_20CD83128(0, &qword_27C812338, 0x277CCD050);
  v3 = sub_20CE13AA4();

  v8[0] = 0;
  v4 = [swift_getObjCClassFromMetadata() sensitivityPointWithFrequency:a1 tests:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_20CE12394();

    swift_willThrow();
  }

  return v4;
}

void sub_20CE11910()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (!v0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v1 = v0;
  v2 = [v0 isAppleInternalInstall];

  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v4 = sub_20CE13914();
    v5 = [v3 initWithSuiteName_];

    if (v5)
    {
      sub_20CE116F8();

      return;
    }

    goto LABEL_7;
  }
}

void _sSo14NSUserDefaultsC13HearingTestUIE19overriddenAudiogram6device8metadataSo17HKAudiogramSampleCSgSo8HKDeviceCSg_SDySSypGSgtF_0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_20CE124E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_20CE13914();
  v10 = [v8 initWithSuiteName_];

  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = NSUserDefaults.overriddenHearingLossSensitivity(ear:)(0);
  if (!v11)
  {
LABEL_15:

    return;
  }

  v12 = v11;
  v13 = NSUserDefaults.overriddenHearingLossSensitivity(ear:)(1);
  if (!v13)
  {

    goto LABEL_15;
  }

  v14 = v13;
  v44 = v7;
  v15 = *(v12 + 2);
  if (v15 == *(v13 + 2))
  {
    if (v15)
    {
      v39 = ObjectType;
      v40 = v5;
      v41 = v2;
      v42 = v1;
      v43 = v10;
      v45 = MEMORY[0x277D84F90];
      sub_20CE14154();
      v16 = 0;
      if (*(v12 + 2) >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = *(v12 + 2);
      }

      v18 = (v12 + 40);
      while (v17 != v16)
      {
        if (v16 >= *(v12 + 2))
        {
          goto LABEL_23;
        }

        v19 = *v18;
        v20 = *(v18 - 1);
        v21 = v19;
        sub_20CE114AC(v16++, v20, v21, v14);

        sub_20CE14134();
        sub_20CE14164();
        sub_20CE14174();
        sub_20CE14144();
        v18 += 2;
        if (v15 == v16)
        {

          v1 = v42;
          v10 = v43;
          v5 = v40;
          v2 = v41;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      swift_once();
      v27 = sub_20CE12CB4();
      __swift_project_value_buffer(v27, qword_27C817768);
      v28 = 0;
      v29 = sub_20CE12C94();
      v30 = sub_20CE13CB4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v45 = v32;
        *v31 = 136446466;
        v33 = sub_20CE14414();
        v35 = sub_20CD96DCC(v33, v34, &v45);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2080;
        swift_getErrorValue();
        v36 = sub_20CE14324();
        v38 = sub_20CD96DCC(v36, v37, &v45);

        *(v31 + 14) = v38;
        _os_log_impl(&dword_20CD70000, v29, v30, "[%{public}s] Could not create HKAudiogramSample from values in the UserDefaults. Error: %s.", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v32, -1, -1);
        MEMORY[0x20F314110](v31, -1, -1);
      }

      else
      {
      }
    }

    else
    {

LABEL_18:
      v22 = v44;
      sub_20CE124C4();
      sub_20CE124C4();
      sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
      v23 = sub_20CE13AA4();

      v24 = sub_20CE124A4();
      v25 = sub_20CE124A4();
      [objc_opt_self() audiogramSampleWithSensitivityPoints:v23 startDate:v24 endDate:v25 device:0 metadata:0];

      v26 = *(v2 + 8);
      v26(v5, v1);
      v26(v22, v1);
    }
  }

  else
  {
  }
}

_BYTE *sub_20CE11F20@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_20CE11FA4()
{
  result = qword_27C813900;
  if (!qword_27C813900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813900);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HearingTestUIUserDefaultsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HearingTestUIUserDefaultsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}