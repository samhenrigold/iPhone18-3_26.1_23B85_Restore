unint64_t sub_242C05998()
{
  result = qword_27ECDE2C0;
  if (!qword_27ECDE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2C0);
  }

  return result;
}

unint64_t sub_242C059EC()
{
  result = qword_27ECDE2C8;
  if (!qword_27ECDE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2C8);
  }

  return result;
}

unint64_t sub_242C05A40()
{
  result = qword_27ECDE2D8;
  if (!qword_27ECDE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2D8);
  }

  return result;
}

unint64_t sub_242C05A94()
{
  result = qword_27ECDE2E8;
  if (!qword_27ECDE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE2E8);
  }

  return result;
}

unint64_t sub_242C05AE8()
{
  result = qword_27ECDE300;
  if (!qword_27ECDE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE300);
  }

  return result;
}

unint64_t sub_242C05B3C()
{
  result = qword_27ECDE318;
  if (!qword_27ECDE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE318);
  }

  return result;
}

unint64_t sub_242C05B90()
{
  result = qword_27ECDE330;
  if (!qword_27ECDE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE330);
  }

  return result;
}

unint64_t sub_242C05BE4()
{
  result = qword_27ECDE348;
  if (!qword_27ECDE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE348);
  }

  return result;
}

unint64_t sub_242C05C38()
{
  result = qword_27ECDE360;
  if (!qword_27ECDE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE360);
  }

  return result;
}

unint64_t sub_242C05C8C()
{
  result = qword_27ECDE378;
  if (!qword_27ECDE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE378);
  }

  return result;
}

unint64_t sub_242C05CE0()
{
  result = qword_27ECDE390;
  if (!qword_27ECDE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE390);
  }

  return result;
}

unint64_t sub_242C05D34()
{
  result = qword_27ECDE3A8;
  if (!qword_27ECDE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE3A8);
  }

  return result;
}

unint64_t sub_242C05D88()
{
  result = qword_27ECDE3C0;
  if (!qword_27ECDE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE3C0);
  }

  return result;
}

unint64_t sub_242C05DDC()
{
  result = qword_27ECDE3D8;
  if (!qword_27ECDE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE3D8);
  }

  return result;
}

unint64_t sub_242C05E30()
{
  result = qword_27ECDE3F0;
  if (!qword_27ECDE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE3F0);
  }

  return result;
}

unint64_t sub_242C05E88()
{
  result = qword_27ECDE400;
  if (!qword_27ECDE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE400);
  }

  return result;
}

unint64_t sub_242C05EE0()
{
  result = qword_27ECDE408;
  if (!qword_27ECDE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE408);
  }

  return result;
}

uint64_t sub_242C05FB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_242C05FFC(uint64_t result, int a2, int a3)
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

uint64_t sub_242C060BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_242C06104(uint64_t result, int a2, int a3)
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

unint64_t sub_242C06248()
{
  result = qword_27ECDE410;
  if (!qword_27ECDE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE410);
  }

  return result;
}

unint64_t sub_242C062A0()
{
  result = qword_27ECDE418;
  if (!qword_27ECDE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE418);
  }

  return result;
}

unint64_t sub_242C062F8()
{
  result = qword_27ECDE420;
  if (!qword_27ECDE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE420);
  }

  return result;
}

unint64_t sub_242C06350()
{
  result = qword_27ECDE428;
  if (!qword_27ECDE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE428);
  }

  return result;
}

unint64_t sub_242C063A8()
{
  result = qword_27ECDE430;
  if (!qword_27ECDE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE430);
  }

  return result;
}

unint64_t sub_242C06400()
{
  result = qword_27ECDE438;
  if (!qword_27ECDE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE438);
  }

  return result;
}

unint64_t sub_242C06458()
{
  result = qword_27ECDE440;
  if (!qword_27ECDE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE440);
  }

  return result;
}

unint64_t sub_242C064B0()
{
  result = qword_27ECDE448;
  if (!qword_27ECDE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE448);
  }

  return result;
}

unint64_t sub_242C06508()
{
  result = qword_27ECDE450;
  if (!qword_27ECDE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE450);
  }

  return result;
}

unint64_t sub_242C06560()
{
  result = qword_27ECDE458;
  if (!qword_27ECDE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE458);
  }

  return result;
}

unint64_t sub_242C065B8()
{
  result = qword_27ECDE460;
  if (!qword_27ECDE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE460);
  }

  return result;
}

unint64_t sub_242C06610()
{
  result = qword_27ECDE468;
  if (!qword_27ECDE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE468);
  }

  return result;
}

unint64_t sub_242C06668()
{
  result = qword_27ECDE470;
  if (!qword_27ECDE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE470);
  }

  return result;
}

unint64_t sub_242C066C0()
{
  result = qword_27ECDE478;
  if (!qword_27ECDE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE478);
  }

  return result;
}

unint64_t sub_242C06718()
{
  result = qword_27ECDE480;
  if (!qword_27ECDE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE480);
  }

  return result;
}

unint64_t sub_242C06770()
{
  result = qword_27ECDE488;
  if (!qword_27ECDE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE488);
  }

  return result;
}

unint64_t sub_242C067C8()
{
  result = qword_27ECDE490;
  if (!qword_27ECDE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE490);
  }

  return result;
}

unint64_t sub_242C06820()
{
  result = qword_27ECDE498;
  if (!qword_27ECDE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE498);
  }

  return result;
}

unint64_t sub_242C06878()
{
  result = qword_27ECDE4A0;
  if (!qword_27ECDE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4A0);
  }

  return result;
}

unint64_t sub_242C068D0()
{
  result = qword_27ECDE4A8;
  if (!qword_27ECDE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4A8);
  }

  return result;
}

unint64_t sub_242C06928()
{
  result = qword_27ECDE4B0;
  if (!qword_27ECDE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4B0);
  }

  return result;
}

unint64_t sub_242C06980()
{
  result = qword_27ECDE4B8;
  if (!qword_27ECDE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4B8);
  }

  return result;
}

unint64_t sub_242C069D8()
{
  result = qword_27ECDE4C0;
  if (!qword_27ECDE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4C0);
  }

  return result;
}

unint64_t sub_242C06A30()
{
  result = qword_27ECDE4C8;
  if (!qword_27ECDE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4C8);
  }

  return result;
}

unint64_t sub_242C06A88()
{
  result = qword_27ECDE4D0;
  if (!qword_27ECDE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4D0);
  }

  return result;
}

unint64_t sub_242C06AE0()
{
  result = qword_27ECDE4D8;
  if (!qword_27ECDE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4D8);
  }

  return result;
}

unint64_t sub_242C06B38()
{
  result = qword_27ECDE4E0;
  if (!qword_27ECDE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4E0);
  }

  return result;
}

unint64_t sub_242C06B90()
{
  result = qword_27ECDE4E8;
  if (!qword_27ECDE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4E8);
  }

  return result;
}

unint64_t sub_242C06BE8()
{
  result = qword_27ECDE4F0;
  if (!qword_27ECDE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4F0);
  }

  return result;
}

unint64_t sub_242C06C40()
{
  result = qword_27ECDE4F8;
  if (!qword_27ECDE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE4F8);
  }

  return result;
}

unint64_t sub_242C06C98()
{
  result = qword_27ECDE500;
  if (!qword_27ECDE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE500);
  }

  return result;
}

unint64_t sub_242C06CF0()
{
  result = qword_27ECDE508;
  if (!qword_27ECDE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE508);
  }

  return result;
}

unint64_t sub_242C06D48()
{
  result = qword_27ECDE510;
  if (!qword_27ECDE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE510);
  }

  return result;
}

unint64_t sub_242C06DA0()
{
  result = qword_27ECDE518;
  if (!qword_27ECDE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE518);
  }

  return result;
}

unint64_t sub_242C06DF8()
{
  result = qword_27ECDE520;
  if (!qword_27ECDE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE520);
  }

  return result;
}

unint64_t sub_242C06E50()
{
  result = qword_27ECDE528;
  if (!qword_27ECDE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE528);
  }

  return result;
}

unint64_t sub_242C06EA8()
{
  result = qword_27ECDE530;
  if (!qword_27ECDE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE530);
  }

  return result;
}

unint64_t sub_242C06F00()
{
  result = qword_27ECDE538;
  if (!qword_27ECDE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE538);
  }

  return result;
}

unint64_t sub_242C06F58()
{
  result = qword_27ECDE540;
  if (!qword_27ECDE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE540);
  }

  return result;
}

unint64_t sub_242C06FB0()
{
  result = qword_27ECDE548;
  if (!qword_27ECDE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE548);
  }

  return result;
}

unint64_t sub_242C07008()
{
  result = qword_27ECDE550;
  if (!qword_27ECDE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE550);
  }

  return result;
}

unint64_t sub_242C07060()
{
  result = qword_27ECDE558;
  if (!qword_27ECDE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE558);
  }

  return result;
}

uint64_t sub_242C070B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000242C213E0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_242C1A740();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242C071D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000242C213E0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4448527369 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_242C1A740();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_242C0733C()
{
  result = qword_27ECDE560;
  if (!qword_27ECDE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE560);
  }

  return result;
}

unint64_t sub_242C07390()
{
  result = qword_27ECDE568;
  if (!qword_27ECDE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE568);
  }

  return result;
}

_BYTE *CAUPhysicalControlBarsButtonLayoutInfo.init(edge:startingPoint:length:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t sub_242C074D8()
{
  v1 = 0x676E697472617473;
  if (*v0 != 1)
  {
    v1 = 0x6874676E656CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701274725;
  }
}

uint64_t sub_242C07534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C0820C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C0755C(uint64_t a1)
{
  v2 = sub_242C077A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C07598(uint64_t a1)
{
  v2 = sub_242C077A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUPhysicalControlBarsButtonLayoutInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE570, &qword_242C1E950);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  LODWORD(v6) = *(v1 + 2);
  v10[6] = *(v1 + 1);
  v10[3] = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C077A0();
  sub_242C1A8A0();
  v14 = v8;
  v13 = 0;
  sub_242C077F4();
  sub_242C1A710();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_242C1A720();
  v11 = 2;
  sub_242C1A720();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_242C077A0()
{
  result = qword_27ECDE578;
  if (!qword_27ECDE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE578);
  }

  return result;
}

unint64_t sub_242C077F4()
{
  result = qword_27ECDE580;
  if (!qword_27ECDE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE580);
  }

  return result;
}

uint64_t CAUPhysicalControlBarsButtonLayoutInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE588, &qword_242C1E958);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C077A0();
  sub_242C1A880();
  if (!v2)
  {
    v16 = 0;
    sub_242C07A2C();
    sub_242C1A6B0();
    v9 = v17;
    v15 = 1;
    v11 = sub_242C1A6C0();
    v14 = 2;
    v12 = sub_242C1A6C0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 4) = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C07A2C()
{
  result = qword_27ECDE590;
  if (!qword_27ECDE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE590);
  }

  return result;
}

CarAssetUtils::CAUEdge_optional __swiftcall CAUEdge.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUEdge.rawValue.getter()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 1952867692;
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

unint64_t sub_242C07B8C()
{
  result = qword_27ECDE598;
  if (!qword_27ECDE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE598);
  }

  return result;
}

uint64_t sub_242C07BE0()
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C07C8C(uint64_t a1)
{
  sub_242C1A4B0();
}

uint64_t sub_242C07D24(uint64_t a1)
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C07DD8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1952867692;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_242C07EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C08328();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C07F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C08328();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_242C07FC4()
{
  result = qword_27ECDE5A0;
  if (!qword_27ECDE5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE5A8, &qword_242C1EAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5A0);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CAUPhysicalControlBarsButtonLayoutInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[12])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUPhysicalControlBarsButtonLayoutInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_242C08108()
{
  result = qword_27ECDE5B0;
  if (!qword_27ECDE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5B0);
  }

  return result;
}

unint64_t sub_242C08160()
{
  result = qword_27ECDE5B8;
  if (!qword_27ECDE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5B8);
  }

  return result;
}

unint64_t sub_242C081B8()
{
  result = qword_27ECDE5C0;
  if (!qword_27ECDE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5C0);
  }

  return result;
}

uint64_t sub_242C0820C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701274725 && a2 == 0xE400000000000000;
  if (v3 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697472617473 && a2 == 0xED0000746E696F50 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C1A740();

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

unint64_t sub_242C08328()
{
  result = qword_27ECDE5C8;
  if (!qword_27ECDE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5C8);
  }

  return result;
}

uint64_t JSONEncoder.encode<A>(_:toFile:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_242C1A2B0();
  if (!v4)
  {
    v7 = result;
    v8 = v6;
    sub_242C1A3A0();
    return sub_242C083E4(v7, v8);
  }

  return result;
}

uint64_t sub_242C083E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

