uint64_t sub_1252A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ListItemViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_126808(a1, v8, type metadata accessor for ListItemViewModel);
  v9 = type metadata accessor for SeriesQuickActionButtonView(0);
  ListItemView.init(_:contextActionMenuView:)(v8, *(a2 + *(v9 + 36)), *(a2 + *(v9 + 36) + 8), a3);
}

uint64_t sub_125368(uint64_t a1, uint64_t a2)
{
  v4 = sub_2604A0();
  v10 = *(v4 - 8);
  (*(v10 + 8))(a1, v4);
  v5 = a2 + *(type metadata accessor for SeriesQuickActionButtonView(0) + 32);
  v6 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v7 = *(v10 + 16);
  v8 = v5 + *(v6 + 20);

  return v7(a1, v8, v4);
}

void sub_125450(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261C90();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v41[15] = *(v2 + 63);
  v14 = *(v2 + 48);
  v40[2] = *(v2 + 32);
  *v41 = v14;
  v15 = *(v2 + 16);
  v40[0] = *v2;
  v40[1] = v15;
  if (v41[18])
  {
    v16 = *(v2 + 48);
    v37 = *(v2 + 32);
    v38 = v16;
    v39 = *(v2 + 64);
    v17 = *(v2 + 16);
    v35 = *v2;
    v36 = v17;
    v33 = v37;
    v34[0] = v16;
    *(v34 + 15) = *(v2 + 63);
    v31 = v35;
    v32 = v17;
    sub_8198(&v31, v30, &qword_317F48, &qword_26A9A0);
  }

  else
  {
    v28 = a1;
    v26 = v11;

    sub_264900();
    v18 = sub_2624B0();
    v27 = v6;
    v19 = v18;
    sub_260D10();

    v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = v27;
    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v40, &qword_317F40, &qword_26E9D0);
    (*(v10 + 8))(v13, v26);
  }

  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34[0] = v38;
  LOWORD(v34[1]) = v39;
  if (*(&v35 + 1))
  {
    v20 = BYTE3(v34[0]);
    v21 = *(&v33 + 1);
    sub_8E80(&v31, &qword_317F48, &qword_26A9A0);
    v22 = (v21 >= 0.85) | v20 & 1;
  }

  else
  {
    v22 = 2;
  }

  v30[0] = v22;
  sub_126808(v3, v8, type metadata accessor for RefreshOnAssetCompletionChangeViewModifier);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  sub_125C90(v8, v24 + v23, type metadata accessor for RefreshOnAssetCompletionChangeViewModifier);
  sub_2EF0(&qword_31F068, &qword_279CF8);
  sub_2EF0(&qword_31A0B8, &unk_279D00);
  sub_8E38(&qword_31F070, &qword_31F068, &qword_279CF8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_129214();
  sub_262E50();
}

void sub_12582C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_260CA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 2 && *a2 != 2)
  {
    v15 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
    sub_8198(a3 + *(v15 + 24), &v22, &qword_31A240, &qword_26E588);
    v21 = v7;
    if (v25 == 1)
    {
      v26 = v22;
      v27 = v23;
      v28 = v24;
      v16 = *(&v23 + 1);
      if (*(&v23 + 1))
      {
LABEL_7:
        sub_2E18(&v26, v16);
        v17 = *(v15 + 28);
        *(&v23 + 1) = type metadata accessor for RefreshSeriesUberHeaderAction(0);
        v24 = sub_125CF8(&qword_31F080, type metadata accessor for RefreshSeriesUberHeaderAction, &protocol conformance descriptor for RefreshSeriesUberHeaderAction);
        v18 = sub_10934(&v22);
        sub_30CC(a3 + v17, v18);
        sub_263AC0();
        sub_40D18(v9);
        sub_260B20();
        (*(v21 + 8))(v9, v6);
        sub_3080(&v22);
        sub_3080(&v26);
        return;
      }
    }

    else
    {
      sub_264900();
      v19 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();

      (*(v11 + 8))(v13, v10);
      v16 = *(&v27 + 1);
      if (*(&v27 + 1))
      {
        goto LABEL_7;
      }
    }

    sub_8E80(&v26, &qword_31A208, &unk_27A5E0);
  }
}

uint64_t sub_125BD0(uint64_t a1)
{
  sub_8198(a1, v3, &unk_31EF78, &qword_279C50);
  sub_8198(v3, &v2, &unk_31EF78, &qword_279C50);
  sub_129290();
  sub_261CC0();
  return sub_8E80(v3, &unk_31EF78, &qword_279C50);
}

uint64_t sub_125C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_125CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_125D40()
{
  result = qword_31EE58;
  if (!qword_31EE58)
  {
    sub_2F9C(&qword_31EDE8, &qword_2798E0);
    sub_125DCC();
    sub_125E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE58);
  }

  return result;
}

unint64_t sub_125DCC()
{
  result = qword_31EE60;
  if (!qword_31EE60)
  {
    sub_2F9C(&qword_31EDB0, &qword_2798A8);
    sub_125E58();
    sub_126060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE60);
  }

  return result;
}

unint64_t sub_125E58()
{
  result = qword_31EE68;
  if (!qword_31EE68)
  {
    sub_2F9C(&qword_31EDE0, &qword_2798D8);
    sub_2F9C(&qword_31EDD0, &qword_2798C8);
    type metadata accessor for QuickActionBuyButtonView(255);
    sub_2604A0();
    sub_125CF8(&qword_31EE70, type metadata accessor for QuickActionBuyButtonView, &protocol conformance descriptor for QuickActionBuyButtonView);
    sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_125CF8(&qword_31EE88, type metadata accessor for RefreshOnAssetCompletionChangeViewModifier, &unk_279CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE68);
  }

  return result;
}

unint64_t sub_126060()
{
  result = qword_31EE90;
  if (!qword_31EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE90);
  }

  return result;
}

unint64_t sub_1260B4()
{
  result = qword_31EE98;
  if (!qword_31EE98)
  {
    sub_2F9C(&qword_31EE48, &qword_279950);
    type metadata accessor for ButtonView(255);
    sub_2604A0();
    sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    swift_getOpaqueTypeConformance2();
    sub_126228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE98);
  }

  return result;
}

unint64_t sub_126228()
{
  result = qword_31EEA0;
  if (!qword_31EEA0)
  {
    sub_2F9C(&qword_31EE30, &unk_279930);
    sub_2F9C(&qword_31EE20, &qword_279920);
    sub_2F9C(&qword_31EE18, &qword_279918);
    sub_2604A0();
    sub_1263E8();
    sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData, &protocol conformance descriptor for SeriesData);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEA0);
  }

  return result;
}

unint64_t sub_1263E8()
{
  result = qword_31EEA8;
  if (!qword_31EEA8)
  {
    sub_2F9C(&qword_31EE18, &qword_279918);
    sub_126474();
    sub_126500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEA8);
  }

  return result;
}

unint64_t sub_126474()
{
  result = qword_31EEB0;
  if (!qword_31EEB0)
  {
    sub_2F9C(&qword_31EDF0, &unk_2798E8);
    sub_126500();
    sub_126060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEB0);
  }

  return result;
}

