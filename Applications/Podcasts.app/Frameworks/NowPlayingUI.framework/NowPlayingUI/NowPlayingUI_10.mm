void sub_FE808(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D70, &qword_154180);
  v4 = sub_1451CC();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_ED8DC(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = sub_14519C(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

uint64_t sub_FEA34(uint64_t a1, uint64_t a2, __n128 a3)
{
  v29 = a1;
  v30 = a2;
  v3 = sub_1442EC();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14236C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8D78, &qword_154188);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  sub_FEDF4(v29, &v27 - v17, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
  sub_FEDF4(v30, &v18[v20], type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_FEDF4(v18, v12, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v27;
      v21 = v28;
      (*(v27 + 32))(v5, &v18[v20], v28);
      v23 = sub_1442CC();
      v24 = *(v22 + 8);
      v24(v5, v21);
      v24(v12, v21);
LABEL_9:
      sub_FEE5C(v18);
      return v23 & 1;
    }

    (*(v27 + 8))(v12, v28);
  }

  else
  {
    sub_FEDF4(v18, v15, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v9, &v18[v20], v6);
      v23 = sub_14235C();
      v25 = *(v7 + 8);
      v25(v9, v6);
      v25(v15, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v15, v6);
  }

  sub_15340(v18, &qword_1C8D78, &qword_154188);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_FEDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_FEE5C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FEEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8510, &qword_154190);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D19C(a1, &v21 - v12, &qword_1C41C8, &qword_14EAF0);
  sub_1D19C(a2, &v13[v15], &qword_1C41C8, &qword_14EAF0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D19C(v13, v10, &qword_1C41C8, &qword_14EAF0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_FF260(&v13[v15], v7, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
      v19 = sub_FEA34(v10, v7, v18);
      sub_FEE5C(v7);
      sub_FEE5C(v10);
      sub_15340(v13, &qword_1C41C8, &qword_14EAF0);
      v17 = v19 ^ 1;
      return v17 & 1;
    }

    sub_FEE5C(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_15340(v13, &qword_1C8510, &qword_154190);
    v17 = 1;
    return v17 & 1;
  }

  sub_15340(v13, &qword_1C41C8, &qword_14EAF0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_FF16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_FF1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_FF260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_FF2CC()
{
  result = qword_1C8D88;
  if (!qword_1C8D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8D90, &unk_1541A8);
    sub_FC648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D88);
  }

  return result;
}

uint64_t Array.item(where:)@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_144A5C();
  swift_getWitnessTable();
  sub_144BBC();
  if (v9)
  {
    v7 = 1;
  }

  else
  {
    sub_144A6C();
    v7 = 0;
  }

  return (*(*(a4 - 8) + 56))(a5, v7, 1, a4);
}

Swift::Void __swiftcall Array.moveItem(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = *(v2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(at);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v10 - v8;
  sub_144A4C();
  (*(v4 + 16))(v6, v9, v3);
  sub_144A3C();
  (*(v4 + 8))(v9, v3);
}

void *sub_FF5CC(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = 0;
  v4 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView;
  v5 = [objc_allocWithZone(UITextView) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setEditable:0];
  [v7 setScrollEnabled:0];
  [v7 setSelectable:1];
  [v7 setDataDetectorTypes:2];
  *&v2[v4] = v7;
  v9 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText;
  v10 = sub_14247C();
  sub_14246C();
  sub_14245C();
  v11 = objc_allocWithZone(v10);
  *&v2[v9] = sub_14248C();
  sub_1DB40(a1, &v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics]);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for LyricsTextViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

void sub_FF794()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent);
  }

  else
  {
    v3 = sub_14247C();
    sub_14246C();
    sub_14245C();
    v4 = objc_allocWithZone(v3);
    v2 = sub_14248C();
    v1 = 0;
  }

  v7 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText);
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText) = v2;
  v5 = v1;
  v6 = v2;
  sub_FFDC8(v7);
}

void sub_FF874(uint64_t a1)
{
  v2 = v1;
  v48.receiver = v1;
  v48.super_class = type metadata accessor for LyricsTextViewController();
  objc_msgSendSuper2(&v48, "viewDidLoad");
  v3 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  [v4 addSubview:v3];

  v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
  if (v6)
  {
    v7 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText];
    *&v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText] = v6;
    v8 = v6;
    sub_FFDC8(v7);
  }

  [v3 setDelegate:v2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880, &unk_14F180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_14D1C0;
  v10 = [v3 leadingAnchor];
  v11 = [v2 view];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  *(v9 + 32) = v14;
  v15 = [v3 trailingAnchor];
  v16 = [v2 view];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v9 + 40) = v19;
  v20 = [v3 topAnchor];
  v21 = [v2 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v9 + 48) = v24;
  v25 = [v3 bottomAnchor];
  v26 = [v2 view];
  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 bottomAnchor];

  v30 = [v25 constraintEqualToAnchor:v29];
  *(v9 + 56) = v30;
  sub_1000A4();
  isa = sub_1449CC().super.isa;

  [v28 activateConstraints:isa];

  v32 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics + 24];
  v33 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics], v32);
  v34 = (*(v33 + 96))(v32, v33);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = [v2 view];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 effectiveUserInterfaceLayoutDirection];

    if (v43)
    {
      if (v43 == &dword_0 + 1)
      {
        v44 = v40;
        v40 = v36;
LABEL_14:
        [v3 setTextContainerInset:{v34, v44, v38, v40, v47[0]}];
        sub_14114C();
        v46 = sub_14113C();
        [v3 setTintColor:v46];

        return;
      }

      type metadata accessor for UIUserInterfaceLayoutDirection(0);
      v47[3] = v45;
      v47[0] = v43;
      sub_140EBC();
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v44 = v36;
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

void sub_FFDC8(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText);
  sub_14247C();
  v5 = v4;
  v6 = sub_144FFC();

  if ((v6 & 1) == 0)
  {
    v7 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics + 24);
    v8 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_metrics), v7);
    v9 = (*(v8 + 144))(v7, v8);
    v10 = *(v2 + v3);
    v11 = sub_14244C();

    v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v11];
    v16 = v12;
    v13 = [v16 length];
    v14 = [v9 preferredFont];
    [v16 addAttribute:NSFontAttributeName value:v14 range:{0, v13}];

    sub_14114C();
    v15 = sub_14104C();
    [v16 addAttribute:NSForegroundColorAttributeName value:v15 range:{0, v13}];

    [*(v2 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView) setAttributedText:v16];
  }
}

id sub_FFFE0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LyricsTextViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000A4()
{
  result = qword_1C8190;
  if (!qword_1C8190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C8190);
  }

  return result;
}

void sub_1000F0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent) = 0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textView;
  v3 = [objc_allocWithZone(UITextView) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setEditable:0];
  [v5 setScrollEnabled:0];
  [v5 setSelectable:1];
  [v5 setDataDetectorTypes:2];
  *(v1 + v2) = v5;
  v7 = OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_attributedLyricsText;
  v8 = sub_14247C();
  sub_14246C();
  sub_14245C();
  v9 = objc_allocWithZone(v8);
  *(v1 + v7) = sub_14248C();
  sub_1452FC();
  __break(1u);
}

uint64_t sub_100290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10037C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingPreciseControlSlider(uint64_t a1)
{
  result = qword_1C8EA0;
  if (!qword_1C8EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100490(uint64_t a1)
{
  sub_C3F0C(319);
  if (v2 <= 0x3F)
  {
    sub_F0ADC(v1);
    if (v3 <= 0x3F)
    {
      sub_5C96C(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100550@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NowPlayingPreciseControlSlider(0);
  v5 = v4 - 8;
  v50 = *(v4 - 8);
  v53 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  sub_143E3C();
  swift_getKeyPath();
  sub_143E5C();

  v15 = *(v9 + 8);
  v48 = v9 + 8;
  v49 = v15;
  v15(v14, v8);
  v51 = v58;
  v52 = v57;
  v16 = v59;
  v17 = (v1 + *(v5 + 28));
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v1 + *(v5 + 32));
  sub_143E2C();
  v21 = v54;
  swift_getKeyPath();
  v54 = v21;
  sub_100F18();
  sub_141A4C();

  v22 = *(v21 + 128);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8EE0, &qword_1542D8);
  v24 = (a1 + v23[17]);
  v24[3] = type metadata accessor for NowPlayingSpeedControlsAnimationViewModel(0);
  v24[4] = &protocol witness table for NowPlayingSpeedControlsAnimationViewModel;
  *v24 = v22;
  sub_100F70(v2, v7);
  v25 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v50 = swift_allocObject();
  sub_100FD8(v7, v50 + v25);
  sub_100F70(v2, v7);
  v47 = swift_allocObject();
  sub_100FD8(v7, v47 + v25);
  sub_143E3C();
  swift_getKeyPath();
  sub_143E5C();

  v49(v11, v8);
  v26 = v54;
  v27 = v55;
  LOBYTE(v8) = v56;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  swift_storeEnumTagMultiPayload();
  v28 = (a1 + v23[9]);
  v29 = v51;
  *v28 = v52;
  v28[1] = v29;
  v28[2] = v16;
  v30 = (a1 + v23[11]);
  *v30 = v18;
  v30[1] = v19;
  *(a1 + v23[12]) = v20;
  v31 = (a1 + v23[13]);
  *v31 = UIScreen.Dimensions.size.getter;
  v31[1] = 0;
  v32 = a1 + v23[14];
  strcpy(v32, "tortoise.fill");
  *(v32 + 7) = -4864;
  *(v32 + 2) = 0x6C69662E65726168;
  *(v32 + 3) = 0xE90000000000006CLL;
  v33 = (a1 + v23[15]);
  v34 = v50;
  *v33 = sub_10103C;
  v33[1] = v34;
  v35 = (a1 + v23[16]);
  v36 = v47;
  *v35 = sub_101054;
  v35[1] = v36;
  v37 = a1 + v23[10];
  *v37 = v26;
  *(v37 + 1) = v27;
  v37[16] = v8;
  v38 = sub_143BDC();
  KeyPath = swift_getKeyPath();
  v40 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8EE8, &qword_154370) + 36));
  *v40 = KeyPath;
  v40[1] = v38;
  sub_100F70(v2, v7);
  v41 = swift_allocObject();
  sub_100FD8(v7, v41 + v25);
  v42 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8EF0, &qword_154378) + 36));
  *v42 = sub_1010D4;
  v42[1] = v41;
  v42[2] = 0;
  v42[3] = 0;
  sub_100F70(v2, v7);
  v43 = swift_allocObject();
  sub_100FD8(v7, v43 + v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C8EF8, &unk_154380);
  v45 = (a1 + *(result + 36));
  *v45 = 0;
  v45[1] = 0;
  v45[2] = sub_1011E4;
  v45[3] = v43;
  return result;
}

double sub_100AAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  sub_143E2C();
  if ((((*(v2 + 16) | (*(v2 + 20) << 32)) + 0x100000000) >> 32) >= 3uLL)
  {
    *(v2 + 16) = 0;
    *(v2 + 20) = 2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100F18();
    sub_141A3C();
  }

  return result;
}

double sub_100BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  sub_143E2C();
  sub_1140EC(1);

  return result;
}

double sub_100C38(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  sub_143E2C();
  swift_getKeyPath();
  sub_100F18();
  sub_141A4C();

  type metadata accessor for NowPlayingPreciseControlSlider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810, &qword_14DBF0);
  sub_143CCC();
  return result;
}

void sub_100D28(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for NowPlayingPreciseControlSlider(0) + 28);
  LODWORD(v8) = *v1;
  BYTE4(v8) = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810, &qword_14DBF0);
  sub_143CBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  sub_143E2C();
  swift_getKeyPath();
  sub_100F18();
  sub_141A4C();

  v2 = *(v8 + 24);

  if ((v7 & 1) != 0 || v6 != v2)
  {
    sub_143E2C();
    swift_getKeyPath();
    sub_141A4C();

    swift_getKeyPath();
    sub_141A6C();

    v3 = *(v8 + 120);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(v8 + 120) = v5;
      swift_getKeyPath();
      sub_141A5C();
    }
  }
}

unint64_t sub_100F18()
{
  result = qword_1C93E0;
  if (!qword_1C93E0)
  {
    type metadata accessor for NowPlayingPlaybackControlsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C93E0);
  }

  return result;
}

uint64_t sub_100F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingPreciseControlSlider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingPreciseControlSlider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10107C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_142E2C();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(type metadata accessor for NowPlayingPreciseControlSlider(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1C6BE0, qword_152660);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1011FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NowPlayingPreciseControlSlider(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1012FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101380()
{
  result = qword_1C8F10;
  if (!qword_1C8F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C8EE8, &qword_154370);
    sub_1D4A4(qword_1C8F18, &qword_1C8EE0, &qword_1542D8, &protocol conformance descriptor for TickerSlider<A>);
    sub_1D4A4(&qword_1C5690, &qword_1C5698, &qword_150BF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8F10);
  }

  return result;
}

BOOL == infix(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (!a1)
  {
    return (a4 & 1) != 0 && !a3;
  }

  if (a1 == 1)
  {
    return (a4 & 1) != 0 && a3 == 1;
  }

  return (a4 & 1) != 0 && a3 > 1;
}

BOOL sub_1014D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CollectionComparisonOperationType.description.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x747265736E69;
    if (a1 != 1)
    {
      v2 = 0x7574697473627573;
    }

    if (a1)
    {
      return v2;
    }

    else
    {
      return 0x6574656C6564;
    }
  }

  else
  {
    v4._countAndFlagsBits = sub_14538C();
    sub_14494C(v4);

    return 0x6F72662065766F6DLL;
  }
}

uint64_t sub_101618(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1016A0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
  }

  v8 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_101804(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 24) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 24) & ~v8;

  v18(v19);
}

id sub_101A54(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9068, &qword_154588);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v20 = sub_14100C();
  __chkstk_darwin(v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (a4)
        {
          if (a4 == 3)
          {
            if (*&a3 == 0.0)
            {
              v24 = v21;
              sub_140F8C();
              goto LABEL_61;
            }

            if (a3 == 1)
            {
              v24 = v21;
              sub_140FAC();
              goto LABEL_61;
            }

            if (a3 == 2)
            {
              v24 = v21;
              sub_140F9C();
LABEL_61:
              v32 = sub_140FBC();
              (*(v24 + 8))(v23, v20);
              return v32;
            }
          }

          return 0;
        }

        v33 = v21;
        sub_140F7C();
        if ((*(v33 + 48))(v10, 1, v20) != 1)
        {
          v32 = sub_140FBC();
          (*(v33 + 8))(v10, v20);
          return v32;
        }

        v26 = v10;
      }

      else
      {
        if (a4)
        {
          if (a4 == 3)
          {
            if (*&a3 == 0.0)
            {
              v24 = v21;
              sub_140FDC();
              goto LABEL_61;
            }

            if (a3 == 1)
            {
              v24 = v21;
              sub_140FFC();
              goto LABEL_61;
            }

            if (a3 == 2)
            {
              v24 = v21;
              sub_140FEC();
              goto LABEL_61;
            }
          }

          return 0;
        }

        v34 = v21;
        sub_140FCC();
        if ((*(v34 + 48))(v13, 1, v20) != 1)
        {
          v32 = sub_140FBC();
          (*(v34 + 8))(v13, v20);
          return v32;
        }

        v26 = v13;
      }

      goto LABEL_44;
    }

    if (a4 <= 1u)
    {
      if (a4 || *&a3 <= 0.0)
      {
        return 0;
      }

      v29 = v21;
      sub_140ECC();
      if ((*(v29 + 48))(v19, 1, v20) != 1)
      {
        v32 = sub_140FBC();
        (*(v29 + 8))(v19, v20);
        return v32;
      }

      v26 = v19;
      goto LABEL_44;
    }

    if (a4 != 2)
    {
      if (*&a3 == 0.0)
      {
        v24 = v21;
        sub_140EDC();
      }

      else
      {
        v24 = v21;
        if (a3 == 1)
        {
          sub_140EFC();
        }

        else
        {
          sub_140EEC();
        }
      }

      goto LABEL_61;
    }

    if (a3 != 1)
    {
      return 0;
    }

    sub_2B860(0, &qword_1C2F20, UIImage_ptr);
    v38._object = 0x80000000001676E0;
    v38._countAndFlagsBits = 0xD000000000000019;
    v27.super.isa = sub_144FDC(v38).super.isa;
    v28 = [(objc_class *)v27.super.isa imageWithRenderingMode:2];
