uint64_t sub_88DBF8()
{

  return swift_deallocObject();
}

id sub_88DC30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_88DCAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_88DE18()
{

  return swift_deallocObject();
}

double block_copy_helper_226(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_88DE90()
{

  return swift_deallocObject();
}

void sub_88DEE8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

double sub_88DF00@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_88DF58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_88DFAC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_88E004(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_88E068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0B0, &unk_B2A450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_88E0D8()
{
  result = qword_E1DAE8;
  if (!qword_E1DAE8)
  {
    sub_13C80(255, &qword_E1DAE0, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DAE8);
  }

  return result;
}

uint64_t objectdestroy_52Tm()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_88E1E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint) = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *(v1 + v11) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v12 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds);
  *v13 = 0u;
  v13[1] = 0u;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = 0;
  v14 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *(v1 + v14) = [objc_allocWithZone(UILayoutGuide) init];
  v15 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v16 = objc_opt_self();
  *(v1 + v15) = [v16 whiteColor];
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v1 + v17) = [v16 systemFillColor];
  v18 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_E16910 != -1)
  {
    swift_once();
  }

  *(v1 + v18) = static UIColor.MusicTint.normal;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *(v1 + v19) = Int.seconds.getter(0);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking) = 0;
  v20 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t SymbolButton.CustomView.init(view:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  a3.i64[0] = 0;
  *a2 = result;
  a4.i64[0] = result;
  v4 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a4, a3)).i64[0], 0);
  v5 = vandq_s8(*&UIEdgeInsetsZero.bottom, v4);
  v6 = 0x3FF0000000000000;
  *(a2 + 8) = vandq_s8(*&UIEdgeInsetsZero.top, v4);
  if (!result)
  {
    v6 = 0;
  }

  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  return result;
}

BOOL sub_88E520(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_ABB5C0();
  v4 = qword_B343E8[a1];
  sub_ABB5D0(v4);
  v5 = sub_ABB610();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_B343E8[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_88E600(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB8B70();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_8A3D54(&qword_E1AD20, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator), v7 = sub_AB90D0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_8A3D54(&qword_E1AD28, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v15 = sub_AB91C0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v81 = a5;
  v82 = a4;
  v80 = a2;
  v79 = sub_AB4EB0();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400);
  __chkstk_darwin();
  v11 = &v74 - v10;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v11, &qword_E1D170, &unk_B32400);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(&v6[v17], v15, type metadata accessor for SymbolButton.Configuration);
    if (v16(v11, 1, v12) != 1)
    {
      sub_12E1C(v11, &qword_E1D170, &unk_B32400);
    }
  }

  else
  {
    sub_8A3CEC(v11, v15, type metadata accessor for SymbolButton.Configuration);
  }

  v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v18])
  {
    sub_3F9D0(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
    *(v15 + 200) = xmmword_AF82C0;
    *(v15 + 27) = 0;
    *(v15 + 28) = 0;
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v20 = &selRef__authenticateReturningError_;
  if ((v6[v19] & 1) != 0 || *&v15[*(v12 + 68)] != 0.0)
  {
    [v6 state];
    v21 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
    swift_beginAccess();
    v22 = v6[v21];
    v83 = v12;
    v76 = v18;
    if (v22 & 1) != 0 || (v23 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted, swift_beginAccess(), (v6[v23]) || (v24 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected, swift_beginAccess(), v6[v24] == 1))
    {
      if ((v6[v18] & 1) == 0)
      {
        v74 = v21;
        v75 = a3;
        if (qword_E16C28 != -1)
        {
          swift_once();
        }

        v26 = static SymbolButton.Background.normal;
        v25 = qword_E73EA8;
        v28 = qword_E73EB0;
        v27 = qword_E73EB8;
        v29 = *(v15 + 25);
        v30 = *(v15 + 26);
        v32 = *(v15 + 27);
        v31 = *(v15 + 28);

        v33 = v25;
        sub_3F9D0(v29, v30, v32, v31);
        *(v15 + 25) = v26;
        *(v15 + 26) = v25;
        *(v15 + 27) = v28;
        *(v15 + 28) = v27;
        a3 = v75;
        v12 = v83;
        v20 = &selRef__authenticateReturningError_;
        v21 = v74;
      }

      v34 = [v6 v20[334]];
      v35 = [v34 userInterfaceIdiom];

      if (v35 == &dword_4 + 2)
      {
        v36 = objc_opt_self();
        v37 = [v36 labelColor];

        *(v15 + 14) = v37;
        v12 = v83;
        v38 = [v36 labelColor];

        *(v15 + 22) = v38;
      }

      *&v15[*(v12 + 68)] = 0x3FF0000000000000;
      v18 = v76;
    }

    if (([v6 state] & 2) != 0 && v6[v21] == 1)
    {
      *&v15[*(v12 + 68)] = 0x3FD0000000000000;
    }

    if ([v6 state])
    {
      v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
      swift_beginAccess();
      v40 = v83;
      if (v6[v39] == 1)
      {
        if ((v6[v18] & 1) == 0)
        {
          v75 = a3;
          if (qword_E16C30 != -1)
          {
            swift_once();
          }

          v41 = static SymbolButton.Background.highlighted;
          v42 = qword_E73EC8;
          v43 = qword_E73ED8;
          v74 = qword_E73ED0;
          v44 = *(v15 + 25);
          v45 = *(v15 + 26);
          v46 = *(v15 + 27);
          v47 = *(v15 + 28);

          v48 = v42;
          sub_3F9D0(v44, v45, v46, v47);
          *(v15 + 25) = v41;
          *(v15 + 26) = v42;
          *(v15 + 27) = v74;
          *(v15 + 28) = v43;
          a3 = v75;
          v40 = v83;
          v20 = &selRef__authenticateReturningError_;
        }

        v49 = *(v40 + 68);
        *&v15[v49] = 0x3FE0000000000000;
        v50 = [v6 v20[334]];
        v51 = [v50 userInterfaceIdiom];

        v52 = v51 == &dword_4 + 2;
        v18 = v76;
        if (v52)
        {
          v53 = objc_opt_self();
          v54 = [v53 labelColor];

          *(v15 + 14) = v54;
          v55 = [v53 labelColor];

          *(v15 + 22) = v55;
          *&v15[v49] = 0x3FF0000000000000;
          if ([v6 showsMenuAsPrimaryAction])
          {
            if ([v6 isContextMenuInteractionEnabled])
            {
              v75 = v55;
              v56 = v54;
              if ((v6[v18] & 1) == 0)
              {
                sub_3F9D0(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
                *(v15 + 25) = 0x3FF0000000000000;
                *(v15 + 26) = 0;
                *(v15 + 27) = 0;
                *(v15 + 28) = 0;
              }

              v57 = [v53 blackColor];

              *(v15 + 14) = v57;
              v58 = [v53 blackColor];

              *(v15 + 22) = v58;
            }
          }
        }
      }
    }

    if (([v6 state] & 4) != 0)
    {
      v59 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
      swift_beginAccess();
      v60 = v6[v59];
      v61 = v83;
      if (v60 == 1)
      {
        if ((v6[v18] & 1) == 0)
        {
          sub_3F9D0(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
          *(v15 + 25) = 0x3FF0000000000000;
          *(v15 + 26) = 0;
          *(v15 + 27) = 0;
          *(v15 + 28) = 0;
        }

        v62 = *(v61 + 68);
        *&v15[v62] = 0x3FF0000000000000;
        v63 = [v6 v20[334]];
        v64 = [v63 userInterfaceIdiom];

        if (v64 == &dword_4 + 2)
        {
          v65 = objc_opt_self();
          v66 = [v65 blackColor];

          *(v15 + 14) = v66;
          v67 = [v65 blackColor];

          *(v15 + 22) = v67;
        }

        else if ([v6 state])
        {
          *&v15[v62] = 0x3FE0000000000000;
        }
      }
    }
  }

  v68 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v69 = *v68;
  if (*v68)
  {
    v70 = *(v68 + 1);

    v71 = [v6 v20[334]];
    v72 = v77;
    sub_AB4E90();
    [v6 isEnabled];
    sub_AB4E40();
    [v6 isSelected];
    sub_AB4E60();
    [v6 isHighlighted];
    sub_AB4E80();
    v69(v72, v15);
    sub_17654(v69, v70);
    (*(v78 + 8))(v72, v79);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v15, v80, a3, v82, v81 & 1, _swiftEmptyArrayStorage);
  return sub_8A1B6C(v15, type metadata accessor for SymbolButton.Configuration);
}

__n128 static SymbolButton.Material.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0uLL;
  v7 = 0;
  v8 = 2;
  v9 = 0uLL;
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = v9;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

double static SymbolButton.Symbol.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v13 = 0uLL;
  v17 = 0;
  *&v16[7] = 0;
  *&v10 = 0;
  *(&v10 + 1) = UIFontTextStyleSubheadline;
  *&v11 = 0;
  BYTE8(v11) = 1;
  v12 = xmmword_B283E0;
  v14[0] = -1;
  *&v14[16] = 0;
  *&v14[24] = 0x3FF0000000000000;
  *&v14[1] = *v16;
  v15 = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v9);
  v5 = *v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = *&v14[16];
  *(a2 + 112) = v15;
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

__n128 static SymbolButton.Title.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v7 = 0uLL;
  v8.n128_u64[0] = UIFontTextStyleSubheadline;
  v8.n128_f64[1] = UIFontWeightSemibold;
  v9 = 0uLL;
  v10 = 0x3FF0000000000000uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v7);
  v5 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v5;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

uint64_t static SymbolButton.Background.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0x3FF0000000000000;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  a1(&v2);
  return v3;
}

char *SymbolButton.__allocating_init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_8A0278(a1, a2, a3);
  sub_17654(a2, a3);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8A0278(a1, a2, a3);
  sub_17654(a2, a3);
  return v5;
}

void sub_88F4DC(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v2 = &v5[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
      swift_beginAccess();
      v3 = *v2;
      if (*v2)
      {
        v4 = *(v2 + 1);

        v3();

        sub_17654(v3, v4);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_12E1C(v8, &qword_E1E0B0, &unk_B2A450);
  }
}

id SymbolButton._monochromaticTreatment.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v2, "_monochromaticTreatment");
}

void SymbolButton._monochromaticTreatment.setter(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v5, "_setMonochromaticTreatment:", a1);
  v3 = sub_898004();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_897E8C();
  [v4 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];
}

uint64_t SymbolButton.debugLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double SymbolButton.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t SymbolButton.configurationProvider.setter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_307CC(a1, a2);
  sub_17654(v8, v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
  sub_17654(a1, a2);
  return sub_12E1C(v6, &qword_E1D170, &unk_B32400);
}

uint64_t (*SymbolButton.configurationProvider.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_88FB4C;
}

void sub_88FB4C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_12E1C(v4, &qword_E1D170, &unk_B32400);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  sub_AB4E90();
  [v0 isEnabled];
  sub_AB4E40();
  [v0 isSelected];
  sub_AB4E60();
  [v0 isHighlighted];
  return sub_AB4E80();
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.modify(uint64_t *a1))(void ***a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8A459C;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_88FEB0(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  v9 = *(v2 + v8);
  *(v2 + v8) = a1;
  if (v9 != v5)
  {
    v10 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, 0, 0, 0, 1);
    sub_12E1C(v7, &qword_E1D170, &unk_B32400);
  }
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenSelected.modify(uint64_t *a1))(void ***a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8A459C;
}

void sub_8900A8(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[3];
  v4 = *(*a1 + 48);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = v1[4];
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_12E1C(v6, &qword_E1D170, &unk_B32400);
  }

  free(v1[4]);

  free(v1);
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenDisabled.modify(uint64_t *a1))(void ***a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8A459C;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHidden.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenHidden.modify(uint64_t *a1))(void ***a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8A459C;
}

uint64_t SymbolButton.prefersSolariumTreatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.prefersSolariumTreatment.modify(uint64_t *a1))(void ***)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_8904E8;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_8A3C84(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
}

void (*SymbolButton.configuration.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_8906BC;
}

