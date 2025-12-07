uint64_t sub_4FCA0()
{
  v1 = type metadata accessor for FeaturePreviewConfiguration(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 28);
  v6 = sub_187C(&qword_710B8, &unk_5C3F0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v11 = v4;
    v7 = sub_58920();
    v8 = *(*(v7 - 8) + 8);
    v8(v5, v7);
    v9 = v7;
    v4 = v11;
    v8(v5 + *(v6 + 48), v9);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4FE44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturePreviewConfiguration(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 8);

  v5 = v4;
  sub_59290();
  v6 = sub_592E0();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_4FF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, void (*a10)(uint64_t, uint64_t))
{

  if (a9)
  {
    sub_4F6D4(a4, a5);
  }

  else
  {
    a10(a4, a5);
  }

  return sub_4EAA0(a7, a8 & 1);
}

uint64_t sub_4FFA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_50024@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(type metadata accessor for FeaturePreviewView(0, v4, v7, a1) - 8);
  v11 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v12 = (v2 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_41EE0(v2 + v11, *v12, v12[1], v4, v5, v6, v7, v8, a2, v9);
}

uint64_t sub_50104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FeaturePreviewView(0, *(v4 + 16), *(v4 + 40), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 64) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = (v4 + v7);
  v10 = type metadata accessor for FeaturePreviewConfiguration(0);
  if (!(*(*(v10 - 8) + 48))(v4 + v7, 1, v10))
  {

    v11 = v9 + *(v10 + 28);
    v12 = sub_187C(&qword_710B8, &unk_5C3F0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = sub_58920();
      v15 = *(*(v13 - 8) + 8);
      v15(v11, v13);
      v15(&v11[*(v12 + 48)], v13);
    }
  }

  if (*(v9 + *(v5 + 36)))
  {
  }

  sub_178CC(*(v9 + *(v5 + 44)), *(v9 + *(v5 + 44) + 8));

  return _swift_deallocObject(v4, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v6 | 7);
}

uint64_t sub_5035C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = v4[7];
  v14 = *(type metadata accessor for FeaturePreviewView(0, v8, v11, a3) - 8);
  v15 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v16 = (v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_42558(v4 + v15, *v16, v16[1], v8, v9, v10, v11, v12, a4, v13, a1, a2);
}

uint64_t sub_50454(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_50498(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_50498(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_504A8()
{
  result = qword_72058;
  if (!qword_72058)
  {
    sub_1F64(&qword_72050, qword_5ED18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72058);
  }

  return result;
}

uint64_t sub_5052C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_4FFA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_505C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_505F8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  sub_52154();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;
  sub_66D8(v7, v8, v9);

  v10 = v6;
  sub_59680();
  v11 = v10;
  v12 = sub_59290();
  KeyPath = swift_getKeyPath();
  result = sub_187C(&qword_71B20, &qword_5DDB8);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v12;
  return result;
}

uint64_t sub_506E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_50724()
{
  if (*(v0 + 16))
  {

    v1 = sub_52384();
    sub_20188(v1, v2);
  }

  else
  {
    type metadata accessor for TypographyPanelViewModel(0);
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
    result = sub_58D40();
    __break(1u);
  }

  return result;
}

unint64_t sub_507E4()
{
  result = qword_720B0;
  if (!qword_720B0)
  {
    sub_1F64(&qword_72078, &qword_5ED60);
    sub_50870();
    sub_2118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_720B0);
  }

  return result;
}

unint64_t sub_50870()
{
  result = qword_720B8;
  if (!qword_720B8)
  {
    sub_1F64(&qword_72088, &qword_5ED70);
    sub_6ED0(&qword_720C0, &qword_72080, &qword_5ED68, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_720B8);
  }

  return result;
}

uint64_t sub_50928()
{
  if (!*(v0 + 16))
  {
LABEL_49:
    type metadata accessor for TypographyPanelViewModel(0);
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
    result = sub_58D40();
    __break(1u);
    return result;
  }

  swift_retain_n();
  v1 = sub_1F564();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_35:
    v30 = v2 & 0xFFFFFFFFFFFFFF8;
    v31 = sub_59D30();
  }

  else
  {
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v31 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v31 == v3)
    {

      goto LABEL_43;
    }

    if (v4)
    {
      v6 = sub_59C80();
    }

    else
    {
      if (v3 >= *(v30 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v6 = *(v2 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = sub_52384();
    v10 = v9;

    v11 = sub_1F758();

    if (!v11)
    {

      goto LABEL_6;
    }

    v12 = v2;
    v13 = sub_52384();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
      break;
    }

    v16 = sub_59E80();

    v2 = v12;
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_6:
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_34;
    }
  }

LABEL_19:

  sub_1F564();

  v17 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = sub_1F564();

    if (!(v18 >> 62))
    {
      v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));

      goto LABEL_22;
    }
  }

  v19 = sub_59D30();

  if ((v19 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v20 = sub_1F564();

    if (v17 < v19)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        goto LABEL_39;
      }

      if (v17 < *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
        v21 = *(v20 + 8 * v17 + 32);
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_47;
    }

    if (v20 >> 62)
    {
      if (sub_59D30())
      {
LABEL_29:
        if ((v20 & 0xC000000000000001) == 0)
        {
          if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_49;
          }

          v26 = *(v20 + 32);
          goto LABEL_32;
        }

LABEL_47:
        v26 = sub_59C80();
LABEL_32:
        v27 = v26;

        v23 = sub_52384();
        v25 = v28;

        goto LABEL_42;
      }
    }

    else if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_29;
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_42;
  }

  __break(1u);
LABEL_39:
  v21 = sub_59C80();
LABEL_26:
  v22 = v21;

  v23 = sub_52384();
  v25 = v24;

LABEL_42:
  sub_20188(v23, v25);

LABEL_43:
}

unint64_t sub_50CF8()
{
  result = qword_720D0;
  if (!qword_720D0)
  {
    sub_1F64(&qword_72098, &qword_5ED80);
    sub_6ED0(&qword_720D8, &qword_720E0, &qword_5EDA8, &protocol conformance descriptor for Button<A>);
    sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_720D0);
  }

  return result;
}