LABEL_47:
    v32 = v28;

    return v32;
  }

  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (*&a3 == 0.0)
      {
        v24 = v21;
        sub_140F1C();
      }

      else
      {
        v24 = v21;
        if (a3 == 1)
        {
          sub_140F3C();
        }

        else
        {
          sub_140F2C();
        }
      }

      goto LABEL_61;
    }

    if (*&a3 == NAN)
    {
      sub_2B860(0, &qword_1C2F20, UIImage_ptr);
      v39._countAndFlagsBits = 0xD00000000000001DLL;
      v39._object = 0x8000000000167080;
      v27.super.isa = sub_144FDC(v39).super.isa;
      v28 = [(objc_class *)v27.super.isa imageWithRenderingMode:2];
    }

    else
    {
      if (a3 != 1)
      {
        return 0;
      }

      sub_2B860(0, &qword_1C2F20, UIImage_ptr);
      v37._object = 0x80000000001670A0;
      v37._countAndFlagsBits = 0xD000000000000019;
      v27.super.isa = sub_144FDC(v37).super.isa;
      v28 = [(objc_class *)v27.super.isa imageWithRenderingMode:2];
    }

    goto LABEL_47;
  }

  if (a4)
  {
    sub_2B860(0, &qword_1C2F20, UIImage_ptr);
    v30 = "configurationsChangedHandler";
    if (a3)
    {
      v30 = "NowPlaying-Radio-Star";
      v31._countAndFlagsBits = 0xD00000000000001CLL;
    }

    else
    {
      v31._countAndFlagsBits = 0xD000000000000015;
    }

    v31._object = (v30 | 0x8000000000000000);
    v27.super.isa = sub_144FDC(v31).super.isa;
    v28 = [(objc_class *)v27.super.isa imageWithRenderingMode:2];
    goto LABEL_47;
  }

  v25 = v21;
  sub_140F0C();
  if ((*(v25 + 48))(v16, 1, v20) == 1)
  {
    v26 = v16;
LABEL_44:
    sub_103478(v26);
    return 0;
  }

  v32 = sub_140FBC();
  (*(v25 + 8))(v16, v20);
  return v32;
}

void sub_102060(void *a1, uint64_t a2)
{
  v3 = v2;
  v101 = sub_140C2C();
  v5 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v93 - v8;
  if (!a1)
  {
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = 0;

    v3[5] = 0;
    v3[6] = 0;
    v3[7] = 0;

    v3[8] = 0;
    v3[9] = 0;
    v3[10] = 0;

    v3[11] = 0;
    v3[12] = 0;
    v3[13] = 0;

    v3[14] = 0;
    v3[15] = 0;
    v3[16] = 0;

    v24 = v3[17];
    if (v24)
    {
      v25 = v3[18];

      v24(v26);

      sub_2173C(v24, v25);
    }

    return;
  }

  v9 = a1;
  v10 = [v9 tracklist];
  v12 = sub_AB9C0(v10, v11);

  v13 = [v12 seekCommand];
  v14 = v9;
  v15 = sub_103184(v14, -1, 2u);

  *(v3 + 1) = xmmword_1544E0;
  v3[4] = v15;

  v95 = v12;
  v96 = v3;
  v94 = v13;
  if (v13)
  {
    v16 = [v13 preferredBackwardJumpIntervals];
    sub_2B860(0, &qword_1C8220, NSNumber_ptr);
    v17 = sub_1449DC();

    if (v17 >> 62)
    {
      if (sub_14531C())
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_5:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = sub_1451FC();
      }

      else
      {
        if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_79:
          v82 = sub_1451FC();
LABEL_68:
          v83 = v82;

          [v83 doubleValue];
          v85 = v84;

          v86 = v14;
          v87 = sub_103184(v86, v85, 0);

          v3[11] = v85;
          v3[12] = 0;
          v3[13] = v87;
LABEL_73:

          v88 = v14;
          v89 = sub_103184(v88, 1, 2u);

          *(v3 + 7) = xmmword_14A710;
          v3[16] = v89;

          v90 = v3[17];
          if (v90)
          {
            v91 = v3[18];

            v90(v92);
            swift_unknownObjectRelease();

            sub_2173C(v90, v91);
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return;
        }

        v18 = *(v17 + 32);
      }

      v19 = v18;

      [v19 doubleValue];
      v21 = v20;

      v22 = v14;
      v23 = sub_103184(v22, v21, 0);

      v3[5] = v21;
      v3[6] = 0;
      v3[7] = v23;
      goto LABEL_16;
    }
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
LABEL_16:

  v106 = _swiftEmptyArrayStorage;
  v27 = 3;
  sub_92C8C(0, 3, 0);
  v100 = (v5 + 8);
  v28 = &byte_19E2C8;
  v29 = v106;
  v99 = v14;
  do
  {
    v30 = *(v28 - 1);
    v31 = *v28;
    v32 = &_swiftEmptyDictionarySingleton;
    if (v31 == 1)
    {
      goto LABEL_44;
    }

    v33 = v14;
    v104 = v30;
    v34 = sub_102B54(v33, 0, v30, v31);
    if (!v34)
    {

      v32 = &_swiftEmptyDictionarySingleton;
LABEL_27:
      v30 = v104;
      goto LABEL_44;
    }

    v35 = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v102 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = &_swiftEmptyDictionarySingleton;
    sub_13819C(sub_103664, v36, 0, isUniquelyReferenced_nonNull_native);
    v32 = v105;
    v103 = v33;
    v38 = [v33 tracklist];
    v39 = [v38 playingItemIndexPath];
    if (v39)
    {
      v40 = v97;
      v41 = v39;
      sub_140BAC();

      v42 = [v38 items];
      isa = sub_140B9C().super.isa;
      v44 = [v42 itemAtIndexPath:isa];

      (*v100)(v40, v101);
      v30 = v104;
      if (!v31)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v44 = 0;
      v30 = v104;
      if (!v31)
      {
LABEL_29:

        v45 = v103;
        goto LABEL_33;
      }
    }

    if (v31 == 2)
    {
      v45 = v103;
      if (v44)
      {
        v46 = [v44 seekCommand];
        if (v46)
        {
          v47 = [v46 beginSeekWithDirection:v104];
          swift_unknownObjectRelease();

          if (v47)
          {
            v48 = swift_allocObject();
            *(v48 + 16) = v47;
            v49 = swift_isUniquelyReferenced_nonNull_native();
            v105 = v32;
            sub_13819C(sub_103518, v48, 1, v49);
            v32 = v105;
          }
        }

        else
        {
        }

        v30 = v104;
      }
    }

    else
    {
      v45 = v103;
    }

LABEL_33:
    v50 = [v45 tracklist];
    v51 = [v50 playingItemIndexPath];
    if (v51)
    {
      v52 = v98;
      v53 = v51;
      sub_140BAC();

      v54 = [v50 items];
      v55 = sub_140B9C().super.isa;
      v56 = [v54 itemAtIndexPath:v55];

      v30 = v104;
      v45 = v103;
      (*v100)(v52, v101);
    }

    else
    {

      v56 = 0;
    }

    v14 = v99;
    if (v31 == 2)
    {
      if (v56)
      {
        v57 = [v56 seekCommand];
        if (v57)
        {
          v58 = [v57 endSeek];
          swift_unknownObjectRelease();

          if (v58)
          {
            v59 = swift_allocObject();
            *(v59 + 16) = v58;
            v60 = v45;
            v61 = v58;
            v62 = swift_isUniquelyReferenced_nonNull_native();
            v105 = v32;
            sub_13819C(sub_103664, v59, 2, v62);

            v32 = v105;
          }

          else
          {
          }

          v14 = v99;
          goto LABEL_27;
        }
      }
    }

    else
    {
    }

LABEL_44:
    v106 = v29;
    v64 = v29[2];
    v63 = v29[3];
    if (v64 >= v63 >> 1)
    {
      sub_92C8C((v63 > 1), v64 + 1, 1);
      v29 = v106;
    }

    v29[2] = v64 + 1;
    v65 = &v29[3 * v64];
    v65[4] = v30;
    v28 += 16;
    *(v65 + 40) = v31;
    v65[6] = v32;
    --v27;
  }

  while (v27);
  v66 = 0;
  v3 = (v64 + 1);
  v67 = _swiftEmptyArrayStorage;
  v12 = &dword_18;
LABEL_50:
  v68 = 3 * v66;
  while (1)
  {
    if (v3 == v66)
    {

      if (*(v67 + 16))
      {
        v77 = *(v67 + 32);
        v78 = *(v67 + 40);
        v79 = *(v67 + 48);
      }

      else
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
      }

      v12 = v95;
      v3 = v96;
      v80 = v94;

      v3[8] = v77;
      v3[9] = v78;
      v3[10] = v79;

      if (v80)
      {
        v81 = [v80 preferredForwardJumpIntervals];
        sub_2B860(0, &qword_1C8220, NSNumber_ptr);
        v67 = sub_1449DC();

        if (v67 >> 62)
        {
          goto LABEL_70;
        }

        if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_65;
        }

LABEL_71:
      }

      v3[11] = 0;
      v3[12] = 0;
      v3[13] = 0;
      goto LABEL_73;
    }

    if (v66 >= v29[2])
    {
      break;
    }

    ++v66;
    v69 = v68 * 8 + 24;
    v70 = v29[v68 + 6];
    v68 += 3;
    if (*(v70 + 16))
    {
      v71 = *(v29 + v69 + 8);
      v72 = *(v29 + v69 + 16);

      v73 = swift_isUniquelyReferenced_nonNull_native();
      v106 = v67;
      if ((v73 & 1) == 0)
      {
        sub_92C8C(0, *(v67 + 16) + 1, 1);
        v67 = v106;
      }

      v75 = *(v67 + 16);
      v74 = *(v67 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_92C8C((v74 > 1), v75 + 1, 1);
        v67 = v106;
      }

      *(v67 + 16) = v75 + 1;
      v76 = v67 + 24 * v75;
      *(v76 + 32) = v71;
      *(v76 + 40) = v72;
      *(v76 + 48) = v70;
      v14 = v99;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_70:
  if (!sub_14531C())
  {
    goto LABEL_71;
  }

LABEL_65:
  if ((v67 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)))
  {
    v82 = *(v67 + 32);
    goto LABEL_68;
  }

  __break(1u);
}

id sub_102B54(void *a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = [a1 tracklist];
  v10 = sub_AB9C0(v8, v9);

  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a2)
      {
        goto LABEL_86;
      }

      if (a3)
      {
        if (!v10)
        {
          return 0;
        }

        v14 = [v10 dislikeCommand];
        if (!v14)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (!v10)
        {
          return 0;
        }

        v14 = [v10 likeCommand];
        if (!v14)
        {
          goto LABEL_86;
        }
      }

      v12 = [v14 changeValue:1];
      goto LABEL_41;
    }

    if (!a2)
    {
      if (v10)
      {
        v11 = [v10 seekCommand];
        if (v11)
        {
          v12 = [v11 jumpByInterval:*&a3];
LABEL_41:
          v23 = v12;
          swift_unknownObjectRelease();

          return v23;
        }

        goto LABEL_86;
      }

      return 0;
    }

LABEL_86:

    return 0;
  }

  if (a4 != 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a2)
        {
          goto LABEL_86;
        }

        if (!v10)
        {
          return 0;
        }

        v10 = v10;
        [v10 duration];
        if (v35 != 1)
        {

          goto LABEL_86;
        }

        v20 = [a1 stop];

LABEL_30:
        return v20;
      }

      if (a2)
      {
        goto LABEL_86;
      }

      v15 = [a1 pause];
    }

    else
    {
      if (a2)
      {
        goto LABEL_86;
      }

      v15 = [a1 play];
    }

    v20 = v15;
    goto LABEL_30;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (v10)
      {
        v13 = [v10 seekCommand];
        if (v13)
        {
          v12 = [v13 beginSeekWithDirection:a3];
          goto LABEL_41;
        }

        goto LABEL_86;
      }

      return 0;
    }

    if (!v10)
    {
      return 0;
    }

    v22 = [v10 seekCommand];
    if (v22)
    {
      v12 = [v22 endSeek];
      goto LABEL_41;
    }

    goto LABEL_86;
  }

  if (!v10)
  {
    return 0;
  }

  v16 = [a1 tracklist];
  v17 = [v16 changeItemCommand];

  if (a3 != 1)
  {
    if (a3 != -1)
    {
      swift_unknownObjectRelease();
      goto LABEL_86;
    }

    v18 = v36;
    if (v17)
    {
      v37 = [v17 previousChapter];
      v38 = [v17 previousSection];
      v19 = [v17 previousItem];
    }

    else
    {
      v19 = 0;
      v37 = 0;
      v38 = 0;
    }

    v25 = 0;
    v39 = v19;
LABEL_48:
    if (v25 <= 3)
    {
      v26 = 3;
    }

    else
    {
      v26 = v25;
    }

    while (v25 != 3)
    {
      if (v26 == v25)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v27 = v36[v25++ + 4];
      if (v27)
      {
        v28 = v27;
        sub_1449BC();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_1449FC();
        }

        sub_144A2C();
        goto LABEL_48;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9070, &qword_154590);
    swift_arrayDestroy();
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (!sub_14531C())
      {
        goto LABEL_85;
      }
    }

    else if (!*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_85;
    }

    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      goto LABEL_81;
    }

    if (!*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_62;
    }

    goto LABEL_77;
  }

  v18 = v40;
  if (v17)
  {
    v40[4] = [v17 nextChapter];
    v40[5] = [v17 nextSection];
    v24 = [v17 nextItem];
  }

  else
  {
LABEL_62:
    v24 = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  v29 = 0;
  v40[6] = v24;
LABEL_64:
  if (v29 <= 3)
  {
    v30 = 3;
  }

  else
  {
    v30 = v29;
  }

  while (v29 != 3)
  {
    if (v30 == v29)
    {
      goto LABEL_80;
    }

    v31 = v40[v29++ + 4];
    if (v31)
    {
      v32 = v31;
      sub_1449BC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_1449FC();
      }

      sub_144A2C();
      goto LABEL_64;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9070, &qword_154590);
  result = swift_arrayDestroy();
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_75;
    }

LABEL_85:
    swift_unknownObjectRelease();

    goto LABEL_86;
  }

  result = sub_14531C();
  if (!result)
  {
    goto LABEL_85;
  }