CarAssetUtils::CAUVehicleTrait_optional __swiftcall CAUVehicleTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CAUVehicleTrait.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (v1 != 10)
    {
      v6 = 0xD000000000000012;
    }

    if (v1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x4C656C6369686576;
    v8 = 0xD000000000000010;
    if (v1 != 7)
    {
      v8 = 0xD000000000000019;
    }

    if (v1 != 6)
    {
      v7 = v8;
    }

    if (*v0 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x726F697265746E69;
    v3 = 0x6172426F69647561;
    if (v1 != 4)
    {
      v3 = 0x4C656C6369686576;
    }

    if (v1 == 3)
    {
      v3 = 0x726F697265746E69;
    }

    if (v1 != 1)
    {
      v2 = 0x726F697265747865;
    }

    if (!*v0)
    {
      v2 = 0x726F697265747865;
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
}

uint64_t sub_242C08630()
{
  v0 = CAUVehicleTrait.rawValue.getter();
  v2 = v1;
  if (v0 == CAUVehicleTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_242C1A740();
  }

  return v5 & 1;
}

unint64_t sub_242C086D0()
{
  result = qword_2815054E0;
  if (!qword_2815054E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815054E0);
  }

  return result;
}

uint64_t sub_242C08724()
{
  sub_242C1A820();
  CAUVehicleTrait.rawValue.getter();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C0878C(uint64_t a1)
{
  CAUVehicleTrait.rawValue.getter();
  sub_242C1A4B0();
}

uint64_t sub_242C087F0(uint64_t a1)
{
  sub_242C1A820();
  CAUVehicleTrait.rawValue.getter();
  sub_242C1A4B0();

  return sub_242C1A850();
}

unint64_t sub_242C08860@<X0>(unint64_t *a1@<X8>)
{
  result = CAUVehicleTrait.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CAUVehicleTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUVehicleTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUResource(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 14) | (4 * (HIBYTE(*a1) & 0x3C | (*a1 >> 6)))) ^ 0xFF;
  if (v6 >= 0xFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for CAUResource(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
    *result = (((-a2 & 0xF0) << 6) - (a2 << 14)) & 0xFF3F | (((-a2 >> 2) & 3) << 6);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_242C08B54(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 0x3F | (((v1 >> 8) & 3) << 6)) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_242C08B8C(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x33F | (a2 << 14);
  }

  else
  {
    *result = (4 * (a2 - 2)) & 0x300 | (a2 - 2) & 0x3F | 0x8000;
  }

  return result;
}

void sub_242C08BD4(_BYTE *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 14;
  if (v3 >= 2)
  {
    LOBYTE(v3) = byte_242C1EDC2[v2 ^ 0xFFFFFFFFFFFF8000];
  }

  *a1 = v3;
}

uint64_t sub_242C08C54()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

uint64_t sub_242C08CC8(uint64_t a1)
{
  v2 = *v1;
  sub_242C1A820();
  MEMORY[0x245D23570](v2);
  return sub_242C1A850();
}

BOOL sub_242C08D50(void *a1, uint64_t *a2)
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

void *sub_242C08D80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_242C08DAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_242C08E84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_242C08EB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t CAUPersistentElements.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1A870();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_242C1A770();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CAUPersistentElements.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1A890();
  if ((v2 & 1) == 0)
  {
    v3 = MEMORY[0x277D84F90];
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v3 = sub_242C09850(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_242C09850((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = 25441;
  *(v6 + 5) = 0xE200000000000000;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_242C09850(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_242C09850((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = 7233894;
    *(v9 + 5) = 0xE300000000000000;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_242C09850(0, *(v3 + 2) + 1, 1, v3);
    }

    v11 = *(v3 + 2);
    v10 = *(v3 + 3);
    if (v11 >= v10 >> 1)
    {
      v3 = sub_242C09850((v10 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v12 = &v3[16 * v11];
    strcpy(v12 + 32, "frontDefrost");
    v12[45] = 0;
    *(v12 + 23) = -5120;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_242C09850(0, *(v3 + 2) + 1, 1, v3);
  }

  v14 = *(v3 + 2);
  v13 = *(v3 + 3);
  if (v14 >= v13 >> 1)
  {
    v3 = sub_242C09850((v13 > 1), v14 + 1, 1, v3);
  }

  *(v3 + 2) = v14 + 1;
  v15 = &v3[16 * v14];
  *(v15 + 4) = 0x7266654472616572;
  *(v15 + 5) = 0xEB0000000074736FLL;
  if ((v2 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_242C09850(0, *(v3 + 2) + 1, 1, v3);
    }

    v17 = *(v3 + 2);
    v16 = *(v3 + 3);
    if (v17 >= v16 >> 1)
    {
      v3 = sub_242C09850((v16 > 1), v17 + 1, 1, v3);
    }

    *(v3 + 2) = v17 + 1;
    v18 = &v3[16 * v17];
    *(v18 + 4) = 0xD000000000000011;
    *(v18 + 5) = 0x8000000242C21430;
  }

LABEL_31:
  __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE5D0, &unk_242C1EDD0);
  sub_242C097B4(&qword_27ECDE5E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_242C1A7B0();

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_242C097B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE5D0, &unk_242C1EDD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_242C09850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE620, &qword_242C1F048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_242C09960()
{
  result = qword_27ECDE5F0;
  if (!qword_27ECDE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5F0);
  }

  return result;
}

unint64_t sub_242C099B8()
{
  result = qword_27ECDE5F8;
  if (!qword_27ECDE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE5F8);
  }

  return result;
}

unint64_t sub_242C09A0C()
{
  result = qword_27ECDE600;
  if (!qword_27ECDE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE600);
  }

  return result;
}

unint64_t sub_242C09A64()
{
  result = qword_27ECDE608;
  if (!qword_27ECDE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE608);
  }

  return result;
}

void *sub_242C09AC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE610, "z2");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE618, &qword_242C1F040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t CAUError.AssetLibrary.hashValue.getter()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

unint64_t sub_242C09C98()
{
  result = qword_27ECDE628;
  if (!qword_27ECDE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE628);
  }

  return result;
}

unint64_t sub_242C09D14()
{
  result = qword_27ECDE630;
  if (!qword_27ECDE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE630);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CarAssetUtils8CAUErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_242C09D98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242C09DE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_242C09E28(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_242C09E64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657463656C6573;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xED00006E4F746E65;
    if (a1 == 2)
    {
      v5 = 0x56646E4174616568;
    }

    else
    {
      v5 = 0x6E4F746E6576;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x6E4F74616568;
    }

    else
    {
      v5 = 0x64657463656C6573;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x56646E4174616568;
  v9 = 0xED00006E4F746E65;
  if (a2 != 2)
  {
    v8 = 0x6E4F746E6576;
    v9 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6E4F74616568;
    v7 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_242C1A740();
  }

  return v12 & 1;
}

uint64_t sub_242C09FA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 0x7468676972;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74746F62;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1952867692;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242C1A740();
  }

  return v11 & 1;
}

uint64_t sub_242C0A0C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7233894;
    }

    else
    {
      v3 = 0x74617265706D6574;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xEB00000000657275;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E614674616573;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000242C208B0;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x6B6E694C70656564;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 7233894;
    }

    else
    {
      v6 = 0x74617265706D6574;
    }

    if (a2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xEB00000000657275;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E614674616573)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000242C208B0;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6B6E694C70656564)
    {
LABEL_31:
      v7 = sub_242C1A740();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_242C0A25C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = "e";
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = "tpms_pressureValue_font_weight";
    v14 = "tpms_pressureUnit_font_weight";
    v15 = 0xD000000000000014;
    if (a1 != 8)
    {
      v15 = 0xD000000000000011;
      v14 = "trip_horizontalStack";
    }

    if (a1 == 7)
    {
      v15 = 0xD00000000000001DLL;
    }

    else
    {
      v13 = v14;
    }

    v16 = "tpms_pressureValue_font_style";
    v17 = 0xD00000000000001CLL;
    if (a1 != 5)
    {
      v17 = 0xD00000000000001ELL;
      v16 = "tpms_pressureUnit_font_style";
    }

    if (a1 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v15;
    }

    if (v4 <= 6)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = "label_bottom_padding";
    v6 = 0xD00000000000001FLL;
    v7 = "tpms_rightTop_label_top_padding";
    v8 = 0xD000000000000025;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001DLL;
      v7 = "_label_bottom_padding";
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = "tpms_leftTop_label_top_padding";
    v10 = 0xD000000000000024;
    if (!a1)
    {
      v10 = 0xD00000000000001ELL;
      v9 = "e";
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v3 = "label_bottom_padding";
        v2 = 0xD00000000000001FLL;
      }

      else if (a2 == 3)
      {
        v3 = "tpms_rightTop_label_top_padding";
        v2 = 0xD000000000000025;
      }

      else
      {
        v3 = "_label_bottom_padding";
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v3 = "tpms_leftTop_label_top_padding";
      v2 = 0xD000000000000024;
      goto LABEL_46;
    }

LABEL_45:
    v2 = 0xD00000000000001ELL;
    goto LABEL_46;
  }

  if (a2 <= 6u)
  {
    if (a2 == 5)
    {
      v3 = "tpms_pressureValue_font_style";
      v2 = 0xD00000000000001CLL;
      goto LABEL_46;
    }

    v3 = "tpms_pressureUnit_font_style";
    goto LABEL_45;
  }

  if (a2 == 7)
  {
    v3 = "tpms_pressureValue_font_weight";
  }

  else if (a2 == 8)
  {
    v3 = "tpms_pressureUnit_font_weight";
    v2 = 0xD000000000000014;
  }

  else
  {
    v3 = "trip_horizontalStack";
    v2 = 0xD000000000000011;
  }

LABEL_46:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_242C1A740();
  }

  return v18 & 1;
}

uint64_t sub_242C0A4C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656772616863;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEC00000065727573;
    v4 = 0xE400000000000000;
    if (a1 == 2)
    {
      v6 = 0x7365725065726974;
    }

    else
    {
      v6 = 1885958772;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE800000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x73657275736F6C63;
    }

    else
    {
      v6 = 0x656772616863;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x7365725065726974;
  v10 = 0xEC00000065727573;
  if (a2 != 2)
  {
    v9 = 1885958772;
    v10 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x73657275736F6C63;
    v8 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_242C1A740();
  }

  return v13 & 1;
}

__n128 CAUManifest.init(cabin:topDownInterior:topDownExteriorClosuresOverlay:topDownExterior:seats:closures:audioBrandLogo:vehicleLogo:vehicleLayouts:wallpaperOverlays:physicalControlBarsLayouts:appDockIndicators:featureConfigurations:appUIConfigurations:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

uint64_t sub_242C0A620@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned __int8 *a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *(v5 + 32);
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v52 = *a4;
  result = sub_242BFA104(result, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_56;
  }

  v49 = a3;
  v10 = *(*(v7 + 56) + 8 * result);
  v11 = *(v10 + 16);

  if (!v11)
  {
    v51 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v12 = 0;
  v13 = v10 + 48;
  v50 = a5;
  v51 = MEMORY[0x277D84F90];
  v48 = v11;
  do
  {
    v14 = (v13 + 24 * v12);
    v15 = v11 - v12;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = *(v14 - 16);
      v18 = *(v14 - 15);
      v54 = *(v14 - 14);
      v19 = *v14;
      v53 = *(v14 - 1);
      v20 = CAUVehicleLayoutKey.rawValue.getter();
      v22 = v21;
      if (v20 == CAUVehicleLayoutKey.rawValue.getter() && v22 == v23)
      {
      }

      else
      {
        v24 = sub_242C1A740();

        if ((v24 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if (v18 > 1)
      {
        v25 = v18 == 2;
        v26 = v18 == 2 ? 0x56646E4174616568 : 0x6E4F746E6576;
        v27 = 0xED00006E4F746E65;
      }

      else
      {
        v25 = v18 == 0;
        v26 = v18 ? 0x6E4F74616568 : 0x64657463656C6573;
        v27 = 0xE800000000000000;
      }

      v28 = v25 ? v27 : 0xE600000000000000;
      if (v52 <= 1)
      {
        break;
      }

      if (v52 == 2)
      {
        v30 = 0x56646E4174616568;
      }

      else
      {
        v30 = 0x6E4F746E6576;
      }

      if (v52 == 2)
      {
        v29 = 0xED00006E4F746E65;
      }

      else
      {
        v29 = 0xE600000000000000;
      }

      if (v26 == v30)
      {
        goto LABEL_38;
      }

LABEL_6:
      v16 = sub_242C1A740();

      if (v16)
      {
        goto LABEL_40;
      }

LABEL_7:

      v14 += 3;
      ++v12;
      if (!--v15)
      {
        a5 = v50;
        goto LABEL_48;
      }
    }

    if (!v52)
    {
      v29 = 0xE800000000000000;
      if (v26 == 0x64657463656C6573)
      {
        goto LABEL_38;
      }

      goto LABEL_6;
    }

    v29 = 0xE600000000000000;
    if (v26 != 0x6E4F74616568)
    {
      goto LABEL_6;
    }

LABEL_38:
    if (v28 != v29)
    {
      goto LABEL_6;
    }

LABEL_40:
    v31 = v51;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_242C0E414(0, *(v51 + 16) + 1, 1);
      v31 = v51;
    }

    a5 = v50;
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_242C0E414((v32 > 1), v33 + 1, 1);
      v31 = v51;
    }

    *(v31 + 16) = v33 + 1;
    v51 = v31;
    v34 = v31 + 24 * v33;
    *(v34 + 32) = v17;
    ++v12;
    *(v34 + 33) = v18;
    *(v34 + 34) = v54;
    *(v34 + 40) = v53;
    *(v34 + 48) = v19;
    v13 = v10 + 48;
    v11 = v48;
  }

  while (v15 != 1);
LABEL_48:

  v35 = *(v51 + 16);
  if (!v35)
  {

LABEL_56:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return result;
  }

  v36 = v51 + 24;
  v37 = v35 + 1;
  do
  {
    if (!--v37)
    {
      v44 = *(v51 + 32);
      v45 = *(v51 + 34);
      v47 = *(v51 + 40);
      v46 = *(v51 + 48);

      *a5 = v44;
      *(a5 + 2) = v45;
      *(a5 + 8) = v47;
      *(a5 + 16) = v46;
      return result;
    }

    v38 = (v36 + 24);
    v39 = *(v36 + 10);
    v36 += 24;
  }

  while (v39 != (v49 & 1));
  v41 = *(v38 - 1);
  v40 = *v38;
  v42 = *(v38 - 8);

  v43 = 0x10000;
  if (!v39)
  {
    v43 = 0;
  }

  *a5 = v42 | v43;
  *(a5 + 8) = v41;
  *(a5 + 16) = v40;
  return result;
}

uint64_t sub_242C0AA48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 40);
  if (!*(v6 + 16) || (v7 = *a3, result = sub_242BFA104(result, a2), (v8 & 1) == 0))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  v27 = a4;
  v9 = *(*(v6 + 56) + 8 * result);
  v10 = *(v9 + 16);
  v30 = v9;

  v29 = v10;
  if (!v10)
  {
LABEL_27:

    *v27 = 0;
    v27[1] = 0;
    v27[2] = 0;
    return result;
  }

  v11 = 0;
  v12 = (v30 + 32);
  if (v7)
  {
    v13 = 0x6465736F6C63;
  }

  else
  {
    v13 = 1852141679;
  }

  if (v7)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  while (1)
  {
    if (v11 >= *(v30 + 16))
    {
      __break(1u);
      return result;
    }

    v16 = *v12;
    v17 = v12[1];
    v18 = *(v12 + 2);
    v28 = *(v12 + 1);
    v19 = CAUVehicleLayoutKey.rawValue.getter();
    v21 = v20;
    if (v19 == CAUVehicleLayoutKey.rawValue.getter() && v21 == v22)
    {
    }

    else
    {
      v23 = sub_242C1A740();

      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v24 = v17 ? 0x6465736F6C63 : 1852141679;
    v25 = v17 ? 0xE600000000000000 : 0xE400000000000000;
    if (v24 == v13 && v25 == v14)
    {
      break;
    }

    v15 = sub_242C1A740();

    if (v15)
    {
      goto LABEL_28;
    }

LABEL_11:
    ++v11;

    v12 += 24;
    if (v29 == v11)
    {
      goto LABEL_27;
    }
  }

LABEL_28:

  v26 = 256;
  if (!v17)
  {
    v26 = 0;
  }

  *v27 = v26 | v16;
  v27[1] = v28;
  v27[2] = v18;
  return result;
}

unint64_t sub_242C0AC9C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = *v4;
  if (!*(v6 + 16))
  {
    goto LABEL_14;
  }

  v9 = result;
  result = sub_242BFA104(result, a2);
  if (v10)
  {
    v11 = *(*(v6 + 56) + 8 * result);
    v12 = (v11 + 32);
    v13 = *(v11 + 16) + 1;
    while (--v13)
    {
      v14 = v12 + 24;
      v15 = *v12;
      v12 += 24;
      if (v15 == (a3 & 1))
      {
        v17 = *(v14 - 2);
        v16 = *(v14 - 1);
        *a4 = v15;
        a4[1] = v17;
        goto LABEL_11;
      }
    }
  }

  if (*(v6 + 16) && (result = sub_242BFA104(v9, a2), (v18 & 1) != 0) && (v19 = *(*(v6 + 56) + 8 * result), *(v19 + 16)))
  {
    v20 = *(v19 + 40);
    v16 = *(v19 + 48);
    *a4 = *(v19 + 32);
    a4[1] = v20;
LABEL_11:
    a4[2] = v16;
  }

  else
  {
LABEL_14:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

unint64_t sub_242C0AD94@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = *(v4 + 8);
  if (!*(v6 + 16))
  {
    goto LABEL_14;
  }

  v9 = result;
  result = sub_242BFA104(result, a2);
  if (v10)
  {
    v11 = *(*(v6 + 56) + 8 * result);
    v12 = (v11 + 32);
    v13 = *(v11 + 16) + 1;
    while (--v13)
    {
      v14 = v12 + 24;
      v15 = *v12;
      v12 += 24;
      if (v15 == (a3 & 1))
      {
        v17 = *(v14 - 2);
        v16 = *(v14 - 1);
        *a4 = v15;
        a4[1] = v17;
        goto LABEL_11;
      }
    }
  }

  if (*(v6 + 16) && (result = sub_242BFA104(v9, a2), (v18 & 1) != 0) && (v19 = *(*(v6 + 56) + 8 * result), *(v19 + 16)))
  {
    v20 = *(v19 + 40);
    v16 = *(v19 + 48);
    *a4 = *(v19 + 32);
    a4[1] = v20;
LABEL_11:
    a4[2] = v16;
  }

  else
  {
LABEL_14:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

unint64_t sub_242C0AE8C(char a1)
{
  result = 0x6E69626163;
  switch(a1)
  {
    case 1:
      result = 0x496E776F44706F74;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0x456E776F44706F74;
      break;
    case 4:
      result = 0x7374616573;
      break;
    case 5:
      result = 0x73657275736F6C63;
      break;
    case 6:
      result = 0x6172426F69647561;
      break;
    case 7:
    case 8:
      result = 0x4C656C6369686576;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242C0B048@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C0E554(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C0B07C(uint64_t a1)
{
  v2 = sub_242C0B728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C0B0B8(uint64_t a1)
{
  v2 = sub_242C0B728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUManifest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE638, &qword_242C1F2D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[3];
  v30 = v1[2];
  v31 = v7;
  v10 = v1[5];
  v28 = v1[4];
  v29 = v9;
  v11 = v1[7];
  v26 = v1[6];
  v27 = v10;
  v12 = v1[9];
  v24 = v1[8];
  v25 = v11;
  v13 = v1[11];
  v22 = v1[10];
  v23 = v12;
  v14 = v1[13];
  v20 = v1[12];
  v21 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C0B728();

  v15 = v3;
  sub_242C1A8A0();
  v34 = v8;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE648, &qword_242C1F2D8);
  sub_242C0B77C();
  v16 = v32;
  sub_242C1A710();
  if (v16)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v17 = v29;
    v18 = v30;

    v34 = v31;
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE670, &qword_242C1F2E8);
    sub_242C0B8E0();
    sub_242C1A710();
    v34 = v18;
    v33 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE698, &qword_242C1F2F8);
    sub_242C0BA44();
    sub_242C1A710();
    v34 = v17;
    v33 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6B0, &qword_242C1F300);
    sub_242C0BB24();
    sub_242C1A710();
    v34 = v28;
    v33 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6C8, &qword_242C1F308);
    sub_242C0BC04();
    sub_242C1A710();
    v34 = v27;
    v33 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6F0, &qword_242C1F318);
    sub_242C0BD68();
    sub_242C1A710();
    v34 = v26;
    v33 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE718, &qword_242C1F328);
    sub_242C0BECC();
    sub_242C1A710();
    v34 = v25;
    v33 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE730, &qword_242C1F330);
    sub_242C0BFAC();
    sub_242C1A710();
    v34 = v24;
    v33 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE748, &qword_242C1F338);
    sub_242C0C08C();
    sub_242C1A710();
    v34 = v23;
    v33 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE760, &qword_242C1F340);
    sub_242C0C16C();
    sub_242C1A710();
    v34 = v22;
    v33 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE778, &qword_242C1F348);
    sub_242C0C24C();
    sub_242C1A6D0();
    v34 = v21;
    v33 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE790, &qword_242C1F350);
    sub_242C0C32C();
    sub_242C1A6D0();
    v34 = v20;
    v33 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7A8, &qword_242C1F358);
    sub_242C0C40C();
    sub_242C1A6D0();
    v34 = v14;
    v33 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7C0, &qword_242C1F360);
    sub_242C0C4EC();
    sub_242C1A6D0();
    return (*(v4 + 8))(v6, v15);
  }
}

