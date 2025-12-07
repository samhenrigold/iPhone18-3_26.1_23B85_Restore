uint64_t sub_1D9E7C224()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D9F2BAFC();
  CustomActionIdentity.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E7C27C()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D9F2BAFC();
  CustomActionIdentity.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1D9F2BA1C();
      sub_1D9E51D40(v6, v5, 0);
      sub_1D9E51D40(v3, v2, 0);
      sub_1D9E51DF0(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_24;
    }

    sub_1D9E51D40(v17, v2, 0);
    sub_1D9E51D40(v3, v2, 0);
    sub_1D9E51DF0(v3, v2, 0);
    v16 = v3;
    v19 = v2;
    v20 = 0;
LABEL_145:
    sub_1D9E51DF0(v16, v19, v20);
    return 1;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v13 = 1;
        sub_1D9E51DF0(1, 0, 2u);
        return v13;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 2;
        goto LABEL_144;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 3;
        goto LABEL_144;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 4;
        goto LABEL_144;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 5;
        goto LABEL_144;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 6;
        goto LABEL_144;
      case 7:
        if (v7 != 2 || v6 != 7 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 7;
        goto LABEL_144;
      case 8:
        if (v7 != 2 || v6 != 8 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 8;
        goto LABEL_144;
      case 9:
        if (v7 != 2 || v6 != 9 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 9;
        goto LABEL_144;
      case 10:
        if (v7 != 2 || v6 != 10 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 10;
        goto LABEL_144;
      case 11:
        if (v7 != 2 || v6 != 11 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 11;
        goto LABEL_144;
      case 12:
        if (v7 != 2 || v6 != 12 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 12;
        goto LABEL_144;
      case 13:
        if (v7 != 2 || v6 != 13 || v5 != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 13;
        goto LABEL_144;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_10;
        }

        sub_1D9E51DF0(*a1, v2, 2u);
        v16 = 0;
LABEL_144:
        v19 = 0;
        v20 = 2;
        break;
    }

    goto LABEL_145;
  }

  if (v7 != 1)
  {
LABEL_10:
    sub_1D9E51D40(*a2, *(a2 + 8), v7);
    sub_1D9E51D40(v3, v2, v4);
    sub_1D9E51DF0(v3, v2, v4);
    sub_1D9E51DF0(v6, v5, v7);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_1D9E51D40(*a1, v2, 1u);
    sub_1D9E51D40(v3, v2, 1u);
    sub_1D9E51DF0(v3, v2, 1u);
    sub_1D9E51DF0(v3, v2, 1u);
    return v13;
  }

  v9 = sub_1D9F2BA1C();
  sub_1D9E51D40(v6, v5, 1u);
  sub_1D9E51D40(v3, v2, 1u);
  sub_1D9E51DF0(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_24:
  sub_1D9E51DF0(v10, v11, v12);
  return v9 & 1;
}

unint64_t sub_1D9E7C73C()
{
  result = qword_1EE0F3830;
  if (!qword_1EE0F3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3830);
  }

  return result;
}

unint64_t sub_1D9E7C790()
{
  result = qword_1ECB73DE0;
  if (!qword_1ECB73DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73DE0);
  }

  return result;
}

unint64_t sub_1D9E7C7E4()
{
  result = qword_1ECB73DE8;
  if (!qword_1ECB73DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73DE8);
  }

  return result;
}

unint64_t sub_1D9E7C838()
{
  result = qword_1EE0F3740;
  if (!qword_1EE0F3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3740);
  }

  return result;
}

unint64_t sub_1D9E7C88C()
{
  result = qword_1ECB73DF0;
  if (!qword_1ECB73DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73DF0);
  }

  return result;
}

unint64_t sub_1D9E7C8E0()
{
  result = qword_1ECB73DF8;
  if (!qword_1ECB73DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73DF8);
  }

  return result;
}

unint64_t sub_1D9E7C934()
{
  result = qword_1ECB73E00;
  if (!qword_1ECB73E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E00);
  }

  return result;
}

unint64_t sub_1D9E7C988()
{
  result = qword_1ECB73E08;
  if (!qword_1ECB73E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E08);
  }

  return result;
}

unint64_t sub_1D9E7C9DC()
{
  result = qword_1ECB73E10;
  if (!qword_1ECB73E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E10);
  }

  return result;
}

unint64_t sub_1D9E7CA30()
{
  result = qword_1ECB73E18;
  if (!qword_1ECB73E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E18);
  }

  return result;
}

unint64_t sub_1D9E7CA84()
{
  result = qword_1ECB73E20;
  if (!qword_1ECB73E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E20);
  }

  return result;
}

unint64_t sub_1D9E7CAD8()
{
  result = qword_1EE0F37B8;
  if (!qword_1EE0F37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37B8);
  }

  return result;
}

unint64_t sub_1D9E7CB2C()
{
  result = qword_1ECB73E28;
  if (!qword_1ECB73E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E28);
  }

  return result;
}

unint64_t sub_1D9E7CB80()
{
  result = qword_1ECB73E30;
  if (!qword_1ECB73E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E30);
  }

  return result;
}

unint64_t sub_1D9E7CBD4()
{
  result = qword_1ECB73E38;
  if (!qword_1ECB73E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E38);
  }

  return result;
}

unint64_t sub_1D9E7CC28()
{
  result = qword_1ECB73E40;
  if (!qword_1ECB73E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E40);
  }

  return result;
}

unint64_t sub_1D9E7CC7C()
{
  result = qword_1ECB73E48;
  if (!qword_1ECB73E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73E48);
  }

  return result;
}

unint64_t sub_1D9E7CCD4()
{
  result = qword_1EE0F22A0;
  if (!qword_1EE0F22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F22A0);
  }

  return result;
}

uint64_t sub_1D9E7CD28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9E7CD70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9E7CDB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StructuredExtraction.Object.Category(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StructuredExtraction.Object.Category(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9E7D030()
{
  result = qword_1ECB73ED8;
  if (!qword_1ECB73ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73ED8);
  }

  return result;
}

unint64_t sub_1D9E7D088()
{
  result = qword_1ECB73EE0;
  if (!qword_1ECB73EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73EE0);
  }

  return result;
}

unint64_t sub_1D9E7D0E0()
{
  result = qword_1ECB73EE8;
  if (!qword_1ECB73EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73EE8);
  }

  return result;
}

unint64_t sub_1D9E7D138()
{
  result = qword_1EE0F37D0;
  if (!qword_1EE0F37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37D0);
  }

  return result;
}

unint64_t sub_1D9E7D190()
{
  result = qword_1EE0F37D8;
  if (!qword_1EE0F37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37D8);
  }

  return result;
}

unint64_t sub_1D9E7D1E8()
{
  result = qword_1EE0F37E0;
  if (!qword_1EE0F37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37E0);
  }

  return result;
}

unint64_t sub_1D9E7D240()
{
  result = qword_1EE0F37E8;
  if (!qword_1EE0F37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37E8);
  }

  return result;
}

unint64_t sub_1D9E7D298()
{
  result = qword_1EE0F3788;
  if (!qword_1EE0F3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3788);
  }

  return result;
}

unint64_t sub_1D9E7D2F0()
{
  result = qword_1EE0F3790;
  if (!qword_1EE0F3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3790);
  }

  return result;
}

unint64_t sub_1D9E7D348()
{
  result = qword_1EE0F3778;
  if (!qword_1EE0F3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3778);
  }

  return result;
}

unint64_t sub_1D9E7D3A0()
{
  result = qword_1EE0F3780;
  if (!qword_1EE0F3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3780);
  }

  return result;
}

unint64_t sub_1D9E7D3F8()
{
  result = qword_1EE0F37A8;
  if (!qword_1EE0F37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37A8);
  }

  return result;
}

unint64_t sub_1D9E7D450()
{
  result = qword_1EE0F37B0;
  if (!qword_1EE0F37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37B0);
  }

  return result;
}

unint64_t sub_1D9E7D4A8()
{
  result = qword_1EE0F37C0;
  if (!qword_1EE0F37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37C0);
  }

  return result;
}

unint64_t sub_1D9E7D500()
{
  result = qword_1EE0F37C8;
  if (!qword_1EE0F37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37C8);
  }

  return result;
}

unint64_t sub_1D9E7D558()
{
  result = qword_1EE0F3758;
  if (!qword_1EE0F3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3758);
  }

  return result;
}

unint64_t sub_1D9E7D5B0()
{
  result = qword_1EE0F3760;
  if (!qword_1EE0F3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3760);
  }

  return result;
}

unint64_t sub_1D9E7D608()
{
  result = qword_1EE0F3798;
  if (!qword_1EE0F3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3798);
  }

  return result;
}

unint64_t sub_1D9E7D660()
{
  result = qword_1EE0F37A0;
  if (!qword_1EE0F37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37A0);
  }

  return result;
}

unint64_t sub_1D9E7D6B8()
{
  result = qword_1EE0F3730;
  if (!qword_1EE0F3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3730);
  }

  return result;
}

unint64_t sub_1D9E7D710()
{
  result = qword_1EE0F3738;
  if (!qword_1EE0F3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3738);
  }

  return result;
}

unint64_t sub_1D9E7D768()
{
  result = qword_1EE0F3720;
  if (!qword_1EE0F3720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3720);
  }

  return result;
}

unint64_t sub_1D9E7D7C0()
{
  result = qword_1EE0F3728;
  if (!qword_1EE0F3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3728);
  }

  return result;
}

unint64_t sub_1D9E7D818()
{
  result = qword_1EE0F3800;
  if (!qword_1EE0F3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3800);
  }

  return result;
}

unint64_t sub_1D9E7D870()
{
  result = qword_1EE0F3808;
  if (!qword_1EE0F3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3808);
  }

  return result;
}

unint64_t sub_1D9E7D8C8()
{
  result = qword_1EE0F3768;
  if (!qword_1EE0F3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3768);
  }

  return result;
}

unint64_t sub_1D9E7D920()
{
  result = qword_1EE0F3770;
  if (!qword_1EE0F3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3770);
  }

  return result;
}

unint64_t sub_1D9E7D978()
{
  result = qword_1EE0F37F0;
  if (!qword_1EE0F37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37F0);
  }

  return result;
}

unint64_t sub_1D9E7D9D0()
{
  result = qword_1EE0F37F8;
  if (!qword_1EE0F37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F37F8);
  }

  return result;
}

unint64_t sub_1D9E7DA28()
{
  result = qword_1EE0F3748;
  if (!qword_1EE0F3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3748);
  }

  return result;
}

unint64_t sub_1D9E7DA80()
{
  result = qword_1EE0F3750;
  if (!qword_1EE0F3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3750);
  }

  return result;
}

unint64_t sub_1D9E7DAD8()
{
  result = qword_1EE0F3820;
  if (!qword_1EE0F3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3820);
  }

  return result;
}

unint64_t sub_1D9E7DB30()
{
  result = qword_1EE0F3828;
  if (!qword_1EE0F3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3828);
  }

  return result;
}

unint64_t sub_1D9E7DB88()
{
  result = qword_1EE0F3810;
  if (!qword_1EE0F3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3810);
  }

  return result;
}

unint64_t sub_1D9E7DBE0()
{
  result = qword_1EE0F3818;
  if (!qword_1EE0F3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3818);
  }

  return result;
}

unint64_t sub_1D9E7DC38()
{
  result = qword_1EE0F3838;
  if (!qword_1EE0F3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3838);
  }

  return result;
}

unint64_t sub_1D9E7DC90()
{
  result = qword_1EE0F3840;
  if (!qword_1EE0F3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3840);
  }

  return result;
}

uint64_t sub_1D9E7DCE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796669746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x494F507370616DLL && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A6972616D6D7573 && a2 == 0xE900000000000065 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616C736E617274 && a2 == 0xE900000000000065 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F6C4164616572 && a2 == 0xE900000000000064 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x747865546576696CLL && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7645657461657263 && a2 == 0xEB00000000746E65 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746F685065766173 && a2 == 0xE90000000000006FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574654461746164 && a2 == 0xEC000000726F7463 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F48C00 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65646F437271 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4370696C43707061 && a2 == 0xEB0000000065646FLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65646F63726162 && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6165536567616D69 && a2 == 0xEB00000000686372 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 7041889 && a2 == 0xE300000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

void sub_1D9E7E1F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CA0, &unk_1D9F35D60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23[-v6];
  v8 = sub_1D9F2B77C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24[5] = a1;
  sub_1D9F2AB4C();
  swift_allocObject();
  sub_1D9F2AB3C();
  empty = xpc_dictionary_create_empty();
  sub_1D9F2B76C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v24[3] = &type metadata for XPCValueContainer;
    v24[0] = empty;
    swift_unknownObjectRetain();
    v13 = sub_1D9F2AB2C();
    sub_1D9EAE614(v24, v11);
    v13(v23, 0);
    sub_1D9E84E0C();
    v14 = sub_1D9F2AB1C();
    if (v2)
    {
      sub_1D9E3F7D8();
      swift_allocError();
      *v16 = v2;
      *(v16 + 8) = 0;
      *(v16 + 16) = 32;
      swift_willThrow();
      v17 = v2;

      swift_unknownObjectRelease();
    }

    else
    {
      v18 = v14;
      v19 = v15;
      sub_1D9F2A93C();
      v20 = type metadata accessor for ServiceEnvelope(0);
      sub_1D9F2ACEC();

      *(a2 + v20[6]) = 0;
      v21 = (a2 + v20[7]);
      *v21 = 0xD000000000000057;
      v21[1] = 0x80000001D9F48D00;
      v22 = (a2 + v20[8]);
      *v22 = v18;
      v22[1] = v19;
      *(a2 + v20[9]) = empty;
    }
  }
}

uint64_t sub_1D9E7E4E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72CA0, &unk_1D9F35D60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v25 - v6;
  v8 = sub_1D9F2B77C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ServiceEnvelope(0);
  v13 = (v3 + *(v12 + 32));
  v14 = v13[1];
  if (v14 >> 60 == 15)
  {
    sub_1D9E3F7D8();
    swift_allocError();
    *v15 = xmmword_1D9F2CD00;
    *(v15 + 16) = 0x80;
    return swift_willThrow();
  }

  else
  {
    v17 = v12;
    v25[1] = a1;
    v28 = v2;
    v18 = *v13;
    sub_1D9F2AB0C();
    swift_allocObject();
    v25[0] = v18;
    sub_1D9E400F4(v18, v14);
    sub_1D9F2AAFC();
    sub_1D9F2B76C();
    result = (*(v9 + 48))(v7, 1, v8);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v19 = *(v3 + *(v17 + 36));
      if (v19)
      {
        v20 = &type metadata for XPCValueContainer;
      }

      else
      {
        v20 = 0;
        v27[1] = 0;
        v27[2] = 0;
      }

      v27[0] = v19;
      v27[3] = v20;
      swift_unknownObjectRetain();
      v21 = sub_1D9F2AAEC();
      sub_1D9EAE614(v27, v11);
      v21(v26, 0);
      sub_1D9E84DB8();
      v22 = v25[0];
      v23 = v28;
      sub_1D9F2AADC();
      if (v23)
      {
        sub_1D9E3F7D8();
        swift_allocError();
        *v24 = v23;
        *(v24 + 8) = 0;
        *(v24 + 16) = 64;
        swift_willThrow();
      }

      return sub_1D9E40148(v22, v14);
    }
  }

  return result;
}

uint64_t ExecutionResourceRetriever.Failure.hashValue.getter()
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](0);
  return sub_1D9F2BB4C();
}

uint64_t ExecutionResourceRetriever.resourceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID;
  v4 = sub_1D9F2AD7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExecutionResourceRetriever.__allocating_init(resourceID:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73EF8, &qword_1D9F35B40);
  v4 = swift_allocObject();
  *(v4 + 100) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0x8000000000000000;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v2 + v3) = v4;
  v5 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID;
  v6 = sub_1D9F2AD7C();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  return v2;
}

uint64_t ExecutionResourceRetriever.init(resourceID:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73EF8, &qword_1D9F35B40);
  v4 = swift_allocObject();
  *(v4 + 100) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0x8000000000000000;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID;
  v6 = sub_1D9F2AD7C();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

Swift::Void __swiftcall ExecutionResourceRetriever.load()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1D9F2B32C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1D9E7F08C(0, 0, v3, &unk_1D9F35B58, v5);
}

uint64_t sub_1D9E7EB98()
{
  sub_1D9E7EDA0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9E7EBF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D9E7ECAC;

  return sub_1D9E7EB78(a1, v4, v5, v6);
}