LABEL_75:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
LABEL_81:
    v33 = sub_1451FC();
    goto LABEL_78;
  }

  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_77:
    v33 = _swiftEmptyArrayStorage[4];
LABEL_78:
    v34 = v33;
    swift_unknownObjectRelease();

    return v34;
  }

  __break(1u);
  return result;
}

unint64_t sub_103184(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = a3;
  v7 = sub_13A704(_swiftEmptyArrayStorage);
  if (v6 != 1)
  {
    v8 = sub_102B54(a1, 0, a2, a3);
    if (v8)
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v11 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_13819C(sub_103664, v10, 0, isUniquelyReferenced_nonNull_native);
      v13 = sub_102B54(a1, 1, a2, a3);
      if (v13)
      {
        v14 = v13;
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        sub_13819C(sub_103664, v15, 1, v16);
      }

      v17 = sub_102B54(a1, 2, a2, a3);
      if (v17)
      {
        v18 = v17;
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        v20 = v18;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        sub_13819C(sub_103664, v19, 2, v21);
      }
    }
  }

  return v7;
}

uint64_t sub_10335C()
{

  sub_2173C(*(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_1033E0(uint64_t a1, int a2)
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

uint64_t sub_103428(uint64_t result, int a2, int a3)
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

uint64_t sub_103478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9068, &qword_154588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1034E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for TransportControlsController.ButtonConfiguration.Description(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportControlsController.ButtonConfiguration.Description(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1035B8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1035D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1035FC()
{
  result = qword_1C9078;
  if (!qword_1C9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9078);
  }

  return result;
}

double sub_103668(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v14 - v7;
  v9 = v1[6];
  if (v9)
  {
    [v9 invalidate];
  }

  if (v1[5])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4228, &qword_14EB70);
    sub_144AEC();
  }

  v10 = sub_144ADC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_144ABC();

  v11 = sub_144AAC();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = a1;
  *(v12 + 36) = BYTE4(a1);
  *(v12 + 40) = v2;
  *(v12 + 48) = v4;
  v2[5] = sub_43A50(0, 0, v8, &unk_154A10, v12);

  return result;
}

id sub_103838()
{
  v1 = sub_14243C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = *(v0 + 16);
  swift_getKeyPath();
  v18 = v6;
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v7 = v6[10];
  v18 = 0;
  v8 = [v5 setEnhanceDialogueLevel:v7 error:&v18];
  v9 = v18;
  if (v8)
  {

    return v9;
  }

  else
  {
    v17 = v18;
    v11 = v18;
    sub_1409EC();

    swift_willThrow();
    sub_1423CC();
    swift_errorRetain();
    v12 = sub_14242C();
    v13 = sub_144C3C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_0, v12, v13, "Error setting enhance dialogue level: %@", v14, 0xCu);
      sub_15340(v15, &qword_1C2580, &qword_14C8E0);
    }

    else
    {
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_103B38(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  if (v3 >= 1)
  {
    v11 = *(v2 + 16);
    swift_getKeyPath();
    v12 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
    v37 = v11;
    v35 = sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    v36 = v12;
    sub_141A4C();

    sub_14208C();

    sub_14203C();

    sub_1423CC();
    v13 = sub_14242C();
    v14 = sub_144C5C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37 = v16;
      *v15 = 136315138;
      v17 = sub_1454BC();
      v19 = sub_ED2A4(v17, v18, &v37);
      v34 = v4;
      v20 = v19;

      *(v15 + 4) = v20;
      _os_log_impl(&dword_0, v13, v14, "[%s] Saved settings adjusted count settings.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);

      (*(v5 + 8))(v10, v34);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    if (*(v11 + 120))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v33 - 2) = v11;
      *(&v33 - 2) = 0;
      v37 = v11;
      sub_141A3C();
    }

    if ((*(v11 + 124) & 1) == 0)
    {
      *(v11 + 124) = 0;
      return;
    }

    v30 = swift_getKeyPath();
    __chkstk_darwin(v30);
    *(&v33 - 2) = v11;
    *(&v33 - 8) = 0;
    v37 = v11;
    goto LABEL_15;
  }

  sub_1423CC();
  v21 = sub_14242C();
  v22 = sub_144C5C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136315138;
    v25 = sub_1454BC();
    v27 = sub_ED2A4(v25, v26, &v37);
    v34 = v4;
    v28 = v27;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_0, v21, v22, "[%s] No settings adjusted count to store. Skipping.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);

    (*(v5 + 8))(v7, v34);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v31 = *(v2 + 16);
  if (*(v31 + 124))
  {
    v32 = swift_getKeyPath();
    __chkstk_darwin(v32);
    *(&v33 - 2) = v31;
    *(&v33 - 8) = 0;
    v37 = v31;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
LABEL_15:
    sub_141A3C();

    return;
  }

  *(v31 + 124) = 0;
}

void sub_1040E8()
{
  v1 = *(v0 + 16);
  sub_141FDC();
  v2 = sub_141FCC();
  v3 = sub_141FBC() & 1;

  if (v3 == *(v1 + 89))
  {
    *(v1 + 89) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v5 = sub_141FCC();
  sub_141FAC();
  v7 = v6;

  sub_1140EC(v7 | 0x100000000);
  if (*(v1 + 67))
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  else
  {
    *(v1 + 67) = 0;
  }

  if (*(v1 + 125) == 1)
  {
    *(v1 + 125) = 1;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v10 = *(v1 + 112);
  if (v10)
  {
    sub_14208C();
    v11 = v10;
    sub_14201C();

    if (*(v1 + 125))
    {
LABEL_12:
      v12 = swift_getKeyPath();
      __chkstk_darwin(v12);
      sub_141A3C();

      return;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_141A4C();

    sub_14208C();

    sub_14201C();

    if (*(v1 + 125))
    {
      goto LABEL_12;
    }
  }

  *(v1 + 125) = 0;
}

void sub_104584()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 112);
  if (v2)
  {
    sub_14208C();
    v3 = v2;
    sub_14200C();

    if (*(v1 + 126))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_141A3C();

      return;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_141A4C();

    sub_14208C();

    sub_14200C();

    if (*(v1 + 126))
    {
      goto LABEL_3;
    }
  }

  *(v1 + 126) = 0;
}

void sub_10476C()
{
  v0 = sub_14357C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_143EDC();
  sub_143EDC();
  sub_143EEC();
  sub_143EDC();

  sub_142B7C();

  sub_14356C();
  sub_142B6C();

  (*(v1 + 8))(v3, v0);
  sub_143EFC();
  sub_142B7C();

  sub_143EFC();
  sub_142B7C();
}

double sub_104A1C()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  if (*(v2 + 24) == 0.0)
  {
    *(v2 + 24) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v4 = *(v1 + 128);
  swift_beginAccess();
  if (*(v4 + 32) == 0.0)
  {
    *(v4 + 32) = 0;
  }

  else
  {
    v5 = swift_getKeyPath();
    __chkstk_darwin(v5);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v6 = *(v1 + 128);
  swift_beginAccess();
  if (*(v6 + 40) == 15.0)
  {
    *(v6 + 40) = 0x402E000000000000;
  }

  else
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v8 = *(v1 + 128);
  swift_beginAccess();
  if (*(v8 + 48) == 0.0)
  {
    *(v8 + 48) = 0;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v10 = *(v1 + 128);
  swift_beginAccess();
  if (*(v10 + 56) == 1.0)
  {
    *(v10 + 56) = 0x3FF0000000000000;
  }

  else
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v12 = *(v1 + 128);
  swift_beginAccess();
  result = *(v12 + 64);
  if (result == 1.0)
  {
    *(v12 + 64) = 0x3FF0000000000000;
  }

  else
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  return result;
}

uint64_t sub_1051D4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_105250()
{
  v192 = *v0;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9168, &qword_154730);
  v182 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v119 - v1;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9170, &qword_154738);
  v183 = *(v181 - 8);
  __chkstk_darwin(v181);
  v176 = &v119 - v2;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9178, &qword_154740);
  v185 = *(v184 - 8);
  __chkstk_darwin(v184);
  v177 = &v119 - v3;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9180, qword_154748);
  v187 = *(v186 - 8);
  __chkstk_darwin(v186);
  v179 = &v119 - v4;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20F0, &qword_151630);
  v175 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v119 - v5;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C91F0, &qword_154760);
  v168 = *(v167 - 8);
  __chkstk_darwin(v167);
  v164 = &v119 - v6;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C91F8, &qword_154768);
  v170 = *(v169 - 8);
  __chkstk_darwin(v169);
  v165 = &v119 - v7;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9200, &qword_154770);
  v172 = *(v171 - 8);
  __chkstk_darwin(v171);
  v166 = &v119 - v8;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9208, &qword_154778);
  v199 = *(v190 - 8);
  __chkstk_darwin(v190);
  v155 = &v119 - v9;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9210, &qword_154780);
  v159 = *(v158 - 8);
  __chkstk_darwin(v158);
  v154 = &v119 - v10;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9218, &qword_154788);
  v161 = *(v160 - 8);
  __chkstk_darwin(v160);
  v156 = &v119 - v11;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9220, &qword_154790);
  v163 = *(v162 - 8);
  __chkstk_darwin(v162);
  v157 = &v119 - v12;
  v143 = sub_144DFC();
  v144 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9228, &qword_154798);
  v146 = *(v145 - 1);
  __chkstk_darwin(v145);
  v142 = &v119 - v14;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9230, &qword_1547A0);
  v136 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v119 - v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9238, &qword_1547A8);
  v135 = *(v133 - 8);
  __chkstk_darwin(v133);
  v129 = &v119 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9240, &qword_1547B0);
  v138 = *(v137 - 8);
  __chkstk_darwin(v137);
  v130 = &v119 - v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9248, &unk_1547B8);
  v140 = *(v139 - 8);
  __chkstk_darwin(v139);
  v132 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0, &qword_14B8F0);
  __chkstk_darwin(v19 - 8);
  v197 = &v119 - v20;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9258, &qword_1547C8);
  v203 = *(v200 - 8);
  __chkstk_darwin(v200);
  v120 = &v119 - v21;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9260, &qword_1547D0);
  v188 = *(v128 - 1);
  __chkstk_darwin(v128);
  v23 = &v119 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9268, &qword_1547D8);
  v25 = *(v24 - 8);
  v195 = v24;
  v196 = v25;
  __chkstk_darwin(v24);
  v119 = &v119 - v26;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9270, &qword_1547E0);
  v194 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v122 = &v119 - v29;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9278, &qword_1547E8);
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v119 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9280, &qword_1547F0);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v119 - v33;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9288, &qword_1547F8);
  v191 = *(v204 - 8);
  __chkstk_darwin(v204);
  v125 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v119 - v37;
  v147 = v0[3];
  sub_141B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9290, &qword_154800);
  v148 = &protocol conformance descriptor for Published<A>.Publisher;
  v153 = sub_1D4A4(&qword_1C6258, &qword_1C9280, &qword_1547F0, &protocol conformance descriptor for Published<A>.Publisher);
  v201 = v38;
  v150 = v31;
  v149 = v34;
  sub_1427BC();
  v39 = *(v32 + 8);
  v151 = v32 + 8;
  v152 = v39;
  v39(v34, v31);
  v193 = v0;
  v205 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9160, &unk_154720);
  sub_1D4A4(&qword_1C92A0, &qword_1C9160, &unk_154720, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_10FBA8();
  sub_14286C();
  v205 = *(v0[2] + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C92C0, &qword_1498A0);
  sub_1D4A4(&qword_1C92C8, &qword_1C92C0, &qword_1498A0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v40 = v120;
  sub_14286C();
  v189 = &protocol conformance descriptor for Publishers.Map<A, B>;
  v198 = sub_1D4A4(&qword_1C92D0, &qword_1C9288, &qword_1547F8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v202 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_1D4A4(&qword_1C92D8, &qword_1C9260, &qword_1547D0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_1D4A4(&qword_1C92E0, &qword_1C9258, &qword_1547C8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v41 = v119;
  v42 = v128;
  v43 = v200;
  sub_14277C();
  (*(v203 + 8))(v40, v43);
  v188[1](v23, v42);
  sub_1D4A4(&unk_1C92E8, &qword_1C9268, &qword_1547D8, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v44 = v121;
  v45 = v195;
  sub_14274C();
  (*(v196 + 8))(v41, v45);
  v46 = v122;
  v47 = v123;
  sub_14250C();
  v48 = *(v194 + 8);
  v48(v44, v47);
  v200 = sub_2B860(0, &qword_1C2160, OS_dispatch_queue_ptr);
  v49 = sub_144D8C();
  v205 = v49;
  v194 = sub_144D3C();
  v50 = *(v194 - 8);
  v195 = *(v50 + 56);
  v196 = v50 + 56;
  v51 = v197;
  v195(v197, 1, 1, v194);
  v128 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_1D4A4(&unk_1C92F8, &qword_1C9270, &qword_1547E0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v203 = sub_4236C(&qword_1C1740, &qword_1C2160, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v52 = v124;
  sub_14283C();
  sub_15340(v51, &qword_1C16E0, &qword_14B8F0);

  v48(v46, v47);
  v53 = swift_allocObject();
  v54 = v193;
  swift_weakInit();
  v55 = swift_allocObject();
  v56 = v192;
  *(v55 + 16) = v53;
  *(v55 + 24) = v56;
  v188 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1D4A4(&qword_1C9308, &qword_1C9278, &qword_1547E8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v57 = v126;
  sub_14289C();

  (*(v127 + 8))(v52, v57);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  (*(v191 + 16))(v125, v201, v204);
  v205 = v54[9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310, &qword_14BEF0);
  sub_1D4A4(&qword_1C2020, &unk_1C9310, &qword_14BEF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v58 = v131;
  sub_1424EC();
  sub_1D4A4(&qword_1C9320, &qword_1C9230, &qword_1547A0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v59 = v129;
  v60 = v134;
  sub_1427BC();
  (*(v136 + 8))(v58, v60);
  sub_1D4A4(&qword_1C9328, &qword_1C9238, &qword_1547A8, v189);
  v61 = v130;
  v62 = v133;
  sub_14286C();
  (*(v135 + 8))(v59, v62);
  v63 = sub_144D8C();
  v205 = v63;
  v64 = v194;
  v65 = v195;
  v195(v51, 1, 1, v194);
  sub_1D4A4(&qword_1C9330, &qword_1C9240, &qword_1547B0, v202);
  v66 = v132;
  v67 = v137;
  sub_14283C();
  sub_15340(v51, &qword_1C16E0, &qword_14B8F0);

  (*(v138 + 8))(v61, v67);
  swift_allocObject();
  swift_weakInit();
  v68 = v188;
  sub_1D4A4(&qword_1C9338, &unk_1C9248, &unk_1547B8, v188);
  v69 = v139;
  sub_14289C();

  (*(v140 + 8))(v66, v69);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v70 = sub_144DDC();
  v71 = v141;
  sub_144E0C();

  v72 = sub_144D8C();
  v205 = v72;
  v73 = v197;
  v65(v197, 1, 1, v64);
  sub_10FCC8(&qword_1C9340, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v74 = v142;
  v75 = v143;
  sub_14283C();
  sub_15340(v73, &qword_1C16E0, &qword_14B8F0);

  (*(v144 + 8))(v71, v75);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C9348, &qword_1C9228, &qword_154798, v68);
  v76 = v145;
  sub_14289C();

  (*(v146 + 8))(v74, v76);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9350, &qword_154810);
  v77 = v155;
  sub_14274C();
  v144 = sub_1D4A4(&qword_1C9358, &qword_1C9208, &qword_154778, v128);
  v78 = v154;
  v79 = v190;
  sub_14282C();
  v80 = *(v199 + 8);
  v199 += 8;
  v145 = v80;
  (v80)(v77, v79);
  sub_1D4A4(&qword_1C9360, &qword_1C9210, &qword_154780, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_10FD18();
  v81 = v156;
  v82 = v158;
  sub_14286C();
  (*(v159 + 8))(v78, v82);
  v83 = sub_144D8C();
  v205 = v83;
  v84 = v73;
  v85 = v73;
  v86 = v194;
  v87 = v195;
  v195(v85, 1, 1, v194);
  sub_1D4A4(&qword_1C9380, &qword_1C9218, &qword_154788, v202);
  v88 = v157;
  v89 = v160;
  sub_14283C();
  sub_15340(v84, &qword_1C16E0, &qword_14B8F0);

  (*(v161 + 8))(v81, v89);
  swift_allocObject();
  swift_weakInit();
  v90 = v188;
  sub_1D4A4(&qword_1C9388, &qword_1C9220, &qword_154790, v188);
  v91 = v162;
  sub_14289C();

  (*(v163 + 8))(v88, v91);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  sub_14274C();
  swift_getKeyPath();
  v92 = v164;
  v93 = v190;
  sub_1427AC();

  (v145)(v77, v93);
  sub_1D4A4(&qword_1C9398, &qword_1C91F0, &qword_154760, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v94 = v165;
  v95 = v167;
  sub_14286C();
  (*(v168 + 8))(v92, v95);
  v96 = sub_144D8C();
  v205 = v96;
  v97 = v197;
  v87(v197, 1, 1, v86);
  sub_1D4A4(&qword_1C93A0, &qword_1C91F8, &qword_154768, v202);
  v98 = v166;
  v99 = v169;
  sub_14283C();
  v100 = v97;
  sub_15340(v97, &qword_1C16E0, &qword_14B8F0);

  (*(v170 + 8))(v94, v99);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&unk_1C93A8, &qword_1C9200, &qword_154770, v90);
  v101 = v171;
  sub_14289C();

  (*(v172 + 8))(v98, v101);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v102 = v173;
  sub_141BEC();
  v103 = swift_allocObject();
  swift_weakInit();
  v104 = swift_allocObject();
  v105 = v192;
  *(v104 + 16) = v103;
  *(v104 + 24) = v105;
  sub_1D4A4(&qword_1C2100, &qword_1C20F0, &qword_151630, v148);
  v106 = v174;
  sub_14289C();

  (*(v175 + 8))(v102, v106);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v107 = v149;
  sub_141B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C93B8, &qword_154850);
  v108 = v178;
  v109 = v150;
  sub_1427BC();
  v152(v107, v109);
  v110 = v176;
  v111 = v180;
  sub_14254C();
  (*(v182 + 8))(v108, v111);
  sub_1D4A4(&qword_1C93C0, &qword_1C9170, &qword_154738, v189);
  sub_10FE60();
  v112 = v177;
  v113 = v181;
  sub_14286C();
  (*(v183 + 8))(v110, v113);
  v114 = sub_144D8C();
  v205 = v114;
  v195(v100, 1, 1, v194);
  sub_1D4A4(&qword_1C93D0, &qword_1C9178, &qword_154740, v202);
  v115 = v179;
  v116 = v184;
  sub_14283C();
  sub_15340(v100, &qword_1C16E0, &qword_14B8F0);

  (*(v185 + 8))(v112, v116);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C93D8, &unk_1C9180, qword_154748, v90);
  v117 = v186;
  sub_14289C();

  (*(v187 + 8))(v115, v117);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  return (*(v191 + 8))(v201, v204);
}

void sub_1075D0(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 playingItem]) != 0)
  {
    v5 = v4;
    v6 = [v4 playbackRateCommand];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

id *sub_107644@<X0>(id *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = [*result preferredPlaybackRate];
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v3 == 0;
  return result;
}

_DWORD *sub_107694@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void sub_1076A4(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;

  sub_1425FC();

  if ((v41 & 0x10000000000) == 0)
  {
    v15 = v41;
    if (((v41 | (BYTE4(v41) << 32)) & 0x100000000) != 0)
    {
      v17 = *(v10 + 16);
      swift_getKeyPath();
      if (v15)
      {
        v41 = v17;
        sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);

        sub_141A4C();

        v18 = *(v17 + 24);

        if (v8 < v18)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v41 = v17;
        sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);

        sub_141A4C();

        v19 = *(v17 + 24);

        if (v19 < v8)
        {
          goto LABEL_10;
        }
      }
    }

    else if (v8 == *&v41)
    {
LABEL_10:
      LODWORD(v41) = 0;
      WORD2(v41) = 256;

      sub_1425EC();

      return;
    }

    return;
  }

  v11 = *(v10 + 16);
  swift_getKeyPath();
  v41 = v11;
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if ((*(v11 + 69) & 1) != 0 || (, sub_1425FC(), , BYTE5(v41) != 1))
  {
    v16 = 1;
  }

  else
  {
    v12 = *(v10 + 16);
    swift_getKeyPath();
    v41 = v12;

    sub_141A4C();

    v13 = *(v12 + 24);

    if (v13 != v8)
    {
      v14 = *(v10 + 16);
      if (*(v14 + 24) == v8)
      {
        *(v14 + 24) = v8;

        sub_114488();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v39 = v35;
        __chkstk_darwin(KeyPath);
        *&v35[-16] = v14;
        *&v35[-8] = v8;
        v41 = v14;

        sub_141A3C();
      }

      sub_107D88();
    }

    v16 = 0;
  }

  sub_14241C();
  swift_retain_n();
  v21 = sub_14242C();
  v22 = sub_144C5C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = v16;
    v24 = v23;
    v39 = swift_slowAlloc();
    v41 = v39;
    *v24 = 136316162;
    v25 = sub_1454BC();
    v38 = v22;
    v27 = sub_ED2A4(v25, v26, &v41);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9410, &unk_150C00);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_14A710;
    *(v28 + 56) = &type metadata for Float;
    *(v28 + 64) = &protocol witness table for Float;
    *(v28 + 32) = v8;
    v29 = sub_1448EC();
    v31 = sub_ED2A4(v29, v30, &v41);

    *(v24 + 14) = v31;
    v37 = v4;
    *(v24 + 22) = 1024;
    *(v24 + 24) = v36;
    *(v24 + 28) = 1024;
    v32 = v5;
    v33 = *(v10 + 16);
    swift_getKeyPath();
    v40 = v33;
    sub_141A4C();

    v34 = *(v33 + 69);

    *(v24 + 30) = v34;

    *(v24 + 34) = 1024;

    sub_1425FC();

    LOBYTE(v34) = BYTE5(v40);

    *(v24 + 36) = (v34 & 1) == 0;

    _os_log_impl(&dword_0, v21, v38, "[%s] Publisher received rate change: %s, isEditing: %{BOOL}d, isScrolling: %{BOOL}d, is pending rate: %{BOOL}d", v24, 0x28u);
    swift_arrayDestroy();

    (*(v32 + 8))(v7, v37);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void sub_107D88()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  v9[0] = v1;
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if ((v1[69] & 1) == 0)
  {
    v2 = sub_141C0C();
    v10 = v2;
    v11 = &protocol witness table for PlaybackController.TransportCommand;
    *__swift_allocate_boxed_opaque_existential_1(v9) = 1;
    v3 = *(*(v2 - 8) + 104);
    v3();
    v4 = sub_141B7C() & 1;
    __swift_destroy_boxed_opaque_existential_0(v9);
    if (v4 == v1[65])
    {
      v1[65] = v4;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v8[1] = v8;
      __chkstk_darwin(KeyPath);
      v9[0] = v1;
      sub_141A3C();
    }

    v10 = v2;
    v11 = &protocol witness table for PlaybackController.TransportCommand;
    *__swift_allocate_boxed_opaque_existential_1(v9) = 1;
    v3();
    v6 = sub_141B7C() & 1;
    __swift_destroy_boxed_opaque_existential_0(v9);
    if (v6 == v1[66])
    {
      v1[66] = v6;
    }

    else
    {
      v7 = swift_getKeyPath();
      __chkstk_darwin(v7);
      v9[0] = v1;
      sub_141A3C();
    }
  }
}

double sub_108068(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);

    if (v2 == *(v5 + 64))
    {
      *(v5 + 64) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }
  }

  return result;
}

uint64_t sub_1081C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_14099C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_14243C();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C93F0, &qword_1549C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_14210C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14096C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_15340(v12, &qword_1C93F0, &qword_1549C0);
    sub_1423EC();
    (*(v4 + 16))(v6, a1, v3);
    v17 = sub_14242C();
    v18 = sub_144C3C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136315138;
      v28[3] = sub_14098C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C93F8, &unk_1549C8);
      v21 = sub_14490C();
      v23 = v22;
      (*(v4 + 8))(v6, v3);
      v24 = sub_ED2A4(v21, v23, v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v17, v18, "Unexpected user info dictionary: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    return (*(v26 + 8))(v9, v27);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1085E8(v16);
    }

    return (*(v14 + 8))(v16, v13);
  }
}