unint64_t sub_126500()
{
  result = qword_31EEB8;
  if (!qword_31EEB8)
  {
    sub_2F9C(&qword_31EE10, &qword_279910);
    sub_2F9C(&qword_31EE08, &qword_279908);
    sub_261FA0();
    sub_2F9C(&qword_31EE00, &qword_279900);
    sub_261760();
    sub_8E38(&qword_31EEC0, &qword_31EE00, &qword_279900, &protocol conformance descriptor for BooksActionButton<A>);
    sub_125CF8(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_125CF8(&qword_318438, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_125CF8(&qword_31EE88, type metadata accessor for RefreshOnAssetCompletionChangeViewModifier, &unk_279CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEB8);
  }

  return result;
}

unint64_t sub_126708()
{
  result = qword_31EEC8;
  if (!qword_31EEC8)
  {
    sub_2F9C(&qword_31EDC0, &qword_2798B8);
    sub_125D40();
    type metadata accessor for ButtonView(255);
    sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEC8);
  }

  return result;
}

uint64_t sub_126808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12688C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_264140();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_125CF8(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
  v33 = a2;
  v11 = sub_264320();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_125CF8(&qword_317B40, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v21 = sub_264390();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_127278(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_126B6C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_265050();
  sub_264500();
  v8 = sub_265080();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_264F10() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_12751C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_126CBC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_264140();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2EF0(&qword_317B30, &qword_269F58);
  v6 = sub_264B90();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_125CF8(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v21 = sub_264320();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_127018(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2EF0(&qword_31F088, &qword_279D10);
  v4 = sub_264B90();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_265050();
      sub_264500();
      v21 = sub_265080();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_127278(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_264140();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_126CBC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_12769C();
      goto LABEL_12;
    }

    sub_127A30(v11 + 1);
  }

  v13 = *v3;
  sub_125CF8(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
  v14 = sub_264320();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_125CF8(&qword_317B40, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v22 = sub_264390();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_264FA0();
  __break(1u);
  return result;
}

void sub_12751C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_127018(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1278D4();
      goto LABEL_16;
    }

    sub_127D4C(v8 + 1);
  }

  v10 = *v4;
  sub_265050();
  sub_264500();
  v11 = sub_265080();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_264F10() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_264FA0();
  __break(1u);
}

void sub_12769C()
{
  v1 = v0;
  v2 = sub_264140();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2EF0(&qword_317B30, &qword_269F58);
  v6 = *v0;
  v7 = sub_264B80();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1278D4()
{
  v1 = v0;
  sub_2EF0(&qword_31F088, &qword_279D10);
  v2 = *v0;
  v3 = sub_264B80();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_127A30(uint64_t a1)
{
  v2 = v1;
  v34 = sub_264140();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2EF0(&qword_317B30, &qword_269F58);
  v7 = sub_264B90();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_125CF8(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v21 = sub_264320();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_127D4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2EF0(&qword_31F088, &qword_279D10);
  v4 = sub_264B90();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_265050();

      sub_264500();
      v20 = sub_265080();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

uint64_t sub_127F84(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2647D0();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_126B6C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_128078()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1280C4()
{
  v1 = v0;
  v2 = type metadata accessor for ListItemViewModel(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for SeriesQuickActionButtonView(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v1 + v4);
  sub_3080((v1 + v4 + 8));
  if (*(v1 + v4 + 104))
  {
    sub_3080(v8 + 10);
  }

  if (v8[18])
  {
    sub_3080(v8 + 15);
  }

  if (v8[23])
  {
    sub_3080(v8 + 20);
  }

  if (v8[28])
  {
    sub_3080(v8 + 25);
  }

  if (v8[33])
  {
    sub_3080(v8 + 30);
  }

  if (v8[38])
  {
    sub_3080(v8 + 35);
  }

  v9 = v5 + v7;
  if (v8[43])
  {
    sub_3080(v8 + 40);
  }

  v10 = v4 + v9;
  if (v8[48])
  {
    sub_3080(v8 + 45);
  }

  v11 = v10 & ~v7;
  sub_3080(v8 + 51);
  v12 = v8 + *(v2 + 40);
  v13 = type metadata accessor for CardInfo(0);
  v14 = (*(v13 - 8) + 48);
  v33 = *v14;
  if (!(*v14)(v12, 1, v13))
  {

    v15 = v6;
    v16 = v1;
    v17 = *(v13 + 20);
    v18 = sub_2601E0();
    v19 = &v12[v17];
    v1 = v16;
    v6 = v15;
    (*(*(v18 - 8) + 8))(v19, v18);
  }

  v20 = v1 + v11;
  if (*(v1 + v11 + 40))
  {
    if (*(v20 + 24))
    {
      sub_3080((v1 + v11));
    }

    if (*(v20 + 88))
    {
      goto LABEL_23;
    }

LABEL_26:

    goto LABEL_27;
  }

  if ((*(v20 + 88) & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (*(v20 + 72))
  {
    sub_3080((v20 + 48));
  }

LABEL_27:

  v21 = (v20 + *(v6 + 32));
  type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_30:
    sub_3080(v21);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  sub_3080(v21);
  v23 = sub_2EF0(&qword_31EED0, &qword_279A38);
  v24 = &v21[*(v23 + 48)];
  if (!v33(v24, 1, v13))
  {

    v25 = *(v13 + 20);
    v26 = sub_2601E0();
    (*(*(v26 - 8) + 8))(&v24[v25], v26);
  }

  v27 = *(v23 + 64);
  v28 = sub_2605E0();
  (*(*(v28 - 8) + 8))(&v21[v27], v28);
LABEL_34:
  v29 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v30 = *(v29 + 20);
  v31 = sub_2604A0();
  (*(*(v31 - 8) + 8))(&v21[v30], v31);
  sub_3080(&v21[*(v29 + 24)]);

  return swift_deallocObject();
}

uint64_t sub_128558@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListItemViewModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SeriesQuickActionButtonView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1252A4(v1 + v4, v7, a1);
}

uint64_t sub_128644()
{
  v1 = type metadata accessor for SeriesQuickActionButtonView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      sub_3080((v0 + v2));
    }

    if (*(v3 + 88))
    {
      goto LABEL_5;
    }

LABEL_8:

    goto LABEL_9;
  }

  if ((*(v3 + 88) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (*(v3 + 72))
  {
    sub_3080((v3 + 48));
  }

LABEL_9:

  v4 = (v3 + *(v1 + 32));
  type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_12:
    sub_3080(v4);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_3080(v4);
  v6 = sub_2EF0(&qword_31EED0, &qword_279A38);
  v7 = &v4[*(v6 + 48)];
  v8 = type metadata accessor for CardInfo(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = *(v8 + 20);
    v10 = sub_2601E0();
    (*(*(v10 - 8) + 8))(&v7[v9], v10);
  }

  v11 = *(v6 + 64);
  v12 = sub_2605E0();
  (*(*(v12 - 8) + 8))(&v4[v11], v12);
LABEL_16:
  v13 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v14 = *(v13 + 20);
  v15 = sub_2604A0();
  (*(*(v15 - 8) + 8))(&v4[v14], v15);
  sub_3080(&v4[*(v13 + 24)]);

  return swift_deallocObject();
}

uint64_t sub_1288E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1289D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_128AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_128B64(uint64_t a1)
{
  sub_78DC8(319, &qword_31EF68, &qword_31D240, &qword_279000);
  if (v1 <= 0x3F)
  {
    sub_78DC8(319, &qword_31EF70, &unk_31EF78, &qword_279C50);
    if (v2 <= 0x3F)
    {
      sub_95884(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SeriesQuickActionButtonViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_16D28();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_128C6C()
{
  result = qword_31EFB8;
  if (!qword_31EFB8)
  {
    sub_2F9C(&qword_31EFC0, &qword_279C58);
    sub_1260B4();
    sub_126708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EFB8);
  }

  return result;
}

uint64_t sub_128D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
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
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_128DF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_31EFC8, &unk_279C60);
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
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_128EBC(uint64_t a1)
{
  sub_78DC8(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0);
  if (v1 <= 0x3F)
  {
    sub_128FA0(319);
    if (v2 <= 0x3F)
    {
      sub_78DC8(319, &qword_31A200, &qword_31A208, &unk_27A5E0);
      if (v3 <= 0x3F)
      {
        sub_11EB94();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_128FA0(uint64_t a1)
{
  if (!qword_31A1F8)
  {
    sub_260CA0();
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_31A1F8);
    }
  }
}

uint64_t sub_129014()
{
  v1 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_3060(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 66));
  v3 = v1[5];
  sub_2EF0(&qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_260CA0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[6];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      sub_3080(v5);
    }
  }

  else
  {
  }

  sub_3080((v2 + v1[7]));

  return swift_deallocObject();
}

void sub_129194(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_12582C(a1, a2, v6);
}

unint64_t sub_129214()
{
  result = qword_31F078;
  if (!qword_31F078)
  {
    sub_2F9C(&qword_31A0B8, &unk_279D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F078);
  }

  return result;
}

unint64_t sub_129290()
{
  result = qword_31F0A0;
  if (!qword_31F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F0A0);
  }

  return result;
}

uint64_t sub_1292E4()
{
  sub_2F9C(&qword_31F068, &qword_279CF8);
  sub_2F9C(&qword_31A0B8, &unk_279D00);
  sub_8E38(&qword_31F070, &qword_31F068, &qword_279CF8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_129214();
  return swift_getOpaqueTypeConformance2();
}

uint64_t AssetAction.init(id:assetID:instanceID:isExplicit:actionMetrics:kind:clickData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  LODWORD(v51) = a7;
  v50 = a6;
  v47 = a10;
  v18 = sub_260560();
  v45 = *(v18 - 8);
  v46 = v18;
  __chkstk_darwin(v18);
  v44 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_260600();
  __chkstk_darwin(v20 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v23 - 8);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v52 = &v43 - v27;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v28 = v50;
  *(a9 + 32) = a5;
  *(a9 + 40) = v28;
  *(a9 + 48) = v51;
  v29 = type metadata accessor for AssetAction(0);
  v30 = *(v29 + 32);
  v31 = sub_263AF0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v34 = a9 + v30;
  v35 = v47;
  v51 = a8;
  v33(v34, a8, v31);
  v49 = v29;
  sub_12B7FC(v35, a9 + *(v29 + 40), type metadata accessor for AssetAction.Kind);
  v50 = a11;
  sub_ECAC8(a11, v25);
  v36 = sub_260620();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v48 = v25;
  if (v38(v25, 1, v36) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v22);
    (*(v45 + 104))(v44, enum case for LinkActionType.click(_:), v46);
    sub_260610();
    sub_8E80(v50, &qword_316B98, &unk_275840);
    sub_12B864(v35, type metadata accessor for AssetAction.Kind);
    (*(v32 + 8))(v51, v31);
    v39 = v48;
    v40 = v38(v48, 1, v36);
    v41 = v52;
    if (v40 != 1)
    {
      sub_8E80(v39, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v50, &qword_316B98, &unk_275840);
    sub_12B864(v35, type metadata accessor for AssetAction.Kind);
    (*(v32 + 8))(v51, v31);
    v41 = v52;
    (*(v37 + 32))(v52, v48, v36);
  }

  (*(v37 + 56))(v41, 0, 1, v36);
  return sub_129C04(v41, a9 + *(v49 + 36));
}

uint64_t sub_12983C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a4@<X8>)
{
  *a4 = 0xD00000000000001ALL;
  *(a4 + 8) = 0x8000000000291540;
  *(a4 + 16) = a1;
  *(a4 + 17) = a2;
  type metadata accessor for AssetAction.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AssetAction.Kind.appAnalyticsClickTargetType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_12B7FC(v2, v6, type metadata accessor for AssetAction.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      v7 = &enum case for ClickData.TargetType.buy(_:);
      goto LABEL_4;
    case 2u:
    case 3u:
    case 7u:
      sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      goto LABEL_3;
    case 4u:
      sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      v7 = &enum case for ClickData.TargetType.audioSample(_:);
      goto LABEL_4;
    case 5u:
      v14 = *v6;
      v15 = v6[1];
      if (v14 == 0xD00000000000001ALL && 0x8000000000291540 == v15)
      {
      }

      else
      {
        v17 = sub_264F10();

        if ((v17 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v7 = &enum case for ClickData.TargetType.removeFromWantToRead(_:);
      goto LABEL_4;
    case 6u:
      v22 = enum case for ClickData.TargetType.readSample(_:);
      v23 = sub_260600();
      (*(*(v23 - 8) + 104))(a1, v22, v23);
      v13 = sub_260060();
      return (*(*(v13 - 8) + 8))(v6, v13);
    case 8u:
    case 0xBu:
    case 0xCu:
LABEL_3:
      v7 = &enum case for ClickData.TargetType.navigate(_:);
      goto LABEL_4;
    case 9u:
    case 0xAu:
      v11 = enum case for ClickData.TargetType.navigate(_:);
      v12 = sub_260600();
      (*(*(v12 - 8) + 104))(a1, v11, v12);
      v13 = sub_2601B0();
      return (*(*(v13 - 8) + 8))(v6, v13);
    default:
      v18 = *v6;
      v19 = v6[1];
      if (v18 == 0xD00000000000001ALL && 0x8000000000291540 == v19)
      {
      }

      else
      {
        v21 = sub_264F10();

        if ((v21 & 1) == 0)
        {
LABEL_17:
          v7 = &enum case for ClickData.TargetType.button(_:);
          goto LABEL_4;
        }
      }

      v7 = &enum case for ClickData.TargetType.addToWantToRead(_:);
LABEL_4:
      v8 = *v7;
      v9 = sub_260600();
      return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }
}

uint64_t sub_129C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316B98, &unk_275840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AssetAction.Kind.figaroActionType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12B7FC(v2, v6, type metadata accessor for AssetAction.Kind);
  result = swift_getEnumCaseMultiPayload();
  v8 = 20;
  switch(result)
  {
    case 1:
      result = sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      v8 = 4;
      break;
    case 2:
      result = sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      v8 = 6;
      break;
    case 3:
      result = sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      v8 = 11;
      break;
    case 4:
      result = sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      v8 = 2;
      break;
    case 6:
      v10 = sub_260060();
      result = (*(*(v10 - 8) + 8))(v6, v10);
      v8 = 24;
      break;
    case 7:
      result = sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      v8 = 33;
      break;
    case 8:
      if (*v6)
      {
        v8 = 15;
      }

      else
      {
        v8 = 14;
      }

      break;
    case 9:
    case 10:
      v9 = sub_2601B0();
      result = (*(*(v9 - 8) + 8))(v6, v9);
      goto LABEL_4;
    case 11:
      break;
    case 12:
LABEL_4:
      v8 = 18;
      break;
    default:
      result = sub_12B864(v6, type metadata accessor for AssetAction.Kind);
      v8 = 0;
      break;
  }

  *a1 = v8;
  return result;
}

uint64_t AssetAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetAction(0) + 32);
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AssetAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssetAction(0) + 36);

  return sub_ECAC8(v3, a1);
}

uint64_t sub_129FF4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7461446B63696C63;
  if (v1 != 5)
  {
    v3 = 1684957547;
  }

  v4 = 0x63696C7078457369;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x44497465737361;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736E69;
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

uint64_t sub_12A0D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_12C3E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_12A0FC(uint64_t a1)
{
  v2 = sub_12B6FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12A138(uint64_t a1)
{
  v2 = sub_12B6FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AssetAction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v33);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_263AF0();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2EF0(&qword_31F0A8, &qword_279D28);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AssetAction(0);
  __chkstk_darwin(v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v40 = a1;
  sub_2E18(a1, v15);
  sub_12B6FC();
  v38 = v11;
  v16 = v39;
  sub_265120();
  if (v16)
  {
    sub_3080(v40);
    return;
  }

  v17 = v9;
  v18 = v6;
  v20 = v35;
  v19 = v36;
  v47 = 0;
  *v14 = sub_264DC0();
  *(v14 + 1) = v21;
  v39 = v21;
  v46 = 1;
  *(v14 + 2) = sub_264DC0();
  *(v14 + 3) = v22;
  v45 = 2;
  *(v14 + 4) = sub_264D70();
  *(v14 + 5) = v23;
  v44 = 3;
  v24 = v37;
  v25 = sub_264DD0();
  v39 = 0;
  v14[48] = v25 & 1;
  v43 = 4;
  sub_12B750(&qword_31C5A0, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
  v26 = v39;
  sub_264DF0();
  v39 = v26;
  if (v26)
  {
    (*(v20 + 8))(v38, v24);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    (*(v34 + 32))(&v14[v12[8]], v17, v7);
    sub_260620();
    v42 = 5;
    sub_12B750(&qword_31F0B8, &type metadata accessor for ClickData, &protocol conformance descriptor for ClickData);
    v29 = v39;
    sub_264DB0();
    v39 = v29;
    if (v29)
    {
      (*(v20 + 8))(v38, v24);
      v28 = 0;
      v27 = 1;
    }

    else
    {
      sub_129C04(v18, &v14[v12[9]]);
      v41 = 6;
      sub_12B750(&qword_31F0C0, type metadata accessor for AssetAction.Kind, &protocol conformance descriptor for AssetAction.Kind);
      v30 = v39;
      sub_264DF0();
      v39 = v30;
      if (!v30)
      {
        (*(v20 + 8))(v38, v37);
        sub_12B798(v19, &v14[v12[10]]);
        sub_12B7FC(v14, v32, type metadata accessor for AssetAction);
        sub_3080(v40);
        sub_12B864(v14, type metadata accessor for AssetAction);
        return;
      }

      (*(v20 + 8))(v38, v37);
      v27 = 1;
      v28 = 1;
    }
  }

  sub_3080(v40);

  if (v27)
  {
    (*(v34 + 8))(&v14[v12[8]], v7);
    if ((v28 & 1) == 0)
    {
      return;
    }
  }

  else if (!v28)
  {
    return;
  }

  sub_8E80(&v14[v12[9]], &qword_316B98, &unk_275840);
}

uint64_t sub_12A7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_263AF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_12A848()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_12A8A4(uint64_t a1)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

void sub_12A8EC(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_300C88;
  v6._object = v3;
  v5 = sub_264D40(v4, v6);

  *a2 = v5 != 0;
}

void sub_12A964(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_300CC0;
  v7._object = a2;
  v6 = sub_264D40(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_12A9BC(uint64_t a1)
{
  v2 = sub_12B8C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12A9F8(uint64_t a1)
{
  v2 = sub_12B8C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AssetAction.Kind.init(from:)(void *a1)
{
  v3 = sub_2EF0(&qword_31F0C8, &qword_279D30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_2E18(a1, a1[3]);
  sub_12B8C4();
  sub_265120();
  if (!v1)
  {
    sub_264DC0();

    v7 = sub_264C10();
    swift_allocError();
    v9 = v8;
    sub_264D60();
    sub_264BF0();
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.dataCorrupted(_:), v7);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
  }

  return sub_3080(a1);
}

uint64_t static AssetAction.Kind.markAsFinished.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x8000000000292DE0;
  *(a1 + 16) = 0;
  type metadata accessor for AssetAction.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s7BooksUI11AssetActionV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260060();
  v103 = *(v4 - 8);
  v104 = v4;
  __chkstk_darwin(v4);
  v102 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v100 - v7;
  v8 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v8);
  v107 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v100 - v11;
  __chkstk_darwin(v13);
  v106 = (&v100 - v14);
  __chkstk_darwin(v15);
  v17 = (&v100 - v16);
  __chkstk_darwin(v18);
  v20 = &v100 - v19;
  __chkstk_darwin(v21);
  v23 = (&v100 - v22);
  __chkstk_darwin(v24);
  v105 = &v100 - v25;
  __chkstk_darwin(v26);
  v28 = (&v100 - v27);
  v29 = sub_2EF0(&qword_31F2A8, &unk_27A100);
  __chkstk_darwin(v29 - 8);
  v32 = (&v100 + *(v31 + 56) - v30);
  v33 = a1;
  v34 = &v100 - v30;
  sub_12B7FC(v33, &v100 - v30, type metadata accessor for AssetAction.Kind);
  v35 = a2;
  v36 = v32;
  sub_12B7FC(v35, v32, type metadata accessor for AssetAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_12B7FC(v34, v12, type metadata accessor for AssetAction.Kind);
        v61 = *v12;
        v60 = *(v12 + 1);
        v62 = v12[16];
        v63 = v12[17];
        if (!swift_getEnumCaseMultiPayload())
        {
          goto LABEL_31;
        }

        goto LABEL_53;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_57;
      }

      sub_12B7FC(v34, v28, type metadata accessor for AssetAction.Kind);
      v39 = *v28;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_45:

        goto LABEL_57;
      }

LABEL_12:
      v40 = *v32;
      v41 = v39;
      v42 = sub_2609E0();
      v44 = v43;

      v45 = v40;
      v46 = sub_2609E0();
      v48 = v47;

      if (v42 == v46 && v44 == v48)
      {
        LOBYTE(v38) = 1;
      }

      else
      {
        LOBYTE(v38) = sub_264F10();
      }

      goto LABEL_96;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_12B7FC(v34, v17, type metadata accessor for AssetAction.Kind);
      v70 = *v17;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v71 = *v32;
        if (v70)
        {
          v38 = v70;
          v72 = sub_2609E0();
          v74 = v73;

          if (!v71)
          {
LABEL_49:
            if (v74)
            {
              v84 = 0;
LABEL_76:

              LOBYTE(v38) = 0;
              goto LABEL_96;
            }

LABEL_80:

            LOBYTE(v38) = 1;
            goto LABEL_96;
          }
        }

        else
        {
          v74 = 0;
          v72 = 0;
          if (!v71)
          {
            goto LABEL_79;
          }
        }

        v84 = v71;
        v86 = sub_2609E0();
        v88 = v87;

        if (v74)
        {
          if (!v88)
          {
LABEL_75:
            v38 = v70;
            goto LABEL_76;
          }

LABEL_67:
          if (v72 == v86 && v74 == v88)
          {
            LOBYTE(v38) = 1;
          }

          else
          {
            LOBYTE(v38) = sub_264F10();
          }

          goto LABEL_96;
        }

LABEL_77:

        if (v88)
        {

          LOBYTE(v38) = 0;
        }

        else
        {
          LOBYTE(v38) = 1;
        }

        goto LABEL_96;
      }

      goto LABEL_51;
    }

    sub_12B7FC(v34, v20, type metadata accessor for AssetAction.Kind);
    v51 = *v20;
    v50 = *(v20 + 1);
    v52 = v20[16];
    v53 = *(v20 + 3);
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_53;
    }

    v54 = v34;
    v38 = v32[1];
    v55 = *(v36 + 16);
    v56 = v36[3];
    if (v50)
    {
      if (!v38)
      {

        v85 = v54;
        goto LABEL_97;
      }

      if (v51 == *v36 && v50 == v38)
      {
      }

      else
      {
        v58 = sub_264F10();

        if ((v58 & 1) == 0)
        {
          goto LABEL_86;
        }
      }
    }

    else if (v38)
    {

LABEL_87:
      LOBYTE(v38) = 0;
      v85 = v54;
      goto LABEL_97;
    }

    if (v52 != v55)
    {
LABEL_86:

      goto LABEL_87;
    }

    if (v53)
    {
      v91 = sub_2609E0();
      v93 = v92;
      if (v56)
      {
        v94 = v91;
        v95 = sub_2609E0();
        v97 = v96;
        if (v93)
        {
          if (v96)
          {
            if (v94 == v95 && v93 == v96)
            {
              LOBYTE(v38) = 1;
            }

            else
            {
              LOBYTE(v38) = sub_264F10();
            }

            goto LABEL_112;
          }

          goto LABEL_105;
        }

LABEL_101:

        if (!v97)
        {
          LOBYTE(v38) = 1;
          goto LABEL_112;
        }

LABEL_106:
        LOBYTE(v38) = 0;
LABEL_112:
        v85 = v54;
        goto LABEL_97;
      }

      if (v92)
      {
        v56 = 0;
LABEL_105:

        goto LABEL_106;
      }
    }

    else
    {
      if (v56)
      {
        sub_2609E0();
        v97 = v99;
        v53 = 0;
        goto LABEL_101;
      }

      v53 = 0;
    }

    LOBYTE(v38) = 1;
    goto LABEL_112;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v59 = v107;
      sub_12B7FC(v34, v107, type metadata accessor for AssetAction.Kind);
      v61 = *v59;
      v60 = *(v59 + 8);
      v62 = *(v59 + 16);
      v63 = *(v59 + 17);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
LABEL_31:
        v64 = v34;
        v65 = v32[1];
        v66 = *(v36 + 16);
        v67 = *(v36 + 17);
        if (v61 == *v36 && v60 == v65)
        {

          if (v62 != v66)
          {
            LOBYTE(v38) = 0;
LABEL_61:
            v85 = v64;
LABEL_97:
            sub_12B864(v85, type metadata accessor for AssetAction.Kind);
            return v38 & 1;
          }
        }

        else
        {
          v69 = sub_264F10();

          LOBYTE(v38) = 0;
          if (v69 & 1) == 0 || ((v62 ^ v66))
          {
            goto LABEL_61;
          }
        }

        LOBYTE(v38) = v63 ^ v67 ^ 1;
        goto LABEL_61;
      }

LABEL_53:

      goto LABEL_57;
    }

    sub_12B7FC(v34, v23, type metadata accessor for AssetAction.Kind);
    v39 = *v23;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_45;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v75 = v105;
    sub_12B7FC(v34, v105, type metadata accessor for AssetAction.Kind);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v76 = v103;
      v38 = *(v103 + 32);
      v77 = v101;
      v78 = v75;
      v79 = v104;
      (v38)(v101, v78, v104);
      v80 = v102;
      (v38)(v102, v36, v79);
      LOBYTE(v38) = sub_260030();
      v81 = *(v76 + 8);
      v81(v80, v79);
      v81(v77, v79);
LABEL_96:
      v85 = v34;
      goto LABEL_97;
    }

    (*(v103 + 8))(v75, v104);
LABEL_57:
    sub_8E80(v34, &qword_31F2A8, &unk_27A100);
    LOBYTE(v38) = 0;
    return v38 & 1;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v82 = v106;
    sub_12B7FC(v34, v106, type metadata accessor for AssetAction.Kind);
    v70 = *v82;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v71 = *v32;
      if (v70)
      {
        v38 = v70;
        v72 = sub_2609E0();
        v74 = v83;

        if (!v71)
        {
          goto LABEL_49;
        }

LABEL_73:
        v84 = v71;
        v86 = sub_2609E0();
        v88 = v90;

        if (v74)
        {
          if (!v88)
          {
            goto LABEL_75;
          }

          goto LABEL_67;
        }

        goto LABEL_77;
      }

      v74 = 0;
      v72 = 0;
      if (v71)
      {
        goto LABEL_73;
      }

LABEL_79:
      v38 = 0;
      goto LABEL_80;
    }

LABEL_51:

    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 11 || swift_getEnumCaseMultiPayload() != 11)
  {
    goto LABEL_57;
  }

  sub_12B864(v34, type metadata accessor for AssetAction.Kind);
  LOBYTE(v38) = 1;
  return v38 & 1;
}

unint64_t sub_12B6FC()
{
  result = qword_31F0B0;
  if (!qword_31F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F0B0);
  }

  return result;
}

uint64_t sub_12B750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_12B798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAction.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12B7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12B864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_12B8C4()
{
  result = qword_31F0D0;
  if (!qword_31F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F0D0);
  }

  return result;
}

uint64_t sub_12B918(uint64_t a1)
{
  result = sub_12B750(&qword_319AE8, type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_12B984(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_263AF0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2EF0(&qword_316B98, &unk_275840);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = type metadata accessor for AssetAction.Kind(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_12BB10(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_263AF0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316B98, &unk_275840);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for AssetAction.Kind(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_12BC88(uint64_t a1)
{
  sub_22944();
  if (v1 <= 0x3F)
  {
    sub_263AF0();
    if (v2 <= 0x3F)
    {
      sub_12BF78(319, &qword_31F140, &type metadata accessor for ClickData);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AssetAction.Kind(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_12BD70(uint64_t a1)
{
  sub_12BEAC();
  if (v1 <= 0x3F)
  {
    sub_12C060(319, &qword_31F210, &type metadata accessor for MAsset);
    if (v2 <= 0x3F)
    {
      sub_12BF14();
      if (v3 <= 0x3F)
      {
        sub_12BFCC(319);
        if (v4 <= 0x3F)
        {
          sub_12C060(319, &qword_31B9C0, &type metadata accessor for URL);
          if (v5 <= 0x3F)
          {
            sub_12C0AC();
            if (v6 <= 0x3F)
            {
              sub_12C0DC(319);
              if (v7 <= 0x3F)
              {
                sub_12C144(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_12BEAC()
{
  if (!qword_31F208)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_31F208);
    }
  }
}

void sub_12BF14()
{
  if (!qword_31F218)
  {
    sub_12BF78(0, &qword_31F220, &type metadata accessor for MAsset);
    if (!v1)
    {
      atomic_store(v0, &qword_31F218);
    }
  }
}

void sub_12BF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_12BFCC(uint64_t a1)
{
  if (!qword_31F228)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    sub_2F9C(&qword_31F230, &qword_279E70);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_31F228);
    }
  }
}

void sub_12C060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_12C0AC()
{
  result = qword_31F238;
  if (!qword_31F238)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_31F238);
  }

  return result;
}

void sub_12C0DC(uint64_t a1)
{
  if (!qword_31F240)
  {
    sub_2601B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_31F240);
    }
  }
}

void sub_12C144(uint64_t a1)
{
  if (!qword_31F248)
  {
    sub_2601B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_31F248);
    }
  }
}

unint64_t sub_12C1D4()
{
  result = qword_31F278;
  if (!qword_31F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F278);
  }

  return result;
}

unint64_t sub_12C22C()
{
  result = qword_31F280;
  if (!qword_31F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F280);
  }

  return result;
}

unint64_t sub_12C284()
{
  result = qword_31F288;
  if (!qword_31F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F288);
  }

  return result;
}

unint64_t sub_12C2DC()
{
  result = qword_31F290;
  if (!qword_31F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F290);
  }

  return result;
}

unint64_t sub_12C334()
{
  result = qword_31F298;
  if (!qword_31F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F298);
  }

  return result;
}

unint64_t sub_12C38C()
{
  result = qword_31F2A0;
  if (!qword_31F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F2A0);
  }

  return result;
}

uint64_t sub_12C3E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44497465737361 && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xEA00000000004449 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446B63696C63 && a2 == 0xE900000000000061 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t sub_12C640@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for GridItemView(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_12F3E8(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_12C82C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for GridItemView(0) + 40);
  result = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v8 = *v5;

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    v10 = sub_F5DAC(v8, v7, 0);
    (*(v2 + 8))(v4, v1, v10);
    return v11;
  }

  return result;
}

uint64_t GridItemView.init(_:contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for GridItemView(0);
  v10 = a4 + v9[6];
  *v10 = swift_getKeyPath();
  *(v10 + 66) = 0;
  v11 = v9[7];
  *(a4 + v11) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v12 = v9[8];
  *(a4 + v12) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v13 = a4 + v9[9];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a4 + v9[10];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  result = sub_12F3E8(a1, a4, type metadata accessor for GridItemViewModel);
  v16 = (a4 + v9[5]);
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t type metadata accessor for GridItemView(uint64_t a1)
{
  result = qword_31F3A8;
  if (!qword_31F3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GridItemView.body.getter()
{
  v1 = sub_262370();
  v64 = *(v1 - 8);
  __chkstk_darwin(v1);
  v63 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2EF0(&qword_31A480, &qword_273520);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v6 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_2EF0(&qword_31F2B0, &qword_27A1F0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v54 - v11;
  v13 = sub_2EF0(&qword_31F2B8, &qword_27A1F8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v55 = sub_2EF0(&qword_31F2C0, &qword_27A200);
  __chkstk_darwin(v55);
  v59 = &v54 - v17;
  v57 = sub_2EF0(&qword_31F2C8, &qword_27A208);
  __chkstk_darwin(v57);
  v58 = &v54 - v18;
  v56 = sub_2EF0(&qword_31F2D0, &qword_27A210);
  __chkstk_darwin(v56);
  v61 = &v54 - v19;
  v62 = sub_2EF0(&qword_31F2D8, &qword_27A218);
  __chkstk_darwin(v62);
  v21 = &v54 - v20;
  *v12 = sub_12C82C();
  v12[8] = v22 & 1;
  v23 = &v12[*(v10 + 52)];
  *v23 = sub_261E60();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = sub_2EF0(&qword_31F2E0, &qword_27A220);
  sub_12D2DC(v0, &v23[*(v24 + 44)]);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v12, v16, &qword_31F2B0, &qword_27A1F0);
  v25 = &v16[*(v14 + 44)];
  v26 = v70;
  *(v25 + 4) = v69;
  *(v25 + 5) = v26;
  *(v25 + 6) = v71;
  v27 = v66;
  *v25 = v65;
  *(v25 + 1) = v27;
  v28 = v68;
  *(v25 + 2) = v67;
  *(v25 + 3) = v28;
  v29 = type metadata accessor for GridItemViewModel(0);
  v30 = v29[8];
  v60 = v0;
  sub_8198(v0 + v30, v5, &qword_31A480, &qword_273520);
  v31 = type metadata accessor for CardInfo(0);
  if ((*(*(v31 - 8) + 48))(v5, 1, v31) == 1)
  {
    sub_8E80(v5, &qword_31A480, &qword_273520);
    v32 = sub_2601E0();
    (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
  }

  else
  {
    v33 = *(v31 + 20);
    v34 = sub_2601E0();
    v35 = v1;
    v36 = *(v34 - 8);
    (*(v36 + 16))(v8, &v5[v33], v34);
    sub_12F388(v5, type metadata accessor for CardInfo);
    (*(v36 + 56))(v8, 0, 1, v34);
    v1 = v35;
  }

  KeyPath = swift_getKeyPath();
  v38 = v59;
  v39 = &v59[*(v55 + 36)];
  v40 = sub_2EF0(&qword_31AD20, &unk_2799D0);
  sub_12E624(v8, v39 + *(v40 + 28));
  *v39 = KeyPath;
  sub_22148(v16, v38, &qword_31F2B8, &qword_27A1F8);
  v41 = swift_getKeyPath();
  v42 = v60;
  LOBYTE(v39) = *(v60 + v29[9]);
  v43 = v58;
  sub_22148(v38, v58, &qword_31F2C0, &qword_27A200);
  v44 = v43 + *(v57 + 36);
  *v44 = v41;
  *(v44 + 8) = v39;
  v45 = swift_getKeyPath();
  LOBYTE(v41) = *(v42 + v29[10]);
  v46 = v61;
  sub_22148(v43, v61, &qword_31F2C8, &qword_27A208);
  v47 = v46 + *(v56 + 36);
  *v47 = v45;
  *(v47 + 8) = v41;
  v48 = swift_getKeyPath();
  v49 = v29[11];
  v50 = &v21[*(v62 + 36)];
  v51 = sub_2EF0(&qword_31F2E8, &qword_27A2D0);
  sub_12F320(v42 + v49, v50 + *(v51 + 28), &type metadata accessor for ContextAssetInfoAnalytics);
  *v50 = v48;
  sub_22148(v46, v21, &qword_31F2D0, &qword_27A210);
  v52 = v63;
  sub_262350();
  sub_12E758();
  sub_262C70();
  (*(v64 + 8))(v52, v1);
  return sub_12EBA8(v21);
}

uint64_t sub_12D2DC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v90 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v90);
  v92 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_262730();
  v88 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v91 = &v83 - v6;
  v89 = sub_2EF0(&qword_31B578, &qword_270C30);
  __chkstk_darwin(v89);
  v8 = &v83 - v7;
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v9 - 8);
  v86 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = &v83 - v12;
  v13 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v13 - 8);
  v85 = (&v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for GridItemMetadataView(0);
  v16 = (v15 - 8);
  __chkstk_darwin(v15);
  v99 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v83 - v19;
  v21 = type metadata accessor for CoverView(0);
  __chkstk_darwin(v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2EF0(&qword_318770, &qword_27A3C0);
  v97 = *(v24 - 8);
  v98 = v24;
  __chkstk_darwin(v24);
  v96 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v83 - v27;
  sub_2E18(a1 + 12, a1[15]);
  sub_260950();
  sub_30CC((a1 + 12), &v109);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v109, v107);
  *(&v108 + 1) = 0x4066800000000000;
  sub_230A8(v107);
  v113 = v107[4];
  v114 = v107[5];
  v115 = v107[6];
  v116 = v108;
  v109 = v107[0];
  v110 = v107[1];
  v111 = v107[2];
  v112 = v107[3];
  *v23 = swift_getKeyPath();
  v23[40] = 0;
  *(v23 + 6) = swift_getKeyPath();
  v23[56] = 0;
  v29 = v21[6];
  *&v23[v29] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v30 = v21[7];
  *&v23[v30] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v31 = &v23[v21[8]];
  type metadata accessor for ProfileRestrictions(0);
  sub_51B98(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v31 = sub_261900();
  v31[1] = v32;
  v33 = &v23[v21[9]];
  v104 = 1;
  sub_2631D0();
  v34 = v106;
  *v33 = v105;
  *(v33 + 1) = v34;
  v35 = &v23[v21[10]];
  v36 = v114;
  *(v35 + 4) = v113;
  *(v35 + 5) = v36;
  v37 = v116;
  *(v35 + 6) = v115;
  *(v35 + 7) = v37;
  v38 = v110;
  *v35 = v109;
  *(v35 + 1) = v38;
  v39 = v112;
  *(v35 + 2) = v111;
  *(v35 + 3) = v39;
  v23[v21[11]] = 1;
  v103 = a1;
  sub_51B98(&qword_317D60, type metadata accessor for CoverView, &protocol conformance descriptor for CoverView);
  v102 = v28;
  sub_262A80();
  sub_12F388(v23, type metadata accessor for CoverView);
  sub_232D0(a1, &v20[v16[8]]);
  v40 = (a1 + *(type metadata accessor for GridItemView(0) + 20));
  v42 = *v40;
  v41 = v40[1];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v43 = v16[7];
  *&v20[v43] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v44 = v16[9];
  v95 = v20;
  v45 = &v20[v44];
  *v45 = v42;
  *(v45 + 1) = v41;

  v94 = sub_12DDDC();
  if (v94)
  {
    v46 = sub_262510();
    v47 = v8;
    v83 = v8;
    v84 = v46;
    v48 = v85;
    sub_12C640(v85);
    v49 = v48;
    v50 = v101;
    sub_12F3E8(v49, v101, type metadata accessor for SizeConstants.Environment);
    v51 = v88;
    v52 = v91;
    v53 = v93;
    (*(v88 + 104))(v91, enum case for Font.TextStyle.body(_:), v93);
    v54 = v86;
    sub_12F320(v50, v86, type metadata accessor for SizeConstants.Spacing);
    v55 = v87;
    (*(v51 + 16))(v87, v52, v53);
    sub_12F320(v54, v47, type metadata accessor for SizeConstants.Spacing);
    v56 = v92;
    sub_12F320(v54, v92, type metadata accessor for SizeConstants.Environment);
    v57 = *(v90 + 24);
    v58 = sub_1CF30(v55, v56 + v57);
    v59 = *(v51 + 8);
    v59(v55, v53);
    sub_12F388(v54, type metadata accessor for SizeConstants.Spacing);
    v60 = sub_261690();
    (*(*(v60 - 8) + 8))(v56 + v57, v60);
    v61 = 1.0;
    if ((*&v58 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v61 = v58;
    }

    if ((~*&v58 & 0x7FF0000000000000) != 0)
    {
      v61 = v58;
    }

    v62 = v83;
    *&v83[*(v89 + 36)] = v61;
    v59(v52, v53);
    sub_12F388(v101, type metadata accessor for SizeConstants.Spacing);
    sub_21FA68(4.0);
    sub_8E80(v62, &qword_31B578, &qword_270C30);
    sub_2610C0();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v101 = v84;
  }

  else
  {
    v101 = 0;
    v64 = 0;
    v66 = 0;
    v68 = 0;
    v70 = 0;
  }

  v72 = v96;
  v71 = v97;
  v73 = *(v97 + 16);
  v74 = v98;
  v73(v96, v102, v98);
  v75 = v95;
  v76 = v99;
  sub_12F320(v95, v99, type metadata accessor for GridItemMetadataView);
  v77 = v100;
  v73(v100, v72, v74);
  v78 = sub_2EF0(&qword_31F410, &unk_27A470);
  sub_12F320(v76, &v77[*(v78 + 48)], type metadata accessor for GridItemMetadataView);
  v79 = &v77[*(v78 + 64)];
  v80 = v101;
  *v79 = v94;
  *(v79 + 1) = v80;
  *(v79 + 2) = v64;
  *(v79 + 3) = v66;
  *(v79 + 4) = v68;
  *(v79 + 5) = v70;
  v79[48] = 0;

  sub_12F388(v75, type metadata accessor for GridItemMetadataView);
  v81 = *(v71 + 8);
  v81(v102, v74);

  sub_12F388(v76, type metadata accessor for GridItemMetadataView);
  return (v81)(v72, v74);
}

uint64_t sub_12DCCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for GridItemView(0);
  (*(a1 + *(v4 + 20)))(v12, a1 + 96);
  v5 = sub_2E18(v12, v12[3]);
  v6 = __chkstk_darwin(v5);
  (*(v8 + 16))(&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = sub_263310();
  result = sub_3080(v12);
  *a2 = v9;
  return result;
}

uint64_t sub_12DDDC()
{
  sub_8198(v0 + 48, &v13, &qword_316D48, &unk_28CD20);
  if (v14)
  {
    sub_F7CC(&v13, v15);
    v1 = v16;
    v2 = v17;
    sub_2E18(v15, v16);
    v4 = type metadata accessor for GridItemInfobarView(0, v1, v2, v3);
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    __chkstk_darwin(v4);
    v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v8 = type metadata accessor for GridItemView(0);
    v9 = sub_12E244(*(v0 + *(v8 + 20)), *(v0 + *(v8 + 20) + 8), v1, v2, &v13 - v7);
    v10 = __chkstk_darwin(v9);
    (*(v5 + 16))(&v13 - v7, &v13 - v7, v4, v10);
    swift_getWitnessTable();
    v11 = sub_263310();
    (*(v5 + 8))(&v13 - v7, v4);
    sub_3080(v15);
  }

  else
  {
    sub_8E80(&v13, &qword_316D48, &unk_28CD20);
    return 0;
  }

  return v11;
}

void *sub_12E030@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_261CB0();
  *a3 = v5;
  return result;
}

uint64_t sub_12E13C(uint64_t a1)
{
  v2 = sub_2603F0();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_12F320(a1, &v9 - v6, &type metadata accessor for ContextAssetInfoAnalytics);
  sub_12F320(v7, v4, &type metadata accessor for ContextAssetInfoAnalytics);
  sub_12F204();
  sub_261CC0();
  return sub_12F388(v7, &type metadata accessor for ContextAssetInfoAnalytics);
}

uint64_t sub_12E244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __chkstk_darwin(a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, v11);
  sub_176C38(v13, a1, a2, a3, a4, a5);
}

uint64_t EnvironmentValues.coverContainerAspectRatio.getter()
{
  sub_12EC10();
  sub_261CB0();
  return v1;
}

void *sub_12E37C@<X0>(uint64_t a1@<X8>)
{
  sub_12EC10();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t (*EnvironmentValues.coverContainerAspectRatio.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_12EC10();
  sub_261CB0();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return sub_12E50C;
}

void sub_12E50C(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_261CC0();

  free(v1);
}

void *sub_12E570@<X0>(uint64_t a3@<X8>)
{
  sub_12EC10();
  result = sub_261CB0();
  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_12E624(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_12E758()
{
  result = qword_31F2F0;
  if (!qword_31F2F0)
  {
    sub_2F9C(&qword_31F2D8, &qword_27A218);
    sub_12E810();
    sub_8E38(&qword_31F340, &qword_31F2E8, &qword_27A2D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F2F0);
  }

  return result;
}

unint64_t sub_12E810()
{
  result = qword_31F2F8;
  if (!qword_31F2F8)
  {
    sub_2F9C(&qword_31F2D0, &qword_27A210);
    sub_12E8C8();
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F2F8);
  }

  return result;
}

unint64_t sub_12E8C8()
{
  result = qword_31F300;
  if (!qword_31F300)
  {
    sub_2F9C(&qword_31F2C8, &qword_27A208);
    sub_12E980();
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F300);
  }

  return result;
}

unint64_t sub_12E980()
{
  result = qword_31F308;
  if (!qword_31F308)
  {
    sub_2F9C(&qword_31F2C0, &qword_27A200);
    sub_12EA38();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F308);
  }

  return result;
}

unint64_t sub_12EA38()
{
  result = qword_31F310;
  if (!qword_31F310)
  {
    sub_2F9C(&qword_31F2B8, &qword_27A1F8);
    sub_12EAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F310);
  }

  return result;
}

unint64_t sub_12EAC4()
{
  result = qword_31F318;
  if (!qword_31F318)
  {
    sub_2F9C(&qword_31F2B0, &qword_27A1F0);
    sub_8E38(&qword_31F320, &qword_31F328, &qword_27A2D8, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_8E38(&qword_31F330, &qword_31F338, &unk_27A2E0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F318);
  }

  return result;
}

uint64_t sub_12EBA8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31F2D8, &qword_27A218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_12EC10()
{
  result = qword_31F348;
  if (!qword_31F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F348);
  }

  return result;
}

uint64_t sub_12EC94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GridItemViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2EF0(&qword_31A748, &unk_26F940);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_12EE34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GridItemViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_2EF0(&qword_31A748, &unk_26F940);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_12EFC0(uint64_t a1)
{
  type metadata accessor for GridItemViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_16D28();
    if (v2 <= 0x3F)
    {
      sub_78DC8(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0);
      if (v3 <= 0x3F)
      {
        sub_12F13C(319, &qword_31A7B8, type metadata accessor for FontConstants);
        if (v4 <= 0x3F)
        {
          sub_12F13C(319, &qword_317C68, type metadata accessor for SizeConstants);
          if (v5 <= 0x3F)
          {
            sub_78DC8(319, &qword_316A00, &qword_316A08, &unk_277860);
            if (v6 <= 0x3F)
            {
              sub_78DC8(319, &qword_31D878, &qword_319918, &qword_273BF0);
              if (v7 <= 0x3F)
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

void sub_12F13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_12F190()
{
  sub_2F9C(&qword_31F2D8, &qword_27A218);
  sub_12E758();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_12F204()
{
  result = qword_31F3F8;
  if (!qword_31F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F3F8);
  }

  return result;
}

unint64_t sub_12F258()
{
  result = qword_31F400;
  if (!qword_31F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F400);
  }

  return result;
}

unint64_t sub_12F2AC()
{
  result = qword_31F408;
  if (!qword_31F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F408);
  }

  return result;
}

uint64_t sub_12F320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12F388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_12F3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *ComponentModel.additionalAppAnalyticsData.getter(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_2EF0(&qword_31F418, &qword_27A480);
  if (swift_dynamicCast())
  {
    sub_F7CC(v8, v10);
    v4 = v11;
    v5 = v12;
    sub_2E18(v10, v11);
    v6 = (*(v5 + 8))(v4, v5);
    sub_3080(v10);
    return v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_12F5A4(v8);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_12F5A4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31F420, &qword_27A488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ComponentModel.dataStackID.getter()
{
  sub_263B90();
  sub_264B60();
  sub_F778(v1);
  swift_dynamicCast();
  return sub_2604D0();
}

uint64_t ToolbarActionToggleMenuItem.init(item:isSelected:preSelectionActionProvider:postSelectionActionProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 40) = 0;
  v14 = type metadata accessor for ToolbarActionToggleMenuItem(0);
  v15 = v14[5];
  *(a7 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  swift_storeEnumTagMultiPayload();
  result = sub_12FF08(a1, a7 + v14[6], type metadata accessor for ToolbarActionMenuItem);
  *(a7 + v14[7]) = a2;
  v17 = (a7 + v14[8]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v14[9]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t type metadata accessor for ToolbarActionToggleMenuItem(uint64_t a1)
{
  result = qword_31F488;
  if (!qword_31F488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12F7EC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318150, &qword_279A70);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ToolbarActionToggleMenuItem(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_260CA0();
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

uint64_t ToolbarActionToggleMenuItem.preSelectionActionProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolbarActionToggleMenuItem(0) + 32));
  v2 = *v1;
  sub_AF884(*v1, v1[1]);
  return v2;
}

uint64_t ToolbarActionToggleMenuItem.postSelectionActionProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolbarActionToggleMenuItem(0) + 36));
  v2 = *v1;
  sub_AF884(*v1, v1[1]);
  return v2;
}

uint64_t ToolbarActionToggleMenuItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for ToolbarActionToggleMenuItem(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_12FE9C(v1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarActionToggleMenuItem);
  sub_264750();
  v7 = sub_264740();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_12FF08(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ToolbarActionToggleMenuItem);
  sub_12FE9C(v1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarActionToggleMenuItem);
  v10 = sub_264740();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_12FF08(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8, type metadata accessor for ToolbarActionToggleMenuItem);
  sub_263360();
  v20 = v2;
  type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_1307C4();
  v12 = v19;
  sub_2632C0();
  v13 = *(v4 + 32);
  LOBYTE(v13) = *(v2 + *(type metadata accessor for ToolbarActionMenuItem(0) + 36) + v13);
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v13 & 1) == 0;
  result = sub_2EF0(&qword_31F428, &qword_27A550);
  v17 = (v12 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_4C914;
  v17[2] = v15;
  return result;
}

uint64_t sub_12FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ToolbarActionToggleMenuItem(0) + 24);
  v4 = type metadata accessor for ToolbarActionMenuItem(0);
  v5 = v4[5];
  v6 = sub_260BD0();
  (*(*(v6 - 8) + 16))(a2, v3 + v5, v6);
  v7 = v4[6];
  v8 = type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_8198(v3 + v7, a2 + v8[5], &qword_316208, &qword_268BD0);
  sub_8198(v3 + v4[7], a2 + v8[6], &qword_31AC00, &qword_270F30);
  v9 = a2 + v8[7];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = a2 + v8[8];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_12FE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12FF08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_12FF70@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for ToolbarActionToggleMenuItem(0);
  v5 = *(v3 - 8);
  result = v3 - 8;
  *a1 = *(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(result + 36));
  return result;
}

int *sub_12FFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_260CA0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_263AF0();
  __chkstk_darwin(v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261C90();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ToolbarActionToggleMenuItem(0);
  if (*(a4 + result[7]))
  {
    return result;
  }

  v17 = result;
  sub_8198(a4, &v29, &qword_31A240, &qword_26E588);
  if (v32 != 1)
  {
    v28[1] = v29;
    sub_264900();
    v20 = sub_2624B0();
    v28[2] = v11;
    v21 = v20;
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    if (*(&v34 + 1))
    {
      goto LABEL_4;
    }

    return sub_130D1C(&v33);
  }

  v33 = v29;
  v34 = v30;
  v35 = v31;
  if (!*(&v30 + 1))
  {
    return sub_130D1C(&v33);
  }

LABEL_4:
  sub_F7CC(&v33, v36);
  v18 = *(a4 + v17[8]);
  if (v18)
  {
    v19 = v18(a4 + v17[6]);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  sub_2EF0(&qword_317258, &unk_27A660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  v23 = a4 + v17[6];
  v24 = type metadata accessor for ToolbarActionMenuItem(0);
  sub_AAFC8(v23 + *(v24 + 32), &v29);
  sub_F7CC(&v29, inited + 32);
  *&v29 = v19;
  sub_1D95F0(inited);
  v25 = v29;
  v26 = *(a4 + v17[9]);
  if (v26)
  {
    v27 = v26(v23);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  *&v29 = v25;
  sub_1D95F0(v27);
  sub_2E18(v36, v36[3]);
  sub_263AC0();
  *(&v30 + 1) = sub_263BD0();
  v31 = &protocol witness table for CompoundAction;
  sub_10934(&v29);
  sub_263BC0();
  sub_12F7EC(v8);
  sub_260B20();
  (*(v6 + 8))(v8, v5);
  sub_3080(&v29);
  return sub_3080(v36);
}

uint64_t sub_1303F0()
{
  v1 = type metadata accessor for ToolbarActionToggleMenuItem(0);
  v21 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v21 + 32) & ~v21);
  if (*(v2 + 40))
  {
    if (*(v2 + 24))
    {
      sub_3080(v2);
    }
  }

  else
  {
  }

  v3 = v1[5];
  sub_2EF0(&qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_260CA0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[6];

  v6 = type metadata accessor for ToolbarActionMenuItem(0);
  v7 = v6[5];
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = v6[6];
  v12 = *(v9 + 48);
  if (!v12(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v13 = v5 + v6[7];
  v14 = *(v13 + 40);
  if (v14 == 2)
  {
    sub_3080(v13);
  }

  else if (v14 <= 1)
  {
  }

  sub_3080((v5 + v6[8]));
  v15 = v5 + v6[11];
  type metadata accessor for ToolbarActionMenuItemButtonType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    if (!v12(v15, 1, v8))
    {
      v10(v15, v8);
    }

    v18 = sub_2EF0(&qword_31BB98, &qword_271980);

    v19 = (v15 + *(v18 + 64));
    if (v19[3])
    {
      sub_3080(v19);
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v17 = sub_260060();
    (*(*(v17 - 8) + 8))(v15, v17);
  }

  if (*(v2 + v1[8]))
  {
  }

  if (*(v2 + v1[9]))
  {
  }

  return swift_deallocObject();
}

int *sub_130748(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolbarActionToggleMenuItem(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_12FFD8(a1, v4, v5, v6);
}

unint64_t sub_1307C4()
{
  result = qword_31AC08;
  if (!qword_31AC08)
  {
    type metadata accessor for ToolbarActionMenuItemLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AC08);
  }

  return result;
}

uint64_t sub_130868(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for ToolbarActionMenuItem(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_13099C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for ToolbarActionMenuItem(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_130AAC(uint64_t a1)
{
  sub_130BC0(319, &qword_31A200, &qword_31A208, &unk_27A5E0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_128FA0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ToolbarActionMenuItem(319);
      if (v3 <= 0x3F)
      {
        sub_130BC0(319, &qword_31A1E8, &qword_31A1F0, qword_26E558, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_130BC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_130C28()
{
  result = qword_31F4D0;
  if (!qword_31F4D0)
  {
    sub_2F9C(&qword_31F428, &qword_27A550);
    sub_8E38(&qword_31F4D8, &qword_31F4E0, &unk_27A5F0, &protocol conformance descriptor for Toggle<A>);
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F4D0);
  }

  return result;
}

uint64_t sub_130D1C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A208, &unk_27A5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_130D88@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC8, &qword_276F60);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1323D8(v10, a1);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void *ListItemMetadataView.init(model:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for ListItemMetadataView(0) + 20);

  return memcpy(v4, a1, 0x118uLL);
}

uint64_t type metadata accessor for ListItemMetadataView(uint64_t a1)
{
  result = qword_31F548;
  if (!qword_31F548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ListItemMetadataView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_261E60();
  sub_130D88(v4);
  sub_E5250(v4);
  v23 = 0;
  sub_131254(&v14);
  v29 = v19;
  v30 = v20;
  v31[0] = v21[0];
  *(v31 + 9) = *(v21 + 9);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v24 = v14;
  v25 = v15;
  v32[5] = v19;
  v32[6] = v20;
  v33[0] = v21[0];
  *(v33 + 9) = *(v21 + 9);
  v32[2] = v16;
  v32[3] = v17;
  v32[4] = v18;
  v32[0] = v14;
  v32[1] = v15;
  sub_8198(&v24, &v13, &qword_31F4E8, &qword_27A6B0);
  sub_1313F4(v32);
  *(&v22[6] + 7) = v30;
  *(&v22[5] + 7) = v29;
  *(&v22[2] + 7) = v26;
  *(&v22[1] + 7) = v25;
  *(&v22[7] + 7) = v31[0];
  v22[8] = *(v31 + 9);
  *(&v22[3] + 7) = v27;
  *(&v22[4] + 7) = v28;
  *(v22 + 7) = v24;
  v6 = v22[4];
  *(a1 + 97) = v22[5];
  v7 = v22[7];
  *(a1 + 113) = v22[6];
  *(a1 + 129) = v7;
  *(a1 + 145) = v22[8];
  v8 = v22[0];
  *(a1 + 33) = v22[1];
  result = *&v22[2];
  v10 = v22[3];
  *(a1 + 49) = v22[2];
  *(a1 + 65) = v10;
  *(a1 + 81) = v6;
  v11 = v23;
  *a1 = v5;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = v11;
  *(a1 + 17) = v8;
  return result;
}

void sub_131254(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = (&v27 - v6);
  v28 = sub_131478();
  v27 = sub_131660();
  v8 = sub_13184C();
  v9 = sub_131A38();
  v10 = sub_131C24();
  v11 = sub_262510();
  sub_130D88(v7);
  sub_E5250(v7);
  sub_130D88(v4);
  sub_E5250(v4);
  sub_2610C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_131E10();
  v21 = sub_262510();
  sub_130D88(v7);
  sub_E5250(v7);
  sub_130D88(v4);
  sub_E5250(v4);
  sub_2610C0();
  v22 = v27;
  *a1 = v28;
  *(a1 + 8) = v22;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17;
  *(a1 + 72) = v19;
  *(a1 + 80) = 0;
  *(a1 + 88) = v20;
  *(a1 + 96) = v21;
  *(a1 + 104) = v23;
  *(a1 + 112) = v24;
  *(a1 + 120) = v25;
  *(a1 + 128) = v26;
  *(a1 + 136) = 0;
}

uint64_t sub_1313F4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31F4E8, &qword_27A6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_131478()
{
  v1 = type metadata accessor for ListItemMetadataView(0);
  sub_8198(v0 + *(v1 + 20), &v16, &qword_315B58, &unk_266540);
  if (!v17)
  {
    return 0;
  }

  sub_F7CC(&v16, v13);
  v2 = v14;
  v3 = v15;
  sub_2E18(v13, v14);
  v5 = type metadata accessor for ListItemMetadataEyebrowView(0, v2, v3, v4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = sub_1322F8(v2, v3, sub_13EAD0);
  v10 = __chkstk_darwin(v9);
  (*(v6 + 16))(v13 - v8, v13 - v8, v5, v10);
  swift_getWitnessTable();
  v11 = sub_263310();
  (*(v6 + 8))(v13 - v8, v5);
  sub_3080(v13);
  return v11;
}

uint64_t sub_131660()
{
  v1 = type metadata accessor for ListItemMetadataView(0);
  sub_8198(v0 + *(v1 + 20) + 40, &v16, &qword_315B60, &unk_276FA0);
  if (!v17)
  {
    return 0;
  }

  sub_F7CC(&v16, v13);
  v2 = v14;
  v3 = v15;
  sub_2E18(v13, v14);
  v5 = type metadata accessor for ListItemMetadataTitleLockupView(0, v2, v3, v4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = sub_1322F8(v2, v3, sub_767AC);
  v10 = __chkstk_darwin(v9);
  (*(v6 + 16))(v13 - v8, v13 - v8, v5, v10);
  swift_getWitnessTable();
  v11 = sub_263310();
  (*(v6 + 8))(v13 - v8, v5);
  sub_3080(v13);
  return v11;
}

uint64_t sub_13184C()
{
  v1 = type metadata accessor for ListItemMetadataView(0);
  sub_8198(v0 + *(v1 + 20) + 80, &v16, &qword_315B68, &unk_266550);
  if (!v17)
  {
    return 0;
  }

  sub_F7CC(&v16, v13);
  v2 = v14;
  v3 = v15;
  sub_2E18(v13, v14);
  v5 = type metadata accessor for ListItemMetadataFormatAndDescriptorView(0, v2, v3, v4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = sub_1322F8(v2, v3, sub_1AAA08);
  v10 = __chkstk_darwin(v9);
  (*(v6 + 16))(v13 - v8, v13 - v8, v5, v10);
  swift_getWitnessTable();
  v11 = sub_263310();
  (*(v6 + 8))(v13 - v8, v5);
  sub_3080(v13);
  return v11;
}

uint64_t sub_131A38()
{
  v1 = type metadata accessor for ListItemMetadataView(0);
  sub_8198(v0 + *(v1 + 20) + 160, &v16, &qword_315B70, &unk_276FB0);
  if (!v17)
  {
    return 0;
  }

  sub_F7CC(&v16, v13);
  v2 = v14;
  v3 = v15;
  sub_2E18(v13, v14);
  v5 = type metadata accessor for ListItemMetadataFinePrintView(0, v2, v3, v4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = sub_1322F8(v2, v3, sub_23E990);
  v10 = __chkstk_darwin(v9);
  (*(v6 + 16))(v13 - v8, v13 - v8, v5, v10);
  swift_getWitnessTable();
  v11 = sub_263310();
  (*(v6 + 8))(v13 - v8, v5);
  sub_3080(v13);
  return v11;
}

uint64_t sub_131C24()
{
  v1 = type metadata accessor for ListItemMetadataView(0);
  sub_8198(v0 + *(v1 + 20) + 200, &v16, &qword_315B78, &unk_266560);
  if (!v17)
  {
    return 0;
  }

  sub_F7CC(&v16, v13);
  v2 = v14;
  v3 = v15;
  sub_2E18(v13, v14);
  v5 = type metadata accessor for ListItemMetadataSharedWithYouView(0, v2, v3, v4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = sub_1322F8(v2, v3, sub_ED570);
  v10 = __chkstk_darwin(v9);
  (*(v6 + 16))(v13 - v8, v13 - v8, v5, v10);
  swift_getWitnessTable();
  v11 = sub_263310();
  (*(v6 + 8))(v13 - v8, v5);
  sub_3080(v13);
  return v11;
}

uint64_t sub_131E10()
{
  v1 = type metadata accessor for ListItemMetadataView(0);
  sub_8198(v0 + *(v1 + 20) + 240, &v16, &qword_315B80, &qword_276FC0);
  if (!v17)
  {
    return 0;
  }

  sub_F7CC(&v16, v13);
  v2 = v14;
  v3 = v15;
  sub_2E18(v13, v14);
  v5 = type metadata accessor for ListItemMetadataCreatorDescriptionView(0, v2, v3, v4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = sub_1322F8(v2, v3, sub_64858);
  v10 = __chkstk_darwin(v9);
  (*(v6 + 16))(v13 - v8, v13 - v8, v5, v10);
  swift_getWitnessTable();
  v11 = sub_263310();
  (*(v6 + 8))(v13 - v8, v5);
  sub_3080(v13);
  return v11;
}

uint64_t sub_132010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F78, &unk_269C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1320FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F78, &unk_269C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

void sub_1321C4(uint64_t a1)
{
  sub_132238(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_132238(uint64_t a1)
{
  if (!qword_317008)
  {
    type metadata accessor for SizeConstants.Spacing(255);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_317008);
    }
  }
}

unint64_t sub_132294()
{
  result = qword_31F580;
  if (!qword_31F580)
  {
    sub_2F9C(&qword_31F588, &qword_27A728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F580);
  }

  return result;
}

uint64_t sub_1322F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v7 = __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  return a3(v9, a1, a2);
}

uint64_t sub_1323D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LibraryAssetState.isLocal.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
  }

  if (*(v0 + 32) == 1 && v1 == 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void LibraryAssetState.localState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t LibraryAssetState.isDownloadable.getter()
{
  v1 = *(v0 + 24);
  if (v1 == 3)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 32) == 1 && v1 == 2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t LibraryAssetState.init(id:ownership:localState:playState:downloadProgress:readingProgress:isInSamples:isLocalSample:isInWantToRead:isFinished:hasSpecifiedFinishedDate:isPurchased:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, char a12, char a13, char a14, char a15)
{
  v15 = *a3;
  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = *a5;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v15;
  *(a9 + 24) = v16;
  *(a9 + 32) = v17;
  *(a9 + 33) = v18;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 40) = a10;
  *(a9 + 48) = a8;
  *(a9 + 49) = a11;
  *(a9 + 50) = a12;
  *(a9 + 51) = a13;
  *(a9 + 52) = a14;
  *(a9 + 65) = a15;
  return result;
}

BOOL _s7BooksUI17LibraryAssetStateV05LocalE0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (*&v2 > 1)
  {
    if (*&v2 == 2)
    {
      if (*&v3 == 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }

    else
    {
      if (*&v2 == 3)
      {
        if (*&v3 == 3)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 > 3uLL)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    return (v6 & 1) != 0;
  }

  if (*&v3 == 1)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  return (v9 & 1) != 0;
}

uint64_t _s7BooksUI17LibraryAssetStateV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = a1[5];
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  v9 = *(a1 + 50);
  v10 = *(a1 + 51);
  v11 = *(a1 + 52);
  v12 = a1[7];
  v13 = *(a1 + 64);
  v14 = *(a1 + 65);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 33);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 49);
  v22 = *(a2 + 50);
  v23 = *(a2 + 51);
  v24 = *(a2 + 52);
  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  v27 = *(a2 + 65);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v2 != v15)
    {
      return 0;
    }
  }

  else
  {
    v44 = *(a1 + 32);
    v45 = *(a2 + 24);
    v46 = a1[3];
    v47 = *(a2 + 32);
    v48 = *(a2 + 33);
    v49 = *(a2 + 48);
    v50 = *(a2 + 49);
    v51 = *(a1 + 33);
    v52 = *(a2 + 50);
    v53 = *(a2 + 51);
    v54 = *(a1 + 48);
    v55 = *(a2 + 52);
    v29 = *(a1 + 49);
    v30 = *(a1 + 50);
    v31 = *(a1 + 51);
    v32 = *(a1 + 52);
    v33 = *(a2 + 65);
    v34 = *(a1 + 64);
    v35 = *(a1 + 65);
    v36 = sub_264F10();
    result = 0;
    if ((v36 & 1) == 0)
    {
      return result;
    }

    v14 = v35;
    v13 = v34;
    v27 = v33;
    v11 = v32;
    v10 = v31;
    v9 = v30;
    v8 = v29;
    v7 = v54;
    v24 = v55;
    v22 = v52;
    v23 = v53;
    v21 = v50;
    v5 = v51;
    v18 = v48;
    v20 = v49;
    v17 = v47;
    v16 = v45;
    v3 = v46;
    v4 = v44;
    if (v2 != v15)
    {
      return result;
    }
  }

  if (v4)
  {
    if (*&v3 <= 1)
    {
      if (v3 == 0.0)
      {
        if (v16 == 0.0)
        {
          v39 = v17;
        }

        else
        {
          v39 = 0;
        }

        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*&v16 == 1)
        {
          v42 = v17;
        }

        else
        {
          v42 = 0;
        }

        if ((v42 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (*&v3 == 2)
    {
      if (*&v16 == 2)
      {
        v40 = v17;
      }

      else
      {
        v40 = 0;
      }

      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v3 == 3)
    {
      if (*&v16 == 3)
      {
        v37 = v17;
      }

      else
      {
        v37 = 0;
      }

      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*&v16 > 3uLL)
      {
        v41 = v17;
      }

      else
      {
        v41 = 0;
      }

      if (v41 != 1)
      {
        return 0;
      }
    }

    result = 0;
    if (v5 != v18)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v3 == v16)
    {
      v38 = v17;
    }

    else
    {
      v38 = 1;
    }

    if ((v38 & 1) != 0 || v5 != v18)
    {
      return result;
    }
  }

  if (v6 == v19 && ((v7 ^ v20) & 1) == 0 && ((v8 ^ v21) & 1) == 0 && ((v9 ^ v22) & 1) == 0 && ((v10 ^ v23) & 1) == 0 && ((v11 ^ v24) & 1) == 0)
  {
    if (v13)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (v12 == v25)
      {
        v43 = v26;
      }

      else
      {
        v43 = 1;
      }

      if (v43)
      {
        return 0;
      }
    }

    return v14 ^ v27 ^ 1u;
  }

  return result;
}

unint64_t sub_1328A0()
{
  result = qword_31F590;
  if (!qword_31F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F590);
  }

  return result;
}

unint64_t sub_1328F8()
{
  result = qword_31F598;
  if (!qword_31F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F598);
  }

  return result;
}

__n128 sub_13294C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_132970(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1329B8(uint64_t result, int a2, int a3)
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
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryAssetState.LocalState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryAssetState.LocalState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_132A7C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_132A98(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_132AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v2, v11, &qword_31A240, &qword_26E588);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_132C4C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318150, &qword_279A70);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for UIKitActionButton(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_260CA0();
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

void *sub_132E54()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for UIKitActionButton(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_1FED0(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_132FB4@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316930, &qword_2689A0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for UIKitActionButton(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_260640();
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

uint64_t sub_1331BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIKitActionButton(0);
  result = sub_8198(v1 + *(v7 + 36), v11, &qword_316BB0, &qword_268BA8);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t UIKitActionButton.init(type:action:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2604E0();
  __chkstk_darwin(v6 - 8);
  *a3 = swift_getKeyPath();
  *(a3 + 40) = 0;
  v7 = type metadata accessor for UIKitActionButton(0);
  v8 = v7[5];
  *(a3 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  swift_storeEnumTagMultiPayload();
  sub_2604C0();
  sub_260420();
  v9 = a3 + v7[7];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v7[8];
  *(a3 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v11 = a3 + v7[9];
  *v11 = swift_getKeyPath();
  *(v11 + 40) = 0;
  *(a3 + v7[10]) = a1;
  return sub_F7CC(a2, a3 + v7[11]);
}

id UIKitActionButton.makeUIView(context:)()
{
  v1 = *(v0 + *(type metadata accessor for UIKitActionButton(0) + 40));
  v2 = [objc_opt_self() buttonWithType:v1];
  sub_2EF0(&qword_31F5A0, &unk_27AA10);
  sub_2623A0();
  [v2 addTarget:v4 action:"perform" forControlEvents:0x2000];

  return v2;
}

uint64_t UIKitActionButton.makeCoordinator()()
{
  v1 = sub_260CA0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = type metadata accessor for UIKitActionButton(0);
  sub_30CC(v0 + *(v5 + 44), v10);
  sub_132AD8(v9);
  sub_132C4C(v4);
  type metadata accessor for UIKitActionButton.Coordinator(0);
  v6 = swift_allocObject();
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0;
  *(v6 + 56) = 0u;
  sub_F7CC(v10, v6 + 16);
  swift_beginAccess();
  sub_134300(v9, v6 + 56);
  swift_endAccess();
  (*(v2 + 32))(v6 + OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext, v4, v1);
  return v6;
}

uint64_t sub_1336F4()
{
  v1 = sub_260CA0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_8198(v0 + 56, v10, &qword_31A208, &unk_27A5E0);
  if (!v11)
  {
    return sub_8E80(v10, &qword_31A208, &unk_27A5E0);
  }

  sub_30CC(v10, v9);
  sub_8E80(v10, &qword_31A208, &unk_27A5E0);
  sub_2E18(v9, v9[3]);
  swift_beginAccess();
  sub_30CC(v0 + 16, v8);
  v5 = OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_260B20();
  (*(v2 + 8))(v4, v1);
  sub_3080(v8);
  return sub_3080(v9);
}

uint64_t UIKitActionButton.Coordinator.deinit()
{
  sub_3080((v0 + 16));
  sub_8E80(v0 + 56, &qword_31A208, &unk_27A5E0);
  v1 = OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext;
  v2 = sub_260CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t UIKitActionButton.Coordinator.__deallocating_deinit()
{
  sub_3080((v0 + 16));
  sub_8E80(v0 + 56, &qword_31A208, &unk_27A5E0);
  v1 = OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext;
  v2 = sub_260CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_133A50(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() buttonWithType:*(v2 + *(a2 + 40))];
  sub_2EF0(&qword_31F5A0, &unk_27AA10);
  sub_2623A0();
  [v3 addTarget:v5 action:"perform" forControlEvents:0x2000];

  return v3;
}

uint64_t sub_133B04@<X0>(uint64_t *a1@<X8>)
{
  result = UIKitActionButton.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_133B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1349B0(qword_31F770, &protocol conformance descriptor for UIKitActionButton);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_133BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1349B0(qword_31F770, &protocol conformance descriptor for UIKitActionButton);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_133C34(uint64_t a1)
{
  sub_1349B0(qword_31F770, &protocol conformance descriptor for UIKitActionButton);
  sub_261F30();
  __break(1u);
}

double sub_133C90(uint64_t a1)
{
  v3 = sub_260CA0();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_260640();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = sub_260620();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for UIKitActionButton(0) + 44);
  sub_30CC(v1 + v13, v39);
  sub_2EF0(&qword_316A30, &qword_2697B0);
  sub_2EF0(&qword_316BA8, &unk_275850);
  if (swift_dynamicCast())
  {
    v27 = a1;
    v28 = v3;
    sub_F7CC(&v36, &v40);
    v14 = v41;
    v15 = v42;
    sub_2E18(&v40, v41);
    (*(v15 + 16))(v14, v15);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v26 = v10;
      (*(v10 + 32))(v12, v8, v9);
      sub_2EF0(&qword_31F5A0, &unk_27AA10);
      sub_2623A0();
      v17 = v35;
      v25[0] = v42;
      v25[1] = sub_2E18(&v40, v41);
      v18 = sub_132E54();
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v19 = v29;
      sub_132FB4(v29);
      sub_1331BC(v34);
      sub_260400();
      sub_263860();

      sub_8E80(v34, &qword_316A20, &qword_268A90);
      (*(v30 + 8))(v19, v31);
      sub_8E80(&v36, &qword_316610, &qword_268BA0);
      (*(v26 + 8))(v12, v9);
      swift_beginAccess();
      sub_3080((v17 + 16));
      sub_F7CC(v39, v17 + 16);
      swift_endAccess();

      sub_3080(&v40);
      v3 = v28;
      goto LABEL_7;
    }

    sub_8E80(v8, &qword_316B98, &unk_275840);
    sub_3080(&v40);
    v3 = v28;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_8E80(&v36, &qword_316BA0, &unk_268B90);
  }

  sub_2EF0(&qword_31F5A0, &unk_27AA10);
  sub_2623A0();
  v16 = v36;
  sub_30CC(v1 + v13, &v40);
  swift_beginAccess();
  sub_3080((v16 + 16));
  sub_F7CC(&v40, v16 + 16);
  swift_endAccess();

LABEL_7:
  sub_2EF0(&qword_31F5A0, &unk_27AA10);
  sub_2623A0();
  v20 = v36;
  sub_132AD8(&v40);
  swift_beginAccess();
  sub_134300(&v40, v20 + 56);
  swift_endAccess();

  sub_2623A0();
  v21 = *&v39[0];
  v22 = v32;
  sub_132C4C(v32);
  v23 = OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext;
  swift_beginAccess();
  (*(v33 + 40))(v21 + v23, v22, v3);
  swift_endAccess();

  return result;
}

uint64_t sub_134300(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A208, &unk_27A5E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1343B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_260410();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_2EF0(qword_316978, &unk_268A60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[11] + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_134538(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_260410();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_2EF0(qword_316978, &unk_268A60);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11] + 24) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[8];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_1346A0(uint64_t a1)
{
  sub_78DC8(319, &qword_31A200, &qword_31A208, &unk_27A5E0);
  if (v1 <= 0x3F)
  {
    sub_134834(319, &qword_31A1F8, &type metadata accessor for OpaqueMetricsFieldsContext);
    if (v2 <= 0x3F)
    {
      sub_260410();
      if (v3 <= 0x3F)
      {
        sub_78DC8(319, &qword_316A00, &qword_316A08, &unk_277860);
        if (v4 <= 0x3F)
        {
          sub_134834(319, &qword_316A10, &type metadata accessor for DataStack);
          if (v5 <= 0x3F)
          {
            sub_78DC8(319, &qword_316A18, &qword_316A20, &qword_268A90);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ButtonType(319);
              if (v7 <= 0x3F)
              {
                sub_134888();
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

void sub_134834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_134888()
{
  result = qword_31F618;
  if (!qword_31F618)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_31F618);
  }

  return result;
}

uint64_t sub_1348F4(uint64_t a1)
{
  result = sub_260CA0();
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

uint64_t sub_1349B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIKitActionButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _CodeAnyActionModel_Many.description.getter()
{
  sub_2EF0(&qword_316A30, &qword_2697B0);

  return sub_2646A0();
}

void _CodeAnyActionModel_Many.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v13);
  sub_3FC1C();
  v5 = sub_264700();
  if (v2)
  {
    sub_3080(a1);
  }

  else
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v14 = _swiftEmptyArrayStorage;
      v7 = v5;
      sub_2DA24(0, v6, 0);
      v8 = v14;
      v9 = v7 + 32;
      do
      {
        sub_AAFC8(v9, v12);
        sub_30CC(v12, v13);
        sub_3FCA0(v12);
        v14 = v8;
        v11 = v8[2];
        v10 = v8[3];
        if (v11 >= v10 >> 1)
        {
          sub_2DA24((v10 > 1), v11 + 1, 1);
          v8 = v14;
        }

        v8[2] = v11 + 1;
        sub_F7CC(v13, &v8[5 * v11 + 4]);
        v9 += 40;
        --v6;
      }

      while (v6);
      sub_3080(a1);

      *a2 = v8;
    }

    else
    {

      sub_3080(a1);
      *a2 = _swiftEmptyArrayStorage;
    }
  }
}

void _CodeAnyActionModel_Many.init(_partiallyFrom:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_30CC(a1, v12);
  sub_3FC1C();
  v4 = sub_2646E0();
  v5 = *(v4 + 16);
  if (v5)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_2DA24(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v4 + 32;
    do
    {
      sub_AAFC8(v7, v10);
      sub_30CC(v10, v12);
      sub_3FCA0(v10);
      v11 = v6;
      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        sub_2DA24((v8 > 1), v9 + 1, 1);
        v6 = v11;
      }

      v6[2] = v9 + 1;
      sub_F7CC(v12, &v6[5 * v9 + 4]);
      v7 += 40;
      --v5;
    }

    while (v5);
    sub_3080(a1);
  }

  else
  {

    sub_3080(a1);
    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v6;
}

uint64_t sub_134D28(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v12);
  (*(v8 + 16))(v10, a1, a4);
  return sub_261140();
}

uint64_t AssetCover.init(aspectRatio:url:effect:placeholderColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = a7;
  a6[1] = a8;
  v13 = type metadata accessor for AssetCover(0, a4, a5, a4);
  v14 = v13[9];
  v15 = sub_260060();
  (*(*(v15 - 8) + 32))(a6 + v14, a1, v15);
  result = (*(*(a4 - 8) + 32))(a6 + v13[10], a2, a4);
  *(a6 + v13[11]) = a3;
  return result;
}

uint64_t AssetCover.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v60 = *(a1 - 8);
  v64 = *(v60 + 64);
  __chkstk_darwin(a1);
  v61 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = a1;
  v12 = *(a1 + 24);
  v57 = *(a1 + 16);
  v58 = v12;
  type metadata accessor for _CoverEffectViewModifier(255, v57, v12, v13);
  v14 = sub_261730();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v71 = AssociatedTypeWitness;
  v72 = &type metadata for Color;
  v73 = v16;
  v74 = &protocol witness table for Color;
  v17 = sub_261150();
  v56 = v14;
  v55 = v17;
  sub_261F90();
  WitnessTable = swift_getWitnessTable();
  v69 = &protocol witness table for Image;
  v70 = WitnessTable;
  v59 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v19 = swift_getWitnessTable();
  v54 = v19;
  v50 = swift_getWitnessTable();
  v67 = v19;
  v68 = v50;
  swift_getWitnessTable();
  v48 = sub_261080();
  v52 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v44 - v20;
  v51 = sub_261730();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v49 = &v44 - v23;
  v24 = *(v11 + 36);
  v25 = sub_260060();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v63 = v2;
  v45 = v10;
  v27(v10, v2 + v24, v25);
  (*(v26 + 56))(v10, 0, 1, v25);
  v28 = v60;
  v44 = *(v60 + 16);
  v44(v7, v2, v11);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v31 = v57;
  v32 = v58;
  *(v30 + 16) = v57;
  *(v30 + 24) = v32;
  v33 = *(v28 + 32);
  v33(v30 + v29, v7, v11);
  v34 = v61;
  v44(v61, v63, v11);
  v35 = swift_allocObject();
  *(v35 + 16) = v31;
  *(v35 + 24) = v32;
  v33(v35 + v29, v34, v11);
  v36 = v47;
  sub_135D64(v45, sub_135848, v30, sub_135CD8, v35, v56, v55, v54, v47, v50);
  v37 = v48;
  v38 = swift_getWitnessTable();
  v39 = v46;
  sub_262A40();
  (*(v52 + 8))(v36, v37);
  v65 = v38;
  v66 = &protocol witness table for _AspectRatioLayout;
  v40 = v51;
  swift_getWitnessTable();
  v41 = v49;
  sub_1609C();
  v42 = *(v53 + 8);
  v42(v39, v40);
  sub_1609C();
  return (v42)(v41, v40);
}

uint64_t sub_135668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _CoverEffectViewModifier(255, a3, a4, a4);
  v7 = sub_261730();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  v15 = type metadata accessor for AssetCover(0, a3, a4, v14);
  Image.coverEffect<A>(_:)(a2 + *(v15 + 40), a3, a4, v10);
  WitnessTable = swift_getWitnessTable();
  v19[0] = &protocol witness table for Image;
  v19[1] = WitnessTable;
  swift_getWitnessTable();
  sub_1609C();
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_1609C();
  return (v17)(v13, v7);
}

uint64_t sub_135848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for AssetCover(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_135668(a1, v9, v6, v7);
}

uint64_t sub_1358E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v20 - v8;
  v21 = *(swift_getAssociatedConformanceWitness() + 8);
  v24[0] = AssociatedTypeWitness;
  v24[1] = &type metadata for Color;
  v24[2] = v21;
  v24[3] = &protocol witness table for Color;
  v10 = sub_261150();
  v20 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  v17 = type metadata accessor for AssetCover(0, a2, a3, v16);
  (*(a3 + 48))(a2, a3);
  v24[0] = *(a1 + *(v17 + 44));
  sub_134D28(v24, 256, AssociatedTypeWitness, &type metadata for Color, v21, &protocol witness table for Color);
  (*(v22 + 8))(v9, AssociatedTypeWitness);
  swift_getWitnessTable();
  sub_1609C();
  v18 = *(v20 + 8);
  v18(v12, v10);
  sub_1609C();
  return (v18)(v15, v10);
}

uint64_t sub_135BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AssetCover(0, v5, *(v4 + 24), a4);
  v7 = v6 - 8;
  v8 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v9 = *(v6 + 36);
  v10 = sub_260060();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  (*(*(v5 - 8) + 8))(v8 + *(v7 + 48), v5);

  return swift_deallocObject();
}

uint64_t sub_135CD8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for AssetCover(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1358E4(v7, v4, v5, a2);
}

uint64_t sub_135D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11)
{
  v23[0] = a5;
  v23[1] = a9;
  v18 = sub_2EF0(&qword_322C70, &qword_272AD0);
  __chkstk_darwin(v18 - 8);
  sub_136684(a1, v23 - v19);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a11;
  v20[6] = a2;
  v20[7] = a3;
  v21 = v23[0];
  v20[8] = a4;
  v20[9] = v21;
  sub_261F90();
  v23[2] = a8;
  v23[3] = a11;
  swift_getWitnessTable();
  sub_261070();
  return sub_17EBC(a1);
}

void sub_135F18(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_260060();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_135FC0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_260060() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v8 + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + ((v11 + ((v10 + 16) & ~v10) + v12) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v15)) == 0)
  {
LABEL_30:
    if (v7 == v13)
    {
      v23 = *(v6 + 48);

      return v23((a1 + v10 + 16) & ~v10);
    }

    else
    {
      v24 = (((a1 + v10 + 16) & ~v10) + v11 + v12) & ~v12;
      if (v9 == v13)
      {
        v25 = *(v8 + 48);

        return v25(v24, v9);
      }

      else
      {
        v26 = *((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v13 + (v16 | v22) + 1;
}

void sub_136210(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_260060() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v11 <= v9)
  {
    v16 = *(v8 + 84);
  }

  else
  {
    v16 = *(v10 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v15 + 7;
  v18 = ((v15 + 7 + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + 7 + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = a3 - v16 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v16 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a2 > v16)
  {
    if (v18)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v16;
    }

    if (v18)
    {
      v24 = ~v16 + a2;
      bzero(a1, v18);
      *a1 = v24;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(a1 + v18) = v23;
      }

      else
      {
        *(a1 + v18) = v23;
      }
    }

    else if (v22)
    {
      *(a1 + v18) = v23;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v18) = 0;
  }

  else if (v22)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 == v16)
  {
    v25 = *(v8 + 56);

    v25((a1 + v12 + 16) & ~v12, a2);
  }

  else
  {
    v26 = (((a1 + v12 + 16) & ~v12) + v13 + v14) & ~v14;
    if (v11 == v16)
    {
      v27 = *(v10 + 56);

      v27(v26, a2, v11);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v28 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v28 = (a2 - 1);
      }

      *((v17 + v26) & 0xFFFFFFFFFFFFFFF8) = v28;
    }
  }
}

uint64_t sub_1364A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _CoverEffectViewModifier(255, *a1, a1[1], a4);
  sub_261730();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_261150();
  sub_261F90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261080();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_136684(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_322C70, &qword_272AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1366F4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(void, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a8;
  v46 = a9;
  v37 = a5;
  v38 = a4;
  v40 = a3;
  v41 = a2;
  v42 = *(a6 - 8);
  v44 = a10;
  __chkstk_darwin(a1);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v39 = *(v17 - 8);
  __chkstk_darwin(v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  v24 = sub_261F90();
  v43 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v37 - v25;
  v27 = sub_2615C0();
  if (v27)
  {
    v41(v27, v28);
    v29 = v45;
    sub_1609C();
    v41 = v24;
    v30 = *(v42 + 8);
    v30(v13, a6);
    sub_1609C();
    v31 = v44;
    sub_1D738(v13, a6, a7, v29, v44);

    v30(v13, a6);
    v30(v16, a6);
    v24 = v41;
  }

  else
  {
    v38(0, v28);
    v32 = v44;
    sub_1609C();
    v33 = *(v39 + 8);
    v33(v20, a7);
    sub_1609C();
    v34 = v45;
    sub_1D830(v20, a6, a7, v45, v32);
    v33(v20, a7);
    v35 = v23;
    v31 = v32;
    v33(v35, a7);
    v29 = v34;
  }

  v47 = v29;
  v48 = v31;
  swift_getWitnessTable();
  sub_1609C();
  return (*(v43 + 8))(v26, v24);
}

uint64_t sub_136AA8()
{

  return swift_deallocObject();
}

id static NSBundle.BooksUI.getter()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

uint64_t sub_136B7C()
{
  v1 = *(v0 + 40);
  swift_errorRetain();
  return v1;
}

uint64_t Error.withSubsequentAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *(a2 - 8);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(v11, v17);
  (*(v8 + 16))(v10, v5, a2);
  v12 = sub_264EC0();
  if (v12)
  {
    v13 = v12;
    (*(v8 + 8))(v10, a2);
  }

  else
  {
    v13 = swift_allocError();
    (*(v8 + 32))(v14, v10, a2);
  }

  result = sub_F7CC(v17, a4);
  *(a4 + 40) = v13;
  return result;
}

unint64_t sub_136D24()
{
  result = qword_31F7F8;
  if (!qword_31F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F7F8);
  }

  return result;
}

uint64_t sub_136D78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_136DC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_136E1C(uint64_t a1)
{
  result = sub_136E44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_136E44()
{
  result = qword_31F800;
  if (!qword_31F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F800);
  }

  return result;
}

uint64_t YearInReviewLoadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_2EF0(&qword_31F808, &qword_27AD80);
  __chkstk_darwin(v1);
  v3 = &v30 - v2;
  v31 = sub_2EF0(&qword_31F810, &qword_27AD88);
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v30 - v5;
  v30 = sub_2EF0(&qword_31F818, &qword_27AD90);
  __chkstk_darwin(v30);
  v8 = &v30 - v7;
  v9 = sub_2EF0(&qword_31F820, &qword_27AD98);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  *v3 = sub_261E50();
  *(v3 + 1) = 0;
  v3[16] = 1;
  sub_2EF0(&qword_31F828, &unk_27ADA0);
  sub_2612D0();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  v13 = sub_2624C0();
  *(inited + 32) = v13;
  v14 = sub_2624E0();
  *(inited + 33) = v14;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v13)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v14)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_8E38(&qword_31F830, &qword_31F808, &qword_27AD80, &protocol conformance descriptor for VStack<A>);
  sub_262D00();
  sub_1372C0(v3);
  v15 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v17 = v16;
  v18 = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!v18)
  {
    v18 = sub_262FE0();
  }

  v19 = v18;
  v20 = sub_262500();
  (*(v4 + 32))(v8, v6, v31);
  v21 = &v8[*(v30 + 36)];
  *v21 = v19;
  v21[8] = v20;
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  sub_22148(v8, v11, &qword_31F818, &qword_27AD90);
  KeyPath = swift_getKeyPath();
  v23 = sub_2EF0(&qword_31F838, &unk_27ADE0);
  v24 = v32;
  v25 = (v32 + *(v23 + 36));
  v26 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v27 = enum case for ColorScheme.light(_:);
  v28 = sub_261180();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = KeyPath;
  return sub_22148(v11, v24, &qword_31F820, &qword_27AD98);
}

uint64_t sub_1372C0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31F808, &qword_27AD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_137378()
{
  result = qword_31F840;
  if (!qword_31F840)
  {
    sub_2F9C(&qword_31F838, &unk_27ADE0);
    sub_137430();
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F840);
  }

  return result;
}

unint64_t sub_137430()
{
  result = qword_31F848;
  if (!qword_31F848)
  {
    sub_2F9C(&qword_31F820, &qword_27AD98);
    sub_1374BC();
    sub_1670C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F848);
  }

  return result;
}

unint64_t sub_1374BC()
{
  result = qword_31F850;
  if (!qword_31F850)
  {
    sub_2F9C(&qword_31F818, &qword_27AD90);
    sub_2F9C(&qword_31F808, &qword_27AD80);
    sub_8E38(&qword_31F830, &qword_31F808, &qword_27AD80, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31F858, &qword_31F860, &qword_27AE68, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F850);
  }

  return result;
}

uint64_t UberNavigationTitleView.init(title:subtitle:navigationBarOpacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for UberNavigationTitleView(0);
  v13 = v12[6];
  *(a5 + v13) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v14 = v12[7];
  *(a5 + v14) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v15 = sub_260BD0();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  result = sub_22148(a2, a5 + v12[5], &qword_316208, &qword_268BD0);
  v17 = a5 + v12[8];
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a6;
  return result;
}

uint64_t type metadata accessor for UberNavigationTitleView(uint64_t a1)
{
  result = qword_31F8D8;
  if (!qword_31F8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_137774@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for UberNavigationTitleView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1393B0(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_137960@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318F68, &qword_26C578);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for UberNavigationTitleView(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_318F68, &qword_26C578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1393B0(v9, a1, type metadata accessor for FontConstants.Navigation);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t UberNavigationTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v6 - 8);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a1 = sub_261E50();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = sub_2EF0(&qword_31F868, &unk_27AED8);
  sub_137D54(v1, a1 + *(v9 + 44));
  v10 = &v1[*(type metadata accessor for UberNavigationTitleView(0) + 32)];
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  v27[3] = *v10;
  v27[4] = v11;
  v27[5] = v12;
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263350();
  v13 = v27[0];
  v14 = v27[1];
  v15 = v27[2];
  v16 = (a1 + *(sub_2EF0(&qword_31F870, &qword_27AEE8) + 36));
  *v16 = v13;
  v16[1] = v14;
  v16[2] = v15;
  LOBYTE(v14) = sub_2624F0();
  sub_137774(v8);
  sub_1393B0(v8, v5, type metadata accessor for SizeConstants.Environment);
  sub_139340(v5, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = sub_2EF0(&qword_31F878, &qword_27AEF0);
  v26 = a1 + *(result + 36);
  *v26 = v14;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_137D54@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_2EF0(&qword_31F960, &qword_27B020);
  v120 = *(v3 - 8);
  v121 = v3;
  __chkstk_darwin(v3);
  v110 = &v96 - v4;
  v5 = sub_2EF0(&qword_31F968, &qword_27B028);
  __chkstk_darwin(v5 - 8);
  v123 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v122 = &v96 - v8;
  v9 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v9 - 8);
  v109 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = &v96 - v12;
  __chkstk_darwin(v13);
  v100 = &v96 - v14;
  v15 = sub_262730();
  v128 = *(v15 - 8);
  __chkstk_darwin(v15);
  v108 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v98 = &v96 - v18;
  __chkstk_darwin(v19);
  v97 = &v96 - v20;
  v21 = type metadata accessor for FontConstants.Navigation(0);
  __chkstk_darwin(v21 - 8);
  v107 = (&v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v96 = (&v96 - v24);
  __chkstk_darwin(v25);
  v27 = (&v96 - v26);
  v28 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v28 - 8);
  v117 = (&v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v32 = &v96 - v31;
  v33 = sub_260BD0();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v105 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v96 - v37;
  v39 = sub_260B00();
  v115 = *(v39 - 8);
  v116 = v39;
  __chkstk_darwin(v39);
  v41 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2EF0(&qword_318470, &qword_26FBB0);
  __chkstk_darwin(v113);
  v118 = &v96 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v96 - v44;
  v47 = __chkstk_darwin(v46);
  v127 = &v96 - v48;
  v103 = *(v34 + 16);
  v102 = v34 + 16;
  v103(v38, a1, v33, v47);
  v114 = v41;
  v104 = v38;
  sub_260B10();
  v111 = *(type metadata accessor for UberNavigationTitleView(0) + 20);
  sub_8198(&a1[v111], v32, &qword_316208, &qword_268BD0);
  v106 = v34;
  v49 = *(v34 + 48);
  v126 = v33;
  v112 = v49;
  LODWORD(v38) = v49(v32, 1, v33);
  sub_8E80(v32, &qword_316208, &qword_268BD0);
  v125 = (v128 + 104);
  v119 = v15;
  if (v38 == 1)
  {
    v27 = v96;
    v50 = a1;
    sub_137960(v96);
    v51 = v98;
    v99 = *v125;
    v99(v98, enum case for Font.TextStyle.headline(_:), v15);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v52 = v15;
      v53 = sub_2625C0();
      v54 = v101;
      (*(*(v53 - 8) + 56))(v101, 1, 1, v53);
    }

    else
    {
      v59 = enum case for Font.Design.serif (_:);
      v60 = sub_2625C0();
      v61 = v51;
      v62 = *(v60 - 8);
      v54 = v101;
      (*(v62 + 104))(v101, v59, v60);
      (*(v62 + 56))(v54, 0, 1, v60);
      v51 = v61;
      v52 = v119;
    }

    v63 = v127;
    v64 = sub_262680();
    sub_8E80(v54, &qword_318458, &unk_26B270);
    v65 = *(v128 + 8);
    v65(v51, v52);
    v66 = v50;
  }

  else
  {
    v101 = a1;
    sub_137960(v27);
    v55 = v97;
    v99 = *v125;
    v99(v97, enum case for Font.TextStyle.subheadline(_:), v15);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v56 = v15;
      v57 = sub_2625C0();
      v58 = v100;
      (*(*(v57 - 8) + 56))(v100, 1, 1, v57);
    }

    else
    {
      v67 = enum case for Font.Design.serif (_:);
      v68 = sub_2625C0();
      v69 = *(v68 - 8);
      v58 = v100;
      (*(v69 + 104))(v100, v67, v68);
      (*(v69 + 56))(v58, 0, 1, v68);
      v56 = v119;
    }

    v63 = v127;
    sub_262680();
    sub_8E80(v58, &qword_318458, &unk_26B270);
    v65 = *(v128 + 8);
    v65(v55, v56);
    v64 = sub_2625A0();

    v66 = v101;
  }

  sub_139340(v27, type metadata accessor for FontConstants.Navigation);
  KeyPath = swift_getKeyPath();
  (*(v115 + 32))(v45, v114, v116);
  v71 = &v45[*(v113 + 36)];
  *v71 = KeyPath;
  v71[1] = v64;
  sub_22148(v45, v63, &qword_318470, &qword_26FBB0);
  v72 = v117;
  sub_8198(&v66[v111], v117, &qword_316208, &qword_268BD0);
  if (v112(v72, 1, v126) == 1)
  {
    sub_8E80(v72, &qword_316208, &qword_268BD0);
    v73 = 1;
    v74 = v121;
    v75 = v122;
  }

  else
  {
    v76 = v106;
    v77 = v126;
    v78 = v105;
    (*(v106 + 32))(v105, v72, v126);
    (v103)(v104, v78, v77);
    v79 = v110;
    sub_260B10();
    v80 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v81 = swift_getKeyPath();
    v82 = (v79 + *(sub_2EF0(&qword_31F978, &unk_27B098) + 36));
    *v82 = v81;
    v82[1] = v80;
    v117 = v65;
    v83 = v107;
    sub_137960(v107);
    v84 = v108;
    v85 = v119;
    v99(v108, enum case for Font.TextStyle.caption2(_:), v119);
    v63 = v127;
    v86 = sub_2625C0();
    v87 = v109;
    (*(*(v86 - 8) + 56))(v109, 1, 1, v86);
    sub_262630();
    v88 = sub_262680();
    sub_8E80(v87, &qword_318458, &unk_26B270);
    v117(v84, v85);
    sub_139340(v83, type metadata accessor for FontConstants.Navigation);
    (*(v76 + 8))(v78, v77);
    v89 = swift_getKeyPath();
    v74 = v121;
    v75 = v122;
    v90 = (v79 + *(v121 + 36));
    *v90 = v89;
    v90[1] = v88;
    sub_22148(v79, v75, &qword_31F960, &qword_27B020);
    v73 = 0;
  }

  (*(v120 + 56))(v75, v73, 1, v74);
  v91 = v118;
  sub_8198(v63, v118, &qword_318470, &qword_26FBB0);
  v92 = v123;
  sub_8198(v75, v123, &qword_31F968, &qword_27B028);
  v93 = v124;
  sub_8198(v91, v124, &qword_318470, &qword_26FBB0);
  v94 = sub_2EF0(&qword_31F970, &qword_27B060);
  sub_8198(v92, v93 + *(v94 + 48), &qword_31F968, &qword_27B028);
  sub_8E80(v75, &qword_31F968, &qword_27B028);
  sub_8E80(v63, &qword_318470, &qword_26FBB0);
  sub_8E80(v92, &qword_31F968, &qword_27B028);
  return sub_8E80(v91, &qword_318470, &qword_26FBB0);
}

uint64_t sub_138AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2EF0(&unk_31CCF0, &qword_273ED0);
  sub_263320();
  v4 = sub_2EF0(&qword_31F950, &qword_27B010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = sub_2EF0(&qword_31F958, &qword_27B018);
  *(a2 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_138BD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
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

  v14 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_138DA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_316208, &qword_268BD0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_317BF8, &unk_26F930);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_2EF0(&qword_318FA0, &unk_286050);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_138F68(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    sub_1390C4(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1390C4(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1390C4(319, &qword_319010, type metadata accessor for FontConstants.Navigation, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_139128();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1390C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_139128()
{
  if (!qword_31F8E8)
  {
    v0 = sub_263380();
    if (!v1)
    {
      atomic_store(v0, &qword_31F8E8);
    }
  }
}

unint64_t sub_13917C()
{
  result = qword_31F928;
  if (!qword_31F928)
  {
    sub_2F9C(&qword_31F878, &qword_27AEF0);
    sub_139208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F928);
  }

  return result;
}

unint64_t sub_139208()
{
  result = qword_31F930;
  if (!qword_31F930)
  {
    sub_2F9C(&qword_31F870, &qword_27AEE8);
    sub_8E38(&qword_31F938, &qword_31F940, &qword_27AF68, &protocol conformance descriptor for VStack<A>);
    sub_1392C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F930);
  }

  return result;
}

unint64_t sub_1392C0()
{
  result = qword_31F948;
  if (!qword_31F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F948);
  }

  return result;
}

uint64_t sub_139340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1393B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_13941C()
{
  result = qword_31F980;
  if (!qword_31F980)
  {
    sub_2F9C(&qword_31F958, &qword_27B018);
    sub_8E38(&qword_31F988, &qword_31F950, &qword_27B010, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F980);
  }

  return result;
}

uint64_t WelcomeFrameViewModel.init(year:localizedYear:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for WelcomeFrameViewModel(0);
  v10 = &a5[*(v9 + 24)];
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = *(v9 + 20);
  v12 = sub_260550();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t sub_13958C()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v20[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v20[-v13];
  v15 = sub_2643F0();
  __chkstk_darwin(v15 - 8);
  sub_2643E0();
  v21._object = 0x8000000000292F90;
  v21._countAndFlagsBits = 0xD000000000000033;
  sub_2643D0(v21);
  v22 = *(v0 + *(type metadata accessor for WelcomeFrameViewModel(0) + 24));
  sub_2643C0(v22);
  v23._countAndFlagsBits = 46;
  v23._object = 0xE100000000000000;
  sub_2643D0(v23);
  sub_264400();
  sub_260260();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v4, v7, v1);
  v18 = sub_264490();
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  return v18;
}

uint64_t sub_13988C()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_264410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_2643A0();
  sub_260260();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_264490();
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t WelcomeFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WelcomeFrame(0) + 44);
  v4 = *(type metadata accessor for WelcomeFrameViewModel(0) + 20);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_139C64(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a1[5] = sub_139C64(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t sub_139C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_139CD0@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WelcomeFrame(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_13C134(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_139EBC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC8, &qword_276F60);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for WelcomeFrame(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_13C134(v9, a1, type metadata accessor for SizeConstants.Spacing);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_13A0A8()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for WelcomeFrame(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

BOOL sub_13A200()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for WelcomeFrame(0);
  v6 = v0 + *(v5 + 36);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if (v7)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[15])
    {
      return 0;
    }
  }

  v9 = v0 + *(v5 + 40);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if (v10)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v12 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v10, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[14])
    {
      return 0;
    }
  }

  return !UIAccessibilityIsReduceMotionEnabled();
}

uint64_t WelcomeFrame.init(model:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2EF0(&qword_316DA0, &unk_277640);
  v5 = *(v4 + 48);
  *a2 = 0xD000000000000015;
  *(a2 + 1) = 0x8000000000292F00;
  v6 = enum case for ColorScheme.light(_:);
  v7 = sub_261180();
  (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  v8 = Color.init(hexString:)(0x393962353837, 0xE600000000000000);
  if (!v8)
  {
    v8 = sub_262FE0();
  }

  *&a2[*(v4 + 64)] = v8;
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for WelcomeFrame(0);
  *&a2[v9[5]] = 0;
  v10 = v9[6];
  *&a2[v10] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v11 = v9[7];
  *&a2[v11] = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v12 = &a2[v9[8]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &a2[v9[9]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &a2[v9[10]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  return sub_13C134(a1, &a2[v9[11]], type metadata accessor for WelcomeFrameViewModel);
}

uint64_t WelcomeFrame.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WelcomeFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139EBC(v8);
  sub_5C670(v8, type metadata accessor for SizeConstants.Spacing);
  *a1 = sub_261E50();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v9 = sub_2EF0(&qword_31F990, &qword_27B1A0);
  sub_13A8A0(v1, a1 + *(v9 + 44));
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_2EF0(&qword_31F998, &qword_27B1D8) + 36));
  v12 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v13 = enum case for ColorScheme.dark(_:);
  v14 = sub_261180();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  sub_13C0C8(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeFrame);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_13C134(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for WelcomeFrame);
  result = sub_2EF0(&qword_31F9A0, &qword_27B1E0);
  v18 = (a1 + *(result + 36));
  *v18 = sub_13C19C;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  return result;
}

uint64_t sub_13A8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v200 = a2;
  v3 = sub_2EF0(&qword_31FB18, &qword_27B2C0);
  __chkstk_darwin(v3);
  v226 = &v180 - v4;
  v190 = sub_2EF0(&qword_31FB20, &qword_27B2C8);
  __chkstk_darwin(v190);
  v6 = &v180 - v5;
  v191 = sub_2EF0(&qword_31FB28, &qword_27B2D0);
  __chkstk_darwin(v191);
  v194 = &v180 - v7;
  v193 = sub_2EF0(&qword_31FB30, &qword_27B2D8);
  __chkstk_darwin(v193);
  v9 = &v180 - v8;
  v196 = sub_2EF0(&qword_31FB38, &qword_27B2E0);
  __chkstk_darwin(v196);
  v199 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v195 = &v180 - v12;
  __chkstk_darwin(v13);
  v198 = &v180 - v14;
  v224 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v224);
  v223 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v222 = &v180 - v17;
  v232 = sub_261690();
  v235 = *(v232 - 8);
  __chkstk_darwin(v232);
  v231 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v230 = &v180 - v20;
  v221 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v221);
  v234 = &v180 - v21;
  v22 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v22 - 8);
  v229 = (&v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v227 = sub_2EF0(&qword_31FB40, &qword_27B2E8);
  __chkstk_darwin(v227);
  v25 = &v180 - v24;
  v26 = sub_2EF0(&qword_31FB48, &qword_27B2F0);
  v212 = *(v26 - 8);
  v213 = v26;
  __chkstk_darwin(v26);
  v28 = &v180 - v27;
  v208 = sub_2EF0(&qword_31FB50, &qword_27B2F8);
  __chkstk_darwin(v208);
  v215 = &v180 - v29;
  v214 = sub_2EF0(&qword_31FB58, &qword_27B300);
  __chkstk_darwin(v214);
  v189 = &v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v211 = &v180 - v32;
  __chkstk_darwin(v33);
  v233 = &v180 - v34;
  v35 = a1 + *(type metadata accessor for WelcomeFrame(0) + 44);
  v36 = (v35 + *(type metadata accessor for WelcomeFrameViewModel(0) + 24));
  v37 = v36[1];
  *&v219 = *v36;
  *(&v219 + 1) = v37;

  v218 = sub_2624F0();
  sub_2610C0();
  v187 = v39;
  v188 = v38;
  v41 = v40;
  v43 = v42;
  v259 = 0;
  if (sub_13A200() && (sub_13A0A8() & 1) == 0)
  {
    v44 = 0x4054000000000000;
  }

  else
  {
    v44 = 0;
  }

  if (!sub_13A200() || (v45 = 0.0, (sub_13A0A8() & 1) != 0))
  {
    v45 = 1.0;
  }

  v46 = sub_13A200();
  v197 = v9;
  v192 = v6;
  v225 = v3;
  v209 = v28;
  v228 = v25;
  if (v46)
  {
    sub_263610();
    v217 = sub_2635B0();
  }

  else
  {
    v217 = 0;
  }

  v186 = sub_13A0A8();
  v210 = v35;
  *&v243 = sub_13958C();
  *(&v243 + 1) = v47;
  v207 = sub_10A84();
  v48 = sub_2628F0();
  v50 = v49;
  v52 = v51;
  sub_262590();
  v53 = sub_262840();
  v54 = a1;
  v56 = v55;
  v58 = v57;
  v216 = v59;

  sub_39DBC(v48, v50, v52 & 1);

  v60 = v229;
  v220 = v54;
  sub_139CD0(v229);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v61 = sub_263000();

  sub_5C670(v60, type metadata accessor for ColorConstants);
  *&v243 = v61;
  v62 = sub_2627F0();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  sub_39DBC(v53, v56, v58 & 1);

  v216 = sub_2EF0(&qword_31FB60, &qword_27B308);
  v69 = *(v216 + 36);
  v70 = enum case for BlendMode.plusLighter(_:);
  v71 = sub_263640();
  v72 = *(v71 - 8);
  v73 = *(v72 + 104);
  v74 = v228;
  v206 = v70;
  v204 = v73;
  v205 = v71;
  v203 = v72 + 104;
  (v73)(&v228[v69], v70);
  *v74 = v62;
  *(v74 + 1) = v64;
  v74[16] = v66 & 1;
  *(v74 + 3) = v68;
  LOBYTE(v62) = sub_2624F0();
  sub_2610C0();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = &v74[*(sub_2EF0(&qword_31FB68, &qword_27B310) + 36)];
  *v83 = v62;
  *(v83 + 1) = v76;
  *(v83 + 2) = v78;
  *(v83 + 3) = v80;
  *(v83 + 4) = v82;
  v83[40] = 0;
  KeyPath = swift_getKeyPath();
  v85 = &v74[*(sub_2EF0(&qword_31FB70, &qword_27B348) + 36)];
  *v85 = KeyPath;
  v85[8] = 1;
  v86 = swift_getKeyPath();
  v87 = &v74[*(v227 + 36)];
  *v87 = v86;
  *(v87 + 1) = 3;
  v87[16] = 0;
  v88 = enum case for DynamicTypeSize.small(_:);
  v89 = v235;
  v90 = v235 + 104;
  v91 = *(v235 + 104);
  v92 = v230;
  v93 = v232;
  (v91)(v230, enum case for DynamicTypeSize.small(_:), v232);
  v94 = v231;
  v202 = enum case for DynamicTypeSize.xxxLarge(_:);
  v91(v231);
  v201 = sub_139C64(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_264380();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v183 = v88;
  v184 = v91;
  v185 = v90;
  v96 = *(v89 + 32);
  v97 = v222;
  v96(v222, v92, v93);
  v98 = v224;
  v96((v97 + *(v224 + 48)), v94, v93);
  v99 = v223;
  sub_8198(v97, v223, &qword_3174E0, &qword_26B310);
  v100 = *(v98 + 48);
  v96(v234, v99, v93);
  v101 = *(v89 + 8);
  v101(v99 + v100, v93);
  sub_13CF00(v97, v99);
  v102 = *(v98 + 48);
  v103 = v234;
  v104 = &v234[*(v221 + 36)];
  v181 = v96;
  v182 = v89 + 32;
  v96(v104, (v99 + v102), v93);
  v235 = v89 + 8;
  v180 = v101;
  v101(v99, v93);
  sub_13CF70(&qword_31FB78, &qword_31FB40, &qword_27B2E8, sub_13D020);
  v105 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
  v106 = v209;
  v227 = v105;
  v107 = v228;
  sub_262B70();
  sub_8E80(v103, &qword_3174E8, &qword_269970);
  sub_8E80(v107, &qword_31FB40, &qword_27B2E8);
  if (!sub_13A200() || (v108 = 0.0, (sub_13A0A8() & 1) != 0))
  {
    v108 = 1.0;
  }

  v109 = v215;
  (*(v212 + 32))(v215, v106, v213);
  *&v109[*(v208 + 36)] = v108;
  if (sub_13A200())
  {
    sub_263630();
    v110 = sub_2635B0();
  }

  else
  {
    v110 = 0;
  }

  v111 = sub_13A0A8();
  v112 = v109;
  v113 = v211;
  sub_22148(v112, v211, &qword_31FB50, &qword_27B2F8);
  v114 = v113 + *(v214 + 36);
  *v114 = v110;
  *(v114 + 8) = v111 & 1;
  sub_22148(v113, v233, &qword_31FB58, &qword_27B300);
  *&v243 = sub_13988C();
  *(&v243 + 1) = v115;
  v116 = sub_2628F0();
  v118 = v117;
  v120 = v119;
  sub_262590();
  sub_2625A0();

  v121 = sub_262840();
  v123 = v122;
  v125 = v124;
  v228 = v126;

  sub_39DBC(v116, v118, v120 & 1);

  v127 = v229;
  sub_139CD0(v229);
  v128 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_5C670(v127, type metadata accessor for ColorConstants);
  *&v243 = v128;
  v129 = sub_2627F0();
  v131 = v130;
  v133 = v132;
  v135 = v134;
  sub_39DBC(v121, v123, v125 & 1);

  v136 = v226;
  v204(&v226[*(v216 + 36)], v206, v205);
  *v136 = v129;
  *(v136 + 1) = v131;
  v136[16] = v133 & 1;
  *(v136 + 3) = v135;
  v137 = swift_getKeyPath();
  v138 = &v136[*(v225 + 36)];
  *v138 = v137;
  *(v138 + 1) = 3;
  v138[16] = 0;
  v139 = v230;
  v140 = v232;
  v141 = v184;
  v184(v230, v183, v232);
  v142 = v231;
  v141(v231, v202, v140);
  result = sub_264380();
  if ((result & 1) == 0)
  {
    goto LABEL_31;
  }

  v143 = v222;
  v144 = v181;
  v181(v222, v139, v140);
  v145 = v224;
  v144(v143 + *(v224 + 48), v142, v140);
  v146 = v223;
  sub_8198(v143, v223, &qword_3174E0, &qword_26B310);
  v147 = *(v145 + 48);
  v148 = v234;
  v144(v234, v146, v140);
  v149 = v180;
  v180(v146 + v147, v140);
  sub_13CF00(v143, v146);
  v144(v148 + *(v221 + 36), (v146 + *(v145 + 48)), v140);
  v149(v146, v140);
  sub_13CF70(&qword_31FB98, &qword_31FB18, &qword_27B2C0, sub_13D164);
  v150 = v192;
  v151 = v226;
  sub_262B70();
  sub_8E80(v148, &qword_3174E8, &qword_269970);
  sub_8E80(v151, &qword_31FB18, &qword_27B2C0);
  LOBYTE(v151) = sub_2624F0();
  sub_2610C0();
  v152 = v150 + *(v190 + 36);
  *v152 = v151;
  *(v152 + 8) = v153;
  *(v152 + 16) = v154;
  *(v152 + 24) = v155;
  *(v152 + 32) = v156;
  *(v152 + 40) = 0;
  if (sub_13A200() && (sub_13A0A8() & 1) == 0)
  {
    v157 = 0x4054000000000000;
  }

  else
  {
    v157 = 0;
  }

  v158 = v197;
  v159 = v194;
  sub_22148(v150, v194, &qword_31FB20, &qword_27B2C8);
  v160 = (v159 + *(v191 + 36));
  *v160 = 0;
  v160[1] = v157;
  if (!sub_13A200() || (v161 = 0.0, (sub_13A0A8() & 1) != 0))
  {
    v161 = 1.0;
  }

  sub_22148(v159, v158, &qword_31FB28, &qword_27B2D0);
  *(v158 + *(v193 + 36)) = v161;
  if (sub_13A200())
  {
    sub_263610();
    v162 = sub_2635B0();
  }

  else
  {
    v162 = 0;
  }

  v163 = sub_13A0A8();
  v164 = v195;
  sub_22148(v158, v195, &qword_31FB30, &qword_27B2D8);
  v165 = v164 + *(v196 + 36);
  *v165 = v162;
  *(v165 + 8) = v163 & 1;
  v166 = v164;
  v167 = v198;
  sub_22148(v166, v198, &qword_31FB38, &qword_27B2E0);
  v168 = v189;
  sub_8198(v233, v189, &qword_31FB58, &qword_27B300);
  v169 = v199;
  sub_8198(v167, v199, &qword_31FB38, &qword_27B2E0);
  v236 = v219;
  LOBYTE(v237) = v218;
  *(&v237 + 1) = *v258;
  DWORD1(v237) = *&v258[3];
  v171 = v187;
  v170 = v188;
  *(&v237 + 1) = v188;
  *&v238 = v187;
  *(&v238 + 1) = v41;
  *&v239 = v43;
  BYTE8(v239) = 0;
  *(&v239 + 9) = *v257;
  HIDWORD(v239) = *&v257[3];
  *&v240 = 0;
  *(&v240 + 1) = v44;
  *&v241 = v45;
  *(&v241 + 1) = v217;
  v172 = v186 & 1;
  v242 = v186 & 1;
  v173 = v240;
  v174 = v241;
  v175 = v200;
  *(v200 + 96) = v186 & 1;
  *(v175 + 64) = v173;
  *(v175 + 80) = v174;
  v176 = v236;
  v177 = v237;
  v178 = v239;
  *(v175 + 32) = v238;
  *(v175 + 48) = v178;
  *v175 = v176;
  *(v175 + 16) = v177;
  *(v175 + 104) = 0;
  *(v175 + 112) = 1;
  v179 = sub_2EF0(&qword_31FBA0, &qword_27B380);
  sub_8198(v168, v175 + *(v179 + 64), &qword_31FB58, &qword_27B300);
  sub_8198(v169, v175 + *(v179 + 80), &qword_31FB38, &qword_27B2E0);
  sub_8198(&v236, &v243, qword_31FBA8, &qword_27B388);
  sub_8E80(v167, &qword_31FB38, &qword_27B2E0);
  sub_8E80(v233, &qword_31FB58, &qword_27B300);
  sub_8E80(v169, &qword_31FB38, &qword_27B2E0);
  sub_8E80(v168, &qword_31FB58, &qword_27B300);
  v243 = v219;
  v244 = v218;
  *v245 = *v258;
  *&v245[3] = *&v258[3];
  v246 = v170;
  v247 = v171;
  v248 = v41;
  v249 = v43;
  v250 = 0;
  *v251 = *v257;
  *&v251[3] = *&v257[3];
  v252 = 0;
  v253 = v44;
  v254 = v45;
  v255 = v217;
  v256 = v172;
  return sub_8E80(&v243, qword_31FBA8, &qword_27B388);
}

void sub_13BC38()
{
  type metadata accessor for WelcomeFrame(0);
  v3._countAndFlagsBits = sub_264EB0();
  sub_264530(v3);

  v0 = [objc_opt_self() books];
  v1 = [v0 userDefaults];

  v2 = sub_264420();

  [v1 setBool:1 forKey:v2];
}

uint64_t sub_13BD4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 44);
  v5 = *(type metadata accessor for WelcomeFrameViewModel(0) + 20);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_139C64(&qword_317678, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  a2[5] = sub_139C64(&qword_317680, &type metadata accessor for YIRSourceData, &protocol conformance descriptor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_13BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139EBC(v8);
  sub_5C670(v8, type metadata accessor for SizeConstants.Spacing);
  *a2 = sub_261E50();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v9 = sub_2EF0(&qword_31F990, &qword_27B1A0);
  sub_13A8A0(v2, a2 + *(v9 + 44));
  KeyPath = swift_getKeyPath();
  v11 = (a2 + *(sub_2EF0(&qword_31F998, &qword_27B1D8) + 36));
  v12 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v13 = enum case for ColorScheme.dark(_:);
  v14 = sub_261180();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  sub_13C0C8(v2, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WelcomeFrame);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_13C134(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for WelcomeFrame);
  result = sub_2EF0(&qword_31F9A0, &qword_27B1E0);
  v18 = (a2 + *(result + 36));
  *v18 = sub_13D1EC;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  return result;
}

uint64_t sub_13C0C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_13C134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_13C1A0(uint64_t a1)
{
  result = sub_139C64(&qword_31F9A8, type metadata accessor for WelcomeFrame, &protocol conformance descriptor for WelcomeFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_13C1F8(uint64_t a1)
{
  result = sub_139C64(&qword_31F9B0, type metadata accessor for WelcomeFrame, &protocol conformance descriptor for WelcomeFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_13C280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260550();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_13C358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_260550();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_13C418(uint64_t a1)
{
  result = sub_260550();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_13C4B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PageBackground(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[8] + 8);
    if (v16 > 1)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = type metadata accessor for WelcomeFrameViewModel(0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_13C694(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PageBackground(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
  }

  else
  {
    v17 = type metadata accessor for WelcomeFrameViewModel(0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_13C868(uint64_t a1)
{
  type metadata accessor for PageBackground(319);
  if (v1 <= 0x3F)
  {
    sub_BED48(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v2 <= 0x3F)
    {
      sub_BED48(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
      if (v3 <= 0x3F)
      {
        sub_3E7AC();
        if (v4 <= 0x3F)
        {
          type metadata accessor for WelcomeFrameViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_13C980()
{
  result = qword_31FAF8;
  if (!qword_31FAF8)
  {
    sub_2F9C(&qword_31F9A0, &qword_27B1E0);
    sub_13CA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FAF8);
  }

  return result;
}

unint64_t sub_13CA0C()
{
  result = qword_31FB00;
  if (!qword_31FB00)
  {
    sub_2F9C(&qword_31F998, &qword_27B1D8);
    sub_8E38(&qword_31FB08, &qword_31FB10, &qword_27B2B8, &protocol conformance descriptor for VStack<A>);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FB00);
  }

  return result;
}

uint64_t sub_13CAF0()
{
  v1 = type metadata accessor for WelcomeFrame(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  type metadata accessor for PageBackground(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v7 = *(sub_2EF0(&qword_316DA0, &unk_277640) + 48);
      v8 = sub_261180();
      (*(*(v8 - 8) + 8))(v2 + v7, v8);

      break;
    case 1:
      sub_57200(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112));
      break;
    case 0:

      v4 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
      v5 = sub_261180();
      v6 = *(v5 - 8);
      if (!(*(v6 + 48))(v2 + v4, 1, v5))
      {
        (*(v6 + 8))(v2 + v4, v5);
      }

      break;
  }

  v9 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_261180();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v2 + v1[7];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  sub_4054(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  sub_4054(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  sub_4054(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  v14 = v2 + v1[11];
  v15 = *(type metadata accessor for WelcomeFrameViewModel(0) + 20);
  v16 = sub_260550();
  (*(*(v16 - 8) + 8))(v14 + v15, v16);

  return swift_deallocObject();
}

void sub_13CE90()
{
  type metadata accessor for WelcomeFrame(0);

  sub_13BC38();
}

uint64_t sub_13CF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3174E0, &qword_26B310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13CF70(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_13D020()
{
  result = qword_31FB80;
  if (!qword_31FB80)
  {
    sub_2F9C(&qword_31FB70, &qword_27B348);
    sub_13D0D8();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FB80);
  }

  return result;
}

unint64_t sub_13D0D8()
{
  result = qword_31FB88;
  if (!qword_31FB88)
  {
    sub_2F9C(&qword_31FB68, &qword_27B310);
    sub_13D164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FB88);
  }

  return result;
}

unint64_t sub_13D164()
{
  result = qword_31FB90;
  if (!qword_31FB90)
  {
    sub_2F9C(&qword_31FB60, &qword_27B308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FB90);
  }

  return result;
}

uint64_t sub_13D200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a4;
  v8[35] = a5;
  v8[32] = a2;
  v8[33] = a3;
  v8[31] = a1;
  v12 = sub_2EF0(&qword_31FC38, &qword_27B480);
  v8[36] = v12;
  v8[37] = *(v12 - 8);
  v8[38] = swift_task_alloc();
  v13 = sub_263B00();
  v8[39] = v13;
  v8[40] = *(v13 - 8);
  v8[41] = swift_task_alloc();
  v14 = sub_2EF0(&qword_31FC40, &qword_27B488);
  v8[42] = v14;
  v8[43] = *(v14 - 8);
  v8[44] = swift_task_alloc();
  v8[22] = a6;
  v8[23] = a7;
  v8[24] = a8;
  v8[25] = v21;
  updated = type metadata accessor for PageUpdateInstruction(0, (v8 + 22));
  v8[45] = updated;
  v8[46] = *(updated - 8);
  v8[47] = swift_task_alloc();
  v8[26] = a6;
  v8[27] = a7;
  v8[28] = a8;
  v8[29] = v21;
  v16 = type metadata accessor for PageUpdateAction(0, (v8 + 26));
  v8[48] = v16;
  v8[49] = *(v16 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  sub_264750();
  v8[52] = sub_264740();
  v18 = sub_264730();
  v8[53] = v18;
  v8[54] = v17;

  return (_swift_task_switch)(sub_13D4CC, v18, v17);
}

uint64_t sub_13D4CC()
{
  v33 = v0;
  if (qword_315848 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[32];
  v5 = sub_260D50();
  sub_B080(v5, qword_315F88);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_260D30();
  v8 = sub_264910();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[51];
  if (v9)
  {
    v11 = v0[49];
    v12 = v0[50];
    v13 = v0[48];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = *(v11 + 8);
    v15(v10, v13);
    updated = PageUpdateAction.description.getter(v13);
    v18 = v17;
    v15(v12, v13);
    v19 = sub_191368(updated, v18, &v32);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "Resolving instruction for PageUpdateAction: %s)", v14, 0xCu);
    sub_3080(v31);
  }

  else
  {
    (*(v0[49] + 8))(v0[51], v0[48]);
  }

  v20 = v0[48];
  v21 = v0[33];
  v22 = v21[3];
  v23 = v21[4];
  sub_2E18(v21, v22);
  PageUpdateAction.instructionIntent.getter(v20, (v0 + 2));
  v25 = v0[5];
  v24 = v0[6];
  v26 = sub_2E18(v0 + 2, v25);
  v27 = swift_task_alloc();
  v0[55] = v27;
  *v27 = v0;
  v27[1] = sub_13D78C;
  v28 = v0[47];
  v29 = v0[34];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v28, v26, v29, v25, v24, v22, v23);
}

uint64_t sub_13D78C()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);
  if (v0)
  {
    v5 = sub_13DEF4;
  }

  else
  {
    v5 = sub_13D8C8;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_13D8C8()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[40];
  v6 = v0[35];
  v7 = v0[32];
  v13 = v0[31];
  v14 = v0[39];

  sub_3080(v0 + 2);
  v8 = v6[3];
  v9 = v6[4];
  sub_2E18(v6, v8);
  LOBYTE(v6) = (*(v9 + 40))(v1, *(v7 + *(v2 + 60)), v8, v9);
  (*(v4 + 8))(v1, v3);
  v10 = &enum case for ActionOutcome.performed(_:);
  if ((v6 & 1) == 0)
  {
    v10 = &enum case for ActionOutcome.unsupported(_:);
  }

  (*(v5 + 104))(v13, *v10, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_13DA3C()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 432);
  v4 = *(v2 + 424);
  if (v0)
  {
    v5 = sub_13E0C8;
  }

  else
  {
    v5 = sub_13DB78;
  }

  return (_swift_task_switch)(v5, v4, v3);
}

uint64_t sub_13DB78()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[10];
  v5 = v0[11];
  sub_2E18(v0 + 7, v4);
  (*(v5 + 16))(v4, v5);
  (*(v2 + 104))(v1, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v3);
  v6 = swift_task_alloc();
  v0[59] = v6;
  *v6 = v0;
  v6[1] = sub_13DC90;
  v7 = v0[41];
  v8 = v0[42];
  v9 = v0[38];
  v10 = v0[34];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v7, v0 + 17, v9, v10, v8);
}

uint64_t sub_13DC90()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    (*(v2[37] + 8))(v2[38], v2[36]);
    sub_3080(v2 + 17);
    v3 = v2[53];
    v4 = v2[54];
    v5 = sub_13E190;
  }

  else
  {
    v7 = v2[40];
    v6 = v2[41];
    v8 = v2[39];
    (*(v2[37] + 8))(v2[38], v2[36]);
    sub_3080(v2 + 17);
    (*(v7 + 8))(v6, v8);
    v3 = v2[53];
    v4 = v2[54];
    v5 = sub_13DE08;
  }

  return (_swift_task_switch)(v5, v3, v4);
}

uint64_t sub_13DE08()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  (*(v2 + 8))(v1, v3);
  sub_3080(v0 + 7);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_13DEF4()
{
  v1 = *(v0 + 448);
  sub_3080((v0 + 16));
  *(v0 + 240) = v1;
  swift_errorRetain();
  sub_2EF0(&qword_31E968, &qword_27B490);
  sub_2EF0(&qword_31FC48, &qword_27B498);
  if (swift_dynamicCast())
  {
    sub_F7CC((v0 + 96), v0 + 56);
    v2 = swift_task_alloc();
    *(v0 + 456) = v2;
    *v2 = v0;
    v2[1] = sub_13DA3C;
    v3 = *(v0 + 352);
    v4 = *(v0 + 336);

    return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
  }

  else
  {

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_13EA68(v0 + 96);
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_13E0C8()
{

  sub_3080((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_13E190()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  (*(v2 + 8))(v1, v3);
  sub_3080(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_13E278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v32 = a5;
  v12 = sub_2EF0(&qword_316408, &qword_26DE30);
  __chkstk_darwin(v12 - 8);
  v34 = &v30 - v13;
  v38[0] = a3;
  v38[1] = a4;
  v31 = a4;
  v38[2] = a5;
  v38[3] = a6;
  updated = type metadata accessor for PageUpdateAction(0, v38);
  v15 = *(updated - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(updated);
  v18 = &v30 - v17;
  sub_2EF0(&qword_31FC30, &qword_27B418);
  sub_263C40();
  v37[0] = a3;
  v37[1] = a4;
  swift_getExtendedExistentialTypeMetadata();
  sub_263C40();
  (*(v15 + 16))(v18, a1, updated);
  sub_30CC(v38, v36);
  sub_30CC(v37, v35);
  v19 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 2) = a3;
  *(v22 + 3) = v23;
  v24 = v33;
  *(v22 + 4) = v32;
  *(v22 + 5) = v24;
  (*(v15 + 32))(&v22[v19], v18, updated);
  sub_F7CC(v36, &v22[v20]);
  *&v22[v21] = a2;
  sub_F7CC(v35, &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8]);
  sub_2EF0(&qword_31D228, &unk_27B470);

  v25 = sub_2641C0();
  v26 = sub_264770();
  v27 = v34;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_27B468;
  v28[5] = v22;
  v28[6] = v25;

  sub_E39C4(0, 0, v27, &unk_27DF80, v28);

  sub_3080(v37);
  sub_3080(v38);
  return v25;
}

uint64_t sub_13E614()
{
  v1 = *(v0 + 32);
  v12[0] = *(v0 + 16);
  v12[1] = v1;
  updated = type metadata accessor for PageUpdateAction(0, v12);
  v3 = (*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80);
  v4 = *(*(updated - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_263AF0();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(updated + 52);
  v8 = sub_260620();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_3080((v5 + *(updated + 56)));
  sub_3080((v0 + v10));

  sub_3080((v0 + ((((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

uint64_t sub_13E7C0(uint64_t a1, __n128 a2)
{
  v4 = v3;
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v3[2] = v6;
  v3[3] = v5;
  v3[4] = v7;
  v3[5] = v8;
  v9 = *(type metadata accessor for PageUpdateAction(0, (v3 + 2)) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v2 + v12);
  v15 = swift_task_alloc();
  v4[6] = v15;
  *v15 = v4;
  v15[1] = sub_13E92C;

  return sub_13D200(a1, v2 + v10, v2 + v11, v14, v2 + v13, v6, v5, v7);
}

uint64_t sub_13E92C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_13EA20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_13EA68(uint64_t a1)
{
  v2 = sub_2EF0(qword_31FC50, &unk_27B4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ListItemMetadataEyebrowView(0, a2, a3, v8);
  v10 = *(*(a2 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a1, a2);
}

uint64_t sub_13EB90(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2EF0(&qword_31FCD8, &qword_27B570);
  sub_260A70();
  sub_260A50();
  sub_13F87C();
  sub_13FB8C(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_13FB8C(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

__n128 sub_13EDB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v42 = a2;
  v38 = a1;
  v6 = sub_2626C0();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v43 = sub_262730();
  v11 = *(v43 - 8);
  __chkstk_darwin(v43);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontConstants.ListItem(0);
  __chkstk_darwin(v14 - 8);
  v44 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2EF0(&qword_317310, &qword_2721D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_269100;
  v17 = sub_2624C0();
  *(v16 + 32) = v17;
  v18 = sub_2624E0();
  *(v16 + 33) = v18;
  v19 = sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v17)
  {
    v19 = sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() == v18)
  {
    v41 = v19;
  }

  else
  {
    v41 = sub_2624D0();
  }

  sub_13F34C(v38, v39, v40, &v49);
  v64 = v55;
  v65 = v56;
  v66[0] = v57[0];
  *(v66 + 10) = *(v57 + 10);
  v60 = v51;
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v58 = v49;
  v59 = v50;
  v67[6] = v55;
  v67[7] = v56;
  v68[0] = v57[0];
  *(v68 + 10) = *(v57 + 10);
  v67[2] = v51;
  v67[3] = v52;
  v67[4] = v53;
  v67[5] = v54;
  v67[0] = v49;
  v67[1] = v50;
  sub_13FBD4(&v58, &v48);
  sub_8E80(v67, &qword_31FD28, &qword_27B5A0);
  *(&v69[6] + 7) = v64;
  *(&v69[7] + 7) = v65;
  *(&v69[8] + 7) = v66[0];
  *(&v69[9] + 1) = *(v66 + 10);
  *(&v69[2] + 7) = v60;
  *(&v69[3] + 7) = v61;
  *(&v69[4] + 7) = v62;
  *(&v69[5] + 7) = v63;
  *(v69 + 7) = v58;
  *(&v69[1] + 7) = v59;
  v20 = v44;
  sub_404E0(v44);
  v21 = v43;
  (*(v11 + 104))(v13, enum case for Font.TextStyle.caption2(_:), v43);
  v22 = sub_2625C0();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_262680();
  sub_8E80(v10, &qword_318458, &unk_26B270);
  (*(v11 + 8))(v13, v21);
  sub_2625A0();

  v24 = v45;
  v23 = v46;
  v25 = v47;
  (*(v46 + 104))(v45, enum case for Font.Leading.tight(_:), v47);
  v26 = sub_2626E0();

  (*(v23 + 8))(v24, v25);
  sub_65488(v20);
  KeyPath = swift_getKeyPath();
  v28 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  LOBYTE(v49) = 0;
  v31 = *(sub_2EF0(&qword_31FCD8, &qword_27B570) + 36);
  *(a5 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v32 = v69[6];
  *(a5 + 113) = v69[7];
  v33 = v69[9];
  *(a5 + 129) = v69[8];
  *(a5 + 145) = v33;
  v34 = v69[2];
  *(a5 + 49) = v69[3];
  v35 = v69[5];
  *(a5 + 65) = v69[4];
  *(a5 + 81) = v35;
  *(a5 + 97) = v32;
  result = v69[0];
  v37 = v69[1];
  *(a5 + 1) = v69[0];
  *(a5 + 17) = v37;
  *a5 = v41;
  *(a5 + 161) = v69[10];
  *(a5 + 33) = v34;
  *(a5 + 168) = KeyPath;
  *(a5 + 176) = v26;
  *(a5 + 184) = v29;
  *(a5 + 192) = v28;
  *(a5 + 200) = v30;
  *(a5 + 208) = 1;
  *(a5 + 216) = 0;
  return result;
}

double sub_13F34C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for ListItemMetadataEyebrowView(0, a2, a3, a3);
  v8 = a3[2](a1, a2, a3);
  v34 = v9;
  v35 = v8;
  v10 = v9;
  v12 = v11;
  v39 = v13;
  v14 = a3[3];

  v44 = v12 & 1;
  sub_43B58(v8, v10, v12 & 1);
  v15 = v14(a1, a2, a3);
  v36 = v17;
  v37 = v16;
  v19 = v17 & 1;
  v38 = v15;
  if (v18)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0;
  }

  v41 = v21;
  v42 = v20;
  if (!v18)
  {
    v19 = 0;
  }

  v40 = v19;
  if (v18)
  {
    v22 = 257;
  }

  else
  {
    v22 = 0;
  }

  v43 = v22;
  v23 = a3[4];
  v24 = v18;
  sub_13FC60(v15, v16, v17, v18);
  v25 = v23(a1, a2, a3);
  v49 = v27;
  v29 = v28 & 1;
  if (v27)
  {
    v30 = v25;
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = v26;
  }

  else
  {
    v31 = 0;
  }

  v46 = v31;
  v47 = v30;
  if (!v27)
  {
    v29 = 0;
  }

  v45 = v29;
  if (v27)
  {
    v32 = 257;
  }

  else
  {
    v32 = 0;
  }

  sub_43B58(v35, v34, v44);

  sub_13FC60(v42, v41, v40, v24);
  sub_13FC60(v47, v46, v45, v49);
  sub_43B58(v35, v34, v44);

  sub_13FCA4(v38, v37, v36, v24);
  *a4 = v35;
  *(a4 + 8) = v34;
  *(a4 + 16) = v44;
  *(a4 + 24) = v39;
  *(a4 + 32) = 257;
  *(a4 + 40) = v42;
  *(a4 + 48) = v41;
  *(a4 + 56) = v40;
  *(a4 + 64) = v24;
  *(a4 + 72) = v43;
  *(a4 + 80) = v47;
  *(a4 + 88) = v46;
  *(a4 + 96) = v45;
  *(a4 + 104) = v49;
  *(a4 + 112) = v32;
  *(a4 + 120) = v35;
  *(a4 + 128) = v34;
  *(a4 + 136) = v44;
  *(a4 + 144) = v39;
  *(a4 + 152) = 256;
  sub_39DBC(v35, v34, v44);

  sub_13FCA4(v47, v46, v45, v49);
  sub_13FCA4(v42, v41, v40, v24);
  sub_39DBC(v35, v34, v44);

  return result;
}