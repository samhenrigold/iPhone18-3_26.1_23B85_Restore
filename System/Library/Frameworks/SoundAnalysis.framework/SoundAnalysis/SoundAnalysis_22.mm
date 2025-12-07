unint64_t sub_1C996D600()
{
  result = qword_1EC3CDFD8;
  if (!qword_1EC3CDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDFD8);
  }

  return result;
}

unint64_t sub_1C996D654()
{
  result = qword_1EC3CDFE0;
  if (!qword_1EC3CDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDFE0);
  }

  return result;
}

unint64_t sub_1C996D6A8()
{
  result = qword_1EC3CDFE8;
  if (!qword_1EC3CDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CDFE8);
  }

  return result;
}

unint64_t sub_1C996D748()
{
  result = qword_1EC3CE020;
  if (!qword_1EC3CE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE020);
  }

  return result;
}

unint64_t sub_1C996D79C()
{
  result = qword_1EC3CE028;
  if (!qword_1EC3CE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE028);
  }

  return result;
}

unint64_t sub_1C996D7F0()
{
  result = qword_1EC3CE038;
  if (!qword_1EC3CE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE038);
  }

  return result;
}

uint64_t sub_1C996D864(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C996D8BC()
{
  sub_1C98AE1E8();
  v2(0);
  sub_1C97DA940();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C996D918()
{
  sub_1C98AE1E8();
  v2(0);
  sub_1C97DA940();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C996D974()
{
  sub_1C97AA95C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  sub_1C97DACE4(v6);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  swift_task_alloc();
  sub_1C97DA928();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C97D9C3C;

  return sub_1C996AC2C(v5, v3, v0 + v8);
}

void sub_1C996DA4C()
{
  v0 = sub_1C97A2CEC(&qword_1EC3CC308, &qword_1C9AB2688);
  sub_1C97DACE4(v0);

  sub_1C98F98D0();
}

unint64_t sub_1C996DB0C()
{
  result = qword_1EC3CE078;
  if (!qword_1EC3CE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE078);
  }

  return result;
}

unint64_t sub_1C996DBAC()
{
  result = qword_1EC3CE088;
  if (!qword_1EC3CE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE088);
  }

  return result;
}

unint64_t sub_1C996DC04()
{
  result = qword_1EC3CE090;
  if (!qword_1EC3CE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE090);
  }

  return result;
}

unint64_t sub_1C996DC58(uint64_t a1)
{
  result = sub_1C98DDEC4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C996DC80(uint64_t a1)
{
  result = sub_1C98DDE70();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C996DCC8(uint64_t a1)
{
  result = sub_1C9A91748();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C996DD90(uint64_t a1)
{
  sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    sub_1C996DE14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C996DE14(uint64_t a1)
{
  if (!qword_1EC3CE0C8)
  {
    sub_1C97AA4F0(&unk_1EC3CA040, &qword_1C9A9C750);
    v1 = sub_1C9A91DA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC3CE0C8);
    }
  }
}

uint64_t sub_1C996DEBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 >= 0xFF && *(a1 + 209))
  {
    return sub_1C97BE3EC(*a1 + 254);
  }

  v3 = *(a1 + 208);
  if (v3 > 1)
  {
    return sub_1C97BE3EC(v3 ^ 0xFF);
  }

  else
  {
    return sub_1C97BE3EC(-1);
  }
}

uint64_t sub_1C996DEF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
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
    *(result + 208) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 208) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C996DF98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1C996DFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
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
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C996E064(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1C996E0A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_1C996E184(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          result = sub_1C97BE280(result, a2 + 16);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C996E370()
{
  result = qword_1EC3CE0D8;
  if (!qword_1EC3CE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0D8);
  }

  return result;
}

unint64_t sub_1C996E3C8()
{
  result = qword_1EC3CE0E0;
  if (!qword_1EC3CE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0E0);
  }

  return result;
}

unint64_t sub_1C996E420()
{
  result = qword_1EC3CE0E8;
  if (!qword_1EC3CE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0E8);
  }

  return result;
}

unint64_t sub_1C996E478()
{
  result = qword_1EC3CE0F0;
  if (!qword_1EC3CE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0F0);
  }

  return result;
}

unint64_t sub_1C996E4D0()
{
  result = qword_1EC3CE0F8;
  if (!qword_1EC3CE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE0F8);
  }

  return result;
}

unint64_t sub_1C996E524(uint64_t a1)
{
  result = sub_1C98DDCC8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C996E54C(uint64_t a1)
{
  result = sub_1C98DDC18();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C996E578()
{
  result = qword_1EC3CE100;
  if (!qword_1EC3CE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE100);
  }

  return result;
}

unint64_t sub_1C996E5D0()
{
  result = qword_1EC3CE108;
  if (!qword_1EC3CE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE108);
  }

  return result;
}

unint64_t sub_1C996E628()
{
  result = qword_1EC3CE110;
  if (!qword_1EC3CE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE110);
  }

  return result;
}

uint64_t sub_1C996E67C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C996E6C4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C996E704()
{
  result = qword_1EC3CE120;
  if (!qword_1EC3CE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE120);
  }

  return result;
}

unint64_t sub_1C996E75C()
{
  result = qword_1EC3CE128;
  if (!qword_1EC3CE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE128);
  }

  return result;
}

unint64_t sub_1C996E7B4()
{
  result = qword_1EC3CE130;
  if (!qword_1EC3CE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE130);
  }

  return result;
}

unint64_t sub_1C996E80C()
{
  result = qword_1EC3CE138;
  if (!qword_1EC3CE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE138);
  }

  return result;
}

unint64_t sub_1C996E864()
{
  result = qword_1EC3CE140;
  if (!qword_1EC3CE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE140);
  }

  return result;
}

unint64_t sub_1C996E8BC()
{
  result = qword_1EC3CE148;
  if (!qword_1EC3CE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE148);
  }

  return result;
}

unint64_t sub_1C996E914()
{
  result = qword_1EC3CE150;
  if (!qword_1EC3CE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE150);
  }

  return result;
}

unint64_t sub_1C996E96C()
{
  result = qword_1EC3CE158;
  if (!qword_1EC3CE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE158);
  }

  return result;
}

unint64_t sub_1C996E9C4()
{
  result = qword_1EC3CE160;
  if (!qword_1EC3CE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE160);
  }

  return result;
}

unint64_t sub_1C996EA1C()
{
  result = qword_1EC3CE168;
  if (!qword_1EC3CE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE168);
  }

  return result;
}

unint64_t sub_1C996EA74()
{
  result = qword_1EC3CE170;
  if (!qword_1EC3CE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE170);
  }

  return result;
}

unint64_t sub_1C996EACC()
{
  result = qword_1EC3CE178;
  if (!qword_1EC3CE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE178);
  }

  return result;
}

unint64_t sub_1C996EB24()
{
  result = qword_1EC3CE180;
  if (!qword_1EC3CE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE180);
  }

  return result;
}

unint64_t sub_1C996EB7C()
{
  result = qword_1EC3CE188;
  if (!qword_1EC3CE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE188);
  }

  return result;
}

unint64_t sub_1C996EBD4()
{
  result = qword_1EC3CE190;
  if (!qword_1EC3CE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE190);
  }

  return result;
}

unint64_t sub_1C996EC2C()
{
  result = qword_1EC3CE198;
  if (!qword_1EC3CE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE198);
  }

  return result;
}

unint64_t sub_1C996EC84()
{
  result = qword_1EC3CE1A0;
  if (!qword_1EC3CE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1A0);
  }

  return result;
}

unint64_t sub_1C996ECDC()
{
  result = qword_1EC3CE1A8;
  if (!qword_1EC3CE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1A8);
  }

  return result;
}

unint64_t sub_1C996ED34()
{
  result = qword_1EC3CE1B0;
  if (!qword_1EC3CE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1B0);
  }

  return result;
}

unint64_t sub_1C996ED8C()
{
  result = qword_1EC3CE1B8;
  if (!qword_1EC3CE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1B8);
  }

  return result;
}

unint64_t sub_1C996EDE4()
{
  result = qword_1EC3CE1C0;
  if (!qword_1EC3CE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1C0);
  }

  return result;
}

unint64_t sub_1C996EE3C()
{
  result = qword_1EC3CE1C8;
  if (!qword_1EC3CE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1C8);
  }

  return result;
}

unint64_t sub_1C996EE94()
{
  result = qword_1EC3CE1D0;
  if (!qword_1EC3CE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1D0);
  }

  return result;
}

unint64_t sub_1C996EEEC()
{
  result = qword_1EC3CE1D8;
  if (!qword_1EC3CE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1D8);
  }

  return result;
}

unint64_t sub_1C996EF44()
{
  result = qword_1EC3CE1E0;
  if (!qword_1EC3CE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1E0);
  }

  return result;
}

unint64_t sub_1C996EF9C()
{
  result = qword_1EC3CE1E8;
  if (!qword_1EC3CE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1E8);
  }

  return result;
}

unint64_t sub_1C996EFF4()
{
  result = qword_1EC3CE1F0;
  if (!qword_1EC3CE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1F0);
  }

  return result;
}

unint64_t sub_1C996F04C()
{
  result = qword_1EC3CE1F8;
  if (!qword_1EC3CE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE1F8);
  }

  return result;
}

unint64_t sub_1C996F0A4()
{
  result = qword_1EC3CE200;
  if (!qword_1EC3CE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE200);
  }

  return result;
}

unint64_t sub_1C996F0FC()
{
  result = qword_1EC3CE208;
  if (!qword_1EC3CE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE208);
  }

  return result;
}

unint64_t sub_1C996F154()
{
  result = qword_1EC3CE210;
  if (!qword_1EC3CE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE210);
  }

  return result;
}

unint64_t sub_1C996F1AC()
{
  result = qword_1EC3CE218;
  if (!qword_1EC3CE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE218);
  }

  return result;
}

unint64_t sub_1C996F204()
{
  result = qword_1EC3CE220;
  if (!qword_1EC3CE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE220);
  }

  return result;
}

unint64_t sub_1C996F25C()
{
  result = qword_1EC3CE228;
  if (!qword_1EC3CE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE228);
  }

  return result;
}

unint64_t sub_1C996F2B4()
{
  result = qword_1EC3CE230;
  if (!qword_1EC3CE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE230);
  }

  return result;
}

unint64_t sub_1C996F30C()
{
  result = qword_1EC3CE238;
  if (!qword_1EC3CE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE238);
  }

  return result;
}

unint64_t sub_1C996F364()
{
  result = qword_1EC3CE240;
  if (!qword_1EC3CE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE240);
  }

  return result;
}

unint64_t sub_1C996F3BC()
{
  result = qword_1EC3CE248;
  if (!qword_1EC3CE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE248);
  }

  return result;
}

unint64_t sub_1C996F414()
{
  result = qword_1EC3CE250;
  if (!qword_1EC3CE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE250);
  }

  return result;
}

unint64_t sub_1C996F46C()
{
  result = qword_1EC3CE258;
  if (!qword_1EC3CE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE258);
  }

  return result;
}

unint64_t sub_1C996F4C4()
{
  result = qword_1EC3CE260;
  if (!qword_1EC3CE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE260);
  }

  return result;
}

unint64_t sub_1C996F51C()
{
  result = qword_1EC3CE268;
  if (!qword_1EC3CE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE268);
  }

  return result;
}

unint64_t sub_1C996F574()
{
  result = qword_1EC3CE270;
  if (!qword_1EC3CE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE270);
  }

  return result;
}

unint64_t sub_1C996F5CC()
{
  result = qword_1EC3CE278;
  if (!qword_1EC3CE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE278);
  }

  return result;
}

unint64_t sub_1C996F624()
{
  result = qword_1EC3CE280;
  if (!qword_1EC3CE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE280);
  }

  return result;
}

unint64_t sub_1C996F67C()
{
  result = qword_1EC3CE288;
  if (!qword_1EC3CE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE288);
  }

  return result;
}

unint64_t sub_1C996F6D4()
{
  result = qword_1EC3CE290;
  if (!qword_1EC3CE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE290);
  }

  return result;
}

unint64_t sub_1C996F72C()
{
  result = qword_1EC3CE298;
  if (!qword_1EC3CE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE298);
  }

  return result;
}

unint64_t sub_1C996F784()
{
  result = qword_1EC3CE2A0;
  if (!qword_1EC3CE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE2A0);
  }

  return result;
}

unint64_t sub_1C996F7DC()
{
  result = qword_1EC3CE2A8;
  if (!qword_1EC3CE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE2A8);
  }

  return result;
}

unint64_t sub_1C996F830()
{
  result = qword_1EC3CE2C8;
  if (!qword_1EC3CE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE2C8);
  }

  return result;
}

unint64_t sub_1C996F884()
{
  result = qword_1EC3CE2D0;
  if (!qword_1EC3CE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE2D0);
  }

  return result;
}

unint64_t sub_1C996F8D8()
{
  result = qword_1EC3CE2D8;
  if (!qword_1EC3CE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE2D8);
  }

  return result;
}

uint64_t sub_1C996F92C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98BFEEC();
  *a1 = result;
  return result;
}

uint64_t sub_1C996F958@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  result = sub_1C996C790(v3 | *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C996F99C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  result = sub_1C996C6CC(*a1, a2, a3, a4, a5, a6);
  *a7 = result & 1;
  a7[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1C996F9F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C0204();
  *a1 = result;
  return result;
}

void sub_1C996FA1C(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>)
{
  v6 = *a1;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v9[2] = *(a2 + 32);
  v10 = *(a2 + 48);
  sub_1C996C798(v6, v9, a4);
  if (!v4)
  {
    *a3 = v8;
  }
}

uint64_t sub_1C996FA70@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = *a1;
  v10 = *(a5 + 16);
  v12[0] = *a5;
  v12[1] = v10;
  v13 = *(a5 + 32);
  result = sub_1C9967FAC(v9, a2, a3, a4, v12, a6);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1C996FAC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C996C0B4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

char *sub_1C996FAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = *(a2 + 32);
  result = sub_1C9957AAC(a1, v8, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C996FBB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CB598, &qword_1C9AAF940);
  sub_1C97DACE4(v2);
  result = sub_1C98BFFF4();
  *a1 = result;
  return result;
}

void *sub_1C996FCDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C996C090();
  *a1 = result;
  return result;
}

uint64_t sub_1C996FD24(uint64_t result)
{
  if (result != 1)
  {
    return sub_1C996FD34(result);
  }

  return result;
}

uint64_t sub_1C996FD34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C996FE10()
{
  result = qword_1EC3CE5C8;
  if (!qword_1EC3CE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE5C8);
  }

  return result;
}

unint64_t sub_1C996FE74(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C996FEC4()
{
  result = qword_1EC3CE620;
  if (!qword_1EC3CE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE620);
  }

  return result;
}

unint64_t sub_1C996FF18()
{
  result = qword_1EC3CE628;
  if (!qword_1EC3CE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE628);
  }

  return result;
}

unint64_t sub_1C996FF6C()
{
  result = qword_1EC3CE630;
  if (!qword_1EC3CE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE630);
  }

  return result;
}

unint64_t sub_1C996FFC0()
{
  result = qword_1EC3CE640;
  if (!qword_1EC3CE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE640);
  }

  return result;
}

unint64_t sub_1C9970014()
{
  result = qword_1EC3CE648;
  if (!qword_1EC3CE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE648);
  }

  return result;
}

unint64_t sub_1C9970068()
{
  result = qword_1EC3CE650;
  if (!qword_1EC3CE650)
  {
    sub_1C97AA4F0(&unk_1EC3CE050, &qword_1C9ABA0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE650);
  }

  return result;
}

uint64_t sub_1C99700EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = *a1;
  v10 = a5[1];
  v13[0] = *a5;
  v13[1] = v10;
  v11 = a5[3];
  v13[2] = a5[2];
  v13[3] = v11;
  result = sub_1C9968470(v9, a2, a3, a4, v13, a6);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

char *sub_1C9970138@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = a2[3];
  v9[2] = a2[2];
  v9[3] = v7;
  result = sub_1C9957EF8(a1, v9, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C99701A0()
{

  sub_1C97DAA28();

  return swift_deallocObject();
}

_BYTE *storeEnumTagSinglePayload for AccessibilitySoundRecognition.CustomModelTensors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AccessibilitySoundRecognition.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C99703CC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99704AC()
{
  result = qword_1EC3CE670;
  if (!qword_1EC3CE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE670);
  }

  return result;
}

unint64_t sub_1C9970504()
{
  result = qword_1EC3CE678;
  if (!qword_1EC3CE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE678);
  }

  return result;
}

unint64_t sub_1C997055C()
{
  result = qword_1EC3CE680;
  if (!qword_1EC3CE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE680);
  }

  return result;
}

unint64_t sub_1C99705B4()
{
  result = qword_1EC3CE688;
  if (!qword_1EC3CE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE688);
  }

  return result;
}

unint64_t sub_1C997060C()
{
  result = qword_1EC3CE690;
  if (!qword_1EC3CE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE690);
  }

  return result;
}

unint64_t sub_1C9970664()
{
  result = qword_1EC3CE698;
  if (!qword_1EC3CE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE698);
  }

  return result;
}

unint64_t sub_1C99706BC()
{
  result = qword_1EC3CE6A0;
  if (!qword_1EC3CE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6A0);
  }

  return result;
}

unint64_t sub_1C9970714()
{
  result = qword_1EC3CE6A8;
  if (!qword_1EC3CE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6A8);
  }

  return result;
}

unint64_t sub_1C997076C()
{
  result = qword_1EC3CE6B0;
  if (!qword_1EC3CE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6B0);
  }

  return result;
}

unint64_t sub_1C99707C4()
{
  result = qword_1EC3CE6B8;
  if (!qword_1EC3CE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6B8);
  }

  return result;
}

unint64_t sub_1C997081C()
{
  result = qword_1EC3CE6C0;
  if (!qword_1EC3CE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6C0);
  }

  return result;
}

unint64_t sub_1C9970874()
{
  result = qword_1EC3CE6C8;
  if (!qword_1EC3CE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6C8);
  }

  return result;
}

unint64_t sub_1C99708CC()
{
  result = qword_1EC3CE6D0;
  if (!qword_1EC3CE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6D0);
  }

  return result;
}