void sub_1085E8(uint64_t a1)
{
  v2 = v1;
  v113 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v4 - 8);
  v109 = &v103[-v5];
  v6 = sub_14210C();
  v7 = *(v6 - 8);
  v115 = v6;
  v116 = v7;
  __chkstk_darwin(v6);
  v110 = &v103[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v114 = &v103[-v10];
  __chkstk_darwin(v11);
  v13 = &v103[-v12];
  v14 = sub_14243C();
  v118 = *(v14 - 8);
  v119 = v14;
  __chkstk_darwin(v14);
  v16 = &v103[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v111 = &v103[-v18];
  __chkstk_darwin(v19);
  v108 = &v103[-v20];
  __chkstk_darwin(v21);
  v23 = &v103[-v22];
  v117 = a1;
  v24 = sub_1420FC();
  v26 = v25;
  v27 = v2[2];
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  v122[0] = v27;
  v29 = sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  v120 = v28;
  sub_141A4C();

  v30 = *(v27 + 104);
  if (v30)
  {
    if (v24 == *(v27 + 96) && v30 == v26)
    {

      v31 = v117;
LABEL_7:
      v107 = v2;
      v112 = v29;
      sub_14208C();
      v33 = v31;
      sub_1420FC();
      v34 = sub_14206C() & 1;

      if (v34 == *(v27 + 68))
      {
        v106 = 0;
        *(v27 + 68) = v34;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v103[-16] = v27;
        v103[-8] = v34;
        v122[0] = v27;
        sub_141A3C();
        v106 = 0;
      }

      v43 = v33;
      v44 = sub_1420DC() & 1;
      swift_getKeyPath();
      v122[0] = v27;
      sub_141A4C();

      v45 = v114;
      if (v44 != *(v27 + 67))
      {
        sub_1423EC();
        v46 = v115;
        v47 = v116;
        (*(v116 + 16))(v13, v33, v115);
        swift_retain_n();
        v48 = sub_14242C();
        v49 = sub_144C5C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v122[0] = v105;
          *v50 = 136315650;
          v51 = sub_1454BC();
          v52 = v46;
          v104 = v49;
          v54 = sub_ED2A4(v51, v53, v122);

          *(v50 + 4) = v54;
          *(v50 + 12) = 1024;
          swift_getKeyPath();
          v121 = v27;
          sub_141A4C();

          v55 = *(v27 + 67);

          *(v50 + 14) = v55;

          *(v50 + 18) = 2080;
          v56 = sub_1420DC();
          if (v56)
          {
            v57 = 1702195828;
          }

          else
          {
            v57 = 0x65736C6166;
          }

          if (v56)
          {
            v58 = 0xE400000000000000;
          }

          else
          {
            v58 = 0xE500000000000000;
          }

          (*(v47 + 8))(v13, v52);
          v59 = sub_ED2A4(v57, v58, v122);

          *(v50 + 20) = v59;
          _os_log_impl(&dword_0, v48, v104, "[%s] Received notification that custom settings should be updated. Current value: %{BOOL}d, incoming value: %s.", v50, 0x1Cu);
          swift_arrayDestroy();

          v60 = v117;

          (*(v118 + 8))(v23, v119);
        }

        else
        {

          (*(v47 + 8))(v13, v46);
          (*(v118 + 8))(v23, v119);
          v60 = v33;
        }

        v43 = v60;
        v61 = sub_1420DC() & 1;
        if (v61 == *(v27 + 67))
        {
          *(v27 + 67) = v61;
        }

        else
        {
          v62 = swift_getKeyPath();
          __chkstk_darwin(v62);
          *&v103[-16] = v27;
          v103[-8] = v61;
          v122[0] = v27;
          sub_141A3C();
        }

        v45 = v114;
      }

      sub_1420CC();
      v64 = v63;
      swift_getKeyPath();
      v122[0] = v27;
      sub_141A4C();

      v65 = v116;
      v66 = v107;
      if (v64 != *(v27 + 24))
      {
        v67 = v108;
        sub_1423EC();
        v68 = v43;
        v69 = v115;
        (*(v65 + 16))(v45, v68, v115);

        v70 = sub_14242C();
        v71 = sub_144C5C();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = v45;
          v73 = swift_slowAlloc();
          v122[0] = swift_slowAlloc();
          *v73 = 136315650;
          v74 = sub_1454BC();
          v76 = sub_ED2A4(v74, v75, v122);

          *(v73 + 4) = v76;
          *(v73 + 12) = 2048;
          swift_getKeyPath();
          v121 = v27;
          sub_141A4C();

          *(v73 + 14) = *(v27 + 24);
          *(v73 + 22) = 2080;
          sub_1420CC();
          v77 = sub_144B2C();
          v79 = v78;
          (*(v116 + 8))(v72, v115);
          v80 = sub_ED2A4(v77, v79, v122);

          *(v73 + 24) = v80;
          _os_log_impl(&dword_0, v70, v71, "[%s] Received notification that playback rate should be updated. Current value: %f, incoming value: %s.", v73, 0x20u);
          swift_arrayDestroy();
          v65 = v116;
        }

        else
        {

          (*(v65 + 8))(v45, v69);
        }

        (*(v118 + 8))(v67, v119);
        v43 = v117;
        sub_1420CC();
        sub_103668(v81 | 0x100000000);
      }

      v82 = sub_1420EC() & 1;
      swift_getKeyPath();
      v122[0] = v27;
      sub_141A4C();

      if (v82 != *(v27 + 89))
      {
        v83 = v111;
        sub_1423EC();
        v84 = v110;
        v85 = v43;
        v86 = v115;
        (*(v65 + 16))(v110, v85, v115);
        swift_retain_n();
        v87 = sub_14242C();
        v88 = sub_144C5C();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v122[0] = swift_slowAlloc();
          *v89 = 136315650;
          v90 = sub_1454BC();
          v92 = sub_ED2A4(v90, v91, v122);

          *(v89 + 4) = v92;
          *(v89 + 12) = 1024;
          swift_getKeyPath();
          v121 = v27;
          sub_141A4C();

          v93 = *(v27 + 89);

          *(v89 + 14) = v93;

          *(v89 + 18) = 2080;
          v94 = v110;
          v95 = sub_1420EC();
          if (v95)
          {
            v96 = 1702195828;
          }

          else
          {
            v96 = 0x65736C6166;
          }

          if (v95)
          {
            v97 = 0xE400000000000000;
          }

          else
          {
            v97 = 0xE500000000000000;
          }

          (*(v65 + 8))(v94, v115);
          v98 = sub_ED2A4(v96, v97, v122);

          *(v89 + 20) = v98;
          _os_log_impl(&dword_0, v87, v88, "[%s] Received notification that enhance dialogue should be updated. Current value: %{BOOL}d, incoming value: %s.", v89, 0x1Cu);
          swift_arrayDestroy();

          (*(v118 + 8))(v111, v119);
        }

        else
        {

          (*(v65 + 8))(v84, v86);
          (*(v118 + 8))(v83, v119);
        }

        v99 = sub_1420EC();
        v100 = sub_144ADC();
        v101 = v109;
        (*(*(v100 - 8) + 56))(v109, 1, 1, v100);
        v102 = swift_allocObject();
        *(v102 + 16) = 0;
        *(v102 + 24) = 0;
        *(v102 + 32) = v66;
        *(v102 + 40) = v99 & 1;

        sub_43CFC(0, 0, v101, &unk_14F9B0, v102);
      }

      return;
    }

    v32 = sub_1453BC();

    v31 = v117;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_1423EC();
  v36 = sub_14242C();
  v37 = sub_144C5C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v122[0] = v39;
    *v38 = 136315138;
    v40 = sub_1454BC();
    v42 = sub_ED2A4(v40, v41, v122);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v36, v37, "[%s] Per show setting changed, but not for current item. Ignoring...", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  (*(v118 + 8))(v16, v119);
}

