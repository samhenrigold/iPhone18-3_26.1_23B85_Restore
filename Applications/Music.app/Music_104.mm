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
  *(v3 + 56) = sub_100B45EBC();
  EnvironmentValues.subscript.getter();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return sub_100B4A678;
}

void sub_100B4A678(uint64_t **a1, char a2)
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
    sub_100B46188(v4, v5);
    EnvironmentValues.subscript.setter();
    sub_100B46144(*v3, v3[1]);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  free(v3);
}

unint64_t sub_100B4A774()
{
  result = qword_1011B2A48;
  if (!qword_1011B2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A48);
  }

  return result;
}

unint64_t sub_100B4A7C8()
{
  result = qword_1011B2A50;
  if (!qword_1011B2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A50);
  }

  return result;
}

uint64_t sub_100B4A81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B4A884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_100B4A8EC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100B475A0(a1, a2, a3, v8);
}

uint64_t sub_100B4A974()
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
      v8 = type metadata accessor for Artwork();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  sub_100B46138(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

unint64_t sub_100B4AB88()
{
  result = qword_1011B2A70;
  if (!qword_1011B2A70)
  {
    sub_1001109D0(&qword_1011B2A18, &qword_100F02840);
    sub_100B4AC40();
    sub_100020674(&qword_1011B2AA8, &qword_1011B2AB0, &qword_100F028F8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A70);
  }

  return result;
}

unint64_t sub_100B4AC40()
{
  result = qword_1011B2A78;
  if (!qword_1011B2A78)
  {
    sub_1001109D0(&qword_1011B2A10, &qword_100F02838);
    sub_100B4ACCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A78);
  }

  return result;
}

unint64_t sub_100B4ACCC()
{
  result = qword_1011B2A80;
  if (!qword_1011B2A80)
  {
    sub_1001109D0(&qword_1011B2A08, &qword_100F02830);
    sub_100B4AD58();
    sub_100B37410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A80);
  }

  return result;
}

unint64_t sub_100B4AD58()
{
  result = qword_1011B2A88;
  if (!qword_1011B2A88)
  {
    sub_1001109D0(&qword_1011B2A00, &qword_100F02828);
    sub_100B4AE10();
    sub_100020674(&qword_1011B2AA0, &qword_1011B2A58, &qword_100F028E0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A88);
  }

  return result;
}

unint64_t sub_100B4AE10()
{
  result = qword_1011B2A90;
  if (!qword_1011B2A90)
  {
    sub_1001109D0(&qword_1011B29F8, &qword_100F02820);
    sub_100B4AF4C(&qword_1011B2A98, type metadata accessor for NoticeView.Content, &unk_100F02A4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2A90);
  }

  return result;
}

void sub_100B4AECC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100B4777C(a1, a2, v6);
}

uint64_t sub_100B4AF4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100B4AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

unint64_t sub_100B4B064()
{
  result = qword_1011B2AE0;
  if (!qword_1011B2AE0)
  {
    sub_1001109D0(&qword_1011B2A40, &qword_100F02868);
    sub_100B4B11C();
    sub_100020674(&qword_1011B2B00, &qword_1011B2AD8, &unk_100F02940, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2AE0);
  }

  return result;
}

unint64_t sub_100B4B11C()
{
  result = qword_1011B2AE8;
  if (!qword_1011B2AE8)
  {
    sub_1001109D0(&qword_1011B2A38, &qword_100F02860);
    sub_100B4B1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2AE8);
  }

  return result;
}

unint64_t sub_100B4B1A8()
{
  result = qword_1011B2AF0;
  if (!qword_1011B2AF0)
  {
    sub_1001109D0(&qword_1011B2A30, &qword_100F02858);
    sub_1001109D0(&qword_1011B2A20, &qword_100F02848);
    type metadata accessor for Notice(255);
    sub_1001109D0(&qword_1011B2A18, &qword_100F02840);
    sub_1001109D0(&qword_1011B29F0, &qword_100F02818);
    sub_100B4AB88();
    sub_100020674(&qword_1011B2AB8, &qword_1011B29F0, &qword_100F02818, &protocol conformance descriptor for SequenceGesture<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_100B4AF4C(&qword_1011B2AC0, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011B2AF8, &qword_1011B2AC8, &qword_100F02900, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2AF0);
  }

  return result;
}

void sub_100B4B3CC(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    sub_100B4B504(319);
    if (v2 <= 0x3F)
    {
      sub_100B4B568(319, &qword_1011B2B88, &type metadata for Double, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100B4B568(319, &qword_1011B2B90, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v4 <= 0x3F)
        {
          sub_100B4B568(319, &unk_1011B2B98, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100B4B504(uint64_t a1)
{
  if (!qword_1011B2B78)
  {
    sub_1001109D0(&qword_1011B2B80, &qword_100F029C0);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1011B2B78);
    }
  }
}

void sub_100B4B568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100B4B5F0(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    sub_100B4B73C(319, &qword_1011B2C60, sub_100B4A774, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_100B4B73C(319, &qword_1011B2C68, sub_100B4A7C8, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        sub_100B4B79C(319, &qword_1011B4260, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          sub_100B4B79C(319, &qword_1011B2C70, &type metadata accessor for LayoutDirection);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100B4B73C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for ScaledMetric();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100B4B79C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100B4B81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  sub_10010FC20(&qword_1011B2D90, &qword_100F02C08);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for Notice(0);
  sub_1000089F8(a1 + *(v8 + 20), v7, &qword_1011B2D90, &qword_100F02C08);
  v9 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1000095E8(v7, &qword_1011B2D90, &qword_100F02C08);
    v10 = 0;
  }

  else
  {
    v10 = swift_getEnumCaseMultiPayload() == 1;
    sub_100B4C180(v7, type metadata accessor for Notice.Thumbnail);
  }

  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(a2, v11);
  if (v13 == enum case for DynamicTypeSize.xSmall(_:) || v13 == enum case for DynamicTypeSize.small(_:))
  {
    result = sub_100B4C180(a1, type metadata accessor for Notice);
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
      sub_100030444(*v22, v24);
      result = sub_100B4C180(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = sub_100020438(v23, v24);
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

    result = sub_100B4C180(a1, type metadata accessor for Notice);
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

unint64_t sub_100B4BBCC()
{
  result = qword_1011B2D18;
  if (!qword_1011B2D18)
  {
    sub_1001109D0(&qword_1011B2D10, &qword_100F02B68);
    sub_100B4BC84();
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48, &qword_100F03C60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2D18);
  }

  return result;
}

unint64_t sub_100B4BC84()
{
  result = qword_1011B2D20;
  if (!qword_1011B2D20)
  {
    sub_1001109D0(&qword_1011B2D28, &unk_100F02B70);
    sub_100B4BD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2D20);
  }

  return result;
}

unint64_t sub_100B4BD08()
{
  result = qword_1011B2D30;
  if (!qword_1011B2D30)
  {
    sub_1001109D0(&qword_1011B2D38, &unk_100F056F0);
    sub_100B4BD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2D30);
  }

  return result;
}

unint64_t sub_100B4BD94()
{
  result = qword_1011B4BA0;
  if (!qword_1011B4BA0)
  {
    sub_1001109D0(&qword_1011B2D40, &unk_100F02B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4BA0);
  }

  return result;
}

double sub_100B4BE10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_10011895C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_10069B320(a1, a2, a3, a4);
  }

  return result;
}

unint64_t sub_100B4BE64()
{
  result = qword_1011B2D98;
  if (!qword_1011B2D98)
  {
    sub_1001109D0(&qword_1011B2D68, &qword_100F02BE0);
    sub_100B4AF4C(&qword_1011B2DA0, &type metadata accessor for CircularProgressView, &protocol conformance descriptor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2D98);
  }

  return result;
}

unint64_t sub_100B4BF20()
{
  result = qword_1011B2DA8;
  if (!qword_1011B2DA8)
  {
    sub_1001109D0(&qword_1011B2D88, &qword_100F02C00);
    sub_100B4BFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2DA8);
  }

  return result;
}

unint64_t sub_100B4BFAC()
{
  result = qword_1011B2DB0;
  if (!qword_1011B2DB0)
  {
    sub_1001109D0(&qword_1011B2D70, &qword_100F02BE8);
    sub_100B4C038();
    sub_100B37464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2DB0);
  }

  return result;
}

unint64_t sub_100B4C038()
{
  result = qword_1011B2DB8;
  if (!qword_1011B2DB8)
  {
    sub_1001109D0(&qword_1011B2DC0, &unk_100F02C10);
    sub_100B4AF4C(&qword_1011B2DC8, &type metadata accessor for ArtworkImage, &protocol conformance descriptor for ArtworkImage);
    sub_100B37410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2DB8);
  }

  return result;
}

unint64_t sub_100B4C0F4()
{
  result = qword_1011B2DD0;
  if (!qword_1011B2DD0)
  {
    sub_1001109D0(&qword_1011B2D60, &qword_100F02BD8);
    sub_100B4BE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2DD0);
  }

  return result;
}

uint64_t sub_100B4C180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B4C21C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NoticeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100B4C2B0()
{
  result = qword_1011B2DE0;
  if (!qword_1011B2DE0)
  {
    sub_1001109D0(&qword_1011B2CC0, &qword_100F02AE8);
    sub_100020674(&qword_1011B2DE8, &qword_1011B2CB0, &qword_100F02AD8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2DE0);
  }

  return result;
}

uint64_t Optional<A>.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for Font.TextStyle.body(_:);
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100B4C3F4(uint64_t a1, uint64_t a2)
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
  sub_10001C8B8(a3);
  return v6(a1, a2);
}

uint64_t MusicUIContentView.configuration.setter(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v7 = &v10[-v6 - 8];
  sub_100008FE4(a1, v10);
  sub_10010FC20(&qword_1011B1140, "p.\n");
  swift_dynamicCast();
  (*(a3 + 48))(v7, a2, a3);
  return sub_10000959C(a1);
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
  return sub_100B4C7DC;
}

void sub_100B4C7DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11];
    v4 = v2[10];
    sub_100008FE4(*a1, (v2 + 5));
    MusicUIContentView.configuration.setter(v2 + 5, v4, v3);
    sub_10000959C(v2);
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
        v5 = type metadata accessor for Playlist.Variant();
        v12 = *(v5 - 8);
        (*(v12 + 104))(a2, v4, v5);
        v6 = *(v12 + 56);
        v7 = a2;
        v8 = 0;
        v9 = v5;
        goto LABEL_14;
    }
  }

  v11 = type metadata accessor for Playlist.Variant();
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
  v2 = type metadata accessor for Playlist.Variant();
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
  v6 = type metadata accessor for Artwork();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for ArtworkImage.ViewModel(0);
  return sub_10003D17C(a2, a3 + *(v7 + 20), &qword_1011B4720, &qword_100F02D00);
}

uint64_t sub_100B4CC9C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
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

  return sub_1000060E4(v5, a3);
}

uint64_t sub_100B4CD84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v9 = v5;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(a1, a2);
  __chkstk_darwin();
  v16 = &v21 - v15;
  sub_1000089F8(v9, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100B4CF84@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
  __chkstk_darwin();
  v10 = &v14 - v9;
  sub_1000089F8(v3, &v14 - v9, &qword_1011B0878, &qword_100EFDE30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003D17C(v10, a1, &qword_1011B2E10, &unk_100F02D80);
  }

  v12 = static os_log_type_t.fault.getter();
  v13 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t ArtworkImage.ViewModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Artwork();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArtworkImage.ViewModel.init(optionalArtwork:cropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1, v6) == 1)
  {
    sub_1000095E8(a2, &qword_1011B4720, &qword_100F02D00);
    sub_1000095E8(a1, &unk_1011B55F0, &unk_100EFFDC0);
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
    sub_10003D17C(a2, a3 + *(v13 + 20), &qword_1011B4720, &qword_100F02D00);
    v9 = *(*(v13 - 8) + 56);
    v11 = a3;
    v12 = 0;
    v10 = v13;
  }

  return v9(v11, v12, 1, v10);
}

uint64_t ArtworkImage.ViewModel.init(artworkCatalog:cropStyle:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    Artwork.init(_:)();
    (*(v6 + 32))(a3, v8, v5);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_10003D17C(a2, a3 + *(v10 + 20), &qword_1011B4720, &qword_100F02D00);
    return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  else
  {
    sub_1000095E8(a2, &qword_1011B4720, &qword_100F02D00);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

uint64_t ArtworkImage.ViewModel.calculatedAspectRatio.getter()
{
  if (Artwork.maximumWidth.getter() < 1 || Artwork.maximumHeight.getter() < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v0 = Artwork.maximumWidth.getter();
    *&result = v0 / Artwork.maximumHeight.getter();
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
  sub_10003D17C(a1, a9, &qword_1011B5930, &qword_100EFDE70);
  v17 = type metadata accessor for ArtworkImage.Info(0);
  sub_100B59584(a2, a9 + v17[5], type metadata accessor for ArtworkImage.Placeholder);
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

uint64_t sub_100B4D9C4(__int128 *a1, __int128 *a2)
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
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  if (a3)
  {
    sub_1000089F8(a1, &v10 - v8, &unk_1011B55F0, &unk_100EFFDC0);
    if (a5)
    {
      ArtworkImage.init(_:)();
    }

    else
    {
      ArtworkImage.init(_:height:)();
    }
  }

  else
  {
    sub_1000089F8(a1, &v10 - v8, &unk_1011B55F0, &unk_100EFFDC0);
    if (a5)
    {
      ArtworkImage.init(_:width:)();
    }

    else
    {
      ArtworkImage.init(_:width:height:)();
    }
  }

  return sub_1000095E8(a1, &unk_1011B55F0, &unk_100EFFDC0);
}

double static ArtworkImage.with(_:placeholder:size:reusePolicy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  sub_100B59090(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_100B59584(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ArtworkImage.Placeholder);
  v14 = (v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = a3[1];
  *v14 = *a3;
  v14[1] = v15;
  *(v14 + 26) = *(a3 + 26);
  sub_100B4E1A4(a1, sub_100B58F00, v13, a3, a4, a5);

  return result;
}

uint64_t sub_100B4DD3C(uint64_t a1)
{
  v3 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  sub_10010FC20(&qword_1011B3548, &qword_100F03C70);
  __chkstk_darwin();
  v6 = (v29 - v5);
  v7 = sub_10010FC20(&unk_1011B4760, &qword_100F03138);
  __chkstk_darwin();
  v9 = (v29 - v8);
  if (*(a1 + 8) & 1) != 0 || (*(a1 + 24))
  {
    sub_100B59090(v1, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkImage.Placeholder);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    sub_100B59584(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ArtworkImage.Placeholder);
    v12 = (v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
    v13 = *(a1 + 16);
    *v12 = *a1;
    v12[1] = v13;
    *(v12 + 26) = *(a1 + 26);
    *v6 = sub_100B5B7C0;
    v6[1] = v11;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011B33D0, &qword_100F05150);
    sub_100B5A134();
    sub_100020674(&unk_1011B4790, &qword_1011B33D0, &qword_100F05150, &protocol conformance descriptor for GeometryReader<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 16);
    v17 = sub_100B4FC38();
    v19 = v18;
    sub_100B4FC38();
    v21 = v20;

    sub_100B4FC38();
    v23 = v22;

    v24 = type metadata accessor for ArtworkImage.Placeholder.View(0);
    v25 = *(v24 + 32);
    *(v9 + v25) = swift_getKeyPath();
    sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
    swift_storeEnumTagMultiPayload();
    v26 = *(v24 + 36);
    *(v9 + v26) = swift_getKeyPath();
    sub_10010FC20(&unk_1011B0880, &unk_100F02D70);
    swift_storeEnumTagMultiPayload();
    *v9 = v17;
    v9[1] = v19;
    v9[2] = v21;
    v9[3] = v15;
    v9[4] = v16;
    v9[5] = v23;
    *(v9 + *(sub_10010FC20(&unk_1011B4770, &unk_100F05140) + 36)) = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v27 = (v9 + *(v7 + 36));
    v28 = v29[1];
    *v27 = v29[0];
    v27[1] = v28;
    v27[2] = v29[2];
    sub_1000089F8(v9, v6, &unk_1011B4760, &qword_100F03138);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_1011B33D0, &qword_100F05150);
    sub_100B5A134();
    sub_100020674(&unk_1011B4790, &qword_1011B33D0, &qword_100F05150, &protocol conformance descriptor for GeometryReader<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v9, &unk_1011B4760, &qword_100F03138);
  }
}

uint64_t sub_100B4E1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v57 = &v45 - v8;
  v9 = type metadata accessor for Artwork.CropStyle();
  v58 = *(v9 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v18 = type metadata accessor for ArtworkImage();
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
  sub_1000089F8(a1, v13, &qword_1011B5930, &qword_100EFDE70);
  v25 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v25 - 8) + 48);
  v26 = v46(v13, 1, v25);
  v55 = v18;
  if (v26 == 1)
  {
    sub_1000095E8(v13, &qword_1011B5930, &qword_100EFDE70);
    v27 = type metadata accessor for Artwork();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = type metadata accessor for Artwork();
    v29 = *(v28 - 8);
    v45 = v9;
    v30 = v29;
    (*(v29 + 16))(v17, v13, v28);
    sub_100B59030(v13, type metadata accessor for ArtworkImage.ViewModel);
    (*(v30 + 56))(v17, 0, 1, v28);
    v9 = v45;
  }

  v31 = *(a4 + 8);
  v32 = *(a4 + 24);
  sub_1000089F8(v17, v15, &unk_1011B55F0, &unk_100EFFDC0);
  if (v31)
  {
    if (v32)
    {
      ArtworkImage.init(_:)();
    }

    else
    {
      ArtworkImage.init(_:height:)();
    }
  }

  else if (v32)
  {
    ArtworkImage.init(_:width:)();
  }

  else
  {
    ArtworkImage.init(_:width:height:)();
  }

  v33 = v55;
  sub_1000095E8(v17, &unk_1011B55F0, &unk_100EFFDC0);
  (*(v61 + 32))(v60, v23, v33);
  ArtworkImage.artworkReusablePolicy(_:)();
  v34 = v47;
  sub_1000089F8(v52, v47, &qword_1011B5930, &qword_100EFDE70);
  v35 = v46(v34, 1, v25);
  v36 = v56;
  if (v35 == 1)
  {
    sub_1000095E8(v34, &qword_1011B5930, &qword_100EFDE70);
    v38 = v57;
    v37 = v58;
    (*(v58 + 56))(v57, 1, 1, v9);
  }

  else
  {
    v38 = v57;
    sub_1000089F8(v34 + *(v25 + 20), v57, &qword_1011B4720, &qword_100F02D00);
    sub_100B59030(v34, type metadata accessor for ArtworkImage.ViewModel);
    v37 = v58;
    if ((*(v58 + 48))(v38, 1, v9) != 1)
    {
      (*(v37 + 32))(v36, v38, v9);
      goto LABEL_19;
    }
  }

  if (qword_1011B0618 != -1)
  {
    swift_once();
  }

  v39 = sub_1000060E4(v9, static Artwork.CropStyle.fallback);
  (*(v37 + 16))(v36, v39, v9);
  if ((*(v37 + 48))(v38, 1, v9) != 1)
  {
    sub_1000095E8(v38, &qword_1011B4720, &qword_100F02D00);
  }

LABEL_19:
  v40 = v53;
  v41 = v59;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v37 + 8))(v36, v9);
  v42 = *(v61 + 8);
  v42(v41, v33);
  v43 = v54;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v42(v40, v33);
  sub_10010FC20(&qword_1011B33A8, &qword_100F03130);
  sub_100B5A07C();
  ArtworkImage.artworkPlaceholder<A>(_:)();
  v42(v43, v33);
  return (v42)(v60, v33);
}

