uint64_t type metadata accessor for SeriesRoomHeaderView(uint64_t a1)
{
  result = qword_327410;
  if (!qword_327410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v15 = *v2;
  v6 = v15;
  v16 = v8;
  v17 = *(v2 + 32);
  v18 = v2[5];
  v19 = *(v2 + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = v15;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v2[3];
  *(v9 + 48) = *(v2 + 32);
  *(v9 + 49) = *(v2 + 33);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v7;
  *(v10 + 40) = v2[3];
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 49) = *(v2 + 33);
  v11 = sub_2EF0(&qword_3274A0, &qword_28C9F0);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(sub_2EF0(&qword_3274A8, &qword_28C9F8) + 36));
  *v12 = sub_238B50;
  v12[1] = v9;
  v12[2] = sub_238BB0;
  v12[3] = v10;
  sub_238C10(&v15, v14);

  sub_8198(&v16, v14, &qword_3222D0, &unk_28CA00);
  sub_8198(&v18, v14, &qword_3222D0, &unk_28CA00);
  sub_238C10(&v15, v14);

  sub_8198(&v16, v14, &qword_3222D0, &unk_28CA00);
  return sub_8198(&v18, v14, &qword_3222D0, &unk_28CA00);
}

uint64_t sub_237F60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(&qword_319B18, &qword_26DA40);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_11;
  }

  v11 = sub_2EF0(&qword_315D48, &qword_266E40);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[13];
    goto LABEL_11;
  }

  v12 = sub_2EF0(&qword_31A718, &qword_26F840);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[14];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_31A720, &qword_26F848);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[15];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[16]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v7 = v17;
      v8 = *(v17 - 8);
      v9 = a3[17];
      goto LABEL_11;
    }

    v18 = sub_261180();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[19];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_238240(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v16 = *(v10 + 56);

    return v16(a1 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_319B18, &qword_26DA40);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_315D48, &qword_266E40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = sub_2EF0(&qword_31A718, &qword_26F840);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_11;
  }

  result = sub_2EF0(&qword_31A720, &qword_26F848);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[15];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[16]) = (a2 - 1);
    return result;
  }

  v17 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[17];
    goto LABEL_11;
  }

  v18 = sub_261180();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[19];

  return v19(v20, a2, a2, v18);
}

