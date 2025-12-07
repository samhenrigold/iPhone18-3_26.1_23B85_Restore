uint64_t static Corner.small.getter()
{
  if (qword_1006EEAD0 != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t sub_1003A5EAC()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_1006FE2B0 = -1;
  byte_1006FE2B8 = 0;
  return result;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (qword_1006EEAD8 != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (qword_1006EEAD8 != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t sub_1003A5FC8()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_1006FE2C8 = -1;
  byte_1006FE2D0 = 0;
  return result;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (qword_1006EEAE0 != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (qword_1006EEAE0 != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t sub_1003A60E4()
{
  if (qword_1006EEAC0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (byte_1006F03E8)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_1006FE2E0 = -1;
  byte_1006FE2E8 = 0;
  return result;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (qword_1006EEAE8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (qword_1006EEAE8 != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t sub_1003A6200()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1003A62DC;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1000376F0;
  v3[3] = &unk_1006A0170;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_100570448();
  static Border.artwork = result;
  qword_1006FE2F8 = 0x3FE0000000000000;
  byte_1006FE300 = 0;
  return result;
}

id sub_1003A62DC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_100596EA0[v1 == 1];
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (qword_1006EEAF0 != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (qword_1006EEAF0 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1006FE2F8;

  return v0;
}

double sub_1003A6440(uint64_t a1)
{
  sub_1005704A8();
  v1 = sub_1005704E8();

  static Shadow.shallow = v1;
  unk_1006FE310 = xmmword_100596EB0;
  result = 2.0;
  unk_1006FE320 = xmmword_100596EC0;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (qword_1006EEAF8 != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

uint64_t static Shadow.shallow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006EEAF8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_1006FE310;
  *(a1 + 24) = unk_1006FE320;
}

double sub_1003A6574(uint64_t a1)
{
  sub_1005704A8();
  v1 = sub_1005704E8();

  static Shadow.intermediate = v1;
  unk_1006FE338 = xmmword_100596ED0;
  result = 15.0;
  unk_1006FE348 = xmmword_100596EE0;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (qword_1006EEB00 != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

uint64_t static Shadow.intermediate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006EEB00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_1006FE338;
  *(a1 + 24) = unk_1006FE348;
}

double sub_1003A66AC(uint64_t a1)
{
  sub_1005704A8();
  v1 = sub_1005704E8();

  static Shadow.deep = v1;
  *algn_1006FE360 = xmmword_100596EF0;
  result = 25.0;
  *&algn_1006FE360[16] = xmmword_100596F00;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (qword_1006EEB08 != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

uint64_t static Shadow.deep.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006EEB08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = *algn_1006FE360;
  *(a1 + 24) = *&algn_1006FE360[16];
}

unint64_t sub_1003A6814()
{
  result = qword_1006F03F0;
  if (!qword_1006F03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03F0);
  }

  return result;
}

unint64_t sub_1003A686C()
{
  result = qword_1006F03F8;
  if (!qword_1006F03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F03F8);
  }

  return result;
}

unint64_t sub_1003A68C4()
{
  result = qword_1006F0400;
  if (!qword_1006F0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0400);
  }

  return result;
}

unint64_t sub_1003A691C()
{
  result = qword_1006F0408;
  if (!qword_1006F0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0408);
  }

  return result;
}

uint64_t sub_1003A6970(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_1003A69B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1003A69FC()
{
  result = qword_1006F0410;
  if (!qword_1006F0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0410);
  }

  return result;
}

unint64_t sub_1003A6A70()
{
  result = qword_1006F2F40;
  if (!qword_1006F2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2F40);
  }

  return result;
}

unint64_t sub_1003A6AE4()
{
  result = qword_1006F0418;
  if (!qword_1006F0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0418);
  }

  return result;
}

uint64_t sub_1003A6B58(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_10056ECA8();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1003A6BC8()
{
  result = qword_1006F0420;
  if (!qword_1006F0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0420);
  }

  return result;
}

__n128 sub_1003A6C1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003A6C30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003A6C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1003A6CE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1003A6D2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1003A6D8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003A6DA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1003A6DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003A6F04()
{
  result = qword_1006F04A0;
  if (!qword_1006F04A0)
  {
    sub_100010324(&qword_1006F0488, &qword_10059ABB8);
    sub_100010BC0(&qword_1006F04A8, &qword_1006F0498, &qword_10059ABC8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006F04B0, &qword_1006F0490, &qword_10059ABC0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F04A0);
  }

  return result;
}

unint64_t sub_1003A6FE8()
{
  result = qword_1006F04B8;
  if (!qword_1006F04B8)
  {
    sub_10056F5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F04B8);
  }

  return result;
}

uint64_t sub_1003A7040(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003A7058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
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

uint64_t sub_1003A70A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1003A70F8()
{
  result = qword_1006F04C0;
  if (!qword_1006F04C0)
  {
    sub_100010324(&qword_1006F0430, &qword_10059AB60);
    sub_1003A71B0();
    sub_100010BC0(&qword_1006F04E0, &qword_1006F04E8, &qword_10059AC00, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F04C0);
  }

  return result;
}

unint64_t sub_1003A71B0()
{
  result = qword_1006F04C8;
  if (!qword_1006F04C8)
  {
    sub_100010324(&qword_1006F04D0, &qword_10059ABF8);
    sub_100010BC0(&qword_1006F04D8, &qword_1006F0428, &qword_10059AB58, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F04C8);
  }

  return result;
}

unint64_t sub_1003A726C()
{
  result = qword_1006F04F0;
  if (!qword_1006F04F0)
  {
    sub_100010324(&qword_1006F0440, &qword_10059AB70);
    sub_100010BC0(&qword_1006F04F8, &qword_1006F0438, &qword_10059AB68, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006F0500, &qword_1006F0448, &qword_10059AB78, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F04F0);
  }

  return result;
}

unint64_t sub_1003A7354()
{
  result = qword_1006F0508;
  if (!qword_1006F0508)
  {
    sub_100010324(&qword_1006F0450, &qword_10059AB80);
    sub_100010BC0(&qword_1006F0510, &qword_1006F0468, &qword_10059AB98, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006F0518, &qword_1006F0460, &qword_10059AB90, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0508);
  }

  return result;
}

uint64_t sub_1003A7438()
{
  sub_100010324(&qword_1006F0488, &qword_10059ABB8);
  sub_10056F5D8();
  sub_1003A6F04();
  sub_1003A6FE8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1003A7504()
{
  result = qword_1006F0530;
  if (!qword_1006F0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0530);
  }

  return result;
}

unint64_t sub_1003A755C()
{
  result = qword_1006F0538;
  if (!qword_1006F0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0538);
  }

  return result;
}

unint64_t sub_1003A75B4()
{
  result = qword_1006F0540;
  if (!qword_1006F0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0540);
  }

  return result;
}

unint64_t sub_1003A760C()
{
  result = qword_1006F0548;
  if (!qword_1006F0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0548);
  }

  return result;
}

uint64_t sub_1003A7660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1003A76D4(uint64_t a1)
{
  v2 = sub_10056C8A8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009DCC(&qword_1006EF140, &qword_100598890);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100475388(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_100475388((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100363470(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_1003A7908(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100573FF8();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_10056CF88();
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1003A79B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100574178();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1004753A8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100573F58();
        _s3__C7CGColorCMa_0(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1004753A8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000F51DC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      _s3__C7CGColorCMa_0(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1004753A8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000F51DC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A7BB0(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1003AB684(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = sub_100572D48();
  v6 = a2[7];
  v6(a1, a2);
  v6(a1, a2);
  v7 = a2[8];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[9];
  v8(a1, a2);
  v8(a1, a2);
  sub_100572E38();
  return v5;
}

double sub_1003A7D5C()
{
  v4 = *v0 / (*v0 + 60.0);
  v3 = (1.0 - v4) * 0.5;
  sub_100009DCC(&qword_1006F03D8, &unk_10059B080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100581E80;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100596F10, v4), vdupq_lane_s64(*&v3, 0));
  result = 1.0 - v3;
  *(v1 + 64) = 1.0 - v3;
  *(v1 + 72) = 0x3FF0000000000000;
  return result;
}

double sub_1003A7E0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  sub_100009DCC(&qword_1006F03D8, &unk_10059B080);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100581E80;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100596F10, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

void *sub_1003A7F04(uint64_t a1, void *a2)
{
  v4 = sub_1003A7BB0(a1, a2);
  sub_1003A7E0C(a1, a2);
  v6 = sub_1003A7F78(v4, v5);

  return v6;
}

void *sub_1003A7F78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_100475408(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = sub_100570948();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        sub_100475408((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      --v5;
      v14[4] = result;
      v14[5] = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return _swiftEmptyArrayStorage;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = sub_100570948();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          sub_100475408((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = result;
        v22[5] = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1003A8184@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v29 = *(a1 + 32);
  sub_10056E728();
  sub_10056FCD8();
  sub_1003AC1DC(v24);
  v4 = sub_1005704D8();
  sub_10056E728();
  sub_10056FCD8();
  sub_1003AC1DC(v25);
  v5 = sub_1005704D8();
  sub_10056E728();
  sub_10056FCD8();
  sub_1003AC1DC(v26);
  v6 = sub_1005704D8();
  v30[0] = v21;
  v30[1] = v22;
  *&v31 = v23;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = 0x3FE0000000000000;
  v33 = 0;
  v10[0] = 0;
  v8 = v31;
  v9 = v32;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v20;
  *(&v35 + 1) = v5;
  LOWORD(v36) = 256;
  *(&v36 + 1) = 0x4000000000000000;
  v37 = 0;
  *&v10[8] = v18;
  v10[72] = 0;
  *&v10[56] = v36;
  *&v10[40] = v35;
  *&v10[24] = v19;
  v38 = v15;
  v39 = v16;
  *&v40 = v17;
  *(&v40 + 1) = v6;
  LOWORD(v41) = 256;
  *(a2 + 208) = 0;
  *(&v41 + 1) = 0x4018000000000000;
  v42 = 0;
  v13 = v40;
  v14 = v41;
  v11 = v38;
  v12 = v39;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v10[16];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 128) = *&v10[64];
  *(a2 + 144) = v11;
  *(a2 + 96) = *&v10[32];
  *(a2 + 112) = *&v10[48];
  *(a2 + 176) = v13;
  *(a2 + 192) = v14;
  *(a2 + 160) = v12;
  v43[0] = v15;
  v43[1] = v16;
  v44 = v17;
  v45 = v6;
  v46 = 256;
  v47 = 0x4018000000000000;
  v48 = 0;
  sub_10000CC8C(v30, v55, &qword_1006F0880, &qword_10059B3E8);
  sub_10000CC8C(v34, v55, &qword_1006F0880, &qword_10059B3E8);
  sub_10000CC8C(&v38, v55, &qword_1006F0880, &qword_10059B3E8);
  sub_10001036C(v43, &qword_1006F0880, &qword_10059B3E8);
  v49[0] = v18;
  v49[1] = v19;
  v50 = v20;
  v51 = v5;
  v52 = 256;
  v53 = 0x4000000000000000;
  v54 = 0;
  sub_10001036C(v49, &qword_1006F0880, &qword_10059B3E8);
  v55[0] = v21;
  v55[1] = v22;
  v56 = v23;
  v57 = v4;
  v58 = 256;
  v59 = 0x3FE0000000000000;
  v60 = 0;
  return sub_10001036C(v55, &qword_1006F0880, &qword_10059B3E8);
}

double sub_1003A8468@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v19[0] = *v2;
  v19[1] = v4;
  v20 = *(v2 + 32);
  v5 = sub_1005709E8();
  v7 = v6;
  sub_1003A8184(v19, &v37);
  v31 = v47;
  v32 = v48;
  v33 = v49;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  v21 = v37;
  v22 = v38;
  v35[10] = v47;
  v35[11] = v48;
  v35[12] = v49;
  v35[6] = v43;
  v35[7] = v44;
  v35[8] = v45;
  v35[9] = v46;
  v35[2] = v39;
  v35[3] = v40;
  v35[4] = v41;
  v35[5] = v42;
  v34 = v50;
  v36 = v50;
  v35[0] = v37;
  v35[1] = v38;
  sub_10000CC8C(&v21, v18, &qword_1006F0870, &qword_10059B3D8);
  sub_10001036C(v35, &qword_1006F0870, &qword_10059B3D8);
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v37 = v21;
  v38 = v22;
  v8 = *(sub_100009DCC(&qword_1006F0878, &qword_10059B3E0) + 36);
  v9 = enum case for BlendMode.plusLighter(_:);
  v10 = sub_100570A78();
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  *a2 = v5;
  *(a2 + 8) = v7;
  v11 = v48;
  *(a2 + 176) = v47;
  *(a2 + 192) = v11;
  *(a2 + 208) = v49;
  *(a2 + 224) = v50;
  v12 = v44;
  *(a2 + 112) = v43;
  *(a2 + 128) = v12;
  v13 = v46;
  *(a2 + 144) = v45;
  *(a2 + 160) = v13;
  v14 = v40;
  *(a2 + 48) = v39;
  *(a2 + 64) = v14;
  v15 = v42;
  *(a2 + 80) = v41;
  *(a2 + 96) = v15;
  result = *&v37;
  v17 = v38;
  *(a2 + 16) = v37;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_1003A866C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  v17 = a3;
  swift_getWitnessTable();
  sub_10056F6A8();
  sub_100010324(&qword_1006F0888, &qword_10059B3F0);
  v5 = sub_10056ECA8();
  v15 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v18 = *(a2 + 16);
  v19 = v3;
  sub_1005709E8();
  sub_100009DCC(&qword_1006F0890, &qword_10059B3F8);
  WitnessTable = swift_getWitnessTable();
  sub_1003ABF1C(&qword_1006F0898, &qword_1006F0890, &qword_10059B3F8, sub_1003AC23C);
  sub_100570268();
  v11 = sub_100010BC0(&qword_1006F08A8, &qword_1006F0888, &qword_10059B3F0, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  v20 = WitnessTable;
  v21 = v11;
  swift_getWitnessTable();
  sub_1003CE294();
  v12 = *(v15 + 8);
  v12(v7, v5);
  sub_1003CE294();
  return (v12)(v9, v5);
}

double sub_1003A8904@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1003A7F04(a1, a2);
  (*(a2 + 40))(&v11, a1, a2);
  (*(a2 + 48))(&v10, a1, a2);
  sub_100570958();
  sub_10056EA68();
  v6 = *(a2 + 32);
  v6(a1, a2);
  v6(a1, a2);
  sub_1005709E8();
  sub_10056E888();
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  *(a3 + 16) = v9;
  return result;
}

uint64_t sub_1003A8A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_10056F2E8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(sub_100009DCC(&qword_1006F05F0, &unk_10059AFB0) + 36));
  v13 = sub_10056EDD8();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = *(v9 + 104);
  v15(v12 + *(v13 + 20), enum case for RoundedCornerStyle.continuous(_:), v8);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(sub_100009DCC(&unk_1006F3BA0, &qword_10059F650) + 36)) = 256;
  v16 = sub_100009DCC(&qword_1006F05F8, &qword_10059AFC0);
  v17 = *(*(v16 - 8) + 16);
  v46 = a2;
  v17(a2, a1, v16);
  sub_1005709E8();
  sub_10056E888();
  v18 = (a2 + *(sub_100009DCC(&qword_1006F0600, &qword_10059AFC8) + 36));
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;
  v18[2] = v51;
  v20 = sub_1005709E8();
  v44 = v21;
  v45 = v20;
  v15(v11, v14, v8);
  sub_10056FD08();
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v25 = v55;
  LOBYTE(a2) = v56;
  v26 = sub_1005704D8();
  v43 = v26;
  v27 = sub_1005704B8();
  sub_1005704D8();
  v28 = sub_1005704E8();

  *&v57 = v23;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = a2;
  *(&v59 + 1) = v48[0];
  DWORD1(v59) = *(v48 + 3);
  *(&v59 + 1) = a3;
  v60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  v61 = _Q0;
  *&v62 = v26;
  *(&v62 + 1) = v27;
  v34 = v44;
  v35 = v45;
  *&v63 = v28;
  *(&v63 + 1) = v45;
  v64 = v44;
  v36 = sub_100009DCC(&qword_1006F0608, &qword_10059AFD0);
  v37 = v46 + *(v36 + 36);
  v38 = v62;
  *(v37 + 64) = v61;
  *(v37 + 80) = v38;
  *(v37 + 96) = v63;
  *(v37 + 112) = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = v60;
  *(v37 + 32) = v59;
  *(v37 + 48) = v40;
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v24;
  v65[3] = v25;
  v66 = a2;
  *&v67[3] = *(v48 + 3);
  *v67 = v48[0];
  v68 = a3;
  v69 = 0;
  v70 = 0;
  v71 = v42;
  v72 = v43;
  v73 = v27;
  v74 = v28;
  v75 = v35;
  v76 = v34;
  sub_10000CC8C(&v57, &v47, &qword_1006F0610, &qword_10059AFD8);
  return sub_10001036C(v65, &qword_1006F0610, &qword_10059AFD8);
}

__n128 sub_1003A8DE4@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 sub_1003A8DF0@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t sub_1003A8E20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1003AB6F8(v7, v8) & 1;
}

uint64_t sub_1003A8EAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_10056F2E8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006F0640, &qword_10059B008);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = __chkstk_darwin();
  v24 = &v24 - v9;
  v10 = *a1;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for RoundedCornerStyle.continuous(_:), v3, v8);
  sub_10056FD08();
  v36 = v39[0];
  v37 = v39[1];
  v38 = v40;
  (v12)(v6, v11, v3);
  sub_10056FD08();
  v13 = sub_1005704D8();
  v14 = sub_1005704B8();
  sub_1005704D8();
  v15 = sub_1005704E8();

  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v28 = v41;
  v29 = v42;
  LOBYTE(v30) = v43;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  sub_1003AB3D0(v44, v33);
  sub_10056FCC8();
  sub_1003A4080(&v41);
  *&v33[0] = 0;
  *(v33 + 8) = v28;
  *(&v33[1] + 8) = v29;
  BYTE8(v33[2]) = v30;
  *(&v33[2] + 9) = v52[0];
  HIDWORD(v33[2]) = *(v52 + 3);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v28 = *(a1 + 4);
  LOBYTE(v29) = *(a1 + 80);
  sub_100009DCC(&qword_1006F4470, &qword_10059B010);
  sub_1005707F8();
  v16 = swift_allocObject();
  v17 = *(a1 + 5);
  v16[5] = *(a1 + 4);
  v16[6] = v17;
  *(v16 + 105) = *(a1 + 89);
  v18 = *(a1 + 1);
  v16[1] = *a1;
  v16[2] = v18;
  v19 = *(a1 + 3);
  v16[3] = *(a1 + 2);
  v16[4] = v19;
  sub_1003AB4A4(a1, &v28);
  sub_100009DCC(&qword_1006F0648, &qword_10059B018);
  sub_100009DCC(&qword_1006F0650, &qword_10059B020);
  sub_1003AB4DC();
  sub_1003AB530();
  sub_100010BC0(&qword_1006F0688, &qword_1006F0650, &qword_10059B020, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v20 = v24;
  sub_100570148();

  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v28 = v33[0];
  v29 = v33[1];
  sub_1003AB614(&v28);
  sub_1003A4080(v39);
  v33[0] = *(a1 + 11);
  LOBYTE(v33[1]) = *(a1 + 104);
  sub_1005707F8();
  if (v36)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v27;
  (*(v25 + 32))(v27, v20, v26);
  result = sub_100009DCC(&qword_1006F0690, &qword_10059B038);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_1003A9364@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = sub_100009DCC(&qword_1006F0670, &qword_10059B028);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(sub_100009DCC(&qword_1006F0648, &qword_10059B018) + 36));
  v10 = a2[3];
  v9[2] = a2[2];
  v9[3] = v10;
  v9[4] = a2[4];
  v11 = a2[1];
  *v9 = *a2;
  v9[1] = v11;
  return sub_1003AB64C(v14, &v13);
}

uint64_t sub_1003A943C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_100009DCC(&qword_1006F0650, &qword_10059B020);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v15 - v7;
  v15[1] = swift_getKeyPath();
  v18 = a1;
  sub_100009DCC(&qword_1006F0698, &qword_10059B060);
  v8 = sub_100010324(&qword_1006F06A0, &qword_10059B068);
  v9 = sub_100010324(&qword_1006F06A8, &qword_10059B070);
  v10 = sub_100010BC0(&qword_1006F06B0, &qword_1006F06A0, &qword_10059B068, &protocol conformance descriptor for MoveKeyframe<A>);
  v11 = sub_100010BC0(&qword_1006F06B8, &qword_1006F06A8, &qword_10059B070, &protocol conformance descriptor for SpringKeyframe<A>);
  v19 = &type metadata for Double;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  swift_getOpaqueTypeConformance2();
  sub_10056E948();
  sub_100010BC0(&qword_1006F0688, &qword_1006F0650, &qword_10059B020, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v12 = v16;
  sub_10056ED38();
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_10056ED58();
  sub_10056ED48();
  v13(v6, v3);
  return (v13)(v12, v3);
}

uint64_t sub_1003A9718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_100570798();
  __chkstk_darwin();
  v3 = sub_100009DCC(&qword_1006F06A8, &qword_10059B070);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  __chkstk_darwin();
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v20 - v6;
  v7 = sub_100009DCC(&qword_1006F06A0, &qword_10059B068);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v20 - v11;
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  sub_100009DCC(&qword_1006F06C0, &qword_10059B078);
  sub_1005707F8();
  sub_10056E7D8();
  sub_100010BC0(&qword_1006F06B0, &qword_1006F06A0, &qword_10059B068, &protocol conformance descriptor for MoveKeyframe<A>);
  sub_10056F838();
  v12 = *(v8 + 8);
  v22 = v8 + 8;
  v23 = v12;
  v12(v10, v7);
  v29 = *(a1 + 40);
  v30 = *(a1 + 56);
  sub_1005707F8();
  sub_100570788();
  *&v29 = 0;
  BYTE8(v29) = 0;
  v13 = v24;
  sub_10056EB18();
  sub_100010BC0(&qword_1006F06B8, &qword_1006F06A8, &qword_10059B070, &protocol conformance descriptor for SpringKeyframe<A>);
  v15 = v25;
  v14 = v26;
  sub_10056F838();
  v16 = *(v27 + 8);
  v16(v13, v14);
  v17 = v21;
  sub_10056F858();
  sub_10056F848();
  v18 = v23;
  v23(v10, v7);
  v16(v15, v14);
  return v18(v17, v7);
}

double sub_1003A9B0C@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_10056FCE8();
  *&v6 = COERCE_DOUBLE(sub_10056FD18());
  v8 = v7;
  v10 = v9;
  sub_1003A4080(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double sub_1003A9BD8@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_10056FCE8();
  *&v6 = COERCE_DOUBLE(sub_10056FD18());
  v8 = v7;
  v10 = v9;
  sub_1003A4080(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

uint64_t sub_1003A9CBC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1003AB794(v8, v9) & 1;
}

uint64_t sub_1003A9D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v24[4] = v2[4];
  v25[0] = v5;
  *(v25 + 9) = *(v2 + 89);
  v6 = v2[1];
  v24[0] = *v2;
  v24[1] = v6;
  v7 = v2[3];
  v24[2] = v2[2];
  v24[3] = v7;
  v8 = *(&v24[0] + 1);
  v9 = (a2 + *(sub_100009DCC(&qword_1006F0618, &qword_10059AFE0) + 36));
  v10 = *(sub_10056EDD8() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_10056F2E8();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = *(&v24[0] + 1);
  *(v9 + 1) = v8;
  *&v9[*(sub_100009DCC(&unk_1006F3BA0, &qword_10059F650) + 36)] = 256;
  v13 = sub_100009DCC(&qword_1006F0620, &qword_10059AFE8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_1005709E8();
  sub_10056E888();
  v14 = (a2 + *(sub_100009DCC(&qword_1006F0628, &qword_10059AFF0) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  v15 = sub_1005709E8();
  v17 = v16;
  v18 = a2 + *(sub_100009DCC(&qword_1006F0630, &qword_10059AFF8) + 36);
  sub_1003A8EAC(v24, v18);
  result = sub_100009DCC(&qword_1006F0638, &qword_10059B000);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t View.animatedGlow(length:cornerRadius:initialRotation:rotation:animate:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  *&v17 = a9;
  *(&v17 + 1) = a10;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a11;
  *(&v19 + 1) = a3;
  *&v20 = a4;
  *(&v20 + 1) = a12;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  v22[0] = a7;
  *&v22[8] = a8;
  *&v22[16] = a13;
  v22[24] = a14;

  sub_100570328();
  v23[4] = v21;
  v24[0] = *v22;
  *(v24 + 9) = *&v22[9];
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v20;
  return sub_1003AA020(v23);
}

void sub_1003AA050(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  sub_1003AA2EC(0.5, 0.5);
  sub_1003AA2EC(1.0, 2.0);
  sub_1003AA2EC(4.0, 6.0);
  v11 = [objc_allocWithZone(CAGradientLayer) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v13 = *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = v11;
  v14 = v11;

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1003AA7C8(v32);
  sub_1003AABBC(v32);
  [v14 setStartPoint:{v33, v34}];

  v15 = *&v10[v12];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  sub_1003AA7C8(v35);
  sub_1003AABBC(v35);
  [v16 setEndPoint:{v36, v37}];

  v17 = *&v10[v12];
  if (v17)
  {
    v18 = v17;
    sub_1003AA7C8(v38);
    sub_100009DCC(&qword_1006F3B50, &qword_100599780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100582570;
    v20 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v20;
    v21 = v40;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v22 = v41;
    *(inited + 64) = v41;
    *(inited + 72) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    sub_1003AABBC(v38);
    sub_1003A79B0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = sub_100572D08().super.isa;

    [v18 setColors:isa];

    v30 = [v10 layer];
    [v30 setMask:*&v10[v12]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1003AA2EC(double a1, double a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = UIView.forAutolayout.getter();

  v7 = [v6 layer];
  [v7 setBorderWidth:a1];

  v8 = [v6 layer];
  v9 = [objc_opt_self() whiteColor];
  v10 = [v9 CGColor];

  [v8 setBorderColor:v10];
  v11 = [v6 layer];
  [v11 setCornerCurve:kCACornerCurveContinuous];

  v12 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_100573038().super.super.isa;
  [v12 setValue:isa forKey:kCAFilterInputRadius];

  v14 = [v6 layer];
  sub_100009DCC(&qword_1006F06D0, &unk_1005A1D30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057B510;
  *(v15 + 56) = sub_1000D3B98(0, &qword_1006F06D8, CAFilter_ptr);
  *(v15 + 32) = v12;
  v16 = v12;
  v17 = sub_100572D08().super.isa;

  [v14 setFilters:v17];

  v18 = [v6 layer];
  [v18 setCompositingFilter:kCAFilterPlusL];

  [v3 addSubview:v6];
  v19 = objc_opt_self();
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100582550;
  v21 = [v6 topAnchor];
  v22 = [v3 topAnchor];
  v23 = a1 * -0.5;
  v24 = [v21 constraintEqualToAnchor:v22 constant:a1 * -0.5];

  *(v20 + 32) = v24;
  v25 = [v6 bottomAnchor];
  v26 = [v3 bottomAnchor];
  v27 = a1 * 0.5;
  v28 = [v25 constraintEqualToAnchor:v26 constant:v27];

  *(v20 + 40) = v28;
  v29 = [v6 leadingAnchor];
  v30 = [v3 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v23];

  *(v20 + 48) = v31;
  v32 = [v6 trailingAnchor];
  v33 = [v3 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v27];

  *(v20 + 56) = v34;
  sub_1000D3B98(0, qword_1006F06E0, NSLayoutConstraint_ptr);
  v35 = sub_100572D08().super.isa;

  [v19 activateConstraints:v35];
}

__n128 sub_1003AA7C8@<Q0>(uint64_t a1@<X8>)
{
  [v1 bounds];
  Width = CGRectGetWidth(v17);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.4];

  v11 = [v10 CGColor];
  *a1 = Width;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v11;
  return result;
}

Swift::Void __swiftcall GlowView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1003AA7C8(v20);
  sub_1003AABBC(v20);
  sub_1003AA7C8(v21);
  sub_1003AABBC(v21);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v24 = CGRectInset(v23, -30.0, -30.0);
  [v3 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_1003AA7C8(v22);
  sub_1003A7D5C();
  v15 = v14;
  sub_1003AABBC(v22);
  v16 = *(v15 + 16);
  if (v16)
  {
    sub_100573FF8();
    sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
    v17 = 32;
    do
    {
      sub_100573A28(*(v15 + v17));
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
  isa = sub_100572D08().super.isa;

  [v13 setLocations:isa];
}

uint64_t GlowView.updateCorners(_:)(uint64_t a1)
{
  v2 = sub_100573948();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = sub_100573998();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CC8C(a1, v7, &qword_1006F5C30, &qword_100598A70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10001036C(v7, &qword_1006F5C30, &qword_100598A70);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_100573968();
  v13 = v27;
  [v27 bounds];
  sub_100573938();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v16 = [v13 subviews];
  sub_1000D3B98(0, &qword_1006F6130, UIView_ptr);
  v17 = sub_100572D28();

  v25 = v9;
  v26 = v8;
  v24 = v11;
  if (v17 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_100573F58();
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = [v20 layer];
      [v23 setCornerRadius:v15];

      ++v19;
      if (v22 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return (*(v25 + 8))(v24, v26);
}

id sub_1003AAFBC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return v2;
}

id sub_1003AAFC8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

id sub_1003AAFD4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t sub_1003AAFE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1003AB864(v7, v8) & 1;
}

unint64_t sub_1003AB080()
{
  result = qword_1006F0588;
  if (!qword_1006F0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0588);
  }

  return result;
}

uint64_t sub_1003AB0F4(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_10056ECA8();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1003AB164()
{
  result = qword_1006F0590;
  if (!qword_1006F0590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0590);
  }

  return result;
}

__n128 sub_1003AB1B8(uint64_t a1, uint64_t a2)
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

__n128 sub_1003AB1DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1003AB208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1003AB250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003AB2CC(uint64_t a1)
{
  result = sub_1003AB080();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003AB2F4(uint64_t a1)
{
  result = sub_1003AB164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003AB31C(uint64_t a1)
{
  result = sub_1003AB344();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003AB344()
{
  result = qword_1006F05E8;
  if (!qword_1006F05E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F05E8);
  }

  return result;
}

uint64_t sub_1003AB42C()
{

  return swift_deallocObject();
}

unint64_t sub_1003AB4DC()
{
  result = qword_1006F0658;
  if (!qword_1006F0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0658);
  }

  return result;
}

unint64_t sub_1003AB530()
{
  result = qword_1006F0660;
  if (!qword_1006F0660)
  {
    sub_100010324(&qword_1006F0648, &qword_10059B018);
    sub_100010BC0(&qword_1006F0668, &qword_1006F0670, &qword_10059B028, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_100010BC0(&qword_1006F0678, &qword_1006F0680, &qword_10059B030, &unk_10059B334);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0660);
  }

  return result;
}

uint64_t sub_1003AB684(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  }

  else
  {

    return sub_100574418();
  }
}

uint64_t sub_1003AB6F8(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_100570B18() & 1) == 0 || (sub_100570B18() & 1) == 0 || (sub_100570478() & 1) == 0 || (sub_100570478() & 1) == 0)
  {
    return 0;
  }

  return sub_100570478();
}

uint64_t sub_1003AB794(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_10056FD28() & 1) == 0 || a1[6] != a2[6] || (sub_100570478() & 1) == 0 || (sub_100570478() & 1) == 0)
  {
    return 0;
  }

  return sub_100570478();
}

uint64_t sub_1003AB864(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (_s3__C7CGColorCMa_0(0), sub_1003AB954(), (sub_10056CFD8() & 1) != 0) && (sub_10056CFD8() & 1) != 0)
  {
    return sub_10056CFD8() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1003AB954()
{
  result = qword_1006F06C8;
  if (!qword_1006F06C8)
  {
    _s3__C7CGColorCMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F06C8);
  }

  return result;
}

uint64_t sub_1003AB9B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003AB9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003ABA5C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003ABAE4(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 sub_1003ABB00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1003ABB1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003ABB64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003ABBC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003ABC10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1003ABC6C()
{
  result = qword_1006F0768;
  if (!qword_1006F0768)
  {
    sub_100010324(&qword_1006F0608, &qword_10059AFD0);
    sub_1003ABF1C(&qword_1006F0770, &qword_1006F0600, &qword_10059AFC8, sub_1003ABD50);
    sub_100010BC0(&qword_1006F0790, &qword_1006F0610, &qword_10059AFD8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0768);
  }

  return result;
}

unint64_t sub_1003ABD50()
{
  result = qword_1006F0778;
  if (!qword_1006F0778)
  {
    sub_100010324(&qword_1006F05F0, &unk_10059AFB0);
    sub_100010BC0(&qword_1006F0780, &qword_1006F05F8, &qword_10059AFC0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006F0788, &unk_1006F3BA0, &qword_10059F650, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0778);
  }

  return result;
}

unint64_t sub_1003ABE38()
{
  result = qword_1006F0798;
  if (!qword_1006F0798)
  {
    sub_100010324(&qword_1006F0630, &qword_10059AFF8);
    sub_1003ABF1C(&qword_1006F07A0, &qword_1006F0628, &qword_10059AFF0, sub_1003ABFA0);
    sub_100010BC0(&qword_1006F07B8, &qword_1006F0638, &qword_10059B000, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0798);
  }

  return result;
}

uint64_t sub_1003ABF1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003ABFA0()
{
  result = qword_1006F07A8;
  if (!qword_1006F07A8)
  {
    sub_100010324(&qword_1006F0618, &qword_10059AFE0);
    sub_100010BC0(&qword_1006F07B0, &qword_1006F0620, &qword_10059AFE8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006F0788, &unk_1006F3BA0, &qword_10059F650, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F07A8);
  }

  return result;
}

unint64_t sub_1003AC084(uint64_t a1)
{
  result = sub_1003AC0AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003AC0AC()
{
  result = qword_1006F0810;
  if (!qword_1006F0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0810);
  }

  return result;
}

unint64_t sub_1003AC100(uint64_t a1)
{
  result = sub_1003AC128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003AC128()
{
  result = qword_1006F0868;
  if (!qword_1006F0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0868);
  }

  return result;
}

unint64_t sub_1003AC23C()
{
  result = qword_1006F08A0;
  if (!qword_1006F08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F08A0);
  }

  return result;
}

unint64_t sub_1003AC294()
{
  result = qword_1006F08B0;
  if (!qword_1006F08B0)
  {
    sub_100010324(&qword_1006F0878, &qword_10059B3E0);
    sub_100010BC0(&qword_1006F08B8, &qword_1006F08C0, &unk_10059B400, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F08B0);
  }

  return result;
}

uint64_t sub_1003AC34C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GradientMaskModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_10056F6A8();
  sub_100010324(&qword_1006F0888, &qword_10059B3F0);
  sub_10056ECA8();
  swift_getWitnessTable();
  sub_100010BC0(&qword_1006F08A8, &qword_1006F0888, &qword_10059B3F0, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  return swift_getWitnessTable();
}

uint64_t HostedScenePhaseSupport.init(label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009DCC(&qword_1006F08C8, &qword_10059B410);
  sub_100570668();
  type metadata accessor for HostedScenePhaseModel(0);
  swift_allocObject();
  sub_1003ACBE0(a1, a2, a3);
  sub_100570668();
  return v7;
}

uint64_t property wrapper backing initializer of NoticePresentingResolverModifier.windowScene(uint64_t a1)
{
  sub_100009DCC(&qword_1006F08C8, &qword_10059B410);
  sub_100570668();
  return v2;
}

uint64_t type metadata accessor for HostedScenePhaseModel(uint64_t a1)
{
  result = qword_1006F0998;
  if (!qword_1006F0998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of HostedScenePhaseSupport.model(uint64_t a1)
{
  type metadata accessor for HostedScenePhaseModel(0);
  sub_100570668();
  return v2;
}

uint64_t HostedScenePhaseSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v11 = sub_100009DCC(&qword_1006F08D0, &qword_10059B418);
  v31 = v11;
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = sub_1005709E8();
  v16 = v15;
  v38 = a4;
  v39 = a5;
  v33 = sub_100009DCC(&qword_1006F08D8, &qword_10059B420);
  sub_100570698();
  v30 = v36;
  v17 = v37;
  v18 = sub_100009DCC(&qword_1006F08E0, &qword_10059B428);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  v19 = &v13[*(sub_100009DCC(&qword_1006F08E8, &qword_10059B430) + 36)];
  *v19 = v30;
  *(v19 + 2) = v17;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  KeyPath = swift_getKeyPath();
  *&v36 = a2;
  *(&v36 + 1) = a3;
  sub_100009DCC(&qword_1006F08F0, &qword_10059B468);
  sub_100570678();
  v21 = v38;
  swift_getKeyPath();
  *&v36 = v21;
  sub_1003AF5B4(&qword_1006F0900, type metadata accessor for HostedScenePhaseModel, &unk_10059B5A8);
  sub_10056CEF8();

  v22 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v23 = &v13[*(v11 + 36)];
  v24 = *(sub_100009DCC(&qword_1006F0910, &qword_10059B498) + 28);
  v25 = sub_10056E5F8();
  (*(*(v25 - 8) + 16))(v23 + v24, &v21[v22], v25);

  *v23 = KeyPath;
  v38 = a4;
  v39 = a5;
  sub_100570678();
  v26 = v35;
  v38 = v35;
  v27 = swift_allocObject();
  v27[2] = v32;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;

  v28 = a4;
  sub_100009DCC(&qword_1006F08C8, &qword_10059B410);
  sub_1003ADA48();
  sub_1003ADBE4();
  sub_100570348();

  return sub_10001036C(v13, &qword_1006F08D0, &qword_10059B418);
}

uint64_t sub_1003AC968(uint64_t a1)
{
  sub_10056E5F8();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_10056EEB8();
}

void sub_1003ACA30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_100009DCC(&qword_1006F08F0, &qword_10059B468);
  sub_100570678();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1003ADE20(Strong);
}

double View.hostedScenePhaseSupport(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006F08C8, &qword_10059B410);
  sub_100570668();
  type metadata accessor for HostedScenePhaseModel(0);
  swift_allocObject();
  sub_1003ACBE0(a1, a2, a3);
  sub_100570668();
  sub_100570328();

  return result;
}

uint64_t sub_1003ACBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v9 = enum case for ScenePhase.inactive(_:);
  v10 = sub_10056E5F8();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  if (qword_1006EEB10 != -1)
  {
    swift_once();
  }

  v11 = sub_10056DF88();
  sub_10000C49C(v11, static Logger.scenes);
  v12 = sub_10056DF68();
  v13 = sub_100573448();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = sub_100573F18();
    v18 = sub_10037A2AC(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "[ScenePhaseSupport:%{public}s] Init", v14, 0xCu);
    sub_100010474(v15);
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  return v4;
}

uint64_t sub_1003ACE04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10056E5F8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1003AF5B4(&qword_1006F0AF8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v13[0] = a1;
  LOBYTE(a1) = sub_1005727E8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v13[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_1003AD42C();
    v10(v7, v4);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v11 = v13[0];
    v13[-2] = v2;
    v13[-1] = v11;
    v13[1] = v2;
    sub_1003AF5B4(&qword_1006F0900, type metadata accessor for HostedScenePhaseModel, &unk_10059B5A8);
    sub_10056CEE8();
  }

  return (v10)(v13[0], v4);
}

uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (qword_1006EEB10 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.scenes);
}

uint64_t sub_1003AD124()
{
  v1 = v0;
  if (qword_1006EEB10 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, static Logger.scenes);

  v3 = sub_10056DF68();
  v4 = sub_100573448();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = sub_100573F18();
    v9 = sub_10037A2AC(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[ScenePhaseSupport:%{public}s] Deallocated — Removing notifications", v5, 0xCu);
    sub_100010474(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      sub_100081F38(v13, v20);
      v14 = [v12 defaultCenter];
      sub_10000C8CC(v20, v20[3]);
      [v14 removeObserver:sub_100574478()];

      swift_unknownObjectRelease();
      sub_100010474(v20);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v16 = sub_10056E5F8();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  swift_unknownObjectWeakDestroy();

  v17 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel___observationRegistrar;
  v18 = sub_10056CF38();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t sub_1003AD3D8()
{
  sub_1003AD124();

  return swift_deallocClassInstance();
}

void sub_1003AD42C()
{
  v1 = v0;
  v2 = sub_10056E5F8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006EEB10 != -1)
  {
    swift_once();
  }

  v6 = sub_10056DF88();
  sub_10000C49C(v6, static Logger.scenes);

  v18 = sub_10056DF68();
  v7 = sub_100573448();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_100573F18();
    v11 = sub_10037A2AC(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getKeyPath();
    v19 = v0;
    sub_1003AF5B4(&qword_1006F0900, type metadata accessor for HostedScenePhaseModel, &unk_10059B5A8);
    sub_10056CEF8();

    v12 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = sub_100572978();
    v15 = sub_10037A2AC(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v18, v7, "[ScenePhaseSupport:%{public}s] scenePhase changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_1003AD728@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1003AF5B4(&qword_1006F0900, type metadata accessor for HostedScenePhaseModel, &unk_10059B5A8);
  sub_10056CEF8();

  v3 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = sub_10056E5F8();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1003AD820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AF5B4(&qword_1006F0900, type metadata accessor for HostedScenePhaseModel, &unk_10059B5A8);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = sub_10056E5F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1003AD91C(uint64_t a1)
{
  sub_10056E5F8();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_1003ACE04(v4);
}

uint64_t sub_1003AD9EC()
{

  return swift_deallocObject();
}

unint64_t sub_1003ADA48()
{
  result = qword_1006F0918;
  if (!qword_1006F0918)
  {
    sub_100010324(&qword_1006F08D0, &qword_10059B418);
    sub_1003ADB00();
    sub_100010BC0(&qword_1006F0940, &qword_1006F0910, &qword_10059B498, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0918);
  }

  return result;
}

unint64_t sub_1003ADB00()
{
  result = qword_1006F0920;
  if (!qword_1006F0920)
  {
    sub_100010324(&qword_1006F08E8, &qword_10059B430);
    sub_100010BC0(&qword_1006F0928, &qword_1006F08E0, &qword_10059B428, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006F0930, &qword_1006F0938, &qword_10059B4A0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0920);
  }

  return result;
}

unint64_t sub_1003ADBE4()
{
  result = qword_1006F0948;
  if (!qword_1006F0948)
  {
    sub_100010324(&qword_1006F08C8, &qword_10059B410);
    sub_1003AF5B4(&qword_1006F0950, sub_1003ADC98, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0948);
  }

  return result;
}

unint64_t sub_1003ADC98()
{
  result = qword_1006F0958;
  if (!qword_1006F0958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F0958);
  }

  return result;
}

uint64_t sub_1003ADCE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056E5F8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_1003AD42C();
  return (*(v5 + 8))(v8, v4);
}

void sub_1003ADE20(void *a1)
{
  sub_100009DCC(&qword_1006F0B00, &unk_10059B5E0);
  __chkstk_darwin();
  v3 = &v28 - v2;
  v4 = sub_10056E5F8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1)
    {
      sub_1003ADC98();
      v10 = a1;
      v11 = sub_100573A58();

      if (v11)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_1006EEB10 != -1)
  {
    swift_once();
  }

  v12 = sub_10056DF88();
  sub_10000C49C(v12, static Logger.scenes);

  v13 = sub_10056DF68();
  v14 = sub_100573448();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = sub_100573F18();
    v29 = v3;
    v18 = sub_10037A2AC(v16, v17, &v31);
    v28 = v7;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v30 = swift_unknownObjectWeakLoadStrong();
    sub_100009DCC(&qword_1006F08C8, &qword_10059B410);
    v20 = sub_100572978();
    v22 = sub_10037A2AC(v20, v21, &v31);
    v3 = v29;

    *(v15 + 14) = v22;
    v7 = v28;
    _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] windowScene changed: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 activationState];

    v26 = &enum case for ScenePhase.background(_:);
    v27 = &enum case for ScenePhase.active(_:);
    if (v25)
    {
      v27 = &enum case for ScenePhase.inactive(_:);
    }

    if (v25 != 2)
    {
      v26 = v27;
    }

    (*(v5 + 104))(v3, *v26, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    (*(v5 + 104))(v7, enum case for ScenePhase.inactive(_:), v4);
  }

  sub_1003ACE04(v7);
  sub_1003AE228();
}

double sub_1003AE228()
{
  v1 = v0;
  v2 = sub_10056E5F8();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin();
  v88 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v93 = sub_100009DCC(&qword_1006F0AE0, &qword_10059B5C8);
  v4 = *(v93 - 8);
  __chkstk_darwin();
  v87 = (v82 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1006EEB10 != -1)
    {
      swift_once();
    }

    v8 = sub_10056DF88();
    sub_10000C49C(v8, static Logger.scenes);

    v9 = v7;
    v10 = sub_10056DF68();
    v11 = sub_100573448();

    v12 = v11;
    v13 = os_log_type_enabled(v10, v11);
    v90 = v9;
    if (v13)
    {
      v14 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v14 = 136446466;
      v15 = sub_100573F18();
      v17 = sub_10037A2AC(v15, v16, &aBlock);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = v9;
      v19 = [v18 description];
      v20 = sub_1005728D8();
      v22 = v21;

      v23 = sub_10037A2AC(v20, v22, &aBlock);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v10, v12, "[ScenePhaseSupport:%{public}s] Setting up notification observers for scene %{public}s)", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_100009DCC(&qword_1006F0AE8, &qword_10059B5D0);
    v24 = *(v4 + 72);
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v96 = 6;
    v26 = swift_allocObject();
    v82[2] = v26;
    v27 = v26 + v25;
    v28 = v92;
    v29 = v93;
    v30 = *(v93 + 48);
    v95 = UISceneDidActivateNotification;
    *(v26 + v25) = UISceneDidActivateNotification;
    v31 = v91 + 104;
    v32 = *(v91 + 104);
    v32(v26 + v25 + v30, enum case for ScenePhase.active(_:), v28);
    v33 = *(v29 + 48);
    v94 = UISceneWillConnectNotification;
    *(v27 + v24) = UISceneWillConnectNotification;
    v34 = enum case for ScenePhase.inactive(_:);
    v32(v27 + v24 + v33, enum case for ScenePhase.inactive(_:), v28);
    v35 = (v27 + 2 * v24);
    v36 = *(v29 + 48);
    v84 = UISceneWillDeactivateNotification;
    *v35 = UISceneWillDeactivateNotification;
    v32(v35 + v36, v34, v28);
    v37 = (v27 + 3 * v24);
    v38 = *(v29 + 48);
    v83 = UISceneWillEnterForegroundNotification;
    *v37 = UISceneWillEnterForegroundNotification;
    v32(v37 + v38, v34, v28);
    v39 = (v27 + 4 * v24);
    v40 = *(v29 + 48);
    *v39 = UISceneDidDisconnectNotification;
    v41 = enum case for ScenePhase.background(_:);
    v32(v39 + v40, enum case for ScenePhase.background(_:), v28);
    v85 = v24;
    v42 = (v27 + 5 * v24);
    v43 = *(v29 + 48);
    *v42 = UISceneDidEnterBackgroundNotification;
    v32(v42 + v43, v41, v28);
    v102 = _swiftEmptyArrayStorage;
    v44 = v95;
    v45 = v94;
    v46 = v84;
    v47 = v83;
    v48 = UISceneDidDisconnectNotification;
    v49 = UISceneDidEnterBackgroundNotification;
    sub_1004753A8(0, 6, 0);
    v50 = v102;
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v82[5] = v31 - 88;
    v82[4] = v31 - 72;
    v82[3] = &v98;
    v82[1] = v27;
    v51 = v27;
    v86 = v1;
    v53 = v91;
    v52 = v92;
    do
    {
      v95 = v50;
      v54 = v87;
      sub_1003AF3B4(v51, v87);
      v55 = *v54;
      v56 = *(v93 + 48);
      v94 = [v84 defaultCenter];
      v57 = [v83 mainQueue];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v88;
      (*(v53 + 16))(v88, v54 + v56, v52);
      v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v55;
      (*(v53 + 32))(v61 + v60, v59, v52);
      v100 = sub_1003AF528;
      v101 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = sub_1003AEE78;
      ObjectType = &unk_1006A0710;
      v62 = _Block_copy(&aBlock);
      v63 = v55;

      v64 = v94;
      v65 = [(NSString *)v94 addObserverForName:v63 object:v90 queue:v57 usingBlock:v62];
      v66 = v62;
      v50 = v95;
      _Block_release(v66);

      ObjectType = swift_getObjectType();
      *&aBlock = v65;
      sub_10001036C(v54, &qword_1006F0AE0, &qword_10059B5C8);
      v102 = v50;
      v68 = v50[2];
      v67 = v50[3];
      if (v68 >= v67 >> 1)
      {
        sub_1004753A8((v67 > 1), v68 + 1, 1);
        v50 = v102;
      }

      v50[2] = (v68 + 1);
      sub_1000F51DC(&aBlock, &v50[4 * v68 + 4]);
      v69 = v86;
      v51 += v85;
      --v96;
    }

    while (v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = v50;
    sub_1003AF2E0(v70);
  }

  else
  {
    if (qword_1006EEB10 != -1)
    {
      swift_once();
    }

    v72 = sub_10056DF88();
    sub_10000C49C(v72, static Logger.scenes);

    v73 = sub_10056DF68();
    v74 = sub_100573448();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v1;
      v77 = swift_slowAlloc();
      *&aBlock = v77;
      *v75 = 136446210;
      v78 = sub_100573F18();
      v80 = sub_10037A2AC(v78, v79, &aBlock);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "[ScenePhaseSupport:%{public}s] Removing notification observers", v75, 0xCu);
      sub_100010474(v77);
      v1 = v76;
    }

    v81 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
    sub_1003AF2E0(v81);
  }

  return result;
}

double sub_1003AEBBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10056E5F8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1006EEB10 != -1)
    {
      swift_once();
    }

    v11 = sub_10056DF88();
    sub_10000C49C(v11, static Logger.scenes);
    v12 = a3;

    v13 = sub_10056DF68();
    v14 = sub_100573448();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v29 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = sub_100573F18();
      v27 = a4;
      v19 = sub_10037A2AC(v17, v18, &v29);
      v26 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v28 = v25;
      v21 = v12;
      sub_100009DCC(&qword_1006F0AF0, &qword_10059B5D8);
      v22 = sub_100572978();
      v24 = sub_10037A2AC(v22, v23, &v29);
      a4 = v27;

      *(v16 + 14) = v24;
      v6 = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] Received notification %{public}s)", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 16))(v9, a4, v6);
    sub_1003ACE04(v9);
  }

  return result;
}

uint64_t sub_1003AEE78(uint64_t a1, uint64_t a2)
{
  v3 = sub_10056C368();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_10056C338();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003AEF6C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.scenes);
  sub_10000C49C(v0, static Logger.scenes);
  return static Logger.music(_:)(0x73656E656353, 0xE600000000000000);
}

uint64_t static Logger.scenes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006EEB10 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.scenes);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1003AF0A8(uint64_t a1)
{
  result = sub_10056E5F8();
  if (v2 <= 0x3F)
  {
    result = sub_10056CF38();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003AF198()
{
  sub_100010324(&qword_1006F08D0, &qword_10059B418);
  sub_100010324(&qword_1006F08C8, &qword_10059B410);
  sub_1003ADA48();
  sub_1003ADBE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1003AF228(void *a1)
{
  sub_10056ECA8();
  sub_1003AF28C();
  return swift_getWitnessTable();
}

unint64_t sub_1003AF28C()
{
  result = qword_1006F0AD8;
  if (!qword_1006F0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0AD8);
  }

  return result;
}

uint64_t sub_1003AF2E0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    do
    {
      sub_100081F38(v4, v6);
      v5 = [v3 defaultCenter];
      sub_10000C8CC(v6, v6[3]);
      [v5 removeObserver:sub_100574478()];

      swift_unknownObjectRelease();
      result = sub_100010474(v6);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1003AF3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F0AE0, &qword_10059B5C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AF424()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003AF45C()
{
  v1 = sub_10056E5F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1003AF528(uint64_t a1)
{
  v3 = *(sub_10056E5F8() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1003AEBBC(a1, v4, v5, v6);
}

uint64_t sub_1003AF59C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003AF5B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WindowSceneResolver.windowScene.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009DCC(&qword_1006F0B08, &qword_10059B5F0);
  sub_1005707F8();
  return v4;
}

void (*WindowSceneResolver.windowScene.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v10 = a4;

  v9[11] = sub_100009DCC(&qword_1006F0B08, &qword_10059B5F0);
  sub_1005707F8();
  return sub_1003AF784;
}

void sub_1003AF784(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_100570808();
  }

  else
  {
    sub_100570808();
  }

  free(v2);
}

uint64_t WindowSceneResolver.$windowScene.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009DCC(&qword_1006F0B08, &qword_10059B5F0);
  sub_100570818();
  return v4;
}

id WindowSceneResolver.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_100009DCC(&qword_1006F0B08, &qword_10059B5F0);
  sub_100570818();
  v4 = v17;
  v5 = v18;
  v6 = type metadata accessor for WindowSceneResolver.View();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene];
  *v8 = v16;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v15.receiver = v7;
  v15.super_class = v6;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];

  return v12;
}

Swift::Void __swiftcall WindowSceneResolver.View.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "willMoveToWindow:", isa);
  v3 = [(objc_class *)isa windowScene];
  sub_100009DCC(&qword_1006F0B08, &qword_10059B5F0);
  sub_100570808();
}