uint64_t sub_100B4E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v57 = &v45 - v8;
  v9 = type metadata accessor for Artwork.CropStyle();
  v58 = *(v9 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v45 - v12;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  v18 = type metadata accessor for ArtworkImage();
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
  sub_1000089F8(a1, v13, &qword_1011B5930, &qword_100EFDE70);
  v25 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v25 - 8) + 48);
  v26 = v46(v13, 1, v25);
  v55 = v18;
  if (v26 == 1)
  {
    sub_1000095E8(v13, &qword_1011B5930, &qword_100EFDE70);
    v27 = type metadata accessor for Artwork();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = type metadata accessor for Artwork();
    v29 = *(v28 - 8);
    v45 = v9;
    v30 = v29;
    (*(v29 + 16))(v17, v13, v28);
    sub_100B59030(v13, type metadata accessor for ArtworkImage.ViewModel);
    (*(v30 + 56))(v17, 0, 1, v28);
    v9 = v45;
  }

  v31 = *(a4 + 8);
  v32 = *(a4 + 24);
  sub_1000089F8(v17, v15, &unk_1011B55F0, &unk_100EFFDC0);
  if (v31)
  {
    if (v32)
    {
      ArtworkImage.init(_:)();
    }

    else
    {
      ArtworkImage.init(_:height:)();
    }
  }

  else if (v32)
  {
    ArtworkImage.init(_:width:)();
  }

  else
  {
    ArtworkImage.init(_:width:height:)();
  }

  v33 = v55;
  sub_1000095E8(v17, &unk_1011B55F0, &unk_100EFFDC0);
  (*(v61 + 32))(v60, v23, v33);
  ArtworkImage.artworkReusablePolicy(_:)();
  v34 = v47;
  sub_1000089F8(v52, v47, &qword_1011B5930, &qword_100EFDE70);
  v35 = v46(v34, 1, v25);
  v36 = v56;
  if (v35 == 1)
  {
    sub_1000095E8(v34, &qword_1011B5930, &qword_100EFDE70);
    v38 = v57;
    v37 = v58;
    (*(v58 + 56))(v57, 1, 1, v9);
  }

  else
  {
    v38 = v57;
    sub_1000089F8(v34 + *(v25 + 20), v57, &qword_1011B4720, &qword_100F02D00);
    sub_100B59030(v34, type metadata accessor for ArtworkImage.ViewModel);
    v37 = v58;
    if ((*(v58 + 48))(v38, 1, v9) != 1)
    {
      (*(v37 + 32))(v36, v38, v9);
      goto LABEL_19;
    }
  }

  if (qword_1011B0618 != -1)
  {
    swift_once();
  }

  v39 = sub_1000060E4(v9, static Artwork.CropStyle.fallback);
  (*(v37 + 16))(v36, v39, v9);
  if ((*(v37 + 48))(v38, 1, v9) != 1)
  {
    sub_1000095E8(v38, &qword_1011B4720, &qword_100F02D00);
  }

LABEL_19:
  v40 = v53;
  v41 = v59;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v37 + 8))(v36, v9);
  v42 = *(v61 + 8);
  v42(v41, v33);
  v43 = v54;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v42(v40, v33);
  sub_100B5A2A8();
  ArtworkImage.artworkPlaceholder<A>(_:)();
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
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v70 = v59 - v11;
  v12 = type metadata accessor for Artwork.CropStyle();
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
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v61 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v59 - v19;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v59 - v23;
  v68 = type metadata accessor for ArtworkImage();
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
  sub_1000089F8(a1, v20, &qword_1011B5930, &qword_100EFDE70);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v35 = *(v34 - 8);
  v60 = *(v35 + 48);
  v59[1] = v35 + 48;
  v36 = v60(v20, 1, v34);
  v69 = v14;
  if (v36 == 1)
  {
    sub_1000095E8(v20, &qword_1011B5930, &qword_100EFDE70);
    v37 = type metadata accessor for Artwork();
    (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  }

  else
  {
    v38 = type metadata accessor for Artwork();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v24, v20, v38);
    sub_100B59030(v20, type metadata accessor for ArtworkImage.ViewModel);
    (*(v39 + 56))(v24, 0, 1, v38);
  }

  v40 = *(v80 + 8);
  v41 = *(v80 + 24);
  sub_1000089F8(v24, v22, &unk_1011B55F0, &unk_100EFFDC0);
  if (v40)
  {
    if (v41)
    {
      ArtworkImage.init(_:)();
    }

    else
    {
      ArtworkImage.init(_:height:)();
    }
  }

  else if (v41)
  {
    ArtworkImage.init(_:width:)();
  }

  else
  {
    ArtworkImage.init(_:width:height:)();
  }

  v42 = v69;
  sub_1000095E8(v24, &unk_1011B55F0, &unk_100EFFDC0);
  v43 = v68;
  (*(v25 + 32))(v33, v31, v68);
  ArtworkImage.artworkReusablePolicy(_:)();
  v44 = v61;
  sub_1000089F8(v62, v61, &qword_1011B5930, &qword_100EFDE70);
  if (v60(v44, 1, v34) == 1)
  {
    sub_1000095E8(v44, &qword_1011B5930, &qword_100EFDE70);
    v45 = v70;
    v46 = v71;
    v47 = v72;
    (*(v71 + 56))(v70, 1, 1, v72);
  }

  else
  {
    v45 = v70;
    sub_1000089F8(v44 + *(v34 + 20), v70, &qword_1011B4720, &qword_100F02D00);
    sub_100B59030(v44, type metadata accessor for ArtworkImage.ViewModel);
    v46 = v71;
    v47 = v72;
    if ((*(v71 + 48))(v45, 1, v72) != 1)
    {
      (*(v46 + 32))(v42, v45, v47);
      goto LABEL_19;
    }
  }

  if (qword_1011B0618 != -1)
  {
    swift_once();
  }

  v48 = sub_1000060E4(v47, static Artwork.CropStyle.fallback);
  (*(v46 + 16))(v42, v48, v47);
  if ((*(v46 + 48))(v45, 1, v47) != 1)
  {
    sub_1000095E8(v45, &qword_1011B4720, &qword_100F02D00);
  }

LABEL_19:
  v49 = v63;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v46 + 8))(v42, v47);
  v50 = *(v25 + 8);
  v50(v27, v43);
  v51 = v64;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v50(v49, v43);
  v52 = v73;
  ArtworkImage.artworkPlaceholder<A>(_:)();
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

  sub_100B4E97C(a1, sub_100B58F90, v12, a4, a5, a6);

  return result;
}

double sub_100B4FB14@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t ArtworkImage.Placeholder.view(availableSize:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>)
{
  v4 = a2.n128_u64[0];
  v6 = sub_100B4FC38();
  v8 = v7;
  sub_100B4FC38();
  v10 = v9;

  sub_100B4FC38();
  v12 = v11;

  v13 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v14 = *(v13 + 32);
  *(a1 + v14) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 36);
  *(a1 + v15) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0880, &unk_100F02D70);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v4;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = sub_10010FC20(&unk_1011B4770, &unk_100F05140);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100B4FC38()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v23 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B59090(v1, v13, type metadata accessor for ArtworkImage.Placeholder);
  v14 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
  v15 = (*(*(v14 - 8) + 48))(v13, 11, v14);
  if (v15 > 5)
  {
    if (v15 > 8)
    {
      if (v15 == 9)
      {
        v16 = 0x6F69646172;
        static Font.Weight.regular.getter();
        return v16;
      }

      if (v15 != 10)
      {
        static Font.Weight.light.getter();
        return 0xD000000000000013;
      }

      v16 = 0x73726174697567;
      goto LABEL_5;
    }

    if (v15 == 6)
    {
      v16 = 30324;
      static Font.Weight.regular.getter();
      return v16;
    }

    if (v15 == 7)
    {
      static Font.Weight.regular.getter();
      return 0x696D2E636973756DLL;
    }

    v16 = 0x662E6E6F73726570;
LABEL_24:
    static Font.Weight.regular.getter();
    return v16;
  }

  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v16 = 0xD000000000000011;
      static Font.Weight.light.getter();
      return v16;
    }

    if (v15 == 4)
    {
      v16 = 1937075312;
      static Font.Weight.light.getter();
      return v16;
    }

    v16 = 0x6F6E2E636973756DLL;
    goto LABEL_24;
  }

  if (v15)
  {
    v16 = 0x636973756DLL;
LABEL_5:
    static Font.Weight.light.getter();
    return v16;
  }

  sub_10003D17C(v13, v11, &qword_1011B11C8, &qword_100EFFAD0);
  sub_1000089F8(v11, v9, &qword_1011B11C8, &qword_100EFFAD0);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) == 1)
  {
    (*(v3 + 104))(v7, enum case for Playlist.Variant.regular(_:), v2);
    if (v17(v9, 1, v2) != 1)
    {
      sub_1000095E8(v9, &qword_1011B11C8, &qword_100EFFAD0);
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

  static Font.Weight.light.getter();
  sub_1000095E8(v11, &qword_1011B11C8, &qword_100EFFAD0);
  return v16;
}

uint64_t ArtworkImage.Placeholder.View.init(name:weight:availableSize:scaleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v10 = a4.n128_u64[0];
  v14 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v15 = *(v14 + 32);
  *(a3 + v15) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
  swift_storeEnumTagMultiPayload();
  v16 = *(v14 + 36);
  *(a3 + v16) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0880, &unk_100F02D70);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v10;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  return result;
}

double sub_100B50314@<D0>(uint64_t *a2@<X8>)
{
  GeometryProxy.size.getter();
  v5 = v4;
  v7 = v6;
  v8 = sub_100B4FC38();
  v10 = v9;
  sub_100B4FC38();
  v12 = v11;

  sub_100B4FC38();
  v14 = v13;

  v15 = type metadata accessor for ArtworkImage.Placeholder.View(0);
  v16 = *(v15 + 32);
  *(a2 + v16) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
  swift_storeEnumTagMultiPayload();
  v17 = *(v15 + 36);
  *(a2 + v17) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0880, &unk_100F02D70);
  swift_storeEnumTagMultiPayload();
  *a2 = v8;
  a2[1] = v10;
  a2[2] = v12;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v14;
  *(a2 + *(sub_10010FC20(&unk_1011B4770, &unk_100F05140) + 36)) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = (a2 + *(sub_10010FC20(&unk_1011B4760, &qword_100F03138) + 36));
  *v18 = v20;
  v18[1] = v21;
  result = *&v22;
  v18[2] = v22;
  return result;
}

void *EnvironmentValues.placeholderStyle.getter()
{
  sub_100B58FBC();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_100B50530(uint64_t a1)
{
  sub_10010FC20(&qword_1011B2E10, &unk_100F02D80);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1000089F8(a1, &v7 - v4, &qword_1011B2E10, &unk_100F02D80);
  sub_1000089F8(v5, v3, &qword_1011B2E10, &unk_100F02D80);
  sub_100B58FBC();
  EnvironmentValues.subscript.setter();
  return sub_1000095E8(v5, &qword_1011B2E10, &unk_100F02D80);
}

uint64_t EnvironmentValues.placeholderStyle.setter(uint64_t a1)
{
  sub_10010FC20(&qword_1011B2E10, &unk_100F02D80);
  __chkstk_darwin();
  sub_1000089F8(a1, &v4 - v2, &qword_1011B2E10, &unk_100F02D80);
  sub_100B58FBC();
  EnvironmentValues.subscript.setter();
  return sub_1000095E8(a1, &qword_1011B2E10, &unk_100F02D80);
}

uint64_t ArtworkImage.Placeholder.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorSchemeContrast();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B2E10, &unk_100F02D80);
  __chkstk_darwin();
  v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = (v33 - v9);
  v33[3] = type metadata accessor for ArtworkImage.Placeholder.View(0);
  sub_100B4CF84(v10);
  v11 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) == 1)
  {
    sub_1000095E8(v10, &qword_1011B2E10, &unk_100F02D80);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  else
  {
    sub_1000089F8((v10 + 5), &v36, &qword_1011B4A50, &unk_100F055F0);
    sub_100B59030(v10, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    if (*(&v37 + 1))
    {
      sub_100059A8C(&v36, v39);
      v33[2] = v41;
      sub_10000954C(v39, v40);
      v33[1] = v33;
      v13 = __chkstk_darwin();
      (*(v15 + 16))(v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
      v16 = AnyShapeStyle.init<A>(_:)();
      sub_10000959C(v39);
      goto LABEL_6;
    }
  }

  sub_1000095E8(&v36, &qword_1011B4A50, &unk_100F055F0);
  sub_100B4CD84(&unk_1011B0880, &unk_100F02D70, &type metadata accessor for ColorSchemeContrast, v6);
  v17 = [objc_opt_self() secondarySystemFillColor];
  v18 = Color.init(_:)();
  (*(v34 + 8))(v6, v35);
  v39[0] = v18;
  v16 = AnyShapeStyle.init<A>(_:)();
LABEL_6:
  sub_100B4CF84(v8);
  if (v12(v8, 1, v11) == 1)
  {
    sub_1000095E8(v8, &qword_1011B2E10, &unk_100F02D80);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
LABEL_10:
    sub_1000095E8(&v36, &qword_1011B4A50, &unk_100F055F0);
    sub_100B4CD84(&unk_1011B0880, &unk_100F02D70, &type metadata accessor for ColorSchemeContrast, v6);
    v23 = [objc_opt_self() tertiaryLabelColor];
    v24 = Color.init(_:)();
    (*(v34 + 8))(v6, v35);
    v39[0] = v24;
    v22 = AnyShapeStyle.init<A>(_:)();
    goto LABEL_11;
  }

  sub_1000089F8(v8, &v36, &qword_1011B4A50, &unk_100F055F0);
  sub_100B59030(v8, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if (!*(&v37 + 1))
  {
    goto LABEL_10;
  }

  sub_100059A8C(&v36, v39);
  sub_10000954C(v39, v40);
  v19 = __chkstk_darwin();
  (*(v21 + 16))(v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = AnyShapeStyle.init<A>(_:)();
  sub_10000959C(v39);
LABEL_11:
  v25 = static Color.clear.getter();
  v26 = static Edge.Set.all.getter();

  v27 = static Alignment.center.getter();
  v29 = v28;
  v30 = a1 + *(sub_10010FC20(&qword_1011B2E18, &qword_100F02D90) + 36);
  sub_100B50D48(v2, v22, v30);

  result = sub_10010FC20(&qword_1011B2E20, &qword_100F02D98);
  v32 = (v30 + *(result + 36));
  *v32 = v27;
  v32[1] = v29;
  *a1 = v25;
  *(a1 + 8) = v16;
  *(a1 + 16) = v26;
  return result;
}

uint64_t sub_100B50D48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  sub_10010FC20(&qword_1011B2E10, &unk_100F02D80);
  __chkstk_darwin();
  v39 = (v36 - v6);
  sub_10010FC20(&qword_1011B2E28, &qword_100F02DA0);
  __chkstk_darwin();
  v43 = v36 - v7;
  v8 = type metadata accessor for BlendMode();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin();
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B4970, &qword_100F03C00);
  __chkstk_darwin();
  v11 = v36 - v10;
  v12 = sub_10010FC20(&qword_1011B3500, &qword_100F03C08);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  __chkstk_darwin();
  v15 = v36 - v14;
  sub_10010FC20(&qword_1011B3508, &qword_100F03C10);
  __chkstk_darwin();
  v17 = v36 - v16;
  v36[1] = a1;

  v18 = Image.init(_internalSystemName:)();
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);

  v20 = static Font.system(size:weight:design:)();
  sub_1000095E8(v11, &qword_1011B4970, &qword_100F03C00);
  KeyPath = swift_getKeyPath();
  v45 = v18;
  v46 = a2;
  v47 = KeyPath;
  v48 = v20;
  v22 = sub_10010FC20(&qword_1011B3510, &qword_100F03C48);
  v23 = sub_100B5B4D4();
  View.fontWeight(_:)();

  v45 = v22;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v37;
  View.accessibility(hidden:)();
  (*(v38 + 8))(v15, v24);
  type metadata accessor for ArtworkImage.Placeholder.View(0);
  v25 = v39;
  sub_100B4CF84(v39);
  v26 = v25;
  v27 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    sub_1000095E8(v26, &qword_1011B2E10, &unk_100F02D80);
    v29 = v40;
    v28 = v41;
    v30 = v43;
    (*(v40 + 56))(v43, 1, 1, v41);
  }

  else
  {
    v31 = v26 + *(v27 + 24);
    v30 = v43;
    sub_1000089F8(v31, v43, &qword_1011B2E28, &qword_100F02DA0);
    sub_100B59030(v26, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v29 = v40;
    v28 = v41;
    if ((*(v40 + 48))(v30, 1, v41) != 1)
    {
      v32 = v42;
      (*(v29 + 32))(v42, v30, v28);
      goto LABEL_7;
    }
  }

  v32 = v42;
  (*(v29 + 104))(v42, enum case for BlendMode.normal(_:), v28);
  if ((*(v29 + 48))(v30, 1, v28) != 1)
  {
    sub_1000095E8(v30, &qword_1011B2E28, &qword_100F02DA0);
  }

LABEL_7:
  v33 = sub_10010FC20(&qword_1011B3540, &qword_100F03C68);
  v34 = v44;
  (*(v29 + 32))(v44 + *(v33 + 36), v32, v28);
  return sub_1000C4DF4(v17, v34);
}

uint64_t ArtworkImage.Placeholder.View.Style.init(foreground:background:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a4 = 0u;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *(a4 + 3) = 0u;
  *(a4 + 4) = 0u;
  v9 = *(v8 + 24);
  v10 = type metadata accessor for BlendMode();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  sub_10006B010(a1, a4, &qword_1011B4A50, &unk_100F055F0);
  sub_10006B010(a2, (a4 + 40), &qword_1011B4A50, &unk_100F055F0);
  return sub_10006B010(a3, &a4[v9], &qword_1011B2E28, &qword_100F02DA0);
}

uint64_t sub_100B515E8()
{
  sub_10010FC20(&qword_1011B2E28, &qword_100F02DA0);
  __chkstk_darwin();
  v1 = v10 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100006080(v2, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  v3 = sub_1000060E4(v2, static ArtworkImage.Placeholder.View.Style.nowPlaying);
  static Color.white.getter();
  v4 = Color.opacity(_:)();

  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v4;
  static Color.black.getter();
  v5 = Color.opacity(_:)();

  v10[3] = &type metadata for Color;
  v10[4] = &protocol witness table for Color;
  v10[0] = v5;
  v6 = type metadata accessor for BlendMode();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v8 = *(v2 + 24);
  v7(&v3[v8], 1, 1, v6);
  sub_10006B010(v11, v3, &qword_1011B4A50, &unk_100F055F0);
  sub_10006B010(v10, (v3 + 40), &qword_1011B4A50, &unk_100F055F0);
  return sub_10006B010(v1, &v3[v8], &qword_1011B2E28, &qword_100F02DA0);
}

uint64_t sub_100B51828()
{
  sub_10010FC20(&qword_1011B2E28, &qword_100F02DA0);
  __chkstk_darwin();
  v1 = v13 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100006080(v2, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v3 = sub_1000060E4(v2, static ArtworkImage.Placeholder.View.Style.miniPlayer);
  v4 = objc_opt_self();
  v5 = [v4 quaternaryLabelColor];
  v6 = Color.init(_:)();
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v14[0] = v6;
  v7 = [v4 tertiarySystemFillColor];
  v8 = Color.init(_:)();
  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v8;
  v9 = type metadata accessor for BlendMode();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v11 = *(v2 + 24);
  v10(&v3[v11], 1, 1, v9);
  sub_10006B010(v14, v3, &qword_1011B4A50, &unk_100F055F0);
  sub_10006B010(v13, (v3 + 40), &qword_1011B4A50, &unk_100F055F0);
  return sub_10006B010(v1, &v3[v11], &qword_1011B2E28, &qword_100F02DA0);
}

uint64_t sub_100B51A6C()
{
  sub_10010FC20(&qword_1011B2E28, &qword_100F02DA0);
  __chkstk_darwin();
  v1 = v12 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100006080(v2, static ArtworkImage.Placeholder.View.Style.widgets);
  v3 = sub_1000060E4(v2, static ArtworkImage.Placeholder.View.Style.widgets);
  static Color.white.getter();
  v4 = Color.opacity(_:)();

  v13[3] = &type metadata for Color;
  v13[4] = &protocol witness table for Color;
  v13[0] = v4;
  static Color.white.getter();
  v5 = Color.opacity(_:)();

  v12[3] = &type metadata for Color;
  v12[4] = &protocol witness table for Color;
  v12[0] = v5;
  v6 = enum case for BlendMode.plusLighter(_:);
  v7 = type metadata accessor for BlendMode();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v1, v6, v7);
  v9 = *(v8 + 56);
  v9(v1, 0, 1, v7);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v10 = *(v2 + 24);
  v9(&v3[v10], 1, 1, v7);
  sub_10006B010(v13, v3, &qword_1011B4A50, &unk_100F055F0);
  sub_10006B010(v12, (v3 + 40), &qword_1011B4A50, &unk_100F055F0);
  return sub_10006B010(v1, &v3[v10], &qword_1011B2E28, &qword_100F02DA0);
}

uint64_t sub_100B51CE4()
{
  sub_10010FC20(&qword_1011B2E28, &qword_100F02DA0);
  __chkstk_darwin();
  v1 = v9 - v0;
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  sub_100006080(v2, static ArtworkImage.Placeholder.View.Style.accentuated);
  v3 = sub_1000060E4(v2, static ArtworkImage.Placeholder.View.Style.accentuated);
  v4 = static Color.accentColor.getter();
  v11[3] = &type metadata for Color;
  v11[4] = &protocol witness table for Color;
  v11[0] = v4;
  v5 = type metadata accessor for BlendMode();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *v3 = 0u;
  v7 = *(v2 + 24);
  v6(&v3[v7], 1, 1, v5);
  sub_10006B010(v11, v3, &qword_1011B4A50, &unk_100F055F0);
  sub_10006B010(v9, (v3 + 40), &qword_1011B4A50, &unk_100F055F0);
  return sub_10006B010(v1, &v3[v7], &qword_1011B2E28, &qword_100F02DA0);
}

uint64_t sub_100B51EEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v7 = sub_1000060E4(v6, a2);
  return sub_100B59090(v7, a4, type metadata accessor for ArtworkImage.Placeholder.View.Style);
}

uint64_t sub_100B51F54@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&qword_1011B2E28, &qword_100F02DA0);
  __chkstk_darwin();
  v3 = v13 - v2;
  v14[3] = &type metadata for Color;
  v14[4] = &protocol witness table for Color;
  v4 = objc_opt_self();
  v5 = [v4 tertiaryLabelColor];
  v6 = Color.init(_:)();
  v13[4] = &protocol witness table for Color;
  v14[0] = v6;
  v13[3] = &type metadata for Color;
  v7 = [v4 secondarySystemFillColor];
  v13[0] = Color.init(_:)();
  v8 = type metadata accessor for BlendMode();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v11 = *(v10 + 24);
  v9(&a1[v11], 1, 1, v8);
  sub_10006B010(v14, a1, &qword_1011B4A50, &unk_100F055F0);
  sub_10006B010(v13, (a1 + 40), &qword_1011B4A50, &unk_100F055F0);
  return sub_10006B010(v3, &a1[v11], &qword_1011B2E28, &qword_100F02DA0);
}