unint64_t sub_1C9970924()
{
  result = qword_1EC3CE6D8;
  if (!qword_1EC3CE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6D8);
  }

  return result;
}

unint64_t sub_1C997097C()
{
  result = qword_1EC3CE6E0;
  if (!qword_1EC3CE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6E0);
  }

  return result;
}

unint64_t sub_1C99709D0()
{
  result = qword_1EC3CE6F0;
  if (!qword_1EC3CE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE6F0);
  }

  return result;
}

unint64_t sub_1C9970A24(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3 = sub_1C97AA4F0(&qword_1EC3C9AA0, &qword_1C9AA0690);
    result = sub_1C97FB3F0(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9970A7C()
{
  result = qword_1EC3CE710;
  if (!qword_1EC3CE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE710);
  }

  return result;
}

unint64_t sub_1C9970AD0(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v3 = sub_1C97AA4F0(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
    result = sub_1C97FB3F0(v3);
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessibilitySoundRecognition.WeightsAndBiasTensors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C9970C04(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9970CE0()
{
  result = qword_1EC3CE738;
  if (!qword_1EC3CE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE738);
  }

  return result;
}

unint64_t sub_1C9970D38()
{
  result = qword_1EC3CE740;
  if (!qword_1EC3CE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE740);
  }

  return result;
}

unint64_t sub_1C9970D90()
{
  result = qword_1EC3CE748;
  if (!qword_1EC3CE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE748);
  }

  return result;
}

unint64_t sub_1C9970DE8()
{
  result = qword_1EC3CE750;
  if (!qword_1EC3CE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE750);
  }

  return result;
}

unint64_t sub_1C9970E40()
{
  result = qword_1EC3CE758;
  if (!qword_1EC3CE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE758);
  }

  return result;
}

unint64_t sub_1C9970E98()
{
  result = qword_1EC3CE760;
  if (!qword_1EC3CE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE760);
  }

  return result;
}

uint64_t sub_1C9970FF0(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C9971028(uint64_t a1)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C9971054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C9A93A18();
}

uint64_t sub_1C997108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C99710E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

unint64_t sub_1C9971134(uint64_t a1)
{

  return sub_1C996FE74(a1);
}

unint64_t sub_1C9971158(uint64_t a1)
{

  return sub_1C996FE74(a1);
}

uint64_t sub_1C99711A0()
{

  return sub_1C98ACCA8();
}

uint64_t sub_1C99711C8()
{

  return sub_1C98ACCA8();
}

uint64_t sub_1C99711E4(uint64_t a1)
{

  return sub_1C9A93A18();
}

uint64_t sub_1C9971270()
{

  return sub_1C996D864(v0, type metadata accessor for AccessibilitySoundRecognition.Session);
}

uint64_t sub_1C9971298()
{

  return sub_1C996D864(v0, type metadata accessor for RemoteRequest);
}

unint64_t sub_1C99712C0(uint64_t a1)
{

  return sub_1C996FE74(a1);
}

unint64_t sub_1C997133C(uint64_t a1)
{

  return sub_1C996FE74(a1);
}

uint64_t sub_1C99713A4(uint64_t a1)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C99713D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C99713F4()
{
  *(v0 - 296) = 0;
  *(v0 - 288) = 0xE000000000000000;

  return sub_1C9A935B8();
}

uint64_t sub_1C997142C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return sub_1C98B9418(a1, a2, 0xE900000000000064, v3, a3);
}

uint64_t sub_1C9971464(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_1C99714DC()
{

  return sub_1C9807FAC(v0, v1);
}

void sub_1C99714F4()
{

  JUMPOUT(0x1CCA90230);
}

void *sub_1C9971510(void *a1)
{

  return memcpy(a1, v1, 0xD1uLL);
}

void sub_1C9971648(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

uint64_t sub_1C9971668()
{

  return swift_slowAlloc();
}

void sub_1C9971688(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v4, a3, a2, v3, 0x16u);
}

uint64_t sub_1C99716A8(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C99716C8()
{

  return swift_slowAlloc();
}

uint64_t sub_1C99716F8(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    acousticID = MobileGestalt_get_acousticID();

    if ((acousticID - 8016) >= 4 && (acousticID - 2021) >= 2 && (acousticID - 12002) > 1)
    {
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v4 = sub_1C9A91B58();
      sub_1C97BFF6C(v4, qword_1EC3D3108);
      v5 = sub_1C9A91B38();
      v6 = sub_1C9A92FA8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 67109120;
        *(v7 + 4) = acousticID;
        _os_log_impl(&dword_1C9788000, v5, v6, "Acoustic ID %d unknown. Defaulting to 1-channel @ 16kHz", v7, 8u);
        MEMORY[0x1CCA93280](v7, -1, -1);
      }
    }

    return 1024;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *AudioConfiguration.init(category:mode:options:channelMap:useSiriAudioRouting:prefersNoMicrophoneUsageIndicator:prefersNoInterruptions:allowHapticsAndSystemSoundsDuringRecording:preferDecoupledIO:smartRoutingConsideration:audioHWControlFlags:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t *a12)
{
  v12 = result[1];
  v13 = *a2;
  v14 = a2[1];
  v15 = *a3;
  v16 = *a12;
  v17 = *(a12 + 8);
  *a9 = *result;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  *(a9 + 24) = v14;
  *(a9 + 32) = v15;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 49) = a6;
  *(a9 + 50) = a7;
  *(a9 + 51) = a8;
  *(a9 + 52) = a10;
  *(a9 + 53) = a11;
  *(a9 + 56) = v16;
  *(a9 + 64) = v17;
  return result;
}

uint64_t AudioSessionAudioHardwareControlFlags.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C99718E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819307369 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C9971974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99718E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99719A0(uint64_t a1)
{
  v2 = sub_1C99744E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99719DC(uint64_t a1)
{
  v2 = sub_1C99744E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioSessionAudioHardwareControlFlags.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1C97A2CEC(&qword_1EC3CE770, &qword_1C9ABCD20);
  sub_1C97AE9C8();
  v27 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  sub_1C97A5A8C(v24, v24[3]);
  sub_1C99744E0();
  sub_1C9A93DD8();
  a10 = v31;
  sub_1C97A2CEC(&qword_1EC3CE780, &qword_1C9ABCD28);
  sub_1C9974534();
  sub_1C9A93A18();
  (*(v27 + 8))(v30, v25);
  sub_1C97AEB5C();
}

uint64_t AudioSessionAudioHardwareControlFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void AudioSessionAudioHardwareControlFlags.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C97A2CEC(&qword_1EC3CE790, &qword_1C9ABCD30);
  sub_1C97AE9C8();
  v29 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  sub_1C97A5A8C(v24, v24[3]);
  sub_1C99744E0();
  sub_1C9A93DB8();
  if (!v20)
  {
    sub_1C97A2CEC(&qword_1EC3CE780, &qword_1C9ABCD28);
    sub_1C99745B0();
    sub_1C9A938F8();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  sub_1C97A592C(v24);
  sub_1C97AEB5C();
}

uint64_t AudioConfiguration.category.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t AudioConfiguration.mode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t AudioConfiguration.channelMap.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

void AudioConfiguration.audioHWControlFlags.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t AudioConfiguration.audioHWControlFlags.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t static AudioConfiguration.create(category:mode:options:channelMap:useSiriAudioRouting:prefersNoMicrophoneUsageIndicator:prefersNoInterruptions:allowHapticsAndSystemSoundsDuringRecording:preferDecoupledIO:smartRoutingConsideration:audioHWControlFlags:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t *a12)
{
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  v15 = *a3;
  v16 = *a12;
  v17 = *(a12 + 8);
  *a9 = *a1;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  *(a9 + 24) = v14;
  *(a9 + 32) = v15;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 49) = a6;
  *(a9 + 50) = a7;
  *(a9 + 51) = a8;
  *(a9 + 52) = a10;
  *(a9 + 53) = a11;
  *(a9 + 56) = v16;
  *(a9 + 64) = v17;
}

uint64_t sub_1C99720A0()
{
  v0 = sub_1C9A924A8();
  v2 = v1;
  result = sub_1C9A924A8();
  qword_1EC3D33B0 = v0;
  *algn_1EC3D33B8 = v2;
  qword_1EC3D33C0 = result;
  unk_1EC3D33C8 = v4;
  qword_1EC3D33E8 = 0;
  qword_1EC3D33D0 = 1;
  unk_1EC3D33D8 = 0;
  unk_1EC3D33DE = 0;
  byte_1EC3D33F0 = 1;
  return result;
}

uint64_t static AudioConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v30 = *(a1 + 49);
  v31 = *(a1 + 48);
  v27 = *(a1 + 51);
  v25 = *(a1 + 52);
  v23 = *(a1 + 53);
  v21 = *(a1 + 64);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 49);
  v28 = *(a2 + 50);
  v29 = *(a1 + 50);
  v26 = *(a2 + 51);
  v24 = *(a2 + 52);
  v22 = *(a2 + 53);
  v18 = *(a2 + 56);
  v19 = a1[7];
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v20 = *(a2 + 64);
  if (!v12 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v9)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v14 = sub_1C9A93B18();
  result = 0;
  if ((v14 & 1) != 0 && v4 == v9)
  {
LABEL_14:
    if (!v5)
    {
      result = 0;
      if (v8)
      {
        return result;
      }

LABEL_19:
      if ((v31 ^ v10) & 1) != 0 || ((v30 ^ v11) & 1) != 0 || ((v29 ^ v28) & 1) != 0 || ((v27 ^ v26) & 1) != 0 || ((v25 ^ v24) & 1) != 0 || ((v23 ^ v22))
      {
        return result;
      }

      if (v21)
      {
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v17 = v20;
        if (v19 != v18)
        {
          v17 = 1;
        }

        if (v17)
        {
          return 0;
        }
      }

      return 1;
    }

    if (v8)
    {
      v16 = sub_1C9808F28(v5, v8);
      result = 0;
      if ((v16 & 1) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C99722DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701080941 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4D6C656E6E616863 && a2 == 0xEA00000000007061;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C9ADAF70 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000021 && 0x80000001C9ADAF90 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000001C9ADAFC0 == a2;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000002ALL && 0x80000001C9ADAFE0 == a2;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001C9ADB010 == a2;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x80000001C9ADB030 == a2;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000013 && 0x80000001C9ADB050 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C9A93B18();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C9972638(char a1)
{
  result = 0x79726F6765746163;
  switch(a1)
  {
    case 1:
      result = 1701080941;
      break;
    case 2:
      result = 0x736E6F6974706FLL;
      break;
    case 3:
      result = 0x4D6C656E6E616863;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD00000000000002ALL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9972790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99722DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99727B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9972630();
  *a1 = result;
  return result;
}

uint64_t sub_1C99727E0(uint64_t a1)
{
  v2 = sub_1C997462C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C997281C(uint64_t a1)
{
  v2 = sub_1C997462C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AudioConfiguration.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v53 = v24;
  v26 = v25;
  v27 = sub_1C97A2CEC(&qword_1EC3CE7A0, &qword_1C9ABCD38);
  sub_1C97AE9C8();
  v29 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v31 = *v23;
  v32 = v23[1];
  v33 = v23[2];
  v34 = v23[3];
  v35 = v23[5];
  v51 = v23[4];
  v52 = v33;
  v50 = v35;
  LODWORD(v33) = *(v23 + 49);
  v48 = *(v23 + 50);
  v49 = v33;
  LODWORD(v33) = *(v23 + 51);
  v46 = *(v23 + 52);
  v47 = v33;
  LODWORD(v33) = *(v23 + 53);
  v43 = v23[7];
  v44 = *(v23 + 64);
  v45 = v33;
  v36 = v26[3];
  v37 = v26;
  v39 = &v43 - v38;
  sub_1C97A5A8C(v37, v36);
  sub_1C997462C();

  sub_1C9A93DD8();
  v54 = v31;
  v55 = v32;
  sub_1C97A2CEC(&qword_1EC3CE7B0, &qword_1C9ABCD40);
  sub_1C9974680();
  v40 = v53;
  sub_1C9A93A18();
  if (v40)
  {
  }

  else
  {
    v41 = v50;
    v42 = v51;

    v54 = v52;
    v55 = v34;

    sub_1C97A2CEC(&qword_1EC3CE7C0, &qword_1C9ABCD48);
    sub_1C99746FC();
    sub_1C9975128();
    sub_1C9A93A18();

    v54 = v42;
    sub_1C97A2CEC(&qword_1EC3CE7D0, &unk_1C9ABCD50);
    sub_1C9974778();
    sub_1C9975128();
    sub_1C9A93A18();
    v54 = v41;
    sub_1C97A2CEC(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
    sub_1C99747F4();
    sub_1C9975128();
    sub_1C9A939B8();
    sub_1C99751A0(4);
    sub_1C9975118();
    sub_1C9A939D8();
    sub_1C99751A0(5);
    sub_1C9975118();
    sub_1C9A939D8();
    sub_1C99751A0(6);
    sub_1C9975118();
    sub_1C9A939D8();
    sub_1C99751A0(7);
    sub_1C9975118();
    sub_1C9A939D8();
    sub_1C99751A0(8);
    sub_1C9975118();
    sub_1C9A939D8();
    sub_1C99751A0(9);
    sub_1C9975118();
    sub_1C9A939D8();
    v54 = v43;
    LOBYTE(v55) = v44;
    sub_1C9974870();
    sub_1C9975118();
    sub_1C9A939B8();
  }

  (*(v29 + 8))(v39, v27);
  sub_1C97AEB5C();
}

uint64_t AudioConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  sub_1C9A92528();
  sub_1C9A92528();
  MEMORY[0x1CCA91980](v2);
  sub_1C9A93CE8();
  if (v3)
  {
    sub_1C97C8044();
  }

  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  if (v6)
  {
    return sub_1C9A93CE8();
  }

  sub_1C9A93CE8();
  return MEMORY[0x1CCA91980](v5);
}

uint64_t AudioConfiguration.hashValue.getter()
{
  sub_1C9A93CC8();
  AudioConfiguration.hash(into:)(v1);
  return sub_1C9A93D18();
}

void AudioConfiguration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v25 = v24;
  v27 = v26;
  sub_1C97A2CEC(&qword_1EC3CE7F8, &qword_1C9ABCD60);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97A5A8C(v25, v25[3]);
  sub_1C997462C();
  sub_1C9A93DB8();
  if (v23)
  {
    sub_1C97A592C(v25);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3CE7B0, &qword_1C9ABCD40);
    sub_1C99748C4();
    sub_1C99750D0();
    sub_1C9A938F8();
    v29 = v53;
    sub_1C97A2CEC(&qword_1EC3CE7C0, &qword_1C9ABCD48);
    sub_1C9974940();
    sub_1C99750D0();
    sub_1C9A938F8();
    v49 = v52;
    v50 = v53;
    sub_1C97A2CEC(&qword_1EC3CE7D0, &unk_1C9ABCD50);
    sub_1C99749BC();
    sub_1C99750D0();
    sub_1C9A938F8();
    v48 = v52;
    v30 = v52;
    sub_1C97A2CEC(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
    LOBYTE(v51[0]) = 3;
    sub_1C9974A38();
    sub_1C99750D0();
    sub_1C9A93898();
    v47 = v27;
    v31 = v52;
    sub_1C99750F4(4);
    sub_1C99750F4(5);
    sub_1C99750F4(6);
    sub_1C99750F4(7);
    sub_1C99750F4(8);
    v42 = sub_1C99750F4(9);
    sub_1C9974AB4();
    sub_1C9A93898();
    sub_1C99751B8();
    v41 = v32;
    sub_1C99751B8();
    v40 = v33;
    sub_1C99751B8();
    v46 = v34;
    sub_1C99751B8();
    v45 = v35;
    sub_1C99751B8();
    v43 = v36;
    v37 = sub_1C9975148();
    v38(v37);
    v44 = v66;
    v39 = v67;
    v51[0] = v49;
    v51[1] = v29;
    v51[2] = v48;
    v51[3] = v50;
    v51[4] = v30;
    v51[5] = v31;
    LOBYTE(v51[6]) = v41;
    BYTE1(v51[6]) = v40;
    BYTE2(v51[6]) = v46;
    BYTE3(v51[6]) = v45;
    BYTE4(v51[6]) = v43;
    BYTE5(v51[6]) = v42 & 1;
    v51[7] = v66;
    LOBYTE(v51[8]) = v67;
    memcpy(v47, v51, 0x41uLL);
    sub_1C97A6264(v51, &v52);
    sub_1C97A592C(v25);
    v52 = v49;
    v53 = v29;
    v54 = v48;
    v55 = v50;
    v56 = v30;
    v57 = v31;
    v58 = v41;
    v59 = v40;
    v60 = v46;
    v61 = v45;
    v62 = v43;
    v63 = v42 & 1;
    v64 = v44;
    v65 = v39;
    sub_1C97E8084(&v52);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9973220()
{
  sub_1C9A93CC8();
  AudioConfiguration.hash(into:)(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C99732D4()
{
  v1 = *(v0 + OBJC_IVAR___SNAudioConfiguration_impl);

  sub_1C9A92478();
  sub_1C97FB3E4();

  return v1;
}

uint64_t sub_1C997337C(void *a1)
{
  v3 = sub_1C9A924A8();
  v5 = v4;

  v6 = (v1 + OBJC_IVAR___SNAudioConfiguration_impl);
  *v6 = v3;
  v6[1] = v5;
}

uint64_t sub_1C997341C()
{
  v1 = *(v0 + OBJC_IVAR___SNAudioConfiguration_impl + 16);

  sub_1C9A92478();
  sub_1C97FB3E4();

  return v1;
}

uint64_t sub_1C99734C4(void *a1)
{
  v3 = sub_1C9A924A8();
  v5 = v4;

  v6 = v1 + OBJC_IVAR___SNAudioConfiguration_impl;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
}

id sub_1C9973858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  if (a3())
  {
    sub_1C9A92768();
    sub_1C97FB3E4();
  }

  else
  {
    a4 = 0;
  }

  return a4;
}

double sub_1C99738B8()
{
  if ((*(v0 + OBJC_IVAR___SNAudioConfiguration_impl + 64) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR___SNAudioConfiguration_impl + 56);
    sub_1C97A2CEC(&qword_1EC3CE888, &qword_1C9AD0BF0);
    v2 = swift_allocObject();
    *&result = 1;
    *(v2 + 16) = xmmword_1C9A9EDD0;
    *(v2 + 32) = v1;
  }

  return result;
}

objc_class *sub_1C9973924()
{
  ObjectType = swift_getObjectType();
  if (qword_1EC3C5E08 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
  v1 = objc_allocWithZone(ObjectType);
  memcpy(&v1[OBJC_IVAR___SNAudioConfiguration_impl], __dst, 0x41uLL);
  sub_1C97A6264(__dst, v5);
  v4.receiver = v1;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_init);
  sub_1C97FB3E4();
  v2 = swift_getObjectType();
  sub_1C9975180(v2);
  return ObjectType;
}

uint64_t SNAudioConfiguration.description.getter()
{
  v1 = v0;
  sub_1C9A935B8();
  v2 = sub_1C99732D4();
  type metadata accessor for Category(0);
  sub_1C9975160(v3);

  MEMORY[0x1CCA90230](8236, 0xE200000000000000);
  v4 = sub_1C997341C();
  type metadata accessor for Mode(0);
  sub_1C9975160(v5);

  sub_1C98568D0();
  MEMORY[0x1CCA90230]();
  v6 = v1 + OBJC_IVAR___SNAudioConfiguration_impl;
  type metadata accessor for CategoryOptions(0);
  sub_1C9975160(v7);
  sub_1C98568D0();
  MEMORY[0x1CCA90230]();
  v8 = 0xE500000000000000;
  sub_1C99751C4();

  sub_1C98568D0();
  MEMORY[0x1CCA90230]();
  sub_1C99751AC(*(v6 + 50));
  sub_1C99751C4();

  sub_1C98568D0();
  MEMORY[0x1CCA90230]();
  sub_1C99751AC(*(v6 + 51));
  sub_1C99751C4();

  sub_1C98568D0();
  MEMORY[0x1CCA90230]();
  sub_1C99751AC(*(v6 + 52));
  sub_1C99751C4();

  sub_1C98568D0();
  MEMORY[0x1CCA90230]();
  sub_1C99751AC(*(v6 + 53));
  sub_1C99751C4();

  sub_1C98568D0();
  MEMORY[0x1CCA90230](0xD000000000000017);
  sub_1C99738B8();
  sub_1C97A2CEC(&unk_1EC3CE830, &unk_1C9ABCD68);
  v9 = sub_1C9A924F8();
  MEMORY[0x1CCA90230](v9);

  sub_1C98568D0();
  MEMORY[0x1CCA90230](0xD000000000000017);
  v10 = sub_1C99751AC(*(v6 + 48));
  if (v11)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x1CCA90230](v10, v12);

  MEMORY[0x1CCA90230](0x656E6E616863202CLL, 0xEE00203A70614D6CLL);
  if (*(v6 + 40))
  {

    v14 = MEMORY[0x1CCA90460](v13, MEMORY[0x1E69E6530]);
    v8 = v15;
  }

  else
  {
    v14 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1CCA90230](v14, v8);

  return 0;
}

void *SNAudioConfiguration.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR___SNAudioConfiguration_impl), 0x41uLL);
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR___SNAudioConfiguration_impl], __dst, 0x41uLL);
  sub_1C97A6264(__dst, v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNAudioConfiguration.hash.getter()
{
  sub_1C99751DC(v5);
  sub_1C99751DC(v4);
  sub_1C9A93CC8();
  sub_1C97A6264(v5, &v2);
  AudioConfiguration.hash(into:)(v3);
  v0 = sub_1C9A93D18();
  sub_1C97E8084(v5);
  return v0;
}

uint64_t SNAudioConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v15);
  if (v16)
  {
    sub_1C97A2D34(&v15, v14);
    sub_1C97BD360(v14, v13);
    if (swift_dynamicCast())
    {
      v2 = v12;
      v3 = OBJC_IVAR___SNAudioConfiguration_impl;
      sub_1C99751DC(v8);
      sub_1C99751DC(v7);
      memcpy(__dst, &v2[v3], 0x41uLL);
      memcpy(__src, &v2[v3], 0x41uLL);
      v4 = static AudioConfiguration.== infix(_:_:)(v7, __src);
      memcpy(v10, __src, 0x41uLL);
      sub_1C97A6264(v8, v11);
      sub_1C97A6264(__dst, v11);
      sub_1C97E8084(v10);
      memcpy(v11, v7, 0x41uLL);
      sub_1C97E8084(v11);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v14);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id SNAudioConfiguration.init(coder:)()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  sub_1C97A1F38(1819307369, 0xE400000000000000);
  v2 = objc_allocWithZone(ObjectType);
  memcpy(&v2[OBJC_IVAR___SNAudioConfiguration_impl], __src, 0x41uLL);
  v6.receiver = v2;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, sel_init);

  v4 = swift_getObjectType();
  sub_1C9975180(v4);
  return v3;
}

id SNAudioConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C99743EC()
{
  v1 = sub_1C9A924A8();
  v3 = v2;
  v4 = sub_1C9A924A8();
  v6 = v5;
  v11 = 0;
  v7 = objc_allocWithZone(v0);
  v8 = &v7[OBJC_IVAR___SNAudioConfiguration_impl];
  *v8 = v1;
  *(v8 + 1) = v3;
  *(v8 + 2) = v4;
  *(v8 + 3) = v6;
  *(v8 + 2) = xmmword_1C9ABCD10;
  *(v8 + 24) = 0;
  *(v8 + 50) = 16843009;
  *(v8 + 7) = 2;
  v8[64] = 0;
  v10.receiver = v7;
  v10.super_class = v0;
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_1C99744E0()
{
  result = qword_1EC3CE778;
  if (!qword_1EC3CE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE778);
  }

  return result;
}

unint64_t sub_1C9974534()
{
  result = qword_1EC3CE788;
  if (!qword_1EC3CE788)
  {
    sub_1C97AA4F0(&qword_1EC3CE780, &qword_1C9ABCD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE788);
  }

  return result;
}

unint64_t sub_1C99745B0()
{
  result = qword_1EC3CE798;
  if (!qword_1EC3CE798)
  {
    sub_1C97AA4F0(&qword_1EC3CE780, &qword_1C9ABCD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE798);
  }

  return result;
}

unint64_t sub_1C997462C()
{
  result = qword_1EC3CE7A8;
  if (!qword_1EC3CE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE7A8);
  }

  return result;
}