uint64_t sub_1D9E7ECAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D9E7EDA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState);
  os_unfair_lock_lock((v1 + 100));
  oslog = *(v1 + 16);
  v21 = *(v1 + 24);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  os_unfair_lock_unlock((v1 + 100));
  if (v5 >> 62 == 2 && v10 == 0 && v5 == 0x8000000000000000 && (v21 | oslog | v2 | v3 | v4 | v6 | v7 | v8 | v9) == 0)
  {
    sub_1D9E7F92C(v26);
    sub_1D9E7F4D0(v26, v25);
    sub_1D9E7F4D0(v25, v24);
    sub_1D9E7FCE8(v24);
    sub_1D9E84920(v25);
  }

  else
  {
    if (qword_1ECB72A88 != -1)
    {
      swift_once();
    }

    v14 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v14, qword_1ECB73928);

    osloga = sub_1D9F2AE6C();
    v15 = sub_1D9F2B42C();

    if (os_log_type_enabled(osloga, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315138;
      sub_1D9F2AD7C();
      sub_1D9E84F98(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v18 = sub_1D9F2B9FC();
      v20 = sub_1D9E71CA4(v18, v19, v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D9E39000, osloga, v15, "Resource %s already loaded. No need to load again.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1DA744270](v17, -1, -1);
      MEMORY[0x1DA744270](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D9E7F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D9E51E70(a3, v25 - v10, &qword_1ECB73F00, &qword_1D9F35B48);
  v12 = sub_1D9F2B32C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D9E51FE8(v11, &qword_1ECB73F00, &qword_1D9F35B48);
  }

  else
  {
    sub_1D9F2B31C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D9F2B2CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D9F2B15C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D9E51FE8(a3, &qword_1ECB73F00, &qword_1D9F35B48);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D9E51FE8(a3, &qword_1ECB73F00, &qword_1D9F35B48);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void ExecutionResourceRetriever.resource.getter(uint64_t a1@<X8>)
{
  sub_1D9E7EDA0();
  v3 = *(v1 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState);
  os_unfair_lock_lock(v3 + 25);
  v4 = *&v3[16]._os_unfair_lock_opaque;
  v23 = *&v3[12]._os_unfair_lock_opaque;
  v24 = v4;
  v25 = *&v3[20]._os_unfair_lock_opaque;
  os_unfair_lock_opaque = v3[24]._os_unfair_lock_opaque;
  v5 = *&v3[8]._os_unfair_lock_opaque;
  v21 = *&v3[4]._os_unfair_lock_opaque;
  v22 = v5;
  memmove(__dst, &v3[4], 0x51uLL);
  if (v28 >> 62)
  {
    v6 = xmmword_1D9F35B10;
    v7 = 0uLL;
    v8 = 0;
    if (v28 >> 62 == 1)
    {
      v28 &= 0x3FFFFFFFFFFFFFFFuLL;
    }

    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  else
  {
    v28 &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1D9E7F4D0(__dst, v13);
    v16 = v23;
    v18 = v24;
    v19 = v25;
    v20 = os_unfair_lock_opaque;
    v15[0] = v21;
    v15[1] = v22;
    v17 = *(&v23 + 1) & 0x3FFFFFFFFFFFFFFFLL;
    sub_1D9E51E70(v15, v12, &qword_1ECB73F08, &qword_1D9F35B60);
    v7 = v13[0];
    v9 = v13[1];
    v6 = v13[2];
    v10 = v13[3];
    v11 = v13[4];
    v8 = v14;
  }

  *a1 = v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = v6;
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 80) = v8;
  os_unfair_lock_unlock(v3 + 25);
}

uint64_t ExecutionResourceRetriever.deinit()
{
  v1 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID;
  v2 = sub_1D9F2AD7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ExecutionResourceRetriever.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID;
  v2 = sub_1D9F2AD7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

unint64_t sub_1D9E7F64C()
{
  result = qword_1ECB73F10;
  if (!qword_1ECB73F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73F10);
  }

  return result;
}

uint64_t type metadata accessor for ExecutionResourceRetriever(uint64_t a1)
{
  result = qword_1ECB73F18;
  if (!qword_1ECB73F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E7F6F4(uint64_t a1)
{
  result = sub_1D9F2AD7C();
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

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport10ImageFrameV6BufferO(uint64_t a1)
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

unint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport26ExecutionResourceRetrieverC5State33_84024563C9F833465C385D0CC4878C6CLLO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D9E7F804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D9E7F854(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 81) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = -a2 << 32;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9E7F8D4(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 3 | (a2 << 62);
    *(result + 24) = *(result + 24);
    *(result + 40) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x8000000000000000;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0;
  }

  return result;
}

uint64_t sub_1D9E7F92C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v25 = a1;
  if (qword_1ECB72A88 != -1)
  {
    swift_once();
  }

  v4 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v4, qword_1ECB73928);

  v5 = sub_1D9F2AE6C();
  v6 = sub_1D9F2B42C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    sub_1D9F2AD7C();
    sub_1D9E84F98(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = sub_1D9F2B9FC();
    v11 = sub_1D9E71CA4(v9, v10, v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D9E39000, v5, v6, "Start loading resource %s...", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA744270](v8, -1, -1);
    MEMORY[0x1DA744270](v7, -1, -1);
  }

  v23[0] = 0xD00000000000003ELL;
  v23[1] = 0x80000001D9F48C80;
  v23[2] = 25;
  v23[3] = MEMORY[0x1E69E7CC0];
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F28, &qword_1D9F35D48);
  swift_allocObject();
  sub_1D9E80B04(v23, 0);
  sub_1D9E80160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F30, &unk_1D9F35D50);
  v12 = sub_1D9F2AD7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D9F2F8F0;
  v16 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID;
  (*(v13 + 16))(v15 + v14, v1 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v12);
  sub_1D9E805C0(v15, v22);
  if (v2)
  {
  }

  else
  {

    v17 = v22[0];
    if (*(v22[0] + 16) && (v18 = sub_1D9EEA264(v3 + v16), (v19 & 1) != 0))
    {
      sub_1D9E7F4D0(*(v17 + 56) + 88 * v18, v22);
      sub_1D9E849C0(v22, &v21);

      sub_1D9E7F4D0(v22, v25);
    }

    else
    {

      sub_1D9E84A38();
      swift_allocError();
      swift_willThrow();
    }
  }

  sub_1D9E82544(0xD00000000000001ALL, 0x80000001D9F48CC0);
}

void sub_1D9E7FCE8(uint64_t a1)
{
  v2 = v1;
  sub_1D9E7F4D0(a1, v15);
  sub_1D9E7F4D0(a1, v16);
  if (qword_1ECB72A88 != -1)
  {
    swift_once();
  }

  v4 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v4, qword_1ECB73928);

  v5 = sub_1D9F2AE6C();
  v6 = sub_1D9F2B42C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    sub_1D9F2AD7C();
    sub_1D9E84F98(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = sub_1D9F2B9FC();
    v11 = sub_1D9E71CA4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D9E39000, v5, v6, "Finished loading resource %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA744270](v8, -1, -1);
    MEMORY[0x1DA744270](v7, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState);
  MEMORY[0x1EEE9AC00](v13);
  os_unfair_lock_lock(v12 + 25);
  sub_1D9E84974(&v12[4]);
  os_unfair_lock_unlock(v12 + 25);
}

void sub_1D9E7FF04(void *a1)
{
  if (qword_1ECB72A88 != -1)
  {
    swift_once();
  }

  v3 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v3, qword_1ECB73928);
  v4 = a1;

  v5 = sub_1D9F2AE6C();
  v6 = sub_1D9F2B43C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    swift_getErrorValue();
    v9 = sub_1D9F2BAAC();
    v11 = sub_1D9E71CA4(v9, v10, v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_1D9F2AD7C();
    sub_1D9E84F98(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1D9F2B9FC();
    v14 = sub_1D9E71CA4(v12, v13, v17);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1D9E39000, v5, v6, "Error %s occurred while loading resource %s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v8, -1, -1);
    MEMORY[0x1DA744270](v7, -1, -1);
  }

  v15 = *(v1 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState);
  MEMORY[0x1EEE9AC00](v16);
  os_unfair_lock_lock((v15 + 100));
  sub_1D9E84A1C((v15 + 16));
  os_unfair_lock_unlock((v15 + 100));
}

uint64_t sub_1D9E80160()
{
  v1 = v0;
  v2 = sub_1D9F2AF8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9F2AFFC();
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v8 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v8, qword_1EE0F2380);

  v9 = sub_1D9F2AE6C();
  v10 = sub_1D9F2B42C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315394;
    v13 = sub_1D9F2BBBC();
    v15 = sub_1D9E71CA4(v13, v14, aBlock);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D9E71CA4(0x6574617669746361, 0xEA00000000002928, aBlock);
    _os_log_impl(&dword_1D9E39000, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v12, -1, -1);
    MEMORY[0x1DA744270](v11, -1, -1);
  }

  aBlock[4] = sub_1D9E84E60;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_23;
  v16 = _Block_copy(aBlock);

  v17 = v21;
  sub_1D9F2AFAC();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D9E84F98(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v18 = v24;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v17, v18, v16);
  _Block_release(v16);
  (*(v3 + 8))(v18, v2);
  (*(v23 + 8))(v17, v22);
}

uint64_t sub_1D9E805C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (*(v2 + *(*v2 + 152)) != 1)
  {
    goto LABEL_6;
  }

  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v6 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v6, qword_1EE0F2380);

    v7 = sub_1D9F2AE6C();
    v8 = sub_1D9F2B42C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = a2;
      v11 = v10;
      v25[0] = v10;
      *v9 = 136315650;
      v12 = sub_1D9F2BBBC();
      v14 = sub_1D9E71CA4(v12, v13, v25);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1D9E71CA4(0xD000000000000012, 0x80000001D9F48CE0, v25);
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_1D9E71CA4(0xD000000000000057, 0x80000001D9F48D00, v25);
      _os_log_impl(&dword_1D9E39000, v7, v8, "%s.%s messageType = %s", v9, 0x20u);
      swift_arrayDestroy();
      v15 = v11;
      a2 = v28;
      MEMORY[0x1DA744270](v15, -1, -1);
      MEMORY[0x1DA744270](v9, -1, -1);
    }

LABEL_6:
    v26 = 0;
    v27 = -1;
    v16 = *(v3 + *(*v3 + 120));
    v17 = swift_allocObject();
    v17[2] = &v26;
    v17[3] = v3;
    v17[4] = a1;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1D9E84D74;
    *(v18 + 24) = v17;
    v25[4] = sub_1D9E84D80;
    v25[5] = v18;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1107296256;
    v25[2] = sub_1D9EC1C80;
    v25[3] = &block_descriptor_20;
    v19 = _Block_copy(v25);

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if ((v19 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v21 = v27;
  if (v27 == 255)
  {
    __break(1u);
  }

  else
  {
    v22 = v26;
    if (v27)
    {
      swift_willThrow();
      v23 = v26;
      v24 = v27;
      sub_1D9E84D88(v22, 1);
      sub_1D9E84D94(v23, v24);
    }

    else
    {
      *a2 = v26;
      sub_1D9E84D88(v22, 0);
      sub_1D9E84D94(v22, v21);
    }
  }

  return result;
}

uint64_t sub_1D9E809A8(uint64_t a1, uint64_t a2)
{
  sub_1D9E7F4D0(a2, v14);
  sub_1D9E7F4D0(v14, v15);
  v4 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v4;
  v16[4] = *(a1 + 64);
  v17 = *(a1 + 80);
  v5 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v5;
  sub_1D9E84990(v16);
  sub_1D9E7F4D0(v15, &v18);
  v6 = v19;
  v7 = v20;
  v8 = v21;
  v9 = v25;
  v10 = v22 & 3;
  *a1 = v18;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  v11 = v24;
  *(a1 + 48) = v23;
  *(a1 + 64) = v11;
  *(a1 + 80) = v9;
  return sub_1D9E849C0(a2, v13);
}

_OWORD *sub_1D9E80A78(_OWORD *result, void *a2)
{
  if (*(result + 5) >> 62)
  {
    v3 = result[3];
    v6[2] = result[2];
    v6[3] = v3;
    v6[4] = result[4];
    v7 = *(result + 80);
    v4 = result[1];
    v6[0] = *result;
    v6[1] = v4;
    v5 = result;
    sub_1D9E84990(v6);
    *v5 = a2;
    v5[3] = 0;
    v5[5] = 0x4000000000000000;
    return a2;
  }

  return result;
}

uint64_t sub_1D9E80B04(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v23 = sub_1D9F2B47C();
  MEMORY[0x1EEE9AC00](v23);
  v6 = sub_1D9F2B48C();
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9F2AFFC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1D9F2A93C();
  *(v3 + *(*v3 + 136)) = MEMORY[0x1E69E7CC8];
  *(v3 + *(*v3 + 144)) = MEMORY[0x1E69E7CC0];
  v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v11 = sub_1D9F2B11C();
  v12 = [v10 initWithSuiteName_];

  if (v12)
  {
    v13 = sub_1D9F2B11C();
    v14 = [v12 BOOLForKey_];
  }

  else
  {
    v14 = 0;
  }

  *(v3 + *(*v3 + 152)) = v14;
  *(v3 + qword_1EE0FF690) = 0;
  v15 = v3 + *(*v3 + 112);
  *(v15 + 32) = *(a1 + 32);
  v16 = *(a1 + 1);
  *v15 = *a1;
  *(v15 + 16) = v16;
  if (!a2)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D9E56074(a1, &v24);
    sub_1D9F2B68C();

    v17 = a1[1];
    v24 = *a1;
    v25 = v17;

    MEMORY[0x1DA742F90](0xD000000000000017, 0x80000001D9F48DA0);
    sub_1D9E84EF8(a1);
    v18 = a1[2];
    v21 = v25;
    if (v18 <= 16)
    {
      if (v18 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_17;
      }

      if (v18 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_17;
      }
    }

    else
    {
      switch(v18)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_17;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_17;
        case 33:
          sub_1D9F2AFCC();
LABEL_17:
          sub_1D9E84F4C();
          (*(v22 + 104))(v8, *MEMORY[0x1E69E8098], v6);
          v24 = MEMORY[0x1E69E7CC0];
          sub_1D9E84F98(&unk_1EE0F22D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9F2B5FC();
          a2 = sub_1D9F2B4AC();
          goto LABEL_18;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_17;
  }

LABEL_18:
  *(v3 + *(*v3 + 120)) = a2;
  v19 = v3 + *(*v3 + 128);
  *(v19 + 48) = 0;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *v19 = 0u;
  return v3;
}

uint64_t sub_1D9E80FB4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = sub_1D9F2B02C();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v12 = sub_1D9F2AE8C();
  v13 = __swift_project_value_buffer(v12, qword_1EE0F2380);

  sub_1D9E84B2C(a1, a2, v5);
  v14 = sub_1D9F2AE6C();
  v15 = sub_1D9F2B42C();

  sub_1D9E84B4C(a1, a2, v5);
  v16 = os_log_type_enabled(v14, v15);
  v94 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v95 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v93 = v11;
    v20 = v19;
    v100[0] = v19;
    *v18 = 136315650;
    v21 = sub_1D9F2BBBC();
    v23 = sub_1D9E71CA4(v21, v22, v100);
    v96 = v8;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D9E71CA4(0x286C65636E61635FLL, 0xED0000293A726F66, v100);
    *(v18 + 22) = 2080;
    sub_1D9E84B2C(a1, a2, v5);
    v25 = sub_1D9EB922C(a1, a2, v5);
    v27 = sub_1D9E71CA4(v25, v26, v100);

    *(v18 + 24) = v27;
    v8 = v96;
    _os_log_impl(&dword_1D9E39000, v14, v15, "%s.%s reason = %s", v18, 0x20u);
    swift_arrayDestroy();
    v28 = v20;
    v11 = v93;
    MEMORY[0x1DA744270](v28, -1, -1);
    v29 = v18;
    v9 = v95;
    MEMORY[0x1DA744270](v29, -1, -1);
  }

  if (v5 != 2 || a2 | a1)
  {
    v30 = *(v4 + *(*v4 + 120));
    *v11 = v30;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
    v31 = v30;
    LOBYTE(v30) = sub_1D9F2B04C();
    result = (*(v9 + 8))(v11, v8);
    if ((v30 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  v33 = v4 + *(*v4 + 128);
  swift_beginAccess();
  v35 = *v33;
  v34 = *(v33 + 8);
  v36 = *(v33 + 16);
  v38 = *(v33 + 32);
  v37 = *(v33 + 40);
  v95 = *(v33 + 24);
  v96 = v37;
  if (!*(v33 + 48))
  {
    v92 = (v33 + 24);

    v91 = v34;
    sub_1D9E84B6C(v35, v34, v36, v95, v38, v96, 0);
    v48 = sub_1D9F2AE6C();
    LODWORD(v94) = sub_1D9F2B41C();
    v49 = os_log_type_enabled(v48, v94);
    v93 = v4 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v90 = v50;
      v89 = swift_slowAlloc();
      v99[0] = v89;
      *v50 = 136315138;
      v88 = v48;
      v51 = sub_1D9E84568();
      v53 = v52;

      v54 = sub_1D9E71CA4(v51, v53, v99);

      v55 = v90;
      *(v90 + 4) = v54;
      v56 = v88;
      _os_log_impl(&dword_1D9E39000, v88, v94, "%s cancelled without being activated.", v55, 0xCu);
      v57 = v89;
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1DA744270](v57, -1, -1);
      MEMORY[0x1DA744270](v90, -1, -1);

      v58 = v91;
      if (!v91)
      {
        goto LABEL_23;
      }
    }

    else
    {

      v58 = v91;
      if (!v91)
      {
LABEL_23:
        v71 = v5;
LABEL_24:
        v76 = *v33;
        v77 = *(v33 + 8);
        v78 = *(v33 + 16);
        v79 = *(v33 + 24);
        v80 = *(v33 + 32);
        v95 = *(v33 + 40);
        v96 = v76;
        LODWORD(v94) = *(v33 + 48);
        sub_1D9E84B2C(a1, a2, v5);
        *v33 = a1;
        *(v33 + 8) = a2;
        *(v33 + 16) = v71;
        v81 = v92;
        v92[1] = 0;
        v81[2] = 0;
        *v81 = 0;
        *(v33 + 48) = 2;
        sub_1D9E84C40(v96, v77, v78, v79, v80, v95, v94);
        goto LABEL_25;
      }
    }

    v72 = v35;
    v73 = v36;
    v74 = v38;
    v75 = v96;
    xpc_connection_cancel(v96);
    sub_1D9E84CC4(v72, v58, v73, v95, v74, v75);
    goto LABEL_23;
  }

  if (*(v33 + 48) == 1)
  {
    v92 = (v33 + 24);

    v91 = v34;
    sub_1D9E84B6C(v35, v34, v36, v95, v38, v96, 1);
    v39 = sub_1D9F2AE6C();
    v40 = sub_1D9F2B41C();
    v41 = os_log_type_enabled(v39, v40);
    v93 = v4 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v99[0] = v90;
      *v42 = 136315138;
      v43 = sub_1D9E84568();
      v45 = v44;

      v46 = sub_1D9E71CA4(v43, v45, v99);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_1D9E39000, v39, v40, "%s cancelling...", v42, 0xCu);
      v47 = v90;
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x1DA744270](v47, -1, -1);
      MEMORY[0x1DA744270](v42, -1, -1);
    }

    else
    {
    }

    xpc_connection_cancel(v96);

    v62 = sub_1D9F2AE6C();
    v63 = sub_1D9F2B41C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v99[0] = v65;
      *v64 = 136315138;
      v94 = v62;
      v66 = sub_1D9E84568();
      v68 = v67;

      v69 = sub_1D9E71CA4(v66, v68, v99);

      *(v64 + 4) = v69;
      v70 = v94;
      _os_log_impl(&dword_1D9E39000, v94, v63, "%s cancelled.", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1DA744270](v65, -1, -1);
      MEMORY[0x1DA744270](v64, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v71 = v5;
    goto LABEL_24;
  }

  v59 = v95;
  v60 = v38;
  v94 = v38;
  v61 = v96;
  sub_1D9E84B6C(v35, v34, v36, v95, v60, v96, 2);
  sub_1D9E84C40(v35, v34, v36, v59, v94, v61, 2);