uint64_t sub_10940C@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9350, &qword_154810);
  sub_1D4A4(&qword_1C9390, &qword_1C9350, &qword_154810, &protocol conformance descriptor for [A]);
  result = sub_144B8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1094A4(uint64_t *a1)
{
  swift_getKeyPath();

  swift_getAtKeyPath();

  return v2;
}

void sub_109510(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v2 >> 62)
    {
      v3 = sub_14531C();
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    }

    if (v3)
    {
      sub_92DCC(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v3; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_1451FC();
        }

        else
        {
          v5 = *(v2 + 8 * i + 32);
        }

        v6 = v5;
        [v5 floatValue];
        v8 = v7;

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_92DCC((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        *(&_swiftEmptyArrayStorage[4] + v10) = v8;
      }
    }

    sub_114B38(_swiftEmptyArrayStorage);
  }
}

void sub_1096A4(void *a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1)
  {
    v4 = [swift_unknownObjectRetain_n() *a2];
    sub_2B860(0, &qword_1C8220, NSNumber_ptr);
    v5 = sub_1449DC();
    swift_unknownObjectRelease_n();
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

double sub_10973C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);

    swift_getKeyPath();
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    v6 = *(v5 + 128);

    swift_beginAccess();
    if (v2 == *(v6 + 16))
    {
      *(v6 + 16) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
      sub_141A3C();
    }
  }

  return result;
}

double sub_10992C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v4 && (v8 = [v4 podcast]) != 0)
    {
      v9 = v8;
      v10 = sub_144BFC();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v13 = *(v7 + 16);
    swift_getKeyPath();
    aBlock[0] = v13;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    v14 = *(v13 + 104);
    if (v12)
    {
      if (v14)
      {
        v15 = v10 == *(v13 + 96) && v12 == v14;
        if (v15 || (sub_1453BC() & 1) != 0)
        {

LABEL_24:

          return result;
        }
      }
    }

    else if (!v14)
    {
      goto LABEL_24;
    }

    sub_116B84(v10, v12);

    v16 = *(v7 + 16);
    if (*(v16 + 112))
    {
      KeyPath = swift_getKeyPath();
      v29 = &v28;
      __chkstk_darwin(KeyPath);
      aBlock[0] = v16;

      sub_141A3C();
    }

    v29 = v10;
    v18 = *(v7 + 16);
    if (*(v18 + 68))
    {
      v19 = swift_getKeyPath();
      __chkstk_darwin(v19);
      aBlock[0] = v18;

      sub_141A3C();
    }

    else
    {
      *(v18 + 68) = 0;
    }

    v20 = *(v7 + 16);
    if (*(v20 + 67))
    {
      v21 = swift_getKeyPath();
      __chkstk_darwin(v21);
      aBlock[0] = v20;

      sub_141A3C();

      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(v20 + 67) = 0;
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 playbackContext];

    v24 = swift_allocObject();
    v25 = v29;
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v12;
    v24[5] = v7;
    v24[6] = a3;
    aBlock[4] = sub_10FF5C;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11D5C0;
    aBlock[3] = &block_descriptor_18;
    v26 = _Block_copy(aBlock);
    v27 = v23;

    [v27 performBlock:v26];
    _Block_release(v26);
  }

  return result;
}

void sub_109DFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_14243C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = sub_14489C();
  v16 = [a1 podcastForUuid:v15];

  if (!v16)
  {
    return;
  }

  v56 = a4;
  v57 = a5;
  sub_1423EC();
  v17 = v16;
  v18 = sub_14242C();
  v19 = sub_144C5C();

  v20 = os_log_type_enabled(v18, v19);
  v58 = v9;
  if (v20)
  {
    v54 = v11;
    v21 = v8;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v22 = 136315651;
    v23 = sub_1454BC();
    v25 = sub_ED2A4(v23, v24, &v59);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v26 = [v17 title];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1448DC();
      v30 = v29;
    }

    else
    {
      v30 = 0xEA00000000002965;
      v28 = 0x6C746974206F6E28;
    }

    v31 = sub_ED2A4(v28, v30, &v59);

    *(v22 + 24) = v31;
    _os_log_impl(&dword_0, v18, v19, "[%s] Observing incoming podcast: %{private,mask.hash}s.", v22, 0x20u);
    swift_arrayDestroy();

    v8 = v21;
    v55 = *(v58 + 8);
    v55(v14, v21);
    v11 = v54;
  }

  else
  {

    v55 = *(v9 + 8);
    v55(v14, v8);
  }

  v32 = *(v56 + 16);
  sub_116E84([v17 objectID]);
  v33 = sub_14208C();
  v34 = sub_14205C() & 1;
  if (v34 == *(v32 + 68))
  {
    *(v32 + 68) = v34;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v53 - 2) = v32;
    *(&v53 - 8) = v34;
    v59 = v32;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v36 = [v17 advancedPlaybackSettings];
  v56 = v33;
  if (!v36)
  {
    LOBYTE(v38) = 0;
    if (*(v32 + 67))
    {
      goto LABEL_13;
    }

LABEL_15:
    *(v32 + 67) = v38;
    goto LABEL_16;
  }

  v37 = v36;
  v38 = [v36 hasCustomSettings];

  if (v38 == *(v32 + 67))
  {
    goto LABEL_15;
  }

LABEL_13:
  v39 = swift_getKeyPath();
  __chkstk_darwin(v39);
  *(&v53 - 2) = v32;
  *(&v53 - 8) = v38;
  v59 = v32;
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A3C();

LABEL_16:
  sub_1423EC();
  v40 = sub_14242C();
  v41 = sub_144C5C();
  v42 = os_log_type_enabled(v40, v41);
  v54 = 0;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v59 = v44;
    *v43 = 136315138;
    v45 = sub_1454BC();
    v47 = v17;
    v48 = v8;
    v49 = sub_ED2A4(v45, v46, &v59);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_0, v40, v41, "[%s] Taking a snapshot of global settings.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);

    v50 = v11;
    v51 = v48;
    v17 = v47;
  }

  else
  {

    v50 = v11;
    v51 = v8;
  }

  v55(v50, v51);
  sub_14207C();
  if (*(v32 + 120))
  {
    v52 = swift_getKeyPath();
    __chkstk_darwin(v52);
    *(&v53 - 2) = v32;
    *(&v53 - 2) = 0;
    v59 = v32;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  sub_14202C();
}

id sub_10A538@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = [result enhanceDialogueCommand];
  }

  *a2 = result;
  return result;
}

id sub_10A578@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = [*a1 isActive];
  }

  else
  {
    result = 0;
  }

  *a2 = v3 != 0;
  a2[1] = result;
  return result;
}

double sub_10A5C8(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_14243C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  sub_1423CC();
  v9 = sub_14242C();
  v10 = sub_144C5C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = v7;
    *(v11 + 8) = 1024;
    *(v11 + 10) = v8;
    _os_log_impl(&dword_0, v9, v10, "Enhance dialogue supported: %{BOOL}d, active: %{BOOL}d", v11, 0xEu);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 16);

    if (v7 == *(v13 + 88))
    {
      *(v13 + 88) = v7;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v19[-2] = v13;
      LOBYTE(v19[-1]) = v7;
      v19[1] = v13;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v17 = *(v15 + 16);

    if (v8 == *(v17 + 89))
    {
      *(v17 + 89) = v8;
    }

    else
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      v19[-2] = v17;
      LOBYTE(v19[-1]) = v8;
      v19[0] = v17;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }
  }

  return result;
}

uint64_t sub_10A978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  v7 = sub_14243C();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v8 = sub_14528C();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  sub_144ABC();
  v6[35] = sub_144AAC();
  v10 = sub_144A8C();
  v6[36] = v10;
  v6[37] = v9;

  return _swift_task_switch(sub_10AAE4, v10, v9);
}

uint64_t sub_10AAE4()
{
  v1 = *(v0 + 192);
  if (!BYTE4(v1))
  {
    sub_14541C();
    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = sub_10AD4C;
LABEL_11:
    v6 = 50000000000000000;
    goto LABEL_13;
  }

  if (BYTE4(v1) != 1)
  {
    sub_14541C();
    v5 = swift_task_alloc();
    *(v0 + 336) = v5;
    *v5 = v0;
    v5[1] = sub_10BB88;
    goto LABEL_11;
  }

  sub_1425FC();

  if ((*(v0 + 405) & 1) == 0 && ((*(v0 + 400) | (*(v0 + 404) << 32)) & 0x100000000) == 0 && *&v1 == *(v0 + 400))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  sub_14541C();
  v7 = swift_task_alloc();
  *(v0 + 368) = v7;
  *v7 = v0;
  v7[1] = sub_10C9A4;
  v6 = 100000000000000000;
LABEL_13:

  return sub_10F4DC(v6, 0, 0, 0, 1);
}

uint64_t sub_10AD4C()
{
  v2 = *v1;
  v2[39] = v0;

  v3 = v2[34];
  v4 = v2[31];
  v5 = v2[30];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10B338;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10AEE4;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10AEE4(__n128 a1)
{
  v28 = v1;
  v2 = *(v1 + 312);
  sub_144B0C();
  if (v2)
  {

    sub_14241C();
    swift_errorRetain();
    v3 = sub_14242C();
    v4 = sub_144C3C();

    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v1 + 224);
    v6 = *(v1 + 232);
    v8 = *(v1 + 216);
    if (v5)
    {
      v25 = *(v1 + 216);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v9 = 136315394;
      v12 = sub_1454BC();
      v24 = v6;
      v14 = sub_ED2A4(v12, v13, &v27);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_0, v3, v4, "[%s] Error while handling playback rate action: %@", v9, 0x16u);
      sub_15340(v10, &qword_1C2580, &qword_14C8E0);

      __swift_destroy_boxed_opaque_existential_0(v11);

      (*(v7 + 8))(v24, v25);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v21 = *(*(v1 + 200) + 16);
    if (*(v21 + 20) == 255)
    {
      *(v21 + 16) = 0;
      *(v21 + 20) = -1;
    }

    else
    {
      swift_getKeyPath();
      v22 = swift_task_alloc();
      *(v22 + 16) = v21;
      *(v22 + 28) = -1;
      *(v22 + 24) = 0;
      *(v1 + 184) = v21;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }

    v23 = *(v1 + 8);

    return v23();
  }

  else
  {
    v16 = *(v1 + 192);
    *(v1 + 424) = 0;
    *(v1 + 428) = 1;

    sub_1425EC();

    v17 = sub_141C0C();
    *(v1 + 168) = v17;
    *(v1 + 176) = &protocol witness table for PlaybackController.TransportCommand;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 144));
    *boxed_opaque_existential_1 = v16 & 1;
    *(boxed_opaque_existential_1 + 1) = BYTE1(v16) & 1;
    (*(*(v17 - 8) + 104))();
    v26 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v19 = swift_task_alloc();
    *(v1 + 320) = v19;
    *v19 = v1;
    v19[1] = sub_10B78C;

    return (v26)(v1 + 144, 0);
  }
}

uint64_t sub_10B338(__n128 a1)
{
  sub_144B0C();
  v2 = *(v1 + 192);
  *(v1 + 424) = 0;
  *(v1 + 428) = 1;

  sub_1425EC();

  v3 = sub_141C0C();
  *(v1 + 168) = v3;
  *(v1 + 176) = &protocol witness table for PlaybackController.TransportCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 144));
  *boxed_opaque_existential_1 = v2 & 1;
  *(boxed_opaque_existential_1 + 1) = BYTE1(v2) & 1;
  (*(*(v3 - 8) + 104))();
  v7 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v5 = swift_task_alloc();
  *(v1 + 320) = v5;
  *v5 = v1;
  v5[1] = sub_10B78C;

  return (v7)(v1 + 144, 0);
}