unint64_t sub_1C9974680()
{
  result = qword_1EC3CE7B8;
  if (!qword_1EC3CE7B8)
  {
    sub_1C97AA4F0(&qword_1EC3CE7B0, &qword_1C9ABCD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE7B8);
  }

  return result;
}

unint64_t sub_1C99746FC()
{
  result = qword_1EC3CE7C8;
  if (!qword_1EC3CE7C8)
  {
    sub_1C97AA4F0(&qword_1EC3CE7C0, &qword_1C9ABCD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE7C8);
  }

  return result;
}

unint64_t sub_1C9974778()
{
  result = qword_1EC3CE7D8;
  if (!qword_1EC3CE7D8)
  {
    sub_1C97AA4F0(&qword_1EC3CE7D0, &unk_1C9ABCD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE7D8);
  }

  return result;
}

unint64_t sub_1C99747F4()
{
  result = qword_1EC3CAB88;
  if (!qword_1EC3CAB88)
  {
    sub_1C97AA4F0(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB88);
  }

  return result;
}

unint64_t sub_1C9974870()
{
  result = qword_1EC3CE7F0;
  if (!qword_1EC3CE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE7F0);
  }

  return result;
}

unint64_t sub_1C99748C4()
{
  result = qword_1EC3CE800;
  if (!qword_1EC3CE800)
  {
    sub_1C97AA4F0(&qword_1EC3CE7B0, &qword_1C9ABCD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE800);
  }

  return result;
}

unint64_t sub_1C9974940()
{
  result = qword_1EC3CE808;
  if (!qword_1EC3CE808)
  {
    sub_1C97AA4F0(&qword_1EC3CE7C0, &qword_1C9ABCD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE808);
  }

  return result;
}

unint64_t sub_1C99749BC()
{
  result = qword_1EC3CE810;
  if (!qword_1EC3CE810)
  {
    sub_1C97AA4F0(&qword_1EC3CE7D0, &unk_1C9ABCD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE810);
  }

  return result;
}

unint64_t sub_1C9974A38()
{
  result = qword_1EC3CE720;
  if (!qword_1EC3CE720)
  {
    sub_1C97AA4F0(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE720);
  }

  return result;
}

unint64_t sub_1C9974AB4()
{
  result = qword_1EC3CE820;
  if (!qword_1EC3CE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE820);
  }

  return result;
}

unint64_t sub_1C9974B0C()
{
  result = qword_1EC3CE840;
  if (!qword_1EC3CE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE840);
  }

  return result;
}

unint64_t sub_1C9974B64()
{
  result = qword_1EC3CE848;
  if (!qword_1EC3CE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE848);
  }

  return result;
}

uint64_t sub_1C9974BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1C9974C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AudioConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AudioSessionAudioHardwareControlFlags.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9974EC4()
{
  result = qword_1EC3CE858;
  if (!qword_1EC3CE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE858);
  }

  return result;
}

unint64_t sub_1C9974F1C()
{
  result = qword_1EC3CE860;
  if (!qword_1EC3CE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE860);
  }

  return result;
}

unint64_t sub_1C9974F74()
{
  result = qword_1EC3CE868;
  if (!qword_1EC3CE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE868);
  }

  return result;
}

unint64_t sub_1C9974FCC()
{
  result = qword_1EC3CE870;
  if (!qword_1EC3CE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE870);
  }

  return result;
}

unint64_t sub_1C9975024()
{
  result = qword_1EC3CE878;
  if (!qword_1EC3CE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE878);
  }

  return result;
}

unint64_t sub_1C997507C()
{
  result = qword_1EC3CE880;
  if (!qword_1EC3CE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE880);
  }

  return result;
}

uint64_t sub_1C99750F4@<X0>(char a1@<W8>)
{
  *(v1 - 176) = a1;

  return sub_1C9A938B8();
}

uint64_t sub_1C9975158@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t sub_1C9975160(uint64_t a1, ...)
{

  return sub_1C9A93728();
}

uint64_t sub_1C9975180(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C99751AC@<X0>(int a1@<W8>)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1C99751C4()
{

  JUMPOUT(0x1CCA90230);
}

void *sub_1C99751DC(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x41uLL);
}

uint64_t sub_1C99751F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99752D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97AE9DC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v16 = *(v10 + 16);
  v17 = v16;
  v18 = v11;
  v19 = v13;
  v20 = v12;
  v21 = v14;
  type metadata accessor for ExpandResult.Inner(0, &v17);
  (*(v6 + 16))(v9, a1, a3);
  *&v17 = sub_1C9975418(v9);
  swift_getWitnessTable();
  sub_1C9A920B8();
}

uint64_t sub_1C9975418(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C997553C(a1);
  return v2;
}

uint64_t sub_1C9975458(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C979B054(a1, v2 + 16);
  return v2;
}

uint64_t sub_1C99754E0()
{
  sub_1C97A592C((v0 + 16));

  return swift_deallocClassInstance();
}

char *sub_1C997553C(uint64_t a1)
{
  v3 = *v1;
  swift_weakInit();
  sub_1C9831528();
  (*(*(*(v3 + 104) - 8) + 32))(&v1[*(v4 + 128)], a1);
  sub_1C9831528();
  swift_weakAssign();
  sub_1C9831528();
  v1[*(v5 + 144)] = 0;
  return v1;
}

uint64_t sub_1C9975610(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 80);
  v12 = *(*v2 + 96);
  v10 = *(v4 + 104);
  v11 = v6;
  v13 = v10;
  v14 = v5;
  v7 = type metadata accessor for ExpandResult.Inner.WrappedSubscription(0, &v11);
  sub_1C97D9AF8(a1, &v11);
  v8 = sub_1C9975458(&v11);
  sub_1C9976240();
  swift_weakAssign();
  sub_1C9976240();
  *&v13 = v7;
  *(&v13 + 1) = swift_getWitnessTable();
  *&v11 = v8;

  sub_1C9A91D18();

  return sub_1C97A592C(&v11);
}

uint64_t sub_1C9975768(uint64_t a1)
{
  v32 = a1;
  v2 = *v1;
  v3 = *(*v1 + 96);
  swift_getAssociatedConformanceWitness();
  sub_1C9A91D48();
  sub_1C97AE9DC();
  v30 = v5;
  v31 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v29 - v7;
  sub_1C97AE9DC();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = *(v2 + 88);
  sub_1C97AE9DC();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = sub_1C9A93D88();
  sub_1C97AE9DC();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  (*(v23 + 16))(&v29 - v21, v32, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v22, v3);
    sub_1C9976240();
    v25 = *(v24 + 144);
    if ((*(v1 + v25) & 1) == 0)
    {
      *(v1 + v25) = 1;
      sub_1C9976240();
      if (swift_weakLoadStrong())
      {
        sub_1C997549C();
      }

      sub_1C9976240();
      v26 = v29;
      (*(v9 + 16))(v29, v12, v3);
      sub_1C97ACC50(v26, 0, 1, v3);
      sub_1C9A91D08();
      (*(v30 + 8))(v26, v31);
    }

    v27 = sub_1C9A91D78();
    (*(v9 + 8))(v12, v3);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v13);
    sub_1C9976240();
    v27 = sub_1C9A91D28();
    (*(v15 + 8))(v18, v13);
  }

  return v27;
}

void sub_1C9975B84()
{
  v1 = *(*v0 + 144);
  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + v1) = 1;
    sub_1C9831528();
    sub_1C9A91D08();
  }
}

uint64_t sub_1C9975C10()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 128));
  sub_1C9831528();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1C9975C98()
{
  sub_1C9975C10();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9975D64(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C9975DD4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    return sub_1C97ABF20(a1, v5, v4);
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
        return sub_1C97ABF20(a1, v5, v4);
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

void sub_1C9975F10(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

          sub_1C97ACC50(a1, a2, v7, v6);
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

double SNSpeechEmotionResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNSpeechEmotionResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNSpeechEmotionResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNSpeechEmotionResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNSpeechEmotionResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNSpeechEmotionResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C9976370@<D0>(_OWORD *a1@<X8>)
{
  SNSpeechEmotionResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNSpeechEmotionResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNSpeechEmotionResult.timeRange.getter((v3 + 1));
  return sub_1C9976418;
}

void sub_1C9976418(void **a1)
{
  v1 = *a1;
  SNSpeechEmotionResult.timeRange.setter(*a1 + 8);

  free(v1);
}

double (*SNSpeechEmotionResult.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSpeechEmotionResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 48);
  return sub_1C98277B8;
}

double (*SNSpeechEmotionResult.mood.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSpeechEmotionResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 56);
  return sub_1C98CB940;
}

double (*SNSpeechEmotionResult.valence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSpeechEmotionResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 64);
  return sub_1C9976650;
}

double sub_1C9976650(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 64) = *a1;
  return result;
}

double (*SNSpeechEmotionResult.arousal.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSpeechEmotionResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 72);
  return sub_1C997670C;
}

double sub_1C997670C(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 72) = *a1;
  return result;
}

double (*SNSpeechEmotionResult.dominance.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSpeechEmotionResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 80);
  return sub_1C99767C8;
}

double sub_1C99767C8(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 80) = *a1;
  return result;
}

uint64_t SNSpeechEmotionResult.modelIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNSpeechEmotionResult_impl + 88);

  return v1;
}

uint64_t SNSpeechEmotionResult.modelIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___SNSpeechEmotionResult_impl;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
}

uint64_t sub_1C99768F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SNSpeechEmotionResult.modelIdentifier.setter(v1, v2);
}

uint64_t (*SNSpeechEmotionResult.modelIdentifier.modify(void *a1))()
{
  v3 = OBJC_IVAR___SNSpeechEmotionResult_impl;
  a1[2] = v1;
  a1[3] = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 96);
  *a1 = *(v4 + 88);
  a1[1] = v5;

  return sub_1C997698C;
}

uint64_t sub_1C997698C(void *a1)
{
  v1 = a1[2] + a1[3];
  v2 = a1[1];
  *(v1 + 88) = *a1;
  *(v1 + 96) = v2;
}

id sub_1C99769A4()
{
  swift_getObjectType();
  sub_1C9977F40(MEMORY[0x1E6960C98]);
  *(v2 + 40) = v1;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0xE000000000000000;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1C9976A34(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = sub_1C9977F40(MEMORY[0x1E6960C98]);
  *(v11 + 40) = v10;
  *(v11 + 48) = 0;
  *(v11 + 56) = a1;
  *(v11 + 64) = a2;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0xE000000000000000;
  v14.receiver = v4;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_init, v9);
}