unint64_t sub_242C0B728()
{
  result = qword_27ECDE640;
  if (!qword_27ECDE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE640);
  }

  return result;
}

unint64_t sub_242C0B77C()
{
  result = qword_27ECDE650;
  if (!qword_27ECDE650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE648, &qword_242C1F2D8);
    sub_242C0B808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE650);
  }

  return result;
}

unint64_t sub_242C0B808()
{
  result = qword_27ECDE658;
  if (!qword_27ECDE658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE660, &qword_242C1F2E0);
    sub_242C0B88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE658);
  }

  return result;
}

unint64_t sub_242C0B88C()
{
  result = qword_27ECDE668;
  if (!qword_27ECDE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE668);
  }

  return result;
}

unint64_t sub_242C0B8E0()
{
  result = qword_27ECDE678;
  if (!qword_27ECDE678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE670, &qword_242C1F2E8);
    sub_242C0B96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE678);
  }

  return result;
}

unint64_t sub_242C0B96C()
{
  result = qword_27ECDE680;
  if (!qword_27ECDE680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE688, &qword_242C1F2F0);
    sub_242C0B9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE680);
  }

  return result;
}

unint64_t sub_242C0B9F0()
{
  result = qword_27ECDE690;
  if (!qword_27ECDE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE690);
  }

  return result;
}

unint64_t sub_242C0BA44()
{
  result = qword_27ECDE6A0;
  if (!qword_27ECDE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE698, &qword_242C1F2F8);
    sub_242C0BAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6A0);
  }

  return result;
}

unint64_t sub_242C0BAD0()
{
  result = qword_27ECDE6A8;
  if (!qword_27ECDE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6A8);
  }

  return result;
}

unint64_t sub_242C0BB24()
{
  result = qword_27ECDE6B8;
  if (!qword_27ECDE6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6B0, &qword_242C1F300);
    sub_242C0BBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6B8);
  }

  return result;
}

unint64_t sub_242C0BBB0()
{
  result = qword_27ECDE6C0;
  if (!qword_27ECDE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6C0);
  }

  return result;
}

unint64_t sub_242C0BC04()
{
  result = qword_27ECDE6D0;
  if (!qword_27ECDE6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6C8, &qword_242C1F308);
    sub_242C0BC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6D0);
  }

  return result;
}

unint64_t sub_242C0BC90()
{
  result = qword_27ECDE6D8;
  if (!qword_27ECDE6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6E0, &qword_242C1F310);
    sub_242C0BD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6D8);
  }

  return result;
}

unint64_t sub_242C0BD14()
{
  result = qword_27ECDE6E8;
  if (!qword_27ECDE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6E8);
  }

  return result;
}

unint64_t sub_242C0BD68()
{
  result = qword_27ECDE6F8;
  if (!qword_27ECDE6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6F0, &qword_242C1F318);
    sub_242C0BDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE6F8);
  }

  return result;
}

unint64_t sub_242C0BDF4()
{
  result = qword_27ECDE700;
  if (!qword_27ECDE700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE708, &qword_242C1F320);
    sub_242C0BE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE700);
  }

  return result;
}

unint64_t sub_242C0BE78()
{
  result = qword_27ECDE710;
  if (!qword_27ECDE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE710);
  }

  return result;
}

unint64_t sub_242C0BECC()
{
  result = qword_27ECDE720;
  if (!qword_27ECDE720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE718, &qword_242C1F328);
    sub_242C0BF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE720);
  }

  return result;
}

unint64_t sub_242C0BF58()
{
  result = qword_27ECDE728;
  if (!qword_27ECDE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE728);
  }

  return result;
}

unint64_t sub_242C0BFAC()
{
  result = qword_27ECDE738;
  if (!qword_27ECDE738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE730, &qword_242C1F330);
    sub_242C0C038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE738);
  }

  return result;
}

unint64_t sub_242C0C038()
{
  result = qword_27ECDE740;
  if (!qword_27ECDE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE740);
  }

  return result;
}

unint64_t sub_242C0C08C()
{
  result = qword_27ECDE750;
  if (!qword_27ECDE750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE748, &qword_242C1F338);
    sub_242C0C118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE750);
  }

  return result;
}

unint64_t sub_242C0C118()
{
  result = qword_27ECDE758;
  if (!qword_27ECDE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE758);
  }

  return result;
}

unint64_t sub_242C0C16C()
{
  result = qword_27ECDE768;
  if (!qword_27ECDE768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE760, &qword_242C1F340);
    sub_242C0C1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE768);
  }

  return result;
}

unint64_t sub_242C0C1F8()
{
  result = qword_27ECDE770;
  if (!qword_27ECDE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE770);
  }

  return result;
}

unint64_t sub_242C0C24C()
{
  result = qword_27ECDE780;
  if (!qword_27ECDE780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE778, &qword_242C1F348);
    sub_242C0C2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE780);
  }

  return result;
}

unint64_t sub_242C0C2D8()
{
  result = qword_27ECDE788;
  if (!qword_27ECDE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE788);
  }

  return result;
}

unint64_t sub_242C0C32C()
{
  result = qword_27ECDE798;
  if (!qword_27ECDE798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE790, &qword_242C1F350);
    sub_242C0C3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE798);
  }

  return result;
}

unint64_t sub_242C0C3B8()
{
  result = qword_27ECDE7A0;
  if (!qword_27ECDE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7A0);
  }

  return result;
}

unint64_t sub_242C0C40C()
{
  result = qword_27ECDE7B0;
  if (!qword_27ECDE7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE7A8, &qword_242C1F358);
    sub_242C0C498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7B0);
  }

  return result;
}

unint64_t sub_242C0C498()
{
  result = qword_27ECDE7B8;
  if (!qword_27ECDE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7B8);
  }

  return result;
}

unint64_t sub_242C0C4EC()
{
  result = qword_27ECDE7C8;
  if (!qword_27ECDE7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE7C0, &qword_242C1F360);
    sub_242C0C578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7C8);
  }

  return result;
}

unint64_t sub_242C0C578()
{
  result = qword_27ECDE7D0;
  if (!qword_27ECDE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7D0);
  }

  return result;
}

uint64_t CAUManifest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7D8, &qword_242C1F368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C0B728();
  sub_242C1A880();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE648, &qword_242C1F2D8);
  LOBYTE(v35) = 0;
  sub_242C0D1FC();
  sub_242C1A6B0();
  v34 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE670, &qword_242C1F2E8);
  LOBYTE(v35) = 1;
  sub_242C0D360();
  sub_242C1A6B0();
  v32 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE698, &qword_242C1F2F8);
  LOBYTE(v35) = 2;
  sub_242C0D4C4();
  sub_242C1A6B0();
  v31 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6B0, &qword_242C1F300);
  LOBYTE(v35) = 3;
  sub_242C0D5A4();
  sub_242C1A6B0();
  v30 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6C8, &qword_242C1F308);
  LOBYTE(v35) = 4;
  sub_242C0D684();
  sub_242C1A6B0();
  v29 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE6F0, &qword_242C1F318);
  LOBYTE(v35) = 5;
  sub_242C0D7E8();
  sub_242C1A6B0();
  v28 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE718, &qword_242C1F328);
  LOBYTE(v35) = 6;
  sub_242C0D94C();
  sub_242C1A6B0();
  v27 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE730, &qword_242C1F330);
  LOBYTE(v35) = 7;
  sub_242C0DA2C();
  sub_242C1A6B0();
  v26 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE748, &qword_242C1F338);
  LOBYTE(v35) = 8;
  sub_242C0DB0C();
  sub_242C1A6B0();
  v25 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE760, &qword_242C1F340);
  LOBYTE(v35) = 9;
  sub_242C0DBEC();
  sub_242C1A6B0();
  v33 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE778, &qword_242C1F348);
  LOBYTE(v35) = 10;
  sub_242C0DCCC();
  sub_242C1A670();
  v24 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE790, &qword_242C1F350);
  LOBYTE(v35) = 11;
  sub_242C0DDAC();
  sub_242C1A670();
  v23 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7A8, &qword_242C1F358);
  LOBYTE(v35) = 12;
  sub_242C0DE8C();
  sub_242C1A670();
  v9 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE7C0, &qword_242C1F360);
  v43 = 13;
  sub_242C0DF6C();
  sub_242C1A670();
  (*(v6 + 8))(v8, v5);
  v22 = v44;
  v10 = v34;
  *&v35 = v34;
  *(&v35 + 1) = v32;
  v11 = v31;
  *&v36 = v31;
  v12 = v30;
  *(&v36 + 1) = v30;
  v13 = v29;
  *&v37 = v29;
  v14 = v28;
  *(&v37 + 1) = v28;
  *&v38 = v27;
  *(&v38 + 1) = v26;
  *&v39 = v25;
  *(&v39 + 1) = v33;
  *&v40 = v24;
  *(&v40 + 1) = v23;
  *&v41 = v9;
  *(&v41 + 1) = v44;
  v15 = v36;
  *a2 = v35;
  a2[1] = v15;
  v16 = v37;
  v17 = v38;
  v18 = v41;
  a2[5] = v40;
  a2[6] = v18;
  v19 = v39;
  a2[3] = v17;
  a2[4] = v19;
  a2[2] = v16;
  sub_242C0E04C(&v35, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42[0] = v10;
  v42[1] = v32;
  v42[2] = v11;
  v42[3] = v12;
  v42[4] = v13;
  v42[5] = v14;
  v42[6] = v27;
  v42[7] = v26;
  v42[8] = v25;
  v42[9] = v33;
  v42[10] = v24;
  v42[11] = v23;
  v42[12] = v9;
  v42[13] = v22;
  return sub_242C0E084(v42);
}

