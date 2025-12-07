uint64_t sub_D0688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_46F9C(&qword_185F08, &qword_12B278);
  result = sub_1176E0();
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = 0;
    v9 = (v3 + 56);
    v10 = 1 << *(v3 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v3 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v3 + 48) + (v16 | (v8 << 6)));
      sub_D1CC4(result, v5, v6);
      result = sub_1170C0();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_D08E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_117690();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v11 = (v8 + 1) & v7;
      sub_D1CC4(v8, v9, v10);
      do
      {
        v12 = sub_1170C0() & v7;
        if (v2 >= v11)
        {
          if (v12 >= v11 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + v2);
            v17 = (v15 + v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v11 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_D0A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_68FB8(a1, a2, a3);
    do
    {
      if (sub_117160())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_D0B60(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v8 = sub_D0688(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_D0320();
      goto LABEL_12;
    }

    v8 = sub_D0460(v6 + 1);
  }

  v11 = *v3;
  sub_D1CC4(v8, v9, v10);
  result = sub_1170C0();
  v14 = -1 << *(v11 + 32);
  a2 = result & ~v14;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_68FB8(result, v12, v13);
    do
    {
      result = sub_117160();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v5;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_117A30();
  __break(1u);
  return result;
}

void *sub_D0CE0(uint64_t a1, uint64_t a2)
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

  sub_46F9C(&qword_183898, &qword_12B270);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_D0D54(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_D0E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  sub_D1CC4(a1, a2, a3);
  result = sub_117440();
  v10 = result;
  if (v4)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_D004C(&v9, v8, v6);
      --v4;
    }

    while (v4);
    return v10;
  }

  return result;
}

unint64_t sub_D0ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185D88;
  if (!qword_185D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185D88);
  }

  return result;
}

id sub_D0F20()
{
  v0 = [objc_allocWithZone(HLPHelpViewController) init];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    MobileGestalt_get_deviceClassNumber();

    v3 = sub_117170();

    [v0 setSelectedHelpTopicID:v3];

    [v0 setShowTopicViewOnLoad:1];
    [v0 setDisplayHelpTopicsOnly:1];
    v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v0];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_D1034()
{
  result = qword_185DA8;
  if (!qword_185DA8)
  {
    sub_47A1C(&qword_185DA0, &qword_12AB30);
    sub_48800(&qword_185DB0, &qword_185DB8, &qword_12AB38, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185DA8);
  }

  return result;
}

unint64_t sub_D1160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185DD8;
  if (!qword_185DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185DD8);
  }

  return result;
}

__n128 sub_D1218(uint64_t a1, uint64_t a2)
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

uint64_t sub_D1234(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_D127C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_D1328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_D1370(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_D13D0(uint64_t a1, int a2)
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

uint64_t sub_D1418(uint64_t result, int a2, int a3)
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

__n128 sub_D1468(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_D147C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_D14C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_D151C()
{
  result = qword_185DE0;
  if (!qword_185DE0)
  {
    sub_47A1C(&qword_185D50, &qword_12AAD0);
    sub_47A1C(&qword_185D30, &qword_12AAC0);
    v3 = sub_48800(&qword_185D48, &qword_185D30, &qword_12AAC0, &protocol conformance descriptor for List<A, B>);
    sub_4869C(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185DE0);
  }

  return result;
}

uint64_t sub_D16B4()
{
  sub_47A1C(&qword_185D70, &qword_12AAF0);
  v3 = sub_48800(&qword_185D80, &qword_185D70, &qword_12AAF0, &protocol conformance descriptor for VStack<A>);
  sub_D0ECC(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_D1760()
{
  sub_47A1C(&qword_185D90, &qword_12AB28);
  sub_48800(&qword_185D98, &qword_185D90, &qword_12AB28, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_D1840()
{
  result = qword_185E18;
  if (!qword_185E18)
  {
    sub_47A1C(&qword_185DD0, &qword_12AB80);
    sub_D18F8();
    sub_48800(&qword_185E38, &qword_185E40, &qword_12B110, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185E18);
  }

  return result;
}

unint64_t sub_D18F8()
{
  result = qword_185E20;
  if (!qword_185E20)
  {
    sub_47A1C(&qword_185DC8, &qword_12AB78);
    sub_48800(&qword_185E28, &qword_185E30, &unk_12B100, &protocol conformance descriptor for HStack<A>);
    sub_48800(&qword_182E40, &qword_182E48, qword_124840, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185E20);
  }

  return result;
}

unint64_t sub_D19DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185E48;
  if (!qword_185E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185E48);
  }

  return result;
}

uint64_t sub_D1A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_116180();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D1B3C()
{

  return swift_deallocObject();
}

uint64_t sub_D1B84()
{
  sub_46F9C(&qword_185D68, &qword_12AAE8);
  sub_116D60();
  (*(*v1 + 360))(1);
}

double sub_D1C20(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_12AAB0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  return result;
}

double sub_D1C5C(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_D1C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_D1CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185F00;
  if (!qword_185F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F00);
  }

  return result;
}

uint64_t sub_D1D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_D1D30@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v6 = v3[1];
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  sub_116CC0();
  type metadata accessor for AppDetailViewModel(0);
  result = sub_116CB0();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

unint64_t sub_D1DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185F40;
  if (!qword_185F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F40);
  }

  return result;
}

unint64_t sub_D1DF8()
{
  result = qword_185F48;
  if (!qword_185F48)
  {
    v1 = sub_47A1C(&qword_185F30, &qword_12B2B8);
    sub_D1DA4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F48);
  }

  return result;
}

void sub_D1E90(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v9 = *v3;
  v10 = v3[1];
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  sub_116CC0();
  type metadata accessor for AppDetailViewModel(0);
  sub_116CB0();
  v4 = sub_116620();
  sub_115FD0();
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
}

unint64_t sub_D1F30()
{
  result = qword_185F60;
  if (!qword_185F60)
  {
    v1 = sub_47A1C(&qword_185F58, &qword_12B2D0);
    sub_D1FBC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F60);
  }

  return result;
}

unint64_t sub_D1FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185F68;
  if (!qword_185F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F68);
  }

  return result;
}

uint64_t sub_D2010()
{

  sub_6ACB4((v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_D2060()
{
  result = qword_185F88;
  if (!qword_185F88)
  {
    sub_47A1C(&qword_185F78, &qword_12B310);
    sub_D2110(&qword_185F90, &qword_185F98, qword_12B318, sub_D2198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F88);
  }

  return result;
}

uint64_t sub_D2110(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_D2198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185FA0;
  if (!qword_185FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FA0);
  }

  return result;
}

double sub_D21EC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void *sub_D2208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v23 = a1;
  v18 = a2;
  v19 = a3;
  sub_1173A0();
  swift_getWitnessTable();
  result = sub_117100();
  if (BYTE8(v26))
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v25 = a1;
    *&v26 = 0;
    *(&v26 + 1) = v7;
    sub_46F9C(&qword_184178, &qword_1285D0);
    swift_getWitnessTable();
    sub_D2520();
    sub_117140();
    v21 = v23;
    v22 = v24;
    sub_117670();
    swift_getWitnessTable();
    sub_1172B0();
    v8 = swift_unknownObjectRelease();
    v17 = v26;
    v23 = v26;
    v24 = v27;
    __chkstk_darwin(v8);
    v16[8] = a2;
    v16[9] = a3;
    v16[10] = a1;
    __chkstk_darwin(v9);
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = sub_D2774;
    v16[5] = v10;
    v11 = sub_117830();
    v12 = sub_46F9C(&qword_185178, &unk_129BA0);
    WitnessTable = swift_getWitnessTable();
    v13 = swift_getWitnessTable();
    v15 = sub_D2854(sub_D2830, v16, v11, v12, &type metadata for Never, v13, &protocol witness table for Never, v14);
    swift_unknownObjectRelease();
    return v15;
  }

  return result;
}

unint64_t sub_D2520()
{
  result = qword_185FA8;
  if (!qword_185FA8)
  {
    sub_47A1C(&qword_184178, &qword_1285D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FA8);
  }

  return result;
}

uint64_t sub_D2584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a2;
  v10 = *(a6 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(v14 + 8))(v15, v14, v11);
  v16 = *(a7 + 16);
  v16(a6, a7);
  result = sub_117370();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (result - 1 <= a3)
    {
      v20 = sub_115760();
      (*(*(v20 - 8) + 56))(v22, 1, 1, v20);
    }

    else
    {
      sub_1173C0();
      v18 = v22;
      v16(a6, a7);
      (*(v10 + 8))(v13, a6);
      v19 = sub_115760();
      (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }

    return v21;
  }

  return result;
}

uint64_t sub_D2780@<X0>(char *a1@<X0>, uint64_t (*a2)(char *, char *, uint64_t, char *)@<X1>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = sub_46F9C(&qword_185178, &unk_129BA0);
  result = a2(&a4[*(v9 + 48)], &a4[*(v9 + 64)], v7, &a1[v8]);
  *a4 = result;
  return result;
}

uint64_t sub_D2854(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_117470();
  if (!v19)
  {
    return sub_117340();
  }

  v41 = v19;
  v45 = sub_1177C0();
  v32 = sub_1177D0();
  sub_117770(v41);
  result = sub_117460();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1174A0();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1177B0();
      result = sub_117480();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_D2C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_5822C(a1, a2, a3);
  result = sub_F59F0(&type metadata for PerfPowerServices, v3);
  byte_191EC8 = result & 1;
  return result;
}

char *sub_D2CC4()
{
  if (qword_18F790 != -1)
  {
    swift_once();
  }

  return &byte_191EC8;
}

uint64_t sub_D2DD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x664F6E6565726373;
  }

  else
  {
    v3 = 0x6E4F6E6565726373;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000066;
  }

  if (*a2)
  {
    v5 = 0x664F6E6565726373;
  }

  else
  {
    v5 = 0x6E4F6E6565726373;
  }

  if (*a2)
  {
    v6 = 0xE900000000000066;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1179E0();
  }

  return v8 & 1;
}

Swift::Int sub_D2E7C()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_D2F04(uint64_t a1)
{
  sub_117200();
}

Swift::Int sub_D2F78(uint64_t a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_D2FFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_169298;
  v8._object = v3;
  v5 = sub_117890(v4, v8);

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

  *a2 = v7;
  return result;
}