void *SNSpeechEmotionResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR___SNSpeechEmotionResult_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR___SNSpeechEmotionResult_impl], __dst, 0x68uLL);
  sub_1C98DDAE8(__dst, v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNSpeechEmotionResult.hash.getter()
{
  sub_1C9977FE8(v5);
  sub_1C9977FE8(v4);
  sub_1C9A93CC8();
  sub_1C98DDAE8(v5, &v2);
  sub_1C9A42C24(v3);
  v0 = sub_1C9A93D18();
  sub_1C9977D00(v5);
  return v0;
}

uint64_t SNSpeechEmotionResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v15);
  if (v16)
  {
    sub_1C97A2D34(&v15, v14);
    sub_1C97BD360(v14, v13);
    if (swift_dynamicCast())
    {
      v2 = v12;
      v3 = OBJC_IVAR___SNSpeechEmotionResult_impl;
      sub_1C9977FE8(v8);
      sub_1C9977FE8(v7);
      memcpy(__dst, &v2[v3], sizeof(__dst));
      memcpy(__src, &v2[v3], sizeof(__src));
      v4 = sub_1C9A425C4(v7, __src);
      memcpy(v10, __src, sizeof(v10));
      sub_1C98DDAE8(v8, v11);
      sub_1C98DDAE8(__dst, v11);
      sub_1C9977D00(v10);
      memcpy(v11, v7, sizeof(v11));
      sub_1C9977D00(v11);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v14);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id SNSpeechEmotionResult.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1C97BD318(v5, 0, &qword_1EC3C5690, 0x1E696B098);
  v6 = sub_1C9A93198();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C9A92478();
    [a1 decodeDoubleForKey_];
    v10 = v9;

    sub_1C9977FD4();
    v11 = sub_1C9A92478();
    sub_1C9977F20(v11);
    v13 = v12;

    sub_1C9977FC0();
    v14 = sub_1C9A92478();
    sub_1C9977F20(v14);
    v16 = v15;

    v17 = sub_1C9977F8C();
    sub_1C9977F20(v17);
    v19 = v18;

    v20 = sub_1C9977F64();
    sub_1C9977F20(v20);
    v22 = v21;

    sub_1C97BD318(v23, 0, &qword_1EC3C8F28, 0x1E696AEC0);
    v24 = sub_1C9A93198();
    v32 = 0;
    v33 = 0;
    sub_1C9A92498();

    [v7 CMTimeRangeValue];
    v25 = v36;
    v26 = v35;
    v30 = v34;

    v27 = &v2[OBJC_IVAR___SNSpeechEmotionResult_impl];
    *v27 = 0;
    *(v27 + 1) = 0;
    *(v27 + 1) = v30;
    *(v27 + 4) = v26;
    *(v27 + 5) = v25;
    *(v27 + 6) = v22;
    *(v27 + 7) = v10;
    *(v27 + 8) = v13;
    *(v27 + 9) = v16;
    *(v27 + 10) = v19;
    *(v27 + 11) = 0;
    *(v27 + 12) = 0xE000000000000000;
    v31.receiver = v2;
    v31.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v31, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v28;
}

Swift::Void __swiftcall SNSpeechEmotionResult.encode(with:)(NSCoder with)
{
  SNSpeechEmotionResult.timeRange.getter(v13);
  v3 = [objc_opt_self() valueWithCMTimeRange_];
  v4 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___SNSpeechEmotionResult_impl + 56);
  v6 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeDouble:v6 forKey:v5];

  sub_1C9977FD4();
  v7 = sub_1C9A92478();
  sub_1C9977EFC(v7);

  sub_1C9977FC0();
  v8 = sub_1C9A92478();
  sub_1C9977EFC(v8);

  v9 = sub_1C9977F8C();
  sub_1C9977EFC(v9);

  v10 = sub_1C9977F64();
  sub_1C9977EFC(v10);

  v11 = sub_1C9A92478();

  v12 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
}

uint64_t SNSpeechEmotionResult.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v60[0] = 0;
  *(&v60[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v59 = v60[0];
  v58.receiver = v0;
  v58.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v58, sel_description);
  v4 = sub_1C9A924A8();
  v6 = v5;

  MEMORY[0x1CCA90230](v4, v6);

  v7 = MEMORY[0x1CCA90230](0x203A646F6F4D20, 0xE700000000000000);
  v8 = &v1[OBJC_IVAR___SNSpeechEmotionResult_impl];
  sub_1C98734B8(*&v1[OBJC_IVAR___SNSpeechEmotionResult_impl + 56], v7, v9, v10, v11, v12, v13, v14, v15);
  v16 = MEMORY[0x1CCA90230](0x636E656C6156203BLL, 0xEB00000000203A65);
  sub_1C98734B8(v8[8], v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = MEMORY[0x1CCA90230](0x6173756F7241203BLL, 0xEB00000000203A6CLL);
  sub_1C98734B8(v8[9], v24, v25, v26, v27, v28, v29, v30, v31);
  v32 = MEMORY[0x1CCA90230](0x616E696D6F44203BLL, 0xED0000203A65636ELL);
  sub_1C98734B8(v8[10], v32, v33, v34, v35, v36, v37, v38, v39);
  v40 = MEMORY[0x1CCA90230](0x6469666E6F43203BLL, 0xEE00203A65636E65);
  sub_1C98734B8(v8[6], v40, v41, v42, v43, v44, v45, v46, v47);
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNSpeechEmotionResult.timeRange.getter(v60);
  v48 = objc_opt_self();
  v57[0] = v60[0];
  v57[1] = v60[1];
  v57[2] = v60[2];
  v49 = [v48 valueWithCMTimeRange_];
  v50 = [v49 description];
  v51 = sub_1C9A924A8();
  v53 = v52;

  MEMORY[0x1CCA90230](v51, v53);

  MEMORY[0x1CCA90230](0xD000000000000012, 0x80000001C9ADB070);
  v54 = *(v8 + 11);
  v55 = *(v8 + 12);

  MEMORY[0x1CCA90230](v54, v55);

  return v59;
}

id sub_1C997760C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_1C97BD318(v7, 0, &unk_1EC3C9010, 0x1E696ACD0);
  v8 = sub_1C9A92FF8();
  v20 = v8;
  if (v8)
  {
    memcpy(__dst, (v8 + OBJC_IVAR___SNSpeechEmotionResult_impl), sizeof(__dst));
    sub_1C98DDAE8(__dst, &v24);

    memcpy(&v3[OBJC_IVAR___SNSpeechEmotionResult_impl], __dst, 0x68uLL);
  }

  else
  {
    sub_1C9977DA4();
    v23 = swift_allocError();
    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v9 = sub_1C9A91B58();
    sub_1C97BFF6C(v9, qword_1EC3D3108);
    v10 = sub_1C9A91B38();
    v11 = sub_1C9A92FB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      __dst[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1C9849140(0xD000000000000046, 0x80000001C9ADB130, __dst);
      _os_log_impl(&dword_1C9788000, v10, v11, "Would-be Fatal Error! %s", v12, 0xCu);
      sub_1C97A592C(v13);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    v14 = MEMORY[0x1E6960C98];
    v15 = *MEMORY[0x1E6960C98];
    v16 = *(MEMORY[0x1E6960C98] + 16);
    v17 = *(MEMORY[0x1E6960C98] + 24);
    v18 = *(MEMORY[0x1E6960C98] + 40);

    v19 = &v3[OBJC_IVAR___SNSpeechEmotionResult_impl];
    *v19 = v15;
    *(v19 + 1) = *(v14 + 8);
    *(v19 + 2) = v16;
    *(v19 + 3) = v17;
    *(v19 + 4) = *(v14 + 32);
    *(v19 + 5) = v18;
    *(v19 + 3) = 0u;
    *(v19 + 4) = 0u;
    *(v19 + 5) = 0u;
    *(v19 + 12) = 0xE000000000000000;
  }

  v26.receiver = v3;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  sub_1C97A5978(a1, a2);
  return v21;
}

uint64_t SNSpeechEmotionResult.binarySampleRepresentation()(double a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v2 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v13];
  v3 = v13[0];
  if (v2)
  {
    v4 = sub_1C9A91618();
  }

  else
  {
    v5 = v3;
    v6 = sub_1C9A913C8();

    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v7 = sub_1C9A91B58();
    sub_1C97BFF6C(v7, qword_1EC3D3108);
    v8 = sub_1C9A91B38();
    v9 = sub_1C9A92FB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1C9849140(0xD000000000000042, 0x80000001C9ADB090, v13);
      _os_log_impl(&dword_1C9788000, v8, v9, "Would-be Fatal Error! %s", v10, 0xCu);
      sub_1C97A592C(v11);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    return 0;
  }

  return v4;
}

id SNSpeechEmotionResult.__allocating_init(binarySampleRepresentation:metadata:timestamp:)(uint64_t a1, unint64_t a2)
{

  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(v2);
  v7 = sub_1C997760C(a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id SNSpeechEmotionResult.init(binarySampleRepresentation:metadata:timestamp:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();

  v5 = objc_allocWithZone(ObjectType);
  v6 = sub_1C997760C(a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id SNSpeechEmotionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C9977CBC@<D0>(_OWORD *a1@<X8>)
{
  SNSpeechEmotionResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C9977DA4()
{
  result = qword_1EC3CE8A0;
  if (!qword_1EC3CE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE8A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNSpeechEmotionResult.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9977EA8()
{
  result = qword_1EC3CE8A8;
  if (!qword_1EC3CE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE8A8);
  }

  return result;
}

id sub_1C9977EFC(uint64_t a1)
{

  return [v1 (v2 + 2606)];
}

id sub_1C9977F20(uint64_t a1)
{

  return [v1 (v2 + 1784)];
}

double sub_1C9977F40@<D0>(uint64_t a1@<X8>)
{
  v4 = v3 + v2;
  *v4 = v1;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v4 + 32) = result;
  return result;
}

uint64_t sub_1C9977F64()
{

  return sub_1C9A92478();
}

uint64_t sub_1C9977F8C()
{

  return sub_1C9A92478();
}

void *sub_1C9977FE8(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x68uLL);
}

void *sub_1C9978010(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1C97A5A8C(a1, v2);
  (*(v3 + 8))(&v18, v2, v3);
  if (v22)
  {
    v26 = v18;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C979B054(&v18, v23);
    v4 = sub_1C97A5A8C(v23, v24);
    sub_1C9A47B4C(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18, SBYTE2(v18), SBYTE3(v18), SBYTE4(v18), *(&v18 + 1), v19, v20, v21, v22, v23[0], v23[1], v23[2], v24, v25);
    if (!v1)
    {
      v13 = v12;
      sub_1C97D9AF8(v23, &v18);
      v14 = swift_allocObject();
      sub_1C979B054(&v18, v14 + 16);
      *(v14 + 56) = v13;
      sub_1C97D9AF8(v23, &v18);
      v15 = swift_allocObject();
      sub_1C979B054(&v18, v15 + 16);
      *(v15 + 56) = v13;
      sub_1C97A2CEC(&qword_1EC3CE8B0, &qword_1C9ABD5D8);
      v2 = swift_allocObject();
      v2[2] = sub_1C9978228;
      v2[3] = v14;
      v2[4] = sub_1C99782CC;
      v2[5] = v15;
    }

    sub_1C97A592C(v23);
    return v2;
  }

  return result;
}

uint64_t sub_1C997828C()
{
  sub_1C97A592C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C99782EC()
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v1 = sub_1C9A91B58();
  sub_1C97BFF6C(v1, qword_1EC3D3108);
  v2 = sub_1C9A91B38();
  v3 = sub_1C9A92FC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C9788000, v2, v3, "Starting conclave...", v4, 2u);
    MEMORY[0x1CCA93280](v4, -1, -1);
  }

  v6 = type metadata accessor for SoundAnalysisService.Service(v5);
  sub_1C99785B0(&qword_1EC3CE8B8, type metadata accessor for SoundAnalysisService.Service, &unk_1C9AD32A4);
  sub_1C9A922D8();
  if (v0)
  {
    v7 = sub_1C9A91B38();
    v8 = sub_1C9A92FA8();
    if (os_log_type_enabled(v7, v8))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = v14;
      _os_log_impl(&dword_1C9788000, v7, v8, "Conclave.service failed with tb_error_t = %u", v6, 8u);
      MEMORY[0x1CCA93280](v6, -1, -1);
    }

    type metadata accessor for TransportError(0);
    sub_1C99785B0(&unk_1EC3CE8C0, type metadata accessor for TransportError, MEMORY[0x1E69DA0F0]);
    swift_allocError();
    *v9 = v14;
    swift_willThrow();
  }

  else
  {
    v6 = v15;
    v10 = sub_1C9A91B38();
    v11 = sub_1C9A92FC8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C9788000, v10, v11, "Created SoundAnalysis Tightbeam client", v12, 2u);
      MEMORY[0x1CCA93280](v12, -1, -1);
    }
  }

  return v6;
}

uint64_t sub_1C99785B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1C99785F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C97E82EC(a1, &v6, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (v7)
  {
    return sub_1C97A2D34(&v6, a2);
  }

  sub_1C97DA1E0(&v6, &unk_1EC3C5E60, qword_1C9A9AE10);
  sub_1C97A8E8C();
  v4 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
  sub_1C9887D54(v4, v5);
  return swift_willThrow();
}

uint64_t sub_1C9978690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97E82EC(a1, &v5, &qword_1EC3CE910, &unk_1C9ABD928);
  if (v6)
  {
    return sub_1C979B054(&v5, a2);
  }

  sub_1C97DA1E0(&v5, &qword_1EC3CE910, &unk_1C9ABD928);
  sub_1C97A8E8C();
  swift_allocError();
  *v4 = 0;
  return swift_willThrow();
}

BOOL sub_1C9978734(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (*(a1 + 16))
  {
    if (v2 == v3)
    {
      v4 = *(a2 + 16);
    }

    else
    {
      v4 = 0;
    }

    if (v4 != 1)
    {
      return 0;
    }

    return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40);
  }

  v5 = 0;
  if ((*(a2 + 16) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && v2 == v3)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40);
  }

  return v5;
}

uint64_t sub_1C99787C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C9ADB350 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4670616C7265766FLL && a2 == 0xED0000726F746361;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7544776F646E6977 && a2 == 0xEE006E6F69746172)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

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

unint64_t sub_1C9978930(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4670616C7265766FLL;
      break;
    case 3:
      result = 0x7544776F646E6977;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C99789D0(void *a1)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CE938, &qword_1C9ABD948);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v11 = *v1;
  v10 = v1[1];
  v22 = *(v1 + 16);
  v17 = v1[3];
  v18 = v10;
  v12 = v1[4];
  v16 = v1[5];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99800D4();
  sub_1C9A93DD8();
  v19 = v11;
  v23 = 0;
  sub_1C97A2CEC(&qword_1EC3CE930, &qword_1C9ABD940);
  sub_1C9980128(&unk_1EC3CE940, MEMORY[0x1E69E6538], &protocol conformance descriptor for <> RawRepresentableWrapper<A>);
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (!v2)
  {
    v14 = v16;
    v13 = v17;
    LOBYTE(v19) = 1;
    sub_1C97BE02C();
    sub_1C9A939A8();
    LOBYTE(v19) = 2;
    sub_1C97BE02C();
    sub_1C9A939F8();
    v19 = v13;
    v20 = v12;
    v21 = v14;
    v23 = 3;
    sub_1C97BCB34();
    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C9978C04()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  MEMORY[0x1CCA91980](*v0);
  sub_1C9A93CE8();
  if (v2 != 1)
  {
    MEMORY[0x1CCA91980](v1);
  }

  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return MEMORY[0x1CCA919B0](v4);
}

uint64_t sub_1C9978CBC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[5];
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v2);
  sub_1C9A93CE8();
  if (v3 != 1)
  {
    MEMORY[0x1CCA91980](v1);
  }

  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v5);
  return sub_1C9A93D18();
}

uint64_t sub_1C9978DAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CE920, &qword_1C9ABD938);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99800D4();
  sub_1C9A93DB8();
  if (!v2)
  {
    sub_1C97A2CEC(&qword_1EC3CE930, &qword_1C9ABD940);
    v24 = 0;
    sub_1C9980128(&qword_1EC3CF2D0, MEMORY[0x1E69E6560], &protocol conformance descriptor for <> RawRepresentableWrapper<A>);
    sub_1C9A938F8();
    v11 = v21;
    sub_1C99808D0(1);
    v12 = sub_1C9A93888();
    v25 = v13 & 1;
    sub_1C99808D0(2);
    sub_1C9A938D8();
    v16 = v15;
    v24 = 3;
    sub_1C97BCA8C();
    sub_1C9A938F8();
    (*(v7 + 8))(v10, v5);
    v17 = v21;
    v18 = v23;
    v19 = v25;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v19;
    *(a2 + 20) = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v22;
    *(a2 + 40) = v18;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C9979028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99787C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9979050(uint64_t a1)
{
  v2 = sub_1C99800D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C997908C(uint64_t a1)
{
  v2 = sub_1C99800D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9979100()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[5];
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v2);
  sub_1C9A93CE8();
  if (v3 != 1)
  {
    MEMORY[0x1CCA91980](v1);
  }

  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v5);
  return sub_1C9A93D18();
}

id sub_1C9979234@<X0>(uint64_t *a1@<X8>, float a2@<S1>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_1C997929C(a2);
  if (!v3)
  {
    a1[3] = v2;
    a1[4] = &off_1F49448F0;
    *a1 = result;
  }

  return result;
}