uint64_t sub_10B78C(void *a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_10D7B8;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 18);
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_10B8B8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10B8B8()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_110254;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10E460;
  v0[5] = &block_descriptor_87;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:2.5];
  _Block_release(v5);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 addTimer:v7 forMode:NSDefaultRunLoopMode];

  v9 = *(v1 + 48);
  *(v1 + 48) = v7;

  v10 = *(v0[25] + 16);
  if (*(v10 + 20) == 255)
  {
    *(v10 + 16) = 0;
    *(v10 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 28) = -1;
    *(v11 + 24) = 0;
    v0[23] = v10;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10BB88()
{
  v2 = *v1;
  v2[43] = v0;

  v3 = v2[33];
  v4 = v2[31];
  v5 = v2[30];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10C164;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10BD20;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10BD20(__n128 a1)
{
  v26 = v1;
  v2 = *(v1 + 344);
  sub_144B0C();
  if (v2)
  {

    sub_14241C();
    swift_errorRetain();
    v3 = sub_14242C();
    v4 = sub_144C3C();

    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v1 + 224);
    v6 = *(v1 + 232);
    v8 = *(v1 + 216);
    if (v5)
    {
      v23 = *(v1 + 216);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v9 = 136315394;
      v12 = sub_1454BC();
      v22 = v6;
      v14 = sub_ED2A4(v12, v13, &v25);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_0, v3, v4, "[%s] Error while handling playback rate action: %@", v9, 0x16u);
      sub_15340(v10, &qword_1C2580, &qword_14C8E0);

      __swift_destroy_boxed_opaque_existential_0(v11);

      (*(v7 + 8))(v22, v23);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v19 = *(*(v1 + 200) + 16);
    if (*(v19 + 20) == 255)
    {
      *(v19 + 16) = 0;
      *(v19 + 20) = -1;
    }

    else
    {
      swift_getKeyPath();
      v20 = swift_task_alloc();
      *(v20 + 16) = v19;
      *(v20 + 28) = -1;
      *(v20 + 24) = 0;
      *(v1 + 184) = v19;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }

    v21 = *(v1 + 8);

    return v21();
  }

  else
  {
    *(v1 + 416) = 1;
    *(v1 + 420) = 1;

    sub_1425EC();

    v16 = sub_141C0C();
    *(v1 + 128) = v16;
    *(v1 + 136) = &protocol witness table for PlaybackController.TransportCommand;
    *__swift_allocate_boxed_opaque_existential_1((v1 + 104)) = 1;
    (*(*(v16 - 8) + 104))();
    v24 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v17 = swift_task_alloc();
    *(v1 + 352) = v17;
    *v17 = v1;
    v17[1] = sub_10C5A8;

    return (v24)(v1 + 104, 0);
  }
}

uint64_t sub_10C164(__n128 a1)
{
  sub_144B0C();
  *(v1 + 416) = 1;
  *(v1 + 420) = 1;

  sub_1425EC();

  v2 = sub_141C0C();
  *(v1 + 128) = v2;
  *(v1 + 136) = &protocol witness table for PlaybackController.TransportCommand;
  *__swift_allocate_boxed_opaque_existential_1((v1 + 104)) = 1;
  (*(*(v2 - 8) + 104))();
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  *(v1 + 352) = v3;
  *v3 = v1;
  v3[1] = sub_10C5A8;

  return (v5)(v1 + 104, 0);
}

uint64_t sub_10C5A8(void *a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_10DAD4;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 13);
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_10C6D4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10C6D4()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_110254;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10E460;
  v0[5] = &block_descriptor_87;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:2.5];
  _Block_release(v5);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 addTimer:v7 forMode:NSDefaultRunLoopMode];

  v9 = *(v1 + 48);
  *(v1 + 48) = v7;

  v10 = *(v0[25] + 16);
  if (*(v10 + 20) == 255)
  {
    *(v10 + 16) = 0;
    *(v10 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 28) = -1;
    *(v11 + 24) = 0;
    v0[23] = v10;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10C9A4()
{
  v2 = *v1;
  v2[47] = v0;

  v3 = v2[32];
  v4 = v2[31];
  v5 = v2[30];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10CF7C;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_10CB3C;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10CB3C(__n128 a1)
{
  v27 = v1;
  v2 = *(v1 + 376);
  sub_144B0C();
  if (v2)
  {

    sub_14241C();
    swift_errorRetain();
    v3 = sub_14242C();
    v4 = sub_144C3C();

    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v1 + 224);
    v6 = *(v1 + 232);
    v8 = *(v1 + 216);
    if (v5)
    {
      v24 = *(v1 + 216);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v9 = 136315394;
      v12 = sub_1454BC();
      v23 = v6;
      v14 = sub_ED2A4(v12, v13, &v26);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_0, v3, v4, "[%s] Error while handling playback rate action: %@", v9, 0x16u);
      sub_15340(v10, &qword_1C2580, &qword_14C8E0);

      __swift_destroy_boxed_opaque_existential_0(v11);

      (*(v7 + 8))(v23, v24);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v20 = *(*(v1 + 200) + 16);
    if (*(v20 + 20) == 255)
    {
      *(v20 + 16) = 0;
      *(v20 + 20) = -1;
    }

    else
    {
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v20;
      *(v21 + 28) = -1;
      *(v21 + 24) = 0;
      *(v1 + 184) = v20;
      sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }

    v22 = *(v1 + 8);

    return v22();
  }

  else
  {
    v16 = *(v1 + 192);
    *(v1 + 408) = v16;
    *(v1 + 412) = 0;

    sub_1425EC();

    v17 = sub_141C0C();
    *(v1 + 88) = v17;
    *(v1 + 96) = &protocol witness table for PlaybackController.TransportCommand;
    *__swift_allocate_boxed_opaque_existential_1((v1 + 64)) = v16;
    (*(*(v17 - 8) + 104))();
    v25 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v18 = swift_task_alloc();
    *(v1 + 384) = v18;
    *v18 = v1;
    v18[1] = sub_10D3BC;

    return (v25)(v1 + 64, 0);
  }
}

uint64_t sub_10CF7C(__n128 a1)
{
  sub_144B0C();
  v2 = *(v1 + 192);
  *(v1 + 408) = v2;
  *(v1 + 412) = 0;

  sub_1425EC();

  v3 = sub_141C0C();
  *(v1 + 88) = v3;
  *(v1 + 96) = &protocol witness table for PlaybackController.TransportCommand;
  *__swift_allocate_boxed_opaque_existential_1((v1 + 64)) = v2;
  (*(*(v3 - 8) + 104))();
  v6 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v4 = swift_task_alloc();
  *(v1 + 384) = v4;
  *v4 = v1;
  v4[1] = sub_10D3BC;

  return (v6)(v1 + 64, 0);
}

uint64_t sub_10D3BC(void *a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_10DDF0;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 8);
    v5 = v4[36];
    v6 = v4[37];
    v7 = sub_10D4E8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10D4E8()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_110254;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10E460;
  v0[5] = &block_descriptor_87;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:2.5];
  _Block_release(v5);

  v8 = [objc_opt_self() mainRunLoop];
  [v8 addTimer:v7 forMode:NSDefaultRunLoopMode];

  v9 = *(v1 + 48);
  *(v1 + 48) = v7;

  v10 = *(v0[25] + 16);
  if (*(v10 + 20) == 255)
  {
    *(v10 + 16) = 0;
    *(v10 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 28) = -1;
    *(v11 + 24) = 0;
    v0[23] = v10;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10D7B8()
{
  v21 = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  sub_14241C();
  swift_errorRetain();
  v1 = sub_14242C();
  v2 = sub_144C3C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  if (v3)
  {
    v19 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1454BC();
    v18 = v4;
    v12 = sub_ED2A4(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v1, v2, "[%s] Error while handling playback rate action: %@", v7, 0x16u);
    sub_15340(v8, &qword_1C2580, &qword_14C8E0);

    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = *(v0[25] + 16);
  if (*(v14 + 20) == 255)
  {
    *(v14 + 16) = 0;
    *(v14 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 28) = -1;
    *(v15 + 24) = 0;
    v0[23] = v14;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10DAD4()
{
  v21 = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  sub_14241C();
  swift_errorRetain();
  v1 = sub_14242C();
  v2 = sub_144C3C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  if (v3)
  {
    v19 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1454BC();
    v18 = v4;
    v12 = sub_ED2A4(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v1, v2, "[%s] Error while handling playback rate action: %@", v7, 0x16u);
    sub_15340(v8, &qword_1C2580, &qword_14C8E0);

    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = *(v0[25] + 16);
  if (*(v14 + 20) == 255)
  {
    *(v14 + 16) = 0;
    *(v14 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 28) = -1;
    *(v15 + 24) = 0;
    v0[23] = v14;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10DDF0()
{
  v21 = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  sub_14241C();
  swift_errorRetain();
  v1 = sub_14242C();
  v2 = sub_144C3C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  if (v3)
  {
    v19 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = sub_1454BC();
    v18 = v4;
    v12 = sub_ED2A4(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v1, v2, "[%s] Error while handling playback rate action: %@", v7, 0x16u);
    sub_15340(v8, &qword_1C2580, &qword_14C8E0);

    __swift_destroy_boxed_opaque_existential_0(v9);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = *(v0[25] + 16);
  if (*(v14 + 20) == 255)
  {
    *(v14 + 16) = 0;
    *(v14 + 20) = -1;
  }

  else
  {
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 28) = -1;
    *(v15 + 24) = 0;
    v0[23] = v14;
    sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  v16 = v0[1];

  return v16();
}

void sub_10E10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_14243C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14241C();

  v7 = sub_14242C();
  v8 = sub_144C3C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_1454BC();
    v12 = sub_ED2A4(v10, v11, &v21);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    swift_beginAccess();
    if (swift_weakLoadStrong() && (, , sub_1425FC(), , (v20 & 1) == 0))
    {
      if (((v18 | (v19 << 32)) & 0x100000000) != 0)
      {
        if (v18)
        {
          v13 = 0x6573616572636564;
        }

        else
        {
          v13 = 0x6573616572636E69;
        }

        v14 = 0xEF6E776F6E6B6E55;
      }

      else
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        v24._countAndFlagsBits = 0x2865746172;
        v24._object = 0xE500000000000000;
        sub_14494C(v24);
        sub_144B3C();
        v13 = v22;
        v14 = v23;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v22 = v13;
    v23 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400, &qword_154A50);
    v15 = sub_14490C();
    v17 = sub_ED2A4(v15, v16, &v21);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_0, v7, v8, "[%s] Pending playback rate timer timed out, expected rate of %s but never got it", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    LODWORD(v21) = 0;
    WORD2(v21) = 256;
    sub_1425EC();
  }
}

void sub_10E460(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a4;
  return _swift_task_switch(sub_10E4EC, 0, 0);
}

uint64_t sub_10E4EC()
{
  v1 = *(v0 + 96);
  v2 = sub_141D0C();
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for PlaybackController.EnhanceDialogueCommand;
  *__swift_allocate_boxed_opaque_existential_1((v0 + 16)) = v1;
  (*(*(v2 - 8) + 104))();
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_10E608;

  return (v5)(v0 + 16, 0);
}

uint64_t sub_10E608(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_10E75C;
  }

  else
  {
    *(v4 + 88) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v5 = sub_10E738;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10E75C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_10E7C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  if (*(v2 + 56) == 0.8)
  {
    *(v2 + 56) = 0x3FE999999999999ALL;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }
}

void sub_10E990(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  if (*(v2 + 64) == 0.0)
  {
    *(v2 + 64) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }
}

double sub_10EB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  result = *(v2 + 56);
  if (result == 0.0)
  {
    *(v2 + 56) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  return result;
}

void sub_10ECE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  if (*(v2 + 24) == 1.0)
  {
    *(v2 + 24) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v4 = *(v1 + 128);
  swift_beginAccess();
  if (*(v4 + 40) == 0.0)
  {
    *(v4 + 40) = 0;
  }

  else
  {
    v5 = swift_getKeyPath();
    __chkstk_darwin(v5);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }
}

void sub_10EFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_10FCC8(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_beginAccess();
  if (*(v2 + 32) == 1.0)
  {
    *(v2 + 32) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }

  swift_getKeyPath();
  sub_141A4C();

  v4 = *(v1 + 128);
  swift_beginAccess();
  if (*(v4 + 48) == 1.0)
  {
    *(v4 + 48) = 0x3FF0000000000000;
  }

  else
  {
    v5 = swift_getKeyPath();
    __chkstk_darwin(v5);
    sub_10FCC8(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

    sub_141A3C();
  }
}

uint64_t sub_10F2F8()
{

  return v0;
}

uint64_t sub_10F350()
{
  sub_10F2F8();

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingPlaybackControlsController.PendingPlaybackRate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingPlaybackControlsController.PendingPlaybackRate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10F408(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10F424(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void sub_10F454()
{
  sub_141F5C();
  sub_141F3C();
  v1 = v0;
  sub_141F4C();
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    *&qword_1D1960 = v1;
    *(&qword_1D1960 + 1) = v2;
  }
}

void sub_10F4A8()
{
  sub_141F5C();
  sub_141F2C();
  dword_1D1968 = v0;
}

uint64_t sub_10F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_14527C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10F5DC, 0, 0);
}

uint64_t sub_10F5DC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_14528C();
  v5 = sub_10FCC8(&qword_1C9400, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1453FC();
  sub_10FCC8(&qword_1C9408, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_14529C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10F76C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10F76C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10F928, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10F928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10F994(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10F9CC(uint64_t (*a1)(void))
{
  a1();

  return sub_1454BC();
}

void sub_10FA08(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_10FAD0(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for NowPlayingPlaybackControlsViewModel(0);
  swift_allocObject();
  v3[2] = sub_117DF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9160, &unk_154720);
  swift_allocObject();
  v7 = sub_14260C();
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0x4004000000000000;
  v3[8] = &_swiftEmptySetSingleton;
  v3[3] = a1;
  v3[4] = v7;
  v3[9] = a2;
  v3[10] = a3;

  v8 = a3;
  sub_105250();
  return v3;
}

unint64_t sub_10FBA8()
{
  result = qword_1C92A8;
  if (!qword_1C92A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C92B0, &qword_154808);
    sub_10FC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C92A8);
  }

  return result;
}

unint64_t sub_10FC2C()
{
  result = qword_1C92B8;
  if (!qword_1C92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C92B8);
  }

  return result;
}

uint64_t sub_10FC80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10FCC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10FD18()
{
  result = qword_1C9368;
  if (!qword_1C9368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C9350, &qword_154810);
    sub_4236C(&unk_1C9370, &qword_1C8220, NSNumber_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9368);
  }

  return result;
}

uint64_t sub_10FE20()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10FE60()
{
  result = qword_1C93C8;
  if (!qword_1C93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C93C8);
  }

  return result;
}

uint64_t sub_10FF14()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_110038()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_110078(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD10;

  return sub_10E4C8(a1, v4, v5, v6, v7);
}

uint64_t sub_11013C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_11017C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32) | (*(v1 + 36) << 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0A8;

  return sub_10A978(a1, v4, v5, v6, v8, v7);
}

uint64_t getEnumTagSinglePayload for NowPlayingPlaybackControlsController.EnhanceDialogueFeature(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for NowPlayingPlaybackControlsController.EnhanceDialogueFeature(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_11070C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C95C8, &unk_154D80);
  v13 = objc_allocWithZone(v12);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = &v13[qword_1C2C08];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v13[qword_1C2C10];
  *v15 = a5;
  *(v15 + 1) = a6;
  v22.receiver = v13;
  v22.super_class = v12;

  v16 = objc_msgSendSuper2(&v22, "init");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = v16;

    v20 = sub_14489C();

    [v18 addObserver:v19 forKeyPath:v20 options:a4 context:{0, v22.receiver, v22.super_class}];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v16;
}

void sub_11093C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view;
  v3 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
  if (v3)
  {
    if (v3 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver;
  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver) = 0;

  v6 = *(v1 + v2);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v1 + v4) = sub_11070C(v6, 0x656D617266, 0xE500000000000000, 1, sub_1120B0, v7);

    _objc_release_x1();
  }
}

void sub_110A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 presentationController];
      v8 = [v7 containerView];

      if (v8 || (v9 = [v6 presentingViewController], v8 = objc_msgSend(v9, "view"), v9, v8))
      {
        [v8 bounds];
        Width = CGRectGetWidth(v13);
        [v8 bounds];
        Height = CGRectGetHeight(v14);
        _UISheetMinimumTopInset();
        [v6 setPreferredContentSize:{Width, Height - v12}];

        v4 = v6;
        v6 = v8;
      }

      v4 = v6;
    }
  }
}

void sub_110B68(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController);
    if (!v5)
    {
LABEL_10:

      return;
    }

    v6 = v5;
    v7 = [v6 isReversed] | a1;
    if ([v6 isReversed])
    {
      if ((v7 & 1) != 0 && (a1 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v7)
    {
LABEL_9:
      sub_110C38(0);

      v4 = v6;
      goto LABEL_10;
    }

    v8 = *&v4[OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController];
    *&v4[OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController] = 0;

    goto LABEL_9;
  }
}