void sub_8906BC(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    sub_8A3C84(*(*a1 + 40), v4, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v4, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_8A1B6C(v4, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_8A1B6C(v5, type metadata accessor for SymbolButton.Configuration);
  free(v5);
  free(v4);

  free(v3);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_E16C28 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_E16C30 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_307CC(*v0, v0[1]);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_17654(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SymbolButton.Update.init(alongside:animationOptions:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolButton.setConfiguration(_:animation:updates:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v172 = a6;
  LODWORD(v171) = a5;
  v165 = a4;
  v163 = a3;
  v169 = *&a2;
  ObjectType = swift_getObjectType();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8, &qword_B2A1F0);
  __chkstk_darwin();
  v9 = &v159 - v8;
  v10 = sub_AB3470();
  v173 = *(v10 - 8);
  v174 = v10;
  __chkstk_darwin();
  v12 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v166 = *(v13 - 8);
  __chkstk_darwin();
  v176 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v170 = &v159 - v15;
  __chkstk_darwin();
  v168 = &v159 - v16;
  __chkstk_darwin();
  v18 = &v159 - v17;
  v167 = v19;
  __chkstk_darwin();
  v21 = &v159 - v20;
  v22 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v6 + v22, v21, type metadata accessor for SymbolButton.Configuration);
  v23 = a1;
  v24 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v21);
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    goto LABEL_62;
  }

  sub_8A3C84(v23, v18, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v160 = v18;
  v161 = v6;
  sub_2580A4(v18, v6 + v22);
  swift_endAccess();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v162 = sub_AB3440();
  v177 = v27;
  v173[1](v12, v174);
  v28 = *(v13 + 36);
  v29 = *(v175 + 12);
  v175 = v21;
  sub_15F84(&v21[v28], v9, &qword_E1DB50, &qword_B29E40);
  sub_15F84(v23 + v28, &v9[v29], &qword_E1DB50, &qword_B29E40);
  v30 = sub_ABA680();
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v9, 1, v30);
  v33 = v31(&v9[v29], 1, v30);
  v34 = v23;
  if (v32 == 1)
  {
    if (v33 != 1)
    {
      sub_12E1C(&v9[v29], &qword_E1DB50, &qword_B29E40);
LABEL_6:
      sub_12E1C(v9, &qword_E1DB50, &qword_B29E40);
      v35 = v161;
      *(v161 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
      v36 = v177;
      goto LABEL_8;
    }
  }

  else if (v33 == 1)
  {
    goto LABEL_6;
  }

  sub_12E1C(v9, &qword_E175C8, &qword_B2A1F0);
  v36 = v177;
  v35 = v161;
LABEL_8:
  v173 = v13;
  [v35 invalidateIntrinsicContentSize];
  [v35 accessibilityUpdateSymbolButton];
  v37 = *(v34 + 8);
  v178 = v34;
  if (v37)
  {
    v38 = *(v34 + 16);
    v39 = sub_AB9260();
    v40 = objc_opt_self();
    v41 = [v40 _systemImageNamed:v39];

    if (!v41)
    {
      v42 = sub_AB9260();
      v41 = [v40 imageNamed:v42 inBundle:v38];
    }
  }

  else
  {
    v41 = 0;
  }

  [v35 setLargeContentImage:v41];

  v43 = [v35 window];
  if (!v43 || (v43, (v171 & 1) != 0) || (v44 = v169, v169 <= 0.0))
  {
    v57 = v178;
    if (qword_E16908 != -1)
    {
      swift_once();
    }

    v58 = sub_AB4BC0();
    v59 = __swift_project_value_buffer(v58, qword_E73898);
    v60 = v176;
    sub_8A3C84(v57, v176, type metadata accessor for SymbolButton.Configuration);
    v61 = v35;

    v62 = sub_AB4BA0();
    v63 = sub_AB9F20();

    v64 = os_log_type_enabled(v62, v63);
    v174 = v59;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&aBlock = v171;
      *v65 = 136446722;
      v66 = &v61[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      v67 = v66[1];
      if (v67)
      {
        v68 = *v66;
        v69 = v67;
      }

      else
      {
        v70 = v61;
        v71 = [v70 description];
        v68 = sub_AB92A0();
        v69 = v72;

        v60 = v176;
      }

      v73 = sub_7AB3E0(v68, v69, &aBlock);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2082;
      *(v65 + 14) = sub_7AB3E0(v162, v36, &aBlock);
      *(v65 + 22) = 2082;
      v74 = SymbolButton.Configuration.description.getter();
      v76 = v75;
      sub_8A1B6C(v60, type metadata accessor for SymbolButton.Configuration);
      v77 = sub_7AB3E0(v74, v76, &aBlock);

      *(v65 + 24) = v77;
      _os_log_impl(&dword_0, v62, v63, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v65, 0x20u);
      swift_arrayDestroy();

      v57 = v178;
    }

    else
    {

      sub_8A1B6C(v60, type metadata accessor for SymbolButton.Configuration);
    }

    sub_8993E0(v57);
    v78 = *(v172 + 16);
    v21 = v175;
    if (v78)
    {
      v79 = (v172 + 72);
      while (1)
      {
        v80 = *(v79 - 5);
        v81 = *(v79 - 4);
        v82 = *(v79 - 1);
        v83 = *v79;
        v84 = *v79;
        if (v80)
        {
          break;
        }

        sub_307CC(v82, v84);
        if (v82)
        {
          goto LABEL_35;
        }

LABEL_30:
        v79 += 6;
        sub_17654(v80, v81);
        if (!--v78)
        {
          goto LABEL_36;
        }
      }

      sub_307CC(v82, v84);
      sub_307CC(v80, v81);
      v80(v61);
      if (!v82)
      {
        goto LABEL_30;
      }

LABEL_35:
      v82(v61);
      sub_17654(v82, v83);
      goto LABEL_30;
    }

LABEL_36:
    v85 = *(v21 + 5);
    v192[4] = *(v21 + 4);
    v192[5] = v85;
    v192[6] = *(v21 + 6);
    v193 = *(v21 + 14);
    v86 = *(v21 + 1);
    v192[0] = *v21;
    v192[1] = v86;
    v87 = *(v21 + 3);
    v192[2] = *(v21 + 2);
    v192[3] = v87;
    v88 = v178;
    v89 = *v178;
    v90 = *(v178 + 16);
    v91 = *(v178 + 48);
    v196 = *(v178 + 32);
    v197 = v91;
    aBlock = v89;
    v195 = v90;
    v92 = *(v178 + 64);
    v93 = *(v178 + 80);
    v94 = *(v178 + 96);
    v201 = *(v178 + 112);
    v199 = v93;
    v200 = v94;
    v198 = v92;
    if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v192, &aBlock))
    {
      goto LABEL_48;
    }

    v95 = *(v21 + 15);
    v96 = *(v21 + 16);
    v97 = *(v21 + 152);
    v181 = *(v21 + 136);
    v182 = v97;
    v183 = *(v21 + 168);
    v98 = v21[184];
    v180[0] = v95;
    v180[1] = v96;
    v184 = v98;
    *v185 = *(v21 + 185);
    v99 = *(v21 + 24);
    v100 = *(v88 + 120);
    v101 = *(v88 + 128);
    v102 = *(v88 + 152);
    v187 = *(v88 + 136);
    v188 = v102;
    v189 = *(v88 + 168);
    v103 = *(v88 + 184);
    *&v185[7] = v99;
    v186[0] = v100;
    v186[1] = v101;
    v190 = v103;
    *v191 = *(v88 + 185);
    *&v191[7] = *(v88 + 192);
    if (sub_8A0BB4(v180, v186))
    {
      goto LABEL_48;
    }

    if (v101)
    {
      if ((((*&v96 != 0) & (v98 ^ 1) ^ v103) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (((*&v96 != 0) & (v98 ^ 1)) != 0)
    {
      goto LABEL_48;
    }

    v104 = *(v173 + 10);
    v105 = *&v21[v104];
    v106 = *(v88 + v104);
    if (v105)
    {
      if (v105 != v106)
      {
        goto LABEL_48;
      }

LABEL_47:
      if ((*&v21[*(v173 + 11) + 16] == 1) == (*(v88 + *(v173 + 11) + 16) == 1))
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!v106)
    {
      goto LABEL_47;
    }

LABEL_48:
    [v61 setNeedsLayout];
LABEL_49:
    v107 = v61;

    v108 = sub_AB4BA0();
    v109 = sub_AB9F20();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v179[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = &v107[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      if (v111[1])
      {
        v112 = *v111;
        v113 = v111[1];
      }

      else
      {
        v114 = [v107 description];
        v112 = sub_AB92A0();
        v113 = v115;
      }

      v116 = sub_7AB3E0(v112, v113, v179);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_7AB3E0(v162, v177, v179);

      *(v110 + 14) = v117;
      _os_log_impl(&dword_0, v108, v109, "[%{public}s] UpdateID=%{public}s — Updated ✅", v110, 0x16u);
      swift_arrayDestroy();

      v25 = 0;
      v26 = 0;
      v21 = v175;
    }

    else
    {

      v25 = 0;
      v26 = 0;
    }

    goto LABEL_62;
  }

  v45 = v178;
  if (qword_E16908 != -1)
  {
    swift_once();
  }

  v46 = sub_AB4BC0();
  __swift_project_value_buffer(v46, qword_E73898);
  v47 = v168;
  sub_8A3C84(v45, v168, type metadata accessor for SymbolButton.Configuration);
  v48 = v35;

  v49 = sub_AB4BA0();
  LODWORD(v50) = sub_AB9F20();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    *&aBlock = v176;
    *v51 = 136446722;
    v52 = &v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v53 = v52[1];
    v54 = v170;
    if (v53)
    {
      v55 = *v52;
      v56 = v53;
    }

    else
    {
      v118 = v48;
      v119 = [v118 description];
      LODWORD(v174) = v50;
      v50 = v119;
      v55 = sub_AB92A0();
      v56 = v120;

      v47 = v168;
      LOBYTE(v50) = v174;
    }

    v121 = sub_7AB3E0(v55, v56, &aBlock);

    *(v51 + 4) = v121;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_7AB3E0(v162, v36, &aBlock);
    *(v51 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v47;
    v125 = v124;
    sub_8A1B6C(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_7AB3E0(v122, v125, &aBlock);

    *(v51 + 24) = v126;
    _os_log_impl(&dword_0, v49, v50, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v51, 0x20u);
    swift_arrayDestroy();

    v45 = v178;
  }

  else
  {

    sub_8A1B6C(v47, type metadata accessor for SymbolButton.Configuration);
    v54 = v170;
  }

  v127 = *&v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v128 = v127 + 1;
  v129 = v160;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
  }

  else
  {
    *&v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v128;
    if (v128 != v127)
    {
      sub_899E58();
    }

    v130 = swift_allocObject();
    v171 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v174 = v130 + 16;
    v176 = objc_opt_self();
    v173 = v48;
    v21 = v175;
    sub_8A3C84(v175, v129, type metadata accessor for SymbolButton.Configuration);
    sub_8A3C84(v45, v54, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v166 + 80);
    v132 = (v131 + 16) & ~v131;
    v166 = v167 + v131;
    v133 = (v167 + v131 + v132) & ~v131;
    v167 += 7;
    v168 = v131;
    v134 = (v167 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_8A3CEC(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_8A3CEC(v54, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v173;
    v136 = v174;
    *(v135 + v134) = v173;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_8A14A4;
    *(v138 + 24) = v135;
    v174 = v135;
    *&v196 = sub_70638;
    *(&v196 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v169 = COERCE_DOUBLE(&v195);
    *&v195 = sub_1822E0;
    *(&v195 + 1) = &block_descriptor_227;
    v139 = _Block_copy(&aBlock);
    v173 = v137;

    [v176 performWithoutAnimation:v139];
    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if ((v139 & 1) == 0)
    {
      v140 = *&v163;
      v141 = v168;
      v142 = ~v168;
      v143 = v160;
      sub_8A3C84(v178, v160, type metadata accessor for SymbolButton.Configuration);
      sub_8A3C84(v21, v170, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v166 + v144) & v142;
      v146 = (v167 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v173;
      *(v147 + 16) = v173;
      sub_8A3CEC(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_8A3CEC(v170, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v171;
      v150 = v172;
      *(v147 + v146) = v171;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v196 = sub_8A1908;
      *(&v196 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_1B5EB4;
      *(&v195 + 1) = &block_descriptor_19_4;
      v151 = _Block_copy(&aBlock);
      v152 = v148;

      v153 = swift_allocObject();
      v153[2] = v149;
      v153[3] = v152;
      v154 = v162;
      v153[4] = v150;
      v153[5] = v154;
      v155 = ObjectType;
      v153[6] = v177;
      v153[7] = v155;
      *&v196 = sub_8A1A04;
      *(&v196 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_1811AC;
      *(&v195 + 1) = &block_descriptor_25_2;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v176 animateKeyframesWithDuration:v165 delay:v151 options:v156 animations:v44 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v25 = sub_8A14A4;
      v26 = v174;
LABEL_62:
      v158 = v26;
      sub_8A1B6C(v21, type metadata accessor for SymbolButton.Configuration);
      sub_17654(v25, v158);
      return;
    }
  }

  __break(1u);
}

void sub_891BF8(uint64_t *a1, __int128 *a2, char *a3, char **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 6);
  v174 = *(a1 + 5);
  v175 = v9;
  v176 = a1[14];
  v10 = *(a1 + 2);
  v170 = *(a1 + 1);
  v171 = v10;
  v11 = *(a1 + 4);
  v172 = *(a1 + 3);
  v173 = v11;
  v169[0] = v7;
  v169[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v177[2] = a2[2];
  v177[3] = v14;
  v177[0] = v12;
  v177[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v178 = *(a2 + 14);
  v177[5] = v16;
  v177[6] = v17;
  v177[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v169, v177))
  {
    v18 = sub_897E8C();
    v19 = a2[5];
    v166[4] = a2[4];
    v166[5] = v19;
    v167 = a2[6];
    v168 = *(a2 + 14);
    v20 = a2[1];
    v166[0] = *a2;
    v166[1] = v20;
    v21 = a2[3];
    v166[2] = a2[2];
    v166[3] = v21;
    v22 = type metadata accessor for SymbolButton.ImageView();
    v156.receiver = objc_allocWithZone(v22);
    v156.super_class = v22;
    v23 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v23 setContentMode:4];
    sub_89B984(v166);
    v24 = [v18 preferredSymbolConfiguration];
    [v23 setPreferredSymbolConfiguration:v24];

    [v18 frame];
    [v23 setFrame:?];

    v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v26 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v23;
    v27 = v23;

    [v27 setAlpha:0.0];
    v28 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v29 = *&a3[v25];
    if (([v29 isDescendantOfView:v28] & 1) == 0)
    {
      [v28 addSubview:v29];
    }

    if (!v8 && *(&v166[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v30 = *(&v167 + 1);
    v31 = *&a3[v25];
    v32 = *a4;
    v33 = v31;
    v34 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_8A51A0(0, *(v32 + 2) + 1, 1, v32);
      *a4 = v32;
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    v4 = a3;
    if (v37 >= v36 >> 1)
    {
      *a4 = sub_8A51A0((v36 > 1), v37 + 1, 1, v32);
    }

    v38 = *a4;
    *(v38 + 2) = v37 + 1;
    v39 = &v38[88 * v37];
    *(v39 + 4) = v31;
    *(v39 + 5) = v30;
    *(v39 + 6) = 0;
    *(v39 + 7) = 0;
    *(v39 + 8) = 0;
    *(v39 + 9) = v34;
    *(v39 + 5) = xmmword_AF82C0;
    *(v39 + 12) = 0;
    *(v39 + 13) = 0;
    v39[112] = 0;
  }

  v40 = *(a1 + 17);
  v41 = *(a1 + 21);
  v164[2] = *(a1 + 19);
  v164[3] = v41;
  v42 = *(a1 + 23);
  v164[0] = *(a1 + 15);
  v164[1] = v40;
  v43 = *(a2 + 136);
  v44 = *(a2 + 168);
  v165[2] = *(a2 + 152);
  v165[3] = v44;
  v165[4] = *(a2 + 184);
  v45 = *(a2 + 120);
  v165[1] = v43;
  v164[4] = v42;
  v165[0] = v45;
  if (sub_8A0BB4(v164, v165))
  {
    v46 = sub_898004();
    v47 = *(a2 + 136);
    v48 = *(a2 + 168);
    v161[2] = *(a2 + 152);
    v162 = v48;
    v163 = *(a2 + 184);
    v161[0] = *(a2 + 120);
    v161[1] = v47;
    v49 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_8A1A84(v161, v160);
    v50 = sub_89BBC8(v161);
    v51 = [v46 font];
    [v50 setFont:v51];

    v52 = v50;
    v53 = v46;
    [v53 frame];
    [v52 setFrame:?];

    v54 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v55 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v52;
    v56 = v52;

    [v56 setAlpha:0.0];
    v57 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v58 = *&v4[v54];
    if (([v58 isDescendantOfView:v57] & 1) == 0)
    {
      [v57 addSubview:v58];
    }

    v59 = v162;
    v60 = *&v4[v54];
    v61 = *(a1 + 17);
    v62 = *(a1 + 21);
    v159[2] = *(a1 + 19);
    v159[3] = v62;
    v63 = *(a1 + 23);
    v159[0] = *(a1 + 15);
    v159[1] = v61;
    v64 = *(a2 + 136);
    v65 = *(a2 + 168);
    v160[2] = *(a2 + 152);
    v160[3] = v65;
    v160[4] = *(a2 + 184);
    v66 = *(a2 + 120);
    v160[1] = v64;
    v159[4] = v63;
    v160[0] = v66;
    v67 = v60;
    v68 = sub_8A1C18(v159, v160);
    v69 = *a4;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_8A51A0(0, *(v69 + 2) + 1, 1, v69);
      *a4 = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    v4 = a3;
    if (v72 >= v71 >> 1)
    {
      *a4 = sub_8A51A0((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *a4;
    *(v73 + 2) = v72 + 1;
    v74 = &v73[88 * v72];
    *(v74 + 4) = v60;
    *(v74 + 5) = v59;
    *(v74 + 6) = 0;
    *(v74 + 7) = 0;
    *(v74 + 8) = 0;
    *(v74 + 9) = v53;
    *(v74 + 5) = xmmword_AF82C0;
    *(v74 + 12) = 0;
    *(v74 + 13) = 0;
    v74[112] = v68;
  }

  v75 = type metadata accessor for SymbolButton.Configuration(0);
  v76 = *(v75 + 40);
  v77 = *(a1 + v76);
  v78 = a2 + v76;
  v79 = *(a2 + v76);
  if (v77)
  {
    if (v77 == v79)
    {
      goto LABEL_47;
    }

    if (!v79)
    {
      v153 = v75;
      v80 = 0;
      v151 = 1;
      goto LABEL_26;
    }
  }

  else if (!v79)
  {
    goto LABEL_47;
  }

  v153 = v75;
  v81 = v79;
  v151 = 0;
  v80 = v79;
LABEL_26:
  v82 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v83 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v80;
  v84 = v80;

  v85 = a3;
  if (v80)
  {
    v86 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v86 isDescendantOfView:v86])
    {
      [v86 insertSubview:v84 aboveSubview:v86];
    }

    else
    {

      if (([v84 isDescendantOfView:v86] & 1) == 0)
      {
        [v86 addSubview:v84];
      }
    }

    v85 = a3;
    sub_8982F0();
  }

  v87 = *&v85[v82];
  if (v87)
  {
    [v87 setAlpha:0.0];
  }

  sub_8982F0();
  [*&v85[v82] layoutIfNeeded];
  if ((v151 & 1) == 0)
  {
    v89 = v79;
    if (v79)
    {
      v88 = *(v78 + 5);
      if (v77)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v88 = 0;
      if (v77)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v91 = 0;
    goto LABEL_42;
  }

  v79 = 0;
  v88 = 0;
  if (!v77)
  {
    goto LABEL_41;
  }

LABEL_39:
  v90 = v77;
  v91 = 1;
LABEL_42:
  v92 = *a4;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v92;
  if ((v93 & 1) == 0)
  {
    v92 = sub_8A51A0(0, *(v92 + 2) + 1, 1, v92);
    *a4 = v92;
  }

  v95 = *(v92 + 2);
  v94 = *(v92 + 3);
  if (v95 >= v94 >> 1)
  {
    v92 = sub_8A51A0((v94 > 1), v95 + 1, 1, v92);
    *a4 = v92;
  }

  *(v92 + 2) = v95 + 1;
  v96 = &v92[88 * v95];
  *(v96 + 4) = v79;
  *(v96 + 5) = v88;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = 0;
  *(v96 + 9) = v77;
  *(v96 + 10) = 0;
  *(v96 + 11) = v91;
  *(v96 + 12) = 0;
  *(v96 + 13) = 0;
  v96[112] = 0;
  v4 = a3;
  v75 = v153;
LABEL_47:
  v97 = *(v75 + 44);
  v98 = *(a1 + v97 + 16);
  v99 = (a2 + v97);
  v100 = v99[2];
  if (v98 == 1)
  {
    if (v100 == &dword_0 + 1)
    {
      return;
    }

    v105 = *v99;
    v104 = v99[1];
    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = type metadata accessor for SymbolButton.BadgeView();
    v107 = objc_allocWithZone(v106);
    v152 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v108 = objc_allocWithZone(UIView);
    if (v102)
    {
      v109 = v102;
      sub_8A1B3C(v105, v104, v100);
      v110 = v105;
      v111 = [v108 init];
      v112 = objc_opt_self();
      v113 = [v112 blackColor];
      [v111 setBackgroundColor:v113];

      v114 = [v111 layer];
      [v114 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v111;
      v115 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v115 = v110;
      v115[1] = v104;
      v115[2] = v100;
      v158.receiver = v107;
      v158.super_class = v106;
      v116 = v100;
      v117 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v118 = v116;
      if (!v100)
      {
        v118 = [v112 tintColor];
      }

      v119 = v116;
      [v117 setBackgroundColor:v118];

      [v117 setAlpha:*&v104];
      [*(v117 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v104];
      sub_89C304();
      v120 = v110;
    }

    else
    {
      v150 = v100;
      v121 = [v108 init];
      v122 = v105;
      v123 = v121;
      v124 = objc_opt_self();
      v125 = [v124 blackColor];
      [v123 setBackgroundColor:v125];

      v126 = [v123 layer];
      [v126 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v123;
      v127 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v127 = v122;
      v127[1] = v104;
      v127[2] = v100;
      v157.receiver = v107;
      v157.super_class = v106;
      v128 = v150;
      v117 = objc_msgSendSuper2(&v157, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v129 = v128;
      if (!v100)
      {
        v129 = [v124 tintColor];
      }

      v130 = v128;
      [v117 setBackgroundColor:v129];

      [v117 setAlpha:*&v104];
      [*(v117 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v104];
      sub_89C304();
      sub_7AFD34(v122, v104, v100);
      v120 = v122;
    }

    v131 = *v101;
    *v101 = v117;
    v132 = v117;
    sub_89810C(v131);

    if (*v101)
    {
      [*v101 setAlpha:0.0];
      if (*v101)
      {
        v133 = *v101;
        v134 = [a3 traitCollection];
        v135 = [v134 userInterfaceIdiom];

        if (v135 == &dword_4 + 2)
        {
          v136 = 12.0;
        }

        else
        {
          v136 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v179);
        v180.origin.x = 0.0;
        v180.origin.y = 0.0;
        v180.size.width = v136;
        v180.size.height = v136;
        v138 = MaxX - CGRectGetWidth(v180) + 1.0;
        [a3 bounds];
        [v133 setFrame:{v138, CGRectGetMinY(v181) + -1.0, v136, v136}];
      }
    }

    sub_7AFD34(v120, v104, v100);
    v98 = 1;
  }

  else
  {
    if (v100 != &dword_0 + 1)
    {
      return;
    }

    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v103 = v102;
    sub_89810C(v102);

    v104 = 0;
  }

  v139 = *v101;
  if (*v101)
  {
    v140 = v104;
  }

  else
  {
    v140 = 0;
  }

  if (*v101)
  {
    v141 = v98 != 1;
  }

  else
  {
    v141 = 0;
  }

  v142 = *a4;
  v143 = v139;
  v144 = v102;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v142;
  if ((v145 & 1) == 0)
  {
    v142 = sub_8A51A0(0, *(v142 + 2) + 1, 1, v142);
    *a4 = v142;
  }

  v147 = *(v142 + 2);
  v146 = *(v142 + 3);
  if (v147 >= v146 >> 1)
  {
    *a4 = sub_8A51A0((v146 > 1), v147 + 1, 1, v142);
  }

  v148 = *a4;
  *(v148 + 2) = v147 + 1;
  v149 = &v148[88 * v147];
  *(v149 + 4) = v139;
  *(v149 + 5) = v140;
  *(v149 + 6) = v141;
  *(v149 + 7) = 0;
  *(v149 + 8) = 0;
  *(v149 + 9) = v102;
  *(v149 + 10) = 0;
  *(v149 + 11) = v102 != 0;
  *(v149 + 12) = 0;
  *(v149 + 13) = 0;
  v149[112] = 0;
}

void sub_892950(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v79 = a5;
  v9 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v66 - v12;
  v72 = objc_opt_self();
  sub_8A3C84(a2, v13, type metadata accessor for SymbolButton.Configuration);
  sub_8A3C84(a3, v11, type metadata accessor for SymbolButton.Configuration);
  v14 = *(v9 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v10 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_8A3CEC(v13, v17 + v15, type metadata accessor for SymbolButton.Configuration);
  sub_8A3CEC(v11, v17 + v16, type metadata accessor for SymbolButton.Configuration);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v85 = sub_8A41A8;
  v86 = v17;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_1B5EB4;
  v84 = &block_descriptor_255;
  v18 = _Block_copy(&aBlock);
  v19 = a1;
  v80 = a4;

  [v72 addKeyframeWithRelativeStartTime:v18 relativeDuration:0.0 animations:1.0];
  _Block_release(v18);
  v20 = *(v79 + 16);
  if (v20)
  {
    v21 = (v79 + 40);
    do
    {
      v22 = *(v21 - 1);
      if (v22)
      {
        v24 = v21[3];
        v23 = v21[4];
        v26 = *(v21 + 1);
        v25 = *(v21 + 2);
        v27 = *v21;
        v28 = swift_allocObject();
        v28[2] = v22;
        v28[3] = v27;
        v28[4] = v19;
        v85 = sub_C3964;
        v86 = v28;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_1B5EB4;
        v84 = &block_descriptor_261_0;
        v29 = _Block_copy(&aBlock);
        sub_307CC(v22, v27);
        v30 = v19;
        sub_307CC(v22, v27);
        sub_307CC(v24, v23);

        [v72 addKeyframeWithRelativeStartTime:v29 relativeDuration:v26 animations:v25];
        sub_17654(v24, v23);
        _Block_release(v29);
        sub_17654(v22, v27);
      }

      v21 += 6;
      --v20;
    }

    while (v20);
  }

  v31 = v80;
  swift_beginAccess();
  v32 = v31[2];
  v33 = *(v32 + 16);
  v67 = v32;

  v66 = v33;
  if (!v33)
  {
LABEL_28:

    return;
  }

  v34 = 0;
  v70 = &v83;
  v35 = v67 + 56;
  while (v34 < *(v67 + 16))
  {
    v46 = *(v35 - 24);
    v45 = *(v35 - 16);
    v47 = *(v35 - 8);
    v48 = *v35;
    v49 = *(v35 + 8);
    v50 = *(v35 + 16);
    v52 = *(v35 + 24);
    v51 = *(v35 + 32);
    v53 = *(v35 + 40);
    v79 = *(v35 + 48);
    v54 = *(v35 + 56);
    v80 = v46;
    if ((v46 == 0) | v47 & 1)
    {
      v55 = 1.0;
    }

    else
    {
      v55 = *&v45;
    }

    v78 = v50;
    v77 = v45;
    v76 = v51;
    v75 = v52;
    v74 = v47;
    v73 = v48;
    v71 = v54;
    if (v50)
    {
      v90 = v51 & 1;
      if (v54)
      {
        v56 = 1.0;
      }

      else
      {
        v56 = 0.5;
      }

      v68 = v49;
      v57 = v45;
      v58 = swift_allocObject();
      *(v58 + 16) = v50;
      *(v58 + 24) = v52;
      *(v58 + 32) = v90;
      *(v58 + 33) = *v89;
      *(v58 + 36) = *&v89[3];
      v59 = v79;
      *(v58 + 40) = v53;
      *(v58 + 48) = v59;
      v85 = sub_8A42C0;
      v86 = v58;
      aBlock = _NSConcreteStackBlock;
      v82 = 1107296256;
      v83 = sub_1B5EB4;
      v84 = &block_descriptor_273_1;
      v60 = _Block_copy(&aBlock);
      v69 = v34;
      v61 = v60;
      v62 = v48;
      v63 = v68;
      sub_8A3D9C(v80, v57, v47, v62, v68);
      sub_8A3D9C(v50, v52, v51, v53, v59);
      sub_8A3D9C(v50, v52, v51, v53, v59);
      v64 = v50;
      sub_307CC(v53, v59);

      [v72 addKeyframeWithRelativeStartTime:v61 relativeDuration:0.0 animations:v56];
      v65 = v61;
      v34 = v69;
      _Block_release(v65);

      sub_17654(v53, v59);
      if (v80)
      {
LABEL_8:
        v36 = v74;
        v88 = v74 & 1;
        if (v71)
        {
          v37 = 1.0;
        }

        else
        {
          v37 = 0.5;
        }

        if (v71)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = 0.5;
        }

        v39 = swift_allocObject();
        v40 = v80;
        v41 = v77;
        *(v39 + 16) = v80;
        *(v39 + 24) = v41;
        *(v39 + 32) = v88;
        *(v39 + 33) = *v87;
        *(v39 + 36) = *&v87[3];
        v42 = v73;
        *(v39 + 40) = v73;
        *(v39 + 48) = v63;
        *(v39 + 56) = v55;
        v85 = sub_8A4250;
        v86 = v39;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_1B5EB4;
        v84 = &block_descriptor_267_0;
        v43 = _Block_copy(&aBlock);
        sub_8A3D9C(v40, v41, v36, v42, v63);
        v44 = v40;
        sub_307CC(v42, v63);

        [v72 addKeyframeWithRelativeStartTime:v43 relativeDuration:v38 animations:v37];
        _Block_release(v43);

        sub_17654(v42, v63);
        goto LABEL_15;
      }
    }

    else
    {
      sub_8A3D9C(v80, v45, v47, v48, v49);
      sub_8A3D9C(0, v52, v51, v53, v79);
      v63 = v49;
      if (v80)
      {
        goto LABEL_8;
      }
    }

    v80 = 0;
    v41 = v77;
    v36 = v74;
    v42 = v73;
LABEL_15:
    ++v34;
    sub_8A3DE4(v80, v41, v36, v42, v63);
    sub_8A3DE4(v78, v75, v76, v53, v79);
    v35 += 88;
    if (v66 == v34)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_893150(char *a1, __int128 *a2, char **a3, uint64_t a4)
{
  v121 = a4;
  v122 = a1;
  v7 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v124 = &v119 - v8;
  v126 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SymbolButton.Metrics(0);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  sub_898ED8(v13);
  sub_8A1B6C(v13, type metadata accessor for SymbolButton.Metrics);
  sub_8A3C84(a2, v10, type metadata accessor for SymbolButton.Configuration);
  sub_898510(v10, v14, v13);
  v127 = v13;
  sub_899180(v13);
  v15 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v16 = *(a2 + 248);
  v135[0] = *(a2 + 232);
  v135[1] = v16;
  v135[2] = *(a2 + 264);
  v120 = v15;
  sub_89B0B4(v135);
  v125 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v17 = *(a2 + 25);
  v18 = *(a2 + 26);
  v19 = *(a2 + 27);
  v20 = *(a2 + 28);
  if (v18 == &dword_0 + 1)
  {
    v119 = *(a2 + 27);
    v123 = v17;
    if (qword_E16BF8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v21 = *(a2 + 25);
  v24 = *(a2 + 28);
  v25 = *(a2 + 26);
  v22 = v25;
  v23 = *(a2 + 27);
LABEL_5:
  sub_8A1AF4(v17, v18, v19, v20);
  sub_89B530(v22, v23, v24, v21);

  v26 = *(a3 + 17);
  v27 = *(a3 + 21);
  v7[31] = *(a3 + 19);
  v7[32] = v27;
  v28 = *(a3 + 23);
  v7[29] = *(a3 + 15);
  v7[30] = v26;
  v29 = *(a2 + 152);
  v7[35] = *(a2 + 136);
  v7[36] = v29;
  v30 = *(a2 + 184);
  v7[37] = *(a2 + 168);
  v7[38] = v30;
  v31 = *(a2 + 120);
  v7[33] = v28;
  v7[34] = v31;
  v32 = sub_8A0BB4(&v133, v134);
  v33 = v122;
  if ((v32 & 1) == 0)
  {
    v34 = sub_898004();
    v35 = *(a2 + 136);
    v7[24] = *(a2 + 120);
    v7[25] = v35;
    v36 = *(a2 + 168);
    v7[26] = *(a2 + 152);
    v7[27] = v36;
    v7[28] = *(a2 + 184);
    v37 = v132[0];
    v38 = v132[1];
    sub_89BD50(v132);

    if (v38)
    {
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = sub_AB9260();
        [v33 setAccessibilityLabel:v40];
      }
    }
  }

  v41 = *(a3 + 5);
  v7[12] = *(a3 + 4);
  v7[13] = v41;
  v7[14] = *(a3 + 6);
  v130[14] = a3[14];
  v42 = *(a3 + 1);
  v7[8] = *a3;
  v7[9] = v42;
  v43 = *(a3 + 3);
  v7[10] = *(a3 + 2);
  v7[11] = v43;
  v44 = *a2;
  v45 = a2[1];
  v46 = a2[3];
  v7[18] = a2[2];
  v7[19] = v46;
  v7[16] = v44;
  v7[17] = v45;
  v47 = a2[4];
  v48 = a2[5];
  v49 = a2[6];
  v131[14] = *(a2 + 14);
  v7[21] = v48;
  v7[22] = v49;
  v7[20] = v47;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v130, v131))
  {
    v50 = sub_897E8C();
    v51 = a2[5];
    v7[4] = a2[4];
    v7[5] = v51;
    v7[6] = a2[6];
    v129 = *(a2 + 14);
    v52 = a2[1];
    v128[0] = *a2;
    v128[1] = v52;
    v53 = a2[3];
    v128[2] = a2[2];
    v128[3] = v53;
    sub_89B984(v128);
  }

  v54 = *(v126 + 11);
  v55 = (a2 + v54);
  v56 = *(a2 + v54 + 16);
  if (v56 != &dword_0 + 1 && *(a3 + v54 + 16) != &dword_0 + 1)
  {
    v57 = *&v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    if (v57)
    {
      v58 = *v55;
      a3 = v55[1];
      if (v56)
      {
        v59 = v57;
        v60 = v56;
        v61 = v56;
      }

      else
      {
        v62 = objc_opt_self();
        v63 = v57;
        sub_8A1B3C(v58, a3, 0);
        v61 = [v62 tintColor];
        v60 = 0;
      }

      sub_8A1B3C(v58, a3, v56);
      v64 = v60;
      [v57 setBackgroundColor:v61];

      [v57 setAlpha:*&a3];
      [*&v57[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&a3];
      sub_89C304();
      sub_7AFD34(v58, a3, v56);
    }
  }

  v65 = [v120 contentView];
  v66 = *(a2 + 35);
  v18 = *(a2 + 36);
  v7 = *(a2 + 37);
  v67 = v7;
  UIView.border.setter(v66, v18, v7);

  [v33 setAlpha:*(a2 + *(v126 + 17))];
  v68 = v127;
  sub_898ED8(v127);
  sub_89A320(v68);
  sub_8A1B6C(v68, type metadata accessor for SymbolButton.Metrics);
  v69 = [v33 superview];
  [v69 layoutIfNeeded];

  [v33 layoutIfNeeded];
  if (v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] == 1)
  {
    v119 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    v70 = v120;
    [v120 _setAllowsGroupFiltering:1];
    v71 = [v70 contentView];
    v72 = [v71 subviews];

    sub_13C80(0, &qword_E1E050, UIView_ptr);
    v73 = sub_AB9760();

    v127 = v73;
    if (v73 >> 62)
    {
      v20 = sub_ABB060();
    }

    else
    {
      v20 = *(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8));
    }

    a2 = v126;
    v125 = &v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    if (v20)
    {
      v74 = 0;
      v75 = v127 & 0xC000000000000001;
      v7 = (v127 & 0xFFFFFFFFFFFFFF8);
      a3 = &selRef_format;
      v123 = v127 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v75)
        {
          v76 = sub_ABAE20();
        }

        else
        {
          if (v74 >= *(v7 + 2))
          {
            goto LABEL_55;
          }

          v76 = *(v127 + 8 * v74 + 32);
        }

        v77 = v76;
        v18 = (v74 + 1);
        if (__OFADD__(v74, 1))
        {
          goto LABEL_54;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v77 a3[22]] & 1) == 0)
        {
          v78 = a3;
          v79 = *(v125 + *(a2 + 19));
          if (v79 == 2)
          {
            v80 = v125 + *(a2 + 9);
            v81 = v124;
            sub_15F84(v80, v124, &qword_E1DB50, &qword_B29E40);
            v82 = sub_ABA680();
            LOBYTE(v79) = (*(*(v82 - 8) + 48))(v81, 1, v82) != 1;
            v83 = v81;
            a2 = v126;
            v7 = v123;
            sub_12E1C(v83, &qword_E1DB50, &qword_B29E40);
          }

          [v77 setClipsToBounds:v79 & 1];
          a3 = v78;
        }

        ++v74;
      }

      while (v18 != v20);
    }

    v122[v119] = 0;
  }

  v84 = v121;
  swift_beginAccess();
  v85 = *(v84 + 16);
  v20 = *(v85 + 16);
  v122 = v85;

  v121 = v20;
  if (v20)
  {
    v18 = 0;
    v86 = v122 + 56;
    do
    {
      if (v18 >= *(v122 + 2))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_3:
        swift_beginAccess();
        v21 = *&static SymbolButton.Background.clear;
        v22 = qword_E73E18;
        v23 = qword_E73E20;
        v24 = qword_E73E28;

        v25 = v22;
        v17 = v123;
        v19 = v119;
        goto LABEL_5;
      }

      v92 = *(v86 - 3);
      v91 = *(v86 - 2);
      v93 = *(v86 - 1);
      a3 = *v86;
      v94 = *(v86 + 1);
      v95 = *(v86 + 2);
      v96 = *(v86 + 3);
      v20 = *(v86 + 4);
      v126 = v94;
      v127 = v96;
      v97 = *(v86 + 5);
      v7 = *(v86 + 6);
      v124 = v93;
      v125 = a3;
      v123 = v91;
      if (v92)
      {
        if (a3)
        {
          sub_8A3D9C(v92, v91, v93, a3, v94);
          sub_8A3D9C(v95, v127, v20, v97, v7);
          v98 = [v120 contentView];
          v119 = v7;
          v99 = v20;
          v100 = v98;
          [v98 bounds];
          v102 = v101;
          v104 = v103;
          v106 = v105;
          v108 = v107;

          a2 = v97;
          (a3)(v102, v104, v106, v108);
          v20 = v99;
          v7 = v119;
          [v92 setFrame:?];
          if (!v95)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_8A3D9C(v92, v91, v93, 0, v94);
          a2 = v97;
          sub_8A3D9C(v95, v127, v20, v97, v7);
          if (!v95)
          {
LABEL_38:
            sub_8A3DE4(v92, v123, v124, v125, v126);
            v87 = 0;
            v88 = v127;
            v89 = v20;
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_8A3D9C(0, v91, v93, a3, v94);
        sub_8A3D9C(v95, v127, v20, v97, v7);
        a2 = v97;
        if (!v95)
        {
          goto LABEL_38;
        }
      }

      if (!a2)
      {
        sub_8A3DE4(v92, v123, v124, v125, v126);
        v87 = v95;
        v88 = v127;
        v89 = v20;
        v90 = 0;
        goto LABEL_40;
      }

      v109 = v20;
      v110 = [v120 contentView];
      [v110 bounds];
      v112 = v111;
      v114 = v113;
      v116 = v115;
      v118 = v117;

      v20 = v7;
      (a2)(v112, v114, v116, v118);
      [v95 setFrame:?];
      sub_8A3DE4(v92, v123, v124, v125, v126);
      v87 = v95;
      v88 = v127;
      v89 = v109;
LABEL_39:
      v90 = a2;
LABEL_40:
      sub_8A3DE4(v87, v88, v89, v90, v7);
      ++v18;
      v86 += 88;
    }

    while (v121 != v18);
  }
}

uint64_t *SymbolButton.Background.clear.unsafeMutableAddressor()
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.clear;
}

void sub_893C84(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  v44 = v8;

  v43 = v9;
  if (v9)
  {
    v10 = 0;
    v6 = (v44 + 56);
    while (v10 < *(v44 + 16))
    {
      v11 = v6[2];
      if (v11)
      {
        v13 = *(v6 - 1);
        v12 = *v6;
        v14 = v6[1];
        v16 = v6[3];
        v15 = v6[4];
        v17 = v6[5];
        v18 = v6[6];
        v45 = *(v6 - 2);
        v46 = *(v6 - 3);
        sub_8A3D9C(v46, v45, v13, *v6, v14);
        sub_8A3D9C(v11, v16, v15, v17, v18);
        if ([v11 isDescendantOfView:a3])
        {
          [v11 removeFromSuperview];
        }

        sub_8A3DE4(v46, v45, v13, v12, v14);
        sub_8A3DE4(v11, v16, v15, v17, v18);
      }

      ++v10;
      v6 += 11;
      if (v43 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_9:

  v10 = a3;
  v19 = *(a4 + 16);
  if (v19)
  {
    v20 = (a4 + 72);
    do
    {
      v21 = *(v20 - 1);
      if (v21)
      {
        v22 = *v20;
        v24 = *(v20 - 5);
        v23 = *(v20 - 4);
        sub_307CC(v24, v23);
        sub_307CC(v21, v22);
        v21(a3);
        sub_17654(v24, v23);
        sub_17654(v21, v22);
      }

      v20 += 6;
      --v19;
    }

    while (v19);
  }

  v25 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v26 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v26;
  v6 = a6;
  if (v26 != v25)
  {
    sub_899E58();
  }

  if (qword_E16908 != -1)
  {
    goto LABEL_26;
  }

LABEL_18:
  v27 = sub_AB4BC0();
  __swift_project_value_buffer(v27, qword_E73898);
  v28 = v10;

  v29 = sub_AB4BA0();
  v30 = sub_AB9F20();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v31 = 136446466;
    v32 = &v28[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v33 = v32[1];
    if (v33)
    {
      v34 = *v32;
      v35 = v33;
    }

    else
    {
      v36 = [v28 description];
      v34 = sub_AB92A0();
      v35 = v37;
    }

    v38 = sub_7AB3E0(v34, v35, &v47);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_7AB3E0(a5, v6, &v47);
    _os_log_impl(&dword_0, v29, v30, "[%{public}s] UpdateID=%{public}s — Updated ✅", v31, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t SymbolButton.Configuration.background.getter()
{
  v1 = *(v0 + 200);
  sub_8A1AF4(v1, *(v0 + 208), *(v0 + 216), *(v0 + 224));
  return v1;
}

void SymbolButton.Configuration.background.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3F9D0(*(v4 + 200), *(v4 + 208), *(v4 + 216), *(v4 + 224));
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 216) = a3;
  *(v4 + 224) = a4;
}

uint64_t SymbolButton.Configuration.border.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);
  return v1;
}

void SymbolButton.Configuration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
  *(v3 + 296) = a3;
}

uint64_t SymbolButton.Configuration.badge.getter()
{
  v1 = v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  v2 = *v1;
  sub_8A1B3C(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void SymbolButton.Configuration.badge.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  sub_7AFD34(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t SymbolButton.Configuration.symbolToTextSpacing.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SymbolButton.Configuration.minimumSize.setter(double a1, double a2)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SymbolButton.Configuration.maximumImageSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v8 = v3 + *(result + 56);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t SymbolButton.Configuration.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v10 = (v4 + *(result + 60));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SymbolButton.Configuration.accessibility.getter()
{
  v1 = (v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 64));
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = v3;
  return v2;
}

void SymbolButton.Configuration.accessibility.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

UIContentSizeCategory sub_8948E4()
{
  static SymbolButton.Configuration.Accessibility.forBarButtonItem = 1;
  qword_E73DF8 = UIContentSizeCategoryLarge;
  unk_E73E00 = UIContentSizeCategoryExtraLarge;
  byte_E73E08 = 1;
  v0 = UIContentSizeCategoryLarge;

  return UIContentSizeCategoryExtraLarge;
}

char *SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor()
{
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Configuration.Accessibility.forBarButtonItem;
}

uint64_t static SymbolButton.Configuration.Accessibility.forBarButtonItem.getter()
{
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v0 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v1 = unk_E73E00;
  v2 = qword_E73DF8;
  v3 = v1;
  return v0;
}

uint64_t SymbolButton.Configuration.alpha.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

void *SymbolButton.Configuration.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 72));
  v2 = v1;
  return v1;
}

void SymbolButton.Configuration.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolButton.Configuration(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t SymbolButton.Configuration.shouldClipToBounds.setter(char a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void SymbolButton.Configuration.init()(uint64_t a1@<X8>)
{
  HIBYTE(v30) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_B283E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 81) = v30;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  v2 = UIFontTextStyleSubheadline;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v4 = v3[9];
  v5 = sub_ABA680();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[10];
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v7 = (a1 + v3[11]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 1;
  *(a1 + v3[12]) = 0x4010000000000000;
  *(a1 + v3[13]) = vdupq_n_s64(0x4040000000000000uLL);
  v8 = a1 + v3[14];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = (a1 + v3[15]);
  v10 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v9 = *&NSDirectionalEdgeInsetsZero.top;
  v9[1] = v10;
  v11 = a1 + v3[16];
  *v11 = 1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a1 + v3[17]) = 0x3FF0000000000000;
  *(a1 + v3[18]) = 0;
  *(a1 + v3[19]) = 2;
  v12 = qword_E16C28;
  v13 = v2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_E73EB8;
  *(a1 + 200) = static SymbolButton.Background.normal;
  v28 = qword_E73EA8;
  *(a1 + 208) = *&qword_E73EA8;
  *(a1 + 224) = v14;
  v15 = objc_opt_self();

  v16 = v28;
  v17 = [v15 currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == &dword_4 + 2)
  {
    if (qword_E16C38 != -1)
    {
      swift_once();
    }

    v19 = static SymbolButton.Material.xr;
    v20 = qword_E73EE8;
    v21 = qword_E73EF0;
    v29 = qword_E73EF0;
    v22 = byte_E73EF8;
    v24 = qword_E73F00;
    v23 = unk_E73F08;
    *(a1 + 232) = static SymbolButton.Material.xr;
    *(a1 + 240) = v20;
    *(a1 + 248) = v21;
    *(a1 + 256) = v22;
    *(a1 + 264) = v24;
    *(a1 + 272) = v23;

    v25 = v19;
    v26 = v20;

    v27 = v29;
  }
}

uint64_t *SymbolButton.Material.xr.unsafeMutableAddressor()
{
  if (qword_E16C38 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Material.xr;
}

uint64_t SymbolButton.Symbol.offset.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 64) = result;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

void *SymbolButton.Symbol.tint.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

BOOL sub_895008(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

BOOL sub_8950B4(_OWORD *a1, __int128 *a2)
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
  return _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

id sub_895158()
{
  result = [objc_opt_self() clearColor];
  static SymbolButton.Background.clear = 0x3FF0000000000000;
  qword_E73E18 = result;
  qword_E73E20 = 0;
  qword_E73E28 = 0;
  return result;
}

uint64_t static SymbolButton.Background.clear.getter()
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_E73E18;
  v1 = qword_E73E18;

  return v0;
}

void static SymbolButton.Background.clear.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_E73E18;
  static SymbolButton.Background.clear = *&a4;
  qword_E73E18 = a1;
  qword_E73E20 = a2;
  qword_E73E28 = a3;
}

uint64_t (*static SymbolButton.Background.clear.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void SymbolButton.Material.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

BOOL sub_8953CC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

void SyncedLyricsViewController.BottomViewMetadata.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void *SymbolButton.CustomView.tint.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *static SymbolButton.CustomView.with(_:configurator:)@<X0>(void *result@<X0>, uint64_t (*a2)(void **)@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v11 = result;
    v5 = *&UIEdgeInsetsZero.bottom;
    v12 = *&UIEdgeInsetsZero.top;
    v13 = v5;
    v14 = 0x3FF0000000000000uLL;
    v6 = result;
    result = a2(&v11);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  return result;
}

uint64_t sub_8954F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t static SymbolButton.Badge.with(_:)(void (*a1)(__int128 *))
{
  v2 = xmmword_B283F0;
  v3 = 0;
  a1(&v2);
  return v3;
}

Swift::Void __swiftcall SymbolButton.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_ABA620();
  v139 = *(v140 - 8);
  __chkstk_darwin();
  v138 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v8 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v137 - v9;
  __chkstk_darwin();
  v12 = &v137 - v11;
  v13 = type metadata accessor for SymbolButton(0);
  v150.receiver = v0;
  v150.super_class = v13;
  objc_msgSendSuper2(&v150, "layoutSubviews");
  v14 = *&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView] bounds];
  [v14 setFrame:?];
  v15 = [v14 contentView];
  [v15 bounds];
  v17 = v16;

  sub_898ED8(v12);
  v18 = *&v12[v6[12] + 16];
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 contentHorizontalAlignment];
  v141 = v2;
  v149 = v17;
  if ([v1 contentVerticalAlignment] == &dword_0 + 2)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  sub_ABA4B0();
  v144 = v20;
  v22 = v21;
  v146 = v23;
  v147 = v24;
  sub_8A1B6C(v12, type metadata accessor for SymbolButton.Metrics);
  sub_898ED8(v10);
  v25 = *&v10[v6[8]];
  sub_8A1B6C(v10, type metadata accessor for SymbolButton.Metrics);
  v26 = sub_897E8C();
  sub_898ED8(v8);
  v27 = &v8[v6[11]];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = v27[16];
  sub_8A1B6C(v8, type metadata accessor for SymbolButton.Metrics);
  if (v30)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v28;
  }

  if (v30)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v26 sizeThatFits:{v31, v32}];
  v149 = v33;
  v35 = v34;

  v36 = &v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
  swift_beginAccess();
  if (!*(v36 + 128) || (*(v36 + 184) & 1) != 0)
  {
    v43 = sub_898004();
    [v43 frame];
    v45 = v47;
    v143 = v48;
  }

  else
  {
    v37 = v144;
    v157.origin.x = v144;
    v157.origin.y = v22;
    v38 = v146;
    v157.size.width = v146;
    v39 = v147;
    v157.size.height = v147;
    Width = CGRectGetWidth(v157);
    v158.origin.x = 0.0;
    v158.origin.y = 0.0;
    v158.size.width = v149;
    v158.size.height = v35;
    v41 = Width - (v25 + CGRectGetWidth(v158));
    v159.origin.x = v37;
    v159.origin.y = v22;
    v159.size.width = v38;
    v159.size.height = v39;
    Height = CGRectGetHeight(v159);
    v43 = sub_898004();
    [v43 sizeThatFits:{v41, Height}];
    v45 = v44;
    v143 = v46;
  }

  v49 = &selRef__authenticateReturningError_;
  v50 = &selRef_createSharedSessionWithIdentity_intentHandler_;
  v142 = v25;
  v145 = v45;
  if (*(v36 + 8))
  {
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v51 = v149;
    v160.size.width = v149;
    v160.size.height = v35;
    v52 = CGRectGetWidth(v160) + 0.0;
    v161.origin.x = 0.0;
    v161.origin.y = 0.0;
    v161.size.height = 0.0;
    v161.size.width = v52;
    v53 = CGRectGetHeight(v161);
    v162.origin.x = 0.0;
    v162.origin.y = 0.0;
    v162.size.width = v51;
    v162.size.height = v35;
    v54 = CGRectGetHeight(v162);
    if (v53 <= v54)
    {
      v53 = v54;
    }
  }

  else
  {
    v52 = 0.0;
    v53 = 0.0;
  }

  v55 = v144;
  if (*(v36 + 128))
  {
    if ((*(v36 + 184) & 1) == 0)
    {
      v163.origin.x = 0.0;
      v163.origin.y = 0.0;
      v56 = v145;
      v163.size.width = v145;
      v57 = v143;
      v163.size.height = v143;
      v52 = v52 + CGRectGetWidth(v163);
      v164.origin.x = 0.0;
      v164.origin.y = 0.0;
      v164.size.width = v52;
      v164.size.height = v53;
      v53 = CGRectGetHeight(v164);
      v165.origin.x = 0.0;
      v165.origin.y = 0.0;
      v165.size.width = v56;
      v165.size.height = v57;
      v58 = CGRectGetHeight(v165);
      if (v53 <= v58)
      {
        v53 = v58;
      }
    }
  }

  v59 = *(v36 + 8);
  v148 = v35;
  if (v59 && *(v36 + 128) && !*(v36 + 184))
  {
    v52 = v142 + v52;
  }

  v60 = [v1 contentHorizontalAlignment];
  MinY = 0.0;
  MinX = 0.0;
  if (v60 <= 5)
  {
    if (((1 << v60) & 9) != 0)
    {
      v166.origin.x = v55;
      v166.origin.y = v22;
      v166.size.width = v146;
      v166.size.height = v147;
      CGRectGetMidX(v166);
      v167.origin.x = 0.0;
      v167.origin.y = 0.0;
      v167.size.width = v52;
      v167.size.height = v53;
      CGRectGetWidth(v167);
      v67 = [v1 traitCollection];
      [v67 displayScale];

      sub_AB3A00();
      MinX = v68;
    }

    else
    {
      v63 = v55;
      v64 = v22;
      v65 = v146;
      v66 = v147;
      if (((1 << v60) & 0x12) != 0)
      {
        MinX = CGRectGetMinX(*&v63);
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v63);
        v168.origin.x = 0.0;
        v168.origin.y = 0.0;
        v168.size.width = v52;
        v168.size.height = v53;
        MinX = MaxX - CGRectGetWidth(v168);
      }
    }
  }

  v70 = [v1 contentVerticalAlignment];
  if (v70 > 1)
  {
    if (v70 == &dword_0 + 2)
    {
      v174.origin.x = v55;
      v174.origin.y = v22;
      v174.size.width = v146;
      v174.size.height = v147;
      MaxY = CGRectGetMaxY(v174);
      v175.origin.y = 0.0;
      v175.origin.x = MinX;
      v175.size.width = v52;
      v175.size.height = v53;
      MinY = MaxY - CGRectGetHeight(v175);
    }

    else if (v70 == &dword_0 + 3)
    {
      v170.origin.x = v55;
      v170.origin.y = v22;
      v71 = v146;
      v170.size.width = v146;
      v72 = v147;
      v170.size.height = v147;
      MinY = CGRectGetMinY(v170);
      v171.origin.x = v55;
      v171.origin.y = v22;
      v171.size.width = v71;
      v171.size.height = v72;
      v53 = CGRectGetHeight(v171);
    }
  }

  else if (v70)
  {
    if (v70 == &dword_0 + 1)
    {
      v169.origin.x = v55;
      v169.origin.y = v22;
      v169.size.width = v146;
      v169.size.height = v147;
      MinY = CGRectGetMinY(v169);
    }
  }

  else
  {
    v172.origin.x = v55;
    v172.origin.y = v22;
    v172.size.width = v146;
    v172.size.height = v147;
    CGRectGetMidY(v172);
    v173.origin.y = 0.0;
    v173.origin.x = MinX;
    v173.size.width = v52;
    v173.size.height = v53;
    CGRectGetHeight(v173);
    v73 = [v1 traitCollection];
    [v73 displayScale];

    sub_AB3A00();
    MinY = v74;
  }

  v76 = MinX;
  if (*(v36 + 8))
  {
    v176.origin.x = MinX;
    v176.origin.y = MinY;
    v176.size.width = v149;
    v176.size.height = v148;
    v76 = v142 + CGRectGetMaxX(v176);
  }

  v77 = [v1 contentVerticalAlignment];
  if (v77 == &dword_0 + 3)
  {
    v181.origin.x = MinX;
    v181.origin.y = MinY;
    v181.size.width = v52;
    v181.size.height = v53;
    v148 = CGRectGetHeight(v181);
    v182.origin.x = MinX;
    v182.origin.y = MinY;
    v182.size.width = v52;
    v182.size.height = v53;
    v82 = CGRectGetHeight(v182);
    v80 = MinY;
    v81 = v145;
  }

  else if (v77)
  {
    v80 = MinY;
    v81 = v145;
    v82 = v143;
  }

  else
  {
    v177.origin.x = MinX;
    v177.origin.y = MinY;
    v177.size.width = v52;
    v177.size.height = v53;
    CGRectGetMidY(v177);
    v178.origin.x = MinX;
    v178.origin.y = MinY;
    v178.size.width = v149;
    v178.size.height = v148;
    CGRectGetHeight(v178);
    v78 = [v1 traitCollection];
    [v78 displayScale];

    sub_AB3A00();
    v80 = v79;
    v179.origin.x = MinX;
    v179.origin.y = MinY;
    v179.size.width = v52;
    v179.size.height = v53;
    CGRectGetMidY(v179);
    v180.origin.x = v76;
    v180.origin.y = MinY;
    v81 = v145;
    v180.size.width = v145;
    v82 = v143;
    v180.size.height = v143;
    CGRectGetHeight(v180);
    v50 = &selRef_createSharedSessionWithIdentity_intentHandler_;
    v83 = [v1 traitCollection];
    [v83 displayScale];

    sub_AB3A00();
    MinY = v84;
  }

  v85 = sub_898004();
  if ([v1 v50[499]] == &dword_4 || objc_msgSend(v1, v50[499]) == &dword_4 + 1)
  {
    v154 = 0u;
    v155 = 0u;
    v156 = 1;
    sub_ABA480();
    v76 = v86;
    MinY = v87;
    v81 = v88;
    v82 = v89;
  }

  [v85 setFrame:{v76, MinY, v81, v82}];

  if (*(v36 + 128))
  {
    if ((*(v36 + 184) & 1) == 0)
    {
      v90 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] image];
      if (v90)
      {
        v91 = v90;
        sub_898ED8(v10);
        v92 = *&v10[v6[7]];
        sub_8A1B6C(v10, type metadata accessor for SymbolButton.Metrics);
        v93 = [v91 imageByApplyingSymbolConfiguration:v92];

        if (v93)
        {
          sub_ABA750();
          v49 = &selRef__authenticateReturningError_;
          if ((v94 & 1) == 0)
          {
            v95 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
            [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] frame];
            CGRectGetMinY(v183);
            [*&v1[v95] _firstLineBaseline];
            v184.origin.x = MinX;
            v184.origin.y = v80;
            v184.size.width = v149;
            v184.size.height = v148;
            CGRectGetHeight(v184);
          }
        }

        else
        {
          v49 = &selRef__authenticateReturningError_;
        }

        v50 = &selRef_createSharedSessionWithIdentity_intentHandler_;
      }
    }
  }

  sub_898ED8(v10);
  sub_8A1B6C(v10, type metadata accessor for SymbolButton.Metrics);
  sub_ABA4E0();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
  if ([v1 v50[499]] == &dword_4 || objc_msgSend(v1, v50[499]) == &dword_4 + 1)
  {
    v151 = 0u;
    v152 = 0u;
    v153 = 1;
    sub_ABA480();
  }

  else
  {
    v105 = v97;
    v106 = v99;
    v107 = v101;
    v108 = v103;
  }

  v109 = v141;
  [v104 v49[262]];

  sub_8982F0();
  v110 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (v110)
  {
    v111 = v110;
    v112 = [v1 traitCollection];
    v113 = [v112 userInterfaceIdiom];

    v114 = v113 == &dword_4 + 2;
    v49 = &selRef__authenticateReturningError_;
    if (v114)
    {
      v115 = 12.0;
    }

    else
    {
      v115 = 8.0;
    }

    [v1 bounds];
    v116 = CGRectGetMaxX(v185);
    v186.origin.x = 0.0;
    v186.origin.y = 0.0;
    v186.size.width = v115;
    v186.size.height = v115;
    v117 = v116 - CGRectGetWidth(v186) + 1.0;
    [v1 bounds];
    [v111 setFrame:{v117, CGRectGetMinY(v187) + -1.0, v115, v115}];
  }

  v118 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v119 = [v14 contentView];
  [v119 bounds];
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;

  [v118 v49[262]];
  sub_8A3C84(v36, v4, type metadata accessor for SymbolButton.Configuration);
  v128 = *(v109 + 36);
  v129 = sub_ABA680();
  if ((*(*(v129 - 8) + 48))(&v4[v128], 1, v129))
  {
    v130 = type metadata accessor for SymbolButton.Configuration;
    v131 = v4;
  }

  else
  {
    v132 = v138;
    sub_ABA650();
    sub_8A1B6C(v4, type metadata accessor for SymbolButton.Configuration);
    v133 = v139;
    v134 = v140;
    v135 = (*(v139 + 88))(v132, v140);
    v136 = enum case for UIView.Corner.Radius.rounded(_:);
    (*(v133 + 8))(v132, v134);
    if (v135 != v136)
    {
      return;
    }

    sub_898ED8(v10);
    sub_89A320(v10);
    v130 = type metadata accessor for SymbolButton.Metrics;
    v131 = v10;
  }

  sub_8A1B6C(v131, v130);
}

Swift::Void __swiftcall SymbolButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400);
  __chkstk_darwin();
  v12 = &v16 - v11;
  v13 = type metadata accessor for SymbolButton(0);
  v17.receiver = v1;
  v17.super_class = v13;
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", isa);
  (*(v6 + 56))(v12, 1, 1, v5);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v12, 0, 0, 0, 1);
  sub_12E1C(v12, &qword_E1D170, &unk_B32400);
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v1 + v14, v10, type metadata accessor for SymbolButton.Configuration);
  v15 = [v1 traitCollection];
  sub_898ED8(v4);
  sub_8A1B6C(v4, type metadata accessor for SymbolButton.Metrics);
  sub_8A3C84(v10, v8, type metadata accessor for SymbolButton.Configuration);
  sub_898510(v8, v15, v4);
  sub_8A1B6C(v10, type metadata accessor for SymbolButton.Configuration);
  sub_899180(v4);
}

double SymbolButton.intrinsicContentSize.getter()
{
  v1 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v32 - v4;
  __chkstk_darwin();
  v7 = &v32 - v6;
  __chkstk_darwin();
  v9 = &v32 - v8;
  sub_898ED8(&v32 - v8);
  sub_8A1B6C(v9, type metadata accessor for SymbolButton.Metrics);
  sub_ABA3C0();
  v11 = v10;
  sub_898ED8(v9);
  sub_8A1B6C(v9, type metadata accessor for SymbolButton.Metrics);
  sub_ABA3D0();
  v12 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  if (!*(v12 + 8))
  {
    v20 = 0.0;
    if (!*(v12 + 128))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_898ED8(v7);
  v13 = &v7[v1[11]];
  v14 = *v13;
  v15 = v13[16];
  sub_8A1B6C(v7, type metadata accessor for SymbolButton.Metrics);
  v16 = sub_897E8C();
  [v16 intrinsicContentSize];
  v18 = v17;

  if (v14 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  if (v15)
  {
    v19 = v18;
  }

  v20 = v19 + 0.0;
  if (*(v12 + 128))
  {
LABEL_10:
    if ((*(v12 + 184) & 1) == 0)
    {
      v21 = sub_898004();
      [v21 intrinsicContentSize];
      v23 = v22;

      v20 = v20 + v23;
    }
  }

LABEL_12:
  if (*(v12 + 8) && *(v12 + 128) && (*(v12 + 184) & 1) == 0)
  {
    sub_898ED8(v9);
    v24 = *&v9[v1[8]];
    sub_8A1B6C(v9, type metadata accessor for SymbolButton.Metrics);
    v20 = v20 + v24;
  }

  v25 = *(v12 + *(type metadata accessor for SymbolButton.Configuration(0) + 40));
  if (v25)
  {
    [v25 intrinsicContentSize];
    if (v26 > v20)
    {
      v20 = v26;
    }
  }

  v27 = v11 + 0.0;
  sub_898ED8(v5);
  v28 = *&v5[v1[10]];
  sub_8A1B6C(v5, type metadata accessor for SymbolButton.Metrics);
  if (v20 > v28)
  {
    v29 = v20;
  }

  else
  {
    v29 = v28;
  }

  v30 = v27 + v29;
  sub_898ED8(v3);
  sub_8A1B6C(v3, type metadata accessor for SymbolButton.Metrics);
  return v30;
}

Swift::Void __swiftcall SymbolButton.tintColorDidChange()()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for SymbolButton(0);
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "tintColorDidChange");
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v0 + v4, v2, type metadata accessor for SymbolButton.Configuration);
  sub_8993E0(v2);
  sub_8A1B6C(v2, type metadata accessor for SymbolButton.Configuration);
}

double SymbolButton.hitRectMinimumSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize;
  swift_beginAccess();
  return *v1;
}

void SymbolButton.hitRectMinimumSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double SymbolButton.hitRect()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v15, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize];
  swift_beginAccess();
  v10 = *v9;
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  Width = CGRectGetWidth(v16);
  if (Width > v10)
  {
    v10 = Width;
  }

  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  CGRectGetHeight(v17);
  sub_ABA4C0();
  v13 = v12 - v10 * 0.5;
  sub_ABA4C0();
  return v13;
}

id SymbolButton.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for SymbolButton(0);
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return sub_8972BC(v4);
}