LABEL_25:
  v82 = *(*v4 + 136);
  swift_beginAccess();
  if (*(*(v4 + v82) + 16))
  {

    *(v4 + v82) = MEMORY[0x1E69E7CC8];
  }

  swift_endAccess();
  v83 = *(*v4 + 144);
  swift_beginAccess();
  v84 = *(v4 + v83);
  *(v4 + v83) = MEMORY[0x1E69E7CC0];
  v85 = *(v84 + 16);
  if (v85)
  {
    v86 = v84 + 40;
    do
    {
      v87 = *(v86 - 8);
      v97[0] = a1;
      v97[1] = a2;
      v98 = v5;

      v87(v97);

      v86 += 16;
      --v85;
    }

    while (v85);
  }
}

void sub_1D9E818B0()
{
  v1 = v0;
  v2 = sub_1D9F2B02C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v6 = sub_1D9F2AE8C();
  v7 = __swift_project_value_buffer(v6, qword_1EE0F2380);

  v8 = sub_1D9F2AE6C();
  v9 = sub_1D9F2B42C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v107 = v7;
    v11 = v10;
    v108 = swift_slowAlloc();
    aBlock = v108;
    *v11 = 136315394;
    v12 = sub_1D9F2BBBC();
    v14 = v1;
    v15 = sub_1D9E71CA4(v12, v13, &aBlock);

    *(v11 + 4) = v15;
    v1 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D9E71CA4(0x746176697463615FLL, 0xEB00000000292865, &aBlock);
    _os_log_impl(&dword_1D9E39000, v8, v9, "%s.%s", v11, 0x16u);
    v16 = v108;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v16, -1, -1);
    v7 = v107;
    MEMORY[0x1DA744270](v11, -1, -1);
  }

  v17 = *(v1 + *(*v1 + 120));
  *v5 = v17;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v18 = v17;
  LOBYTE(v17) = sub_1D9F2B04C();
  (*(v3 + 8))(v5, v2);
  if (v17)
  {
    v104 = v18;
    v19 = v1 + *(*v1 + 128);
    swift_beginAccess();
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v25 = *(v19 + 32);
    v24 = *(v19 + 40);
    if (*(v19 + 48))
    {
      if (*(v19 + 48) == 1)
      {
        sub_1D9E84B6C(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), 1);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D9E84B6C(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), 2);
        sub_1D9E84C40(v21, v20, v22, v23, v25, v24, 2);

        v28 = sub_1D9F2AE6C();
        v29 = sub_1D9F2B43C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          aBlock = v31;
          *v30 = 136315138;
          v32 = sub_1D9E84568();
          v34 = v33;

          v35 = sub_1D9E71CA4(v32, v34, &aBlock);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_1D9E39000, v28, v29, "%s failed to activate because it is already cancelled.", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x1DA744270](v31, -1, -1);
          MEMORY[0x1DA744270](v30, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      v102 = *(v19 + 16);
      v107 = v7;
      v103 = v25;
      if (v20)
      {
        sub_1D9E84B6C(v21, v20, v22, v23, v25, v24, 0);
        v26 = v21;
        v106 = v24;
        v101 = v21;
        v27 = v20;
        v95 = v22;
        v108 = v23;
        v100 = v25;
      }

      else
      {
        v36 = v1 + *(*v1 + 112);
        v37 = *v36;
        v38 = *(v36 + 8);
        v39 = *(v36 + 24);
        v95 = *(v36 + 16);
        v108 = v39;
        v100 = *(v36 + 32);
        if (v100)
        {
          v40 = 2;
        }

        else
        {
          v40 = 0;
        }

        v101 = v37;
        v41 = sub_1D9F2B15C();
        sub_1D9E84B6C(v21, 0, v102, v23, v25, v24, 0);

        mach_service = xpc_connection_create_mach_service((v41 + 32), 0, v40);
        v26 = v21;
        v27 = v38;
        v106 = mach_service;
        v22 = v102;
      }

      v105 = v27;

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      v96 = v26;
      v98 = v23;
      v97 = v24;
      sub_1D9E84BF0(v26, v20, v22, v23, v103, v24);
      v43 = sub_1D9F2AE6C();
      v44 = sub_1D9F2B41C();
      swift_unknownObjectRelease();

      v45 = v105;

      v46 = os_log_type_enabled(v43, v44);
      v99 = v20;
      if (v46)
      {
        v47 = v45;
        v48 = v1;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v116 = v50;
        *v49 = 136315394;
        v51 = sub_1D9E84568();
        v53 = v52;

        v54 = sub_1D9E71CA4(v51, v53, &v116);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        aBlock = v101;
        v111 = v47;
        v55 = v95;
        v112 = v95;
        v113 = v108;
        LOBYTE(v114) = v100 & 1;
        v56 = v106;
        v115 = v106;
        v57 = sub_1D9F2B13C();
        v59 = sub_1D9E71CA4(v57, v58, &v116);

        *(v49 + 14) = v59;
        _os_log_impl(&dword_1D9E39000, v43, v44, "%s connection = %s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v50, -1, -1);
        v60 = v49;
        v1 = v48;
        MEMORY[0x1DA744270](v60, -1, -1);
      }

      else
      {
        v56 = v106;
        swift_unknownObjectRelease();

        v55 = v95;
      }

      v61 = sub_1D9F2AE6C();
      v62 = sub_1D9F2B41C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = v1;
        v65 = swift_slowAlloc();
        aBlock = v65;
        *v63 = 136315138;
        v66 = sub_1D9E84568();
        v68 = v67;

        v69 = sub_1D9E71CA4(v66, v68, &aBlock);

        *(v63 + 4) = v69;
        _os_log_impl(&dword_1D9E39000, v61, v62, "%s activating...", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        v70 = v65;
        v1 = v64;
        MEMORY[0x1DA744270](v70, -1, -1);
        MEMORY[0x1DA744270](v63, -1, -1);
      }

      else
      {
      }

      v94[1] = v1;
      v71 = swift_allocObject();
      swift_weakInit();
      v72 = swift_allocObject();
      swift_weakInit();
      *&v116 = sub_1D9E84EDC;
      *(&v116 + 1) = v71;
      *&v117 = sub_1D9E84EE4;
      *(&v117 + 1) = v72;
      v118 = v104;
      xpc_connection_set_target_queue(v56, v104);
      v73 = swift_allocObject();
      v74 = v117;
      *(v73 + 16) = v116;
      *(v73 + 32) = v74;
      *(v73 + 48) = v118;
      v114 = sub_1D9E70418;
      v115 = v73;
      aBlock = MEMORY[0x1E69E9820];
      v111 = 1107296256;
      v112 = sub_1D9E56A2C;
      v113 = &block_descriptor_33;
      v75 = _Block_copy(&aBlock);
      sub_1D9E51E70(&v116, v109, &unk_1ECB73B50, &unk_1D9F334D0);

      xpc_connection_set_event_handler(v56, v75);
      _Block_release(v75);
      xpc_connection_activate(v56);
      sub_1D9E51FE8(&v116, &unk_1ECB73B50, &unk_1D9F334D0);
      v76 = v100 & 1;
      v77 = *v19;
      v78 = *(v19 + 8);
      v79 = *(v19 + 16);
      v80 = *(v19 + 24);
      v81 = *(v19 + 32);
      v82 = *(v19 + 40);
      v83 = v105;
      *v19 = v101;
      *(v19 + 8) = v83;
      v84 = v108;
      *(v19 + 16) = v55;
      *(v19 + 24) = v84;
      *(v19 + 32) = v76;
      *(v19 + 40) = v56;
      v85 = *(v19 + 48);
      *(v19 + 48) = 1;

      v108 = v84;

      v106 = v56;
      swift_unknownObjectRetain();
      sub_1D9E84C40(v77, v78, v79, v80, v81, v82, v85);

      v86 = sub_1D9F2AE6C();
      v87 = sub_1D9F2B41C();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock = v89;
        *v88 = 136315138;
        v90 = sub_1D9E84568();
        v92 = v91;

        v93 = sub_1D9E71CA4(v90, v92, &aBlock);

        *(v88 + 4) = v93;
        _os_log_impl(&dword_1D9E39000, v86, v87, "%s activated.", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x1DA744270](v89, -1, -1);
        MEMORY[0x1DA744270](v88, -1, -1);

        sub_1D9E84CC4(v96, v99, v102, v98, v103, v97);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D9E84CC4(v96, v99, v102, v98, v103, v97);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9E82544(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9F2AF8C();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9F2AFFC();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v10 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v10, qword_1EE0F2380);

  v11 = sub_1D9F2AE6C();
  v12 = sub_1D9F2B42C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v8;
    v14 = v13;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v14 = 136315650;
    v15 = sub_1D9F2BBBC();
    v17 = sub_1D9E71CA4(v15, v16, aBlock);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1D9E71CA4(0x66286C65636E6163, 0xEC000000293A726FLL, aBlock);
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1D9E71CA4(a1, a2, aBlock);
    _os_log_impl(&dword_1D9E39000, v11, v12, "%s.%s reason = %s", v14, 0x20u);
    v18 = v26;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v18, -1, -1);
    v19 = v14;
    v8 = v27;
    MEMORY[0x1DA744270](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = sub_1D9E84AE4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);

  v22 = v28;
  sub_1D9F2AFAC();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D9E84F98(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v23 = v31;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v22, v23, v21);
  _Block_release(v21);
  (*(v29 + 8))(v23, v6);
  (*(v30 + 8))(v22, v8);
}

void sub_1D9E82A14(const char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v119 = a2;
  v5 = type metadata accessor for ServiceEnvelope(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v117 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v113 - v8;
  v10 = sub_1D9F2B02C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v118) = *(v2 + *(*v2 + 152));
  if (v118 != 1)
  {
    goto LABEL_6;
  }

  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v14 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v14, qword_1EE0F2380);

    v15 = sub_1D9F2AE6C();
    v16 = sub_1D9F2B42C();

    if (os_log_type_enabled(v15, v16))
    {
      v114 = "sendMessage(sync:)";
      v17 = swift_slowAlloc();
      v115 = v16;
      v18 = v17;
      v116 = swift_slowAlloc();
      v122[0] = v116;
      *v18 = 136315650;
      v19 = sub_1D9F2BBBC();
      v21 = v9;
      v22 = a1;
      v23 = sub_1D9E71CA4(v19, v20, v122);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1D9E71CA4(0xD000000000000014, 0x80000001D9F48D60, v122);
      *(v18 + 22) = 2080;
      a1 = v22;
      v9 = v21;
      *(v18 + 24) = sub_1D9E71CA4(0xD000000000000057, v114 | 0x8000000000000000, v122);
      _os_log_impl(&dword_1D9E39000, v15, v115, "%s.%s messageType = %s", v18, 0x20u);
      v24 = v116;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v24, -1, -1);
      MEMORY[0x1DA744270](v18, -1, -1);
    }

LABEL_6:
    v25 = *(v3 + *(*v3 + 120));
    *v13 = v25;
    (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
    v26 = v25;
    LOBYTE(v25) = sub_1D9F2B04C();
    v27 = *(v11 + 8);
    v11 += 8;
    v27(v13, v10);
    if (v25)
    {
      break;
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v28 = v3 + *(*v3 + 128);
  swift_beginAccess();
  v30 = *v28;
  v29 = *(v28 + 8);
  v31 = *(v28 + 16);
  v32 = *(v28 + 24);
  v33 = *(v28 + 32);
  v34 = *(v28 + 32);
  v35 = *(v28 + 40);
  if (*(v28 + 48))
  {
    if (*(v28 + 48) == 1)
    {
      v122[0] = *v28;
      v122[1] = v29;
      v122[2] = v31;
      v122[3] = v32;
      v123 = v33 & 1;
      v124 = v35;
      sub_1D9E84B6C(v30, v29, v31, v32, v34, v35, 1);
      sub_1D9E7E1F0(a1, v9);
      Current = CFAbsoluteTimeGetCurrent();
      if (v118)
      {
        if (qword_1EE0F2378 != -1)
        {
          swift_once();
        }

        v37 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v37, qword_1EE0F2380);

        v38 = sub_1D9F2AE6C();
        v39 = sub_1D9F2B42C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = v9;
          v42 = swift_slowAlloc();
          *&v121 = v42;
          *v40 = 136315394;
          v43 = sub_1D9E84568();
          v45 = v44;

          v46 = sub_1D9E71CA4(v43, v45, &v121);

          *(v40 + 4) = v46;
          *(v40 + 12) = 2080;
          v47 = sub_1D9F2BBBC();
          v49 = v48;

          v50 = sub_1D9E71CA4(v47, v49, &v121);

          *(v40 + 14) = v50;
          _os_log_impl(&dword_1D9E39000, v38, v39, "%s sending message %s...", v40, 0x16u);
          swift_arrayDestroy();
          v51 = v42;
          v9 = v41;
          MEMORY[0x1DA744270](v51, -1, -1);
          MEMORY[0x1DA744270](v40, -1, -1);
        }

        else
        {
        }
      }

      v91 = v117;
      _s29VisualActionPredictionSupport19SystemXPCConnectionV4send4syncAA15ServiceEnvelopeVAG_tAA10XPCFailureOYKF(v9, &v121, v117);
      sub_1D9E7E4E4(&v121);
      if (v118)
      {
        if (qword_1EE0F2378 != -1)
        {
          swift_once();
        }

        v92 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v92, qword_1EE0F2380);

        v93 = sub_1D9F2AE6C();
        v94 = sub_1D9F2B41C();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v120 = v96;
          *v95 = 136315906;
          v97 = sub_1D9E84568();
          v98 = v9;
          v100 = v99;

          v101 = sub_1D9E71CA4(v97, v100, &v120);

          *(v95 + 4) = v101;
          *(v95 + 12) = 2080;
          v102 = sub_1D9F2BBBC();
          v104 = v103;

          v105 = sub_1D9E71CA4(v102, v104, &v120);

          *(v95 + 14) = v105;
          *(v95 + 22) = 2080;
          v106 = sub_1D9F2BBBC();
          v108 = v107;

          v109 = sub_1D9E71CA4(v106, v108, &v120);

          *(v95 + 24) = v109;
          *(v95 + 32) = 2048;
          *(v95 + 34) = CFAbsoluteTimeGetCurrent() - Current;
          _os_log_impl(&dword_1D9E39000, v93, v94, "%s received reply %s for message %s, took %f seconds.", v95, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1DA744270](v96, -1, -1);
          MEMORY[0x1DA744270](v95, -1, -1);

          sub_1D9E72374(v117);
          v110 = v98;
LABEL_36:
          sub_1D9E72374(v110);
          swift_unknownObjectRelease();

          v112 = v119;
          *v119 = v121;
          *(v112 + 8) = 0;
          return;
        }

        v111 = v117;
      }

      else
      {
        v111 = v91;
      }

      sub_1D9E72374(v111);
      v110 = v9;
      goto LABEL_36;
    }

    v67 = v33 | ((*(v28 + 33) | ((*(v28 + 37) | (*(v28 + 39) << 16)) << 32)) << 8);
    sub_1D9E84B6C(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), v34, *(v28 + 40), 2);
    if (qword_1EE0F2378 != -1)
    {
      swift_once();
    }

    v68 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v68, qword_1EE0F2380);

    sub_1D9E84B6C(v30, v29, v31, v32, v67, v35, 2);
    v69 = sub_1D9F2AE6C();
    v70 = sub_1D9F2B43C();
    sub_1D9E84C40(v30, v29, v31, v32, v67, v35, 2);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v122[0] = v72;
      *v71 = 136315650;
      LODWORD(v118) = v70;
      v73 = sub_1D9E84568();
      v75 = v74;

      v76 = sub_1D9E71CA4(v73, v75, v122);

      *(v71 + 4) = v76;
      *(v71 + 12) = 2080;
      v77 = sub_1D9F2BBBC();
      v79 = v78;

      v80 = sub_1D9E71CA4(v77, v79, v122);

      *(v71 + 14) = v80;
      *(v71 + 22) = 2080;
      sub_1D9E84B2C(v30, v29, v31);
      v81 = sub_1D9EB922C(v30, v29, v31);
      v83 = sub_1D9E71CA4(v81, v82, v122);

      *(v71 + 24) = v83;
      _os_log_impl(&dword_1D9E39000, v69, v118, "%s failed to send message %s because service session is cancelled for reason %s.", v71, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v72, -1, -1);
      MEMORY[0x1DA744270](v71, -1, -1);
    }

    else
    {
    }

    sub_1D9E3F7D8();
    v88 = swift_allocError();
    *v89 = v30;
    *(v89 + 8) = v29;
    *(v89 + 16) = v31;
    v90 = v119;
    *v119 = v88;
    *(v90 + 8) = 1;
  }

  else
  {
    v118 = *(v28 + 33) | ((*(v28 + 37) | (*(v28 + 39) << 16)) << 32);
    sub_1D9E84B6C(v30, v29, v31, v32, v34, v35, 0);
    if (qword_1EE0F2378 != -1)
    {
      swift_once();
    }

    v52 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v52, qword_1EE0F2380);

    v53 = sub_1D9F2AE6C();
    v54 = sub_1D9F2B43C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v114 = a1;
      v56 = v55;
      v117 = swift_slowAlloc();
      v122[0] = v117;
      *v56 = 136315394;
      v116 = v53;
      v57 = sub_1D9E84568();
      v115 = v54;
      v58 = v33;
      v60 = v59;

      v61 = sub_1D9E71CA4(v57, v60, v122);
      v33 = v58;

      *(v56 + 4) = v61;
      *(v56 + 12) = 2080;
      v62 = sub_1D9F2BBBC();
      v64 = v63;

      v65 = sub_1D9E71CA4(v62, v64, v122);

      *(v56 + 14) = v65;
      v53 = v116;
      _os_log_impl(&dword_1D9E39000, v116, v115, "%s failed to send message %s because service session is not activated.", v56, 0x16u);
      v66 = v117;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v66, -1, -1);
      MEMORY[0x1DA744270](v56, -1, -1);
    }

    else
    {
    }

    sub_1D9E3F7D8();
    v84 = swift_allocError();
    *v85 = 0;
    *(v85 + 8) = 0;
    *(v85 + 16) = 0x80;
    v86 = v119;
    *v119 = v84;
    v87 = v33 | (v118 << 8);
    *(v86 + 8) = 1;
    sub_1D9E84CC4(v30, v29, v31, v32, v87, v35);
  }
}