uint64_t sub_50DDC()
{
  if (!*(v0 + 16))
  {
LABEL_52:
    type metadata accessor for TypographyPanelViewModel(0);
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
    result = sub_58D40();
    __break(1u);
    return result;
  }

  swift_retain_n();
  v1 = sub_1F564();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_41:
    v28 = v2 & 0xFFFFFFFFFFFFFF8;
    v29 = sub_59D30();
  }

  else
  {
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = 0;
  while (1)
  {
    if (v29 == v3)
    {

      goto LABEL_36;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_59C80();
    }

    else
    {
      if (v3 >= *(v28 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = sub_52384();
    v9 = v8;

    v10 = sub_1F758();

    if (!v10)
    {

      goto LABEL_6;
    }

    v11 = sub_52384();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v14 = sub_59E80();

    if (v14)
    {
      goto LABEL_19;
    }

LABEL_6:
    v4 = __OFADD__(v3++, 1);
    if (v4)
    {
      goto LABEL_40;
    }
  }

LABEL_19:

  sub_1F564();

  v15 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = sub_1F564();

    if (!(v16 >> 62))
    {
      v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));

      goto LABEL_22;
    }
  }

  v17 = sub_59D30();

  if ((v17 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v18 = sub_1F564();

    if (v15 < v17)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        goto LABEL_45;
      }

      if (v15 < *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
        v19 = v18 + 8 * v15;
LABEL_33:
        v22 = *(v19 + 32);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_49;
    }

    if (v18 >> 62)
    {
      v20 = sub_59D30();
      if (v20)
      {
LABEL_28:
        v4 = __OFSUB__(v20, 1);
        v21 = v20 - 1;
        if (!v4)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            goto LABEL_45;
          }

          if ((v21 & 0x8000000000000000) == 0)
          {
            if (v21 < *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
            {
              v19 = v18 + 8 * v21;
              goto LABEL_33;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else
    {
      v20 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      if (v20)
      {
        goto LABEL_28;
      }
    }

    v24 = 0;
    v26 = 0;
    goto LABEL_35;
  }

  __break(1u);
LABEL_45:
  v22 = sub_59C80();
LABEL_34:
  v23 = v22;

  v24 = sub_52384();
  v26 = v25;

LABEL_35:
  sub_20188(v24, v26);

LABEL_36:
}

uint64_t sub_51188(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5120C()
{
  result = qword_72110;
  if (!qword_72110)
  {
    sub_1F64(&qword_72118, &qword_5EE28);
    sub_512C4();
    sub_6ED0(&qword_71C20, &qword_71C18, &qword_5DE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72110);
  }

  return result;
}

unint64_t sub_512C4()
{
  result = qword_72120;
  if (!qword_72120)
  {
    sub_1F64(&qword_72128, &qword_5EE30);
    sub_5137C();
    sub_6ED0(&qword_70F18, &qword_70F20, &qword_5EE50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72120);
  }

  return result;
}

unint64_t sub_5137C()
{
  result = qword_72130;
  if (!qword_72130)
  {
    sub_1F64(&qword_72138, &qword_5EE38);
    sub_51434();
    sub_6ED0(&qword_71C10, &qword_71C08, &qword_5DE88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72130);
  }

  return result;
}

unint64_t sub_51434()
{
  result = qword_72140;
  if (!qword_72140)
  {
    sub_1F64(&qword_72148, &qword_5EE40);
    sub_514EC();
    sub_6ED0(&qword_71B38, &qword_71B40, &qword_5DDC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72140);
  }

  return result;
}

unint64_t sub_514EC()
{
  result = qword_72150;
  if (!qword_72150)
  {
    sub_1F64(&qword_72158, &qword_5EE48);
    sub_6ED0(&qword_71E68, &qword_71E70, &qword_5E928, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72150);
  }

  return result;
}

uint64_t sub_515D4(void *a1)
{
  sub_58CB0();
  sub_1F64(&qword_71F88, &qword_5EBF8);
  sub_58CB0();
  swift_getTupleTypeMetadata2();
  sub_59840();
  sub_59B10();
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  sub_1F64(&qword_70AB8, &qword_5AB98);
  sub_58CB0();
  sub_58CB0();
  sub_58CB0();
  sub_58CB0();
  swift_getWitnessTable();
  sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_51894@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = result;
  if (a3)
  {
    a4[1] = a2;

    v6 = &type metadata for String;
  }

  else
  {
    v6 = &type metadata for Int;
  }

  a4[3] = v6;
  *a4 = v4;
  return result;
}

uint64_t sub_518E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  v3 = swift_dynamicCast();
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_51970(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return swift_dynamicCast();
}

uint64_t sub_519E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return swift_dynamicCast() ^ 1;
}

uint64_t sub_51ABC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a3)
  {
  }

  if (swift_dynamicCast())
  {
    v7 = a4();
  }

  else
  {
    v7 = a5();
  }

  v8 = *v7;

  return v8;
}

uint64_t sub_51B70()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 32;
    v4 = *(v1 + 56);
    v1 += 32;
    if (v4 == 1)
    {
      return *v3;
    }
  }

  return 0;
}