id sub_8972BC(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &aBlock - v5;
  result = [v2 isHighlighted];
  if (result != v3)
  {
    v8 = [v2 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == &dword_4 + 2)
    {
      v10 = objc_opt_self();
      if ([v10 areAnimationsEnabled])
      {
        if ([v2 isHighlighted])
        {
          v11 = swift_allocObject();
          *(v11 + 16) = v2;
          v28 = sub_8A3C54;
          v29 = v11;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_1B5EB4;
          v27 = &block_descriptor_239;
          v12 = _Block_copy(&aBlock);
          v13 = v2;

          v14 = swift_allocObject();
          *(v14 + 16) = v13;
          v28 = sub_8A3C7C;
          v29 = v14;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_1811AC;
          v27 = &block_descriptor_245_0;
          v15 = _Block_copy(&aBlock);
          v16 = v13;

          [v10 animateWithDuration:0x20000 delay:v12 options:v15 animations:0.1 completion:0.0];
          _Block_release(v15);
          _Block_release(v12);
        }

        else
        {
          sub_13C80(0, &qword_E1E050, UIView_ptr);
          sub_13C80(0, &qword_E1E078, UISpringTimingParameters_ptr);
          v17 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
          v18 = swift_allocObject();
          *(v18 + 16) = v2;
          v19 = v2;
          static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v17, 0, sub_8A3C34, v18, 0, 0, 0.0);
        }
      }
    }

    v20 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = [objc_opt_self() areAnimationsEnabled];
    if (v21)
    {
      v22 = 0x3FD0000000000000;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 3075;
    }

    else
    {
      v23 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, v22, 0, v23, v21 ^ 1);
    return sub_12E1C(v6, &qword_E1D170, &unk_B32400);
  }

  return result;
}