void sub_1003AFC04()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene + 16);
}

unint64_t sub_1003AFC64()
{
  result = qword_1006F0B18;
  if (!qword_1006F0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0B18);
  }

  return result;
}

uint64_t sub_1003AFD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003AFE94();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003AFDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003AFE94();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003AFE48(uint64_t a1)
{
  sub_1003AFE94();
  sub_10056F4D8();
  __break(1u);
}

__n128 initializeBufferWithCopyOfBuffer for SymbolButton.Animation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1003AFE94()
{
  result = qword_1006F0B48;
  if (!qword_1006F0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0B48);
  }

  return result;
}

uint64_t NoticePresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  NoticePresenter.init()();
  return v0;
}

uint64_t NoticePresenter.init()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = 0;
  swift_unknownObjectWeakInit();
  v6[8] = 2;
  v7 = 0x4024000000000000;
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  v8 = *&NSDirectionalEdgeInsetsZero.top;
  v9 = v3;
  sub_1003B14E8(v6, v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  return v0;
}

uint64_t sub_1003B0008(uint64_t a1)
{
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000CC8C(v1 + v5, v4, &qword_1006F0B88, &qword_10059B7C8);
  v6 = sub_1003B5304(v4, a1);
  sub_10001036C(v4, &qword_1006F0B88, &qword_10059B7C8);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_10056CEE8();
  }

  else
  {
    sub_10000CC8C(a1, v4, &qword_1006F0B88, &qword_10059B7C8);
    swift_beginAccess();
    sub_1003B6918(v4, v1 + v5);
    swift_endAccess();
  }

  return sub_10001036C(a1, &qword_1006F0B88, &qword_10059B7C8);
}