uint64_t sub_51BC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_B4D0(*v0, v2, v3);
  v4 = sub_815C(v1, v2, v3);
  if ((*(v0 + 40) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v0 + 48);
  if (*(v6 + 16) != 2)
  {
    goto LABEL_9;
  }

  if (v5 != 9)
  {
    v15 = v4;
    v16 = v5;
    v8 = v4;
    v9 = v5;
    v10 = sub_B848(v4, v5);
    sub_D660(v10, v11, v12);
    v13 = sub_598A0();
    sub_E9AC(v15, v16);
    if ((v13 & 1) == 0)
    {
      v14 = sub_598A0();
      sub_E9AC(v8, v9);
      if ((v14 & 1) == 0)
      {
        goto LABEL_4;
      }

      return 0;
    }

    v4 = v8;
    v5 = v9;
LABEL_9:
    sub_18728(v4, v5);
    return 0;
  }

LABEL_4:
  if (*(v6 + 32) || (*(v6 + 56) & 1) == 0)
  {
    return (*(v6 + 64) == 0) & *(v6 + 88);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_51D10()
{
  if (sub_51BC4())
  {
    v3 = *(v0 + 48);

    sub_54400(&v3);
    if (*(v3 + 2))
    {
      v1 = *(v3 + 4);

      return v1;
    }
  }

  return 0;
}

char *sub_51DE0()
{
  if ((sub_51BC4() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 48);
  v13[0] = v1;

  sub_54400(v13);
  if (!*(v13[0] + 2))
  {

    return 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
LABEL_7:

    return 0;
  }

  sub_17BAC(v2, v3, v4);
  v6 = (v1 + 57);
  while (1)
  {
    v7 = *(v6 - 9);
    v8 = *(v6 - 17);
    v9 = *(v6 - 25);
    v10 = *v6;
    v11 = *(v6 - 1);
    v13[0] = v9;
    v13[1] = v8;
    v13[2] = v7;
    v14 = v11;
    v15 = v10;

    if ((sub_598A0() & 1) == 0)
    {
      break;
    }

    v6 += 32;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  return v9;
}

uint64_t sub_51F6C()
{
  if (*(*(v0 + 48) + 16) == 1)
  {
    return 1;
  }

  else
  {
    return sub_51BC4();
  }
}

uint64_t sub_51F88(char a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) != 0)
  {
    return 2;
  }

  else
  {
    return (a1 & 1) == 0;
  }
}

uint64_t sub_51FA0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = a1 - 1;
  if ((a1 & 1) == 0)
  {
    v4 = a1 | 1;
  }

  if ((a4 & 0x100) != 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t CTFontRef.debugDescription.getter()
{
  sub_59C70(20);
  v1 = CTFontCopyDisplayName(v0);
  v2 = sub_598E0();

  v9 = v2;
  v10._countAndFlagsBits = 23328;
  v10._object = 0xE200000000000000;
  sub_59950(v10);
  CTFontGetSize(v0);
  v11._countAndFlagsBits = sub_59A90();
  sub_59950(v11);

  v12._countAndFlagsBits = 0x6E6974746573205DLL;
  v12._object = 0xEC000000203A7367;
  sub_59950(v12);
  v3 = CTFontCopyFeatureSettings(v0);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_187C(&qword_716F8, &qword_5D840);
      sub_59A00();
    }
  }

  sub_187C(&qword_716F8, &qword_5D840);
  v5 = sub_59A20();
  v7 = v6;

  v13._countAndFlagsBits = v5;
  v13._object = v7;
  sub_59950(v13);

  return v9;
}

uint64_t sub_52154()
{
  v1 = CTFontCopyDisplayName(v0);
  v2 = sub_598E0();

  return v2;
}

id sub_521C0()
{
  v0 = objc_opt_self();
  [v0 systemFontSize];
  result = [v0 systemFontOfSize:?];
  qword_77C78 = result;
  return result;
}

uint64_t *sub_52218()
{
  if (qword_778C0 != -1)
  {
    swift_once();
  }

  return &qword_77C78;
}

id sub_52268()
{
  if (qword_778C0 != -1)
  {
    swift_once();
  }

  v1 = qword_77C78;

  return v1;
}

double sub_522D4()
{
  v1 = fabs(CTFontGetDescent(v0));
  Ascent = CTFontGetAscent(v0);
  v3 = Ascent + fabs(CTFontGetDescent(v0));
  return v1 / (CTFontGetLeading(v0) + v3);
}

CGFloat sub_52330()
{
  Ascent = CTFontGetAscent(v0);
  v2 = Ascent + fabs(CTFontGetDescent(v0));
  return CTFontGetLeading(v0) + v2;
}

uint64_t sub_52384()
{
  v1 = CTFontCopyPostScriptName(v0);
  v2 = sub_598E0();

  return v2;
}

uint64_t sub_523DC(uint64_t a1, unint64_t a2)
{

  v5 = sub_59980();
  if (!v5)
  {

    v7 = _swiftEmptyArrayStorage;
    v10 = _swiftEmptyArrayStorage[2];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  v6 = v5;
  v7 = sub_52E4(v5, 0);

  v8 = sub_2B0B0(v13, (v7 + 16), v6, a1, a2);

  if (v8 == v6)
  {

    v10 = *(v7 + 2);
    if (v10)
    {
LABEL_4:
      v11 = sub_59A40();
      *(v11 + 2) = v10;
      bzero(v11 + 16, 2 * v10);
LABEL_7:
      GlyphsForCharacters = CTFontGetGlyphsForCharacters(v2, v7 + 16, v11 + 16, v10);

      return GlyphsForCharacters;
    }

LABEL_6:
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_52500()
{
  v1 = [v0 length];
  if (v1 >= 100000)
  {
    v2 = 100000;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 attributedSubstringFromRange:{0, v2}];
  v4 = CTLineCreateWithAttributedString(v3);

  v5 = CTLineGetGlyphRuns(v4);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CTRun(0);
    sub_59A00();
  }

  else
  {
  }

  return &_swiftEmptySetSingleton;
}

CFIndex sub_526F0@<X0>(const __CTRun **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_589A0();
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontGlyphVariant(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = CTRunGetFont();
  v14 = sub_2BE14();
  CopyWithAttributes = CTFontCreateCopyWithAttributes(v13, *v14, 0, 0);

  StringRange = CTRunGetStringRange(v12);
  location = StringRange.location;
  if (StringRange.location == -1)
  {
    location = sub_58860();
  }

  v18 = [a2 attributedSubstringFromRange:{location, StringRange.length}];
  v19 = [v18 string];

  v20 = sub_598E0();
  v22 = v21;

  result = CTRunGetGlyphCount(v12);
  if (result < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v24 = result;
  if (result)
  {
    v25 = sub_59A40();
    *(v25 + 2) = v24;
    bzero(v25 + 16, 2 * v24);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v52.location = 0;
  v52.length = v24;
  CTRunGetGlyphs(v12, v52, v25 + 16);
  v26 = HIBYTE(v22) & 0xF;
  v46 = v20;
  v47 = v22;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v26 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v48 = 0;
  v49 = v26;
  v50 = v25;
  v51 = 0;
  result = sub_59960();
  if (v27)
  {
    v28 = v27;
    v44 = v8;
    v29 = 0;
    v30 = _swiftEmptyArrayStorage;
    while (1)
    {
      v31 = *(v25 + 2);
      if (v29 == v31)
      {

        goto LABEL_25;
      }

      if (v29 >= v31)
      {
        break;
      }

      v32 = v25[v29++ + 16];
      v51 = v29;
      v33 = sub_2A3B0(result, v28);
      if (*(v33 + 16))
      {
        v42 = v10;
        v43 = a3;
        v35 = *(v33 + 32);

        v36 = CopyWithAttributes;
        v37 = v44;
        sub_1DEC4();
        sub_1C43C(v37, v36, v35, v32, v45);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_25CDC(0, v30[2] + 1, 1, v30);
        }

        v10 = v42;
        v39 = v30[2];
        v38 = v30[3];
        if (v39 >= v38 >> 1)
        {
          v30 = sub_25CDC((v38 > 1), v39 + 1, 1, v30);
        }

        v30[2] = v39 + 1;
        sub_291DC(v45, v30 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v39);
        result = sub_59960();
        v28 = v40;
        a3 = v43;
        if (!v40)
        {
          goto LABEL_23;
        }
      }

      else
      {

        result = sub_59960();
        v28 = v34;
        if (!v34)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_23:

LABEL_25:

  *a3 = v30;
  return result;
}

uint64_t sub_52AA0(uint64_t result)
{
  if (result == -1)
  {
    return sub_58860();
  }

  return result;
}

void *sub_52AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = _swiftEmptyArrayStorage;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a3;
  v7[4] = &v14;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_56C74;
  *(v8 + 24) = v7;
  aBlock[4] = sub_56C80;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_530E8;
  aBlock[3] = &unk_6FD98;
  v9 = _Block_copy(aBlock);
  v10 = v3;

  [v10 enumerateAttribute:NSFontAttributeName inRange:a1 options:a2 usingBlock:{0, v9}];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    return v12;
  }

  return result;
}

void sub_52C84(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, char **a6)
{
  sub_57188(a1, &v56);
  if (!v57)
  {
    sub_6678(&v56, &qword_712D8, qword_5C750);
    return;
  }

  sub_292DC(&v56, v58);
  sub_F978(v58, &v56);
  type metadata accessor for CTFont(0);
  swift_dynamicCast();
  v10 = [a4 attributedSubstringFromRange:{a2, a3}];
  if (*sub_F194() == 1 && a5 >= a3)
  {
    v11 = [v10 string];
    v12 = sub_598E0();
    v14 = v13;

    LOBYTE(v12) = sub_2ACEC(v12, v14);

    if ((v12 & 1) == 0)
    {
      v15 = CTLineCreateWithAttributedString(v10);
      v16 = CTLineGetGlyphRuns(v15);

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v56 = 0;
        type metadata accessor for CTRun(0);
        sub_59A00();

        v17 = v56;
        if (v56)
        {
          v53 = a4;
          v48 = v10;
          if (v56 >> 62)
          {
            v18 = sub_59D30();
            if (v18)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v18 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
            if (v18)
            {
LABEL_9:
              if (v18 < 1)
              {
                __break(1u);
                return;
              }

              v19 = 0;
              v51 = a2;
              v52 = v17 & 0xC000000000000001;
              v49 = v18;
              v50 = v17;
              while (1)
              {
                if (v52)
                {
                  v20 = sub_59C80();
                }

                else
                {
                  v20 = *(v17 + 8 * v19 + 32);
                }

                v21 = v20;
                v22 = CTRunGetFont();
                StringRange = CTRunGetStringRange(v21);
                location = StringRange.location;
                length = StringRange.length;
                if (StringRange.location == -1)
                {
                  location = sub_58860();
                }

                v26 = a2 + location;
                if (__OFADD__(a2, location))
                {
                  break;
                }

                v27 = v22;
                v28 = sub_1DEE4(v27, [v53 attributedSubstringFromRange:{v26, StringRange.length}]);
                a3 = v29;
                v31 = v30;
                v33 = v32;
                v34 = *a6;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *a6 = v34;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v34 = sub_25EB4(0, *(v34 + 2) + 1, 1, v34);
                  *a6 = v34;
                }

                v37 = *(v34 + 2);
                v36 = *(v34 + 3);
                if (v37 >= v36 >> 1)
                {
                  *a6 = sub_25EB4((v36 > 1), v37 + 1, 1, v34);
                }

                ++v19;

                v38 = *a6;
                *(v38 + 2) = v37 + 1;
                v39 = &v38[32 * v37];
                *(v39 + 4) = v28;
                *(v39 + 5) = a3;
                *(v39 + 6) = v31;
                *(v39 + 7) = v33;
                v18 = v49;
                v17 = v50;
                a2 = v51;
                if (v49 == v19)
                {
                  goto LABEL_32;
                }
              }

              __break(1u);
              goto LABEL_30;
            }
          }

LABEL_32:

          sub_EA60(v58);
          return;
        }
      }

      else
      {
      }
    }
  }

  v17 = v55;
  v19 = v10;
  length = sub_1DEE4(v17, v19);
  v22 = v40;
  v26 = v41;
  v18 = v42;
  a3 = *a6;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *a6 = a3;
  if ((v43 & 1) == 0)
  {
LABEL_30:
    a3 = sub_25EB4(0, *(a3 + 2) + 1, 1, a3);
    *a6 = a3;
  }

  v45 = *(a3 + 2);
  v44 = *(a3 + 3);
  if (v45 >= v44 >> 1)
  {
    *a6 = sub_25EB4((v44 > 1), v45 + 1, 1, a3);
  }

  sub_EA60(v58);
  v46 = *a6;
  *(v46 + 2) = v45 + 1;
  v47 = &v46[32 * v45];
  *(v47 + 4) = length;
  *(v47 + 5) = v22;
  *(v47 + 6) = v26;
  *(v47 + 7) = v18;
}

uint64_t sub_530D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(a1, a3);
  result = a1 + a3;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_530E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_292DC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_6678(v13, &qword_712D8, qword_5C750);
}

uint64_t sub_53194(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_531B8, 0, 0);
}

uint64_t sub_531B8()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_187C(&qword_72170, &qword_5EE90);
  *v5 = v0;
  v5[1] = sub_532F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000015, 0x8000000000067070, sub_56CF8, v4, v6);
}