id sub_897668(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_8976C8(int a1, id a2)
{
  if ([a2 showsMenuAsPrimaryAction] && objc_msgSend(a2, "isContextMenuInteractionEnabled"))
  {
    sub_13C80(0, &qword_E1E050, UIView_ptr);
    sub_13C80(0, &qword_E1E078, UISpringTimingParameters_ptr);
    v5 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
    v3 = swift_allocObject();
    *(v3 + 16) = a2;
    v4 = a2;
    static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v5, 0, sub_8A4584, v3, 0, 0, 0.0);
  }
}

id sub_897818(void *a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v6.receiver = a1;
  v6.super_class = (a3)(0, a2);
  return objc_msgSendSuper2(&v6, *a4);
}

id sub_89786C(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_8979A8(char a1, SEL *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = type metadata accessor for SymbolButton(0);
  v17.receiver = v3;
  v17.super_class = v9;
  v10 = objc_msgSendSuper2(&v17, *a2);
  v16.receiver = v3;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a3, a1 & 1);
  result = [v3 *a2];
  if (v10 != result)
  {
    v12 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = [objc_opt_self() areAnimationsEnabled];
    if (v13)
    {
      v14 = 0x3FD0000000000000;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = 3075;
    }

    else
    {
      v15 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v8, v14, 0, v15, v13 ^ 1);
    return sub_12E1C(v8, &qword_E1D170, &unk_B32400);
  }

  return result;
}

Swift::Void __swiftcall SymbolButton.setEnabled(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (animated)
  {

    [v2 setEnabled:_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = _;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_8A1C04;
    *(v6 + 24) = v5;
    v10[4] = sub_710F8;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1822E0;
    v10[3] = &block_descriptor_43_12;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_897CE0(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_897D68(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_897E8C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 80);
    v18[4] = *(v5 + 64);
    v18[5] = v6;
    v18[6] = *(v5 + 96);
    v19 = *(v5 + 112);
    v7 = *(v5 + 16);
    v18[0] = *v5;
    v18[1] = v7;
    v8 = *(v5 + 48);
    v18[2] = *(v5 + 32);
    v18[3] = v8;
    v9 = type metadata accessor for SymbolButton.ImageView();
    v10 = objc_allocWithZone(v9);
    sub_8A1A14(v18, v17);
    v16.receiver = v10;
    v16.super_class = v9;
    v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v11 setContentMode:4];
    sub_89B984(v18);
    sub_878C88(v18);

    v12 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v11 isDescendantOfView:v12] & 1) == 0)
    {
      [v12 addSubview:v11];
    }

    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_898004()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 136);
    v7 = *(v5 + 168);
    v15[2] = *(v5 + 152);
    v15[3] = v7;
    v15[4] = *(v5 + 184);
    v15[0] = *(v5 + 120);
    v15[1] = v6;
    v8 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_8A1A84(v15, v14);
    v9 = sub_89BBC8(v15);
    v10 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v9 isDescendantOfView:v10] & 1) == 0)
    {
      [v10 addSubview:v9];
    }

    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_89810C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeFromSuperview];
    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton.BadgeView();
    v6 = v5;
    v3 = v3;
    v7 = sub_ABA790();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v17 = v5;
  [v8 insertSubview:? aboveSubview:?];
  v9 = *&v2[v4];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == &dword_4 + 2)
    {
      v13 = 12.0;
    }

    else
    {
      v13 = 8.0;
    }

    [v2 bounds];
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v13;
    v20.size.height = v13;
    v15 = MaxX - CGRectGetWidth(v20) + 1.0;
    [v2 bounds];
    [v10 setFrame:{v15, CGRectGetMinY(v21) + -1.0, v13, v13}];

    v16 = v10;
  }

  else
  {
    v16 = v17;
  }
}

void sub_8982F0()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
    v6 = v4;
    v7 = [v5 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(v0 + v16, v3, type metadata accessor for SymbolButton.Configuration);
    v17 = &v3[*(v1 + 40)];
    if (*v17)
    {
      v18 = (v17 + 8);
    }

    else
    {
      v18 = &UIEdgeInsetsZero;
    }

    if (*v17)
    {
      p_left = (v17 + 16);
    }

    else
    {
      p_left = &UIEdgeInsetsZero.left;
    }

    v20 = *p_left;
    top = v18->top;
    sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
    [v6 setFrame:{UIEdgeInsetsInsetRect(v9, v11, v13, v15, top, v20)}];
  }
}

id sub_8984D4()
{
  result = [objc_opt_self() defaultMetrics];
  qword_E1DAF0 = result;
  return result;
}

void sub_898510(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v73 = &v72 - v6;
  v7 = type metadata accessor for SymbolButton.Metrics(0);
  v8 = v7[5];
  v9 = sub_ABA680();
  v10 = *(*(v9 - 8) + 56);
  v79 = v8;
  v10(&a3[v8], 1, 1, v9);
  v11 = &a3[v7[11]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v74 = v11;
  v11[16] = 1;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = (a1 + v12[16]);
  v75 = *v13;
  v78 = a2;
  if (v75 == 1)
  {
    v14 = [a2 preferredContentSizeCategory];
    v15 = *(v13 + 1);
    if (v15)
    {
      v16 = v15;
      v17 = sub_ABA350();
      if (v17)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      if (v17)
      {
        v14 = v16;
      }
    }

    v19 = *(v13 + 2);
    if (v19)
    {
      v20 = v19;
      if (sub_ABA340())
      {

        goto LABEL_15;
      }
    }

    v20 = v14;
  }

  else
  {
    v20 = UIContentSizeCategoryLarge;
  }

LABEL_15:
  v21 = objc_opt_self();
  v77 = v20;
  v22 = [v21 traitCollectionWithPreferredContentSizeCategory:v20];
  *a3 = v22;
  v23 = objc_opt_self();
  v24 = *(a1 + 136);
  v72 = v22;
  v25 = v22;
  v26 = [v23 preferredFontDescriptorWithTextStyle:v24 compatibleWithTraitCollection:v25];
  v27 = objc_opt_self();
  v76 = v26;
  [v26 pointSize];
  *&a3[v7[6]] = [v27 systemFontOfSize:? weight:?];
  if (*(a1 + 40))
  {
    v28 = [v23 preferredFontDescriptorWithTextStyle:*(a1 + 24) compatibleWithTraitCollection:v25];
    [v28 pointSize];
    v30 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:v29];
  }

  else
  {
    v30 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:*(a1 + 32)];
  }

  *&a3[v7[7]] = v30;
  *&a3[v7[8]] = *(a1 + v12[12]);
  v31 = *(a1 + 80);
  v32 = v78;
  if (v31 == 255)
  {
    *&a3[v7[9]] = UIOffsetZero;
    if (v75)
    {
      goto LABEL_23;
    }

LABEL_29:

    v64 = (a1 + v12[15]);
    v65 = &a3[v7[12]];
    v66 = v64[1];
    *v65 = *v64;
    *(v65 + 1) = v66;
    *&a3[v7[10]] = *(a1 + v12[13]);
    v67 = (a1 + v12[14]);
    LOBYTE(v65) = *(v67 + 16);
    v68 = *v67;
    v69 = v74;
    *v74 = v68;
    v69[16] = v65;
    v70 = v12[9];
    v71 = v79;
    sub_12E1C(&a3[v79], &qword_E1DB50, &qword_B29E40);
    sub_15F84(a1 + v70, &a3[v71], &qword_E1DB50, &qword_B29E40);
    sub_8A1B6C(a1, type metadata accessor for SymbolButton.Configuration);
    return;
  }

  v33 = *(a1 + 72);
  if ((v31 & 1) == 0)
  {
    [v78 displayScale];
    sub_ABA900();
    v61 = &a3[v7[9]];
    *v61 = v62;
    *(v61 + 1) = v63;
    if (v75)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v34 = &a3[v7[9]];
  *v34 = *(a1 + 64);
  *(v34 + 1) = v33;
  if (!v75)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (qword_E16C00 != -1)
  {
    swift_once();
  }

  v35 = qword_E1DAF0;
  v36 = (a1 + v12[15]);
  v37 = v36[1];
  v38 = v36[2];
  v39 = v36[3];
  [qword_E1DAF0 scaledValueForValue:v25 compatibleWithTraitCollection:*v36];
  v41 = v40;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v37];
  v43 = v42;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v38];
  v45 = v44;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v39];
  v46 = &a3[v7[12]];
  *v46 = v41;
  *(v46 + 1) = v43;
  *(v46 + 2) = v45;
  *(v46 + 3) = v47;
  v48 = (a1 + v12[13]);
  v49 = v48[1];
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:*v48];
  v51 = v50;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v49];
  v52 = &a3[v7[10]];
  *v52 = v51;
  *(v52 + 1) = v53;
  v54 = a1 + v12[14];
  if ((*(v54 + 16) & 1) == 0)
  {
    v55 = *(v54 + 8);
    [v35 scaledValueForValue:v25 compatibleWithTraitCollection:*v54];
    v57 = v56;
    [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v55];
    v58 = v74;
    *v74 = v57;
    *(v58 + 1) = v59;
    v58[16] = 0;
  }

  v60 = v73;
  sub_898B44(a1 + v12[9], v72, v73);

  sub_8A1B6C(a1, type metadata accessor for SymbolButton.Configuration);
  sub_160B4(v60, &a3[v79], &qword_E1DB50, &qword_B29E40);
}