unint64_t sub_242C0D1FC()
{
  result = qword_27ECDE7E0;
  if (!qword_27ECDE7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE648, &qword_242C1F2D8);
    sub_242C0D288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7E0);
  }

  return result;
}

unint64_t sub_242C0D288()
{
  result = qword_27ECDE7E8;
  if (!qword_27ECDE7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE660, &qword_242C1F2E0);
    sub_242C0D30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7E8);
  }

  return result;
}

unint64_t sub_242C0D30C()
{
  result = qword_27ECDE7F0;
  if (!qword_27ECDE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7F0);
  }

  return result;
}

unint64_t sub_242C0D360()
{
  result = qword_27ECDE7F8;
  if (!qword_27ECDE7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE670, &qword_242C1F2E8);
    sub_242C0D3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE7F8);
  }

  return result;
}

unint64_t sub_242C0D3EC()
{
  result = qword_27ECDE800;
  if (!qword_27ECDE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE688, &qword_242C1F2F0);
    sub_242C0D470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE800);
  }

  return result;
}

unint64_t sub_242C0D470()
{
  result = qword_27ECDE808;
  if (!qword_27ECDE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE808);
  }

  return result;
}

unint64_t sub_242C0D4C4()
{
  result = qword_27ECDE810;
  if (!qword_27ECDE810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE698, &qword_242C1F2F8);
    sub_242C0D550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE810);
  }

  return result;
}

unint64_t sub_242C0D550()
{
  result = qword_27ECDE818;
  if (!qword_27ECDE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE818);
  }

  return result;
}

unint64_t sub_242C0D5A4()
{
  result = qword_27ECDE820;
  if (!qword_27ECDE820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6B0, &qword_242C1F300);
    sub_242C0D630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE820);
  }

  return result;
}

unint64_t sub_242C0D630()
{
  result = qword_27ECDE828;
  if (!qword_27ECDE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE828);
  }

  return result;
}

unint64_t sub_242C0D684()
{
  result = qword_27ECDE830;
  if (!qword_27ECDE830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6C8, &qword_242C1F308);
    sub_242C0D710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE830);
  }

  return result;
}

unint64_t sub_242C0D710()
{
  result = qword_27ECDE838;
  if (!qword_27ECDE838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6E0, &qword_242C1F310);
    sub_242C0D794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE838);
  }

  return result;
}

unint64_t sub_242C0D794()
{
  result = qword_27ECDE840;
  if (!qword_27ECDE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE840);
  }

  return result;
}

unint64_t sub_242C0D7E8()
{
  result = qword_27ECDE848;
  if (!qword_27ECDE848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE6F0, &qword_242C1F318);
    sub_242C0D874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE848);
  }

  return result;
}

unint64_t sub_242C0D874()
{
  result = qword_27ECDE850;
  if (!qword_27ECDE850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE708, &qword_242C1F320);
    sub_242C0D8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE850);
  }

  return result;
}

unint64_t sub_242C0D8F8()
{
  result = qword_27ECDE858;
  if (!qword_27ECDE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE858);
  }

  return result;
}

unint64_t sub_242C0D94C()
{
  result = qword_27ECDE860;
  if (!qword_27ECDE860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE718, &qword_242C1F328);
    sub_242C0D9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE860);
  }

  return result;
}

unint64_t sub_242C0D9D8()
{
  result = qword_27ECDE868;
  if (!qword_27ECDE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE868);
  }

  return result;
}

unint64_t sub_242C0DA2C()
{
  result = qword_27ECDE870;
  if (!qword_27ECDE870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE730, &qword_242C1F330);
    sub_242C0DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE870);
  }

  return result;
}

unint64_t sub_242C0DAB8()
{
  result = qword_27ECDE878;
  if (!qword_27ECDE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE878);
  }

  return result;
}

unint64_t sub_242C0DB0C()
{
  result = qword_27ECDE880;
  if (!qword_27ECDE880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE748, &qword_242C1F338);
    sub_242C0DB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE880);
  }

  return result;
}

unint64_t sub_242C0DB98()
{
  result = qword_27ECDE888;
  if (!qword_27ECDE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE888);
  }

  return result;
}

unint64_t sub_242C0DBEC()
{
  result = qword_27ECDE890;
  if (!qword_27ECDE890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE760, &qword_242C1F340);
    sub_242C0DC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE890);
  }

  return result;
}

unint64_t sub_242C0DC78()
{
  result = qword_27ECDE898;
  if (!qword_27ECDE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE898);
  }

  return result;
}

unint64_t sub_242C0DCCC()
{
  result = qword_27ECDE8A0;
  if (!qword_27ECDE8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE778, &qword_242C1F348);
    sub_242C0DD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8A0);
  }

  return result;
}

unint64_t sub_242C0DD58()
{
  result = qword_27ECDE8A8;
  if (!qword_27ECDE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8A8);
  }

  return result;
}

unint64_t sub_242C0DDAC()
{
  result = qword_27ECDE8B0;
  if (!qword_27ECDE8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE790, &qword_242C1F350);
    sub_242C0DE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8B0);
  }

  return result;
}

unint64_t sub_242C0DE38()
{
  result = qword_27ECDE8B8;
  if (!qword_27ECDE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8B8);
  }

  return result;
}

unint64_t sub_242C0DE8C()
{
  result = qword_27ECDE8C0;
  if (!qword_27ECDE8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE7A8, &qword_242C1F358);
    sub_242C0DF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8C0);
  }

  return result;
}

unint64_t sub_242C0DF18()
{
  result = qword_27ECDE8C8;
  if (!qword_27ECDE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8C8);
  }

  return result;
}

unint64_t sub_242C0DF6C()
{
  result = qword_27ECDE8D0;
  if (!qword_27ECDE8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE7C0, &qword_242C1F360);
    sub_242C0DFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8D0);
  }

  return result;
}

unint64_t sub_242C0DFF8()
{
  result = qword_27ECDE8D8;
  if (!qword_27ECDE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8D8);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_242C0E108(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_242C0E150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUManifest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUManifest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242C0E310()
{
  result = qword_27ECDE8E0;
  if (!qword_27ECDE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8E0);
  }

  return result;
}

unint64_t sub_242C0E368()
{
  result = qword_27ECDE8E8;
  if (!qword_27ECDE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8E8);
  }

  return result;
}

unint64_t sub_242C0E3C0()
{
  result = qword_27ECDE8F0;
  if (!qword_27ECDE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE8F0);
  }

  return result;
}

char *sub_242C0E414(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_242C0E434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242C0E434(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE8F8, &qword_242C1F570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_242C0E554(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69626163 && a2 == 0xE500000000000000;
  if (v4 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E776F44706F74 && a2 == 0xEF726F697265746ELL || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000242C21480 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456E776F44706F74 && a2 == 0xEF726F6972657478 || (sub_242C1A740() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374616573 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73657275736F6C63 && a2 == 0xE800000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6172426F69647561 && a2 == 0xEE006F676F4C646ELL || (sub_242C1A740() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C656C6369686576 && a2 == 0xEB000000006F676FLL || (sub_242C1A740() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4C656C6369686576 && a2 == 0xEE007374756F7961 || (sub_242C1A740() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242C214A0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242C214C0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242C214E0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242C21500 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242C21520 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_242C1A740();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t CAUAssetLibrary.customImageArchiveImagesFilePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveImagesFilePath;
  v4 = sub_242C1A380();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_242C0EAB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_242C0EB1C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_242C0EB74(int a1, uint64_t a2, void *a3)
{
  v128 = a1;
  v6 = sub_242C1A300();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_242C1A380();
  v145 = *(v134 - 8);
  v10 = MEMORY[0x28223BE20](v134);
  v127 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v126 = v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v129 = v119 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v119 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v119 - v19;
  v132 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest;
  v133 = v3;
  *&v3[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest] = 0;
  v131 = a3;
  v21 = [a3 url];
  sub_242C1A340();

  if ((sub_242C1A350() & 1) == 0)
  {

    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v25 = sub_242C1A3D0();
    __swift_project_value_buffer(v25, qword_2815054C8);
    v26 = sub_242C1A3B0();
    v27 = sub_242C1A530();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_242BF1000, v26, v27, "Access to security scoped resource. failed.", v28, 2u);
      MEMORY[0x245D23AC0](v28, -1, -1);
    }

    sub_242C09D14();
    swift_allocError();
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *v29 = 0;
    *(v29 + 24) = 5;
    swift_willThrow();

    (*(v145 + 8))(v20, v134);
    goto LABEL_25;
  }

  v125 = a2;
  strcpy(v144, "manifest.json");
  HIWORD(v144[0]) = -4864;
  (*(v7 + 104))(v9, *MEMORY[0x277CC91D0], v6);
  sub_242C116FC();
  sub_242C1A370();
  (*(v7 + 8))(v9, v6);
  v22 = v130;
  v23 = sub_242C1A320();
  v24 = v22;
  if (v22)
  {

LABEL_20:
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v58 = sub_242C1A3D0();
    __swift_project_value_buffer(v58, qword_2815054C8);
    v59 = v24;
    v60 = sub_242C1A3B0();
    v61 = sub_242C1A530();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = v24;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&dword_242BF1000, v60, v61, "Failed to loading asset library - %@", v62, 0xCu);
      sub_242C11128(v63);
      MEMORY[0x245D23AC0](v63, -1, -1);
      MEMORY[0x245D23AC0](v62, -1, -1);
    }

    sub_242C1A330();
    sub_242C09D14();
    swift_allocError();
    *(v66 + 8) = 0;
    *(v66 + 16) = 0;
    *v66 = 1;
    *(v66 + 24) = 5;
    swift_willThrow();

    v67 = *(v145 + 8);
    v68 = v18;
    v69 = v134;
    v67(v68, v134);
    v67(v20, v69);
LABEL_25:
    v70 = v133;

    type metadata accessor for CAUAssetLibrary(0);
    swift_deallocPartialClassInstance();
    return v70;
  }

  if ((v23 & 1) == 0)
  {

    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v53 = sub_242C1A3D0();
    __swift_project_value_buffer(v53, qword_2815054C8);
    v54 = sub_242C1A3B0();
    v55 = sub_242C1A530();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_242BF1000, v54, v55, "Manifest URL is not reachable.", v56, 2u);
      MEMORY[0x245D23AC0](v56, -1, -1);
    }

    sub_242C1A330();
    sub_242C09D14();
    v24 = swift_allocError();
    *(v57 + 8) = 0;
    *(v57 + 16) = 0;
    *v57 = 1;
    *(v57 + 24) = 5;
    swift_willThrow();
    goto LABEL_20;
  }

  if (qword_2815054C0 != -1)
  {
    swift_once();
  }

  v30 = sub_242C1A3D0();
  v31 = __swift_project_value_buffer(v30, qword_2815054C8);
  v32 = v131;
  v33 = sub_242C1A3B0();
  v34 = sub_242C1A530();

  v35 = os_log_type_enabled(v33, v34);
  v131 = v32;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v123 = v36;
    v124 = swift_slowAlloc();
    *&v144[0] = v124;
    *v36 = 136315138;
    v37 = [v32 url];
    LODWORD(v122) = v34;
    v38 = v37;
    v130 = v20;
    v39 = v129;
    sub_242C1A340();

    sub_242C117F8();
    v40 = v31;
    v41 = v18;
    v42 = v134;
    v43 = sub_242C1A730();
    v45 = v44;
    v46 = v39;
    v20 = v130;
    v47 = v42;
    v18 = v41;
    v31 = v40;
    (*(v145 + 8))(v46, v47);
    v48 = sub_242C10B80(v43, v45, v144);

    v49 = v123;
    *(v123 + 1) = v48;
    v50 = v49;
    _os_log_impl(&dword_242BF1000, v33, v122, "Loading asset library from: %s", v49, 0xCu);
    v51 = v124;
    __swift_destroy_boxed_opaque_existential_1(v124);
    MEMORY[0x245D23AC0](v51, -1, -1);
    MEMORY[0x245D23AC0](v50, -1, -1);
  }

  v52 = sub_242C1A2A0();
  swift_allocObject();
  sub_242C1A290();
  v72 = sub_242C1A390();
  v74 = v73;
  v124 = v52;
  sub_242C11750();
  sub_242C1A280();
  v123 = v18;
  sub_242C083E4(v72, v74);

  v75 = v133;
  v76 = &v133[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_manifest];
  v77 = v144[5];
  *(v76 + 4) = v144[4];
  *(v76 + 5) = v77;
  *(v76 + 6) = v144[6];
  v78 = v144[1];
  *v76 = v144[0];
  *(v76 + 1) = v78;
  v79 = v144[3];
  *(v76 + 2) = v144[2];
  *(v76 + 3) = v79;
  v121 = v76;
  v80 = v131;
  *&v75[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_securityScopedBasePathURL] = v131;
  v81 = *(v145 + 16);
  v122 = v145 + 16;
  v120 = v81;
  v81(&v75[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_basePathURL], v20, v134);
  v131 = v80;
  v119[1] = v31;
  v82 = sub_242C1A3B0();
  v83 = sub_242C1A530();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_242BF1000, v82, v83, "manifest loaded", v84, 2u);
    MEMORY[0x245D23AC0](v84, -1, -1);
  }

  v130 = v20;

  v85 = [v131 url];
  v86 = v126;
  sub_242C1A340();

  v87 = v129;
  sub_242C1A310();
  v88 = v145;
  v90 = v145 + 8;
  v89 = *(v145 + 8);
  v91 = v134;
  v89(v86, v134);
  v92 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveImagesFilePath;
  v93 = *(v88 + 32);
  v94 = v133;
  v145 = v88 + 32;
  v126 = v93;
  (v93)(&v133[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveImagesFilePath], v87, v91);
  v120(v87, &v94[v92], v91);
  v95 = v127;
  sub_242C1A310();
  v122 = v90;
  v120 = v89;
  v89(v87, v91);
  v96 = [objc_opt_self() defaultManager];
  sub_242C1A360();
  v97 = sub_242C1A490();

  LODWORD(v92) = [v96 fileExistsAtPath_];

  if (v92)
  {
    swift_allocObject();
    sub_242C1A290();
    v98 = sub_242C1A390();
    v100 = v99;
    sub_242C117A4();
    sub_242C1A280();
    sub_242C083E4(v98, v100);

    v118 = v137;
  }

  else
  {
    v118 = 0;
  }

  v102 = v132;
  v101 = v133;
  swift_beginAccess();
  *&v101[v102] = v118;

  v103 = *(v121 + 5);
  v141 = *(v121 + 4);
  v142 = v103;
  v143 = *(v121 + 6);
  v104 = *(v121 + 1);
  v137 = *v121;
  v138 = v104;
  v105 = *(v121 + 3);
  v139 = *(v121 + 2);
  v140 = v105;
  sub_242C0E04C(&v137, &v136);
  v106 = v131;
  v107 = [v131 url];
  v108 = v129;
  sub_242C1A340();

  v109 = v95;
  v110 = v134;
  v111 = v120;
  (v120)(v109, v134);
  (v111)(v123, v110);
  (v111)(v130, v110);
  type metadata accessor for CAUAssetsResolver(0);
  v112 = swift_allocObject();
  v113 = (v112 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
  v114 = v142;
  v113[4] = v141;
  v113[5] = v114;
  v113[6] = v143;
  v115 = v138;
  *v113 = v137;
  v113[1] = v115;
  v116 = v140;
  v113[2] = v139;
  v113[3] = v116;
  (v126)(v112 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_basePathURL, v108, v110);
  *(v112 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_variants) = v125;
  *(v112 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_rhd) = v128 & 1;
  *&v101[OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_assetResolver] = v112;
  v117 = type metadata accessor for CAUAssetLibrary(0);
  v135.receiver = v101;
  v135.super_class = v117;
  v70 = objc_msgSendSuper2(&v135, sel_init);

  return v70;
}