void sub_110C38(void *a1)
{
  v2 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController;
  v3 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController) = a1;
  v14 = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_112044;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks;
    swift_beginAccess();
    v8 = *&v4[v7];
    v9 = v4;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v7] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_134820(0, v8[2] + 1, 1, v8);
      *&v4[v7] = v8;
    }

    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v8 = sub_134820((v11 > 1), v12 + 1, 1, v8);
    }

    v8[2] = v12 + 1;
    v13 = &v8[2 * v12];
    v13[4] = sub_112084;
    v13[5] = v6;
    *&v4[v7] = v8;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_110F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v21 = (*(v7 + 16))(v2, ObjectType, v7);
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v6 + 8);
      v10 = swift_getObjectType();
      v11 = (*(v9 + 8))(v2, v10, v9);
      swift_unknownObjectRelease();
      [v21 setModalPresentationStyle:1];
      [v21 setTransitioningDelegate:v3];
      v12 = [v21 presentationController];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          [v14 _setWantsBottomAttached:1];
          [v15 _setCornerRadiusForPresentationAndDismissal:0.0];
          [v15 _setShouldDismissWhenTappedOutside:1];
          v16 = [*(v3 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view) superview];
          [v15 setSourceView:v16];

          v13 = v16;
        }
      }

      if (a1)
      {
        aBlock[4] = a1;
        aBlock[5] = a2;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_11D5C0;
        aBlock[3] = &block_descriptor_19;
        v17 = _Block_copy(aBlock);
        v18 = v21;
        sub_2172C(a1, a2);
      }

      else
      {
        v19 = v21;
        v17 = 0;
      }

      [v11 presentViewController:v21 animated:1 completion:v17];

      _Block_release(v17);
      v20 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController);
      *(v3 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_presentedViewController) = v21;
    }

    else
    {
    }
  }
}

id sub_11121C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationInteraction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_111320(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
  if (v4)
  {
    if (!a1 || (sub_2B860(0, &qword_1C47C0, UIView_ptr), v6 = v4, v7 = a1, v8 = sub_144FFC(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      [v4 removeGestureRecognizer:*(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_tapGestureRecognizer)];
      v9 = *(v2 + v3);
      if (v9)
      {
        v10 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer);

        [v9 removeGestureRecognizer:v10];
      }
    }
  }
}

void sub_111480(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view;
  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v5 = 0;
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view) = a1;
    goto LABEL_13;
  }

  if (!a1)
  {
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view) = 0;
LABEL_13:
    v11 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver;
    v12 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver);
    *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_accessoryViewFrameObserver) = 0;
    v13 = a1;

    v14 = *(v2 + v4);
    if (v14)
    {
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = sub_11070C(v14, 0x656D617266, 0xE500000000000000, 1, sub_112024, v15);
      v17 = *(v2 + v11);
      *(v2 + v11) = v16;

      v5 = v17;
    }

    goto LABEL_15;
  }

  sub_2B860(0, &qword_1C47C0, UIView_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_144FFC();

  if (v8)
  {
    return;
  }

  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (v5)
  {
    v9 = v5 == a1;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v7;
LABEL_15:

  v18 = *(v2 + v4);
  if (v18)
  {
    [v18 addGestureRecognizer:*(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_tapGestureRecognizer)];
    v19 = *(v2 + v4);
    if (v19)
    {
      v20 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer);

      [v19 addGestureRecognizer:v20];
    }
  }
}

BOOL sub_111730(uint64_t a1)
{
  v2 = v1;
  sub_2B860(0, &qword_1C95B0, NSObject_ptr);
  v3 = OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer);
  v5 = sub_144FFC();

  v6 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController);
  result = (v5 ^ 1) & (v6 == 0);
  if (((v5 ^ 1) & 1) == 0 && !v6)
  {
    v8 = *(v2 + v3);
    v9 = [v8 view];
    [v8 translationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = fabs(v13);
    return v14 > 2.22044605e-16 && fabs(v11 * 0.5) < v14 && v13 < 2.22044605e-16;
  }

  return result;
}

void sub_1118AC(id a1@<X1>, void *a2@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v8 = [a1 view];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v39 = v10;

      v11 = [a2 view];
      if (v11)
      {
        v12 = v11;
        [v11 bounds];
        v37 = v13;
        v15 = v14;

        v16 = 0;
        *&v17 = v39;
        *(&v17 + 1) = v37;
        v18 = 0;
LABEL_9:
        *a4 = v18;
        *(a4 + 8) = v17;
        *(a4 + 24) = v15;
        *(a4 + 32) = v16;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v19 = *(v4 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
    if (!v19)
    {
      v17 = 0uLL;
      v16 = 1;
      v18 = 0;
      v15 = 0.0;
      goto LABEL_9;
    }

    v20 = v19;
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [a1 view];
    [v20 convertRect:v29 toView:{v22, v24, v26, v28}];
    v18 = v30;
    v40 = v31;

    v32 = [a1 view];
    if (v32)
    {
      v33 = v32;
      [v32 bounds];
      Width = CGRectGetWidth(v41);
      [v33 bounds];
      Height = CGRectGetHeight(v42);
      _UISheetMinimumTopInset();
      v36 = v35;

      v16 = 0;
      v15 = Height - v36;
      *&v17 = v40;
      *(&v17 + 1) = Width;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_111B1C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_transitioningDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v8 = *((*(v6 + 24))(v2, ObjectType, v6) + 16);

    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = [a1 presentingViewController];
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v9;
    v11 = *(v6 + 32);
    v12 = v11(ObjectType, v6);
    sub_1118AC(v10, a1, v12 & 1, v27);
    if (v28)
    {

LABEL_6:
      swift_unknownObjectRelease();
      return 0;
    }

    v14 = *v27;
    v13 = *&v27[1];
    v16 = *&v27[2];
    v15 = *&v27[3];
    if (v11(ObjectType, v6))
    {
      v17 = type metadata accessor for NowPlayingFormSheetAnimationController();
      v18 = objc_allocWithZone(v17);
      *&v18[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
      v18[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated] = 0;
      *&v18[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_interaction] = v2;
      v26.receiver = v18;
      v26.super_class = v17;
      v19 = v2;
      v20 = objc_msgSendSuper2(&v26, "init");
      [v20 setIsReversed:1];
      [v20 setSourceFrame:{v14, v13, v16, v15}];

      swift_unknownObjectRelease();
      return v20;
    }

    else
    {
      v21 = objc_allocWithZone(type metadata accessor for PalettePresentationAnimationController());
      v22 = v2;
      v23 = sub_7B3F0(v22);

      v24 = v23;
      [v24 setIsReversed:1];
      [v24 setSourceFrame:{v14, v13, v16, v15}];

      v25 = v24;
      sub_110C38(v24);
      swift_unknownObjectRelease();

      return v24;
    }
  }

  return result;
}

id sub_111DF4(void *a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_transitioningDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v10 = *((*(v8 + 24))(v3, ObjectType, v8) + 16);

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = *(v8 + 32);
    if (v11(ObjectType, v8))
    {
      v12 = type metadata accessor for NowPlayingFormSheetAnimationController();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
      v13[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated] = 0;
      *&v13[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_interaction] = v3;
      v25.receiver = v13;
      v25.super_class = v12;
      v14 = v3;
      v15 = objc_msgSendSuper2(&v25, "init");
      swift_unknownObjectRelease();
      return v15;
    }

    v16 = v11(ObjectType, v8);
    sub_1118AC(a2, a1, v16 & 1, v26);
    if ((v27 & 1) == 0)
    {
      v18 = *&v26[2];
      v17 = *&v26[3];
      v20 = *v26;
      v19 = *&v26[1];
      v21 = objc_allocWithZone(type metadata accessor for PalettePresentationAnimationController());
      v22 = v3;
      v23 = sub_7B3F0(v22);

      [v23 setSourceFrame:{v20, v19, v18, v17}];
      v24 = v23;
      sub_110C38(v23);
      swift_unknownObjectRelease();
      return v23;
    }

    else
    {
LABEL_6:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_111FEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11204C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *SleepTimerController.__allocating_init(isLocalPublisher:playbackController:playbackRatePublisher:activeScrubPositionPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_141C9C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[6] = &_swiftEmptySetSingleton;
  (*(v9 + 104))(v11, enum case for PlaybackController.SleepTimerStopMode.off(_:), v8);
  v13 = sub_141C7C();
  type metadata accessor for NowPlayingSleepTimer.ViewModel(0);
  swift_allocObject();
  v12[2] = sub_46774(v11, v13, 1);
  type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel(0);
  swift_allocObject();
  v12[3] = sub_B9B14();
  v12[4] = a1;
  v12[5] = a3;
  v12[7] = a2;
  v12[8] = a4;
  return v12;
}

void *SleepTimerController.init(isLocalPublisher:playbackController:playbackRatePublisher:activeScrubPositionPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_141C9C();
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[6] = &_swiftEmptySetSingleton;
  (*(v14 + 104))(v13, enum case for PlaybackController.SleepTimerStopMode.off(_:), v11);
  v15 = sub_141C7C();
  type metadata accessor for NowPlayingSleepTimer.ViewModel(0);
  swift_allocObject();
  v5[2] = sub_46774(v13, v15, 1);
  type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel(0);
  swift_allocObject();
  v5[3] = sub_B9B14();
  v5[4] = a1;
  v5[5] = a3;
  v5[7] = a2;
  v5[8] = a4;
  return v5;
}

void sub_112378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7860, &qword_154E00);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v57 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C96D0, &qword_154E08);
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C96D8, &qword_154E10);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C96E0, &qword_154E18);
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v44 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20E8, &unk_14C550);
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20F0, &qword_151630);
  v51 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C96E8, &unk_154E20);
  v53 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  if (os_feature_enabled_red_sun())
  {
    swift_beginAccess();
    v59 = v0;
    v23 = *(v0 + 48);
    if ((v23 & 0xC000000000000001) != 0)
    {

      v24 = sub_14517C();

      v25 = v59;
      if (v24)
      {
        return;
      }
    }

    else
    {
      v25 = v59;
      if (*(v23 + 16))
      {
        return;
      }
    }

    v42 = v2;
    v43 = v1;
    v41 = *(v25 + 56);
    v40 = sub_141CBC();
    v60 = v40;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9750, &qword_154E30);
    sub_1D4A4(&qword_1C9758, &qword_1C9750, &qword_154E30, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_14289C();

    swift_beginAccess();
    sub_14257C();
    swift_endAccess();

    sub_141BEC();
    sub_141C2C();
    sub_1D4A4(&qword_1C2100, &qword_1C20F0, &qword_151630, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1D4A4(&qword_1C2108, &qword_1C20E8, &unk_14C550, &protocol conformance descriptor for Published<A>.Publisher);
    sub_14278C();
    (*(v52 + 8))(v16, v14);
    (*(v51 + 8))(v19, v17);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_113958;
    *(v27 + 24) = v26;
    sub_1D4A4(&qword_1C9760, &qword_1C96E8, &unk_154E20, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    sub_14289C();

    (*(v53 + 8))(v22, v20);
    swift_beginAccess();
    sub_14257C();
    swift_endAccess();
    v28 = v59;

    if (*(v28 + 40))
    {
      v60 = *(v28 + 40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9788, &unk_154E48);
      sub_1D4A4(&unk_1C9790, &qword_1C9788, &unk_154E48, &protocol conformance descriptor for AnyPublisher<A, B>);
      v29 = v44;
      sub_1427BC();

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6848, &unk_1521A0);
      v30 = v48;
      sub_1426AC();
      swift_endAccess();
      sub_1D4A4(&qword_1C97A0, &qword_1C96E0, &qword_154E18, &protocol conformance descriptor for Publishers.Map<A, B>);
      v31 = v46;
      sub_1428BC();
      (*(v45 + 8))(v29, v31);
      v33 = v49;
      v32 = v50;
      (*(v49 + 16))(v47, v30, v50);
      swift_beginAccess();
      sub_1426BC();
      v28 = v59;
      swift_endAccess();
      (*(v33 + 8))(v30, v32);
    }

    v60 = *(v28 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9768, &unk_154E38);
    sub_1D4A4(&unk_1C9770, &qword_1C9768, &unk_154E38, &protocol conformance descriptor for AnyPublisher<A, B>);
    v34 = v54;
    sub_1427BC();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B30, &qword_1521B0);
    v35 = v58;
    sub_1426AC();
    swift_endAccess();
    sub_1D4A4(&qword_1C9780, &qword_1C96D0, &qword_154E08, &protocol conformance descriptor for Publishers.Map<A, B>);
    v36 = v56;
    sub_1428BC();
    (*(v55 + 8))(v34, v36);
    v37 = v42;
    v38 = v43;
    (*(v42 + 16))(v57, v35, v43);
    swift_beginAccess();
    sub_1426BC();
    swift_endAccess();
    (*(v37 + 8))(v35, v38);
  }
}

void sub_112E6C(void **a1, uint64_t a2)
{
  v3 = sub_141C9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v13)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_144DEC();
      sub_144DEC();
      KeyPath = swift_getKeyPath();
      v19 = swift_getKeyPath();
      v21 = *(v4 + 16);
      v22 = v4 + 16;
      v23 = v13;
      v21(v6, v9, v3);

      sub_1426EC();
      KeyPath = *(v4 + 8);
      KeyPath(v9, v3);

      [v13 fireDate];
      v15 = v14;
      swift_getKeyPath();
      swift_getKeyPath();
      v25 = v15;
      sub_1426EC();
      (*(v4 + 104))(v9, enum case for PlaybackController.SleepTimerStopMode.off(_:), v3);
      sub_113C18();

      v20 = v12;
      v16 = sub_14486C();
      KeyPath(v9, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v25) = (v16 & 1) == 0;
      sub_1426EC();
      v17 = v21;
      v21(v9, v12, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      v17(v6, v9, v3);

      sub_1426EC();
      swift_unknownObjectRelease();
      v18 = KeyPath;
      KeyPath(v9, v3);
      v18(v20, v3);
    }
  }
}

void sub_113220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_140ABC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (*(a2 + 48) == 2)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 40);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    v12 = *a2;
    sub_140AAC();
    sub_140A4C();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    if (!a1)
    {
      goto LABEL_8;
    }

    v15 = v11 + (v14 - v12) * v9;
    if (v15 >= v10)
    {
      v15 = v10;
    }

    sub_F7710(COERCE_UNSIGNED_INT64(round(fmax(v15, 0.0) * 1000.0) / 1000.0), 0);
    if (v16)
    {
      v17 = v16;

      *&v18 = COERCE_DOUBLE(sub_141C7C());
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C97A8, &qword_154EA0);
      v19 = sub_141C9C();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_14A710;
      (*(v20 + 104))(v22 + v21, enum case for PlaybackController.SleepTimerStopMode.chapterEnd(_:), v19);
      v30 = *&v18;
      sub_A7558(v22);
      v23 = v30;
      swift_getKeyPath();
      swift_getKeyPath();
      v30 = v23;
      sub_1426EC();

      [v17 startTime];
      v25 = v24;
      [v17 duration];
      v27 = v25 + v26;
      swift_getKeyPath();
      swift_getKeyPath();
      v30 = v27;
      v31 = 0;
      sub_1426EC();
    }

    else
    {
LABEL_8:

      *&v28 = COERCE_DOUBLE(sub_141C7C());
      swift_getKeyPath();
      swift_getKeyPath();
      v30 = *&v28;
      sub_1426EC();
    }
  }
}

double sub_113590@<D0>(float *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t sub_1135B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  return _swift_task_switch(sub_1135D8, 0, 0);
}