id sub_1C997929C(float a1)
{
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = ObjectType;
  v6 = sub_1C97C1E20();
  v8 = v7;

  if (v2)
  {
    return swift_deallocPartialClassInstance();
  }

  *&v1[OBJC_IVAR____TtC13SoundAnalysis17SNVGGishExtractor_graphImpl] = v6;
  *&v1[OBJC_IVAR____TtC13SoundAnalysis17SNVGGishExtractor_blockSize] = v8;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1C997938C(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *&a2;
  v88 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  *&v87 = 0;
  v7 = sub_1C9A761F8(v5, &v87, v6);
  if (!v7)
  {
    v27 = v87;
    sub_1C9A913C8();

    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = v87;
  v10 = sub_1C9A92478();
  sub_1C9A6B534(v8, v10);

  v11 = sub_1C9A92478();
  *&v87 = 0;
  v12 = sub_1C9A72FAC(v5, v8, v11, &v87);

  if (!v12)
  {
    v28 = v87;
    sub_1C9A913C8();

    swift_willThrow();
LABEL_11:

    return;
  }

  v13 = v87;
  v14 = sub_1C9A92478();
  *&v87 = 0;
  v15 = sub_1C9A74DF0(v5, v8, v14, &v87);

  if (!v15)
  {
    v29 = v87;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_11;
  }

  v16 = v87;
  v17 = sub_1C9A92478();
  *&v87 = 0;
  v18 = sub_1C9A75428(v5, v8, v17, &v87);

  v20 = v87;
  if (!v18)
  {
    v30 = v87;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_11;
  }

  v85 = a1;
  type metadata accessor for SNUtils(v19);
  v21 = v20;
  v22 = sub_1C9A17870();
  sub_1C9A92348();
  v24 = objc_allocWithZone(type metadata accessor for _SNVGGishFrontEndProcessingCustomModel(v23));
  v25 = sub_1C99CD748(v22);
  if (v2)
  {

    return;
  }

  v31 = v25;
  v84 = v15;
  type metadata accessor for SNMLCustomModel(v26);
  v32 = v18;
  v33 = swift_allocObject();
  v34 = v22;
  v35 = v31;
  v36 = sub_1C997FD58(v35, v34, v33);
  sub_1C9A3B76C(v32, v36, &off_1F4937350, v37);
  v83 = v32;
  v82 = v35;
  v38 = sub_1C9A16FF8(v34);
  v39 = v34;
  sub_1C9A18C50(v38, 1u);
  v41 = v40;

  v42 = sub_1C9A92478();
  *&v87 = 0;
  v43 = sub_1C9A75428(v5, v8, v42, &v87);

  if (!v43)
  {
    v45 = v87;
    sub_1C9A913C8();

    swift_willThrow();

    return;
  }

  v81 = v39;
  v44 = v87;
  v46 = sub_1C98C89D4(21, 0);
  type metadata accessor for SNMLModelAdapter(v47);
  v48 = swift_allocObject();
  *(v48 + 16) = v46;

  sub_1C9A3B76C(v43, v48, &off_1F4937370, v49);
  v80 = v43;

  v50 = sub_1C9A92478();
  *&v87 = 0;
  v51 = sub_1C9A7347C(v5, v8, v50, 1, &v87);

  v53 = v87;
  if (!v51)
  {
    v58 = v87;
    sub_1C9A913C8();

    swift_willThrow();

LABEL_31:

    v57 = v81;
    goto LABEL_32;
  }

  v79 = v51;
  type metadata accessor for SNModelMetadataUtils(v52);
  v54 = v53;
  v55 = sub_1C9A3C4BC(v81, 16000);
  if (v3 < 0.0 || v3 >= 1.0)
  {
    sub_1C997FEC8();
    swift_allocError();
    swift_willThrow();

    v57 = v51;
LABEL_32:

    return;
  }

  v59 = v55;
  sub_1C9A76554(v55, 1, 1, &v87);
  v86 = 0;
  if (!sub_1C9A762F8(v5, v8, v12, v84, 0, 0, &v87, &v86))
  {
LABEL_30:
    v77 = v86;
    sub_1C9A913C8();

    swift_willThrow();

    goto LABEL_31;
  }

  v60 = roundf((1.0 - v3) * v41);
  if ((LODWORD(v60) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v60 <= -1.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v60 < 4295000000.0)
  {
    v61 = v60;
    v62 = v86;
    v78 = v61;
    sub_1C9A76640(v59, v61, v41, 1, &v87);
    v86 = 0;
    if (sub_1C9A762F8(v5, v8, v84, v83, 0, 0, &v87, &v86))
    {
      v63 = v86;
      sub_1C9A18184();
      v64 = v59;
      sub_1C9A16824();
      v66 = v65;

      v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      sub_1C9A180B0(v67);
      v69 = v68;

      sub_1C9A76640(v64, v78, v69, 1, &v87);
      v86 = 0;
      if (sub_1C9A762F8(v5, v8, v83, v80, 0, 0, &v87, &v86))
      {
        v70 = v86;
        sub_1C9A17B44();
        sub_1C9A16824();
        v72 = v71;

        v73 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
        sub_1C9A180B0(v73);
        v75 = v74;

        sub_1C9A76640(v64, v78, v75, 1, &v87);
        v86 = 0;
        if (sub_1C9A762F8(v5, v8, v80, v79, 0, 0, &v87, &v86))
        {
          v76 = v86;
          sub_1C9A695C8(v8, 0x4000, 16000, 1);
          sub_1C9A69B8C(v8);

          *v85 = v8;
          *(v85 + 8) = v41;
          return;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1C9979E60()
{
  sub_1C998083C();
  v1 = sub_1C97FB30C();
  v2 = sub_1C9A6AEE4(v1, v0);

  return sub_1C9813734();
}

id sub_1C9979F90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, float a8)
{
  v11 = a3;
  v86[6] = *MEMORY[0x1E69E9840];
  v14 = objc_opt_self();
  v86[0] = 0;
  v16 = sub_1C9A761F8(v14, v86, v15);
  if (!v16)
  {
    v40 = v86[0];
    sub_1C9980900();

    swift_willThrow();
    return v16;
  }

  v82 = a6;
  v17 = v86[0];
  v18 = sub_1C9A92478();
  sub_1C9A6B534(v16, v18);

  sub_1C9A92478();
  v19 = sub_1C99807BC();
  v23 = sub_1C9A72FAC(v19, v20, v21, v22);

  v24 = v86[0];
  v83 = v23;
  if (!v23)
  {
    v41 = v86[0];
    sub_1C9980900();

    swift_willThrow();
LABEL_21:

    return v16;
  }

  v25 = v86[0];
  sub_1C9A92478();
  v26 = sub_1C99807BC();
  v30 = sub_1C9A74DF0(v26, v27, v28, v29);

  v31 = v86[0];
  if (!v30)
  {
    v42 = v86[0];
    sub_1C9980900();

    swift_willThrow();
    v43 = v83;
LABEL_11:

    goto LABEL_21;
  }

  v32 = v86[0];
  sub_1C9A92478();
  v33 = sub_1C99807BC();
  v37 = sub_1C9A75428(v33, v34, v35, v36);

  if (!v37)
  {
    v44 = v86[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_21;
  }

  v38 = v86[0];
  sub_1C9A3B76C(v37, a1, a2, v39);
  if (!v8)
  {
    v45 = sub_1C9A92478();
    v86[0] = 0;
    v46 = sub_1C9A7347C(v14, v16, v45, 1, v86);

    v47 = v86[0];
    if (!v46)
    {
      v50 = v86[0];
      sub_1C9980900();

      swift_willThrow();
LABEL_20:

      goto LABEL_21;
    }

    if (a8 < 0.0 || a8 >= 1.0)
    {
      sub_1C997FF3C();
      sub_1C97A7A80(&type metadata for CreateFeaturePrintUtils.DomainError);
      swift_willThrow();
      v49 = v47;

      return v16;
    }

    v52 = roundf((1.0 - a8) * v11);
    if ((LODWORD(v52) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v52 > -1.0)
    {
      if (v52 < 4295000000.0)
      {
        if ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (a7 > -1.0)
          {
            v81 = v37;
            if (a7 < 4294967300.0)
            {
              v53 = v86[0];
              sub_1C9A76554(a7, 1, 1, v86);
              v54 = sub_1C993AC94();
              if (sub_1C9A762F8(v54, v55, v83, v30, 0, 0, v56, v57))
              {
                v58 = v85;
                sub_1C9A76640(a7, v52, v11, 1, v86);
                v59 = sub_1C993AC94();
                if (sub_1C9A762F8(v59, v60, v30, v37, 0, 0, v61, v62))
                {
                  type metadata accessor for SNUtils(v63);
                  ObjectType = swift_getObjectType();
                  v80 = *(a2 + 16);
                  v65 = v85;
                  v66 = v80(ObjectType, a2);
                  sub_1C9A16DBC(v66);

                  sub_1C9A16824();
                  v68 = v67;

                  v69 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
                  sub_1C9A180B0(v69);
                  v71 = v70;

                  if (v71)
                  {
                    v72 = v71;
                  }

                  else
                  {
                    v72 = 512;
                  }

                  sub_1C9A76640(a7, v52, v72, 1, v86);
                  v73 = sub_1C993AC94();
                  v37 = v46;
                  if (sub_1C9A762F8(v73, v74, v81, v46, 0, 0, v75, v76))
                  {
                    if (a7 > -9.22337204e18)
                    {
                      if (a7 < 9.22337204e18)
                      {
                        v77 = v85;
                        sub_1C9A695C8(v16, v82, a7, 1);
                        sub_1C9A69B8C(v16);

                        goto LABEL_7;
                      }

LABEL_47:
                      __break(1u);
                    }

LABEL_46:
                    __break(1u);
                    goto LABEL_47;
                  }

                  v79 = v85;
                  sub_1C97FB30C();
                  sub_1C9A913C8();

                  swift_willThrow();
                  goto LABEL_20;
                }
              }

              v78 = v85;
              sub_1C9A913C8();

              swift_willThrow();
              v43 = v46;
              goto LABEL_11;
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_7:
  return v16;
}

uint64_t sub_1C997A5C0(uint64_t a1, uint64_t a2, double a3)
{
  switch(a1)
  {
    case 1:
      result = type metadata accessor for SNVGGishExtractor(a3);
      break;
    case 2:
      result = type metadata accessor for SNLogMelSpectrogramExtractor(a3);
      break;
    case 3:
      result = type metadata accessor for SNSoundPrintAExtractor(a3);
      break;
    case 4:
    case 5:
      result = type metadata accessor for SNSoundPrintKExtractor(a3);
      break;
    case 6:
      result = type metadata accessor for SNLanguageAlignedAudioEmbeddingFeatureExtractor(a3);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_1C997A65C(uint64_t a1)
{
  v1 = 0xD000000000000012;
  if (a1 != 4)
  {
    v1 = 0;
  }

  if (a1 == 5)
  {
    return 0xD000000000000014;
  }

  else
  {
    return v1;
  }
}

uint64_t *sub_1C997A6AC@<X0>(uint64_t *a1@<X8>, float a2@<S1>)
{
  v4 = v2;
  sub_1C99808C0();
  v7 = swift_allocObject();
  result = sub_1C997A714(a2);
  if (!v3)
  {
    a1[3] = v4;
    a1[4] = &off_1F49448B8;
    *a1 = v7;
  }

  return result;
}

uint64_t *sub_1C997A714(float a1)
{
  v4 = *v1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = sub_1C97C1E20();
  v8 = v7;

  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = v6;
    *(v1 + 6) = v8;
  }

  return v1;
}

void sub_1C997A7F8(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *&a2;
  type metadata accessor for SNUtils(a2);
  v5 = sub_1C9A17870();
  sub_1C9A92348();
  v7 = objc_allocWithZone(type metadata accessor for _SNVGGishFrontEndProcessingCustomModel(v6));
  v8 = sub_1C99CD748(v5);
  if (v2)
  {
  }

  else
  {
    v10 = v8;
    type metadata accessor for SNMLCustomModel(v9);
    v11 = swift_allocObject();
    v12 = v5;
    v13 = v10;
    sub_1C997FD58(v13, v12, v11);
    type metadata accessor for SNModelMetadataUtils(v14);
    v15 = sub_1C9A3C4BC(v12, 16000);
    sub_1C9A17B4C();
    sub_1C9A16824();
    v17 = v16;

    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    sub_1C9A180B0(v18);
    v20 = v19;

    v22 = sub_1C9979F90(v21, &off_1F4937350, v20, 0x5065727574616546, 0xEF786F42746E6972, 0x4000, v15, v3);

    *a1 = v22;
    *(a1 + 8) = v20;
  }
}

void sub_1C997A9F8(double a1)
{
  type metadata accessor for SNUtils(a1);
  v1 = sub_1C9A17870();
  v2 = sub_1C9A16FF8(v1);
  sub_1C9A18C50(v2, 1u);

  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C9A180B0(v3);
  v5 = v4;

  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C9A93168();
  }
}

double sub_1C997AAA8(double a1)
{
  sub_1C997A9F8(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C97B79FC(0, 1, 0);
  v7 = v12;
  v9 = *(v12 + 16);
  v8 = *(v12 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_1C97B79FC((v8 > 1), v9 + 1, 1);
    v7 = v12;
  }

  *(v7 + 16) = v9 + 1;
  v10 = (v7 + 24 * v9);
  v10[4] = v2;
  v10[5] = v4;
  v10[6] = v6;
  return sub_1C99808E8(v7);
}

uint64_t *sub_1C997ABA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, double a6, float a7)
{
  v10 = a4;
  v14 = *v7;
  v15 = HIDWORD(a4);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = v10;
  *(v16 + 44) = v15;
  *(v16 + 48) = a5;
  *(v16 + 56) = a7;
  *(v16 + 64) = v14;
  swift_unknownObjectRetain();
  v17 = sub_1C97C1E20();
  if (v23)
  {
    swift_unknownObjectRelease();

    type metadata accessor for SNSoundPrintExtractorBase(v19);
    sub_1C97FB318();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v17;
    v21 = v18;
    swift_unknownObjectRelease();

    v7[2] = v20;
    *(v7 + 6) = v21;
  }

  return v7;
}

id sub_1C997ACDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, CMTimeValue a3@<X2>, uint64_t a4@<X3>, CMTimeEpoch a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v7 = *&a7;
  type metadata accessor for SNModelMetadataUtils(a7);
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 16);
  v13 = v12(ObjectType, a2);
  v42 = sub_1C9A3C4BC(v13, 16000);

  v14 = v12(ObjectType, a2);
  v15 = [v14 inputDescriptionsByName];

  sub_1C97BD318(v16, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v17 = sub_1C9A92328();

  v18 = sub_1C98BBCAC(v17);

  v19 = [v18 multiArrayConstraint];

  if (!v19)
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  type metadata accessor for SNUtils(v20);
  v21 = sub_1C9A16F28(v19);
  v23 = v22;

  v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  sub_1C97CDE50(v24);
  v26 = v25;

  time.value = a3;
  *&time.timescale = a4;
  time.epoch = a5;
  CMTimeConvertScale(&v43, &time, v26, kCMTimeRoundingMethod_RoundTowardZero);
  value = v43.value;
  if (v43.value < v21 || v43.value - v21 >= v23)
  {
    type metadata accessor for SNError(v27);
    time.value = 0;
    *&time.timescale = 0xE000000000000000;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000015, 0x80000001C9ADB420);
    v43.value = value;
    v30 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v30);

    MEMORY[0x1CCA90230](0xD000000000000018, 0x80000001C9ADB440);
    v43.value = v21;
    v31 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v31);

    result = MEMORY[0x1CCA90230](544175136, 0xE400000000000000);
    if (__OFADD__(v21, v23))
    {
      __break(1u);
      return result;
    }

    v43.value = v21 + v23;
    v32 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v32);

    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, time.value, *&time.timescale);

    return swift_willThrow();
  }

  v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v34);
  v36 = v35;

  result = sub_1C9979F90(a1, a2, v36, 0x5065727574616546, 0xEF786F42746E6972, 0x4000, v42, v7);
  if (!v39)
  {
    *a6 = result;
    *(a6 + 8) = v36;
  }

  return result;
}

uint64_t sub_1C997B0EC()
{
  sub_1C998083C();
  v1 = sub_1C97FB30C();
  v2 = sub_1C9A6AEE4(v1, v0);

  return sub_1C9813734();
}

void sub_1C997B148(uint64_t a1@<X8>)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C997B1CC(&v3, a1);
  objc_autoreleasePoolPop(v2);
}

void sub_1C997B1CC(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1C98C89D4(33, 0);
  v6 = v2;
  if (!v2)
  {
    v7 = v5;
    v8 = [v5 modelDescription];
    v9 = [v8 inputDescriptionsByName];

    sub_1C97BD318(v10, 0, &qword_1EC3C54D0, 0x1E695FE50);
    v11 = sub_1C9A92328();

    v12 = sub_1C98BBCAC(v11);

    if (v12)
    {
      v13 = [v12 multiArrayConstraint];

      if (v13)
      {
        v14 = [v13 shapeConstraint];

        if (v14)
        {
          type metadata accessor for SNUtils(v15);
          sub_1C9A17BD8(v14, 16000);
          v17 = v16;
          v26 = sub_1C97C6E9C();

          v18 = *&v26[OBJC_IVAR____SNTimeDurationConstraint_impl];
          v19 = *&v26[OBJC_IVAR____SNTimeDurationConstraint_impl + 8];
          v20 = *&v26[OBJC_IVAR____SNTimeDurationConstraint_impl + 16];
          v21 = *&v26[OBJC_IVAR____SNTimeDurationConstraint_impl + 24];
          v22 = *&v26[OBJC_IVAR____SNTimeDurationConstraint_impl + 32];
          v23 = *&v26[OBJC_IVAR____SNTimeDurationConstraint_impl + 40];
          v24 = v26[OBJC_IVAR____SNTimeDurationConstraint_impl + 48];
          sub_1C97C6634(v18, v19, v20, v21, v22, v23, v24);

          *a2 = v18;
          *(a2 + 8) = v19;
          *(a2 + 16) = v20;
          *(a2 + 24) = v21;
          *(a2 + 32) = v22;
          *(a2 + 40) = v23;
          *(a2 + 48) = v24;
          return;
        }
      }
    }

    sub_1C97A8E8C();
    v6 = swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  *a1 = v6;
}

uint64_t sub_1C997B3C4()
{
  sub_1C99808C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C997B41C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>, float a7@<S1>)
{
  sub_1C99808C0();
  swift_allocObject();
  v15 = sub_1C97C926C();
  result = sub_1C997B4C8(v15, a1, a2, a3, a4, v16, a7);
  if (!v8)
  {
    a6[3] = v7;
    a6[4] = a5;
    *a6 = v7;
  }

  return result;
}

uint64_t sub_1C997B4C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, float a7)
{
  v12 = sub_1C98C89D4(a4, a5);
  if (v7)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v12;
    type metadata accessor for SNMLModelAdapter(v13);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1C997ABA8(v15, &off_1F4937370, a1, a2, a3, v16, a7);
  }

  return sub_1C9813734();
}

uint64_t sub_1C997B60C(uint64_t a1, char a2)
{
  sub_1C997B794(a1, a2 & 1);
  if (!v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      swift_once();
    }

    v6 = swift_allocObject();
    *(v6 + 16) = 39;
    MEMORY[0x1EEE9AC00](v6);

    v3 = sub_1C97E2E88();

    objc_autoreleasePoolPop(v5);
    objc_autoreleasePoolPop(v4);
  }

  return v3;
}

uint64_t sub_1C997B794(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && a1 != 7)
  {
    sub_1C997FFBC();
    sub_1C97A7A80(&type metadata for SNLanguageAlignedAudioEmbeddingFeatureExtractor.DomainError);
    *v2 = 3;
    swift_willThrow();
  }

  return 39;
}

void sub_1C997B7F0()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C9871794();
  sub_1C997B86C(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
}

void sub_1C997B86C(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t **a3@<X8>)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a1 + 16))(ObjectType, a1);
  v9 = sub_1C989687C(v8);
  v10 = v3;

  if (v3)
  {
    goto LABEL_14;
  }

  if (!*(v9 + 16))
  {

    goto LABEL_13;
  }

  v12 = *(v9 + 56);
  v11 = *(v9 + 64);
  v13 = *(v9 + 72);

  sub_1C985DA88(v12, v11, v13);

  if (v13 >= 0xFE)
  {
    sub_1C99511FC(v12, v11, v13);
LABEL_13:
    sub_1C997FFBC();
    v10 = swift_allocError();
    *v19 = 0;
    swift_willThrow();
LABEL_14:
    *a2 = v10;
    return;
  }

  if (!v13)
  {
    v20 = *(v11 + 16);
    if (v20 > 2)
    {
      v21 = (v11 + 16 * v20);
      a2 = *v21;
      v18 = v21[1];
      sub_1C99511FC(v12, v11, 0);
LABEL_17:
      *a3 = a2;
      a3[1] = v18;
      return;
    }

    sub_1C997FFBC();
    v10 = swift_allocError();
    *v26 = 0;
    swift_willThrow();
    v23 = v12;
    v24 = v11;
    v25 = 0;
LABEL_20:
    sub_1C99511FC(v23, v24, v25);
    goto LABEL_14;
  }

  if (v13 != 1)
  {
    goto LABEL_13;
  }

  if (*(v11 + 16) != 1 || (v14 = *(v11 + 32), v17 = *(v14 + 16), v15 = v14 + 16, v16 = v17, v17 < 3))
  {
    sub_1C997FFBC();
    v10 = swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = v12;
    v24 = v11;
    v25 = 1;
    goto LABEL_20;
  }

  a2 = *(v15 + 8 * v16);
  sub_1C99511FC(v12, v11, 1u);
  v18 = (a2 + 1);
  if (!__OFADD__(a2, 1))
  {
    if (v18 < a2)
    {
      __break(1u);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  __break(1u);
}

void sub_1C997BAA0()
{
  sub_1C997B7F0();
  if (v0)
  {
    return;
  }

  if (v1 < 1)
  {
    if (v2 < 1)
    {
      return;
    }
  }

  else
  {
    sub_1C9835378();
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v4 + 512;
    if (__OFADD__(v4, 512))
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v3 <= 0)
    {
      v7 = 0;
      goto LABEL_12;
    }
  }

  sub_1C9835378();
  if (!v5)
  {
    goto LABEL_17;
  }

  v9 = __OFADD__(v8, 512);
  v7 = v8 + 512;
  if (v9)
  {
LABEL_18:
    __break(1u);
    return;
  }

LABEL_12:
  if (v7 < v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

double sub_1C997BB2C@<D0>(uint64_t a1@<X8>)
{
  sub_1C997BAA0();
  if (!v1)
  {
    sub_1C9A93168();
    sub_1C9A93168();
    sub_1C993AE54();
    sub_1C9A92F18();
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = 1;
  }

  return result;
}

double sub_1C997BBC8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C997B60C(a1, a2 & 1);
  sub_1C997BB2C(v8);
  swift_unknownObjectRelease();
  v4 = v9;
  result = *v8;
  v6 = v8[1];
  v7 = v8[2];
  *a3 = v8[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  *(a3 + 48) = v4;
  return result;
}

void *sub_1C997BC70(__int128 *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, double a7)
{
  v98 = a6;
  *&v97 = a5;
  v96 = a4;
  v95 = a1;
  v89 = sub_1C97A2CEC(&unk_1EC3CE960, &unk_1C9AA7D70);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v73 - v10;
  v92 = sub_1C97A2CEC(&unk_1EC3C9A60, &unk_1C9ABD950);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v73 - v11;
  v94 = sub_1C97A2CEC(&unk_1EC3CE970, &qword_1C9AA7D80);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v13 = &v73 - v12;
  v14 = sub_1C97A2CEC(&qword_1EC3C9A70, &qword_1C9AA7D88);
  v86 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3CE980, &qword_1C9ABD960);
  v87 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  v20 = sub_1C97A2CEC(&unk_1EC3CE988, &unk_1C9ABD968);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v24 = type metadata accessor for SNLanguageAlignedAudioEmbeddingFeatureExtractor(v23);
  v25 = a2;
  v26 = v24;
  v27 = v109;
  v28 = sub_1C997B60C(v25, a3 & 1);
  if (v27)
  {
    return v26;
  }

  v30 = v28;
  v85 = v13;
  v109 = v16;
  v82 = v19;
  v83 = v14;
  v84 = v17;
  v81 = v20;
  v31 = v29;
  sub_1C997BAA0();
  v79 = v31;
  v78 = v22;
  v80 = v30;
  sub_1C9A93168();
  sub_1C9A93168();
  sub_1C9A92F18();
  v26 = v100;
  if ((sub_1C9A92EF8() & 1) == 0)
  {
    sub_1C997FFBC();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return v26;
  }

  result = sub_1C9A930F8();
  v33 = result * a7;
  if (COERCE__INT64(fabs(v33)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  v34 = v95;
  if (v33 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v35 = result - v33;
  if (__OFSUB__(result, v33))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = (result - 64);
  if (__OFSUB__(result, 512))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    v98 = 0;
    goto LABEL_13;
  }

  v37 = v36 / 0xA0;
  result = (160 * v37 + 512);
  if (!__OFADD__(160 * v37, 512))
  {
    v98 = v37 + 1;
LABEL_13:
    v39 = v35 / 160;
    v40 = sub_1C9A93168();
    v42 = v41;
    v44 = v43;
    v96 = v39;
    v45 = sub_1C9A93168();
    v47 = v46;
    v49 = v48;
    v50 = v34[1];
    v101 = *v34;
    v102 = v50;
    v51 = v34[3];
    v103 = v34[2];
    v104 = v51;
    v105[0] = 0x40467A0000;
    v105[1] = 0x45F8700042480000;
    v105[2] = 0x38D1B71700000001;
    v106 = 1;
    v97 = xmmword_1C9ABD5F0;
    v107 = xmmword_1C9ABD5F0;
    v108 = 0x100000000;
    sub_1C97DAE24(v105);
    v74 = v47;
    v73 = v45;
    v75 = v49;
    v76 = v42;
    v77 = v40;
    v95 = v44;
    v52 = sub_1C97AC6A0();

    v99 = v52;
    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    v53 = sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
    sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
    v54 = v88;
    sub_1C9A91F68();

    v55 = v89;
    v56 = v98;
    *(v54 + *(v89 + 60)) = v98;
    *(v54 + *(v55 + 64)) = v96;
    *(v54 + *(v55 + 68)) = v53;
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    sub_1C9813064(&qword_1EC3C4FB0, &unk_1EC3CE960, &unk_1C9AA7D70);
    v57 = v90;
    sub_1C9A91F68();
    sub_1C97DA1E0(v54, &unk_1EC3CE960, &unk_1C9AA7D70);
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    *(v58 + 24) = 0x40467A0000;
    *(v58 + 32) = 0x45F8700042480000;
    *(v58 + 40) = 0x38D1B71700000001;
    *(v58 + 48) = 1;
    *(v58 + 52) = v97;
    *(v58 + 68) = 0x100000000;
    sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
    v59 = v85;
    v60 = v92;
    sub_1C9A91C48();

    (*(v91 + 8))(v57, v60);
    v61 = v109;
    sub_1C98B2FA8();
    LODWORD(v52) = v76;
    v98 = HIDWORD(v76);
    LODWORD(v54) = v74;
    v62 = HIDWORD(v74);
    v63 = (*(v93 + 8))(v59, v94);
    sub_1C97BD318(v63, 0, &unk_1EC3C5500, 0x1E695FED0);
    sub_1C9813064(&unk_1EC3C4AD0, &qword_1EC3C9A70, &qword_1C9AA7D88);
    v64 = v82;
    v65 = v83;
    sub_1C9A92048();
    (*(v86 + 8))(v61, v65);
    v66 = swift_allocObject();
    *(v66 + 16) = v77;
    v67 = v98;
    *(v66 + 24) = v52;
    *(v66 + 28) = v67;
    v68 = v73;
    *(v66 + 32) = v95;
    *(v66 + 40) = v68;
    *(v66 + 48) = v54;
    *(v66 + 52) = v62;
    *(v66 + 56) = v75;
    v69 = v78;
    (*(v87 + 32))(v78, v64, v84);
    v70 = v81;
    v71 = (v69 + *(v81 + 52));
    *v71 = sub_1C979B154;
    v71[1] = 0;
    v72 = (v69 + *(v70 + 56));
    *v72 = sub_1C99801F4;
    v72[1] = v66;
    sub_1C9813064(qword_1EC3C53E0, &unk_1EC3CE988, &unk_1C9ABD968);
    v26 = sub_1C9A91F28();
    swift_unknownObjectRelease();
    sub_1C97DA1E0(v69, &unk_1EC3CE988, &unk_1C9ABD968);
    return v26;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t *sub_1C997C784(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, double a9)
{
  v104 = a8;
  v103 = a7;
  v107 = a6;
  v105 = a4;
  *&v106 = a5;
  v102 = a1;
  v96 = sub_1C97A2CEC(&unk_1EC3CE960, &unk_1C9AA7D70);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v82 - v13;
  v99 = sub_1C97A2CEC(&unk_1EC3C9A60, &unk_1C9ABD950);
  sub_1C97AE9C8();
  v98 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v82 - v16;
  v101 = sub_1C97A2CEC(&unk_1EC3CE970, &qword_1C9AA7D80);
  sub_1C97AE9C8();
  v100 = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v82 - v19;
  v21 = sub_1C97A2CEC(&qword_1EC3C9A70, &qword_1C9AA7D88);
  sub_1C97AE9C8();
  v93 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - v24;
  v26 = sub_1C97A2CEC(&qword_1EC3CE980, &qword_1C9ABD960);
  sub_1C97AE9C8();
  v94 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v82 - v29;
  v31 = sub_1C97A2CEC(&unk_1EC3CE988, &unk_1C9ABD968);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v82 - v33;
  v35 = a2;
  v36 = v108;
  v37 = v114;
  v38 = sub_1C997B60C(v35, a3 & 1);
  if (v37)
  {
    return v36;
  }

  v40 = v38;
  v108 = v20;
  v114 = v25;
  v90 = v30;
  v91 = v21;
  v92 = v26;
  v89 = v31;
  v41 = v39;
  sub_1C997BAA0();
  v87 = v41;
  v86 = v34;
  v88 = v40;
  sub_1C9A93168();
  sub_1C9A93168();
  sub_1C993AE54();
  sub_1C9A92F18();
  v36 = &v113;
  if ((sub_1C9A92EF8() & 1) == 0)
  {
    sub_1C997FFBC();
    sub_1C97A7A80(&type metadata for SNLanguageAlignedAudioEmbeddingFeatureExtractor.DomainError);
    *v49 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return v36;
  }

  result = sub_1C9A930F8();
  v43 = result * a9;
  if (COERCE__INT64(fabs(v43)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  v44 = v104;
  v45 = v103;
  if (v43 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v43 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v46 = result - v43;
  if (__OFSUB__(result, v43))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = (result - 64);
  if (__OFSUB__(result, 512))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    v107 = 0;
    goto LABEL_13;
  }

  v48 = v47 / 0xA0;
  result = (160 * v48 + 512);
  if (!__OFADD__(160 * v48, 512))
  {
    v107 = v48 + 1;
LABEL_13:
    v50 = v46 / 160;
    v85 = sub_1C9A93168();
    v52 = v51;
    v54 = v53;
    v105 = v50;
    v55 = sub_1C9A93168();
    v57 = v56;
    v59 = v58;
    v109[0] = 0x40467A0000;
    v109[1] = 0x45F8700042480000;
    v109[2] = 0x38D1B71700000001;
    v110 = 1;
    v106 = xmmword_1C9ABD5F0;
    v111 = xmmword_1C9ABD5F0;
    v112 = 0x100000000;
    (*(v44 + 8))(v109, v45, v44);
    v83 = v57;
    v84 = v55;
    v102 = v59;
    v103 = v52;
    v104 = v54;
    sub_1C97AC6A0();
    sub_1C97FB30C();

    v109[0] = 0;
    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    v60 = sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
    sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
    v61 = v95;
    sub_1C9A91F68();

    v62 = v96;
    v63 = v107;
    *(v61 + *(v96 + 60)) = v107;
    *(v61 + *(v62 + 64)) = v105;
    *(v61 + *(v62 + 68)) = v60;
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    sub_1C9813064(&qword_1EC3C4FB0, &unk_1EC3CE960, &unk_1C9AA7D70);
    v64 = v97;
    sub_1C9A91F68();
    sub_1C97DA1E0(v61, &unk_1EC3CE960, &unk_1C9AA7D70);
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    *(v65 + 24) = 0x40467A0000;
    *(v65 + 32) = 0x45F8700042480000;
    *(v65 + 40) = 0x38D1B71700000001;
    *(v65 + 48) = 1;
    *(v65 + 52) = v106;
    *(v65 + 68) = 0x100000000;
    sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
    v66 = v99;
    sub_1C9A91C48();

    (*(v98 + 8))(v64, v66);
    v67 = v114;
    sub_1C98B2FA8();
    v68 = v103;
    v107 = HIDWORD(v103);
    LODWORD(v57) = v83;
    v69 = HIDWORD(v83);
    v70 = sub_1C998086C();
    v72 = v71(v70);
    sub_1C97BD318(v72, 0, &unk_1EC3C5500, 0x1E695FED0);
    sub_1C9813064(&unk_1EC3C4AD0, &qword_1EC3C9A70, &qword_1C9AA7D88);
    v73 = v90;
    v74 = v91;
    sub_1C9A92048();
    (*(v93 + 8))(v67, v74);
    v75 = swift_allocObject();
    *(v75 + 16) = v85;
    v76 = v107;
    *(v75 + 24) = v68;
    *(v75 + 28) = v76;
    v77 = v84;
    *(v75 + 32) = v104;
    *(v75 + 40) = v77;
    *(v75 + 48) = v57;
    *(v75 + 52) = v69;
    *(v75 + 56) = v102;
    v78 = v86;
    (*(v94 + 32))(v86, v73, v92);
    v79 = v89;
    v80 = (v78 + *(v89 + 52));
    *v80 = sub_1C979B154;
    v80[1] = 0;
    v81 = (v78 + *(v79 + 56));
    *v81 = sub_1C998075C;
    v81[1] = v75;
    sub_1C9813064(qword_1EC3C53E0, &unk_1EC3CE988, &unk_1C9ABD968);
    v36 = sub_1C9A91F28();
    swift_unknownObjectRelease();
    sub_1C97DA1E0(v78, &unk_1EC3CE988, &unk_1C9ABD968);
    return v36;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C997D1BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1C97A2CEC(&qword_1EC3C7C70, &qword_1C9A9D640);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C9A9EE60;
  *(v5 + 32) = 1;
  *(v5 + 40) = a2;
  *(v5 + 48) = *(a3 + 4);

  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C9813064(&unk_1EC3C4A40, &qword_1EC3C9AA0, &qword_1C9AA0690);
  return sub_1C9A91B88();
}

void sub_1C997D2BC(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 featureNames];
  v5 = sub_1C9A92B28();

  sub_1C98BBD24(v5);
  v7 = v6;

  if (v7 && (v8 = sub_1C9A92478(), , v9 = [v3 featureValueForName_], v8, v9) && (v10 = objc_msgSend(v9, sel_multiArrayValue), v9, v10))
  {
    *a2 = v10;
  }

  else
  {
    sub_1C997FFBC();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }
}

void **sub_1C997D3E8@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void ***a6@<X8>)
{
  v7 = a4;
  v10 = HIDWORD(a4);
  v11 = *a1;
  v12 = *a2;
  v13 = a2[2];
  v15 = *(a2 + 2);
  v14 = *(a2 + 3);
  *a2 = sub_1C9A93118();
  *(a2 + 2) = v16;
  *(a2 + 3) = v17;
  a2[2] = v18;
  v20 = type metadata accessor for SNFeaturePrint(v19);
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR___SNFeaturePrint_impl];
  *v22 = v12;
  *(v22 + 2) = v15;
  *(v22 + 3) = v14;
  *(v22 + 2) = v13;
  *(v22 + 3) = a3;
  *(v22 + 8) = v7;
  *(v22 + 9) = v10;
  *(v22 + 5) = a5;
  *(v22 + 6) = 6;
  *(v22 + 7) = v11;
  v26.receiver = v21;
  v26.super_class = v20;
  v23 = v11;
  result = objc_msgSendSuper2(&v26, sel_init);
  *a6 = result;
  return result;
}

uint64_t sub_1C997D634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

id sub_1C997D6C4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl;
  if (sub_1C997A5C0(*(v3 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl), a2, a3))
  {
    (*(v5 + 24))(&v18, *(v4 + 8), *(v4 + 16));
    v6 = *&v18;
    v16 = v18;
    v17 = v19;
    v7 = v20;
    v8 = v21;
    v9 = v22;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v17 = 0u;
    v6 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  v10 = type metadata accessor for _SNTimeDurationConstraint(v6);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____SNTimeDurationConstraint_impl];
  *v12 = v16;
  *(v12 + 1) = v17;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  v12[48] = v9;
  v23.receiver = v11;
  v23.super_class = v10;
  v13 = objc_msgSendSuper2(&v23, sel_init);
  *(&v19 + 1) = v10;
  *&v18 = v13;
  v14 = objc_allocWithZone(SNTimeDurationConstraint);
  return sub_1C997FCCC(&v18);
}

void sub_1C997DAE0(float a1)
{
  if (a1 >= 0.0 && a1 < 1.0)
  {
    *(v1 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl + 20) = a1;
  }

  else
  {
    sub_1C9980194();
    v3 = sub_1C97A7A80(&type metadata for SNCreateFeaturePrintRequest.DomainError);
    sub_1C9887D54(v3, v4);
    swift_willThrow();
  }
}

void sub_1C997DC00(uint64_t a1, uint64_t a2, CMTimeEpoch a3, double a4)
{
  v5 = v4;
  v7 = type metadata accessor for SNUtils(a4);
  v10 = sub_1C997D6C4(v7, v8, v9);
  v11 = sub_1C9871794();
  v13 = sub_1C9A17398(v11, v12, a3, v10);
  v15 = v14;
  v17 = v16;

  v18 = (v5 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl);
  v18[3] = v13;
  v18[4] = v15;
  v18[5] = v17;
}

double sub_1C997DC98(double a1)
{
  v2 = (v1 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl);
  v3 = *v2;
  v4 = *(v2 + 5);
  v5 = v2[3];
  v6 = v2[5];
  type metadata accessor for SNFeaturePrintExtractor(a1);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = v3;
  *(v7 + 80) = v4;
  *(v7 + 84) = v5;
  result = *(v2 + 4);
  *(v7 + 92) = result;
  *(v7 + 100) = v6;
  *(v7 + 112) = 0;
  return result;
}

id sub_1C997DD68()
{
  v0 = objc_allocWithZone(sub_1C97FB3E4());
  sub_1C97C926C();
  return sub_1C997DD94();
}

id sub_1C997DD94()
{
  sub_1C97FB30C();
  ObjectType = swift_getObjectType();
  if (sub_1C997A5C0(v1, v3, v4))
  {
    v6 = (*(v5 + 16))();
    v9 = HIDWORD(v7);
  }

  else
  {
    v6 = *MEMORY[0x1E6960C70];
    LODWORD(v7) = *(MEMORY[0x1E6960C70] + 8);
    LODWORD(v9) = *(MEMORY[0x1E6960C70] + 12);
    v8 = *(MEMORY[0x1E6960C70] + 16);
  }

  v13 = 1;
  v10 = &v0[OBJC_IVAR___SNCreateFeaturePrintRequest_impl];
  *v10 = v1;
  v10[1] = 0;
  sub_1C99808A4(v6, v7, v8, v9);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_1C997DE68(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjectType());
  v5 = sub_1C997DF6C(a1, a2, 0);
  swift_getObjectType();
  sub_1C998092C();
  swift_deallocPartialClassInstance();
  return v5;
}

id sub_1C997DF6C(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  if (a1 == 6)
  {
    type metadata accessor for SNLanguageAlignedAudioEmbeddingFeatureExtractor(v10);
    sub_1C997B794(a2, a3 & 1);
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1C998092C();
    return swift_deallocPartialClassInstance();
  }

  if ((a3 & 1) == 0)
  {
    sub_1C9980194();
    sub_1C97A7A80(&type metadata for SNCreateFeaturePrintRequest.DomainError);
    *v16 = 2;
    swift_willThrow();
    goto LABEL_8;
  }

LABEL_5:
  if (sub_1C997A5C0(a1, v8, v10))
  {
    v12 = (*(v11 + 16))();
    v15 = HIDWORD(v13);
  }

  else
  {
    v12 = *MEMORY[0x1E6960C70];
    LODWORD(v13) = *(MEMORY[0x1E6960C70] + 8);
    LODWORD(v15) = *(MEMORY[0x1E6960C70] + 12);
    v14 = *(MEMORY[0x1E6960C70] + 16);
  }

  v20 = a3 & 1;
  v18 = &v3[OBJC_IVAR___SNCreateFeaturePrintRequest_impl];
  *v18 = a1;
  *(v18 + 1) = a2;
  sub_1C99808A4(v12, v13, v14, v15);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

void *SNCreateFeaturePrintRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C97CA608(OBJC_IVAR___SNCreateFeaturePrintRequest_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNCreateFeaturePrintRequest_impl];
  v6 = v8[2];
  *v5 = v8[1];
  v5[1] = v6;
  v5[2] = v8[3];
  v8[0].receiver = v4;
  v8[0].super_class = ObjectType;
  result = [(objc_super *)v8 init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNCreateFeaturePrintRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97E82EC(a1, &v8, &unk_1EC3C5E60, qword_1C9A9AE10);
  if (v9)
  {
    sub_1C97A2D34(&v8, v7);
    sub_1C97BD360(v7, v6);
    if (swift_dynamicCast())
    {
      v3 = sub_1C9978734(v1 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl, v5 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl);
    }

    else
    {
      v3 = 0;
    }

    sub_1C97A592C(v7);
  }

  else
  {
    return 0;
  }

  return v3;
}

id SNCreateFeaturePrintRequest.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1C97FB3E4());
  sub_1C97C926C();
  return SNCreateFeaturePrintRequest.init(coder:)();
}

id SNCreateFeaturePrintRequest.init(coder:)()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  sub_1C97A202C(1819307369, 0xE400000000000000);
  v2 = objc_allocWithZone(ObjectType);
  v3 = &v2[OBJC_IVAR___SNCreateFeaturePrintRequest_impl];
  v4 = v9;
  *v3 = v8;
  *(v3 + 1) = v4;
  *(v3 + 2) = v10;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  swift_getObjectType();
  sub_1C97FB318();
  sub_1C998092C();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1C997E598(__int128 *a1)
{
  if (*&v1[OBJC_IVAR___SNCreateFeaturePrintRequest_impl] == 6)
  {
    sub_1C997BC70(a1, *&v1[OBJC_IVAR___SNCreateFeaturePrintRequest_impl + 8], v1[OBJC_IVAR___SNCreateFeaturePrintRequest_impl + 16], *&v1[OBJC_IVAR___SNCreateFeaturePrintRequest_impl + 24], *&v1[OBJC_IVAR___SNCreateFeaturePrintRequest_impl + 32], *&v1[OBJC_IVAR___SNCreateFeaturePrintRequest_impl + 40], *&v1[OBJC_IVAR___SNCreateFeaturePrintRequest_impl + 20]);
  }

  else
  {
    v27 = v1;
    v2 = MGGetProductType();
    sub_1C989B2F8(v2, v31);
    if (v31[6])
    {
      v3 = v31[0];

      sub_1C989ACF0(v3, v32);
      v4 = v35;
      v36 = v33;

      sub_1C97DA1E0(&v36, &qword_1EC3C7DB0, &unk_1C9AB2780);
      v38 = v34;
      sub_1C97DA1E0(&v38, &qword_1EC3C7DB8, &qword_1C9AA0740);

      v4(__dst, v5);

      v6 = __dst[0];
      v7 = __dst[1];
      v8 = __dst[2];
      v9 = __dst[3];
      v11 = __dst[4];
      v10 = __dst[5];
      v12 = __dst[6];
      v13 = BYTE1(__dst[6]);
      v14 = BYTE2(__dst[6]);
      v15 = BYTE3(__dst[6]);
      v16 = BYTE4(__dst[6]);
      v17 = BYTE5(__dst[6]);
      v18 = __dst[7];
      v19 = __dst[8];
    }

    else
    {
      if (qword_1EC3C5E08 != -1)
      {
        swift_once();
      }

      memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
      v26 = __dst[7];
      v24 = BYTE5(__dst[6]);
      v25 = __dst[8];
      v22 = BYTE3(__dst[6]);
      v23 = BYTE4(__dst[6]);
      v14 = BYTE2(__dst[6]);
      v13 = BYTE1(__dst[6]);
      v12 = __dst[6];
      v11 = __dst[4];
      v10 = __dst[5];
      v8 = __dst[2];
      v9 = __dst[3];
      v6 = __dst[0];
      v7 = __dst[1];
      sub_1C97A6264(__dst, v29);
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v19 = v25;
      v18 = v26;
    }

    __dst[0] = v6;
    __dst[1] = v7;
    __dst[2] = v8;
    __dst[3] = v9;
    __dst[4] = v11;
    __dst[5] = v10;
    LOBYTE(__dst[6]) = v12;
    BYTE1(__dst[6]) = v13;
    BYTE2(__dst[6]) = v14;
    BYTE3(__dst[6]) = v15;
    BYTE4(__dst[6]) = v16;
    BYTE5(__dst[6]) = v17;
    __dst[7] = v18;
    LOBYTE(__dst[8]) = v19;
    memcpy(v37, __dst, 0x41uLL);
    v20 = v27;
    sub_1C990C018(a1, v37, v20);
    sub_1C97E8084(__dst);
  }

  return sub_1C9813734();
}

void sub_1C997E82C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C997E89C(a1, &v6, a2, v5);
  objc_autoreleasePoolPop(v4);
}

void sub_1C997E89C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v7 = a1 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl;
  v8 = *(a1 + OBJC_IVAR___SNCreateFeaturePrintRequest_impl);
  if ((v8 - 4) < 2)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      swift_once();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = 34;
    MEMORY[0x1EEE9AC00](v14);
  }

  else
  {
    if (v8 != 3)
    {
      if (v8 == 6)
      {
        type metadata accessor for SNLanguageAlignedAudioEmbeddingFeatureExtractor(a4);
        v9 = sub_1C997B60C(*(v7 + 8), *(v7 + 16));
        v10 = v4;
        if (!v4)
        {
          v11 = v9;
LABEL_15:
          a3[3] = swift_getObjectType();
          *a3 = v11;
          return;
        }
      }

      else
      {
        sub_1C9980194();
        v10 = swift_allocError();
        *v17 = 1;
        swift_willThrow();
      }

      goto LABEL_17;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      swift_once();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = 33;
    MEMORY[0x1EEE9AC00](v15);
  }

  v16 = sub_1C97E2E88();
  v10 = v4;
  if (!v4)
  {
    v11 = v16;

    objc_autoreleasePoolPop(v13);
    objc_autoreleasePoolPop(v12);
    goto LABEL_15;
  }

  objc_autoreleasePoolPop(v13);
  objc_autoreleasePoolPop(v12);
LABEL_17:
  *a2 = v10;
}

uint64_t sub_1C997EC98(void *a1, double a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v62 = *MEMORY[0x1E69E9840];
  v7 = v4[14];
  v8 = v7 < 1;
  v9 = v7 - 1;
  if (!v8)
  {
    v4[14] = v9;
    v10 = MEMORY[0x1E69E7CC0];
LABEL_3:

    if (v10 >> 62)
    {
      sub_1C97A2CEC(&unk_1EC3C8670, &unk_1C9AA0730);
      sub_1C97FB318();
      sub_1C9A93788();
    }

    else
    {
      sub_1C9A93B78();
    }

    return sub_1C9813734();
  }

  v13 = *v4;
  v14 = objc_opt_self();
  v56.start.value = 0;
  v15 = sub_1C9A7608C(v14, a1, &v56);
  value = v56.start.value;
  if (!v15)
  {
    v21 = v56.start.value;
    sub_1C9980900();

    swift_willThrow();
    return sub_1C9813734();
  }

  v54 = a4;
  v55 = v15;
  v18 = v6[7];
  v17 = v6[8];

  v19 = value;
  v20 = sub_1C997F214(v18, v17, v55);
  if (v5)
  {
    swift_unknownObjectRelease();

    return sub_1C9813734();
  }

  v22 = v20;

  v23 = v6[9];
  v25 = objc_allocWithZone(type metadata accessor for SNFeaturePrint(v24));
  v53 = v22;
  v26 = sub_1C99A69D4(v23, v53);
  v56.start.value = 0;
  v27 = sub_1C9A76EE8(v14, a1, &v56);
  if (!v27)
  {
    v47 = v56.start.value;
    sub_1C97FB30C();
    sub_1C9A913C8();

    swift_willThrow();
    swift_unknownObjectRelease();

    return sub_1C9813734();
  }

  v28 = v27;
  v52 = v26;
  v29 = v56.start.value;
  v30 = sub_1C9A93C88();
  v31 = sub_1C9A67138(a1);
  if (v31 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v51 = v28;
  CMTimeMake(&v56.start, v30, v31);
  v50 = v56.start.value;
  v32 = *&v56.start.timescale;
  epoch = v56.start.epoch;
  result = sub_1C984AE10((v6 + 2), v61);
  v34 = v6[5];
  if (v34)
  {
    sub_1C97A5A8C(v6 + 2, v6[5]);
    sub_1C9980888();
    v36 = v35;
    MEMORY[0x1EEE9AC00](v37);
    v39 = &epoch - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39);
    v40 = sub_1C9871794();
    v42 = v41(v40);
    (*(v36 + 8))(v39, v34);
    v43 = sub_1C9A67138(a1);
    if ((v43 & 0x80000000) == 0)
    {
      CMTimeMake(&v56.start, v42, v43);
      duration = v56.start;
      start.value = v50;
      *&start.timescale = v32;
      start.epoch = epoch;
      CMTimeRangeMake(&v56, &start, &duration);
      v60 = v56;
      v44 = v54;
      v54();
      v45 = v53;
      v46 = sub_1C9A92F08();
      (v44)(v46);
      sub_1C993AE54();
      sub_1C9A92F18();
      v48 = v52;
      SNFeaturePrint.timeRange.setter(v59);
      sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C9A9DF30;
      *(v10 + 32) = v48;
      swift_unknownObjectRelease();

      goto LABEL_3;
    }

LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C997F214(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v9 = sub_1C9813734();
    v10 = sub_1C997F90C(v9);
    if (v3)
    {
      return sub_1C9813734();
    }

    v6 = v10;
LABEL_6:
    if ([v6 type] == 5)
    {
      if ([v6 multiArrayValue])
      {

        return sub_1C9813734();
      }

      sub_1C97A8E8C();
      v12 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
      sub_1C9887D54(v12, v13);
    }

    else
    {
      type metadata accessor for SNError(v11);
      sub_1C9980804("does not use DSPGraph");
    }

    swift_willThrow();

    return sub_1C9813734();
  }

  v5 = sub_1C9A92478();
  v6 = [a3 featureValueForName_];

  if (v6)
  {
    goto LABEL_6;
  }

  sub_1C97A8E8C();
  v7 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
  sub_1C9887D54(v7, v8);
  swift_willThrow();
  return sub_1C9813734();
}

uint64_t sub_1C997F340()
{
  sub_1C984AE10(v0 + 16, v6);
  sub_1C97E82EC(v0 + 16, &v4, &qword_1EC3CE910, &unk_1C9ABD928);
  if (v5)
  {
    sub_1C979B054(&v4, v7);
    sub_1C97A5A8C(v7, v7[3]);
    v1 = sub_1C9980918();
    v2(v1);
    sub_1C97A592C(v7);
  }

  else
  {
    sub_1C97DA1E0(&v4, &qword_1EC3CE910, &unk_1C9ABD928);
    sub_1C9980010();
    sub_1C97A7A80(&type metadata for SNFeaturePrintExtractor.DomainError);
    swift_willThrow();
  }

  return sub_1C9813734();
}

void *sub_1C997F428(double a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = *(v3 + 72);
  v8 = sub_1C997A5C0(v7, a3, a1);
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    *(v5 + 56) = sub_1C997A65C(v7);
    *(v5 + 64) = v12;

    result = (*(v11 + 8))(v15, *(v5 + 84), *(v5 + 92), *(v5 + 100), v10, v11, a1, *(v5 + 80));
    if (!v4)
    {
      sub_1C9978690(v15, v16);
      sub_1C97DA1E0(v15, &qword_1EC3CE910, &unk_1C9ABD928);
      swift_beginAccess();
      sub_1C9980064(v16, v5 + 16);
      return swift_endAccess();
    }
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    *v14 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C997F564()
{
  sub_1C984AE10(v0 + 16, v7);
  result = sub_1C97E82EC(v0 + 16, v5, &qword_1EC3CE910, &unk_1C9ABD928);
  if (v6)
  {
    sub_1C97A5A8C(v5, v6);
    v2 = sub_1C9980918();
    v4 = v3(v2);
    sub_1C97A592C(v5);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C997F608()
{
  v2 = v0;
  v31 = *MEMORY[0x1E69E9840];
  sub_1C984AE10((v0 + 4), v30);
  v3 = *(v0 + 5);
  if (!v3)
  {
LABEL_32:
    __break(1u);
  }

  v4 = *(v0 + 6);
  sub_1C97A5A8C(v0 + 2, *(v0 + 5));
  sub_1C9980888();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  v10 = (*(v4 + 48))(v3, v4);
  (*(v6 + 8))(v9, v3);
  v11 = v2[20] * v10;
  if (COERCE_INT(fabs(v11)) > 2139095039)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v11 <= -9.2234e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 >= 9.2234e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = ceil(v10 / v12);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v2 + 14) = v13;
  if (!v12)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = v10 % v12;
  v15 = __OFSUB__(v12, v14);
  v16 = v12 - v14;
  if (v15)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 == -1 && v16 == 0x8000000000000000)
  {
    goto LABEL_31;
  }

  v18 = v16 % v12;
  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = sub_1C997F564();
  if (!v1)
  {
    v21 = v20;
    sub_1C9A674AC(v20, 1);

    v22 = sub_1C997F340();
    v23 = objc_opt_self();
    v29 = 0;
    v24 = sub_1C9A767E4(v23, v22, v19, &v29);

    if (v24)
    {
      v25 = v29;
      v26 = sub_1C997F564();
      sub_1C9A674AC(v26, 0);
    }

    else
    {
      v27 = v29;
      sub_1C97FB3E4();
      sub_1C9A913C8();

      swift_willThrow();
    }
  }
}

uint64_t sub_1C997F90C(void *a1)
{
  v2 = [a1 featureNames];
  v3 = sub_1C9A92B28();

  v4 = *(v3 + 16);

  if (v4 != 1)
  {
    type metadata accessor for SNError(v5);
    sub_1C9980804("e MultiArray features");
    goto LABEL_6;
  }

  v6 = [a1 featureNames];
  v7 = sub_1C9A92B28();

  sub_1C98BBD24(v7);
  v9 = v8;

  if (!v9 || (sub_1C9871794(), v10 = sub_1C9A92478(), , v11 = [a1 featureValueForName_], v10, !v11))
  {
    sub_1C97A8E8C();
    v12 = sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    sub_1C9887D54(v12, v13);
LABEL_6:
    swift_willThrow();
  }

  return sub_1C9813734();
}

uint64_t sub_1C997FA64()
{
  sub_1C97DA1E0(v0 + 16, &qword_1EC3CE910, &unk_1C9ABD928);

  return swift_deallocClassInstance();
}

unint64_t sub_1C997FC78()
{
  result = qword_1EC3CE8F0;
  if (!qword_1EC3CE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE8F0);
  }

  return result;
}

id sub_1C997FCCC(void *a1)
{
  sub_1C97A5A8C(a1, a1[3]);
  v3 = [v1 initWithImpl_];
  swift_unknownObjectRelease();
  sub_1C97A592C(a1);
  return v3;
}

uint64_t sub_1C997FD58(uint64_t a1, void *a2, uint64_t a3)
{
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  v4 = qword_1EC3C5520;
  v5 = a2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9A91B58();
  sub_1C97BFF6C(v6, qword_1EC3D3108);

  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_1C9888820();
    v13 = sub_1C9849140(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C9788000, v7, v8, "Custom Model created with ID %s", v9, 0xCu);
    sub_1C97A592C(v10);
    MEMORY[0x1CCA93280](v10, -1, -1);
    MEMORY[0x1CCA93280](v9, -1, -1);
  }

  return a3;
}

unint64_t sub_1C997FEC8()
{
  result = qword_1EC3CE8F8;
  if (!qword_1EC3CE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE8F8);
  }

  return result;
}

unint64_t sub_1C997FF3C()
{
  result = qword_1EC3CE900;
  if (!qword_1EC3CE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE900);
  }

  return result;
}