void sub_1D9E83A68(void *a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v8 = sub_1D9F2B02C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v12 = sub_1D9F2AE8C();
  v13 = __swift_project_value_buffer(v12, qword_1EE0F2380);

  sub_1D9E56E7C(a1, a2, v5);
  v52 = v13;
  v14 = sub_1D9F2AE6C();
  v15 = sub_1D9F2B42C();

  v16 = os_log_type_enabled(v14, v15);
  v54 = a1;
  v55 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    LODWORD(v53) = v5;
    v49 = v19;
    v56 = v19;
    *v18 = 136315650;
    v20 = sub_1D9F2BBBC();
    v51 = v4;
    v5 = a1;
    v22 = sub_1D9E71CA4(v20, v21, &v56);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D9E71CA4(0xD000000000000010, 0x80000001D9F48D80, &v56);
    *(v18 + 22) = 2080;
    *&v57 = v5;
    *(&v57 + 1) = a2;
    v58 = v53;
    v23 = sub_1D9F2B13C();
    v25 = sub_1D9E71CA4(v23, v24, &v56);

    *(v18 + 24) = v25;
    v4 = v51;
    _os_log_impl(&dword_1D9E39000, v14, v15, "%s.%s error = %s", v18, 0x20u);
    v26 = v49;
    swift_arrayDestroy();
    LOBYTE(v5) = v53;
    MEMORY[0x1DA744270](v26, -1, -1);
    v27 = v18;
    v8 = v50;
    MEMORY[0x1DA744270](v27, -1, -1);
  }

  else
  {

    sub_1D9E56E30(a1, a2, v5);
  }

  v28 = *(v4 + *(*v4 + 120));
  *v11 = v28;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v29 = v28;
  v30 = sub_1D9F2B04C();
  (*(v9 + 8))(v11, v8);
  if (v30)
  {
    v32 = v54;
    v31 = v55;
    if (v5 == 4 || v5 == 5 && (!(v54 ^ 3 | v55) || !(v54 ^ 2 | v55) && *(v4 + qword_1EE0FF690)))
    {
      swift_retain_n();
      sub_1D9E56E7C(v32, v31, v5);
      v33 = sub_1D9F2AE6C();
      v34 = sub_1D9F2B42C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56 = v53;
        *v35 = 136315394;
        v37 = sub_1D9E84568();
        v39 = v38;

        v40 = sub_1D9E71CA4(v37, v39, &v56);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2112;
        *&v57 = v32;
        *(&v57 + 1) = v31;
        v58 = v5;
        sub_1D9E56E7C(v32, v31, v5);
        sub_1D9E56B78();
        if (sub_1D9F2BA0C())
        {
          sub_1D9E56E30(v57, *(&v57 + 1), v58);
        }

        else
        {
          swift_allocError();
          v41 = v58;
          *v42 = v57;
          *(v42 + 16) = v41;
        }

        v43 = _swift_stdlib_bridgeErrorToNSError();
        sub_1D9E56E30(v32, v31, v5);
        *(v35 + 14) = v43;
        *v36 = v43;
        _os_log_impl(&dword_1D9E39000, v33, v34, "%s Nonrecoverable error %@ encountered. Cancelling service session...", v35, 0x16u);
        sub_1D9E51FE8(v36, &unk_1ECB73B60, &unk_1D9F32210);
        MEMORY[0x1DA744270](v36, -1, -1);
        v44 = v53;
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1DA744270](v44, -1, -1);
        MEMORY[0x1DA744270](v35, -1, -1);
      }

      else
      {

        sub_1D9E56E30(v32, v31, v5);
      }

      *&v57 = v32;
      *(&v57 + 1) = v31;
      v58 = v5;
      sub_1D9E56E7C(v32, v31, v5);
      sub_1D9E56B78();
      v45 = sub_1D9F2BA0C();
      if (v45)
      {
        v46 = v45;
        sub_1D9E56E30(v57, *(&v57 + 1), v58);
      }

      else
      {
        v46 = swift_allocError();
        v47 = v58;
        *v48 = v57;
        *(v48 + 16) = v47;
      }

      sub_1D9E80FB4(v46, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9E840A0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9E8411C(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1D9E8411C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v7 = type metadata accessor for ServiceEnvelope(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9F2B02C();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + *(*v4 + 120));
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  v16 = sub_1D9F2B04C();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v18(v13, v10);
  if (v16)
  {
    v19 = *(*v4 + 136);
    swift_beginAccess();
    v20 = *(v4 + v19);
    v21 = swift_allocObject();
    v21[2] = v15;
    v21[3] = a2;
    v21[4] = a3;
    v22 = v15;

    sub_1D9EAED74(v39, sub_1D9E84EEC, v21, v20);
  }

  else
  {
    __break(1u);
    swift_once();
    v23 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v23, qword_1EE0F2380);

    v24 = v10;
    v25 = sub_1D9F2AE6C();
    v26 = sub_1D9F2B43C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40[0] = v28;
      *v27 = 136315394;
      v29 = sub_1D9E84568();
      v38[1] = v17;
      v31 = v30;

      v32 = sub_1D9E71CA4(v29, v31, v40);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_1D9F2BAAC();
      v35 = sub_1D9E71CA4(v33, v34, v40);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1D9E39000, v25, v26, "%s failed to handle incoming envelope due to error %s.", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v28, -1, -1);
      MEMORY[0x1DA744270](v27, -1, -1);
    }

    else
    {
    }

    sub_1D9F2A93C();
    sub_1D9F2ACFC();
    *&v9[v7[6]] = 6;
    v37 = &v9[v7[7]];
    *v37 = 0;
    *(v37 + 1) = 0;
    *&v9[v7[8]] = xmmword_1D9F334C0;
    *&v9[v7[9]] = 0;
    v39(v9);

    return sub_1D9E72374(v9);
  }
}

uint64_t sub_1D9E84568()
{
  sub_1D9F2B68C();

  v4 = sub_1D9F2BBBC();
  MEMORY[0x1DA742F90](0x20656D616E207B20, 0xEA0000000000203DLL);
  MEMORY[0x1DA742F90](*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  MEMORY[0x1DA742F90](0x203D206469202CLL, 0xE700000000000000);
  sub_1D9F2AD7C();
  sub_1D9E84F98(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_1D9F2B9FC();
  MEMORY[0x1DA742F90](v1);

  MEMORY[0x1DA742F90](0x3D20656C6F72202CLL, 0xE900000000000020);
  if (*(v0 + qword_1EE0FF690))
  {
    v2 = 0x726576726573;
  }

  else
  {
    v2 = 0x746E65696C63;
  }

  MEMORY[0x1DA742F90](v2, 0xE600000000000000);

  MEMORY[0x1DA742F90](32032, 0xE200000000000000);
  return v4;
}

uint64_t sub_1D9E84730(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D9E84828;

  return v6(a1);
}

uint64_t sub_1D9E84828()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1D9E84A38()
{
  result = qword_1ECB73F38;
  if (!qword_1ECB73F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73F38);
  }

  return result;
}

uint64_t objectdestroyTm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D9E84B2C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

void sub_1D9E84B4C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void sub_1D9E84B6C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 2:

      sub_1D9E84B2C(result, a2, a3);
      break;
    case 1:

      swift_unknownObjectRetain();
      break;
    case 0:

      sub_1D9E84BF0(result, a2, a3, a4, a5, a6);
      break;
  }
}

void sub_1D9E84BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    swift_unknownObjectRetain();
  }
}

void sub_1D9E84C40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 2:

      sub_1D9E84B4C(a1, a2, a3);
      break;
    case 1:

      swift_unknownObjectRelease();
      break;
    case 0:

      sub_1D9E84CC4(a1, a2, a3, a4, a5, a6);
      break;
  }
}

void sub_1D9E84CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

void sub_1D9E84D14(uint64_t *a1, uint64_t a2, const char **a3)
{
  sub_1D9E82A14(*a3, &v7);
  v4 = v8;
  v5 = *a1;
  *a1 = v7;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;

  sub_1D9E84D94(v5, v6);
}

id sub_1D9E84D88(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1D9E84D94(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1D9E84DAC(result, a2 & 1);
  }
}

void sub_1D9E84DAC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1D9E84DB8()
{
  result = qword_1ECB73F40;
  if (!qword_1ECB73F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73F40);
  }

  return result;
}

unint64_t sub_1D9E84E0C()
{
  result = qword_1ECB73F48;
  if (!qword_1ECB73F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73F48);
  }

  return result;
}

uint64_t sub_1D9E84E64(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9E83A68(v2, v3, v4);
  }

  return result;
}

unint64_t sub_1D9E84F4C()
{
  result = qword_1EE0F22D0;
  if (!qword_1EE0F22D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0F22D0);
  }

  return result;
}

uint64_t sub_1D9E84F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9E84FE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D9E85034(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9E851B0;

  return sub_1D9E84730(a1, v4);
}

uint64_t sub_1D9E850EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9E7ECAC;

  return sub_1D9E84730(a1, v4);
}

VisualActionPredictionSupport::StructuredExtraction::Object::Category_optional __swiftcall StructuredExtraction.Object.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9F2B7BC();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StructuredExtraction.Object.Category.rawValue.getter()
{
  result = 0x637320746E657645;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
    case 9:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x73696C206F646F54;
      break;
    case 4:
      result = 0x676E6970706F6853;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 1970169165;
      break;
    case 7:
      result = 0x696C20726568744FLL;
      break;
    case 8:
      result = 1768319319;
      break;
    case 0xA:
      result = 0x6E2072656B636F4CLL;
      break;
    case 0xB:
      result = 0x74706965636552;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0x6F726665726F7453;
      break;
    case 0xE:
      result = 0x746375646F7250;
      break;
    case 0xF:
      result = 0x726568744FLL;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D9E853EC()
{
  v0 = StructuredExtraction.Object.Category.rawValue.getter();
  v2 = v1;
  if (v0 == StructuredExtraction.Object.Category.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D9F2BA1C();
  }

  return v5 & 1;
}

unint64_t sub_1D9E85494@<X0>(unint64_t *a1@<X8>)
{
  result = StructuredExtraction.Object.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D9E8557C()
{
  sub_1D9F2BAFC();
  StructuredExtraction.Object.Category.rawValue.getter();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E855E4(uint64_t a1)
{
  StructuredExtraction.Object.Category.rawValue.getter();
  sub_1D9F2B18C();
}

uint64_t sub_1D9E85648()
{
  sub_1D9F2BAFC();
  StructuredExtraction.Object.Category.rawValue.getter();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t StructuredExtraction.Object.detectedEntities.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

VisualActionPredictionSupport::StructuredExtraction::Object __swiftcall StructuredExtraction.Object.init(category:detectedEntities:)(VisualActionPredictionSupport::StructuredExtraction::Object::Category category, Swift::OpaquePointer detectedEntities)
{
  *v2 = *category;
  *(v2 + 8) = detectedEntities;
  result.detectedEntities = detectedEntities;
  result.category = category;
  return result;
}

uint64_t sub_1D9E8574C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1D9E8578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F48DE0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E85870(uint64_t a1)
{
  v2 = sub_1D9E86C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E858AC(uint64_t a1)
{
  v2 = sub_1D9E86C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StructuredExtraction.Object.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F50, &qword_1D9F35D90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E86C3C();
  sub_1D9F2BB8C();
  v13 = v8;
  v12 = 0;
  sub_1D9E86C90();
  sub_1D9F2B9AC();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F68, &qword_1D9F35D98);
    sub_1D9E86DF8(&qword_1EE0F1148, qword_1EE0F19F0, &protocol conformance descriptor for DetectedEntity, MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StructuredExtraction.Object.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for DetectedEntity(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 8);
  v12[15] = *v1;
  StructuredExtraction.Object.Category.rawValue.getter();
  sub_1D9F2B18C();

  result = MEMORY[0x1DA7438F0](*(v7 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1D9E86CE4(v10, v6);
      DetectedEntity.hash(into:)(a1);
      result = sub_1D9E86D48(v6);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t StructuredExtraction.Object.hashValue.getter()
{
  v1 = *(v0 + 1);
  v4 = *v0;
  v5 = v1;
  sub_1D9F2BAFC();
  StructuredExtraction.Object.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t StructuredExtraction.Object.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F70, &qword_1D9F35DA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E86C3C();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v14 = 0;
    sub_1D9E86DA4();
    sub_1D9F2B89C();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F68, &qword_1D9F35D98);
    v13 = 1;
    sub_1D9E86DF8(&qword_1EE0F1140, &qword_1EE0F19E8, &protocol conformance descriptor for DetectedEntity, MEMORY[0x1E69E6330]);
    sub_1D9F2B89C();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E85EAC()
{
  v1 = *(v0 + 1);
  v4 = *v0;
  v5 = v1;
  sub_1D9F2BAFC();
  StructuredExtraction.Object.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E85F04()
{
  v1 = *(v0 + 1);
  v4 = *v0;
  v5 = v1;
  sub_1D9F2BAFC();
  StructuredExtraction.Object.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t StructuredExtraction.objects.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t StructuredExtraction.caption.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StructuredExtraction.caption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

VisualActionPredictionSupport::StructuredExtraction __swiftcall StructuredExtraction.init(objects:caption:)(Swift::OpaquePointer objects, Swift::String_optional caption)
{
  *v2 = objects;
  *(v2 + 8) = caption;
  result.caption = caption;
  result.objects = objects;
  return result;
}

uint64_t static StructuredExtraction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1D9E4A738(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_1D9F2BA1C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9E860C8()
{
  if (*v0)
  {
    return 0x6E6F6974706163;
  }

  else
  {
    return 0x737463656A626FLL;
  }
}

uint64_t sub_1D9E860FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737463656A626FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E861D8(uint64_t a1)
{
  v2 = sub_1D9E86EC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E86214(uint64_t a1)
{
  v2 = sub_1D9E86EC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StructuredExtraction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F80, &qword_1D9F35DA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E86EC4();

  sub_1D9F2BB8C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F90, &qword_1D9F35DB0);
  sub_1D9E86F18(&qword_1ECB73F98, sub_1D9E86F90, MEMORY[0x1E69E6300]);
  sub_1D9F2B9AC();

  if (!v2)
  {
    v12 = 1;
    sub_1D9F2B90C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StructuredExtraction.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  sub_1D9E4F198(a1, *v1);
  if (!v2)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t StructuredExtraction.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D9F2BAFC();
  sub_1D9E4F198(v4, v1);
  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t StructuredExtraction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73FA8, &qword_1D9F35DB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E86EC4();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F90, &qword_1D9F35DB0);
  v14[15] = 0;
  sub_1D9E86F18(&qword_1ECB73FB0, sub_1D9E86FE4, MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  v9 = v15;
  v14[14] = 1;
  v10 = sub_1D9F2B7FC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E867B0()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D9F2BAFC();
  sub_1D9E4F198(v4, v1);
  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E86830(uint64_t a1)
{
  v2 = v1[2];
  sub_1D9E4F198(a1, *v1);
  if (!v2)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t sub_1D9E868AC()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D9F2BAFC();
  sub_1D9E4F198(v4, v1);
  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E86928(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1D9E4A738(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_1D9F2BA1C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1D9E869B0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
    sub_1D9F009E8(v5);

    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = v5[2];
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= v5[3] >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D9F0C298(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        v12 = (v5[3] >> 1) - v5[2];
        type metadata accessor for DetectedEntity(0);
        if (v12 < v7)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v3;
    v4 += 2;
    if (v2 == v3)
    {
      goto LABEL_20;
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
}

uint64_t _s29VisualActionPredictionSupport20StructuredExtractionV6ObjectV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = StructuredExtraction.Object.Category.rawValue.getter();
  v6 = v5;
  if (v4 == StructuredExtraction.Object.Category.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1D9F2BA1C();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D9E4AE0C(v2, v3);
}

unint64_t sub_1D9E86C3C()
{
  result = qword_1ECB73F58;
  if (!qword_1ECB73F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73F58);
  }

  return result;
}

unint64_t sub_1D9E86C90()
{
  result = qword_1ECB73F60;
  if (!qword_1ECB73F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73F60);
  }

  return result;
}

uint64_t sub_1D9E86CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9E86D48(uint64_t a1)
{
  v2 = type metadata accessor for DetectedEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9E86DA4()
{
  result = qword_1ECB73F78;
  if (!qword_1ECB73F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73F78);
  }

  return result;
}

uint64_t sub_1D9E86DF8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73F68, &qword_1D9F35D98);
    sub_1D9E86E80(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9E86E80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DetectedEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9E86EC4()
{
  result = qword_1ECB73F88;
  if (!qword_1ECB73F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73F88);
  }

  return result;
}

uint64_t sub_1D9E86F18(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73F90, &qword_1D9F35DB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9E86F90()
{
  result = qword_1ECB73FA0;
  if (!qword_1ECB73FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FA0);
  }

  return result;
}

unint64_t sub_1D9E86FE4()
{
  result = qword_1ECB73FB8;
  if (!qword_1ECB73FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FB8);
  }

  return result;
}

unint64_t sub_1D9E8703C()
{
  result = qword_1ECB73FC0;
  if (!qword_1ECB73FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73FC8, &qword_1D9F35E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FC0);
  }

  return result;
}

unint64_t sub_1D9E870A4()
{
  result = qword_1ECB73FD0;
  if (!qword_1ECB73FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FD0);
  }

  return result;
}

unint64_t sub_1D9E870FC()
{
  result = qword_1ECB73FD8;
  if (!qword_1ECB73FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FD8);
  }

  return result;
}

unint64_t sub_1D9E87154()
{
  result = qword_1ECB73FE0;
  if (!qword_1ECB73FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FE0);
  }

  return result;
}

uint64_t sub_1D9E871A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9E871F0(uint64_t result, int a2, int a3)
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

unint64_t sub_1D9E87284()
{
  result = qword_1ECB73FE8;
  if (!qword_1ECB73FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FE8);
  }

  return result;
}

unint64_t sub_1D9E872DC()
{
  result = qword_1ECB73FF0;
  if (!qword_1ECB73FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FF0);
  }

  return result;
}

unint64_t sub_1D9E87334()
{
  result = qword_1ECB73FF8;
  if (!qword_1ECB73FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB73FF8);
  }

  return result;
}

unint64_t sub_1D9E8738C()
{
  result = qword_1ECB74000;
  if (!qword_1ECB74000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74000);
  }

  return result;
}

unint64_t sub_1D9E873E4()
{
  result = qword_1ECB74008;
  if (!qword_1ECB74008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74008);
  }

  return result;
}

unint64_t sub_1D9E8743C()
{
  result = qword_1ECB74010;
  if (!qword_1ECB74010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74010);
  }

  return result;
}

unint64_t sub_1D9E87490()
{
  result = qword_1ECB74018;
  if (!qword_1ECB74018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74018);
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport20MachServiceInterfaceO18makeServerListener3forAA17SystemXPCListenerVAA0eF10DescriptorV_tAA10XPCFailureOYKFZ@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = sub_1D9F2B15C();

  mach_service = xpc_connection_create_mach_service((v8 + 32), 0, 1uLL);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = mach_service;
  return result;
}

uint64_t _s29VisualActionPredictionSupport20MachServiceInterfaceO20makeClientConnection3forAA19SystemXPCConnectionVAA0eF10DescriptorV_tAA10XPCFailureOYKFZ@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1D9F2B15C();

  mach_service = xpc_connection_create_mach_service((v9 + 32), 0, v8);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = mach_service;
  return result;
}

uint64_t static MachServiceInterface.isNonrecoverableFailure(_:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 16);
  if (v2 == 4)
  {
    return 1;
  }

  if (v2 != 5)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (*a1 ^ 2 | v3)
  {
    return !(*a1 ^ 3 | v3);
  }

  return *a2;
}

unint64_t sub_1D9E87688()
{
  result = qword_1EE0F2A10[0];
  if (!qword_1EE0F2A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2A10);
  }

  return result;
}