uint64_t sub_532F8()
{

  return _swift_task_switch(sub_5342C, 0, 0);
}

void sub_53444()
{
  if (*sub_F194() != 1)
  {
    return;
  }

  v13 = &_swiftEmptySetSingleton;
  v1 = [(__CTLine *)v0 length];
  v2 = swift_allocObject();
  *(v2 + 16) = &v13;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_56F38;
  *(v3 + 24) = v2;
  aBlock[4] = sub_57200;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_530E8;
  aBlock[3] = &unk_6FE38;
  v4 = _Block_copy(aBlock);

  [(__CTLine *)v0 enumerateAttribute:NSFontAttributeName inRange:0 options:v1 usingBlock:0, v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  v0 = CTLineCreateWithAttributedString(v0);
  v6 = CTLineGetGlyphRuns(v0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v0 = v6;
    goto LABEL_18;
  }

  aBlock[0] = 0;
  type metadata accessor for CTRun(0);
  sub_59A00();

  isEscapingClosureAtFileLocation = aBlock[0];
  if (!aBlock[0])
  {
LABEL_18:

    return;
  }

  v3 = aBlock[0] & 0xFFFFFFFFFFFFFF8;
  if (aBlock[0] >> 62)
  {
LABEL_15:
    if (sub_59D30() == 1 && sub_59D30())
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) != 1)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_7:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    v7 = sub_59C80();
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);
      return;
    }

    v7 = *(isEscapingClosureAtFileLocation + 32);
  }

  v8 = v7;

  v9 = CTRunGetFont();
  v10 = v13;

  v11 = v9;
  LOBYTE(v9) = sub_53754(v9, v10);

  if (v9)
  {
  }
}