uint64_t sub_100B52114(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F69646172;
    v7 = 0x65726E6567;
    if (a1 != 10)
    {
      v7 = 0x7265736F706D6F63;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 30324;
    v9 = 0x6F68706F7263696DLL;
    if (a1 != 7)
    {
      v9 = 0x6E6F73726570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636973756DLL;
    v2 = 0x6C79616C5077656ELL;
    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x646956636973756DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6979616C50776F6ELL;
    if (a1 != 1)
    {
      v4 = 0x65646C6F4677656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100B52294@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B5B110(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B522C8(uint64_t a1)
{
  v2 = sub_100B590F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B52304(uint64_t a1)
{
  v2 = sub_100B590F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52340(uint64_t a1)
{
  v2 = sub_100B5914C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5237C(uint64_t a1)
{
  v2 = sub_100B5914C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B523B8(uint64_t a1)
{
  v2 = sub_100B591A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B523F4(uint64_t a1)
{
  v2 = sub_100B591A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52430(uint64_t a1)
{
  v2 = sub_100B5929C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5246C(uint64_t a1)
{
  v2 = sub_100B5929C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B524A8(uint64_t a1)
{
  v2 = sub_100B594E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B524E4(uint64_t a1)
{
  v2 = sub_100B594E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52520(uint64_t a1)
{
  v2 = sub_100B59344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5255C(uint64_t a1)
{
  v2 = sub_100B59344();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52598(uint64_t a1)
{
  v2 = sub_100B59440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B525D4(uint64_t a1)
{
  v2 = sub_100B59440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52610(uint64_t a1)
{
  v2 = sub_100B593EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5264C(uint64_t a1)
{
  v2 = sub_100B593EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52688(uint64_t a1)
{
  v2 = sub_100B59494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B526C4(uint64_t a1)
{
  v2 = sub_100B59494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52700(uint64_t a1)
{
  v2 = sub_100B59248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5273C(uint64_t a1)
{
  v2 = sub_100B59248();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100B52788(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100B52810(uint64_t a1)
{
  v2 = sub_100B59398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5284C(uint64_t a1)
{
  v2 = sub_100B59398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52888(uint64_t a1)
{
  v2 = sub_100B591F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B528C4(uint64_t a1)
{
  v2 = sub_100B591F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B52900(uint64_t a1)
{
  v2 = sub_100B592F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5293C(uint64_t a1)
{
  v2 = sub_100B592F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArtworkImage.Placeholder.encode(to:)(void *a1)
{
  v2 = sub_10010FC20(&qword_1011B2E30, &qword_100F02DA8);
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin();
  v81 = &v51 - v3;
  v4 = sub_10010FC20(&qword_1011B2E38, &qword_100F02DB0);
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin();
  v78 = &v51 - v5;
  v6 = sub_10010FC20(&qword_1011B2E40, &qword_100F02DB8);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin();
  v75 = &v51 - v7;
  v8 = sub_10010FC20(&qword_1011B2E48, &qword_100F02DC0);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin();
  v72 = &v51 - v9;
  v10 = sub_10010FC20(&qword_1011B2E50, &qword_100F02DC8);
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin();
  v69 = &v51 - v11;
  v68 = sub_10010FC20(&qword_1011B2E58, &qword_100F02DD0);
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v64 = &v51 - v12;
  v63 = sub_10010FC20(&qword_1011B2E60, &qword_100F02DD8);
  v61 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v51 - v13;
  v66 = sub_10010FC20(&qword_1011B2E68, &unk_100F02DE0);
  v65 = *(v66 - 8);
  __chkstk_darwin();
  v62 = &v51 - v14;
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v59 = &v51 - v15;
  v58 = sub_10010FC20(&qword_1011B2E70, &qword_100F02DF0);
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v51 - v16;
  v55 = sub_10010FC20(&qword_1011B2E78, &qword_100F02DF8);
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v18 = &v51 - v17;
  v53 = sub_10010FC20(&qword_1011B2E80, &qword_100F02E00);
  v52 = *(v53 - 8);
  __chkstk_darwin();
  v20 = &v51 - v19;
  v21 = sub_10010FC20(&qword_1011B2E88, &qword_100F02E08);
  v51 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v51 - v22;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&qword_1011B2E90, &qword_100F02E10);
  v27 = *(v26 - 8);
  v86 = v26;
  v87 = v27;
  __chkstk_darwin();
  v29 = &v51 - v28;
  sub_10000954C(a1, a1[3]);
  sub_100B590F8();
  v85 = v29;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100B59090(v84, v25, type metadata accessor for ArtworkImage.Placeholder);
  v30 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
  v31 = (*(*(v30 - 8) + 48))(v25, 11, v30);
  if (v31 <= 5)
  {
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v90 = 2;
        sub_100B59440();
        v37 = v85;
        v36 = v86;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = *(v54 + 8);
        v42 = v18;
        v43 = &v87;
      }

      else if (v31 == 4)
      {
        v91 = 3;
        sub_100B593EC();
        v40 = v56;
        v37 = v85;
        v36 = v86;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = *(v57 + 8);
        v42 = v40;
        v43 = v92;
      }

      else
      {
        v92[17] = 5;
        sub_100B59344();
        v50 = v60;
        v37 = v85;
        v36 = v86;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = *(v61 + 8);
        v42 = v50;
        v43 = &v93;
      }
    }

    else
    {
      if (!v31)
      {
        v44 = v59;
        sub_10003D17C(v25, v59, &qword_1011B11C8, &qword_100EFFAD0);
        v92[16] = 4;
        sub_100B59398();
        v45 = v62;
        v47 = v85;
        v46 = v86;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for Playlist.Variant();
        sub_100B5953C(&qword_1011B2EE0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v48 = v66;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        (*(v65 + 8))(v45, v48);
        sub_1000095E8(v44, &qword_1011B11C8, &qword_100EFFAD0);
        return (*(v87 + 8))(v47, v46);
      }

      if (v31 == 1)
      {
        v88 = 0;
        sub_100B594E8();
        v32 = v85;
        v33 = v86;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v51 + 8))(v23, v21);
        return (*(v87 + 8))(v32, v33);
      }

      v89 = 1;
      sub_100B59494();
      v37 = v85;
      v36 = v86;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = *(v52 + 8);
      v42 = v20;
      v43 = &v85;
    }

    goto LABEL_23;
  }

  if (v31 > 8)
  {
    if (v31 == 9)
    {
      v92[21] = 9;
      sub_100B591F4();
      v35 = v75;
      v37 = v85;
      v36 = v86;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v76;
      v38 = v77;
    }

    else if (v31 == 10)
    {
      v92[22] = 10;
      sub_100B591A0();
      v35 = v78;
      v37 = v85;
      v36 = v86;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v79;
      v38 = v80;
    }

    else
    {
      v92[23] = 11;
      sub_100B5914C();
      v35 = v81;
      v37 = v85;
      v36 = v86;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v82;
      v38 = v83;
    }

    goto LABEL_25;
  }

  if (v31 != 6)
  {
    if (v31 == 7)
    {
      v92[19] = 7;
      sub_100B5929C();
      v35 = v69;
      v37 = v85;
      v36 = v86;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v70;
      v38 = v71;
    }

    else
    {
      v92[20] = 8;
      sub_100B59248();
      v35 = v72;
      v37 = v85;
      v36 = v86;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v39 = v73;
      v38 = v74;
    }

LABEL_25:
    v41 = *(v39 + 8);
    v42 = v35;
    goto LABEL_26;
  }

  v92[18] = 6;
  sub_100B592F0();
  v49 = v64;
  v37 = v85;
  v36 = v86;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v41 = *(v67 + 8);
  v42 = v49;
  v43 = &v94;
LABEL_23:
  v38 = *(v43 - 32);
LABEL_26:
  v41(v42, v38);
  return (*(v87 + 8))(v37, v36);
}

void ArtworkImage.Placeholder.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B59090(v1, v11, type metadata accessor for ArtworkImage.Placeholder);
  v12 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
  v13 = (*(*(v12 - 8) + 48))(v11, 11, v12);
  if (v13 > 5)
  {
    if (v13 > 8)
    {
      if (v13 == 9)
      {
        v14 = 9;
      }

      else if (v13 == 10)
      {
        v14 = 10;
      }

      else
      {
        v14 = 11;
      }
    }

    else if (v13 == 6)
    {
      v14 = 6;
    }

    else if (v13 == 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    goto LABEL_23;
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v14 = 2;
    }

    else if (v13 == 4)
    {
      v14 = 3;
    }

    else
    {
      v14 = 5;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    v14 = v13 != 1;
LABEL_23:
    Hasher._combine(_:)(v14);
    return;
  }

  sub_10003D17C(v11, v9, &qword_1011B11C8, &qword_100EFFAD0);
  Hasher._combine(_:)(4uLL);
  sub_1000089F8(v9, v7, &qword_1011B11C8, &qword_100EFFAD0);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    Hasher._combine(_:)(1u);
    sub_100B5953C(&qword_1011B2F08, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  sub_1000095E8(v9, &qword_1011B11C8, &qword_100EFFAD0);
}

Swift::Int ArtworkImage.Placeholder.hashValue.getter()
{
  Hasher.init(_seed:)();
  ArtworkImage.Placeholder.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t ArtworkImage.Placeholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = sub_10010FC20(&qword_1011B2F10, &qword_100F02E18);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v99 = &v67 - v4;
  v5 = sub_10010FC20(&qword_1011B2F18, &qword_100F02E20);
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin();
  v100 = &v67 - v6;
  v87 = sub_10010FC20(&qword_1011B2F20, &qword_100F02E28);
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v103 = &v67 - v7;
  v85 = sub_10010FC20(&qword_1011B2F28, &qword_100F02E30);
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v98 = &v67 - v8;
  v83 = sub_10010FC20(&qword_1011B2F30, &qword_100F02E38);
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v97 = &v67 - v9;
  v81 = sub_10010FC20(&qword_1011B2F38, &qword_100F02E40);
  v79 = *(v81 - 8);
  __chkstk_darwin();
  v96 = &v67 - v10;
  v77 = sub_10010FC20(&qword_1011B2F40, &qword_100F02E48);
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v94 = &v67 - v11;
  v80 = sub_10010FC20(&qword_1011B2F48, &qword_100F02E50);
  v78 = *(v80 - 8);
  __chkstk_darwin();
  v95 = &v67 - v12;
  v74 = sub_10010FC20(&qword_1011B2F50, &qword_100F02E58);
  v75 = *(v74 - 8);
  __chkstk_darwin();
  v102 = &v67 - v13;
  v73 = sub_10010FC20(&qword_1011B2F58, &qword_100F02E60);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v93 = &v67 - v14;
  v71 = sub_10010FC20(&qword_1011B2F60, &qword_100F02E68);
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v92 = &v67 - v15;
  v69 = sub_10010FC20(&qword_1011B2F68, &qword_100F02E70);
  v68 = *(v69 - 8);
  __chkstk_darwin();
  v17 = &v67 - v16;
  v18 = sub_10010FC20(&qword_1011B2F70, &qword_100F02E78);
  v104 = *(v18 - 8);
  __chkstk_darwin();
  v20 = &v67 - v19;
  v21 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v67 - v24;
  v26 = a1[3];
  v106 = a1;
  sub_10000954C(a1, v26);
  sub_100B590F8();
  v27 = v105;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v67 = v23;
    v29 = v102;
    v28 = v103;
    v105 = v25;
    v30 = KeyedDecodingContainer.allKeys.getter();
    if (*(v30 + 16) == 1)
    {
      v31 = *(v30 + 32);
      if (v31 != 12)
      {
        if (*(v30 + 32) > 5u)
        {
          v40 = v104;
          if (*(v30 + 32) > 8u)
          {
            v32 = v101;
            if (v31 == 9)
            {
              v116 = 9;
              sub_100B591F4();
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v86 + 8))(v28, v87);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v53 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
              v36 = v105;
              (*(*(v53 - 8) + 56))(v105, 9, 11, v53);
            }

            else if (v31 == 10)
            {
              v117 = 10;
              sub_100B591A0();
              v47 = v100;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v88 + 8))(v47, v89);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v48 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
              v36 = v105;
              (*(*(v48 - 8) + 56))(v105, 10, 11, v48);
            }

            else
            {
              v59 = v101;
              v118 = 11;
              sub_100B5914C();
              v60 = v99;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v90 + 8))(v60, v91);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v65 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
              v36 = v105;
              (*(*(v65 - 8) + 56))(v105, 11, 11, v65);
              v32 = v59;
            }
          }

          else
          {
            v32 = v101;
            if (v31 == 6)
            {
              v113 = 6;
              sub_100B592F0();
              v49 = v96;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v79 + 8))(v49, v81);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v50 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
              v36 = v105;
              (*(*(v50 - 8) + 56))(v105, 6, 11, v50);
            }

            else if (v31 == 7)
            {
              v114 = 7;
              sub_100B5929C();
              v41 = v97;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v82 + 8))(v41, v83);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v42 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
              v36 = v105;
              (*(*(v42 - 8) + 56))(v105, 7, 11, v42);
            }

            else
            {
              v115 = 8;
              sub_100B59248();
              v56 = v98;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v84 + 8))(v56, v85);
              (*(v40 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v57 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
              v36 = v105;
              (*(*(v57 - 8) + 56))(v105, 8, 11, v57);
            }
          }

          goto LABEL_29;
        }

        if (*(v30 + 32) <= 2u)
        {
          v32 = v101;
          if (*(v30 + 32))
          {
            if (v31 == 1)
            {
              v108 = 1;
              sub_100B59494();
              v33 = v92;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v34 = v104;
              (*(v70 + 8))(v33, v71);
              (*(v34 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v35 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
              v36 = v105;
              (*(*(v35 - 8) + 56))(v105, 2, 11, v35);
            }

            else
            {
              v109 = 2;
              sub_100B59440();
              v54 = v93;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v55 = v104;
              (*(v72 + 8))(v54, v73);
              (*(v55 + 8))(v20, v18);
              swift_unknownObjectRelease();
              v63 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
              v36 = v105;
              (*(*(v63 - 8) + 56))(v105, 3, 11, v63);
            }
          }

          else
          {
            v107 = 0;
            sub_100B594E8();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v68 + 8))(v17, v69);
            (*(v104 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v62 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
            v36 = v105;
            (*(*(v62 - 8) + 56))(v105, 1, 11, v62);
          }

          goto LABEL_29;
        }

        if (v31 == 3)
        {
          v110 = 3;
          sub_100B593EC();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v51 = v104;
          (*(v75 + 8))(v29, v74);
          (*(v51 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v52 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
          v36 = v105;
          (*(*(v52 - 8) + 56))(v105, 4, 11, v52);
        }

        else
        {
          v43 = v104;
          if (v31 == 4)
          {
            v111 = 4;
            sub_100B59398();
            v44 = v95;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            type metadata accessor for Playlist.Variant();
            sub_100B5953C(&qword_1011B2F80, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
            v45 = v67;
            v46 = v80;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            (*(v78 + 8))(v44, v46);
            (*(v43 + 8))(v20, v18);
            swift_unknownObjectRelease();
            v66 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
            (*(*(v66 - 8) + 56))(v45, 0, 11, v66);
            v36 = v105;
            sub_100B59584(v45, v105, type metadata accessor for ArtworkImage.Placeholder);
            v32 = v101;
LABEL_29:
            sub_100B59584(v36, v32, type metadata accessor for ArtworkImage.Placeholder);
            return sub_10000959C(v106);
          }

          v112 = 5;
          sub_100B59344();
          v58 = v94;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v76 + 8))(v58, v77);
          (*(v43 + 8))(v20, v18);
          swift_unknownObjectRelease();
          v64 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
          v36 = v105;
          (*(*(v64 - 8) + 56))(v105, 5, 11, v64);
        }

        v32 = v101;
        goto LABEL_29;
      }
    }

    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_10010FC20(&qword_1011B2F78, &qword_100F02E80);
    *v39 = v21;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    (*(v104 + 8))(v20, v18);
    swift_unknownObjectRelease();
  }

  return sub_10000959C(v106);
}

uint64_t sub_100B54EB4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100B54F1C(uint64_t a1)
{
  Hasher.init(_seed:)();
  ArtworkImage.Placeholder.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t GenericMusicItem.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v44 - v11;
  v13 = *(v8 + 16);
  v13(&v44 - v11, v1, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 == enum case for GenericMusicItem.album(_:))
  {
    goto LABEL_2;
  }

  v48 = a1;
  if (v14 == enum case for GenericMusicItem.artist(_:))
  {
LABEL_5:
    (*(v8 + 8))(v12, v7);
    v15 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    v18 = 7;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.composer(_:))
  {
    v20 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    (*(*(v20 - 8) + 56))(v48, 11, 11, v20);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.editorialItem(_:))
  {
LABEL_15:
    (*(v8 + 8))(v12, v7);
    v15 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    v16 = *(*(v15 - 8) + 56);
    v17 = v48;
    goto LABEL_3;
  }

  if (v14 == enum case for GenericMusicItem.genre(_:))
  {
    v22 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    (*(*(v22 - 8) + 56))(v48, 10, 11, v22);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.musicMovie(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v24 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    (*(*(v24 - 8) + 56))(v48, 5, 11, v24);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v8 + 96))(v12, v7);
    (*(v4 + 32))(v6, v12, v3);
    v25 = v48;
    Playlist.variant.getter();
    (*(v4 + 8))(v6, v3);
    v26 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    return (*(*(v26 - 8) + 56))(v25, 0, 11, v26);
  }

  if (v14 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v27 = enum case for Playlist.Variant.folder(_:);
    v28 = type metadata accessor for Playlist.Variant();
    v29 = *(v28 - 8);
    v30 = v48;
    (*(v29 + 104))(v48, v27, v28);
    (*(v29 + 56))(v30, 0, 1, v28);
    v31 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    (*(*(v31 - 8) + 56))(v30, 0, 11, v31);
    return (*(v8 + 8))(v12, v7);
  }

  if (v14 == enum case for GenericMusicItem.radioShow(_:))
  {
    goto LABEL_27;
  }

  if (v14 == enum case for GenericMusicItem.recordLabel(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v33 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    (*(*(v33 - 8) + 56))(v48, 8, 11, v33);
    return (*(v8 + 8))(v12, v7);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.song(_:))
  {
    goto LABEL_2;
  }

  if (v14 == enum case for GenericMusicItem.station(_:))
  {
LABEL_27:
    (*(v8 + 8))(v12, v7);
    v32 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    return (*(*(v32 - 8) + 56))(v48, 9, 11, v32);
  }

  if (v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:))
  {
LABEL_19:
    (*(v8 + 8))(v12, v7);
    v23 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    return (*(*(v23 - 8) + 56))(v48, 6, 11, v23);
  }

  a1 = v48;
  if (v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
LABEL_2:
    (*(v8 + 8))(v12, v7);
    v15 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1;
LABEL_3:
    v18 = 1;
    return v16(v17, v18, 11, v15);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    goto LABEL_19;
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    goto LABEL_15;
  }

  if (qword_1011B0628 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000060E4(v34, static Logger.artwork);
  (v13)(v47, v1, v7);
  v35 = Logger.logObject.getter();
  v46 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v35, v46))
  {
    v36 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v36 = 136315394;
    *(v36 + 4) = sub_100010744(0xD000000000000010, 0x8000000100E64B20, &v49);
    *(v36 + 12) = 2080;
    sub_100B5953C(&qword_1011B1430, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v37 = v47;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v8 + 8);
    v41(v37, v7);
    v42 = sub_100010744(v38, v40, &v49);

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v35, v46, "Unhandled case for %s: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v8 + 8);
    v41(v47, v7);
  }

  v43 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
  (*(*(v43 - 8) + 56))(v48, 1, 11, v43);
  return (v41)(v12, v7);
}

uint64_t GenericMusicItem.aspectRatio.getter()
{
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v2 = &v33[-v1];
  v3 = type metadata accessor for UploadedVideo();
  v35 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for GenericMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin();
  v12 = &v33[-v11];
  v13 = *(v7 + 16);
  v13(&v33[-v11], v0, v6, v10);
  v14 = (*(v7 + 88))(v12, v6);
  v20 = v14 == enum case for GenericMusicItem.album(_:) || v14 == enum case for GenericMusicItem.artist(_:) || v14 == enum case for GenericMusicItem.composer(_:) || v14 == enum case for GenericMusicItem.creditArtist(_:) || v14 == enum case for GenericMusicItem.curator(_:) || v14 == enum case for GenericMusicItem.editorialItem(_:) || v14 == enum case for GenericMusicItem.genre(_:);
  if (v20 || v14 == enum case for GenericMusicItem.musicMovie(_:) || v14 == enum case for GenericMusicItem.musicVideo(_:) || v14 == enum case for GenericMusicItem.playlist(_:) || v14 == enum case for GenericMusicItem.playlistFolder(_:) || v14 == enum case for GenericMusicItem.radioShow(_:) || v14 == enum case for GenericMusicItem.recordLabel(_:) || v14 == enum case for GenericMusicItem.socialProfile(_:) || v14 == enum case for GenericMusicItem.song(_:) || v14 == enum case for GenericMusicItem.station(_:) || v14 == enum case for GenericMusicItem.tvEpisode(_:) || v14 == enum case for GenericMusicItem.tvSeason(_:) || v14 == enum case for GenericMusicItem.tvShow(_:) || v14 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (v14 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v7 + 96))(v12, v6);
    v22 = v35;
    (*(v35 + 32))(v5, v12, v3);
    sub_100B074F8(v2);
    v23 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v23 - 8) + 48))(v2, 1, v23) == 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_1000095E8(v2, &qword_1011B5930, &qword_100EFDE70);
    }

    else if (Artwork.maximumWidth.getter() < 1 || Artwork.maximumHeight.getter() < 1)
    {
      (*(v22 + 8))(v5, v3);
      return sub_100B59030(v2, type metadata accessor for ArtworkImage.ViewModel);
    }

    else
    {
      Artwork.maximumWidth.getter();
      Artwork.maximumHeight.getter();
      (*(v22 + 8))(v5, v3);
      return sub_100B59030(v2, type metadata accessor for ArtworkImage.ViewModel);
    }
  }

  if (v14 == enum case for GenericMusicItem.other(_:))
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (qword_1011B0628 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000060E4(v24, static Logger.artwork);
  (v13)(v9, v0, v6);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v27 = 136315394;
    *(v27 + 4) = sub_100010744(0xD000000000000010, 0x8000000100E64B20, &v36);
    *(v27 + 12) = 2080;
    sub_100B5953C(&qword_1011B1430, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v34 = v26;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = *(v7 + 8);
    v31(v9, v6);
    v32 = sub_100010744(v28, v30, &v36);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v25, v34, "Unhandled case for %s: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v9, v6);
  }

  return (v31)(v12, v6);
}

void Playlist.Variant.symbolImage.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Variant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for Playlist.Variant.smart(_:) && v7 != enum case for Playlist.Variant.genius(_:) && v7 != enum case for Playlist.Variant.folder(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    __break(1u);
  }
}

uint64_t ArtworkImage.ViewModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v9;
    v13 = a1;
    Artwork.init(_:)();
    v14 = [v13 token];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100009F78(0, &qword_1011B2F88, MPStoreArtworkRequestToken_ptr);
    if ((swift_dynamicCast() & 1) != 0 && (v15 = v22, v16 = [v22 cropStyle], v15, v16))
    {
      (*(v5 + 16))(v12, v7, v4);
      Artwork.CropStyle.init(_:)(v16, &v12[*(v8 + 20)]);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      v17 = *(v8 + 20);
      v18 = type metadata accessor for Artwork.CropStyle();
      (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
      (*(v5 + 32))(v12, v7, v4);
    }

    sub_100B59584(v12, a2, type metadata accessor for ArtworkImage.ViewModel);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v9 + 56);

    return v20(a2, 1, 1, v8, v10);
  }
}

uint64_t Artwork.CropStyle.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v6 = __chkstk_darwin();
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_53;
  }

  v61 = v5;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
    v26 = a1;

    goto LABEL_16;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v15 = a1;

  if (v14)
  {
LABEL_16:
    static Artwork.CropStyle.boundedBox.getter();
LABEL_17:

    (*(v61 + 32))(a2, v8, v4);
    return (*(v61 + 56))(a2, 0, 1, v4);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_19:
    static Artwork.CropStyle.constrainedWidth.getter();
    goto LABEL_17;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

LABEL_21:
    static Artwork.CropStyle.constrainedHeight.getter();
    goto LABEL_17;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

LABEL_26:
    static Artwork.CropStyle.featuredContentCrop270.getter();
    goto LABEL_17;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_26;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

LABEL_31:
    static Artwork.CropStyle.featuredContentCrop44.getter();
    goto LABEL_17;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_31;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {

LABEL_36:
    static Artwork.CropStyle.featuredContentCrop170T100B.getter();
    goto LABEL_17;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    goto LABEL_36;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
  {

LABEL_41:
    static Artwork.CropStyle.sourceSize.getter();
    goto LABEL_17;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    goto LABEL_41;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {

LABEL_46:
    static Artwork.CropStyle.specificRectangle.getter();
    goto LABEL_17;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
    goto LABEL_46;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
  {

LABEL_51:
    static Artwork.CropStyle.squareCenterCrop.getter();
    goto LABEL_17;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    goto LABEL_51;
  }

  v5 = v61;
LABEL_53:
  v59 = *(v5 + 56);

  return v59(a2, 1, 1, v4, v6);
}

uint64_t sub_100B56C08()
{
  v0 = type metadata accessor for Artwork.CropStyle();
  sub_100006080(v0, static Artwork.CropStyle.fallback);
  sub_1000060E4(v0, static Artwork.CropStyle.fallback);
  return static Artwork.CropStyle.boundedBox.getter();
}

uint64_t sub_100B56C8C()
{
  v0 = type metadata accessor for Artwork.ImageFormat();
  sub_100006080(v0, static Artwork.ImageFormat.fallback);
  v1 = sub_1000060E4(v0, static Artwork.ImageFormat.fallback);
  v2 = enum case for Artwork.ImageFormat.heic(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Artwork.monogramArtwork(for:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_100009F78(0, &qword_1011B1168, MPArtworkCatalog_ptr);
  if (static MPArtworkCatalog.monogram(for:layoutDirection:)(a1, a2, a3, a4 & 1))
  {
    Artwork.init(_:)();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for Artwork();
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_100B56E40()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.artwork);
  sub_1000060E4(v0, static Logger.artwork);
  return static Logger.music(_:)(0x6B726F77747241, 0xE700000000000000);
}

uint64_t sub_100B56EFC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_1000060E4(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100B56FA0()
{
  v0 = sub_10010FC20(&qword_1011B2E10, &unk_100F02D80);
  sub_100006080(v0, qword_1011B2DF0);
  v1 = sub_1000060E4(v0, qword_1011B2DF0);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_100B57040@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0630 != -1)
  {
    swift_once();
  }

  v2 = sub_10010FC20(&qword_1011B2E10, &unk_100F02D80);
  v3 = sub_1000060E4(v2, qword_1011B2DF0);
  return sub_1000089F8(v3, a1, &qword_1011B2E10, &unk_100F02D80);
}

void (*EnvironmentValues.placeholderStyle.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_10010FC20(&qword_1011B2E10, &unk_100F02D80) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_100B58FBC();
  EnvironmentValues.subscript.getter();
  return sub_100B571E8;
}

void sub_100B571E8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1000089F8((*a1)[3], (*a1)[2], &qword_1011B2E10, &unk_100F02D80);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1000089F8(v3[2], v3[1], &qword_1011B2E10, &unk_100F02D80);
    EnvironmentValues.subscript.setter();
    sub_1000095E8(v6, &qword_1011B2E10, &unk_100F02D80);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  sub_1000095E8(v4, &qword_1011B2E10, &unk_100F02D80);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_100B572F8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  sub_10010FC20(&qword_1011B2E28, &qword_100F02DA0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = type metadata accessor for BlendMode();
  v19 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B2E10, &unk_100F02D80);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a2, v9, &qword_1011B2E10, &unk_100F02D80);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000095E8(v9, &qword_1011B2E10, &unk_100F02D80);
  }

  sub_100B59584(v9, v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  sub_1000089F8(v13, &v21, &qword_1011B4A50, &unk_100F055F0);
  if (v22)
  {
    sub_100059A8C(&v21, v23);
    v15 = v20;
    sub_1000095E8(v20, &qword_1011B4A50, &unk_100F055F0);
    sub_100059A8C(v23, v15);
  }

  else
  {
    sub_1000095E8(&v21, &qword_1011B4A50, &unk_100F055F0);
    v15 = v20;
  }

  v16 = v19;
  sub_1000089F8((v13 + 40), &v21, &qword_1011B4A50, &unk_100F055F0);
  if (v22)
  {
    sub_100059A8C(&v21, v23);
    sub_1000095E8(v15 + 40, &qword_1011B4A50, &unk_100F055F0);
    sub_100059A8C(v23, v15 + 40);
  }

  else
  {
    sub_1000095E8(&v21, &qword_1011B4A50, &unk_100F055F0);
  }

  sub_1000089F8(&v13[*(v10 + 24)], v4, &qword_1011B2E28, &qword_100F02DA0);
  sub_100B59030(v13, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  if ((*(v16 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000095E8(v4, &qword_1011B2E28, &qword_100F02DA0);
  }

  v17 = *(v16 + 32);
  v17(v7, v4, v5);
  v18 = *(v10 + 24);
  sub_1000095E8(v15 + v18, &qword_1011B2E28, &qword_100F02DA0);
  v17((v15 + v18), v7, v5);
  return (*(v16 + 56))(v15 + v18, 0, 1, v5);
}

uint64_t PlaceholderStyleModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(sub_10010FC20(&qword_1011B2F90, &qword_100F02E88) + 36));
  v6 = *(sub_10010FC20(&qword_1011B2F98, &qword_100F02E90) + 28);
  sub_100B57840(&v5[v6]);
  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v7 - 8) + 56))(&v5[v6], 0, 1, v7);
  *v5 = KeyPath;
  v8 = sub_10010FC20(&qword_1011B2FA0, &qword_100F02E98);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_100B57840@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&qword_1011B2E28, &qword_100F02DA0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  sub_10010FC20(&qword_1011B2E10, &unk_100F02D80);
  __chkstk_darwin();
  v7 = (&v15 - v6);
  type metadata accessor for PlaceholderStyleModifier(0);
  sub_100B4CF84(v7);
  v8 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) == 1)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v10 = type metadata accessor for BlendMode();
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v11 = *(*(v10 - 8) + 56);
    v11(v5, 1, 1, v10);
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v16 = v2;
    v12 = *(v8 + 24);
    v11(&a1[v12], 1, 1, v10);
    sub_10006B010(v19, a1, &qword_1011B4A50, &unk_100F055F0);
    sub_10006B010(v17, (a1 + 40), &qword_1011B4A50, &unk_100F055F0);
    v13 = &a1[v12];
    v2 = v16;
    sub_10006B010(v5, v13, &qword_1011B2E28, &qword_100F02DA0);
    if (v9(v7, 1, v8) != 1)
    {
      sub_1000095E8(v7, &qword_1011B2E10, &unk_100F02D80);
    }
  }

  else
  {
    sub_100B59584(v7, a1, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  }

  return (*v2)(a1);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v4 = *(sub_10010FC20(&qword_1011B2E10, &unk_100F02D80) - 8);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000089F8(a1, v6, &qword_1011B2E10, &unk_100F02D80);
  v10 = *(v7 + 20);
  *(v9 + v10) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
  swift_storeEnumTagMultiPayload();
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_10003D17C(v6, v12 + v11, &qword_1011B2E10, &unk_100F02D80);
  *v9 = sub_100B5960C;
  v9[1] = v12;
  View.modifier<A>(_:)();
  return sub_100B59030(v9, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(sub_10010FC20(&qword_1011B2E10, &unk_100F02D80) - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for PlaceholderStyleModifier(0);
  v9 = __chkstk_darwin();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1(v9);
  v12 = *(v8 + 20);
  *(v11 + v12) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
  swift_storeEnumTagMultiPayload();
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_10003D17C(v7, v14 + v13, &qword_1011B2E10, &unk_100F02D80);
  *v11 = sub_100B5B870;
  v11[1] = v14;
  View.modifier<A>(_:)();
  return sub_100B59030(v11, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t View.placeholderStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlaceholderStyleModifier(0);
  __chkstk_darwin();
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 20);
  *(v7 + v9) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B0878, &qword_100EFDE30);
  swift_storeEnumTagMultiPayload();
  *v7 = a1;
  v7[1] = a2;

  View.modifier<A>(_:)();
  return sub_100B59030(v7, type metadata accessor for PlaceholderStyleModifier);
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }

LABEL_7:
    v3 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v3 = 1;
      }

      if (v3)
      {
        return 0;
      }
    }

    v4 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    v5 = *(a2 + 41);
    if (*(a1 + 41) == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || (static ContentMode.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4InfoV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v9 = &v37[-1] - v8;
  sub_10010FC20(&unk_1011B4930, &qword_100F05490);
  __chkstk_darwin();
  v11 = &v37[-1] - v10;
  v13 = *(v12 + 56);
  sub_1000089F8(a1, &v37[-1] - v10, &qword_1011B5930, &qword_100EFDE70);
  sub_1000089F8(a2, &v11[v13], &qword_1011B5930, &qword_100EFDE70);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000089F8(v11, v9, &qword_1011B5930, &qword_100EFDE70);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      sub_100B59584(&v11[v13], v7, type metadata accessor for ArtworkImage.ViewModel);
      v15 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v9, v7);
      sub_100B59030(v7, type metadata accessor for ArtworkImage.ViewModel);
      sub_100B59030(v9, type metadata accessor for ArtworkImage.ViewModel);
      sub_1000095E8(v11, &qword_1011B5930, &qword_100EFDE70);
      if (!v15)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_100B59030(v9, type metadata accessor for ArtworkImage.ViewModel);
LABEL_6:
    sub_1000095E8(v11, &unk_1011B4930, &qword_100F05490);
    return 0;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000095E8(v11, &qword_1011B5930, &qword_100EFDE70);
LABEL_8:
  v16 = type metadata accessor for ArtworkImage.Info(0);
  if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + v16[5], a2 + v16[5]))
  {
    v17 = v16[6];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = *(a2 + v17 + 8);
    if (v19)
    {
      if (!v21)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 != *v20)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    v22 = (a1 + v16[7]);
    v23 = *(v22 + 26);
    v24 = v22[1];
    v36 = *v22;
    v37[0] = v24;
    *(v37 + 10) = v23;
    v25 = (a2 + v16[7]);
    *&v39[10] = *(v25 + 26);
    v26 = v25[1];
    v38 = *v25;
    *v39 = v26;
    if (_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4SizeV23__derived_struct_equalsySbAF_AFtFZ_0(&v36, &v38))
    {
      v27 = v16[8];
      v28 = a1 + v27;
      v29 = *(a1 + v27);
      v30 = *(a1 + v27 + 16);
      v31 = a2 + v27;
      v32 = *(a2 + v27);
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v30)
      {
        if (v30 == 1)
        {
          if (v34 != 1 || v29 != v32)
          {
            return 0;
          }
        }

        else if (v34 != 2 || v33 | *&v32)
        {
          return 0;
        }
      }

      else if (v34 || v29 != v32 || *(v28 + 8) != v33)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Variant();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = sub_10010FC20(&qword_1011B3550, &qword_100F03C78);
  __chkstk_darwin();
  v11 = &v28 - v10;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B3558, &unk_100F03C80);
  __chkstk_darwin();
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  sub_100B59090(a1, &v28 - v14, type metadata accessor for ArtworkImage.Placeholder);
  sub_100B59090(a2, &v15[v17], type metadata accessor for ArtworkImage.Placeholder);
  v18 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v15, 11, v18);
  if (v20 <= 5)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        if (v19(&v15[v17], 11, v18) != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v20 == 4)
      {
        if (v19(&v15[v17], 11, v18) != 4)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (v19(&v15[v17], 11, v18) != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v19(&v15[v17], 11, v18) != 2)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_100B59030(v15, type metadata accessor for ArtworkImage.Placeholder);
      return 1;
    }

    sub_100B59090(v15, v13, type metadata accessor for ArtworkImage.Placeholder);
    if (v19(&v15[v17], 11, v18))
    {
      sub_1000095E8(v13, &qword_1011B11C8, &qword_100EFFAD0);
      goto LABEL_36;
    }

    v22 = *(v9 + 48);
    sub_10003D17C(v13, v11, &qword_1011B11C8, &qword_100EFFAD0);
    sub_10003D17C(&v15[v17], &v11[v22], &qword_1011B11C8, &qword_100EFFAD0);
    v24 = v28;
    v23 = v29;
    v25 = *(v28 + 48);
    if (v25(v11, 1, v29) == 1)
    {
      if (v25(&v11[v22], 1, v23) == 1)
      {
        sub_1000095E8(v11, &qword_1011B11C8, &qword_100EFFAD0);
        goto LABEL_35;
      }
    }

    else
    {
      sub_1000089F8(v11, v8, &qword_1011B11C8, &qword_100EFFAD0);
      if (v25(&v11[v22], 1, v23) != 1)
      {
        (*(v24 + 32))(v6, &v11[v22], v23);
        sub_100B5953C(&qword_1011B3560, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *(v24 + 8);
        v27(v6, v23);
        v27(v8, v23);
        sub_1000095E8(v11, &qword_1011B11C8, &qword_100EFFAD0);
        if (v26)
        {
          goto LABEL_35;
        }

LABEL_44:
        sub_100B59030(v15, type metadata accessor for ArtworkImage.Placeholder);
        return 0;
      }

      (*(v24 + 8))(v8, v23);
    }

    sub_1000095E8(v11, &qword_1011B3550, &qword_100F03C78);
    goto LABEL_44;
  }

  if (v20 <= 8)
  {
    if (v20 == 6)
    {
      if (v19(&v15[v17], 11, v18) != 6)
      {
        goto LABEL_36;
      }
    }

    else if (v20 == 7)
    {
      if (v19(&v15[v17], 11, v18) != 7)
      {
        goto LABEL_36;
      }
    }

    else if (v19(&v15[v17], 11, v18) != 8)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 9)
  {
    if (v19(&v15[v17], 11, v18) != 9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v20 == 10)
  {
    if (v19(&v15[v17], 11, v18) != 10)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v19(&v15[v17], 11, v18) == 11)
  {
    goto LABEL_35;
  }

LABEL_36:
  sub_1000095E8(v15, &qword_1011B3558, &unk_100F03C80);
  return 0;
}

BOOL _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.CropStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_10010FC20(&qword_1011B3568, &unk_100F03C90);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if ((static Artwork.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v13 = *(type metadata accessor for ArtworkImage.ViewModel(0) + 20);
  v14 = *(v10 + 48);
  sub_1000089F8(a1 + v13, v12, &qword_1011B4720, &qword_100F02D00);
  sub_1000089F8(a2 + v13, &v12[v14], &qword_1011B4720, &qword_100F02D00);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_1000095E8(v12, &qword_1011B4720, &qword_100F02D00);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1000089F8(v12, v9, &qword_1011B4720, &qword_100F02D00);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_7:
    sub_1000095E8(v12, &qword_1011B3568, &unk_100F03C90);
    return 0;
  }

  v17 = v21;
  (*(v5 + 32))(v21, &v12[v14], v4);
  sub_100B5953C(&qword_1011B3570, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_1000095E8(v12, &qword_1011B4720, &qword_100F02D00);
  return (v18 & 1) != 0;
}

double sub_100B58F90@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_100B58FBC()
{
  result = qword_1011B2E08;
  if (!qword_1011B2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2E08);
  }

  return result;
}

uint64_t sub_100B59030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B59090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100B590F8()
{
  result = qword_1011B2E98;
  if (!qword_1011B2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2E98);
  }

  return result;
}

unint64_t sub_100B5914C()
{
  result = qword_1011B2EA0;
  if (!qword_1011B2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EA0);
  }

  return result;
}

unint64_t sub_100B591A0()
{
  result = qword_1011B2EA8;
  if (!qword_1011B2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EA8);
  }

  return result;
}

unint64_t sub_100B591F4()
{
  result = qword_1011B2EB0;
  if (!qword_1011B2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EB0);
  }

  return result;
}

unint64_t sub_100B59248()
{
  result = qword_1011B2EB8;
  if (!qword_1011B2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EB8);
  }

  return result;
}

unint64_t sub_100B5929C()
{
  result = qword_1011B2EC0;
  if (!qword_1011B2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EC0);
  }

  return result;
}

unint64_t sub_100B592F0()
{
  result = qword_1011B2EC8;
  if (!qword_1011B2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EC8);
  }

  return result;
}