uint64_t sub_1D9E876DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = sub_1D9F2B15C();

  mach_service = xpc_connection_create_mach_service((v8 + 32), 0, 1uLL);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = mach_service;
  return result;
}

uint64_t sub_1D9E8777C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1D9F2B15C();

  mach_service = xpc_connection_create_mach_service((v9 + 32), 0, v8);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = mach_service;
  return result;
}

uint64_t sub_1D9E87828(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 16);
  if (v2 == 4)
  {
    return 1;
  }

  if (v2 != 5)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (*a1 ^ 2 | v3)
  {
    return !(*a1 ^ 3 | v3);
  }

  return *a2;
}

uint64_t VisualClassification.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for VisualClassification(uint64_t a1)
{
  result = qword_1EE0F34C8;
  if (!qword_1EE0F34C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VisualClassification.confidence.setter(uint64_t a1)
{
  result = type metadata accessor for VisualClassification(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

unint64_t VisualClassification.Result.description.getter()
{
  v1 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v1;
  v2 = *(v0 + 48);
  v15[2] = *(v0 + 32);
  v15[3] = v2;
  v15[4] = *(v0 + 64);
  v16 = *(v0 + 80);
  v3 = *&v15[0];
  v4 = v16 >> 5;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        sub_1D9F2B68C();

        v14 = 0xD000000000000013;
        v5 = type metadata accessor for DetectedEntity(0);
        v6 = MEMORY[0x1DA743060](*&v15[0], v5);
        MEMORY[0x1DA742F90](v6);
      }

      else
      {
        v14 = 0x494F50207370614DLL;
        if (*(&v15[0] + 1))
        {
          v12 = *(&v15[0] + 1);
        }

        else
        {
          sub_1D9E87D78(v15);
          v12 = 0xE600000000000000;
          v3 = 0x296C6C756E28;
        }

        MEMORY[0x1DA742F90](v3, v12);
      }

      return v14;
    }

    sub_1D9F2B68C();

    v14 = 0xD000000000000018;
    MEMORY[0x1DA742F90](*&v15[0], *(&v15[0] + 1));
    MEMORY[0x1DA742F90](0x6765746143207C20, 0xEF203A736569726FLL);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75480, &qword_1D9F2D000);
    sub_1D9E87DA8();
    v7 = sub_1D9F2B0FC();
    v9 = v8;

    MEMORY[0x1DA742F90](v7, v9);

    v10 = 41;
    v11 = 0xE100000000000000;
    goto LABEL_16;
  }

  if (v16 >> 5 > 4u)
  {
    if (v4 == 5)
    {
      MEMORY[0x1DA742F90](0x203A2B4D4641, 0xE600000000000000);
LABEL_14:
      sub_1D9F2B75C();
      return 0;
    }

    sub_1D9F2B68C();

    v14 = 0xD000000000000016;
    v11 = *(&v15[0] + 1);
    v10 = *&v15[0];
LABEL_16:
    MEMORY[0x1DA742F90](v10, v11);
    return v14;
  }

  if (v4 != 3)
  {
    MEMORY[0x1DA742F90](0x3A585453204D4641, 0xE900000000000020);
    goto LABEL_14;
  }

  v14 = 0;
  MEMORY[0x1DA742F90](0x7573655220554C56, 0xEC000000203A746CLL);
  sub_1D9F2B75C();
  return v14;
}

unint64_t sub_1D9E87DA8()
{
  result = qword_1EE0F2308;
  if (!qword_1EE0F2308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB75480, &qword_1D9F2D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2308);
  }

  return result;
}

uint64_t sub_1D9E87E0C(uint64_t a1)
{
  v2 = sub_1D9E88F10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E87E48(uint64_t a1)
{
  v2 = sub_1D9E88F10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E87E84()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0xD000000000000013;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E69646E756F7267;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 != 5)
    {
      v2 = 0x726568746FLL;
    }

    v3 = 0xD000000000000014;
    if (v1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D9E87F78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E8BAE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E87FA0(uint64_t a1)
{
  v2 = sub_1D9E88E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E87FDC(uint64_t a1)
{
  v2 = sub_1D9E88E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E88018(uint64_t a1)
{
  v2 = sub_1D9E8915C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E88054(uint64_t a1)
{
  v2 = sub_1D9E8915C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E88090(uint64_t a1)
{
  v2 = sub_1D9E891B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E880CC(uint64_t a1)
{
  v2 = sub_1D9E891B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E88108(uint64_t a1)
{
  v2 = sub_1D9E890B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E88144(uint64_t a1)
{
  v2 = sub_1D9E890B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E88180()
{
  if (*v0)
  {
    return 0x6570795461746164;
  }

  else
  {
    return 0x697274536E6F736ALL;
  }
}

uint64_t sub_1D9E881C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697274536E6F736ALL && a2 == 0xEA0000000000676ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E882A4(uint64_t a1)
{
  v2 = sub_1D9E88EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E882E0(uint64_t a1)
{
  v2 = sub_1D9E88EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E8831C(uint64_t a1)
{
  v2 = sub_1D9E88FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E88358(uint64_t a1)
{
  v2 = sub_1D9E88FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E88394(uint64_t a1)
{
  v2 = sub_1D9E8900C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E883D0(uint64_t a1)
{
  v2 = sub_1D9E8900C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualClassification.Result.encode(to:)(void *a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74020, &qword_1D9F363D8);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v41 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74028, &qword_1D9F363E0);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v41 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74030, &qword_1D9F363E8);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v41 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74038, &qword_1D9F363F0);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v41 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74040, &qword_1D9F363F8);
  v43 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v41 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74048, &qword_1D9F36400);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v62 = &v41 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74050, &qword_1D9F36408);
  v42 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v41 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74058, &unk_1D9F36410);
  v70 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v41 - v11;
  v13 = v1[1];
  v68 = *v1;
  v14 = v1[3];
  v65 = v1[2];
  v66 = v13;
  v57 = v14;
  v15 = v1[5];
  v60 = v1[4];
  v59 = v15;
  v16 = v1[7];
  v58 = v1[6];
  v18 = v1[8];
  v17 = v1[9];
  v19 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E88E68();
  v67 = v12;
  sub_1D9F2BB8C();
  v20 = v19 >> 5;
  if (v19 >> 5 > 2)
  {
    if (v19 >> 5 > 4)
    {
      v21 = v80;
      v22 = v67;
      if (v20 == 5)
      {
        LOBYTE(v71) = 5;
        sub_1D9E88F10();
        v23 = v51;
        sub_1D9F2B8FC();
        v71 = v68;
        v72 = v66;
        v73 = v65;
        LOBYTE(v74) = v57;
        sub_1D9E88F64();
        v24 = v53;
        sub_1D9F2B9AC();
        v25 = &v80;
      }

      else
      {
        LOBYTE(v71) = 6;
        sub_1D9E88EBC();
        v23 = v54;
        sub_1D9F2B8FC();
        LOBYTE(v71) = 0;
        v40 = v69;
        v24 = v56;
        sub_1D9F2B95C();
        if (v40)
        {
          (*(v55 + 8))(v23, v24);
          return (*(v70 + 8))(v22, v21);
        }

        LOBYTE(v71) = 1;
        sub_1D9F2B95C();
        v25 = &v81;
      }
    }

    else
    {
      v21 = v80;
      v22 = v67;
      if (v20 == 3)
      {
        LOBYTE(v71) = 3;
        sub_1D9E8900C();
        v23 = v45;
        sub_1D9F2B8FC();
        v71 = v68;
        v72 = v66;
        sub_1D9E89060();
        v24 = v47;
        sub_1D9F2B9AC();
        v25 = v78;
      }

      else
      {
        LOBYTE(v71) = 4;
        sub_1D9E88FB8();
        v23 = v48;
        sub_1D9F2B8FC();
        v71 = v68;
        v72 = v66;
        v73 = v65;
        sub_1D9E742C4();
        v24 = v50;
        sub_1D9F2B9AC();
        v25 = &v79;
      }
    }

    (*(*(v25 - 32) + 8))(v23, v24);
    return (*(v70 + 8))(v22, v21);
  }

  v54 = v17;
  v55 = v18;
  v56 = v16;
  v26 = v58;
  v27 = v59;
  v28 = v60;
  v30 = v61;
  v29 = v62;
  v31 = v63;
  v32 = v64;
  if (v20)
  {
    v33 = v80;
    if (v20 == 1)
    {
      LOBYTE(v71) = 1;
      sub_1D9E8915C();
      v34 = v67;
      sub_1D9F2B8FC();
      v71 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F68, &qword_1D9F35D98);
      sub_1D9E8A150(&qword_1EE0F1148, qword_1EE0F19F0, &protocol conformance descriptor for DetectedEntity, MEMORY[0x1E69E6300]);
      v35 = v41;
      sub_1D9F2B9AC();
      (*(v44 + 8))(v29, v35);
      return (*(v70 + 8))(v34, v33);
    }

    else
    {
      LOBYTE(v71) = 2;
      sub_1D9E890B4();
      v39 = v67;
      sub_1D9F2B8FC();
      v71 = v68;
      v72 = v66;
      sub_1D9E89108();
      sub_1D9F2B9AC();
      (*(v43 + 8))(v31, v32);
      return (*(v70 + 8))(v39, v33);
    }
  }

  else
  {
    v37 = v19 & 0x1F;
    LOBYTE(v71) = 0;
    sub_1D9E891B0();
    v38 = v67;
    sub_1D9F2B8FC();
    v71 = v68;
    v72 = v66;
    v73 = v65;
    v74 = v57;
    v75 = v28;
    v76 = v27;
    v77 = v26;
    v78[0] = v56;
    v78[1] = v55;
    v78[2] = v54;
    v79 = v37;
    sub_1D9E89204();
    sub_1D9F2B9AC();
    (*(v42 + 8))(v10, v30);
    return (*(v70 + 8))(v38, v80);
  }
}

unint64_t sub_1D9E88E68()
{
  result = qword_1EE0F3548;
  if (!qword_1EE0F3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3548);
  }

  return result;
}

unint64_t sub_1D9E88EBC()
{
  result = qword_1ECB74060;
  if (!qword_1ECB74060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74060);
  }

  return result;
}

unint64_t sub_1D9E88F10()
{
  result = qword_1EE0F3570;
  if (!qword_1EE0F3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3570);
  }

  return result;
}

unint64_t sub_1D9E88F64()
{
  result = qword_1EE0F14F0;
  if (!qword_1EE0F14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F14F0);
  }

  return result;
}

unint64_t sub_1D9E88FB8()
{
  result = qword_1ECB74068;
  if (!qword_1ECB74068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74068);
  }

  return result;
}

unint64_t sub_1D9E8900C()
{
  result = qword_1ECB74070;
  if (!qword_1ECB74070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74070);
  }

  return result;
}

unint64_t sub_1D9E89060()
{
  result = qword_1ECB74078;
  if (!qword_1ECB74078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74078);
  }

  return result;
}

unint64_t sub_1D9E890B4()
{
  result = qword_1ECB74080;
  if (!qword_1ECB74080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74080);
  }

  return result;
}

unint64_t sub_1D9E89108()
{
  result = qword_1ECB74088;
  if (!qword_1ECB74088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74088);
  }

  return result;
}

unint64_t sub_1D9E8915C()
{
  result = qword_1EE0F3508;
  if (!qword_1EE0F3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3508);
  }

  return result;
}

unint64_t sub_1D9E891B0()
{
  result = qword_1EE0F3520;
  if (!qword_1EE0F3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3520);
  }

  return result;
}

unint64_t sub_1D9E89204()
{
  result = qword_1EE0F1BA0;
  if (!qword_1EE0F1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1BA0);
  }

  return result;
}

uint64_t VisualClassification.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74090, &qword_1D9F36420);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v67 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74098, &qword_1D9F36428);
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v88 = &v67 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB740A0, &qword_1D9F36430);
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v87 = &v67 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB740A8, &qword_1D9F36438);
  v78 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v86 = &v67 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB740B0, &qword_1D9F36440);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v84 = &v67 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB740B8, &qword_1D9F36448);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB740C0, &qword_1D9F36450);
  v71 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB740C8, &unk_1D9F36458);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v67 - v15;
  v17 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D9E88E68();
  v18 = v103;
  sub_1D9F2BB7C();
  if (v18)
  {
    goto LABEL_12;
  }

  v19 = v12;
  v68 = v10;
  v69 = v9;
  v20 = v86;
  v70 = 0;
  v21 = v87;
  v22 = v88;
  v103 = v14;
  v23 = v89;
  v24 = sub_1D9F2B8DC();
  v25 = (2 * *(v24 + 16)) | 1;
  v99 = v24;
  v100 = v24 + 32;
  v101 = 0;
  v102 = v25;
  v26 = sub_1D9E46194();
  if (v26 == 7 || v101 != v102 >> 1)
  {
    v39 = sub_1D9F2B6BC();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
    *v41 = &type metadata for VisualClassification.Result;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
  }

  else
  {
    if (v26 > 2u)
    {
      v84 = v16;
      if (v26 > 4u)
      {
        v27 = v23;
        if (v26 == 5)
        {
          LOBYTE(v91) = 5;
          sub_1D9E88F10();
          v29 = v84;
          v47 = v70;
          sub_1D9F2B7DC();
          if (!v47)
          {
            sub_1D9E8A054();
            v48 = v80;
            sub_1D9F2B89C();
            (*(v81 + 8))(v22, v48);
            (*(v103 + 8))(v84, v13);
            swift_unknownObjectRelease();
            v37 = v91;
            v19 = v92;
            v32 = v93;
            *&v34 = v94;
            v38 = -96;
            goto LABEL_31;
          }
        }

        else
        {
          LOBYTE(v91) = 6;
          sub_1D9E88EBC();
          v56 = v85;
          v29 = v84;
          v57 = v70;
          sub_1D9F2B7DC();
          if (!v57)
          {
            LOBYTE(v91) = 0;
            v58 = v82;
            v59 = sub_1D9F2B84C();
            v19 = v60;
            v88 = v59;
            LOBYTE(v91) = 1;
            v61 = sub_1D9F2B84C();
            v62 = v58;
            v63 = v56;
            v64 = (v103 + 8);
            v32 = v61;
            v66 = v65;
            (*(v83 + 8))(v63, v62);
            (*v64)(v84, v13);
            swift_unknownObjectRelease();
            *&v34 = v66;
            v38 = -64;
            v37 = v88;
            goto LABEL_31;
          }
        }
      }

      else
      {
        v27 = v23;
        if (v26 == 3)
        {
          LOBYTE(v91) = 3;
          sub_1D9E8900C();
          v28 = v20;
          v29 = v84;
          v30 = v70;
          sub_1D9F2B7DC();
          if (!v30)
          {
            sub_1D9E8A0A8();
            v31 = v72;
            v32 = v28;
            sub_1D9F2B89C();
            (*(v78 + 8))(v28, v31);
            (*(v103 + 8))(v84, v13);
            swift_unknownObjectRelease();
            v37 = v91;
            v19 = v92;
            v38 = 96;
LABEL_31:
            v42 = v90;
            goto LABEL_32;
          }
        }

        else
        {
          LOBYTE(v91) = 4;
          sub_1D9E88FB8();
          v29 = v84;
          v54 = v70;
          sub_1D9F2B7DC();
          if (!v54)
          {
            sub_1D9E7436C();
            v55 = v77;
            sub_1D9F2B89C();
            (*(v79 + 8))(v21, v55);
            (*(v103 + 8))(v84, v13);
            swift_unknownObjectRelease();
            v37 = v91;
            v19 = v92;
            v38 = 0x80;
            v32 = v93;
            goto LABEL_31;
          }
        }
      }

      (*(v103 + 8))(v29, v13);
      goto LABEL_11;
    }

    if (v26)
    {
      v44 = v70;
      if (v26 == 1)
      {
        LOBYTE(v91) = 1;
        sub_1D9E8915C();
        v45 = v69;
        sub_1D9F2B7DC();
        if (!v44)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F68, &qword_1D9F35D98);
          sub_1D9E8A150(&qword_1EE0F1140, &qword_1EE0F19E8, &protocol conformance descriptor for DetectedEntity, MEMORY[0x1E69E6330]);
          v46 = v74;
          v32 = v45;
          sub_1D9F2B89C();
          (*(v73 + 8))(v45, v46);
          (*(v103 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v37 = v91;
          v38 = 32;
LABEL_30:
          v42 = v90;
          v27 = v23;
LABEL_32:
          *v27 = v37;
          *(v27 + 8) = v19;
          *(v27 + 16) = v32;
          *(v27 + 24) = v34;
          *(v27 + 40) = v35;
          *(v27 + 56) = v36;
          *(v27 + 72) = v33;
          *(v27 + 80) = v38;
          return __swift_destroy_boxed_opaque_existential_1(v42);
        }
      }

      else
      {
        LOBYTE(v91) = 2;
        sub_1D9E890B4();
        v51 = v84;
        sub_1D9F2B7DC();
        if (!v44)
        {
          sub_1D9E8A0FC();
          v52 = v76;
          v32 = v51;
          sub_1D9F2B89C();
          v53 = v103;
          (*(v75 + 8))(v51, v52);
          (*(v53 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v37 = v91;
          v19 = v92;
          v38 = 64;
          goto LABEL_30;
        }
      }
    }

    else
    {
      LOBYTE(v91) = 0;
      sub_1D9E891B0();
      v49 = v70;
      sub_1D9F2B7DC();
      if (!v49)
      {
        sub_1D9E8A1EC();
        v50 = v68;
        sub_1D9F2B89C();
        (*(v71 + 8))(v19, v50);
        (*(v103 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v37 = v91;
        v19 = v92;
        v32 = v93;
        v34 = v94;
        v35 = v95;
        v36 = v96;
        v33 = v97;
        v38 = v98 & 1;
        goto LABEL_30;
      }
    }
  }

  (*(v103 + 8))(v16, v13);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v42 = v90;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_1D9E8A054()
{
  result = qword_1EE0F14E8;
  if (!qword_1EE0F14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F14E8);
  }

  return result;
}

unint64_t sub_1D9E8A0A8()
{
  result = qword_1ECB740D0;
  if (!qword_1ECB740D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB740D0);
  }

  return result;
}

unint64_t sub_1D9E8A0FC()
{
  result = qword_1ECB740D8;
  if (!qword_1ECB740D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB740D8);
  }

  return result;
}

uint64_t sub_1D9E8A150(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73F68, &qword_1D9F35D98);
    sub_1D9E8AE50(a2, type metadata accessor for DetectedEntity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9E8A1EC()
{
  result = qword_1EE0F1B98;
  if (!qword_1EE0F1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F1B98);
  }

  return result;
}

uint64_t VisualClassification.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VisualClassification(0) + 24));
  v4 = v3[2];
  v6 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16 = v6;
  v17 = *(v3 + 80);
  v7 = v17;
  v9 = *v3;
  v13 = v3[1];
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_1D9E8A2F0(&v12, v11);
}