void sub_23850C(uint64_t a1)
{
  sub_238960(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_2388FC(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_238898(319, &qword_31D638, &qword_31D640, qword_275B88, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_238960(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_238960(319, &qword_317910, &type metadata for CGFloat, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_2388FC(319, &qword_31A7C8, &type metadata accessor for LocalizerRequest, type metadata accessor for PlaceholderTextView.ContentType);
            if (v6 <= 0x3F)
            {
              sub_238898(319, &qword_31A7D0, &qword_316BA8, &unk_275850, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_2388FC(319, &qword_31A7D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_238898(319, &qword_31A7E0, &qword_31A7E8, &qword_26F970, type metadata accessor for PlaceholderTextView.ContentType);
                  if (v9 <= 0x3F)
                  {
                    sub_2388FC(319, &unk_31A7F0, type metadata accessor for TopLockupMetadataView.Footer, type metadata accessor for PlaceholderTextView.ContentType);
                    if (v10 <= 0x3F)
                    {
                      sub_238960(319, &qword_3195C0, &type metadata for CoverViewModel, &type metadata accessor for Array);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for SeriesQuickActionButtonViewModel(319);
                        if (v12 <= 0x3F)
                        {
                          sub_261180();
                          if (v13 <= 0x3F)
                          {
                            sub_16D28();
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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

void sub_238898(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2388FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238960(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2389B4()
{
  result = qword_327488;
  if (!qword_327488)
  {
    sub_2F9C(&qword_3273B0, &qword_28C830);
    sub_8E38(&qword_327490, &qword_327498, &qword_28C8B0, &protocol conformance descriptor for VStack<A>);
    sub_1392C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327488);
  }

  return result;
}

__n128 sub_238A6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_238A88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_238AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238B58()
{

  sub_3074(*(v0 + 40), *(v0 + 48));
  sub_3074(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_238C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_238D64@<X0>(_BYTE *a1@<X8>)
{
  sub_6E2E0();
  result = sub_261CA0();
  *a1 = v3;
  return result;
}

unint64_t sub_238DBC()
{
  result = qword_3275A0;
  if (!qword_3275A0)
  {
    sub_2F9C(&qword_327590, &qword_28CC68);
    sub_238E74();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275A0);
  }

  return result;
}

unint64_t sub_238E74()
{
  result = qword_3275A8;
  if (!qword_3275A8)
  {
    sub_2F9C(&qword_3275B0, &qword_28CCB0);
    sub_238F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275A8);
  }

  return result;
}

unint64_t sub_238F00()
{
  result = qword_3275B8;
  if (!qword_3275B8)
  {
    sub_2F9C(&qword_3275C0, &qword_28CCB8);
    sub_8E38(&qword_31C048, &qword_31C050, &qword_28CCC0, &protocol conformance descriptor for CoverStackView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275B8);
  }

  return result;
}

uint64_t sub_238FB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_8E38(&qword_3275F8, &qword_327600, &qword_28CCD0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_239068()
{
  result = qword_3275D0;
  if (!qword_3275D0)
  {
    sub_2F9C(&qword_3275D8, &qword_28CCC8);
    sub_2390F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275D0);
  }

  return result;
}

unint64_t sub_2390F4()
{
  result = qword_3275E0;
  if (!qword_3275E0)
  {
    sub_2F9C(&qword_3274F8, &qword_28CA58);
    sub_2391B0(&qword_3275E8, type metadata accessor for TopLockupMetadataView, &protocol conformance descriptor for TopLockupMetadataView);
    sub_2391F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275E0);
  }

  return result;
}

uint64_t sub_2391B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2391F8()
{
  result = qword_3275F0;
  if (!qword_3275F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3275F0);
  }

  return result;
}

unint64_t sub_23924C()
{
  result = qword_327610;
  if (!qword_327610)
  {
    sub_2F9C(&qword_327560, &qword_28CC38);
    sub_8E38(&qword_327618, &qword_3274B8, &qword_28CA18, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327610);
  }

  return result;
}

unint64_t sub_239308()
{
  result = qword_327630;
  if (!qword_327630)
  {
    sub_2F9C(&qword_3274A8, &qword_28C9F8);
    sub_8E38(&qword_327638, &qword_3274A0, &qword_28C9F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_3175F0, &qword_3175F8, &qword_288A00, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327630);
  }

  return result;
}

unsigned __int8 *static YearInReviewColors.primary.getter()
{
  result = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!result)
  {

    return sub_262FE0();
  }

  return result;
}

uint64_t GridItemViewModel.init(metadataModel:infobarModel:showOrdinal:assetInfo:cardInfo:isAnODPRecommendation:supportsSuggestionContextMenu:analyticsAttributes:suggestionData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *(a9 + 80) = 0;
  *(a9 + 64) = 0u;
  *(a9 + 48) = 0u;
  v17 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v17;
  *(a9 + 25) = *(a1 + 25);
  sub_239544(a2, a9 + 48);
  *(a9 + 88) = a3;
  sub_F7CC(a4, a9 + 96);
  v18 = type metadata accessor for GridItemViewModel(0);
  sub_22148(a5, a9 + v18[8], &qword_31A480, &qword_273520);
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  sub_239600(a8, a9 + v18[11]);
  return sub_22148(a10, a9 + v18[12], &qword_327640, &unk_28CD30);
}

uint64_t sub_239544(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316D48, &unk_28CD20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for GridItemViewModel(uint64_t a1)
{
  result = qword_3276A0;
  if (!qword_3276A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_239600(uint64_t a1, uint64_t a2)
{
  v4 = sub_2603F0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t GridItemViewModel.analyticsAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GridItemViewModel(0) + 44);

  return sub_2397F4(v3, a1);
}

uint64_t sub_2397F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2603F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_239914(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[15];
  v4 = v1[16];
  sub_2E18(v1 + 12, v3);
  return a1(v3, v4);
}

uint64_t GridItemViewModel.isAudiobook.getter()
{
  v1 = sub_2EF0(&qword_31AEE0, &qword_270378);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-v2 - 8];
  sub_30CC(v0 + 96, v8);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v4 = sub_260790();
  v5 = swift_dynamicCast();
  (*(*(v4 - 8) + 56))(v3, v5 ^ 1, 1, v4);
  sub_8E80(v3, &qword_31AEE0, &qword_270378);
  return v5;
}

uint64_t GridItemViewModel.isSG.getter()
{
  v1 = sub_2EF0(&qword_31AEE0, &qword_270378);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2 - 8];
  sub_30CC(v0 + 96, v11);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v4 = sub_260790();
  v5 = swift_dynamicCast();
  v6 = *(*(v4 - 8) + 56);
  if (v5)
  {
    v7 = *(v4 - 8);
    v6(v3, 0, 1, v4);
    v8 = sub_260780();
    (*(v7 + 8))(v3, v4);
  }

  else
  {
    v6(v3, 1, 1, v4);
    sub_8E80(v3, &qword_31AEE0, &qword_270378);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t GridItemViewModel.isPurchased.getter()
{
  sub_2E18((v0 + 96), *(v0 + 120));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_264A60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - v4;
  sub_2606D0();
  v6 = *(AssociatedTypeWitness - 8);
  if ((*(v6 + 48))(v5, 1, AssociatedTypeWitness) == 1)
  {
    (*(v3 + 8))(v5, v2);
    return 2;
  }

  else
  {
    v10[3] = AssociatedTypeWitness;
    v10[4] = swift_getAssociatedConformanceWitness();
    sub_10934(v10);
    (*(v6 + 32))();
    v7 = sub_2607F0() & 1;
    sub_3080(v10);
  }

  return v7;
}

BOOL GridItemViewModel.shouldObserveLibraryAssetState.getter()
{
  sub_8198(v0 + 48, v3, &qword_316D48, &unk_28CD20);
  v1 = v4 != 0;
  sub_8E80(v3, &qword_316D48, &unk_28CD20);
  return v1;
}

uint64_t sub_239E5C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2EF0(&qword_31A480, &qword_273520);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2603F0();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = sub_2EF0(&qword_327640, &unk_28CD30);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_239FF4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
    return result;
  }

  v8 = sub_2EF0(&qword_31A480, &qword_273520);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2603F0();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = sub_2EF0(&qword_327640, &unk_28CD30);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_23A178(uint64_t a1)
{
  sub_23A29C(319);
  if (v1 <= 0x3F)
  {
    sub_44744();
    if (v2 <= 0x3F)
    {
      sub_23A300(319, &qword_31C500, type metadata accessor for CardInfo);
      if (v3 <= 0x3F)
      {
        sub_2603F0();
        if (v4 <= 0x3F)
        {
          sub_23A300(319, &unk_3276C0, &type metadata accessor for SuggestionData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23A29C(uint64_t a1)
{
  if (!qword_3276B0)
  {
    sub_2F9C(&qword_3276B8, &qword_28CDA8);
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_3276B0);
    }
  }
}

void sub_23A300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264A60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23A354()
{
  v1 = 0x6C6C616D5378;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x656772616CLL;
  }

  if (*v0)
  {
    v1 = 0x6C6C616D73;
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

uint64_t sub_23A3BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B42C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A3E4(uint64_t a1)
{
  v2 = sub_23AC98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A420(uint64_t a1)
{
  v2 = sub_23AC98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_23A45C(uint64_t a1)
{
  v2 = sub_23ACEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A498(uint64_t a1)
{
  v2 = sub_23ACEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_23A4D4(uint64_t a1)
{
  v2 = sub_23AD40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A510(uint64_t a1)
{
  v2 = sub_23AD40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_23A54C(uint64_t a1)
{
  v2 = sub_23AD94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A588(uint64_t a1)
{
  v2 = sub_23AD94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_23A5C4(uint64_t a1)
{
  v2 = sub_23ADE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_23A600(uint64_t a1)
{
  v2 = sub_23ADE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemMetadata.TitleLockupSize.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = sub_2EF0(&qword_327710, &qword_28CDB0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v34 - v3;
  v42 = sub_2EF0(&qword_327718, &qword_28CDB8);
  v38 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = &v34 - v4;
  v40 = sub_2EF0(&qword_327720, &qword_28CDC0);
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = &v34 - v5;
  v7 = sub_2EF0(&qword_327728, &qword_28CDC8);
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_2EF0(&qword_327730, &unk_28CDD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  sub_2E18(a1, v14);
  sub_23AC98();
  v15 = v46;
  sub_265120();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_264E00();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_6ECC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_264C10();
      swift_allocError();
      v28 = v27;
      sub_2EF0(&qword_315CD0, &qword_266E00);
      *v28 = &type metadata for ListItemMetadata.TitleLockupSize;
      sub_264D60();
      sub_264BF0();
      (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_3080(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_23AD94();
        v32 = v35;
        sub_264D50();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_23ADE8();
        v25 = v35;
        sub_264D50();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return sub_3080(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_23AD40();
      v31 = v35;
      sub_264D50();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_23ACEC();
      v33 = v35;
      sub_264D50();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return sub_3080(v47);
}

unint64_t sub_23AC98()
{
  result = qword_327738;
  if (!qword_327738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327738);
  }

  return result;
}

unint64_t sub_23ACEC()
{
  result = qword_327740;
  if (!qword_327740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327740);
  }

  return result;
}

unint64_t sub_23AD40()
{
  result = qword_327748;
  if (!qword_327748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327748);
  }

  return result;
}

unint64_t sub_23AD94()
{
  result = qword_327750;
  if (!qword_327750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327750);
  }

  return result;
}

unint64_t sub_23ADE8()
{
  result = qword_327758;
  if (!qword_327758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327758);
  }

  return result;
}

unint64_t sub_23AE40()
{
  result = qword_327760;
  if (!qword_327760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327760);
  }

  return result;
}

unint64_t sub_23AE94(uint64_t a1)
{
  result = sub_C7198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B068()
{
  result = qword_327768;
  if (!qword_327768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327768);
  }

  return result;
}

unint64_t sub_23B0C0()
{
  result = qword_327770;
  if (!qword_327770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327770);
  }

  return result;
}

unint64_t sub_23B118()
{
  result = qword_327778;
  if (!qword_327778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327778);
  }

  return result;
}

unint64_t sub_23B170()
{
  result = qword_327780;
  if (!qword_327780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327780);
  }

  return result;
}

unint64_t sub_23B1C8()
{
  result = qword_327788;
  if (!qword_327788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327788);
  }

  return result;
}

unint64_t sub_23B220()
{
  result = qword_327790;
  if (!qword_327790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327790);
  }

  return result;
}

unint64_t sub_23B278()
{
  result = qword_327798;
  if (!qword_327798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327798);
  }

  return result;
}

unint64_t sub_23B2D0()
{
  result = qword_3277A0;
  if (!qword_3277A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3277A0);
  }

  return result;
}

unint64_t sub_23B328()
{
  result = qword_3277A8;
  if (!qword_3277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3277A8);
  }

  return result;
}

unint64_t sub_23B380()
{
  result = qword_3277B0;
  if (!qword_3277B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3277B0);
  }

  return result;
}

unint64_t sub_23B3D8()
{
  result = qword_3277B8;
  if (!qword_3277B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3277B8);
  }

  return result;
}

uint64_t sub_23B42C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C616D5378 && a2 == 0xE600000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t BooksOpaqueIntentModel.params.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_263840();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BooksOpaqueIntentModel.kind.getter(uint64_t a1)
{
  v1 = sub_23C258(a1);

  return v1;
}

BOOL sub_23B6B0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_301AE0;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  return v4 != 0;
}

uint64_t sub_23B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_23B76C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_23B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_23B848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL sub_23B8B8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B6B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_23B920@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B6B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B950@<X0>(_BYTE *a1@<X8>)
{
  result = static MResourceDecoder.MResourceDecoderError.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_23B9D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t BooksOpaqueIntentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v29 = a2;
  type metadata accessor for BooksOpaqueIntentModel.CodingKeys(255, a3, a4, a5);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_264E20();
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v32 = &v26 - v9;
  v10 = sub_263840();
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BooksOpaqueIntentModel(0, a3, v13, v14);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  sub_30CC(a1, v33);
  sub_263810();
  if (v5)
  {
    return sub_3080(a1);
  }

  v27 = v16;
  v28 = v8;
  (*(v34 + 32))(v18, v12, v10);
  sub_2E18(a1, a1[3]);
  sub_265120();
  v20 = v28;
  v21 = sub_264DC0();
  v23 = v22;
  (*(v30 + 8))(v32, v20);
  v24 = &v18[*(v15 + 28)];
  *v24 = v21;
  v24[1] = v23;
  v25 = v27;
  (*(v27 + 16))(v29, v18, v15);
  sub_3080(a1);
  return (*(v25 + 8))(v18, v15);
}

uint64_t static BooksOpaqueIntentModel.== infix(_:_:)()
{
  sub_263830();
  sub_263830();
  if (v19 | v17)
  {
    sub_1A52CC(v18, &v11);
    if (v12)
    {
      sub_FBD8(&v11, v15);
      sub_1A52CC(v16, &v11);
      if (v12)
      {
        sub_FBD8(&v11, v14);
        sub_A7C18(v15, v10);
        sub_2EF0(&qword_3277C0, &qword_28D358);
        if (swift_dynamicCast())
        {
          sub_F7CC(v8, &v11);
          v1 = v12;
          v2 = v13;
          v3 = sub_2E18(&v11, v12);
          v0 = sub_23BFC0(v3, v14, v1, &type metadata for Any + 8, v2);
          sub_3080(v14);
          sub_3080(v15);
          sub_8E80(v18, &qword_316200, &qword_267FD0);
          sub_3080(&v11);
          goto LABEL_11;
        }

        v9 = 0;
        memset(v8, 0, sizeof(v8));
        sub_3080(v14);
        sub_3080(v15);
        v4 = &unk_3277C8;
        v5 = &unk_28D360;
        v6 = v8;
LABEL_10:
        sub_8E80(v6, v4, v5);
        sub_8E80(v18, &qword_316200, &qword_267FD0);
        v0 = 0;
        goto LABEL_11;
      }

      sub_3080(v15);
    }

    v4 = &qword_316200;
    v5 = &qword_267FD0;
    v6 = &v11;
    goto LABEL_10;
  }

  sub_8E80(v18, &qword_316200, &qword_267FD0);
  v0 = 1;
LABEL_11:
  sub_8E80(v16, &qword_316200, &qword_267FD0);
  return v0 & 1;
}

uint64_t sub_23BFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a5;
  v8 = sub_264A60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - v10;
  __chkstk_darwin(v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, a2, a4, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, a3);
    (*(v15 + 32))(v19, v11, a3);
    v23 = sub_264390();
    (*(v15 + 8))(v19, a3);
  }

  else
  {
    v22(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_23C298(uint64_t a1)
{
  result = sub_263840();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_263840();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23C3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_263840();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23C504(uint64_t a1)
{
  sub_23CC88(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_23CC88(319, &qword_31A7B8, type metadata accessor for FontConstants);
    if (v2 <= 0x3F)
    {
      sub_23CC88(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C610(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_261180() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_261690() - 8);
  v9 = *(v8 + 80);
  v10 = (*(v8 + 64) + ((v9 + 2) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v10 != 0 && v10 < 0xFFFFFFFFFFFFFFF8)
  {
    v11 = v10 + 8;
  }

  else
  {
    v11 = 8;
  }

  v12 = v10 + 11;
  v13 = v10 + 11 > 8;
  v14 = *(*(a3 + 16) - 8);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 8;
  }

  v16 = *(v14 + 84);
  v17 = *(v14 + 80);
  v18 = *(v14 + 64);
  if (v16 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v9 | 7;
  v21 = v7 + v20 + 1;
  v22 = v11 | 1;
  v23 = v15 + v17 + 1;
  if (a2 <= v19)
  {
    goto LABEL_37;
  }

  v24 = ((v23 + ((v22 + v20 + (v21 & ~v20)) & ~v20)) & ~v17) + v18;
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((a2 - v19 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 < 2)
    {
LABEL_37:
      if (v16 > 0xFE)
      {
        v33 = *(*(*(a3 + 16) - 8) + 48);

        return v33((v23 + ((((a1 + v21) & ~v20) + v20 + v22) & ~v20)) & ~v17);
      }

      else
      {
        v32 = *(a1 + v7);
        if (v32 >= 2)
        {
          return (v32 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_37;
  }

LABEL_24:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = v24;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v19 + (v31 | v29) + 1;
}

void sub_23C8C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_261180() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_261690() - 8);
  v11 = *(v10 + 80);
  v12 = (*(v10 + 64) + ((v11 + 2) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v12 != 0 && v12 < 0xFFFFFFFFFFFFFFF8)
  {
    v13 = v12 + 8;
  }

  else
  {
    v13 = 8;
  }

  v14 = v12 + 11;
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a4 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = *(v16 + 80);
  if (v17 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = v9 + 1;
  v21 = v11 | 7;
  v22 = (v11 | 7) + v9 + 1;
  v23 = v22 & ~(v11 | 7);
  v24 = v13 | 1;
  v25 = ((v13 | 1) + v21 + v23) & ~v21;
  v26 = v15 + v18 + 1;
  v27 = ((v26 + v25) & ~v18) + *(v16 + 64);
  if (a3 <= v19)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v19 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v19 < a2)
  {
    v29 = ~v19 + a2;
    if (v27 < 4)
    {
      v30 = (v29 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v29 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v28 > 1)
            {
LABEL_64:
              if (v28 == 2)
              {
                *&a1[v27] = v30;
              }

              else
              {
                *&a1[v27] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v28 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v28 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v28)
    {
      a1[v27] = v30;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v28)
  {
    goto LABEL_39;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v17 > 0xFE)
  {
    v34 = *(v16 + 56);

    v34((v26 + (((&a1[v22] & ~v21) + v21 + v24) & ~v21)) & ~v18, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v20 <= 3)
    {
      v35 = ~(-1 << (8 * v20));
    }

    else
    {
      v35 = -1;
    }

    if (v9 != -1)
    {
      v36 = v35 & (a2 - 255);
      if (v20 <= 3)
      {
        v37 = v9 + 1;
      }

      else
      {
        v37 = 4;
      }

      bzero(a1, v20);
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          *a1 = v36;
          a1[2] = BYTE2(v36);
        }

        else
        {
          *a1 = v36;
        }
      }

      else if (v37 == 1)
      {
        *a1 = v36;
      }

      else
      {
        *a1 = v36;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_23CC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23CD20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v2 = type metadata accessor for SizeConstants.Environment(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262730();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v36 - v10;
  v11 = sub_2EF0(&qword_31B578, &qword_270C30);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v21 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v21 - 8);
  v23 = (&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_261E60();
  sub_40CA0(v23);
  sub_23E87C(v23, v20, type metadata accessor for SizeConstants.Environment);
  v24 = v40;
  (*(v6 + 104))(v40, enum case for Font.TextStyle.body(_:), v5);
  sub_1BE868(v20, v17, type metadata accessor for SizeConstants.Spacing);
  (*(v6 + 16))(v8, v24, v5);
  sub_1BE868(v17, v14, type metadata accessor for SizeConstants.Spacing);
  v25 = v38;
  sub_1BE868(v17, v38, type metadata accessor for SizeConstants.Environment);
  v26 = *(v3 + 32);
  v27 = v25;
  v28 = sub_1CF30(v8, v25 + v26);
  v29 = *(v6 + 8);
  v29(v8, v5);
  sub_23E8E4(v17, type metadata accessor for SizeConstants.Spacing);
  v30 = sub_261690();
  (*(*(v30 - 8) + 8))(v27 + v26, v30);
  v31 = 1.0;
  if ((*&v28 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v31 = v28;
  }

  if ((~*&v28 & 0x7FF0000000000000) != 0)
  {
    v31 = v28;
  }

  *&v14[*(v12 + 44)] = v31;
  v29(v40, v5);
  sub_23E8E4(v20, type metadata accessor for SizeConstants.Spacing);
  v32 = sub_21FA68(2.0);
  sub_8E80(v14, &qword_31B578, &qword_270C30);
  v33 = v39;
  *v39 = v36;
  *(v33 + 1) = v32;
  *(v33 + 16) = 0;
  sub_2EF0(&qword_327950, &unk_28D698);
  return sub_23D174(v41, *(v37 + 16), *(v37 + 24), v34);
}

uint64_t sub_23D174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for GridItemMetadataTitleLockupView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_2EF0(&qword_327958, &qword_28D6A8);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_327960, &qword_327958, &qword_28D6A8, &protocol conformance descriptor for TupleView<A>);
  sub_76AD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_76AD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_23D3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_2EF0(&qword_327968, &qword_28D6B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_2EF0(&qword_327970, &qword_28D6B8);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  v20 = type metadata accessor for GridItemMetadataTitleLockupView(0, a2, a3, v19);
  sub_23D608(a1, v20, v18);
  sub_23DD34(a1, v20, v12);
  sub_8198(v18, v15, &qword_327970, &qword_28D6B8);
  sub_8198(v12, v9, &qword_327968, &qword_28D6B0);
  v21 = v25;
  sub_8198(v15, v25, &qword_327970, &qword_28D6B8);
  v22 = sub_2EF0(&qword_327978, &unk_28D6C0);
  sub_8198(v9, v21 + *(v22 + 48), &qword_327968, &qword_28D6B0);
  sub_8E80(v12, &qword_327968, &qword_28D6B0);
  sub_8E80(v18, &qword_327970, &qword_28D6B8);
  sub_8E80(v9, &qword_327968, &qword_28D6B0);
  return sub_8E80(v15, &qword_327970, &qword_28D6B8);
}

uint64_t sub_23D608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v59 = a3;
  v4 = sub_263EB0();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_263EE0();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v60 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v8 - 8);
  v58 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v10 - 8);
  v12 = &v51[-v11];
  v13 = sub_262730();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for FontConstants.GridItem(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v51[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for FontConstants(0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v51[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = *(a2 + 44);
  v24 = *(a2 + 16);
  v54 = *(a2 + 24);
  v56 = v24;
  v55 = (*(v54 + 32))(v55, v21);
  v53 = v25;
  v52 = v26;
  sub_40D40(v23);
  sub_23E87C(v23, v19, type metadata accessor for FontConstants.Environment);
  (*(v14 + 104))(v16, enum case for Font.TextStyle.subheadline(_:), v13);
  v27 = sub_2625C0();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  sub_262680();
  sub_8E80(v12, &qword_318458, &unk_26B270);
  (*(v14 + 8))(v16, v13);
  sub_2625A0();

  sub_23E8E4(v19, type metadata accessor for FontConstants.GridItem);
  LOBYTE(v14) = v52;
  v28 = v55;
  v29 = v53;
  v30 = sub_262840();
  v32 = v31;
  LOBYTE(a2) = v33;
  sub_39DBC(v28, v29, v14 & 1);

  v34 = v58;
  sub_404B8(v58);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_23E8E4(v34, type metadata accessor for ColorConstants);
  v35 = sub_2627E0();
  v37 = v36;
  LOBYTE(v14) = v38;
  v40 = v39;
  v58 = v39;
  sub_39DBC(v30, v32, a2 & 1);

  v41 = (*(v54 + 48))(v56);
  KeyPath = swift_getKeyPath();
  v68 = v35;
  v69 = v37;
  LOBYTE(v30) = v14 & 1;
  v70 = v14 & 1;
  v71 = v40;
  v72 = KeyPath;
  v73 = v41;
  v74 = 0;
  v44 = v62;
  v43 = v63;
  v45 = v61;
  (*(v62 + 104))(v61, enum case for AutomationSemantics.Subcomponent.title(_:), v63);
  memset(v67, 0, sizeof(v67));
  memset(v66, 0, sizeof(v66));
  v46 = v60;
  sub_263EC0();
  sub_8E80(v66, &qword_316200, &qword_267FD0);
  sub_8E80(v67, &qword_316200, &qword_267FD0);
  (*(v44 + 8))(v45, v43);
  sub_2EF0(&qword_3189D8, &unk_27CEE0);
  sub_58070();
  v47 = v59;
  sub_262930();
  (*(v64 + 8))(v46, v65);
  sub_39DBC(v35, v37, v30);

  if (qword_315AA8 != -1)
  {
    swift_once();
  }

  v48 = qword_354020;
  result = sub_2EF0(&qword_327970, &qword_28D6B8);
  v50 = (v47 + *(result + 36));
  *v50 = v48;
  v50[1] = sub_23E554;
  v50[2] = 0;
  return result;
}

uint64_t sub_23DD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v73 = sub_263EB0();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_263EE0();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v8 - 8);
  v68 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_262730();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FontConstants.GridItem(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v19 - 8);
  v21 = (&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_2EF0(&qword_327980, &qword_28D6D0);
  v78 = *(v76 - 8);
  v22 = __chkstk_darwin(v76);
  v69 = &v59 - v23;
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  v26 = *(v25 + 40);
  v67 = *(a2 + 44);
  v66 = v24;
  v27 = v26(a1, v22);
  if (v30)
  {
    v61 = v3;
    v64 = v30;
    v62 = v27;
    v63 = v28;
    v60 = v29;
    sub_40D40(v21);
    sub_23E87C(v21, v18, type metadata accessor for FontConstants.Environment);
    v31 = v65;
    (*(v65 + 104))(v15, enum case for Font.TextStyle.footnote(_:), v13);
    v32 = sub_2625C0();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_262680();
    sub_8E80(v12, &qword_318458, &unk_26B270);
    (*(v31 + 8))(v15, v13);
    sub_23E8E4(v18, type metadata accessor for FontConstants.GridItem);
    v65 = v60 & 1;
    LOBYTE(v81) = v60 & 1;
    v33 = sub_262840();
    v35 = v34;
    v37 = v36;

    v38 = v68;
    sub_404B8(v68);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    sub_23E8E4(v38, type metadata accessor for ColorConstants);
    v39 = sub_2627E0();
    v68 = v39;
    v41 = v40;
    LODWORD(v60) = v42;
    v44 = v43;
    sub_39DBC(v33, v35, v37 & 1);

    v45 = (*(v25 + 56))(v66, v25);
    KeyPath = swift_getKeyPath();
    v81 = v39;
    v82 = v41;
    v47 = v41;
    LOBYTE(v33) = v60 & 1;
    v83 = v60 & 1;
    v84 = v44;
    v85 = KeyPath;
    v86 = v45;
    v87 = 0;
    v48 = v71;
    v49 = v70;
    v50 = v73;
    (*(v71 + 104))(v70, enum case for AutomationSemantics.Subcomponent.subtitle(_:), v73);
    memset(v80, 0, sizeof(v80));
    memset(v79, 0, sizeof(v79));
    v51 = v72;
    sub_263EC0();
    sub_8E80(v79, &qword_316200, &qword_267FD0);
    sub_8E80(v80, &qword_316200, &qword_267FD0);
    (*(v48 + 8))(v49, v50);
    sub_2EF0(&qword_3189D8, &unk_27CEE0);
    sub_58070();
    v52 = v69;
    sub_262930();
    sub_39DBC(v62, v63, v65);

    (*(v74 + 8))(v51, v75);
    sub_39DBC(v68, v47, v33);

    v53 = v77;
    v54 = v76;
    (*(v78 + 32))(v77, v52, v76);
    return (*(v78 + 56))(v53, 0, 1, v54);
  }

  else
  {
    v56 = v77;
    v57 = *(v78 + 56);
    v58 = v76;

    return v57(v56, 1, 1, v58);
  }
}

uint64_t sub_23E580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for GridItemMetadataTitleLockupView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = v4 + v7;
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  v10 = v8 + v6[9];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v12 = sub_261690();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v8 + v6[10];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v15 = sub_261690();
    (*(*(v15 - 8) + 8))(v13 + v14, v15);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v8 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_23E7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for GridItemMetadataTitleLockupView(0, v6, v7, a2);

  return sub_23D3D8(a1, v6, v7, a3);
}

uint64_t sub_23E87C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ListItemMetadataFinePrintView(0, a2, a3, v8);
  v10 = *(*(a2 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a1, a2);
}

uint64_t sub_23EAB0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2EF0(&qword_319FD8, &qword_26E010);
  sub_260A70();
  sub_260A50();
  sub_23F0E4();
  sub_13FB8C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_13FB8C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_23ECD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FontConstants.ListItem(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ListItemMetadataFinePrintView(0, a2, a3, v11);
  v12 = (*(a3 + 16))(a1, a2, a3);
  v14 = v13;
  LOBYTE(a1) = v15;
  sub_404E0(v10);
  FontConstants.ListItem.finePrint.getter();
  sub_65488(v10);
  v16 = sub_262840();
  v18 = v17;
  v20 = v19;
  sub_39DBC(v12, v14, a1 & 1);

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v21 = sub_2627E0();
  v23 = v22;
  LOBYTE(a1) = v24;
  v26 = v25;

  sub_39DBC(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v28 = *(sub_2EF0(&qword_319FD8, &qword_26E010) + 36);
  *(a4 + v28) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  result = swift_storeEnumTagMultiPayload();
  *a4 = v21;
  *(a4 + 8) = v23;
  *(a4 + 16) = a1 & 1;
  *(a4 + 24) = v26;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  return result;
}

uint64_t sub_23EEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ListItemMetadataFinePrintView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  sub_2EF0(&qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v7 + *(v6 + 36), v5);

  return swift_deallocObject();
}

uint64_t sub_23F048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for ListItemMetadataFinePrintView(0, v6, v7, a2);

  return sub_23ECD0(a1, v6, v7, a3);
}

unint64_t sub_23F0E4()
{
  result = qword_327A18;
  if (!qword_327A18)
  {
    sub_2F9C(&qword_319FD8, &qword_26E010);
    sub_58070();
    sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier, &unk_28233C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327A18);
  }

  return result;
}

uint64_t _CodeAnyIntentModel_Many.description.getter(uint64_t a1)
{
  swift_getExtendedExistentialTypeMetadata();
  sub_2646F0();
  swift_getWitnessTable();
  sub_264EF0();
  return 0;
}

void _CodeAnyIntentModel_Many.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_30CC(a1, v16);
  type metadata accessor for CodeAnyIntentModel(0, a2, v7, v8);
  swift_getWitnessTable();
  v9 = sub_264700();
  if (v3)
  {
    sub_3080(a1);
  }

  else
  {
    v16[0] = v9;
    __chkstk_darwin(v9);
    KeyPath = swift_getKeyPath();
    v11 = sub_2646F0();
    ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
    WitnessTable = swift_getWitnessTable();
    v15 = sub_1ABAD4(sub_1ACFB8, KeyPath, v11, ExtendedExistentialTypeMetadata, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);

    sub_3080(a1);

    *a3 = v15;
  }
}

void _CodeAnyIntentModel_Many.init(_partiallyFrom:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_30CC(a1, v14);
  type metadata accessor for CodeAnyIntentModel(0, a2, v6, v7);
  swift_getWitnessTable();
  v14[0] = sub_2646E0();
  KeyPath = swift_getKeyPath();
  v9 = sub_2646F0();
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1ABAD4(sub_10D740, KeyPath, v9, ExtendedExistentialTypeMetadata, &type metadata for Never, WitnessTable, &protocol witness table for Never, v12);

  sub_3080(a1);

  *a3 = v13;
}

uint64_t sub_23F5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ReaderTypeFrameViewModel.init(type:localizedYear:exposureData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for ReaderTypeFrameViewModel(0) + 24);
  v8 = sub_260550();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_23F6B4()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v17[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v17[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v15 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v15;
}

uint64_t sub_23FCF8()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v23[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v23[-v13];
  v15 = sub_2643F0();
  __chkstk_darwin(v15 - 8);
  v16 = *v0;
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      sub_2643E0();
      v28._countAndFlagsBits = 2125385;
      v28._object = 0xE300000000000000;
      sub_2643D0(v28);
      sub_2643C0(*(v0 + 8));
      v29._countAndFlagsBits = 0xD000000000000062;
      v29._object = 0x8000000000295240;
      sub_2643D0(v29);
      sub_264400();
      sub_260260();
      (*(v9 + 16))(v11, v14, v8);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v2 + 16))(v4, v7, v1);
      goto LABEL_13;
    }

    if (v16 == 4)
    {
      sub_2643E0();
      v25._countAndFlagsBits = 2125385;
      v25._object = 0xE300000000000000;
      sub_2643D0(v25);
      sub_2643C0(*(v0 + 8));
      v17._countAndFlagsBits = 0xD000000000000071;
      v17._object = 0x8000000000295180;
    }

    else
    {
      sub_2643E0();
      v31._countAndFlagsBits = 0xD000000000000033;
      v31._object = 0x80000000002950C0;
      sub_2643D0(v31);
      sub_2643C0(*(v0 + 8));
      v17._object = 0x8000000000295100;
      v17._countAndFlagsBits = 0xD000000000000031;
    }
  }

  else
  {
    if (!*v0)
    {
      sub_2643E0();
      v26._countAndFlagsBits = 2125385;
      v26._object = 0xE300000000000000;
      sub_2643D0(v26);
      sub_2643C0(*(v0 + 8));
      v27._countAndFlagsBits = 0x10000000000000C2;
      v27._object = 0x80000000002954A0;
      sub_2643D0(v27);
      sub_264400();
      sub_260260();
      (*(v9 + 16))(v11, v14, v8);
      type metadata accessor for BundleFinder();
      v19 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:v19];
      (*(v2 + 16))(v4, v7, v1);
      goto LABEL_13;
    }

    if (v16 == 1)
    {
      sub_2643E0();
      v24._countAndFlagsBits = 2125385;
      v24._object = 0xE300000000000000;
      sub_2643D0(v24);
      sub_2643C0(*(v0 + 8));
      v17._object = 0x80000000002953B0;
      v17._countAndFlagsBits = 0x10000000000000ABLL;
    }

    else
    {
      sub_2643E0();
      v30._countAndFlagsBits = 2125385;
      v30._object = 0xE300000000000000;
      sub_2643D0(v30);
      sub_2643C0(*(v0 + 8));
      v17._countAndFlagsBits = 0xD00000000000007ALL;
      v17._object = 0x80000000002952F0;
    }
  }

  sub_2643D0(v17);
  sub_264400();
  sub_260260();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  v18 = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:v18];
  (*(v2 + 16))(v4, v7, v1);
LABEL_13:
  v21 = sub_264490();
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  return v21;
}

uint64_t _s7BooksUI15ReaderTypeFrameV10backgroundAA14PageBackgroundOvg_0@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2EF0(&qword_316DA0, &unk_277640);
  v5 = *(v4 + 48);
  v6 = "yir-background-reader-series";
  v7 = *(v4 + 64);
  v8 = "eader-single-genre";
  v9 = "eader-undetermined";
  if (v3 != 4)
  {
    v9 = "e (Trendy Reader)";
  }

  if (v3 == 3)
  {
    v10 = 0xD000000000000020;
  }

  else
  {
    v8 = v9;
    v10 = 0xD000000000000022;
  }

  v11 = "eader-nonfiction";
  v12 = 0xD00000000000001CLL;
  if (v3 != 1)
  {
    v11 = "eader-multigenre";
    v12 = 0xD000000000000020;
  }

  if (v3)
  {
    v6 = v11;
    v13 = v12;
  }

  else
  {
    v13 = 0xD000000000000020;
  }

  if (v3 <= 2)
  {
    v14 = v13;
  }

  else
  {
    v6 = v8;
    v14 = v10;
  }

  *a1 = v14;
  *(a1 + 1) = v6 | 0x8000000000000000;
  v15 = enum case for ColorScheme.light(_:);
  v16 = sub_261180();
  (*(*(v16 - 8) + 104))(&a1[v5], v15, v16);
  v17 = [objc_opt_self() secondarySystemBackgroundColor];
  *&a1[v7] = sub_262EE0();
  type metadata accessor for PageBackground(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ReaderTypeFrame.sharableView.getter()
{
  v1 = type metadata accessor for ReaderTypeFrame(0);
  __chkstk_darwin(v1);
  sub_240714(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24086C(&qword_327AB0, type metadata accessor for ReaderTypeFrame, &protocol conformance descriptor for ReaderTypeFrame);
  return sub_263310();
}

uint64_t sub_240714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderTypeFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReaderTypeFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ReaderTypeFrameViewModel(0) + 24);
  v4 = sub_260550();
  a1[3] = v4;
  a1[4] = sub_24086C(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_24086C(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v5 = sub_10934(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(v5, v1 + v3, v4);
}

uint64_t sub_24086C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 ReaderTypeFrame.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ReaderTypeFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_240714(v1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_240C48(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ReaderTypeFrame);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_2EF0(&qword_327AB8, &unk_28D990) + 36));
  v10 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v11 = enum case for ColorScheme.light(_:);
  v12 = sub_261180();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  *a1 = sub_240CB0;
  *(a1 + 8) = v7;
  v13 = v16[5];
  *(a1 + 80) = v16[4];
  *(a1 + 96) = v13;
  *(a1 + 112) = v16[6];
  v14 = v16[1];
  *(a1 + 16) = v16[0];
  *(a1 + 32) = v14;
  result = v16[3];
  *(a1 + 48) = v16[2];
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_240AF4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = sub_261E50();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = sub_2EF0(&qword_327C20, &qword_28DAF8);
  return sub_240D90(a1, a3 + *(v5 + 44));
}

uint64_t sub_240B5C()
{
  v1 = *(type metadata accessor for ReaderTypeFrame(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);

  v3 = *(type metadata accessor for ReaderTypeFrameViewModel(0) + 24);
  v4 = sub_260550();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_240C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ReaderTypeFrame(0);

  return sub_240AF4(a1, a2);
}

unint64_t sub_240D3C()
{
  result = qword_327AC0;
  if (!qword_327AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327AC0);
  }

  return result;
}

uint64_t sub_240D90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a1;
  v50 = a2;
  v2 = type metadata accessor for TextLockup(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_2EF0(&qword_31E590, &qword_28DB00);
  __chkstk_darwin(v49);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_23F6B4();
  v46 = v15;
  v47 = v14;
  v16 = sub_23FCF8();
  v45 = v17;
  v18 = v3[15];
  v19 = sub_2625C0();
  (*(*(v19 - 8) + 56))(v5 + v18, 1, 1, v19);
  v20 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v22 = v21;
  v23 = v3[19];
  v24 = enum case for DynamicTypeSize.xxxLarge(_:);
  v25 = sub_261690();
  (*(*(v25 - 8) + 104))(v5 + v23, v24, v25);
  v26 = sub_261E60();
  *v5 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v27 = v3[7];
  *(v5 + v27) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v28 = v5 + v3[8];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v5 + v3[9];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v5 + v3[10];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  *(v5 + v3[11]) = 2;
  v31 = (v5 + v3[12]);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v5 + v3[13]);
  v33 = v46;
  *v32 = v47;
  v32[1] = v33;
  v32[2] = 0;
  v34 = (v5 + v3[14]);
  v35 = v45;
  *v34 = v16;
  v34[1] = v35;
  *(v5 + v3[16]) = v26;
  v36 = (v5 + v3[17]);
  *v36 = v20;
  v36[1] = v22;
  *(v5 + v3[18]) = 1;
  sub_261420();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_240C48(v5, v10, type metadata accessor for TextLockup);
  v37 = &v10[*(v49 + 36)];
  v38 = v56;
  *(v37 + 4) = v55;
  *(v37 + 5) = v38;
  *(v37 + 6) = v57;
  v39 = v52;
  *v37 = v51;
  *(v37 + 1) = v39;
  v40 = v54;
  *(v37 + 2) = v53;
  *(v37 + 3) = v40;
  sub_10FBCC(v10, v13);
  sub_10FC3C(v13, v7);
  v41 = v50;
  sub_10FC3C(v7, v50);
  v42 = v41 + *(sub_2EF0(&qword_327C28, &unk_28DBE0) + 48);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_10FD90(v13);
  return sub_10FD90(v7);
}

uint64_t sub_24120C(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_240714(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24086C(&qword_327AB0, type metadata accessor for ReaderTypeFrame, &protocol conformance descriptor for ReaderTypeFrame);
  return sub_263310();
}

uint64_t sub_2412C0(uint64_t a1)
{
  result = sub_24086C(&qword_327AC8, type metadata accessor for ReaderTypeFrame, &protocol conformance descriptor for ReaderTypeFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241318(uint64_t a1)
{
  result = sub_24086C(&qword_327AB0, type metadata accessor for ReaderTypeFrame, &protocol conformance descriptor for ReaderTypeFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2413A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_260550();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_241464(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_260550();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_241508(uint64_t a1)
{
  result = sub_260550();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2415B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderTypeFrameViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderTypeFrameViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2416A0(uint64_t a1)
{
  result = type metadata accessor for ReaderTypeFrameViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_241710()
{
  result = qword_327BF8;
  if (!qword_327BF8)
  {
    sub_2F9C(&qword_327AB8, &unk_28D990);
    sub_2417C8();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327BF8);
  }

  return result;
}

unint64_t sub_2417C8()
{
  result = qword_327C00;
  if (!qword_327C00)
  {
    sub_2F9C(&qword_327C08, &qword_28DAE8);
    sub_8E38(&qword_327C10, &qword_327C18, &qword_28DAF0, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327C00);
  }

  return result;
}

uint64_t ShelfModel.tallestCoverAspectRatio.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_263850();
  v3 = sub_241A48(v2);

  if (!v3)
  {
    return 0;
  }

  v4 = v3[2];
  if (v4)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_2DAE4(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (v3 + 4);
    do
    {
      sub_30CC(v6, v20);
      v7 = v21;
      v8 = v22;
      sub_2E18(v20, v21);
      v9 = (*(v8 + 16))(v7, v8);
      sub_3080(v20);
      v23 = v5;
      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        sub_2DAE4((v10 > 1), v11 + 1, 1);
        v5 = v23;
      }

      v5[2] = v11 + 1;
      *&v5[v11 + 4] = v9;
      v6 += 40;
      --v4;
    }

    while (v4);

    v12 = v5[2];
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v5 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage[2];
  if (!v12)
  {
LABEL_17:

    return 0;
  }

LABEL_8:
  v13 = *(v5 + 4);
  v14 = v12 - 1;
  if (v14)
  {
    v15 = (v5 + 5);
    do
    {
      v16 = *v15++;
      v17 = v16;
      if (v16 < v13)
      {
        v13 = v17;
      }

      --v14;
    }

    while (v14);
  }

  v18 = 0.641025641;
  if (v13 > 0.641025641)
  {
    v18 = v13;
  }

  return *&v18;
}

void *sub_241A48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_2DB64(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_30CC(i, v10);
      sub_2EF0(&qword_317250, &unk_2697A0);
      sub_2EF0(&qword_317230, &qword_269780);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_F7CC(v8, v11);
      sub_F7CC(v11, v10);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_2DB64((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      sub_F7CC(v10, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_241BD0(v8);
    return 0;
  }

  return v3;
}

uint64_t sub_241BD0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_327C30, &unk_28DC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ShelfGridLayout.horizontal(layoutContext:itemsPerColumn:itemColumnSpan:itemAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v40 = a6;
  v38 = a4;
  v39 = a5;
  v41 = a2;
  v45 = a7;
  v9 = sub_260B40();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  v43 = a3[1];
  v44 = v13;
  v42 = *(a3 + 16);
  v47 = *(a1 + 8);
  v14 = *(a1 + 24);
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v46[0] = *(a1 + 16);
  v46[1] = v14;
  v46[2] = v16;
  v46[3] = v15;
  v46[4] = v17;
  v46[5] = v18;
  v19 = *(type metadata accessor for ShelfGridLayoutContext(0) + 32);

  v20 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v46, a1 + v19);

  if (v40)
  {
    v21 = (v12 + *(sub_2EF0(&qword_3223E8, &qword_280C70) + 48));
    *v12 = v41;
    v22 = swift_allocObject();
    v24 = v43;
    v23 = v44;
    *(v22 + 16) = v20;
    *(v22 + 24) = v23;
    *(v22 + 32) = v24;
    v25 = v42;
    *(v22 + 40) = v42;
    *v21 = sub_2426EC;
    v21[1] = v22;
    v26 = enum case for ShelfGridItemWidth.calculate(_:);
    v27 = sub_260C90();
    (*(*(v27 - 8) + 104))(v21, v26, v27);
    v28 = &enum case for ShelfGridLayout.horizontal(_:);
  }

  else
  {
    v29 = sub_2EF0(&qword_318750, &qword_26B8B0);
    v30 = (v12 + *(v29 + 48));
    v31 = (v12 + *(v29 + 64));
    *v12 = v41;
    v32 = swift_allocObject();
    v24 = v43;
    v23 = v44;
    *(v32 + 16) = v20;
    *(v32 + 24) = v23;
    *(v32 + 32) = v24;
    v25 = v42;
    *(v32 + 40) = v42;
    *v30 = sub_242E44;
    v30[1] = v32;
    v33 = enum case for ShelfGridItemWidth.calculate(_:);
    v34 = sub_260C90();
    (*(*(v34 - 8) + 104))(v30, v33, v34);
    v35 = v39;
    *v31 = v38;
    v31[1] = v35;
    v28 = &enum case for ShelfGridLayout.horizontalWithAlignment(_:);
  }

  (*(v10 + 104))(v12, *v28, v9);
  (*(v10 + 32))(v45, v12, v9);
  return sub_2426F0(v23, v24, v25);
}

void ShelfGridItemColumnSpan.resolve(using:)(uint64_t *a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    v7 = *a1;
    v3 = v7;
    v2(v8, &v7);
    v4 = v8[0];
    v5 = v8[1];
    v6 = v9;
    v7 = v3;
    ShelfGridItemColumnSpan.resolve(using:)(&v7);
    sub_51990(v4, v5, v6);
  }
}

uint64_t ShelfGridLayoutContext.gridType.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
}

uint64_t ShelfGridLayoutContext.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfGridLayoutContext(0) + 32);
  v4 = sub_261690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfGridLayoutContext.viewSizeConditions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShelfGridLayoutContext(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t ShelfGridLayoutContext.init(itemsCount:breakpoint:gridType:itemsPerColumn:dynamicTypeSize:viewSizeConditions:isCompact:preferCompactLayouts:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v13 = *a2;
  v14 = *a3;
  v15 = a3[5];
  v16 = *a6;
  v17 = a6[1];
  v18 = a6[2];
  *a9 = a1;
  *(a9 + 8) = v13;
  *(a9 + 16) = v14;
  *(a9 + 24) = *(a3 + 1);
  *(a9 + 40) = *(a3 + 3);
  *(a9 + 56) = v15;
  *(a9 + 64) = a4;
  v19 = type metadata accessor for ShelfGridLayoutContext(0);
  v20 = v19[8];
  v21 = sub_261690();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a5, v21);
  v23 = (a9 + v19[9]);
  *v23 = v16;
  v23[1] = v17;
  v23[2] = v18;
  *(a9 + v19[10]) = a7;
  *(a9 + v19[11]) = a8;
  return result;
}

uint64_t ShelfGridLayoutContext.columns.getter()
{
  v10 = *(v0 + 8);
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v9[0] = *(v0 + 16);
  v9[1] = v1;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = v5;
  v6 = *(type metadata accessor for ShelfGridLayoutContext(0) + 32);

  v7 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v9, v0 + v6);

  return v7;
}

uint64_t static ShelfGridLayout.horizontal(columns:itemsPerColumn:itemColumnSpan:itemAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v35 = a4;
  v36 = a7;
  v12 = sub_260B40();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a3;
  v17 = a3[1];
  v18 = *(a3 + 16);
  if (a6)
  {
    v19 = (v15 + *(sub_2EF0(&qword_3223E8, &qword_280C70) + 48));
    *v15 = a2;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v16;
    *(v20 + 32) = v17;
    *(v20 + 40) = v18;
    *v19 = sub_242E44;
    v19[1] = v20;
    v21 = enum case for ShelfGridItemWidth.calculate(_:);
    v22 = sub_260C90();
    (*(*(v22 - 8) + 104))(v19, v21, v22);
    v23 = &enum case for ShelfGridLayout.horizontal(_:);
  }

  else
  {
    v24 = sub_2EF0(&qword_318750, &qword_26B8B0);
    v25 = (v15 + *(v24 + 48));
    v26 = *(v24 + 64);
    v34 = a5;
    v27 = (v15 + v26);
    *v15 = a2;
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    *(v28 + 24) = v16;
    *(v28 + 32) = v17;
    *(v28 + 40) = v18;
    *v25 = sub_242E44;
    v25[1] = v28;
    v29 = enum case for ShelfGridItemWidth.calculate(_:);
    v30 = sub_260C90();
    (*(*(v30 - 8) + 104))(v25, v29, v30);
    v31 = v34;
    *v27 = v35;
    v27[1] = v31;
    v23 = &enum case for ShelfGridLayout.horizontalWithAlignment(_:);
  }

  (*(v13 + 104))(v15, *v23, v12);
  (*(v13 + 32))(v36, v15, v12);
  return sub_2426F0(v16, v17, v18);
}

uint64_t type metadata accessor for ShelfGridLayoutContext(uint64_t a1)
{
  result = qword_327C90;
  if (!qword_327C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, double *a6@<X8>)
{
  v11[0] = a3;
  v11[1] = a4;
  v12 = a5 & 1;
  *a6 = sub_242C0C(a1, a2, v11);
  v7 = enum case for ShelfGridItemWidth.absolute(_:);
  v8 = sub_260C90();
  v9 = *(*(v8 - 8) + 104);

  return v9(a6, v7, v8);
}

uint64_t sub_2426F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_242724()
{
  sub_51990(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

Swift::Bool __swiftcall ShelfGridLayout.isVerticalSingleColumn(preferCompactLayouts:)(Swift::Bool preferCompactLayouts)
{
  v2 = v1;
  v21 = preferCompactLayouts;
  v3 = sub_260B40();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = (&v20 - v12);
  v14 = *(v4 + 16);
  v20 = v2;
  v14(v9, v2, v3, v11);
  v15 = *(v4 + 88);
  v16 = v15(v9, v3);
  v17 = enum case for ShelfGridLayout.vertical(_:);
  if (v16 == enum case for ShelfGridLayout.vertical(_:) && v21)
  {
    *v13 = 1;
    (*(v4 + 104))(v13, v16, v3);
  }

  else
  {
    (v14)(v13, v20, v3);
  }

  v18 = *(v4 + 8);
  v18(v9, v3);
  (*(v4 + 32))(v6, v13, v3);
  if (v15(v6, v3) == v17)
  {
    (*(v4 + 96))(v6, v3);
    return *v6 == 1;
  }

  else
  {
    v18(v6, v3);
    return 0;
  }
}

uint64_t sub_242A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_261690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242AC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_261690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242B68(uint64_t a1)
{
  result = sub_261690();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_242C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = sub_260C50();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260C90();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a3;
  v11 = *(a3 + 8);
  v13 = *(a3 + 16);
  *v10 = v23;
  (*(v8 + 104))(v10, enum case for ShelfGridItemWidth.divideBy(_:), v7);
  sub_260C80();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  v25[1] = v12;
  v25[2] = v11;
  v26 = v13;
  v25[0] = sub_260C60();
  ShelfGridItemColumnSpan.resolve(using:)(v25);
  v17 = v16;
  sub_260C70();
  *&v18 = COERCE_DOUBLE(sub_260C10());
  v20 = v19;
  (*(v4 + 8))(v6, v24);
  v21 = *&v18;
  if (v20)
  {
    v21 = 0.0;
  }

  return v15 * v17 + (v17 + -1.0) * v21;
}

uint64_t CodeAnyActionModel.description.getter()
{
  sub_2EF0(&qword_316A30, &qword_2697B0);
  sub_264CC0();
  return 0;
}

uint64_t CodeAnyActionModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  Decoder.decodeActionModel()(v7);
  if (!v2)
  {
    sub_F7CC(v7, v8);
    v5 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v9;
  }

  return sub_3080(a1);
}

uint64_t Decoder.decodeActionModel()@<X0>(uint64_t x8_0@<X8>)
{
  sub_265100();
  v4 = sub_264020();

  return Decoder.decodeActionModel<A>(using:)(v4, x8_0);
}

uint64_t Decoder.actionKindTable.getter(uint64_t a1, uint64_t a2)
{
  sub_265100();
  v2 = sub_264020();

  return v2;
}

uint64_t Decoder.decodeActionModel<A>(using:)@<X0>(uint64_t a2@<X2>, uint64_t a5@<X8>)
{
  v17[6] = a2;
  v14 = sub_2EF0(&qword_31B698, &qword_270DB8);
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = &v11 - v8;
  sub_2650F0();
  if (v5)
  {
    sub_265100();
    sub_263950();
    sub_2EF0(&qword_31B6A0, &qword_270DC0);
    sub_2642C0();

    (*(v7 + 8))(v9, v14);
    sub_A8840(v17, &v15);
    if (v16)
    {
      sub_2E18(&v15, v16);
      swift_getMetatypeMetadata();
      sub_264000();
      sub_3080(&v15);
    }

    else
    {
      sub_A88B0(&v15);
    }

    swift_willThrow();
    return sub_A88B0(v17);
  }

  else
  {
    v12 = a5;
    v13 = v17[4];
    sub_2E18(v17, v17[3]);
    sub_2637D0();
    swift_getWitnessTable();
    sub_264F30();
    sub_F7CC(&v15, v12);
    return sub_3080(v17);
  }
}

uint64_t SeriesCardCoverStackCoverLayout.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 120);
  v14 = *(v1 + 104);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 152);
  v16 = *(v1 + 136);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 56);
  v11[0] = *(v1 + 40);
  v11[1] = v6;
  v8 = *(v1 + 88);
  v12 = *(v1 + 72);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_5757C(v11, &v10);
}

double SeriesCardCoverStackCoverLayout.offset(for:)(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  if (*v1)
  {
    if (*v1 == 1)
    {
      v4 = -1.0;
      v5 = 0.86;
    }

    else
    {
      v4 = 1.0;
      v5 = 0.78;
    }

    return v4 * ((a1 - v3 * (v2 * v5)) * 0.5);
  }

  else
  {
    v6 = 0.0;
    if (*(v1 + 8) == 2)
    {
      return (a1 - v2 * v3) * 0.5;
    }
  }

  return v6;
}

double SeriesCardCoverStackCoverLayout.height(for:)()
{
  result = *(v0 + 16);
  if (*v0)
  {
    if (*v0 == 1)
    {
      v2 = 0.86;
    }

    else
    {
      v2 = 0.78;
    }

    return result * v2;
  }

  return result;
}

unint64_t *sub_2433C0@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t _s7BooksUI020SeriesCardCoverStackE6LayoutV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = *(a1 + 120);
  v48[4] = *(a1 + 104);
  v48[5] = v8;
  v9 = *(a1 + 152);
  v48[6] = *(a1 + 136);
  v48[7] = v9;
  v10 = *(a1 + 56);
  v48[0] = *(a1 + 40);
  v48[1] = v10;
  v11 = *(a1 + 88);
  v48[2] = *(a1 + 72);
  v48[3] = v11;
  v12 = *a2;
  v13 = *(a2 + 1);
  v15 = *(a2 + 2);
  v14 = *(a2 + 3);
  v16 = *(a2 + 4);
  v17 = *(a2 + 120);
  v49[4] = *(a2 + 104);
  v49[5] = v17;
  v18 = *(a2 + 152);
  v49[6] = *(a2 + 136);
  v49[7] = v18;
  v19 = *(a2 + 56);
  v49[0] = *(a2 + 40);
  v49[1] = v19;
  v20 = *(a2 + 88);
  v49[2] = *(a2 + 72);
  v49[3] = v20;
  if (v3 == v12 && v4 == v13 && v6 == v15 && v5 == v14 && v7 == v16)
  {
    v21 = *(a1 + 120);
    v42 = *(a1 + 104);
    v43 = v21;
    v22 = *(a1 + 152);
    v44 = *(a1 + 136);
    v45 = v22;
    v23 = *(a1 + 56);
    v38 = *(a1 + 40);
    v39 = v23;
    v24 = *(a1 + 88);
    v40 = *(a1 + 72);
    v41 = v24;
    v25 = *(a2 + 120);
    v34 = *(a2 + 104);
    v35 = v25;
    v26 = *(a2 + 152);
    v36 = *(a2 + 136);
    v37 = v26;
    v27 = *(a2 + 56);
    v30 = *(a2 + 40);
    v31 = v27;
    v28 = *(a2 + 88);
    v32 = *(a2 + 72);
    v33 = v28;
    sub_5757C(v48, v47);
    sub_5757C(v49, v47);
    v2 = _s7BooksUI14CoverViewModelV0C5StyleO2eeoiySbAE_AEtFZ_0(&v38, &v30);
    v46[4] = v34;
    v46[5] = v35;
    v46[6] = v36;
    v46[7] = v37;
    v46[0] = v30;
    v46[1] = v31;
    v46[2] = v32;
    v46[3] = v33;
    sub_EA998(v46);
    v47[4] = v42;
    v47[5] = v43;
    v47[6] = v44;
    v47[7] = v45;
    v47[0] = v38;
    v47[1] = v39;
    v47[2] = v40;
    v47[3] = v41;
    sub_EA998(v47);
  }

  return v2 & 1;
}

unint64_t sub_243584(uint64_t a1)
{
  result = sub_2435AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2435AC()
{
  result = qword_327CE0;
  if (!qword_327CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327CE0);
  }

  return result;
}

__n128 sub_243600(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_24363C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 64) >> 3) & 0xFFFFFF80 | (*(a1 + 64) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_243690(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 168) = 1;
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
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      return result;
    }

    *(a1 + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243748()
{
  result = qword_327CE8;
  if (!qword_327CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327CE8);
  }

  return result;
}

uint64_t EnvironmentValues.fonts.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v8);
  v11 = &v18[-v10];
  v12 = *(v5 + 16);
  v12(&v18[-v10], v2, v4, v9);
  (v12)(v7, v11, v4);
  *a1 = EnvironmentValues.isCompact.getter() & 1;
  sub_6E2E0();
  sub_261CA0();
  a1[1] = v18[15];
  v13 = type metadata accessor for FontConstants.Environment(0);
  sub_261A60();
  sub_2619D0();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v7, v4);
  result = (v16)(v11, v4);
  *&a1[*(v13 + 28)] = v15;
  return result;
}

uint64_t FontConstants.Environment.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FontConstants.Environment(0) + 24);
  v4 = sub_261690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_243ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FontSpec.init(font:minDynamicTypeSize:maxDynamicTypeSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FontSpec(0);
  v9 = *(v8 + 20);
  v10 = sub_261690();
  v11 = *(*(v10 - 8) + 56);
  v11(&a4[v9], 1, 1, v10);
  v12 = *(v8 + 24);
  v11(&a4[v12], 1, 1, v10);
  *a4 = a1;
  sub_C5FBC(a2, &a4[v9]);

  return sub_C5FBC(a3, &a4[v12]);
}

uint64_t View.fontSpec(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v40 = a3;
  v5 = sub_2EF0(&qword_316890, &qword_2725A0);
  __chkstk_darwin(v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v34 - v8;
  v9 = sub_2EF0(&qword_31E2F0, &qword_277EF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  sub_2F9C(&qword_317588, &qword_26B7B0);
  v18 = sub_261730();
  v19 = *(v18 - 8);
  v35 = v18;
  v36 = v19;
  __chkstk_darwin(v18);
  v21 = &v34 - v20;
  v22 = a1;
  sub_8198(a1, v17, &qword_31E2F0, &qword_277EF0);
  v23 = type metadata accessor for FontSpec(0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v17, 1, v23) == 1)
  {
    sub_8E80(v17, &qword_31E2F0, &qword_277EF0);
  }

  else
  {

    sub_10C5F4(v17);
  }

  sub_262D80();

  sub_8198(v22, v14, &qword_31E2F0, &qword_277EF0);
  v25 = v24(v14, 1, v23);
  v26 = v38;
  if (v25 == 1)
  {
    sub_8E80(v14, &qword_31E2F0, &qword_277EF0);
    v27 = sub_261690();
    v28 = v37;
    (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  }

  else
  {
    v28 = v37;
    sub_8198(&v14[*(v23 + 20)], v37, &qword_316890, &qword_2725A0);
    sub_10C5F4(v14);
  }

  sub_8198(v22, v11, &qword_31E2F0, &qword_277EF0);
  if (v24(v11, 1, v23) == 1)
  {
    sub_8E80(v11, &qword_31E2F0, &qword_277EF0);
    v29 = sub_261690();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  }

  else
  {
    sub_8198(&v11[*(v23 + 24)], v26, &qword_316890, &qword_2725A0);
    sub_10C5F4(v11);
  }

  v30 = sub_1D5E5C();
  v41 = v40;
  v42 = v30;
  v31 = v35;
  WitnessTable = swift_getWitnessTable();
  View.restrictedDynamicTypeSize(min:max:)(v28, v26, v31, WitnessTable);
  sub_8E80(v26, &qword_316890, &qword_2725A0);
  sub_8E80(v28, &qword_316890, &qword_2725A0);
  return (*(v36 + 8))(v21, v31);
}

uint64_t View.fontSpec(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2F9C(&qword_317588, &qword_26B7B0);
  v4 = sub_261730();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  sub_262D80();
  v8 = sub_1D5E5C();
  v11[0] = a3;
  v11[1] = v8;
  WitnessTable = swift_getWitnessTable();
  View.unrestrictedDynamicTypeSize()(v4, WitnessTable);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24428C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24430C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24439C(uint64_t a1)
{
  result = type metadata accessor for FontConstants.Environment(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24441C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_261690();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2444DC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_261690();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24457C(uint64_t a1)
{
  result = sub_261690();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_244614(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_316890, &qword_2725A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2446E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_316890, &qword_2725A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_244794(uint64_t a1)
{
  sub_244810(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_244810(uint64_t a1)
{
  if (!qword_31C2C8)
  {
    sub_261690();
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_31C2C8);
    }
  }
}

uint64_t sub_244868(uint64_t *a1)
{
  sub_2F9C(&qword_317588, &qword_26B7B0);
  sub_261730();
  type metadata accessor for RestrictedDynamicTypeSizeViewModifier(255);
  sub_261730();
  sub_1D5E5C();
  swift_getWitnessTable();
  sub_244924();
  return swift_getWitnessTable();
}

unint64_t sub_244924()
{
  result = qword_31C258;
  if (!qword_31C258)
  {
    type metadata accessor for RestrictedDynamicTypeSizeViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31C258);
  }

  return result;
}

uint64_t sub_244980(uint64_t a1)
{
  v2 = sub_244B68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2449BC(uint64_t a1)
{
  v2 = sub_244B68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfFooterComponentModel.encode(to:)(void *a1)
{
  v2 = sub_2EF0(&qword_327F98, &qword_28E0B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_2E18(a1, a1[3]);
  sub_244B68();
  sub_265140();
  sub_2EF0(&qword_31D2B0, &qword_274620);
  sub_244D70(&qword_327FA8, &protocol conformance descriptor for CodeByKind<A>);
  sub_264E90();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_244B68()
{
  result = qword_327FA0;
  if (!qword_327FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327FA0);
  }

  return result;
}

uint64_t ShelfFooterComponentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_327FB0, &qword_28E0C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_2E18(a1, a1[3]);
  sub_244B68();
  sub_265120();
  if (!v2)
  {
    sub_2EF0(&qword_31D2B0, &qword_274620);
    sub_244D70(&qword_31D2C8, &protocol conformance descriptor for CodeByKind<A>);
    sub_264DF0();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v16 = v13;
    v17 = v14;
    v10 = v15;
    v18 = v15;
    *a2 = v13;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
  }

  return sub_3080(a1);
}

uint64_t sub_244D70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(&qword_31D2B0, &qword_274620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_244DD8()
{
  qword_327F60 = &type metadata for DefaultShelfFooterComponentModel;
  result = sub_2455DC();
  qword_327F68 = result;
  return result;
}

uint64_t sub_244E6C()
{
  v0 = sub_2EF0(&qword_315D48, &qword_266E40);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  *&v11[0] = 0xD000000000000012;
  *(&v11[0] + 1) = 0x8000000000295880;
  v3 = type metadata accessor for EmptyComponentModel(0);
  v14 = v3;
  v15 = sub_245AD0(&qword_31D3A8, type metadata accessor for EmptyComponentModel, &protocol conformance descriptor for EmptyComponentModel);
  v4 = sub_10934(&v13);
  sub_264B70();
  v5 = sub_263E50();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  *(v4 + 7) = 0u;
  v4[9] = 0;
  *(v4 + 5) = 0u;
  sub_34A0(v9, (v4 + 5), &qword_315D38, &unk_266E30);
  v7 = *(v3 + 24);
  v6(v4 + v7, 1, 1, v5);
  sub_34A0(v11, (v4 + 5), &qword_315D38, &unk_266E30);
  sub_34A0(v2, v4 + v7, &qword_315D48, &qword_266E40);
  return sub_F7CC(&v13, &unk_327F70);
}

uint64_t sub_24509C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_244E34(a2, v5);
}

uint64_t sub_245144@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_E59A0(v10, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t DefaultShelfFooterComponent.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);

  return swift_storeEnumTagMultiPayload();
}

double DefaultShelfFooterComponent.content(for:)@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_262FA0();
  sub_245144(v7);
  sub_E59A0(v7, v4, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v4);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  result = *&v18;
  *(a1 + 40) = v18;
  return result;
}

unint64_t sub_2454D4()
{
  result = qword_327FB8;
  if (!qword_327FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327FB8);
  }

  return result;
}

uint64_t type metadata accessor for DefaultShelfFooterComponent(uint64_t a1)
{
  result = qword_328030;
  if (!qword_328030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2455DC()
{
  result = qword_327FC8;
  if (!qword_327FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327FC8);
  }

  return result;
}

uint64_t sub_2456F8(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_245A6C(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_245AD0(&qword_327FD0, type metadata accessor for DefaultShelfFooterComponent, &protocol conformance descriptor for DefaultShelfFooterComponent);
  return sub_260B30();
}

uint64_t sub_24584C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2458D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_245968()
{
  result = qword_328068;
  if (!qword_328068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328068);
  }

  return result;
}

unint64_t sub_2459C0()
{
  result = qword_328070;
  if (!qword_328070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328070);
  }

  return result;
}

unint64_t sub_245A18()
{
  result = qword_328078;
  if (!qword_328078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328078);
  }

  return result;
}

uint64_t sub_245A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultShelfFooterComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_245B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfBackgroundViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ShelfBackgroundViewModifier(uint64_t a1)
{
  result = qword_328100;
  if (!qword_328100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfBackgroundViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + *(type metadata accessor for ShelfBackgroundViewModifier(0) + 20));
  v10 = *(v2 + 8);
  v11 = *(v3 + 16);
  if (v9 != 1 && v11 == 0 && v10 == 0)
  {
    v14 = 0;
    v15 = 3;
  }

  else
  {
    sub_1DB208(v10, *(v3 + 16));
    v14 = v10;
    v15 = v11;
  }

  v31 = v10;
  v32 = v11;
  type metadata accessor for ShelfBackgroundViewModel(0);
  sub_1DB208(v10, v11);
  sub_1DAE00(v8);
  v16 = sub_1DB310(v9, v8);
  sub_245FD8(v8, type metadata accessor for ColorConstants);
  sub_1DDE58(v31, v32);
  v17 = *(v3 + 16);
  v31 = *(v3 + 8);
  v32 = v17;
  v18 = sub_1DB208(v31, v17);
  v20 = sub_1DB484(v18, v19);
  sub_1DDE58(v31, v32);
  v21 = sub_262500();
  v22 = sub_2EF0(&qword_328080, &qword_28E420);
  (*(*(v22 - 8) + 16))(a2, a1, v22);
  v23 = a2 + *(sub_2EF0(&qword_328088, &qword_28E428) + 36);
  *v23 = v20;
  *(v23 + 8) = v21;

  v24 = sub_262500();
  v25 = a2 + *(sub_2EF0(&qword_328090, &qword_28E430) + 36);
  *v25 = v16;
  *(v25 + 8) = v24;
  KeyPath = swift_getKeyPath();
  v27 = a2 + *(sub_2EF0(&qword_328098, &qword_28E460) + 36);
  *v27 = KeyPath;
  *(v27 + 8) = v14;
  *(v27 + 16) = v15;

  sub_1DB208(v14, v15);

  sub_1DB208(v14, v15);

  sub_1DDE58(v14, v15);
  v28 = swift_getKeyPath();
  v31 = v14;
  v32 = v15;
  LOBYTE(KeyPath) = ShelfBackgroundViewModel.BackgroundKind.requiresBlendForText.getter();

  sub_1DDE58(v14, v15);
  result = sub_2EF0(&qword_3280A0, &qword_28E490);
  v30 = a2 + *(result + 36);
  *v30 = v28;
  *(v30 + 8) = KeyPath & 1;
  return result;
}

uint64_t View.shelfBackground(config:allowDefaultGradient:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ShelfBackgroundViewModifier(0);
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245B24(a1, v8);
  v8[*(v6 + 20)] = a2;
  sub_262E30();
  return sub_245FD8(v8, type metadata accessor for ShelfBackgroundViewModifier);
}

uint64_t sub_245FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_246068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfBackgroundViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_246148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfBackgroundViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_246200(uint64_t a1)
{
  result = type metadata accessor for ShelfBackgroundViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_246278()
{
  result = qword_328138;
  if (!qword_328138)
  {
    sub_2F9C(&qword_3280A0, &qword_28E490);
    sub_246330();
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328138);
  }

  return result;
}

unint64_t sub_246330()
{
  result = qword_328140;
  if (!qword_328140)
  {
    sub_2F9C(&qword_328098, &qword_28E460);
    sub_2463E8();
    sub_8E38(&qword_328160, &qword_328168, &qword_28E528, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328140);
  }

  return result;
}

unint64_t sub_2463E8()
{
  result = qword_328148;
  if (!qword_328148)
  {
    sub_2F9C(&qword_328090, &qword_28E430);
    sub_2464A0();
    sub_8E38(&qword_3216A8, &qword_3216B0, &unk_27EF30, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328148);
  }

  return result;
}

unint64_t sub_2464A0()
{
  result = qword_328150;
  if (!qword_328150)
  {
    sub_2F9C(&qword_328088, &qword_28E428);
    sub_8E38(&qword_328158, &qword_328080, &qword_28E420, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8E38(&qword_3216A8, &qword_3216B0, &unk_27EF30, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328150);
  }

  return result;
}

uint64_t sub_246584(uint64_t *a1)
{
  type metadata accessor for ShelfBackgroundViewModifier(255);
  sub_261730();
  sub_2465F0();
  return swift_getWitnessTable();
}

unint64_t sub_2465F0()
{
  result = qword_328170;
  if (!qword_328170)
  {
    type metadata accessor for ShelfBackgroundViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328170);
  }

  return result;
}

uint64_t ComicCoverEffect.init(shadowScale:cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(type metadata accessor for ComicCoverEffect(0) + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t type metadata accessor for ComicCoverEffect(uint64_t a1)
{
  result = qword_328220;
  if (!qword_328220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_246710@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ComicCoverEffect(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ComicCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ComicCoverEffect(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_246B78(v3, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_246BE0(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v7 + 32))(v15 + v14, v9, v6);
  *a2 = sub_246C44;
  a2[1] = v15;
  return result;
}

uint64_t sub_246AF8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_261420();
  v8 = v7;
  v10 = v9;
  *a4 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a4[1] = v11;
  v12 = sub_2EF0(&qword_328298, &qword_28E758);
  return sub_246C48(a2, a3, a4 + *(v12 + 44), v8, v10);
}

uint64_t sub_246B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComicCoverEffect(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_246BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComicCoverEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_246C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2EF0(&qword_3282A0, &qword_28E760);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = sub_2EF0(&qword_3282A8, &qword_28E768);
  __chkstk_darwin(v17 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v32 - v21);
  *v22 = sub_263560();
  v22[1] = v23;
  v24 = sub_2EF0(&qword_3282B0, &unk_28E770);
  sub_246F1C(a1, a2, v22 + *(v24 + 44), a4, a5);
  sub_247A18(a2, a1, v16, a4, a5);
  v25 = *(a1 + 8);
  v26 = &v16[*(v11 + 44)];
  v27 = *(sub_2617E0() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_261DD0();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v25;
  *(v26 + 1) = v25;
  *&v26[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_8198(v22, v19, &qword_3282A8, &qword_28E768);
  sub_8198(v16, v13, &qword_3282A0, &qword_28E760);
  sub_8198(v19, a3, &qword_3282A8, &qword_28E768);
  v30 = sub_2EF0(&qword_3282B8, &unk_28E780);
  sub_8198(v13, a3 + *(v30 + 48), &qword_3282A0, &qword_28E760);
  sub_8E80(v16, &qword_3282A0, &qword_28E760);
  sub_8E80(v22, &qword_3282A8, &qword_28E768);
  sub_8E80(v13, &qword_3282A0, &qword_28E760);
  return sub_8E80(v19, &qword_3282A8, &qword_28E768);
}

uint64_t sub_246F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v91 = a2;
  v103 = a3;
  v94 = sub_2EF0(&qword_3282F0, &qword_28E7F8) - 8;
  __chkstk_darwin(v94);
  v90 = v76 - v8;
  v102 = sub_2EF0(&qword_3282F8, &qword_28E800) - 8;
  __chkstk_darwin(v102);
  v99 = v76 - v9;
  v100 = sub_2EF0(&qword_328300, &qword_28E808) - 8;
  __chkstk_darwin(v100);
  v97 = v76 - v10;
  v98 = sub_2EF0(&qword_328308, &qword_28E810) - 8;
  __chkstk_darwin(v98);
  v95 = v76 - v11;
  v93 = sub_2EF0(&qword_328310, &qword_28E818) - 8;
  __chkstk_darwin(v93);
  v101 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = v76 - v14;
  __chkstk_darwin(v15);
  v96 = v76 - v16;
  v87 = sub_261180();
  v17 = *(v87 - 8);
  __chkstk_darwin(v87);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v76 - v21;
  v23 = sub_2EF0(&qword_3192B0, &unk_28E820);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = v76 - v25;
  v82 = sub_2EF0(&qword_3192B8, &unk_2793C0) - 8;
  __chkstk_darwin(v82);
  v81 = v76 - v27;
  v28 = sub_2EF0(&qword_3192C0, &unk_28E830);
  v29 = v28 - 8;
  __chkstk_darwin(v28);
  v89 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v76 - v32;
  __chkstk_darwin(v34);
  v80 = v76 - v35;
  v36 = a1;
  v37 = *(a1 + 8);
  v88 = sub_2617E0();
  v38 = *(v88 + 20);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v85 = enum case for RoundedCornerStyle.continuous(_:);
  v84 = sub_261DD0();
  v40 = *(v84 - 8);
  v83 = *(v40 + 104);
  v86 = v40 + 104;
  v83(&v26[v38], v39, v84);
  *v26 = v37;
  *(v26 + 1) = v37;
  v41 = sub_262F80();
  v42 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  *&v26[*(v42 + 52)] = v41;
  *&v26[*(v42 + 56)] = 256;
  v43 = *v36;
  v79 = v36;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v44 = &v26[*(sub_2EF0(&qword_3192D0, &qword_28E840) + 36)];
  v45 = v105;
  *v44 = v104;
  *(v44 + 1) = v45;
  *(v44 + 2) = v106;
  v46 = &v26[*(v24 + 44)];
  *v46 = 0.0;
  v46[1] = (1.0 - v43) * a5 * -0.125;
  v47 = v22;
  sub_246710(v22);
  v78 = enum case for ColorScheme.dark(_:);
  v77 = *(v17 + 104);
  v48 = v87;
  v77(v19);
  v49 = v47;
  LOBYTE(v47) = sub_261170();
  v50 = *(v17 + 8);
  v76[1] = v17 + 8;
  v50(v19, v48);
  v50(v49, v48);
  if (v47)
  {
    v51 = 0.9;
  }

  else
  {
    v51 = 0.75;
  }

  v52 = v81;
  sub_22148(v26, v81, &qword_3192B0, &unk_28E820);
  *(v52 + *(v82 + 44)) = v51;
  sub_22148(v52, v33, &qword_3192B8, &unk_2793C0);
  v53 = &v33[*(v29 + 44)];
  *v53 = a4 * 0.035;
  v53[8] = 0;
  v54 = v80;
  sub_22148(v33, v80, &qword_3192C0, &unk_28E830);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v55 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v56 = v90;
  (*(*(v55 - 8) + 16))(v90, v91, v55);
  v57 = (v56 + *(sub_2EF0(&qword_3282D8, &unk_28E7D8) + 36));
  v58 = v108;
  *v57 = v107;
  v57[1] = v58;
  v57[2] = v109;
  v59 = (v56 + *(v94 + 44));
  v83(&v59[*(v88 + 20)], v85, v84);
  *v59 = v37;
  *(v59 + 1) = v37;
  *&v59[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_246710(v49);
  (v77)(v19, v78, v48);
  LOBYTE(v59) = sub_261170();
  v50(v19, v48);
  v50(v49, v48);
  if (v59)
  {
    v60 = 0.15;
  }

  else
  {
    v60 = 0.5;
  }

  v61 = v99;
  sub_22148(v56, v99, &qword_3282F0, &qword_28E7F8);
  *(v61 + *(v102 + 44)) = v60;
  v62 = v61;
  v63 = v97;
  sub_22148(v62, v97, &qword_3282F8, &qword_28E800);
  v64 = v63 + *(v100 + 44);
  *v64 = a4 * 0.035;
  *(v64 + 8) = 0;
  v65 = v95;
  sub_22148(v63, v95, &qword_328300, &qword_28E808);
  *(v65 + *(v98 + 44)) = 0x3FF199999999999ALL;
  v66 = *(v93 + 44);
  v67 = enum case for BlendMode.color(_:);
  v68 = sub_263640();
  v69 = v92;
  (*(*(v68 - 8) + 104))(&v92[v66], v67, v68);
  sub_22148(v65, v69, &qword_328308, &qword_28E810);
  v70 = v96;
  sub_22148(v69, v96, &qword_328310, &qword_28E818);
  v71 = v89;
  sub_8198(v54, v89, &qword_3192C0, &unk_28E830);
  v72 = v101;
  sub_8198(v70, v101, &qword_328310, &qword_28E818);
  v73 = v103;
  sub_8198(v71, v103, &qword_3192C0, &unk_28E830);
  v74 = sub_2EF0(&qword_328318, &unk_28E848);
  sub_8198(v72, v73 + *(v74 + 48), &qword_328310, &qword_28E818);
  sub_8E80(v70, &qword_328310, &qword_28E818);
  sub_8E80(v54, &qword_3192C0, &unk_28E830);
  sub_8E80(v72, &qword_328310, &qword_28E818);
  return sub_8E80(v71, &qword_3192C0, &unk_28E830);
}

uint64_t sub_247A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v156 = a2;
  v169 = a3;
  v8 = sub_261180();
  v167 = *(v8 - 8);
  v168 = v8;
  __chkstk_darwin(v8);
  v166 = v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v164 = (v146 - v11);
  v182 = sub_2EF0(&qword_319220, &unk_279340) - 8;
  __chkstk_darwin(v182);
  v160 = (v146 - v12);
  v165 = sub_2EF0(&qword_319228, &unk_28E790) - 8;
  __chkstk_darwin(v165);
  v163 = v146 - v13;
  v162 = sub_2EF0(&qword_319230, &unk_279350) - 8;
  __chkstk_darwin(v162);
  v161 = v146 - v14;
  v181 = sub_2EF0(&qword_319238, &unk_28E7A0) - 8;
  __chkstk_darwin(v181);
  v154 = v146 - v15;
  v158 = sub_2EF0(&qword_319240, &unk_279360) - 8;
  __chkstk_darwin(v158);
  v157 = v146 - v16;
  v159 = sub_2EF0(&qword_319248, &unk_28E7B0) - 8;
  __chkstk_darwin(v159);
  v184 = v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v183 = v146 - v19;
  __chkstk_darwin(v20);
  v190 = (v146 - v21);
  __chkstk_darwin(v22);
  v155 = v146 - v23;
  __chkstk_darwin(v24);
  v176 = v146 - v25;
  v26 = sub_2EF0(&qword_319250, &qword_279370) - 8;
  v172 = v26;
  __chkstk_darwin(v26);
  v191 = v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v189 = v146 - v29;
  v153 = sub_2EF0(&qword_3282C0, &qword_28E7C0) - 8;
  __chkstk_darwin(v153);
  v179 = v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v187 = v146 - v32;
  v151 = sub_2EF0(&qword_3282C8, &qword_28E7C8) - 8;
  __chkstk_darwin(v151);
  v178 = v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v188 = v146 - v35;
  v36 = sub_2EF0(&qword_3282D0, &qword_28E7D0);
  v37 = v36 - 8;
  v150 = v36 - 8;
  __chkstk_darwin(v36);
  v177 = v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v175 = v146 - v40;
  __chkstk_darwin(v41);
  v186 = v146 - v42;
  __chkstk_darwin(v43);
  v45 = v146 - v44;
  v46 = sub_2EF0(&qword_3282D8, &unk_28E7D8);
  v47 = v46 - 8;
  __chkstk_darwin(v46);
  v174 = v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = v146 - v50;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v52 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v53 = *(*(v52 - 8) + 16);
  v180 = v51;
  v53(v51, a1, v52);
  v54 = &v51[*(v47 + 44)];
  v55 = v213;
  *v54 = v212;
  *(v54 + 1) = v55;
  *(v54 + 2) = v214;
  v56 = sub_2EF0(&qword_319268, &qword_279380);
  v57 = swift_allocObject();
  v152 = xmmword_269100;
  *(v57 + 16) = xmmword_269100;
  sub_262F80();
  *(v57 + 32) = sub_263450();
  *(v57 + 40) = v58;
  sub_262F80();
  sub_263000();

  *(v57 + 48) = sub_263450();
  *(v57 + 56) = v59;
  sub_2636F0();
  sub_2636E0();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v60 = *(v26 + 44);
  v61 = enum case for BlendMode.plusDarker(_:);
  v62 = sub_263640();
  v63 = *(v62 - 8);
  v64 = *(v63 + 104);
  v65 = v63 + 104;
  v66 = &v45[v60];
  v67 = v62;
  v64(v66, v61);
  v185 = v64;
  v68 = v209;
  v173 = v45;
  *(v45 + 2) = v208;
  *(v45 + 3) = v68;
  *(v45 + 4) = v210;
  v69 = v211;
  v70 = v207;
  *v45 = v206;
  *(v45 + 1) = v70;
  *(v45 + 10) = v69;
  *(v45 + 11) = 0x3FA999999999999ALL;
  v45[*(v37 + 44)] = 1;
  v148 = v56;
  v71 = swift_allocObject();
  v147 = xmmword_28E580;
  *(v71 + 16) = xmmword_28E580;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v71 + 32) = sub_263450();
  *(v71 + 40) = v72;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v71 + 48) = sub_263450();
  *(v71 + 56) = v73;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v71 + 64) = sub_263450();
  *(v71 + 72) = v74;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v71 + 80) = sub_263450();
  *(v71 + 88) = v75;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v71 + 96) = sub_263450();
  *(v71 + 104) = v76;
  sub_263730();
  sub_263740();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v77 = *(sub_2EF0(&qword_3282E0, &qword_28E7E8) + 36);
  v149 = enum case for BlendMode.softLight(_:);
  v78 = v188;
  (v64)(v188 + v77);
  v79 = v203;
  *(v78 + 32) = v202;
  *(v78 + 48) = v79;
  *(v78 + 64) = v204;
  *(v78 + 80) = v205;
  v80 = v201;
  *v78 = v200;
  *(v78 + 16) = v80;
  *(v78 + *(v151 + 44)) = 1;
  v81 = swift_allocObject();
  *(v81 + 16) = v147;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v81 + 32) = sub_263450();
  *(v81 + 40) = v82;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v81 + 48) = sub_263450();
  *(v81 + 56) = v83;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v81 + 64) = sub_263450();
  *(v81 + 72) = v84;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v81 + 80) = sub_263450();
  *(v81 + 88) = v85;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v81 + 96) = sub_263450();
  *(v81 + 104) = v86;
  sub_263730();
  sub_263740();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v87 = enum case for BlendMode.screen(_:);
  v88 = v185;
  v89 = v186;
  v90 = v186 + *(v172 + 44);
  LODWORD(v151) = enum case for BlendMode.screen(_:);
  v185(v90, enum case for BlendMode.screen(_:), v67);
  v91 = *&v198[51];
  *(v89 + 32) = *&v198[43];
  *(v89 + 48) = v91;
  *(v89 + 64) = *&v198[59];
  v92 = v199;
  v93 = *&v198[35];
  *v89 = *&v198[27];
  *(v89 + 16) = v93;
  *(v89 + 80) = v92;
  *(v89 + 88) = 0x3FD0000000000000;
  *(v89 + *(v150 + 44)) = 1;
  v94 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  *&v198[3] = v215;
  *&v198[11] = v216;
  *&v198[19] = v217;
  v95 = v187;
  v96 = v187 + *(v153 + 44);
  v170 = v67;
  v88(v96, v87, v67);
  v171 = v65;
  v97 = *&v198[8];
  *(v95 + 10) = *v198;
  *v95 = v94;
  *(v95 + 8) = 256;
  *(v95 + 26) = v97;
  *(v95 + 42) = *&v198[16];
  *(v95 + 56) = *&v198[23];
  *(v95 + 64) = a4 * 0.2;
  *(v95 + 72) = 0;
  *(v95 + 73) = v219[0];
  *(v95 + 76) = *(v219 + 3);
  *(v95 + 80) = 0x3FC3333333333333;
  v98 = swift_allocObject();
  *(v98 + 16) = v152;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v98 + 32) = sub_263450();
  *(v98 + 40) = v99;
  sub_262F80();
  sub_263000();

  *(v98 + 48) = sub_263450();
  *(v98 + 56) = v100;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  *&v146[1] = a5;
  sub_2613A0();
  v101 = v189;
  v88(v189 + *(v172 + 44), v149, v67);
  v102 = v195;
  *(v101 + 32) = v194;
  *(v101 + 48) = v102;
  *(v101 + 64) = v196;
  v103 = v197;
  v104 = v193;
  *v101 = v192;
  *(v101 + 16) = v104;
  *(v101 + 80) = v103;
  *(v101 + 88) = 0x3FD999999999999ALL;
  v105 = *(v156 + 8);
  v172 = sub_2617E0();
  v106 = *(v172 + 20);
  v107 = enum case for RoundedCornerStyle.continuous(_:);
  LODWORD(v152) = enum case for RoundedCornerStyle.continuous(_:);
  v108 = sub_261DD0();
  v109 = *(v108 - 8);
  v150 = *(v109 + 104);
  v153 = v109 + 104;
  v110 = v154;
  (v150)(&v154[v106], v107, v108);
  *v110 = v105;
  v110[1] = v105;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v111 = (v110 + *(v181 + 44));
  v112 = v218[1];
  *v111 = v218[0];
  v111[1] = v112;
  v111[2] = v218[2];
  v113 = sub_262F80();
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  v114 = v160;
  sub_261230();

  *v114 = v113;
  v115 = v164;
  sub_246710(v164);
  v117 = v166;
  v116 = v167;
  v118 = v168;
  (*(v167 + 104))(v166, enum case for ColorScheme.dark(_:), v168);
  LOBYTE(v98) = sub_261170();
  v119 = *(v116 + 8);
  v119(v117, v118);
  v119(v115, v118);
  if (v98)
  {
    v120 = 0.15;
  }

  else
  {
    v120 = 0.5;
  }

  v121 = v163;
  sub_22148(v114, v163, &qword_319220, &unk_279340);
  v122 = v165;
  *(v121 + *(v165 + 44)) = v120;
  v123 = v161;
  v124 = v162;
  v185(&v161[*(v162 + 44)], v151, v170);
  sub_22148(v121, v123, &qword_319228, &unk_28E790);
  v125 = v157;
  v126 = v158;
  sub_22148(v123, &v157[*(v158 + 44)], &qword_319230, &unk_279350);
  sub_22148(v110, v125, &qword_319238, &unk_28E7A0);
  v127 = v125;
  v128 = v155;
  sub_22148(v127, v155, &qword_319240, &unk_279360);
  v129 = v159;
  *(v128 + *(v159 + 44)) = 1;
  v130 = v176;
  sub_22148(v128, v176, &qword_319248, &unk_28E7B0);
  v131 = v190;
  (v150)(v190 + *(v172 + 20), v152, v108);
  *v131 = v105;
  v131[1] = v105;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v132 = (v131 + *(v181 + 44));
  v133 = v218[4];
  *v132 = v218[3];
  v132[1] = v133;
  v132[2] = v218[5];
  v134 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_262F80();
  sub_263000();

  v135 = (v131 + *(v126 + 44));
  sub_261230();

  *v135 = v134;
  *(v135 + *(v122 + 44)) = 1048576000;
  v185(v135 + *(v124 + 44), enum case for BlendMode.darken(_:), v170);
  *(v131 + *(v129 + 44)) = 1;
  v136 = v174;
  sub_8198(v180, v174, &qword_3282D8, &unk_28E7D8);
  v137 = v175;
  sub_8198(v173, v175, &qword_3282D0, &qword_28E7D0);
  v138 = v178;
  sub_8198(v188, v178, &qword_3282C8, &qword_28E7C8);
  v139 = v177;
  sub_8198(v186, v177, &qword_3282D0, &qword_28E7D0);
  v140 = v179;
  sub_8198(v187, v179, &qword_3282C0, &qword_28E7C0);
  sub_8198(v189, v191, &qword_319250, &qword_279370);
  sub_8198(v130, v183, &qword_319248, &unk_28E7B0);
  sub_8198(v190, v184, &qword_319248, &unk_28E7B0);
  v141 = v169;
  sub_8198(v136, v169, &qword_3282D8, &unk_28E7D8);
  v142 = sub_2EF0(&qword_3282E8, &qword_28E7F0);
  sub_8198(v137, v141 + v142[12], &qword_3282D0, &qword_28E7D0);
  sub_8198(v138, v141 + v142[16], &qword_3282C8, &qword_28E7C8);
  sub_8198(v139, v141 + v142[20], &qword_3282D0, &qword_28E7D0);
  sub_8198(v140, v141 + v142[24], &qword_3282C0, &qword_28E7C0);
  sub_8198(v191, v141 + v142[28], &qword_319250, &qword_279370);
  v143 = v183;
  sub_8198(v183, v141 + v142[32], &qword_319248, &unk_28E7B0);
  v144 = v184;
  sub_8198(v184, v141 + v142[36], &qword_319248, &unk_28E7B0);
  sub_8E80(v190, &qword_319248, &unk_28E7B0);
  sub_8E80(v176, &qword_319248, &unk_28E7B0);
  sub_8E80(v189, &qword_319250, &qword_279370);
  sub_8E80(v187, &qword_3282C0, &qword_28E7C0);
  sub_8E80(v186, &qword_3282D0, &qword_28E7D0);
  sub_8E80(v188, &qword_3282C8, &qword_28E7C8);
  sub_8E80(v173, &qword_3282D0, &qword_28E7D0);
  sub_8E80(v180, &qword_3282D8, &unk_28E7D8);
  sub_8E80(v144, &qword_319248, &unk_28E7B0);
  sub_8E80(v143, &qword_319248, &unk_28E7B0);
  sub_8E80(v191, &qword_319250, &qword_279370);
  sub_8E80(v179, &qword_3282C0, &qword_28E7C0);
  sub_8E80(v177, &qword_3282D0, &qword_28E7D0);
  sub_8E80(v178, &qword_3282C8, &qword_28E7C8);
  sub_8E80(v175, &qword_3282D0, &qword_28E7D0);
  return sub_8E80(v174, &qword_3282D8, &unk_28E7D8);
}

uint64_t sub_249020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_246B78(v5, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_246BE0(v15, v18 + v16);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  *a3 = sub_249B64;
  a3[1] = v18;
  return result;
}

uint64_t sub_2491FC(uint64_t a1)
{
  result = sub_2493CC(&qword_3281C0, type metadata accessor for ComicCoverEffect, &protocol conformance descriptor for ComicCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_249300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2493CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_249468@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_2496F8(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_2494AC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

uint64_t sub_249534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249870();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_249598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249870();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_2495FC(uint64_t a1)
{
  v2 = sub_249870();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_24964C()
{
  result = qword_328280;
  if (!qword_328280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328280);
  }

  return result;
}

unint64_t sub_2496A4()
{
  result = qword_328288;
  if (!qword_328288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328288);
  }

  return result;
}

double sub_2496F8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_2627A0();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMinY(v15);
  sub_262780();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  sub_262790();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetHeight(v19);
  sub_262790();
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetHeight(v21);
  sub_262790();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

unint64_t sub_249870()
{
  result = qword_328290;
  if (!qword_328290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328290);
  }

  return result;
}

uint64_t sub_2498C4()
{
  v1 = (type metadata accessor for ComicCoverEffect(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2EF0(&qword_328178, &qword_28E5C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v1[8];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261180();
    (*(*(v8 - 8) + 8))(v7 + v2, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_249A70@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for ComicCoverEffect(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(sub_2EF0(&qword_328178, &qword_28E5C8) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_246AF8(v2 + v5, v8, a2);
}

uint64_t FontConstants.ListItem.preheader.getter()
{
  v0 = sub_2626C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.caption2(_:), v7, v9);
  v12 = sub_2625C0();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_262680();
  sub_179B10(v6);
  (*(v8 + 8))(v11, v7);
  sub_2625A0();

  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v13 = sub_2626E0();

  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_249EB4(unsigned int *a1)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a1, v5, v7);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v10 = sub_2625C0();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  else
  {
    v11 = enum case for Font.Design.serif (_:);
    v12 = sub_2625C0();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v4, v11, v12);
    (*(v13 + 56))(v4, 0, 1, v12);
  }

  v14 = sub_262680();
  sub_179B10(v4);
  (*(v6 + 8))(v9, v5);
  return v14;
}

uint64_t sub_24A10C(uint64_t (*a1)(void))
{
  a1();
  v1 = sub_2625A0();

  return v1;
}

uint64_t sub_24A160(uint64_t (*a1)(__n128))
{
  v2 = sub_2626C0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  (*(v3 + 104))(v6, enum case for Font.Leading.tight(_:), v2);
  v7 = sub_2626E0();

  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_24A294(uint64_t a1, double a2)
{
  v5 = sub_264ED0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  if (a2 != 1.0)
  {
    v14 = *v2 / a2;
    *v2 = v14;
    (*(v6 + 16))(v8, a1, v5);
    result = (*(v6 + 88))(v8, v5);
    if (result == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
    {
      v15 = round(v14);
    }

    else if (result == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
    {
      v15 = rint(v14);
    }

    else if (result == enum case for FloatingPointRoundingRule.up(_:))
    {
      v15 = ceil(v14);
    }

    else if (result == enum case for FloatingPointRoundingRule.down(_:))
    {
      v15 = floor(v14);
    }

    else if (result == enum case for FloatingPointRoundingRule.towardZero(_:))
    {
      v15 = trunc(v14);
    }

    else if (result == enum case for FloatingPointRoundingRule.awayFromZero(_:))
    {
      v15 = ceil(v14);
      v17 = floor(v14);
      if (v14 < 0.0)
      {
        v15 = v17;
      }
    }

    else
    {
      sub_2647A0();
      result = (*(v6 + 8))(v8, v5);
      v15 = *v2;
    }

    v13 = v15 * a2;
    goto LABEL_34;
  }

  (*(v6 + 16))(&v18 - v10, a1, v5);
  result = (*(v6 + 88))(v11, v5);
  if (result != enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    if (result == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
    {
      v13 = rint(*v2);
      goto LABEL_34;
    }

    if (result == enum case for FloatingPointRoundingRule.up(_:))
    {
      v16 = *v2;
LABEL_12:
      v13 = ceil(v16);
      goto LABEL_34;
    }

    if (result == enum case for FloatingPointRoundingRule.down(_:))
    {
      v16 = *v2;
    }

    else
    {
      if (result == enum case for FloatingPointRoundingRule.towardZero(_:))
      {
        v13 = trunc(*v2);
        goto LABEL_34;
      }

      if (result != enum case for FloatingPointRoundingRule.awayFromZero(_:))
      {
        sub_2647A0();
        return (*(v6 + 8))(v11, v5);
      }

      v16 = *v2;
      if ((*v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = floor(v16);
    goto LABEL_34;
  }

  v13 = round(*v2);
LABEL_34:
  *v2 = v13;
  return result;
}

uint64_t sub_24A5E4()
{
  v0 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_262730();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.caption(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = sub_2625C0();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_262680();
  sub_179B10(v2);
  (*(v4 + 8))(v7, v3);
  v11 = sub_2625A0();

  return v11;
}

uint64_t _s7BooksUI13FontConstantsV6ButtonV05largeE5Title05SwiftB00C0Vvg_0()
{
  v0 = sub_2626C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.subheadline(_:), v7, v9);
  v12 = sub_2625C0();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_262650();
  sub_262680();
  sub_179B10(v6);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v13 = sub_2626E0();

  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_24AA5C(unsigned int *a1)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a1, v5, v7);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v10 = sub_2625C0();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  else
  {
    v11 = enum case for Font.Design.serif (_:);
    v12 = sub_2625C0();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v4, v11, v12);
    (*(v13 + 56))(v4, 0, 1, v12);
  }

  sub_262680();
  sub_179B10(v4);
  (*(v6 + 8))(v9, v5);
  v14 = sub_2625A0();

  return v14;
}

uint64_t sub_24ACDC(unsigned int *a1, double (*a2)(uint64_t))
{
  v4 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *a1, v7, v9);
  v12 = sub_2625C0();
  v13 = (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  a2(v13);
  v14 = sub_262680();
  sub_179B10(v6);
  (*(v8 + 8))(v11, v7);
  return v14;
}

uint64_t FontConstants.GridItem.title.getter()
{
  v0 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_262730();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v3, v5);
  v8 = sub_2625C0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_262680();
  sub_179B10(v2);
  (*(v4 + 8))(v7, v3);
  v9 = sub_2625A0();

  return v9;
}

uint64_t sub_24B028(unsigned int *a1)
{
  v2 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a1, v5, v7);
  v10 = sub_2625C0();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_262680();
  sub_179B10(v4);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t FontConstants.ListItem.finePrint.getter()
{
  v1 = sub_2626C0();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v31 = sub_264ED0();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontConstants.Environment(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_262730();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for Font.TextStyle.caption2(_:), v13, v15);
  sub_243ACC(v0, v12);
  v18 = *(v10 + 32);
  v19 = sub_1CF30(v17, &v12[v18]);
  (*(v14 + 8))(v17, v13);
  v20 = sub_261690();
  (*(*(v20 - 8) + 8))(&v12[v18], v20);
  v21 = v19 * 8.0;
  v22 = *(v0 + *(v10 + 36));
  v23 = v31;
  (*(v6 + 104))(v8, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v31);
  v35 = v21;
  sub_24A294(v8, v22);
  (*(v6 + 8))(v8, v23);
  v24 = sub_2625C0();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  sub_262670();
  sub_179B10(v5);
  v26 = v32;
  v25 = v33;
  v27 = v34;
  (*(v33 + 104))(v32, enum case for Font.Leading.tight(_:), v34);
  v28 = sub_2626E0();

  (*(v25 + 8))(v26, v27);
  return v28;
}

uint64_t sub_24B830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *EnvironmentValues.analyticsAttributes.getter()
{
  sub_12F204();

  return sub_261CB0();
}

uint64_t EnvironmentValues.analyticsAttributes.setter(uint64_t a1)
{
  v2 = sub_2603F0();
  __chkstk_darwin(v2 - 8);
  sub_2397F4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_12F204();
  sub_261CC0();
  return sub_24BBEC(a1);
}

uint64_t sub_24BBEC(uint64_t a1)
{
  v2 = sub_2603F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.isCompact.getter()
{
  v0 = sub_262180();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2EF0(&qword_317970, &qword_269D00);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_2EF0(&qword_3178F0, &qword_269C90);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_261B40();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_8198(v15, v6, &qword_3178F0, &qword_269C90);
  sub_8198(v12, &v6[v16], &qword_3178F0, &qword_269C90);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_8198(v6, v9, &qword_3178F0, &qword_269C90);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_24C060();
      v18 = sub_264390();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_8E80(v12, &qword_3178F0, &qword_269C90);
      sub_8E80(v15, &qword_3178F0, &qword_269C90);
      v21(v9, v0);
      sub_8E80(v6, &qword_3178F0, &qword_269C90);
      return v18 & 1;
    }

    sub_8E80(v12, &qword_3178F0, &qword_269C90);
    sub_8E80(v15, &qword_3178F0, &qword_269C90);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_8E80(v12, &qword_3178F0, &qword_269C90);
  sub_8E80(v15, &qword_3178F0, &qword_269C90);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_8E80(v6, &qword_317970, &qword_269D00);
    v18 = 0;
    return v18 & 1;
  }

  sub_8E80(v6, &qword_3178F0, &qword_269C90);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_24C060()
{
  result = qword_317AC0;
  if (!qword_317AC0)
  {
    sub_262180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317AC0);
  }

  return result;
}

void *EnvironmentValues.shelfBackgroundKind.getter()
{
  sub_1F37A0();

  return sub_261CB0();
}

double sub_24C148()
{
  qword_328850 = 0;
  result = 0.0;
  xmmword_328830 = 0u;
  unk_328840 = 0u;
  return result;
}

uint64_t sub_24C160@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_315B10 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_8198(&xmmword_328830, v1, &qword_3167B8, &qword_268700);
}

id sub_24C1D4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isInCard];
  *a2 = result;
  return result;
}

id sub_24C21C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isInactiveCard];
  *a2 = result;
  return result;
}

uint64_t sub_24C264(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_17450(a1, v7);
  return a5(v6, v7, v8);
}

uint64_t sub_24C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E174();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_24C32C()
{
  v0 = sub_2603F0();
  sub_B600(v0, qword_328858);
  v1 = sub_B080(v0, qword_328858);
  v2 = sub_2605C0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_24C3C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_315B18 != -1)
  {
    swift_once();
  }

  v2 = sub_2603F0();
  v3 = sub_B080(v2, qword_328858);

  return sub_2397F4(v3, a1);
}

void *EnvironmentValues.convertRectFromGlobalHandler.getter()
{
  sub_24C480();

  return sub_261CB0();
}

unint64_t sub_24C480()
{
  result = qword_328870;
  if (!qword_328870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328870);
  }

  return result;
}

uint64_t sub_24C514(uint64_t a1)
{
  sub_8198(a1, v3, &qword_3167B8, &qword_268700);
  sub_8198(v3, &v2, &qword_3167B8, &qword_268700);
  sub_24C480();
  sub_261CC0();
  return sub_8E80(v3, &qword_3167B8, &qword_268700);
}

uint64_t EnvironmentValues.convertRectFromGlobalHandler.setter(uint64_t a1)
{
  sub_8198(a1, v3, &qword_3167B8, &qword_268700);
  sub_24C480();
  sub_261CC0();
  return sub_8E80(a1, &qword_3167B8, &qword_268700);
}

void (*EnvironmentValues.convertRectFromGlobalHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_24C480();
  sub_261CB0();
  return sub_24C6B0;
}

void sub_24C6B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_8198(*a1, v2 + 40, &qword_3167B8, &qword_268700);
    sub_8198(v2 + 40, v2 + 80, &qword_3167B8, &qword_268700);
    sub_261CC0();
    sub_8E80(v2 + 40, &qword_3167B8, &qword_268700);
  }

  else
  {
    sub_8198(*a1, v2 + 40, &qword_3167B8, &qword_268700);
    sub_261CC0();
  }

  sub_8E80(v2, &qword_3167B8, &qword_268700);

  free(v2);
}

unint64_t sub_24C7E4()
{
  result = qword_328878;
  if (!qword_328878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328878);
  }

  return result;
}

uint64_t (*EnvironmentValues.isRootPage.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_24C7E4();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24C900;
}

unint64_t sub_24C940()
{
  result = qword_328880;
  if (!qword_328880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328880);
  }

  return result;
}

void *sub_24C9B4@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_261CB0();
  *a3 = v5;
  return result;
}

uint64_t (*EnvironmentValues.isInList.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_24C940();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CB08;
}

uint64_t (*EnvironmentValues.isInModal.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_EFD9C();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CBD0;
}

uint64_t (*EnvironmentValues.isPendingData.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_449DC();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CC98;
}

uint64_t sub_24CCD8(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = a1();
  a3(&v7, a2, a2, v5);
  return v7;
}

uint64_t (*EnvironmentValues.isReachable.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_3CB4();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CE00;
}

void (*EnvironmentValues.shelfBackgroundKind.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1F37A0();
  sub_261CB0();
  return sub_24CEB0;
}

void sub_24CEB0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v3[2] = v4;
  v5 = *(v3 + 8);
  *(v3 + 24) = v5;
  if (a2)
  {
    sub_1DB208(v4, v5);
    sub_261CC0();
    sub_1DDE58(*v3, *(v3 + 8));
  }

  else
  {
    sub_261CC0();
  }

  free(v3);
}

uint64_t (*EnvironmentValues.isInVibrantContext.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_3BB24();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24CFB8;
}

uint64_t (*EnvironmentValues.isAnODPRecommendation.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_12F2AC();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24D02C;
}

uint64_t (*EnvironmentValues.supportsSuggestionContextMenu.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_12F258();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_24D0A0;
}

void (*EnvironmentValues.analyticsAttributes.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(sub_2603F0() - 8) + 64);
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
  v4[4] = sub_12F204();
  sub_261CB0();
  return sub_24D1E8;
}

void sub_24D1E8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_2397F4((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_2397F4(v3[2], v3[1]);
    sub_261CC0();
    sub_24BBEC(v6);
  }

  else
  {
    sub_261CC0();
  }

  sub_24BBEC(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

unint64_t sub_24D2D8()
{
  result = qword_328888;
  if (!qword_328888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328888);
  }

  return result;
}

uint64_t (*EnvironmentValues.shelfItemIndex.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_24D2D8();
  sub_261CB0();
  return sub_24D3AC;
}

unint64_t sub_24D3D8()
{
  result = qword_328890;
  if (!qword_328890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328890);
  }

  return result;
}

uint64_t (*EnvironmentValues.numberOfItemsOnShelf.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_24D3D8();
  sub_261CB0();
  return sub_24D4AC;
}

uint64_t sub_24D4D8(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_261CB0();
  return v3;
}

unint64_t sub_24D520()
{
  result = qword_328898;
  if (!qword_328898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328898);
  }

  return result;
}

uint64_t (*EnvironmentValues.numberOfColumnsOnShelf.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_24D520();
  sub_261CB0();
  return sub_24D63C;
}

uint64_t EnvironmentValues.objectGraph.getter()
{
  sub_24D6B4();
  sub_261CB0();
  return v1;
}

unint64_t sub_24D6B4()
{
  result = qword_3288A0;
  if (!qword_3288A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288A0);
  }

  return result;
}

uint64_t sub_24D708(uint64_t *a1)
{
  sub_24D6B4();

  return sub_261CC0();
}

void (*EnvironmentValues.objectGraph.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_24D6B4();
  sub_261CB0();
  return sub_24D804;
}

void sub_24D804(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_261CC0();
  }

  else
  {
    sub_261CC0();
  }
}

uint64_t sub_24D8AC@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261180();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_261990();
  (*(v7 + 104))(v9, enum case for ColorScheme.light(_:), v6);
  v13 = sub_261170();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  v15 = sub_263640();
  if (v13)
  {
    v16 = a1;
  }

  else
  {
    v16 = a2;
  }

  return (*(*(v15 - 8) + 104))(a3, *v16, v15);
}

uint64_t EnvironmentValues.defaultBlendModeConsideringVibrancy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_261180();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  sub_3BB24();
  sub_261CB0();
  if (v16[15] == 1)
  {
    sub_261990();
    (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
    v9 = sub_261170();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    v11 = sub_263640();
    if (v9)
    {
      v12 = &enum case for BlendMode.plusDarker(_:);
    }

    else
    {
      v12 = &enum case for BlendMode.plusLighter(_:);
    }

    return (*(*(v11 - 8) + 104))(a1, *v12, v11);
  }

  else
  {
    v13 = enum case for BlendMode.normal(_:);
    v14 = sub_263640();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }
}

uint64_t EnvironmentValues.ordinal.getter()
{
  sub_24D2D8();
  sub_261CB0();
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24DC8C()
{
  result = qword_3288A8;
  if (!qword_3288A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288A8);
  }

  return result;
}

void *sub_24DE84@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_261CB0();
  *a3 = v5;
  return result;
}