unint64_t sub_1C997FFBC()
{
  result = qword_1EC3CE908;
  if (!qword_1EC3CE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE908);
  }

  return result;
}

unint64_t sub_1C9980010()
{
  result = qword_1EC3CE918;
  if (!qword_1EC3CE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE918);
  }

  return result;
}

uint64_t sub_1C9980064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CE910, &unk_1C9ABD928);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C99800D4()
{
  result = qword_1EC3CE928;
  if (!qword_1EC3CE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE928);
  }

  return result;
}

uint64_t sub_1C9980128(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CE930, &qword_1C9ABD940);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9980194()
{
  result = qword_1EC3CE950;
  if (!qword_1EC3CE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE950);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNCreateFeaturePrintRequest.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C9980304(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C99803F0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99804A0()
{
  result = qword_1EC3CE998;
  if (!qword_1EC3CE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE998);
  }

  return result;
}

unint64_t sub_1C99804F8()
{
  result = qword_1EC3CE9A0;
  if (!qword_1EC3CE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE9A0);
  }

  return result;
}

unint64_t sub_1C9980550()
{
  result = qword_1EC3CE9A8;
  if (!qword_1EC3CE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE9A8);
  }

  return result;
}

unint64_t sub_1C99805A8()
{
  result = qword_1EC3CE9B0;
  if (!qword_1EC3CE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE9B0);
  }

  return result;
}