__n128 VisualClassification.result.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VisualClassification(0) + 24);
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  sub_1D9E87D78(v9);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

__n128 VisualClassification.init(id:confidence:result:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for VisualClassification(0);
  v9 = a4 + *(v8 + 20);
  v10 = sub_1D9F2AD7C();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  *v9 = a2;
  *(v9 + 4) = BYTE4(a2) & 1;
  v11 = a4 + *(v8 + 24);
  v12 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v12;
  *(v11 + 64) = *(a3 + 64);
  *(v11 + 80) = *(a3 + 80);
  result = *a3;
  v14 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v14;
  return result;
}

uint64_t sub_1D9E8A4B0()
{
  v1 = 0x6E656469666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x746C75736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D9E8A500@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E8BD34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E8A528(uint64_t a1)
{
  v2 = sub_1D9E8A850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E8A564(uint64_t a1)
{
  v2 = sub_1D9E8A850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualClassification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB740E0, &qword_1D9F36468);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E8A850();
  sub_1D9F2BB8C();
  LOBYTE(v25[0]) = 0;
  sub_1D9F2AD7C();
  sub_1D9E8AE50(&qword_1EE0F3868, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v9 = type metadata accessor for VisualClassification(0);
    v10 = *(v3 + *(v9 + 20) + 4);
    v31 = 1;
    LOBYTE(v25[0]) = v10;
    sub_1D9F2B93C();
    v11 = v3 + *(v9 + 24);
    v12 = *(v11 + 48);
    v13 = *(v11 + 16);
    v26 = *(v11 + 32);
    v27 = v12;
    v14 = *(v11 + 48);
    v28 = *(v11 + 64);
    v15 = *(v11 + 16);
    v25[0] = *v11;
    v25[1] = v15;
    v21 = v26;
    v22 = v14;
    v23 = *(v11 + 64);
    v29 = *(v11 + 80);
    v24 = *(v11 + 80);
    v19 = v25[0];
    v20 = v13;
    v30 = 2;
    sub_1D9E8A2F0(v25, v17);
    sub_1D9E8A8A4();
    sub_1D9F2B9AC();
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v18 = v24;
    v17[0] = v19;
    v17[1] = v20;
    sub_1D9E87D78(v17);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D9E8A850()
{
  result = qword_1EE0F3588[0];
  if (!qword_1EE0F3588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F3588);
  }

  return result;
}

unint64_t sub_1D9E8A8A4()
{
  result = qword_1EE0F21B8[0];
  if (!qword_1EE0F21B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F21B8);
  }

  return result;
}

uint64_t VisualClassification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_1D9F2AD7C();
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB740E8, &qword_1D9F36470);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for VisualClassification(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E8A850();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v22;
  LOBYTE(v26) = 0;
  sub_1D9E8AE50(&qword_1EE0F3860, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v24;
  sub_1D9F2B89C();
  (*(v13 + 32))(v12, v5, v25);
  LOBYTE(v26) = 1;
  v15 = sub_1D9F2B82C();
  v16 = v12 + *(v9 + 20);
  *v16 = v15;
  *(v16 + 4) = BYTE4(v15) & 1;
  v32 = 2;
  sub_1D9E8ACC4();
  sub_1D9F2B89C();
  (*(v23 + 8))(v8, v14);
  v17 = v12 + *(v9 + 24);
  v18 = v29;
  *(v17 + 32) = v28;
  *(v17 + 48) = v18;
  *(v17 + 64) = v30;
  *(v17 + 80) = v31;
  v19 = v27;
  *v17 = v26;
  *(v17 + 16) = v19;
  sub_1D9E8AD18(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E8AD7C(v12);
}

unint64_t sub_1D9E8ACC4()
{
  result = qword_1EE0F21B0;
  if (!qword_1EE0F21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F21B0);
  }

  return result;
}

uint64_t sub_1D9E8AD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualClassification(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9E8AD7C(uint64_t a1)
{
  v2 = type metadata accessor for VisualClassification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9E8AE50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9E8AE98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1D9E8AF28(uint64_t a1)
{
  sub_1D9F2AD7C();
  if (v1 <= 0x3F)
  {
    sub_1D9E8AFB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9E8AFB4()
{
  if (!qword_1EE0F22F0)
  {
    v0 = sub_1D9F2B59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F22F0);
    }
  }
}

uint64_t sub_1D9E8B010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 81))
  {
    return (*a1 + 122);
  }

  v3 = ((*(a1 + 80) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 80) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E8B064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1D9E8B1A4()
{
  result = qword_1ECB740F0;
  if (!qword_1ECB740F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB740F0);
  }

  return result;
}

unint64_t sub_1D9E8B1FC()
{
  result = qword_1ECB740F8;
  if (!qword_1ECB740F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB740F8);
  }

  return result;
}

unint64_t sub_1D9E8B254()
{
  result = qword_1ECB74100;
  if (!qword_1ECB74100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74100);
  }

  return result;
}

unint64_t sub_1D9E8B2AC()
{
  result = qword_1ECB74108;
  if (!qword_1ECB74108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74108);
  }

  return result;
}

unint64_t sub_1D9E8B304()
{
  result = qword_1ECB74110;
  if (!qword_1ECB74110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74110);
  }

  return result;
}

unint64_t sub_1D9E8B35C()
{
  result = qword_1ECB74118;
  if (!qword_1ECB74118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74118);
  }

  return result;
}

unint64_t sub_1D9E8B3B4()
{
  result = qword_1ECB74120;
  if (!qword_1ECB74120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74120);
  }

  return result;
}

unint64_t sub_1D9E8B40C()
{
  result = qword_1ECB74128;
  if (!qword_1ECB74128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74128);
  }

  return result;
}

unint64_t sub_1D9E8B464()
{
  result = qword_1ECB74130;
  if (!qword_1ECB74130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74130);
  }

  return result;
}

unint64_t sub_1D9E8B4BC()
{
  result = qword_1EE0F3578;
  if (!qword_1EE0F3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3578);
  }

  return result;
}

unint64_t sub_1D9E8B514()
{
  result = qword_1EE0F3580;
  if (!qword_1EE0F3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3580);
  }

  return result;
}

unint64_t sub_1D9E8B56C()
{
  result = qword_1EE0F3510;
  if (!qword_1EE0F3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3510);
  }

  return result;
}

unint64_t sub_1D9E8B5C4()
{
  result = qword_1EE0F3518;
  if (!qword_1EE0F3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3518);
  }

  return result;
}

unint64_t sub_1D9E8B61C()
{
  result = qword_1EE0F34F8;
  if (!qword_1EE0F34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F34F8);
  }

  return result;
}

unint64_t sub_1D9E8B674()
{
  result = qword_1EE0F3500;
  if (!qword_1EE0F3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3500);
  }

  return result;
}

unint64_t sub_1D9E8B6CC()
{
  result = qword_1EE0F34E8;
  if (!qword_1EE0F34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F34E8);
  }

  return result;
}

unint64_t sub_1D9E8B724()
{
  result = qword_1EE0F34F0;
  if (!qword_1EE0F34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F34F0);
  }

  return result;
}

unint64_t sub_1D9E8B77C()
{
  result = qword_1EE0F3550;
  if (!qword_1EE0F3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3550);
  }

  return result;
}

unint64_t sub_1D9E8B7D4()
{
  result = qword_1EE0F3558;
  if (!qword_1EE0F3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3558);
  }

  return result;
}

unint64_t sub_1D9E8B82C()
{
  result = qword_1EE0F34D8;
  if (!qword_1EE0F34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F34D8);
  }

  return result;
}

unint64_t sub_1D9E8B884()
{
  result = qword_1EE0F34E0;
  if (!qword_1EE0F34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F34E0);
  }

  return result;
}

unint64_t sub_1D9E8B8DC()
{
  result = qword_1EE0F3560;
  if (!qword_1EE0F3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3560);
  }

  return result;
}

unint64_t sub_1D9E8B934()
{
  result = qword_1EE0F3568;
  if (!qword_1EE0F3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3568);
  }

  return result;
}

unint64_t sub_1D9E8B98C()
{
  result = qword_1EE0F3528;
  if (!qword_1EE0F3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3528);
  }

  return result;
}

unint64_t sub_1D9E8B9E4()
{
  result = qword_1EE0F3530;
  if (!qword_1EE0F3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3530);
  }

  return result;
}

unint64_t sub_1D9E8BA3C()
{
  result = qword_1EE0F3538;
  if (!qword_1EE0F3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3538);
  }

  return result;
}

unint64_t sub_1D9E8BA94()
{
  result = qword_1EE0F3540;
  if (!qword_1EE0F3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3540);
  }

  return result;
}

uint64_t sub_1D9E8BAE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69646E756F7267 && a2 == 0xED00006174614467;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F48DE0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F48E60 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9F48E80 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F48B20 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D9F48EA0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D9E8BD34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t ImageBuffer.Storage.Plane.data.getter()
{
  v1 = *(v0 + 32);
  sub_1D9E400F4(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_1D9E8BED0()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0x746867696568;
  v4 = 0x7265507365747962;
  if (v1 != 3)
  {
    v4 = 1635017060;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874646977;
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

uint64_t sub_1D9E8BF60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E8EE74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E8BF88(uint64_t a1)
{
  v2 = sub_1D9E8E82C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E8BFC4(uint64_t a1)
{
  v2 = sub_1D9E8E82C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageBuffer.Storage.Plane.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74138, &qword_1D9F37190);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v18 = v1[2];
  v19 = v8;
  v10 = v1[5];
  v16 = v1[4];
  v17 = v9;
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E8E82C();
  sub_1D9F2BB8C();
  LOBYTE(v20) = 0;
  sub_1D9F2B99C();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    LOBYTE(v20) = 1;
    sub_1D9F2B99C();
    LOBYTE(v20) = 2;
    sub_1D9F2B99C();
    LOBYTE(v20) = 3;
    sub_1D9F2B99C();
    v20 = v11;
    v21 = v12;
    v22 = 4;
    sub_1D9E400F4(v11, v12);
    sub_1D9E68448();
    sub_1D9F2B9AC();
    sub_1D9E4015C(v20, v21);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ImageBuffer.Storage.Plane.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  MEMORY[0x1DA7438F0](*v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  MEMORY[0x1DA7438F0](v4);

  return sub_1D9F2AC9C();
}

uint64_t ImageBuffer.Storage.Plane.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  MEMORY[0x1DA7438F0](v4);
  sub_1D9F2AC9C();
  return sub_1D9F2BB4C();
}

uint64_t ImageBuffer.Storage.Plane.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74148, &qword_1D9F37198);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E8E82C();
  sub_1D9F2BB7C();
  if (!v2)
  {
    LOBYTE(v16) = 0;
    v9 = sub_1D9F2B88C();
    LOBYTE(v16) = 1;
    v10 = sub_1D9F2B88C();
    LOBYTE(v16) = 2;
    v15 = sub_1D9F2B88C();
    LOBYTE(v16) = 3;
    v14 = sub_1D9F2B88C();
    v17 = 4;
    sub_1D9E6849C();
    sub_1D9F2B89C();
    (*(v6 + 8))(v8, v5);
    v12 = v16;
    *a2 = v9;
    *(a2 + 8) = v10;
    v13 = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = v13;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E8C5E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  MEMORY[0x1DA7438F0](v4);
  sub_1D9F2AC9C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E8C67C(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  MEMORY[0x1DA7438F0](*v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  MEMORY[0x1DA7438F0](v4);

  return sub_1D9F2AC9C();
}

uint64_t sub_1D9E8C6FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  MEMORY[0x1DA7438F0](v2);
  MEMORY[0x1DA7438F0](v3);
  MEMORY[0x1DA7438F0](v4);
  sub_1D9F2AC9C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E8C79C()
{
  if (*v0)
  {
    return 0x73656E616C70;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1D9E8C7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656E616C70 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9E8C8A4(uint64_t a1)
{
  v2 = sub_1D9E8E954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E8C8E0(uint64_t a1)
{
  v2 = sub_1D9E8E954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E8C91C(uint64_t a1)
{
  v2 = sub_1D9E8EA50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E8C958(uint64_t a1)
{
  v2 = sub_1D9E8EA50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9E8C994(uint64_t a1)
{
  v2 = sub_1D9E8E9A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E8C9D0(uint64_t a1)
{
  v2 = sub_1D9E8E9A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageBuffer.Storage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74150, &qword_1D9F371A0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74158, &qword_1D9F371A8);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74160, &qword_1D9F371B0);
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v17 - v10;
  v12 = v1[1];
  v21 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E8E954();
  sub_1D9F2BB8C();
  if ((v12 & 0x2000000000000000) != 0)
  {
    LOBYTE(v23) = 1;
    sub_1D9E8E9A8();
    v13 = v22;
    sub_1D9F2B8FC();
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74178, &qword_1D9F371B8);
    sub_1D9E8EAA4(&qword_1ECB74180, sub_1D9E8E9FC, MEMORY[0x1E69E6300]);
    v15 = v20;
    sub_1D9F2B9AC();
    (*(v19 + 8))(v5, v15);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_1D9E8EA50();
    v13 = v22;
    sub_1D9F2B8FC();
    v23 = v21;
    v24 = v12;
    sub_1D9E68448();
    v14 = v18;
    sub_1D9F2B9AC();
    (*(v17 + 8))(v8, v14);
  }

  return (*(v9 + 8))(v11, v13);
}

uint64_t ImageBuffer.Storage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if ((v1[1] & 0x2000000000000000) != 0)
  {
    MEMORY[0x1DA7438F0](1);

    return sub_1D9E50594(a1, v3);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);

    return sub_1D9F2AC9C();
  }
}

uint64_t ImageBuffer.Storage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x1DA7438F0](1);
    sub_1D9E50594(v4, v1);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2AC9C();
  }

  return sub_1D9F2BB4C();
}

uint64_t ImageBuffer.Storage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74198, &qword_1D9F371C0);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB741A0, &qword_1D9F371C8);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB741A8, &unk_1D9F371D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D9E8E954();
  v15 = v38;
  sub_1D9F2BB7C();
  if (!v15)
  {
    v38 = v11;
    v16 = v37;
    v17 = sub_1D9F2B8DC();
    v18 = (2 * *(v17 + 16)) | 1;
    v41 = v17;
    v42 = v17 + 32;
    v43 = 0;
    v44 = v18;
    v19 = sub_1D9E4618C();
    v20 = v10;
    if (v19 == 2 || v43 != v44 >> 1)
    {
      v24 = sub_1D9F2B6BC();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v26 = &type metadata for ImageBuffer.Storage;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v38 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        LOBYTE(v39) = 1;
        sub_1D9E8E9A8();
        v21 = v13;
        v22 = v6;
        sub_1D9F2B7DC();
        v23 = v38;
        v29 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74178, &qword_1D9F371B8);
        sub_1D9E8EAA4(&qword_1ECB741B0, sub_1D9E8EB1C, MEMORY[0x1E69E6330]);
        v30 = v35;
        sub_1D9F2B89C();
        (*(v36 + 8))(v22, v30);
        (*(v23 + 8))(v21, v20);
        swift_unknownObjectRelease();
        v31 = v39;
        v32 = 0x2000000000000000;
      }

      else
      {
        LOBYTE(v39) = 0;
        sub_1D9E8EA50();
        sub_1D9F2B7DC();
        v28 = v38;
        v29 = v16;
        sub_1D9E6849C();
        sub_1D9F2B89C();
        (*(v34 + 8))(v9, v7);
        (*(v28 + 8))(v13, v20);
        swift_unknownObjectRelease();
        v31 = v39;
        v32 = v40;
      }

      *v29 = v31;
      v29[1] = v32;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_1D9E8D418()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x1DA7438F0](1);
    sub_1D9E50594(v4, v1);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2AC9C();
  }

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E8D494(uint64_t a1)
{
  v3 = *v1;
  if ((v1[1] & 0x2000000000000000) != 0)
  {
    MEMORY[0x1DA7438F0](1);

    return sub_1D9E50594(a1, v3);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);

    return sub_1D9F2AC9C();
  }
}