void *sub_24DF50@<X0>(void *a1@<X8>)
{
  sub_24D6B4();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

unint64_t sub_24E0C8()
{
  result = qword_3288B0;
  if (!qword_3288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288B0);
  }

  return result;
}

unint64_t sub_24E120()
{
  result = qword_3288B8;
  if (!qword_3288B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288B8);
  }

  return result;
}

unint64_t sub_24E174()
{
  result = qword_3288C0;
  if (!qword_3288C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3288C0);
  }

  return result;
}

uint64_t sub_24E1E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_24E378(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_31A748, &unk_26F940);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_2EF0(&qword_317BF8, &unk_26F930);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E510(uint64_t a1)
{
  sub_23CC88(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_23CC88(319, &qword_31A7B8, type metadata accessor for FontConstants);
    if (v2 <= 0x3F)
    {
      sub_23CC88(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v3 <= 0x3F)
      {
        sub_16D28();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E63C@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  v44 = *(v1 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v1);
  v41 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SizeConstants.Environment(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262730();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v39 - v11;
  v12 = sub_2EF0(&qword_31B578, &qword_270C30);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  v22 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v22 - 8);
  v24 = (&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_261E60();
  sub_40CA0(v24);
  sub_25036C(v24, v21, type metadata accessor for SizeConstants.Environment);
  v25 = v45;
  (*(v7 + 104))(v45, enum case for Font.TextStyle.body(_:), v6);
  sub_2500B8(v21, v18, type metadata accessor for SizeConstants.Spacing);
  (*(v7 + 16))(v9, v25, v6);
  sub_2500B8(v18, v15, type metadata accessor for SizeConstants.Spacing);
  v26 = v40;
  sub_2500B8(v18, v40, type metadata accessor for SizeConstants.Environment);
  v27 = *(v4 + 32);
  v28 = v26;
  v29 = sub_1CF30(v9, v26 + v27);
  v30 = *(v7 + 8);
  v30(v9, v6);
  sub_25045C(v18, type metadata accessor for SizeConstants.Spacing);
  v31 = sub_261690();
  (*(*(v31 - 8) + 8))(v28 + v27, v31);
  v32 = 1.0;
  if ((*&v29 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v32 = v29;
  }

  if ((~*&v29 & 0x7FF0000000000000) != 0)
  {
    v32 = v29;
  }

  *&v15[*(v13 + 44)] = v32;
  v30(v45, v6);
  sub_25045C(v21, type metadata accessor for SizeConstants.Spacing);
  v33 = sub_21FA68(2.0);
  sub_8E80(v15, &qword_31B578, &qword_270C30);
  v34 = v42;
  *v42 = v39;
  *(v34 + 1) = v33;
  *(v34 + 16) = 0;
  sub_2EF0(&qword_328968, &unk_28EFF8);
  v35 = v41;
  sub_2500B8(v46, v41, type metadata accessor for GridItemMetadataRecommendationLockupView);
  v36 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v37 = swift_allocObject();
  sub_25036C(v35, v37 + v36, type metadata accessor for GridItemMetadataRecommendationLockupView);
  sub_2EF0(&qword_328970, &qword_28F008);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_328978, &qword_328970, &qword_28F008, &protocol conformance descriptor for TupleView<A>);
  sub_76AD0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_76AD0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_24EC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v65 = a3;
  v4 = sub_2EF0(&qword_327980, &qword_28D6D0);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v56 - v7;
  v8 = type metadata accessor for MoreButtonView(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v56 - v12);
  v14 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_2EF0(&qword_327968, &qword_28D6B0);
  __chkstk_darwin(v20 - 8);
  v58 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v25 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2EF0(&qword_328980, &qword_28F010);
  __chkstk_darwin(v29 - 8);
  v66 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v56 - v32;
  v56 = v28;
  sub_2500B8(a2, v28, type metadata accessor for GridItemMetadataRecommendationLockupView);
  sub_30CC(v59, v67);
  *v33 = sub_261D30();
  *(v33 + 1) = 0;
  v33[16] = 1;
  v57 = v33;
  v34 = &v33[*(sub_2EF0(&qword_328988, &qword_28F018) + 44)];
  sub_24F310(v24);
  sub_40CA0(v19);
  sub_25036C(v19, v16, type metadata accessor for SizeConstants.Environment);
  sub_25045C(v16, type metadata accessor for SizeConstants.Spacing);
  sub_30CC(a2 + *(v26 + 36) + 48, v13 + v9[8]);
  v35 = (a2 + *(v26 + 40));
  v36 = *v35;
  v37 = v35[1];
  *v13 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v38 = v9[7];
  *(v13 + v38) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v39 = (v13 + v9[9]);
  *v39 = v36;
  v39[1] = v37;
  v40 = v58;
  sub_8198(v24, v58, &qword_327968, &qword_28D6B0);
  v41 = v60;
  sub_2500B8(v13, v60, type metadata accessor for MoreButtonView);
  sub_8198(v40, v34, &qword_327968, &qword_28D6B0);
  v42 = sub_2EF0(&qword_328990, &qword_28F070);
  v43 = v34 + *(v42 + 48);
  *v43 = 0x4020000000000000;
  *(v43 + 8) = 0;
  sub_2500B8(v41, v34 + *(v42 + 64), type metadata accessor for MoreButtonView);

  sub_25045C(v13, type metadata accessor for MoreButtonView);
  sub_8E80(v24, &qword_327968, &qword_28D6B0);
  sub_25045C(v41, type metadata accessor for MoreButtonView);
  sub_8E80(v40, &qword_327968, &qword_28D6B0);
  sub_25045C(v56, type metadata accessor for GridItemMetadataRecommendationLockupView);
  sub_3080(v67);
  v44 = v61;
  sub_24FA80(v61);
  v45 = v57;
  v46 = v66;
  sub_8198(v57, v66, &qword_328980, &qword_28F010);
  v48 = v62;
  v47 = v63;
  v49 = *(v63 + 16);
  v50 = v64;
  v49(v62, v44, v64);
  v51 = v46;
  v52 = v65;
  sub_8198(v51, v65, &qword_328980, &qword_28F010);
  v53 = sub_2EF0(&qword_328998, &unk_28F078);
  v49((v52 + *(v53 + 48)), v48, v50);
  v54 = *(v47 + 8);
  v54(v44, v50);
  sub_8E80(v45, &qword_328980, &qword_28F010);
  v54(v48, v50);
  return sub_8E80(v66, &qword_328980, &qword_28F010);
}

uint64_t sub_24F310@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v60 = sub_263EB0();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_263EE0();
  v61 = *(v3 - 8);
  __chkstk_darwin(v3);
  v58 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v5 - 8);
  v55 = (v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v7 - 8);
  v9 = v53 - v8;
  v10 = sub_262730();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s24RecommendationSwooshItemVMa(0);
  __chkstk_darwin(v14 - 8);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v17 - 8);
  v19 = (v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_2EF0(&qword_327980, &qword_28D6D0);
  v21 = *(v20 - 8);
  v63 = v20;
  v64 = v21;
  __chkstk_darwin(v20);
  v56 = v53 - v22;
  v23 = (v1 + *(type metadata accessor for GridItemMetadataRecommendationLockupView(0) + 28));
  v24 = v23[3];
  if (v24)
  {
    v53[0] = v23[2];
    v54 = v3;
    v53[2] = v24;

    v53[1] = v1;
    sub_40D40(v19);
    sub_25036C(v19, v16, type metadata accessor for FontConstants.Environment);
    (*(v11 + 104))(v13, enum case for Font.TextStyle.footnote(_:), v10);
    v25 = sub_2625C0();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    sub_262680();
    sub_8E80(v9, &qword_318458, &unk_26B270);
    (*(v11 + 8))(v13, v10);
    sub_25045C(v16, _s24RecommendationSwooshItemVMa);
    v26 = sub_262840();
    v28 = v27;
    v30 = v29;

    v31 = v55;
    sub_404B8(v55);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    sub_25045C(v31, type metadata accessor for ColorConstants);
    v32 = sub_2627E0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v55 = v37;
    sub_39DBC(v26, v28, v30 & 1);

    v39 = v23[5];
    KeyPath = swift_getKeyPath();
    v67 = v32;
    v68 = v34;
    v36 &= 1u;
    v69 = v36;
    v70 = v38;
    v71 = KeyPath;
    v72 = v39;
    v73 = 0;
    v41 = v59;
    v42 = v57;
    v43 = v60;
    (*(v59 + 104))(v57, enum case for AutomationSemantics.Subcomponent.subtitle(_:), v60);
    memset(v66, 0, sizeof(v66));
    memset(v65, 0, sizeof(v65));
    v44 = v58;
    sub_263EC0();
    sub_8E80(v65, &qword_316200, &qword_267FD0);
    sub_8E80(v66, &qword_316200, &qword_267FD0);
    (*(v41 + 8))(v42, v43);
    sub_2EF0(&qword_3189D8, &unk_27CEE0);
    sub_58070();
    v45 = v56;
    sub_262930();

    (*(v61 + 8))(v44, v54);
    sub_39DBC(v32, v34, v36);

    v46 = v62;
    v47 = v45;
    v48 = v63;
    (*(v64 + 32))(v62, v47, v63);
    return (*(v64 + 56))(v46, 0, 1, v48);
  }

  else
  {
    v50 = v63;
    v51 = *(v64 + 56);
    v52 = v62;

    return v51(v52, 1, 1, v50);
  }
}

double sub_24FA80@<D0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v46 = sub_263EB0();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_263EE0();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v5 - 8);
  v42 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_262730();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s24RecommendationSwooshItemVMa(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FontConstants(0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = v1 + *(type metadata accessor for GridItemMetadataRecommendationLockupView(0) + 28);

  sub_40D40(v19);
  sub_25036C(v19, v16, type metadata accessor for FontConstants.Environment);
  (*(v11 + 104))(v13, enum case for Font.TextStyle.footnote(_:), v10);
  v20 = sub_2625C0();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_262680();
  sub_8E80(v9, &qword_318458, &unk_26B270);
  (*(v11 + 8))(v13, v10);
  sub_262630();
  sub_2626B0();

  sub_25045C(v16, _s24RecommendationSwooshItemVMa);
  v21 = sub_262840();
  v23 = v22;
  LOBYTE(v16) = v24;

  v25 = v42;
  sub_404B8(v42);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_25045C(v25, type metadata accessor for ColorConstants);
  v26 = sub_2627E0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v42 = v31;
  sub_39DBC(v21, v23, v16 & 1);

  v33 = *(v41 + 32);
  KeyPath = swift_getKeyPath();
  v52 = v26;
  v53 = v28;
  LOBYTE(v21) = v30 & 1;
  v54 = v30 & 1;
  v55 = v32;
  v56 = KeyPath;
  v57 = v33;
  v58 = 0;
  v35 = v45;
  v36 = v44;
  v37 = v46;
  (*(v45 + 104))(v44, enum case for AutomationSemantics.Subcomponent.title(_:), v46);
  memset(v51, 0, sizeof(v51));
  memset(v50, 0, sizeof(v50));
  v38 = v43;
  sub_263EC0();
  sub_8E80(v50, &qword_316200, &qword_267FD0);
  sub_8E80(v51, &qword_316200, &qword_267FD0);
  (*(v35 + 8))(v36, v37);
  sub_2EF0(&qword_3189D8, &unk_27CEE0);
  sub_58070();
  sub_262930();
  (*(v47 + 8))(v38, v48);
  sub_39DBC(v26, v28, v21);

  return result;
}

uint64_t sub_2500B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_250120()
{
  v1 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + v1[5];
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v3 + v1[6];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[7];

  sub_3080((v11 + 48));

  return swift_deallocObject();
}

uint64_t sub_25036C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2503D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GridItemMetadataRecommendationLockupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EC94(a1, v6, a2);
}

uint64_t sub_25045C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2504F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_250578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t CoverStackView.init(layout:enableOverscrollEffects:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for CoverStackView(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t CoverStackView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v67 = sub_260290();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v60 - v5;
  v65 = sub_264410();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v60 - v8;
  v87 = sub_262370();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v12 = sub_2646F0();
  v13 = sub_2F9C(&qword_328A40, &qword_28F0E8);
  WitnessTable = swift_getWitnessTable();
  v102 = v12;
  v103 = &type metadata for Double;
  v104 = v13;
  v105 = WitnessTable;
  v106 = &protocol witness table for Double;
  v72 = sub_2633D0();
  v101 = sub_251298();
  v71 = swift_getWitnessTable();
  v15 = sub_263300();
  v74 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = sub_261730();
  v76 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v60 - v19;
  v21 = sub_261730();
  v80 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v60 - v22;
  v68 = swift_getWitnessTable();
  v99 = v68;
  v100 = &protocol witness table for _OffsetEffect;
  v69 = swift_getWitnessTable();
  v97 = v69;
  v98 = &protocol witness table for _FrameLayout;
  v24 = swift_getWitnessTable();
  v73 = v21;
  v102 = v21;
  v103 = v24;
  v70 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v75 = &v60 - v26;
  sub_262420();
  v78 = OpaqueTypeMetadata2;
  v79 = sub_261730();
  v86 = *(v79 - 8);
  __chkstk_darwin(v79);
  v89 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v82 = &v60 - v29;
  __chkstk_darwin(v30);
  v83 = &v60 - v31;
  sub_263560();
  v90 = v10;
  v91 = v11;
  v92 = v81;
  sub_2632F0();
  (*(v11 + 48))(v10, v11);
  sub_262DC0();
  (*(v74 + 8))(v17, v15);
  (*(v11 + 32))(v10, v11);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v32 = v23;
  sub_262DA0();
  (*(v76 + 8))(v20, v18);
  v33 = v10;
  v76 = *(v11 + 56);
  if ((v76)(v10, v11))
  {
    v34 = v84;
    sub_262350();
  }

  else
  {
    v34 = v84;
    sub_262360();
  }

  v35 = v75;
  v36 = v73;
  v37 = v70;
  sub_262C70();
  (*(v85 + 8))(v34, v87);
  (*(v80 + 8))(v32, v36);
  v102 = (*(v11 + 64))(v33, v11);
  v103 = v38;
  v95 = v36;
  v96 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10A84();
  v40 = v78;
  sub_262C00();

  (*(v77 + 8))(v35, v40);
  if ((v76)(v33, v11))
  {
    v41 = v61;
    sub_2643A0();
    v87 = OpaqueTypeConformance2;
    v42 = v64;
    sub_260260();
    v43 = v63;
    v44 = v65;
    (*(v63 + 16))(v60, v41, v65);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v47 = v66;
    v48 = v67;
    (*(v66 + 16))(v62, v42, v67);
    v49 = sub_264490();
    v51 = v50;
    v52 = v42;
    OpaqueTypeConformance2 = v87;
    (*(v47 + 8))(v52, v48);
    (*(v43 + 8))(v41, v44);
  }

  else
  {
    v49 = 0;
    v51 = 0xE000000000000000;
  }

  v102 = v49;
  v103 = v51;
  v53 = v82;
  v54 = v79;
  v55 = v89;
  sub_261710();

  v56 = *(v86 + 8);
  v56(v55, v54);
  v57 = sub_253A3C(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v93 = OpaqueTypeConformance2;
  v94 = v57;
  swift_getWitnessTable();
  v58 = v83;
  sub_1609C();
  v56(v53, v54);
  sub_1609C();
  return (v56)(v58, v54);
}

unint64_t sub_251298()
{
  result = qword_328A48;
  if (!qword_328A48)
  {
    sub_2F9C(&qword_328A40, &qword_28F0E8);
    sub_25137C(&qword_328A50, &qword_328A58, &qword_28F0F0, sub_251430);
    sub_25137C(&qword_328A88, &qword_328A90, &qword_28F110, sub_25162C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328A48);
  }

  return result;
}

uint64_t sub_25137C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_253A3C(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251430()
{
  result = qword_328A60;
  if (!qword_328A60)
  {
    sub_2F9C(&qword_328A68, &qword_28F0F8);
    sub_2F9C(&qword_3188E0, &qword_274300);
    sub_2F9C(&qword_328A70, &qword_28F100);
    sub_E2390();
    sub_2F9C(&qword_328A78, &qword_28F108);
    sub_2618D0();
    sub_253A3C(&qword_328A80, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2515C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328A60);
  }

  return result;
}

unint64_t sub_2515C8()
{
  result = qword_31ECF8;
  if (!qword_31ECF8)
  {
    sub_2F9C(&qword_31ED00, &qword_2794B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ECF8);
  }

  return result;
}

unint64_t sub_25162C()
{
  result = qword_328A98;
  if (!qword_328A98)
  {
    sub_2F9C(&qword_328AA0, &qword_28F118);
    sub_2516B8();
    sub_2515C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328A98);
  }

  return result;
}

unint64_t sub_2516B8()
{
  result = qword_328AA8[0];
  if (!qword_328AA8[0])
  {
    sub_2F9C(&qword_3260F0, &qword_2890C0);
    sub_E2390();
    result = swift_getWitnessTable();
    atomic_store(result, qword_328AA8);
  }

  return result;
}

uint64_t sub_251744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v32 = type metadata accessor for CoverStackView(0, a2, a3, a4);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = v27 - v9;
  swift_getAssociatedTypeWitness();
  v11 = sub_2646F0();
  v30 = v11;
  v12 = sub_2F9C(&qword_328A40, &qword_28F0E8);
  v29 = v12;
  WitnessTable = swift_getWitnessTable();
  v37 = v11;
  v38 = &type metadata for Double;
  v39 = v12;
  v40 = WitnessTable;
  v41 = &protocol witness table for Double;
  v13 = sub_2633D0();
  v31 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = v27 - v18;
  v37 = (*(a3 + 40))(a2, a3, v17);
  v34 = a2;
  v35 = a3;
  v27[1] = swift_getKeyPath();
  v20 = a1;
  v21 = v32;
  (*(v8 + 16))(v10, v20, v32);
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v8 + 32))(v23 + v22, v10, v21);
  v26 = sub_251298();
  sub_2633B0();
  v36 = v26;
  swift_getWitnessTable();
  sub_1609C();
  v24 = *(v31 + 8);
  v24(v15, v13);
  sub_1609C();
  return (v24)(v19, v13);
}