unint64_t sub_100B59344()
{
  result = qword_1011B2ED0;
  if (!qword_1011B2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2ED0);
  }

  return result;
}

unint64_t sub_100B59398()
{
  result = qword_1011B2ED8;
  if (!qword_1011B2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2ED8);
  }

  return result;
}

unint64_t sub_100B593EC()
{
  result = qword_1011B2EE8;
  if (!qword_1011B2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EE8);
  }

  return result;
}

unint64_t sub_100B59440()
{
  result = qword_1011B2EF0;
  if (!qword_1011B2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EF0);
  }

  return result;
}

unint64_t sub_100B59494()
{
  result = qword_1011B2EF8;
  if (!qword_1011B2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2EF8);
  }

  return result;
}

unint64_t sub_100B594E8()
{
  result = qword_1011B2F00;
  if (!qword_1011B2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B2F00);
  }

  return result;
}

uint64_t sub_100B5953C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100B59584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B59610()
{
  v1 = *(sub_10010FC20(&qword_1011B2E10, &unk_100F02D80) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 3))
    {
      sub_10000959C((v0 + v2));
    }

    if (*(v3 + 8))
    {
      sub_10000959C(v3 + 5);
    }

    v5 = *(v4 + 24);
    v6 = type metadata accessor for BlendMode();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_100B597B4(uint64_t a1)
{
  v3 = *(sub_10010FC20(&qword_1011B2E10, &unk_100F02D80) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B572F8(a1, v4);
}

void sub_100B598D8(uint64_t a1)
{
  type metadata accessor for Artwork();
  if (v1 <= 0x3F)
  {
    sub_100B59A98(319, &unk_1011B3018, &type metadata accessor for Artwork.CropStyle, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100B599B4(uint64_t a1)
{
  sub_100B59A98(319, &qword_1011B30B0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v2 <= 0x3F)
    {
      sub_100B59AFC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B59A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100B59AFC()
{
  if (!qword_1011B30B8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B30B8);
    }
  }
}

uint64_t sub_100B59B4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100B59BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100B59C28(uint64_t a1)
{
  sub_100B59C80();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_100B59C80()
{
  if (!qword_1011B3178)
  {
    sub_100B59A98(0, &unk_1011B3180, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
    if (!v1)
    {
      atomic_store(v0, &qword_1011B3178);
    }
  }
}

void sub_100B59D20(uint64_t a1)
{
  _s3__C6CGSizeVMa_1(319);
  if (v1 <= 0x3F)
  {
    sub_100B59F40(319, &qword_1011B3220, &qword_1011B2E10, &unk_100F02D80, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100B59A98(319, &unk_1011B3228, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B59E60(uint64_t a1)
{
  sub_100B59F40(319, &qword_1011B32D0, &qword_1011B32D8, "^$\n", &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100B59A98(319, &unk_1011B32E0, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100B59F40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100B59FCC(uint64_t a1)
{
  sub_10001F888();
  if (v1 <= 0x3F)
  {
    sub_100B59F40(319, &qword_1011B3220, &qword_1011B2E10, &unk_100F02D80, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100B5A07C()
{
  result = qword_1011B4750;
  if (!qword_1011B4750)
  {
    sub_1001109D0(&qword_1011B33A8, &qword_100F03130);
    sub_100B5A134();
    sub_100020674(&unk_1011B4790, &qword_1011B33D0, &qword_100F05150, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4750);
  }

  return result;
}

unint64_t sub_100B5A134()
{
  result = qword_1011B33B0;
  if (!qword_1011B33B0)
  {
    sub_1001109D0(&unk_1011B4760, &qword_100F03138);
    sub_100B5A1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B33B0);
  }

  return result;
}

unint64_t sub_100B5A1C0()
{
  result = qword_1011B33B8;
  if (!qword_1011B33B8)
  {
    sub_1001109D0(&unk_1011B4770, &unk_100F05140);
    sub_100B5953C(&qword_1011B33C0, type metadata accessor for ArtworkImage.Placeholder.View, &protocol conformance descriptor for ArtworkImage.Placeholder.View);
    sub_100020674(&unk_1011B4780, &qword_1011B33C8, &unk_100F03140, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B33B8);
  }

  return result;
}

unint64_t sub_100B5A2A8()
{
  result = qword_1011B5960;
  if (!qword_1011B5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5960);
  }

  return result;
}

unint64_t sub_100B5A2FC()
{
  result = qword_1011B33D8;
  if (!qword_1011B33D8)
  {
    sub_1001109D0(&qword_1011B2E18, &qword_100F02D90);
    sub_100B5A3B4();
    sub_100020674(&qword_1011B3400, &qword_1011B2E20, &qword_100F02D98, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B33D8);
  }

  return result;
}

unint64_t sub_100B5A3B4()
{
  result = qword_1011B33E0;
  if (!qword_1011B33E0)
  {
    sub_1001109D0(&qword_1011B33E8, &qword_100F03150);
    sub_100020674(&qword_1011B33F0, &qword_1011B33F8, &qword_100F03158, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B33E0);
  }

  return result;
}

unint64_t sub_100B5A46C()
{
  result = qword_1011B3408;
  if (!qword_1011B3408)
  {
    sub_1001109D0(&qword_1011B2F90, &qword_100F02E88);
    sub_100020674(&qword_1011B3410, &qword_1011B2FA0, &qword_100F02E98, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100020674(&qword_1011B3418, &qword_1011B2F98, &qword_100F02E90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3408);
  }

  return result;
}

uint64_t _s11PlaceholderO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11PlaceholderO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100B5A774()
{
  result = qword_1011B3420;
  if (!qword_1011B3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3420);
  }

  return result;
}

unint64_t sub_100B5A7CC()
{
  result = qword_1011B3428;
  if (!qword_1011B3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3428);
  }

  return result;
}

unint64_t sub_100B5A824()
{
  result = qword_1011B3430;
  if (!qword_1011B3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3430);
  }

  return result;
}

unint64_t sub_100B5A87C()
{
  result = qword_1011B3438;
  if (!qword_1011B3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3438);
  }

  return result;
}

unint64_t sub_100B5A8D4()
{
  result = qword_1011B3440;
  if (!qword_1011B3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3440);
  }

  return result;
}

unint64_t sub_100B5A92C()
{
  result = qword_1011B3448;
  if (!qword_1011B3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3448);
  }

  return result;
}

unint64_t sub_100B5A984()
{
  result = qword_1011B3450;
  if (!qword_1011B3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3450);
  }

  return result;
}

unint64_t sub_100B5A9DC()
{
  result = qword_1011B3458;
  if (!qword_1011B3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3458);
  }

  return result;
}

unint64_t sub_100B5AA34()
{
  result = qword_1011B3460;
  if (!qword_1011B3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3460);
  }

  return result;
}

unint64_t sub_100B5AA8C()
{
  result = qword_1011B3468;
  if (!qword_1011B3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3468);
  }

  return result;
}

unint64_t sub_100B5AAE4()
{
  result = qword_1011B3470;
  if (!qword_1011B3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3470);
  }

  return result;
}

unint64_t sub_100B5AB3C()
{
  result = qword_1011B3478;
  if (!qword_1011B3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3478);
  }

  return result;
}

unint64_t sub_100B5AB94()
{
  result = qword_1011B3480;
  if (!qword_1011B3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3480);
  }

  return result;
}

unint64_t sub_100B5ABEC()
{
  result = qword_1011B3488;
  if (!qword_1011B3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3488);
  }

  return result;
}

unint64_t sub_100B5AC44()
{
  result = qword_1011B3490;
  if (!qword_1011B3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3490);
  }

  return result;
}