id CAUAssetLibrary.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_242C1A380();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_basePathURL, v2);
  sub_242C1A330();
  (*(v3 + 8))(v5, v2);
  v6 = type metadata accessor for CAUAssetLibrary(0);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t type metadata accessor for CAUAssetLibrary(uint64_t a1)
{
  result = qword_27ECDE920;
  if (!qword_27ECDE920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C0FFE0(unsigned __int16 *a1)
{
  v3 = sub_242C1A380();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v11 = v7;
  result = sub_242C182B8(&v11, v6);
  if (!v1)
  {
    v10 = v7;
    sub_242C1869C(&v10);
    sub_242C1A310();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_242C1010C(__int16 a1)
{
  v3 = sub_242C1A380();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  LOWORD(v16) = a1;
  result = sub_242C182B8(&v16, v7);
  if (!v1)
  {
    LOWORD(v16) = a1;
    sub_242C1869C(&v16);
    sub_242C1A310();

    v15 = *(v4 + 8);
    v15(v7, v3);
    sub_242C1A2A0();
    swift_allocObject();
    sub_242C1A290();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE958, &qword_242C1F5E8);
    v11 = sub_242C1A390();
    v13 = v12;
    sub_242C11868();
    sub_242C1A280();
    sub_242C083E4(v11, v13);

    v15(v9, v3);
    return v16;
  }

  return result;
}

uint64_t sub_242C10580@<X0>(unsigned __int16 *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v7 = sub_242C1A380();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  v14 = *a1;
  LOWORD(v25) = v14;
  result = sub_242C182B8(&v25, v11);
  if (!v4)
  {
    v21 = a4;
    v22 = v13;
    v23 = v7;
    LOWORD(v25) = v14;
    sub_242C1869C(&v25);
    v20[1] = v14;
    v16 = v22;
    sub_242C1A310();

    v17 = *(v8 + 8);
    v18 = v11;
    v19 = v23;
    v17(v18, v23);
    sub_242C1A2A0();
    swift_allocObject();
    sub_242C1A290();
    sub_242C1A204();
    v24 = 0;
    v17(v16, v19);
  }

  return result;
}

unint64_t sub_242C109C4@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = sub_242C1010C(32779);
  if (!v6)
  {
    goto LABEL_8;
  }

  if (!*(v6 + 16) || (v7 = v6, v8 = sub_242BF9E18(v4), (v9 & 1) == 0) || (v10 = *(*(v7 + 56) + 8 * v8), , , !*(v10 + 16)) || (v11 = sub_242BF9F00(v5), (v12 & 1) == 0))
  {

LABEL_8:
    result = sub_242C1137C(MEMORY[0x277D84F90]);
    *a3 = 1;
    *(a3 + 12) = 0;
    *(a3 + 4) = 0;
    *(a3 + 20) = 1;
    goto LABEL_9;
  }

  v13 = *(v10 + 56) + 32 * v11;
  v14 = *v13;
  v15 = *(v13 + 4);
  v16 = *(v13 + 12);
  v17 = *(v13 + 20);
  v18 = *(v13 + 24);

  result = v18;
  *a3 = v14;
  *(a3 + 4) = v15;
  *(a3 + 12) = v16;
  *(a3 + 20) = v17;
LABEL_9:
  *(a3 + 24) = result;
  return result;
}

id CAUAssetLibrary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_242C10B80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242C10C4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242C11B00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_242C10C4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_242C10D58(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_242C1A5F0();
    a6 = v11;
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

void *sub_242C10D58(uint64_t a1, unint64_t a2)
{
  v3 = sub_242C10DA4(a1, a2);
  sub_242C10ED4(&unk_28556FEA0);
  return v3;
}

void *sub_242C10DA4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_242C10FC0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_242C1A5F0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_242C1A4D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242C10FC0(v10, 0);
        result = sub_242C1A5B0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_242C10ED4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_242C11034(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_242C10FC0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE9A0, &qword_242C1F5F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242C11034(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE9A0, &qword_242C1F5F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_242C11128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE0D8, &qword_242C1C888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242C11190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF30, &qword_242C1C200);
    v3 = sub_242C1A640();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_242BFA00C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242C11284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF28, &qword_242C1C1F8);
    v3 = sub_242C1A640();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_242BFA038(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242C1137C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE950, &qword_242C1F5E0);
    v3 = sub_242C1A640();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_242C11850(v6, v7, *i);
      result = sub_242BF9FA0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_242C11498(uint64_t a1)
{
  result = sub_242C1A380();
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

unint64_t sub_242C116FC()
{
  result = qword_27ECDE930;
  if (!qword_27ECDE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE930);
  }

  return result;
}

unint64_t sub_242C11750()
{
  result = qword_27ECDE938;
  if (!qword_27ECDE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE938);
  }

  return result;
}

unint64_t sub_242C117A4()
{
  result = qword_27ECDE940;
  if (!qword_27ECDE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE940);
  }

  return result;
}

unint64_t sub_242C117F8()
{
  result = qword_27ECDE948;
  if (!qword_27ECDE948)
  {
    sub_242C1A380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE948);
  }

  return result;
}

uint64_t sub_242C11850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_242C11868()
{
  result = qword_27ECDE960;
  if (!qword_27ECDE960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE958, &qword_242C1F5E8);
    sub_242C118EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE960);
  }

  return result;
}

unint64_t sub_242C118EC()
{
  result = qword_27ECDE968;
  if (!qword_27ECDE968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE970, &qword_242C1F5F0);
    sub_242C11978();
    sub_242C119CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE968);
  }

  return result;
}

unint64_t sub_242C11978()
{
  result = qword_27ECDE978;
  if (!qword_27ECDE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE978);
  }

  return result;
}

unint64_t sub_242C119CC()
{
  result = qword_27ECDE980;
  if (!qword_27ECDE980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE988, &qword_242C1F630);
    sub_242C11A58();
    sub_242C11AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE980);
  }

  return result;
}

unint64_t sub_242C11A58()
{
  result = qword_27ECDE990;
  if (!qword_27ECDE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE990);
  }

  return result;
}

unint64_t sub_242C11AAC()
{
  result = qword_27ECDE998;
  if (!qword_27ECDE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE998);
  }

  return result;
}

uint64_t sub_242C11B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_242C11B5C(uint64_t a1, unsigned __int8 a2)
{
  sub_242C1A4B0();
}

void __swiftcall CAUAppUIConfiguration.Configuration.init(layoutStyle:padding:elementData:)(CarAssetUtils::CAUAppUIConfiguration::Configuration *__return_ptr retstr, CarAssetUtils::CAUAppUIConfiguration::LayoutStyle layoutStyle, CarAssetUtils::CAUWidgetContentMargins_optional *padding, Swift::OpaquePointer elementData)
{
  is_nil = padding->is_nil;
  retstr->layoutStyle = *layoutStyle;
  *(&retstr->padding.value + 3) = padding->value;
  *(&retstr->padding + 19) = is_nil;
  retstr->elementData = elementData;
}

CarAssetUtils::CAUAppUIConfiguration::LayoutStyle_optional __swiftcall CAUAppUIConfiguration.LayoutStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUAppUIConfiguration.LayoutStyle.rawValue.getter()
{
  v1 = 0x7469617274726F70;
  if (*v0 != 1)
  {
    v1 = 0x70616373646E616CLL;
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

uint64_t sub_242C11D7C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7469617274726F70;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0x70616373646E616CLL;
  if (v3 == 1)
  {
    v5 = 0x7469617274726F70;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x8000000242C20D30;
  }

  v8 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v2 = 0x70616373646E616CLL;
    v8 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x8000000242C20D30;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242C1A740();
  }

  return v11 & 1;
}

uint64_t sub_242C11E80()
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C11F2C(uint64_t a1)
{
  sub_242C1A4B0();
}