void sub_251AA8(double *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = swift_checkMetadataState();
  *a3 = v5(v6, AssociatedConformanceWitness);
}

uint64_t sub_251B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v149 = a1;
  v158 = a5;
  v138 = sub_2EF0(&qword_328AA0, &qword_28F118);
  __chkstk_darwin(v138);
  v132 = (&v128 - v8);
  v157 = sub_2EF0(&qword_328A90, &qword_28F110);
  __chkstk_darwin(v157);
  v152 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v140 = &v128 - v11;
  v155 = sub_2EF0(&qword_328B30, &qword_28F1F0);
  __chkstk_darwin(v155);
  v156 = &v128 - v12;
  v13 = sub_260290();
  v146 = *(v13 - 8);
  v147 = v13;
  __chkstk_darwin(v13);
  v143 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v144 = &v128 - v16;
  v153 = sub_264410();
  v145 = *(v153 - 8);
  __chkstk_darwin(v153);
  v141 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v128 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v135 = *(AssociatedTypeWitness - 8);
  v133 = *(v135 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v134 = &v128 - v21;
  v148 = type metadata accessor for CoverStackView(0, a3, a4, v22);
  v131 = *(v148 - 8);
  v129 = *(v131 + 64);
  __chkstk_darwin(v148);
  v150 = &v128 - v23;
  v160 = sub_2EF0(&qword_3188E0, &qword_274300);
  __chkstk_darwin(v160);
  v128 = (&v128 - v24);
  v137 = sub_2EF0(&qword_328A68, &qword_28F0F8);
  __chkstk_darwin(v137);
  v136 = &v128 - v25;
  v154 = sub_2EF0(&qword_328A58, &qword_28F0F0);
  __chkstk_darwin(v154);
  v151 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v139 = &v128 - v29;
  v30 = *(a4 + 32);
  v31 = a2;
  v32 = v30(a3, a4, v28);
  v34 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = v149;
  (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness, v32, v34);
  v161 = a3;
  v159 = a4;
  (v30)(a3, a4);
  v37 = v36;
  v38 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v40 = v39;
  v41 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v42 = *(AssociatedConformanceWitness + 16);
  v130 = AssociatedTypeWitness;
  v42(&v174, AssociatedTypeWitness, AssociatedConformanceWitness);
  v43 = v148;
  v44 = *(v148 + 36);
  v162 = v31;
  if (*(v31 + v44) == 1)
  {
    KeyPath = swift_getKeyPath();
    v46 = v128;
    *v128 = KeyPath;
    *(v46 + 40) = 0;
    *(v46 + 48) = swift_getKeyPath();
    *(v46 + 56) = 0;
    v47 = type metadata accessor for CoverView(0);
    v48 = v47[6];
    *(v46 + v48) = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v49 = v47[7];
    *(v46 + v49) = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v50 = (v46 + v47[8]);
    sub_5757C(&v174, &v163);
    type metadata accessor for ProfileRestrictions(0);
    sub_253A3C(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    *v50 = sub_261900();
    v50[1] = v51;
    v52 = v46 + v47[9];
    LOBYTE(v171) = 1;
    sub_2631D0();
    v53 = *(&v163 + 1);
    *v52 = v163;
    *(v52 + 8) = v53;
    v54 = (v46 + v47[10]);
    v55 = v179;
    v54[4] = v178;
    v54[5] = v55;
    v56 = v181;
    v54[6] = v180;
    v54[7] = v56;
    v57 = v175;
    *v54 = v174;
    v54[1] = v57;
    v58 = v177;
    v54[2] = v176;
    v54[3] = v58;
    *(v46 + v47[11]) = 0;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v59 = (v46 + *(v160 + 36));
    v60 = v172;
    *v59 = v171;
    v59[1] = v60;
    v59[2] = v173;
    v61 = v131;
    (*(v131 + 16))(v150, v162, v43);
    v63 = v134;
    v62 = v135;
    v64 = v130;
    (*(v135 + 16))(v134, v37, v130);
    v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v66 = (v129 + v65 + *(v62 + 80)) & ~*(v62 + 80);
    v67 = swift_allocObject();
    v68 = v159;
    *(v67 + 16) = v161;
    *(v67 + 24) = v68;
    (*(v61 + 32))(v67 + v65, v150, v43);
    (*(v62 + 32))(v67 + v66, v63, v64);
    sub_2EF0(&qword_328A70, &qword_28F100);
    sub_E2390();
    v69 = sub_2F9C(&qword_328A78, &qword_28F108);
    v70 = sub_2618D0();
    v71 = sub_253A3C(&qword_328A80, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
    *&v163 = v70;
    *(&v163 + 1) = v71;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v163 = v69;
    *(&v163 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v73 = v136;
    sub_262AE0();

    sub_8E80(v46, &qword_3188E0, &qword_274300);
    *(v73 + *(v137 + 36)) = v41;
    v74 = v159;
    v75 = *(v159 + 56);
    v76 = v161;
    if (v75(v161, v159))
    {
      sub_2F8C4(&v174);
      v77 = 0;
      v78 = 0xE000000000000000;
    }

    else
    {
      v167 = v178;
      v168 = v179;
      v169 = v180;
      v170 = v181;
      v163 = v174;
      v164 = v175;
      v165 = v176;
      v166 = v177;
      v77 = CoverViewModel.axLabel.getter();
      v78 = v101;
      sub_2F8C4(&v174);
    }

    *&v163 = v77;
    *(&v163 + 1) = v78;
    sub_251430();
    sub_10A84();
    sub_262C00();

    sub_8E80(v73, &qword_328A68, &qword_28F0F8);
    if (v75(v76, v74))
    {
      v102 = 0;
      v103 = 0xE000000000000000;
    }

    else
    {
      v107 = v142;
      sub_2643A0();
      v108 = v144;
      sub_260260();
      v109 = v145;
      (*(v145 + 16))(v141, v107, v153);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v111 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v113 = v146;
      v112 = v147;
      (*(v146 + 16))(v143, v108, v147);
      v102 = sub_264490();
      v103 = v114;
      (*(v113 + 8))(v108, v112);
      (*(v109 + 8))(v107, v153);
    }

    *&v163 = v102;
    *(&v163 + 1) = v103;
    v115 = v139;
    v116 = v151;
    sub_261710();

    sub_8E80(v116, &qword_328A58, &qword_28F0F0);
    sub_253D88(v115, v156);
    swift_storeEnumTagMultiPayload();
    sub_25137C(&qword_328A50, &qword_328A58, &qword_28F0F0, sub_251430);
    sub_25137C(&qword_328A88, &qword_328A90, &qword_28F110, sub_25162C);
    sub_261F80();
    return sub_8E80(v115, &qword_328A58, &qword_28F0F0);
  }

  else
  {
    v79 = swift_getKeyPath();
    v80 = v132;
    *v132 = v79;
    *(v80 + 40) = 0;
    *(v80 + 48) = swift_getKeyPath();
    *(v80 + 56) = 0;
    v81 = type metadata accessor for CoverView(0);
    v82 = v81[6];
    *(v80 + v82) = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v83 = v81[7];
    *(v80 + v83) = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v84 = (v80 + v81[8]);
    sub_5757C(&v174, &v163);
    type metadata accessor for ProfileRestrictions(0);
    sub_253A3C(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
    *v84 = sub_261900();
    v84[1] = v85;
    v86 = v80 + v81[9];
    LOBYTE(v171) = 1;
    sub_2631D0();
    v87 = *(&v163 + 1);
    *v86 = v163;
    *(v86 + 8) = v87;
    v88 = (v80 + v81[10]);
    v89 = v179;
    v88[4] = v178;
    v88[5] = v89;
    v90 = v181;
    v88[6] = v180;
    v88[7] = v90;
    v91 = v175;
    *v88 = v174;
    v88[1] = v91;
    v92 = v177;
    v88[2] = v176;
    v88[3] = v92;
    *(v80 + v81[11]) = 0;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v93 = (v80 + *(v160 + 36));
    v94 = v172;
    *v93 = v171;
    v93[1] = v94;
    v93[2] = v173;
    v95 = (v80 + *(sub_2EF0(&qword_3260F0, &qword_2890C0) + 36));
    *v95 = v38;
    *(v95 + 1) = v40;
    *(v80 + *(v138 + 36)) = v41;
    v96 = v159;
    v97 = *(v159 + 56);
    v98 = v161;
    if (v97(v161, v159))
    {
      sub_2F8C4(&v174);
      v99 = 0;
      v100 = 0xE000000000000000;
    }

    else
    {
      v167 = v178;
      v168 = v179;
      v169 = v180;
      v170 = v181;
      v163 = v174;
      v164 = v175;
      v165 = v176;
      v166 = v177;
      v99 = CoverViewModel.axLabel.getter();
      v100 = v104;
      sub_2F8C4(&v174);
    }

    *&v163 = v99;
    *(&v163 + 1) = v100;
    sub_25162C();
    sub_10A84();
    sub_262C00();

    sub_8E80(v80, &qword_328AA0, &qword_28F118);
    if (v97(v98, v96))
    {
      v105 = 0;
      v106 = 0xE000000000000000;
    }

    else
    {
      v118 = v142;
      sub_2643A0();
      v119 = v144;
      sub_260260();
      v120 = v145;
      (*(v145 + 16))(v141, v118, v153);
      type metadata accessor for BundleFinder();
      v121 = swift_getObjCClassFromMetadata();
      v122 = [objc_opt_self() bundleForClass:v121];
      v124 = v146;
      v123 = v147;
      (*(v146 + 16))(v143, v119, v147);
      v105 = sub_264490();
      v106 = v125;
      (*(v124 + 8))(v119, v123);
      (*(v120 + 8))(v118, v153);
    }

    *&v163 = v105;
    *(&v163 + 1) = v106;
    v126 = v140;
    v127 = v152;
    sub_261710();

    sub_8E80(v127, &qword_328A90, &qword_28F110);
    sub_253A84(v126, v156);
    swift_storeEnumTagMultiPayload();
    sub_25137C(&qword_328A50, &qword_328A58, &qword_28F0F0, sub_251430);
    sub_25137C(&qword_328A88, &qword_328A90, &qword_28F110, sub_25162C);
    sub_261F80();
    return sub_8E80(v126, &qword_328A90, &qword_28F110);
  }
}

uint64_t sub_252D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v41[0] = a2;
  v41[1] = a1;
  v43 = a4;
  v42 = sub_2EF0(&qword_328A78, &qword_28F108);
  v4 = *(v42 - 8);
  __chkstk_darwin(v42);
  v6 = v41 - v5;
  v7 = sub_261FC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261620();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261610();
  sub_261430();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v12 + 8))(v14, v11);
  v46.origin.x = v16;
  v46.origin.y = v18;
  v46.size.width = v20;
  v46.size.height = v22;
  MinY = CGRectGetMinY(v46);
  v44 = 0xD00000000000001ALL;
  v45 = 0x80000000002950A0;
  sub_2621B0();
  sub_261440();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  (*(v8 + 8))(v10, v7);
  v47.origin.x = v25;
  v47.origin.y = v27;
  v47.size.width = v29;
  v47.size.height = v31;
  v32 = MinY - CGRectGetMinY(v47);
  if (v32 > 0.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0.0;
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = *(AssociatedConformanceWitness + 48);
  v36 = swift_checkMetadataState();
  v35(v36, AssociatedConformanceWitness, v33);
  (*(AssociatedConformanceWitness + 56))(v36, AssociatedConformanceWitness, v33);
  sub_263710();
  v37 = sub_2618D0();
  v38 = sub_253A3C(&qword_328A80, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  sub_261370();
  v44 = v37;
  v45 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v42;
  sub_261380();
  return (*(v4 + 8))(v6, v39);
}

uint64_t static CoverStackView.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_264390())
  {
    v9 = type metadata accessor for CoverStackView(0, a3, a4, v8);
    v10 = *(a1 + *(v9 + 36)) ^ *(a2 + *(v9 + 36)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_253238(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2532B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_253424(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_253650(void *a1)
{
  swift_getAssociatedTypeWitness();
  sub_2646F0();
  sub_2F9C(&qword_328A40, &qword_28F0E8);
  swift_getWitnessTable();
  sub_2633D0();
  sub_251298();
  swift_getWitnessTable();
  sub_263300();
  sub_261730();
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_262420();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  sub_253A3C(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

__n128 sub_2538A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2538B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for CoverStackView(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_253984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for CoverStackView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_251B54(a1, v9, v6, v7, a3);
}

uint64_t sub_253A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_253A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_328A90, &qword_28F110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for CoverStackView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  (*(*(v5 - 8) + 8))(v4 + v7, v5);
  (*(v10 + 8))(v4 + v11, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_253C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for CoverStackView(0, *(v3 + 16), *(v3 + 24), a2) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_252D40(a1, v3 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)), a3);
}

uint64_t sub_253D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_328A58, &qword_28F0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t YearInReviewPagedFrame.exposureEventType.getter()
{
  v0 = sub_2605D0();
  sub_253E2C();
  return v0;
}

unint64_t sub_253E2C()
{
  result = qword_3174A8;
  if (!qword_3174A8)
  {
    sub_2605D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3174A8);
  }

  return result;
}

uint64_t EnvironmentValues.isRunningAccessibilityTools.getter()
{
  if (sub_261BE0() & 1) != 0 || (sub_261BF0())
  {
    return 1;
  }

  return sub_261BC0();
}

void (*EnvironmentValues.isRunningAccessibilityTools.modify(_BYTE *a1))()
{
  if (sub_261BE0() & 1) != 0 || (sub_261BF0())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_261BC0();
  }

  *a1 = v2 & 1;
  return KeyedEncodingContainer.encode<A>(_:forKey:);
}

uint64_t ListItemView.init(_:contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ListItemView(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v8[7];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a4 + v8[8];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a4 + v8[9];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a4 + v8[10];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v8[11];
  *(a4 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v16 = a4 + v8[12];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  result = sub_25ECA4(a1, a4, type metadata accessor for ListItemViewModel);
  v18 = (a4 + v8[13]);
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t type metadata accessor for ListItemView(uint64_t a1)
{
  result = qword_328CF0;
  if (!qword_328CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_254148(uint64_t a1, double a2)
{
  v30 = type metadata accessor for SizeConstants.Environment(0) - 8;
  __chkstk_darwin(v30);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_262730();
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2EF0(&qword_3269B8, &qword_28B068) - 8;
  __chkstk_darwin(v29);
  v10 = (&v27 - v9);
  v11 = sub_2EF0(&qword_3269C0, &unk_28B070);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v27 - v16);
  sub_25EBC8(v2, &v27 + *(v12 + 36) - v16, type metadata accessor for SizeConstants.Environment);
  *v17 = a2;
  sub_8198(v17, v14, &qword_3269C0, &unk_28B070);
  v18 = a1;
  v19 = v27;
  (*(v6 + 16))(v8, v18, v27);
  sub_8198(v14, v10, &qword_3269C0, &unk_28B070);
  v20 = v28;
  sub_25EBC8(&v14[*(v12 + 36)], v28, type metadata accessor for SizeConstants.Environment);
  v21 = *(v30 + 32);
  v22 = sub_1CF30(v8, v20 + v21);
  (*(v6 + 8))(v8, v19);
  sub_8E80(v14, &qword_3269C0, &unk_28B070);
  v23 = sub_261690();
  (*(*(v23 - 8) + 8))(v20 + v21, v23);
  v24 = 1.0;
  if ((*&v22 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v24 = v22;
  }

  if ((~*&v22 & 0x7FF0000000000000) != 0)
  {
    v24 = v22;
  }

  *(v10 + *(v29 + 44)) = v24;
  v25 = sub_21FD30(*v10);
  sub_8E80(v10, &qword_3269B8, &qword_28B068);
  sub_8E80(v17, &qword_3269C0, &unk_28B070);
  return v25;
}

uint64_t sub_2544C0@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ListItemView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25ECA4(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2546AC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ListItemView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25ECA4(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_254898()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ListItemView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2549F0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ListItemView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_254B48@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318148, &unk_26AEE0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ListItemView(0);
  sub_8198(v1 + *(v10 + 44), v9, &qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261690();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_254D50()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ListItemView(0) + 48);
  result = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {
    v7 = *v5;

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return result;
}

uint64_t ListItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v236 = a1;
  v2 = sub_2EF0(&qword_328B38, &qword_28F410);
  __chkstk_darwin(v2 - 8);
  v210 = &v187 - v3;
  v208 = sub_2EF0(&qword_328B40, &qword_28F418);
  __chkstk_darwin(v208);
  v211 = &v187 - v4;
  v235 = sub_2EF0(&qword_328B48, &qword_28F420);
  __chkstk_darwin(v235);
  v209 = &v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v219 = &v187 - v7;
  v8 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v8 - 8);
  v206 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_2EF0(&qword_328B50, &qword_28F428);
  __chkstk_darwin(v207);
  v204 = &v187 - v10;
  v213 = sub_2EF0(&qword_328B58, &qword_28F430);
  __chkstk_darwin(v213);
  v214 = &v187 - v11;
  v12 = sub_2EF0(&qword_328B60, &qword_28F438);
  v216 = *(v12 - 8);
  v217 = v12;
  __chkstk_darwin(v12);
  v215 = &v187 - v13;
  v230 = sub_2EF0(&qword_328B68, &qword_28F440);
  __chkstk_darwin(v230);
  v212 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v218 = &v187 - v16;
  v234 = sub_2EF0(&qword_328B70, &qword_28F448);
  __chkstk_darwin(v234);
  v232 = &v187 - v17;
  v227 = sub_2EF0(&qword_328B78, &qword_28F450);
  __chkstk_darwin(v227);
  v228 = &v187 - v18;
  v233 = sub_2EF0(&qword_328B80, &qword_28F458);
  __chkstk_darwin(v233);
  v229 = &v187 - v19;
  v20 = sub_262370();
  v21 = *(v20 - 8);
  v220 = v20;
  v221 = v21;
  __chkstk_darwin(v20);
  v226 = &v187 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_31A480, &qword_273520);
  __chkstk_darwin(v23 - 8);
  v202 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v205 = &v187 - v26;
  __chkstk_darwin(v27);
  v203 = &v187 - v28;
  v29 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v29 - 8);
  v194 = &v187 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v196 = &v187 - v32;
  __chkstk_darwin(v33);
  v195 = &v187 - v34;
  v190 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v190);
  v191 = &v187 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_262730();
  v192 = *(v36 - 8);
  v193 = v36;
  __chkstk_darwin(v36);
  v200 = &v187 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v225 = &v187 - v39;
  v201 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v201);
  v197 = &v187 - v40;
  v41 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v41 - 8);
  v198 = (&v187 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  v199 = &v187 - v44;
  __chkstk_darwin(v45);
  v47 = &v187 - v46;
  v48 = type metadata accessor for ListItemView(0);
  v222 = *(v48 - 8);
  __chkstk_darwin(v48 - 8);
  v223 = v49;
  v224 = &v187 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_261690();
  *&v237 = *(v231 - 8);
  __chkstk_darwin(v231);
  v51 = (&v187 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_2EF0(&qword_328B88, &qword_28F460);
  __chkstk_darwin(v52);
  v54 = &v187 - v53;
  v55 = sub_2EF0(&qword_328B90, &qword_28F468);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v58 = &v187 - v57;
  v59 = sub_2EF0(&qword_328B98, &qword_28F470);
  __chkstk_darwin(v59);
  __chkstk_darwin(v60);
  v64 = v1;
  if (!*v1)
  {
    v212 = v54;
    v213 = v63;
    v66 = v47;
    v214 = v52;
    v215 = v58;
    v216 = v56;
    v217 = v55;
    v218 = &v187 - v62;
    v219 = v61;
    sub_254B48(v51);
    v67 = sub_261660();
    v68 = *(v237 + 8);
    *&v237 = v237 + 8;
    v209 = v68;
    (v68)(v51, v231);
    if (v67)
    {
      v210 = sub_261E60();
      LODWORD(v211) = 0;
    }

    else
    {
      LODWORD(v211) = 1;
      v210 = sub_261D30();
    }

    v123 = v192;
    v122 = v193;
    v125 = v190;
    v124 = v191;
    v126 = v66;
    v188 = v66;
    v189 = v64;
    v127 = v64;
    v128 = v224;
    sub_25EBC8(v127, v224, type metadata accessor for ListItemView);
    v129 = (*(v222 + 80) + 16) & ~*(v222 + 80);
    v223 = swift_allocObject();
    sub_25ECA4(v128, v223 + v129, type metadata accessor for ListItemView);
    LODWORD(v224) = sub_262560();
    sub_2544C0(v66);
    v130 = v225;
    v131 = v122;
    (*(v123 + 104))(v225, enum case for Font.TextStyle.body(_:), v122);
    v132 = v199;
    sub_25EBC8(v126, v199, type metadata accessor for SizeConstants);
    v133 = v200;
    (*(v123 + 16))(v200, v130, v122);
    v134 = v197;
    sub_25EBC8(v132, v197, type metadata accessor for SizeConstants);
    sub_25EBC8(v132, v124, type metadata accessor for SizeConstants.Environment);
    v135 = *(v125 + 24);
    v136 = sub_1CF30(v133, v124 + v135);
    v137 = v124;
    v138 = *(v123 + 8);
    v138(v133, v131);
    sub_25EC40(v132, type metadata accessor for SizeConstants);
    (v209)(v137 + v135, v231);
    v139 = 1.0;
    if ((*&v136 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v139 = v136;
    }

    if ((~*&v136 & 0x7FF0000000000000) != 0)
    {
      v139 = v136;
    }

    *(v134 + *(v201 + 36)) = v139;
    v138(v225, v131);
    sub_25EC40(v188, type metadata accessor for SizeConstants);
    sub_21FA54(9.0);
    sub_8E80(v134, &qword_31B4C0, &qword_27C030);
    sub_2610C0();
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v147 = v146;
    LOBYTE(v238) = 0;
    v243 = 0;
    v148 = type metadata accessor for ListItemViewModel(0);
    v149 = v203;
    sub_8198(v189 + *(v148 + 40), v203, &qword_31A480, &qword_273520);
    v150 = type metadata accessor for CardInfo(0);
    v151 = (*(*(v150 - 8) + 48))(v149, 1, v150);
    v152 = v212;
    if (v151 == 1)
    {
      sub_8E80(v149, &qword_31A480, &qword_273520);
      v153 = sub_2601E0();
      v154 = v195;
      (*(*(v153 - 8) + 56))(v195, 1, 1, v153);
    }

    else
    {
      v155 = *(v150 + 20);
      v156 = sub_2601E0();
      v157 = *(v156 - 8);
      v154 = v195;
      (*(v157 + 16))(v195, v149 + v155, v156);
      sub_25EC40(v149, type metadata accessor for CardInfo);
      (*(v157 + 56))(v154, 0, 1, v156);
    }

    v158 = v232;
    v159 = v220;
    v160 = v214;
    KeyPath = swift_getKeyPath();
    v162 = (v152 + *(v160 + 9));
    v163 = sub_2EF0(&qword_31AD20, &unk_2799D0);
    sub_22148(v154, v162 + *(v163 + 28), &qword_31A0C8, &qword_26E2C0);
    *v162 = KeyPath;
    *v152 = v210;
    *(v152 + 8) = v211;
    *(v152 + 16) = 0;
    *(v152 + 24) = 0;
    v164 = v223;
    *(v152 + 32) = sub_25E3A0;
    *(v152 + 40) = v164;
    *(v152 + 48) = v224;
    *(v152 + 56) = v141;
    *(v152 + 64) = v143;
    *(v152 + 72) = v145;
    *(v152 + 80) = v147;
    *(v152 + 88) = 0;
    v165 = v226;
    sub_262350();
    sub_25D758();
    v166 = v215;
    sub_262C70();
    (*(v221 + 8))(v165, v159);
    sub_8E80(v152, &qword_328B88, &qword_28F460);
    v240 = 0uLL;
    sub_2EF0(&qword_316DD0, &qword_2692C0);
    sub_2631D0();
    v237 = v245;
    v167 = v246;
    v168 = v213;
    (*(v216 + 32))(v213, v166, v217);
    v169 = v218;
    v170 = v168 + *(v219 + 36);
    *v170 = v237;
    *(v170 + 16) = v167;
    v117 = &qword_328B98;
    v118 = &qword_28F470;
    sub_22148(v168, v169, &qword_328B98, &qword_28F470);
    sub_8198(v169, v228, &qword_328B98, &qword_28F470);
    swift_storeEnumTagMultiPayload();
    sub_25D664();
    sub_25D8C8();
    v171 = v229;
    sub_261F80();
    sub_8198(v171, v158, &qword_328B80, &qword_28F458);
    swift_storeEnumTagMultiPayload();
    sub_25D5D8();
    sub_25DC70();
    sub_261F80();
    sub_8E80(v171, &qword_328B80, &qword_28F458);
    v121 = v169;
    return sub_8E80(v121, v117, v118);
  }

  if (*v1 == 1)
  {
    v219 = v61;
    if (sub_2549F0() & 1) != 0 && (sub_254B48(v51), v65 = sub_261660(), (*(v237 + 8))(v51, v231), (v65))
    {
      v231 = sub_261E60();
      LODWORD(v237) = 0;
    }

    else
    {
      LODWORD(v237) = 1;
      v231 = sub_261D30();
    }

    v75 = v204;
    v76 = v224;
    sub_25EBC8(v64, v224, type metadata accessor for ListItemView);
    v77 = (*(v222 + 80) + 16) & ~*(v222 + 80);
    v78 = swift_allocObject();
    sub_25ECA4(v76, v78 + v77, type metadata accessor for ListItemView);
    LOBYTE(v76) = sub_262500();
    v79 = v198;
    sub_2544C0(v198);
    v80 = v206;
    sub_25ECA4(v79, v206, type metadata accessor for SizeConstants.Environment);
    sub_25EC40(v80, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v243 = 0;
    v242 = 0;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_261830();
    *&v244[55] = v248;
    *&v244[71] = v249;
    *&v244[87] = v250;
    *&v244[103] = v251;
    *&v244[7] = v245;
    *&v244[23] = v246;
    *&v244[39] = v247;
    v89 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v91 = v90;
    v92 = v75 + *(v207 + 36);
    sub_2599E4(v92);
    v93 = (v92 + *(sub_2EF0(&qword_328C38, &qword_28F4D0) + 36));
    *v93 = v89;
    v93[1] = v91;
    *v75 = v231;
    *(v75 + 8) = v237;
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    *(v75 + 32) = sub_25DF80;
    *(v75 + 40) = v78;
    *(v75 + 48) = v76;
    *(v75 + 56) = v82;
    *(v75 + 64) = v84;
    *(v75 + 72) = v86;
    *(v75 + 80) = v88;
    *(v75 + 88) = 0;
    v94 = *&v244[32];
    *(v75 + 137) = *&v244[48];
    *(v75 + 121) = v94;
    v95 = *v244;
    *(v75 + 105) = *&v244[16];
    *(v75 + 89) = v95;
    *(v75 + 200) = *&v244[111];
    v96 = *&v244[80];
    *(v75 + 185) = *&v244[96];
    *(v75 + 169) = v96;
    *(v75 + 153) = *&v244[64];
    v97 = type metadata accessor for ListItemViewModel(0);
    v98 = v205;
    sub_8198(v64 + *(v97 + 40), v205, &qword_31A480, &qword_273520);
    v99 = type metadata accessor for CardInfo(0);
    if ((*(*(v99 - 8) + 48))(v98, 1, v99) == 1)
    {
      sub_8E80(v98, &qword_31A480, &qword_273520);
      v100 = sub_2601E0();
      v101 = v196;
      (*(*(v100 - 8) + 56))(v196, 1, 1, v100);
    }

    else
    {
      v102 = *(v99 + 20);
      v103 = sub_2601E0();
      v104 = *(v103 - 8);
      v101 = v196;
      (*(v104 + 16))(v196, v98 + v102, v103);
      sub_25EC40(v98, type metadata accessor for CardInfo);
      (*(v104 + 56))(v101, 0, 1, v103);
    }

    v105 = v232;
    v106 = v220;
    v107 = v221;
    v108 = swift_getKeyPath();
    v109 = v214;
    v110 = &v214[*(v213 + 36)];
    v111 = sub_2EF0(&qword_31AD20, &unk_2799D0);
    sub_22148(v101, v110 + *(v111 + 28), &qword_31A0C8, &qword_26E2C0);
    *v110 = v108;
    sub_22148(v75, v109, &qword_328B50, &qword_28F428);
    v112 = v226;
    sub_262350();
    sub_25D9BC();
    v113 = v215;
    sub_262C70();
    (*(v107 + 8))(v112, v106);
    sub_8E80(v109, &qword_328B58, &qword_28F430);
    v238 = 0;
    v239 = 0;
    sub_2EF0(&qword_316DD0, &qword_2692C0);
    sub_2631D0();
    v237 = v240;
    v114 = v241;
    v115 = v212;
    (*(v216 + 32))(v212, v113, v217);
    v116 = v115 + *(v230 + 36);
    *v116 = v237;
    *(v116 + 16) = v114;
    v117 = &qword_328B68;
    v118 = &qword_28F440;
    v119 = v218;
    sub_22148(v115, v218, &qword_328B68, &qword_28F440);
    sub_8198(v119, v228, &qword_328B68, &qword_28F440);
    swift_storeEnumTagMultiPayload();
    sub_25D664();
    sub_25D8C8();
    v120 = v229;
    sub_261F80();
    sub_8198(v120, v105, &qword_328B80, &qword_28F458);
    swift_storeEnumTagMultiPayload();
    sub_25D5D8();
    sub_25DC70();
    sub_261F80();
    sub_8E80(v120, &qword_328B80, &qword_28F458);
    v121 = v119;
    return sub_8E80(v121, v117, v118);
  }

  v69 = v210;
  sub_259C58(v210);
  v70 = type metadata accessor for ListItemViewModel(0);
  v71 = v202;
  sub_8198(&v1[*(v70 + 40)], v202, &qword_31A480, &qword_273520);
  v72 = type metadata accessor for CardInfo(0);
  if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
  {
    sub_8E80(v71, &qword_31A480, &qword_273520);
    v73 = sub_2601E0();
    v74 = v194;
    (*(*(v73 - 8) + 56))(v194, 1, 1, v73);
  }

  else
  {
    v173 = *(v72 + 20);
    v174 = sub_2601E0();
    v175 = *(v174 - 8);
    v74 = v194;
    (*(v175 + 16))(v194, v71 + v173, v174);
    sub_25EC40(v71, type metadata accessor for CardInfo);
    (*(v175 + 56))(v74, 0, 1, v174);
  }

  v176 = v235;
  v177 = v232;
  v178 = swift_getKeyPath();
  v179 = v211;
  v180 = &v211[*(v208 + 36)];
  v181 = sub_2EF0(&qword_31AD20, &unk_2799D0);
  sub_22148(v74, v180 + *(v181 + 28), &qword_31A0C8, &qword_26E2C0);
  *v180 = v178;
  sub_22148(v69, v179, &qword_328B38, &qword_28F410);
  v240 = 0uLL;
  sub_2EF0(&qword_316DD0, &qword_2692C0);
  sub_2631D0();
  v237 = v245;
  v182 = v246;
  v183 = v179;
  v184 = v209;
  sub_22148(v183, v209, &qword_328B40, &qword_28F418);
  v185 = &v184[*(v176 + 36)];
  *v185 = v237;
  *(v185 + 2) = v182;
  v186 = v219;
  sub_22148(v184, v219, &qword_328B48, &qword_28F420);
  sub_8198(v186, v177, &qword_328B48, &qword_28F420);
  swift_storeEnumTagMultiPayload();
  sub_25D5D8();
  sub_25DC70();
  sub_261F80();
  return sub_8E80(v186, &qword_328B48, &qword_28F420);
}

uint64_t sub_2568DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v346 = a2;
  v345 = a1;
  v334 = a3;
  v331 = type metadata accessor for ListItemMetadataView(0);
  v330 = *(v331 - 8);
  __chkstk_darwin(v331);
  v321 = (&v276 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2EF0(&qword_328D60, &qword_28F568);
  __chkstk_darwin(v4 - 8);
  v333 = &v276 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v276 - v7;
  __chkstk_darwin(v9);
  v341 = &v276 - v10;
  v328 = sub_2EF0(&qword_328D68, &qword_28F570);
  v327 = *(v328 - 8);
  __chkstk_darwin(v328);
  v316 = &v276 - v11;
  v12 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v12 - 8);
  v288 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v299 = &v276 - v15;
  __chkstk_darwin(v16);
  v287 = &v276 - v17;
  __chkstk_darwin(v18);
  v298 = &v276 - v19;
  __chkstk_darwin(v20);
  v310 = &v276 - v21;
  v22 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v22 - 8);
  v307 = &v276 - v23;
  v306 = sub_263D20();
  v305 = *(v306 - 1);
  __chkstk_darwin(v306);
  v304 = &v276 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_260BD0();
  __chkstk_darwin(v25 - 8);
  v303 = &v276 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_2EF0(&qword_323E98, &qword_284470);
  __chkstk_darwin(v308);
  v319 = &v276 - v27;
  v312 = sub_2EF0(&qword_328D70, &qword_28F578);
  __chkstk_darwin(v312);
  v314 = &v276 - v28;
  v313 = sub_2EF0(&qword_328D78, &qword_28F580);
  __chkstk_darwin(v313);
  v315 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v311 = &v276 - v31;
  __chkstk_darwin(v32);
  v326 = &v276 - v33;
  v34 = sub_2EF0(&qword_328D80, &qword_28F588);
  __chkstk_darwin(v34 - 8);
  v332 = &v276 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v339 = &v276 - v37;
  v335 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v335);
  v285 = &v276 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v286 = &v276 - v40;
  __chkstk_darwin(v41);
  v320 = &v276 - v42;
  v337 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v337);
  v338 = &v276 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v325);
  v297 = &v276 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v293 = &v276 - v46;
  __chkstk_darwin(v47);
  v302 = &v276 - v48;
  v344 = sub_262730();
  v343 = *(v344 - 8);
  __chkstk_darwin(v344);
  v282 = &v276 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v284 = &v276 - v51;
  __chkstk_darwin(v52);
  v281 = &v276 - v53;
  __chkstk_darwin(v54);
  v283 = &v276 - v55;
  __chkstk_darwin(v56);
  v295 = &v276 - v57;
  __chkstk_darwin(v58);
  v296 = &v276 - v59;
  __chkstk_darwin(v60);
  v291 = &v276 - v61;
  __chkstk_darwin(v62);
  v292 = &v276 - v63;
  __chkstk_darwin(v64);
  v301 = &v276 - v65;
  __chkstk_darwin(v66);
  v324 = &v276 - v67;
  __chkstk_darwin(v68);
  v318 = &v276 - v69;
  v70 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v70 - 8);
  v280 = (&v276 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v72);
  v279 = (&v276 - v73);
  __chkstk_darwin(v74);
  v294 = &v276 - v75;
  __chkstk_darwin(v76);
  v309 = (&v276 - v77);
  __chkstk_darwin(v78);
  v289 = &v276 - v79;
  __chkstk_darwin(v80);
  v290 = (&v276 - v81);
  __chkstk_darwin(v82);
  v300 = &v276 - v83;
  __chkstk_darwin(v84);
  v323 = (&v276 - v85);
  __chkstk_darwin(v86);
  v317 = (&v276 - v87);
  v88 = type metadata accessor for ListItemThumbnailView(0);
  __chkstk_darwin(v88);
  v90 = &v276 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2EF0(&qword_328D88, &qword_28F590);
  __chkstk_darwin(v91);
  v93 = &v276 - v92;
  v94 = sub_2EF0(&qword_328D90, &qword_28F598);
  __chkstk_darwin(v94 - 8);
  v96 = &v276 - v95;
  v322 = sub_2EF0(&qword_328D98, &qword_28F5A0);
  __chkstk_darwin(v322);
  v329 = &v276 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v98);
  v100 = &v276 - v99;
  __chkstk_darwin(v101);
  v342 = &v276 - v102;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  LODWORD(v340) = byte_31C408;
  v336 = v8;
  if (byte_31C408 == 1 && (v103 = [objc_opt_self() standardUserDefaults], v104 = v96, v105 = sub_264420(), v106 = objc_msgSend(v103, "integerForKey:", v105), v103, v105, v96 = v104, (v106 & 4) != 0))
  {
    v278 = sub_262FC0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v109 = v352;
    v110 = v353;
    v277 = v354;
    v111 = v355;
    v112 = v356;
    v276 = v357;
    v113 = sub_262550();
    sub_2610C0();
    LOBYTE(v358) = v110;
    LOBYTE(v349) = v111;
    LOBYTE(v347) = 0;
    *v93 = v278;
    *(v93 + 1) = v109;
    v93[16] = v110;
    v96 = v104;
    *(v93 + 3) = v277;
    v93[32] = v111;
    *(v93 + 5) = v112;
    v8 = v336;
    *(v93 + 6) = v276;
    v93[56] = v113;
    *(v93 + 8) = v114;
    *(v93 + 9) = v115;
    *(v93 + 10) = v116;
    *(v93 + 11) = v117;
    v93[96] = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
  }

  else
  {
    sub_3E840(v346 + 8, v90);
    v107 = *(v88 + 20);
    *&v90[v107] = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v108 = &v90[*(v88 + 24)];
    *v108 = swift_getKeyPath();
    v108[8] = 0;
    sub_25EBC8(v90, v93, type metadata accessor for ListItemThumbnailView);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    sub_25EC40(v90, type metadata accessor for ListItemThumbnailView);
  }

  v118 = 0.0;
  v119 = sub_262550();
  if ((v345 & 1) != 0 && (*(v346 + 400) & 1) == 0)
  {
    v120 = v317;
    sub_2544C0(v317);
    v121 = sub_2549F0();
    v122 = ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(v121 & 1);
    v123 = v343;
    v124 = v318;
    v125 = v344;
    (*(v343 + 104))(v318, enum case for Font.TextStyle.body(_:), v344);
    sub_254148(v124, v122);
    (*(v123 + 8))(v124, v125);
    sub_25EC40(v120, type metadata accessor for SizeConstants);
  }

  sub_2610C0();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  sub_22148(v96, v100, &qword_328D90, &qword_28F598);
  v134 = &v100[*(v322 + 36)];
  *v134 = v119;
  *(v134 + 1) = v127;
  *(v134 + 2) = v129;
  *(v134 + 3) = v131;
  *(v134 + 4) = v133;
  v134[40] = 0;
  sub_22148(v100, v342, &qword_328D98, &qword_28F5A0);
  if ((v345 & 1) == 0)
  {
    v135 = v323;
    sub_2544C0(v323);
    v136 = v343;
    v137 = v324;
    v138 = v344;
    (*(v343 + 104))(v324, enum case for Font.TextStyle.body(_:), v344);
    v139 = v300;
    sub_25EBC8(v135, v300, type metadata accessor for SizeConstants);
    v140 = v301;
    (*(v136 + 16))(v301, v137, v138);
    v141 = v302;
    sub_25EBC8(v139, v302, type metadata accessor for SizeConstants);
    v142 = v338;
    sub_25EBC8(v139, v338, type metadata accessor for SizeConstants.Environment);
    v143 = *(v337 + 24);
    v144 = sub_1CF30(v140, v142 + v143);
    v145 = *(v136 + 8);
    v145(v140, v138);
    sub_25EC40(v139, type metadata accessor for SizeConstants);
    v146 = sub_261690();
    (*(*(v146 - 8) + 8))(v142 + v143, v146);
    v147 = 1.0;
    if ((*&v144 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v147 = v144;
    }

    if ((~*&v144 & 0x7FF0000000000000) == 0)
    {
      v144 = v147;
    }

    *(v141 + *(v325 + 36)) = v144;
    v145(v324, v138);
    sub_25EC40(v323, type metadata accessor for SizeConstants);
    v148 = v320;
    sub_25EBC8(v141, v320, type metadata accessor for SizeConstants.Environment);
    v149 = v141;
    v8 = v336;
    sub_8E80(v149, &qword_31B4C0, &qword_27C030);
    *(v148 + *(v335 + 36)) = v144;
    v118 = sub_21FA68(16.0);
    sub_8E80(v148, &qword_31B578, &qword_270C30);
  }

  v150 = v341;
  if (*(v346 + 400) == 1)
  {
    sub_254D50();
    isa = sub_2647E0().super.super.isa;
    v152 = v305;
    v153 = v304;
    v154 = v306;
    (*(v305 + 104))(v304, enum case for LocalizerContext.standalone(_:), v306);
    sub_260BA0();

    (*(v152 + 8))(v153, v154);
    v155 = v319;
    sub_260B10();
    v156 = v343;
    v157 = *(v343 + 104);
    v158 = v318;
    v159 = v344;
    v322 = v343 + 104;
    v306 = v157;
    (v157)(v318, enum case for Font.TextStyle.title(_:), v344);
    v160 = enum case for Font.Design.serif (_:);
    v161 = sub_2625C0();
    v162 = *(v161 - 8);
    v163 = v307;
    (*(v162 + 104))(v307, v160, v161);
    (*(v162 + 56))(v163, 0, 1, v161);
    sub_262650();
    v164 = sub_262680();
    sub_8E80(v163, &qword_318458, &unk_26B270);
    v165 = *(v156 + 8);
    v324 = (v156 + 8);
    v323 = v165;
    (v165)(v158, v159);
    KeyPath = swift_getKeyPath();
    v167 = (v155 + *(sub_2EF0(&qword_318470, &qword_26FBB0) + 36));
    *v167 = KeyPath;
    v167[1] = v164;
    v168 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    v169 = swift_getKeyPath();
    v170 = (v155 + *(sub_2EF0(&qword_318460, &qword_26FBA0) + 36));
    *v170 = v169;
    v170[1] = v168;
    LOBYTE(v169) = sub_2624F0();
    v171 = v317;
    sub_2544C0(v317);
    v172 = v171;
    v173 = v310;
    sub_25ECA4(v172, v310, type metadata accessor for SizeConstants.Environment);
    sub_25EC40(v173, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v174 = v155 + *(v308 + 36);
    *v174 = v169;
    *(v174 + 8) = v175;
    *(v174 + 16) = v176;
    *(v174 + 24) = v177;
    *(v174 + 32) = v178;
    *(v174 + 40) = 0;
    if (v345)
    {
      v179 = v290;
      sub_2544C0(v290);
      v180 = v292;
      v181 = v344;
      (v306)(v292, enum case for Font.TextStyle.body(_:), v344);
      v182 = v289;
      sub_25EBC8(v179, v289, type metadata accessor for SizeConstants);
      v183 = v291;
      (*(v343 + 16))(v291, v180, v181);
      v184 = v293;
      sub_25EBC8(v182, v293, type metadata accessor for SizeConstants);
      v185 = v338;
      sub_25EBC8(v182, v338, type metadata accessor for SizeConstants.Environment);
      v186 = *(v337 + 24);
      v187 = sub_1CF30(v183, v185 + v186);
      v188 = v323;
      (v323)(v183, v181);
      sub_25EC40(v182, type metadata accessor for SizeConstants);
      v189 = sub_261690();
      (*(*(v189 - 8) + 8))(v185 + v186, v189);
      v190 = 1.0;
      if ((*&v187 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v190 = v187;
      }

      if ((~*&v187 & 0x7FF0000000000000) != 0)
      {
        v190 = v187;
      }

      *(v184 + *(v325 + 36)) = v190;
      v188(v180, v181);
      v155 = v319;
      sub_25EC40(v179, type metadata accessor for SizeConstants);
      sub_21FA54(44.0);
      sub_8E80(v184, &qword_31B4C0, &qword_27C030);
    }

    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_261830();
    v191 = v314;
    sub_22148(v155, v314, &qword_323E98, &qword_284470);
    v192 = (v191 + *(v312 + 36));
    v193 = v363;
    v192[4] = v362;
    v192[5] = v193;
    v192[6] = v364;
    v194 = v359;
    *v192 = v358;
    v192[1] = v194;
    v195 = v361;
    v192[2] = v360;
    v192[3] = v195;
    v196 = v191;
    v197 = v311;
    sub_22148(v196, v311, &qword_328D70, &qword_28F578);
    *(v197 + *(v313 + 36)) = 0x3FF0000000000000;
    sub_22148(v197, v326, &qword_328D78, &qword_28F580);
    v198 = 0.0;
    if ((v345 & 1) == 0)
    {
      v199 = v309;
      sub_2544C0(v309);
      v200 = v296;
      v201 = v344;
      (v306)(v296, enum case for Font.TextStyle.body(_:), v344);
      v202 = v294;
      sub_25EBC8(v199, v294, type metadata accessor for SizeConstants);
      v203 = v295;
      (*(v343 + 16))(v295, v200, v201);
      v204 = v297;
      sub_25EBC8(v202, v297, type metadata accessor for SizeConstants);
      v205 = v338;
      sub_25EBC8(v202, v338, type metadata accessor for SizeConstants.Environment);
      v206 = *(v337 + 24);
      v207 = sub_1CF30(v203, v205 + v206);
      v208 = v323;
      (v323)(v203, v201);
      sub_25EC40(v202, type metadata accessor for SizeConstants);
      v209 = sub_261690();
      (*(*(v209 - 8) + 8))(v205 + v206, v209);
      v210 = 1.0;
      if ((*&v207 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v210 = v207;
      }

      if ((~*&v207 & 0x7FF0000000000000) == 0)
      {
        v207 = v210;
      }

      *(v204 + *(v325 + 36)) = v207;
      v208(v200, v201);
      sub_25EC40(v309, type metadata accessor for SizeConstants);
      v211 = v320;
      sub_25EBC8(v204, v320, type metadata accessor for SizeConstants.Environment);
      sub_8E80(v204, &qword_31B4C0, &qword_27C030);
      *(v211 + *(v335 + 36)) = v207;
      v198 = sub_21FA68(16.0);
      sub_8E80(v211, &qword_31B578, &qword_270C30);
    }

    v212 = v326;
    v213 = v315;
    sub_8198(v326, v315, &qword_328D78, &qword_28F580);
    v214 = v316;
    sub_8198(v213, v316, &qword_328D78, &qword_28F580);
    v215 = v214 + *(sub_2EF0(&qword_328DC0, &qword_28F650) + 48);
    *v215 = v198;
    *(v215 + 8) = 0;
    *(v215 + 9) = v345 & 1;
    sub_8E80(v212, &qword_328D78, &qword_28F580);
    sub_8E80(v213, &qword_328D78, &qword_28F580);
    v217 = v339;
    sub_22148(v214, v339, &qword_328D68, &qword_28F570);
    v216 = 0;
    v150 = v341;
    v8 = v336;
  }

  else
  {
    v216 = 1;
    v217 = v339;
  }

  (*(v327 + 56))(v217, v216, 1, v328);
  if (v340 && (v218 = [objc_opt_self() standardUserDefaults], v219 = sub_264420(), v220 = objc_msgSend(v218, "integerForKey:", v219), v218, v219, (v220 & 2) != 0))
  {
    v223 = 1;
    v221 = v331;
  }

  else
  {
    v221 = v331;
    v222 = v321;
    sub_CA96C(v346 + 80, v321 + *(v331 + 20));
    *v222 = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    sub_25ECA4(v222, v8, type metadata accessor for ListItemMetadataView);
    v223 = 0;
  }

  (*(v330 + 56))(v8, v223, 1, v221);
  sub_22148(v8, v150, &qword_328D60, &qword_28F568);
  sub_8198(v346 + 360, &v347, &qword_31A488, &unk_272AA0);
  if (!v348)
  {
    sub_8E80(&v347, &qword_31A488, &unk_272AA0);
LABEL_52:
    v265 = 0;
    v346 = 0;
    v264 = 0.0;
    goto LABEL_53;
  }

  sub_F7CC(&v347, &v349);
  if (v340)
  {
    v224 = [objc_opt_self() standardUserDefaults];
    v225 = sub_264420();
    v226 = [v224 integerForKey:v225];

    if (v226)
    {
      sub_3080(&v349);
      goto LABEL_52;
    }
  }

  v227 = v350;
  v228 = v351;
  sub_2E18(&v349, v350);
  v230 = type metadata accessor for ListItemAccessoryView(0, v227, v228, v229);
  __chkstk_darwin(v230);
  v232 = &v276 - v231;
  v233 = type metadata accessor for ListItemView(0);
  sub_25A248(*(v346 + *(v233 + 52)), *(v346 + *(v233 + 52) + 8), v227, v228, v232);
  swift_getWitnessTable();
  v340 = sub_263310();
  sub_3080(&v349);
  v234 = (v343 + 104);
  v235 = (v343 + 16);
  v343 += 8;
  if (v345)
  {
    v236 = v279;
    sub_2544C0(v279);
    v237 = v236;
    v238 = v298;
    sub_25ECA4(v237, v298, type metadata accessor for SizeConstants.Environment);
    v239 = v283;
    v240 = v344;
    (*v234)(v283, enum case for Font.TextStyle.body(_:), v344);
    v241 = v287;
    sub_25EBC8(v238, v287, type metadata accessor for SizeConstants.Spacing);
    v242 = v281;
    (*v235)(v281, v239, v240);
    v243 = v286;
    sub_25EBC8(v241, v286, type metadata accessor for SizeConstants.Spacing);
    v244 = v338;
    sub_25EBC8(v241, v338, type metadata accessor for SizeConstants.Environment);
    v245 = *(v337 + 24);
    v246 = sub_1CF30(v242, v244 + v245);
    v247 = *v343;
    (*v343)(v242, v240);
    sub_25EC40(v241, type metadata accessor for SizeConstants.Spacing);
    v248 = sub_261690();
    (*(*(v248 - 8) + 8))(v244 + v245, v248);
    v249 = 1.0;
    if ((*&v246 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v249 = v246;
    }

    if ((~*&v246 & 0x7FF0000000000000) != 0)
    {
      v249 = v246;
    }

    *(v243 + *(v335 + 36)) = v249;
    v247(v239, v240);
    sub_25EC40(v298, type metadata accessor for SizeConstants.Spacing);
    v250 = 8.0;
  }

  else
  {
    v251 = v280;
    sub_2544C0(v280);
    v252 = v251;
    v253 = v299;
    sub_25ECA4(v252, v299, type metadata accessor for SizeConstants.Environment);
    v254 = v284;
    v255 = v344;
    (*v234)(v284, enum case for Font.TextStyle.body(_:), v344);
    v256 = v288;
    sub_25EBC8(v253, v288, type metadata accessor for SizeConstants.Spacing);
    v257 = v282;
    (*v235)(v282, v254, v255);
    v243 = v285;
    sub_25EBC8(v256, v285, type metadata accessor for SizeConstants.Spacing);
    v258 = v338;
    sub_25EBC8(v256, v338, type metadata accessor for SizeConstants.Environment);
    v259 = *(v337 + 24);
    v260 = sub_1CF30(v257, v258 + v259);
    v261 = *v343;
    (*v343)(v257, v255);
    sub_25EC40(v256, type metadata accessor for SizeConstants.Spacing);
    v262 = sub_261690();
    (*(*(v262 - 8) + 8))(v258 + v259, v262);
    v263 = 1.0;
    if ((*&v260 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v263 = v260;
    }

    if ((~*&v260 & 0x7FF0000000000000) != 0)
    {
      v263 = v260;
    }

    *(v243 + *(v335 + 36)) = v263;
    v261(v254, v255);
    sub_25EC40(v299, type metadata accessor for SizeConstants.Spacing);
    v250 = 16.0;
  }

  v264 = sub_21FA68(v250);
  sub_8E80(v243, &qword_31B578, &qword_270C30);
  v265 = v340;

  v346 = 0x4000000000000000;
  v150 = v341;
  v217 = v339;
LABEL_53:
  v266 = v342;
  v267 = v329;
  sub_8198(v342, v329, &qword_328D98, &qword_28F5A0);
  v268 = v332;
  sub_8198(v217, v332, &qword_328D80, &qword_28F588);
  v269 = v217;
  v270 = v333;
  sub_8198(v150, v333, &qword_328D60, &qword_28F568);
  v271 = v334;
  sub_8198(v267, v334, &qword_328D98, &qword_28F5A0);
  v272 = sub_2EF0(&qword_328DB8, &qword_28F5E8);
  v273 = v271 + v272[12];
  *v273 = v118;
  *(v273 + 8) = 0;
  *(v273 + 9) = v345 & 1;
  sub_8198(v268, v271 + v272[16], &qword_328D80, &qword_28F588);
  sub_8198(v270, v271 + v272[20], &qword_328D60, &qword_28F568);
  v274 = (v271 + v272[24]);
  *v274 = v264;
  v274[1] = 0.0;
  *(v274 + 2) = v265;
  *(v274 + 3) = v346;
  sub_8E80(v150, &qword_328D60, &qword_28F568);
  sub_8E80(v269, &qword_328D80, &qword_28F588);
  sub_8E80(v266, &qword_328D98, &qword_28F5A0);

  sub_8E80(v270, &qword_328D60, &qword_28F568);
  sub_8E80(v268, &qword_328D80, &qword_28F588);
  return sub_8E80(v267, &qword_328D98, &qword_28F5A0);
}

uint64_t sub_258F90@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a1;
  v5 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v5);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_262730();
  v95 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v82 - v11;
  __chkstk_darwin(v13);
  v91 = &v82 - v14;
  __chkstk_darwin(v15);
  v99 = &v82 - v16;
  v17 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v17);
  v93 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v94 = &v82 - v20;
  v21 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v21 - 8);
  v90 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v98 = &v82 - v24;
  __chkstk_darwin(v25);
  v89 = &v82 - v26;
  __chkstk_darwin(v27);
  v96 = &v82 - v28;
  v29 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v29 - 8);
  v31 = (&v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v34 = (&v82 - v33);
  v35 = sub_2EF0(&qword_328DD0, &qword_28F688);
  __chkstk_darwin(v35 - 8);
  v100 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v82 - v38;
  *v39 = sub_261D30();
  *(v39 + 1) = 0;
  v39[16] = 0;
  v40 = sub_2EF0(&qword_328DD8, &qword_28F690);
  sub_25BD68(a2, &v39[*(v40 + 44)]);
  sub_8198(a2 + 360, &v101, &qword_31A488, &unk_272AA0);
  if (!v102)
  {
    sub_8E80(&v101, &qword_31A488, &unk_272AA0);
LABEL_20:
    v78 = 0;
    v77 = 0.0;
    goto LABEL_21;
  }

  v86 = v12;
  v87 = v5;
  v88 = v17;
  sub_F7CC(&v101, v103);
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408)
  {
    v41 = [objc_opt_self() standardUserDefaults];
    v42 = sub_264420();
    v43 = [v41 integerForKey:v42];

    if (v43)
    {
      sub_3080(v103);
      goto LABEL_20;
    }
  }

  v83 = v7;
  v84 = v8;
  v85 = a3;
  v44 = v104;
  v45 = v105;
  sub_2E18(v103, v104);
  v47 = type metadata accessor for ListItemAccessoryView(0, v44, v45, v46);
  __chkstk_darwin(v47);
  v49 = &v82 - v48;
  v50 = type metadata accessor for ListItemView(0);
  sub_25A248(*(a2 + *(v50 + 52)), *(a2 + *(v50 + 52) + 8), v44, v45, v49);
  swift_getWitnessTable();
  v82 = sub_263310();
  sub_3080(v103);
  v51 = (v95 + 13);
  v52 = (v95 + 2);
  ++v95;
  if (v97)
  {
    sub_2544C0(v34);
    v53 = v96;
    sub_25ECA4(v34, v96, type metadata accessor for SizeConstants.Environment);
    v54 = v99;
    v55 = v84;
    (*v51)(v99, enum case for Font.TextStyle.body(_:), v84);
    v56 = v89;
    sub_25EBC8(v53, v89, type metadata accessor for SizeConstants.Spacing);
    v57 = v91;
    (*v52)(v91, v54, v55);
    v58 = v94;
    sub_25EBC8(v56, v94, type metadata accessor for SizeConstants.Spacing);
    v59 = v83;
    sub_25EBC8(v56, v83, type metadata accessor for SizeConstants.Environment);
    v60 = *(v87 + 24);
    v61 = sub_1CF30(v57, v59 + v60);
    v62 = *v95;
    (*v95)(v57, v55);
    sub_25EC40(v56, type metadata accessor for SizeConstants.Spacing);
    v63 = sub_261690();
    (*(*(v63 - 8) + 8))(v59 + v60, v63);
    v64 = 1.0;
    if ((*&v61 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v64 = v61;
    }

    if ((~*&v61 & 0x7FF0000000000000) != 0)
    {
      v64 = v61;
    }

    *(v58 + *(v88 + 36)) = v64;
    v62(v99, v55);
    sub_25EC40(v96, type metadata accessor for SizeConstants.Spacing);
    v65 = 8.0;
  }

  else
  {
    sub_2544C0(v31);
    v66 = v98;
    sub_25ECA4(v31, v98, type metadata accessor for SizeConstants.Environment);
    v67 = v86;
    v68 = v84;
    (*v51)(v86, enum case for Font.TextStyle.body(_:), v84);
    v69 = v90;
    sub_25EBC8(v66, v90, type metadata accessor for SizeConstants.Spacing);
    v70 = v92;
    (*v52)(v92, v67, v68);
    v58 = v93;
    sub_25EBC8(v69, v93, type metadata accessor for SizeConstants.Spacing);
    v71 = v83;
    sub_25EBC8(v69, v83, type metadata accessor for SizeConstants.Environment);
    v72 = *(v87 + 24);
    v73 = sub_1CF30(v70, v71 + v72);
    v74 = *v95;
    (*v95)(v70, v68);
    sub_25EC40(v69, type metadata accessor for SizeConstants.Spacing);
    v75 = sub_261690();
    (*(*(v75 - 8) + 8))(v71 + v72, v75);
    v76 = 1.0;
    if ((*&v73 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v76 = v73;
    }

    if ((~*&v73 & 0x7FF0000000000000) != 0)
    {
      v76 = v73;
    }

    *(v58 + *(v88 + 36)) = v76;
    v74(v86, v68);
    sub_25EC40(v98, type metadata accessor for SizeConstants.Spacing);
    v65 = 16.0;
  }

  v77 = sub_21FA68(v65);
  sub_8E80(v58, &qword_31B578, &qword_270C30);
  v78 = v82;

  a3 = v85;
LABEL_21:
  v79 = v100;
  sub_8198(v39, v100, &qword_328DD0, &qword_28F688);
  sub_8198(v79, a3, &qword_328DD0, &qword_28F688);
  v80 = (a3 + *(sub_2EF0(&qword_328DE0, &qword_28F698) + 48));
  *v80 = v77;
  v80[1] = 0.0;
  *(v80 + 2) = v78;
  sub_8E80(v39, &qword_328DD0, &qword_28F688);

  return sub_8E80(v79, &qword_328DD0, &qword_28F688);
}

uint64_t sub_2599E4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2617E0();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = *(v6 + 28);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = sub_261DD0();
  (*(*(v14 - 8) + 104))(&v8[v12], v13, v14);
  __asm { FMOV            V0.2D, #12.0 }

  *v8 = _Q0;
  LOBYTE(v13) = sub_254898();
  sub_2546AC(v4);
  if (v13)
  {
    v20 = ColorConstants.vibrantButtonBackground.getter();
  }

  else
  {
    v21 = [objc_opt_self() secondarySystemBackgroundColor];
    v20 = sub_263070();
  }

  v22 = v20;
  sub_25EC40(v4, type metadata accessor for ColorConstants);
  sub_25ECA4(v8, v11, &type metadata accessor for RoundedRectangle);
  *&v11[*(v9 + 52)] = v22;
  *&v11[*(v9 + 56)] = 256;
  v23 = *(sub_2EF0(&qword_328DC8, &qword_28F658) + 36);
  *(a1 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  return sub_22148(v11, a1, &qword_3192C8, &unk_2793D0);
}

uint64_t sub_259C58@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = sub_2EF0(&qword_328C90, &qword_28F4F0);
  __chkstk_darwin(v30);
  v3 = &v27 - v2;
  v4 = sub_2EF0(&qword_328C80, &qword_28F4E8);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v27 = sub_2EF0(&qword_328DF0, &qword_28F6A8);
  __chkstk_darwin(v27);
  v8 = &v27 - v7;
  v9 = sub_2EF0(&qword_328DF8, &qword_28F6B0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v28 = sub_2EF0(&qword_328C60, &qword_28F4D8);
  __chkstk_darwin(v28);
  v13 = &v27 - v12;
  v14 = sub_2EF0(&qword_328C70, &qword_28F4E0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  v17 = sub_25A33C();
  if (v17)
  {
    if (v17 != 1)
    {
      *v3 = sub_261E60();
      *(v3 + 1) = 0;
      v3[16] = 0;
      v25 = sub_2EF0(&qword_328E00, &qword_28F6B8);
      sub_25C63C(v1, &v3[*(v25 + 44)]);
      sub_8198(v3, v8, &qword_328C90, &qword_28F4F0);
      swift_storeEnumTagMultiPayload();
      sub_25DE98();
      sub_8E38(&qword_328C88, &qword_328C90, &qword_28F4F0, &protocol conformance descriptor for VStack<A>);
      sub_261F80();
      v21 = v3;
      v23 = &qword_328C90;
      v24 = &qword_28F4F0;
      return sub_8E80(v21, v23, v24);
    }

    *v6 = sub_261E60();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v18 = sub_2EF0(&qword_328E08, &qword_28F6C0);
    sub_25B5C8(v1, &v6[*(v18 + 44)]);
    v19 = &qword_328C80;
    v20 = &qword_28F4E8;
    sub_8198(v6, v11, &qword_328C80, &qword_28F4E8);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_328C68, &qword_328C70, &qword_28F4E0, &protocol conformance descriptor for HStack<A>);
    sub_8E38(&qword_328C78, &qword_328C80, &qword_28F4E8, &protocol conformance descriptor for VStack<A>);
    sub_261F80();
    sub_8198(v13, v8, &qword_328C60, &qword_28F4D8);
    swift_storeEnumTagMultiPayload();
    sub_25DE98();
    sub_8E38(&qword_328C88, &qword_328C90, &qword_28F4F0, &protocol conformance descriptor for VStack<A>);
    sub_261F80();
    sub_8E80(v13, &qword_328C60, &qword_28F4D8);
    v21 = v6;
  }

  else
  {
    *v16 = sub_261D10();
    *(v16 + 1) = 0;
    v16[16] = 0;
    v22 = sub_2EF0(&qword_328E10, &qword_28F6C8);
    sub_25A56C(v1, &v16[*(v22 + 44)]);
    v19 = &qword_328C70;
    v20 = &qword_28F4E0;
    sub_8198(v16, v11, &qword_328C70, &qword_28F4E0);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_328C68, &qword_328C70, &qword_28F4E0, &protocol conformance descriptor for HStack<A>);
    sub_8E38(&qword_328C78, &qword_328C80, &qword_28F4E8, &protocol conformance descriptor for VStack<A>);
    sub_261F80();
    sub_8198(v13, v8, &qword_328C60, &qword_28F4D8);
    swift_storeEnumTagMultiPayload();
    sub_25DE98();
    sub_8E38(&qword_328C88, &qword_328C90, &qword_28F4F0, &protocol conformance descriptor for VStack<A>);
    sub_261F80();
    sub_8E80(v13, &qword_328C60, &qword_28F4D8);
    v21 = v16;
  }

  v23 = v19;
  v24 = v20;
  return sub_8E80(v21, v23, v24);
}

uint64_t sub_25A248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __chkstk_darwin(a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, v11);
  sub_168FC(v13, a1, a2, a3, a4, a5);
}

uint64_t sub_25A33C()
{
  v0 = sub_261690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_2549F0();
  sub_254B48(v6);
  v8 = *(v1 + 104);
  v9 = (v1 + 8);
  if (v7)
  {
    v8(v3, enum case for DynamicTypeSize.accessibility1(_:), v0);
    v10 = sub_261670();
    v11 = *v9;
    (*v9)(v3, v0);
    v11(v6, v0);
    if (v10)
    {
      return 0;
    }

    else
    {
      sub_254B48(v6);
      v8(v3, enum case for DynamicTypeSize.accessibility3(_:), v0);
      v15 = sub_261670();
      v11(v3, v0);
      v11(v6, v0);
      if (v15)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    v8(v3, enum case for DynamicTypeSize.accessibility5(_:), v0);
    v13 = sub_261670();
    v14 = *v9;
    (*v9)(v3, v0);
    v14(v6, v0);
    return (v13 & 1) == 0;
  }
}

uint64_t sub_25A56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v60 = a2;
  v61 = type metadata accessor for ListItemThumbnailView(0);
  __chkstk_darwin(v61);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_328E18, &qword_28F6D0);
  __chkstk_darwin(v4 - 8);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = sub_262730();
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2EF0(&qword_328D88, &qword_28F590);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v59 = sub_2EF0(&qword_328D98, &qword_28F5A0);
  __chkstk_darwin(v59);
  v64 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 == 1 && (v22 = [objc_opt_self() standardUserDefaults], v23 = sub_264420(), v24 = objc_msgSend(v22, "integerForKey:", v23), v22, v23, (v24 & 4) != 0))
  {
    v58 = sub_262FC0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v29 = v70;
    v30 = v71;
    v57 = v72;
    v31 = v73;
    v56 = v74;
    v55 = v75;
    v32 = sub_262550();
    sub_2610C0();
    v69 = v30;
    v68 = v31;
    v67 = 0;
    v33 = v57;
    *v17 = v58;
    *(v17 + 1) = v29;
    v17[16] = v30;
    *(v17 + 3) = v33;
    v17[32] = v31;
    v34 = v55;
    *(v17 + 5) = v56;
    *(v17 + 6) = v34;
    v17[56] = v32;
    *(v17 + 8) = v35;
    *(v17 + 9) = v36;
    *(v17 + 10) = v37;
    *(v17 + 11) = v38;
    v17[96] = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    v25 = v65;
  }

  else
  {
    v25 = v65;
    sub_3E840(v65 + 8, v3);
    v26 = v61;
    v27 = *(v61 + 20);
    *&v3[v27] = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v28 = &v3[*(v26 + 24)];
    *v28 = swift_getKeyPath();
    v28[8] = 0;
    sub_25EBC8(v3, v17, type metadata accessor for ListItemThumbnailView);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    sub_25EC40(v3, type metadata accessor for ListItemThumbnailView);
  }

  v39 = sub_262550();
  sub_2544C0(v14);
  v40 = sub_2549F0();
  v41 = ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(v40 & 1);
  v43 = v62;
  v42 = v63;
  (*(v62 + 104))(v11, enum case for Font.TextStyle.body(_:), v63);
  sub_254148(v11, v41);
  (*(v43 + 8))(v11, v42);
  sub_25EC40(v14, type metadata accessor for SizeConstants);
  sub_2610C0();
  v44 = &v21[*(v59 + 36)];
  *v44 = v39;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  *v8 = sub_261E60();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v49 = sub_2EF0(&qword_328E20, &qword_28F6D8);
  sub_25AC78(v25, &v8[*(v49 + 44)]);
  v50 = v64;
  sub_8198(v21, v64, &qword_328D98, &qword_28F5A0);
  v51 = v66;
  sub_8198(v8, v66, &qword_328E18, &qword_28F6D0);
  v52 = v60;
  sub_8198(v50, v60, &qword_328D98, &qword_28F5A0);
  v53 = sub_2EF0(&qword_328E28, &qword_28F6E0);
  sub_8198(v51, v52 + *(v53 + 48), &qword_328E18, &qword_28F6D0);
  sub_8E80(v8, &qword_328E18, &qword_28F6D0);
  sub_8E80(v21, &qword_328D98, &qword_28F5A0);
  sub_8E80(v51, &qword_328E18, &qword_28F6D0);
  return sub_8E80(v50, &qword_328D98, &qword_28F5A0);
}

uint64_t sub_25AC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v75 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v75);
  v72 = &v63 - v3;
  v70 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v70);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_262730();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = &v63 - v7;
  v69 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v69);
  v71 = &v63 - v8;
  v9 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v9 - 8);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = (&v63 - v12);
  v79 = type metadata accessor for ListItemMetadataView(0);
  v13 = *(v79 - 8);
  __chkstk_darwin(v79);
  v15 = (&v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2EF0(&qword_328D60, &qword_28F568);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  v25 = byte_31C408;
  if (byte_31C408 == 1 && (v26 = v24, v27 = [objc_opt_self() standardUserDefaults], v28 = v18, v29 = v25, v30 = sub_264420(), v31 = objc_msgSend(v27, "integerForKey:", v30), v27, v24 = v26, v30, v25 = v29, v18 = v28, (v31 & 2) != 0))
  {
    (*(v13 + 56))(v21, 1, 1, v79);
  }

  else
  {
    v32 = v79;
    sub_CA96C(a1 + 80, v15 + *(v79 + 20));
    *v15 = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    sub_25ECA4(v15, v21, type metadata accessor for ListItemMetadataView);
    (*(v13 + 56))(v21, 0, 1, v32);
  }

  sub_22148(v21, v24, &qword_328D60, &qword_28F568);
  sub_8198(a1 + 360, &v80, &qword_31A488, &unk_272AA0);
  if (!v81)
  {
    sub_8E80(&v80, &qword_31A488, &unk_272AA0);
LABEL_17:
    v57 = 0;
    v59 = 0.0;
    goto LABEL_18;
  }

  sub_F7CC(&v80, v82);
  if (v25)
  {
    v33 = [objc_opt_self() standardUserDefaults];
    v34 = sub_264420();
    v35 = [v33 integerForKey:v34];

    if (v35)
    {
      sub_3080(v82);
      goto LABEL_17;
    }
  }

  v36 = v83;
  v37 = v84;
  sub_2E18(v82, v83);
  v39 = type metadata accessor for ListItemAccessoryView(0, v36, v37, v38);
  v79 = v18;
  __chkstk_darwin(v39);
  v65 = v24;
  v41 = &v63 - v40;
  v42 = type metadata accessor for ListItemView(0);
  sub_25A248(*(a1 + *(v42 + 52)), *(a1 + *(v42 + 52) + 8), v36, v37, v41);
  swift_getWitnessTable();
  v64 = sub_263310();
  sub_3080(v82);
  v43 = v77;
  sub_2544C0(v77);
  v44 = v68;
  v45 = v74;
  v46 = v76;
  (*(v74 + 104))(v68, enum case for Font.TextStyle.body(_:), v76);
  v47 = v66;
  sub_25EBC8(v43, v66, type metadata accessor for SizeConstants);
  v48 = v67;
  (*(v45 + 16))(v67, v44, v46);
  v49 = v71;
  sub_25EBC8(v47, v71, type metadata accessor for SizeConstants);
  v50 = v73;
  sub_25EBC8(v47, v73, type metadata accessor for SizeConstants.Environment);
  v51 = *(v70 + 24);
  v52 = sub_1CF30(v48, v50 + v51);
  v53 = *(v45 + 8);
  v53(v48, v46);
  sub_25EC40(v47, type metadata accessor for SizeConstants);
  v54 = sub_261690();
  v18 = v79;
  (*(*(v54 - 8) + 8))(v50 + v51, v54);
  v55 = 1.0;
  if ((*&v52 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v55 = v52;
  }

  if ((~*&v52 & 0x7FF0000000000000) == 0)
  {
    v52 = v55;
  }

  *(v49 + *(v69 + 36)) = v52;
  v56 = v46;
  v24 = v65;
  v53(v44, v56);
  v57 = v64;
  sub_25EC40(v77, type metadata accessor for SizeConstants);
  v58 = v72;
  sub_25EBC8(v49, v72, type metadata accessor for SizeConstants.Environment);
  sub_8E80(v49, &qword_31B4C0, &qword_27C030);
  *(v58 + *(v75 + 36)) = v52;
  v59 = sub_21FA68(16.0);
  sub_8E80(v58, &qword_31B578, &qword_270C30);

LABEL_18:
  sub_8198(v24, v18, &qword_328D60, &qword_28F568);
  v60 = v78;
  sub_8198(v18, v78, &qword_328D60, &qword_28F568);
  v61 = (v60 + *(sub_2EF0(&qword_328E30, &qword_28F6E8) + 48));
  *v61 = v59;
  v61[1] = 0.0;
  *(v61 + 2) = v57;
  sub_8E80(v24, &qword_328D60, &qword_28F568);

  return sub_8E80(v18, &qword_328D60, &qword_28F568);
}

uint64_t sub_25B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v4);
  v6 = &v57 - v5;
  v69 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v69);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_262730();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  v68 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v68);
  v16 = &v57 - v15;
  v17 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v17 - 8);
  v66 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v70 = (&v57 - v20);
  v21 = sub_2EF0(&qword_328DD0, &qword_28F688);
  __chkstk_darwin(v21 - 8);
  v71 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v57 - v24;
  *v25 = sub_261D10();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = sub_2EF0(&qword_328DD8, &qword_28F690);
  sub_25BD68(a1, &v25[*(v26 + 44)]);
  sub_8198(a1 + 360, &v72, &qword_31A488, &unk_272AA0);
  if (!v73)
  {
    sub_8E80(&v72, &qword_31A488, &unk_272AA0);
LABEL_13:
    v50 = 0;
    v53 = 0.0;
    goto LABEL_14;
  }

  v62 = v16;
  v63 = v10;
  v64 = v9;
  v65 = a2;
  sub_F7CC(&v72, v74);
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408)
  {
    v27 = [objc_opt_self() standardUserDefaults];
    v28 = sub_264420();
    v29 = [v27 integerForKey:v28];

    if (v29)
    {
      sub_3080(v74);
      a2 = v65;
      goto LABEL_13;
    }
  }

  v30 = v75;
  v31 = v76;
  sub_2E18(v74, v75);
  v33 = type metadata accessor for ListItemAccessoryView(0, v30, v31, v32);
  v60 = v6;
  v61 = v4;
  __chkstk_darwin(v33);
  v35 = &v57 - v34;
  v36 = type metadata accessor for ListItemView(0);
  sub_25A248(*(a1 + *(v36 + 52)), *(a1 + *(v36 + 52) + 8), v30, v31, v35);
  swift_getWitnessTable();
  v59 = sub_263310();
  sub_3080(v74);
  v37 = v70;
  sub_2544C0(v70);
  v38 = v63;
  v39 = *(v63 + 104);
  v40 = v14;
  v58 = v14;
  v41 = v64;
  v39(v14, enum case for Font.TextStyle.body(_:), v64);
  v42 = v66;
  sub_25EBC8(v37, v66, type metadata accessor for SizeConstants);
  v43 = v67;
  (*(v38 + 16))(v67, v40, v41);
  v44 = v62;
  sub_25EBC8(v42, v62, type metadata accessor for SizeConstants);
  v57 = type metadata accessor for SizeConstants.Environment;
  sub_25EBC8(v42, v8, type metadata accessor for SizeConstants.Environment);
  v45 = *(v69 + 24);
  v46 = sub_1CF30(v43, &v8[v45]);
  v47 = *(v38 + 8);
  v47(v43, v41);
  sub_25EC40(v42, type metadata accessor for SizeConstants);
  v48 = sub_261690();
  v49 = &v8[v45];
  v50 = v59;
  (*(*(v48 - 8) + 8))(v49, v48);
  v51 = 1.0;
  if ((*&v46 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v51 = v46;
  }

  if ((~*&v46 & 0x7FF0000000000000) == 0)
  {
    v46 = v51;
  }

  *(v44 + *(v68 + 36)) = v46;
  v47(v58, v41);
  sub_25EC40(v70, type metadata accessor for SizeConstants);
  v52 = v60;
  sub_25EBC8(v44, v60, v57);
  sub_8E80(v44, &qword_31B4C0, &qword_27C030);
  *(v52 + *(v61 + 36)) = v46;
  v53 = sub_21FA68(16.0);
  sub_8E80(v52, &qword_31B578, &qword_270C30);

  a2 = v65;
LABEL_14:
  v54 = v71;
  sub_8198(v25, v71, &qword_328DD0, &qword_28F688);
  sub_8198(v54, a2, &qword_328DD0, &qword_28F688);
  v55 = (a2 + *(sub_2EF0(&qword_328DE0, &qword_28F698) + 48));
  *v55 = v53;
  v55[1] = 0.0;
  *(v55 + 2) = v50;
  sub_8E80(v25, &qword_328DD0, &qword_28F688);

  return sub_8E80(v54, &qword_328DD0, &qword_28F688);
}