unint64_t sub_100B5AC9C()
{
  result = qword_1011B3498;
  if (!qword_1011B3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3498);
  }

  return result;
}

unint64_t sub_100B5ACF4()
{
  result = qword_1011B34A0;
  if (!qword_1011B34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34A0);
  }

  return result;
}

unint64_t sub_100B5AD4C()
{
  result = qword_1011B34A8;
  if (!qword_1011B34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34A8);
  }

  return result;
}

unint64_t sub_100B5ADA4()
{
  result = qword_1011B34B0;
  if (!qword_1011B34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34B0);
  }

  return result;
}

unint64_t sub_100B5ADFC()
{
  result = qword_1011B34B8;
  if (!qword_1011B34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34B8);
  }

  return result;
}

unint64_t sub_100B5AE54()
{
  result = qword_1011B34C0;
  if (!qword_1011B34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34C0);
  }

  return result;
}

unint64_t sub_100B5AEAC()
{
  result = qword_1011B34C8;
  if (!qword_1011B34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34C8);
  }

  return result;
}

unint64_t sub_100B5AF04()
{
  result = qword_1011B34D0;
  if (!qword_1011B34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34D0);
  }

  return result;
}

unint64_t sub_100B5AF5C()
{
  result = qword_1011B34D8;
  if (!qword_1011B34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34D8);
  }

  return result;
}

unint64_t sub_100B5AFB4()
{
  result = qword_1011B34E0;
  if (!qword_1011B34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34E0);
  }

  return result;
}

unint64_t sub_100B5B00C()
{
  result = qword_1011B34E8;
  if (!qword_1011B34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34E8);
  }

  return result;
}

unint64_t sub_100B5B064()
{
  result = qword_1011B34F0;
  if (!qword_1011B34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34F0);
  }

  return result;
}

unint64_t sub_100B5B0BC()
{
  result = qword_1011B34F8;
  if (!qword_1011B34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B34F8);
  }

  return result;
}

uint64_t sub_100B5B110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646C6F4677656ELL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79616C5077656ELL && a2 == 0xEB00000000747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F73726570 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F69646172 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265736F706D6F63 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_100B5B4D4()
{
  result = qword_1011B3518;
  if (!qword_1011B3518)
  {
    sub_1001109D0(&qword_1011B3510, &qword_100F03C48);
    sub_100B5B58C();
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48, &qword_100F03C60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3518);
  }

  return result;
}

unint64_t sub_100B5B58C()
{
  result = qword_1011B3520;
  if (!qword_1011B3520)
  {
    sub_1001109D0(&qword_1011B3528, &qword_100F03C50);
    sub_100020674(&qword_1011B3530, &qword_1011B3538, &qword_100F03C58, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3520);
  }

  return result;
}

uint64_t sub_100B5B644()
{
  v1 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_10010FC20(&unk_1011B4740, &qword_100F02D08);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 11, v3))
  {
    v4 = type metadata accessor for Playlist.Variant();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  return swift_deallocObject();
}

double sub_100B5B7C0@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkImage.Placeholder(0);

  return sub_100B50314(a1);
}

double BadgedPunchOut.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_100B5E474(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_100B5B8B8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

uint64_t sub_100B5B940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B5FFB0();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B5B9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B5FFB0();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B5BA08(uint64_t a1)
{
  v2 = sub_100B5FFB0();

  return Shape.body.getter(a1, v2);
}

uint64_t TextBadge.init(immersive:)(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t TextBadge.view.getter(uint64_t a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  v11[3] = type metadata accessor for TintShapeStyle();
  v11[4] = &protocol witness table for TintShapeStyle;
  sub_10001C8B8(v11);
  TintShapeStyle.init()();
  v10 = v5;
  TextBadge.view(favoriteBadgeConfiguration:)(&v10, v1, v6);
  v8 = v7;
  sub_100B5EE88(&v10);
  return v8;
}

void TextBadge.view(favoriteBadgeConfiguration:)(void *a1, char a2, __n128 a3)
{
  if (a2 != 2)
  {
    if (a2 == 3)
    {
      sub_100008FE4((a1 + 1), v59);
      sub_10000954C(v59, v59[3]);
      String.nonBreakingSpace.unsafeMutableAddressor();

      v24 = String._bridgeToObjectiveC()();
      v25 = [objc_opt_self() systemImageNamed:v24];

      if (v25)
      {
        v26 = [v25 imageWithConfiguration:*a1];

        v27 = [v26 imageWithRenderingMode:2];
        Image.init(uiImage:)();
        v28 = Text.init(_:)();
        v30 = v29;
        v32 = v31;
        v33 = static Text.+ infix(_:_:)();
        v35 = v34;
        v37 = v36;
        sub_10011895C(v28, v30, v32 & 1);

        v38 = Text.foregroundStyle<A>(_:)();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        sub_10011895C(v33, v35, v37 & 1);

        v45 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
        v46 = *v45;
        v47 = v45[1];

        Text.accessibilityLabel(_:)(v46, v47, v38, v40, v42 & 1, v44);

        sub_10011895C(v38, v40, v42 & 1);

        sub_10000959C(v59);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (a2 == 4)
      {
        String.nonBreakingSpace.unsafeMutableAddressor();

        Image.init(_internalSystemName:)();
        v3 = Text.init(_:)();
        v5 = v4;
        v7 = v6;
        v8 = static Text.+ infix(_:_:)();
        v10 = v9;
        v12 = v11;
        sub_10011895C(v3, v5, v7 & 1);

        LODWORD(v59[0]) = static HierarchicalShapeStyle.secondary.getter();
        v13 = Text.foregroundStyle<A>(_:)();
        v15 = v14;
        v17 = v16;
        v19 = v18;
        sub_10011895C(v8, v10, v12 & 1);

        v20 = AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor();
        v21 = *v20;
        v22 = v20[1];

        Text.accessibilityLabel(_:)(v21, v22, v13, v15, v17 & 1, v19);

        sub_10011895C(v13, v15, v17 & 1);
      }

      else
      {
        v49 = String.nonBreakingSpace.unsafeMutableAddressor();
        v51 = *v49;
        v50 = v49[1];
        v57 = v51;
        v58 = v50;

        v52 = (*ExplicitRestrictionsController.shared.unsafeMutableAddressor() + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
        swift_beginAccess();
        v54 = *v52;
        v53 = v52[1];

        v55._countAndFlagsBits = v54;
        v55._object = v53;
        String.append(_:)(v55);

        v56 = v57;
        LODWORD(v57) = static HierarchicalShapeStyle.secondary.getter();
        Text.playableForegroundStyle<A>(_:isPlayable:)(&v57, a2 & 1, v56, v58, 0, _swiftEmptyArrayStorage, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
      }
    }
  }
}

uint64_t static FavoriteBadgeConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleLargeTitle];
  [v2 scaledValueForValue:10.0];
  v4 = v3;

  v5 = [objc_opt_self() configurationWithPointSize:7 weight:v4];
  a1[4] = type metadata accessor for TintShapeStyle();
  a1[5] = &protocol witness table for TintShapeStyle;
  sub_10001C8B8(a1 + 1);
  result = TintShapeStyle.init()();
  *a1 = v5;
  return result;
}

uint64_t sub_100B5C0C8()
{
  v1 = 0x7974706D65;
  v2 = 0x657469726F766166;
  if (*v0 != 2)
  {
    v2 = 0x76697372656D6D69;
  }

  if (*v0)
  {
    v1 = 0x746963696C707865;
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

uint64_t sub_100B5C144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B5F05C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B5C16C(uint64_t a1)
{
  v2 = sub_100B5EEB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5C1A8(uint64_t a1)
{
  v2 = sub_100B5EEB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B5C1E4(uint64_t a1)
{
  v2 = sub_100B5F008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5C220(uint64_t a1)
{
  v2 = sub_100B5F008();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100B5C278(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100B5C308(uint64_t a1)
{
  v2 = sub_100B5EFB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5C344(uint64_t a1)
{
  v2 = sub_100B5EFB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B5C380(uint64_t a1)
{
  v2 = sub_100B5EF60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5C3BC(uint64_t a1)
{
  v2 = sub_100B5EF60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B5C3F8(uint64_t a1)
{
  v2 = sub_100B5EF0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5C434(uint64_t a1)
{
  v2 = sub_100B5EF0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TextBadge.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_10010FC20(&qword_1011B3578, &qword_100F03CA0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin();
  v28 = &v22 - v4;
  v5 = sub_10010FC20(&qword_1011B3580, &qword_100F03CA8);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin();
  v24 = &v22 - v6;
  v25 = sub_10010FC20(&qword_1011B3588, &qword_100F03CB0);
  v23 = *(v25 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = sub_10010FC20(&qword_1011B3590, &qword_100F03CB8);
  v22 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = sub_10010FC20(&qword_1011B3598, &qword_100F03CC0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v22 - v14;
  sub_10000954C(a1, a1[3]);
  sub_100B5EEB8();
  v16 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v16)
  {
    case 2:
      v32 = 0;
      sub_100B5F008();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v22 + 8))(v11, v9);
      return (*(v13 + 8))(v15, v12);
    case 3:
      v34 = 2;
      sub_100B5EF60();
      v17 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v26;
      v18 = v27;
      goto LABEL_6;
    case 4:
      v35 = 3;
      sub_100B5EF0C();
      v17 = v28;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v29;
      v18 = v30;
LABEL_6:
      (*(v19 + 8))(v17, v18);
      return (*(v13 + 8))(v15, v12);
  }

  v33 = 1;
  sub_100B5EFB4();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v21 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v23 + 8))(v8, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_100B5C91C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B5F1C4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t GenericMusicItem.favoriteBadge.getter()
{
  v1 = v0;
  v58 = type metadata accessor for Logger();
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Artist();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin();
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin();
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  isa = v10[-1].isa;
  v67 = v10;
  __chkstk_darwin();
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B35C8, &qword_100F03CC8);
  __chkstk_darwin();
  v13 = &v53 - v12;
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GenericMusicItem();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin();
  v23 = &v53 - v22;
  v24 = *(v19 + 16);
  v55 = v1;
  v25 = v1;
  v26 = v24;
  (v24)(&v53 - v22, v25, v18, v21);
  v27 = (*(v19 + 88))(v23, v18);
  if (v27 != enum case for GenericMusicItem.album(_:))
  {
    if (v27 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v19 + 96))(v23, v18);
      v31 = v68;
      v30 = v69;
      (*(v68 + 32))(v5, v23, v69);
      Artist.favoriteStatus.getter();
      v32 = type metadata accessor for MusicFavoriteStatus();
      (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
      v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
      (*(v31 + 8))(v5, v30);
      return v29;
    }

    if (v27 == enum case for GenericMusicItem.composer(_:) || v27 == enum case for GenericMusicItem.creditArtist(_:) || v27 == enum case for GenericMusicItem.curator(_:) || v27 == enum case for GenericMusicItem.editorialItem(_:) || v27 == enum case for GenericMusicItem.genre(_:) || v27 == enum case for GenericMusicItem.musicMovie(_:))
    {
      goto LABEL_32;
    }

    if (v27 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v65;
      v34 = isa;
      v35 = v67;
      (*(isa + 4))(v65, v23, v67);
      MusicVideo.favoriteStatus.getter();
LABEL_15:
      v36 = type metadata accessor for MusicFavoriteStatus();
      (*(*(v36 - 8) + 56))(v13, 0, 1, v36);
      v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
      (*(v34 + 1))(v33, v35);
      return v29;
    }

    if (v27 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v62;
      v34 = v63;
      v35 = v64;
      v63[4](v62, v23, v64);
      Playlist.favoriteStatus.getter();
      goto LABEL_15;
    }

    if (v27 == enum case for GenericMusicItem.playlistFolder(_:) || v27 == enum case for GenericMusicItem.radioShow(_:) || v27 == enum case for GenericMusicItem.recordLabel(_:) || v27 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_32;
    }

    if (v27 == enum case for GenericMusicItem.song(_:))
    {
      (*(v19 + 96))(v23, v18);
      v33 = v59;
      v34 = v60;
      v35 = v61;
      v60[4](v59, v23, v61);
      Song.favoriteStatus.getter();
      goto LABEL_15;
    }

    if (v27 == enum case for GenericMusicItem.station(_:) || v27 == enum case for GenericMusicItem.tvEpisode(_:) || v27 == enum case for GenericMusicItem.tvSeason(_:) || v27 == enum case for GenericMusicItem.tvShow(_:) || v27 == enum case for GenericMusicItem.uploadedAudio(_:) || v27 == enum case for GenericMusicItem.uploadedVideo(_:) || v27 == enum case for GenericMusicItem.other(_:))
    {
LABEL_32:
      (*(v19 + 8))(v23, v18);
    }

    else
    {
      v37 = Logger.badging.unsafeMutableAddressor();
      v39 = v56;
      v38 = v57;
      v40 = v58;
      (*(v56 + 16))(v57, v37, v58);
      v41 = v54;
      v26(v54, v55, v18);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        LODWORD(v68) = v43;
        v45 = v44;
        v69 = swift_slowAlloc();
        v70 = v69;
        *v45 = 136315394;
        *(v45 + 4) = sub_100010744(0xD000000000000010, 0x8000000100E64B20, &v70);
        *(v45 + 12) = 2080;
        sub_100B60004(&qword_1011B1430, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v49 = *(v19 + 8);
        v67 = v42;
        v49(v41, v18);
        v50 = sub_100010744(v46, v48, &v70);

        *(v45 + 14) = v50;
        v51 = v67;
        _os_log_impl(&_mh_execute_header, v67, v68, "Unhandled case for favorite badge with item: %s, %s", v45, 0x16u);
        swift_arrayDestroy();

        (*(v39 + 8))(v57, v58);
      }

      else
      {

        v49 = *(v19 + 8);
        v49(v41, v18);
        (*(v39 + 8))(v38, v40);
      }

      v49(v23, v18);
    }

    return 2;
  }

  (*(v19 + 96))(v23, v18);
  (*(v15 + 32))(v17, v23, v14);
  Album.favoriteStatus.getter();
  v28 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
  v29 = _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(v13);
  (*(v15 + 8))(v17, v14);
  return v29;
}

uint64_t GenericMusicItem.explicitBadge(_:)(int a1)
{
  LODWORD(v96) = a1;
  v68 = type metadata accessor for Logger();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v66 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for TVSeason();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MusicMovie();
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin();
  v92 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TVShow();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B35D0, &qword_100F03CD0);
  __chkstk_darwin();
  v95 = &v62 - v6;
  v7 = type metadata accessor for TVEpisode();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin();
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for UploadedVideo();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UploadedAudio();
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist();
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin();
  v87 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Station();
  v82 = *(v13 - 8);
  v83 = v13;
  __chkstk_darwin();
  v81 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Song();
  v85 = *(v15 - 8);
  v86 = v15;
  __chkstk_darwin();
  v84 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicVideo();
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin();
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B35D8, &qword_100F03CD8);
  __chkstk_darwin();
  v21 = &v62 - v20;
  v22 = type metadata accessor for Album();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GenericMusicItem();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v62 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin();
  v31 = &v62 - v30;
  v32 = *(v27 + 16);
  v32(&v62 - v30, v97, v26, v29);
  v33 = (*(v27 + 88))(v31, v26);
  if (v33 != enum case for GenericMusicItem.album(_:))
  {
    v35 = v96;
    if (v33 == enum case for GenericMusicItem.artist(_:) || v33 == enum case for GenericMusicItem.composer(_:) || v33 == enum case for GenericMusicItem.creditArtist(_:) || v33 == enum case for GenericMusicItem.curator(_:) || v33 == enum case for GenericMusicItem.editorialItem(_:) || v33 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_37;
    }

    if (v33 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v27 + 96))(v31, v26);
      v36 = v92;
      v37 = v93;
      v38 = v94;
      (*(v93 + 32))(v92, v31, v94);
      v39 = v95;
      MusicMovie.contentRating.getter();
LABEL_11:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v39, v35 & 1);
      (*(v37 + 8))(v36, v38);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.musicVideo(_:))
    {
      (*(v27 + 96))(v31, v26);
      v41 = v90;
      v40 = v91;
      (*(v90 + 32))(v19, v31, v91);
      MusicVideo.contentRating.getter();
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v41 + 8))(v19, v40);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.playlist(_:))
    {
      (*(v27 + 96))(v31, v26);
      v42 = v87;
      v43 = v88;
      v44 = v89;
      (*(v88 + 32))(v87, v31, v89);
      Playlist.contentRating.getter();
LABEL_16:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v43 + 8))(v42, v44);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.playlistFolder(_:) || v33 == enum case for GenericMusicItem.radioShow(_:) || v33 == enum case for GenericMusicItem.recordLabel(_:) || v33 == enum case for GenericMusicItem.socialProfile(_:))
    {
      goto LABEL_37;
    }

    if (v33 == enum case for GenericMusicItem.song(_:))
    {
      (*(v27 + 96))(v31, v26);
      v42 = v84;
      v43 = v85;
      v44 = v86;
      (*(v85 + 32))(v84, v31, v86);
      Song.contentRating.getter();
      goto LABEL_16;
    }

    if (v33 == enum case for GenericMusicItem.station(_:))
    {
      (*(v27 + 96))(v31, v26);
      v45 = v81;
      v46 = v82;
      v47 = v83;
      (*(v82 + 32))(v81, v31, v83);
      Station.contentRating.getter();
LABEL_25:
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v35 & 1);
      (*(v46 + 8))(v45, v47);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v27 + 96))(v31, v26);
      v36 = v78;
      v37 = v79;
      v38 = v80;
      (*(v79 + 32))(v78, v31, v80);
      v39 = v95;
      TVEpisode.contentRating.getter();
      goto LABEL_11;
    }

    if (v33 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v27 + 96))(v31, v26);
      v48 = v76;
      v49 = v75;
      v50 = v77;
      (*(v76 + 32))(v75, v31, v77);
      v51 = v95;
      TVSeason.contentRating.getter();
      v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(v51, v35 & 1);
      (*(v48 + 8))(v49, v50);
      return v34;
    }

    if (v33 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v27 + 96))(v31, v26);
      v37 = v73;
      v36 = v72;
      v38 = v74;
      (*(v73 + 32))(v72, v31, v74);
      v39 = v95;
      TVShow.contentRating.getter();
      goto LABEL_11;
    }

    if (v33 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v27 + 96))(v31, v26);
      v46 = v70;
      v45 = v69;
      v47 = v71;
      (*(v70 + 32))(v69, v31, v71);
      UploadedAudio.contentRating.getter();
      goto LABEL_25;
    }

    if (v33 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v27 + 96))(v31, v26);
      v46 = v64;
      v45 = v63;
      v47 = v65;
      (*(v64 + 32))(v63, v31, v65);
      UploadedVideo.contentRating.getter();
      goto LABEL_25;
    }

    if (v33 == enum case for GenericMusicItem.other(_:))
    {
LABEL_37:
      (*(v27 + 8))(v31, v26);
    }

    else
    {
      v53 = Logger.badging.unsafeMutableAddressor();
      (*(v67 + 16))(v66, v53, v68);
      (v32)(v62, v97, v26);
      v54 = Logger.logObject.getter();
      LODWORD(v97) = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v54, v97))
      {
        v55 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v98 = v96;
        *v55 = 136315394;
        *(v55 + 4) = sub_100010744(0xD000000000000010, 0x8000000100E64B20, &v98);
        *(v55 + 12) = 2080;
        sub_100B60004(&qword_1011B1430, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
        v56 = v62;
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v60 = *(v27 + 8);
        v60(v56, v26);
        v61 = sub_100010744(v57, v59, &v98);

        *(v55 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v54, v97, "Unhandled case for explicit badge with item: %s, %s", v55, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v60 = *(v27 + 8);
        v60(v62, v26);
      }

      (*(v67 + 8))(v66, v68);
      v60(v31, v26);
    }

    return 2;
  }

  (*(v27 + 96))(v31, v26);
  (*(v23 + 32))(v25, v31, v22);
  Album.contentRating.getter();
  v34 = _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(v21, v96 & 1);
  (*(v23 + 8))(v25, v22);
  return v34;
}