unint64_t sub_1C9980600()
{
  result = qword_1EC3CE9B8;
  if (!qword_1EC3CE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE9B8);
  }

  return result;
}

unint64_t sub_1C9980658()
{
  result = qword_1EC3CE9C0;
  if (!qword_1EC3CE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE9C0);
  }

  return result;
}

unint64_t sub_1C99806B0()
{
  result = qword_1EC3CE9C8;
  if (!qword_1EC3CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE9C8);
  }

  return result;
}

unint64_t sub_1C9980708()
{
  result = qword_1EC3CE9D0;
  if (!qword_1EC3CE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CE9D0);
  }

  return result;
}

uint64_t sub_1C99807D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4)
{

  return sub_1C9A93778(a1, 11, 2, 0xD000000000000035, a3 | 0x8000000000000000, a2, 47, 2, a4);
}

id sub_1C9980804@<X0>(uint64_t a1@<X8>)
{

  return sub_1C9929478(0xD000000000000017, (v1 - 32) | 0x8000000000000000, 1, 0, 0xD000000000000035, a1 | 0x8000000000000000);
}

uint64_t sub_1C998083C()
{

  return sub_1C9A92478();
}

uint64_t sub_1C99808A4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W8>)
{
  *(v5 + 16) = v4;
  *(v5 + 20) = 1056964608;
  *(v5 + 24) = result;
  *(v5 + 32) = a2;
  *(v5 + 36) = a4;
  *(v5 + 40) = a3;
  return result;
}