uint64_t sub_242C11FC4(uint64_t a1)
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C12078(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v4 = 0x70616373646E616CLL;
    v3 = 0xE900000000000065;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x8000000242C20D30;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_242C12190(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C16844();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C121E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C16844();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

CarAssetUtils::CAUAppUIConfiguration::App_optional __swiftcall CAUAppUIConfiguration.App.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUAppUIConfiguration.App.rawValue.getter()
{
  v1 = 0x656772616863;
  v2 = 0x7365725065726974;
  if (*v0 != 2)
  {
    v2 = 1885958772;
  }

  if (*v0)
  {
    v1 = 0x73657275736F6C63;
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

uint64_t sub_242C12340()
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C12400(uint64_t a1)
{
  sub_242C1A4B0();
}

uint64_t sub_242C124AC(uint64_t a1)
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C12574(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656772616863;
  v4 = 0xEC00000065727573;
  v5 = 0x7365725065726974;
  if (*v1 != 2)
  {
    v5 = 1885958772;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x73657275736F6C63;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_242C126A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C167F0();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C126F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C167F0();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t CAUAppUIConfiguration.Mode.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265766F706F70;
  }

  else
  {
    return 6382436;
  }
}

uint64_t sub_242C127B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265766F706F70;
  }

  else
  {
    v3 = 6382436;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265766F706F70;
  }

  else
  {
    v5 = 6382436;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242C1A740();
  }

  return v8 & 1;
}

uint64_t sub_242C12850()
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C128CC(uint64_t a1)
{
  sub_242C1A4B0();
}

uint64_t sub_242C12934(uint64_t a1)
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C129B8(uint64_t *a1@<X8>)
{
  v2 = 6382436;
  if (*v1)
  {
    v2 = 0x7265766F706F70;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242C12AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C1679C();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C12AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C1679C();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_242C12B7C@<X0>(char *a4@<X8>)
{
  v5 = sub_242C1A650();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t CAUAppUIConfiguration.FontStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x65746F6E746F6F66;
  }

  else
  {
    return 2036625250;
  }
}

uint64_t sub_242C12C10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65746F6E746F6F66;
  }

  else
  {
    v3 = 2036625250;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x65746F6E746F6F66;
  }

  else
  {
    v5 = 2036625250;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242C1A740();
  }

  return v8 & 1;
}

uint64_t sub_242C12CB0()
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C12D2C(uint64_t a1)
{
  sub_242C1A4B0();
}

uint64_t sub_242C12D94(uint64_t a1)
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C12E18@<X0>(char *a3@<X8>)
{
  v4 = sub_242C1A650();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_242C12E74(uint64_t *a1@<X8>)
{
  v2 = 2036625250;
  if (*v1)
  {
    v2 = 0x65746F6E746F6F66;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242C12F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C16748();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C12FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C16748();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

CarAssetUtils::CAUAppUIConfiguration::FontWeight_optional __swiftcall CAUAppUIConfiguration.FontWeight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUAppUIConfiguration.FontWeight.rawValue.getter()
{
  v1 = 1684828002;
  if (*v0 != 1)
  {
    v1 = 0x646C6F62696D6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_242C130DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684828002;
  if (v2 != 1)
  {
    v4 = 0x646C6F62696D6573;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684828002;
  if (*a2 != 1)
  {
    v8 = 0x646C6F62696D6573;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72616C75676572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242C1A740();
  }

  return v11 & 1;
}

uint64_t sub_242C131D0()
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C1326C(uint64_t a1)
{
  sub_242C1A4B0();
}

uint64_t sub_242C132F4(uint64_t a1)
{
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C13398(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684828002;
  if (v2 != 1)
  {
    v5 = 0x646C6F62696D6573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242C134A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C166F4();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C134F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C166F4();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

CarAssetUtils::CAUAppUIConfiguration::Element_optional __swiftcall CAUAppUIConfiguration.Element.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CAUAppUIConfiguration.Element.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000014;
    if (v1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (v1 == 7)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (v1 == 5)
    {
      v7 = 0xD00000000000001CLL;
    }

    else
    {
      v7 = 0xD00000000000001ELL;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v3 = 0xD000000000000025;
    if (v1 != 3)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    if (*v0)
    {
      v4 = 0xD000000000000024;
    }

    else
    {
      v4 = 0xD00000000000001ELL;
    }

    if (*v0 <= 1u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_242C136EC()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C11B5C(v3, v1);
  return sub_242C1A850();
}

uint64_t sub_242C1373C(uint64_t a1)
{
  v2 = *v1;
  sub_242C1A820();
  sub_242C11B5C(v4, v2);
  return sub_242C1A850();
}

unint64_t sub_242C1378C@<X0>(unint64_t *a1@<X8>)
{
  result = CAUAppUIConfiguration.Element.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242C13864(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C166A0();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C138B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C166A0();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t CAUAppUIConfiguration.ElementData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1A870();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_242C13CB8();
    sub_242C1A780();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C13CB8()
{
  result = qword_27ECDE9A8;
  if (!qword_27ECDE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9A8);
  }

  return result;
}

unint64_t sub_242C13D0C()
{
  result = qword_27ECDE9B0;
  if (!qword_27ECDE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9B0);
  }

  return result;
}

unint64_t sub_242C13D60()
{
  result = qword_27ECDE9B8;
  if (!qword_27ECDE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9B8);
  }

  return result;
}

uint64_t CAUAppUIConfiguration.ElementData.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1A890();
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
      type metadata accessor for CGSize();
      sub_242C14040(&qword_27ECDE9D8, MEMORY[0x277CBF288]);
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
      if (v2 == 4)
      {
        sub_242C13FEC();
      }

      else
      {
        sub_242C13F98();
      }
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_242C14084();
LABEL_12:
    sub_242C1A7B0();
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  if (v2 == 1)
  {
    sub_242C1A790();
  }

  else
  {
    sub_242C1A7A0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

unint64_t sub_242C13F98()
{
  result = qword_27ECDE9C8;
  if (!qword_27ECDE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9C8);
  }

  return result;
}

unint64_t sub_242C13FEC()
{
  result = qword_27ECDE9D0;
  if (!qword_27ECDE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9D0);
  }

  return result;
}

uint64_t sub_242C14040(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C14084()
{
  result = qword_27ECDE9E0;
  if (!qword_27ECDE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9E0);
  }

  return result;
}

uint64_t CAUAppUIConfiguration.ElementData.cgFloatValue.getter()
{
  if (v0[16])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t CAUAppUIConfiguration.ElementData.stringValue.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t CAUAppUIConfiguration.ElementData.BOOLValue.getter()
{
  if (v0[16] == 2)
  {
    return *v0 & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t CAUAppUIConfiguration.ElementData.cgSize.getter()
{
  v1 = v0[16];
  if (v1 == 3)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

void CAUAppUIConfiguration.ElementData.fontStyle.getter(_BYTE *a1@<X8>)
{
  if (v1[16] == 4)
  {
    *a1 = *v1 & 1;
  }

  else
  {
    *a1 = 2;
  }
}

void CAUAppUIConfiguration.ElementData.fontWeight.getter(_BYTE *a1@<X8>)
{
  if (v1[16] == 5)
  {
    *a1 = *v1;
  }

  else
  {
    *a1 = 3;
  }
}

__n128 CAUAppUIConfiguration.Configuration.padding.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 20);
  result = *(v1 + 4);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_242C14220(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 48) + v11);
    v13 = *(*(v2 + 56) + 8 * v11);
    v14 = v13 == 0;

    if (!v13)
    {
      return v14;
    }

    sub_242BF9E18(v12);
    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_242C14378(v16, v13);

    if ((v17 & 1) == 0)
    {
      return v14;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C14378(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v33 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = *(*(result + 48) + v12);
    v14 = (*(result + 56) + 32 * v12);
    v15 = *v14;
    v37 = *(v14 + 4);
    v16 = *(v14 + 12);
    v17 = v14[20];
    v18 = *(v14 + 3);
    v19 = v18 == 0;

    if (!v18)
    {
      return v19;
    }

    v20 = sub_242BF9F00(v13);
    if ((v21 & 1) == 0)
    {
      goto LABEL_44;
    }

    v22 = *(v2 + 56) + 32 * v20;
    v35 = v16;
    if (*v22)
    {
      if (*v22 == 1)
      {
        v23 = 0xE800000000000000;
        v24 = 0x7469617274726F70;
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v24 = 0x70616373646E616CLL;
        v23 = 0xE900000000000065;
        if (!v15)
        {
LABEL_25:
          v25 = 0xD000000000000012;
          v26 = 0x8000000242C20D30;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v24 = 0xD000000000000012;
      v23 = 0x8000000242C20D30;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    if (v15 == 1)
    {
      v25 = 0x7469617274726F70;
    }

    else
    {
      v25 = 0x70616373646E616CLL;
    }

    if (v15 == 1)
    {
      v26 = 0xE800000000000000;
    }

    else
    {
      v26 = 0xE900000000000065;
    }

LABEL_26:
    v27 = v2;
    v36 = *(v22 + 4);
    v34 = *(v22 + 12);
    v28 = *(v22 + 20);
    v39 = *(v22 + 24);
    if (v24 == v25 && v23 == v26)
    {
    }

    else
    {
      v29 = sub_242C1A740();

      if ((v29 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (v28)
    {
      v2 = v27;
      v19 = v18 == 0;
      if ((v17 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v19 = v18 == 0;
      if ((v17 & 1) != 0 || *&v36 != *&v37 || (*(&v31 + 1) = v35, *&v31 = v37, v30 = v31 >> 32, *(&v36 + 1) != *(&v37 + 1)) || *&v34 != *(&v30 + 1) || (v2 = v27, *(&v34 + 1) != *(&v35 + 1)))
      {
LABEL_43:

LABEL_44:

        return 0;
      }
    }

    v32 = sub_242C146C4(v39, v18);

    result = v33;
    v7 = v38;
    if ((v32 & 1) == 0)
    {
      return v19;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C146C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(v3 + 56) + 24 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    sub_242C11850(*v14, v16, *(v14 + 16));
    if (v17 == 255)
    {
      return 1;
    }

    v26 = v15;
    v27 = v16;
    v28 = v17;
    v18 = sub_242BF9FA0(v13);
    if ((v19 & 1) == 0)
    {
      sub_242C16898(v15, v16, v17);
      return 0;
    }

    v20 = *(a2 + 56) + 24 * v18;
    v21 = *(v20 + 8);
    v23 = *v20;
    v24 = v21;
    v25 = *(v20 + 16);
    sub_242C11850(v23, v21, v25);
    v22 = _s13CarAssetUtils21CAUAppUIConfigurationV11ElementDataO2eeoiySbAE_AEtFZ_0(&v23, &v26);
    sub_242C16898(v23, v24, v25);
    result = sub_242C16898(v26, v27, v28);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C1485C()
{
  v1 = 0x676E6964646170;
  if (*v0 != 1)
  {
    v1 = 0x44746E656D656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x745374756F79616CLL;
  }
}

uint64_t sub_242C148C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C16580(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C148F0(uint64_t a1)
{
  v2 = sub_242C15870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C1492C(uint64_t a1)
{
  v2 = sub_242C15870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUAppUIConfiguration.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE9E8, &qword_242C1F608);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v13 = *(v1 + 12);
  v14 = v9;
  v18 = v1[20];
  v12 = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C15870();
  sub_242C1A8A0();
  LOBYTE(v15) = v8;
  v19 = 0;
  sub_242C158C4();
  sub_242C1A710();
  if (!v2)
  {
    v10 = v12;
    v15 = v14;
    v16 = v13;
    v17 = v18;
    v19 = 1;
    sub_242BF7FF8();
    sub_242C1A6D0();
    v15 = v10;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA00, &qword_242C1F610);
    sub_242C15918();
    sub_242C1A710();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CAUAppUIConfiguration.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA20, &qword_242C1F618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C15870();
  sub_242C1A880();
  if (!v2)
  {
    v19 = 0;
    sub_242C15A4C();
    sub_242C1A6B0();
    v9 = v15;
    v19 = 1;
    sub_242BF883C();
    sub_242C1A670();
    v11 = v15;
    v14 = v16;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA00, &qword_242C1F610);
    v19 = 2;
    sub_242C15AA0();
    sub_242C1A6B0();
    (*(v6 + 8))(v8, v5);
    v13 = v14;
    v12 = v15;
    *a2 = v9;
    *(a2 + 4) = v11;
    *(a2 + 12) = v13;
    *(a2 + 20) = v18;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242C14E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xEE00736E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C1A740();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C14EBC(uint64_t a1)
{
  v2 = sub_242C15BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C14EF8(uint64_t a1)
{
  v2 = sub_242C15BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUAppUIConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA48, &unk_242C1F620);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C15BD4();

  sub_242C1A8A0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE970, &qword_242C1F5F0);
  sub_242C15C28();
  sub_242C1A710();

  return (*(v4 + 8))(v6, v3);
}

uint64_t CAUAppUIConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEA80, &qword_242C1F638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C15BD4();
  sub_242C1A880();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE970, &qword_242C1F5F0);
    sub_242C118EC();
    sub_242C1A6B0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s13CarAssetUtils21CAUAppUIConfigurationV11ElementDataO2eeoiySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_242C16898(*a1, v3, 3);
        sub_242C16898(v5, v6, 3);
        v8 = *&v3 == *&v6 && *&v2 == *&v5;
        return v8 & 1;
      }

      goto LABEL_55;
    }

    if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_55;
      }

      if (v2)
      {
        v9 = 0x65746F6E746F6F66;
      }

      else
      {
        v9 = 2036625250;
      }

      if (v2)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      if (v5)
      {
        v11 = 0x65746F6E746F6F66;
      }

      else
      {
        v11 = 2036625250;
      }

      if (v5)
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      if (v9 != v11 || v10 != v12)
      {
        v14 = sub_242C1A740();

        sub_242C16898(v2, v3, 4);
        v15 = v5;
        v16 = v6;
        v17 = 4;
LABEL_66:
        sub_242C16898(v15, v16, v17);
        return v14 & 1;
      }

      sub_242C16898(v2, v3, 4);
      v26 = v5;
      v27 = v6;
      v28 = 4;
LABEL_64:
      sub_242C16898(v26, v27, v28);
      v8 = 1;
      return v8 & 1;
    }

    if (v7 != 5)
    {
      goto LABEL_55;
    }

    v18 = *a1;
    if (*a1)
    {
      if (v18 == 1)
      {
        v19 = 1684828002;
      }

      else
      {
        v19 = 0x646C6F62696D6573;
      }

      if (v18 == 1)
      {
        v20 = 0xE400000000000000;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      v21 = *a2;
      if (*a2)
      {
LABEL_46:
        if (v21 == 1)
        {
          v22 = 1684828002;
        }

        else
        {
          v22 = 0x646C6F62696D6573;
        }

        if (v21 == 1)
        {
          v23 = 0xE400000000000000;
        }

        else
        {
          v23 = 0xE800000000000000;
        }

        if (v19 != v22)
        {
          goto LABEL_65;
        }

LABEL_62:
        if (v20 == v23)
        {

          sub_242C16898(v2, v3, 5);
          v26 = v5;
          v27 = v6;
          v28 = 5;
          goto LABEL_64;
        }

LABEL_65:
        v14 = sub_242C1A740();

        sub_242C16898(v2, v3, 5);
        v15 = v5;
        v16 = v6;
        v17 = 5;
        goto LABEL_66;
      }
    }

    else
    {
      v20 = 0xE700000000000000;
      v19 = 0x72616C75676572;
      v21 = *a2;
      if (*a2)
      {
        goto LABEL_46;
      }
    }

    v23 = 0xE700000000000000;
    if (v19 != 0x72616C75676572)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_242C16898(*a1, v3, 0);
      sub_242C16898(v5, v6, 0);
      if (*&v2 == *&v5)
      {
        v8 = 1;
        return v8 & 1;
      }

LABEL_56:
      v8 = 0;
      return v8 & 1;
    }

LABEL_55:
    sub_242C11850(v5, v6, v7);
    sub_242C16898(v2, v3, v4);
    sub_242C16898(v5, v6, v7);
    goto LABEL_56;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_242C16898(*a1, v3, 2);
      sub_242C16898(v5, v6, 2);
      v8 = v5 ^ v2 ^ 1;
      return v8 & 1;
    }

    goto LABEL_55;
  }

  if (v7 != 1)
  {

    goto LABEL_55;
  }

  if (v2 == v5 && v3 == v6)
  {
    v8 = 1;
    sub_242C11850(*a1, v3, 1);
    sub_242C11850(v2, v3, 1);
    sub_242C16898(v2, v3, 1);
    sub_242C16898(v2, v3, 1);
    return v8 & 1;
  }

  v25 = sub_242C1A740();
  sub_242C11850(v5, v6, 1);
  sub_242C11850(v2, v3, 1);
  sub_242C16898(v2, v3, 1);
  sub_242C16898(v5, v6, 1);
  return v25 & 1;
}

uint64_t _s13CarAssetUtils21CAUAppUIConfigurationV13ConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 0x7469617274726F70;
  v4 = *(a1 + 4);
  v5 = *(a1 + 12);
  v6 = a1[20];
  v7 = *(a1 + 3);
  v9 = *(a2 + 4);
  v8 = *(a2 + 8);
  v11 = *(a2 + 12);
  v10 = *(a2 + 16);
  v12 = *(a2 + 20);
  v13 = *(a2 + 24);
  v14 = 0xE800000000000000;
  v15 = 0x70616373646E616CLL;
  if (v2 == 1)
  {
    v15 = 0x7469617274726F70;
  }

  else
  {
    v14 = 0xE900000000000065;
  }

  if (*a1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0xD000000000000012;
  }

  if (v2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0x8000000242C20D30;
  }

  v18 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v3 = 0x70616373646E616CLL;
    v18 = 0xE900000000000065;
  }

  if (*a2)
  {
    v19 = v3;
  }

  else
  {
    v19 = 0xD000000000000012;
  }

  if (*a2)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0x8000000242C20D30;
  }

  if (v16 == v19 && v17 == v20)
  {
  }

  else
  {
    v21 = sub_242C1A740();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v12)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if ((v12 & 1) != 0 || v9 != *&v4 || v8 != *(&v4 + 1) || v11 != *&v5 || v10 != *(&v5 + 1))
  {
    return 0;
  }

LABEL_31:

  return sub_242C146C4(v7, v13);
}

unint64_t sub_242C15870()
{
  result = qword_27ECDE9F0;
  if (!qword_27ECDE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9F0);
  }

  return result;
}

unint64_t sub_242C158C4()
{
  result = qword_27ECDE9F8;
  if (!qword_27ECDE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE9F8);
  }

  return result;
}

unint64_t sub_242C15918()
{
  result = qword_27ECDEA08;
  if (!qword_27ECDEA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDEA00, &qword_242C1F610);
    sub_242C159A4();
    sub_242C159F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA08);
  }

  return result;
}

unint64_t sub_242C159A4()
{
  result = qword_27ECDEA10;
  if (!qword_27ECDEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA10);
  }

  return result;
}

unint64_t sub_242C159F8()
{
  result = qword_27ECDEA18;
  if (!qword_27ECDEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA18);
  }

  return result;
}

unint64_t sub_242C15A4C()
{
  result = qword_27ECDEA28;
  if (!qword_27ECDEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA28);
  }

  return result;
}

unint64_t sub_242C15AA0()
{
  result = qword_27ECDEA30;
  if (!qword_27ECDEA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDEA00, &qword_242C1F610);
    sub_242C15B2C();
    sub_242C15B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA30);
  }

  return result;
}

unint64_t sub_242C15B2C()
{
  result = qword_27ECDEA38;
  if (!qword_27ECDEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA38);
  }

  return result;
}

unint64_t sub_242C15B80()
{
  result = qword_27ECDEA40;
  if (!qword_27ECDEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA40);
  }

  return result;
}

unint64_t sub_242C15BD4()
{
  result = qword_27ECDEA50;
  if (!qword_27ECDEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA50);
  }

  return result;
}