uint64_t sub_898B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v25 = sub_ABA620();
  v4 = *(v25 - 8);
  __chkstk_darwin();
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v10 = v23 - v9;
  v11 = sub_ABA680();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_15F84(a1, v10, &qword_E1DB50, &qword_B29E40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &qword_E1DB50, &qword_B29E40);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_ABA650();
    v15 = v25;
    v16 = (*(v4 + 88))(v8, v25);
    if (v16 == enum case for UIView.Corner.Radius.value(_:))
    {
      v17 = v16;
      (*(v4 + 96))(v8, v15);
      v18 = *v8;
      v19 = v8[8];
      v20 = v27;
      (*(v12 + 16))(v27, v14, v11);
      [v23[1] scaledValueForValue:v24 compatibleWithTraitCollection:v18];
      *v6 = v21;
      v6[8] = v19;
      (*(v4 + 104))(v6, v17, v15);
      sub_ABA660();
      (*(v12 + 8))(v14, v11);
      return (*(v12 + 56))(v20, 0, 1, v11);
    }

    (*(v12 + 8))(v14, v11);
    (*(v4 + 8))(v8, v15);
  }

  return sub_15F84(v26, v27, &qword_E1DB50, &qword_B29E40);
}

void sub_898ED8(char *a1@<X8>)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E058, &unk_B342F8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_15F84(v1 + v9, v8, &qword_E1E058, &unk_B342F8);
  v10 = type metadata accessor for SymbolButton.Metrics(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_12E1C(v8, &qword_E1E058, &unk_B342F8);
    v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(v1 + v12, v4, type metadata accessor for SymbolButton.Configuration);
    sub_898510(v4, [v1 traitCollection], a1);
    sub_8A3C84(a1, v6, type metadata accessor for SymbolButton.Metrics);
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_160B4(v6, v1 + v9, &qword_E1E058, &unk_B342F8);
    swift_endAccess();
  }

  else
  {
    sub_8A3CEC(v8, a1, type metadata accessor for SymbolButton.Metrics);
  }
}

double sub_899180(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E058, &unk_B342F8);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = type metadata accessor for SymbolButton.Metrics(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v14 - v9);
  sub_898ED8(&v14 - v9);
  sub_8A3C84(a1, v4, type metadata accessor for SymbolButton.Metrics);
  (*(v6 + 56))(v4, 0, 1, v5);
  v11 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_160B4(v4, v1 + v11, &qword_E1E058, &unk_B342F8);
  swift_endAccess();
  sub_898ED8(v8);
  v12 = sub_89F1A0(v8, v10);
  sub_8A1B6C(v8, type metadata accessor for SymbolButton.Metrics);
  if ((v12 & 1) == 0)
  {
    sub_898ED8(v8);
    sub_89A1E8();
    sub_8A1B6C(v8, type metadata accessor for SymbolButton.Metrics);
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
  }

  sub_8A1B6C(a1, type metadata accessor for SymbolButton.Metrics);
  sub_8A1B6C(v10, type metadata accessor for SymbolButton.Metrics);
  return result;
}