double sub_100B5E474@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Path.init()();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMaxY(v18);
  Path.move(to:)();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  Path.addLine(to:)();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  Path.addLine(to:)();
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMaxX(v23);
  Path.addLine(to:)();
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMaxY(v24);
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMaxY(v26);
  Path.addLine(to:)();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A3Kit13ContentRatingOSg_SbtcfC_0(uint64_t a1, int a2)
{
  v21 = a2;
  v3 = type metadata accessor for ContentRating();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10010FC20(&qword_1011B3690, &unk_100F04338) - 8;
  __chkstk_darwin();
  v9 = &v20[-v8];
  sub_10010FC20(&qword_1011B35D8, &qword_100F03CD8);
  __chkstk_darwin();
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin();
  v14 = &v20[-v13];
  (*(v4 + 104))(&v20[-v13], enum case for ContentRating.explicit(_:), v3, v12);
  (*(v4 + 56))(v14, 0, 1, v3);
  v15 = *(v7 + 56);
  sub_1000089F8(a1, v9, &qword_1011B35D8, &qword_100F03CD8);
  sub_1000089F8(v14, &v9[v15], &qword_1011B35D8, &qword_100F03CD8);
  v16 = *(v4 + 48);
  if (v16(v9, 1, v3) != 1)
  {
    sub_1000089F8(v9, v11, &qword_1011B35D8, &qword_100F03CD8);
    if (v16(&v9[v15], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v9[v15], v3);
      sub_100B60004(&qword_1011B3698, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000095E8(a1, &qword_1011B35D8, &qword_100F03CD8);
      v19 = *(v4 + 8);
      v19(v6, v3);
      sub_1000095E8(v14, &qword_1011B35D8, &qword_100F03CD8);
      v19(v11, v3);
      sub_1000095E8(v9, &qword_1011B35D8, &qword_100F03CD8);
      if (v18)
      {
        return v21 & 1;
      }

      return 2;
    }

    sub_1000095E8(a1, &qword_1011B35D8, &qword_100F03CD8);
    sub_1000095E8(v14, &qword_1011B35D8, &qword_100F03CD8);
    (*(v4 + 8))(v11, v3);
LABEL_6:
    sub_1000095E8(v9, &qword_1011B3690, &unk_100F04338);
    return 2;
  }

  sub_1000095E8(a1, &qword_1011B35D8, &qword_100F03CD8);
  sub_1000095E8(v14, &qword_1011B35D8, &qword_100F03CD8);
  if (v16(&v9[v15], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000095E8(v9, &qword_1011B35D8, &qword_100F03CD8);
  return v21 & 1;
}

uint64_t _s11MusicCoreUI9TextBadgeO3for10isPlayableAC0A11KitInternal18VideoContentRatingVSg_SbtcfC_0(uint64_t a1, char a2)
{
  sub_10010FC20(&qword_1011B35D0, &qword_100F03CD0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = type metadata accessor for VideoContentRating();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v5, &qword_1011B35D0, &qword_100F03CD0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(a1, &qword_1011B35D0, &qword_100F03CD0);
    sub_1000095E8(v5, &qword_1011B35D0, &qword_100F03CD0);
    return 2;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = VideoContentRating.isExplicit.getter();
    sub_1000095E8(a1, &qword_1011B35D0, &qword_100F03CD0);
    (*(v7 + 8))(v9, v6);
    result = 2;
    if (v11 != 2)
    {
      if (v11)
      {
        return a2 & 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI9TextBadgeO3forAC0A11KitInternal0A14FavoriteStatusOSg_tcfC_0(uint64_t a1)
{
  sub_10010FC20(&qword_1011B35C8, &qword_100F03CC8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v11 - v4;
  sub_1000089F8(a1, &v11 - v4, &qword_1011B35C8, &qword_100F03CC8);
  v6 = type metadata accessor for MusicFavoriteStatus();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_1000089F8(v5, v3, &qword_1011B35C8, &qword_100F03CC8);
    v8 = (*(v7 + 88))(v3, v6);
    if (v8 != enum case for MusicFavoriteStatus.neutral(_:))
    {
      if (v8 == enum case for MusicFavoriteStatus.favorited(_:))
      {
        v9 = 3;
        goto LABEL_4;
      }

      if (v8 != enum case for MusicFavoriteStatus.disliked(_:))
      {
        (*(v7 + 8))(v3, v6);
      }
    }
  }

  v9 = 2;
LABEL_4:
  sub_1000095E8(v5, &qword_1011B35C8, &qword_100F03CC8);
  sub_1000095E8(a1, &qword_1011B35C8, &qword_100F03CC8);
  return v9;
}

unint64_t sub_100B5EEB8()
{
  result = qword_1011B35A0;
  if (!qword_1011B35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B35A0);
  }

  return result;
}

unint64_t sub_100B5EF0C()
{
  result = qword_1011B35A8;
  if (!qword_1011B35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B35A8);
  }

  return result;
}

unint64_t sub_100B5EF60()
{
  result = qword_1011B35B0;
  if (!qword_1011B35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B35B0);
  }

  return result;
}

unint64_t sub_100B5EFB4()
{
  result = qword_1011B35B8;
  if (!qword_1011B35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B35B8);
  }

  return result;
}

unint64_t sub_100B5F008()
{
  result = qword_1011B35C0;
  if (!qword_1011B35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B35C0);
  }

  return result;
}

uint64_t sub_100B5F05C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76697372656D6D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100B5F1C4(void *a1)
{
  v39 = sub_10010FC20(&qword_1011B3668, &qword_100F04308);
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v42 = &v32 - v2;
  v38 = sub_10010FC20(&qword_1011B3670, &qword_100F04310);
  v40 = *(v38 - 8);
  __chkstk_darwin();
  v41 = &v32 - v3;
  v4 = sub_10010FC20(&qword_1011B3678, &qword_100F04318);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_10010FC20(&qword_1011B3680, &qword_100F04320);
  v35 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = sub_10010FC20(&qword_1011B3688, &unk_100F04328);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v15 = a1[3];
  v45 = a1;
  sub_10000954C(a1, v15);
  sub_100B5EEB8();
  v16 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v10;
    v33 = v8;
    v34 = v7;
    v19 = v41;
    v18 = v42;
    v20 = v43;
    v44 = v12;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = sub_100B54EB4();
    if (v23 == 4 || v48 != v49 >> 1)
    {
      v12 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      sub_10010FC20(&qword_1011B2F78, &qword_100F02E80);
      *v26 = &type metadata for TextBadge;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v12 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
      (*(v44 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else if (v23 > 1u)
    {
      v28 = v44;
      if (v23 == 2)
      {
        v50 = 2;
        sub_100B5EF60();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v40 + 8))(v19, v38);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 3;
      }

      else
      {
        v50 = 3;
        sub_100B5EF0C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v20 + 8))(v18, v39);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v12 = 4;
      }
    }

    else if (v23)
    {
      v50 = 1;
      sub_100B5EFB4();
      v29 = v34;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v36;
      v31 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v37 + 8))(v29, v30);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = v31 & 1;
    }

    else
    {
      v50 = 0;
      sub_100B5F008();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v35 + 8))(v17, v33);
      (*(v44 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v12 = 2;
    }
  }

  sub_10000959C(v45);
  return v12;
}

unint64_t sub_100B5F8A4()
{
  result = qword_1011B35E0;
  if (!qword_1011B35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B35E0);
  }

  return result;
}

unint64_t sub_100B5F8FC()
{
  result = qword_1011B35E8;
  if (!qword_1011B35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B35E8);
  }

  return result;
}

unint64_t sub_100B5F954()
{
  result = qword_1011B35F0;
  if (!qword_1011B35F0)
  {
    sub_1001109D0(&qword_1011B35F8, &qword_100F03D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B35F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextBadge(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TextBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100B5FB94()
{
  result = qword_1011B3600;
  if (!qword_1011B3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3600);
  }

  return result;
}

unint64_t sub_100B5FBEC()
{
  result = qword_1011B3608;
  if (!qword_1011B3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3608);
  }

  return result;
}

unint64_t sub_100B5FC44()
{
  result = qword_1011B3610;
  if (!qword_1011B3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3610);
  }

  return result;
}

unint64_t sub_100B5FC9C()
{
  result = qword_1011B3618;
  if (!qword_1011B3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3618);
  }

  return result;
}

unint64_t sub_100B5FCF4()
{
  result = qword_1011B3620;
  if (!qword_1011B3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3620);
  }

  return result;
}

unint64_t sub_100B5FD4C()
{
  result = qword_1011B3628;
  if (!qword_1011B3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3628);
  }

  return result;
}

unint64_t sub_100B5FDA4()
{
  result = qword_1011B3630;
  if (!qword_1011B3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3630);
  }

  return result;
}

unint64_t sub_100B5FDFC()
{
  result = qword_1011B3638;
  if (!qword_1011B3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3638);
  }

  return result;
}

unint64_t sub_100B5FE54()
{
  result = qword_1011B3640;
  if (!qword_1011B3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3640);
  }

  return result;
}

unint64_t sub_100B5FEAC()
{
  result = qword_1011B3648;
  if (!qword_1011B3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3648);
  }

  return result;
}

unint64_t sub_100B5FF04()
{
  result = qword_1011B3650;
  if (!qword_1011B3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3650);
  }

  return result;
}

unint64_t sub_100B5FF5C()
{
  result = qword_1011B3658;
  if (!qword_1011B3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3658);
  }

  return result;
}

unint64_t sub_100B5FFB0()
{
  result = qword_1011B3660;
  if (!qword_1011B3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B3660);
  }

  return result;
}

uint64_t sub_100B60004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id CNSwiftUIAvatarView.makeUIView(context:)(uint64_t a1, uint64_t a2, NSString a3)
{
  v4 = [objc_opt_self() defaultSettings];
  v5 = [objc_allocWithZone(CNAvatarView) initWithSettings:v4];

  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBC6C0;
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a3 handleStrings:0];

  *(v6 + 32) = v7;
  sub_100B6026C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setContacts:isa];

  return v5;
}

void CNSwiftUIAvatarView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBC6C0;
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v7 = [objc_opt_self() contactWithDisplayName:a4 handleStrings:0];

  *(v6 + 32) = v7;
  sub_100B6026C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setContacts:isa];
}

unint64_t sub_100B6026C()
{
  result = qword_1011B36A0;
  if (!qword_1011B36A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B36A0);
  }

  return result;
}

uint64_t sub_100B602CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B603CC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B60330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B603CC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100B60394(uint64_t a1)
{
  sub_100B603CC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100B603CC()
{
  result = qword_1011B36A8;
  if (!qword_1011B36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B36A8);
  }

  return result;
}

id Card.ViewController.init(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *((swift_isaMask & *v4) + 0x50);
  v8 = *((swift_isaMask & *v4) + 0x58);
  type metadata accessor for Card.ViewController.RootViewController(0, v7, v8, a4);
  v12 = sub_100B61EEC(a1, v9, v10, v11);
  *&v5[qword_1011B36B0] = v12;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for Card.ViewController(0, v7, v8, v13);
  v14 = v12;
  v15 = objc_msgSendSuper2(&v25, "initWithRootViewController:", v14);
  [v15 setModalPresentationStyle:{2, v25.receiver, v25.super_class}];
  v16 = [v15 sheetPresentationController];

  if (v16)
  {
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 _setNonLargeBackground:v17];

    sub_10010FC20(&qword_1011B5630, "\b)\n");
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100EBC6C0;
    sub_100009F78(0, &qword_1011B36B8, UISheetPresentationControllerDetent_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    v20 = v14;
    v21 = v15;
    v22 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    *(v18 + 32) = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 setDetents:isa];

    [v16 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  return v15;
}

id sub_100B6072C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100B6141C(0, 1);
  v5 = v4;
  result = [a3 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    [result safeAreaInsets];
    v9 = v8;

    *&result = v5 - v9;
  }

  return result;
}