uint64_t NoticePresenter.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_1003B1520(v1 + v3, v7);
  v4 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v7, a1);
  sub_1003B5148(v7);
  if (v4)
  {
    sub_1003B1520(a1, v7);
    sub_1003B1520(v1 + v3, v6);
    swift_beginAccess();
    sub_1003B5220(v7, v1 + v3);
    swift_endAccess();
    sub_1003B1558(v6);
    sub_1003B5148(v6);
    sub_1003B5148(v7);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v7[0] = v1;
    sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_10056CEE8();
  }

  return sub_1003B5148(a1);
}

double NoticePresenter.willPresentHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEE8();
  sub_1000F3E14(a1, a2);

  return result;
}

uint64_t sub_1003B0494@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_10000CC8C(v3 + v4, a2, &qword_1006F0B88, &qword_10059B7C8);
}

uint64_t sub_1003B056C(uint64_t a1)
{
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_10000CC8C(a1, &v5 - v2, &qword_1006F0B88, &qword_10059B7C8);
  return sub_1003B0008(v3);
}

uint64_t NoticePresenter.notice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_10000CC8C(v5 + v3, a1, &qword_1006F0B88, &qword_10059B7C8);
}

uint64_t sub_1003B06F0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1003B69A4(a2, a1 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall NoticePresenter.dismiss(_:)(Swift::Bool a1)
{
  v2 = v1;
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v5 = &v12[-v4];
  swift_getKeyPath();
  v14 = v1;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v6 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000CC8C(v2 + v6, v5, &qword_1006F0B88, &qword_10059B7C8);
  v7 = type metadata accessor for Notice(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_10001036C(v5, &qword_1006F0B88, &qword_10059B7C8);
  if (v6 != 1)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *&v12[-16] = v2;
    *&v12[-8] = 0;
    v13 = v2;
    sub_10056CEE8();

    if (a1)
    {
      sub_100570A48();
    }

    sub_10056EA28();

    swift_getKeyPath();
    v13 = v2;
    sub_10056CEF8();

    v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v9 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v9)
    {
      *(v9 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 0;
    }

    swift_getKeyPath();
    v13 = v2;
    sub_10056CEF8();

    if (*(v2 + v8))
    {
      sub_1000D3B98(0, &qword_1006F3420, OS_dispatch_queue_ptr);
      v10 = sub_1005735E8();
      if (a1)
      {
        v11 = 2.0;
      }

      else
      {
        v11 = 0.0;
      }

      OS_dispatch_queue.asyncAfter(_:block:)(sub_1003B52FC, v2, v11);
    }
  }
}

uint64_t sub_1003B0AA4()
{
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v1 = &v4 - v0;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  return sub_1003B0008(v1);
}

void sub_1003B0B6C(uint64_t a1)
{
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v3 = v7 - v2;
  swift_getKeyPath();
  v7[1] = a1;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000CC8C(a1 + v4, v3, &qword_1006F0B88, &qword_10059B7C8);
  v5 = type metadata accessor for Notice(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_10001036C(v3, &qword_1006F0B88, &qword_10059B7C8);
  if (v4 == 1)
  {
    sub_1003B22EC(0, v6);
  }
}

uint64_t NoticePresenter.present(_:internalOnly:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(v5, v2);
  return sub_1002EF52C(v5);
}

void sub_1003B0D90(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v11[0] = a1;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  if (!*(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow))
  {
    v4 = [objc_allocWithZone(type metadata accessor for NoticePresenter.PassthroughWindow()) initWithWindowScene:a2];
    [v4 setWindowLevel:UIWindowLevelStatusBar];
    swift_getKeyPath();
    v11[0] = a1;
    sub_10056CEF8();

    v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_1003B1520(a1 + v5, v11);
    v6 = objc_allocWithZone(type metadata accessor for NoticePresenter.UIRootViewController());

    v8 = sub_1003B55A4(v7, v11);

    [v4 setRootViewController:v8];

    [v4 makeKeyAndVisible];
    [v4 resignKeyWindow];
    v9 = v4;
    sub_1003B22EC(v4, v10);
  }
}

void sub_1003B0F6C(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v5 = &v18 - v4;
  sub_1003B67C4(a2, &v18 - v4);
  v6 = type metadata accessor for Notice(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1003B0008(v5);
  swift_getKeyPath();
  v19 = a1;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v8 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v8)
  {
    v9 = [v8 rootViewController];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = [v11 view];

        if (!v12)
        {
          __break(1u);
          goto LABEL_15;
        }

        [v12 setNeedsLayout];
        v10 = v12;
      }
    }
  }

  swift_getKeyPath();
  v19 = a1;
  sub_10056CEF8();

  v13 = *(a1 + v7);
  if (v13)
  {
    v14 = [v13 rootViewController];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
LABEL_12:

        return;
      }

      v17 = [v16 view];

      if (v17)
      {
        [v17 layoutIfNeeded];
        v15 = v17;
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

uint64_t sub_1003B11E8()
{
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();
}

uint64_t sub_1003B1294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  *a2 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
}

double sub_1003B1348(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEE8();

  return result;
}

void sub_1003B1414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = a2;

  if (v2)
  {
    sub_100570C18();
  }
}