id sub_8993E0(__int128 *a1)
{
  type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v111 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v110 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v102 - v5;
  if (qword_E16908 != -1)
  {
    swift_once();
  }

  v7 = sub_AB4BC0();
  __swift_project_value_buffer(v7, qword_E73898);
  sub_8A3C84(a1, v6, type metadata accessor for SymbolButton.Configuration);
  v8 = v1;
  v9 = sub_AB4BA0();
  v10 = sub_AB9F20();

  v11 = os_log_type_enabled(v9, v10);
  v113 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v118 = v13;
    *v12 = 136446466;
    v14 = &v8[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      v17 = v15;
    }

    else
    {
      v18 = v8;
      v109 = v13;
      v19 = v18;
      v20 = [v18 description];
      v16 = sub_AB92A0();
      v17 = v21;
    }

    v22 = sub_7AB3E0(v16, v17, &v118);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2082;
    v23 = SymbolButton.Configuration.description.getter();
    v25 = v24;
    sub_8A1B6C(v6, type metadata accessor for SymbolButton.Configuration);
    v26 = sub_7AB3E0(v23, v25, &v118);

    *(v12 + 14) = v26;
    _os_log_impl(&dword_0, v9, v10, "[%{public}s] Applying configuration=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_8A1B6C(v6, type metadata accessor for SymbolButton.Configuration);
  }

  v27 = v113;
  v28 = *&v113[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v29 = *(a1 + 248);
  v126[0] = *(a1 + 232);
  v126[1] = v29;
  v126[2] = *(a1 + 264);
  sub_89B0B4(v126);
  v30 = [v28 contentView];
  v31 = *(a1 + 35);
  v32 = *(a1 + 36);
  v33 = *(a1 + 37);
  v34 = v33;
  UIView.border.setter(v31, v32, v33);

  v109 = *&v27[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v35 = *(a1 + 25);
  v36 = *(a1 + 26);
  v37 = *(a1 + 27);
  v38 = *(a1 + 28);
  if (v36 == &dword_0 + 1)
  {
    if (qword_E16BF8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = *&static SymbolButton.Background.clear;
    v40 = qword_E73E18;
    v41 = qword_E73E20;
    v42 = qword_E73E28;

    v43 = v40;
  }

  else
  {
    v39 = *(a1 + 25);
    v42 = *(a1 + 28);
    v43 = *(a1 + 26);
    v40 = v43;
    v41 = *(a1 + 27);
  }

  sub_8A1AF4(v35, v36, v37, v38);
  sub_89B530(v40, v41, v42, v39);

  v44 = v113;
  v45 = sub_897E8C();
  v46 = a1[5];
  v122 = a1[4];
  v123 = v46;
  v124 = a1[6];
  v125 = *(a1 + 14);
  v47 = a1[1];
  v118 = *a1;
  v119 = v47;
  v48 = a1[3];
  v120 = a1[2];
  v121 = v48;
  sub_89B984(&v118);

  v49 = sub_898004();
  v50 = *(a1 + 136);
  v117[0] = *(a1 + 120);
  v117[1] = v50;
  v51 = *(a1 + 168);
  v117[2] = *(a1 + 152);
  v117[3] = v51;
  v117[4] = *(a1 + 184);
  v52 = v117[0];
  sub_89BD50(v117);

  if (*(&v52 + 1))
  {
    v53 = HIBYTE(*(&v52 + 1)) & 0xFLL;
    if ((*(&v52 + 1) & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = sub_AB9260();
      [v44 setAccessibilityLabel:v54];
    }
  }

  v55 = (a1 + *(v112 + 44));
  v56 = v55[2];
  p_name = (&JSDateDescriptor + 24);
  v109 = v52;
  if (v56 == &dword_0 + 1)
  {
    v58 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    sub_89810C(v58);
  }

  else
  {
    v59 = *v55;
    v60 = v55[1];
    v61 = *&v60;
    v62 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
    v63 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v107 = v60;
    v108 = v59;
    if (v63)
    {
      v64 = v56;
      v65 = v44;
      v66 = v63;
      v67 = v63;
    }

    else
    {
      v106 = type metadata accessor for SymbolButton.BadgeView();
      v68 = objc_allocWithZone(v106);
      v105 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
      v69 = objc_allocWithZone(UIView);
      v104 = v56;
      v70 = [v69 init];
      v103 = objc_opt_self();
      v71 = v59;
      v72 = [v103 blackColor];
      [v70 setBackgroundColor:v72];

      v73 = [v70 layer];
      [v73 setCompositingFilter:kCAFilterDestOut];

      *&v68[v105] = v70;
      v74 = &v68[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v74 = v71;
      v74[1] = v60;
      v74[2] = v56;
      v114.receiver = v68;
      v114.super_class = v106;
      v75 = v104;
      v76 = v60;
      v67 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v77 = v75;
      if (!v56)
      {
        v77 = [v103 tintColor];
      }

      v78 = v75;
      [v67 setBackgroundColor:v77];

      [v67 setAlpha:v61];
      [*(v67 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:v61];
      sub_89C304();
      sub_7AFD34(v108, v76, v56);

      v66 = 0;
      v65 = v113;
      v63 = *&v113[v62];
    }

    *&v65[v62] = v67;
    v79 = v67;
    v80 = v66;
    sub_89810C(v63);

    v81 = *&v65[v62];
    v44 = v65;
    if (v81)
    {
      p_name = &JSDateDescriptor.name;
      if (v56)
      {
        v82 = v81;
        v83 = v56;
        v84 = v56;
      }

      else
      {
        v85 = objc_opt_self();
        v86 = v81;
        v84 = [v85 tintColor];
        v83 = 0;
      }

      v87 = v83;
      [v81 setBackgroundColor:v84];

      [v81 setAlpha:v61];
      [*&v81[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_89C304();
      sub_7AFD34(v108, v107, v56);
    }

    else
    {
      sub_7AFD34(v108, v107, v56);
      p_name = (&JSDateDescriptor + 24);
    }
  }

  v88 = v112;
  v89 = a1 + *(v112 + 40);
  v90 = *(v89 + 1);
  v115[0] = *v89;
  v115[1] = v90;
  v115[2] = *(v89 + 2);
  v116 = *(v89 + 6);
  sub_899FE4(v115);
  [v44 p_name[463]];
  [v44 setTintColor:*(a1 + v88[18])];
  v91 = [v44 traitCollection];
  v92 = v111;
  sub_898ED8(v111);
  sub_8A1B6C(v92, type metadata accessor for SymbolButton.Metrics);
  v93 = v110;
  sub_8A3C84(a1, v110, type metadata accessor for SymbolButton.Configuration);
  sub_898510(v93, v91, v92);
  sub_899180(v92);
  sub_898ED8(v92);
  sub_89A320(v92);
  sub_8A1B6C(v92, type metadata accessor for SymbolButton.Metrics);
  sub_899E58();
  [v44 setShowsLargeContentViewer:*(a1 + v88[16] + 24)];
  if (*(&v52 + 1))
  {
    v94 = sub_AB9260();
  }

  else
  {
    v94 = 0;
  }

  v95 = *(&v118 + 1);
  [v44 setLargeContentTitle:v94];

  if (v95)
  {
    v96 = sub_AB9260();
    v97 = objc_opt_self();
    v98 = [v97 _systemImageNamed:v96];

    if (!v98)
    {
      v99 = v119;
      v100 = sub_AB9260();
      v98 = [v97 imageNamed:v100 inBundle:v99];
    }
  }

  else
  {
    v98 = 0;
  }

  [v44 setLargeContentImage:v98];

  return [v44 setScalesLargeContentImage:1];
}

void sub_899E58()
{
  type metadata accessor for SymbolButton.Configuration(0);
  *&v1 = __chkstk_darwin().n128_u64[0];
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  if (!*(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount))
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(v0 + v6, v3, type metadata accessor for SymbolButton.Configuration);
    if (*(v3 + 29) == 1)
    {
      sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
    }

    else
    {
      v7 = *(v3 + 34);

      sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
      if (v7)
      {
        v8 = sub_AB9260();

LABEL_10:
        [v4 _setGroupName:v8];

        return;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);

  [v5 _setGroupName:{0, v1}];
}

void **sub_899FE4(void **result)
{
  v2 = v1;
  v3 = result;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  v6 = *result;
  if (!*result)
  {
    if (!v5)
    {
      return result;
    }

LABEL_10:
    if ([v5 isDescendantOfView:v2])
    {
      [*(v2 + v4) removeFromSuperview];
    }

    v8 = v6;
    if (!v6)
    {
      v15 = *(v2 + v4);
      *(v2 + v4) = 0;
      v16 = 0;

      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      v14 = 1.0;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = v7;
  if (v5)
  {
    sub_13C80(0, &qword_E1E050, UIView_ptr);
    v9 = v5;
    v10 = sub_ABA790();

    if (v10)
    {
      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = *(v2 + v4);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_13:
  v11 = *(v2 + v4);
  *(v2 + v4) = v6;
  v12 = v8;

  v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
  if ([v13 isDescendantOfView:v13])
  {
    [v13 insertSubview:v12 aboveSubview:v13];
  }

  else
  {

    if (([v12 isDescendantOfView:v13] & 1) == 0)
    {
      [v13 addSubview:v12];
    }
  }

  sub_8982F0();

  result = *(v2 + v4);
  if (result)
  {
LABEL_18:
    v14 = *(v3 + 5);
LABEL_21:
    [result setAlpha:v14];
    result = *(v2 + v4);
    if (result)
    {
      if (v6)
      {
        v17 = v3[6];
      }

      else
      {
        v17 = 0;
      }

      return [result setTintColor:v17];
    }
  }

  return result;
}

double sub_89A1E8()
{
  v0 = type metadata accessor for SymbolButton.Metrics(0) - 8;
  __chkstk_darwin();
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_897E8C();
  sub_898ED8(v2);
  v4 = *&v2[*(v0 + 36)];
  sub_8A1B6C(v2, type metadata accessor for SymbolButton.Metrics);
  [v3 setPreferredSymbolConfiguration:v4];

  v5 = sub_898004();
  sub_898ED8(v2);
  v6 = *&v2[*(v0 + 32)];
  sub_8A1B6C(v2, type metadata accessor for SymbolButton.Metrics);
  [v5 setFont:v6];

  sub_898ED8(v2);
  sub_89A320(v2);
  sub_8A1B6C(v2, type metadata accessor for SymbolButton.Metrics);
  return result;
}

uint64_t sub_89A320(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  __chkstk_darwin();
  v7 = &v39 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  v9 = *(type metadata accessor for SymbolButton.Metrics(0) + 20);
  sub_15F84(a1 + v9, v7, &qword_E1DB50, &qword_B29E40);
  sub_ABA6A0();
  v41 = v1;
  sub_15F84(a1 + v9, v7, &qword_E1DB50, &qword_B29E40);
  sub_ABA6A0();
  v10 = [v8 contentView];
  v11 = [v10 clipsToBounds];

  if (v11)
  {
    sub_15F84(a1 + v9, v5, &qword_E1DB50, &qword_B29E40);
    v12 = sub_ABA680();
    v13 = (*(*(v12 - 8) + 48))(v5, 1, v12);
    sub_12E1C(v5, &qword_E1DB50, &qword_B29E40);
    if (v13 != 1)
    {
      v14 = [v8 contentView];
      [v14 setClipsToBounds:0];
    }
  }

  v15 = v41;
  if (*(v41 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) == 1)
  {
    v40 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    [v8 _setAllowsGroupFiltering:1];
    v16 = [v8 contentView];
    v17 = [v16 subviews];

    sub_13C80(0, &qword_E1E050, UIView_ptr);
    v18 = sub_AB9760();

    if (v18 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)); ; i = sub_ABB060())
    {
      v20 = v15 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
      swift_beginAccess();
      if (!i)
      {
        break;
      }

      v21 = 0;
      v22 = v18 & 0xC000000000000001;
      v23 = v18 & 0xFFFFFFFFFFFFFF8;
      v15 = &selRef_format;
      v42 = v18 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v22)
        {
          v24 = sub_ABAE20();
        }

        else
        {
          if (v21 >= *(v23 + 16))
          {
            goto LABEL_22;
          }

          v24 = *(v18 + 8 * v21 + 32);
        }

        v25 = v24;
        v26 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v25 v15[22]] & 1) == 0)
        {
          v27 = type metadata accessor for SymbolButton.Configuration(0);
          v28 = v20[*(v27 + 76)];
          if (v28 == 2)
          {
            v29 = &v20[*(v27 + 36)];
            v30 = v22;
            v31 = v18;
            v32 = i;
            v33 = v20;
            v34 = v15;
            v35 = v43;
            sub_15F84(v29, v43, &qword_E1DB50, &qword_B29E40);
            v36 = sub_ABA680();
            LOBYTE(v28) = (*(*(v36 - 8) + 48))(v35, 1, v36) != 1;
            v37 = v35;
            v15 = v34;
            v20 = v33;
            i = v32;
            v18 = v31;
            v22 = v30;
            v23 = v42;
            sub_12E1C(v37, &qword_E1DB50, &qword_B29E40);
          }

          [v25 setClipsToBounds:v28 & 1];
        }

        ++v21;
        if (v26 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_19:

    *(v41 + v40) = 0;
  }

  return sub_89A79C();
}

uint64_t sub_89A79C()
{
  v1 = v0;
  v2 = sub_ABA620();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v27 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E080, &qword_B34308);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v12 = [v0 traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == &dword_4 + 2)
  {
    *(&v38 + 1) = sub_AB4D90();
    v39 = &protocol witness table for UIHoverHighlightEffect;
    __swift_allocate_boxed_opaque_existential_0(&v37);
    sub_AB4CA0();
  }

  else
  {
    *(&v38 + 1) = sub_AB4D20();
    v39 = &protocol witness table for UIHoverLiftEffect;
    __swift_allocate_boxed_opaque_existential_0(&v37);
    sub_AB4C90();
  }

  sub_12E1C(&v40, &qword_E1E088, &qword_B34310);
  v40 = v37;
  v41 = v38;
  v42 = v39;
  sub_15F84(&v40, &v35, &qword_E1E088, &qword_B34310);
  if (v36)
  {
    v27 = v3;
    v28 = v2;
    v33 = v11;
    sub_70DF8(&v35, &v37);
    v31 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
    v30 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v29 = &v27;
    v14 = __chkstk_darwin();
    (*(v16 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_8A3C84(&v1[v17], v9, type metadata accessor for SymbolButton.Configuration);
    v32 = v6;
    v18 = *(v6 + 36);
    v19 = sub_ABA680();
    v20 = *(*(v19 - 8) + 48);
    if (v20(&v9[v18], 1, v19))
    {
      sub_8A1B6C(v9, type metadata accessor for SymbolButton.Configuration);
      sub_AB4CB0();
    }

    else
    {
      sub_ABA650();
      sub_8A1B6C(v9, type metadata accessor for SymbolButton.Configuration);
      [v1 bounds];
      sub_ABA610();
      (*(v27 + 8))(v5, v28);
    }

    v22 = v34;
    sub_8A3C84(&v1[v17], v34, type metadata accessor for SymbolButton.Configuration);
    if (v20((v22 + *(v32 + 36)), 1, v19))
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_ABA5D0();
    }

    v24 = v33;
    sub_13C80(0, &qword_E1E090, UIHoverStyle_ptr);
    sub_8A1B6C(v22, type metadata accessor for SymbolButton.Configuration);
    sub_AB9EE0(v23);
    sub_AB53B0();
    v25 = sub_AB53C0();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    v26 = sub_AB9ED0();
    [v31 setHoverStyle:v26];

    sub_12E1C(&v40, &qword_E1E088, &qword_B34310);
    return __swift_destroy_boxed_opaque_existential_0(&v37);
  }

  else
  {
    sub_12E1C(&v35, &qword_E1E088, &qword_B34310);
    [v1 setHoverStyle:0];
    return sub_12E1C(&v40, &qword_E1E088, &qword_B34310);
  }
}

void sub_89B0B4(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  [v2 setEffect:0];
  v6 = *a1;
  if (*a1 < 2uLL)
  {
    sub_13C80(0, &qword_E1E098, UIVisualEffect_ptr);
    isa = sub_AB9740().super.isa;
    [v2 setBackgroundEffects:isa];

    if (*a1 == 1)
    {
LABEL_6:
      sub_13C80(0, &qword_E1E098, UIVisualEffect_ptr);
      v8.super.isa = sub_AB9740().super.isa;
      [v2 setContentEffects:v8.super.isa];
      goto LABEL_12;
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = v5;
    v13 = [v2 backgroundEffects];
    sub_13C80(0, &qword_E1E098, UIVisualEffect_ptr);
    v14 = sub_AB9760();

    sub_AB9730();
    if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v14 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v15 = sub_AB9740().super.isa;

    [v2 setBackgroundEffects:v15];

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF82B0;
  *(v9 + 32) = v6;
  sub_13C80(0, &qword_E1E098, UIVisualEffect_ptr);
  v10 = v6;
  v11 = sub_AB9740().super.isa;

  [v2 setBackgroundEffects:v11];

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*a1 == 1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF82B0;
  *(v16 + 32) = v4;
  sub_13C80(0, &qword_E1E098, UIVisualEffect_ptr);
  v17 = v4;
  v8.super.isa = sub_AB9740().super.isa;

  [v2 setContentEffects:v8.super.isa];

LABEL_12:
  v18 = [v2 contentView];
  v19 = [v18 layer];

  [v19 setAllowsGroupBlending:0];
}

id sub_89B480(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_89B530(void *a1, uint64_t a2, NSString a3, double a4)
{
  v8 = [v4 layer];
  if (a3)
  {
    a3 = sub_AB9260();
  }

  [v8 setCompositingFilter:a3];

  swift_unknownObjectRelease();
  v9 = &v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v10 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v11 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration + 8];
  *v9 = a1;
  v9[1] = a4;
  if (!a1)
  {
    a1 = v10;
    if (!v10)
    {
      if (v11 == a4)
      {
        v14 = 0;
        goto LABEL_11;
      }

LABEL_10:
      sub_89B6F0();
      v14 = v10;
      goto LABEL_11;
    }

LABEL_9:
    v15 = a1;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  sub_13C80(0, &qword_E1AD80, UIColor_ptr);
  v12 = a1;
  v16 = v10;
  v13 = sub_ABA790();

  v14 = v16;
  if ((v13 & 1) == 0 || v11 != a4)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = v14;
}

void sub_89B6F0()
{
  v1 = &v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  }

  else
  {
    v3 = [objc_opt_self() tintColor];
  }

  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(UIColor);
  v11[4] = sub_8A437C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_119878;
  v11[3] = &block_descriptor_279;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = v3;
  v10 = [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  [v0 setBackgroundColor:v10];
}

id sub_89B850(uint64_t a1, id a2, double a3)
{
  v4 = [a2 resolvedColorWithTraitCollection:a1];
  [v4 alphaComponent];
  v6 = [v4 colorWithAlphaComponent:v5 * a3];

  return v6;
}

id sub_89B984(double *a1)
{
  if (*(a1 + 1))
  {
    v3 = sub_AB9260();
    v4 = objc_opt_self();
    v5 = [v4 _systemImageNamed:v3];

    if (!v5)
    {
      v6 = *(a1 + 2);
      v7 = sub_AB9260();
      v5 = [v4 imageNamed:v7 inBundle:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 setImage:v5];

  v8 = [v1 layer];
  if (*(a1 + 12))
  {
    v9 = sub_AB9260();
  }

  else
  {
    v9 = 0;
  }

  [v8 setCompositingFilter:v9];

  swift_unknownObjectRelease();
  v10 = [v1 layer];
  [v10 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 14)];
  v11 = a1[13];

  return [v1 setAlpha:v11];
}

id sub_89BBC8(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SymbolButton.Label();
  v3 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v3 setLineBreakMode:5];
  v4 = v3;
  [v4 setNumberOfLines:1];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setAdjustsFontForContentSizeCategory:0];
  [v4 setClipsToBounds:0];

  [v4 _setTextColorFollowsTintColor:1];
  sub_89BD50(a1);
  sub_878CDC(a1);

  return v4;
}

id sub_89BD50(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  v4 = [v1 layer];
  if (*(a1 + 40))
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  [v4 setCompositingFilter:v5];

  swift_unknownObjectRelease();
  v6 = [v1 layer];
  [v6 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 56)];
  [v1 setSizingRule:*(a1 + 72)];
  v7 = 0.0;
  if ((*(a1 + 64) & 1) == 0)
  {
    v7 = *(a1 + 48);
  }

  return [v1 setAlpha:v7];
}

void sub_89C304()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v17 - v3;
  [v1 bounds];
  v5 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration;
  sub_AB9EA0();
  sub_ABA530();
  v7 = v6;
  v9 = v8;
  [v1 frame];
  v11 = v10 - *&v1[v5];
  [v1 frame];
  v13 = v12 - *&v1[v5];
  v14 = *&v1[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView];
  [v14 setFrame:{v11, v13, v7, v9}];
  sub_ABA670();
  v15 = sub_ABA680();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  sub_ABA6A0();
  v16 = [v1 superview];
  [v16 insertSubview:v14 belowSubview:v1];
}

Swift::Void __swiftcall SymbolButton.configureForToolbar(_:)(UITraitCollection a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v25 - v5;
  __chkstk_darwin();
  v8 = (&v25 - v7);
  v9 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  v27 = v1;
  sub_8A3C84(v1 + v9, v6, type metadata accessor for SymbolButton.Configuration);
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v10 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v11 = qword_E73DF8;
  v12 = unk_E73E00;
  v13 = byte_E73E08;
  sub_8A3C84(v6, v4, type metadata accessor for SymbolButton.Configuration);
  v14 = *(v2 + 64);
  v26 = v2;
  v15 = &v4[v14];
  v16 = *&v4[v14 + 8];
  v17 = v11;
  v18 = v12;

  *v15 = v10;
  *(v15 + 1) = v11;
  *(v15 + 2) = v12;
  v15[24] = v13;
  v19 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v11) = sub_4731E0(1, v19);

  if (v11)
  {
    v20 = [objc_opt_self() labelColor];
    sub_8A1B6C(v6, type metadata accessor for SymbolButton.Configuration);
    v21 = *(v26 + 72);

    *&v4[v21] = v20;
    sub_3F9D0(*(v4 + 25), *(v4 + 26), *(v4 + 27), *(v4 + 28));
    *(v4 + 200) = xmmword_AF82C0;
    *(v4 + 27) = 0;
    *(v4 + 28) = 0;
  }

  else
  {
    sub_8A1B6C(v6, type metadata accessor for SymbolButton.Configuration);
  }

  sub_8A3CEC(v4, v8, type metadata accessor for SymbolButton.Configuration);
  v22 = v27;
  SymbolButton.setConfiguration(_:animation:updates:)(v8, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_8A1B6C(v8, type metadata accessor for SymbolButton.Configuration);
  v23 = UITraitCollection.supportedMaterials.getter();
  v24 = sub_4731E0(1, v23);

  if (v24)
  {
    [v22 _setMonochromaticTreatment:2];
  }
}

double SymbolButton.Configuration.forBarButtonItem(_:)@<D0>(uint64_t a1@<X8>)
{
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v4 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v5 = qword_E73DF8;
  v6 = unk_E73E00;
  v7 = byte_E73E08;
  sub_8A3C84(v2, a1, type metadata accessor for SymbolButton.Configuration);
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  v9 = a1 + *(v8 + 64);
  v10 = *(v9 + 8);
  v11 = v5;
  v12 = v6;

  *v9 = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v13 = UITraitCollection.supportedMaterials.getter();
  v14 = sub_4731E0(1, v13);

  if (v14)
  {
    v16 = [objc_opt_self() labelColor];
    v17 = *(v8 + 72);

    *(a1 + v17) = v16;
    sub_3F9D0(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
    result = 0.0;
    *(a1 + 200) = xmmword_AF82C0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  return result;
}

int64x2_t sub_89C99C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v1 = v20 - v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __swift_allocate_value_buffer(v2, static SymbolButton.Configuration.contextualAction);
  v3 = __swift_project_value_buffer(v2, static SymbolButton.Configuration.contextualAction);
  SymbolButton.Configuration.init()(v3);
  v23[0] = 0;
  v23[1] = 0;
  *&v22[15] = 0;
  *&v22[7] = 0;
  v24[0] = UIFontTextStyleSubheadline;
  v4 = UIFontTextStyleSubheadline;
  sub_12E1C(v23, &qword_E1DBB0, &qword_B32B20);
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 userInterfaceIdiom];

  v7 = v6 == &dword_4 + 2;
  if (v6 == &dword_4 + 2)
  {
    v8 = 5;
  }

  else
  {
    v8 = 6;
  }

  v9 = &UIFontTextStyleTitle3;
  if (!v7)
  {
    v9 = &UIFontTextStyleCallout;
  }

  v10 = *v9;
  sub_8A1B6C(v24, _s3__C9TextStyleVMa_0);
  v11 = *v3;
  v12 = *(v3 + 16);
  v13 = *(v3 + 48);
  v20[2] = *(v3 + 32);
  v20[3] = v13;
  v20[0] = v11;
  v20[1] = v12;
  v14 = *(v3 + 64);
  v15 = *(v3 + 80);
  v16 = *(v3 + 96);
  v21 = *(v3 + 112);
  v20[5] = v15;
  v20[6] = v16;
  v20[4] = v14;
  *v3 = xmmword_B28400;
  *(v3 + 16) = 0;
  *(v3 + 24) = v10;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = v8;
  *(v3 + 56) = 2;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = -1;
  v17 = *v22;
  *(v3 + 96) = *&v22[15];
  *(v3 + 104) = 0x3FF0000000000000;
  *(v3 + 81) = v17;
  *(v3 + 112) = 0;
  sub_878C88(v20);
  sub_ABA670();
  v18 = sub_ABA680();
  (*(*(v18 - 8) + 56))(v1, 0, 1, v18);
  sub_160B4(v1, v3 + *(v2 + 36), &qword_E1DB50, &qword_B29E40);
  result = vdupq_n_s64(0x4040000000000000uLL);
  *(v3 + *(v2 + 52)) = result;
  return result;
}

uint64_t sub_89CC44(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
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

  return __swift_project_value_buffer(v5, a3);
}

double sub_89CCC8()
{
  v0 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v20 - v3;
  __swift_allocate_value_buffer(v5, static SymbolButton.Configuration.barButtonContextualAction);
  v21 = __swift_project_value_buffer(v0, static SymbolButton.Configuration.barButtonContextualAction);
  if (qword_E16C08 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static SymbolButton.Configuration.contextualAction);
  sub_8A3C84(v6, v4, type metadata accessor for SymbolButton.Configuration);
  v7 = [objc_opt_self() currentTraitCollection];
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v8 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v9 = qword_E73DF8;
  v10 = unk_E73E00;
  v11 = byte_E73E08;
  sub_8A3C84(v4, v2, type metadata accessor for SymbolButton.Configuration);
  v12 = &v2[*(v0 + 64)];
  v13 = *(v12 + 1);
  v14 = v9;
  v15 = v10;

  *v12 = v8;
  *(v12 + 1) = v9;
  *(v12 + 2) = v10;
  v12[24] = v11;
  v16 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v9) = sub_4731E0(1, v16);

  if (v9)
  {
    v17 = [objc_opt_self() labelColor];
    v18 = *(v0 + 72);

    *&v2[v18] = v17;
    sub_3F9D0(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 200) = xmmword_AF82C0;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
  }

  sub_8A3CEC(v2, v21, type metadata accessor for SymbolButton.Configuration);

  sub_8A1B6C(v4, type metadata accessor for SymbolButton.Configuration);
  return result;
}

uint64_t sub_89CFB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_8A3C84(v7, a4, type metadata accessor for SymbolButton.Configuration);
}

char *SymbolButton.Configuration.adding(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v18 = *(a1 + 24);
  v16 = a1[5];
  v17 = a1[4];
  sub_8A3C84(v3, a2, type metadata accessor for SymbolButton.Configuration);
  v9 = a2[29];
  v10 = a2[32];
  v14 = a2[31];
  v15 = a2[30];
  v11 = a2[33];
  v12 = a2[34];
  v23 = v7;
  v21 = v8;
  v22 = v6;
  v20 = *(a1 + 2);
  sub_15F84(&v23, v19, &qword_E1DBA8, &unk_B33BD8);
  sub_15F84(&v22, v19, &qword_E1DBA8, &unk_B33BD8);
  sub_15F84(&v21, v19, &qword_E1DBA8, &unk_B33BD8);
  sub_15F84(&v20, v19, &qword_E1DBB0, &qword_B32B20);
  result = sub_3FA8C(v9, v15, v14, v10, v11, v12);
  a2[29] = v7;
  a2[30] = v6;
  a2[31] = v8;
  a2[32] = v18;
  a2[33] = v17;
  a2[34] = v16;
  return result;
}

double SymbolButton.Configuration.removingMaterial()@<D0>(uint64_t a1@<X8>)
{
  sub_8A3C84(v2, a1, type metadata accessor for SymbolButton.Configuration);
  sub_3FA8C(*(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272));
  *(a1 + 232) = 1;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  return result;
}

void SymbolButton.Configuration.adding(_:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_8A3C84(v6, a5, type metadata accessor for SymbolButton.Configuration);
  v12 = a5[25];
  v13 = a5[26];
  v14 = a5[27];
  v15 = a5[28];
  sub_8A1AF4(a1, a2, a3, a4);
  sub_3F9D0(v12, v13, v14, v15);
  a5[25] = a1;
  a5[26] = a2;
  a5[27] = a3;
  a5[28] = a4;
}

double SymbolButton.Configuration.removingBackground()@<D0>(uint64_t a1@<X8>)
{
  sub_8A3C84(v2, a1, type metadata accessor for SymbolButton.Configuration);
  sub_3F9D0(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  result = 0.0;
  *(a1 + 200) = xmmword_AF82C0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

void SymbolButton.Configuration.withAccessibility(_:)(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_8A3C84(v6, a5, type metadata accessor for SymbolButton.Configuration);
  v12 = a5 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);
  v13 = *(v12 + 8);
  v14 = a2;
  v15 = a3;

  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
}

uint64_t *SymbolButton.Background.tertiary.unsafeMutableAddressor()
{
  if (qword_E16C20 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.tertiary;
}

double SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v53 = a7;
  v54 = a3;
  v51 = a6;
  v52 = a2;
  v55 = a4;
  v56 = a5;
  LODWORD(v59) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v58 = &v50 - v11;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v50 - v15;
  v17 = [objc_opt_self() currentTraitCollection];
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v18 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v19 = qword_E73DF8;
  v20 = unk_E73E00;
  v21 = byte_E73E08;
  sub_8A3C84(v9, v16, type metadata accessor for SymbolButton.Configuration);
  v22 = *(v12 + 64);
  v57 = v12;
  v23 = &v16[v22];
  v24 = *&v16[v22 + 8];
  v25 = v19;
  v26 = v20;

  *v23 = v18;
  *(v23 + 1) = v19;
  *(v23 + 2) = v20;
  v23[24] = v21;
  v27 = UITraitCollection.supportedMaterials.getter();
  v28 = sub_4731E0(1, v27);

  if (v28)
  {
    v29 = [objc_opt_self() labelColor];

    v30 = v57;
    v31 = *(v57 + 72);

    *&v16[v31] = v29;
    sub_3F9D0(*(v16 + 25), *(v16 + 26), *(v16 + 27), *(v16 + 28));
    *(v16 + 200) = xmmword_AF82C0;
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  else
  {

    v30 = v57;
  }

  sub_8A3CEC(v16, a8, type metadata accessor for SymbolButton.Configuration);
  v32 = v58;
  sub_ABA670();
  v33 = sub_ABA680();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  sub_160B4(v32, a8 + *(v30 + 36), &qword_E1DB50, &qword_B29E40);

  *(a8 + 280) = 0;
  *(a8 + 288) = 0;
  *(a8 + 296) = 0;
  if (v59)
  {
    v59 = [objc_opt_self() effectWithStyle:16];
    sub_8A3C84(a8, v14, type metadata accessor for SymbolButton.Configuration);
    v34 = *(v14 + 29);
    v35 = *(v14 + 30);
    v36 = *(v14 + 31);
    v37 = *(v14 + 32);
    v38 = *(v14 + 33);
    v39 = *(v14 + 34);
    v40 = v53;

    sub_3FA8C(v34, v35, v36, v37, v38, v39);
    *(v14 + 29) = v59;
    *(v14 + 30) = 0;
    *(v14 + 31) = 0;
    *(v14 + 32) = 2;
    *(v14 + 33) = v51;
    *(v14 + 34) = v40;
    sub_8A1B6C(a8, type metadata accessor for SymbolButton.Configuration);
    sub_8A3C84(v14, a8, type metadata accessor for SymbolButton.Configuration);
    sub_3F9D0(*(a8 + 200), *(a8 + 208), *(a8 + 216), *(a8 + 224));
    *(a8 + 200) = xmmword_AF82C0;
    *(a8 + 216) = 0;
    *(a8 + 224) = 0;
  }

  else
  {
    sub_8A3C84(a8, v14, type metadata accessor for SymbolButton.Configuration);
    sub_3FA8C(*(v14 + 29), *(v14 + 30), *(v14 + 31), *(v14 + 32), *(v14 + 33), *(v14 + 34));
    *(v14 + 29) = 1;
    *(v14 + 15) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 34) = 0;
    sub_8A1B6C(a8, type metadata accessor for SymbolButton.Configuration);
    sub_8A3C84(v14, a8, type metadata accessor for SymbolButton.Configuration);
    v41 = *(a8 + 200);
    v42 = *(a8 + 208);
    v43 = *(a8 + 216);
    v44 = *(a8 + 224);
    v45 = v52;
    v47 = v54;
    v46 = v55;
    v48 = v56;
    sub_8A1AF4(v52, v54, v55, v56);
    sub_3F9D0(v41, v42, v43, v44);
    *(a8 + 200) = v45;
    *(a8 + 208) = v47;
    *(a8 + 216) = v46;
    *(a8 + 224) = v48;
  }

  sub_8A1B6C(v14, type metadata accessor for SymbolButton.Configuration);
  return result;
}

uint64_t SymbolButton.Configuration.forPromotionalParallaxNavigationBar(withMaterial:background:backgroundAlpha:groupName:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v53 = a7;
  v54 = a8;
  v61 = a1;
  v62 = a6;
  v56 = a5;
  v57 = a3;
  v58 = a4;
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v60 = &v52 - v12;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v52 - v16;
  v18 = [objc_opt_self() currentTraitCollection];
  if (qword_E16BF0 != -1)
  {
    swift_once();
  }

  v19 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v21 = qword_E73DF8;
  v20 = unk_E73E00;
  v22 = byte_E73E08;
  sub_8A3C84(v10, v17, type metadata accessor for SymbolButton.Configuration);
  v23 = &v17[*(v13 + 64)];
  v59 = v13;
  v24 = *(v23 + 1);
  v25 = v21;
  v26 = v20;

  *v23 = v19;
  *(v23 + 1) = v21;
  *(v23 + 2) = v20;
  v23[24] = v22;
  v27 = UITraitCollection.supportedMaterials.getter();
  v28 = sub_4731E0(1, v27);

  v29 = &unk_AF8000;
  if (v28)
  {
    v30 = [objc_opt_self() labelColor];

    v31 = v59;
    v32 = *(v59 + 72);

    *&v17[v32] = v30;
    sub_3F9D0(*(v17 + 25), *(v17 + 26), *(v17 + 27), *(v17 + 28));
    *(v17 + 200) = xmmword_AF82C0;
    *(v17 + 27) = 0;
    *(v17 + 28) = 0;
  }

  else
  {

    v31 = v59;
  }

  sub_8A3CEC(v17, a9, type metadata accessor for SymbolButton.Configuration);
  v33 = v60;
  sub_ABA670();
  v34 = sub_ABA680();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  sub_160B4(v33, a9 + *(v31 + 36), &qword_E1DB50, &qword_B29E40);

  *(a9 + 280) = 0;
  *(a9 + 288) = 0;
  *(a9 + 296) = 0;
  if (v61)
  {
    v35 = [objc_opt_self() effectWithStyle:16];
    sub_8A3C84(a9, v15, type metadata accessor for SymbolButton.Configuration);
    v36 = *(v15 + 29);
    v37 = *(v15 + 30);
    v38 = *(v15 + 31);
    v39 = *(v15 + 32);
    v40 = *(v15 + 33);
    v41 = *(v15 + 34);
    v42 = v54;

    sub_3FA8C(v36, v37, v38, v39, v40, v41);
    *(v15 + 29) = v35;
    *(v15 + 30) = 0;
    *(v15 + 31) = 0;
    *(v15 + 32) = 2;
    *(v15 + 33) = v53;
    *(v15 + 34) = v42;
    v29 = &unk_AF8000;
  }

  else
  {
    sub_8A3C84(a9, v15, type metadata accessor for SymbolButton.Configuration);
    sub_3FA8C(*(v15 + 29), *(v15 + 30), *(v15 + 31), *(v15 + 32), *(v15 + 33), *(v15 + 34));
    *(v15 + 29) = 1;
    *(v15 + 15) = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 34) = 0;
  }

  sub_2580A4(v15, a9);
  sub_8A3C84(a9, v15, type metadata accessor for SymbolButton.Configuration);
  v43 = *(v15 + 27);
  v44 = *(v15 + 25);
  v45 = *(v15 + 26);
  v46 = *(v15 + 28);
  if (v62)
  {
    sub_3F9D0(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
    *(v15 + 200) = v29[44];
    *(v15 + 27) = 0;
    *(v15 + 28) = 0;
  }

  else
  {
    v47 = v58;

    v48 = v55;
    v49 = v55;
    sub_3F9D0(v44, v45, v43, v46);
    v50 = v57;
    *(v15 + 25) = v56;
    *(v15 + 26) = v48;
    *(v15 + 27) = v50;
    *(v15 + 28) = v47;
  }

  return sub_2580A4(v15, a9);
}

void *SymbolButton.Background.withAlpha(_:)(void *a1, uint64_t a2, uint64_t a3)
{

  v4 = a1;
  return a1;
}

uint64_t SymbolButton.Configuration.withAlpha(_:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = a2.n128_u64[0];
  sub_8A3C84(v2, a1, type metadata accessor for SymbolButton.Configuration);
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + *(result + 68)) = v3;
  return result;
}

id sub_89DDC4()
{
  result = [objc_opt_self() secondarySystemFillColor];
  static SymbolButton.Background.secondary = 0x3FF0000000000000;
  qword_E73E68 = result;
  qword_E73E70 = 0;
  qword_E73E78 = 0;
  return result;
}

uint64_t *SymbolButton.Background.secondary.unsafeMutableAddressor()
{
  if (qword_E16C18 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.secondary;
}

uint64_t static SymbolButton.Background.secondary.getter()
{
  if (qword_E16C18 != -1)
  {
    swift_once();
  }

  v0 = qword_E73E68;
  v1 = qword_E73E68;

  return v0;
}

id sub_89DEE8()
{
  result = [objc_opt_self() tertiarySystemFillColor];
  static SymbolButton.Background.tertiary = 0x3FF0000000000000;
  qword_E73E88 = result;
  qword_E73E90 = 0;
  qword_E73E98 = 0;
  return result;
}

uint64_t static SymbolButton.Background.tertiary.getter()
{
  if (qword_E16C20 != -1)
  {
    swift_once();
  }

  v0 = qword_E73E88;
  v1 = qword_E73E88;

  return v0;
}

id sub_89DFBC()
{
  if (qword_E16C20 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.normal = static SymbolButton.Background.tertiary;
  *&qword_E73EA8 = *&qword_E73E88;
  qword_E73EB8 = qword_E73E98;
  v1 = qword_E73E88;

  return v1;
}

uint64_t static SymbolButton.Background.normal.getter()
{
  if (qword_E16C28 != -1)
  {
    swift_once();
  }

  v0 = qword_E73EA8;
  v1 = qword_E73EA8;

  return v0;
}

id sub_89E0DC()
{
  if (qword_E16C18 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.highlighted = static SymbolButton.Background.secondary;
  *&qword_E73EC8 = *&qword_E73E68;
  qword_E73ED8 = qword_E73E78;
  v1 = qword_E73E68;

  return v1;
}

uint64_t static SymbolButton.Background.highlighted.getter()
{
  if (qword_E16C30 != -1)
  {
    swift_once();
  }

  v0 = qword_E73EC8;
  v1 = qword_E73EC8;

  return v0;
}

id sub_89E1FC()
{
  result = [objc_opt_self() effectWithStyle:7];
  qword_E73EE8 = 0;
  qword_E73EF0 = 0;
  static SymbolButton.Material.xr = result;
  byte_E73EF8 = 2;
  qword_E73F00 = 0;
  unk_E73F08 = 0;
  return result;
}

double static SymbolButton.Material.xr.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_E16C38 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static SymbolButton.Material.xr;
  v2 = qword_E73EE8;
  v3 = qword_E73EF0;
  v4 = byte_E73EF8;
  v5 = qword_E73F00;
  v6 = unk_E73F08;
  *a1 = static SymbolButton.Material.xr;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;

  return result;
}

uint64_t sub_89E2F4()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.capsule);
  __swift_project_value_buffer(v0, static UIView.Corner.capsule);
  return sub_ABA670();
}

uint64_t sub_89E364()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.roundedRect);
  __swift_project_value_buffer(v0, static UIView.Corner.roundedRect);
  return sub_ABA600();
}

id SymbolButton.withProvider(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = &v12[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  sub_17654(v7, v8);
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v5, 0, 0, 0, 1);
  sub_12E1C(v5, &qword_E1D170, &unk_B32400);
  v10 = v12;

  return v10;
}

id SymbolButton.withConfiguration(_:)(uint64_t a1)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_8A3C84(a1, v3, type metadata accessor for SymbolButton.Configuration);
  SymbolButton.setConfiguration(_:animation:updates:)(v3, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_8A1B6C(v3, type metadata accessor for SymbolButton.Configuration);
  v4 = v6[1];

  return v4;
}

id sub_89E65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_13C80(0, &qword_E1E070, UIMenuElement_ptr);
  v3 = sub_AB9760();

  v4 = v2(v3);

  return v4;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  v8 = *(a2 + 16);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_13C80(0, &qword_E1E0A8, NSBundle_ptr);
    v9 = v8;
    v10 = v7;
    v11 = sub_ABA790();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = sub_AB92A0();
  v14 = v13;
  if (v12 == sub_AB92A0() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_ABB3C0();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 32))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (*(a1 + 6) != *(a2 + 48) || *(a1 + 7) != *(a2 + 56))
  {
    return 0;
  }

  v18 = *(a1 + 80);
  v19 = *(a2 + 80);
  if (v18 == 255)
  {
    if (v19 != 255)
    {
      return 0;
    }
  }

  else
  {
    v20 = *(a2 + 64);
    v33 = *(a1 + 4);
    v34 = v18;
    if (v19 == 255)
    {
      return 0;
    }

    v31 = v20;
    v32 = v19 & 1;
    _s3__C8UIOffsetVMa_0(0);
    v22 = v21;
    sub_8A3D54(&qword_E1E0A0, _s3__C8UIOffsetVMa_0, &protocol conformance descriptor for UIOffset);
    if ((static DisplayUnit.__derived_enum_equals(_:_:)(&v33, &v31, v22) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 12);
  v24 = *(a2 + 96);
  if (v23)
  {
    if (!v24 || (*(a1 + 11) != *(a2 + 88) || v23 != v24) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (a1[13] == *(a2 + 104))
  {
    v25 = *(a1 + 14);
    v26 = *(a2 + 112);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      sub_13C80(0, &qword_E1AD80, UIColor_ptr);
      v27 = v26;
      v28 = v25;
      v29 = sub_ABA790();

      return (v29 & 1) != 0;
    }

    if (!v26)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a7 != a8)
  {
    return 0;
  }

  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    sub_13C80(0, &qword_E1AD80, UIColor_ptr);
    v14 = a4;
    v15 = a1;
    v16 = sub_ABA790();

    a2 = v9;
    a3 = v10;
    a5 = v12;
    a6 = v11;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (sub_ABB3C0() & 1) != 0);
  }

  return !a6;
}

uint64_t _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  if ((sub_ABA790() & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    v5 = v4 && *(a1 + 32) == *(a2 + 32);
    if (v5 && *(a1 + 40) == *(a2 + 40))
    {
      v6 = *(a1 + 48);
      v7 = *(a2 + 48);
      if (v6)
      {
        if (v7)
        {
          sub_13C80(0, &qword_E1AD80, UIColor_ptr);
          v8 = v7;
          v9 = v6;
          v10 = sub_ABA790();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(int a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6, void *a7, char a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      goto LABEL_17;
    }

    v10 = a3;
    v11 = a7;
    v12 = a4;
    v13 = a8;
    v14 = sub_AB92A0();
    v16 = v15;
    if (v14 == sub_AB92A0() && v16 == v17)
    {

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
    }

    else
    {
      v18 = sub_ABB3C0();

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    if (a7)
    {
      v19 = a4;
      v20 = a8;
      v21 = a7;
      v22 = sub_AB92A0();
      v24 = v23;
      if (v22 == sub_AB92A0() && v24 == v25)
      {

        a8 = v20;
        a4 = v19;
LABEL_20:
        v26 = a4 ^ a8 ^ 1;
        return v26 & 1;
      }

      v27 = sub_ABB3C0();

      a8 = v20;
      a4 = v19;
      if (v27)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a7)
  {
    goto LABEL_20;
  }

LABEL_17:
  v26 = 0;
  return v26 & 1;
}

BOOL _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = sub_AB92A0();
  v9 = v8;
  if (v7 == sub_AB92A0() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_ABB3C0();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[3] != *(a2 + 24))
  {
    return 0;
  }

  v13 = *(a1 + 5);
  v14 = *(a2 + 40);
  if (v13)
  {
    if (!v14 || (*(a1 + 4) != *(a2 + 32) || v13 != v14) && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (a1[6] != *(a2 + 48))
  {
    return 0;
  }

  v15 = *(a1 + 7);
  v16 = *(a2 + 56);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  sub_13C80(0, &qword_E1AD80, UIColor_ptr);
  v17 = v16;
  v18 = v15;
  v19 = sub_ABA790();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if ((*(a1 + 64) ^ *(a2 + 64)))
  {
    return 0;
  }

  return *(a1 + 9) == *(a2 + 72);
}

BOOL _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_13C80(0, &qword_E1E098, UIVisualEffect_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_ABA790();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_13C80(0, &qword_E1E098, UIVisualEffect_ptr);
    v11 = v10;
    v12 = v9;
    v13 = sub_ABA790();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_13C80(0, &qword_E1E098, UIVisualEffect_ptr);
    v16 = v15;
    v17 = v14;
    v18 = sub_ABA790();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
LABEL_21:
    v22 = *(a1 + 40);
    v23 = *(a2 + 40);
    if (v22)
    {
      return v23 && (*(a1 + 32) == *(a2 + 32) && v22 == v23 || (sub_ABB3C0() & 1) != 0);
    }

    return !v23;
  }

  return result;
}

BOOL _s11MusicCoreUI12SymbolButtonC5BadgeV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a3 != a5 || a4 != a6)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      sub_13C80(0, &qword_E1AD80, UIColor_ptr);
      v10 = a2;
      v11 = a1;
      v12 = sub_ABA790();

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_89F1A0(void **a1, void **a2)
{
  v4 = sub_ABA680();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8, &qword_B2A1F0);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v47 = a1;
  v13 = *a1;
  v14 = a2;
  v15 = *a2;
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_24;
    }

    sub_13C80(0, &unk_E1DF00, UITraitCollection_ptr);
    v16 = v15;
    v17 = v13;
    v18 = sub_ABA790();

    if ((v18 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v15)
  {
    goto LABEL_24;
  }

  v46 = type metadata accessor for SymbolButton.Metrics(0);
  v19 = *(v46 + 20);
  v20 = *(v10 + 48);
  sub_15F84(v47 + v19, v12, &qword_E1DB50, &qword_B29E40);
  v21 = v14 + v19;
  v22 = v14;
  sub_15F84(v21, &v12[v20], &qword_E1DB50, &qword_B29E40);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {
    if (v23(&v12[v20], 1, v4) == 1)
    {
      sub_12E1C(v12, &qword_E1DB50, &qword_B29E40);
      goto LABEL_13;
    }

LABEL_11:
    sub_12E1C(v12, &qword_E175C8, &qword_B2A1F0);
    goto LABEL_24;
  }

  sub_15F84(v12, v9, &qword_E1DB50, &qword_B29E40);
  if (v23(&v12[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v12[v20], v4);
  sub_8A3D54(&qword_E175D0, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v24 = sub_AB91C0();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v9, v4);
  v22 = v14;
  sub_12E1C(v12, &qword_E1DB50, &qword_B29E40);
  if ((v24 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  v27 = v46;
  v26 = v47;
  if ((sub_ABA790() & 1) == 0 || (sub_ABA790() & 1) == 0)
  {
    goto LABEL_24;
  }

  v28 = v27[8];
  v29 = *(v26 + v28);
  v30 = *(v22 + v28);
  v31 = 0;
  if (v29 == v30)
  {
    v32 = v27[9];
    v33 = (v26 + v32);
    v34 = *(v26 + v32);
    v35 = (v22 + v32);
    if (v34 == *v35 && v33[1] == v35[1])
    {
      v31 = 0;
      v36 = v27[10];
      v37 = (v26 + v36);
      v38 = *(v26 + v36);
      v39 = (v22 + v36);
      if (v38 == *v39 && v37[1] == v39[1])
      {
        v40 = v27[11];
        v41 = (v26 + v40);
        v42 = *(v26 + v40 + 16);
        v43 = (v22 + v40);
        v44 = *(v22 + v40 + 16);
        if (v42)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_28:
          v31 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v26 + v27[12]), *(v22 + v27[12])), vceqq_f64(*(v26 + v27[12] + 16), *(v22 + v27[12] + 16)))));
          return v31 & 1;
        }

        if (v44)
        {
LABEL_24:
          v31 = 0;
          return v31 & 1;
        }

        v31 = 0;
        if (*v41 == *v43 && v41[1] == v43[1])
        {
          goto LABEL_28;
        }
      }
    }
  }

  return v31 & 1;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = sub_ABA680();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v9 = &v141 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8, &qword_B2A1F0);
  __chkstk_darwin();
  v12 = (&v141 - v11);
  v13 = *(a1 + 80);
  v165[4] = *(a1 + 64);
  v165[5] = v13;
  v165[6] = *(a1 + 96);
  v166 = *(a1 + 112);
  v14 = *(a1 + 16);
  v165[0] = *a1;
  v165[1] = v14;
  v15 = *(a1 + 48);
  v165[2] = *(a1 + 32);
  v165[3] = v15;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[3];
  v167[2] = a2[2];
  v167[3] = v18;
  v167[0] = v16;
  v167[1] = v17;
  v19 = a2[4];
  v20 = a2[5];
  v21 = a2[6];
  v168 = *(a2 + 14);
  v167[5] = v20;
  v167[6] = v21;
  v167[4] = v19;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v165, v167))
  {
    return 0;
  }

  v22 = *(a1 + 136);
  v23 = *(a1 + 168);
  v163[2] = *(a1 + 152);
  v163[3] = v23;
  v24 = *(a1 + 184);
  v163[0] = *(a1 + 120);
  v163[1] = v22;
  v25 = *(a2 + 136);
  v26 = *(a2 + 168);
  v164[2] = *(a2 + 152);
  v164[3] = v26;
  v164[4] = *(a2 + 184);
  v27 = *(a2 + 120);
  v164[1] = v25;
  v163[4] = v24;
  v164[0] = v27;
  if (!_s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v163, v164))
  {
    return 0;
  }

  v148 = v9;
  v149 = v10;
  v151 = v5;
  v152 = v12;
  v147 = v7;
  v150 = v4;
  v28 = *(a1 + 200);
  v29 = *(a1 + 208);
  v30 = *(a1 + 224);
  v31 = *(a2 + 25);
  v32 = *(a2 + 26);
  v34 = *(a2 + 27);
  v33 = *(a2 + 28);
  if (v29 == &dword_0 + 1)
  {
    if (v32 == &dword_0 + 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    v35 = *(a2 + 25);
    v36 = *(a2 + 26);
    v37 = *(a1 + 216);
    sub_8A1AF4(v35, v36, v34, v33);
    sub_8A1AF4(v28, v29, v37, v30);
    sub_3F9D0(v28, v29, v37, v30);
    sub_3F9D0(v31, v32, v34, v33);
    return 0;
  }

  if (v32 == &dword_0 + 1)
  {
    goto LABEL_7;
  }

  v38 = *(a2 + 25);
  v39 = *(a1 + 216);
  sub_8A1AF4(v38, *(a2 + 26), *(a2 + 27), *(a2 + 28));
  sub_8A1AF4(v28, v29, v39, v30);
  v40 = _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(v29, v39, v30, v32, v34, v33, *&v28, *&v38);

  sub_3F9D0(v28, v29, v39, v30);
  if (!v40)
  {
    return 0;
  }

LABEL_9:
  v42 = *(a1 + 232);
  v41 = *(a1 + 240);
  v43 = *(a1 + 248);
  v44 = *(a1 + 256);
  v46 = *(a1 + 264);
  v45 = *(a1 + 272);
  v48 = *(a2 + 29);
  v47 = *(a2 + 30);
  v50 = *(a2 + 31);
  v49 = *(a2 + 32);
  v51 = *(a2 + 33);
  v52 = *(a2 + 34);
  if (v42 == &dword_0 + 1)
  {
    if (v48 == &dword_0 + 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    v53 = *(a2 + 29);
    v54 = *(a1 + 240);
    v55 = *(a2 + 30);
    v145 = *(a2 + 32);
    v146 = v47;
    v56 = v43;
    v57 = v50;
    v144 = v51;
    sub_8A42E4(v53, v55, v50, v49, v51, v52);
    sub_8A42E4(v42, v54, v56, v44, v46, v45);
    sub_3FA8C(v42, v54, v56, v44, v46, v45);
    sub_3FA8C(v48, v146, v57, v145, v144, v52);
    return 0;
  }

  if (v48 == &dword_0 + 1)
  {
    goto LABEL_13;
  }

  v159[0] = *(a2 + 29);
  v159[1] = v47;
  v159[2] = v50;
  v160 = v49;
  v161 = v51;
  v162 = v52;
  v155[0] = v42;
  v155[1] = v41;
  v155[2] = v43;
  v156 = v44;
  v157 = v46;
  v158 = v45;
  v142 = v50;
  v143 = v41;
  v146 = v47;
  v59 = v43;
  sub_8A42E4(v48, v47, v50, v49, v51, v52);
  sub_8A42E4(v42, v143, v59, v44, v46, v45);
  LODWORD(v145) = _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v155, v159);

  sub_3FA8C(v42, v143, v59, v44, v46, v45);
  if ((v145 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v60 = *(a1 + 296);
  v61 = *(a2 + 37);
  if (v60)
  {
    v62 = v152;
    if (!v61)
    {
      return 0;
    }

    v63 = *(a1 + 280);
    v64 = *(a1 + 288);
    v65 = *(a2 + 35);
    v66 = *(a2 + 36);
    v67 = v61;
    LOBYTE(v154[0]) = v66 & 1;
    v68 = static UIView.Border.__derived_struct_equals(_:_:)(v63, v64 & 1, v60, v65, v66 & 1, v67);

    if ((v68 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v62 = v152;
    if (v61)
    {
      return 0;
    }
  }

  v69 = type metadata accessor for SymbolButton.Configuration(0);
  v70 = *(v69 + 36);
  v71 = *(v149 + 48);
  sub_15F84(a1 + v70, v62, &qword_E1DB50, &qword_B29E40);
  sub_15F84(a2 + v70, v62 + v71, &qword_E1DB50, &qword_B29E40);
  v72 = v150;
  v73 = *(v151 + 48);
  if (v73(v62, 1, v150) == 1)
  {
    if (v73(v62 + v71, 1, v72) == 1)
    {
      sub_12E1C(v62, &qword_E1DB50, &qword_B29E40);
      goto LABEL_29;
    }

LABEL_27:
    sub_12E1C(v62, &qword_E175C8, &qword_B2A1F0);
    return 0;
  }

  v74 = v148;
  sub_15F84(v62, v148, &qword_E1DB50, &qword_B29E40);
  if (v73(v62 + v71, 1, v72) == 1)
  {
    (*(v151 + 8))(v74, v72);
    goto LABEL_27;
  }

  v152 = v69;
  v75 = v151;
  v76 = v62 + v71;
  v77 = v147;
  (*(v151 + 32))(v147, v76, v72);
  sub_8A3D54(&qword_E175D0, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v78 = sub_AB91C0();
  v79 = *(v75 + 8);
  v79(v77, v72);
  v79(v74, v72);
  v69 = v152;
  sub_12E1C(v62, &qword_E1DB50, &qword_B29E40);
  if ((v78 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v152 = v69;
  v80 = *(v69 + 40);
  v82 = *(a1 + v80);
  v81 = *(a1 + v80 + 8);
  v84 = *(a1 + v80 + 16);
  v83 = *(a1 + v80 + 24);
  v86 = *(a1 + v80 + 32);
  v85 = *(a1 + v80 + 40);
  v87 = *(a1 + v80 + 48);
  v88 = a2 + v80;
  v90 = *v88;
  v89 = *(v88 + 1);
  v92 = *(v88 + 2);
  v91 = *(v88 + 3);
  v94 = *(v88 + 4);
  v93 = *(v88 + 5);
  v95 = *(v88 + 6);
  if (!v82)
  {
    if (!v90)
    {
      v144 = *(v88 + 2);
      v145 = v89;
      v146 = v91;
      v141 = v94;
      v142 = v93;
      v110 = v85;
      v111 = v87;
      sub_7AFD44(0, v81, v84, v83, v86, v85, v87);
      sub_7AFD44(0, v145, v144, v146, v141, v142, v95);
      sub_7A5818(0, v81, v84, v83, v86, v110, v111);
      goto LABEL_36;
    }

LABEL_34:
    v102 = v81;
    v148 = v81;
    v149 = v84;
    v103 = v89;
    v104 = v84;
    v105 = v92;
    v106 = v91;
    v150 = v86;
    v151 = v85;
    v107 = v94;
    v108 = v86;
    v109 = v93;
    v147 = v87;
    sub_7AFD44(v82, v102, v104, v83, v108, v85, v87);
    sub_7AFD44(v90, v103, v105, v106, v107, v109, v95);
    sub_7A5818(v82, v148, v149, v83, v150, v151, v147);
    sub_7A5818(v90, v103, v105, v106, v107, v109, v95);
    return 0;
  }

  if (!v90)
  {
    goto LABEL_34;
  }

  v154[0] = *v88;
  v154[1] = v89;
  v154[2] = v92;
  v154[3] = v91;
  v154[4] = v94;
  v154[5] = v93;
  v154[6] = v95;
  v153[0] = v82;
  v153[1] = v81;
  v153[2] = v84;
  v153[3] = v83;
  v153[4] = v86;
  v153[5] = v85;
  v153[6] = v87;
  v148 = v81;
  v149 = v84;
  v144 = v92;
  v145 = v89;
  v96 = v81;
  v97 = v84;
  v143 = v83;
  v146 = v91;
  v147 = v87;
  v150 = v86;
  v151 = v85;
  v98 = v94;
  v99 = v93;
  sub_7AFD44(v82, v96, v97, v83, v86, v85, v87);
  v101 = v144;
  v100 = v145;
  sub_7AFD44(v90, v145, v144, v146, v98, v99, v95);
  LODWORD(v142) = _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v153, v154);
  sub_7A5818(v90, v100, v101, v146, v98, v99, v95);
  sub_7A5818(v82, v148, v149, v143, v150, v151, v147);
  if ((v142 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v112 = v152;
  v113 = v152[11];
  v114 = (a1 + v113);
  v115 = *(a1 + v113 + 16);
  v116 = a2 + v113;
  v117 = *(v116 + 2);
  if (v115 == &dword_0 + 1)
  {
    if (v117 != &dword_0 + 1)
    {
      return 0;
    }
  }

  else
  {
    if (v117 == &dword_0 + 1)
    {
      return 0;
    }

    result = 0;
    v126 = *v114;
    v127 = *v116;
    if (*v114 != *v116)
    {
      return result;
    }

    v128 = v114[1];
    v129 = *(v116 + 1);
    if (*&v128 != *&v129)
    {
      return result;
    }

    if (v115)
    {
      if (!v117)
      {
        return 0;
      }

      sub_13C80(0, &qword_E1AD80, UIColor_ptr);
      sub_8A1B3C(v127, v129, v117);
      sub_8A1B3C(v126, v128, v115);
      v130 = sub_ABA790();
      sub_7AFD34(v126, v128, v115);
      sub_7AFD34(v127, v129, v117);
      v112 = v152;
      if ((v130 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v112 = v152;
      if (v117)
      {
        return 0;
      }
    }
  }

  if (*(a1 + v112[12]) != *(a2 + v112[12]))
  {
    return 0;
  }

  result = 0;
  v118 = v112[13];
  v119 = a1 + v118;
  v120 = *(a1 + v118);
  v121 = (a2 + v118);
  if (v120 == *v121 && *(v119 + 8) == v121[1])
  {
    v122 = v152[14];
    v123 = (a1 + v122);
    v124 = *(a1 + v122 + 16);
    v125 = (a2 + v122);
    if (v124)
    {
      if ((v125[2] & 1) == 0)
      {
        return 0;
      }

      goto LABEL_56;
    }

    if (v125[2])
    {
      return 0;
    }

    result = 0;
    if (*v123 == *v125 && v123[1] == v125[1])
    {
LABEL_56:
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v152[15]), *(a2 + v152[15])), vceqq_f64(*(a1 + v152[15] + 16), *(a2 + v152[15] + 16))))))
      {
        v131 = v152[16];
        if ((_s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(*(a1 + v131), *(a1 + v131 + 8), *(a1 + v131 + 16), *(a1 + v131 + 24), *(a2 + v131), *(a2 + v131 + 8), *(a2 + v131 + 16), *(a2 + v131 + 24)) & 1) != 0 && *(a1 + v152[17]) == *(a2 + v152[17]))
        {
          v132 = v152[18];
          v133 = *(a1 + v132);
          v134 = *(a2 + v132);
          if (v133)
          {
            if (v134)
            {
              sub_13C80(0, &qword_E1AD80, UIColor_ptr);
              v135 = v134;
              v136 = v133;
              v137 = sub_ABA790();

              if (v137)
              {
LABEL_64:
                v138 = v152[19];
                v139 = *(a1 + v138);
                v140 = *(a2 + v138);
                if (v139 == 2)
                {
                  if (v140 == 2)
                  {
                    return 1;
                  }
                }

                else if (v140 != 2 && ((v140 ^ v139) & 1) == 0)
                {
                  return 1;
                }
              }
            }
          }

          else if (!v134)
          {
            goto LABEL_64;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

UIFontTextStyle sub_8A0228@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_B283E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  return UIFontTextStyleSubheadline;
}

char *sub_8A0278(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v58 = &v57 - v5;
  v59 = type metadata accessor for SymbolButton.Metrics(0);
  v6 = *(v59 - 8);
  __chkstk_darwin();
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
  *v10 = 0;
  v10[1] = 0;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize] = vdupq_n_s64(0x4040000000000000uLL);
  v11 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v68 = 1;
  v14 = type metadata accessor for SymbolButton.MaterialView();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v67.receiver = objc_allocWithZone(v14);
  v67.super_class = v14;
  v15 = objc_msgSendSuper2(&v67, "initWithEffect:", 0);
  sub_89B0B4(&v68);

  *&v4[v13] = v15;
  v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = *&static SymbolButton.Background.clear;
  v19 = qword_E73E18;
  v18 = qword_E73E20;
  v20 = qword_E73E28;
  v21 = type metadata accessor for SymbolButton.BackgroundView();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v23 = 0;
  *(v23 + 1) = 0x3FF0000000000000;
  v66.receiver = v22;
  v66.super_class = v21;
  v24 = v19;

  v25 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_89B530(v19, v18, v20, v17);
  sub_89B6F0();

  *&v4[v16] = v25;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
  (*(v6 + 56))(&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics], 1, 1, v59);
  v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] = 1;
  v26 = v62;
  sub_8A3C84(v62, &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration], type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v27 = *v10;
  v28 = v10[1];
  v29 = v60;
  v30 = v61;
  *v10 = v60;
  v10[1] = v30;
  sub_307CC(v29, v30);
  sub_17654(v27, v28);
  v31 = type metadata accessor for SymbolButton(0);
  v65.receiver = v4;
  v65.super_class = v31;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  v34 = *(v32 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  v35 = v32;
  [v34 setAutoresizingMask:18];
  v36 = *(v32 + v33);
  [v35 bounds];
  [v36 setFrame:?];

  [v35 addSubview:*(v32 + v33)];
  v37 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  [*(v32 + v33) addSubview:*(v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView)];
  v38 = [*(v35 + v37) contentView];
  v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  [v38 addSubview:*(v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView)];

  v40 = *(v35 + v39);
  type metadata accessor for SymbolButton.Label();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v40;
  if (([v42 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
  {
    v43 = v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v44 = type metadata accessor for SymbolButton.Configuration(0);
    v45 = v43[*(v44 + 76)];
    if (v45 == 2)
    {
      v46 = &v43[*(v44 + 36)];
      v47 = v58;
      sub_15F84(v46, v58, &qword_E1DB50, &qword_B29E40);
      v48 = sub_ABA680();
      LOBYTE(v45) = (*(*(v48 - 8) + 48))(v47, 1, v48) != 1;
      sub_12E1C(v47, &qword_E1DB50, &qword_B29E40);
    }

    [v42 setClipsToBounds:v45 & 1];
  }

  sub_8993E0(v26);
  v49 = v63;
  sub_898ED8(v63);
  sub_89A1E8();
  sub_8A1B6C(v49, type metadata accessor for SymbolButton.Metrics);
  sub_13C80(0, &qword_E17A80, UIAction_ptr);
  *(swift_allocObject() + 16) = ObjectType;
  v50 = sub_ABA7D0();
  [v35 addAction:v50 forControlEvents:64];

  v51 = UIAccessibilityTraitButton;
  v52 = v35;
  v53 = [v52 accessibilityTraits];
  if ((v51 & ~v53) != 0)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  [v52 setAccessibilityTraits:v54 | v53];

  v55 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v52];
  [v52 addInteraction:v55];

  sub_8A1B6C(v26, type metadata accessor for SymbolButton.Configuration);
  return v52;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    v9 = a2[3];
LABEL_9:
    v10 = v9 == 0;
    return !v10;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a2[3];

  if (!v7)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = a2[1];
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v12 = sub_ABB3C0();

        if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_18;
    }

LABEL_14:

    return 1;
  }

  if (v8)
  {
    return 1;
  }

LABEL_18:
  v13 = v3;
  v14 = v7;
  v15 = sub_AB92A0();
  v17 = v16;
  if (v15 == sub_AB92A0() && v17 == v18)
  {

    goto LABEL_22;
  }

  v19 = sub_ABB3C0();

  if ((v19 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v9 = a1[3];
  if (!a2[3])
  {
    goto LABEL_9;
  }

  if (!v9 || a1[6] != a2[6])
  {
    return 1;
  }

  v10 = a1[7] == a2[7];
  return !v10;
}

uint64_t sub_8A0BB4(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    if (*(a2 + 16))
    {
      goto LABEL_29;
    }

    v10 = 0;
LABEL_25:
    v19 = v10 != 0;
    return v19 & 1;
  }

  v5 = *(a1 + 7);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a2 + 16);

  if (!v8)
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v9 = *(a2 + 8);
  if (v6)
  {
    if (v9)
    {
      if (v7 == *a2 && v6 == v9)
      {
      }

      else
      {
        v11 = sub_ABB3C0();

        if ((v11 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    goto LABEL_29;
  }

  if (v9)
  {
    goto LABEL_29;
  }

LABEL_15:
  v12 = v3;
  v13 = v8;
  v14 = sub_AB92A0();
  v16 = v15;
  if (v14 == sub_AB92A0() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_ABB3C0();

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

  v19 = 1;
  if (v10 && a1[3] == *(a2 + 24))
  {
    v20 = *(a2 + 56);
    v21 = v5;
    v22 = v20;
    v23 = v22;
    if (v5)
    {
      if (v20)
      {
        sub_13C80(0, &qword_E1AD80, UIColor_ptr);
        v24 = sub_ABA790();

        v19 = v24 ^ 1;
        return v19 & 1;
      }
    }

    else
    {
      if (!v20)
      {
        v19 = 0;
        return v19 & 1;
      }
    }

LABEL_29:
    v19 = 1;
  }

  return v19 & 1;
}

void _s11MusicCoreUI12SymbolButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize) = vdupq_n_s64(0x4040000000000000uLL);
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v24 = 1;
  v8 = type metadata accessor for SymbolButton.MaterialView();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v23.receiver = objc_allocWithZone(v8);
  v23.super_class = v8;
  v9 = objc_msgSendSuper2(&v23, "initWithEffect:", 0);
  sub_89B0B4(&v24);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_E16BF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *&static SymbolButton.Background.clear;
  v13 = qword_E73E18;
  v12 = qword_E73E20;
  v14 = qword_E73E28;
  v15 = type metadata accessor for SymbolButton.BackgroundView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v17 = 0;
  *(v17 + 1) = 0x3FF0000000000000;
  v22.receiver = v16;
  v22.super_class = v15;
  v18 = v13;

  v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_89B530(v13, v12, v14, v11);
  sub_89B6F0();

  *(v1 + v10) = v19;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView) = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  v21 = type metadata accessor for SymbolButton.Metrics(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_8A10EC()
{

  return swift_deallocObject();
}

uint64_t sub_8A1124()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v27 = v0;
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != &dword_0 + 1)
  {
  }

  v7 = *(v5 + 232);
  if (v7 != &dword_0 + 1)
  {
  }

  v26 = v4;
  v8 = v4 + v2;

  v9 = v1[9];
  v10 = sub_ABA680();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != &dword_0 + 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v27 + v15;

  v19 = *(v27 + v15 + 208);
  if (v19 != &dword_0 + 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != &dword_0 + 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != &dword_0 + 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

void sub_8A14A4()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_891BF8((v0 + v4), (v0 + v5), v7, v8);
}

double block_copy_helper_227(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_8A1574()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v25 = *(*(v1 - 1) + 80);
  v2 = (v25 + 24) & ~v25;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;

  v5 = *(v0 + v2 + 208);
  if (v5 != &dword_0 + 1)
  {
  }

  v6 = *(v4 + 232);
  if (v6 != &dword_0 + 1)
  {
  }

  v7 = v3 + v25;

  v8 = v1[9];
  v9 = sub_ABA680();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v7 + v2;
  v13 = (v4 + v1[10]);
  if (*v13)
  {
  }

  v14 = v12 & ~v25;
  v15 = *(v4 + v1[11] + 16);
  if (v15 != &dword_0 + 1)
  {
  }

  v16 = v4 + v1[16];

  v17 = v0 + v14;

  v18 = *(v0 + v14 + 208);
  if (v18 != &dword_0 + 1)
  {
  }

  v19 = *(v17 + 232);
  if (v19 != &dword_0 + 1)
  {
  }

  v20 = v1[9];
  if (!v11(v17 + v20, 1, v9))
  {
    (*(v10 + 8))(v17 + v20, v9);
  }

  v21 = (v17 + v1[10]);
  if (*v21)
  {
  }

  v22 = *(v17 + v1[11] + 16);
  if (v22 != &dword_0 + 1)
  {
  }

  v23 = v17 + v1[16];

  return swift_deallocObject();
}

void sub_8A1908()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  sub_892950(v9, v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_8A19B4()
{

  return swift_deallocObject();
}

void sub_8A1AF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != &dword_0 + 1)
  {

    v5 = a2;
  }
}

char *sub_8A1B3C(uint64_t a1, uint64_t a2, char *a3)
{
  if (a3 != &dword_0 + 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_8A1B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8A1BCC()
{

  return swift_deallocObject();
}

BOOL sub_8A1C18(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return !*(a2 + 16);
  }

  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a2 + 16);

  if (!v7)
  {
    if (!v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v8 = *(a2 + 8);
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v9 = sub_ABB3C0();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_15:
  v10 = v3;
  v11 = v7;
  v12 = sub_AB92A0();
  v14 = v13;
  if (v12 == sub_AB92A0() && v14 == v15)
  {

    goto LABEL_19;
  }

  v16 = sub_ABB3C0();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v17 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    return !v17;
  }

  result = 0;
  if (v17 && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  return result;
}

id _s11MusicCoreUI12SymbolButtonC22contextMenuInteraction_016configurationForG10AtLocationSo09UIContextG13ConfigurationCSgSo0mgH0C_So7CGPointVtF_0()
{
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  swift_beginAccess();
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = v1[1];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = objc_opt_self();
  aBlock[4] = sub_8A3BCC;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_89E65C;
  aBlock[3] = &block_descriptor_230;
  v6 = _Block_copy(aBlock);
  sub_307CC(v2, v3);
  sub_307CC(v2, v3);
  v7 = v0;

  v8 = [v5 configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  _Block_release(v6);
  [v8 setPreferredMenuElementOrder:2];
  sub_17654(v2, v3);
  return v8;
}

id _s11MusicCoreUI12SymbolButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1E060, &qword_B2AC70);
  __chkstk_darwin();
  v4 = &v86[-v3];
  v5 = sub_ABA620();
  v94 = *(v5 - 8);
  v95 = v5;
  __chkstk_darwin();
  v93 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_ABA680();
  v8 = *(v7 - 8);
  v101 = v7;
  v102 = v8;
  __chkstk_darwin();
  v92 = &v86[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E175C8, &qword_B2A1F0);
  __chkstk_darwin();
  v12 = &v86[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v14 = &v86[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v16 = &v86[-v15];
  __chkstk_darwin();
  v18 = &v86[-v17];
  v103 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v96 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v21 = &v86[-v20];
  __chkstk_darwin();
  v23 = &v86[-v22];
  v24 = sub_AB4D00();
  v99 = *(v24 - 8);
  v100 = v24;
  __chkstk_darwin();
  v97 = &v86[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v26 = __chkstk_darwin().n128_u64[0];
  v98 = &v86[-v27];
  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v29 = result;
  if (![v1 isUserInteractionEnabled])
  {

    return 0;
  }

  v91 = v29;
  v89 = v4;
  v90 = v1;
  v30 = v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_8A3C84(v30, v23, type metadata accessor for SymbolButton.Configuration);
  v31 = *(v23 + 29);
  if (v31 == &dword_0 + 1)
  {
    sub_8A1B6C(v23, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    v32 = v31;
    sub_8A1B6C(v23, type metadata accessor for SymbolButton.Configuration);
    if (v31)
    {

      goto LABEL_10;
    }
  }

  if (*(v30 + 208) == 1 && !*(v30 + *(v103 + 40)))
  {
    goto LABEL_17;
  }

LABEL_10:
  v33 = [v90 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v88 = v30;
  if (v34 != &dword_4 + 2)
  {
LABEL_19:
    v52 = objc_allocWithZone(UITargetedPreview);
    v53 = [v52 initWithView:v91];
    v54 = [v53 parameters];
    v47 = &selRef__authenticateReturningError_;
    v44 = v90;
    [v90 bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_8A3C84(v30, v21, type metadata accessor for SymbolButton.Configuration);
    if ((*(v102 + 48))(&v21[*(v103 + 36)], 1, v101))
    {
      sub_8A1B6C(v21, type metadata accessor for SymbolButton.Configuration);
      sub_AB4CB0();
      v64 = v63;
    }

    else
    {
      v65 = v93;
      sub_ABA650();
      sub_8A1B6C(v21, type metadata accessor for SymbolButton.Configuration);
      [v44 bounds];
      sub_ABA610();
      v64 = v66;
      (*(v94 + 8))(v65, v95);
    }

    v42 = v98;
    v41 = v99;
    v46 = v97;
    v67 = [objc_opt_self() bezierPathWithRoundedRect:v56 cornerRadius:{v58, v60, v62, v64}];
    [v54 setShadowPath:v67];

    *v42 = v53;
    v43 = &enum case for UIPointerEffect.lift(_:);
    v45 = v96;
    v30 = v88;
    goto LABEL_23;
  }

  sub_15F84(v30 + *(v103 + 36), v18, &qword_E1DB50, &qword_B29E40);
  sub_ABA670();
  v35 = v101;
  v36 = v102;
  (*(v102 + 56))(v16, 0, 1, v101);
  v37 = *(v10 + 48);
  sub_15F84(v18, v12, &qword_E1DB50, &qword_B29E40);
  sub_15F84(v16, &v12[v37], &qword_E1DB50, &qword_B29E40);
  v38 = *(v36 + 48);
  if (v38(v12, 1, v35) == 1)
  {
    sub_12E1C(v16, &qword_E1DB50, &qword_B29E40);
    sub_12E1C(v18, &qword_E1DB50, &qword_B29E40);
    if (v38(&v12[v37], 1, v35) == 1)
    {
      sub_12E1C(v12, &qword_E1DB50, &qword_B29E40);
      v30 = v88;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_15F84(v12, v14, &qword_E1DB50, &qword_B29E40);
  if (v38(&v12[v37], 1, v35) == 1)
  {
    sub_12E1C(v16, &qword_E1DB50, &qword_B29E40);
    sub_12E1C(v18, &qword_E1DB50, &qword_B29E40);
    (*(v102 + 8))(v14, v35);
LABEL_16:
    sub_12E1C(v12, &qword_E175C8, &qword_B2A1F0);
    v30 = v88;
    goto LABEL_17;
  }

  v48 = v102;
  v49 = &v12[v37];
  v50 = v92;
  (*(v102 + 32))(v92, v49, v35);
  sub_8A3D54(&qword_E175D0, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v87 = sub_AB91C0();
  v51 = *(v48 + 8);
  v51(v50, v35);
  sub_12E1C(v16, &qword_E1DB50, &qword_B29E40);
  sub_12E1C(v18, &qword_E1DB50, &qword_B29E40);
  v51(v14, v35);
  sub_12E1C(v12, &qword_E1DB50, &qword_B29E40);
  v30 = v88;
  if (v87)
  {
    goto LABEL_19;
  }

LABEL_17:
  v39 = objc_allocWithZone(UITargetedPreview);
  v40 = [v39 initWithView:v91];
  v42 = v98;
  v41 = v99;
  *v98 = v40;
  v43 = &enum case for UIPointerEffect.highlight(_:);
  v44 = v90;
  v45 = v96;
  v46 = v97;
  v47 = &selRef__authenticateReturningError_;
LABEL_23:
  v68 = v100;
  (*(v41 + 104))(v42, *v43, v100);
  (*(v41 + 16))(v46, v42, v68);
  [v44 v47[56]];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  sub_8A3C84(v30, v45, type metadata accessor for SymbolButton.Configuration);
  if ((*(v102 + 48))(v45 + *(v103 + 36), 1, v101))
  {
    sub_8A1B6C(v45, type metadata accessor for SymbolButton.Configuration);
    sub_AB4CB0();
    v78 = v77;
  }

  else
  {
    v79 = v93;
    sub_ABA650();
    sub_8A1B6C(v45, type metadata accessor for SymbolButton.Configuration);
    [v44 v47[56]];
    sub_ABA610();
    v78 = v80;
    (*(v94 + 8))(v79, v95);
  }

  sub_13C80(0, &qword_E17A68, UIPointerStyle_ptr);
  v81 = v89;
  *v89 = v70;
  v81[1] = v72;
  v81[2] = v74;
  v81[3] = v76;
  v81[4] = v78;
  v82 = enum case for UIPointerShape.roundedRect(_:);
  v83 = sub_AB4CC0();
  v84 = *(v83 - 8);
  (*(v84 + 104))(v81, v82, v83);
  (*(v84 + 56))(v81, 0, 1, v83);
  v85 = sub_AB9F80();

  (*(v41 + 8))(v42, v68);
  return v85;
}

unint64_t sub_8A2B10(uint64_t a1)
{
  result = sub_8A2B38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2B38()
{
  result = qword_E1DBB8;
  if (!qword_E1DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBB8);
  }

  return result;
}

unint64_t sub_8A2B8C(uint64_t a1)
{
  result = sub_8A2BB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2BB4()
{
  result = qword_E1DBC0;
  if (!qword_E1DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBC0);
  }

  return result;
}

unint64_t sub_8A2C08(uint64_t a1)
{
  result = sub_8A2C30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2C30()
{
  result = qword_E1DBC8;
  if (!qword_E1DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBC8);
  }

  return result;
}

unint64_t sub_8A2C88()
{
  result = qword_E1DBD0;
  if (!qword_E1DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBD0);
  }

  return result;
}

unint64_t sub_8A2CDC(uint64_t a1)
{
  result = sub_8A2D04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2D04()
{
  result = qword_E1DBD8;
  if (!qword_E1DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBD8);
  }

  return result;
}

unint64_t sub_8A2D58(uint64_t a1)
{
  result = sub_8A2D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_8A2D80()
{
  result = qword_E1DBE0;
  if (!qword_E1DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DBE0);
  }

  return result;
}

void sub_8A2DDC(uint64_t a1)
{
  type metadata accessor for SymbolButton.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_8A3378(319, &qword_E1DC30, type metadata accessor for SymbolButton.Metrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for JSContainerDetail.LyricsSnippetData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JSContainerDetail.LyricsSnippetData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_8A2FBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_8A308C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8A313C(uint64_t a1)
{
  sub_48C430(319, &qword_E1DCA0, &type metadata for SymbolButton.Background);
  if (v1 <= 0x3F)
  {
    sub_48C430(319, &qword_E1DCA8, &type metadata for SymbolButton.Material);
    if (v2 <= 0x3F)
    {
      sub_48C430(319, &unk_E1DCB0, &type metadata for UIView.Border);
      if (v3 <= 0x3F)
      {
        sub_8A3378(319, &qword_E17548, &type metadata accessor for UIView.Corner);
        if (v4 <= 0x3F)
        {
          sub_48C430(319, &qword_E1DCC0, &type metadata for SymbolButton.CustomView);
          if (v5 <= 0x3F)
          {
            sub_48C430(319, &qword_E1DCC8, &type metadata for SymbolButton.Badge);
            if (v6 <= 0x3F)
            {
              _s3__C6CGSizeVMa_0(319);
              if (v7 <= 0x3F)
              {
                sub_8A3378(319, &qword_E1DCD0, _s3__C6CGSizeVMa_0);
                if (v8 <= 0x3F)
                {
                  _s3__C23NSDirectionalEdgeInsetsVMa_0(319);
                  if (v9 <= 0x3F)
                  {
                    sub_6A729C(319, &unk_E1DCD8, &qword_E1AD80, UIColor_ptr);
                    if (v10 <= 0x3F)
                    {
                      sub_48C430(319, &unk_E1DCE8, &type metadata for Bool);
                      if (v11 <= 0x3F)
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

void sub_8A3378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_8A33CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_8A3428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_8A34BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_8A3504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}