Swift::Void __swiftcall Card.ViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Card.ViewController(0, *((swift_isaMask & *v0) + 0x50), *((swift_isaMask & *v0) + 0x58), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  sub_100B6141C(0, 1);
  [v0 setPreferredContentSize:?];
  sub_10010FC20(qword_1011B36C0, &unk_100F088E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBC6B0;
  *(v4 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v4 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

void sub_100B6098C(void *a1)
{
  v1 = a1;
  Card.ViewController.viewDidLoad()();
}

id Card.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  v8 = swift_isaMask;
  sub_100B6141C(*&a2, 0);
  [v3 setPreferredContentSize:?];
  v10 = type metadata accessor for Card.ViewController(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v9);
  v12.receiver = v3;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_100B60AA8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  Card.ViewController.viewWillTransition(to:with:)(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100B60B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Card.ViewController.RootViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v14.receiver = v4;
  v14.super_class = v5;
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = sub_100B61020();
    [v7 addSubview:v8];

    v9 = *(v4 + qword_1011B3748);
    v10 = *(v4 + qword_1011B3758);
    v11 = v9;
    v12 = [v10 view];
    if (v12)
    {
      v13 = v12;
      [v11 addSubview:v12];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100B60C8C(void *a1)
{
  v4 = a1;
  sub_100B60B64(v4, v1, v2, v3);
}

id sub_100B60CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for Card.ViewController.RootViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v59.receiver = v4;
  v59.super_class = v6;
  objc_msgSendSuper2(&v59, "viewDidLayoutSubviews");
  sub_100B6126C();
  v8 = v7;
  v9 = *&v4[qword_1011B3758];
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v60.origin.x = v13;
  v60.origin.y = v15;
  v60.size.width = v17;
  v60.size.height = v19;
  CGRectGetWidth(v60);
  sub_100B6126C();
  NSDirectionalEdgeInsets.horizontal.getter();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v58 = v20;
  v22 = v21;

  result = [v5 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v61.origin.x = v25;
  v61.origin.y = v27;
  v61.size.width = v29;
  v61.size.height = v31;
  Height = CGRectGetHeight(v61);
  sub_100B611BC(Height < v22);
  v34 = v33;
  v35 = sub_100B61020();
  result = [v5 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v36 = result;
  v37 = v8 + v34;
  [result bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v62.origin.x = v39;
  v62.origin.y = v41;
  v62.size.width = v43;
  v62.size.height = v45;
  Width = CGRectGetWidth(v62);
  NSDirectionalEdgeInsets.vertical.getter();
  [v35 setContentSize:{Width, v22 + v47}];

  result = [*&v5[qword_1011B3758] view];
  if (result)
  {
    v48 = result;
    v49 = qword_1011B3748;
    v50 = *&v5[qword_1011B3748];
    v51 = CGRect.centeringAlong(axes:in:)(0.0, v37, v58, v22);
    v53 = v52;
    v55 = v54;
    v57 = v56;

    [v48 setFrame:{v51, v53, v55, v57}];
    return [*&v5[v49] _setPocketsEnabled:Height < v22];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100B60FD8(void *a1)
{
  v4 = a1;
  sub_100B60CD4(v4, v1, v2, v3);
}

id sub_100B61020()
{
  v1 = qword_1011B3748;
  v2 = *&v0[qword_1011B3748];
  if (v2)
  {
    v3 = *&v0[qword_1011B3748];
  }

  else
  {
    v4 = sub_100B61084(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100B61084(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UIScrollView) initWithFrame:{v4, v6, v8, v10}];
    [v11 setShowsVerticalScrollIndicator:0];
    [v11 setShowsHorizontalScrollIndicator:0];
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 clearColor];
    [v13 setBackgroundColor:v14];

    [v13 setAutoresizingMask:18];
    [v13 setContentInsetAdjustmentBehavior:2];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100B611BC(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6 || (v5 = 0.0, (a1 & 1) != 0))
  {
    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];

      sub_100B6126C();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100B6126C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 6)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      v5 = [v0 presentationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 containerView];

        if (v7)
        {
          v8 = [v7 superview];

          if (v8)
          {
            [v8 _cornerRadius];
            v10 = v9;

            if (v10 > 0.0)
            {
              v11 = [v0 view];
              UIRoundToViewScale();
            }
          }
        }
      }
    }
  }

  v12 = [v0 traitCollection];
  [v12 userInterfaceIdiom];
}

void sub_100B6141C(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = [v2 presentationController];
    if (!v4 || (v5 = v4, v6 = [v4 containerView], v5, !v6))
    {
      v7 = [v3 view];
      if (!v7)
      {
        goto LABEL_16;
      }

      v6 = v7;
    }

    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    CGRectGetWidth(v39);
  }

  v16 = [v3 presentingViewController];
  if (v16 && (v17 = v16, v18 = [v16 traitCollection], v17, v18) || (v19 = objc_msgSend(v3, "presentationController")) != 0 && (v20 = v19, v18 = objc_msgSend(v19, "traitCollection"), v20, v18))
  {
    v21 = v18;
    [v21 horizontalSizeClass];
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v3[qword_1011B3758];
  sub_100B6126C();
  NSDirectionalEdgeInsets.horizontal.getter();
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v24 = v23;

  sub_100B6126C();
  NSDirectionalEdgeInsets.vertical.getter();
  v26 = v25;
  v27 = [v3 view];
  if (v27)
  {
    v28 = v27;
    v29 = v24 + v26;
    [v27 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40.origin.x = v31;
    v40.origin.y = v33;
    v40.size.width = v35;
    v40.size.height = v37;
    v38 = CGRectGetHeight(v40) < v29;
    sub_100B611BC(v38);

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_100B616C4(uint64_t a1)
{
  v2 = *(a1 + qword_1011B3758);
}

id Card.ViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id Card.ViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

void sub_100B618A4(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100B620D8();
}

id SyncedLyricsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_100B619E0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = *((swift_isaMask & *a1) + 0x50);
  v6 = *((swift_isaMask & *a1) + 0x58);
  v7 = a4;

  return a5(v5, v6);
}

id sub_100B61A7C(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_100B61B04(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin();
  v6 = *((v5 & v4) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  *(v2 + qword_1011B3748) = 0;
  *(v2 + qword_1011B3750) = 0x4079E00000000000;
  v10 = *((v5 & v4) + 0x58);
  type metadata accessor for UIHostingController();
  (*(v7 + 16))(v9, a1, v6);
  v11 = UIHostingController.__allocating_init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  UIHostingController.safeAreaRegions.setter();
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = objc_opt_self();
    v15 = [v14 clearColor];
    [v13 setBackgroundColor:v15];

    *(v2 + qword_1011B3758) = v11;
    v17 = type metadata accessor for Card.ViewController.RootViewController(0, v6, v10, v16);
    v26.receiver = v2;
    v26.super_class = v17;
    v18 = v11;
    v19 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
    result = [v19 view];
    if (result)
    {
      v20 = result;
      v21 = [v14 clearColor];
      [v20 setBackgroundColor:v21];

      [v19 addChildViewController:*&v19[qword_1011B3758]];
      v22 = [v19 navigationItem];
      sub_100009F78(0, &qword_1011B15B8, UIBarButtonItem_ptr);
      sub_100009F78(0, &qword_1011B1640, UIAction_ptr);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v24 = swift_allocObject();
      v24[2] = v6;
      v24[3] = v10;
      v24[4] = v23;
      v27.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v27.is_nil = 0;
      isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v27, v28).super.super.isa;
      [v22 setLeftBarButtonItem:isa];

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100B61FA8(void *a1)
{
  sub_100B6141C(0, 1);

  return [a1 setPreferredContentSize:?];
}

void sub_100B61FFC()
{
  *(v0 + qword_1011B3748) = 0;
  *(v0 + qword_1011B3750) = 0x4079E00000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100B621B4()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_100B62210()
{
  type metadata accessor for Array();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  return v1;
}

double sub_100B62270(uint64_t a1)
{
  sub_10010FC20(&qword_1011B39C8, &unk_100F04708);
  Binding.wrappedValue.getter();
  return v2;
}

uint64_t CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v44 = a15;
  v43[0] = a17;
  v43[1] = a18;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v29 = v43 - v28;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v30 = type metadata accessor for CarouselView(0, &v49);
  (*(*(a16 - 8) + 56))(v29, 1, 1, a16);
  property wrapper backing initializer of CarouselView.previousItem(v29);
  v31 = (a9 + v30[24]);
  v53 = 0;
  State.init(wrappedValue:)();
  v32 = v50;
  *v31 = v49;
  v31[1] = v32;
  v33 = [objc_opt_self() currentTraitCollection];
  v34 = [v33 userInterfaceIdiom];

  v35 = 8.0;
  if (v34 == 6)
  {
    v35 = 10.0;
  }

  v36 = (a9 + v30[22]);
  *(a9 + v30[25]) = v35;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_100B68178(a4, a9 + v30[17]);
  v38 = a9 + v30[18];
  v39 = v46;
  *v38 = v45;
  *(v38 + 1) = v39;
  *(v38 + 2) = a10;
  *(v38 + 3) = a11;
  *(a9 + v30[20]) = a12;
  *(a9 + v30[21]) = a13;
  v40 = (a9 + v30[19]);
  v41 = v48;
  *v40 = v47;
  v40[1] = v41;
  v42 = v44;
  *v36 = a14;
  v36[1] = v42;
  return result;
}

uint64_t property wrapper backing initializer of CarouselView.previousItem(uint64_t a1)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  State.init(wrappedValue:)();
  return (*(v5 + 8))(a1, v4);
}

uint64_t CarouselView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v95 = type metadata accessor for ScrollPosition();
  v87 = *(v95 - 8);
  __chkstk_darwin();
  v86 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(a1 - 1);
  v94 = *(v84 + 64);
  __chkstk_darwin();
  v93 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  v7 = type metadata accessor for Array();
  v91 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = a1;
  v9 = a1[7];
  v112 = a1[3];
  *&v113 = v9;
  v10 = v112;
  v97 = v112;
  v11 = v9;
  v92 = v9;
  swift_getOpaqueTypeMetadata2();
  v12 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v14 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = v7;
  *&v113 = AssociatedTypeWitness;
  *(&v113 + 1) = v12;
  v114 = WitnessTable;
  v115 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v112 = v10;
  *&v113 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = &protocol witness table for _FrameLayout;
  v109 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = type metadata accessor for LazyHStack();
  v17 = swift_getWitnessTable();
  v112 = v16;
  *&v113 = v17;
  swift_getOpaqueTypeMetadata2();
  v112 = v16;
  *&v113 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for ScrollView();
  v19 = swift_getWitnessTable();
  v112 = v18;
  *&v113 = v19;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SafeAreaPaddingModifier();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B37E8, &qword_100F044F8);
  v20 = type metadata accessor for ModifiedContent();
  v21 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v112 = v18;
  *&v113 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_100B69334(&qword_1011B37F0, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v107 = v22;
  v108 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_100B681E8();
  v105 = v24;
  v106 = v25;
  v26 = swift_getWitnessTable();
  v112 = v20;
  *&v113 = v21;
  *(&v113 + 1) = v26;
  v114 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = v20;
  *&v113 = v21;
  *(&v113 + 1) = v26;
  v114 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v28 = swift_getOpaqueTypeConformance2();
  v112 = OpaqueTypeMetadata2;
  *&v113 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v112 = OpaqueTypeMetadata2;
  *&v113 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v112 = v29;
  *&v113 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v112 = v29;
  *&v113 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v112 = v31;
  *&v113 = v32;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v90 = v14;
  v112 = v14;
  v33 = v91;
  v114 = v91;
  *&v34 = v14;
  *(&v34 + 1) = v97;
  v74 = v34;
  v35 = v83;
  v96 = *(v83 + 2);
  v113 = v96;
  type metadata accessor for PageControl(255, &v112);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v36 = type metadata accessor for VStack();
  v78 = *(v36 - 8);
  __chkstk_darwin();
  v69 = &v68 - v37;
  v72 = v36;
  v38 = type metadata accessor for ModifiedContent();
  v77 = v38;
  v82 = *(v38 - 8);
  __chkstk_darwin();
  v89 = &v68 - v39;
  v70 = swift_getWitnessTable();
  v103 = v70;
  v104 = &protocol witness table for _AppearanceActionModifier;
  v40 = swift_getWitnessTable();
  v76 = v40;
  v75 = sub_100B69334(qword_1011B3800, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v112 = v38;
  *&v113 = v95;
  *(&v113 + 1) = v40;
  v114 = v75;
  v79 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v80 = swift_getOpaqueTypeMetadata2();
  v81 = *(v80 - 8);
  __chkstk_darwin();
  v71 = &v68 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v68 - v42;
  v43 = v85;
  v98 = v74;
  v99 = v96;
  v44 = v92;
  v100 = v33;
  v101 = v92;
  v102 = v85;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v45 = v84;
  *&v74 = *(v84 + 16);
  v46 = v93;
  (v74)(v93, v43, v35);
  v47 = (*(v45 + 80) + 64) & ~*(v45 + 80);
  v48 = swift_allocObject();
  v49 = v97;
  *(v48 + 16) = v90;
  *(v48 + 24) = v49;
  *(v48 + 32) = v96;
  *(v48 + 48) = v33;
  *(v48 + 56) = v44;
  v50 = *(v45 + 32);
  v50(v48 + v47, v46, v35);
  v51 = v72;
  v52 = v69;
  View.onAppear(perform:)();

  (*(v78 + 8))(v52, v51);
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  v53 = v86;
  Binding.wrappedValue.getter();
  v54 = v93;
  (v74)(v93, v43, v35);
  v55 = swift_allocObject();
  v56 = v97;
  *(v55 + 16) = v90;
  *(v55 + 24) = v56;
  *(v55 + 32) = v96;
  v57 = v92;
  *(v55 + 48) = v91;
  *(v55 + 56) = v57;
  v50(v55 + v47, v54, v35);
  v58 = v71;
  v59 = v77;
  v60 = v95;
  v61 = v76;
  v62 = v75;
  v63 = v89;
  View.onChange<A>(of:initial:_:)();

  (*(v87 + 8))(v53, v60);
  (*(v82 + 8))(v63, v59);
  v112 = v59;
  *&v113 = v60;
  *(&v113 + 1) = v61;
  v114 = v62;
  swift_getOpaqueTypeConformance2();
  v64 = v73;
  v65 = v80;
  sub_100B5B86C();
  v66 = *(v81 + 8);
  v66(v58, v65);
  sub_100B5B86C();
  return (v66)(v64, v65);
}

uint64_t sub_100B632B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v207 = a1;
  v195 = a8;
  v233 = a2;
  v234 = a4;
  v197 = a4;
  v198 = a5;
  v235 = a5;
  v236 = a6;
  v146 = *(type metadata accessor for PageControl(0, &v233) - 8);
  __chkstk_darwin();
  v144 = (&v143 - v14);
  v206 = v15;
  v189 = *(type metadata accessor for ModifiedContent() - 8);
  __chkstk_darwin();
  v147 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v145 = &v143 - v17;
  v193 = v18;
  *&v194 = COERCE_DOUBLE(type metadata accessor for Optional());
  v190 = *(v194 - 8);
  __chkstk_darwin();
  v192 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v191 = &v143 - v20;
  v21 = type metadata accessor for ScrollIndicatorVisibility();
  v187 = *(v21 - 8);
  v188 = v21;
  __chkstk_darwin();
  v182 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin();
  v184 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v185 = *(v200 - 8);
  __chkstk_darwin();
  v183 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = a2;
  v234 = a3;
  v199 = a3;
  v235 = a4;
  v236 = a5;
  v237 = a6;
  v238 = a7;
  v205 = type metadata accessor for CarouselView(0, &v233);
  v180 = *(v205 - 8);
  v181 = *(v180 + 64);
  __chkstk_darwin();
  v179 = &v143 - v25;
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  __chkstk_darwin();
  v196 = &v143 - v26;
  v27 = type metadata accessor for Array();
  v208 = a6;
  v210 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v233 = a3;
  v234 = a7;
  v202 = a7;
  swift_getOpaqueTypeMetadata2();
  v29 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v233 = v27;
  v234 = AssociatedTypeWitness;
  v235 = v29;
  v236 = WitnessTable;
  v237 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v32 = v199;
  v233 = v199;
  v234 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v232 = &protocol witness table for _FrameLayout;
  v230 = swift_getWitnessTable();
  swift_getWitnessTable();
  v33 = type metadata accessor for LazyHStack();
  v34 = swift_getWitnessTable();
  v233 = v33;
  v234 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v233 = v33;
  v234 = v34;
  v155 = swift_getOpaqueTypeConformance2();
  v35 = type metadata accessor for ScrollView();
  v160 = *(v35 - 8);
  __chkstk_darwin();
  v37 = &v143 - v36;
  v38 = swift_getWitnessTable();
  v233 = v35;
  v234 = v38;
  v39 = v38;
  v148 = v38;
  v158 = swift_getOpaqueTypeMetadata2();
  v161 = *(v158 - 8);
  __chkstk_darwin();
  v151 = &v143 - v40;
  type metadata accessor for SafeAreaPaddingModifier();
  v41 = type metadata accessor for ModifiedContent();
  v163 = *(v41 - 8);
  __chkstk_darwin();
  v201 = &v143 - v42;
  sub_1001109D0(&qword_1011B37E8, &qword_100F044F8);
  v157 = v41;
  v43 = type metadata accessor for ModifiedContent();
  v162 = *(v43 - 8);
  __chkstk_darwin();
  v159 = &v143 - v44;
  v233 = v35;
  v234 = v39;
  v45 = swift_getOpaqueTypeConformance2();
  v150 = v45;
  v46 = sub_100B69334(&qword_1011B37F0, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v228 = v45;
  v229 = v46;
  v47 = swift_getWitnessTable();
  v154 = v47;
  v48 = sub_100B681E8();
  v226 = v47;
  v227 = v48;
  v49 = swift_getWitnessTable();
  v50 = v43;
  v152 = v43;
  v51 = v200;
  v233 = v43;
  v234 = v200;
  v235 = v49;
  v236 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v52 = v49;
  v153 = v49;
  v53 = swift_getOpaqueTypeMetadata2();
  v177 = *(v53 - 8);
  __chkstk_darwin();
  v149 = &v143 - v54;
  v233 = v50;
  v234 = v51;
  v235 = v52;
  v236 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v55 = swift_getOpaqueTypeConformance2();
  v233 = v53;
  v234 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v174 = *(v56 - 8);
  __chkstk_darwin();
  v169 = &v143 - v57;
  v178 = v53;
  v233 = v53;
  v234 = v55;
  v171 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v233 = v56;
  v234 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v170 = *(v59 - 8);
  __chkstk_darwin();
  v164 = v58;
  v165 = &v143 - v60;
  v175 = v56;
  v233 = v56;
  v234 = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v176 = v59;
  v233 = v59;
  v234 = v61;
  v167 = v61;
  v172 = *(swift_getOpaqueTypeMetadata2() - 8);
  __chkstk_darwin();
  v166 = &v143 - v62;
  v173 = v63;
  *&v64 = COERCE_DOUBLE(type metadata accessor for ModifiedContent());
  v203 = *(v64 - 8);
  v204 = *&v64;
  __chkstk_darwin();
  v186 = &v143 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v168 = &v143 - v66;
  __chkstk_darwin();
  v209 = &v143 - v67;
  static Axis.Set.horizontal.getter();
  v211 = v210;
  v212 = v32;
  v69 = v197;
  v68 = v198;
  v213 = v197;
  v214 = v198;
  v215 = v208;
  v216 = v202;
  v70 = v207;
  v217 = v207;
  ScrollView.init(_:showsIndicators:content:)();
  v71 = v205;
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  v72 = v196;
  Binding.projectedValue.getter();
  static UnitPoint.center.getter();
  v73 = v151;
  View.scrollPosition(_:anchor:)();
  sub_100B69168(v72);
  (*(v160 + 8))(v37, v35);
  v74 = static Edge.Set.horizontal.getter();
  v75 = v71;
  v76 = (v70 + *(v71 + 96));
  v77 = *v76;
  v78 = v76[1];
  v233 = v77;
  v234 = v78;
  sub_10010FC20(&qword_1011B39B0, &qword_100F046F8);
  State.wrappedValue.getter();
  v79 = v158;
  sub_100B65978(v74, COERCE_UNSIGNED_INT64(round(v225[0])), 0, v158, v150);
  (*(v161 + 8))(v73, v79);
  _s3__C6CGSizeVMa_1(0);
  v81 = v80;
  v82 = v179;
  v83 = v180;
  v84 = v75;
  (*(v180 + 16))(v179, v70, v75);
  v85 = v83;
  v86 = (*(v83 + 80) + 64) & ~*(v83 + 80);
  v87 = swift_allocObject();
  v88 = v199;
  v87[2] = v210;
  v87[3] = v88;
  v87[4] = v69;
  v87[5] = v68;
  v89 = v149;
  v90 = v202;
  v87[6] = v208;
  v87[7] = v90;
  v91 = v87 + v86;
  v92 = v182;
  (*(v85 + 32))(v91, v82, v84);
  v142 = sub_100B69334(&qword_1011B39B8, _s3__C6CGSizeVMa_1, &protocol conformance descriptor for CGSize);
  v93 = v159;
  v94 = v81;
  v95 = v157;
  v96 = v81;
  v97 = v201;
  sub_100B65D7C(v94, sub_100B65AB4, 0, sub_100B6923C, v87, v157, v96, v154, v142);

  (*(v163 + 8))(v97, v95);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v98 = v183;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v99 = v152;
  v100 = v200;
  View.scrollTargetBehavior<A>(_:)();
  (*(v185 + 8))(v98, v100);
  (*(v162 + 8))(v93, v99);
  static ScrollIndicatorVisibility.hidden.getter();
  sub_10010FC20(&qword_1011B39C0, &qword_100F04700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  LOBYTE(v98) = static Axis.Set.vertical.getter();
  *(inited + 32) = v98;
  v102 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v102;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v98)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v102)
  {
    Axis.Set.init(rawValue:)();
  }

  v103 = v205;
  v104 = v169;
  v105 = v178;
  View.scrollIndicators(_:axes:)();
  (*(v187 + 8))(v92, v188);
  (*(v177 + 8))(v89, v105);
  v106 = v165;
  v107 = v175;
  View.scrollClipDisabled(_:)();
  (*(v174 + 8))(v104, v107);
  sub_100B621B4();
  Array.count.getter();

  v109 = v166;
  v108 = v167;
  v110 = v176;
  View.scrollDisabled(_:)();
  (*(v170 + 8))(v106, v110);
  sub_100B62270(v103);
  static Alignment.center.getter();
  v233 = v110;
  v234 = v108;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v168;
  v113 = v173;
  View.frame(width:height:alignment:)();
  (*(v172 + 8))(v109, v113);
  *&v225[4] = v111;
  *&v225[5] = &protocol witness table for _FrameLayout;
  v114 = v204;
  v200 = swift_getWitnessTable();
  sub_100B5B86C();
  v115 = v112;
  v116 = v210;
  v201 = *(v203 + 8);
  v202 = v203 + 8;
  (v201)(v115, *&v114);
  sub_100B621B4();
  v117 = Array.count.getter();

  if (v117 < 2)
  {
    v133 = v192;
    (*(v189 + 56))(v192, 1, 1, v193);
    *&v225[2] = swift_getWitnessTable();
    *&v225[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
  }

  else
  {
    v118 = sub_100B62210();
    v120 = v119;
    v122 = v121;
    sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
    v123 = v196;
    Binding.projectedValue.getter();
    v124 = v144;
    *v144 = v118;
    v124[1] = v120;
    v124[2] = v122;
    v233 = v116;
    v234 = v197;
    v235 = v198;
    v236 = v208;
    v125 = type metadata accessor for PageControl(0, &v233);
    sub_100B68178(v123, v124 + *(v125 + 52));
    static Alignment.center.getter();
    v126 = v206;
    v127 = swift_getWitnessTable();
    v128 = v147;
    View.frame(width:height:alignment:)();
    (*(v146 + 8))(v124, v126);
    v218 = v127;
    v219 = &protocol witness table for _FrameLayout;
    v129 = v193;
    swift_getWitnessTable();
    v130 = v145;
    sub_100B5B86C();
    v131 = v189;
    v132 = *(v189 + 8);
    v132(v128, v129);
    sub_100B5B86C();
    v132(v130, v129);
    v133 = v192;
    (*(v131 + 32))(v192, v128, v129);
    (*(v131 + 56))(v133, 0, 1, v129);
  }

  v134 = v191;
  sub_100653A68(v133, v191);
  v135 = v190;
  v136 = *(v190 + 8);
  v137 = *&v194;
  v136(v133, v194);
  v138 = v204;
  v139 = v186;
  (*(v203 + 16))(v186, v209, COERCE_DOUBLE(*&v204));
  v233 = v139;
  (*(v135 + 16))(v133, v134, COERCE_DOUBLE(*&v137));
  v234 = v133;
  v225[0] = v138;
  v225[1] = v137;
  v223 = v200;
  v221 = swift_getWitnessTable();
  v222 = &protocol witness table for _FrameLayout;
  v220 = swift_getWitnessTable();
  v224 = swift_getWitnessTable();
  sub_100BB7D60(&v233, 2uLL, v225);
  v136(v134, *&v137);
  v140 = v201;
  (v201)(v209, *&v138);
  v136(v133, *&v137);
  return v140(v139, *&v138);
}

uint64_t sub_100B64950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a5;
  v44 = a4;
  v47 = a1;
  v48 = a8;
  type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin();
  v45 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Array();
  v43 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = a3;
  v57 = a7;
  swift_getOpaqueTypeMetadata2();
  v15 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v13;
  v57 = AssociatedTypeWitness;
  v58 = v15;
  v59 = WitnessTable;
  v60 = AssociatedConformanceWitness;
  v39 = type metadata accessor for ForEach();
  v56 = a3;
  v57 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = &protocol witness table for _FrameLayout;
  v62 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v18 = type metadata accessor for LazyHStack();
  v42 = *(v18 - 8);
  __chkstk_darwin();
  v36 = v35 - v19;
  v37 = swift_getWitnessTable();
  v56 = v18;
  v57 = v37;
  v40 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v35 - v23;
  v35[2] = static VerticalAlignment.center.getter();
  v25 = a2;
  v56 = a2;
  v57 = a3;
  v26 = a3;
  v27 = v44;
  v28 = v46;
  v58 = v44;
  v59 = v46;
  v29 = v43;
  v60 = v43;
  v61 = a7;
  v30 = type metadata accessor for CarouselView(0, &v56);
  v35[1] = *(v47 + *(v30 + 80));
  v49 = v25;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v53 = v29;
  v54 = a7;
  v55 = v47;
  sub_100B658F8();
  v31 = v36;
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v32 = v37;
  View.scrollTargetLayout(isEnabled:)();
  (*(v42 + 8))(v31, v18);
  v56 = v18;
  v57 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100B5B86C();
  v33 = *(v41 + 8);
  v33(v22, OpaqueTypeMetadata2);
  sub_100B5B86C();
  return (v33)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_100B64E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a4;
  v49 = a5;
  v47 = a1;
  v50 = a8;
  v55 = a2;
  v56 = a3;
  v39 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v41 = a7;
  v12 = type metadata accessor for CarouselView(0, &v55);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v40 = v37 - v14;
  v15 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  v55 = a3;
  v56 = a7;
  v42 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  swift_getOpaqueTypeMetadata2();
  v17 = type metadata accessor for ModifiedContent();
  v37[1] = v17;
  v45 = v15;
  WitnessTable = swift_getWitnessTable();
  v43 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v15;
  v56 = AssociatedTypeWitness;
  v57 = v17;
  v58 = WitnessTable;
  v59 = AssociatedConformanceWitness;
  v20 = type metadata accessor for ForEach();
  v46 = *(v20 - 8);
  __chkstk_darwin();
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = v37 - v23;
  v24 = v12;
  v25 = v47;
  v54 = sub_100B621B4();
  v26 = v40;
  (*(v13 + 16))(v40, v25, v24);
  v27 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = a2;
  v29 = v39;
  v31 = v48;
  v30 = v49;
  *(v28 + 3) = v39;
  *(v28 + 4) = v31;
  *(v28 + 5) = v30;
  *(v28 + 6) = a6;
  v32 = v41;
  *(v28 + 7) = v41;
  (*(v13 + 32))(&v28[v27], v26, v24);
  v55 = v29;
  v56 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = &protocol witness table for _FrameLayout;
  v33 = swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v51 = v33;
  swift_getWitnessTable();
  v34 = v38;
  sub_100B5B86C();
  v35 = *(v46 + 8);
  v35(v22, v20);
  sub_100B5B86C();
  return (v35)(v34, v20);
}

uint64_t sub_100B65270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v65 = a5;
  v66 = a6;
  v64 = a4;
  v71 = a7;
  v57 = a3;
  v59 = *(a3 - 8);
  v63 = *(v59 + 64);
  __chkstk_darwin();
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v10;
  v75 = v11;
  v12 = v11;
  v76 = v13;
  v77 = v14;
  v78 = v15;
  v79 = v16;
  v17 = v16;
  v55 = v16;
  v18 = type metadata accessor for CarouselView(0, &v74);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v51 - v21;
  v67 = *(v12 - 8);
  __chkstk_darwin();
  v52 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v12;
  v75 = v17;
  v68 = &opaque type descriptor for <<opaque return type of View.onTapGesture(count:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v54 = &v51 - v24;
  v60 = type metadata accessor for ModifiedContent();
  v70 = *(v60 - 8);
  __chkstk_darwin();
  v56 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v62 = &v51 - v27;
  v28 = v18;
  v51 = v18;
  v29 = *(v18 + 76);
  v53 = a2;
  (*(a2 + v29))(a1, v26);
  v30 = v22;
  (*(v19 + 16))(v22, a2, v28);
  v31 = v59;
  v32 = v58;
  v33 = v57;
  (*(v59 + 16))(v58, a1, v57);
  v34 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v35 = (v20 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v33;
  *(v36 + 3) = v12;
  v37 = v12;
  v38 = v65;
  *(v36 + 4) = v64;
  *(v36 + 5) = v38;
  v39 = v55;
  *(v36 + 6) = v66;
  *(v36 + 7) = v39;
  v40 = v30;
  v41 = v51;
  (*(v19 + 32))(&v36[v34], v40, v51);
  (*(v31 + 32))(&v36[v35], v32, v33);
  v42 = v54;
  v43 = v52;
  View.onTapGesture(count:perform:)();

  (*(v67 + 8))(v43, v37);
  sub_100B62270(v41);
  sub_100B62270(v41);
  static Alignment.center.getter();
  v74 = v37;
  v75 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v56;
  v46 = OpaqueTypeMetadata2;
  View.frame(width:height:alignment:)();
  (*(v69 + 8))(v42, v46);
  v72 = OpaqueTypeConformance2;
  v73 = &protocol witness table for _FrameLayout;
  v47 = v60;
  swift_getWitnessTable();
  v48 = v62;
  sub_100B5B86C();
  v49 = *(v70 + 8);
  v49(v45, v47);
  sub_100B5B86C();
  return (v49)(v48, v47);
}

double sub_100B65850(uint64_t a1, char a2, __n128 *a3)
{
  if (a2)
  {
    static Animation.default.getter();
  }

  __chkstk_darwin();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_100B658F8()
{
  type metadata accessor for PinnedScrollableViews();
  sub_100B69334(&unk_1011B39D0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_100B65978(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for SafeAreaPaddingModifier();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0uLL;
  v11 = 0uLL;
  if ((a3 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v10 + 1) = v12;
    *(&v11 + 1) = v13;
  }

  v15[0] = v10;
  v15[1] = v11;
  v16 = a3 & 1;
  SafeAreaPaddingModifier.init(edges:insets:)();
  View.modifier<A>(_:)();
  return (*(v7 + 8))(v9, v6);
}

void sub_100B65AB4(void *a1@<X8>)
{
  GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_100B65AE0(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v15 = type metadata accessor for Optional();
  v30 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v29 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin();
  v29 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v31;
  v21 = type metadata accessor for CarouselView(0, &v33);
  v22 = (v20 - sub_100B62270(v21)) * 0.5;
  v23 = (a2 + v21[6].n128_i32[0]);
  v24 = *v23;
  v25 = v23[1];
  v33 = *v23;
  v34 = v25;
  sub_10010FC20(&qword_1011B39B0, &qword_100F046F8);
  State.wrappedValue.getter();
  if (v32 != v22)
  {
    v32 = v22;
    v33 = v24;
    v34 = v25;
    State.wrappedValue.setter();
  }

  type metadata accessor for State();
  State.wrappedValue.getter();
  if ((*(v18 + 48))(v17, 1, a3) == 1)
  {
    return (*(v30 + 8))(v17, v15);
  }

  v27 = v29;
  (*(v18 + 32))(v29, v17, a3);
  v28 = sub_100B65850(v27, 0, v21);
  return (*(v18 + 8))(v27, a3, v28);
}

double sub_100B65D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _GeometryActionModifier.init(value:action:)();
  type metadata accessor for _GeometryActionModifier();
  View.modifier<A>(_:)();

  return result;
}

void sub_100B65E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7)
{
  v34 = a5;
  v35 = a7;
  v33 = a4;
  v36 = a1;
  v10 = type metadata accessor for Optional();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin();
  v32 = &v27 - v11;
  v31 = *(a2 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ScrollPosition();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v27 - v20;
  v37[0] = a2;
  v37[1] = a3;
  v37[2] = v33;
  v37[3] = v34;
  v37[4] = a6;
  v37[5] = v35;
  v35 = type metadata accessor for CarouselView(0, v37);
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  Binding.wrappedValue.getter();
  swift_getAssociatedConformanceWitness();
  ScrollPosition.viewID<A>(type:)();
  (*(v14 + 8))(v16, v13);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    v22 = v18;
    v37[0] = sub_100B621B4();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v23 = v32;
    Collection.first.getter();
    v24 = v31;
    if ((*(v31 + 48))(v23, 1, a2) == 1)
    {
      (*(v19 + 8))(v21, v22);
      (*(v29 + 8))(v23, v30);
    }

    else
    {
      v25 = v28;
      (*(v24 + 32))(v28, v23, a2);

      v26 = sub_100B65850(v25, 0, v35);
      (*(v24 + 8))(v25, a2, v26);
      (*(v19 + 8))(v21, v22);
    }
  }

  else
  {
    (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_100B662C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a6;
  v52 = a7;
  v50 = a5;
  v54 = a3;
  v11 = type metadata accessor for Optional();
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin();
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v40 - v13;
  v47 = *(a4 - 8);
  __chkstk_darwin();
  v53 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v40 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v22 = &v40 - v21;
  swift_getAssociatedConformanceWitness();
  ScrollPosition.viewID<A>(type:)();
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v17 + 8))(v19, v16);
  }

  (*(v20 + 32))(v22, v19, AssociatedTypeWitness);
  v24 = a8;
  v25 = v50;
  v56 = a4;
  v57 = v50;
  v43 = v20;
  v44 = v22;
  v27 = v51;
  v26 = v52;
  v58 = v51;
  v59 = v52;
  v60 = v24;
  v61 = a9;
  v41 = type metadata accessor for CarouselView(0, &v56);
  v28 = sub_100B621B4();
  v42 = &v40;
  v55 = v28;
  __chkstk_darwin();
  *(&v40 - 8) = a4;
  *(&v40 - 7) = v25;
  *(&v40 - 6) = v27;
  *(&v40 - 5) = v26;
  v29 = v44;
  *(&v40 - 4) = v24;
  *(&v40 - 3) = a9;
  *(&v40 - 2) = v29;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (v57 == 1)
  {
    return (*(v43 + 8))(v29, AssociatedTypeWitness);
  }

  v30 = v56;
  v31 = v41;
  v32 = v54;
  sub_100B621B4();
  v33 = v53;
  v52 = v30;
  Array.subscript.getter();

  v34 = v47;
  v35 = v45;
  (*(v47 + 16))(v45, v33, a4);
  (*(v34 + 56))(v35, 0, 1, a4);
  v37 = v48;
  v36 = v49;
  (*(v48 + 16))(v46, v35, v49);
  type metadata accessor for State();
  State.wrappedValue.setter();
  (*(v37 + 8))(v35, v36);
  v38 = (v32 + *(v31 + 88));
  v39 = v53;
  if (*v38)
  {
    (*v38)(v52, v53);
  }

  (*(v34 + 8))(v39, a4);
  return (*(v43 + 8))(v44, AssociatedTypeWitness);
}

uint64_t sub_100B66830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t sub_100B66978(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a7;
  v21 = a9;
  type metadata accessor for ScrollPosition();
  __chkstk_darwin();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = v19 - v14;
  dispatch thunk of Identifiable.id.getter();
  static UnitPoint.center.getter();
  v19[1] = v17;
  v19[2] = v16;
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = v20;
  v23[4] = a8;
  v23[5] = v21;
  type metadata accessor for CarouselView(0, v23);
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  Binding.wrappedValue.getter();
  swift_getAssociatedConformanceWitness();
  ScrollPosition.scrollTo<A>(id:anchor:)();
  (*(v22 + 8))(v15, AssociatedTypeWitness);
  return Binding.wrappedValue.setter();
}

void *sub_100B66B78(uint64_t a1)
{
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  __chkstk_darwin();
  v3 = v12 - v2;
  v4 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v4;
  type metadata accessor for PageControl.Coordinator(0, v12);
  v5 = sub_100B62210();
  v7 = v6;
  v9 = v8;
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  Binding.projectedValue.getter();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v7;
  v10[4] = v9;
  sub_100B68178(v3, v10 + qword_1011B38A8);
  return v10;
}

void *sub_100B66C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_100B68178(a4, v8 + qword_1011B38A8);
  return v8;
}

uint64_t sub_100B66D00(void *a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for ScrollPosition();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin();
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 16);
  v57 = *(a4 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for Optional();
  v47 = *(v48 - 8);
  __chkstk_darwin();
  v53 = &v46 - v12;
  v60 = AssociatedTypeWitness;
  v59 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v49 = &v46 - v13;
  v51 = *(v10 - 8);
  __chkstk_darwin();
  v66 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = type metadata accessor for Optional();
  v50 = *(v63 - 8);
  __chkstk_darwin();
  v62 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v46 - v16;
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  __chkstk_darwin();
  v19 = &v46 - v18;
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  v20 = v69;
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  Binding.projectedValue.getter();
  v21 = qword_1011B38A8;
  swift_beginAccess();
  v52 = v20;
  sub_100B68F08(v19, v20 + v21);
  swift_endAccess();
  v22 = [a1 numberOfPages];
  sub_100B621B4();
  v23 = Array.count.getter();

  if (v22 != v23)
  {
    sub_100B621B4();
    v24 = Array.count.getter();

    [a1 setNumberOfPages:v24];
  }

  v61 = a1;
  v65 = a4;
  v58 = v5;
  v69 = sub_100B621B4();
  v25 = v10;
  v26 = type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.enumerated()();

  v67 = v68;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v46 = v26;
  type metadata accessor for EnumeratedSequence.Iterator();
  v27 = (v50 + 32);
  v28 = TupleTypeMetadata2;
  v29 = (v51 + 32);
  v30 = (v51 + 8);
  while (1)
  {
    v31 = v62;
    EnumeratedSequence.Iterator.next()();
    (*v27)(v17, v31, v63);
    if ((*(*(v28 - 8) + 48))(v17, 1, v28) == 1)
    {
      break;
    }

    v32 = *v17;
    (*v29)(v66, &v17[*(v28 + 48)], v25);
    v33 = (*(*(v65 + 24) + 8))(v25);
    if (v33)
    {
      v34 = v33;
      [v61 setIndicatorImage:v33 forPage:v32];
    }

    (*v30)(v66, v25);
    v28 = TupleTypeMetadata2;
  }

  v35 = v65;
  sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  v36 = v54;
  Binding.wrappedValue.getter();
  v37 = v57;
  v38 = v25;
  v39 = v60;
  swift_getAssociatedConformanceWitness();
  v40 = v53;
  ScrollPosition.viewID<A>(type:)();
  (*(v55 + 8))(v36, v56);
  v41 = v59;
  if ((*(v59 + 48))(v40, 1, v39) == 1)
  {

    return (*(v47 + 8))(v40, v48);
  }

  else
  {
    v43 = v49;
    (*(v41 + 32))(v49, v40, v39);
    v68 = sub_100B621B4();
    __chkstk_darwin();
    *(&v46 - 6) = v38;
    *(&v46 - 5) = *(v35 + 24);
    *(&v46 - 3) = v37;
    *(&v46 - 2) = v43;
    swift_getWitnessTable();
    Collection.firstIndex(where:)();

    if (v70 != 1)
    {
      v44 = v69;
      v45 = v61;
      if ([v61 currentPage] != v44)
      {
        [v45 setCurrentPage:v44];
      }
    }

    return (*(v41 + 8))(v43, v39);
  }
}

uint64_t sub_100B6756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v12 - v8;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

void *sub_100B676B4(void *a1)
{
  v2 = v1;
  v56 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v48 = &v42 - v5;
  v6 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v51 = &v42 - v8;
  v9 = type metadata accessor for ScrollPosition();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin();
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10010FC20(&qword_1011B37E0, &qword_100F044F0);
  __chkstk_darwin();
  v53 = &v42 - v11;
  v60 = *(v6 - 8);
  __chkstk_darwin();
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v42 - v13;
  __chkstk_darwin();
  v58 = &v42 - v15;
  v59 = type metadata accessor for Binding();
  v52 = *(v59 - 8);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v57 = &v42 - v17;
  v18 = [a1 currentPage];
  v64 = *(v2 + 16);
  v65 = *(v2 + 24);
  type metadata accessor for Array();
  type metadata accessor for Binding();
  swift_getWitnessTable();
  result = Binding<A>.indices.getter();
  if (v18 >= v62 && v18 < v63)
  {
    v64 = *(v2 + 16);
    v65 = *(v2 + 24);
    v62 = v18;
    v45 = TupleTypeMetadata2;
    Binding<A>.subscript.getter();
    v20 = qword_1011B38A8;
    swift_beginAccess();
    v43 = v20;
    v21 = v2 + v20;
    v22 = v53;
    sub_100B690F8(v21, v53);
    v23 = v55;
    Binding.wrappedValue.getter();
    sub_100B69168(v22);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    ScrollPosition.viewID<A>(type:)();
    (*(v49 + 8))(v23, v50);
    Binding<A>.id.getter();
    v24 = v61;
    (*(v61 + 56))(v14, 0, 1, AssociatedTypeWitness);
    v25 = *(v45 + 48);
    v26 = v60;
    v27 = *(v60 + 16);
    v28 = v51;
    v27();
    v50 = v25;
    (v27)(&v28[v25], v14, v6);
    v29 = *(v24 + 48);
    if (v29(v28, 1, AssociatedTypeWitness) == 1)
    {
      v30 = *(v26 + 8);
      v30(v14, v6);
      if (v29(&v28[v50], 1, AssociatedTypeWitness) == 1)
      {
        v30(v28, v6);
LABEL_11:
        v30(v58, v6);
        return (*(v52 + 8))(v57, v59);
      }
    }

    else
    {
      v31 = v47;
      (v27)(v47, v28, v6);
      v32 = v50;
      if (v29(&v28[v50], 1, AssociatedTypeWitness) != 1)
      {
        v37 = v61;
        v38 = &v28[v32];
        v39 = v48;
        (*(v61 + 32))(v48, v38, AssociatedTypeWitness);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = *(v37 + 8);
        v41(v39, AssociatedTypeWitness);
        v30 = *(v60 + 8);
        v30(v14, v6);
        v41(v47, AssociatedTypeWitness);
        v30(v28, v6);
        if (v40)
        {
          goto LABEL_11;
        }

LABEL_9:
        v33 = v53;
        sub_100B690F8(v2 + v43, v53);
        v34 = v48;
        v35 = v59;
        v36 = v57;
        Binding<A>.id.getter();
        Binding.wrappedValue.getter();
        ScrollPosition.scrollTo<A>(id:anchor:)();
        (*(v61 + 8))(v34, AssociatedTypeWitness);
        Binding.wrappedValue.setter();
        sub_100B69168(v33);
        v30(v58, v6);
        return (*(v52 + 8))(v36, v35);
      }

      v30 = *(v60 + 8);
      v30(v14, v6);
      (*(v61 + 8))(v31, AssociatedTypeWitness);
    }

    (*(v46 + 8))(v28, v45);
    goto LABEL_9;
  }

  return result;
}