uint64_t sub_25BD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = a1;
  v2 = type metadata accessor for ListItemMetadataView(0);
  v80 = *(v2 - 8);
  v81 = v2;
  __chkstk_darwin(v2);
  v68 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for ListItemThumbnailView(0);
  __chkstk_darwin(v73);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_328D60, &qword_28F568);
  __chkstk_darwin(v6 - 8);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v64 - v9;
  __chkstk_darwin(v10);
  v79 = &v64 - v11;
  v74 = sub_262730();
  v12 = *(v74 - 8);
  __chkstk_darwin(v74);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_2EF0(&qword_328D88, &qword_28F590);
  __chkstk_darwin(v69);
  v19 = &v64 - v18;
  v71 = sub_2EF0(&qword_328D98, &qword_28F5A0);
  __chkstk_darwin(v71);
  v75 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  v70 = byte_31C408;
  if (byte_31C408 == 1 && (v24 = [objc_opt_self() standardUserDefaults], v25 = sub_264420(), v26 = objc_msgSend(v24, "integerForKey:", v25), v24, v25, (v26 & 4) != 0))
  {
    v31 = sub_262FC0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v32 = v85;
    v33 = v86;
    v67 = v87;
    v34 = v88;
    v66 = v89;
    v65 = v90;
    v35 = sub_262550();
    sub_2610C0();
    v84 = v33;
    v83 = v34;
    v82 = 0;
    *v19 = v31;
    *(v19 + 1) = v32;
    v19[16] = v33;
    *(v19 + 3) = v67;
    v19[32] = v34;
    v36 = v65;
    *(v19 + 5) = v66;
    *(v19 + 6) = v36;
    v19[56] = v35;
    *(v19 + 8) = v37;
    *(v19 + 9) = v38;
    *(v19 + 10) = v39;
    *(v19 + 11) = v40;
    v19[96] = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    v27 = v78;
  }

  else
  {
    v27 = v78;
    sub_3E840(v78 + 8, v5);
    v28 = v73;
    v29 = *(v73 + 20);
    *&v5[v29] = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v30 = &v5[*(v28 + 24)];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    sub_25EBC8(v5, v19, type metadata accessor for ListItemThumbnailView);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    sub_261F80();
    sub_25EC40(v5, type metadata accessor for ListItemThumbnailView);
  }

  v41 = sub_262550();
  sub_2544C0(v17);
  v42 = sub_2549F0();
  v43 = ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(v42 & 1);
  v44 = v74;
  (*(v12 + 104))(v14, enum case for Font.TextStyle.body(_:), v74);
  sub_254148(v14, v43);
  (*(v12 + 8))(v14, v44);
  sub_25EC40(v17, type metadata accessor for SizeConstants);
  sub_2610C0();
  v45 = v23;
  v46 = &v23[*(v71 + 36)];
  *v46 = v41;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  if ((v70 & 1) != 0 && (v51 = [objc_opt_self() standardUserDefaults], v52 = sub_264420(), v53 = objc_msgSend(v51, "integerForKey:", v52), v51, v52, (v53 & 2) != 0))
  {
    v57 = 1;
    v54 = v81;
    v56 = v76;
  }

  else
  {
    v54 = v81;
    v55 = v68;
    sub_CA96C(v27 + 80, v68 + *(v81 + 20));
    *v55 = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    v56 = v76;
    sub_25ECA4(v55, v76, type metadata accessor for ListItemMetadataView);
    v57 = 0;
  }

  (*(v80 + 56))(v56, v57, 1, v54);
  v58 = v79;
  sub_22148(v56, v79, &qword_328D60, &qword_28F568);
  v59 = v75;
  sub_8198(v45, v75, &qword_328D98, &qword_28F5A0);
  v60 = v72;
  sub_8198(v58, v72, &qword_328D60, &qword_28F568);
  v61 = v77;
  sub_8198(v59, v77, &qword_328D98, &qword_28F5A0);
  v62 = sub_2EF0(&qword_328DE8, &qword_28F6A0);
  sub_8198(v60, v61 + *(v62 + 48), &qword_328D60, &qword_28F568);
  sub_8E80(v58, &qword_328D60, &qword_28F568);
  sub_8E80(v45, &qword_328D98, &qword_28F5A0);
  sub_8E80(v60, &qword_328D60, &qword_28F568);
  return sub_8E80(v59, &qword_328D98, &qword_28F5A0);
}