uint64_t sub_1D9E8D520()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x1DA7438F0](1);
    sub_1D9E50594(v4, v1);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2AC9C();
  }

  return sub_1D9F2BB4C();
}

void ImageBuffer.storage.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  sub_1D9E8EB70(v2, v3);
}

__n128 ImageBuffer.init(width:height:pixelFormatType:bytesPerRow:dataSize:isPlanar:storage:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int32 a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unsigned __int8 a6@<W5>, __n128 *a7@<X6>, __n128 *a8@<X8>)
{
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  a8[1].n128_u32[0] = a3;
  a8[1].n128_u64[1] = a4;
  a8[2].n128_u64[0] = a5;
  a8[2].n128_u8[8] = a6;
  result = *a7;
  a8[3] = *a7;
  return result;
}

uint64_t sub_1D9E8D5C8()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0x72616E616C507369;
  if (v1 != 5)
  {
    v3 = 0x656761726F7473;
  }

  v4 = 0x7265507365747962;
  if (v1 != 3)
  {
    v4 = 0x657A695361746164;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 1)
  {
    v5 = 0x726F466C65786970;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9E8D6B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E8F01C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E8D6D8(uint64_t a1)
{
  v2 = sub_1D9E8ED18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E8D714(uint64_t a1)
{
  v2 = sub_1D9E8ED18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageBuffer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB741C0, &qword_1D9F371E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = *(v1 + 8);
  v24 = *(v1 + 16);
  v8 = *(v1 + 32);
  v19 = *(v1 + 24);
  v20 = v7;
  v18 = v8;
  v17[3] = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1D9E8ED18();
  sub_1D9F2BB8C();
  LOBYTE(v22) = 0;
  v15 = v21;
  sub_1D9F2B99C();
  if (!v15)
  {
    LOBYTE(v22) = 1;
    sub_1D9F2B99C();
    LOBYTE(v22) = 2;
    sub_1D9F2B9CC();
    LOBYTE(v22) = 3;
    sub_1D9F2B99C();
    LOBYTE(v22) = 4;
    sub_1D9F2B99C();
    LOBYTE(v22) = 5;
    sub_1D9F2B96C();
    v22 = v9;
    v23 = v10;
    v25 = 6;
    sub_1D9E8EB70(v9, v10);
    sub_1D9E8ED6C();
    sub_1D9F2B9AC();
    sub_1D9E8EDC0(v22, v23);
  }

  return (*(v4 + 8))(v6, v14);
}

uint64_t ImageBuffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  v8 = v2[7];
  MEMORY[0x1DA7438F0](*v2);
  MEMORY[0x1DA7438F0](v4);
  sub_1D9F2BB2C();
  MEMORY[0x1DA7438F0](v5);
  MEMORY[0x1DA7438F0](v6);
  sub_1D9F2BB1C();
  if ((v8 & 0x2000000000000000) != 0)
  {
    MEMORY[0x1DA7438F0](1);

    return sub_1D9E50594(a1, v7);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);

    return sub_1D9F2AC9C();
  }
}

uint64_t ImageBuffer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[6];
  v6 = v0[7];
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  MEMORY[0x1DA7438F0](v2);
  sub_1D9F2BB2C();
  MEMORY[0x1DA7438F0](v3);
  MEMORY[0x1DA7438F0](v4);
  sub_1D9F2BB1C();
  if ((v6 & 0x2000000000000000) != 0)
  {
    MEMORY[0x1DA7438F0](1);
    sub_1D9E50594(v8, v5);
  }

  else
  {
    MEMORY[0x1DA7438F0](0);
    sub_1D9F2AC9C();
  }

  return sub_1D9F2BB4C();
}

uint64_t ImageBuffer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB741D8, &qword_1D9F371E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E8ED18();
  sub_1D9F2BB7C();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    v9 = sub_1D9F2B88C();
    LOBYTE(v18) = 1;
    v10 = sub_1D9F2B88C();
    LOBYTE(v18) = 2;
    v19 = sub_1D9F2B8BC();
    LOBYTE(v18) = 3;
    v17 = sub_1D9F2B88C();
    LOBYTE(v18) = 4;
    v16 = sub_1D9F2B88C();
    LOBYTE(v18) = 5;
    v15 = sub_1D9F2B85C();
    v20 = 6;
    sub_1D9E8EDCC();
    sub_1D9F2B89C();
    v12 = v15 & 1;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v19;
    v13 = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v13;
    *(a2 + 40) = v12;
    *(a2 + 48) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9E8DE6C()
{
  sub_1D9F2BAFC();
  ImageBuffer.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E8DEB0()
{
  sub_1D9F2BAFC();
  ImageBuffer.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t ImageBuffer.description.getter()
{
  v1 = *(v0 + 40);
  sub_1D9F2B68C();
  MEMORY[0x1DA742F90](0xD000000000000014, 0x80000001D9F48EC0);
  v2 = sub_1D9F2B9FC();
  MEMORY[0x1DA742F90](v2);

  MEMORY[0x1DA742F90](120, 0xE100000000000000);
  v3 = sub_1D9F2B9FC();
  MEMORY[0x1DA742F90](v3);

  MEMORY[0x1DA742F90](0x746D61726F66202CLL, 0xEA0000000000203ALL);
  v4 = sub_1D9F2B9FC();
  MEMORY[0x1DA742F90](v4);

  MEMORY[0x1DA742F90](0x507365747962202CLL, 0xEF203A776F527265);
  v5 = sub_1D9F2B9FC();
  MEMORY[0x1DA742F90](v5);

  MEMORY[0x1DA742F90](0x695361746164202CLL, 0xEC000000203A657ALL);
  v6 = sub_1D9F2B9FC();
  MEMORY[0x1DA742F90](v6);

  MEMORY[0x1DA742F90](0x72616E616C70202CLL, 0xEA0000000000203ALL);
  if (v1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v7, v8);

  MEMORY[0x1DA742F90](32032, 0xE200000000000000);
  return 0;
}

void ImageBuffer.init(from:)(__CVBuffer *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D9EA1834(a1, v10, v11);
  if (v2)
  {
    v5 = v10[0];
    v6 = v10[1];
    sub_1D9E8EE20();
    swift_allocError();
    *v7 = v5;
    v7[1] = v6;
  }

  else
  {

    v8 = v11[1];
    *a2 = v11[0];
    a2[1] = v8;
    v9 = v11[3];
    a2[2] = v11[2];
    a2[3] = v9;
  }
}

CVBufferRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImageBuffer.makePixelBuffer()()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v2 = v0[3];
  v4[2] = v0[2];
  v4[3] = v2;
  return sub_1D9EA4B04(v4);
}

uint64_t sub_1D9E8E214@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D9F2AA7C();
    if (v10)
    {
      v11 = sub_1D9F2AA9C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D9F2AA8C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D9F2AA7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D9F2AA9C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D9F2AA8C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D9E8E444(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D9E8E5D4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D9E4015C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D9E8E214(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D9E4015C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D9E8E5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D9F2AA7C();
  v11 = result;
  if (result)
  {
    result = sub_1D9F2AA9C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D9F2AA8C();
  sub_1D9E8E214(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1D9E8E68C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D9E400F4(a3, a4);
          return sub_1D9E8E444(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1D9E8E82C()
{
  result = qword_1ECB74140;
  if (!qword_1ECB74140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74140);
  }

  return result;
}

uint64_t _s29VisualActionPredictionSupport11ImageBufferV7StorageO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_1D9E8EB70(*a2, a2[1]);
      sub_1D9E8EB70(v2, v3);
      v6 = sub_1D9E4B3EC(v2, v4);
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_1D9E8EB70(*a2, a2[1]);
    sub_1D9E8EB70(v2, v3);
    v6 = sub_1D9E8E68C(v2, v3, v4, v5);
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  sub_1D9E8EB70(*a2, a2[1]);
  sub_1D9E8EB70(v2, v3);
  v7 = 0;
LABEL_8:
  sub_1D9E8EDC0(v2, v3);
  sub_1D9E8EDC0(v4, v5);
  return v7 & 1;
}

unint64_t sub_1D9E8E954()
{
  result = qword_1ECB74168;
  if (!qword_1ECB74168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74168);
  }

  return result;
}

unint64_t sub_1D9E8E9A8()
{
  result = qword_1ECB74170;
  if (!qword_1ECB74170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74170);
  }

  return result;
}

unint64_t sub_1D9E8E9FC()
{
  result = qword_1ECB74188;
  if (!qword_1ECB74188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74188);
  }

  return result;
}

unint64_t sub_1D9E8EA50()
{
  result = qword_1ECB74190;
  if (!qword_1ECB74190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74190);
  }

  return result;
}

uint64_t sub_1D9E8EAA4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74178, &qword_1D9F371B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9E8EB1C()
{
  result = qword_1ECB741B8;
  if (!qword_1ECB741B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB741B8);
  }

  return result;
}

void sub_1D9E8EB70(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_1D9E400F4(a1, a2);
  }
}

BOOL _s29VisualActionPredictionSupport11ImageBufferV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 24), *(a2 + 24)))))) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v7 = *(a2 + 48);
    v6 = *(a2 + 56);
    if ((v4 & 0x2000000000000000) != 0)
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        sub_1D9E8EB70(*(a2 + 48), *(a2 + 56));
        sub_1D9E8EB70(v5, v4);
        sub_1D9E8EB70(v7, v6);
        sub_1D9E8EB70(v5, v4);
        v8 = sub_1D9E4B3EC(v5, v7);
LABEL_10:
        v9 = v8;
        sub_1D9E8EDC0(v5, v4);
        sub_1D9E8EDC0(v7, v6);
        sub_1D9E8EDC0(v7, v6);
        sub_1D9E8EDC0(v5, v4);
        return (v9 & 1) != 0;
      }
    }

    else if ((v6 & 0x2000000000000000) == 0)
    {
      sub_1D9E8EB70(*(a2 + 48), *(a2 + 56));
      sub_1D9E8EB70(v5, v4);
      sub_1D9E8EB70(v7, v6);
      sub_1D9E8EB70(v5, v4);
      v8 = sub_1D9E8E68C(v5, v4, v7, v6);
      goto LABEL_10;
    }

    sub_1D9E8EB70(*(a2 + 48), *(a2 + 56));
    sub_1D9E8EB70(v5, v4);
    sub_1D9E8EDC0(v5, v4);
    sub_1D9E8EDC0(v7, v6);
    return 0;
  }

  return result;
}

unint64_t sub_1D9E8ED18()
{
  result = qword_1ECB741C8;
  if (!qword_1ECB741C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB741C8);
  }

  return result;
}

unint64_t sub_1D9E8ED6C()
{
  result = qword_1ECB741D0;
  if (!qword_1ECB741D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB741D0);
  }

  return result;
}

uint64_t sub_1D9E8EDC0(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    return sub_1D9E4015C(result, a2);
  }
}

unint64_t sub_1D9E8EDCC()
{
  result = qword_1ECB741E0;
  if (!qword_1ECB741E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB741E0);
  }

  return result;
}

unint64_t sub_1D9E8EE20()
{
  result = qword_1ECB75F90;
  if (!qword_1ECB75F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F90);
  }

  return result;
}

uint64_t sub_1D9E8EE74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265507365747962 && a2 == 0xEB00000000776F52 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9E8F01C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265507365747962 && a2 == 0xEB00000000776F52 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A695361746164 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72616E616C507369 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D9E8F26C()
{
  result = qword_1ECB741E8;
  if (!qword_1ECB741E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB741E8);
  }

  return result;
}

unint64_t sub_1D9E8F2C4()
{
  result = qword_1ECB741F0;
  if (!qword_1ECB741F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB741F0);
  }

  return result;
}

unint64_t sub_1D9E8F31C()
{
  result = qword_1ECB741F8;
  if (!qword_1ECB741F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB741F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D9E8F3AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D9E8F400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D9E8F464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E8F4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_1D9E8F538(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E8F58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1D9E8F64C()
{
  result = qword_1ECB74200;
  if (!qword_1ECB74200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74200);
  }

  return result;
}

unint64_t sub_1D9E8F6A4()
{
  result = qword_1ECB74208;
  if (!qword_1ECB74208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74208);
  }

  return result;
}

unint64_t sub_1D9E8F6FC()
{
  result = qword_1ECB74210;
  if (!qword_1ECB74210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74210);
  }

  return result;
}

unint64_t sub_1D9E8F754()
{
  result = qword_1ECB74218;
  if (!qword_1ECB74218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74218);
  }

  return result;
}

unint64_t sub_1D9E8F7AC()
{
  result = qword_1ECB74220;
  if (!qword_1ECB74220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74220);
  }

  return result;
}

unint64_t sub_1D9E8F804()
{
  result = qword_1ECB74228;
  if (!qword_1ECB74228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74228);
  }

  return result;
}

unint64_t sub_1D9E8F85C()
{
  result = qword_1ECB74230;
  if (!qword_1ECB74230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74230);
  }

  return result;
}

unint64_t sub_1D9E8F8B4()
{
  result = qword_1ECB74238;
  if (!qword_1ECB74238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74238);
  }

  return result;
}

unint64_t sub_1D9E8F90C()
{
  result = qword_1ECB74240;
  if (!qword_1ECB74240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74240);
  }

  return result;
}

unint64_t sub_1D9E8F964()
{
  result = qword_1ECB74248;
  if (!qword_1ECB74248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74248);
  }

  return result;
}

unint64_t sub_1D9E8F9BC()
{
  result = qword_1ECB74250;
  if (!qword_1ECB74250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74250);
  }

  return result;
}

unint64_t sub_1D9E8FA14()
{
  result = qword_1ECB74258;
  if (!qword_1ECB74258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74258);
  }

  return result;
}

unint64_t sub_1D9E8FA6C()
{
  result = qword_1ECB74260;
  if (!qword_1ECB74260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74260);
  }

  return result;
}

unint64_t sub_1D9E8FAC4()
{
  result = qword_1ECB74268;
  if (!qword_1ECB74268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74268);
  }

  return result;
}

unint64_t sub_1D9E8FB1C()
{
  result = qword_1ECB74270;
  if (!qword_1ECB74270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74270);
  }

  return result;
}