uint64_t NoticePresenter.Configuration.init(edge:padding:insets:)(char a1, double a3, double a4, double a5, double a6, double a7)
{
  result = swift_unknownObjectWeakInit();
  *(result + 8) = a1;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  return result;
}

void sub_1003B1558(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_1003B1520(v1 + v4, v9);
  v5 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v9);
  sub_1003B5148(v9);
  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    v9[0] = v2;
    sub_10056CEF8();

    v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v6)
    {
      v7 = [v6 rootViewController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for NoticePresenter.UIRootViewController();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          v9[0] = v2;
          sub_10056CEF8();

          sub_1003B1520(v2 + v4, v9);
          sub_1003B449C(v9);
        }
      }
    }
  }
}

void (*sub_1003B1714(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  sub_1003B1520(v1 + v5, v4);
  return sub_1003B17AC;
}

void sub_1003B17AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {
    sub_1003B1520(*a1, v2 + 56);
    sub_1003B1520(v3 + v4, v2 + 112);
    swift_beginAccess();
    sub_1003B5220(v2 + 56, v3 + v4);
    swift_endAccess();
    sub_1003B1558(v2 + 112);
    sub_1003B5148(v2 + 112);
  }

  else
  {
    sub_1003B1520(v3 + v4, v2 + 56);
    swift_beginAccess();
    sub_1003B5220(v2, v3 + v4);
    swift_endAccess();
    sub_1003B1558(v2 + 56);
  }

  sub_1003B5148(v2 + 56);
  sub_1003B5148(v2);

  free(v2);
}

uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_1003B1520(v5 + v3, a1);
}

uint64_t sub_1003B195C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_1003B1520(v3 + v4, a2);
}

uint64_t sub_1003B1A24(uint64_t a1, uint64_t a2)
{
  sub_1003B1520(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_1003B1520(a1 + v3, v5);
  swift_beginAccess();
  sub_1003B5220(v6, a1 + v3);
  swift_endAccess();
  sub_1003B1558(v5);
  sub_1003B5148(v5);
  return sub_1003B5148(v6);
}

uint64_t (*NoticePresenter.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003B1714(v4);
  return sub_1003B1C0C;
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1000E672C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1003B1D4C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1003B6CC8;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_1000E672C(v5, v6);
}

double sub_1003B1E58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1003B6C68;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_1000E672C(v2, v3);
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEE8();
  sub_1000F3E14(v5, v4);

  return result;
}

uint64_t sub_1003B1FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  sub_1000E672C(a2, a3);
  return sub_1000F3E14(v6, v7);
}

uint64_t (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  *v4 = v1;
  swift_getKeyPath();
  sub_10056CF18();

  v4[7] = sub_1003B1C18(v4);
  return sub_1003B2170;
}

void *sub_1003B217C()
{
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id sub_1003B222C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void sub_1003B22EC(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v7 = v6;
      v8 = a1;
      v9 = sub_100573A58();

      if (v9)
      {
        v10 = *(v3 + v5);
        goto LABEL_8;
      }
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_10056CEE8();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v10 = 0;
  v8 = 0;
LABEL_8:
  *(v3 + v5) = a1;
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  v11 = v8;
  sub_10056CEF8();

  if (v10)
  {
    v12 = *(v3 + v5);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v10 = v10, v14 = sub_100573A58(), v10, v13, (v14 & 1) == 0))
    {
      [v10 resignKeyWindow];
    }
  }

  else
  {
  }
}

void sub_1003B2534(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  v6 = a2;
  sub_10056CEF8();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = sub_100573A58(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  sub_10001036C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_1006F0B88, &qword_10059B7C8);

  sub_1003B5148(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_1000F3E14(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler), *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler + 8));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_10056CF38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  sub_10001036C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_1006F0B88, &qword_10059B7C8);

  sub_1003B5148(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_1000F3E14(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler), *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler + 8));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_10056CF38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double View.noticePresenting(_:configurator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100009DCC(&qword_1006F08C8, &qword_10059B410);
  sub_100570668();
  sub_100570328();

  return result;
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100009DCC(&qword_1006F08C8, &qword_10059B410);
  sub_100570668();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  sub_100009DCC(&qword_1006F0B98, &qword_10059B828);
  sub_1005707F8();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_1003B60E8((v3 + 6), (v3 + 3));

  sub_10000CC8C((v4 + 7), (v4 + 3), &qword_1006F0BA0, &qword_10059B830);
  v4[13] = sub_100009DCC(&qword_1006F0B98, &qword_10059B828);
  sub_1005707F8();
  return sub_1003B2B2C;
}

void sub_1003B2B2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_100570808();
    sub_1003B6144((v2 + 6));

    sub_10001036C((v2 + 7), &qword_1006F0BA0, &qword_10059B830);
  }

  else
  {
    sub_100570808();
    sub_1003B6144((v2 + 6));

    sub_10001036C((v2 + 7), &qword_1006F0BA0, &qword_10059B830);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  sub_100009DCC(&qword_1006F0B98, &qword_10059B828);
  sub_100570818();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = sub_100009DCC(&qword_1006F0BA8, &unk_10059B838);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = sub_1005709E8();
  v10 = v9;
  v12 = v2[6];
  v29[0] = v2[5];
  v11 = v29[0];
  v29[1] = v12;
  sub_100009DCC(&qword_1006F08D8, &qword_10059B420);
  sub_100570698();
  v23 = v27;
  v13 = v28;
  v14 = sub_100009DCC(&qword_1006F0BB0, &qword_10059B848);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v23;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  sub_100570678();
  v16 = v29[0];
  v26 = v29[0];
  *&v27 = v12;
  v17 = *v3;
  v18 = v3[3];
  v30 = v3[2];
  v31 = v17;
  v19 = v3[4];
  v29[0] = v11;
  v20 = swift_allocObject();
  v21 = *(v3 + 1);
  *(v20 + 16) = *v3;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v3 + 2);
  *(v20 + 64) = v3[6];
  sub_1003B60E8(&v31, v25);

  sub_10000CC8C(&v30, v25, &qword_1006F0BA0, &qword_10059B830);
  sub_1000E672C(v18, v19);
  sub_10000CC8C(v29, v25, &qword_1006F08C8, &qword_10059B410);
  sub_10000CC8C(&v27, v25, &qword_1006F0BB8, &unk_10059B850);
  sub_100009DCC(&qword_1006F08C8, &qword_10059B410);
  sub_1003B6208();
  sub_1003ADBE4();
  sub_100570348();

  return sub_10001036C(v7, &qword_1006F0BA8, &unk_10059B838);
}

uint64_t sub_1003B2F0C(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = *(a3 + 4);
  sub_1000E672C(*(a3 + 3), v6);
  v7 = v4;
  v8 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v13 = v8;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v9 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_1003B1520(v8 + v9, &v13);

  v5(&v13);
  UIWindowScene.noticePresenter.getter();
  sub_1003B1520(&v13, v12);
  NoticePresenter.configuration.setter(v12);
  sub_1000F3E14(v5, v6);

  sub_1003B5148(&v13);
LABEL_5:
  v10 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v13 = *a3;
  v14 = *(a3 + 2);
  v12[0] = v10;
  sub_100009DCC(&qword_1006F0B98, &qword_10059B828);
  return sub_100570808();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    sub_10001036C(v5, &qword_1006F0BD0, &qword_10059B860);
    goto LABEL_5;
  }

  sub_100009DCC(&qword_1006F0BD8, &qword_10059B868);
  type metadata accessor for NoticePresenter(0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter(0);
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_10056CEF8();

    v5[0] = v0;
    swift_getKeyPath();
    sub_10056CF18();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_1003B1520(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    sub_1003B1520(v0 + v2, v4);
    swift_beginAccess();
    sub_1003B5220(v5, v0 + v2);
    swift_endAccess();
    sub_1003B1558(v4);
    sub_1003B5148(v4);
    sub_1003B5148(v5);
    v5[0] = v0;
    swift_getKeyPath();
    sub_10056CF08();

    return v0;
  }

  return v4[0];
}

__n128 sub_1003B330C@<Q0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006F0E78, &qword_10059BB18);
  __chkstk_darwin();
  v4 = v10 - v3;
  *v4 = sub_10056F368();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_100009DCC(&qword_1006F0E80, &qword_10059BB20);
  sub_1003B3468(v1, &v4[*(v5 + 44)]);
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v4, a1, &qword_1006F0E78, &qword_10059BB18);
  v6 = a1 + *(sub_100009DCC(&qword_1006F0E88, &qword_10059BB28) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_1003B3468@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v92 = a2;
  v90 = sub_100009DCC(&qword_1006F0E90, &qword_10059BB30);
  v91 = *(v90 - 8);
  __chkstk_darwin();
  v4 = &KeyPath - v3;
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v6 = &KeyPath - v5;
  v7 = type metadata accessor for Notice(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F0E98, &qword_10059BB38);
  __chkstk_darwin();
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &KeyPath - v13;
  v85 = *(a1 + 4);
  sub_1005709E8();
  sub_10056E888();
  v89 = v96[3];
  v88 = v98;
  v87 = v100;
  v86 = v101;
  v110 = 1;
  v109 = v97;
  v108 = v99;
  v14 = *(a1 + 1);
  v83 = *a1;
  v102 = v83;
  v103 = v14;
  v82 = v14;
  sub_100009DCC(&qword_1006F0EA0, &qword_10059BB40);
  sub_100570678();
  v15 = v96[0];
  swift_getKeyPath();
  v102 = v15;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v16 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000CC8C(*&v15 + v16, v6, &qword_1006F0B88, &qword_10059B7C8);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001036C(v6, &qword_1006F0B88, &qword_10059B7C8);
    v17 = 1;
    v18 = v84;
    v19 = v90;
  }

  else
  {
    v81 = v10;
    sub_1003B6760(v6, v10);
    sub_1003B67C4(v10, v4);
    v20 = type metadata accessor for NoticeView(0);
    v21 = &v4[v20[5]];
    *v21 = swift_getKeyPath();
    *(v21 + 1) = 0;
    *(v21 + 8) = 0;
    v22 = &v4[v20[6]];
    v107 = 0x3FF0000000000000;
    sub_100570668();
    v23 = v103;
    *v22 = v102;
    *(v22 + 1) = v23;
    v24 = &v4[v20[7]];
    LOBYTE(v107) = 0;
    sub_10056E7A8();
    v25 = v103;
    v26 = v104;
    *v24 = LOBYTE(v102);
    *(v24 + 1) = v25;
    *(v24 + 1) = v26;
    v27 = &v4[v20[8]];
    LOBYTE(v107) = 0;
    sub_100570668();
    v28 = v103;
    *v27 = LOBYTE(v102);
    *(v27 + 1) = v28;
    LOBYTE(v27) = sub_10056FA68();
    sub_10056E598();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &v4[*(sub_100009DCC(&qword_1006F0EB0, &qword_10059BB78) + 36)];
    *v37 = v27;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    LOBYTE(v27) = sub_10056FA88();
    sub_10056E598();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v4[*(sub_100009DCC(&qword_1006F0EB8, &qword_10059BB80) + 36)];
    *v46 = v27;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    LOBYTE(v27) = sub_10056FA98();
    sub_10056E598();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = &v4[*(sub_100009DCC(&qword_1006F0EC0, &qword_10059BB88) + 36)];
    *v55 = v27;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    sub_10056E8C8();
    sub_100570A08();
    sub_10056E8E8();

    sub_100570B48();
    sub_10056E8B8();
    sub_100570A08();
    sub_10056E8E8();

    sub_100570B48();
    sub_10056E8B8();
    sub_100570A08();
    sub_10056E8E8();

    sub_10056E8A8();

    v56 = sub_10056E8D8();

    *&v4[*(sub_100009DCC(&qword_1006F0EC8, &qword_10059BB90) + 36)] = v56;
    KeyPath = swift_getKeyPath();
    v107 = v82;
    sub_100572F08();

    sub_10000CC8C(&v107, &v102, &qword_1006F0ED0, &qword_10059BB98);
    v57 = sub_100572EF8();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = &protocol witness table for MainActor;
    v59 = *(a1 + 1);
    *(v58 + 32) = *a1;
    *(v58 + 48) = v59;
    *(v58 + 64) = *(a1 + 2);

    sub_10000CC8C(&v107, &v102, &qword_1006F0ED0, &qword_10059BB98);
    v60 = sub_100572EF8();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);
    sub_100570828();
    sub_1002EF52C(v81);
    v63 = v102;
    v64 = v103;
    v65 = v104;
    v66 = v90;
    v67 = &v4[*(v90 + 36)];
    *v67 = KeyPath;
    *(v67 + 1) = v63;
    *(v67 + 2) = v64;
    v67[24] = v65;
    v18 = v84;
    sub_100019B40(v4, v84, &qword_1006F0E90, &qword_10059BB30);
    v17 = 0;
    v19 = v66;
  }

  (*(*&v91 + 56))(v18, v17, 1, v19);
  sub_1005709E8();
  sub_10056E888();
  v91 = v102;
  v90 = v104;
  v85 = v105;
  v84 = v106;
  v95 = 1;
  v94 = v103;
  v93 = BYTE8(v104);
  v68 = v110;
  v69 = v109;
  v70 = v108;
  sub_10000CC8C(v18, v12, &qword_1006F0E98, &qword_10059BB38);
  v71 = v95;
  v72 = v94;
  v73 = v93;
  v74 = v92;
  *v92 = 0;
  *(v74 + 8) = v68;
  *(v74 + 2) = v89;
  *(v74 + 24) = v69;
  v74[4] = v88;
  *(v74 + 40) = v70;
  v75 = v86;
  v74[6] = v87;
  v74[7] = v75;
  v76 = sub_100009DCC(&qword_1006F0EA8, &qword_10059BB48);
  sub_10000CC8C(v12, v74 + *(v76 + 48), &qword_1006F0E98, &qword_10059BB38);
  v77 = (v74 + *(v76 + 64));
  *v77 = 0.0;
  *(v77 + 8) = v71;
  v77[2] = v91;
  *(v77 + 24) = v72;
  *(v77 + 4) = v90;
  *(v77 + 40) = v73;
  v78 = v84;
  *(v77 + 6) = v85;
  *(v77 + 7) = v78;
  sub_10001036C(v18, &qword_1006F0E98, &qword_10059BB38);
  return sub_10001036C(v12, &qword_1006F0E98, &qword_10059BB38);
}

uint64_t sub_1003B3EE4@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v10 = *a1;
  sub_100009DCC(&qword_1006F0EA0, &qword_10059BB40);
  sub_100570678();
  v6 = v11;
  swift_getKeyPath();
  *&v10 = v6;
  sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_10056CEF8();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_10000CC8C(v6 + v7, v5, &qword_1006F0B88, &qword_10059B7C8);

  v8 = type metadata accessor for Notice(0);
  LOBYTE(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  result = sub_10001036C(v5, &qword_1006F0B88, &qword_10059B7C8);
  *a2 = v7;
  return result;
}