uint64_t sub_53754(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_59C00();
  }

  else if (*(a2 + 16) && (sub_59ED0(), type metadata accessor for CTFont(0), sub_570F8(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80), sub_589F0(), v5 = sub_59F10(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_589E0();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_538C8()
{
  v0 = sub_187C(&qword_72178, &qword_5EE98);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  v4 = sub_58950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_58910();
  swift_getKeyPath();
  sub_588F0();
  sub_570F8(&qword_72180, &type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
  sub_58940();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  sub_56FF8(KeyPath, v9, v10);
  sub_58970();

  (*(v1 + 8))(v3, v0);
  return v12[1];
}

uint64_t sub_53ADC@<X0>(uint64_t *a1@<X8>)
{
  sub_58900();
  result = sub_588F0();
  *a1 = result;
  return result;
}

CFIndex sub_53B30(uint64_t a1)
{
  result = CFBitVectorGetCount(v1);
  if (__OFSUB__(result, a1))
  {
    __break(1u);
  }

  else if (result - a1 >= 0)
  {
    return a1;
  }

  else
  {
    return 0;
  }

  return result;
}

CFIndex sub_53B74()
{
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = CFBitVectorGetCount(v0);
    v4.length = result - v1;
    if (__OFSUB__(result, v1))
    {
      break;
    }

    if (v4.length < 0)
    {
      return v2;
    }

    v4.location = v1;
    FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(v0, v4, 1u);
    if (FirstIndexOfBit == -1)
    {
      return v2;
    }

    v6 = FirstIndexOfBit;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_54D4C(0, *(v2 + 2) + 1, 1, v2);
      v2 = result;
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_54D4C((v7 > 1), v8 + 1, 1, v2);
      v2 = result;
    }

    *(v2 + 2) = v8 + 1;
    *&v2[8 * v8 + 32] = v6;
    v9 = __OFADD__(v6, 1);
    v1 = v6 + 1;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

CFIndex sub_53C5C()
{
  v3.length = CFBitVectorGetCount(v0);
  v3.location = 0;
  FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(v0, v3, 1u);
  return FirstIndexOfBit & ~(FirstIndexOfBit >> 63);
}

uint64_t sub_53CA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  if (!__OFSUB__(a4, result))
  {
    return (a4 - result) & ~((a4 - result) >> 63);
  }

  __break(1u);
  return result;
}

uint64_t sub_53CEC()
{
  v1 = type metadata accessor for FontGlyphVariant(0);
  v9 = CTFontRef.debugDescription.getter();
  v10 = v2;
  v11._countAndFlagsBits = 0x20203E2D2D2D2020;
  v11._object = 0xE800000000000000;
  sub_59950(v11);
  v3 = *(v1 + 28);
  LODWORD(v1) = *(v0 + *(v1 + 24));
  v4 = *(v0 + v3);
  v12._countAndFlagsBits = sub_59E60();
  sub_59950(v12);

  if (v1 == v4)
  {
    v5._countAndFlagsBits = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    strcpy(v8, " variant of: ");
    HIWORD(v8[1]) = -4864;
    v13._countAndFlagsBits = sub_59E60();
    sub_59950(v13);

    v5._countAndFlagsBits = v8[0];
    v6 = v8[1];
  }

  v5._object = v6;
  sub_59950(v5);

  return v9;
}

char *sub_53E44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a1;
  v40 = a2;
  v6 = sub_187C(&qword_719F0, &unk_5DC00);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = [a3 string];
  v10 = sub_598E0();
  v12 = v11;

  v37 = *(a4 + 16);
  if (v37)
  {
    v13 = 0;
    v36 = a4 + 32;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v38 = v13;
      v15 = sub_59AB0();
      if ((v17 & 1) == 0)
      {
        v18 = v16;
        if ((v15 ^ v16) >= 0x4000)
        {
          v43 = sub_589D0();
          v19 = *(v43 - 8);
          v20 = *(v19 + 56);
          v41 = v19 + 56;
          v42 = v20;
          do
          {
            v46 = v10;
            v47 = v12;
            v44 = v39;
            v45 = v40;
            v21 = v42(v8, 1, 1, v43);
            sub_66D8(v21, v22, v23);
            v24 = sub_59B30();
            v26 = v25;
            v28 = v27;
            sub_6678(v8, &qword_719F0, &unk_5DC00);
            if (v28)
            {
              break;
            }

            v46 = v24;
            v47 = v26;
            v44 = v10;
            v45 = v12;

            sub_187C(&qword_72190, qword_5EF08);
            sub_5704C();
            v29 = sub_59B00();
            v31 = v30;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_54E50(0, *(v14 + 2) + 1, 1, v14, &qword_70C98, &qword_5AE70);
            }

            v33 = *(v14 + 2);
            v32 = *(v14 + 3);
            if (v33 >= v32 >> 1)
            {
              v14 = sub_54E50((v32 > 1), v33 + 1, 1, v14, &qword_70C98, &qword_5AE70);
            }

            *(v14 + 2) = v33 + 1;
            v34 = &v14[16 * v33];
            *(v34 + 4) = v29;
            *(v34 + 5) = v31;
          }

          while ((v26 ^ v18) >= 0x4000);
        }
      }

      v13 = v38 + 1;
    }

    while (v38 + 1 != v37);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

char *sub_54140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v38 = a2;
  v8 = sub_187C(&qword_719F0, &unk_5DC00);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v35 = *(a5 + 16);
  if (!v35)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = 0;
  v34 = a5 + 32;
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v36 = v11;
    v13 = sub_59AB0();
    if ((v15 & 1) == 0)
    {
      v16 = v14;
      if ((v13 ^ v14) >= 0x4000)
      {
        v41 = sub_589D0();
        v17 = *(v41 - 8);
        v18 = *(v17 + 56);
        v39 = v17 + 56;
        v40 = v18;
        do
        {
          v44 = a3;
          v45 = a4;
          v42 = v37;
          v43 = v38;
          v19 = v40(v10, 1, 1, v41);
          sub_66D8(v19, v20, v21);
          v22 = sub_59B30();
          v24 = v23;
          v26 = v25;
          sub_6678(v10, &qword_719F0, &unk_5DC00);
          if (v26)
          {
            break;
          }

          v44 = v22;
          v45 = v24;
          v42 = a3;
          v43 = a4;

          sub_187C(&qword_72190, qword_5EF08);
          sub_5704C();
          v27 = sub_59B00();
          v29 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_54E50(0, *(v12 + 2) + 1, 1, v12, &qword_70C98, &qword_5AE70);
          }

          v31 = *(v12 + 2);
          v30 = *(v12 + 3);
          if (v31 >= v30 >> 1)
          {
            v12 = sub_54E50((v30 > 1), v31 + 1, 1, v12, &qword_70C98, &qword_5AE70);
          }

          *(v12 + 2) = v31 + 1;
          v32 = &v12[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
        }

        while ((v24 ^ v16) >> 14);
      }
    }

    v11 = v36 + 1;
  }

  while (v36 + 1 != v35);
  return v12;
}