unint64_t sub_242C15C28()
{
  result = qword_27ECDEA58;
  if (!qword_27ECDEA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE970, &qword_242C1F5F0);
    sub_242C15CB4();
    sub_242C15D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA58);
  }

  return result;
}

unint64_t sub_242C15CB4()
{
  result = qword_27ECDEA60;
  if (!qword_27ECDEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA60);
  }

  return result;
}

unint64_t sub_242C15D08()
{
  result = qword_27ECDEA68;
  if (!qword_27ECDEA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE988, &qword_242C1F630);
    sub_242C15D94();
    sub_242C15DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA68);
  }

  return result;
}

unint64_t sub_242C15D94()
{
  result = qword_27ECDEA70;
  if (!qword_27ECDEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA70);
  }

  return result;
}

unint64_t sub_242C15DE8()
{
  result = qword_27ECDEA78;
  if (!qword_27ECDEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA78);
  }

  return result;
}

unint64_t sub_242C15E40()
{
  result = qword_27ECDEA88;
  if (!qword_27ECDEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA88);
  }

  return result;
}

unint64_t sub_242C15E98()
{
  result = qword_27ECDEA90;
  if (!qword_27ECDEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA90);
  }

  return result;
}

unint64_t sub_242C15EF0()
{
  result = qword_27ECDEA98;
  if (!qword_27ECDEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEA98);
  }

  return result;
}

unint64_t sub_242C15F48()
{
  result = qword_27ECDEAA0;
  if (!qword_27ECDEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAA0);
  }

  return result;
}

unint64_t sub_242C15FA0()
{
  result = qword_27ECDEAA8;
  if (!qword_27ECDEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAA8);
  }

  return result;
}

unint64_t sub_242C15FF8()
{
  result = qword_27ECDEAB0;
  if (!qword_27ECDEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUAppUIConfiguration.Element(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUAppUIConfiguration.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_242C16208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242C16250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_242C162B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C16300(uint64_t result, int a2, int a3)
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

unint64_t sub_242C16374()
{
  result = qword_27ECDEAB8;
  if (!qword_27ECDEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAB8);
  }

  return result;
}

unint64_t sub_242C163CC()
{
  result = qword_27ECDEAC0;
  if (!qword_27ECDEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAC0);
  }

  return result;
}

unint64_t sub_242C16424()
{
  result = qword_27ECDEAC8;
  if (!qword_27ECDEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAC8);
  }

  return result;
}

unint64_t sub_242C1647C()
{
  result = qword_27ECDEAD0;
  if (!qword_27ECDEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAD0);
  }

  return result;
}

unint64_t sub_242C164D4()
{
  result = qword_27ECDEAD8;
  if (!qword_27ECDEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAD8);
  }

  return result;
}

unint64_t sub_242C1652C()
{
  result = qword_27ECDEAE0;
  if (!qword_27ECDEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAE0);
  }

  return result;
}

uint64_t sub_242C16580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374756F79616CLL && a2 == 0xEB00000000656C79;
  if (v4 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44746E656D656C65 && a2 == 0xEB00000000617461)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C1A740();

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

unint64_t sub_242C166A0()
{
  result = qword_27ECDEAE8;
  if (!qword_27ECDEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAE8);
  }

  return result;
}

unint64_t sub_242C166F4()
{
  result = qword_27ECDEAF0;
  if (!qword_27ECDEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAF0);
  }

  return result;
}

unint64_t sub_242C16748()
{
  result = qword_27ECDEAF8;
  if (!qword_27ECDEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEAF8);
  }

  return result;
}

unint64_t sub_242C1679C()
{
  result = qword_27ECDEB00;
  if (!qword_27ECDEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB00);
  }

  return result;
}

unint64_t sub_242C167F0()
{
  result = qword_27ECDEB08;
  if (!qword_27ECDEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB08);
  }

  return result;
}

unint64_t sub_242C16844()
{
  result = qword_27ECDEB10;
  if (!qword_27ECDEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB10);
  }

  return result;
}

uint64_t sub_242C16898(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t CAUFeatureConfiguration.Climate.init(groupedVentsLayout:oemPunchThroughs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t CAUFeatureConfiguration.Climate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB18, &qword_242C20270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C16AE4();
  sub_242C1A880();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_242C1A660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB28, &qword_242C20278);
    v13 = 1;
    sub_242C16EFC(&qword_27ECDEB30, sub_242C16B38, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_242C1A670();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9 & 1;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C16AE4()
{
  result = qword_27ECDEB20;
  if (!qword_27ECDEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB20);
  }

  return result;
}

unint64_t sub_242C16B38()
{
  result = qword_27ECDEB38;
  if (!qword_27ECDEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB38);
  }

  return result;
}

unint64_t sub_242C16B8C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_242C16BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000012 && 0x8000000242C21690 == a2;
  if (v5 || (sub_242C1A740() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C216B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C1A740();

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

uint64_t sub_242C16CAC(uint64_t a1)
{
  v2 = sub_242C16AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C16CE8(uint64_t a1)
{
  v2 = sub_242C16AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUFeatureConfiguration.Climate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB40, &qword_242C20280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C16AE4();
  sub_242C1A8A0();
  v11 = 0;
  sub_242C1A6F0();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB28, &qword_242C20278);
    sub_242C16EFC(&qword_27ECDEB48, sub_242C16F80, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_242C1A6D0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242C16EFC(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDEB28, &qword_242C20278);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C16F80()
{
  result = qword_27ECDEB50;
  if (!qword_27ECDEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB50);
  }

  return result;
}

Swift::String_optional __swiftcall CAUFeatureConfiguration.Climate.oemPunchThroughIdentifier(for:)(CarAssetUtils::CAUVehicleLayoutKey a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;

    v10 = 0;
    while (v6)
    {
LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v10 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v15 = v14[1];
      if (*(*(v2 + 56) + 3 * v13) == 35)
      {
        if (v3 == 35)
        {
          v22 = *v14;

LABEL_22:

          v8 = v22;
          goto LABEL_19;
        }
      }

      else if (v3 != 35)
      {
        v22 = *v14;
        v16 = CAUVehicleLayoutKey.rawValue.getter();
        v18 = v17;
        if (v16 == CAUVehicleLayoutKey.rawValue.getter() && v18 == v19)
        {

          goto LABEL_22;
        }

        v20 = sub_242C1A740();

        if (v20)
        {
          goto LABEL_22;
        }
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        goto LABEL_18;
      }

      v6 = *(v2 + 64 + 8 * v11);
      ++v10;
      if (v6)
      {
        v10 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    v8 = 0;
    v15 = 0;
LABEL_19:
    v9 = v15;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

CarAssetUtils::CAUOEMPunchThroughOptions __swiftcall CAUOEMPunchThroughOptions.init(vehicleLayoutKey:hasTransparentBackground:useRequestTemporaryContent:)(CarAssetUtils::CAUVehicleLayoutKey_optional vehicleLayoutKey, Swift::Bool hasTransparentBackground, Swift::Bool useRequestTemporaryContent)
{
  *v3 = *vehicleLayoutKey.value;
  v3[1] = hasTransparentBackground;
  v3[2] = useRequestTemporaryContent;
  result.vehicleLayoutKey = vehicleLayoutKey;
  return result;
}

uint64_t CAUOEMPunchThroughOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB58, &qword_242C20288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C173E4();
  sub_242C1A880();
  if (!v2)
  {
    v16 = 0;
    sub_242BF8974();
    sub_242C1A670();
    v9 = v17;
    v15 = 1;
    v11 = sub_242C1A660();
    v14 = 2;
    v12 = sub_242C1A660();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11 & 1;
    a2[2] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C173E4()
{
  result = qword_27ECDEB60;
  if (!qword_27ECDEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB60);
  }

  return result;
}

unint64_t sub_242C17438()
{
  v1 = 0xD000000000000018;
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
    return 0xD000000000000010;
  }
}

uint64_t sub_242C17490@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C17B4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C174B8(uint64_t a1)
{
  v2 = sub_242C173E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C174F4(uint64_t a1)
{
  v2 = sub_242C173E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUOEMPunchThroughOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEB68, &qword_242C20290);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[6] = v1[1];
  v10[3] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C173E4();
  sub_242C1A8A0();
  v14 = v8;
  v13 = 0;
  sub_242BF80A0();
  sub_242C1A6D0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_242C1A6F0();
  v11 = 2;
  sub_242C1A6F0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242C17730(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_242C1778C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

uint64_t getEnumTagSinglePayload for CAUOEMPunchThroughOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUOEMPunchThroughOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
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
      *(result + 1) = a2 + 1;
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

unint64_t sub_242C17940()
{
  result = qword_27ECDEB70;
  if (!qword_27ECDEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB70);
  }

  return result;
}

unint64_t sub_242C17998()
{
  result = qword_27ECDEB78;
  if (!qword_27ECDEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB78);
  }

  return result;
}

unint64_t sub_242C179F0()
{
  result = qword_27ECDEB80;
  if (!qword_27ECDEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB80);
  }

  return result;
}

unint64_t sub_242C17A48()
{
  result = qword_27ECDEB88;
  if (!qword_27ECDEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB88);
  }

  return result;
}

unint64_t sub_242C17AA0()
{
  result = qword_27ECDEB90;
  if (!qword_27ECDEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB90);
  }

  return result;
}

unint64_t sub_242C17AF8()
{
  result = qword_27ECDEB98;
  if (!qword_27ECDEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEB98);
  }

  return result;
}

uint64_t sub_242C17B4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000242C213E0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242C216D0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242C216F0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_242C1A740();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242C17C70(unsigned __int16 *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!(v6 >> 14))
  {
    v15 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v90 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v16 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v91 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v17 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v92 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v18 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v93 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v19 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v87 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v20 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v21 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v88 = v19;
    v89 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v83 = v17;
    v84 = v18;
    v85 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v79 = v20;
    v80 = v21;
    v81 = v15;
    v82 = v16;
    v78 = v6;
    v77 = BYTE1(v6) & 1;
    sub_242C0E04C(&v87, &v94);
    sub_242C0AA48(a2, a3, &v77, v86);
    goto LABEL_5;
  }

  if (v6 >> 14 == 1)
  {
    v7 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v90 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v8 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v91 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v9 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v92 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v10 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v93 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v11 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v87 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v12 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v13 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v88 = v11;
    v89 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v83 = v9;
    v84 = v10;
    v85 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v79 = v12;
    v80 = v13;
    v81 = v7;
    v82 = v8;
    v14 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_rhd);
    v78 = v6;
    v77 = BYTE1(v6) & 0x3F;
    sub_242C0E04C(&v87, &v94);
    sub_242C0A620(a2, a3, v14, &v77, v86);
    goto LABEL_5;
  }

  if (*a1 > 0x8005u)
  {
    if (*a1 > 0x8008u)
    {
      if (v6 == 32777)
      {
        v57 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v99 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v58 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v98 = v57;
        v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v59 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v94 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v95 = v59;
        v96 = v58;
        v34 = *(&v99 + 1);
        if (!*(&v99 + 1))
        {
          return 0;
        }
      }

      else if (v6 == 32778)
      {
        v43 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v44 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v98 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v99 = v43;
        v45 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v94 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v95 = v45;
        v96 = v44;
        v34 = v100;
        if (!v100)
        {
          return 0;
        }
      }

      else
      {
        v71 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v72 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v98 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v99 = v71;
        v73 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v94 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v95 = v73;
        v96 = v72;
        v34 = *(&v100 + 1);
        if (!*(&v100 + 1))
        {
          return 0;
        }
      }
    }

    else if (v6 == 32774)
    {
      v50 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v98 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v51 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v96 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v52 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v99 = v50;
      v97 = v51;
      v94 = v52;
      v34 = v98;
    }

    else if (v6 == 32775)
    {
      v31 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v98 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v32 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v96 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v33 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v99 = v31;
      v97 = v32;
      v94 = v33;
      v34 = *(&v98 + 1);
    }

    else
    {
      v64 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v99 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v65 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v98 = v64;
      v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v66 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v94 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v95 = v66;
      v96 = v65;
      v34 = v99;
      if (!v99)
      {
        return 0;
      }
    }
  }

  else if (*a1 > 0x8002u)
  {
    if (v6 == 32771)
    {
      v53 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v54 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v96 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v55 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v56 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v99 = v55;
      v98 = v56;
      v97 = v54;
      v94 = v53;
      v34 = v95;
    }

    else
    {
      if (v6 == 32772)
      {
        v35 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v90 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v36 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
        v91 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v37 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
        v92 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v38 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
        v93 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v39 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v87 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v40 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
        v41 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
        v88 = v39;
        v89 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
        v83 = v37;
        v84 = v38;
        v85 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
        v79 = v40;
        v80 = v41;
        v81 = v35;
        v82 = v36;
        v42 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_rhd);
        sub_242C0E04C(&v87, &v94);
        sub_242C0AD94(a2, a3, v42, v86);
LABEL_5:
        v97 = v82;
        v98 = v83;
        v99 = v84;
        v100 = v85;
        v94 = v79;
        v95 = v80;
        v96 = v81;
        sub_242C0E084(&v94);
        if (v86[2])
        {
          return v86[1];
        }

        else
        {
          return 0;
        }
      }

      v67 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v96 = v67;
      v68 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v69 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v70 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v99 = v69;
      v98 = v70;
      v94 = v68;
      v34 = *(&v97 + 1);
    }
  }

  else if (v6 == 0x8000)
  {
    v46 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v97 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v96 = v46;
    v47 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v48 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v49 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v99 = v48;
    v98 = v49;
    v94 = v47;
    v34 = v97;
  }

  else
  {
    if (v6 == 32769)
    {
      v23 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v90 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v24 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
      v91 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v25 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
      v92 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v26 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
      v93 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v27 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v87 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v28 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
      v29 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
      v88 = v27;
      v89 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
      v83 = v25;
      v84 = v26;
      v85 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
      v79 = v28;
      v80 = v29;
      v81 = v23;
      v82 = v24;
      v30 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_rhd);
      sub_242C0E04C(&v87, &v94);
      sub_242C0AC9C(a2, a3, v30, v86);
      goto LABEL_5;
    }

    v60 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest);
    v95 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 16);
    v61 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 48);
    v96 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 32);
    v62 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 80);
    v100 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 96);
    v63 = *(v3 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_manifest + 64);
    v99 = v62;
    v98 = v63;
    v97 = v61;
    v94 = v60;
    v34 = *(&v95 + 1);
  }

  if (!*(v34 + 16))
  {
    return 0;
  }

  sub_242C0E04C(&v94, &v87);
  v74 = sub_242BFA104(a2, a3);
  if (v75)
  {
    v76 = *(*(v34 + 56) + 16 * v74);
  }

  else
  {
    v76 = 0;
  }

  sub_242C0E084(&v94);
  return v76;
}