uint64_t sub_25C63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v121 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v121);
  v4 = &v108 - v3;
  v117 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v117);
  v118 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  __chkstk_darwin(v119);
  v120 = &v108 - v6;
  v131 = type metadata accessor for ListItemMetadataView(0);
  v127 = *(v131 - 8);
  __chkstk_darwin(v131);
  v122 = (&v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ListItemThumbnailView(0);
  __chkstk_darwin(v8);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_328D60, &qword_28F568);
  __chkstk_darwin(v11 - 8);
  v129 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v108 - v14;
  __chkstk_darwin(v15);
  v135 = &v108 - v16;
  v133 = sub_262730();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v114 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v116 = &v108 - v19;
  __chkstk_darwin(v20);
  v124 = &v108 - v21;
  v22 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v22 - 8);
  v113 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v115 = (&v108 - v25);
  __chkstk_darwin(v26);
  v28 = (&v108 - v27);
  v29 = sub_2EF0(&qword_328D88, &qword_28F590);
  __chkstk_darwin(v29);
  v31 = &v108 - v30;
  v123 = sub_2EF0(&qword_328D98, &qword_28F5A0);
  __chkstk_darwin(v123);
  v128 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v134 = &v108 - v34;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  v125 = byte_31C408;
  if (byte_31C408 == 1 && (v35 = [objc_opt_self() standardUserDefaults], v36 = a1, v37 = sub_264420(), v38 = objc_msgSend(v35, "integerForKey:", v37), v35, v37, a1 = v36, (v38 & 4) != 0))
  {
    v112 = sub_262FC0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v42 = v142;
    v43 = v143;
    v44 = v144;
    v110 = v4;
    v45 = v145;
    v111 = v146;
    v109 = v147;
    v46 = sub_262550();
    sub_2610C0();
    LOBYTE(v139) = v43;
    LOBYTE(v137) = v45;
    v136 = 0;
    *v31 = v112;
    *(v31 + 1) = v42;
    a1 = v36;
    v31[16] = v43;
    *(v31 + 3) = v44;
    v31[32] = v45;
    v4 = v110;
    v47 = v109;
    *(v31 + 5) = v111;
    *(v31 + 6) = v47;
    v31[56] = v46;
    *(v31 + 8) = v48;
    *(v31 + 9) = v49;
    *(v31 + 10) = v50;
    *(v31 + 11) = v51;
    v31[96] = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    v41 = v134;
    sub_261F80();
  }

  else
  {
    sub_3E840(a1 + 8, v10);
    v39 = *(v8 + 20);
    *&v10[v39] = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v40 = &v10[*(v8 + 24)];
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    sub_25EBC8(v10, v31, type metadata accessor for ListItemThumbnailView);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_328DA0, &qword_28F5A8);
    sub_25EAE0();
    sub_25EB6C();
    v41 = v134;
    sub_261F80();
    sub_25EC40(v10, type metadata accessor for ListItemThumbnailView);
  }

  v52 = sub_262520();
  sub_2544C0(v28);
  v53 = sub_2549F0();
  v54 = ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(v53 & 1);
  v55 = v132;
  v56 = *(v132 + 13);
  v57 = v124;
  LODWORD(v112) = enum case for Font.TextStyle.body(_:);
  v58 = v133;
  v111 = v56;
  v56(v124);
  sub_254148(v57, v54);
  v124 = *(v55 + 1);
  (v124)(v57, v58);
  sub_25EC40(v28, type metadata accessor for SizeConstants);
  sub_2610C0();
  v59 = v41 + *(v123 + 36);
  *v59 = v52;
  *(v59 + 8) = v60;
  *(v59 + 16) = v61;
  *(v59 + 24) = v62;
  *(v59 + 32) = v63;
  *(v59 + 40) = 0;
  v64 = v125;
  if ((v125 & 1) != 0 && (v65 = [objc_opt_self() standardUserDefaults], v66 = sub_264420(), v67 = objc_msgSend(v65, "integerForKey:", v66), v65, v66, (v67 & 2) != 0))
  {
    v72 = 1;
    v73 = v135;
    v68 = v131;
    v71 = v126;
  }

  else
  {
    v68 = v131;
    v69 = v122;
    sub_CA96C(a1 + 80, v122 + *(v131 + 20));
    *v69 = swift_getKeyPath();
    sub_2EF0(&qword_316DC8, &qword_276F60);
    swift_storeEnumTagMultiPayload();
    v70 = v69;
    v71 = v126;
    sub_25ECA4(v70, v126, type metadata accessor for ListItemMetadataView);
    v72 = 0;
    v73 = v135;
  }

  (*(v127 + 56))(v71, v72, 1, v68);
  sub_22148(v71, v73, &qword_328D60, &qword_28F568);
  sub_8198(a1 + 360, &v137, &qword_31A488, &unk_272AA0);
  if (!v138)
  {
    sub_8E80(&v137, &qword_31A488, &unk_272AA0);
LABEL_21:
    v131 = 0;
    v99 = 0.0;
    goto LABEL_22;
  }

  sub_F7CC(&v137, &v139);
  if (v64)
  {
    v74 = [objc_opt_self() standardUserDefaults];
    v75 = sub_264420();
    v76 = [v74 integerForKey:v75];

    if (v76)
    {
      sub_3080(&v139);
      goto LABEL_21;
    }
  }

  v77 = v140;
  v78 = v141;
  sub_2E18(&v139, v140);
  v80 = type metadata accessor for ListItemAccessoryView(0, v77, v78, v79);
  v110 = v4;
  __chkstk_darwin(v80);
  v81 = a1;
  v83 = &v108 - v82;
  v84 = type metadata accessor for ListItemView(0);
  sub_25A248(*(v81 + *(v84 + 52)), *(v81 + *(v84 + 52) + 8), v77, v78, v83);
  swift_getWitnessTable();
  v131 = sub_263310();
  sub_3080(&v139);
  v85 = v115;
  sub_2544C0(v115);
  v86 = v116;
  v87 = v133;
  v111(v116, v112, v133);
  v88 = v113;
  sub_25EBC8(v85, v113, type metadata accessor for SizeConstants);
  v89 = v114;
  (*(v132 + 2))(v114, v86, v87);
  v90 = v120;
  sub_25EBC8(v88, v120, type metadata accessor for SizeConstants);
  v132 = type metadata accessor for SizeConstants.Environment;
  v91 = v118;
  sub_25EBC8(v88, v118, type metadata accessor for SizeConstants.Environment);
  v92 = *(v117 + 24);
  v93 = sub_1CF30(v89, v91 + v92);
  v94 = v124;
  (v124)(v89, v87);
  sub_25EC40(v88, type metadata accessor for SizeConstants);
  v95 = sub_261690();
  v96 = v91 + v92;
  v41 = v134;
  (*(*(v95 - 8) + 8))(v96, v95);
  v97 = 1.0;
  if ((*&v93 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v97 = v93;
  }

  if ((~*&v93 & 0x7FF0000000000000) == 0)
  {
    v93 = v97;
  }

  *(v90 + *(v119 + 36)) = v93;
  v94(v86, v87);
  sub_25EC40(v85, type metadata accessor for SizeConstants);
  v98 = v110;
  sub_25EBC8(v90, v110, v132);
  sub_8E80(v90, &qword_31B4C0, &qword_27C030);
  *(v98 + *(v121 + 36)) = v93;
  v99 = sub_21FA68(16.0);
  v73 = v135;
  sub_8E80(v98, &qword_31B578, &qword_270C30);

LABEL_22:
  v100 = v128;
  sub_8198(v41, v128, &qword_328D98, &qword_28F5A0);
  v101 = v129;
  sub_8198(v73, v129, &qword_328D60, &qword_28F568);
  v102 = v130;
  sub_8198(v100, v130, &qword_328D98, &qword_28F5A0);
  v103 = v41;
  v104 = sub_2EF0(&qword_328E38, &unk_28F6F0);
  sub_8198(v101, v102 + *(v104 + 48), &qword_328D60, &qword_28F568);
  v105 = (v102 + *(v104 + 64));
  *v105 = v99;
  v106 = v131;
  v105[1] = 0.0;
  *(v105 + 2) = v106;
  sub_8E80(v73, &qword_328D60, &qword_28F568);
  sub_8E80(v103, &qword_328D98, &qword_28F5A0);

  sub_8E80(v101, &qword_328D60, &qword_28F568);
  return sub_8E80(v100, &qword_328D98, &qword_28F5A0);
}