double sub_1003B40A4(_BYTE *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*a1 & 1) == 0)
  {
    sub_100009DCC(&qword_1006F0EA0, &qword_10059BB40);
    sub_100570678();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id sub_1003B4198(uint64_t a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, v6, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id sub_1003B449C(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  sub_1003B5220(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_1003B5148(a1);
  }

  v5 = sub_10056FAA8();
  v6 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v5, *(v4 + 16));
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10056F428();
  v14[2] = v6;
  *(v14 + 3) = v8;
  *(v14 + 4) = v10;
  *(v14 + 5) = v12;
  v13(&v18, 0);
  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v17 = result;
      [result layoutIfNeeded];

      return sub_1003B5148(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1003B4724()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v7 = sub_10056FAA8();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7, v6[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_10056F428();
  v16[2] = v8;
  *(v16 + 3) = v10;
  *(v16 + 4) = v12;
  *(v16 + 5) = v14;
  v15(v23, 0);
  v17 = [v1 view];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = v17;
  v19 = [v2 view];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  [v18 addSubview:v19];

  v21 = [v2 view];
  if (v21)
  {
    v22 = v21;
    [v21 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1003B4938()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  sub_100573878();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003B68CC;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10019CB74;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_1006A0A30;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  sub_10056F3D8();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  sub_100573848();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1003B4D10(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id sub_1003B4E4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
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
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_1000D3B98(0, &qword_1006F0958, UIWindowScene_ptr);
      v7 = sub_100573A58();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = sub_10056FAB8();
  if (v8 != sub_10056FAB8() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t type metadata accessor for NoticePresenter(uint64_t a1)
{
  result = qword_1006F0C08;
  if (!qword_1006F0C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B52CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003B22EC(v1, v3);
}

uint64_t sub_1003B5304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  __chkstk_darwin();
  v9 = &v18 - v8;
  sub_100009DCC(&qword_1006F0ED8, &unk_10059BBA0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v13 = *(v12 + 56);
  sub_10000CC8C(a1, &v18 - v10, &qword_1006F0B88, &qword_10059B7C8);
  sub_10000CC8C(a2, &v11[v13], &qword_1006F0B88, &qword_10059B7C8);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_10000CC8C(v11, v9, &qword_1006F0B88, &qword_10059B7C8);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_1003B6760(&v11[v13], v7);
      v16 = static Notice.== infix(_:_:)();
      sub_1002EF52C(v7);
      sub_1002EF52C(v9);
      sub_10001036C(v11, &qword_1006F0B88, &qword_10059B7C8);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    sub_1002EF52C(v9);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_10001036C(v11, &qword_1006F0ED8, &unk_10059BBA0);
    v15 = 1;
    return v15 & 1;
  }

  sub_10001036C(v11, &qword_1006F0B88, &qword_10059B7C8);
  v15 = 0;
  return v15 & 1;
}

char *sub_1003B55A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10056F9B8();
  __chkstk_darwin();
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v6 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  sub_1003B1520(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  v7 = sub_10056FAA8();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7, v6[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter(0);
  sub_100570668();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(sub_100009DCC(&qword_1006F0EE0, &unk_10059BBB0));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = sub_10056F418();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  sub_10056F998();
  sub_10056F3E8();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  sub_1003B5148(a2);
  return v22;
}

void _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(uint64_t a1, char a2)
{
  v3 = v2;
  v48 = a1;
  v46 = sub_100570BF8();
  v5 = *(v46 - 8);
  __chkstk_darwin();
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v42 - v8;
  v10 = sub_100570B88();
  __chkstk_darwin();
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Notice(0);
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  if ((a2 & 1) == 0 || *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
  {
    v42[1] = v10;
    v42[2] = v12;
    v43 = v7;
    v44 = v9;
    v45 = v5;
    swift_getKeyPath();
    aBlock = v3;
    sub_1003B6C20(&qword_1006F0B80, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_10056CEF8();

    v15 = v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler;
    swift_beginAccess();
    v16 = *v15;
    v17 = &off_1006F0000;
    if (*v15)
    {
      v18 = *(v15 + 8);
      v42[0] = v13;
      swift_getKeyPath();
      aBlock = v3;

      sub_10056CEF8();

      aBlock = v3;
      swift_getKeyPath();
      sub_10056CF18();

      v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      sub_1003B1520(v3 + v19, &aBlock);
      v16(&aBlock);
      sub_1000F3E14(v16, v18);
      sub_1003B1520(v3 + v19, v50);
      swift_beginAccess();
      v20 = v3 + v19;
      v17 = &off_1006F0000;
      sub_1003B5220(&aBlock, v20);
      swift_endAccess();
      sub_1003B1558(v50);
      sub_1003B5148(v50);
      sub_1003B5148(&aBlock);
      aBlock = v3;
      v13 = v42[0];
      swift_getKeyPath();
      sub_10056CF08();
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_10056CEF8();

    v21 = v17[364];
    swift_beginAccess();
    sub_1003B1520(v21 + v3, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1003B5148(&aBlock);
    if (Strong)
    {
      sub_1003B0D90(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_10056CEF8();

    v23 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v24 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v24)
    {
      *(v24 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_10056CEF8();

    v25 = *(v3 + v23);
    if (v25)
    {
      [v25 makeKeyAndVisible];
    }

    v26 = objc_opt_self();
    sub_1003B67C4(v48, v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v3;
    sub_1003B6760(v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1003B6BB4;
    *(v29 + 24) = v28;
    v55 = sub_10019CED8;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1001D41F8;
    v54 = &unk_1006A0AA8;
    v30 = _Block_copy(&aBlock);

    [v26 performWithoutAnimation:v30];
    _Block_release(v30);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      v31 = v47;
      v32 = (v48 + *(v47 + 36));
      if ((v32[1] & 1) == 0)
      {
        v33 = *v32;
        v34 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v34 notificationOccurred:v33];
      }

      if (*(v48 + *(v31 + 40)) == 1)
      {
        v55 = sub_1003B6C18;
        v56 = v3;
        aBlock = _NSConcreteStackBlock;
        v52 = 1107296256;
        v53 = sub_10007885C;
        v54 = &unk_1006A0AD0;
        _Block_copy(&aBlock);
        v49[0] = _swiftEmptyArrayStorage;
        sub_1003B6C20(&qword_1006EF668, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

        sub_100009DCC(&qword_1006EF670, &unk_1005A3920);
        sub_100010BC0(&qword_1006EF678, &qword_1006EF670, &unk_1005A3920, &protocol conformance descriptor for [A]);
        sub_100573DA8();
        sub_100570C28();
        swift_allocObject();
        v35 = sub_100570C08();

        sub_1000D3B98(0, &qword_1006F3420, OS_dispatch_queue_ptr);
        v36 = sub_1005735E8();
        v37 = v43;
        sub_100570BE8();
        v38 = v44;
        sub_100570C58();
        v39 = *(v45 + 8);
        v40 = v37;
        v41 = v46;
        v39(v40, v46);
        sub_1005735B8();

        v39(v38, v41);
        swift_getKeyPath();
        __chkstk_darwin();
        v42[-2] = v3;
        v42[-1] = v35;
        aBlock = v3;
        sub_10056CEE8();
      }
    }
  }
}

uint64_t sub_1003B6198()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1003B6208()
{
  result = qword_1006F0BC0;
  if (!qword_1006F0BC0)
  {
    sub_100010324(&qword_1006F0BA8, &unk_10059B838);
    sub_100010BC0(&qword_1006F0BC8, &qword_1006F0BB0, &qword_10059B848, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006F0930, &qword_1006F0938, &qword_10059B4A0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0BC0);
  }

  return result;
}

unint64_t sub_1003B62EC()
{
  result = qword_1006F0950;
  if (!qword_1006F0950)
  {
    sub_1000D3B98(255, &qword_1006F0958, UIWindowScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0950);
  }

  return result;
}

void sub_1003B6378(uint64_t a1)
{
  sub_1003B6464(319);
  if (v1 <= 0x3F)
  {
    sub_10056CF38();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003B6464(uint64_t a1)
{
  if (!qword_1006F0C18)
  {
    type metadata accessor for Notice(255);
    v1 = sub_100573C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F0C18);
    }
  }
}

uint64_t sub_1003B64BC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1003B64D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1003B6500(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003B6544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1003B65EC(void *a1)
{
  sub_10056ECA8();
  sub_1003B6650();
  return swift_getWitnessTable();
}

unint64_t sub_1003B6650()
{
  result = qword_1006F0E70;
  if (!qword_1006F0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0E70);
  }

  return result;
}

uint64_t sub_1003B66A4()
{
  sub_100010324(&qword_1006F0BA8, &unk_10059B838);
  sub_100010324(&qword_1006F08C8, &qword_10059B410);
  sub_1003B6208();
  sub_1003ADBE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1003B6760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B67C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B6840()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003B6894()
{

  return swift_deallocObject();
}

uint64_t sub_1003B68E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003B6918(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B69A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F0B88, &qword_10059B7C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B6A14()
{
  v1 = type metadata accessor for Notice(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_100571E58();
      (*(*(v8 - 8) + 8))(v3 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

void sub_1003B6BB4()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1003B0F6C(v2, v3);
}

uint64_t sub_1003B6C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003B6C90()
{

  return swift_deallocObject();
}

unint64_t sub_1003B6CF4()
{
  result = qword_1006F0EE8;
  if (!qword_1006F0EE8)
  {
    sub_100010324(&qword_1006F0E88, &qword_10059BB28);
    sub_100010BC0(&qword_1006F0EF0, &qword_1006F0E78, &qword_10059BB18, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0EE8);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  sub_100570668();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  sub_10056E7A8();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  sub_100570668();
  *v8 = v10;
  *(v8 + 8) = v11;
  return sub_1003BBBC8(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  sub_1003B7180();
  sub_10056F1A8();
  return v1;
}

double sub_1003B6F78@<D0>(uint64_t a1@<X8>)
{
  sub_1003B7180();
  sub_10056F1A8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_1003B6FD0@<D0>(uint64_t a1@<X8>)
{
  sub_1003B7180();
  sub_10056F1A8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1003B7028(uint64_t *a1)
{
  sub_1003B744C(*a1, a1[1]);
  sub_1003B7180();
  return sub_10056F1B8();
}

unint64_t sub_1003B7180()
{
  result = qword_1006F0EF8;
  if (!qword_1006F0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0EF8);
  }

  return result;
}

uint64_t sub_1003B7210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = sub_10056F198();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    sub_1003B744C(*v5, v7);
  }

  else
  {

    v9 = sub_100573438();
    v10 = sub_10056F9D8();
    sub_10056DE58(v9, &_mh_execute_header, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();
    v11 = sub_1003B73FC(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1, v11);
    return v13[1];
  }

  return v6;
}

double sub_1003B73FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1003B7408(a1, a2);
  }

  return result;
}

double sub_1003B7408(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003B744C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v111 = sub_100009DCC(&qword_1006F0F00, &qword_10059BBE8);
  __chkstk_darwin();
  v110 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v106 - v4;
  v137 = sub_10056EBD8();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v135 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v106 - v6;
  v108 = sub_100009DCC(&qword_1006F0F08, &qword_10059BBF0);
  __chkstk_darwin();
  v107 = &v106 - v7;
  v132 = sub_10056E638();
  v131 = *(v132 - 8);
  __chkstk_darwin();
  v130 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for NoticeView(0);
  v119 = *(v144 - 8);
  __chkstk_darwin();
  v142 = v9;
  v143 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10056F5E8();
  __chkstk_darwin();
  v116 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100009DCC(&qword_1006F0F10, &qword_10059BBF8);
  __chkstk_darwin();
  v129 = &v106 - v11;
  v12 = type metadata accessor for NoticeView.Content(0) - 8;
  __chkstk_darwin();
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009DCC(&qword_1006F0F18, &qword_10059BC00) - 8;
  __chkstk_darwin();
  v17 = &v106 - v16;
  v18 = sub_100009DCC(&qword_1006F0F20, &qword_10059BC08) - 8;
  __chkstk_darwin();
  v20 = &v106 - v19;
  *&v114 = sub_100009DCC(&qword_1006F0F28, &qword_10059BC10);
  __chkstk_darwin();
  v22 = &v106 - v21;
  v115 = sub_100009DCC(&qword_1006F0F30, &qword_10059BC18);
  __chkstk_darwin();
  v24 = &v106 - v23;
  v141 = sub_100009DCC(&qword_1006F0F38, &qword_10059BC20);
  __chkstk_darwin();
  v140 = &v106 - v25;
  v126 = sub_100009DCC(&qword_1006F0F40, &qword_10059BC28);
  v123 = *(v126 - 8);
  __chkstk_darwin();
  v120 = &v106 - v26;
  v127 = sub_100009DCC(&qword_1006F0F48, &qword_10059BC30);
  v124 = *(v127 - 8);
  __chkstk_darwin();
  v121 = &v106 - v27;
  v118 = sub_100009DCC(&qword_1006F0F50, &qword_10059BC38);
  __chkstk_darwin();
  v125 = &v106 - v28;
  v122 = sub_100009DCC(&qword_1006F0F58, &qword_10059BC40);
  __chkstk_darwin();
  v128 = &v106 - v29;
  v139 = sub_100009DCC(&qword_1006F0F60, &qword_10059BC48);
  __chkstk_darwin();
  v138 = &v106 - v30;
  v31 = v2;
  sub_1003BBC30(v2, v14, type metadata accessor for Notice);
  *&v14[*(v12 + 36)] = swift_getKeyPath();
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v12 + 40)] = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEE30, &unk_10059CFF0);
  swift_storeEnumTagMultiPayload();
  *&v152 = 0x4041000000000000;
  sub_1003BBB20();
  sub_10056E7F8();
  *&v152 = 0x4010000000000000;
  sub_1003BBB74();
  sub_10056E7F8();
  sub_1005709E8();
  sub_10056EDF8();
  sub_1003BBBC8(v14, v17, type metadata accessor for NoticeView.Content);
  v32 = &v17[*(v15 + 44)];
  v33 = v157;
  *(v32 + 4) = v156;
  *(v32 + 5) = v33;
  *(v32 + 6) = v158;
  v34 = v153;
  *v32 = v152;
  *(v32 + 1) = v34;
  v35 = v155;
  *(v32 + 2) = v154;
  *(v32 + 3) = v35;
  v36 = &v20[*(v18 + 44)];
  sub_1005709A8();
  LOBYTE(v18) = sub_10056FA38();
  v36[*(sub_100009DCC(&qword_1006F0F78, &qword_10059BCC0) + 36)] = v18;
  sub_100019B40(v17, v20, &qword_1006F0F18, &qword_10059BC00);
  if (qword_1006EEAE8 != -1)
  {
    swift_once();
  }

  v37 = static Corner.extraLarge;
  v38 = unk_1006FE2E0;
  v39 = byte_1006FE2E8;
  sub_100019B40(v20, v22, &qword_1006F0F20, &qword_10059BC08);
  v40 = &v22[*(v114 + 36)];
  *v40 = v37;
  *(v40 + 1) = v38;
  v40[16] = v39;
  v41 = v2 + *(v144 + 28);
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  v45 = *(v41 + 24);
  LOBYTE(v148) = *v41;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  sub_100009DCC(&qword_1006F0F80, &qword_10059BCC8);
  sub_10056E7B8();
  if (v145)
  {
    v46 = 0.4;
  }

  else
  {
    v46 = 1.0;
  }

  sub_100019B40(v22, v24, &qword_1006F0F28, &qword_10059BC10);
  *&v24[*(v115 + 36)] = v46;
  v47 = sub_100570A28();
  LOBYTE(v148) = v42;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  sub_10056E7B8();
  v48 = v145;
  v49 = v24;
  v50 = v140;
  sub_100019B40(v49, v140, &qword_1006F0F30, &qword_10059BC18);
  v51 = v50 + *(v141 + 36);
  *v51 = v47;
  *(v51 + 8) = v48;
  sub_10056F718();
  v52 = v129;
  sub_10056E6C8();
  LOBYTE(v148) = v42;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  sub_10056E7C8();
  LODWORD(v116) = v145;
  v115 = v146;
  v114 = v147;
  v113 = v31;
  v53 = v143;
  v117 = type metadata accessor for NoticeView;
  sub_1003BBC30(v31, v143, type metadata accessor for NoticeView);
  v54 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v55 = swift_allocObject();
  v119 = type metadata accessor for NoticeView;
  sub_1003BBBC8(v53, v55 + v54, type metadata accessor for NoticeView);
  v56 = sub_100009DCC(&qword_1006F0F88, &qword_10059BCD0);
  v57 = v52 + *(v56 + 44);
  *v57 = v116;
  *(v57 + 8) = v115;
  *(v57 + 16) = v114;
  v58 = (v52 + *(v56 + 48));
  *v58 = sub_1003BBC9C;
  v58[1] = v55;
  v59 = v130;
  sub_10056E628();
  sub_1003BBC30(v31, v53, type metadata accessor for NoticeView);
  v60 = swift_allocObject();
  sub_1003BBBC8(v53, v60 + v54, type metadata accessor for NoticeView);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1003BBF20;
  *(v61 + 24) = v60;
  v62 = v133;
  v63 = v132;
  sub_1005708F8();

  (*(v131 + 8))(v59, v63);
  sub_10056E6E8();
  v64 = sub_1003BBF70();
  v65 = sub_100010BC0(&qword_1006F0FD8, &qword_1006F0F10, &qword_10059BBF8, &protocol conformance descriptor for SequenceGesture<A, B>);
  v66 = v120;
  v67 = v141;
  v68 = v140;
  sub_1005702E8();
  sub_10001036C(v52, &qword_1006F0F10, &qword_10059BBF8);
  sub_10001036C(v68, &qword_1006F0F38, &qword_10059BC20);
  v69 = v113;
  v70 = v143;
  sub_1003BBC30(v113, v143, v117);
  v71 = swift_allocObject();
  sub_1003BBBC8(v70, v71 + v54, v119);
  type metadata accessor for Notice(0);
  v148 = v67;
  v149 = v62;
  v150 = v64;
  v151 = v65;
  swift_getOpaqueTypeConformance2();
  sub_1003BC334(&qword_1006F0FE0, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
  v72 = v121;
  v73 = v126;
  sub_100570348();

  (*(v123 + 8))(v66, v73);
  v74 = v125;
  v75 = &v125[*(v118 + 36)];
  sub_100009DCC(&qword_1006F0FE8, &qword_10059BCE0);
  sub_10056EE38();
  *v75 = swift_getKeyPath();
  (*(v124 + 32))(v74, v72, v127);
  v76 = (v69 + *(v144 + 24));
  v77 = *v76;
  v78 = v76[1];
  v148 = v77;
  v149 = v78;
  sub_100009DCC(&qword_1006F0FF0, &qword_10059BD18);
  sub_100570678();
  v79 = v145;
  sub_100570B48();
  v81 = v80;
  v83 = v82;
  v84 = v74;
  v85 = v128;
  sub_100019B40(v84, v128, &qword_1006F0F50, &qword_10059BC38);
  v86 = (v85 + *(v122 + 36));
  *v86 = v79;
  v86[1] = v79;
  v86[2] = v81;
  v86[3] = v83;
  sub_100570A08();
  v87 = sub_100570A18();

  v88 = v138;
  v89 = &v138[*(v139 + 36)];
  v90 = sub_100009DCC(&qword_1006F0FF8, &unk_10059BD20);
  sub_1003BBC30(v69, v89 + *(v90 + 36), type metadata accessor for Notice);
  *v89 = v87;
  sub_100019B40(v85, v88, &qword_1006F0F58, &qword_10059BC40);
  v91 = v136;
  v92 = *(v136 + 104);
  v93 = v134;
  v94 = v137;
  v92(v134, enum case for DynamicTypeSize.xSmall(_:), v137);
  v95 = v135;
  v92(v135, enum case for DynamicTypeSize.accessibility2(_:), v94);
  sub_1003BC334(&qword_1006EFB78, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1005727C8();
  if (result)
  {
    v97 = v93;
    v98 = *(v91 + 32);
    v99 = v109;
    v98(v109, v97, v94);
    v100 = v111;
    v98((v99 + *(v111 + 48)), v95, v94);
    v101 = v110;
    sub_10000CC8C(v99, v110, &qword_1006F0F00, &qword_10059BBE8);
    v102 = *(v100 + 48);
    v103 = v107;
    v98(v107, v101, v94);
    v104 = *(v91 + 8);
    v104(v101 + v102, v94);
    sub_100019B40(v99, v101, &qword_1006F0F00, &qword_10059BBE8);
    v98((v103 + *(v108 + 36)), (v101 + *(v100 + 48)), v94);
    v104(v101, v94);
    sub_1003BC4B0();
    sub_100010BC0(&qword_1006F1028, &qword_1006F0F08, &qword_10059BBF0, &protocol conformance descriptor for ClosedRange<A>);
    v105 = v138;
    sub_1005700D8();
    sub_10001036C(v103, &qword_1006F0F08, &qword_10059BBF0);
    return sub_10001036C(v105, &qword_1006F0F60, &qword_10059BC48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003B8864(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  if ((*(a4 + *(result + 10)) & 1) != 0 || *(a4 + *(result + 8)) && (type metadata accessor for NoticeView(0), sub_100009DCC(&qword_1006F12F8, &qword_10059F360), result = sub_100570678(), (v7 & 1) == 0))
  {
    *a2 = 1;
  }

  return result;
}

double sub_1003B8900(uint64_t a1)
{
  type metadata accessor for NoticeView(0);
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570678();
  if ((v5 & 1) == 0)
  {
    sub_100570688();
    v2 = *(a1 + *(type metadata accessor for Notice(0) + 32));
    if (v2)
    {
      v2();
    }
  }

  if (*(a1 + *(type metadata accessor for Notice(0) + 40)) == 1)
  {
    NoticeView.dismiss.getter();
    if (v4)
    {
      sub_100009DCC(&qword_1006F4470, &qword_10059B010);
      sub_100570808();
    }
  }

  return result;
}

void sub_1003B8A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(type metadata accessor for NoticeView(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  sub_100570A08();
  v10 = a3;
  sub_10056EA28();

  sub_1003BDDE4();
  v6 = sub_1005735E8();
  sub_1003BBC30(a3, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoticeView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1003BBBC8(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for NoticeView);
  OS_dispatch_queue.asyncAfter(_:block:)(sub_1003BDE30, v8, 0.215);
}

double sub_1003B8BEC(uint64_t a1)
{
  sub_100570A08();
  sub_10056EA28();

  return result;
}

uint64_t sub_1003B8C74(double a1)
{
  type metadata accessor for NoticeView(0);
  sub_100009DCC(&qword_1006F0FF0, &qword_10059BD18);
  return sub_100570688();
}

uint64_t sub_1003B8CFC@<X0>(void *a1@<X8>)
{
  v3 = sub_10056F198();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for NoticeView.Content(0);
  sub_10000CC8C(v1 + *(v9 + 28), v8, &unk_1006F2270, &qword_100597260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10056EBD8();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_100573438();
    v13 = sub_10056F9D8();
    sub_10056DE58(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1003B8F04@<X0>(void *a1@<X8>)
{
  v3 = sub_10056F198();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006EEE30, &unk_10059CFF0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for NoticeView.Content(0);
  sub_10000CC8C(v1 + *(v9 + 32), v8, &unk_1006EEE30, &unk_10059CFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10056EC88();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_100573438();
    v13 = sub_10056F9D8();
    sub_10056DE58(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 sub_1003B910C@<Q0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006F11D0, &qword_10059BEB8);
  __chkstk_darwin();
  v4 = &v15 - v3;
  sub_10056EBD8();
  __chkstk_darwin();
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003BBC30(v1, v8, type metadata accessor for Notice);
  sub_1003B8CFC(v6);
  sub_1003BD2B4(v8, v6, v16);
  if (sub_1003B92F0())
  {
    v9 = sub_10056F1F8();
  }

  else
  {
    v9 = sub_10056F218();
  }

  v10 = v17;
  *v4 = v9;
  *(v4 + 1) = v10;
  v4[16] = 0;
  v11 = sub_100009DCC(&qword_1006F11D8, &qword_10059BEC0);
  sub_1003B9504(v1, v16, &v4[*(v11 + 44)]);
  v12 = sub_10056FA38();
  sub_100019B40(v4, a1, &qword_1006F11D0, &qword_10059BEB8);
  v13 = a1 + *(sub_100009DCC(&qword_1006F11E0, &qword_10059BEC8) + 36);
  *v13 = v12;
  result = v16[0];
  *(v13 + 24) = v16[1];
  *(v13 + 8) = result;
  *(v13 + 40) = 0;
  return result;
}

BOOL sub_1003B92F0()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F12B0, &qword_10059BFE8);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = sub_10056EBD8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003B8CFC(v7);
  v8 = sub_10056EBB8();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = type metadata accessor for Notice(0);
    v10 = (v1 + *(v9 + 28));
    v11 = v10[1];
    if (v11)
    {
      v12 = *v10 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v12)
      {
        sub_10000CC8C(v1 + *(v9 + 20), v3, &qword_1006F12B0, &qword_10059BFE8);
        v14 = type metadata accessor for Notice.Thumbnail(0);
        if ((*(*(v14 - 8) + 48))(v3, 1, v14) != 1)
        {
          v16 = swift_getEnumCaseMultiPayload() == 1;
          sub_1003BDD60(v3, type metadata accessor for Notice.Thumbnail);
          return v16;
        }

        sub_10001036C(v3, &qword_1006F12B0, &qword_10059BFE8);
      }
    }
  }

  return 0;
}

uint64_t sub_1003B9504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v33 = a1;
  sub_100009DCC(&qword_1006F11E8, &qword_10059BED0);
  __chkstk_darwin();
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v33 - v5;
  v7 = sub_100009DCC(&qword_1006F11F0, &qword_10059BED8) - 8;
  __chkstk_darwin();
  v9 = &v33 - v8;
  v10 = sub_100009DCC(&qword_1006F11F8, &qword_10059BEE0) - 8;
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = sub_100009DCC(&qword_1006F1200, &qword_10059BEE8) - 8;
  __chkstk_darwin();
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  __chkstk_darwin();
  v18 = &v33 - v17;
  sub_1003B9950(a1, v9);
  sub_10056FB08();
  sub_10056FB88();
  v19 = sub_10056FBE8();

  KeyPath = swift_getKeyPath();
  v21 = &v9[*(sub_100009DCC(&qword_1006F1208, &qword_10059BF20) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  *&v9[*(v7 + 44)] = sub_10056F6C8();
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v9, v12, &qword_1006F11F0, &qword_10059BED8);
  v22 = &v12[*(v10 + 44)];
  v23 = v43;
  *(v22 + 4) = v42;
  *(v22 + 5) = v23;
  *(v22 + 6) = v44;
  v24 = v39;
  *v22 = v38;
  *(v22 + 1) = v24;
  v25 = v41;
  *(v22 + 2) = v40;
  *(v22 + 3) = v25;
  sub_100019B40(v12, v16, &qword_1006F11F8, &qword_10059BEE0);
  v26 = &v16[*(v13 + 44)];
  *v26 = 0x3FF0000000000000;
  *(v26 + 4) = 0;
  sub_100019B40(v16, v18, &qword_1006F1200, &qword_10059BEE8);
  *v6 = sub_10056F378();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v27 = sub_100009DCC(&qword_1006F1210, &qword_10059BF28);
  sub_1003BA38C(v33, v36, &v6[*(v27 + 44)]);
  v28 = v34;
  sub_10000CC8C(v18, v34, &qword_1006F1200, &qword_10059BEE8);
  v29 = v35;
  sub_10000CC8C(v6, v35, &qword_1006F11E8, &qword_10059BED0);
  v30 = v37;
  sub_10000CC8C(v28, v37, &qword_1006F1200, &qword_10059BEE8);
  v31 = sub_100009DCC(&qword_1006F1218, &qword_10059BF30);
  sub_10000CC8C(v29, v30 + *(v31 + 48), &qword_1006F11E8, &qword_10059BED0);
  sub_10001036C(v6, &qword_1006F11E8, &qword_10059BED0);
  sub_10001036C(v18, &qword_1006F1200, &qword_10059BEE8);
  sub_10001036C(v29, &qword_1006F11E8, &qword_10059BED0);
  return sub_10001036C(v28, &qword_1006F1200, &qword_10059BEE8);
}

uint64_t sub_1003B9950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = sub_100009DCC(&qword_1006F1278, &qword_10059BFB0);
  __chkstk_darwin();
  v4 = &v46 - v3;
  v63 = sub_100009DCC(&qword_1006F1280, &qword_10059BFB8);
  __chkstk_darwin();
  v6 = &v46 - v5;
  v50 = sub_10056CE88();
  v48 = *(v50 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006F1288, &qword_10059BFC0);
  __chkstk_darwin();
  v51 = &v46 - v9;
  v61 = sub_100009DCC(&qword_1006F1290, &qword_10059BFC8);
  __chkstk_darwin();
  v54 = &v46 - v10;
  v55 = sub_100571E58();
  v53 = *(v55 - 8);
  __chkstk_darwin();
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v46 - v12;
  v13 = sub_100009DCC(&qword_1006F1298, &qword_10059BFD0);
  __chkstk_darwin();
  v15 = &v46 - v14;
  v57 = sub_100009DCC(&qword_1006F12A0, &qword_10059BFD8);
  __chkstk_darwin();
  v58 = (&v46 - v16);
  v17 = sub_100009DCC(&qword_1006F12A8, &qword_10059BFE0);
  __chkstk_darwin();
  v59 = &v46 - v18;
  sub_100009DCC(&qword_1006F12B0, &qword_10059BFE8);
  __chkstk_darwin();
  v20 = (&v46 - v19);
  v21 = *(type metadata accessor for Notice(0) + 20);
  v52 = a1;
  sub_10000CC8C(a1 + v21, v20, &qword_1006F12B0, &qword_10059BFE8);
  v22 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1003BDA44();
    sub_10056F5B8();
    v23 = &qword_1006F1280;
    v24 = &qword_10059BFB8;
    sub_10000CC8C(v6, v15, &qword_1006F1280, &qword_10059BFB8);
    swift_storeEnumTagMultiPayload();
    sub_1003BDB00();
    sub_1003BDCD4();
    sub_10056F5B8();
    v25 = v6;
LABEL_9:
    v41 = v23;
    v42 = v24;
    return sub_10001036C(v25, v41, v42);
  }

  v46 = v15;
  v56 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v58 = *v20;
    swift_storeEnumTagMultiPayload();
    sub_1003BDB8C();

    v40 = v59;
    sub_10056F5B8();
    v23 = &qword_1006F12A8;
    v24 = &qword_10059BFE0;
    sub_10000CC8C(v40, v46, &qword_1006F12A8, &qword_10059BFE0);
    swift_storeEnumTagMultiPayload();
    sub_1003BDB00();
    sub_1003BDCD4();
    sub_10056F5B8();

    v25 = v40;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1005704D8();
    (*(v48 + 104))(v49, enum case for CircularProgressView.LineStyle.round(_:), v50);
    LOBYTE(v65) = 1;
    v43 = v51;
    sub_10056CE78();
    sub_1005709E8();
    sub_10056E888();
    v44 = (v43 + *(v8 + 36));
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    v44[2] = v67;
    sub_10000CC8C(v43, v4, &qword_1006F1288, &qword_10059BFC0);
    swift_storeEnumTagMultiPayload();
    sub_1003BDA44();
    sub_10056F5B8();
    sub_10000CC8C(v6, v46, &qword_1006F1280, &qword_10059BFB8);
    swift_storeEnumTagMultiPayload();
    sub_1003BDB00();
    sub_1003BDCD4();
    sub_10056F5B8();
    sub_10001036C(v6, &qword_1006F1280, &qword_10059BFB8);
    v25 = v43;
    v41 = &qword_1006F1288;
    v42 = &qword_10059BFC0;
    return sub_10001036C(v25, v41, v42);
  }

  v62 = v13;
  v27 = v53;
  v28 = v60;
  v29 = v55;
  (*(v53 + 32))(v60, v20, v55);
  (*(v27 + 16))(v47, v28, v29);
  type metadata accessor for NoticeView.Content(0);
  sub_100009DCC(&qword_1006F10F8, &qword_10059BDE0);
  sub_10056E808();
  v30 = v54;
  sub_10056DC78();
  sub_100009DCC(&qword_1006F1100, &qword_10059BDE8);
  sub_10056E808();
  v31 = v65;
  v32 = v30 + *(sub_100009DCC(&qword_1006F12E0, &unk_10059BFF0) + 36);
  *v32 = v31;
  *(v32 + 8) = -1;
  *(v32 + 16) = 0;
  if (qword_1006EEAF0 != -1)
  {
    swift_once();
  }

  v33 = static Border.artwork;
  v34 = qword_1006FE2F8;
  v35 = byte_1006FE300;
  sub_10056E808();
  v36 = v65;
  v37 = v30 + *(v61 + 36);
  *v37 = v33;
  *(v37 + 8) = v34;
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  *(v37 + 32) = -1;
  *(v37 + 40) = 0;
  sub_10000CC8C(v30, v58, &qword_1006F1290, &qword_10059BFC8);
  swift_storeEnumTagMultiPayload();
  sub_1003BDB8C();

  v38 = v59;
  sub_10056F5B8();
  sub_10000CC8C(v38, v46, &qword_1006F12A8, &qword_10059BFE0);
  swift_storeEnumTagMultiPayload();
  sub_1003BDB00();
  sub_1003BDCD4();
  sub_10056F5B8();
  sub_10001036C(v38, &qword_1006F12A8, &qword_10059BFE0);
  sub_10001036C(v30, &qword_1006F1290, &qword_10059BFC8);
  return (*(v27 + 8))(v60, v29);
}

void sub_1003BA38C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v63 = a3;
  v64 = sub_10056FBF8();
  v61 = *(v64 - 8);
  __chkstk_darwin();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006F1220, &qword_10059BF38);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v73 = &v57 - v7;
  v72 = sub_100009DCC(&qword_1006F1228, &qword_10059BF40);
  __chkstk_darwin();
  v77 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v57 - v9;
  __chkstk_darwin();
  v76 = &v57 - v10;
  v11 = *(type metadata accessor for Notice(0) + 28);
  v71 = a1;
  v12 = (a1 + v11);
  v13 = v12[1];
  if (v13)
  {
    *&v79 = *v12;
    *(&v79 + 1) = v13;
    sub_10037AD68();

    v14 = sub_10056FF28();
    v16 = v15;
    v18 = v17;
    sub_10056FC48();
    v19 = sub_10056FE88();
    v21 = v20;
    v23 = v22;

    sub_10001B5A4(v14, v16, v18 & 1);

    LODWORD(v79) = sub_10056F6F8();
    v24 = sub_10056FE28();
    v26 = v25;
    LOBYTE(v14) = v27;
    v29 = v28;
    sub_10001B5A4(v19, v21, v23 & 1);

    KeyPath = swift_getKeyPath();
    v69 = v24;
    v68 = v26;
    v65 = v14 & 1;
    sub_10002AAC4(v24, v26, v14 & 1);
    v67 = v29;

    v66 = KeyPath;

    v62 = 2;
  }

  else
  {
    v69 = 0;
    v68 = 0;
    v65 = 0;
    v67 = 0;
    v66 = 0;
    v62 = 0;
  }

  sub_1003BAA9C(v71, &v79);
  v78 = *(&v79 + 1);
  v31 = v79;
  v32 = v81;
  v59 = v80;
  v58 = v82;
  v33 = v83;
  sub_10056FB08();
  v34 = v61;
  v35 = v64;
  (*(v61 + 104))(v5, enum case for Font.Leading.tight(_:), v64);
  sub_10056FC28();

  v36 = v5;
  v37 = v32;
  v38 = v59;
  v39 = v35;
  v40 = v58;
  (*(v34 + 8))(v36, v39);
  sub_10056FB88();
  v41 = sub_10056FBE8();

  v42 = swift_getKeyPath();
  v90 = v33;
  v60 = v31;
  *&v79 = v31;
  *(&v79 + 1) = v78;
  v80 = v38;
  v81 = v37;
  v61 = v37;
  v82 = v40;
  LODWORD(v64) = v33;
  v83 = v33;
  v84 = v88;
  v85 = v89;
  v86 = v42;
  v87 = v41;
  if (sub_1003B92F0())
  {
    type metadata accessor for NoticeView.Content(0);
    sub_100009DCC(&qword_1006F10F8, &qword_10059BDE0);
    sub_10056E808();
  }

  sub_100009DCC(&qword_1006F1230, &qword_10059BF48);
  sub_1003BD66C();
  v43 = v73;
  sub_1005700C8();
  sub_1003BD8B0(v60, v78, v38, v61, v40, v64);

  v44 = swift_getKeyPath();
  v45 = v70;
  (*(v74 + 32))(v70, v43, v75);
  v46 = v45 + *(v72 + 36);
  *v46 = v44;
  *(v46 + 8) = 4;
  *(v46 + 16) = 0;
  v47 = v76;
  sub_100019B40(v45, v76, &qword_1006F1228, &qword_10059BF40);
  v48 = v77;
  sub_10000CC8C(v47, v77, &qword_1006F1228, &qword_10059BF40);
  v49 = v69;
  v50 = v63;
  v51 = v68;
  *v63 = v69;
  v50[1] = v51;
  v52 = v65;
  v53 = v67;
  v50[2] = v65;
  v50[3] = v53;
  v54 = v66;
  v55 = v62;
  v50[4] = v66;
  v50[5] = v55;
  *(v50 + 48) = 0;
  v56 = sub_100009DCC(&qword_1006F1270, &unk_10059BFA0);
  sub_10000CC8C(v48, v50 + *(v56 + 48), &qword_1006F1228, &qword_10059BF40);
  sub_1003BD9A4(v49, v51, v52, v53);
  sub_1003BD9F4(v49, v51, v52, v53, v54);
  sub_10001036C(v47, &qword_1006F1228, &qword_10059BF40);
  sub_10001036C(v48, &qword_1006F1228, &qword_10059BF40);
  sub_1003BD9F4(v49, v51, v52, v53, v54);
}

void sub_1003BAA9C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v130 = a2;
  v3 = sub_10056CC18();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v128 = &v122[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10056EC88();
  v129 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v122[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v122[-v9];
  sub_100009DCC(&qword_1006EF998, &qword_100599528);
  __chkstk_darwin();
  v12 = &v122[-v11];
  v13 = type metadata accessor for Notice(0);
  if (*(a1 + *(v13 + 32)))
  {
    v126 = v3;
    sub_1003B8CFC(v12);
    v14 = sub_10056EBD8();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
    v15 = sub_100573798();
    v16 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v15];

    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v18];
    v20 = [v19 fontDescriptorWithSymbolicTraits:32770];

    v127 = v4;
    if (v20)
    {

      v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    }

    else
    {
      v21 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v18];
      v20 = v18;
    }

    v22 = v21;

    v23 = [objc_opt_self() configurationWithFont:v22 scale:1];
    v24 = sub_100572898();
    v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

    if (v25)
    {
      v26 = [v25 imageWithRenderingMode:2];

      v27 = v127;
      if (v26)
      {
        sub_1003B8F04(v10);
        v28 = v129;
        (v129)[13](v8, enum case for LayoutDirection.rightToLeft(_:), v6);
        v29 = sub_10056EC78();
        v30 = v28[1];
        v30(v8, v6);
        v30(v10, v6);
        v125 = v26;
        if (v29)
        {
          v31 = objc_opt_self();
          v32 = (a1 + *(v13 + 24));
          v34 = *v32;
          v33 = v32[1];
          v35 = sub_100572898();
          v36 = [v31 dominantLanguageForString:v35];

          if (v36)
          {
            sub_1005728D8();
            v37 = v128;
            sub_10056CBD8();
            v38 = sub_10056CBF8();
            (*(v27 + 8))(v37, v126);
            if (v38 == 1)
            {
              v39 = v26;
              sub_100570538();
              v40 = sub_10056FF38();
              v42 = v41;
              v129 = v36;
              v44 = v43;
              LODWORD(v134) = sub_10056F6F8();
              v45 = sub_10056FE28();
              v47 = v46;
              v49 = v48;
              sub_10001B5A4(v40, v42, v44 & 1);

              String.nonBreakingSpace.unsafeMutableAddressor();

              v128 = sub_10056FE58();
              v127 = v50;
              LODWORD(v124) = v51;
              v126 = v52;

              sub_10001B5A4(v45, v47, v49 & 1);

              *&v134 = v34;
              *(&v134 + 1) = v33;
              sub_10037AD68();

              v53 = sub_10056FF28();
              v55 = v54;
              v57 = v56;
              LODWORD(v134) = sub_10056F6C8();
              v58 = sub_10056FE28();
              v60 = v59;
              LOBYTE(v40) = v61;
              sub_10001B5A4(v53, v55, v57 & 1);

              v62 = v128;
              v63 = v127;
              v64 = sub_10056FE58();
              v66 = v65;
              v123 = v67;
              v69 = v68;
              sub_10001B5A4(v58, v60, v40 & 1);

              sub_10001B5A4(v62, v63, v124 & 1);

              LOBYTE(v40) = v123 & 1;
              *&v131 = v64;
              *(&v131 + 1) = v66;
              *&v132 = v123 & 1;
              *(&v132 + 1) = v69;
              LOBYTE(v133) = 0;
              sub_10002AAC4(v64, v66, v123 & 1);

              sub_10002AAC4(v64, v66, v40);

              sub_10056F5B8();

              sub_10001B5A4(v64, v66, v40);

              sub_10001B5A4(v64, v66, v40);

LABEL_15:
              v132 = v135;
              v131 = v134;
              v133 = v136;
              sub_100009DCC(&qword_1006F1260, &unk_10059BF60);
              sub_1003BD834();
              sub_10056F5B8();

              v84 = v134;
              v85 = v135;
              goto LABEL_16;
            }
          }
        }

        v86 = (a1 + *(v13 + 24));
        v87 = v86[1];
        *&v134 = *v86;
        *(&v134 + 1) = v87;
        sub_10037AD68();

        v88 = sub_10056FF28();
        v90 = v89;
        v92 = v91;
        LODWORD(v134) = sub_10056F6C8();
        v93 = sub_10056FE28();
        v95 = v94;
        v97 = v96;
        sub_10001B5A4(v88, v90, v92 & 1);

        String.nonBreakingSpace.unsafeMutableAddressor();

        v129 = sub_10056FE58();
        v128 = v98;
        LODWORD(v126) = v99;
        v127 = v100;

        sub_10001B5A4(v93, v95, v97 & 1);

        v101 = v26;
        sub_100570538();
        v102 = sub_10056FF38();
        v104 = v103;
        v106 = v105;
        LODWORD(v134) = sub_10056F6F8();
        v107 = sub_10056FE28();
        v109 = v108;
        LOBYTE(v90) = v110;
        sub_10001B5A4(v102, v104, v106 & 1);

        v111 = v129;
        v112 = v128;
        v124 = sub_10056FE58();
        v114 = v113;
        v116 = v115;
        v118 = v117;
        sub_10001B5A4(v107, v109, v90 & 1);

        sub_10001B5A4(v111, v112, v126 & 1);

        *&v131 = v124;
        *(&v131 + 1) = v114;
        *&v132 = v116 & 1;
        *(&v132 + 1) = v118;
        LOBYTE(v133) = 1;
        sub_10056F5B8();
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v70 = (a1 + *(v13 + 24));
  v71 = v70[1];
  *&v134 = *v70;
  *(&v134 + 1) = v71;
  sub_10037AD68();

  v72 = sub_10056FF28();
  v74 = v73;
  v76 = v75;
  LODWORD(v134) = sub_10056F6C8();
  v77 = sub_10056FE28();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_10001B5A4(v72, v74, v76 & 1);

  *&v131 = v77;
  *(&v131 + 1) = v79;
  *&v132 = v81 & 1;
  *(&v132 + 1) = v83;
  v133 = 256;
  sub_100009DCC(&qword_1006F1260, &unk_10059BF60);
  sub_1003BD834();
  sub_10056F5B8();
  v84 = v134;
  v85 = v135;
LABEL_16:
  v119 = v136;
  v120 = v137;
  v121 = v130;
  *v130 = v84;
  v121[1] = v85;
  *(v121 + 32) = v119;
  *(v121 + 33) = v120;
}

uint64_t NoticeDismissal.presented.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_100009DCC(&qword_1006F4470, &qword_10059B010);
  sub_1005707F8();
  return v4;
}

void (*NoticeDismissal.presented.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 19) = a4 & 1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4 & 1;

  *(v9 + 64) = sub_100009DCC(&qword_1006F4470, &qword_10059B010);
  sub_1005707F8();
  return sub_1003BB7C0;
}

void sub_1003BB7C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_100570808();

  free(v1);
}

uint64_t NoticeDismissal.$presented.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_100009DCC(&qword_1006F4470, &qword_10059B010);
  sub_100570818();
  return v4;
}

void sub_1003BB88C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.noticeDismissal.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_1003B7180();
  sub_10056F1A8();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_1003BB938;
}

void sub_1003BB938(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    sub_1003B744C(v4, v5);
    sub_10056F1B8();
    sub_1003B7408(*v3, v3[1]);
  }

  else
  {
    sub_10056F1B8();
  }

  free(v3);
}

unint64_t sub_1003BBB20()
{
  result = qword_1006F0F68;
  if (!qword_1006F0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0F68);
  }

  return result;
}

unint64_t sub_1003BBB74()
{
  result = qword_1006F0F70;
  if (!qword_1006F0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0F70);
  }

  return result;
}

uint64_t sub_1003BBBC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003BBC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1003BBC9C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1003B8864(a1, a2, a3, v8);
}

uint64_t sub_1003BBD24()
{
  v1 = type metadata accessor for NoticeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for Notice(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_100571E58();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  sub_1003B73FC(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

uint64_t sub_1003BBF38()
{

  return swift_deallocObject();
}

unint64_t sub_1003BBF70()
{
  result = qword_1006F0F90;
  if (!qword_1006F0F90)
  {
    sub_100010324(&qword_1006F0F38, &qword_10059BC20);
    sub_1003BC028();
    sub_100010BC0(&qword_1006F0FC8, &qword_1006F0FD0, &qword_10059BCD8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0F90);
  }

  return result;
}

unint64_t sub_1003BC028()
{
  result = qword_1006F0F98;
  if (!qword_1006F0F98)
  {
    sub_100010324(&qword_1006F0F30, &qword_10059BC18);
    sub_1003BC0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0F98);
  }

  return result;
}

unint64_t sub_1003BC0B4()
{
  result = qword_1006F0FA0;
  if (!qword_1006F0FA0)
  {
    sub_100010324(&qword_1006F0F28, &qword_10059BC10);
    sub_1003BC140();
    sub_1003A69FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0FA0);
  }

  return result;
}

unint64_t sub_1003BC140()
{
  result = qword_1006F0FA8;
  if (!qword_1006F0FA8)
  {
    sub_100010324(&qword_1006F0F20, &qword_10059BC08);
    sub_1003BC1F8();
    sub_100010BC0(&qword_1006F0FC0, &qword_1006F0F78, &qword_10059BCC0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0FA8);
  }

  return result;
}

unint64_t sub_1003BC1F8()
{
  result = qword_1006F0FB0;
  if (!qword_1006F0FB0)
  {
    sub_100010324(&qword_1006F0F18, &qword_10059BC00);
    sub_1003BC334(&qword_1006F0FB8, type metadata accessor for NoticeView.Content, &unk_10059BE2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F0FB0);
  }

  return result;
}

void sub_1003BC2B4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1003B8A40(a1, a2, v6);
}

uint64_t sub_1003BC334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003BC3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

unint64_t sub_1003BC4B0()
{
  result = qword_1006F1000;
  if (!qword_1006F1000)
  {
    sub_100010324(&qword_1006F0F60, &qword_10059BC48);
    sub_1003BC568();
    sub_100010BC0(&qword_1006F1020, &qword_1006F0FF8, &unk_10059BD20, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1000);
  }

  return result;
}

unint64_t sub_1003BC568()
{
  result = qword_1006F1008;
  if (!qword_1006F1008)
  {
    sub_100010324(&qword_1006F0F58, &qword_10059BC40);
    sub_1003BC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1008);
  }

  return result;
}

unint64_t sub_1003BC5F4()
{
  result = qword_1006F1010;
  if (!qword_1006F1010)
  {
    sub_100010324(&qword_1006F0F50, &qword_10059BC38);
    sub_100010324(&qword_1006F0F40, &qword_10059BC28);
    type metadata accessor for Notice(255);
    sub_100010324(&qword_1006F0F38, &qword_10059BC20);
    sub_100010324(&qword_1006F0F10, &qword_10059BBF8);
    sub_1003BBF70();
    sub_100010BC0(&qword_1006F0FD8, &qword_1006F0F10, &qword_10059BBF8, &protocol conformance descriptor for SequenceGesture<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_1003BC334(&qword_1006F0FE0, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006F1018, &qword_1006F0FE8, &qword_10059BCE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1010);
  }

  return result;
}

uint64_t sub_1003BC804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1003BC8D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

void sub_1003BC994(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    sub_1003BCACC(319);
    if (v2 <= 0x3F)
    {
      sub_1003BCB30(319, &qword_1006F10A8, &type metadata for Double, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_1003BCB30(319, &qword_1006F10B0, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v4 <= 0x3F)
        {
          sub_1003BCB30(319, &unk_1006F10B8, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003BCACC(uint64_t a1)
{
  if (!qword_1006F1098)
  {
    sub_100010324(&qword_1006F10A0, &qword_10059BDA0);
    v1 = sub_10056E6D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F1098);
    }
  }
}

void sub_1003BCB30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1003BCB90()
{
  sub_100010324(&qword_1006F0F60, &qword_10059BC48);
  sub_100010324(&qword_1006F0F08, &qword_10059BBF0);
  sub_1003BC4B0();
  sub_100010BC0(&qword_1006F1028, &qword_1006F0F08, &qword_10059BBF0, &protocol conformance descriptor for ClosedRange<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1003BCC68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006F10F8, &qword_10059BDE0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100009DCC(&qword_1006F1100, &qword_10059BDE8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100009DCC(&qword_1006F1108, &qword_10059BDF0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_100009DCC(&qword_1006F1110, &qword_10059BDF8);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1003BCE7C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006F10F8, &qword_10059BDE0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100009DCC(&qword_1006F1100, &qword_10059BDE8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_100009DCC(&qword_1006F1108, &qword_10059BDF0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_100009DCC(&qword_1006F1110, &qword_10059BDF8);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_1003BD088(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    sub_1003BD1D4(319, &qword_1006F1180, sub_1003BBB20, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_1003BD1D4(319, &qword_1006F1188, sub_1003BBB74, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_1003BD234(319, &qword_1006F2780, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          sub_1003BD234(319, &qword_1006F1190, &type metadata accessor for LayoutDirection);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003BD1D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_10056E818();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1003BD234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10056E6D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003BD2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  sub_100009DCC(&qword_1006F12B0, &qword_10059BFE8);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for Notice(0);
  sub_10000CC8C(a1 + *(v8 + 20), v7, &qword_1006F12B0, &qword_10059BFE8);
  v9 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_10001036C(v7, &qword_1006F12B0, &qword_10059BFE8);
    v10 = 0;
  }

  else
  {
    v10 = swift_getEnumCaseMultiPayload() == 1;
    sub_1003BDD60(v7, type metadata accessor for Notice.Thumbnail);
  }

  v11 = sub_10056EBD8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(a2, v11);
  if (v13 == enum case for DynamicTypeSize.xSmall(_:) || v13 == enum case for DynamicTypeSize.small(_:))
  {
    result = sub_1003BDD60(a1, type metadata accessor for Notice);
    v16 = 6.0;
    if (!v10)
    {
      v16 = 0.0;
    }

    v17 = 4.0;
    v18 = 12.0;
    if (v10)
    {
      v19 = 12.0;
    }

    else
    {
      v19 = 4.0;
    }
  }

  else
  {
    if (v13 == enum case for DynamicTypeSize.medium(_:) || v13 == enum case for DynamicTypeSize.large(_:) || v13 == enum case for DynamicTypeSize.xLarge(_:))
    {
      goto LABEL_29;
    }

    if (v13 != enum case for DynamicTypeSize.xxLarge(_:) && v13 != enum case for DynamicTypeSize.xxxLarge(_:) && v13 != enum case for DynamicTypeSize.accessibility1(_:) && v13 != enum case for DynamicTypeSize.accessibility2(_:) && v13 != enum case for DynamicTypeSize.accessibility3(_:) && v13 != enum case for DynamicTypeSize.accessibility4(_:) && v13 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v12 + 8))(a2, v11);
LABEL_29:
      if (v10)
      {
        v19 = 10.0;
      }

      else
      {
        v19 = 12.0;
      }

      v22 = (a1 + *(v8 + 32));
      v23 = *v22;
      v24 = v22[1];
      sub_1000E672C(*v22, v24);
      result = sub_1003BDD60(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = sub_1000F3E14(v23, v24);
        v18 = 19.0;
      }

      else
      {
        v18 = 20.0;
      }

      v17 = 4.0;
      if (v10)
      {
        v16 = 10.0;
      }

      else
      {
        v16 = 4.0;
      }

      goto LABEL_41;
    }

    result = sub_1003BDD60(a1, type metadata accessor for Notice);
    v16 = 10.0;
    if (!v10)
    {
      v16 = 6.0;
    }

    v18 = 20.0;
    v19 = 12.0;
    v17 = 8.0;
  }

LABEL_41:
  *a3 = v17;
  a3[1] = v19;
  a3[2] = v17;
  a3[3] = v18;
  a3[4] = v16;
  return result;
}

unint64_t sub_1003BD66C()
{
  result = qword_1006F1238;
  if (!qword_1006F1238)
  {
    sub_100010324(&qword_1006F1230, &qword_10059BF48);
    sub_1003BD724();
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268, &qword_10059D060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1238);
  }

  return result;
}

unint64_t sub_1003BD724()
{
  result = qword_1006F1240;
  if (!qword_1006F1240)
  {
    sub_100010324(&qword_1006F1248, &unk_10059BF50);
    sub_1003BD7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1240);
  }

  return result;
}

unint64_t sub_1003BD7A8()
{
  result = qword_1006F1250;
  if (!qword_1006F1250)
  {
    sub_100010324(&qword_1006F1258, &unk_10059EB00);
    sub_1003BD834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1250);
  }

  return result;
}

unint64_t sub_1003BD834()
{
  result = qword_1006F30C0;
  if (!qword_1006F30C0)
  {
    sub_100010324(&qword_1006F1260, &unk_10059BF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F30C0);
  }

  return result;
}

void sub_1003BD8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    sub_10001B5A4(a1, a2, a3 & 1);
  }

  else
  {

    sub_1003BD904(a1, a2, a3, a4);
  }
}

double sub_1003BD904(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10001B5A4(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_1003BD940@<X0>(uint64_t a1@<X8>)
{
  result = sub_10056F148();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1003BD9A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002AAC4(result, a2, a3 & 1);
  }

  return result;
}

double sub_1003BD9F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_10001B5A4(a1, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1003BDA44()
{
  result = qword_1006F12B8;
  if (!qword_1006F12B8)
  {
    sub_100010324(&qword_1006F1288, &qword_10059BFC0);
    sub_1003BC334(&qword_1006F12C0, &type metadata accessor for CircularProgressView, &protocol conformance descriptor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F12B8);
  }

  return result;
}

unint64_t sub_1003BDB00()
{
  result = qword_1006F12C8;
  if (!qword_1006F12C8)
  {
    sub_100010324(&qword_1006F12A8, &qword_10059BFE0);
    sub_1003BDB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F12C8);
  }

  return result;
}

unint64_t sub_1003BDB8C()
{
  result = qword_1006F12D0;
  if (!qword_1006F12D0)
  {
    sub_100010324(&qword_1006F1290, &qword_10059BFC8);
    sub_1003BDC18();
    sub_1003A6A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F12D0);
  }

  return result;
}

unint64_t sub_1003BDC18()
{
  result = qword_1006F12D8;
  if (!qword_1006F12D8)
  {
    sub_100010324(&qword_1006F12E0, &unk_10059BFF0);
    sub_1003BC334(&qword_1006F12E8, &type metadata accessor for ArtworkImage, &protocol conformance descriptor for ArtworkImage);
    sub_1003A69FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F12D8);
  }

  return result;
}

unint64_t sub_1003BDCD4()
{
  result = qword_1006F12F0;
  if (!qword_1006F12F0)
  {
    sub_100010324(&qword_1006F1280, &qword_10059BFB8);
    sub_1003BDA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F12F0);
  }

  return result;
}

uint64_t sub_1003BDD60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003BDDE4()
{
  result = qword_1006F3420;
  if (!qword_1006F3420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F3420);
  }

  return result;
}

uint64_t sub_1003BDE48(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoticeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1003BDEE0()
{
  result = qword_1006F1300;
  if (!qword_1006F1300)
  {
    sub_100010324(&qword_1006F11E0, &qword_10059BEC8);
    sub_100010BC0(&qword_1006F1308, &qword_1006F11D0, &qword_10059BEB8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F1300);
  }

  return result;
}

uint64_t Optional<A>.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.body(_:);
  v3 = sub_10056FC68();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1003BE030(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MusicUIContentConfiguration.makeContentView()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v4 + 16))(v6, v2, a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t MusicUIContentView.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 40);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = *(swift_getAssociatedConformanceWitness() + 16);
  sub_10002AB7C(a3);
  return v6(a1, a2);
}

uint64_t MusicUIContentView.configuration.setter(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v7 = &v10[-v6 - 8];
  sub_10002EA8C(a1, v10);
  sub_100009DCC(&qword_1006EF660, &unk_100598DF0);
  swift_dynamicCast();
  (*(a3 + 48))(v7, a2, a3);
  return sub_100010474(a1);
}

void (*MusicUIContentView.configuration.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  MusicUIContentView.configuration.getter(a2, a3, v7);
  return sub_1003BE418;
}

void sub_1003BE418(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11];
    v4 = v2[10];
    sub_10002EA8C(*a1, (v2 + 5));
    MusicUIContentView.configuration.setter(v2 + 5, v4, v3);
    sub_100010474(v2);
  }

  else
  {
    MusicUIContentView.configuration.setter(*a1, v2[10], v2[11]);
  }

  free(v2);
}

uint64_t MPModelPlaylistType.variant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v3 = &enum case for Playlist.Variant.genius(_:);
      }

      else
      {
        v3 = &enum case for Playlist.Variant.folder(_:);
      }

      goto LABEL_12;
    }

    if (!a1)
    {
      v4 = enum case for Playlist.Variant.regular(_:);
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v3 = &enum case for Playlist.Variant.smart(_:);
      goto LABEL_12;
    }
  }

  else
  {
    if (a1 < 7)
    {
      goto LABEL_11;
    }

    switch(a1)
    {
      case 7:
        v3 = &enum case for Playlist.Variant.personalMix(_:);
        goto LABEL_12;
      case 8:
LABEL_11:
        v3 = &enum case for Playlist.Variant.subscribed(_:);
        goto LABEL_12;
      case 9:
        v3 = &enum case for Playlist.Variant.favoriteSongs(_:);
LABEL_12:
        v4 = *v3;
LABEL_13:
        v5 = sub_100572128();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_14;
    }
  }

  v11 = sub_100572128();
  v6 = *(*(v11 - 8) + 56);
  v9 = v11;
  v7 = a2;
  v8 = 1;
LABEL_14:

  return v6(v7, v8, 1, v9);
}

uint64_t Playlist.Variant.symbolName.getter()
{
  v1 = v0;
  v2 = sub_100572128();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Playlist.Variant.smart(_:))
  {
    return 0x7061687372616567;
  }

  if (v7 == enum case for Playlist.Variant.genius(_:))
  {
    return 0x7375696E6567;
  }

  if (v7 == enum case for Playlist.Variant.folder(_:))
  {
    return 0x7265646C6F66;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6F6E2E636973756DLL;
}

uint64_t ArtworkImage.ViewModel.init(artwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100571E58();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ArtworkImage.ViewModel(0);
  return sub_100019B40(a2, a3 + *(v7 + 20), &qword_1006F2C40, &qword_10059C100);
}

uint64_t sub_1003BE8D8(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_10000C49C(v5, a3);
}

uint64_t sub_1003BE9C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_10056F198();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(a1, a2);
  __chkstk_darwin();
  v15 = &v20 - v14;
  sub_10000CC8C(v8, &v20 - v14, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = a3(0);
    return (*(*(v16 - 8) + 32))(a4, v15, v16);
  }

  else
  {
    v18 = sub_100573438();
    v19 = sub_10056F9D8();
    sub_10056DE58(v18, &_mh_execute_header, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1003BEBC0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10056F198();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
  __chkstk_darwin();
  v9 = &v13 - v8;
  sub_10000CC8C(v2, &v13 - v8, &qword_1006EED98, &qword_1005971B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100019B40(v9, a1, &qword_1006F1330, &unk_10059C180);
  }

  v11 = sub_100573438();
  v12 = sub_10056F9D8();
  sub_10056DE58(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_10056F188();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArtworkImage.ViewModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100571E58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkImage.ViewModel.init(optionalArtwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100571E58();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1, v6) == 1)
  {
    sub_10001036C(a2, &qword_1006F2C40, &qword_10059C100);
    sub_10001036C(a1, &unk_1006F3B10, &unk_100599150);
    v8 = type metadata accessor for ArtworkImage.ViewModel(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a3;
    v12 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, a1, v6);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100019B40(a2, a3 + *(v13 + 20), &qword_1006F2C40, &qword_10059C100);
    v9 = *(*(v13 - 8) + 56);
    v11 = a3;
    v12 = 0;
    v10 = v13;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t ArtworkImage.ViewModel.init(artworkCatalog:cropStyle:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100571E58();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    sub_100571D18();
    (*(v6 + 32))(a3, v8, v5);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100019B40(a2, a3 + *(v10 + 20), &qword_1006F2C40, &qword_10059C100);
    return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  else
  {
    sub_10001036C(a2, &qword_1006F2C40, &qword_10059C100);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

uint64_t ArtworkImage.ViewModel.calculatedAspectRatio.getter()
{
  if (sub_100571DE8() < 1 || sub_100571DF8() < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v0 = sub_100571DE8();
    *&result = v0 / sub_100571DF8();
  }

  return result;
}

uint64_t ArtworkImage.Info.size.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArtworkImage.Info(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6 & 1;
  *(a8 + 41) = a7;
  return result;
}

__n128 ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_100019B40(a1, a9, &qword_1006F3E50, &qword_1005971F0);
  v17 = type metadata accessor for ArtworkImage.Info(0);
  sub_1003CB2A0(a2, a9 + v17[5], type metadata accessor for ArtworkImage.Placeholder);
  v18 = a9 + v17[6];
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  v19 = a9 + v17[7];
  v20 = *(a5 + 16);
  *v19 = *a5;
  *(v19 + 16) = v20;
  result = *(a5 + 26);
  *(v19 + 26) = result;
  v22 = a9 + v17[8];
  *v22 = a6;
  *(v22 + 8) = a7;
  *(v22 + 16) = a8;
  return result;
}

uint64_t ArtworkImage.Size.height.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.fittingAspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t ArtworkImage.Size.init(cgSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3 & 1;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a4 = v5;
  *(a4 + 8) = v4;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  *(a4 + 16) = v6;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 513;
  return result;
}

uint64_t ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result / a6;
    if ((a4 & 1) == 0 && a3 > a6)
    {
      v6 = *&result / a3;
      *&result = *&result / a3 * a6;
    }
  }

  *a5 = *&result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v6;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t ArtworkImage.Size.init(height:aspectRatio:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *&result * a6;
    if ((a4 & 1) == 0 && a3 < a6)
    {
      v6 = *&result * a3;
      *&result = *&result * a3 / a6;
    }
  }

  *a5 = v6;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = *&result;
  *(a5 + 24) = a2 & 1;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4 & 1;
  *(a5 + 41) = 2;
  return result;
}

uint64_t sub_1003BF60C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v5, &v7) & 1;
}

uint64_t ArtworkImage.init(artwork:width:height:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  if (a3)
  {
    sub_10000CC8C(a1, &v10 - v8, &unk_1006F3B10, &unk_100599150);
    if (a5)
    {
      sub_10056DC58();
    }

    else
    {
      sub_10056DC48();
    }
  }

  else
  {
    sub_10000CC8C(a1, &v10 - v8, &unk_1006F3B10, &unk_100599150);
    if (a5)
    {
      sub_10056DC38();
    }

    else
    {
      sub_10056DC28();
    }
  }

  return sub_10001036C(a1, &unk_1006F3B10, &unk_100599150);
}

double static ArtworkImage.with(_:placeholder:size:reusePolicy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  sub_1003CADAC(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_1003CB2A0(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ArtworkImage.Placeholder);
  v14 = (v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = a3[1];
  *v14 = *a3;
  v14[1] = v15;
  *(v14 + 26) = *(a3 + 26);
  sub_1003BFDEC(a1, sub_1003CAB7C, v13, a3, a4, a5);

  return result;
}

uint64_t sub_1003BF984(uint64_t a1)
{
  v3 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  sub_100009DCC(&qword_1006F1A68, &qword_10059D070);
  __chkstk_darwin();
  v6 = (v29 - v5);
  v7 = sub_100009DCC(&unk_1006F2C80, &qword_10059C538);
  __chkstk_darwin();
  v9 = (v29 - v8);
  if (*(a1 + 8) & 1) != 0 || (*(a1 + 24))
  {
    sub_1003CADAC(v1, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    sub_1003CB2A0(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ArtworkImage.Placeholder);
    v12 = (v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
    v13 = *(a1 + 16);
    *v12 = *a1;
    v12[1] = v13;
    *(v12 + 26) = *(a1 + 26);
    *v6 = sub_1003CE1E8;
    v6[1] = v11;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006F18F0, &qword_10059E560);
    sub_1003CC9AC();
    sub_100010BC0(&unk_1006F2CB0, &qword_1006F18F0, &qword_10059E560, &protocol conformance descriptor for GeometryReader<A>);
    return sub_10056F5B8();
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 16);
    v17 = sub_1003C1880();
    v19 = v18;
    sub_1003C1880();
    v21 = v20;

    sub_1003C1880();
    v23 = v22;

    v24 = type metadata accessor for ArtworkImage.Placeholder.View(0);
    v25 = *(v24 + 32);
    *(v9 + v25) = swift_getKeyPath();
    sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
    swift_storeEnumTagMultiPayload();
    v26 = *(v24 + 36);
    *(v9 + v26) = swift_getKeyPath();
    sub_100009DCC(&unk_1006EEDA0, &unk_10059C170);
    swift_storeEnumTagMultiPayload();
    *v9 = v17;
    v9[1] = v19;
    v9[2] = v21;
    v9[3] = v15;
    v9[4] = v16;
    v9[5] = v23;
    *(v9 + *(sub_100009DCC(&unk_1006F2C90, &unk_10059E550) + 36)) = 0;
    sub_1005709E8();
    sub_10056E888();
    v27 = (v9 + *(v7 + 36));
    v28 = v29[1];
    *v27 = v29[0];
    v27[1] = v28;
    v27[2] = v29[2];
    sub_10000CC8C(v9, v6, &unk_1006F2C80, &qword_10059C538);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006F18F0, &qword_10059E560);
    sub_1003CC9AC();
    sub_100010BC0(&unk_1006F2CB0, &qword_1006F18F0, &qword_10059E560, &protocol conformance descriptor for GeometryReader<A>);
    sub_10056F5B8();
    return sub_10001036C(v9, &unk_1006F2C80, &qword_10059C538);
  }
}

uint64_t sub_1003BFDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v57 = &v45 - v8;
  v9 = sub_100571DC8();
  v58 = *(v9 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v18 = sub_10056DC68();
  v61 = *(v18 - 8);
  __chkstk_darwin();
  v59 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v45 - v20;
  __chkstk_darwin();
  v54 = &v45 - v21;
  __chkstk_darwin();
  v23 = &v45 - v22;
  __chkstk_darwin();
  v60 = &v45 - v24;
  v52 = a1;
  sub_10000CC8C(a1, v13, &qword_1006F3E50, &qword_1005971F0);
  v25 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v25 - 8) + 48);
  v26 = v46(v13, 1, v25);
  v55 = v18;
  if (v26 == 1)
  {
    sub_10001036C(v13, &qword_1006F3E50, &qword_1005971F0);
    v27 = sub_100571E58();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = sub_100571E58();
    v29 = *(v28 - 8);
    v45 = v9;
    v30 = v29;
    (*(v29 + 16))(v17, v13, v28);
    sub_1003CAD4C(v13, type metadata accessor for ArtworkImage.ViewModel);
    (*(v30 + 56))(v17, 0, 1, v28);
    v9 = v45;
  }

  v31 = *(a4 + 8);
  v32 = *(a4 + 24);
  sub_10000CC8C(v17, v15, &unk_1006F3B10, &unk_100599150);
  if (v31)
  {
    if (v32)
    {
      sub_10056DC58();
    }

    else
    {
      sub_10056DC48();
    }
  }

  else if (v32)
  {
    sub_10056DC38();
  }

  else
  {
    sub_10056DC28();
  }

  v33 = v55;
  sub_10001036C(v17, &unk_1006F3B10, &unk_100599150);
  (*(v61 + 32))(v60, v23, v33);
  sub_10056DC08();
  v34 = v47;
  sub_10000CC8C(v52, v47, &qword_1006F3E50, &qword_1005971F0);
  v35 = v46(v34, 1, v25);
  v36 = v56;
  if (v35 == 1)
  {
    sub_10001036C(v34, &qword_1006F3E50, &qword_1005971F0);
    v38 = v57;
    v37 = v58;
    (*(v58 + 56))(v57, 1, 1, v9);
  }

  else
  {
    v38 = v57;
    sub_10000CC8C(v34 + *(v25 + 20), v57, &qword_1006F2C40, &qword_10059C100);
    sub_1003CAD4C(v34, type metadata accessor for ArtworkImage.ViewModel);
    v37 = v58;
    if ((*(v58 + 48))(v38, 1, v9) != 1)
    {
      (*(v37 + 32))(v36, v38, v9);
      goto LABEL_19;
    }
  }

  if (qword_1006EEB38 != -1)
  {
    swift_once();
  }

  v39 = sub_10000C49C(v9, static Artwork.CropStyle.fallback);
  (*(v37 + 16))(v36, v39, v9);
  if ((*(v37 + 48))(v38, 1, v9) != 1)
  {
    sub_10001036C(v38, &qword_1006F2C40, &qword_10059C100);
  }

LABEL_19:
  v40 = v53;
  v41 = v59;
  sub_10056DBE8();
  (*(v37 + 8))(v36, v9);
  v42 = *(v61 + 8);
  v42(v41, v33);
  v43 = v54;
  sub_10056DC18();
  v42(v40, v33);
  sub_100009DCC(&qword_1006F18C8, &qword_10059C530);
  sub_1003CC8F4();
  sub_10056DBF8();
  v42(v43, v33);
  return (v42)(v60, v33);
}

uint64_t sub_1003C05C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v57 = &v45 - v8;
  v9 = sub_100571DC8();
  v58 = *(v9 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v18 = sub_10056DC68();
  v61 = *(v18 - 8);
  __chkstk_darwin();
  v59 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v45 - v20;
  __chkstk_darwin();
  v54 = &v45 - v21;
  __chkstk_darwin();
  v23 = &v45 - v22;
  __chkstk_darwin();
  v60 = &v45 - v24;
  v52 = a1;
  sub_10000CC8C(a1, v13, &qword_1006F3E50, &qword_1005971F0);
  v25 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v25 - 8) + 48);
  v26 = v46(v13, 1, v25);
  v55 = v18;
  if (v26 == 1)
  {
    sub_10001036C(v13, &qword_1006F3E50, &qword_1005971F0);
    v27 = sub_100571E58();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = sub_100571E58();
    v29 = *(v28 - 8);
    v45 = v9;
    v30 = v29;
    (*(v29 + 16))(v17, v13, v28);
    sub_1003CAD4C(v13, type metadata accessor for ArtworkImage.ViewModel);
    (*(v30 + 56))(v17, 0, 1, v28);
    v9 = v45;
  }

  v31 = *(a4 + 8);
  v32 = *(a4 + 24);
  sub_10000CC8C(v17, v15, &unk_1006F3B10, &unk_100599150);
  if (v31)
  {
    if (v32)
    {
      sub_10056DC58();
    }

    else
    {
      sub_10056DC48();
    }
  }

  else if (v32)
  {
    sub_10056DC38();
  }

  else
  {
    sub_10056DC28();
  }

  v33 = v55;
  sub_10001036C(v17, &unk_1006F3B10, &unk_100599150);
  (*(v61 + 32))(v60, v23, v33);
  sub_10056DC08();
  v34 = v47;
  sub_10000CC8C(v52, v47, &qword_1006F3E50, &qword_1005971F0);
  v35 = v46(v34, 1, v25);
  v36 = v56;
  if (v35 == 1)
  {
    sub_10001036C(v34, &qword_1006F3E50, &qword_1005971F0);
    v38 = v57;
    v37 = v58;
    (*(v58 + 56))(v57, 1, 1, v9);
  }

  else
  {
    v38 = v57;
    sub_10000CC8C(v34 + *(v25 + 20), v57, &qword_1006F2C40, &qword_10059C100);
    sub_1003CAD4C(v34, type metadata accessor for ArtworkImage.ViewModel);
    v37 = v58;
    if ((*(v58 + 48))(v38, 1, v9) != 1)
    {
      (*(v37 + 32))(v36, v38, v9);
      goto LABEL_19;
    }
  }

  if (qword_1006EEB38 != -1)
  {
    swift_once();
  }

  v39 = sub_10000C49C(v9, static Artwork.CropStyle.fallback);
  (*(v37 + 16))(v36, v39, v9);
  if ((*(v37 + 48))(v38, 1, v9) != 1)
  {
    sub_10001036C(v38, &qword_1006F2C40, &qword_10059C100);
  }

LABEL_19:
  v40 = v53;
  v41 = v59;
  sub_10056DBE8();
  (*(v37 + 8))(v36, v9);
  v42 = *(v61 + 8);
  v42(v41, v33);
  v43 = v54;
  sub_10056DC18();
  v42(v40, v33);
  sub_1003CCBB0();
  sub_10056DBF8();
  v42(v43, v33);
  return (v42)(v60, v33);
}

uint64_t static ArtworkImage.with<A>(_:placeholderViewBuilder:size:reusePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v65 = a5;
  v80 = a4;
  v77 = a2;
  v78 = a3;
  v67 = a8;
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v70 = v59 - v11;
  v12 = sub_100571DC8();
  v71 = *(v12 - 8);
  v72 = v12;
  __chkstk_darwin();
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a6;
  v81 = a6;
  v82 = a7;
  v66 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  v76 = OpaqueTypeMetadata2;
  __chkstk_darwin();
  v73 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = v59 - v17;
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v61 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v59 - v19;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v59 - v23;
  v68 = sub_10056DC68();
  v25 = *(v68 - 8);
  __chkstk_darwin();
  v27 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = v59 - v28;
  __chkstk_darwin();
  v64 = v59 - v29;
  __chkstk_darwin();
  v31 = v59 - v30;
  __chkstk_darwin();
  v33 = v59 - v32;
  v62 = a1;
  sub_10000CC8C(a1, v20, &qword_1006F3E50, &qword_1005971F0);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v35 = *(v34 - 8);
  v60 = *(v35 + 48);
  v59[1] = v35 + 48;
  v36 = v60(v20, 1, v34);
  v69 = v14;
  if (v36 == 1)
  {
    sub_10001036C(v20, &qword_1006F3E50, &qword_1005971F0);
    v37 = sub_100571E58();
    (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  }

  else
  {
    v38 = sub_100571E58();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v24, v20, v38);
    sub_1003CAD4C(v20, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v24, 0, 1, v38);
  }

  v40 = *(v80 + 8);
  v41 = *(v80 + 24);
  sub_10000CC8C(v24, v22, &unk_1006F3B10, &unk_100599150);
  if (v40)
  {
    if (v41)
    {
      sub_10056DC58();
    }

    else
    {
      sub_10056DC48();
    }
  }

  else if (v41)
  {
    sub_10056DC38();
  }

  else
  {
    sub_10056DC28();
  }

  v42 = v69;
  sub_10001036C(v24, &unk_1006F3B10, &unk_100599150);
  v43 = v68;
  (*(v25 + 32))(v33, v31, v68);
  sub_10056DC08();
  v44 = v61;
  sub_10000CC8C(v62, v61, &qword_1006F3E50, &qword_1005971F0);
  if (v60(v44, 1, v34) == 1)
  {
    sub_10001036C(v44, &qword_1006F3E50, &qword_1005971F0);
    v45 = v70;
    v46 = v71;
    v47 = v72;
    (*(v71 + 56))(v70, 1, 1, v72);
  }

  else
  {
    v45 = v70;
    sub_10000CC8C(v44 + *(v34 + 20), v70, &qword_1006F2C40, &qword_10059C100);
    sub_1003CAD4C(v44, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v71;
    v47 = v72;
    if ((*(v71 + 48))(v45, 1, v72) != 1)
    {
      (*(v46 + 32))(v42, v45, v47);
      goto LABEL_19;
    }
  }

  if (qword_1006EEB38 != -1)
  {
    swift_once();
  }

  v48 = sub_10000C49C(v47, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v42, v48, v47);
  if ((*(v46 + 48))(v45, 1, v47) != 1)
  {
    sub_10001036C(v45, &qword_1006F2C40, &qword_10059C100);
  }

LABEL_19:
  v49 = v63;
  sub_10056DBE8();
  (*(v46 + 8))(v42, v47);
  v50 = *(v25 + 8);
  v50(v27, v43);
  v51 = v64;
  sub_10056DC18();
  v50(v49, v43);
  v52 = v73;
  sub_10056DBF8();
  v50(v51, v43);
  v50(v33, v43);
  v54 = v74;
  v53 = v75;
  v55 = *(v75 + 16);
  v56 = v76;
  v55(v74, v52, v76);
  v57 = *(v53 + 8);
  v57(v52, v56);
  v55(v67, v54, v56);
  return (v57)(v54, v56);
}

double static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  sub_1003C05C4(a1, sub_1003CAC44, v12, a4, a5, a6);

  return result;
}

double sub_1003C175C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t ArtworkImage.Placeholder.view(availableSize:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>)
{
  v4 = a2.n128_u64[0];
  v6 = sub_1003C1880();
  v8 = v7;
  sub_1003C1880();
  v10 = v9;

  sub_1003C1880();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDA0, &unk_10059C170);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v4;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = sub_100009DCC(&unk_1006F2C90, &unk_10059E550);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1003C1880()
{
  v1 = v0;
  v2 = sub_100572128();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  sub_100009DCC(&qword_1006EF6E8, &qword_100598E50);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v23 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003CADAC(v1, v13, type metadata accessor for ArtworkImage.Placeholder);
  v14 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  v15 = (*(*(v14 - 8) + 48))(v13, 11, v14);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v16 = 0x6F69646172;
        sub_10056FB78();
        return v16;
      }

      if (v15 != 10)
      {
        sub_10056FB58();
        return 0xD000000000000013;
      }

      v16 = 0x73726174697567;
      goto LABEL_5;
    }

    if (v15 == 6)
    {
      v16 = 30324;
      sub_10056FB78();
      return v16;
    }

    if (v15 == 7)
    {
      sub_10056FB78();
      return 0x696D2E636973756DLL;
    }

    v16 = 0x662E6E6F73726570;
LABEL_24:
    sub_10056FB78();
    return v16;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v16 = 0xD000000000000011;
      sub_10056FB58();
      return v16;
    }

    if (v15 == 4)
    {
      v16 = 1937075312;
      sub_10056FB58();
      return v16;
    }

    v16 = 0x6F6E2E636973756DLL;
    goto LABEL_24;
  }

  if (v15)
  {
    v16 = 0x636973756DLL;
LABEL_5:
    sub_10056FB58();
    return v16;
  }

  sub_100019B40(v13, v11, &qword_1006EF6E8, &qword_100598E50);
  sub_10000CC8C(v11, v9, &qword_1006EF6E8, &qword_100598E50);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) == 1)
  {
    (*(v3 + 104))(v7, enum case for Playlist.Variant.regular(_:), v2);
    if (v17(v9, 1, v2) != 1)
    {
      sub_10001036C(v9, &qword_1006EF6E8, &qword_100598E50);
    }
  }

  else
  {
    (*(v3 + 32))(v7, v9, v2);
  }

  (*(v3 + 16))(v5, v7, v2);
  v18 = (*(v3 + 88))(v5, v2);
  if (v18 == enum case for Playlist.Variant.smart(_:))
  {
    (*(v3 + 8))(v7, v2);
    v16 = 0x7061687372616567;
  }

  else if (v18 == enum case for Playlist.Variant.genius(_:))
  {
    (*(v3 + 8))(v7, v2);
    v16 = 0x7375696E6567;
  }

  else
  {
    v19 = enum case for Playlist.Variant.folder(_:);
    v20 = *(v3 + 8);
    v21 = v18;
    v20(v7, v2);
    if (v21 == v19)
    {
      v16 = 0x7265646C6F66;
    }

    else
    {
      v16 = 0x6F6E2E636973756DLL;
      v20(v5, v2);
    }
  }

  sub_10056FB58();
  sub_10001036C(v11, &qword_1006EF6E8, &qword_100598E50);
  return v16;
}