uint64_t sub_1135D8()
{
  v0[5] = sub_141C3C();
  v0[6] = &protocol witness table for PlaybackController.SleepTimerCommand;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_141C5C();
  v3 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1136B8;

  return (v3)(v0 + 2, 0);
}

uint64_t sub_1136B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_11380C;
  }

  else
  {
    *(v4 + 96) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v5 = sub_1137E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_11380C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *SleepTimerController.deinit()
{

  return v0;
}

uint64_t SleepTimerController.__deallocating_deinit()
{
  SleepTimerController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_113918()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_113960()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_113998(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

double sub_1139F8@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_113A78(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

void sub_113AF4(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_113B80(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

unint64_t sub_113C18()
{
  result = qword_1C2B10;
  if (!qword_1C2B10)
  {
    sub_141C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2B10);
  }

  return result;
}

void sub_113C80(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 89);
}

double sub_113D50@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_113E20(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 69);
}

uint64_t sub_113EF0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      return v4 == 1 && v2 == v3;
    }

    return v4 == 2 && LODWORD(v3) == 0;
  }

  else
  {
    if (*(a2 + 4) || ((LODWORD(v3) ^ LODWORD(v2)) & 1) != 0)
    {
      return 0;
    }

    return ((*a2 & 0x100) == 0) ^ ((*a1 & 0x100u) >> 8);
  }
}

unint64_t sub_113F64()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 16) | (*(v0 + 20) << 32);
}

void sub_11400C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v4 = *(v3 + 16);
  *(a2 + 4) = *(v3 + 20);
  *a2 = v4;
}

double sub_1140EC(uint64_t a1)
{
  if (*(v1 + 20) == 255)
  {
    if (BYTE4(a1) == 255)
    {
LABEL_3:
      *(v1 + 16) = a1;
      *(v1 + 20) = BYTE4(a1);
      return result;
    }
  }

  else if (BYTE4(a1) != 255)
  {
    if (*(v1 + 20))
    {
      if (*(v1 + 20) == 1)
      {
        if (BYTE4(a1) == 1)
        {
          LODWORD(result) = *(v1 + 16);
          if (*&result == *&a1)
          {
            goto LABEL_3;
          }
        }
      }

      else if (BYTE4(a1) == 2 && !a1)
      {
        goto LABEL_3;
      }
    }

    else if (!BYTE4(a1) && ((a1 ^ *(v1 + 16)) & 1) == 0 && (((a1 ^ *(v1 + 16)) >> 8) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A3C();

  return result;
}

uint64_t sub_114288(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 20) = BYTE4(a2);
  return result;
}

float sub_114298@<S0>(uint64_t a1@<X2>, float *a2@<X8>)
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  result = *(a1 + 24);
  *a2 = result;
  return result;
}

void sub_114340(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 20) != 255 && (*(a4 + 16) | (*(a4 + 20) << 32)) >> 32 == 1 && *a1 == *(a4 + 16))
  {
    *(a4 + 16) = *a1;
    *(a4 + 20) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_114488()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v1 = *(v0 + 40);
  swift_getKeyPath();
  sub_141A4C();

  if (v1 != *(v0 + 24))
  {
    swift_getKeyPath();
    sub_141A4C();

    if ((*(v0 + 69) & 1) == 0)
    {
      swift_getKeyPath();
      sub_141A4C();

      v2 = *(v0 + 24);
      v3 = *(v0 + 40);
      if (v3 == v2)
      {
        *(v0 + 40) = v2;
        sub_114CBC(v3);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_141A3C();
      }
    }
  }

  swift_getKeyPath();
  sub_141A4C();

  return sub_1425CC();
}

float sub_1146DC()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 24);
}

float sub_11477C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_11484C(float a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;

    sub_114488();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_1149BC()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();
}

uint64_t sub_114A60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 32);
}

void sub_114B38(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3 == *(a1 + 16))
  {
    if (v3)
    {
      v4 = v2 == a1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 32) = a1;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (a1 + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

void sub_114CBC(double a1)
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v1 + 40) != a1)
  {
    swift_getKeyPath();
    sub_141A4C();

    v3 = *(v1 + 24);
    swift_getKeyPath();
    sub_141A4C();

    v4 = *(v1 + 40);
    if (v3 != v4)
    {
      swift_getKeyPath();
      sub_141A4C();

      *&v5 = *(v1 + 40);
      sub_1140EC(v5 | 0x100000000);
      swift_getKeyPath();
      sub_141A4C();

      v6 = *(v1 + 40);
      if (*(v1 + 24) == v6)
      {
        *(v1 + 24) = v6;
        sub_114488();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_141A3C();
      }
    }
  }
}

double sub_114F10()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 40);
}

void sub_114FB0(double a1)
{
  v3 = *(v1 + 40);
  if (v3 == a1)
  {
    *(v1 + 40) = a1;

    sub_114CBC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_1150F0()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 64);
}

void sub_115190(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 64);
}

void sub_115260(char a1)
{
  if (*(v1 + 64) == (a1 & 1))
  {
    *(v1 + 64) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_115378()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 65);
}

void sub_115418(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 65);
}

void sub_1154E8(char a1)
{
  if (*(v1 + 65) == (a1 & 1))
  {
    *(v1 + 65) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_115600()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 66);
}

void sub_1156A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 66);
}

void sub_115770(char a1)
{
  if (*(v1 + 66) == (a1 & 1))
  {
    *(v1 + 66) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_115888()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 67);
}

void sub_115928(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 67);
}

void sub_1159F8(char a1)
{
  if (*(v1 + 67) == (a1 & 1))
  {
    *(v1 + 67) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_115B10()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 68);
}

void sub_115BB0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 68);
}

void sub_115C80(char a1)
{
  if (*(v1 + 68) == (a1 & 1))
  {
    *(v1 + 68) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_115D98()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 69);
}

void sub_115E38(char a1)
{
  if (*(v1 + 69) == (a1 & 1))
  {
    *(v1 + 69) = a1 & 1;
    swift_getKeyPath();
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    sub_1425EC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_115FD0(uint64_t a1, char a2)
{
  *(a1 + 69) = a2;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return sub_1425EC();
}

uint64_t sub_116098()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 80);
}

void sub_116138(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 80);
}

double sub_116208(uint64_t a1)
{
  if (*(v1 + 80) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_11630C()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 88);
}

void sub_1163AC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 88);
}

void sub_11647C(char a1)
{
  if (*(v1 + 88) == (a1 & 1))
  {
    *(v1 + 88) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_116594()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 89);
}

void sub_116634(char a1)
{
  if (*(v1 + 89) == (a1 & 1))
  {
    *(v1 + 89) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

void sub_11674C(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(a1 + 89);
}

void sub_1167F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (v5 == *(a4 + 89))
  {
    *(a4 + 89) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  swift_getKeyPath();
  sub_141A6C();

  v7 = *(a4 + 120);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 120) = v9;
    swift_getKeyPath();
    sub_141A5C();
  }
}

uint64_t sub_1169E8()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_116A98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

double sub_116B44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_116B84(v1, v2);
}

double sub_116B84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 96) == a1 && v5 == a2;
      if (v6 || (sub_1453BC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;

  return result;
}

void *sub_116CF4()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

id sub_116D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

double sub_116E54(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_116E84(v1);
  return result;
}

void sub_116E84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_11B858();
  v5 = v4;
  v6 = a1;
  v7 = sub_144FFC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 112);
LABEL_8:
  *(v2 + 112) = a1;
}

void sub_117004(uint64_t a1, void *a2)
{
  v2 = *(a1 + 112);
  *(a1 + 112) = a2;
  v3 = a2;
}

uint64_t sub_117038()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 120);
}

void sub_1170D8(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 120);
}

double sub_1171A8(int a1)
{
  if (*(v1 + 120) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_1172B8()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 124);
}

void sub_117358(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 124);
}

void sub_117428(char a1)
{
  if (*(v1 + 124) == (a1 & 1))
  {
    *(v1 + 124) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_117540()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 125);
}

void sub_1175E0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 125);
}

void sub_1176B0(char a1)
{
  if (*(v1 + 125) == (a1 & 1))
  {
    *(v1 + 125) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_1177C8()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  return *(v0 + 126);
}

void sub_117868(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 126);
}

void sub_117938(char a1)
{
  if (*(v1 + 126) == (a1 & 1))
  {
    *(v1 + 126) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_117A50()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();
}

uint64_t sub_117AF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  *a2 = *(v3 + 128);
}

double sub_117BCC(uint64_t a1)
{
  if (*(v1 + 128) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t NowPlayingPlaybackControlsViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  v2 = sub_141A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NowPlayingPlaybackControlsViewModel.__deallocating_deinit()
{
  NowPlayingPlaybackControlsViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_117DF0()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 20) = -1;
  sub_141F5C();
  sub_141EDC();
  *(v0 + 24) = v2;
  *(v0 + 32) = sub_141F0C();
  sub_141EDC();
  *(v0 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0130, &unk_14C580);
  swift_allocObject();
  *(v0 + 48) = sub_1425DC();
  *(v0 + 56) = sub_141F0C();
  *(v0 + 64) = 65793;
  *(v0 + 68) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C92C0, &qword_1498A0);
  swift_allocObject();
  *(v0 + 72) = sub_14260C();
  *(v0 + 80) = 2;
  *(v0 + 88) = 0;
  type metadata accessor for NowPlayingSpeedControlsAnimationViewModel(0);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 96) = 0;
  *(v0 + 119) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = xmmword_149810;
  __asm { FMOV            V0.2D, #1.0 }

  *(v4 + 56) = _Q0;
  _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
  *(v1 + 128) = v4;
  _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
  return v1;
}

Swift::Void __swiftcall NowPlayingSpeedControlsAnimationViewModel.showSlider()()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    swift_beginAccess();
    if (*(v0 + 17) == 1)
    {
      *(v0 + 17) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_141A3C();
    }
  }
}

Swift::Void __swiftcall NowPlayingSpeedControlsAnimationViewModel.hideSlider()()
{
  swift_beginAccess();
  if (*(v0 + 17))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }

  else
  {
    *(v0 + 17) = 0;
  }
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.isPreciseControlSliderSupported.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1182E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

void NowPlayingSpeedControlsAnimationViewModel.isPreciseControlSliderSupported.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }
}

uint64_t sub_1184EC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t (*NowPlayingSpeedControlsAnimationViewModel.isPreciseControlSliderSupported.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_1181E0(v4);
  return sub_118678;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.shouldShowSlider.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t sub_118788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

void NowPlayingSpeedControlsAnimationViewModel.shouldShowSlider.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }
}

uint64_t sub_118A08(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

uint64_t sub_118A74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_118AC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t (*NowPlayingSpeedControlsAnimationViewModel.shouldShowSlider.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_118684(v4);
  return sub_118C54;
}

double NowPlayingSpeedControlsAnimationViewModel.sliderScaleY.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 24);
}

double sub_118D14@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void NowPlayingSpeedControlsAnimationViewModel.sliderScaleY.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }
}

uint64_t sub_118F50(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

uint64_t sub_118FA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t (*NowPlayingSpeedControlsAnimationViewModel.sliderScaleY.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = NowPlayingMediaPlayerController.controlsInteractionTracker.modify(v4);
  return sub_119130;
}

double NowPlayingSpeedControlsAnimationViewModel.sliderOpacity.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 32);
}

double sub_119240@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void NowPlayingSpeedControlsAnimationViewModel.sliderOpacity.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }
}

uint64_t sub_11947C(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 32) = a2;
  return result;
}

uint64_t sub_1194D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t (*NowPlayingSpeedControlsAnimationViewModel.sliderOpacity.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_11913C(v4);
  return sub_11965C;
}

double NowPlayingSpeedControlsAnimationViewModel.sliderIconsOffset.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 40);
}

double sub_11976C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void NowPlayingSpeedControlsAnimationViewModel.sliderIconsOffset.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }
}

uint64_t sub_1199A8(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 40) = a2;
  return result;
}

uint64_t sub_1199FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t (*NowPlayingSpeedControlsAnimationViewModel.sliderIconsOffset.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_119668(v4);
  return sub_119B88;
}

double NowPlayingSpeedControlsAnimationViewModel.sliderIconsOpacity.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 48);
}

double sub_119C98@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

void NowPlayingSpeedControlsAnimationViewModel.sliderIconsOpacity.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }
}

uint64_t sub_119ED4(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 48) = a2;
  return result;
}

uint64_t sub_119F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

uint64_t (*NowPlayingSpeedControlsAnimationViewModel.sliderIconsOpacity.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_119B94(v4);
  return sub_11A0B4;
}

double NowPlayingSpeedControlsAnimationViewModel.buttonsScale.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 56);
}

double sub_11A1C4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 56);
  *a2 = result;
  return result;
}

void NowPlayingSpeedControlsAnimationViewModel.buttonsScale.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }
}

uint64_t sub_11A400(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 56) = a2;
  return result;
}

uint64_t sub_11A454()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t (*NowPlayingSpeedControlsAnimationViewModel.buttonsScale.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_11A0C0(v4);
  return sub_11A5E0;
}

double NowPlayingSpeedControlsAnimationViewModel.buttonsOpacity.getter()
{
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v0 + 64);
}

double sub_11A6F0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  result = *(v3 + 64);
  *a2 = result;
  return result;
}

void NowPlayingSpeedControlsAnimationViewModel.buttonsOpacity.setter(double a1)
{
  swift_beginAccess();
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
    sub_141A3C();
  }
}

uint64_t sub_11A92C(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 64) = a2;
  return result;
}

uint64_t sub_11A980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t (*NowPlayingSpeedControlsAnimationViewModel.buttonsOpacity.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  *v4 = v1;
  swift_getKeyPath();
  sub_141A6C();

  v4[7] = sub_11A5EC(v4);
  return sub_11AB0C;
}

void sub_11AB18(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_141A5C();

  free(v3);
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  v2 = sub_141A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NowPlayingSpeedControlsAnimationViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI41NowPlayingSpeedControlsAnimationViewModel___observationRegistrar;
  v2 = sub_141A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_11ACA8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 24);
}

void (*sub_11AD80(uint64_t **a1))(void *)
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
  v2[4] = NowPlayingSpeedControlsAnimationViewModel.sliderScaleY.modify(v2);
  return sub_11ADF4;
}

double sub_11ADF8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 32);
}

void (*sub_11AED0(uint64_t **a1))(void *)
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
  v2[4] = NowPlayingSpeedControlsAnimationViewModel.sliderOpacity.modify(v2);
  return sub_11BD1C;
}

double sub_11AF44()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 40);
}

void (*sub_11B01C(uint64_t **a1))(void *)
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
  v2[4] = NowPlayingSpeedControlsAnimationViewModel.sliderIconsOffset.modify(v2);
  return sub_11BD1C;
}

double sub_11B090()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 48);
}

void (*sub_11B168(uint64_t **a1))(void *)
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
  v2[4] = NowPlayingSpeedControlsAnimationViewModel.sliderIconsOpacity.modify(v2);
  return sub_11BD1C;
}

uint64_t sub_11B1DC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_11B290()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_11B6B4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);
  sub_141A4C();

  swift_beginAccess();
  return *(v1 + 17);
}

uint64_t sub_11B3B4(uint64_t a1)
{
  result = sub_141A8C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_11B4C8(uint64_t a1)
{
  result = sub_141A8C();
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

uint64_t getEnumTagSinglePayload for NowPlayingPlaybackControlsViewModel.PlaybackRateAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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