uint64_t SceneDescriptor.descriptionText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for SceneDescriptor(uint64_t a1)
{
  result = qword_1ECB742D8;
  if (!qword_1ECB742D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SceneDescriptor.pixelBuffer.getter()
{
  v1 = type metadata accessor for SceneDescriptor(0);
  result = 0;
  v3 = *(v0 + *(v1 + 24));
  if ((~v3 & 0xF000000000000007) != 0)
  {

    if (sub_1D9E8FCD0(v3))
    {
      sub_1D9F2B06C();
      swift_allocObject();
      v4 = sub_1D9F2B05C();
      sub_1D9E8FEEC(v3);
      return v4;
    }

    else
    {
      sub_1D9E8FEEC(v3);
      return 0;
    }
  }

  return result;
}

NSObject *sub_1D9E8FCD0(uint64_t a1)
{
  if (a1 < 0)
  {
    v5 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = v5;
    return v5;
  }

  sub_1D9E7EDA0();
  v2 = *(a1 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState);
  os_unfair_lock_lock(v2 + 25);
  v3 = *&v2[16]._os_unfair_lock_opaque;
  v29 = *&v2[12]._os_unfair_lock_opaque;
  v30 = v3;
  v31 = *&v2[20]._os_unfair_lock_opaque;
  os_unfair_lock_opaque = v2[24]._os_unfair_lock_opaque;
  v4 = *&v2[8]._os_unfair_lock_opaque;
  v27 = *&v2[4]._os_unfair_lock_opaque;
  v28 = v4;
  memmove(__dst, &v2[4], 0x51uLL);
  if (v34 >> 62)
  {
    if (v34 >> 62 == 1)
    {
      v34 &= 0x3FFFFFFFFFFFFFFFuLL;
    }

    v21 = 0u;
    v22 = 0u;
    *&v23 = 0;
    *(&v23 + 1) = 255;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  else
  {
    v34 &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1D9E7F4D0(__dst, v10);
    *&v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = os_unfair_lock_opaque;
    v15 = v27;
    v16 = v28;
    *(&v17 + 1) = *(&v29 + 1) & 0x3FFFFFFFFFFFFFFFLL;
    sub_1D9E51E70(&v15, v9, &qword_1ECB73F08, &qword_1D9F35B60);
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v21 = v10[0];
    v22 = v10[1];
  }

  os_unfair_lock_unlock(v2 + 25);
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  if (BYTE8(v23) != 0xFF)
  {
    sub_1D9E7F4D0(&v15, v10);
    result = v11;
    if (!BYTE8(v11))
    {
      return result;
    }

    if (BYTE8(v11) == 1)
    {
      v8 = _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(v11, v9);
      sub_1D9E51FE8(&v21, &qword_1ECB74310, &unk_1D9F37F60);
      return v8;
    }

    v9[0] = xmmword_1D9F37C60;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
    sub_1D9E51FE8(&v21, &qword_1ECB74310, &unk_1D9F37F60);
  }

  return 0;
}

uint64_t sub_1D9E8FEEC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t SceneDescriptor.imageFrameResourceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SceneDescriptor(0) + 24));
  if ((~v3 & 0xF000000000000007) == 0 || v3 < 0)
  {
    v10 = sub_1D9F2AD7C();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v4 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID;
    v5 = sub_1D9F2AD7C();
    v12 = *(v5 - 8);
    (*(v12 + 16))(a1, v3 + v4, v5);
    v6 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v5;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t SceneDescriptor.init(descriptionText:list:imageFrameResourceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v25 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  sub_1D9E51E70(a3, &v24 - v13, &qword_1ECB74278, &qword_1D9F37C70);
  v15 = sub_1D9F2AD7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(a4, 1, v15) == 1)
  {
    sub_1D9E51FE8(a3, &qword_1ECB74278, &qword_1D9F37C70);
    v18 = 0xF000000000000007;
LABEL_5:
    v22 = v25;
    *a5 = a1;
    a5[1] = v22;
    v23 = type metadata accessor for SceneDescriptor(0);
    sub_1D9E902E0(v14, a5 + *(v23 + 20));
    *(a5 + *(v23 + 24)) = v18;
    return sub_1D9E51FE8(a4, &qword_1ECB76010, &unk_1D9F3A9C0);
  }

  sub_1D9E51E70(a4, v11, &qword_1ECB76010, &unk_1D9F3A9C0);
  result = (v17)(v11, 1, v15);
  if (result != 1)
  {
    type metadata accessor for ExecutionResourceRetriever(0);
    v18 = swift_allocObject();
    v20 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73EF8, &qword_1D9F35B40);
    v21 = swift_allocObject();
    *(v21 + 100) = 0;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0x8000000000000000;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    *(v18 + v20) = v21;
    *(v21 + 96) = 0;
    (*(v16 + 32))(v18 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v11, v15);
    sub_1D9E51FE8(a3, &qword_1ECB74278, &qword_1D9F37C70);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9E902E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SceneDescriptor.init(descriptionText:list:pixelBuffer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  sub_1D9E51E70(a3, &v17 - v11, &qword_1ECB74278, &qword_1D9F37C70);
  sub_1D9E51FE8(a3, &qword_1ECB74278, &qword_1D9F37C70);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74280, &qword_1D9F37C78);
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    v14 = v13 | 0x8000000000000000;
  }

  else
  {
    v14 = 0xF000000000000007;
  }

  *a5 = a1;
  a5[1] = a2;
  v15 = type metadata accessor for SceneDescriptor(0);
  result = sub_1D9E902E0(v12, a5 + *(v15 + 20));
  *(a5 + *(v15 + 24)) = v14;
  return result;
}

uint64_t static SceneDescriptor.defaultResolverSpecification.getter()
{
  type metadata accessor for SceneDescriptor(0);
  sub_1D9E91198(&qword_1ECB74288, type metadata accessor for SceneDescriptor, &protocol conformance descriptor for SceneDescriptor);

  return sub_1D9F2AA0C();
}

uint64_t sub_1D9E90588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D9E7ECAC;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1D9E90668(uint64_t a1)
{
  v2 = sub_1D9E91198(&qword_1ECB742B8, type metadata accessor for SceneDescriptor, &protocol conformance descriptor for SceneDescriptor);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t SceneDescriptor.description.getter()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74290, &unk_1D9F37C80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v26 = 0xD000000000000012;
  v27 = 0x80000001D9F48F50;
  v12 = v0[1];
  if (v12)
  {
    v13 = v4;
    v14 = v1;
    v15 = v2;
    v16 = *v0;
    v24 = 0;
    v25 = 0xE000000000000000;
    v23 = v0;
    sub_1D9F2B68C();

    v24 = 0xD000000000000016;
    v25 = 0x80000001D9F48F90;
    v17 = v16;
    v2 = v15;
    v1 = v14;
    v4 = v13;
    MEMORY[0x1DA742F90](v17, v12);
    MEMORY[0x1DA742F90](666658, 0xE300000000000000);
    MEMORY[0x1DA742F90](v24, v25);
    v0 = v23;
  }

  v18 = type metadata accessor for SceneDescriptor(0);
  sub_1D9E51E70(v0 + *(v18 + 20), v7, &qword_1ECB74278, &qword_1D9F37C70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D9E51FE8(v7, &qword_1ECB74278, &qword_1D9F37C70);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x1DA742F90](0x7473696C20202020, 0xEA0000000000203ALL);
    sub_1D9F2B75C();
    MEMORY[0x1DA742F90](2604, 0xE200000000000000);
    MEMORY[0x1DA742F90](v24, v25);

    (*(v9 + 8))(v11, v8);
  }

  v19 = *(v0 + *(v18 + 24));
  if ((v19 & 0x8000000000000000) == 0)
  {
    (*(v2 + 16))(v4, v19 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v1);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1D9F2B68C();

    v24 = 0xD00000000000001ALL;
    v25 = 0x80000001D9F48F70;
    sub_1D9E91198(&unk_1EE0F3850, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1D9F2B9FC();
    MEMORY[0x1DA742F90](v20);

    MEMORY[0x1DA742F90](2604, 0xE200000000000000);
    MEMORY[0x1DA742F90](v24, v25);

    (*(v2 + 8))(v4, v1);
  }

  MEMORY[0x1DA742F90](125, 0xE100000000000000);
  return v26;
}

uint64_t SceneDescriptor.convertToEntity()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1D9F2AD7C();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v9 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v9, qword_1EE0F1240);
  v10 = sub_1D9F2AE6C();
  v11 = sub_1D9F2B42C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1D9E71CA4(0x736544656E656353, 0xEF726F7470697263, &v34);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D9E71CA4(0xD000000000000011, 0x80000001D9F48FB0, &v34);
    _os_log_impl(&dword_1D9E39000, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v13, -1, -1);
    MEMORY[0x1DA744270](v12, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74298, &unk_1D9F3A9B0);
  v14 = sub_1D9F2A9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB742A0, &qword_1D9F37C90);
  v15 = sub_1D9F2A9AC();
  v16 = sub_1D9F2A9AC();
  v17 = v2[1];
  v34 = *v2;
  v35 = v17;

  sub_1D9F2A98C();
  v18 = type metadata accessor for SceneDescriptor(0);
  sub_1D9E51E70(v2 + *(v18 + 20), v8, &qword_1ECB74278, &qword_1D9F37C70);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74290, &unk_1D9F37C80);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    sub_1D9E51FE8(v8, &qword_1ECB74278, &qword_1D9F37C70);
    v21 = 0;
  }

  else
  {
    v21 = sub_1D9F2A9DC();
    (*(v20 + 8))(v8, v19);
  }

  v34 = v21;
  sub_1D9F2A98C();
  v22 = *(v2 + *(v18 + 24));
  if (v22 < 0)
  {
    v25 = 0;
    v27 = 0;
  }

  else
  {
    v24 = v31;
    v23 = v32;
    (*(v31 + 16))(v5, v22 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v32);
    v25 = sub_1D9F2AD2C();
    v27 = v26;
    (*(v24 + 8))(v5, v23);
  }

  v34 = v25;
  v35 = v27;
  sub_1D9F2A98C();

  v29 = v33;
  *v33 = v14;
  v29[1] = v15;
  v29[2] = v16;
  return result;
}

uint64_t sub_1D9E91198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D9E91224(uint64_t a1)
{
  sub_1D9E3F9EC(319, &qword_1EE0F2358, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D9E912E0(319);
    if (v2 <= 0x3F)
    {
      sub_1D9E3F9EC(319, &qword_1ECB742F0, &type metadata for SceneDescriptor.PixelBufferSource);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9E912E0(uint64_t a1)
{
  if (!qword_1ECB742E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74290, &unk_1D9F37C80);
    v1 = sub_1D9F2B59C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB742E8);
    }
  }
}

unint64_t sub_1D9E91344()
{
  result = qword_1ECB742F8;
  if (!qword_1ECB742F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74300, &qword_1D9F37EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB742F8);
  }

  return result;
}

unint64_t sub_1D9E913A8()
{
  result = qword_1ECB74308;
  if (!qword_1ECB74308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74308);
  }

  return result;
}

uint64_t sub_1D9E91408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9E91464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t static PredictedActionSet.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECB72AB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PredictedActionSet(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECB74318);

  return sub_1D9E527EC(v3, a1);
}

uint64_t PredictedActionSet.init(openAction:saveAction:searchAction:auxiliaryActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D9E917DC(a1, a5);
  v9 = type metadata accessor for PredictedActionSet(0);
  sub_1D9E917DC(a2, a5 + v9[5]);
  result = sub_1D9E917DC(a3, a5 + v9[6]);
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t PredictedActionSet.saveAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedActionSet(0) + 20);

  return sub_1D9E53328(v3, a1);
}

uint64_t PredictedActionSet.searchAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictedActionSet(0) + 24);

  return sub_1D9E53328(v3, a1);
}

uint64_t PredictedActionSet.auxiliaryActions.getter()
{
  type metadata accessor for PredictedActionSet(0);
}

uint64_t sub_1D9E916A4()
{
  v0 = type metadata accessor for PredictedActionSet(0);
  __swift_allocate_value_buffer(v0, qword_1ECB74318);
  v1 = __swift_project_value_buffer(v0, qword_1ECB74318);
  v2 = type metadata accessor for PredictedAction(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v1, 1, 1, v2);
  v3(v1 + v0[5], 1, 1, v2);
  result = (v3)(v1 + v0[6], 1, 1, v2);
  *(v1 + v0[7]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t type metadata accessor for PredictedActionSet(uint64_t a1)
{
  result = qword_1EE0F2248;
  if (!qword_1EE0F2248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9E917DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9E91850()
{
  v1 = 0x697463416E65706FLL;
  v2 = 0x6341686372616573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6974634165766173;
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

uint64_t sub_1D9E918D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9E92F3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9E91900(uint64_t a1)
{
  v2 = sub_1D9E92AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9E9193C(uint64_t a1)
{
  v2 = sub_1D9E92AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedActionSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74330, &qword_1D9F37F78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E92AF8();
  sub_1D9F2BB8C();
  v15 = 0;
  type metadata accessor for PredictedAction(0);
  sub_1D9E92C90(&qword_1EE0F2268, type metadata accessor for PredictedAction, &protocol conformance descriptor for PredictedAction);
  sub_1D9F2B94C();
  if (!v2)
  {
    v9 = type metadata accessor for PredictedActionSet(0);
    v14 = 1;
    sub_1D9F2B94C();
    v13 = 2;
    sub_1D9F2B94C();
    v11[1] = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74340, &qword_1D9F37F80);
    sub_1D9E92B4C(&qword_1EE0F1180, &qword_1EE0F2268, &protocol conformance descriptor for PredictedAction, MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PredictedActionSet.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PredictedAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1D9E53328(v2, &v20 - v15);
  v17 = *(v5 + 48);
  if (v17(v16, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E51ED8(v16, v7);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)(a1);
    sub_1D9E92BE8(v7, type metadata accessor for PredictedAction);
  }

  v18 = type metadata accessor for PredictedActionSet(0);
  sub_1D9E53328(v2 + v18[5], v14);
  if (v17(v14, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E51ED8(v14, v7);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)(a1);
    sub_1D9E92BE8(v7, type metadata accessor for PredictedAction);
  }

  sub_1D9E53328(v2 + v18[6], v11);
  if (v17(v11, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    sub_1D9E51ED8(v11, v7);
    sub_1D9F2BB1C();
    PredictedAction.hash(into:)(a1);
    sub_1D9E92BE8(v7, type metadata accessor for PredictedAction);
  }

  return sub_1D9E4F52C(a1, *(v2 + v18[7]));
}

uint64_t PredictedActionSet.hashValue.getter()
{
  sub_1D9F2BAFC();
  PredictedActionSet.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t PredictedActionSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v23 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74348, &qword_1D9F37F88);
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for PredictedActionSet(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9E92AF8();
  v28 = v13;
  v17 = v29;
  sub_1D9F2BB7C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v6;
  v29 = v16;
  type metadata accessor for PredictedAction(0);
  v34 = 0;
  sub_1D9E92C90(&qword_1EE0F2260, type metadata accessor for PredictedAction, &protocol conformance descriptor for PredictedAction);
  v18 = v25;
  v19 = v27;
  sub_1D9F2B83C();
  sub_1D9E917DC(v18, v29);
  v33 = 1;
  sub_1D9F2B83C();
  sub_1D9E917DC(v9, &v29[v14[5]]);
  v32 = 2;
  v20 = v23;
  sub_1D9F2B83C();
  v21 = v29;
  sub_1D9E917DC(v20, &v29[v14[6]]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74340, &qword_1D9F37F80);
  v31 = 3;
  sub_1D9E92B4C(&qword_1EE0F1178, &qword_1EE0F2260, &protocol conformance descriptor for PredictedAction, MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  (*(v26 + 8))(v28, v19);
  *(v21 + v14[7]) = v30;
  sub_1D9E527EC(v21, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9E92BE8(v21, type metadata accessor for PredictedActionSet);
}

uint64_t sub_1D9E92460()
{
  sub_1D9F2BAFC();
  PredictedActionSet.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9E924A4()
{
  sub_1D9F2BAFC();
  PredictedActionSet.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport17ExecutionFollowupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731E8, &qword_1D9F37F70);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v42[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74370, &qword_1D9F381B8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v45 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v42[-v19];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v42[-v22];
  v48 = v21;
  v24 = *(v21 + 48);
  sub_1D9E53328(a1, &v42[-v22]);
  sub_1D9E53328(a2, &v23[v24]);
  v25 = *(v5 + 48);
  if (v25(v23, 1, v4) == 1)
  {
    if (v25(&v23[v24], 1, v4) == 1)
    {
      sub_1D9E51FE8(v23, &qword_1ECB731E8, &qword_1D9F37F70);
      goto LABEL_8;
    }

LABEL_6:
    v26 = v23;
LABEL_21:
    sub_1D9E51FE8(v26, &qword_1ECB74370, &qword_1D9F381B8);
    goto LABEL_22;
  }

  sub_1D9E53328(v23, v14);
  if (v25(&v23[v24], 1, v4) == 1)
  {
    sub_1D9E92BE8(v14, type metadata accessor for PredictedAction);
    goto LABEL_6;
  }

  v44 = v10;
  v27 = v47;
  sub_1D9E51ED8(&v23[v24], v47);
  v43 = _s29VisualActionPredictionSupport09PredictedB0V2eeoiySbAC_ACtFZ_0(v14, v27);
  v28 = v27;
  v10 = v44;
  sub_1D9E92BE8(v28, type metadata accessor for PredictedAction);
  sub_1D9E92BE8(v14, type metadata accessor for PredictedAction);
  sub_1D9E51FE8(v23, &qword_1ECB731E8, &qword_1D9F37F70);
  if ((v43 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v29 = type metadata accessor for PredictedActionSet(0);
  v30 = v29[5];
  v31 = *(v48 + 48);
  sub_1D9E53328(a1 + v30, v20);
  sub_1D9E53328(a2 + v30, &v20[v31]);
  if (v25(v20, 1, v4) == 1)
  {
    if (v25(&v20[v31], 1, v4) != 1)
    {
LABEL_20:
      v26 = v20;
      goto LABEL_21;
    }

    sub_1D9E51FE8(v20, &qword_1ECB731E8, &qword_1D9F37F70);
LABEL_14:
    v36 = v29[6];
    v37 = *(v48 + 48);
    v20 = v45;
    sub_1D9E53328(a1 + v36, v45);
    sub_1D9E53328(a2 + v36, &v20[v37]);
    if (v25(v20, 1, v4) == 1)
    {
      if (v25(&v20[v37], 1, v4) == 1)
      {
        sub_1D9E51FE8(v20, &qword_1ECB731E8, &qword_1D9F37F70);
LABEL_25:
        v38 = sub_1D9E4BC80(*(a1 + v29[7]), *(a2 + v29[7]));
        return v38 & 1;
      }

      goto LABEL_20;
    }

    sub_1D9E53328(v20, v10);
    if (v25(&v20[v37], 1, v4) == 1)
    {
      v33 = v10;
      goto LABEL_19;
    }

    v40 = v47;
    sub_1D9E51ED8(&v20[v37], v47);
    v41 = _s29VisualActionPredictionSupport09PredictedB0V2eeoiySbAC_ACtFZ_0(v10, v40);
    sub_1D9E92BE8(v40, type metadata accessor for PredictedAction);
    sub_1D9E92BE8(v10, type metadata accessor for PredictedAction);
    sub_1D9E51FE8(v20, &qword_1ECB731E8, &qword_1D9F37F70);
    if (v41)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v32 = v46;
  sub_1D9E53328(v20, v46);
  if (v25(&v20[v31], 1, v4) == 1)
  {
    v33 = v32;
LABEL_19:
    sub_1D9E92BE8(v33, type metadata accessor for PredictedAction);
    goto LABEL_20;
  }

  v44 = v10;
  v34 = v47;
  sub_1D9E51ED8(&v20[v31], v47);
  v43 = _s29VisualActionPredictionSupport09PredictedB0V2eeoiySbAC_ACtFZ_0(v32, v34);
  v35 = v34;
  v10 = v44;
  sub_1D9E92BE8(v35, type metadata accessor for PredictedAction);
  sub_1D9E92BE8(v32, type metadata accessor for PredictedAction);
  sub_1D9E51FE8(v20, &qword_1ECB731E8, &qword_1D9F37F70);
  if (v43)
  {
    goto LABEL_14;
  }

LABEL_22:
  v38 = 0;
  return v38 & 1;
}