double sub_1C99808E8@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 33) = 0u;
  return result;
}

uint64_t sub_1C9980900()
{

  return sub_1C9A913C8();
}

uint64_t sub_1C9980938()
{
  v1 = *v0;

  return v1;
}

void sub_1C9980968(uint64_t *a2@<X8>)
{
  nullsub_1();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1C9980990(uint64_t a1)
{
  v2 = sub_1C9982664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99809CC(uint64_t a1)
{
  v2 = sub_1C9982664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C9980A08(void *a1, uint64_t a2)
{
  v5 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DA8();
  if (v2)
  {
    sub_1C97A592C(a1);
  }

  else
  {
    sub_1C97A5A8C(v11, v11[3]);
    sub_1C9984574();
    sub_1C9A93B38();
    v6 = v10;
    v9 = v10;
    v7 = sub_1C97A2CEC(&qword_1EC3CEA08, &qword_1C9ABDF30);
    sub_1C991C720(&v9, v7, a2, &v10);

    v5 = v10;
    sub_1C97A592C(v11);
    sub_1C97A592C(a1);
  }

  return v5;
}

uint64_t sub_1C9980B2C(void *a1, void *a2)
{
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DC8();
  sub_1C97BDE74(v5, v5[3]);
  sub_1C99846F0();
  v3 = a2;
  sub_1C9A93B58();

  return sub_1C97A592C(v5);
}

uint64_t sub_1C9980BE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C437463656A626FLL && a2 == 0xEB00000000737361;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F437463656A626FLL && a2 == 0xED0000746E65746ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C9980CB8(char a1)
{
  if (a1)
  {
    return 0x6F437463656A626FLL;
  }

  else
  {
    return 0x6C437463656A626FLL;
  }
}

void *sub_1C9980D04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1C9980A08(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C9980D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9980BE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9980D8C(uint64_t a1)
{
  v2 = sub_1C9984888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9980DC8(uint64_t a1)
{
  v2 = sub_1C9984888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *sub_1C9980E04(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  sub_1C97AE9C8();
  v44 = v3;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  v10 = sub_1C97A2CEC(&qword_1EC3CEA28, &unk_1C9ABE088);
  sub_1C97AE9C8();
  v45 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9984888();
  v15 = v46;
  sub_1C9A93DB8();
  if (!v15)
  {
    v42 = v7;
    v43 = v9;
    v46 = a1;
    v49 = 0;
    sub_1C9A938A8();
    v16 = sub_1C9A92478();

    v17 = NSClassFromString(v16);

    if (v17 && (ObjCClassMetadata = swift_getObjCClassMetadata(), v47 = &unk_1F49667E8, (v19 = swift_dynamicCastTypeToObjCProtocolConditional()) != 0) && (v21 = v19, v22 = sub_1C9984910(v20), sub_1C99848DC(v21, ObjCClassMetadata, v22)))
    {
      v48 = 1;
      sub_1C9982664();
      v23 = v43;
      sub_1C9A93858();
      v41 = v10;
      v7 = v44;
      v26 = v42;
      (*(v44 + 2))(v42, v23, v2);
      v27 = objc_allocWithZone(type metadata accessor for DecoderByNSCoding(0));
      v28 = sub_1C99826B8(v26);
      v31 = v28;
      v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
      if (v32)
      {
        v7 = v32;

        v33 = sub_1C9984C08();
        v34(v33);
        v35 = sub_1C9984BFC();
        v36(v35, v41);
        sub_1C97A592C(v46);
        return v7;
      }

      sub_1C97A5A38();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();

      v38 = sub_1C9984C08();
      v39(v38);
      v29 = sub_1C9984BFC();
      v30(v29, v41);
    }

    else
    {
      sub_1C97A5A38();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
      (*(v45 + 8))(v14, v10);
    }

    a1 = v46;
  }

  sub_1C97A592C(a1);
  return v7;
}

uint64_t sub_1C9981208(void *a1, void *a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C97AE9C8();
  v34 = v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = sub_1C97A2CEC(qword_1EC3CEA38, &qword_1C9ABE098);
  sub_1C97AE9C8();
  v35 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9984888();
  sub_1C9A93DD8();
  v17 = NSStringFromClass([a2 classForCoder]);
  sub_1C9A924A8();

  v37 = 0;
  v18 = v12;
  sub_1C9A939C8();
  if (v2)
  {
    (*(v35 + 8))(v16, v12);
  }

  else
  {

    v37 = 1;
    sub_1C9982664();
    v20 = v11;
    v32 = 0;
    sub_1C9A93988();
    v21 = v33;
    v22 = v34;
    v30 = a2;
    v23 = v5;
    v24 = *(v34 + 16);
    v24(v33, v20, v23);
    v25 = type metadata accessor for EncoderByNSCoding(0);
    v26 = objc_allocWithZone(v25);
    v31 = v18;
    v27 = v26;
    v24(&v26[OBJC_IVAR____TtC13SoundAnalysis17EncoderByNSCoding_encoder], v21, v23);
    v36.receiver = v27;
    v36.super_class = v25;
    v28 = objc_msgSendSuper2(&v36, sel_init);
    v29 = *(v22 + 8);
    v29(v21, v23);
    [v30 encodeWithCoder_];

    v29(v20, v23);
    return (*(v35 + 8))(v16, v31);
  }
}

char *sub_1C9981548@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_1C9980E04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C9981590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C97BCB34();
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C9981664(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C97BD12C();
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C9981740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C97A2CEC(&qword_1EC3CE9E8, &unk_1C9ABDF10);
  sub_1C9984678(&qword_1EC3CEA10, sub_1C99846F0, MEMORY[0x1E69E7C70]);
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C998185C(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C9981928(int a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C99819F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C9981AC0(uint64_t a1, uint64_t a2, float a3)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C9981B8C(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C9981C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  sub_1C97A2CEC(&qword_1EC3CEA00, &unk_1C9ABDF20);
  sub_1C98CB4F8();
  sub_1C9A93A18();
  swift_endAccess();
}

uint64_t sub_1C9981DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v5[0] = *a1;
  v5[1] = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = v3;
  return sub_1C9981664(v5, a2, a3);
}

void sub_1C9981EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C97A2C7C(a1, &v8);
  if (v9)
  {
    sub_1C97A2D34(&v8, &v7);
    sub_1C97A2CEC(&qword_1EC3CEA08, &qword_1C9ABDF30);
    swift_dynamicCast();
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  sub_1C9981740(v5, a2, a3);
}

uint64_t sub_1C9982154(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1C9A924A8();
  v10 = v9;
  v11 = a1;
  a5(a3, v8, v10);
}

uint64_t sub_1C99822CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C98FBAF4(a1, a2);
  v8 = v7;
  sub_1C9981C58(v6, v7, a3, a4);

  return sub_1C97A5978(v6, v8);
}

uint64_t sub_1C99823CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1C9A924A8();
  v10 = v9;
  v11 = a1;
  a5(a3, v8, v10);
}

void sub_1C99825B8(uint64_t a1)
{
  sub_1C9984450(319, &qword_1EC3C5678, MEMORY[0x1E69E6F58]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C9982664()
{
  result = qword_1EC3C5790;
  if (!qword_1EC3C5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5790);
  }

  return result;
}

id sub_1C99826B8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder;
  v6 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  sub_1C97A2CEC(&qword_1EC3CC358, &unk_1C9AB28B0);
  *&v2[OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decodedByteBuffers] = sub_1C9A92348();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

id sub_1C99827EC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decodedByteBuffers;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    result = *(*(v3 + 56) + ((v9 << 10) | (16 * v11)));
    if (result)
    {
      result = MEMORY[0x1CCA93280](result, -1, -1);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v12.receiver = v0;
      v12.super_class = ObjectType;
      return objc_msgSendSuper2(&v12, sel_dealloc);
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99829E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  (*(v6 + 16))(v10 - v7, v2 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v5);
  v10[0] = a1;
  v10[1] = a2;
  sub_1C98DD970();

  sub_1C9A938F8();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C9982B38(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1C97A2CEC(&qword_1EC3CE9E8, &unk_1C9ABDF10);
  (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v6);
  v11[1] = a1;
  v11[2] = a2;
  sub_1C9984678(&qword_1EC3CE9F0, sub_1C9984574, MEMORY[0x1E69E7C88]);

  sub_1C9A938F8();
  (*(v7 + 8))(v9, v6);

  if (!v3)
  {
    return v11[3];
  }

  return result;
}

uint64_t sub_1C9982CDC(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  (*(v7 + 16))(v12 - v8, v2 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v6);
  v12[0] = a1;
  v12[1] = a2;

  sub_1C9A938F8();
  (*(v7 + 8))(v9, v6);

  if (!v3)
  {
    v10 = v13;
  }

  return v10 & 1;
}

uint64_t sub_1C9982E3C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  (*(v7 + 16))(v11 - v8, v2 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v6);
  v11[0] = a1;
  v11[1] = a2;

  sub_1C9A938F8();
  (*(v7 + 8))(v9, v6);

  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1C9982F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  sub_1C97AE9C8();
  v10 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v15 - v12;
  (*(v10 + 16))(v15 - v12, v4 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v8);
  v15[0] = a1;
  v15[1] = a2;

  sub_1C9A938F8();
  (*(v10 + 8))(v13, v8);

  if (!v5)
  {
    return v15[3];
  }

  return result;
}

double sub_1C99830EC(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  (*(v7 + 16))(v11 - v8, v2 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v6);
  v11[0] = a1;
  v11[1] = a2;

  sub_1C9A938F8();
  (*(v7 + 8))(v9, v6);

  if (!v3)
  {
    return *&v11[3];
  }

  return result;
}

float sub_1C9983248(uint64_t a1, uint64_t a2)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  (*(v7 + 16))(v11 - v8, v2 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v6);
  v11[0] = a1;
  v11[1] = a2;

  sub_1C9A938F8();
  (*(v7 + 8))(v9, v6);

  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1C99833A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  (*(v6 + 16))(v10 - v7, v2 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v5);
  v10[0] = a1;
  v10[1] = a2;
  sub_1C97BCA8C();

  sub_1C9A938F8();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C99834FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  (*(v6 + 16))(v10 - v7, v2 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v5);
  v10[0] = a1;
  v10[1] = a2;
  sub_1C97BD0D8();

  sub_1C9A938F8();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C998365C()
{
  sub_1C981E1EC();
  v3 = sub_1C97A2CEC(&qword_1EC3CE9E0, &qword_1C9ABDF08);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v12 - v7, v1 + OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decoder, v3);
  v12 = v2;
  v13 = v0;
  v8 = sub_1C9A93968();
  v9 = sub_1C9984BFC();
  v10(v9, v3);
  return v8 & 1;
}

void *sub_1C9983774(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  if (sub_1C998365C())
  {
    v8 = OBJC_IVAR____TtC13SoundAnalysis17DecoderByNSCoding_decodedByteBuffers;
    swift_beginAccess();
    v9 = sub_1C98785AC(a1, a2, *(v3 + v8));
    if (v11)
    {
      swift_endAccess();
      sub_1C99829E0(a1, a2);
      v12 = __src;
      v13 = v21;
      v14 = MEMORY[0x1CCA8F2E0](__src, v21);
      v15 = swift_slowAlloc();
      v7 = v15;
      switch(v21 >> 62)
      {
        case 1uLL:
          v17 = __src >> 32;
          if (__src >> 32 >= __src)
          {
            v18 = __src;
            goto LABEL_11;
          }

          __break(1u);
          sub_1C9984B90();
          result = swift_unexpectedError();
          __break(1u);
          return result;
        case 2uLL:
          v18 = *(__src + 16);
          v17 = *(__src + 24);
LABEL_11:
          sub_1C99845C8(v18, v17, v21 & 0x3FFFFFFFFFFFFFFFLL, v7);
          goto LABEL_12;
        case 3uLL:
          goto LABEL_12;
        default:
          memcpy(v15, &__src, BYTE6(v21));
LABEL_12:
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v19 = *(v3 + v8);
          sub_1C97EF2D0();
          *(v3 + v8) = v19;
          swift_endAccess();
          sub_1C97A5978(v12, v13);
          if (!a3)
          {
            return v7;
          }

          goto LABEL_6;
      }
    }

    v7 = v9;
    v14 = v10;
    swift_endAccess();
    if (a3)
    {
LABEL_6:
      *a3 = v14;
    }
  }

  return v7;
}

uint64_t sub_1C9983A1C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1C998365C();
  if (result)
  {
    v5 = sub_1C9984BEC();
    v7 = sub_1C9982B38(v5, v6);
    if (a1)
    {
      sub_1C9984B90();
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v8 = v7;
      if (v7)
      {
        result = swift_getObjectType();
      }

      else
      {
        result = 0;
      }

      *a2 = v8;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = result;
    }
  }

  else
  {
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1C9983C10()
{
  sub_1C981E1EC();
  if ((sub_1C998365C() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = sub_1C9984BDC();
  v3 = sub_1C9982CDC(v1, v2);
  if (v0)
  {
    sub_1C9984B90();
    swift_unexpectedError();
    __break(1u);
LABEL_4:
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C9983C8C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1C9A924A8();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

uint64_t sub_1C9983D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C998365C();
  result = 0;
  if (v8)
  {
    return sub_1C9982F98(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C9983DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C9A924A8();
  v10 = v9;
  v11 = a1;
  v12 = sub_1C9983D14(v8, v10, a4, a5);

  return v12;
}

uint64_t sub_1C9983E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1C998365C())
  {
    v4 = sub_1C9984BEC();
    result = sub_1C9982E3C(v4, v5);
    if (!a2)
    {
      return result;
    }

    sub_1C9984B90();
    swift_unexpectedError();
    __break(1u);
  }

  return 0;
}

uint64_t sub_1C9983EA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1C9A924A8();
  v8 = v7;
  v9 = a1;
  v10 = sub_1C9983E38(v6, v8, a4);

  return v10;
}

void sub_1C9983F10()
{
  sub_1C981E1EC();
  if (sub_1C998365C())
  {
    v1 = sub_1C9984BDC();
    sub_1C99830EC(v1, v2);
    if (v0)
    {
      sub_1C9984B90();
      swift_unexpectedError();
      __break(1u);
    }
  }
}