void *sub_25D570@<X0>(void *a1@<X8>)
{
  sub_24D2D8();
  result = sub_261CB0();
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

unint64_t sub_25D5D8()
{
  result = qword_328BA0;
  if (!qword_328BA0)
  {
    sub_2F9C(&qword_328B80, &qword_28F458);
    sub_25D664();
    sub_25D8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BA0);
  }

  return result;
}

unint64_t sub_25D664()
{
  result = qword_328BA8;
  if (!qword_328BA8)
  {
    sub_2F9C(&qword_328B98, &qword_28F470);
    sub_2F9C(&qword_328B88, &qword_28F460);
    sub_25D758();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_328BD8, &qword_328BE0, &qword_28F4B0, &unk_27FC04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BA8);
  }

  return result;
}

unint64_t sub_25D758()
{
  result = qword_328BB0;
  if (!qword_328BB0)
  {
    sub_2F9C(&qword_328B88, &qword_28F460);
    sub_25D810();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BB0);
  }

  return result;
}

unint64_t sub_25D810()
{
  result = qword_328BB8;
  if (!qword_328BB8)
  {
    sub_2F9C(&qword_328BC0, &qword_28F4A0);
    sub_8E38(&qword_328BC8, &qword_328BD0, &qword_28F4A8, &unk_28AEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BB8);
  }

  return result;
}