Swift::Int sub_54400(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_30C10(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_59E50(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 89;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 25;
          v14 = *(v12 - 25);
          if (*(v12 - 57) >= v14)
          {
            break;
          }

          v16 = *(v12 - 57);
          v15 = *(v12 - 41);
          *(v12 - 32) = *v12;
          v12 -= 32;
          v17 = *(v12 + 15);
          v18 = *(v12 + 23);
          v19 = v12[31];
          *v13 = v16;
          *(v13 + 1) = v15;
          *(v12 - 25) = v14;
          *(v12 - 17) = v17;
          *(v12 - 9) = v18;
          *(v12 - 1) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_59A40();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v21[0] = v7 + 4;
    v21[1] = v6;
    sub_54564(v21, v22, v23, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_54564(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v98 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_5A8C(v9);
      v9 = result;
    }

    v90 = v9 + 2;
    v91 = v9[2];
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v9[2 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_54B50((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v5);
        if (v6)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_117;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_118;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_119;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v97 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a3 + 32 * v8);
      v12 = 32 * v10;
      v13 = (*a3 + 32 * v10);
      v16 = *v13;
      v15 = v13 + 8;
      v14 = v16;
      v17 = v10 + 2;
      while (v7 != v17)
      {
        v18 = *(v15 - 4) >= *v15;
        ++v17;
        v15 += 4;
        if ((((v14 < v11) ^ v18) & 1) == 0)
        {
          v8 = v17 - 1;
          if (v14 >= v11)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v14 >= v11)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_122;
      }

      if (v10 < v8)
      {
        v19 = 32 * v8 - 32;
        v20 = v8;
        v21 = v10;
        do
        {
          if (v21 != --v20)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v25 = (v24 + v12);
            v26 = (v24 + v19);
            v27 = *(v24 + v12);
            v28 = *(v24 + v12 + 16);
            v29 = *(v24 + v12 + 24);
            v30 = *(v24 + v12 + 25);
            if (v12 != v19 || v25 >= v26 + 2)
            {
              v22 = v26[1];
              *v25 = *v26;
              v25[1] = v22;
            }

            v23 = v24 + v19;
            *v23 = v27;
            *(v23 + 16) = v28;
            *(v23 + 24) = v29;
            *(v23 + 25) = v30;
          }

          ++v21;
          v19 -= 32;
          v12 += 32;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_23:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_121;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_54E50(0, v9[2] + 1, 1, v9, &qword_70CC8, &qword_5C720);
      v9 = result;
    }

    v5 = v9[2];
    v44 = v9[3];
    v45 = v5 + 1;
    if (v5 >= v44 >> 1)
    {
      result = sub_54E50((v44 > 1), v5 + 1, 1, v9, &qword_70CC8, &qword_5C720);
      v9 = result;
    }

    v9[2] = v45;
    v46 = v9 + 4;
    v47 = &v9[2 * v5 + 4];
    *v47 = v10;
    v47[1] = v8;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = v9[4];
          v49 = v9[5];
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_60:
          if (v51)
          {
            goto LABEL_107;
          }

          v64 = &v9[2 * v45];
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_109;
          }

          v70 = &v46[2 * v5];
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_114;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v5 = v45 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v45 < 2)
        {
          goto LABEL_115;
        }

        v74 = &v9[2 * v45];
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_75:
        if (v69)
        {
          goto LABEL_111;
        }

        v77 = &v46[2 * v5];
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v45)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v85 = &v46[2 * v5 - 2];
        v86 = *v85;
        v87 = &v46[2 * v5];
        v88 = v87[1];
        sub_54B50((*a3 + 32 * *v85), (*a3 + 32 * *v87), (*a3 + 32 * v88), v99);
        if (v6)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_102;
        }

        if (v5 > v9[2])
        {
          goto LABEL_103;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = v9[2];
        if (v5 >= v89)
        {
          goto LABEL_104;
        }

        v45 = v89 - 1;
        result = memmove(&v46[2 * v5], v87 + 2, 16 * (v89 - 1 - v5));
        v9[2] = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = &v46[2 * v45];
      v53 = *(v52 - 8);
      v54 = *(v52 - 7);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_105;
      }

      v57 = *(v52 - 6);
      v56 = *(v52 - 5);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_106;
      }

      v59 = &v9[2 * v45];
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_108;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_110;
      }

      if (v63 >= v55)
      {
        v81 = &v46[2 * v5];
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_116;
        }

        if (v50 < v84)
        {
          v5 = v45 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v97;
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v8 + 25;
  v33 = v10 - v8;
LABEL_33:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = (v35 - 25);
    v37 = *(v35 - 25);
    if (*(v35 - 57) >= v37)
    {
LABEL_32:
      ++v8;
      v32 += 32;
      --v33;
      if (v8 != v7)
      {
        goto LABEL_33;
      }

      v8 = v7;
      goto LABEL_40;
    }

    if (!v31)
    {
      break;
    }

    v39 = *(v35 - 57);
    v38 = *(v35 - 41);
    *(v35 - 32) = *v35;
    v35 -= 32;
    v40 = *(v35 + 15);
    v41 = *(v35 + 23);
    v42 = *(v35 + 31);
    *v36 = v39;
    v36[1] = v38;
    *(v35 - 25) = v37;
    *(v35 - 17) = v40;
    *(v35 - 9) = v41;
    *(v35 - 1) = v42;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_54B50(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = v5 + 32;
      v23 = *(v21 - 4);
      v21 -= 32;
      if (*v20 < v23)
      {
        if (v22 != v6)
        {
          v25 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v25;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v22 != v15)
      {
        v24 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v24;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v26 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

char *sub_54D4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_710F0, &qword_5D9C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_54E50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_187C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t sub_54F4C(uint64_t result)
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

  v3 = sub_25CDC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = type metadata accessor for FontGlyphVariant(0);
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

uint64_t sub_55078(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for FontGlyphVariant(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = *v2;
  sub_570F8(&qword_71640, type metadata accessor for FontGlyphVariant, &unk_5C920);
  v9 = sub_59870();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1BBBC(*(v8 + 48) + v13 * v11, v7);
      sub_570F8(&qword_71310, type metadata accessor for FontGlyphVariant, &unk_5C960);
      v14 = sub_598A0();
      sub_1BC20(v7);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1BC20(a2);
    sub_1BBBC(*(v8 + 48) + v13 * v11, v21);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BBBC(a2, v7);
    v22 = *v15;
    sub_55E10(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_291DC(a2, v17);
    return 1;
  }
}

uint64_t sub_552B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_59BE0();

    if (v9)
    {

      type metadata accessor for CTFont(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
    }

    else
    {
      result = sub_59BD0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = sub_5553C(v7, result + 1);
        v20 = *(v19 + 16);
        if (*(v19 + 24) <= v20)
        {
          sub_55A8C(v20 + 1);
        }

        v21 = v8;
        sub_55D24(v21, v19);

        *v3 = v19;
        *a1 = v21;
        return 1;
      }
    }
  }

  else
  {
    sub_59ED0();
    type metadata accessor for CTFont(0);
    sub_570F8(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
    sub_589F0();
    v11 = sub_59F10();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);
        v16 = sub_589E0();

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v22 = *(*(v6 + 48) + 8 * v13);
      *a1 = v22;
      v23 = v22;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v3;
      v18 = a2;
      sub_56080(v18, v13, isUniquelyReferenced_nonNull_native);
      *v3 = v26;
      *a1 = v18;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_5553C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_187C(&qword_721A0, &qword_5EFE8);
    v2 = sub_59C30();
    v15 = v2;
    sub_59BC0();
    if (sub_59BF0())
    {
      type metadata accessor for CTFont(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_55A8C(v9 + 1);
        }

        v2 = v15;
        sub_59ED0();
        sub_570F8(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
        sub_589F0();
        result = sub_59F10();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_59BF0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_5577C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FontGlyphVariant(0);
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_187C(&qword_71668, &qword_5D2C0);
  result = sub_59C20();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_291DC(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5);
      sub_570F8(&qword_71640, type metadata accessor for FontGlyphVariant, &unk_5C920);
      result = sub_59870();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_291DC(v5, *(v8 + 48) + v16 * v20);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_55A8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_721A0, &qword_5EFE8);
  result = sub_59C20();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_59ED0();
      type metadata accessor for CTFont(0);
      sub_570F8(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
      sub_589F0();
      result = sub_59F10();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_55D24(uint64_t a1, uint64_t a2)
{
  sub_59ED0();
  type metadata accessor for CTFont(0);
  sub_570F8(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
  sub_589F0();
  sub_59F10();
  result = sub_59BB0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_55E10(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for FontGlyphVariant(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v24 = v8;
  v25 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_5577C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_56248();
      goto LABEL_12;
    }

    sub_5657C(v11 + 1);
  }

  v13 = *v3;
  sub_570F8(&qword_71640, type metadata accessor for FontGlyphVariant, &unk_5C920);
  v14 = sub_59870();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_1BBBC(*(v13 + 48) + v17 * a2, v10);
      sub_570F8(&qword_71310, type metadata accessor for FontGlyphVariant, &unk_5C960);
      v18 = sub_598A0();
      sub_1BC20(v10);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_291DC(a1, *(v19 + 48) + *(v24 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_59E90();
  __break(1u);
  return result;
}

void sub_56080(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_55A8C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_5642C();
      goto LABEL_12;
    }

    sub_5685C(v7 + 1);
  }

  v9 = *v3;
  sub_59ED0();
  type metadata accessor for CTFont(0);
  sub_570F8(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
  sub_589F0();
  v10 = sub_59F10();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);
      v14 = sub_589E0();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_59E90();
  __break(1u);
}

void *sub_56248()
{
  v1 = v0;
  v2 = type metadata accessor for FontGlyphVariant(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_187C(&qword_71668, &qword_5D2C0);
  v6 = *v0;
  v7 = sub_59C10();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1BBBC(*(v6 + 48) + v21, v5);
        result = sub_291DC(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

id sub_5642C()
{
  v1 = v0;
  sub_187C(&qword_721A0, &qword_5EFE8);
  v2 = *v0;
  v3 = sub_59C10();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_5657C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FontGlyphVariant(0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_187C(&qword_71668, &qword_5D2C0);
  result = sub_59C20();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_1BBBC(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
      sub_570F8(&qword_71640, type metadata accessor for FontGlyphVariant, &unk_5C920);
      result = sub_59870();
      v20 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_291DC(v5, *(v8 + 48) + v15 * v19);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_5685C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_187C(&qword_721A0, &qword_5EFE8);
  result = sub_59C20();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_59ED0();
      type metadata accessor for CTFont(0);
      sub_570F8(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
      v17 = v16;
      sub_589F0();
      result = sub_59F10();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_56AD4(uint64_t a1)
{
  v2 = type metadata accessor for FontGlyphVariant(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_570F8(&qword_71640, type metadata accessor for FontGlyphVariant, &unk_5C920);
  result = sub_59AA0();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1BBBC(v11, v6);
      sub_55078(v8, v6);
      sub_1BC20(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_56C3C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_56CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_56CC0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_56CF8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v12 = _swiftEmptyArrayStorage;
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = 5000000;
    v5[4] = &v12;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_57210;
    *(v6 + 24) = v5;
    v11[4] = sub_57200;
    v11[5] = v6;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_530E8;
    v11[3] = &unk_6FEB0;
    v7 = _Block_copy(v11);
    v8 = v4;

    [v8 enumerateAttribute:NSFontAttributeName inRange:v1 options:v2 usingBlock:{0, v7}];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v10 = v12;

      v11[0] = v10;
      sub_187C(&qword_721A8, &unk_5EFF0);
      sub_59A60();
    }
  }

  else
  {
    v11[0] = _swiftEmptyArrayStorage;
    sub_187C(&qword_721A8, &unk_5EFF0);
    sub_59A60();
  }
}

uint64_t sub_56F38(uint64_t a1)
{
  sub_57188(a1, &v3);
  if (!v4)
  {
    return sub_6678(&v3, &qword_712D8, qword_5C750);
  }

  sub_292DC(&v3, v5);
  sub_F978(v5, &v3);
  type metadata accessor for CTFont(0);
  swift_dynamicCast();
  sub_552B8(&v3, v2);

  return sub_EA60(v5);
}

unint64_t sub_56FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_72188;
  if (!qword_72188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72188);
  }

  return result;
}

unint64_t sub_5704C()
{
  result = qword_72198;
  if (!qword_72198)
  {
    sub_1F64(&qword_72190, qword_5EF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72198);
  }

  return result;
}

uint64_t sub_570F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_57188(uint64_t a1, uint64_t a2)
{
  v4 = sub_187C(&qword_712D8, qword_5C750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_57248()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id sub_572B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_591C0();
  __chkstk_darwin(v3 - 8);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "viewDidLoad");
  v4 = *&v1[OBJC_IVAR___TypographyPanel_model];
  v5 = objc_allocWithZone(type metadata accessor for TypographyPanelHostingController(0));

  v6 = sub_18738();
  sub_FCB4(v4, v6);
  v7 = sub_59020();
  v8 = OBJC_IVAR___TypographyPanel_childController;
  v9 = *&v1[OBJC_IVAR___TypographyPanel_childController];
  *&v1[OBJC_IVAR___TypographyPanel_childController] = v7;
  v10 = v7;

  sub_591B0();
  sub_59000();

  result = *&v1[v8];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = [result view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  result = *&v1[v8];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = [result willMoveToParentViewController:v1];
  if (!*&v1[v8])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v1 addChildViewController:?];
  v13 = *&v1[OBJC_IVAR___TypographyPanel_containerView];
  [v13 addSubview:v12];
  result = *&v1[v8];
  if (result)
  {
    [result didMoveToParentViewController:v1];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = objc_opt_self();
    sub_187C(&qword_721C8, &unk_5F020);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_5F010;
    v15 = [v12 topAnchor];
    v16 = [v13 safeAreaLayoutGuide];
    v17 = [v16 topAnchor];

    v18 = [v15 constraintEqualToAnchor:v17];
    *(v14 + 32) = v18;
    v19 = [v12 bottomAnchor];
    v20 = [v13 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v14 + 40) = v21;
    v22 = [v12 leadingAnchor];
    v23 = [v13 safeAreaLayoutGuide];
    v24 = [v23 leadingAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    *(v14 + 48) = v25;
    v26 = [v12 trailingAnchor];
    v27 = [v13 safeAreaLayoutGuide];
    v28 = [v27 trailingAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    *(v14 + 56) = v29;
    sub_5773C();
    isa = sub_599F0().super.isa;

    [v31 activateConstraints:isa];

    swift_beginAccess();
    *(v4 + 24) = &off_6FED8;
    return swift_unknownObjectWeakAssign();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TypographyPanelHostingController(uint64_t a1)
{
  result = qword_77B70;
  if (!qword_77B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_5773C()
{
  result = qword_721D0;
  if (!qword_721D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_721D0);
  }

  return result;
}

uint64_t sub_578D0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_57930(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___TypographyPanel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_579C8;
}

void sub_579C8(void **a1, char a2)
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

uint64_t sub_57A48(void *a1)
{
  sub_187C(&qword_70E58, qword_5D880);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5AB00;
  v4 = a1;
  v5 = [v4 description];
  v6 = sub_598E0();
  v8 = v7;

  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  sub_ED00(0xD000000000000013, 0x8000000000067090, 1, v3);

  v9 = *(v1 + OBJC_IVAR___TypographyPanel_font);
  *(v1 + OBJC_IVAR___TypographyPanel_font) = v4;

  sub_187C(&qword_71608, &qword_5F030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5AB00;
  *(v10 + 32) = sub_1DF6C(v4, 0, 0xE000000000000000);
  *(v10 + 40) = v11;
  *(v10 + 48) = v12;
  *(v10 + 56) = v13;
  sub_21DCC(v10);
}

id sub_57C14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_598B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_57C8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___TypographyPanel_model;
  type metadata accessor for TypographyPanelViewModel(0);
  *&v3[v8] = sub_2301C();
  v9 = OBJC_IVAR___TypographyPanel_containerView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR___TypographyPanel_childController] = 0;
  *&v4[OBJC_IVAR___TypographyPanel_font] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v10 = sub_598B0();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_57E00(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_57E44(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___TypographyPanel_model;
  type metadata accessor for TypographyPanelViewModel(0);
  *&v1[v5] = sub_2301C();
  v6 = OBJC_IVAR___TypographyPanel_containerView;
  *&v2[v6] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR___TypographyPanel_childController] = 0;
  *&v2[OBJC_IVAR___TypographyPanel_font] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_58034(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillAppear:", a3);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setBackgroundColor:0];

    sub_58CC0();
    sub_59010();
  }

  else
  {
    __break(1u);
  }
}

id sub_580D4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_5816C(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___TypographyPanel_font;
  v4 = *(v1 + OBJC_IVAR___TypographyPanel_font);
  if (v4)
  {
    v6 = v4;
    v7 = sub_524FC(a1);

    v4 = *(v2 + v3);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + v3) = v7;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v2 + v3);
    [v9 typographyPanelDidUpdateWithFont:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_582A8(int a1, int a2, int a3)
{
  if (qword_77B90 == -1)
  {
    v3 = dword_77B80 < a1;
    if (dword_77B80 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_58830();
    a2 = v6;
    a3 = v5;
    v3 = dword_77B80 < a1;
    if (dword_77B80 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_77B84 > a2)
  {
    return 1;
  }

  if (dword_77B84 < a2)
  {
    return 0;
  }

  return dword_77B88 >= a3;
}

uint64_t sub_58368(int a1, int a2, int a3, int a4)
{
  if (qword_77B98 == -1)
  {
    if (qword_77BA0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_58848();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_77BA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_77B90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_58830();
    a3 = v10;
    a4 = v9;
    v8 = dword_77B80 < v11;
    if (dword_77B80 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_77B84 > a3)
      {
        return 1;
      }

      if (dword_77B84 >= a3)
      {
        return dword_77B88 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_77B80 < a2;
  if (dword_77B80 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_584FC(uint64_t result)
{
  v1 = qword_77BA0;
  if (qword_77BA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_77BA0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_77B80, &dword_77B84, &dword_77B88);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  StringRange = _CTRunGetStringRange(run);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}