uint64_t sub_242C182B8@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_242C1A380();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = *a1;
  if (v14 == 32773)
  {
    sub_242C09D14();
    swift_allocError();
    v14 = 32773;
  }

  else
  {
    v31 = a2;
    v32 = v3;
    LOWORD(v38) = v14;
    v16 = sub_242C18A4C(&v38);
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      LOWORD(v38) = v14;
      sub_242C08BD4(&v40);
      v33 = CAUVehicleTrait.rawValue.getter();
      v34 = v20;
      v35 = v18;
      v36 = v19;
      (*(v8 + 16))(v13, v4 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_basePathURL, v7);

      sub_242C1A310();

      v21 = *(v8 + 8);
      v21(v13, v7);
      v22 = *(v8 + 32);
      v22(v13, v11, v7);

      sub_242C1A310();

      v21(v13, v7);
      v22(v13, v11, v7);
      swift_arrayDestroy();
      return (v22)(v31, v13, v7);
    }

    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v24 = sub_242C1A3D0();
    __swift_project_value_buffer(v24, qword_2815054C8);
    v25 = sub_242C1A3B0();
    v26 = sub_242C1A540();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315138;
      v38 = 0;
      v39 = 0xE000000000000000;
      v37 = v14;
      sub_242C1A600();
      v29 = sub_242C10B80(v38, v39, &v40);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_242BF1000, v25, v26, "Failed to resolve %s variant trait is missing.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x245D23AC0](v28, -1, -1);
      MEMORY[0x245D23AC0](v27, -1, -1);
    }

    sub_242C09D14();
    swift_allocError();
  }

  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *v15 = v14;
  *(v15 + 24) = 0;
  return swift_willThrow();
}

uint64_t sub_242C1869C(_WORD *a1)
{
  v1 = *a1;
  LOWORD(v22) = *a1;
  v2 = sub_242C18A4C(&v22);
  if (!v3)
  {
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v9 = sub_242C1A3D0();
    v8 = __swift_project_value_buffer(v9, qword_2815054C8);
    v10 = sub_242C1A3B0();
    v11 = sub_242C1A540();
    if (os_log_type_enabled(v10, v11))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v8 = 136315138;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_242C1A600();
      v13 = sub_242C10B80(v22, v23, &v24);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_242BF1000, v10, v11, "Failed to resolve %s variant trait is missing.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D23AC0](v12, -1, -1);
      MEMORY[0x245D23AC0](v8, -1, -1);
    }

    sub_242C09D14();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = v1;
    *(v14 + 24) = 0;
    goto LABEL_14;
  }

  v4 = v2;
  v5 = v3;
  LOWORD(v22) = v1;
  v6 = sub_242C17C70(&v22, v2, v3);
  if (!v7)
  {
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v15 = sub_242C1A3D0();
    __swift_project_value_buffer(v15, qword_2815054C8);

    v8 = sub_242C1A3B0();
    v16 = sub_242C1A540();

    if (os_log_type_enabled(v8, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315394;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_242C1A600();
      v19 = sub_242C10B80(v22, v23, &v24);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_242C10B80(v4, v5, &v24);
      _os_log_impl(&dword_242BF1000, v8, v16, "failed to resolve %s for variant=%s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D23AC0](v18, -1, -1);
      MEMORY[0x245D23AC0](v17, -1, -1);
    }

    sub_242C09D14();
    swift_allocError();
    *v20 = v1;
    *(v20 + 8) = v4;
    *(v20 + 16) = v5;
    *(v20 + 24) = 3;
LABEL_14:
    swift_willThrow();
    return v8;
  }

  v8 = v6;

  return v8;
}

uint64_t sub_242C18A4C(unsigned __int16 *a1)
{
  v2 = *a1;
  if ((v2 & 0xC000) != 0x8000)
  {
    goto LABEL_8;
  }

  if ((v2 - 32775) < 4)
  {
    return 1702060386;
  }

  if (v2 == 32779)
  {
    v4 = *(v1 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_variants);
    if (*(v4 + 16))
    {
      v5 = sub_242BFA038(1);
      if (v6)
      {
        v7 = *(v4 + 56);
LABEL_11:
        v10 = *(v7 + 16 * v5);

        return v10;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = *(v1 + OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_variants);
    v12 = *a1;
    sub_242C08BD4(&v11);
    if (*(v8 + 16))
    {
      v5 = sub_242BFA038(v11);
      if (v9)
      {
        v7 = *(v8 + 56);
        goto LABEL_11;
      }
    }
  }

  return 0;
}

uint64_t sub_242C18B2C()
{
  v1 = OBJC_IVAR____TtC13CarAssetUtils17CAUAssetsResolver_basePathURL;
  v2 = sub_242C1A380();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CAUAssetsResolver(uint64_t a1)
{
  result = qword_27ECDEBC0;
  if (!qword_27ECDEBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242C18CF4(uint64_t a1)
{
  result = sub_242C1A380();
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

uint64_t CAUFeatureConfiguration.climate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_242C18DD0()
{
  v1 = *(v0 + 24);
  if (v1)
  {

    return v1;
  }

  result = sub_242C18EE0(&unk_2855709C0, v0);
  v3 = result;
  v1 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_8:

    *(v0 + 24) = v1;
    return v1;
  }

  v5 = 0;
  while (v5 < *(v3 + 16))
  {
    v6 = v5 + 1;

    result = sub_242C199D4(v7);
    v5 = v6;
    if (v4 == v6)
    {
      v1 = v8;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall CAUFeatureConfiguration.oemPunchThroughsForApp(_:)(CarAssetUtils::CAUFeatureConfiguration::SupportedApp a1)
{
  if (*a1)
  {
    v1 = 0;
  }

  else
  {
  }

  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_242C18EE0(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    if (!*(v5 + v3++))
    {
      v9 = *(a2 + 8);
      if (v9)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_242C09AC8(0, v6[2] + 1, 1, v6);
          v6 = result;
        }

        v11 = v6[2];
        v10 = v6[3];
        if (v11 >= v10 >> 1)
        {
          result = sub_242C09AC8((v10 > 1), v11 + 1, 1, v6);
          v6 = result;
        }

        v6[2] = v11 + 1;
        v6[v11 + 4] = v9;
        v3 = v7;
      }
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void CAUFeatureConfiguration.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t CAUFeatureConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEBD0, &qword_242C20620);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1929C();
  sub_242C1A880();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_242C192F0();
  sub_242C1A670();
  v11 = v18;
  v10 = v19;
  v12 = v19 != 1;
  if (v19 == 1)
  {
    v10 = 0;
  }

  v17 = v10;
  v21 = 1;
  sub_242C19344();
  sub_242C1A670();
  v20 = v12;
  v16 = v11;
  v13 = v18;
  v21 = 2;
  sub_242C19398();
  sub_242C1A670();
  (*(v6 + 8))(v8, v5);
  v14 = v17;
  v15 = v18;
  *a2 = v20 & v16;
  *(a2 + 8) = v14;
  *(a2 + 16) = v13 & 1;
  *(a2 + 17) = v15 & 1;
  *(a2 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C1929C()
{
  result = qword_27ECDEBD8;
  if (!qword_27ECDEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEBD8);
  }

  return result;
}

unint64_t sub_242C192F0()
{
  result = qword_27ECDEBE0;
  if (!qword_27ECDEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEBE0);
  }

  return result;
}

unint64_t sub_242C19344()
{
  result = qword_27ECDEBE8;
  if (!qword_27ECDEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEBE8);
  }

  return result;
}

unint64_t sub_242C19398()
{
  result = qword_27ECDEBF0;
  if (!qword_27ECDEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEBF0);
  }

  return result;
}

uint64_t sub_242C193EC()
{
  v1 = 0x73676E6974746573;
  if (*v0 != 1)
  {
    v1 = 0x6F69646172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574616D696C63;
  }
}

uint64_t sub_242C19444@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C1A0E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C1946C(uint64_t a1)
{
  v2 = sub_242C1929C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C194A8(uint64_t a1)
{
  v2 = sub_242C1929C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUFeatureConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDEBF8, &qword_242C20628);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v16 = v1[16];
  HIDWORD(v12) = v1[17];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C1929C();

  sub_242C1A8A0();
  v14[0] = v7;
  v15 = v8;
  v17 = 0;
  sub_242C196E8();
  v9 = v13;
  sub_242C1A710();

  if (!v9)
  {
    v10 = BYTE4(v12);
    v14[0] = v16;
    v17 = 1;
    sub_242C1973C();
    sub_242C1A710();
    v14[0] = v10;
    v17 = 2;
    sub_242C19790();
    sub_242C1A710();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_242C196E8()
{
  result = qword_27ECDEC00;
  if (!qword_27ECDEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC00);
  }

  return result;
}

unint64_t sub_242C1973C()
{
  result = qword_27ECDEC08;
  if (!qword_27ECDEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC08);
  }

  return result;
}

unint64_t sub_242C19790()
{
  result = qword_27ECDEC10;
  if (!qword_27ECDEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC10);
  }

  return result;
}

uint64_t CAUFeatureConfiguration.SupportedApp.hashValue.getter()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

Swift::Bool __swiftcall CAUFeatureConfiguration.doesSupport(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_242C18DD0();
  v6[0] = countAndFlagsBits;
  v6[1] = object;
  v5[2] = v6;
  LOBYTE(object) = sub_242C19928(sub_242C19DE8, v5, v3);

  return object & 1;
}

uint64_t sub_242C19928(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_242C199D4(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_242C09850(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_242C19C90(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_242C09850((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_242C1A1FC(result);
  *v1 = v4;
  return result;
}

void *sub_242C19C90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_242C19DE8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_242C1A740() & 1;
  }
}

unint64_t sub_242C19E44()
{
  result = qword_27ECDEC18;
  if (!qword_27ECDEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC18);
  }

  return result;
}

unint64_t sub_242C19E9C()
{
  result = qword_27ECDEC20;
  if (!qword_27ECDEC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDEC28, &qword_242C206E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC20);
  }

  return result;
}

uint64_t sub_242C19F00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_242C19F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_242C19FE4()
{
  result = qword_27ECDEC30;
  if (!qword_27ECDEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC30);
  }

  return result;
}

unint64_t sub_242C1A03C()
{
  result = qword_27ECDEC38;
  if (!qword_27ECDEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC38);
  }

  return result;
}

unint64_t sub_242C1A094()
{
  result = qword_27ECDEC40;
  if (!qword_27ECDEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDEC40);
  }

  return result;
}

uint64_t sub_242C1A0E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616D696C63 && a2 == 0xE700000000000000;
  if (v4 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C1A740();

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

uint64_t sub_242C1A204()
{
  result = sub_242C1A390();
  if (!v5)
  {
    v8 = result;
    v9 = v7;
    sub_242C1A280();
    return sub_242C083E4(v8, v9);
  }

  return result;
}