unint64_t sub_25D8C8()
{
  result = qword_328BE8;
  if (!qword_328BE8)
  {
    sub_2F9C(&qword_328B68, &qword_28F440);
    sub_2F9C(&qword_328B58, &qword_28F430);
    sub_25D9BC();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_328BD8, &qword_328BE0, &qword_28F4B0, &unk_27FC04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BE8);
  }

  return result;
}

unint64_t sub_25D9BC()
{
  result = qword_328BF0;
  if (!qword_328BF0)
  {
    sub_2F9C(&qword_328B58, &qword_28F430);
    sub_25DA74();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BF0);
  }

  return result;
}

unint64_t sub_25DA74()
{
  result = qword_328BF8;
  if (!qword_328BF8)
  {
    sub_2F9C(&qword_328B50, &qword_28F428);
    sub_25DB2C();
    sub_8E38(&qword_328C30, &qword_328C38, &qword_28F4D0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328BF8);
  }

  return result;
}

unint64_t sub_25DB2C()
{
  result = qword_328C00;
  if (!qword_328C00)
  {
    sub_2F9C(&qword_328C08, &qword_28F4B8);
    sub_25DBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C00);
  }

  return result;
}

unint64_t sub_25DBB8()
{
  result = qword_328C10;
  if (!qword_328C10)
  {
    sub_2F9C(&qword_328C18, &qword_28F4C0);
    sub_8E38(&qword_328C20, &qword_328C28, &qword_28F4C8, &unk_28AEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C10);
  }

  return result;
}

unint64_t sub_25DC70()
{
  result = qword_328C40;
  if (!qword_328C40)
  {
    sub_2F9C(&qword_328B48, &qword_28F420);
    sub_25DD28();
    sub_8E38(&qword_328BD8, &qword_328BE0, &qword_28F4B0, &unk_27FC04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C40);
  }

  return result;
}

unint64_t sub_25DD28()
{
  result = qword_328C48;
  if (!qword_328C48)
  {
    sub_2F9C(&qword_328B40, &qword_28F418);
    sub_25DDE0();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C48);
  }

  return result;
}

unint64_t sub_25DDE0()
{
  result = qword_328C50;
  if (!qword_328C50)
  {
    sub_2F9C(&qword_328B38, &qword_28F410);
    sub_25DE98();
    sub_8E38(&qword_328C88, &qword_328C90, &qword_28F4F0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C50);
  }

  return result;
}

unint64_t sub_25DE98()
{
  result = qword_328C58;
  if (!qword_328C58)
  {
    sub_2F9C(&qword_328C60, &qword_28F4D8);
    sub_8E38(&qword_328C68, &qword_328C70, &qword_28F4E0, &protocol conformance descriptor for HStack<A>);
    sub_8E38(&qword_328C78, &qword_328C80, &qword_28F4E8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328C58);
  }

  return result;
}

uint64_t sub_25DF98()
{
  v1 = type metadata accessor for ListItemView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  sub_3080(v2 + 1);
  if (*(v2 + 13))
  {
    sub_3080(v2 + 10);
  }

  if (*(v2 + 18))
  {
    sub_3080(v2 + 15);
  }

  if (*(v2 + 23))
  {
    sub_3080(v2 + 20);
  }

  if (*(v2 + 28))
  {
    sub_3080(v2 + 25);
  }

  if (*(v2 + 33))
  {
    sub_3080(v2 + 30);
  }

  if (*(v2 + 38))
  {
    sub_3080(v2 + 35);
  }

  if (*(v2 + 43))
  {
    sub_3080(v2 + 40);
  }

  if (*(v2 + 48))
  {
    sub_3080(v2 + 45);
  }

  sub_3080(v2 + 51);
  v3 = &v2[*(type metadata accessor for ListItemViewModel(0) + 40)];
  v4 = type metadata accessor for CardInfo(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_2601E0();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  v7 = &v2[v1[5]];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(&v7[v8], v9);
  }

  else
  {
  }

  v10 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    (*(*(v11 - 8) + 8))(&v2[v10], v11);
  }

  else
  {
  }

  sub_3074(*&v2[v1[7]], v2[v1[7] + 8]);
  sub_3074(*&v2[v1[8]], v2[v1[8] + 8]);
  sub_3074(*&v2[v1[9]], v2[v1[9] + 8]);
  sub_3074(*&v2[v1[10]], v2[v1[10] + 8]);
  v12 = v1[11];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(&v2[v12], v13);
  }

  else
  {
  }

  sub_3074(*&v2[v1[12]], v2[v1[12] + 8]);

  return swift_deallocObject();
}

uint64_t sub_25E3B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ListItemView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_25E47C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ListItemViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
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

  v14 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_2EF0(&qword_319858, &unk_2725D0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[13]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_25E650(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ListItemViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_316F68, &unk_269C50);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_2EF0(&qword_319858, &unk_2725D0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[13]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[11];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_25E80C(uint64_t a1)
{
  type metadata accessor for ListItemViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_25E9FC(319, &qword_317C68, type metadata accessor for SizeConstants);
    if (v2 <= 0x3F)
    {
      sub_25E9FC(319, &qword_316FE8, type metadata accessor for ColorConstants);
      if (v3 <= 0x3F)
      {
        sub_60890(319, &qword_3167D0, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_25E998(319);
          if (v5 <= 0x3F)
          {
            sub_25E9FC(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
            if (v6 <= 0x3F)
            {
              sub_60890(319, &qword_322DC0, &type metadata for Int);
              if (v7 <= 0x3F)
              {
                sub_16D28();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_25E998(uint64_t a1)
{
  if (!qword_328D00)
  {
    sub_2F9C(qword_323040, &qword_2828E8);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_328D00);
    }
  }
}

void sub_25E9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25EA54()
{
  result = qword_328D50;
  if (!qword_328D50)
  {
    sub_2F9C(&qword_328D58, &qword_28F560);
    sub_25D5D8();
    sub_25DC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328D50);
  }

  return result;
}

unint64_t sub_25EAE0()
{
  result = qword_328DA8;
  if (!qword_328DA8)
  {
    sub_2F9C(&qword_328DA0, &qword_28F5A8);
    sub_E57A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328DA8);
  }

  return result;
}

unint64_t sub_25EB6C()
{
  result = qword_328DB0;
  if (!qword_328DB0)
  {
    type metadata accessor for ListItemThumbnailView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_328DB0);
  }

  return result;
}

uint64_t sub_25EBC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25EC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25ECA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void YIRSourceData.init(frameName:readerType:totalReadTime:longestPageCount:longestAudiobook:finishedSeries:mostContentGenre:mostContentAuthor:totalRatedContent:finishedBooks:longestStreak:readingGoalsReachedDays:avgReadingTime:)(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, double a24, char a25)
{
  v37 = a8;
  v38 = a7;
  v34[1] = a6;
  v35 = a5;
  v36 = a9;
  v29 = sub_2EF0(&qword_31DCF8, &qword_277628);
  __chkstk_darwin(v29 - 8);
  v31 = v34 - v30;
  v32 = sub_2EF0(&qword_31DD00, &unk_277630);
  __chkstk_darwin(v32 - 8);
  sub_8198(a1, v34 - v33, &qword_31DD00, &unk_277630);
  sub_8198(a2, v31, &qword_31DCF8, &qword_277628);
  if (a4)
  {
    goto LABEL_5;
  }

  if ((~*&a3 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_5:
  sub_25F000(a10, a11);

  if (a25)
  {
LABEL_9:
    sub_260540();
    sub_8E80(a2, &qword_31DCF8, &qword_277628);
    sub_8E80(a1, &qword_31DD00, &unk_277630);
    return;
  }

  if ((~*&a24 & 0x7FF0000000000000) == 0)
  {
    goto LABEL_12;
  }

  if (a24 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a24 < 9.22337204e18)
  {
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_25F000(unint64_t result, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? v3 : result & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v29[0] = result;
      v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v29 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v29;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v29 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_264C20();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_63;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_63;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_63;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_72;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_63;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_63;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_63;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v30 = v3;
          v25 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v26 = result;

  sub_25F778(v26, a2, 10);
  v7 = v27;
  v25 = v28;

LABEL_65:
  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_25F304(uint64_t a1, unint64_t a2)
{
  v2 = sub_2645D0();
  v6 = sub_25F384(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_25F384(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_264A80();
    if (!v9 || (v10 = v9, v11 = sub_1917A8(v9, 0), v12 = sub_25F4DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2644E0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2644E0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_264C20();
LABEL_4:

  return sub_2644E0();
}

unint64_t sub_25F4DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25F6FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_264570();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_264C20();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25F6FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_264550();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_25F6FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_264580();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_264560();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_25F778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_2645C0();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25F304(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_264C20();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

id sub_25FD28()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_328E40 = result;
  return result;
}

uint64_t sub_25FD80()
{
  v0 = sub_260D00();
  sub_B600(v0, qword_354048);
  sub_B080(v0, qword_354048);
  if (qword_315B20 != -1)
  {
    swift_once();
  }

  v1 = qword_328E40;
  return sub_260CF0();
}