void sub_D305C(uint64_t *a1@<X8>)
{
  v2 = 0x6E4F6E6565726373;
  if (*v1)
  {
    v2 = 0x664F6E6565726373;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000066;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_D30B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6843646573756170;
  v4 = 0xEE00676E69677261;
  if (v2 != 1)
  {
    v3 = 0x43646570706F7473;
    v4 = 0xEF676E6967726168;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E696772616863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6843646573756170;
  v8 = 0xEE00676E69677261;
  if (*a2 != 1)
  {
    v7 = 0x43646570706F7473;
    v8 = 0xEF676E6967726168;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E696772616863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1179E0();
  }

  return v11 & 1;
}

Swift::Int sub_D31E4()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_D32A0(uint64_t a1)
{
  sub_117200();
}

Swift::Int sub_D3348(uint64_t a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

unint64_t sub_D3400@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_D66F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_D3430(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEE00676E69677261;
  v5 = 0x6843646573756170;
  if (v2 != 1)
  {
    v5 = 0x43646570706F7473;
    v4 = 0xEF676E6967726168;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696772616863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_D34A8(char a1)
{
  sub_5A754();
  swift_beginAccess();
}

uint64_t sub_D3534(char a1)
{
  sub_5A754();
  swift_beginAccess();
}

uint64_t sub_D35C0(uint64_t a1)
{
  sub_115710();
  type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  sub_115710();

  return sub_115700();
}

double sub_D3624()
{
  type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  sub_115710();
  v1 = v0;
  sub_115710();
  return v1 - v2;
}

uint64_t sub_D3670()
{
  sub_117710(22);

  type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v0 = sub_1171D0();
  v2 = v1;

  v4._countAndFlagsBits = v0;
  v4._object = v2;
  sub_117220(v4);

  v5._countAndFlagsBits = 0x41565245544E495FLL;
  v5._object = 0xEE004E4F43495F4CLL;
  sub_117220(v5);
  return 0x5F5452414843;
}

uint64_t sub_D37A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_115760();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_D3810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_115760();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

int *sub_D3894@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v61 = a3;
  v5 = sub_115760();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v70 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v54 - v10);
  v68 = a2;
  v56 = sub_D6CD4(a1, a2);
  v57 = v12;
  v58 = v13;
  v59 = v14;
  *&v72 = 0xD00000000000001ALL;
  *(&v72 + 1) = 0x80000000001363B0;
  v15 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v74 = v72;
  v75 = v73;
  if (*(&v73 + 1))
  {
    sub_54960(0, &qword_185FB0, NSDictionary_ptr);
    if (swift_dynamicCast())
    {
      v16 = v71;
      goto LABEL_9;
    }
  }

  else
  {
    sub_D7D00(&v74);
  }

  sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v16 = sub_1174C0();
LABEL_9:
  *&v72 = 0xD000000000000016;
  *(&v72 + 1) = 0x80000000001363D0;
  v17 = sub_117A10();
  v55 = v16;
  v18 = [v16 __swift_objectForKeyedSubscript:v17];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v74 = v72;
  v75 = v73;
  if (*(&v73 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v19 = v71;
      goto LABEL_17;
    }
  }

  else
  {
    sub_D7D00(&v74);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v19 = sub_117590();
LABEL_17:
  *&v72 = 0xD00000000000001BLL;
  *(&v72 + 1) = 0x80000000001363F0;
  v20 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v74 = v72;
  v75 = v73;
  if (*(&v73 + 1))
  {
    sub_54960(0, &qword_185FB0, NSDictionary_ptr);
    if (swift_dynamicCast())
    {
      v21 = v71;
      goto LABEL_25;
    }
  }

  else
  {
    sub_D7D00(&v74);
  }

  sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v21 = sub_1174C0();
LABEL_25:
  *&v72 = 0xD000000000000016;
  *(&v72 + 1) = 0x80000000001363D0;
  v22 = sub_117A10();
  v54 = v21;
  v23 = [v21 __swift_objectForKeyedSubscript:v22];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v74 = v72;
  v75 = v73;
  v60 = a1;
  if (!*(&v73 + 1))
  {
    sub_D7D00(&v74);
    goto LABEL_32;
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    v24 = sub_117590();
    goto LABEL_33;
  }

  v24 = v71;
LABEL_33:
  sub_54960(0, &qword_1831C0, NSNumber_ptr);
  v25 = 0;
  v66 += 4;
  v26 = _swiftEmptyArrayStorage;
  v63 = v19;
  v62 = v24;
  do
  {
    v27.super.super.isa = sub_1175C0(-1).super.super.isa;
    if (v25 < [v19 count])
    {
      v28 = [v19 objectAtIndexedSubscript:v25];
      sub_117660();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v29 = v72;

        v27.super.super.isa = v29;
      }
    }

    v30.super.super.isa = sub_1175C0(-1).super.super.isa;
    if (v25 < [v24 count])
    {
      v31 = [v24 objectAtIndexedSubscript:v25];
      sub_117660();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v32 = v72;

        v30.super.super.isa = v32;
      }
    }

    [(objc_class *)v27.super.super.isa doubleValue];
    v33 = 0.0;
    v34 = 0.0;
    if (v35 >= 0.0)
    {
      [(objc_class *)v27.super.super.isa doubleValue];
      v34 = v36;
    }

    [(objc_class *)v30.super.super.isa doubleValue];
    if (v37 >= 0.0)
    {
      [(objc_class *)v30.super.super.isa doubleValue];
      v33 = v38;
    }

    v39 = sub_A79F0();
    v40 = *v39;
    if (*v39 >= v34)
    {
      v41 = v34;
    }

    else
    {
      v41 = *v39;
    }

    if (v41 < 0.0)
    {
      v42 = 0.0;
    }

    else
    {
      v42 = v41;
    }

    v43 = v40 - v42;
    if (v40 - v42 >= v33)
    {
      v43 = v33;
    }

    if (v43 < 0.0)
    {
      v44 = 0.0;
    }

    else
    {
      v44 = v43;
    }

    sub_115740();
    [(objc_class *)v27.super.super.isa doubleValue];
    if (v45 >= 0.0)
    {
      v47 = 1;
    }

    else
    {
      [(objc_class *)v30.super.super.isa doubleValue];
      v47 = v46 >= 0.0;
    }

    *v11 = v25;
    v48 = v65;
    v49 = *v66;
    (*v66)(v11 + v65[5], v70, v67);
    *(v11 + v48[6]) = v42;
    *(v11 + v48[7]) = v44;
    *(v11 + v48[8]) = v47;
    sub_D7DF0(v11, v69, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_D5CD0(0, v26[2] + 1, 1, v26, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    v51 = v26[2];
    v50 = v26[3];
    if (v51 >= v50 >> 1)
    {
      v26 = sub_D5CD0((v50 > 1), v51 + 1, 1, v26, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    ++v25;

    sub_D8FEC(v11, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    v26[2] = v51 + 1;
    sub_D7D68(v69, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v51, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    v19 = v63;
    v24 = v62;
  }

  while (v25 != 24);

  v52 = v61;
  v49(v61, v68, v67);
  result = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  *&v52[result[5]] = v56;
  *&v52[result[6]] = v57;
  *&v52[result[7]] = v58;
  *&v52[result[8]] = v59;
  *&v52[result[9]] = v26;
  return result;
}

id sub_D4258(void *a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  if ([a1 count] > a2)
  {
    v9 = [a1 objectAtIndexedSubscript:a2];
    sub_117660();
    swift_unknownObjectRelease();
    sub_54960(0, a4, a5);
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  return a3;
}

BOOL sub_D433C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  __chkstk_darwin(v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_D7DF0(v13, v10, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      sub_D7DF0(v14, v6, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      if (*v10 != *v6 || (sub_115720() & 1) == 0 || *(v10 + v4[6]) != *(v6 + v4[6]) || *(v10 + v4[7]) != *(v6 + v4[7]) || *(v10 + v4[8]) != *(v6 + v4[8]))
      {
        break;
      }

      v16 = *(v10 + v4[9]);
      sub_D8FEC(v10, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v17 = *(v6 + v4[9]);
      sub_D8FEC(v6, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      result = v16 == v17;
      if (v16 == v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }

    sub_D8FEC(v6, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    sub_D8FEC(v10, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
  }

  return 0;
}

BOOL sub_D4594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_D7DF0(v13, v10, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_D7DF0(v14, v6, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      if ((sub_115720() & 1) == 0 || (sub_115720() & 1) == 0)
      {
LABEL_29:
        sub_D8FEC(v6, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
        sub_D8FEC(v10, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
        return 0;
      }

      v16 = *(v4 + 24);
      if (v10[v16])
      {
        if (v10[v16] == 1)
        {
          v17 = 0x6843646573756170;
          v18 = 0xEE00676E69677261;
          v19 = v6[v16];
          if (v19)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v17 = 0x43646570706F7473;
          v18 = 0xEF676E6967726168;
          v19 = v6[v16];
          if (v19)
          {
LABEL_10:
            if (v19 == 1)
            {
              v20 = 0x6843646573756170;
            }

            else
            {
              v20 = 0x43646570706F7473;
            }

            if (v19 == 1)
            {
              v21 = 0xEE00676E69677261;
            }

            else
            {
              v21 = 0xEF676E6967726168;
            }

            if (v17 != v20)
            {
              goto LABEL_22;
            }

            goto LABEL_20;
          }
        }
      }

      else
      {
        v18 = 0xE800000000000000;
        v17 = 0x676E696772616863;
        v19 = v6[v16];
        if (v19)
        {
          goto LABEL_10;
        }
      }

      v21 = 0xE800000000000000;
      if (v17 != 0x676E696772616863)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (v18 == v21)
      {

        goto LABEL_23;
      }

LABEL_22:
      v22 = sub_1179E0();

      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_23:
      v23 = v10[*(v4 + 28)];
      sub_D8FEC(v10, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      v24 = v6[*(v4 + 28)];
      sub_D8FEC(v6, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      result = v23 == v24;
      if (v23 == v24)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_D48EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  __chkstk_darwin(v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_D7DF0(v13, v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        sub_D7DF0(v14, v6, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        if (*v10 != *v6 || (sub_115720() & 1) == 0 || *(v10 + v4[6]) != *(v6 + v4[6]) || *(v10 + v4[7]) != *(v6 + v4[7]))
        {
          break;
        }

        v16 = *(v10 + v4[8]);
        sub_D8FEC(v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        v17 = *(v6 + v4[8]);
        sub_D8FEC(v6, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        if (((v16 ^ v17) & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v18 = v16 ^ v17 ^ 1;
        return v18 & 1;
      }

      sub_D8FEC(v6, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      sub_D8FEC(v10, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_D4B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  __chkstk_darwin(v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_D7DF0(v13, v10, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        sub_D7DF0(v14, v6, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        if (*v10 != *v6 || (sub_115720() & 1) == 0 || *(v10 + *(v4 + 24)) != *(v6 + *(v4 + 24)))
        {
          break;
        }

        v16 = *(v10 + *(v4 + 28));
        sub_D8FEC(v10, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        v17 = *(v6 + *(v4 + 28));
        sub_D8FEC(v6, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        if (((v16 ^ v17) & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v18 = v16 ^ v17 ^ 1;
        return v18 & 1;
      }

      sub_D8FEC(v6, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      sub_D8FEC(v10, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_D4D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_115720() & 1) == 0 || (sub_D4B3C(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_D48EC(v7, v8);
}

id sub_D4DF8(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;

  v9 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_117660();
    swift_unknownObjectRelease();
    sub_543D8(&v14, &v13);
    sub_54960(0, a5, a6);
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  return a4;
}

uint64_t sub_D4F00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a1;
  v79 = a2;
  v63 = a3;
  v77 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v91 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v90 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_115760();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v89 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v63 - v9;
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  v87 = sub_A79FC();
  v73 = sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v72 = sub_54960(0, &qword_1831C0, NSNumber_ptr);
  v13 = 0;
  v71 = "PLBatteryUIScreenOffTimeKey";
  v70 = "edCharging";
  v69 = "PLBatteryUIGraphHourly";
  v68 = "PLBatteryUIEnergyKey";
  v66 = (v6 + 8);
  v14 = _swiftEmptyArrayStorage;
  v92 = v12;
  v93 = _swiftEmptyArrayStorage;
  v67 = (v6 + 32);
  v65 = (v6 + 16);
  v64 = v5;
  do
  {
    v85 = v14;
    sub_115740();
    v15 = sub_1174C0();
    v83 = v13;
    v16 = sub_D4258(v78, v13, v15, &qword_185FB0, NSDictionary_ptr);

    isa = sub_1175C0(0).super.super.isa;
    v18 = sub_D4DF8(v16, 0xD000000000000014, v71 | 0x8000000000000000, isa, &qword_1831C0, NSNumber_ptr);

    v19 = sub_1174C0();
    v20 = sub_D4DF8(v16, 0xD00000000000001ALL, v70 | 0x8000000000000000, v19, &qword_185FB0, NSDictionary_ptr);

    v21 = sub_1174C0();
    v84 = v16;
    v22 = sub_D4DF8(v16, 0xD00000000000001BLL, v69 | 0x8000000000000000, v21, &qword_185FB0, NSDictionary_ptr);

    v23 = sub_1175C0(0).super.super.isa;
    v24 = v68;
    v81 = v20;
    v25 = sub_D4DF8(v20, 0xD000000000000015, v68 | 0x8000000000000000, v23, &qword_1831C0, NSNumber_ptr);

    v26 = sub_1175C0(0).super.super.isa;
    v80 = v22;
    v27 = v18;
    v28 = v65;
    v29 = sub_D4DF8(v22, 0xD000000000000015, v24 | 0x8000000000000000, v26, &qword_1831C0, NSNumber_ptr);

    v30 = v64;
    v86 = *v28;
    v86(v88, v92);
    [v27 doubleValue];
    v31 = 0;
    if (v32 >= 0.0)
    {
      [v27 doubleValue];
      v31 = v33;
    }

    v82 = v27;
    [v27 doubleValue];
    v35 = v34 >= 0.0;
    v36 = v90;
    v37 = v83;
    *v90 = v83;
    v38 = v75;
    v39 = *v67;
    (*v67)(&v36[*(v75 + 20)], v88, v30);
    *&v36[*(v38 + 24)] = v31;
    v36[*(v38 + 28)] = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = sub_D5CD0(0, v93[2] + 1, 1, v93, &qword_185628, &unk_12B850, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    }

    v41 = v93[2];
    v40 = v93[3];
    if (v41 >= v40 >> 1)
    {
      v93 = sub_D5CD0((v40 > 1), v41 + 1, 1, v93, &qword_185628, &unk_12B850, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    }

    v42 = v93;
    v93[2] = v41 + 1;
    sub_D7D68(v90, v42 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v41, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    [v25 doubleValue];
    v43 = 0.0;
    v44 = 0.0;
    if (v45 >= 0.0)
    {
      [v25 doubleValue];
      v44 = v46;
    }

    [v29 doubleValue];
    if (v47 >= 0.0)
    {
      [v29 doubleValue];
      v43 = v48;
    }

    if (*v87 >= v44)
    {
      v49 = v44;
    }

    else
    {
      v49 = *v87;
    }

    if (v49 < 0.0)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = v49;
    }

    v51 = *v87 - v50;
    if (v51 >= v43)
    {
      v51 = v43;
    }

    if (v51 < 0.0)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v51;
    }

    (v86)(v89, v92, v30);
    [v25 doubleValue];
    if (v53 >= 0.0)
    {
      v55 = 1;
    }

    else
    {
      [v29 doubleValue];
      v55 = v54 >= 0.0;
    }

    v56 = v91;
    *v91 = v37;
    v57 = v77;
    v39(v56 + *(v77 + 20), v89, v30);
    *(v56 + v57[6]) = v50;
    *(v56 + v57[7]) = v52;
    *(v56 + v57[8]) = v55;
    v14 = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_D5CD0(0, v14[2] + 1, 1, v14, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    v59 = v14[2];
    v58 = v14[3];
    if (v59 >= v58 >> 1)
    {
      v14 = sub_D5CD0((v58 > 1), v59 + 1, 1, v14, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    v60 = v92;
    v13 = v37 + 1;

    (*v66)(v60, v30);
    v14[2] = v59 + 1;
    sub_D7D68(v91, v14 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  }

  while (v13 != 10);
  v61 = v63;
  (v86)(v63, v79, v30);
  result = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  *(v61 + *(result + 20)) = v93;
  *(v61 + *(result + 24)) = v14;
  return result;
}

uint64_t sub_D5810@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v4 = sub_1158D0();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_115760();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  *&v35 = 0xD000000000000015;
  *(&v35 + 1) = 0x8000000000136450;
  v20 = sub_117A10();
  v33 = a1;
  v21 = [a1 __swift_objectForKeyedSubscript:v20];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    sub_54960(0, &qword_185FB0, NSDictionary_ptr);
    if (swift_dynamicCast())
    {
      v22 = v34;
      goto LABEL_9;
    }
  }

  else
  {
    sub_D7D00(&v37);
  }

  sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v22 = sub_1174C0();
LABEL_9:
  v23 = v22;
  sub_A79FC();
  sub_115700();
  sub_D3894(v23, v19, v32);
  *&v35 = 0xD000000000000014;
  *(&v35 + 1) = 0x8000000000136470;
  v24 = [v33 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    sub_D7D00(&v37);
    goto LABEL_16;
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    v25 = sub_117590();
    goto LABEL_17;
  }

  v25 = v34;
LABEL_17:
  sub_115700();
  sub_1158A0();
  sub_115830();
  (*(v30 + 8))(v6, v31);
  sub_115720();
  sub_115740();
  v26 = type metadata accessor for BUIChartViewData(0);
  sub_D4F00(v25, v16, &v32[*(v26 + 20)]);

  v27 = *(v8 + 8);
  v27(v10, v7);
  v27(v13, v7);
  return (v27)(v16, v7);
}

void *sub_D5CD0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_46F9C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_D5EAC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_D5CD0(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_186450, &qword_12BE20, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_D5FFC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.ScreenUsageLongFormElement(0);
  if ((sub_115720() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    goto LABEL_21;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    v8 = 0x664F6E6565726373;
  }

  else
  {
    v8 = 0x6E4F6E6565726373;
  }

  if (v6)
  {
    v9 = 0xE900000000000066;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v7)
  {
    v10 = 0x664F6E6565726373;
  }

  else
  {
    v10 = 0x6E4F6E6565726373;
  }

  if (v7)
  {
    v11 = 0xE900000000000066;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {

    goto LABEL_24;
  }

  v13 = sub_1179E0();

  if (v13)
  {
LABEL_24:
    v14 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
    return v14 & 1;
  }

LABEL_21:
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_D6134(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  if ((sub_115720() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_D61E4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  return (sub_115720() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]);
}

uint64_t sub_D62E4(uint64_t a1, uint64_t a2)
{
  if ((sub_115720() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  if (!sub_D433C(*(a1 + v4[5]), *(a2 + v4[5])) || !sub_D4594(*(a1 + v4[6]), *(a2 + v4[6])) || !sub_D4594(*(a1 + v4[7]), *(a2 + v4[7])) || !sub_D4594(*(a1 + v4[8]), *(a2 + v4[8])))
  {
    return 0;
  }

  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_D48EC(v6, v7);
}

uint64_t sub_D63A4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  if ((sub_115720() & 1) != 0 && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    v5 = *(a1 + *(v4 + 28)) ^ *(a2 + *(v4 + 28)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_D6440(uint64_t a1, uint64_t a2)
{
  if ((sub_115720() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  if ((sub_115720() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (!v6)
  {
    v9 = 0xE800000000000000;
    v8 = 0x676E696772616863;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v6 != 1)
  {
    v8 = 0x43646570706F7473;
    v9 = 0xEF676E6967726168;
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v7 == 1)
    {
      v10 = 0xEE00676E69677261;
      if (v8 != 0x6843646573756170)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0xEF676E6967726168;
      if (v8 != 0x43646570706F7473)
      {
        goto LABEL_17;
      }
    }

LABEL_15:
    if (v9 == v10)
    {

      return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
    }

    goto LABEL_17;
  }

  v8 = 0x6843646573756170;
  v9 = 0xEE00676E69677261;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_12:
  v10 = 0xE800000000000000;
  if (v8 == 0x676E696772616863)
  {
    goto LABEL_15;
  }

LABEL_17:
  v11 = sub_1179E0();

  if (v11)
  {
    return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
  }

  return 0;
}

BOOL sub_D65E8(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_115720())
  {
    v4 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
    if (sub_D433C(*(a1 + v4[5]), *(a2 + v4[5])) && sub_D4594(*(a1 + v4[6]), *(a2 + v4[6])) && sub_D4594(*(a1 + v4[7]), *(a2 + v4[7])) && sub_D4594(*(a1 + v4[8]), *(a2 + v4[8])) && (sub_D48EC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0)
    {
      v5 = *(type metadata accessor for BUIChartViewData(0) + 20);
      v6 = a1 + v5;
      v7 = a2 + v5;
      if (sub_115720())
      {
        v8 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
        if (sub_D4B3C(*(v6 + *(v8 + 20)), *(v7 + *(v8 + 20))) & 1) != 0 && (sub_D48EC(*(v6 + *(v8 + 24)), *(v7 + *(v8 + 24))))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t sub_D66F0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1692E8;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void *sub_D679C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v41 = a4;
  v39 = a2;
  v40 = a3;
  v38 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_115600();
  v43 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1175A0();
  sub_1155F0();
  if (v47)
  {
    v13 = _swiftEmptyArrayStorage;
    do
    {
      sub_543D8(&v46, &v45);
      sub_54960(0, &qword_185FB8, NSArray_ptr);
      if (swift_dynamicCast())
      {
        v36 = v4;
        v14 = v44;
        sub_54960(0, &qword_1831C0, NSNumber_ptr);
        isa = sub_1175C0(0).super.super.isa;
        v15 = [v14 count];
        v34 = v13;
        if (v15 >= 1)
        {
          v16 = [v14 objectAtIndexedSubscript:0];
          sub_117660();
          swift_unknownObjectRelease();
          if (swift_dynamicCast())
          {
            v17 = v10;
            v18 = v44;

            isa = v18;
            v10 = v17;
          }
        }

        v35 = v10;
        v19.super.super.isa = sub_1175C0(0).super.super.isa;
        v20 = [v14 count];
        v32 = v6;
        v33 = v14;
        if (v20 > 1 && (v21 = [v14 objectAtIndexedSubscript:1], sub_117660(), swift_unknownObjectRelease(), swift_dynamicCast()))
        {
          v22 = v44;

          v37 = v22;
        }

        else
        {
          v37 = v19.super.super.isa;
        }

        v23 = isa;
        [(objc_class *)isa doubleValue];
        sub_115740();
        v24 = v37;
        [(objc_class *)v37 doubleValue];
        v25 = v38;
        sub_115740();
        v26 = v40;
        v9[*(v25 + 24)] = v39;
        v9[*(v25 + 28)] = v26;
        if (sub_1156C0())
        {
          v6 = v32;
          sub_D7DF0(v9, v32, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          v13 = v34;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_D5CD0(0, v13[2] + 1, 1, v13, &qword_186450, &qword_12BE20, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          }

          v27 = v33;
          v29 = v13[2];
          v28 = v13[3];
          if (v29 >= v28 >> 1)
          {
            v13 = sub_D5CD0((v28 > 1), v29 + 1, 1, v13, &qword_186450, &qword_12BE20, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          }

          sub_D8FEC(v9, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          v13[2] = v29 + 1;
          v4 = v36;
          sub_D7D68(v6, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v36 + 72) * v29, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          v10 = v35;
        }

        else
        {
          sub_D8FEC(v9, type metadata accessor for BUIChartViewData.ChargingIntervalElement);

          v10 = v35;
          v4 = v36;
          v6 = v32;
          v13 = v34;
        }
      }

      sub_1155F0();
    }

    while (v47);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  (*(v43 + 8))(v12, v10);
  return v13;
}

double *sub_D6CD4(void *a1, uint64_t a2)
{
  v96 = a2;
  v92 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v74 - v5);
  v98 = sub_115760();
  v88 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = &v74 - v9;
  *&v102 = 0xD000000000000028;
  *(&v102 + 1) = 0x8000000000136490;
  v10 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  if (*(&v103 + 1))
  {
    sub_54960(0, &qword_185FB0, NSDictionary_ptr);
    if (swift_dynamicCast())
    {
      v11 = v107;
      goto LABEL_9;
    }
  }

  else
  {
    sub_D7D00(&v104);
  }

  sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v11 = sub_1174C0();
LABEL_9:
  *&v102 = 0xD000000000000024;
  *(&v102 + 1) = 0x80000000001364C0;
  v12 = [v11 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  if (*(&v103 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v13 = v107;
      goto LABEL_17;
    }
  }

  else
  {
    sub_D7D00(&v104);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v13 = sub_117590();
LABEL_17:
  v82 = v13;
  v14 = sub_D679C(v13, 0, 1, v96);
  *&v102 = 0xD000000000000029;
  *(&v102 + 1) = 0x80000000001364F0;
  v15 = [v11 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  if (*(&v103 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v16 = v107;
      goto LABEL_25;
    }
  }

  else
  {
    sub_D7D00(&v104);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v16 = sub_117590();
LABEL_25:
  v81 = v16;
  v17 = sub_D679C(v16, 1, 1, v96);
  *&v102 = 0xD00000000000002ALL;
  *(&v102 + 1) = 0x8000000000136520;
  v18 = [v11 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  if (*(&v103 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v19 = v107;
      goto LABEL_33;
    }
  }

  else
  {
    sub_D7D00(&v104);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v19 = sub_117590();
LABEL_33:
  v80 = v19;
  v20 = sub_D679C(v19, 2, 1, v96);
  *&v104 = v14;

  sub_D5EAC(v21);

  sub_D5EAC(v22);
  v94 = v104;
  *&v102 = 0xD00000000000001BLL;
  *(&v102 + 1) = 0x8000000000136550;
  v23 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  v83 = v11;
  if (*(&v103 + 1))
  {
    v24 = sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v93 = v107;
      goto LABEL_41;
    }
  }

  else
  {
    sub_D7D00(&v104);
  }

  v24 = sub_54960(0, &qword_185FB8, NSArray_ptr);
  v93 = sub_117590();
LABEL_41:
  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v95 = v24;
  v25 = sub_117590();
  *&v102 = 0xD00000000000001FLL;
  *(&v102 + 1) = 0x8000000000136570;
  v26 = [v83 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v26)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  v27 = v83;
  if (*(&v103 + 1))
  {
    if (swift_dynamicCast())
    {
      v28 = v107;
      goto LABEL_49;
    }
  }

  else
  {
    sub_D7D00(&v104);
  }

  v28 = sub_117590();
LABEL_49:

  v29 = v28;
  v30 = sub_D679C(v29, 0, 0, v96);
  v79 = v29;

  v107 = v30;
  sub_D5EAC(v14);
  *&v102 = 0xD000000000000025;
  *(&v102 + 1) = 0x8000000000136590;
  v31 = [v27 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v31)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  if (*(&v103 + 1))
  {
    if (swift_dynamicCast())
    {
      v32 = v106;
      goto LABEL_57;
    }
  }

  else
  {
    sub_D7D00(&v104);
  }

  v32 = sub_117590();
LABEL_57:
  v78 = v32;
  v106 = sub_D679C(v32, 1, 0, v96);
  sub_D5EAC(v17);
  *&v102 = 0xD000000000000026;
  *(&v102 + 1) = 0x80000000001365C0;
  v33 = [v27 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v33)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  if (*(&v103 + 1))
  {
    if (swift_dynamicCast())
    {
      v34 = v100;
      goto LABEL_65;
    }
  }

  else
  {
    sub_D7D00(&v104);
  }

  v34 = sub_117590();
LABEL_65:
  *&v102 = sub_D679C(v34, 2, 0, v96);
  sub_D5EAC(v20);
  v35 = *sub_A79FC();
  result = sub_A7A80();
  v89 = result;
  v37 = v35 / *result;
  if (COERCE__INT64(fabs(v37)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_102;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v38 = v37;
  v40 = v106;
  v39 = v107;
  v101 = v107;

  sub_D5EAC(v41);
  v42 = v102;

  result = sub_D5EAC(v43);
  if (v38 < 0)
  {
LABEL_104:
    __break(1u);
    return result;
  }

  v74 = v42;
  v75 = v40;
  v76 = v39;
  v77 = v34;
  v84 = v101;
  if (v38)
  {
    sub_54960(0, &qword_1831C0, NSNumber_ptr);
    v44 = 0;
    v87 = (v88 + 16);
    v86 = (v88 + 32);
    v85 = (v88 + 8);
    v45 = _swiftEmptyArrayStorage;
    v88 = v38;
    do
    {
      v46 = sub_117590();
      v47 = v93;
      if (v44 < [v93 count])
      {
        v48 = [v47 objectAtIndexedSubscript:v44];
        sub_117660();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v49 = v100;

          v46 = v49;
        }
      }

      v50.super.super.isa = sub_1175C0(0).super.super.isa;
      if ([v46 count] >= 1)
      {
        v51 = [v46 objectAtIndexedSubscript:0];
        sub_117660();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v52 = v100;

          v50.super.super.isa = v52;
        }
      }

      v53.super.super.isa = sub_1175C0(0).super.super.isa;
      if ([v46 count] <= 1)
      {
      }

      else
      {
        v54 = [v46 objectAtIndexedSubscript:1];
        sub_117660();
        swift_unknownObjectRelease();

        if (swift_dynamicCast())
        {
          v55 = v100;

          v53.super.super.isa = v55;
        }
      }

      sub_115740();
      v56 = sub_E5F34(v94);
      v57 = v56;
      v58 = v56 & 1;
      LOBYTE(v104) = 1;
      v61 = sub_5822C(v56, v59, v60);
      v62 = sub_F59F0(&type metadata for PerfPowerServices, v61);
      if (v62)
      {
        v63 = 1;
      }

      else
      {
        v63 = v58;
      }

      if ((v62 & 1) != 0 && (v57 & 1) == 0)
      {
        if (sub_E5F34(v84))
        {
          v63 = v58;
        }

        else
        {
          v63 = 2;
        }
      }

      (*v87)(v97, v99, v98);
      [(objc_class *)v50.super.super.isa doubleValue];
      v64 = 0.0;
      if (v65 >= 0.0)
      {
        [(objc_class *)v50.super.super.isa doubleValue];
        if (v66 <= 100.0)
        {
          v64 = v66;
        }

        else
        {
          v64 = 100.0;
        }
      }

      v67 = [(objc_class *)v53.super.super.isa integerValue];
      [(objc_class *)v50.super.super.isa doubleValue];
      v69 = v68 >= 0.0;
      *v6 = v44;
      v70 = v92;
      (*v86)(v6 + *(v92 + 20), v97, v98);
      *(v6 + v70[6]) = v64;
      *(v6 + v70[7]) = v67;
      *(v6 + v70[8]) = v69;
      *(v6 + v70[9]) = v63;
      v71 = v90;
      sub_D7DF0(v6, v90, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_D5CD0(0, v45[2] + 1, 1, v45, &qword_185638, &qword_12A298, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      }

      v73 = v45[2];
      v72 = v45[3];
      if (v73 >= v72 >> 1)
      {
        v45 = sub_D5CD0((v72 > 1), v73 + 1, 1, v45, &qword_185638, &qword_12A298, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      }

      ++v44;

      sub_D8FEC(v6, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      (*v85)(v99, v98);
      v45[2] = v73 + 1;
      sub_D7D68(v71, v45 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v73, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    }

    while (v88 != v44);
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
  }

  return v45;
}

uint64_t sub_D7D00(uint64_t a1)
{
  v2 = sub_46F9C(&qword_182FC8, &qword_124DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D7D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_D7DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_D7E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185FC0;
  if (!qword_185FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FC0);
  }

  return result;
}

unint64_t sub_D7EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185FC8;
  if (!qword_185FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FC8);
  }

  return result;
}

unint64_t sub_D7F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185FD0;
  if (!qword_185FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FD0);
  }

  return result;
}

unint64_t sub_D7F90()
{
  result = qword_183548;
  if (!qword_183548)
  {
    sub_115760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183548);
  }

  return result;
}

uint64_t sub_D7FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_D8100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_D81FC(uint64_t a1)
{
  result = type metadata accessor for BUIChartViewData.DataFor24Hrs(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BUIChartViewData.DataFor10Days(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_D82AC(uint64_t a1)
{
  result = sub_115760();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D8364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D8448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_D8524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D85F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_D86BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_115760();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D8774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D8840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_D88F8(uint64_t a1)
{
  result = sub_115760();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D89B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D8A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_D8B54(uint64_t a1)
{
  result = sub_115760();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_D8C18(uint64_t a1)
{
  sub_115760();
  if (v1 <= 0x3F)
  {
    sub_D8D28(319, &qword_186370, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    if (v2 <= 0x3F)
    {
      sub_D8D28(319, &qword_186378, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      if (v3 <= 0x3F)
      {
        sub_D8D28(319, &unk_186380, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_D8D28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1173A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_D8D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_D8E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_D8F18(uint64_t a1)
{
  sub_115760();
  if (v1 <= 0x3F)
  {
    sub_D8D28(319, &unk_186418, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    if (v2 <= 0x3F)
    {
      sub_D8D28(319, &unk_186380, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_D8FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_D9090(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v25 = sub_46F9C(&qword_183560, &qword_129070);
  __chkstk_darwin(v25);
  v24 = &v24 - v6;
  v7 = sub_5A754();
  swift_beginAccess();
  v8 = *v7;
  *(a2 + 24) = *v7;
  v9 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v10 = v9[7];
  *(a2 + v10) = swift_getKeyPath();
  sub_46F9C(&qword_185648, &qword_12B880);
  v11 = swift_storeEnumTagMultiPayload();
  *(a2 + v9[8]) = 0;
  LOBYTE(v26[0]) = 1;
  v14 = sub_5822C(v11, v12, v13);
  swift_retain_n();
  if (sub_F59F0(&type metadata for PerfPowerServices, v14))
  {
    v15 = &off_169540;
  }

  else
  {
    v15 = &off_169578;
  }

  *(a2 + v9[10]) = v15;
  *(a2 + v9[11]) = 0x4049000000000000;
  v16 = v9[13];
  LOBYTE(v26[0]) = 1;

  *(a2 + v16) = sub_F59F0(&type metadata for PerfPowerServices, v14) & 1;
  type metadata accessor for BUIChartViewModel(0);
  sub_E4770(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);

  *a2 = sub_116120();
  *(a2 + 8) = v17;
  *(a2 + 16) = a3;
  v18 = *(v8 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);

  sub_ECCA4(a1, 0, v26, a3, v18);
  v19 = a2 + v9[9];
  v20 = v26[1];
  *v19 = v26[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v27;
  v21 = v24;
  sub_ECF08();
  v22 = v9[12];
  v23 = sub_48800(&qword_183570, &qword_183560, &qword_129070, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
  sub_E9054(v15, v21, v25, v23, a2 + v22, 50.0);
}

uint64_t sub_D934C(uint64_t *a1)
{
  v3 = *(**(v1 + 8) + 240);
  v4 = v3();
  if ((v5 & 1) == 0)
  {
    v7 = *a1;
    v4 = (v3)(v4);
    v8 = v7 + 3;
    if (v7 >= 0)
    {
      v8 = v7;
    }

    if ((v5 & 1) != 0 || v8 >> 2 != v4)
    {
    }
  }

  v9 = sub_5822C(v4, v5, v6);
  if ((sub_F59F0(&type metadata for PerfPowerServices, v9) & 1) != 0 && (v10 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0), v11 = *(a1 + *(v10 + 36)), sub_D7F38(v10, v12, v13), (sub_117160() & 1) == 0))
  {
    v15 = v11;
  }

  else
  {
    if (sub_D2D34() & 1) != 0 || (sub_D2D5C())
    {
    }

    v15 = *(a1 + *(type metadata accessor for BUIChartViewData.BatteryLevelsElement(0) + 36));
  }

  return sub_D34A8(v15);
}

uint64_t sub_D94B4(uint64_t a1)
{
  v2 = sub_46F9C(&qword_186458, &qword_12B8B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_46F9C(&qword_186460, &unk_12B8C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_D96C4(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_488C8(v4, &qword_186458, &qword_12B8B8);
LABEL_3:
    v9 = type metadata accessor for BUIChartViewConfig(0);
    return (*(v9 + 608))(a1);
  }

  sub_548D0(v4, v8, &qword_186460, &unk_12B8C0);
  if (sub_1156D0())
  {
    type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
    v11 = sub_1156C0();
    sub_488C8(v8, &qword_186460, &unk_12B8C0);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_488C8(v8, &qword_186460, &unk_12B8C0);
  }

  return swift_retain_n();
}

uint64_t sub_D96C4@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v38 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v38);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_115760();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - v19;
  v21 = *(v1 + 8);
  (*(*v21 + 240))(v18);
  if (v22)
  {
    v23 = sub_46F9C(&qword_186460, &unk_12B8C0);
    v24 = *(*(v23 - 8) + 56);
    v25 = v23;
    v26 = v39;

    return v24(v26, 1, 1, v25);
  }

  else
  {
    (*(*v21 + 136))();
    sub_DA09C(v12, v9, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v12, type metadata accessor for BUIChartViewData);
    (*(v14 + 16))(v16, v9, v13);
    sub_E5E20(v9, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_A79F0();
    sub_115740();
    v28 = *(v14 + 8);
    v28(v16, v13);
    sub_115740();
    sub_E4770(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = sub_117130();
    if (result)
    {
      v29 = *(v14 + 32);
      v29(v6, v20, v13);
      v30 = v28;
      v31 = v38;
      v29(&v6[*(v38 + 48)], v16, v13);
      sub_479B4(v6, v3, &qword_185928, &unk_12A520);
      v32 = *(v31 + 48);
      v33 = v39;
      v29(v39, v3, v13);
      v34 = &v3[v32];
      v35 = v30;
      v30(v34, v13);
      sub_548D0(v6, v3, &qword_185928, &unk_12A520);
      v36 = *(v31 + 48);
      v37 = sub_46F9C(&qword_186460, &unk_12B8C0);
      v29(&v33[*(v37 + 36)], &v3[v36], v13);
      v35(v3, v13);
      return (*(*(v37 - 8) + 56))(v33, 0, 1, v37);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_D9BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v43);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v40 = sub_46F9C(&qword_186460, &unk_12B8C0);
  __chkstk_darwin(v40);
  v11 = &v32 - v10;
  v12 = sub_115BC0();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_186480, &unk_12B8E0);
  v45 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v39 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v17 = *(v39 + 20);
  v18 = sub_115760();
  sub_E4770(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_117130();
  if (result)
  {
    v20 = *(v18 - 8);
    v38 = a3;
    v21 = v20;
    v35 = a2;
    v22 = *(v20 + 16);
    v37 = v14;
    v22(v9, a1, v18);
    v36 = v16;
    v23 = v43;
    v22(&v9[*(v43 + 48)], a1 + v17, v18);
    v24 = v41;
    sub_479B4(v9, v41, &qword_185928, &unk_12A520);
    v25 = *(v23 + 48);
    v33 = a1;
    v34 = v12;
    v26 = *(v21 + 32);
    v26(v11, v24, v18);
    v27 = *(v21 + 8);
    v27(v24 + v25, v18);
    sub_548D0(v9, v24, &qword_185928, &unk_12A520);
    v26(&v11[*(v40 + 36)], v24 + *(v23 + 48), v18);
    v27(v24, v18);
    v28 = v42;
    sub_DA120();
    sub_488C8(v11, &qword_186460, &unk_12B8C0);
    v46 = sub_D3534(*(v33 + *(v39 + 28)));
    v29 = v36;
    v30 = v34;
    sub_115AF0();

    (*(v44 + 8))(v28, v30);
    v46 = v30;
    v47 = &type metadata for Color;
    v48 = &protocol witness table for RectangleMark;
    v49 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v31 = v37;
    sub_115B20();
    return (*(v45 + 8))(v29, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DA09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_DA120()
{
  v1 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  v6 = sub_5822C(v3, v4, v5);
  sub_F59F0(&type metadata for PerfPowerServices, v6);
  sub_116370();
  sub_115760();
  sub_115C60();

  sub_116370();
  sub_46F9C(&qword_186460, &unk_12B8C0);
  sub_115C60();

  return sub_115BB0();
}

uint64_t sub_DA370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v45);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v40 = sub_46F9C(&qword_186460, &unk_12B8C0);
  __chkstk_darwin(v40);
  v42 = &v34 - v10;
  v11 = sub_115BC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_186480, &unk_12B8E0);
  v44 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = *(type metadata accessor for BUIChartViewData.ChargingIntervalElement(0) + 20);
  v18 = sub_115760();
  sub_E4770(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_117130();
  if (result)
  {
    v20 = *(v18 - 8);
    v39 = a3;
    v21 = v20;
    v35 = a2;
    v22 = *(v20 + 16);
    v38 = v14;
    v22(v9, a1, v18);
    v36 = v16;
    v37 = v12;
    v23 = v45;
    v22(&v9[*(v45 + 48)], a1 + v17, v18);
    v24 = v41;
    sub_479B4(v9, v41, &qword_185928, &unk_12A520);
    v25 = *(v23 + 48);
    v34 = v11;
    v26 = *(v21 + 32);
    v27 = v42;
    v26(v42, v24, v18);
    v28 = *(v21 + 8);
    v28(v24 + v25, v18);
    sub_548D0(v9, v24, &qword_185928, &unk_12A520);
    v26((v27 + *(v40 + 36)), v24 + *(v23 + 48), v18);
    v28(v24, v18);
    v29 = v43;
    v30 = v35;
    sub_DA120();
    sub_488C8(v27, &qword_186460, &unk_12B8C0);
    v46 = *(*(v30 + 24) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeGrayColor);
    v31 = v36;
    v32 = v34;
    sub_115AF0();
    (*(v37 + 8))(v29, v32);
    v46 = v32;
    v47 = &type metadata for Color;
    v48 = &protocol witness table for RectangleMark;
    v49 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v33 = v38;
    sub_115B20();
    return (*(v44 + 8))(v31, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DA840()
{
  v1 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1158E0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 48);

  v6 = *(sub_46F9C(&qword_185640, &unk_12A2C0) + 40);
  v7 = sub_46F9C(&qword_183560, &qword_129070);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_DAA18(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Battery24HrBatteryLevelChart(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_DAAAC@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v91 = sub_46F9C(&qword_186490, &qword_12B8F0);
  __chkstk_darwin(v91);
  v90 = v72 - v2;
  v3 = sub_46F9C(&qword_186498, &qword_12B8F8);
  __chkstk_darwin(v3 - 8);
  v85 = v72 - v4;
  v5 = sub_46F9C(&qword_1864A0, &qword_12B900);
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v96 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = v72 - v8;
  v9 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v92 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v101 = v10;
  v99 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v11 - 8);
  v13 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  __chkstk_darwin(v14);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_46F9C(&qword_1864A8, &qword_12B908);
  v98 = *(v94 - 8);
  __chkstk_darwin(v94);
  v18 = v72 - v17;
  v19 = sub_46F9C(&qword_1864B0, &qword_12B910);
  v86 = *(v19 - 8);
  v87 = v19;
  __chkstk_darwin(v19);
  v93 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v100 = v72 - v22;
  v23 = sub_46F9C(&qword_186458, &qword_12B8B8);
  __chkstk_darwin(v23 - 8);
  v25 = v72 - v24;
  v26 = sub_46F9C(&qword_186460, &unk_12B8C0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v72 - v28;
  v30 = v1;
  sub_D96C4(v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v31 = sub_488C8(v25, &qword_186458, &qword_12B8B8);
    (*(**(v1 + 8) + 136))(v31);
    sub_DA09C(v13, v16, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v13, type metadata accessor for BUIChartViewData);
    v32 = *&v16[*(v14 + 24)];

    sub_E5E20(v16, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v106 = v32;
    v33 = v99;
    sub_DA09C(v30, v99, type metadata accessor for Battery24HrBatteryLevelChart);
    v34 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v35 = swift_allocObject();
    sub_E4688(v33, v35 + v34, type metadata accessor for Battery24HrBatteryLevelChart);
    v36 = v18;
    sub_46F9C(&qword_186468, &qword_12B8D0);
    sub_115760();
    sub_46F9C(&qword_186470, &qword_12B8D8);
    sub_48800(&qword_186478, &qword_186468, &qword_12B8D0, &protocol conformance descriptor for [A]);
    v37 = sub_47A1C(&qword_186480, &unk_12B8E0);
    v102 = sub_115BC0();
    v103 = &type metadata for Color;
    v104 = &protocol witness table for RectangleMark;
    v105 = &protocol witness table for Color;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v102 = v37;
    v103 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_E4770(&qword_186488, type metadata accessor for BUIChartViewData.ChargingIntervalElement, &unk_12B628);
    sub_116DF0();
    (*(v98 + 32))(v97, v36, v94);
    sub_46F9C(&qword_1864B8, &qword_12B918);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v84 = v29;
    v40 = sub_548D0(v25, v29, &qword_186460, &unk_12B8C0);
    v81 = *(v1 + 8);
    v83 = v1;
    v41 = (*v81 + 136);
    v80 = *v41;
    v82 = v41;
    v80(v40);
    v79 = type metadata accessor for BUIChartViewData.DataFor24Hrs;
    sub_DA09C(v13, v16, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v78 = type metadata accessor for BUIChartViewData;
    sub_E5E20(v13, type metadata accessor for BUIChartViewData);
    v77 = v14;
    v42 = *&v16[*(v14 + 24)];

    v76 = type metadata accessor for BUIChartViewData.DataFor24Hrs;
    sub_E5E20(v16, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v106 = v42;
    v75 = type metadata accessor for Battery24HrBatteryLevelChart;
    v43 = v99;
    sub_DA09C(v30, v99, type metadata accessor for Battery24HrBatteryLevelChart);
    v92 = *(v92 + 80);
    v44 = (v92 + 16) & ~v92;
    v73 = v44;
    v45 = swift_allocObject();
    v74 = type metadata accessor for Battery24HrBatteryLevelChart;
    sub_E4688(v43, v45 + v44, type metadata accessor for Battery24HrBatteryLevelChart);
    v72[5] = sub_46F9C(&qword_186468, &qword_12B8D0);
    v72[4] = sub_115760();
    v72[3] = sub_46F9C(&qword_186470, &qword_12B8D8);
    v72[2] = sub_48800(&qword_186478, &qword_186468, &qword_12B8D0, &protocol conformance descriptor for [A]);
    v46 = sub_47A1C(&qword_186480, &unk_12B8E0);
    v102 = sub_115BC0();
    v103 = &type metadata for Color;
    v104 = &protocol witness table for RectangleMark;
    v105 = &protocol witness table for Color;
    v47 = swift_getOpaqueTypeConformance2();
    v102 = v46;
    v103 = v47;
    swift_getOpaqueTypeConformance2();
    v72[1] = sub_E4770(&qword_186488, type metadata accessor for BUIChartViewData.ChargingIntervalElement, &unk_12B628);
    v48 = sub_116DF0();
    __chkstk_darwin(v48);
    swift_checkMetadataState();
    v49 = v94;
    v72[6] = sub_DB9DC();
    sub_115B40();
    v50 = *(v98 + 8);
    v51 = v50(v18, v49);
    v80(v51);
    sub_DA09C(v13, v16, v79);
    sub_E5E20(v13, v78);
    v52 = *&v16[*(v77 + 24)];

    sub_E5E20(v16, v76);
    v102 = v52;
    v53 = v99;
    sub_DA09C(v83, v99, v75);
    v54 = v73;
    v55 = swift_allocObject();
    sub_E4688(v53, v55 + v54, v74);
    v56 = sub_116DF0();
    v101 = v72;
    __chkstk_darwin(v56);
    sub_46F9C(&qword_1864C8, &qword_12B920);
    sub_48800(&qword_1864D0, &qword_1864C8, &qword_12B920, &protocol conformance descriptor for Plot<A>);
    v57 = v95;
    sub_115B40();
    v50(v18, v49);
    v58 = v86;
    v59 = v87;
    v60 = *(v86 + 16);
    v61 = v93;
    v60(v93, v100, v87);
    v63 = v88;
    v62 = v89;
    v64 = *(v88 + 16);
    v64(v96, v57, v89);
    v65 = v90;
    v60(v90, v61, v59);
    v66 = v91;
    v67 = *(v91 + 48);
    v68 = v96;
    v64(&v65[v67], v96, v62);
    v69 = v85;
    (*(v58 + 32))(v85, v65, v59);
    (*(v63 + 32))(v69 + *(v66 + 48), &v65[v67], v62);
    v70 = *(v63 + 8);
    v70(v95, v62);
    v71 = *(v58 + 8);
    v71(v100, v59);
    v70(v68, v62);
    v71(v93, v59);
    sub_548D0(v69, v97, &qword_186498, &qword_12B8F8);
    sub_46F9C(&qword_1864B8, &qword_12B918);
    swift_storeEnumTagMultiPayload();
    return sub_488C8(v84, &qword_186460, &unk_12B8C0);
  }
}

unint64_t sub_DB9DC()
{
  result = qword_1864C0;
  if (!qword_1864C0)
  {
    sub_47A1C(&qword_1864A8, &qword_12B908);
    sub_47A1C(&qword_186480, &unk_12B8E0);
    sub_115BC0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1864C0);
  }

  return result;
}

uint64_t sub_DBAE0()
{
  sub_46F9C(&qword_186888, &qword_12BE28);
  sub_E5E88();
  return sub_115DB0();
}

uint64_t sub_DBB54@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v82 = a3;
  v81 = sub_46F9C(&qword_186898, &qword_12BE30);
  __chkstk_darwin(v81);
  v5 = &v73 - v4;
  v94 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v94);
  v92 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = &v73 - v8;
  v9 = sub_115760();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v88 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_46F9C(&qword_186460, &unk_12B8C0);
  __chkstk_darwin(v90);
  v91 = &v73 - v21;
  v22 = sub_115BC0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v80 = &v73 - v27;
  __chkstk_darwin(v28);
  v89 = &v73 - v29;
  v31 = __chkstk_darwin(v30);
  v95 = a1;
  v96 = &v73 - v32;
  v33 = *(a1 + 8);
  v34 = (*v33 + 136);
  v84 = *v34;
  v85 = v33;
  v83 = v34;
  v84(v31);
  sub_DA09C(v17, v20, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v87 = v17;
  sub_E5E20(v17, type metadata accessor for BUIChartViewData);
  v97 = v10[2];
  v98 = v10 + 2;
  v97(v14, v20, v9);
  v86 = v20;
  sub_E5E20(v20, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v35 = sub_E4770(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_117130();
  if (result)
  {
    v74 = v25;
    v75 = v23;
    v76 = v22;
    v77 = v5;
    v37 = v10[4];
    v79 = v35;
    v38 = v93;
    v78 = v14;
    v37(v93, v14, v9);
    v39 = v94;
    v97((v38 + *(v94 + 48)), v99, v9);
    v40 = v92;
    sub_479B4(v38, v92, &qword_185928, &unk_12A520);
    v41 = *(v39 + 48);
    v42 = v91;
    v37(v91, v40, v9);
    v43 = v10[1];
    v43(v40 + v41, v9);
    sub_548D0(v38, v40, &qword_185928, &unk_12A520);
    v44 = *(v39 + 48);
    v45 = v42 + *(v90 + 36);
    v73 = v37;
    v37(v45, (v40 + v44), v9);
    v43(v40, v9);
    sub_DA120();
    v46 = sub_488C8(v42, &qword_186460, &unk_12B8C0);
    v47 = v87;
    (v84)(v46);
    v48 = v86;
    sub_DA09C(v47, v86, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v49 = v47;
    v50 = v78;
    sub_E5E20(v49, type metadata accessor for BUIChartViewData);
    v51 = v88;
    v97(v88, v48, v9);
    sub_E5E20(v48, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_A79FC();
    sub_115740();
    v52 = v99;
    v88 = v43;
    v43(v51, v9);
    result = sub_117130();
    if (result)
    {
      v53 = v93;
      v97(v93, v52, v9);
      v54 = v94;
      v55 = v73;
      v73((v53 + *(v94 + 48)), v50, v9);
      v56 = v92;
      sub_479B4(v53, v92, &qword_185928, &unk_12A520);
      v57 = *(v54 + 48);
      v58 = v91;
      v55(v91, v56, v9);
      v59 = v56 + v57;
      v60 = v88;
      (v88)(v59, v9);
      sub_548D0(v53, v56, &qword_185928, &unk_12A520);
      v55((v58 + *(v90 + 36)), v56 + *(v54 + 48), v9);
      v60(v56, v9);
      v61 = v89;
      sub_DA120();
      sub_488C8(v58, &qword_186460, &unk_12B8C0);
      v62 = v75;
      v63 = *(v75 + 16);
      v64 = v80;
      v65 = v76;
      v63(v80, v96, v76);
      v66 = v74;
      v63(v74, v61, v65);
      v67 = v77;
      v63(v77, v64, v65);
      v68 = v81;
      v69 = *(v81 + 48);
      v63(&v67[v69], v66, v65);
      v70 = *(v62 + 32);
      v71 = v82;
      v70(v82, v67, v65);
      v70(v71 + *(v68 + 48), &v67[v69], v65);
      v72 = *(v62 + 8);
      v72(v89, v65);
      v72(v96, v65);
      v72(v66, v65);
      return (v72)(v64, v65);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_DC478@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v59 = sub_46F9C(&qword_1864D8, &qword_12B928) - 8;
  __chkstk_darwin(v59);
  v58 = &v47 - v2;
  v3 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v54 = *(v3 - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin(v3 - 8);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_46F9C(&qword_1864E0, &qword_12B930);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v47 - v8;
  v9 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = sub_46F9C(&qword_1864E8, &qword_12B938);
  __chkstk_darwin(v18 - 8);
  v61 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v50 = v1;
  v51 = &v47 - v21;
  v22 = sub_DAAAC(&v47 - v21);
  v23 = *(**(v1 + 8) + 136);
  v23(v22);
  v47 = v23;
  sub_DA09C(v11, v17, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v11, type metadata accessor for BUIChartViewData);
  v48 = *&v17[v13[8]];

  v24 = sub_E5E20(v17, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v23(v24);
  v25 = v49;
  sub_DA09C(v11, v49, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v11, type metadata accessor for BUIChartViewData);
  v26 = *(v25 + v13[9]);

  sub_E5E20(v25, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v64 = v48;
  v27 = sub_D5EAC(v26);
  v47(v27);
  sub_DA09C(v11, v17, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v11, type metadata accessor for BUIChartViewData);
  v28 = *&v17[v13[10]];

  sub_E5E20(v17, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_D5EAC(v28);
  v63 = v64;
  v29 = v52;
  sub_DA09C(v50, v52, type metadata accessor for Battery24HrBatteryLevelChart);
  v30 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v31 = swift_allocObject();
  sub_E4688(v29, v31 + v30, type metadata accessor for Battery24HrBatteryLevelChart);
  sub_46F9C(&qword_186468, &qword_12B8D0);
  sub_115760();
  sub_46F9C(&qword_1864F0, &qword_12B940);
  sub_48800(&qword_186478, &qword_186468, &qword_12B8D0, &protocol conformance descriptor for [A]);
  sub_E3644();
  sub_E4770(&qword_186488, type metadata accessor for BUIChartViewData.ChargingIntervalElement, &unk_12B628);
  v32 = v62;
  sub_116DF0();
  v33 = v51;
  v34 = v61;
  sub_479B4(v51, v61, &qword_1864E8, &qword_12B938);
  v35 = v55;
  v36 = v56;
  v37 = *(v56 + 16);
  v38 = v32;
  v39 = v57;
  v37(v55, v38, v57);
  sub_E38A0();
  v40 = v34;
  v41 = v58;
  sub_479B4(v40, v58, &qword_1864E8, &qword_12B938);
  sub_E3A90(&qword_186538, &qword_1864E0, &qword_12B930, sub_E3644);
  v42 = v59;
  v43 = *(v59 + 56);
  v37((v41 + v43), v35, v39);
  v44 = v60;
  sub_548D0(v41, v60, &qword_1864E8, &qword_12B938);
  (*(v36 + 32))(v44 + *(v42 + 56), v41 + v43, v39);
  v45 = *(v36 + 8);
  v45(v62, v39);
  sub_488C8(v33, &qword_1864E8, &qword_12B938);
  v45(v35, v39);
  return sub_488C8(v61, &qword_1864E8, &qword_12B938);
}

uint64_t sub_DCB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v95 = sub_46F9C(&qword_186878, &qword_12BE10);
  __chkstk_darwin(v95);
  v94 = &v68 - v5;
  v81 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  __chkstk_darwin(v81);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BUIChartIconMark(0);
  v90 = *(v7 - 8);
  v91 = v7;
  __chkstk_darwin(v7);
  v68 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_46F9C(&qword_186518, &unk_12B958);
  __chkstk_darwin(v9 - 8);
  v93 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  v86 = sub_116390();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v15 - 8);
  v72 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v74 = sub_115BC0();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_46F9C(&qword_186480, &unk_12B8E0);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v68 - v20;
  v80 = sub_46F9C(&qword_186508, &qword_12B950);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v68 - v21;
  v83 = sub_46F9C(&qword_186500, &qword_12B948);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v68 - v22;
  v23 = sub_46F9C(&qword_186880, &qword_12BE18);
  v88 = *(v23 - 8);
  v89 = v23;
  __chkstk_darwin(v23);
  v87 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v100 = &v68 - v26;
  v27 = sub_D94B4(a1);
  v97 = v28;
  v98 = v27;
  type metadata accessor for Battery24HrBatteryLevelChart(0);
  v99 = a2;
  v92 = v13;
  sub_116370();
  sub_115760();
  v29 = a1;
  sub_115C60();

  sub_116370();
  v70 = a1;
  sub_115C60();

  sub_115BB0();
  v103 = v98;
  v30 = v71;
  v31 = v74;
  sub_115AF0();
  (*(v73 + 8))(v19, v31);
  v32 = v85;
  v33 = v84;
  v34 = v86;
  (*(v85 + 104))(v84, enum case for RoundedCornerStyle.continuous(_:), v86);
  v103 = v31;
  v104 = &type metadata for Color;
  v105 = &protocol witness table for RectangleMark;
  v106 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v76;
  v37 = v77;
  sub_115AE0();
  (*(v32 + 8))(v33, v34);
  (*(v75 + 8))(v30, v37);
  v38 = *(v99 + 8);
  v103 = (*(*v38 + 576))(v29);
  v104 = v39;
  v101 = v37;
  v102 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v43 = sub_4869C(v40, v41, v42);
  v44 = v79;
  v45 = v80;
  sub_115B00();

  (*(v78 + 8))(v36, v45);
  sub_116370();
  v103 = v45;
  v104 = &type metadata for String;
  v105 = v40;
  v106 = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v83;
  sub_115B10();
  v47 = v70;

  (*(v82 + 8))(v44, v46);
  v48 = sub_D3624();
  v49.n128_u64[0] = *(v99 + 16);
  v50 = (*(*v38 + 496))(v49);
  v51 = 1;
  v52 = v92;
  if (v50 < v48)
  {
    v53 = v69;
    sub_DA09C(v47, v69, type metadata accessor for BUIChartViewData.ChargingIntervalElement);

    v54 = v97;

    v55 = v68;
    sub_10ACC0(v53, v38, v54, v68);
    sub_E4688(v55, v52, type metadata accessor for BUIChartIconMark);
    v51 = 0;
  }

  (*(v90 + 56))(v52, v51, 1, v91);
  v57 = v88;
  v56 = v89;
  v58 = v52;
  v59 = *(v88 + 16);
  v60 = v87;
  v59(v87, v100, v89);
  v61 = v93;
  sub_479B4(v58, v93, &qword_186518, &unk_12B958);
  v62 = v94;
  v59(v94, v60, v56);
  sub_E37EC();
  v63 = v95;
  v64 = *(v95 + 48);
  sub_479B4(v61, &v62[v64], &qword_186518, &unk_12B958);
  v65 = v96;
  (*(v57 + 32))(v96, v62, v56);
  sub_548D0(&v62[v64], v65 + *(v63 + 48), &qword_186518, &unk_12B958);

  sub_488C8(v58, &qword_186518, &unk_12B958);
  v66 = *(v57 + 8);
  v66(v100, v56);
  sub_488C8(v61, &qword_186518, &unk_12B958);
  return (v66)(v60, v56);
}

uint64_t sub_DD7F8@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(**(v2 + 8) + 136);
  v12(v9);
  sub_DA09C(v7, v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  v13 = *&v11[*(v8 + 20)];

  sub_E5E20(v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v14 = *(v13 + 16);

  if (a1 < 0 || v14 <= a1)
  {
    v20 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    (v12)(v15);
    sub_DA09C(v7, v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v7, type metadata accessor for BUIChartViewData);
    v16 = *&v11[*(v8 + 20)];

    result = sub_E5E20(v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    if (*(v16 + 16) <= a1)
    {
      __break(1u);
    }

    else
    {
      v18 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
      v19 = *(v18 - 8);
      sub_DA09C(v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * a1, a2, type metadata accessor for BUIChartViewData.BatteryLevelsElement);

      return (*(v19 + 56))(a2, 0, 1, v18);
    }
  }

  return result;
}

void *sub_DDAF0(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v4 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = *(**(v2 + 8) + 136);
  v14(v11);
  sub_DA09C(v6, v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v6, type metadata accessor for BUIChartViewData);
  v15 = *&v13[*(v7 + 20)];

  sub_E5E20(v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v16 = *(v15 + 16);

  if (v16 <= a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v30 = a1;
  v32 = a1 & ~(a1 >> 63);
  (v14)(v17);
  v31 = type metadata accessor for BUIChartViewData.DataFor24Hrs;
  sub_DA09C(v6, v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v6, type metadata accessor for BUIChartViewData);
  v18 = *&v13[*(v7 + 20)];

  sub_E5E20(v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v19 = *(v18 + 16);

  if (v19 - 1 >= v33)
  {
    v21 = v33;
  }

  else
  {
    v21 = v19 - 1;
  }

  (v14)(v20);
  sub_DA09C(v6, v9, v31);
  sub_E5E20(v6, type metadata accessor for BUIChartViewData);
  v22 = *&v9[*(v7 + 20)];

  v23 = v32;
  result = sub_E5E20(v9, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  if (v21 >= v23)
  {
    v25 = *(v22 + 16);
    if (v25 < v30 || v25 < v21)
    {
      goto LABEL_16;
    }

    if (v25 != v21 - v23)
    {
      v27 = *(type metadata accessor for BUIChartViewData.BatteryLevelsElement(0) - 8);
      sub_E3B0C(v22, v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v23, (2 * v21) | 1);
      v29 = v28;

      return v29;
    }

    return v22;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_DDE2C@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_46F9C(&qword_185308, &qword_12A0A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_46F9C(&qword_186570, &unk_12B9A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v47 = sub_46F9C(&qword_186568, &qword_12B998);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v42 - v13;
  v15 = sub_46F9C(&qword_186560, &qword_12B990);
  v46 = *(v15 - 8);
  __chkstk_darwin(v15);
  v44 = &v42 - v16;
  v17 = *a1;
  v50 = a2;
  v51 = v17;
  sub_46F9C(&qword_186828, &qword_12BDD0);
  sub_E5960();
  sub_115DB0();
  v18 = *(a2 + *(type metadata accessor for Battery24HrBatteryLevelChart(0) + 52));
  v19 = *(a2 + 8);
  v48 = v15;
  v49 = a3;
  v43 = v17;
  if (v18 == 1)
  {
    sub_DD7F8(v17, v8);
    v20 = (*(*v19 + 560))(v8);
    v22 = v21;
    sub_488C8(v8, &qword_185308, &qword_12A0A8);
LABEL_8:
    v53 = v20;
    v54 = v22;
    v28 = sub_48800(&qword_186578, &qword_186570, &unk_12B9A0, &protocol conformance descriptor for Plot<A>);
    v31 = sub_4869C(v28, v29, v30);
    v32 = v14;
    sub_115B00();

    (*(v10 + 8))(v12, v9);
    sub_116370();
    v53 = v9;
    v54 = &type metadata for String;
    v55 = v28;
    v56 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = v44;
    v35 = v47;
    sub_115B10();

    (*(v45 + 8))(v32, v35);
    v36 = sub_59514();
    v38 = *v36;
    v37 = v36[1];
    v53 = 1920298824;
    v54 = 0xE400000000000000;
    v52 = v43;

    v57._countAndFlagsBits = sub_1179B0();
    sub_117220(v57);

    v39 = v53;
    v40 = v54;
    v53 = v38;
    v54 = v37;

    v58._countAndFlagsBits = v39;
    v58._object = v40;
    sub_117220(v58);

    v53 = v35;
    v54 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v41 = v48;
    sub_115B30();

    return (*(v46 + 8))(v34, v41);
  }

  v23 = *sub_A79A8();
  result = v17 * v23;
  if ((v17 * v23) >> 64 != (v17 * v23) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25 * v23;
  if ((v25 * v23) >> 64 != (v25 * v23) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v26 >= result)
  {
    sub_DDAF0(result, v26);
    v20 = (*(*v19 + 568))();
    v22 = v27;

    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_DE3C8@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v93 = a1;
  v91 = a3;
  v3 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v4 = v3 - 8;
  v85 = *(v3 - 8);
  v5 = *(v85 + 64);
  __chkstk_darwin(v3);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_46F9C(&qword_186850, &qword_12BDE0);
  v87 = *(v7 - 8);
  v88 = v7;
  __chkstk_darwin(v7);
  v86 = v71 - v8;
  v9 = sub_46F9C(&qword_184418, &unk_1281A0);
  __chkstk_darwin(v9 - 8);
  v84 = v71 - v10;
  v78 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v78);
  v75 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v71 - v13;
  v15 = sub_115760();
  v77 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_46F9C(&qword_185930, &qword_12BDF0);
  __chkstk_darwin(v74);
  v76 = v71 - v18;
  v19 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v19 - 8);
  v79 = v71 - v20;
  v83 = sub_115E00();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_46F9C(&qword_186868, &qword_12BDF8);
  v89 = *(v22 - 8);
  v90 = v22;
  __chkstk_darwin(v22);
  v80 = v71 - v23;
  v24 = sub_46F9C(&qword_185308, &qword_12A0A8);
  __chkstk_darwin(v24 - 8);
  v26 = v71 - v25;
  v27 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_46F9C(&qword_186840, &qword_12BDD8);
  __chkstk_darwin(v31 - 8);
  v33 = v71 - v32;
  v34 = *(v4 + 60);
  v35 = v93;
  if (*(v93 + v34) == 1)
  {
    v88 = v33;
    sub_DD7F8(v92, v26);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_488C8(v26, &qword_185308, &qword_12A0A8);
      v36 = 1;
      v38 = v89;
      v37 = v90;
      v39 = v88;
LABEL_8:
      (*(v38 + 56))(v39, v36, 1, v37);
      sub_548D0(v39, v91, &qword_186840, &qword_12BDD8);
      goto LABEL_9;
    }

    v47 = v30;
    sub_E4688(v26, v30, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    v87 = sub_116370();
    v49 = v48;
    LODWORD(v86) = v50;
    v92 = v51;
    v52 = &v30[*(v27 + 20)];
    sub_A79F0();
    sub_115740();
    v53 = v15;
    v85 = sub_E4770(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = sub_117130();
    if (result)
    {
      v71[1] = v49;
      v54 = v77;
      (*(v77 + 16))(v14, v52, v15);
      v55 = v78;
      v56 = *(v78 + 48);
      v73 = v47;
      v57 = *(v54 + 32);
      v57(&v14[v56], v17, v15);
      v58 = v75;
      sub_479B4(v14, v75, &qword_185928, &unk_12A520);
      v59 = v53;
      v60 = *(v55 + 48);
      v61 = v76;
      v72 = v27;
      v62 = v59;
      (v57)(v76, v58);
      v63 = *(v54 + 8);
      v63(v58 + v60, v62);
      sub_548D0(v14, v58, &qword_185928, &unk_12A520);
      v57((v61 + *(v74 + 36)), (v58 + *(v55 + 48)), v62);
      v63(v58, v62);
      sub_115C50();

      sub_488C8(v61, &qword_185930, &qword_12BDF0);
      sub_116370();
      v64 = v73;
      *&v97[0] = *(v73 + *(v72 + 24));
      sub_115C60();

      v66.n128_u64[0] = *(v93 + 16);
      (*(**(v93 + 8) + 448))(v65, v66);
      v67 = v81;
      sub_115DF0();
      v68 = sub_D934C(v64);
      sub_5B018(0, v68, v97);

      v94 = v97[0];
      v95 = v97[1];
      v96 = v98;
      v69 = v80;
      v70 = v83;
      sub_115AF0();
      sub_8CFC0(v97);
      (*(v82 + 8))(v67, v70);
      sub_E5E20(v64, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v39 = v88;
      v38 = v89;
      v37 = v90;
      (*(v89 + 32))(v88, v69, v90);
      v36 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v40 = v92;
    result = sub_A79A8();
    v42 = *result;
    if ((*result & 0x8000000000000000) == 0)
    {
      *&v97[0] = 0;
      *(&v97[0] + 1) = v42;
      swift_getKeyPath();
      sub_DA09C(v35, v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Battery24HrBatteryLevelChart);
      v43 = (*(v85 + 80) + 16) & ~*(v85 + 80);
      v44 = (v5 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      sub_E4688(v6, v45 + v43, type metadata accessor for Battery24HrBatteryLevelChart);
      *(v45 + v44) = v40;
      sub_46F9C(&qword_186540, &qword_12B980);
      sub_46F9C(&qword_186860, &qword_12BDE8);
      sub_E3CB0();
      sub_E5AE0();
      v46 = v86;
      sub_116E00();
      (*(v87 + 32))(v91, v46, v88);
LABEL_9:
      sub_46F9C(&qword_186870, &unk_12BE00);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

int64_t sub_DEF90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  v77 = a2;
  v6 = sub_46F9C(&qword_184418, &unk_1281A0);
  __chkstk_darwin(v6 - 8);
  v73 = v58 - v7;
  v67 = sub_46F9C(&qword_185928, &unk_12A520);
  __chkstk_darwin(v67);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v58 - v11;
  v13 = sub_115760();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_46F9C(&qword_185930, &qword_12BDF0);
  __chkstk_darwin(v64);
  v66 = v58 - v16;
  v17 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v17 - 8);
  v68 = v58 - v18;
  v19 = sub_115E00();
  v71 = *(v19 - 8);
  v72 = v19;
  __chkstk_darwin(v19);
  v70 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_46F9C(&qword_185950, &unk_12A540);
  v74 = *(v21 - 8);
  v75 = v21;
  __chkstk_darwin(v21);
  v69 = v58 - v22;
  v23 = sub_46F9C(&qword_185308, &qword_12A0A8);
  __chkstk_darwin(v23 - 8);
  v25 = v58 - v24;
  v26 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  result = sub_A79A8();
  v32 = a3 * *result;
  if ((a3 * *result) >> 64 != v32 >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = v32 + v30;
  if (__OFADD__(v32, v30))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_DD7F8(result, v25);
  v33 = v26;
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_488C8(v25, &qword_185308, &qword_12A0A8);
    v34 = 1;
    v36 = v74;
    v35 = v75;
    return (*(v36 + 56))(v76, v34, 1, v35);
  }

  v37 = v25;
  v38 = v29;
  sub_E4688(v37, v29, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
  v63 = sub_116370();
  v40 = v39;
  v62 = v41;
  v43 = v42;
  v44 = v38 + *(v33 + 20);
  sub_A79E4();
  sub_115740();
  v61 = sub_E4770(&qword_182F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_117130();
  if (result)
  {
    v58[2] = v40;
    v45 = v65;
    (*(v65 + 16))(v12, v44, v13);
    v46 = v67;
    v47 = *(v67 + 48);
    v60 = v33;
    v58[1] = v43;
    v48 = *(v45 + 32);
    v48(&v12[v47], v15, v13);
    sub_479B4(v12, v9, &qword_185928, &unk_12A520);
    v49 = *(v46 + 48);
    v50 = v66;
    v48(v66, v9, v13);
    v59 = v38;
    v51 = *(v45 + 8);
    v51(&v9[v49], v13);
    sub_548D0(v12, v9, &qword_185928, &unk_12A520);
    v48((v50 + *(v64 + 36)), &v9[*(v46 + 48)], v13);
    v51(v9, v13);
    sub_115C50();

    sub_488C8(v50, &qword_185930, &qword_12BDF0);
    sub_116370();
    v52 = v59;
    v78 = *(v59 + *(v60 + 24));
    sub_115C60();

    v54.n128_u64[0] = *(v77 + 16);
    (*(**(v77 + 8) + 448))(v53, v54);
    v55 = v70;
    sub_115DF0();
    v78 = sub_D934C(v52);
    v56 = v69;
    v57 = v72;
    sub_115AF0();

    (*(v71 + 8))(v55, v57);
    sub_E5E20(v52, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    v36 = v74;
    v35 = v75;
    (*(v74 + 32))(v76, v56, v75);
    v34 = 0;
    return (*(v36 + 56))(v76, v34, 1, v35);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_DF7EC@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_46F9C(&qword_186580, &qword_12B9B0);
  v50 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v8 = sub_46F9C(&qword_186588, &qword_12B9B8);
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v54 = sub_46F9C(&qword_186590, &qword_12B9C0);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v49 = &v48 - v11;
  v56 = sub_46F9C(&qword_186598, &qword_12B9C8);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v48 - v12;
  v58 = sub_46F9C(&qword_1865A0, &qword_12B9D0);
  __chkstk_darwin(v58);
  v53 = &v48 - v13;
  v64 = v1;
  sub_46F9C(&qword_1865A8, &qword_12B9D8);
  sub_E3D98();
  sub_115DC0();
  v68 = xmmword_12B860;
  v14 = sub_115F00();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = sub_46F9C(&qword_184178, &qword_1285D0);
  v16 = sub_48800(&qword_1865D8, &qword_186580, &qword_12B9B0, &protocol conformance descriptor for Chart<A>);
  v17 = sub_E47B8(&qword_184180, &qword_184178, &qword_1285D0, &protocol witness table for Int);
  sub_116970();
  sub_488C8(v4, &qword_184138, &qword_127D50);
  (*(v50 + 8))(v7, v5);
  v18 = v48;
  v63 = v48;
  v19 = sub_46F9C(&qword_1865E0, &unk_12B9F8);
  *&v69 = v5;
  *(&v69 + 1) = v15;
  *&v70 = v16;
  *(&v70 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = swift_getOpaqueTypeConformance2();
  v22 = v49;
  sub_116910();
  (*(v51 + 8))(v10, v8);
  v62 = v18;
  v23 = sub_46F9C(&qword_1856E0, &qword_12A370);
  *&v69 = v8;
  *(&v69 + 1) = v19;
  *&v70 = OpaqueTypeConformance2;
  *(&v70 + 1) = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_47A1C(&qword_183560, &qword_129070);
  v26 = sub_48800(&qword_183570, &qword_183560, &qword_129070, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
  *&v69 = v25;
  *(&v69 + 1) = v26;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v52;
  v29 = v54;
  sub_116930();
  (*(v55 + 8))(v22, v29);
  sub_E05A8();
  v66 = v30;
  v67 = v31;
  *&v69 = v29;
  *(&v69 + 1) = v23;
  *&v70 = v24;
  *(&v70 + 1) = v27;
  v32 = swift_getOpaqueTypeConformance2();
  sub_BD25C(v32, v33, v34);
  v35 = v53;
  v36 = v56;
  sub_116AB0();

  (*(v57 + 8))(v28, v36);
  sub_116EA0();
  v37 = sub_116070();
  v38 = v58;
  v39 = (v35 + *(v58 + 36));
  v40 = v70;
  *v39 = v69;
  v39[1] = v40;
  v39[2] = v71;
  v65 = 1;
  v43 = sub_5822C(v37, v41, v42);
  LOBYTE(v23) = sub_F59F0(&type metadata for PerfPowerServices, v43);
  v61 = v18;
  v44 = sub_46F9C(&qword_1865E8, &unk_12BA08);
  v45 = sub_E412C();
  v46 = sub_E4418(&qword_1865F8, &qword_1865E8, &unk_12BA08, sub_E412C);
  sub_8E234((v23 & 1) == 0, sub_E4124, v60, v38, v44, v45, v46, v59);
  return sub_488C8(v35, &qword_1865A0, &qword_12B9D0);
}

uint64_t *sub_E004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_46F9C(&qword_186820, &unk_12BDC0);
  __chkstk_darwin(v3);
  v5 = &v44 - v4;
  v6 = sub_46F9C(&qword_1865D0, &unk_12B9E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_46F9C(&qword_1865C0, &qword_12B9E0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v53 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v52 = &v44 - v19;
  result = sub_A799C();
  v21 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v60 = 0;
    v61 = v21;
    KeyPath = swift_getKeyPath();
    v51 = a1;
    sub_DA09C(a1, &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Battery24HrBatteryLevelChart);
    v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v23 = swift_allocObject();
    sub_E4688(&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for Battery24HrBatteryLevelChart);
    v48 = sub_46F9C(&qword_186540, &qword_12B980);
    v47 = sub_46F9C(&qword_186548, &qword_12B988);
    v46 = sub_E3CB0();
    v24 = sub_47A1C(&qword_186560, &qword_12B990);
    v25 = sub_47A1C(&qword_186568, &qword_12B998);
    v55 = v8;
    v49 = v3;
    v26 = v11;
    v27 = sub_47A1C(&qword_186570, &unk_12B9A0);
    v28 = sub_48800(&qword_186578, &qword_186570, &unk_12B9A0, &protocol conformance descriptor for Plot<A>);
    v31 = sub_4869C(v28, v29, v30);
    v56 = v27;
    v57 = &type metadata for String;
    v58 = v28;
    v59 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = v25;
    v57 = OpaqueTypeConformance2;
    v33 = swift_getOpaqueTypeConformance2();
    v56 = v24;
    v57 = v33;
    swift_getOpaqueTypeConformance2();
    v34 = v52;
    sub_116E00();
    v45 = v26;
    sub_DC478(v26);
    v35 = *(v16 + 16);
    v36 = v53;
    v35(v53, v34, v15);
    v37 = v26;
    v38 = v15;
    v39 = v55;
    sub_479B4(v37, v55, &qword_1865D0, &unk_12B9E8);
    sub_E3E2C();
    v35(v5, v36, v38);
    sub_E3FB4();
    v40 = v49;
    v41 = *(v49 + 48);
    sub_479B4(v39, &v5[v41], &qword_1865D0, &unk_12B9E8);
    v42 = v54;
    (*(v16 + 32))(v54, v5, v38);
    sub_548D0(&v5[v41], v42 + *(v40 + 48), &qword_1865D0, &unk_12B9E8);
    sub_488C8(v45, &qword_1865D0, &unk_12B9E8);
    v43 = *(v16 + 8);
    v43(v34, v38);
    sub_488C8(v55, &qword_1865D0, &unk_12B9E8);
    return (v43)(v36, v38);
  }

  return result;
}

void sub_E05A8()
{
  v1 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  __chkstk_darwin(v1 - 8);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BUIChartViewData(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(**(v0 + 8) + 136);
  v8(v5);
  sub_DA09C(v7, v3, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  sub_B87CC(v9);
  v11 = v10;
  sub_E5E20(v3, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v12 = sub_117170();
  v13 = BatteryUILocalization(v12);

  if (v13)
  {
    sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
    sub_1171B0();

    v14 = sub_117580();
    v15 = sub_117170();
    v16 = BatteryUILocalization(v15);

    if (v16)
    {
      v17 = sub_1171B0();
      v27 = v18;
      v28 = v17;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v26[1] = sub_54960(0, &qword_1856F8, AXChartDescriptor_ptr);
    sub_46F9C(&qword_185700, &qword_12A3A0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_12A2B0;
    v20 = v11;
    v21 = v14;
    (v8)();
    sub_DA09C(v7, v3, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v7, type metadata accessor for BUIChartViewData);
    sub_B8800(v22);
    v24 = v23;
    sub_E5E20(v3, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    *(v19 + 32) = v24;
    v25 = sub_1174F0();
    *(swift_allocObject() + 16) = v25;
    j_nullsub_4();
  }

  else
  {
    __break(1u);
  }
}

double sub_E095C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[1];
  type metadata accessor for BUIChartViewModel(0);
  sub_E4770(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);
  sub_116130();
  swift_getKeyPath();
  sub_116140();

  v12 = v23[0];
  v13 = v23[1];
  v14 = v23[2];
  v15 = v24;
  (*(*v10 + 136))(v11);
  sub_DA09C(v5, v9, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v5, type metadata accessor for BUIChartViewData);
  v16 = *&v9[*(v7 + 44)];

  sub_E5E20(v9, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v17 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v18 = sub_D2208(v16, v17, &off_169350);

  v19 = sub_BD2B0(v18);

  v20 = sub_46F9C(&qword_1865A0, &qword_12B9D0);
  v21 = sub_E412C();
  sub_AB1AC(v12, v13, v14, v15, v19, v20, v21);

  return result;
}

uint64_t sub_E0C00@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_E0C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_E45BC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_E0C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_E45BC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_E0CA8@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_E44D4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_E0CD8(void *a1)
{
  v2 = sub_46F9C(&qword_186600, &qword_12BA18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v6 = sub_66DE0(a1, a1[3]);
  sub_E45BC(v6, v7, v8);
  sub_117B00();
  return (*(v3 + 8))(v5, v2);
}

double sub_E0E58@<D0>(uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = sub_5A754();
  swift_beginAccess();
  *(a2 + 24) = *v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_46F9C(&qword_184E40, &qword_12BA20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_129DB0;
  *(v6 + 32) = 0;

  v7.f64[0] = *sub_A79F0();
  *(v6 + 40) = v7.f64[0] * 0.25;
  *(v6 + 64) = v7.f64[0];
  v7.f64[1] = v7.f64[0] * 0.25;
  v19 = vmulq_f64(v7, xmmword_12B870);
  *(v6 + 48) = v19;
  *(a2 + 88) = v6;
  *(a2 + 96) = v19.f64[0];
  v8 = *(type metadata accessor for Battery24HrActivityChart(0) + 52);
  *(a2 + v8) = swift_getKeyPath();
  sub_46F9C(&qword_185648, &qword_12B880);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BUIChartViewModel(0);
  sub_E4770(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);

  *a2 = sub_116120();
  *(a2 + 8) = v9;
  *(a2 + 16) = a3;

  v11 = sub_ECCA4(v10, 1, v22, a3, 0.0);
  v12 = v22[1];
  *(a2 + 48) = v22[0];
  *(a2 + 64) = v12;
  *(a2 + 80) = v23;
  v15 = sub_E4630(v11, v13, v14);
  sub_E9054(v6, v16, &type metadata for PLBUIMinuteFormatStyle, v15, v20, v19.f64[0]);

  result = *&v20[1];
  v18 = v21;
  *(a2 + 104) = v20[0];
  *(a2 + 112) = result;
  *(a2 + 120) = v18;
  return result;
}

double *sub_E1054@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  __chkstk_darwin(v3 - 8);
  v91 = &v85 - v4;
  v5 = type metadata accessor for Battery24HrActivityChart(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  __chkstk_darwin(v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_46F9C(&qword_186610, &qword_12BA28);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v108 = &v85 - v14;
  v90 = sub_46F9C(&qword_186618, &qword_12BA30);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v85 - v15;
  v95 = sub_46F9C(&qword_186620, &qword_12BA38);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v85 - v16;
  v97 = sub_46F9C(&qword_186628, &qword_12BA40);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v85 - v17;
  v101 = sub_46F9C(&qword_186630, &unk_12BA48);
  v18 = __chkstk_darwin(v101);
  v102 = &v85 - v19;
  v20 = *(v1 + 8);
  v21 = *(*v20 + 136);
  v22 = *v20 + 136;
  v100 = v20;
  v99 = v21;
  v98 = v22;
  v21(v18);
  sub_DA09C(v10, v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v106 = v10;
  sub_E5E20(v10, type metadata accessor for BUIChartViewData);
  v105 = v11;
  v23 = *&v13[*(v11 + 36)];

  v104 = v13;
  sub_E5E20(v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v117 = v23;
  v103 = v2;
  sub_DA09C(v2, &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Battery24HrActivityChart);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  sub_E4688(&v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for Battery24HrActivityChart);
  sub_46F9C(&qword_185748, &qword_12A3E0);
  sub_46F9C(&qword_186638, &qword_12BA58);
  sub_48800(&qword_185758, &qword_185748, &qword_12A3E0, &protocol conformance descriptor for [A]);
  v26 = sub_47A1C(&qword_186640, &qword_12BA60);
  v27 = sub_47A1C(&qword_186648, &qword_12BA68);
  v28 = sub_47A1C(&qword_186650, &qword_12BA70);
  v29 = sub_47A1C(&qword_186658, &unk_12BA78);
  v30 = v108;
  v31 = sub_48800(&qword_186660, &qword_186658, &unk_12BA78, &protocol conformance descriptor for Plot<A>);
  *&v118 = v29;
  *(&v118 + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v118 = v28;
  *(&v118 + 1) = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v36 = sub_4869C(v33, v34, v35);
  *&v118 = v27;
  *(&v118 + 1) = &type metadata for String;
  *&v119 = v33;
  *(&v119 + 1) = v36;
  v37 = swift_getOpaqueTypeConformance2();
  *&v118 = v26;
  *(&v118 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  sub_E4770(&qword_185780, type metadata accessor for BUIChartViewData.ScreenUsageElement, &unk_12B3C0);
  sub_115DE0();
  result = sub_A79F0();
  v39 = *result;
  if (*result < 0.0)
  {
    __break(1u);
  }

  else
  {
    v115 = 0;
    v116 = v39;
    v40 = sub_115F00();
    v41 = v91;
    (*(*(v40 - 8) + 56))(v91, 1, 1, v40);
    v42 = sub_46F9C(&qword_1856C0, &qword_12A360);
    v43 = sub_48800(&qword_186668, &qword_186610, &qword_12BA28, &protocol conformance descriptor for Chart<A>);
    v44 = sub_E47B8(&qword_1856D0, &qword_1856C0, &qword_12A360, &protocol witness table for Double);
    v45 = v88;
    v46 = v87;
    sub_116970();
    sub_488C8(v41, &qword_184138, &qword_127D50);
    v47 = (*(v86 + 8))(v30, v46);
    __chkstk_darwin(v47);
    v48 = v103;
    *(&v85 - 2) = v103;
    v49 = sub_46F9C(&qword_1865E0, &unk_12B9F8);
    *&v118 = v46;
    *(&v118 + 1) = v42;
    *&v119 = v43;
    *(&v119 + 1) = v44;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = swift_getOpaqueTypeConformance2();
    v52 = v92;
    v53 = v90;
    sub_116910();
    v54 = (*(v89 + 8))(v45, v53);
    __chkstk_darwin(v54);
    *(&v85 - 2) = v48;
    v55 = sub_46F9C(&qword_186670, &qword_12BA88);
    *&v118 = v53;
    *(&v118 + 1) = v49;
    *&v119 = v50;
    *(&v119 + 1) = v51;
    v56 = swift_getOpaqueTypeConformance2();
    v59 = sub_E4630(v56, v57, v58);
    *&v118 = &type metadata for PLBUIMinuteFormatStyle;
    *(&v118 + 1) = v59;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v94;
    v62 = v95;
    sub_116930();
    v63.n128_f64[0] = (*(v93 + 8))(v52, v62);
    sub_E3168(v63);
    v113 = v64;
    v114 = v65;
    *&v118 = v62;
    *(&v118 + 1) = v55;
    *&v119 = v56;
    *(&v119 + 1) = v60;
    v66 = swift_getOpaqueTypeConformance2();
    sub_BD25C(v66, v67, v68);
    v69 = v102;
    v70 = v97;
    sub_116AB0();

    (*(v96 + 8))(v61, v70);
    sub_116EA0();
    sub_116070();
    v71 = v101;
    v72 = (v69 + *(v101 + 36));
    v73 = v119;
    *v72 = v118;
    v72[1] = v73;
    v72[2] = v120;
    type metadata accessor for BUIChartViewModel(0);
    sub_E4770(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);
    sub_116130();
    swift_getKeyPath();
    sub_116140();

    v75 = v109;
    v76 = v110;
    v77 = v111;
    LOBYTE(v62) = v112;
    v78 = v106;
    (v99)(v74);
    v79 = v104;
    sub_DA09C(v78, v104, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v78, type metadata accessor for BUIChartViewData);
    v80 = *(v79 + *(v105 + 36));

    sub_E5E20(v79, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v81 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
    v82 = sub_D2208(v80, v81, &off_169350);

    v83 = sub_BD2B0(v82);

    v84 = sub_E48C4();
    sub_AB1AC(v75, v76, v77, v62, v83, v71, v84);

    return sub_488C8(v69, &qword_186630, &unk_12BA48);
  }

  return result;
}

uint64_t sub_E1DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v55 = a1;
  v4 = sub_46F9C(&qword_185318, &unk_12A0B0);
  __chkstk_darwin(v4 - 8);
  v53 = &v41 - v5;
  v44 = sub_116390();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_46F9C(&qword_186658, &unk_12BA78);
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v47 = sub_46F9C(&qword_186650, &qword_12BA70);
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v41 - v12;
  v51 = sub_46F9C(&qword_186648, &qword_12BA68);
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v41 - v14;
  v52 = sub_46F9C(&qword_186640, &qword_12BA60);
  v50 = *(v52 - 8);
  v15 = __chkstk_darwin(v52);
  v49 = &v41 - v16;
  v17 = *(a2 + 8);
  v18 = *(*v17 + 240);
  v19 = v18(v15);
  if ((v20 & 1) == 0)
  {
    v19 = (v18)(v19);
  }

  v45 = &v41;
  __chkstk_darwin(v19);
  *(&v41 - 4) = v21;
  *(&v41 - 3) = a2;
  *(&v41 - 16) = v22;
  sub_46F9C(&qword_186800, &unk_12BDA0);
  sub_E57CC();
  sub_115DB0();
  v23 = v44;
  (*(v6 + 104))(v8, enum case for RoundedCornerStyle.continuous(_:), v44);
  v24 = sub_48800(&qword_186660, &qword_186658, &unk_12BA78, &protocol conformance descriptor for Plot<A>);
  sub_115AE0();
  (*(v6 + 8))(v8, v23);
  (*(v42 + 8))(v11, v9);
  sub_116370();
  v56 = v9;
  v57 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v46;
  v26 = v47;
  sub_115B10();

  (*(v43 + 8))(v13, v26);
  v28 = v53;
  sub_DA09C(v55, v53, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  v29 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = (*(*v17 + 584))(v28);
  v32 = v31;
  sub_488C8(v28, &qword_185318, &unk_12A0B0);
  v60 = v30;
  v61 = v32;
  v56 = v26;
  v57 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v36 = sub_4869C(v33, v34, v35);
  v37 = v49;
  v38 = v51;
  sub_115B00();

  (*(v48 + 8))(v27, v38);
  sub_59520();

  v56 = v38;
  v57 = &type metadata for String;
  v58 = v33;
  v59 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v52;
  sub_115B30();

  return (*(v50 + 8))(v37, v39);
}

uint64_t sub_E2540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v88) = a3;
  v87 = a2;
  v98 = a1;
  v96 = a4;
  v95 = sub_46F9C(&qword_186810, &qword_12BDB0) - 8;
  __chkstk_darwin(v95);
  v94 = &v70 - v4;
  v5 = sub_46F9C(&qword_184418, &unk_1281A0);
  __chkstk_darwin(v5 - 8);
  v100 = &v70 - v6;
  v7 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v7 - 8);
  v9 = &v70 - v8;
  v10 = sub_1158B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_46F9C(&qword_1843C8, &qword_128140);
  __chkstk_darwin(v14 - 8);
  v97 = &v70 - v15;
  v99 = sub_115E00();
  v105 = *(v99 - 8);
  __chkstk_darwin(v99);
  v90 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v83 = &v70 - v18;
  v101 = sub_46F9C(&qword_185950, &unk_12A540);
  v106 = *(v101 - 8);
  __chkstk_darwin(v101);
  v89 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v78 = &v70 - v21;
  v22 = sub_46F9C(&qword_186818, &qword_12BDB8);
  v92 = *(v22 - 8);
  v93 = v22;
  __chkstk_darwin(v22);
  v91 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v104 = &v70 - v25;
  __chkstk_darwin(v26);
  v102 = &v70 - v27;
  __chkstk_darwin(v28);
  v103 = &v70 - v29;
  v77 = sub_116370();
  v30 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v82 = v30[5];
  v86 = enum case for Calendar.Component.hour(_:);
  v31 = *(v11 + 104);
  v84 = v11 + 104;
  v85 = v31;
  v72 = v10;
  v31(v13);
  v80 = sub_1158D0();
  v32 = *(v80 - 8);
  v79 = *(v32 + 56);
  v81 = v32 + 56;
  v74 = v9;
  v79(v9, 1, 1, v80);
  v33 = v98;
  v71 = v13;
  sub_115C40();

  sub_488C8(v9, &qword_1842B8, &qword_129030);
  v34 = *(v11 + 8);
  v76 = v11 + 8;
  v77 = v34;
  v34(v13, v10);
  sub_116370();
  v107 = *(v33 + v30[6]);
  sub_115C60();

  v35 = *(v87 + 24);
  v87 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor24Hrs;
  v36 = v35;
  v70 = v35;
  v75 = sub_115760();
  v37 = v83;
  sub_115DF0();
  v38 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  v39 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnColor;
  if (v88)
  {
    v39 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  }

  v40 = *(v36 + *v39);
  if ((v88 & 1) == 0)
  {
    v38 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor;
  }

  v88 = v38;

  v107 = v40;
  v41 = v78;
  v42 = v99;
  sub_115AF0();

  v43 = *(v105 + 8);
  v105 += 8;
  v73 = v43;
  v43(v37, v42);
  sub_116370();
  v107 = v42;
  v108 = &type metadata for Color;
  v109 = &protocol witness table for BarMark;
  v110 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v44 = v101;
  sub_115B10();

  v45 = *(v106 + 8);
  v106 += 8;
  v83 = v45;
  (v45)(v41, v44);
  sub_116370();
  v46 = v71;
  v47 = v72;
  v85(v71, v86, v72);
  v48 = v74;
  v79(v74, 1, 1, v80);
  v49 = v98;
  sub_115C40();

  sub_488C8(v48, &qword_1842B8, &qword_129030);
  v77(v46, v47);
  sub_116370();
  v107 = *(v49 + v30[7]);
  sub_115C60();

  v50 = v70;
  v51 = v90;
  sub_115DF0();
  v52 = *(v50 + *v88);

  v107 = v52;
  v53 = v89;
  v54 = v99;
  sub_115AF0();

  v73(v51, v54);
  sub_116370();
  v56 = v101;
  v55 = v102;
  sub_115B10();

  (v83)(v53, v56);
  v58 = v92;
  v57 = v93;
  v59 = *(v92 + 16);
  v61 = v103;
  v60 = v104;
  v59(v104, v103, v93);
  v62 = v91;
  v59(v91, v55, v57);
  v63 = v94;
  v59(v94, v60, v57);
  v64 = v95;
  v65 = *(v95 + 56);
  v59(&v63[v65], v62, v57);
  v66 = *(v58 + 32);
  v67 = v96;
  v66(v96, v63, v57);
  v66(v67 + *(v64 + 56), &v63[v65], v57);
  v68 = *(v58 + 8);
  v68(v102, v57);
  v68(v61, v57);
  v68(v62, v57);
  return (v68)(v104, v57);
}

void sub_E3168(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for Battery24HrActivityChart(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 8);
  v13 = *(*v12 + 136);
  v32 = *v12 + 136;
  v33 = v13;
  v13(v9);
  sub_DA09C(v7, v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  sub_B87CC(v14);
  v31 = v15;
  sub_E5E20(v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v16 = sub_117170();
  v17 = BatteryUILocalization(v16);

  if (!v17)
  {
    goto LABEL_7;
  }

  sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
  sub_1171B0();

  if (*sub_A79F0() < 0.0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v29[1] = v12;
  sub_DA09C(v2, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Battery24HrActivityChart);
  v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v19 = swift_allocObject();
  sub_E4688(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Battery24HrActivityChart);

  v20 = sub_117580();
  v21 = sub_117170();
  v22 = BatteryUILocalization(v21);

  if (v22)
  {
    sub_1171B0();
  }

  sub_54960(0, &qword_1856F8, AXChartDescriptor_ptr);
  sub_46F9C(&qword_185700, &qword_12A3A0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_12A2B0;
  v24 = v31;
  v25 = v20;
  v33();
  sub_DA09C(v7, v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  sub_B8C44();
  v27 = v26;
  sub_E5E20(v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  *(v23 + 32) = v27;
  v28 = sub_1174F0();
  *(swift_allocObject() + 16) = v28;
  j_nullsub_4();
}

unint64_t sub_E3644()
{
  result = qword_1864F8;
  if (!qword_1864F8)
  {
    sub_47A1C(&qword_1864F0, &qword_12B940);
    sub_47A1C(&qword_186500, &qword_12B948);
    sub_47A1C(&qword_186508, &qword_12B950);
    sub_47A1C(&qword_186480, &unk_12B8E0);
    sub_115BC0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_4869C(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_E37EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1864F8);
  }

  return result;
}

unint64_t sub_E37EC()
{
  result = qword_186510;
  if (!qword_186510)
  {
    sub_47A1C(&qword_186518, &unk_12B958);
    sub_E4770(&qword_186520, type metadata accessor for BUIChartIconMark, &unk_12CFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186510);
  }

  return result;
}

unint64_t sub_E38A0()
{
  result = qword_186528;
  if (!qword_186528)
  {
    sub_47A1C(&qword_1864E8, &qword_12B938);
    sub_E392C();
    sub_DB9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186528);
  }

  return result;
}

unint64_t sub_E392C()
{
  result = qword_186530;
  if (!qword_186530)
  {
    sub_47A1C(&qword_186498, &qword_12B8F8);
    sub_47A1C(&qword_1864A8, &qword_12B908);
    sub_115BC0();
    sub_DB9DC();
    swift_getOpaqueTypeConformance2();
    sub_47A1C(&qword_1864C8, &qword_12B920);
    sub_48800(&qword_1864D0, &qword_1864C8, &qword_12B920, &protocol conformance descriptor for Plot<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186530);
  }

  return result;
}

uint64_t sub_E3A90(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_E3B0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_46F9C(&qword_185638, &qword_12A298);
      v7 = *(type metadata accessor for BUIChartViewData.BatteryLevelsElement(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_E3CB0()
{
  result = qword_186550;
  if (!qword_186550)
  {
    v1 = sub_47A1C(&qword_186540, &qword_12B980);
    sub_E3D3C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186550);
  }

  return result;
}

unint64_t sub_E3D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186558;
  if (!qword_186558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186558);
  }

  return result;
}

unint64_t sub_E3D98()
{
  result = qword_1865B0;
  if (!qword_1865B0)
  {
    sub_47A1C(&qword_1865A8, &qword_12B9D8);
    sub_E3E2C();
    sub_E3FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1865B0);
  }

  return result;
}

unint64_t sub_E3E2C()
{
  result = qword_1865B8;
  if (!qword_1865B8)
  {
    sub_47A1C(&qword_1865C0, &qword_12B9E0);
    sub_47A1C(&qword_186560, &qword_12B990);
    sub_47A1C(&qword_186568, &qword_12B998);
    sub_47A1C(&qword_186570, &unk_12B9A0);
    v3 = sub_48800(&qword_186578, &qword_186570, &unk_12B9A0, &protocol conformance descriptor for Plot<A>);
    sub_4869C(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1865B8);
  }

  return result;
}

unint64_t sub_E3FB4()
{
  result = qword_1865C8;
  if (!qword_1865C8)
  {
    sub_47A1C(&qword_1865D0, &unk_12B9E8);
    sub_E38A0();
    sub_E3A90(&qword_186538, &qword_1864E0, &qword_12B930, sub_E3644);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1865C8);
  }

  return result;
}

uint64_t sub_E40CC()
{
  type metadata accessor for Battery24HrBatteryLevelChart(0);
  v0 = sub_46F9C(&qword_185640, &unk_12A2C0);
  return sub_E9144(v0);
}

unint64_t sub_E412C()
{
  result = qword_1865F0;
  if (!qword_1865F0)
  {
    sub_47A1C(&qword_1865A0, &qword_12B9D0);
    sub_47A1C(&qword_186598, &qword_12B9C8);
    sub_47A1C(&qword_186590, &qword_12B9C0);
    sub_47A1C(&qword_1856E0, &qword_12A370);
    sub_47A1C(&qword_186588, &qword_12B9B8);
    sub_47A1C(&qword_1865E0, &unk_12B9F8);
    sub_47A1C(&qword_186580, &qword_12B9B0);
    sub_47A1C(&qword_184178, &qword_1285D0);
    sub_48800(&qword_1865D8, &qword_186580, &qword_12B9B0, &protocol conformance descriptor for Chart<A>);
    sub_E47B8(&qword_184180, &qword_184178, &qword_1285D0, &protocol witness table for Int);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_47A1C(&qword_183560, &qword_129070);
    sub_48800(&qword_183570, &qword_183560, &qword_129070, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_BD25C(OpaqueTypeConformance2, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1865F0);
  }

  return result;
}

uint64_t sub_E4418(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    v9 = a4();
    sub_AC5F8(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E449C()
{

  return swift_deallocObject();
}

uint64_t sub_E44D4(double a1)
{
  v2 = sub_5A754();
  swift_beginAccess();
  v3 = *(*v2 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForMinutes);
  v4 = objc_allocWithZone(NSNumber);
  v5 = v3;
  v6 = [v4 initWithDouble:a1];
  v7 = [v5 stringFromNumber:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1171B0();

  return v8;
}

unint64_t sub_E45BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1902B0[0];
  if (!qword_1902B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1902B0);
  }

  return result;
}

unint64_t sub_E4630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186608;
  if (!qword_186608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186608);
  }

  return result;
}

uint64_t sub_E4688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_E46F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Battery24HrActivityChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_E1DE4(a1, v6, a2);
}

uint64_t sub_E4770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E47B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_E48C4()
{
  result = qword_186678;
  if (!qword_186678)
  {
    sub_47A1C(&qword_186630, &unk_12BA48);
    sub_47A1C(&qword_186628, &qword_12BA40);
    sub_47A1C(&qword_186620, &qword_12BA38);
    sub_47A1C(&qword_186670, &qword_12BA88);
    sub_47A1C(&qword_186618, &qword_12BA30);
    sub_47A1C(&qword_1865E0, &unk_12B9F8);
    sub_47A1C(&qword_186610, &qword_12BA28);
    sub_47A1C(&qword_1856C0, &qword_12A360);
    sub_48800(&qword_186668, &qword_186610, &qword_12BA28, &protocol conformance descriptor for Chart<A>);
    sub_E47B8(&qword_1856D0, &qword_1856C0, &qword_12A360, &protocol witness table for Double);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_E4630(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    v6 = swift_getOpaqueTypeConformance2();
    sub_BD25C(v6, v4, v5);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186678);
  }

  return result;
}

uint64_t sub_E4B74()
{
  v1 = (type metadata accessor for Battery24HrActivityChart(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[15];
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1158E0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_E4CB8(double a1)
{
  v4 = *(type metadata accessor for Battery24HrActivityChart(0) - 8);
  v5 = *(*(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 24) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourMinutes);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v7 = objc_allocWithZone(NSNumber);
    v8 = v5;
    v9 = [v7 initWithDouble:a1];
    v10 = [v8 stringFromNumber:v9];

    if (v10)
    {
      v11 = sub_1171B0();

      return v11;
    }
  }

  else
  {
    v6 = v5;
  }

  return 0;
}

unint64_t sub_E4DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186680;
  if (!qword_186680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186680);
  }

  return result;
}

unint64_t sub_E4E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186688;
  if (!qword_186688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186688);
  }

  return result;
}

unint64_t sub_E4EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186690;
  if (!qword_186690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186690);
  }

  return result;
}

unint64_t sub_E4F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186698;
  if (!qword_186698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186698);
  }

  return result;
}

uint64_t sub_E4F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_46F9C(&qword_185640, &unk_12A2C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_E50D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_46F9C(&qword_185640, &unk_12A2C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_E5214(uint64_t a1)
{
  sub_C08E8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BUIChartViewConfig(319);
    if (v2 <= 0x3F)
    {
      sub_C0A70(319);
      if (v3 <= 0x3F)
      {
        sub_C097C();
        if (v4 <= 0x3F)
        {
          sub_C09CC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_E532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E53FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E54AC(uint64_t a1)
{
  sub_C08E8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BUIChartViewConfig(319);
    if (v2 <= 0x3F)
    {
      sub_C097C();
      if (v3 <= 0x3F)
      {
        sub_E559C(319, v3, v4);
        if (v5 <= 0x3F)
        {
          sub_C0A70(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_E559C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_186798)
  {
    v4 = sub_E4630(0, a2, a3);
    v6 = type metadata accessor for BatteryYAxis(a1, &type metadata for PLBUIMinuteFormatStyle, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_186798);
    }
  }
}

uint64_t sub_E55F8()
{
  sub_47A1C(&qword_1865A0, &qword_12B9D0);
  sub_47A1C(&qword_1865E8, &unk_12BA08);
  sub_E412C();
  sub_E4418(&qword_1865F8, &qword_1865E8, &unk_12BA08, sub_E412C);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_E5714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_190760;
  if (!qword_190760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_190760);
  }

  return result;
}

unint64_t sub_E576C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_190768[0];
  if (!qword_190768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_190768);
  }

  return result;
}

unint64_t sub_E57CC()
{
  result = qword_186808;
  if (!qword_186808)
  {
    sub_47A1C(&qword_186800, &unk_12BDA0);
    sub_47A1C(&qword_185950, &unk_12A540);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186808);
  }

  return result;
}

uint64_t sub_E58D8@<X0>(int64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Battery24HrBatteryLevelChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_DDE2C(a1, v6, a2);
}

unint64_t sub_E5960()
{
  result = qword_186830;
  if (!qword_186830)
  {
    sub_47A1C(&qword_186828, &qword_12BDD0);
    sub_E5A18();
    sub_E3A90(&qword_186848, &qword_186850, &qword_12BDE0, sub_E5AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186830);
  }

  return result;
}

unint64_t sub_E5A18()
{
  result = qword_186838;
  if (!qword_186838)
  {
    sub_47A1C(&qword_186840, &qword_12BDD8);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186838);
  }

  return result;
}

unint64_t sub_E5AE0()
{
  result = qword_186858;
  if (!qword_186858)
  {
    sub_47A1C(&qword_186860, &qword_12BDE8);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186858);
  }

  return result;
}

uint64_t sub_E5BA8()
{
  v1 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1158E0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 48);

  v6 = *(sub_46F9C(&qword_185640, &unk_12A2C0) + 40);
  v7 = sub_46F9C(&qword_183560, &qword_129070);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return swift_deallocObject();
}

int64_t sub_E5D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Battery24HrBatteryLevelChart(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_DEF90(a1, v2 + v6, v7, a2);
}

uint64_t sub_E5E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_E5E88()
{
  result = qword_186890;
  if (!qword_186890)
  {
    sub_47A1C(&qword_186888, &qword_12BE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186890);
  }

  return result;
}

uint64_t sub_E5F34(uint64_t a1)
{
  v3 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_115760();
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v26 - v14;
  v29 = v16;
  (*(v16 + 16))(&v26 - v14, v1, v6, v13);
  v17 = sub_D2CC4();
  if (*v17 == 1)
  {
    sub_A79F0();
  }

  else
  {
    sub_A7A80();
  }

  sub_1156E0();
  sub_115710();
  sub_115710();
  sub_115700();
  v18 = *(a1 + 16);
  if (!v18)
  {
    v23 = 0;
    goto LABEL_17;
  }

  v27 = v6;
  v19 = *v17;
  v20 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v21 = *(v28 + 72);
  do
  {
    sub_E69C0(v20, v5);
    if (v19)
    {
      if ((sub_1156D0() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((sub_1156D0() & 1) == 0)
    {
LABEL_6:
      sub_E6A24(v5);
      goto LABEL_7;
    }

    v22 = sub_1156C0();
    sub_E6A24(v5);
    if (v22)
    {
      v23 = 1;
      goto LABEL_15;
    }

LABEL_7:
    v20 += v21;
    --v18;
  }

  while (v18);
  v23 = 0;
LABEL_15:
  v6 = v27;
LABEL_17:
  v24 = *(v29 + 8);
  v24(v8, v6);
  v24(v11, v6);
  v24(v15, v6);
  return v23;
}

void sub_E622C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a3 == 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0x444E454B4545575FLL;
  }

  else
  {
    v4 = 0x5941444B4545575FLL;
  }

  v5._countAndFlagsBits = v4;
  v5._object = 0xE800000000000000;
  sub_117220(v5);
}

Swift::Int sub_E62A4()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(v1 + 1);
  return sub_117AD0();
}

Swift::Int sub_E631C(uint64_t a1)
{
  v2 = *v1;
  sub_117A90();
  sub_117AA0(v2 + 1);
  return sub_117AD0();
}

uint64_t sub_E6360@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E6A80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_E639C()
{
  v16 = sub_1158D0();
  v0 = *(v16 - 8);
  __chkstk_darwin(v16);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_115510();
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1158A0();
  sub_46F9C(&qword_1868A0, &qword_12BE38);
  v6 = sub_1158B0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_124890;
  (*(v7 + 104))(v9 + v8, enum case for Calendar.Component.weekday(_:), v6);
  sub_E66C8(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  v10 = 7;
  swift_deallocClassInstance();
  sub_115850();

  (*(v0 + 8))(v2, v16);
  v11 = sub_1154F0();
  LOBYTE(v7) = v12;
  (*(v3 + 8))(v5, v15);
  if ((v7 & 1) == 0)
  {
    return sub_E6A80(v11);
  }

  return v10;
}

uint64_t sub_E6648()
{
  v0 = sub_8D8B4()[4];
  isa = sub_1156B0().super.isa;
  v2 = [v0 stringFromDate:isa];

  v3 = sub_1171B0();
  return v3;
}

void *sub_E66C8(uint64_t a1)
{
  v2 = sub_1158B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_46F9C(&qword_1868B0, &unk_12BEF0);
    v9 = sub_1176F0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_E6C50(&qword_1868B8, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_1170C0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_E6C50(&qword_1868C0, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_117160();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_E69C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E6A24(uint64_t a1)
{
  v2 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E6A80(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

unint64_t sub_E6AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1868A8;
  if (!qword_1868A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1868A8);
  }

  return result;
}

uint64_t _s3DayOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3DayOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_E6C50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1158B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLBUIChartViewController.graphHeight(traitCollection:)(uint64_t a1)
{
  v2 = sub_5A754();
  swift_beginAccess();
  v3 = *(**v2 + 624);

  v3(a1);

  return sub_B9CEC();
}

uint64_t PLBUIChartViewController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PLBUIChartViewController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_E70A0;
}

void sub_E70A0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_E7120()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_E716C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_E726C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_model;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double variable initialization expression of PLBUIChartViewController.receiver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_E7330@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_receiver;
  swift_beginAccess();
  return sub_E7388(v1 + v3, a1);
}

uint64_t sub_E7388(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182FC8, &qword_124DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E73F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_receiver;
  swift_beginAccess();
  sub_E7458(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_E7458(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182FC8, &qword_124DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_E7528()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_isUpdating;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_E756C(char a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_isUpdating;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double static PLBUIChartViewController.reloadLocale()()
{
  v0 = sub_5A754();
  type metadata accessor for BUIChartViewConfig(0);
  v1 = sub_59600();
  swift_beginAccess();
  *v0 = v1;

  return result;
}

Swift::Void __swiftcall PLBUIChartViewController.endUpdate()()
{
  (*(&stru_B8.size + (swift_isaMask & *v0)))(0);
  v1 = *&stru_108.segname[(swift_isaMask & *v0) + 16];

  v1();
}

Swift::Void __swiftcall PLBUIChartViewController.setActiveChart(_:)(Swift::String a1)
{
  if (a1._countAndFlagsBits == 0xD000000000000014 && 0x80000000001365F0 == a1._object)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1179E0() ^ 1;
  }

  v3 = *(&stru_68.flags + (swift_isaMask & *v1));
  v4 = v3();
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  (*(*v4 + 192))(v4);

  sub_BA5C0(v5, v6, v7);
  if (sub_117160())
  {
    return;
  }

  v8 = v3();
  if (!v8)
  {
LABEL_11:
    __break(1u);
    return;
  }

  (*(*v8 + 200))(v2 & 1);
}

Swift::Void __swiftcall PLBUIChartViewController.setTappedIndex(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    v2 = [(objc_class *)a1.value.super.super.isa integerValue];
  }

  else
  {
    v2 = -1;
  }

  v3 = *(&stru_68.flags + (swift_isaMask & *v1));
  v4 = v3();
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = (*(*v4 + 240))(v4);
  v7 = v6;

  if (v7)
  {
    if (v2 < 0)
    {
      return;
    }
  }

  else if ((v2 & 0x8000000000000000) == 0 && v5 == (v2 & ~(v2 >> 63)))
  {
    return;
  }

  v9 = (v3)(v8);
  if (!v9)
  {
LABEL_15:
    __break(1u);
    return;
  }

  (*(*v9 + 248))(v2 & ~(v2 >> 63), v2 >> 63);
}

uint64_t PLBUIChartViewController.setDataset(_:endOfDay:)(void *a1)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_1852D8, &qword_129F88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - v6;
  v8 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  v14 = a1;
  sub_115710();
  v15 = sub_D5810(v14, v13);
  v16 = *(&stru_68.flags + (swift_isaMask & *v1));
  if (!v16(v15))
  {
    type metadata accessor for BUIChartViewModel(0);
    sub_E8088(v13, v10);
    v22 = sub_AF42C(v10);
    v23 = (*(&stru_68.reserved2 + (swift_isaMask & *v1)))(v22);
    result = v16(v23);
    if (result)
    {
      (*(*result + 264))(result);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_E824C();
      v24 = sub_115FA0();

      (*(v5 + 8))(v7, v4);
      v25[3] = sub_115F10();
      v25[0] = v24;
      (*&stru_B8.segname[swift_isaMask & *v2])(v25);
      return sub_E82B0(v13);
    }

    goto LABEL_10;
  }

  result = v16(v17);
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(*result + 136))(result);

  sub_E830C();
  v19 = sub_117160();
  v20 = sub_E82B0(v10);
  if (v19)
  {
    return sub_E82B0(v13);
  }

  result = v16(v20);
  if (result)
  {
    v21 = result;
    sub_E8088(v13, v10);
    (*(*v21 + 144))(v10);

    return sub_E82B0(v13);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_E8088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E80EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_E8124(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (((*&stru_B8.segname[(swift_isaMask & *Strong) + 16])() & 1) == 0)
    {
      v5 = (*&stru_68.segname[swift_isaMask & *v4])();
      v6 = v5;
      if (v2)
      {
        if (v5)
        {
          [v5 graphOnSelectAt:0];
LABEL_8:
          swift_unknownObjectRelease();
        }
      }

      else if (v5)
      {
        v7 = [objc_allocWithZone(NSNumber) initWithInteger:v1];
        [v6 graphOnSelectAt:v7];

        goto LABEL_8;
      }
    }
  }
}

unint64_t sub_E824C()
{
  result = qword_1868F0;
  if (!qword_1868F0)
  {
    sub_47A1C(&qword_1852D8, &qword_129F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1868F0);
  }

  return result;
}

uint64_t sub_E82B0(uint64_t a1)
{
  v2 = type metadata accessor for BUIChartViewData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_E830C()
{
  result = qword_1868F8;
  if (!qword_1868F8)
  {
    type metadata accessor for BUIChartViewData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1868F8);
  }

  return result;
}

void PLBUIChartViewController.setMargin(top:bottom:)(double a1, double a2)
{
  v5 = *(&stru_68.flags + (swift_isaMask & *v2));
  v6 = v5();
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(*v6 + 296))(v6, a1);

  v8 = (v5)(v7);
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(*v8 + 344))(v8, a2);
}

Swift::Void __swiftcall PLBUIChartViewController.setContainerBackgroundColor(_:)(UIColor a1)
{
  v3 = (*(&stru_68.flags + (swift_isaMask & *v1)))();
  if (v3)
  {
    (*(*v3 + 392))(a1.super.isa);
  }

  else
  {
    __break(1u);
  }
}

void sub_E8814()
{
  v1 = v0;
  v2 = *(&stru_68.flags + (swift_isaMask & *v0));
  if (!v2())
  {
    return;
  }

  v4 = *(&stru_68.size + (swift_isaMask & *v0));
  v5 = (v4)(v3);
  if (!v5)
  {
    if (v2())
    {
      if (BatteryUIResourceBundle())
      {
        nullsub_4();
        v47 = v6;
        v48 = v7;
        v8 = objc_allocWithZone(sub_46F9C(&qword_186900, &qword_12BF00));
        v9 = sub_116440();
        v10 = (*(&stru_68.offset + (swift_isaMask & *v0)))(v9);
        v11 = (v4)(v10);
        if (v11)
        {
          v12 = v11;
          [v1 addChildViewController:{v11, v47, v48}];

          v13 = v4();
          if (v13)
          {
            v14 = v13;
            v15 = [v13 view];

            if (v15)
            {
              v16 = [v1 view];
              if (v16)
              {
                v17 = v16;
                [v16 bounds];
                v19 = v18;
                v21 = v20;
                v23 = v22;
                v25 = v24;

                [v15 setFrame:{v19, v21, v23, v25}];
                v26 = v4();
                if (v26)
                {
                  v27 = v26;
                  v28 = [v26 view];

                  if (v28)
                  {
                    [v28 setTranslatesAutoresizingMaskIntoConstraints:1];

                    v29 = v4();
                    if (v29)
                    {
                      v30 = v29;
                      v31 = [v29 view];

                      if (v31)
                      {
                        [v31 setAutoresizingMask:18];

                        v32 = v4();
                        if (v32)
                        {
                          v33 = v32;
                          v34 = [v32 view];

                          if (v34)
                          {
                            v35 = objc_opt_self();
                            v36 = [v35 clearColor];
                            [v34 setBackgroundColor:v36];

                            v37 = [v1 view];
                            if (v37)
                            {
                              v38 = v37;
                              v39 = [v35 clearColor];
                              [v38 setBackgroundColor:v39];

                              v40 = [v1 view];
                              if (v40)
                              {
                                v41 = v40;
                                v42 = v4();
                                if (v42)
                                {
                                  v43 = v42;
                                  v44 = [v42 view];

                                  if (v44)
                                  {
                                    [v41 addSubview:v44];

                                    v45 = v4();
                                    if (v45)
                                    {
                                      v46 = v45;
                                      sub_116430();

                                      return;
                                    }

LABEL_41:
                                    __break(1u);
                                    return;
                                  }

LABEL_40:
                                  __break(1u);
                                  goto LABEL_41;
                                }

LABEL_39:
                                __break(1u);
                                goto LABEL_40;
                              }

LABEL_38:
                              __break(1u);
                              goto LABEL_39;
                            }

LABEL_37:
                            __break(1u);
                            goto LABEL_38;
                          }

LABEL_36:
                          __break(1u);
                          goto LABEL_37;
                        }

LABEL_35:
                        __break(1u);
                        goto LABEL_36;
                      }

LABEL_34:
                      __break(1u);
                      goto LABEL_35;
                    }

LABEL_33:
                    __break(1u);
                    goto LABEL_34;
                  }

LABEL_32:
                  __break(1u);
                  goto LABEL_33;
                }

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

id PLBUIChartViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_117170();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PLBUIChartViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_hostingController] = 0;
  *&v3[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_model] = 0;
  v6 = &v3[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_receiver];
  *v6 = 0u;
  v6[1] = 0u;
  v3[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_isUpdating] = 0;
  if (a2)
  {
    v7 = sub_117170();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for PLBUIChartViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id PLBUIChartViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id PLBUIChartViewController.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_hostingController] = 0;
  *&v1[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_model] = 0;
  v3 = &v1[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_receiver];
  *v3 = 0u;
  v3[1] = 0u;
  v1[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_isUpdating] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PLBUIChartViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id PLBUIChartViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PLBUIChartViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_E9054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = type metadata accessor for BatteryYAxis(0, a3, a4, a4);
  v12 = *(v11 + 44);
  v15 = sub_5822C(v11, v13, v14);
  *(a5 + v12) = sub_F59F0(&type metadata for PerfPowerServices, v15) & 1;
  *a5 = a1;
  *(a5 + 8) = a6;
  return (*(*(a3 - 8) + 32))(a5 + *(v11 + 40), a2, a3);
}

uint64_t sub_E9144(uint64_t a1)
{
  v3 = sub_115C80();
  __chkstk_darwin(v3 - 8);
  v4 = sub_115BE0();
  __chkstk_darwin(v4 - 8);
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v7);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = *(a1 + 16);
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0x4014000000000000;

  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_186930, &qword_12BF38);
  sub_EA008();
  return sub_115EA0();
}

void *sub_E9384@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v66 = a3;
  v77 = a4;
  v76 = sub_46F9C(&qword_186A88, &qword_12C2D8);
  __chkstk_darwin(v76);
  v75 = &v57 - v7;
  v72 = sub_115A40();
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_46F9C(&qword_1843A0, &unk_128120);
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v57 - v11;
  v12 = sub_115D00();
  __chkstk_darwin(v12 - 8);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_115DA0();
  __chkstk_darwin(v14 - 8);
  v15 = a2;
  v59 = *(a2 - 8);
  __chkstk_darwin(v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_46F9C(&qword_186958, &unk_12BF50);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v20 = &v57 - v19;
  v21 = sub_46F9C(&qword_186950, &qword_12BF48);
  v65 = *(v21 - 8);
  __chkstk_darwin(v21);
  v63 = &v57 - v22;
  v23 = sub_46F9C(&qword_186A90, &unk_12C2E0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v61 = &v57 - v25;
  v26 = sub_46F9C(&qword_186948, &qword_12BF40);
  __chkstk_darwin(v26 - 8);
  v67 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v78 = &v57 - v29;
  result = sub_115EB0();
  if (BYTE8(v83))
  {
    goto LABEL_22;
  }

  if ((v83 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*&v83 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v83 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = *(a1 + 8);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v32;
  if (!v32)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*&v83 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_21;
  }

  v34 = 1;
  if (!(*&v83 % v33))
  {
    v58 = v21;
    v35 = type metadata accessor for BatteryYAxis(0, v15, v66, v31);
    (*(v59 + 16))(v18, a1 + *(v35 + 40), v15);
    sub_A79CC();
    sub_115D90();
    sub_115CF0();
    sub_115C20();
    v36 = sub_5A754();
    swift_beginAccess();
    *&v83 = *(*v36 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor);
    v37 = sub_48800(&qword_186960, &qword_186958, &unk_12BF50, &protocol conformance descriptor for AxisValueLabel<A>);
    v38 = v63;
    v39 = v64;
    sub_115E10();
    (*(v62 + 8))(v20, v39);
    swift_beginAccess();

    *&v83 = v39;
    *(&v83 + 1) = &type metadata for Color;
    *&v84 = v37;
    *(&v84 + 1) = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v40 = v61;
    v41 = v58;
    sub_115E20();

    (*(v65 + 8))(v38, v41);
    (*(v24 + 32))(v78, v40, v23);
    v34 = 0;
  }

  v42 = v78;
  (*(v24 + 56))(v78, v34, 1, v23);
  sub_116010();
  v83 = v80;
  v84 = v81;
  v85 = v82;
  v43 = v69;
  sub_115A30();
  v44 = sub_5A754();
  swift_beginAccess();
  v79 = *(*v44 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
  v45 = v68;
  v46 = v72;
  sub_115E10();
  (*(v73 + 8))(v43, v46);
  v47 = v67;
  sub_479B4(v42, v67, &qword_186948, &qword_12BF40);
  v48 = v70;
  v49 = *(v70 + 16);
  v50 = v71;
  v51 = v74;
  v49(v71, v45, v74);
  sub_EA0E0();
  v52 = v75;
  sub_479B4(v47, v75, &qword_186948, &qword_12BF40);
  v53 = v76;
  v54 = *(v76 + 48);
  v49((v52 + v54), v50, v51);
  v55 = v77;
  sub_548D0(v52, v77, &qword_186948, &qword_12BF40);
  (*(v48 + 32))(v55 + *(v53 + 48), v52 + v54, v51);
  v56 = *(v48 + 8);
  v56(v45, v51);
  sub_488C8(v78, &qword_186948, &qword_12BF40);
  v56(v50, v51);
  return sub_488C8(v47, &qword_186948, &qword_12BF40);
}

uint64_t sub_E9E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for BatteryYAxis(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);

  return swift_deallocObject();
}

void *sub_E9F40@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for BatteryYAxis(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_E9384(v7, v4, v5, a2);
}

unint64_t sub_EA008()
{
  result = qword_186938;
  if (!qword_186938)
  {
    sub_47A1C(&qword_186930, &qword_12BF38);
    sub_EA0E0();
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186938);
  }

  return result;
}

unint64_t sub_EA0E0()
{
  result = qword_186940;
  if (!qword_186940)
  {
    sub_47A1C(&qword_186948, &qword_12BF40);
    sub_47A1C(&qword_186950, &qword_12BF48);
    sub_47A1C(&qword_186958, &unk_12BF50);
    sub_48800(&qword_186960, &qword_186958, &unk_12BF50, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186940);
  }

  return result;
}

uint64_t sub_EA22C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_46F9C(&qword_186A80, &qword_12C2D0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_46F9C(&qword_186A38, &unk_12C258);
  sub_115E40();
  v9 = *a1;
  v20 = v8;
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  v11 = sub_46F9C(&qword_186980, &qword_12BF68);
  sub_48800(&qword_186978, &qword_186980, &qword_12BF68, &protocol conformance descriptor for AxisValueLabel<A>);
  v12 = *(v5 + 56);
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v7[v12], a1[1], v11);
  v14 = sub_46F9C(&qword_1843A0, &unk_128120);
  sub_115A40();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v7[v15], v16, v14);
  (*(v10 + 32))(a2, v7, v20);
  (*(v13 + 32))(a2 + *(v5 + 56), &v7[v12], v11);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v7[v15], v14);
}

uint64_t sub_EA490@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_46F9C(&qword_186A68, &qword_12C288);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_46F9C(&qword_186A40, &unk_12C268);
  sub_48800(&qword_1869A8, &qword_1869A0, &qword_12BF80, &protocol conformance descriptor for AxisValueLabel<A>);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  sub_ED304();
  v10 = *(v5 + 56);
  sub_479B4(a1[1], &v7[v10], &qword_1869B8, &qword_12BF88);
  sub_ED3CC();
  v11 = *(v5 + 72);
  sub_479B4(a1[2], &v7[v11], &qword_1869C8, &qword_12BF90);
  (*(v9 + 32))(a2, v7, v8);
  sub_548D0(&v7[v10], a2 + *(v5 + 56), &qword_1869B8, &qword_12BF88);
  return sub_548D0(&v7[v11], a2 + *(v5 + 72), &qword_1869C8, &qword_12BF90);
}

double *sub_EA65C(uint64_t a1)
{
  v1 = sub_115C80();
  __chkstk_darwin(v1 - 8);
  v2 = sub_115BE0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_1158B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_115C10();
  v11 = __chkstk_darwin(v10 - 8);
  (*(v7 + 104))(v9, enum case for Calendar.Component.second(_:), v6, v11);
  result = sub_A79FC();
  v13 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 9.22337204e18)
  {
    v14 = sub_1158D0();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    sub_115BF0();
    sub_EA990(v5);
    (*(v7 + 8))(v9, v6);

    sub_115BD0();
    sub_115C70();
    sub_46F9C(&qword_186968, &qword_12BF60);
    sub_EB3F8();
    return sub_115E90();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_EA990(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1842B8, &qword_129030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EA9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v5 = sub_115A40();
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v80 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_46F9C(&qword_1843A0, &unk_128120);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v63 - v11;
  v12 = sub_115D00();
  __chkstk_darwin(v12 - 8);
  v77 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_115DA0();
  __chkstk_darwin(v14 - 8);
  v76 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_46F9C(&qword_186980, &qword_12BF68);
  v79 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v87 = &v63 - v18;
  v19 = sub_115E40();
  v74 = *(v19 - 8);
  v75 = v19;
  __chkstk_darwin(v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_46F9C(&qword_186A38, &unk_12C258);
  v78 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v86 = &v63 - v24;
  v25 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v25 - 8);
  v27 = &v63 - v26;
  v28 = sub_115760();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115EB0();
  result = (*(v29 + 48))(v27, 1, v28);
  if (result != 1)
  {
    v70 = v29;
    v71 = v28;
    (*(v29 + 32))(v31, v27, v28);
    v33 = sub_115ED0();
    v72 = v8;
    v73 = v7;
    v69 = a1;
    if (!v33 || (sub_115ED0(), result = sub_115EC0(), !__OFSUB__(result, 1)))
    {
      (*(*a2 + 512))(v31);
      v34 = sub_5A754();
      swift_beginAccess();

      sub_116010();
      v67 = v94;
      v68 = v93;
      v66 = v95;
      swift_beginAccess();
      sub_116010();
      v63 = v97;
      v64 = v96;
      v35 = v98;
      swift_beginAccess();
      v102 = v64;
      v103 = v63;
      v104 = v35;
      sub_115E30();
      swift_beginAccess();
      *&v99 = *(*v34 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
      v36 = v86;
      v37 = v75;
      sub_115E10();
      (*(v74 + 8))(v21, v37);
      v65 = v31;
      sub_115D80();
      sub_A79C0();
      v38 = swift_beginAccess();
      v39 = *(*v34 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing) * 0.5 + *(*v34 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelAdditionalOffset);
      __chkstk_darwin(v38);
      sub_115CF0();
      v61 = sub_46F9C(&qword_186A70, &unk_12C2C0);
      v62 = sub_EE11C();
      v59 = sub_EDF30;
      v60 = &v57;
      LOBYTE(v58) = 0;
      v57 = v39;
      v40 = v87;
      sub_115C30();
      v99 = v68;
      v100 = v67;
      v101 = v66;
      v41 = v80;
      sub_115A30();
      swift_beginAccess();
      v92[0] = *(*v34 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
      v42 = v81;
      v43 = v83;
      sub_115E10();
      (*(v82 + 8))(v41, v43);
      v44 = v78;
      v45 = v88;
      (*(v78 + 16))(v88, v36, v89);
      v92[0] = v45;
      v46 = v79;
      v47 = v90;
      v48 = v40;
      v49 = v91;
      (*(v79 + 16))(v90, v48, v91);
      v92[1] = v47;
      v51 = v72;
      v50 = v73;
      v52 = v84;
      (*(v72 + 16))(v84, v42, v73);
      v92[2] = v52;
      sub_EA22C(v92, v85);
      v53 = *(v51 + 8);
      v53(v42, v50);
      v54 = *(v46 + 8);
      v54(v87, v49);
      v55 = *(v44 + 8);
      v56 = v89;
      v55(v86, v89);
      v53(v52, v50);
      v54(v90, v91);
      v55(v88, v56);
      return (*(v70 + 8))(v65, v71);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_EB3F8()
{
  result = qword_186970;
  if (!qword_186970)
  {
    sub_47A1C(&qword_186968, &qword_12BF60);
    sub_115E40();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_186978, &qword_186980, &qword_12BF68, &protocol conformance descriptor for AxisValueLabel<A>);
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186970);
  }

  return result;
}

uint64_t sub_EB534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_5822C(a1, a2, a3);
  result = sub_F59F0(&type metadata for PerfPowerServices, v3);
  v5 = 3;
  if (result)
  {
    v5 = 6;
  }

  qword_191ED0 = v5;
  return result;
}

double *sub_EB590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_115C80();
  __chkstk_darwin(v3 - 8);
  v4 = sub_115BE0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = sub_1158B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_115C10();
  v13 = __chkstk_darwin(v12 - 8);
  (*(v9 + 104))(v11, enum case for Calendar.Component.second(_:), v8, v13);
  if (qword_190970 != -1)
  {
    swift_once();
  }

  v14 = qword_191ED0;
  result = sub_A79F0();
  v16 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20[1] = a1;
  if ((v14 * v16) >> 64 == (v14 * v16) >> 63)
  {
    v17 = sub_1158D0();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    sub_115BF0();
    sub_EA990(v7);
    (*(v9 + 8))(v11, v8);
    v18 = swift_allocObject();
    v19 = *(v1 + 16);
    *(v18 + 16) = *v1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(v1 + 32);

    sub_115BD0();
    sub_115C70();
    sub_46F9C(&qword_186988, &qword_12BF70);
    sub_ED1A0();
    return sub_115E90();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_EB948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a2;
  v150 = a3;
  v118 = sub_115E40();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_46F9C(&qword_186A38, &unk_12C258);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v115 = v112 - v6;
  v149 = sub_46F9C(&qword_1869D8, &qword_12BF98);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v124 = v112 - v7;
  v8 = sub_46F9C(&qword_1869C8, &qword_12BF90);
  __chkstk_darwin(v8 - 8);
  v10 = v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v112 - v12;
  v144 = sub_1158B0();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_115A40();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_46F9C(&qword_1843A0, &unk_128120);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v119 = v112 - v16;
  v17 = sub_46F9C(&qword_1869B8, &qword_12BF88);
  __chkstk_darwin(v17 - 8);
  v19 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v156 = v112 - v21;
  v22 = sub_115D00();
  __chkstk_darwin(v22 - 8);
  v134 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_115DA0();
  __chkstk_darwin(v24 - 8);
  v136 = sub_46F9C(&qword_1869A0, &qword_12BF80);
  v137 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = v112 - v25;
  v139 = sub_46F9C(&qword_186998, &qword_12BF78);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v135 = v112 - v26;
  v147 = sub_46F9C(&qword_186A40, &unk_12C268);
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v155 = v112 - v29;
  v30 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v30 - 8);
  v32 = v112 - v31;
  v33 = sub_115760();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v114 = v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = v112 - v37;
  sub_115EB0();
  v39 = v33;
  v40 = v34;
  result = (*(v34 + 48))(v32, 1, v39);
  if (result != 1)
  {
    v42 = *(v34 + 32);
    v151 = v39;
    v42(v38, v32, v39);
    v43 = a1;
    v44 = sub_115ED0();
    v45 = sub_115ED0();
    v46 = sub_115EC0();
    if (__OFSUB__(v46, 1))
    {
      __break(1u);
    }

    else
    {
      v157 = v40;
      v130 = v19;
      v131 = v13;
      v132 = v10;
      v129 = v44;
      v128 = v45;
      v127 = v46 - 1;
      v47 = v45 == v46 - 1;
      v19 = v152;
      v45 = *(v152 + 8);
      v48 = (*v45 + 504);
      v113 = *v48;
      v112[1] = v48;
      v153 = v113(v38);
      v49 = sub_115ED0();
      v50 = *(v19 + 32);
      v3 = *(v19 + 16);
      v51 = *(*v45 + 528);
      v154 = v38;
      v51(v38, v49, v44 == 0, v47, v50, v3);
      sub_115D80();
      sub_A79C0();
      a1 = *v19;
      v52 = *v19;
      v123 = v50;
      v54 = sub_ED0A4(v52, v50, v53);
      __chkstk_darwin(v55);
      sub_115CF0();
      v110 = sub_46F9C(&qword_186A48, &qword_12C278);
      v111 = sub_EDE78();
      v108 = sub_EDDC4;
      v109 = &v106;
      LOBYTE(v107) = 0;
      v106 = v54;
      v56 = 1;
      v57 = v133;
      sub_115C30();

      *&v168 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor);
      v58 = sub_48800(&qword_1869A8, &qword_1869A0, &qword_12BF80, &protocol conformance descriptor for AxisValueLabel<A>);
      v59 = v135;
      v60 = v136;
      sub_115E10();
      (*(v137 + 8))(v57, v60);
      *&v168 = v60;
      *(&v168 + 1) = &type metadata for Color;
      *&v169 = v58;
      *(&v169 + 1) = &protocol witness table for Color;
      swift_getOpaqueTypeConformance2();
      v61 = v139;
      sub_115E20();
      (*(v138 + 8))(v59, v61);
      LOBYTE(v19) = *(v19 + 33);
      v62 = v156;
      v63 = v141;
      v64 = v140;
      if ((v19 & 1) == 0)
      {
        sub_116010();
        v168 = v159;
        v169 = v160;
        v170 = v161;
        v65 = v120;
        sub_115A30();
        *&v165 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
        v66 = v119;
        v67 = v122;
        sub_115E10();
        (*(v121 + 8))(v65, v67);
        (*(v64 + 32))(v62, v66, v63);
        v56 = 0;
      }

      (*(v64 + 56))(v62, v56, 1, v63);
      v68 = v143;
      v69 = v142;
      v70 = v144;
      (*(v143 + 104))(v142, enum case for Calendar.Component.hour(_:), v144);
      v71 = sub_1158C0();
      (*(v68 + 8))(v69, v70);
      v43 = v71 % 12;
      if (qword_190970 == -1)
      {
LABEL_6:
        v73 = v149;
        v74 = v131;
        v75 = v157;
        v76 = v129;
        if (v43 == qword_191ED0 && ((*(*v45 + 488))(v3) & 1) != 0 && v76 && v128 != v127)
        {
          v77 = 1;
          v78 = v148;
          v79 = v147;
          v80 = v74;
LABEL_25:
          (*(v78 + 56))(v80, v77, 1, v73);
          v97 = v146;
          v98 = v145;
          v99 = v155;
          (*(v146 + 16))(v145, v155, v79);
          v158[0] = v98;
          v100 = v156;
          v101 = v130;
          sub_479B4(v156, v130, &qword_1869B8, &qword_12BF88);
          v158[1] = v101;
          v102 = v80;
          v103 = v80;
          v104 = v132;
          sub_479B4(v102, v132, &qword_1869C8, &qword_12BF90);
          v158[2] = v104;
          sub_EA490(v158, v150);
          sub_488C8(v103, &qword_1869C8, &qword_12BF90);
          sub_488C8(v100, &qword_1869B8, &qword_12BF88);
          v105 = *(v97 + 8);
          v105(v99, v79);
          (*(v157 + 8))(v154, v151);
          sub_488C8(v104, &qword_1869C8, &qword_12BF90);
          sub_488C8(v101, &qword_1869B8, &qword_12BF88);
          return (v105)(v98, v79);
        }

        v81 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);
        if ((((v76 == 0 || (v123 & 1) == 0) | v153 & 1) & v123) != 0)
        {
          v72.n128_f64[0] = v81 + v81;
        }

        else
        {
          v72.n128_u64[0] = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);
        }

        if (!((v76 == 0 || (v123 & 1) == 0) | v153 & 1) && v128 == v127)
        {
          sub_A79F0();
          v82 = v114;
          sub_115740();
          if ((v113(v82) & 1) == 0)
          {
            (*(v75 + 8))(v82, v151);
            v72.n128_f64[0] = v81 + v81;
            if (v19)
            {
              goto LABEL_21;
            }

            goto LABEL_23;
          }

          v83 = v82;
          v84 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDate);
          isa = sub_1156B0().super.isa;
          v86 = [v84 stringFromDate:isa];

          v87 = sub_1171B0();
          v89 = v88;

          LOBYTE(v86) = (*(*v45 + 480))(v87, v89, v3);

          (*(v157 + 8))(v83, v151);
          if (v86)
          {
            v72.n128_f64[0] = v81 + v81;
          }

          else
          {
            v72.n128_f64[0] = v81;
          }
        }

        if (v19)
        {
LABEL_21:
          v90 = 1;
          v91 = v126;
          v78 = v148;
          v92 = v125;
          v93 = v124;
LABEL_24:
          v79 = v147;
          (*(v92 + 56))(v93, v90, 1, v91, v72);
          v80 = v74;
          sub_548D0(v93, v74, &qword_1869D8, &qword_12BF98);
          v77 = 0;
          goto LABEL_25;
        }

LABEL_23:
        sub_116010();
        v165 = v162;
        v166 = v163;
        v167 = v164;
        v94 = v116;
        sub_115E30();
        v158[0] = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
        v95 = v115;
        v96 = v118;
        sub_115E10();
        (*(v117 + 8))(v94, v96);
        v92 = v125;
        v93 = v124;
        v91 = v126;
        (*(v125 + 32))(v124, v95, v126);
        v90 = 0;
        v78 = v148;
        goto LABEL_24;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_ECCA4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_5A754();
  v11 = swift_beginAccess();
  v12 = *v10;
  v15 = sub_5822C(v11, v13, v14);

  result = sub_F59F0(&type metadata for PerfPowerServices, v15);
  *a3 = v12;
  *(a3 + 8) = a1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a2;
  *(a3 + 33) = result & 1;
  return result;
}

uint64_t sub_ECD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ED518(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_ECD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_ED518(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_ECDC8@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_C0504(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_ECDF4(void *a1)
{
  v2 = sub_46F9C(&qword_1869E0, &unk_12BFA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v6 = sub_66DE0(a1, a1[3]);
  sub_ED518(v6, v7, v8);
  sub_117B00();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_ECF08()
{
  v0 = sub_115820();
  __chkstk_darwin(v0 - 8);
  v1 = sub_46F9C(&qword_183560, &qword_129070);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = sub_1157E0();
  sub_66C80(v5, v6, v7);
  sub_1155E0();
  sub_1155D0();
  return (*(v2 + 8))(v4, v1);
}

double sub_ED0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = sub_5822C(a1, a2, a3);
  if (sub_F59F0(&type metadata for PerfPowerServices, v5))
  {
    return *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalHeight);
  }

  v7 = 0.0;
  if ((v3 & 1) == 0)
  {
    v7 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axisLabelPadding);
  }

  return *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing) * 0.5 + *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelAdditionalOffset) + v7;
}

uint64_t sub_ED158()
{

  return swift_deallocObject();
}

unint64_t sub_ED1A0()
{
  result = qword_186990;
  if (!qword_186990)
  {
    sub_47A1C(&qword_186988, &qword_12BF70);
    sub_47A1C(&qword_186998, &qword_12BF78);
    sub_47A1C(&qword_1869A0, &qword_12BF80);
    sub_48800(&qword_1869A8, &qword_1869A0, &qword_12BF80, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_ED304();
    sub_ED3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186990);
  }

  return result;
}

unint64_t sub_ED304()
{
  result = qword_1869B0;
  if (!qword_1869B0)
  {
    sub_47A1C(&qword_1869B8, &qword_12BF88);
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869B0);
  }

  return result;
}

unint64_t sub_ED3CC()
{
  result = qword_1869C0;
  if (!qword_1869C0)
  {
    sub_47A1C(&qword_1869C8, &qword_12BF90);
    sub_ED450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869C0);
  }

  return result;
}

unint64_t sub_ED450()
{
  result = qword_1869D0;
  if (!qword_1869D0)
  {
    sub_47A1C(&qword_1869D8, &qword_12BF98);
    sub_115E40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869D0);
  }

  return result;
}

unint64_t sub_ED518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_190978[0];
  if (!qword_190978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_190978);
  }

  return result;
}

unint64_t sub_ED570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1869E8;
  if (!qword_1869E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869E8);
  }

  return result;
}

unint64_t sub_ED5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1869F0;
  if (!qword_1869F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869F0);
  }

  return result;
}

unint64_t sub_ED620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1869F8;
  if (!qword_1869F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869F8);
  }

  return result;
}

unint64_t sub_ED678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_186A00;
  if (!qword_186A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186A00);
  }

  return result;
}

void sub_ED6D4(uint64_t a1)
{
  sub_C097C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_ED76C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}