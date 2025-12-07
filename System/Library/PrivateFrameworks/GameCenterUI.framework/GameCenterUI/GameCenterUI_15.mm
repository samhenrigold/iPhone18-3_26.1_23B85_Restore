void sub_24E0D5E98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

Swift::Void __swiftcall GKPlayerGroupView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_24E348458();
}

Swift::Void __swiftcall GKPlayerGroupView.layoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  sub_24E0D5224();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong layer];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 frame];
  OUTLINED_FUNCTION_8_2();

  v10.origin.x = OUTLINED_FUNCTION_7_2();
  [v3 setCornerRadius_];

  v6 = *&v0[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView];
  if (v6)
  {
    v7 = v6;
    v8 = [v7 layer];
    [v7 frame];
    [v8 setCornerRadius_];
  }
}

id GKPlayerGroupView.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerCount) = 0;
  OUTLINED_FUNCTION_4_22();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView) = 0;
  v2 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v3, v4, v2, v0, ObjectType);
}

id GKPlayerGroupView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GKPlayerGroupView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerCount] = 0;
  v4 = OUTLINED_FUNCTION_4_22();
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1, v4);

  if (v5)
  {
  }

  return v5;
}

void sub_24E0D6710()
{
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_iconContainer);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView1);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView2);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView1WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView2WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView1LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView1TopConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView2TrailingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView2BottomConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3BottomConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4TrailingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4TopConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5BottomConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6TopConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7BottomConstraint);
  sub_24DE73F0C(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerSelectionProxy);
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView);
}

id GKPlayerGroupView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

JUMeasurements __swiftcall GKPlayerGroupView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [v2 sizeThatFits_];
  v5 = 0.0;
  v6 = v4;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

id OUTLINED_FUNCTION_5_52(void *a1, double a2)
{
  v5 = v4 * a2;

  return [a1 (v2 + 2450)];
}

id OUTLINED_FUNCTION_6_44()
{

  return [v0 (v2 + 3832)];
}

id OUTLINED_FUNCTION_8_35(void *a1, double a2)
{
  v5 = v4 * a2;

  return [a1 (v2 + 2450)];
}

id OUTLINED_FUNCTION_9_33(void *a1)
{
  v3 = *(v1 + 2352);

  return [a1 v3];
}

id OUTLINED_FUNCTION_11_23()
{

  return [v0 (v2 + 1473)];
}

id OUTLINED_FUNCTION_13_26(void *a1)
{

  return [a1 (v1 + 3832)];
}

id OUTLINED_FUNCTION_17_19()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_18_20(void *a1)
{
  v5 = v1 != v2;

  return [a1 (v3 + 1656)];
}

uint64_t OUTLINED_FUNCTION_19_17()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_21_16()
{

  return swift_unknownObjectWeakLoadStrong();
}

id OUTLINED_FUNCTION_22_16(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_23_17(void *a1)
{

  return [a1 (v1 + 2296)];
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_27_10()
{
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_32_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_33_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_35_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_24E0D6E9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0D6EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0D6F88@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  sub_24E3442D8();
  OUTLINED_FUNCTION_0_14();
  v64 = v3;
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v62 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v7;
  sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v60 = v9;
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v59 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v67 = &v53 - v13;
  sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_1();
  v56 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  sub_24E344238();
  OUTLINED_FUNCTION_0_14();
  v57 = v27;
  v58 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_1();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v54 = &v53 - v32;
  sub_24E344218();
  sub_24DF89628((v1 + 24), v73);
  v55 = v1;
  sub_24DF89628((v1 + 4), v25);
  v33 = *(v15 + 104);
  OUTLINED_FUNCTION_2_60();
  v33();
  sub_24DF89628((v1 + 9), v22);
  OUTLINED_FUNCTION_2_60();
  v33();
  OUTLINED_FUNCTION_2_60();
  v33();
  OUTLINED_FUNCTION_2_60();
  v33();
  v70 = sub_24E344998();
  v71 = MEMORY[0x277D22998];
  __swift_allocate_boxed_opaque_existential_1(v69);
  sub_24E3449A8();
  v34 = v54;
  sub_24E344228();
  v35 = v58;
  v36 = *(v57 + 8);
  v36(v30, v58);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v73[3] = v35;
  v73[4] = MEMORY[0x277D226D0];
  __swift_allocate_boxed_opaque_existential_1(v73);
  v37 = v55;
  sub_24E344228();
  v36(v34, v35);
  v38 = v37;
  v39 = *v37;
  v40 = v37[1];
  v41 = v37[2];
  v42 = v37[3];
  v43 = v59;
  sub_24E344408();
  sub_24E0D7950(v38, v69);
  v44 = swift_allocObject();
  OUTLINED_FUNCTION_3_59(v44);
  sub_24E344418();

  v45 = v61;
  v60 = *(v60 + 8);
  (v60)(v43, v61);
  v46 = v62;
  sub_24E3442B8();
  v47 = v63;
  sub_24E3442C8();
  v48 = v65;
  v49 = *(v64 + 8);
  v49(v46, v65);
  sub_24E0D7950(v38, v69);
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_3_59(v50);
  v68[3] = v48;
  v68[4] = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v68);
  sub_24E3442C8();

  v49(v47, v48);
  v72[3] = v45;
  v72[4] = MEMORY[0x277D22778];
  __swift_allocate_boxed_opaque_existential_1(v72);
  v51 = v67;
  sub_24E344418();
  (v60)(v51, v45);
  __swift_destroy_boxed_opaque_existential_1(v68);
  sub_24E344948();
  v70 = sub_24E344958();
  v71 = MEMORY[0x277D22970];
  __swift_allocate_boxed_opaque_existential_1(v69);
  sub_24E344968();
  MEMORY[0x25303B510](v69, v39, v40, v41, v42);
  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_24E0D762C()
{
  v0 = sub_24E344208();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_24E3442F8();
  v5 = MEMORY[0x277D226F0];
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24E3442E8();
  v6 = *MEMORY[0x277D226C8];
  v7 = *(v1 + 104);
  v7(v3, v6, v0);
  sub_24E3441D8();
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24E3442E8();
  v7(v3, v6, v0);
  return sub_24E3441F8();
}

uint64_t sub_24E0D77D0(uint64_t a1, uint64_t a2)
{
  sub_24DF89628(a2 + 152, v3);
  sub_24E344258();
  return sub_24E344248();
}

uint64_t sub_24E0D7830(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E0D7A40();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24E0D7888()
{
  result = qword_27F1E3778;
  if (!qword_27F1E3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3778);
  }

  return result;
}

unint64_t sub_24E0D78E0()
{
  result = qword_27F1E3780;
  if (!qword_27F1E3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3780);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);

  return MEMORY[0x2821FE8E8](v0, 376, 7);
}

unint64_t sub_24E0D7A40()
{
  result = qword_27F1E3788;
  if (!qword_27F1E3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3788);
  }

  return result;
}

uint64_t sub_24E0D7A94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0D7AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_3_59(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 160), 0x168uLL);
}

void sub_24E0D7B80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_24E0D7BF8(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GameCenterSignInActionImplementation();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_24E0D7C84()
{
  v1 = v0;
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController) || (v7 = OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome, *(v1 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    v8 = sub_24E0D86C8();
    OUTLINED_FUNCTION_1_79(&type metadata for GameCenterSignInActionImplementation.EnableGameCenterActionImplementationError, v8);
    *v9 = 0;
    *(v9 + 8) = 2;
    return sub_24E347A98();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    if (Strong)
    {
      v12 = sub_24E347AD8();
      v13 = [objc_allocWithZone(MEMORY[0x277CECAC8]) init];
      [v13 setDelegate_];
      [v13 setServiceType_];
      [v13 _setShouldForceOperation_];
      v14 = *(v1 + v6);
      *(v1 + v6) = v13;
      v15 = v13;

      *(v1 + v7) = v12;

      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_16_4();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v12;
      aBlock[4] = sub_24E0D873C;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E0D7B80;
      aBlock[3] = &block_descriptor_20_0;
      v18 = _Block_copy(aBlock);

      [v15 prepareInViewController:Strong completion:v18];
      _Block_release(v18);
    }

    else
    {
      (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
      return sub_24E347AA8();
    }

    return v12;
  }
}

void sub_24E0D7F74(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24E0D7FE4(a1 & 1, a2);
  }
}

void sub_24E0D7FE4(char a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController);
    v14 = Strong;
    if ((a1 & 1) != 0 && v6)
    {
      v7 = v6;
      [v14 presentViewController:v7 animated:1 completion:0];

      v8 = v14;
    }

    else
    {
      v9 = sub_24E0D86C8();
      v10 = OUTLINED_FUNCTION_1_79(&type metadata for GameCenterSignInActionImplementation.EnableGameCenterActionImplementationError, v9);
      *v11 = a2;
      *(v11 + 8) = 0;
      v12 = v6;
      v13 = a2;
      sub_24E0D80F4(v6, v10);

      v8 = v12;
    }
  }
}

void sub_24E0D80F4(void *a1, void *a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_16_4();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = v2;
    v9[4] = sub_24E0D871C;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24E00B24C;
    v9[3] = &block_descriptor_41;
    v6 = _Block_copy(v9);
    v7 = a2;
    v8 = v2;

    [a1 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

uint64_t sub_24E0D81E4(void *a1, uint64_t a2)
{
  v4 = sub_24E347218();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome);
  if (a1)
  {
    if (v9)
    {
      v10 = a1;

      sub_24E347AB8();
    }
  }

  else if (v9)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D21CA8], v4, v6);

    sub_24E347AC8();

    (*(v5 + 8))(v8, v4);
  }

  v11 = *(a2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController);
  *(a2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController) = 0;

  *(a2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome) = 0;
}

void sub_24E0D835C(void *a1, char a2, void *a3)
{
  if (a2)
  {

    sub_24E0D80F4(a1, 0);
  }

  else
  {
    v5 = sub_24E0D86C8();
    v6 = OUTLINED_FUNCTION_1_79(&type metadata for GameCenterSignInActionImplementation.EnableGameCenterActionImplementationError, v5);
    *v7 = a3;
    *(v7 + 8) = 1;
    v8 = a3;
    sub_24E0D80F4(a1, v6);
  }
}

void sub_24E0D8480(void *a1)
{
  v2 = sub_24E0D86C8();
  v3 = OUTLINED_FUNCTION_1_79(&type metadata for GameCenterSignInActionImplementation.EnableGameCenterActionImplementationError, v2);
  *v4 = 1;
  *(v4 + 8) = 2;
  sub_24E0D80F4(a1, v3);
}

id sub_24E0D8598(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GameCenterSignInActionImplementation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_24E0D8650()
{
  result = qword_27F1E3810;
  if (!qword_27F1E3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3810);
  }

  return result;
}

unint64_t sub_24E0D86C8()
{
  result = qword_27F1E3818;
  if (!qword_27F1E3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3818);
  }

  return result;
}

double block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI0aB26SignInActionImplementationC06EnableabfG5ErrorO(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_1_79(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t type metadata accessor for AchievementsLinkData(uint64_t a1)
{
  result = qword_280BE0818;
  if (!qword_280BE0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0D8804(uint64_t a1)
{
  sub_24E0ADC44();
  if (v1 <= 0x3F)
  {
    sub_24E025CD0(319, &qword_280BE0108, sub_24DFC2C38);
    if (v2 <= 0x3F)
    {
      sub_24DF9E07C(319);
      if (v3 <= 0x3F)
      {
        sub_24E025CD0(319, &qword_280BE0650, MEMORY[0x277D21F70]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E0D8978()
{
  result = qword_27F1E3830;
  if (!qword_27F1E3830)
  {
    type metadata accessor for AchievementsLinkData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3830);
  }

  return result;
}

id sub_24E0D89D0(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v2 = OUTLINED_FUNCTION_1_38();
  v5 = [v3 v4];
  v7 = 1;
  sub_24E0D8DC8(&v7);
  return v5;
}

void sub_24E0D8A24(char a1, double a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
  v6 = a1 & 1;
  if (v5)
  {
    v7 = v5;
    sub_24E30A400(v6, a2);
  }

  *(v3 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius) = a2;
  *(v3 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle) = v6;
  [*(v3 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView) setClipsToBounds_];

  sub_24E0983D0();
}

void sub_24E0D8B00(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView;
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_24E0D94E4();
}

void sub_24E0D8B84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow);
  v6 = *(v4 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v8 = a1;

  sub_24E0D8BE4(v7);
}

void sub_24E0D8BE4(__n128 a1)
{
  v2 = v1;
  v3 = v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow) || *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor))
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
    }

    else
    {
      type metadata accessor for ShadowView();
      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v5 = v6;
      sub_24E0D8B00(v6);
      v4 = 0;
    }

    v7 = *(v2 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius);
    v8 = *(v2 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle);
    v9 = v4;
    v17 = v5;
    sub_24E30A400(v8, v7);
    v10 = [v17 layer];
    [v10 setMaskedCorners_];

    v11 = *(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor);
    [v17 setBackgroundColor_];

    v12 = *v3;
    v13 = *(v3 + 8);
    v14 = *(v3 + 16);
    v15 = *(v3 + 24);
    v16 = v12;
    sub_24E30A46C(v12, v13, v14, v15);
  }

  else
  {

    sub_24E0D8B00(0);
  }
}

uint64_t sub_24E0D8DC8(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style) = *a1;
  v4 = v2;
  return sub_24E0D9514(&v4);
}

id sub_24E0D8E04(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize);
  v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize);
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_24E0DA0C0(v4, v5);
}

void sub_24E0D8E24(id a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView);
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor))
  {
    if (a1)
    {
      v3 = [a1 imageWithRenderingMode_];
    }

    else
    {
      v3 = 0;
    }

    [v2 setImage_];
  }

  else
  {
    [v2 setImage_];
  }
}

void sub_24E0D8ED8(void *a1, char a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView];
  v7 = [v6 layer];
  [v7 removeAllAnimations];

  if (!*&v3[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor])
  {
    v8 = a1;
    goto LABEL_5;
  }

  if (a1)
  {
    v8 = [a1 imageWithRenderingMode_];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v14 = v9;
  if (a2)
  {
    [v6 setAlpha_];
    [v6 setImage_];
    type metadata accessor for Animation();
    v10 = sub_24E029998();
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    aBlock[4] = sub_24E0DA390;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_42;
    v12 = _Block_copy(aBlock);
    v13 = v3;

    [v10 addAnimations_];
    _Block_release(v12);
    [v10 startAnimation];
  }

  else
  {
    [v6 setImage_];
  }
}

void sub_24E0D90D8(id a1, char a2)
{
  if (a1)
  {
    [a1 size];
    sub_24E0D8E04(v5, v6);
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = [*(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView) image];
  if (v7)
  {

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  sub_24E0D8ED8(a1, v8);
}

id sub_24E0D9168()
{
  if (qword_27F1DDDE0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F20B808;
  qword_27F20AE58 = qword_27F20B808;

  return v1;
}

char *sub_24E0D91CC()
{
  OUTLINED_FUNCTION_29();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor) = 0;
  v4 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v5 = OUTLINED_FUNCTION_1_38();
  v8 = [v6 v7];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView) = v8;
  v9 = (v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize);
  *v9 = v2;
  v9[1] = v1;
  v26 = type metadata accessor for ArtworkView();
  v10 = OUTLINED_FUNCTION_3_60();
  v13 = objc_msgSendSuper2(v11, v12, v10, v0, v26);
  v14 = objc_allocWithZone(type metadata accessor for ShadowView());
  v15 = v13;
  v16 = OUTLINED_FUNCTION_1_38();
  v18 = [v14 v17];
  if (qword_27F1DDD98 != -1)
  {
    swift_once();
  }

  v19 = qword_27F20B7C0;
  v20 = *&v15[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor];
  *&v15[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor] = qword_27F20B7C0;
  v21 = v19;

  [v18 setBackgroundColor_];
  v22 = v15;
  [v22 addSubview_];
  v23 = *&v22[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView];
  *&v22[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView] = v18;
  v24 = v18;

  [v22 setContentMode_];
  [v22 setClipsToBounds_];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea_];
  [v22 addSubview_];

  return v22;
}

void sub_24E0D9414()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E0D94E4()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView];
  if (v1)
  {
    return [v0 insertSubview:v1 belowSubview:*&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView]];
  }

  return result;
}

uint64_t sub_24E0D9514(char *a1)
{
  v2 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style;
  result = sub_24DFD3260(v1[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style], *a1);
  if ((result & 1) == 0)
  {
    switch(v1[v2])
    {
      case 1:
      case 2:
      case 3:
      case 4:
        v4 = sub_24E348C08();

        if (v4)
        {
          goto LABEL_8;
        }

        switch(v1[v2])
        {
          case 4:
            goto LABEL_7;
          default:
            v5 = sub_24E348C08();

            if (v5)
            {
              goto LABEL_8;
            }

            switch(v1[v2])
            {
              case 2:
                goto LABEL_7;
              default:
                v11 = sub_24E348C08();

                if (v11)
                {
                  goto LABEL_8;
                }

                if (qword_27F1DD860 != -1)
                {
                  swift_once();
                }

                v6 = qword_27F20AE58;
                v7 = 1.0;
                break;
            }

            break;
        }

        break;
      default:
LABEL_7:

LABEL_8:
        v6 = [objc_opt_self() clearColor];
        v7 = 0.0;
        break;
    }

    sub_24E098584(v6);
    *&v1[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderWidth] = v7;
    sub_24E0983D0();
    v8 = *&v1[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView];
    if (v8)
    {
      v9 = 1;
      switch(v1[v2])
      {
        case 4:
          break;
        default:
          v9 = sub_24E348C08();
          break;
      }

      v10 = v8;

      [v10 setHidden_];
    }

    v1[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid] = 1;

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_24E0D9934()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

void sub_24E0D99D0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor) = a1;
  v4 = a1;

  sub_24E0D8BE4(v3);
}

void sub_24E0D9A28()
{
  v1 = [v0 contentMode];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_24E26F7EC(v1, v6, v8);
  v47 = v10;
  v12 = v11;
  type metadata accessor for ContentMode(0);
  if (v1 > 0xC)
  {
    sub_24E348C58();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_53();
    if ((v13 & 0x7F) != 0)
    {
      v49.origin.x = OUTLINED_FUNCTION_7_2();
      v14 = CGRectGetMidX(v49) + v47 * -0.5;
    }

    else
    {
      v14 = 0.0;
      OUTLINED_FUNCTION_5_53();
      if ((v15 & 0xA80) == 0)
      {
        v50.origin.x = OUTLINED_FUNCTION_7_2();
        v14 = CGRectGetMaxX(v50) - v47;
      }
    }

    v16 = 0.0;
    OUTLINED_FUNCTION_5_53();
    if ((v17 & 0x19F) != 0)
    {
      v51.origin.x = OUTLINED_FUNCTION_7_2();
      v16 = CGRectGetMidY(v51) + v12 * -0.5;
    }

    else
    {
      OUTLINED_FUNCTION_5_53();
      if ((v18 & 0x620) == 0)
      {
        v52.origin.x = OUTLINED_FUNCTION_7_2();
        v16 = CGRectGetMaxY(v52) - v12;
      }
    }

    v19 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid;
    if ((v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid] & 1) != 0 || v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid] == 1)
    {
      v20 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style;
      v21 = 6.0;
      ScaledCornerRadiusForSize = 0.0;
      v23 = 0;
      switch(v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style])
      {
        case 1:
          ScaledCornerRadiusForSize = GKHomeScreenIconsGetScaledCornerRadiusForSize(0, v47, v12);
          v23 = 0;
          v21 = ScaledCornerRadiusForSize;
          if (((1 << v0[v20]) & 0xB) == 0)
          {
            goto LABEL_18;
          }

          break;
        case 2:
          v24 = v47;
          if (v47 >= v12)
          {
            v24 = v12;
          }

          ScaledCornerRadiusForSize = v24 * 0.5;
          goto LABEL_18;
        case 3:
          break;
        case 4:
LABEL_18:
          v23 = 1;
          v21 = ScaledCornerRadiusForSize;
          break;
        default:
          v21 = *&v0[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius];
          v23 = v0[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle];
          break;
      }

      sub_24E0D8A24(v23, v21);
      v0[v19] = 0;
      v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid] = 0;
    }

    v48.receiver = v0;
    v48.super_class = type metadata accessor for ArtworkView();
    objc_msgSendSuper2(&v48, sel_layoutSubviews);
    v45 = v5;
    v46 = v3;
    v25 = *&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView];
    v26 = OUTLINED_FUNCTION_7_2();
    [v27 v28];
    if (*&v0[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView])
    {
      v29 = OUTLINED_FUNCTION_7_2();
      [v30 v31];
    }

    if (*&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView])
    {
      v32 = OUTLINED_FUNCTION_7_2();
      [v33 v34];
    }

    v35 = [v25 layer];
    [v35 setAnchorPoint_];

    v36 = [v25 layer];
    v37 = v36;
    if (v1 == 2)
    {
      v53.origin.x = v14;
      v53.origin.y = v16;
      v53.size.width = v47;
      v53.size.height = v12;
      v38 = 0.0 - CGRectGetMinX(v53);
      OUTLINED_FUNCTION_1_80();
      v44 = v38 / CGRectGetWidth(v54);
      OUTLINED_FUNCTION_1_80();
      v39 = 0.0 - CGRectGetMinY(v55);
      OUTLINED_FUNCTION_1_80();
      v43 = v39 / CGRectGetHeight(v56);
      v57.origin.x = v46;
      v57.origin.y = v45;
      v57.size.width = v7;
      v57.size.height = v9;
      Width = CGRectGetWidth(v57);
      OUTLINED_FUNCTION_1_80();
      v42 = Width / CGRectGetWidth(v58);
      v59.origin.x = v46;
      v59.origin.y = v45;
      v59.size.width = v7;
      v59.size.height = v9;
      Height = CGRectGetHeight(v59);
      OUTLINED_FUNCTION_1_80();
      [v37 setContentsRect_];
    }

    else
    {
      [v36 setContentsRect_];
    }
  }
}

id sub_24E0D9F08(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArtworkView();
  return objc_msgSendSuper2(&v3, sel_frame);
}

id sub_24E0D9FB4()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for ArtworkView();
  v14.receiver = v0;
  v14.super_class = v1;
  objc_msgSendSuper2(&v14, sel_frame);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_3_60();
  objc_msgSendSuper2(v11, v12, v10, v0, v1);
  return sub_24E0DA050(v3, v5, v7, v9);
}

id sub_24E0DA050(double a1, double a2, double a3, double a4)
{
  v5 = *&v4[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize];
  v6 = *&v4[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize + 8];
  if (v5 == 0.0 && v6 == 0.0 || (v5 == a3 ? (v7 = v6 == a4) : (v7 = 0), v7))
  {
    [v4 frame];

    return sub_24E0D8E04(v8, v9);
  }

  return result;
}

id sub_24E0DA0C0(double a1, double a2)
{
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize] != a1 || *&v2[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize + 8] != a2)
  {
    v2[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid] = 1;
    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_24E0DA10C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor);
}

id sub_24E0DA17C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArtworkView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_24E0DA250()
{
  [v0 sizeThatFits_];
  v2 = v1;
  v3 = [*&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView] image];
  if (v3)
  {
    v4 = v3;
    sub_24E3485C8();
  }

  return v2;
}

unint64_t sub_24E0DA314(uint64_t a1)
{
  result = sub_24E0DA33C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24E0DA33C()
{
  result = qword_27F1E3880;
  if (!qword_27F1E3880)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3880);
  }

  return result;
}

double block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E0DA3FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0DA43C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0DA4DC(uint64_t a1, double a2, double a3, CGFloat a4, double a5)
{
  v6 = v5;
  v90 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v11);
  v93 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v15);
  v95 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v19);
  sub_24E344688();
  OUTLINED_FUNCTION_0_14();
  v85 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v22);
  v84 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v83 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v25);
  v26 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v88 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_14();
  v87 = v29;
  v30 = *(v5 + 120);
  v31 = *(v5 + 128);
  v32 = *(v5 + 136);
  v33 = *(v5 + 144);
  swift_getObjectType();
  sub_24E0B7968(v30, v31, v32, v33);
  v34 = a4;
  sub_24E3484F8();
  v89 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_24DF8968C(v5 + 280, &v97);
  if (*(&v98 + 1))
  {
    sub_24DF88BF0(&v97, &v100);
    __swift_project_boxed_opaque_existential_1(&v100, v101);
    if ((sub_24E344098() & 1) == 0 && *(v5 + 192) != 1)
    {
      OUTLINED_FUNCTION_8_8((v5 + 200));
      sub_24E3440D8(v39, v41);
      v104.origin.x = v89;
      v104.origin.y = v37;
      v104.size.width = v39;
      v104.size.height = v41;
      CGRectGetMidX(v104);
      __swift_project_boxed_opaque_existential_1(v5, *(v5 + 24));
      OUTLINED_FUNCTION_17_20();
      OUTLINED_FUNCTION_7_35();
      v82 = v37;
      v78 = *(v88 + 8);
      v78(v87, v26);
      OUTLINED_FUNCTION_8_8((v5 + 200));
      sub_24E348508();
      sub_24E344088();
      __swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
      OUTLINED_FUNCTION_17_20();
      OUTLINED_FUNCTION_7_35();
      v78(v87, v26);
      __swift_project_boxed_opaque_existential_1((v5 + 200), *(v5 + 224));
      sub_24E344078();
      CGRectGetMaxY(v105);
      v106.origin.x = OUTLINED_FUNCTION_13_27();
      v106.origin.y = v37;
      v106.size.width = v39;
      v106.size.height = v41;
      CGRectGetWidth(v106);
      OUTLINED_FUNCTION_14_22();
      CGRectGetHeight(v107);
      OUTLINED_FUNCTION_8_8((v5 + 240));
      v79 = OUTLINED_FUNCTION_16_22();
      OUTLINED_FUNCTION_8_8(&v100);
      v80 = OUTLINED_FUNCTION_16_22();
      __swift_project_boxed_opaque_existential_1((v5 + 152), *(v5 + 176));
      OUTLINED_FUNCTION_17_20();
      v81 = OUTLINED_FUNCTION_7_35();
      v78(v87, v26);
      sub_24E32DAB8(MEMORY[0x277D84F90], v79, v80, v81);
      OUTLINED_FUNCTION_14_22();
      CGRectGetMidX(v108);
      OUTLINED_FUNCTION_8_8(&v100);
      sub_24E348508();
      sub_24E344088();
      v109.origin.x = v89;
      v109.origin.y = v82;
      v109.size.width = v39;
      v109.size.height = v41;
      CGRectGetMidX(v109);
      OUTLINED_FUNCTION_8_8((v5 + 240));
      sub_24E348508();
      sub_24E344088();
      v110.origin.x = OUTLINED_FUNCTION_13_27();
      v110.origin.y = v82;
      v110.size.width = v39;
      v110.size.height = v41;
      CGRectGetMinX(v110);
      v111.origin.x = v34;
      v111.origin.y = v82;
      v111.size.width = v39;
      v111.size.height = v41;
      CGRectGetMinY(v111);
      OUTLINED_FUNCTION_14_22();
      CGRectGetHeight(v112);
      sub_24E343FD8();
      return __swift_destroy_boxed_opaque_existential_1(&v100);
    }

    OUTLINED_FUNCTION_12_21();
    __swift_destroy_boxed_opaque_existential_1(&v100);
  }

  else
  {
    OUTLINED_FUNCTION_12_21();
    sub_24DF8C95C(&v97, &qword_27F1DEE30, &qword_24E369B60);
  }

  sub_24E344668();
  v42 = *(v5 + 224);
  v43 = v6[29];
  __swift_project_boxed_opaque_existential_1(v6 + 25, v6[28]);
  v101 = v42;
  v102 = *(v43 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v100);
  OUTLINED_FUNCTION_6_45();
  (*(v44 + 16))();
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  (*(v17 + 104))(v91, *MEMORY[0x277D227C8], v95);
  (*(v13 + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38, &qword_24E373200);
  v45 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_24E36A270;
  v47 = v46 + v45;
  sub_24E344628();
  sub_24E344638();
  v96[0] = v46;
  sub_24DF8A8A4();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
  sub_24DF8A8FC();
  OUTLINED_FUNCTION_5_54();
  *(v49 - 256) = v48;
  v86 = v50;
  sub_24E3487E8();
  sub_24E344678();
  (*(v9 + 8))(v47, v90);
  (*(v13 + 8))(v92, v93);
  (*(v17 + 8))(v91, v95);
  sub_24DF8C95C(&v97, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v100);
  sub_24E344698();
  v51 = *(v85 + 8);
  v51();
  __swift_project_boxed_opaque_existential_1(v6 + 30, v6[33]);
  sub_24E3440E8();
  v52 = v6[22];
  v53 = v6[23];
  __swift_project_boxed_opaque_existential_1(v6 + 19, v52);
  sub_24E2548A0(v52, v53);
  sub_24E344198();
  (*(v88 + 8))(v87);
  OUTLINED_FUNCTION_13_27();
  OUTLINED_FUNCTION_14_22();
  CGRectGetWidth(v103);
  sub_24DF8968C((v6 + 35), &v97);
  if (*(&v98 + 1))
  {
    sub_24DF88BF0(&v97, &v100);
    __swift_project_boxed_opaque_existential_1(&v100, v101);
    if (sub_24E344098())
    {
      __swift_destroy_boxed_opaque_existential_1(&v100);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v100, v101);
      OUTLINED_FUNCTION_18_21();
      memset(v96, 0, sizeof(v96));
      v54 = OUTLINED_FUNCTION_4_54();
      v55(v54);
      v56 = OUTLINED_FUNCTION_3_61();
      v57(v56);
      *(OUTLINED_FUNCTION_8_36() + 16) = xmmword_24E367D20;
      sub_24E344618();
      OUTLINED_FUNCTION_5_54();
      OUTLINED_FUNCTION_20_17(v59, *(v58 - 256), v86);
      sub_24E344678();
      v60 = OUTLINED_FUNCTION_11_24();
      v61(v60);
      OUTLINED_FUNCTION_15_21();
      v62();
      v63 = OUTLINED_FUNCTION_10_28();
      v64(v63);
      sub_24DF8C95C(v96, &qword_27F1DEE48, qword_24E36BF40);
      __swift_destroy_boxed_opaque_existential_1(&v97);
      sub_24E344698();
      v51();
      __swift_destroy_boxed_opaque_existential_1(&v100);
    }
  }

  else
  {
    sub_24DF8C95C(&v97, &qword_27F1DEE30, &qword_24E369B60);
  }

  __swift_project_boxed_opaque_existential_1(v6 + 30, v6[33]);
  OUTLINED_FUNCTION_18_21();
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v65 = OUTLINED_FUNCTION_4_54();
  v66(v65);
  v67 = OUTLINED_FUNCTION_3_61();
  v68(v67);
  v69 = OUTLINED_FUNCTION_8_36();
  *(v69 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v96[0] = v69;
  OUTLINED_FUNCTION_5_54();
  OUTLINED_FUNCTION_20_17(v71, *(v70 - 256), v86);
  sub_24E344678();
  v72 = OUTLINED_FUNCTION_11_24();
  v73(v72);
  OUTLINED_FUNCTION_15_21();
  v74();
  v75 = OUTLINED_FUNCTION_10_28();
  v76(v75);
  sub_24DF8C95C(&v97, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v100);
  sub_24E344698();
  v51();
  OUTLINED_FUNCTION_14_22();
  sub_24E344608();
  return (*(v83 + 8))(v94, v84);
}

double sub_24E0DB3D4(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_24E344478();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v36[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24E3444A8();
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v36[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D22788], v6, v16);
  sub_24E344488();
  v19 = *(v4 + 224);
  v20 = *(v4 + 232);
  __swift_project_boxed_opaque_existential_1((v4 + 200), v19);
  v39 = v19;
  v40 = *(*(v20 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_1(&v38);
  OUTLINED_FUNCTION_6_45();
  (*(v21 + 16))();
  sub_24DF89628(v4, v37);
  v36[3] = sub_24E3442F8();
  v36[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v36);
  sub_24E3442E8();
  v42 = sub_24E344888();
  v43 = MEMORY[0x277D22900];
  __swift_allocate_boxed_opaque_existential_1(v41);
  sub_24E344878();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_24DF89628(v4 + 40, &v38);
  v22 = sub_24E344838();
  v23 = MEMORY[0x277D228E0];
  v42 = v22;
  v43 = MEMORY[0x277D228E0];
  __swift_allocate_boxed_opaque_existential_1(v41);
  sub_24E344848();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_24DF8968C(v4 + 280, &v38);
  if (v39)
  {
    sub_24DF88BF0(&v38, v41);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    if (sub_24E344098() & 1) == 0 && (*(v4 + 192))
    {
      v24 = v42;
      v25 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v39 = v24;
      v40 = *(v25 + 8);
      __swift_allocate_boxed_opaque_existential_1(&v38);
      OUTLINED_FUNCTION_6_45();
      (*(v26 + 16))();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(&v38);
      sub_24DF89628(v4 + 40, v37);
      v39 = v22;
      v40 = v23;
      __swift_allocate_boxed_opaque_existential_1(&v38);
      sub_24E344848();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_24DF8C95C(&v38, &qword_27F1DEE30, &qword_24E369B60);
  }

  v27 = *(v4 + 264);
  v28 = *(v4 + 272);
  __swift_project_boxed_opaque_existential_1((v4 + 240), v27);
  v42 = v27;
  v43 = *(v28 + 8);
  __swift_allocate_boxed_opaque_existential_1(v41);
  OUTLINED_FUNCTION_6_45();
  (*(v29 + 16))();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v41);
  v30 = *(v4 + 120);
  v31 = *(v4 + 128);
  v32 = *(v4 + 136);
  v33 = *(v4 + 144);
  swift_getObjectType();
  sub_24E0B7968(v30, v31, v32, v33);
  sub_24E348538();
  sub_24E344468();
  (*(v14 + 8))(v18, v12);
  return a2;
}

uint64_t sub_24E0DB88C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 193))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0DB8CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_24E0DB94C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E0DBA28()
{
  result = qword_27F1E3888;
  if (!qword_27F1E3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3888);
  }

  return result;
}

double OUTLINED_FUNCTION_7_35()
{

  sub_24E344198();
  return result;
}

uint64_t OUTLINED_FUNCTION_8_36()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_12_21()
{
  *(v3 - 584) = v2;
  *(v3 - 368) = v0;
  *(v3 - 576) = v1;
}

double OUTLINED_FUNCTION_16_22()
{

  sub_24E3440E8();
  return result;
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return sub_24E2548A0(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return sub_24E3440B8();
}

uint64_t OUTLINED_FUNCTION_20_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_24E3487E8();
}

uint64_t sub_24E0DBC6C(uint64_t a1, void *a2)
{
  result = sub_24DFD8654();
  v21 = result;
  v4 = 0;
  while (1)
  {
    if (v21 == v4)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = MEMORY[0x25303F560](v4, a1);
LABEL_6:
    v6 = v5;
    v7 = [v5 contact];
    v8 = [v7 identifier];

    v9 = sub_24E347CF8();
    v11 = v10;

    v12 = [a2 contact];
    v13 = [v12 identifier];

    v14 = sub_24E347CF8();
    v16 = v15;

    if (v9 == v14 && v11 == v16)
    {

      return v4;
    }

    v18 = sub_24E348C08();

    if (v18)
    {

      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_20;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 8 * v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24E0DBE90()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_94();
  v2 = sub_24E0DD8EC(v0, v1, &unk_24E376964);
  OUTLINED_FUNCTION_6_42(v2, v3);

  swift_beginAccess();
}

uint64_t sub_24E0DBF54(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24E0DD69C(v3, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_1_81();
    sub_24E0DD578(v6, sub_24E0DDCCC, v7);
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

uint64_t sub_24E0DC028(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*sub_24E0DC090(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC12GameCenterUI27FriendSuggestionsDataSource___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_94();
  v3[6] = sub_24E0DD8EC(v4, v5, &unk_24E376964);
  sub_24E343538();

  *v3 = v1;
  swift_getKeyPath();
  sub_24E343558();

  v3[7] = sub_24E0DBE40(v3);
  return sub_24E0DC1A4;
}

void sub_24E0DC1A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24E343548();

  free(v1);
}

uint64_t sub_24E0DC238()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_94();
  v2 = sub_24E0DD8EC(v0, v1, &unk_24E376964);
  OUTLINED_FUNCTION_6_42(v2, v3);

  swift_beginAccess();
}

uint64_t sub_24E0DC2FC(uint64_t a1)
{
  swift_beginAccess();
  if (sub_24E12D524(*(v1 + 24), a1))
  {
    *(v1 + 24) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_1_81();
    sub_24E0DD578(v5, sub_24E0DDCB0, v6);
  }
}

uint64_t sub_24E0DC3C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

void *sub_24E0DC428()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_94();
  v3 = sub_24E0DD8EC(v1, v2, &unk_24E376964);
  OUTLINED_FUNCTION_6_42(v3, v4);

  v5 = *(v0 + 32);
  v6 = v5;
  return v5;
}

void sub_24E0DC4B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E0DC4E0(v1);
}

void sub_24E0DC4E0(void *a1)
{
  v3 = *(v1 + 32);
  v4 = v3;
  LOBYTE(v3) = sub_24E0DD620(v3, a1);

  if (v3)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_1_81();
    sub_24E0DD578(v6, sub_24E0DDC94, v7);
  }

  else
  {
    v8 = *(v1 + 32);
    *(v1 + 32) = a1;
  }
}

void sub_24E0DC5BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = a2;
  v3 = a2;
}

void *sub_24E0DC5F0()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v0[2] = 0;
  v0[3] = v2;
  v0[4] = 0;
  sub_24E343568();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = objc_allocWithZone(type metadata accessor for FriendSuggestionsDataSource.DataUpdateDelegate());
  v5 = sub_24E0DD35C(sub_24E0DD8C0, v3);
  sub_24E0DC4E0(v5);
  return v1;
}

void sub_24E0DC690(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E346EE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24E346F08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 21)
  {
    if (a1 != 4)
    {
      return;
    }

    v26 = sub_24E347CF8();
    v27 = v14;
    sub_24E348918();
    sub_24E12C94C(a2, v28);
    sub_24DF8BE60(aBlock);
    if (v29)
    {
      if (swift_dynamicCast())
      {
        v16 = v26;
        v15 = v27;
        sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
        v24 = sub_24E348368();
        v17 = swift_allocObject();
        v17[2] = a3;
        v17[3] = v16;
        v17[4] = v15;
        aBlock[4] = sub_24E0DD8C8;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24E00B24C;
        aBlock[3] = &block_descriptor_43;
        v18 = _Block_copy(aBlock);

        sub_24E346EF8();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_24E0DD8EC(&qword_27F1DFD00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
        sub_24DFCD5F4();
        sub_24E3487E8();
        v19 = v24;
        MEMORY[0x25303EED0](0, v13, v9, v18);
        _Block_release(v18);

        (*(v7 + 8))(v9, v6);
        (*(v11 + 8))(v13, v10);
      }

      return;
    }

LABEL_9:
    sub_24DFA9298(v28, &qword_27F1E0370, &unk_24E369A10);
    return;
  }

  v26 = sub_24E347CF8();
  v27 = v20;
  sub_24E348918();
  sub_24E12C94C(a2, v28);
  sub_24DF8BE60(aBlock);
  if (!v29)
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v21 = v26;
    v22 = v27;
    sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
    static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v21, v22);
  }
}

uint64_t sub_24E0DCABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    sub_24E0DD8EC(&unk_27F1E38C0, type metadata accessor for FriendSuggestionsDataSource, &unk_24E376964);

    sub_24E343538();

    swift_getKeyPath();
    sub_24E343558();

    swift_beginAccess();
    sub_24E0111D0();
    v7 = *(*(v6 + 24) + 16);
    sub_24E1242A0(v7);
    v8 = *(v6 + 24);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    *(v6 + 24) = v8;
    swift_endAccess();
    swift_getKeyPath();
    sub_24E343548();
  }

  return result;
}

uint64_t sub_24E0DCC54()
{
  if (sub_24E0DBE90())
  {
  }

  else
  {
    sub_24E0DBF54(MEMORY[0x277D84F90]);
    type metadata accessor for GameCenter();
    swift_initStaticObject();
    sub_24E2EFE4C();
    v1 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    swift_retain_n();
    v2 = sub_24E348368();
    v3[3] = v1;
    v3[4] = MEMORY[0x277D225C0];
    v3[0] = v2;
    sub_24E347A78();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }
}

uint64_t sub_24E0DCDA0(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343CC8();
  v6 = a1;
  v7 = sub_24E343F78();
  v8 = sub_24E348258();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24DE53000, v7, v8, "FriendSuggestionsDataSource fetchFriendSuggestionsData - unable to fetch friend suggestions: %@", v9, 0xCu);
    sub_24DFA9298(v10, &unk_27F1DF730, &qword_24E36DA40);
    MEMORY[0x253040EE0](v10, -1, -1);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_24E0DBF54(MEMORY[0x277D84F90]);
}

void sub_24E0DCF64(void *a1)
{
  v3 = [objc_opt_self() proxyForLocalPlayer];
  v4 = [v3 utilityServicePrivate];

  v5 = [a1 contact];
  v6 = [v5 identifier];

  if (!v6)
  {
    sub_24E347CF8();
    v6 = sub_24E347CB8();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = a1;
  v10[4] = sub_24E0DD934;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E052CF0;
  v10[3] = &block_descriptor_30;
  v8 = _Block_copy(v10);

  v9 = a1;

  [v4 denyContact:v6 handler:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_24E0DD0F4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_24E343F88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_24E343CC8();
    v10 = a1;
    v11 = sub_24E343F78();
    v12 = sub_24E348258();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24DE53000, v11, v12, "FriendSuggestionsDataSource ignoreFriendSuggestion - Unable to add contact to suggestions denylist: %@", v13, 0xCu);
      sub_24DFA9298(v14, &unk_27F1DF730, &qword_24E36DA40);
      MEMORY[0x253040EE0](v14, -1, -1);
      MEMORY[0x253040EE0](v13, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
  }

  v18 = sub_24E0DC090(v23);
  if (!*v17)
  {
    return (v18)(v23, 0);
  }

  sub_24E0DD93C(v17, a3);
  v20 = v19;
  result = sub_24DFD8654();
  if (result < v20)
  {
    __break(1u);
  }

  else
  {
    sub_24E25DDBC(v20, result);
    return (v18)(v23, 0);
  }

  return result;
}

id sub_24E0DD35C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCC12GameCenterUI27FriendSuggestionsDataSourceP33_F815CB2A6384F01E6B425971DC87B4FC18DataUpdateDelegate_updateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 daemonProxy];
  [v10 addDataUpdateDelegate_];

  return v9;
}

uint64_t sub_24E0DD424(uint64_t result)
{
  if (result == 21 || result == 4)
  {
    return (*(v1 + OBJC_IVAR____TtCC12GameCenterUI27FriendSuggestionsDataSourceP33_F815CB2A6384F01E6B425971DC87B4FC18DataUpdateDelegate_updateBlock))();
  }

  return result;
}

uint64_t sub_24E0DD578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_94();
  sub_24E0DD8EC(v3, v4, &unk_24E376964);
  return sub_24E343528();
}

BOOL sub_24E0DD620(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for FriendSuggestionsDataSource.DataUpdateDelegate();
    v5 = a1;
    v6 = a2;
    v2 = sub_24E348628();
  }

  return (v2 & 1) == 0;
}

BOOL sub_24E0DD69C(unint64_t a1, unint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_24E12D960(a1, a2);
  }

  return !v3;
}

uint64_t sub_24E0DD6D8()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI27FriendSuggestionsDataSource___observationRegistrar;
  sub_24E343578();
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_24E0DD744()
{
  sub_24E0DD6D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FriendSuggestionsDataSource(uint64_t a1)
{
  result = qword_27F1E38A0;
  if (!qword_27F1E38A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0DD7F0(uint64_t a1)
{
  result = sub_24E343578();
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

double block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E0DD8EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24E0DD93C(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_24E0DBC6C(v4, v5);
  if (v2)
  {
    goto LABEL_45;
  }

  v38 = v6;
  if (v7)
  {
    sub_24DFD8654();
LABEL_45:

    return;
  }

  v36 = 0;
  v37 = a1;
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v9 = sub_24E348878();
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8 == v9)
      {
        goto LABEL_45;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25303F560](v8, v4);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 contact];
      v13 = [v12 identifier];

      v14 = sub_24E347CF8();
      v16 = v15;

      v17 = v5;
      v18 = [v5 contact];
      v19 = [v18 identifier];

      v20 = sub_24E347CF8();
      v22 = v21;

      if (v14 == v20 && v16 == v22)
      {
        break;
      }

      v24 = sub_24E348C08();

      if (v24)
      {
        goto LABEL_21;
      }

      v25 = v38;
      if (v38 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x25303F560]();
          v27 = MEMORY[0x25303F560](v8, v4);
        }

        else
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v28 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38 >= v28)
          {
            goto LABEL_52;
          }

          if (v8 >= v28)
          {
            goto LABEL_53;
          }

          v29 = *(v4 + 32 + 8 * v8);
          v26 = *(v4 + 32 + 8 * v38);
          v27 = v29;
        }

        v30 = v27;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_24E25ACD8();
          v31 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v31) = 0;
        }

        v5 = (v4 & 0xFFFFFFFFFFFFFF8);
        v32 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20) = v30;

        if ((v4 & 0x8000000000000000) != 0 || v31)
        {
          v4 = sub_24E25ACD8();
          v5 = (v4 & 0xFFFFFFFFFFFFFF8);
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v8 >= v5[2])
        {
          goto LABEL_50;
        }

        v33 = &v5[v8];
        v34 = v33[4];
        v33[4] = v26;

        v25 = v38;
        *v37 = v4;
      }

      v38 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_49;
      }

      v5 = v17;
LABEL_38:
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_48;
      }
    }

LABEL_21:
    v5 = v17;
    goto LABEL_38;
  }

LABEL_54:
  __break(1u);
}

uint64_t sub_24E0DDD2C(uint64_t a1, void *a2)
{
  result = sub_24DFD8654();
  v19 = result;
  v4 = 0;
  while (1)
  {
    if (v19 == v4)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = MEMORY[0x25303F560](v4, a1);
LABEL_6:
    v6 = v5;
    v7 = [v5 playerID];
    v8 = sub_24E347CF8();
    v10 = v9;

    v11 = [a2 playerID];
    v12 = sub_24E347CF8();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {

      return v4;
    }

    v16 = sub_24E348C08();

    if (v16)
    {

      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_20;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 8 * v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24E0DDEC0()
{
  swift_getKeyPath();
  v0 = sub_24E0E0D18();
  OUTLINED_FUNCTION_6_42(v0, v1);

  swift_beginAccess();
}

uint64_t sub_24E0DDF64(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24E0E04A8(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_63();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    sub_24E0E0420(v7, sub_24E0DDCCC, v8);
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

uint64_t (*sub_24E0DE044(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC12GameCenterUI24FriendRequestsDataSource___observationRegistrar;
  *v3 = v1;
  v3[6] = sub_24E0E0D18();
  sub_24E343538();

  *v3 = v1;
  swift_getKeyPath();
  sub_24E343558();

  v3[7] = sub_24E0DBE40(v3);
  return sub_24E0DE138;
}

void sub_24E0DE138(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24E343548();

  free(v1);
}

uint64_t sub_24E0DE1CC()
{
  swift_getKeyPath();
  v1 = sub_24E0E0D18();
  OUTLINED_FUNCTION_6_42(v1, v2);

  return *(v0 + 24);
}

uint64_t sub_24E0DE22C()
{
  OUTLINED_FUNCTION_56_0();
  result = sub_24E0DE1CC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_24E0DE280(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_63();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_24E0E0420(v5, sub_24E0E0D70, v6);
  }

  return result;
}

void *sub_24E0DE320()
{
  swift_getKeyPath();
  v1 = sub_24E0E0D18();
  OUTLINED_FUNCTION_6_42(v1, v2);

  v3 = *(v0 + 32);
  v4 = v3;
  return v3;
}

void sub_24E0DE388(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E0DE3B8(v1);
}

void sub_24E0DE3B8(void *a1)
{
  v3 = *(v1 + 32);
  v4 = v3;
  LOBYTE(v3) = sub_24E0E04E4(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_63();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    sub_24E0E0420(v7, sub_24E0DDC94, v8);
  }

  else
  {
    v9 = *(v1 + 32);
    *(v1 + 32) = a1;
  }
}

void sub_24E0DE4A0()
{
  v0 = sub_24E0DE1CC();
  v1 = sub_24E0DDEC0();
  v2 = v1;
  if ((v0 & 1) != 0 && v1)
  {
    v3 = sub_24DFD8654();
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25303F560](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v5 isFriendInvitationInContacts])
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_24E0DE5D0()
{
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  sub_24E2F0D88();
  v0 = sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  swift_retain_n();
  v1 = sub_24E348368();
  v3[3] = v0;
  v3[4] = MEMORY[0x277D225C0];
  v3[0] = v1;
  sub_24E347A78();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void sub_24E0DE6B4(uint64_t *a1)
{
  v1 = sub_24E0DE89C(*a1);
  sub_24E0DDF64(v1);
  sub_24E0DEDD0();
}

uint64_t sub_24E0DE6E4(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343CC8();
  v6 = a1;
  v7 = sub_24E343F78();
  v8 = sub_24E348258();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24DE53000, v7, v8, "Unable to fetch friend requests: %@", v9, 0xCu);
    sub_24E0C60AC(v10);
    MEMORY[0x253040EE0](v10, -1, -1);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_24E0DEDD0();
  return sub_24E0DDF64(MEMORY[0x277D84F90]);
}

id sub_24E0DE89C(uint64_t a1)
{
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v51 = v3;
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24DFD8654();
  v6 = v5;
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    v59 = MEMORY[0x277D84F90];
    result = sub_24E12F080(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v9 = 0;
    v10 = v59;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25303F560](v9, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v12 playerID];
      v14 = sub_24E347CF8();
      v16 = v15;

      v59 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24E12F080((v17 > 1), v18 + 1, 1);
        v10 = v59;
      }

      ++v9;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v6 != v9);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v20 = *(sub_24E07F614(v10) + 16);

  if (__OFSUB__(v6, v20))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v6 - v20 > 0)
  {
    v59 = v7;
    v21 = sub_24DFD8654();
    v22 = 0;
    v57 = a1 & 0xC000000000000001;
    v58 = v21;
    v54 = a1 + 32;
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v22 == v58)
      {
        v44 = v59;
        goto LABEL_42;
      }

      v23 = v57;
      sub_24DFFA844();
      result = v23 ? MEMORY[0x25303F560](v22, a1) : *(v54 + 8 * v22);
      v24 = result;
      v25 = __OFADD__(v22, 1);
      v26 = v22 + 1;
      if (v25)
      {
        break;
      }

      v55 = v26;
      v27 = 0;
      v28 = 0;
      while (v58 != v27)
      {
        if (v57)
        {
          result = MEMORY[0x25303F560](v27, a1);
        }

        else
        {
          if (v27 >= *(v56 + 16))
          {
            goto LABEL_49;
          }

          result = *(a1 + 8 * v27 + 32);
        }

        v29 = result;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v30 = a1;
        v31 = [result playerID];
        v32 = sub_24E347CF8();
        v34 = v33;

        v35 = [v24 playerID];
        v36 = sub_24E347CF8();
        v38 = v37;

        if (v32 == v36 && v34 == v38)
        {

          v41 = 1;
        }

        else
        {
          v40 = sub_24E348C08();

          v41 = v40 & 1;
        }

        ++v27;
        v25 = __OFADD__(v28, v41);
        v28 += v41;
        a1 = v30;
        if (v25)
        {
          goto LABEL_48;
        }
      }

      if (v28 > 1 && (v42 = [v24 inboxEntry]) != 0)
      {
        v43 = v42;

        v22 = v55;
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
        v22 = v55;
      }
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v44 = a1;
LABEL_42:
  sub_24E343CC8();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v45 = sub_24E343F78();
  v46 = sub_24E348238();
  if (!os_log_type_enabled(v45, v46))
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_46;
  }

  v47 = swift_slowAlloc();
  *v47 = 134218496;
  *(v47 + 4) = sub_24DFD8654();

  *(v47 + 12) = 2048;
  v48 = sub_24DFD8654();
  result = sub_24DFD8654();
  if (!__OFSUB__(v48, result))
  {
    *(v47 + 14) = v48 - result;

    *(v47 + 22) = 2048;
    v49 = sub_24DFD8654();

    *(v47 + 24) = v49;

    _os_log_impl(&dword_24DE53000, v45, v46, "FriendRequestsDataSource.dedupeFriendRequests: gamed returned %ld friend requests. %ld were removed for being duplicates, leaving %ld", v47, 0x20u);
    MEMORY[0x253040EE0](v47, -1, -1);

LABEL_46:
    (*(v51 + 8))(v53, v52);
    return v44;
  }

LABEL_53:
  __break(1u);
  return result;
}

void sub_24E0DEDD0()
{
  v0 = sub_24E0DE320();
  if (v0)
  {
  }

  else
  {
    v1 = swift_allocObject();
    swift_weakInit();
    v2 = objc_allocWithZone(type metadata accessor for FriendRequestsDataSource.FriendRequestDataUpdateDelegate());
    v3 = sub_24E0E0208(sub_24E0E0D00, v1);

    sub_24E0DE3B8(v3);
  }
}

uint64_t sub_24E0DEE78(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E0DE5D0();
  }

  return result;
}

uint64_t sub_24E0DEED0(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24E0DEEF0, 0, 0);
}

uint64_t sub_24E0DEEF0()
{
  v1 = *(v0 + 48);
  sub_24E0DE3B8(0);
  v2 = [v1 inboxEntry];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 senderDisplayName];
LABEL_5:
    v6 = v4;

    v7 = sub_24E347CF8();
    v9 = v8;

LABEL_6:
    sub_24DF88A8C(0, &qword_280BDFA90, 0x277D0C138);
    static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v7, v9);

    goto LABEL_7;
  }

  v5 = [*(v0 + 48) contact];
  if (v5)
  {
    v3 = v5;
    v4 = [v5 _gkCompositeName];
    goto LABEL_5;
  }

  v20 = sub_24E0C5B1C(*(v0 + 48));
  if (v21)
  {
    v7 = v20;
    v9 = v21;
    goto LABEL_6;
  }

LABEL_7:
  v11 = sub_24E0DE044((v0 + 16));
  if (*v10)
  {
    sub_24E0E086C(v10, *(v0 + 48));
    v13 = v12;
    v14 = sub_24DFD8654();
    if (v14 < v13)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v14);
    }

    sub_24E25DE10(v13, v14);
  }

  (v11)(v0 + 16, 0);
  v15 = [*(v0 + 48) inboxEntry];
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  if (v15)
  {

    v18 = swift_task_alloc();
    *(v0 + 64) = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *v14 = v0;
    v14[1] = sub_24E0DF1D4;
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 88) = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v16;
    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *v14 = v0;
    v14[1] = sub_24E0DF2FC;
  }

  return MEMORY[0x2822008A0](v14);
}

uint64_t sub_24E0DF1D4()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    v6 = sub_24E0DF40C;
  }

  else
  {

    v6 = sub_24E0DF2E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24E0DF2FC()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v6 = sub_24E0DF46C;
  }

  else
  {

    v6 = sub_24E0E0D8C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24E0DF40C()
{
  OUTLINED_FUNCTION_9_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E0DF46C()
{
  OUTLINED_FUNCTION_9_7();

  v1 = *(v0 + 8);

  return v1();
}

double sub_24E0DF4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 friendServicePrivate];

  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_24E0E0B78;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_37;
  v14 = _Block_copy(aBlock);

  [v11 didAccept:1 friendRequest:a2 handler:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24E0DF6E8(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E0DE5D0();
  if (a1)
  {
    v6 = a1;
    sub_24E343CC8();
    v7 = a1;
    v8 = sub_24E343F78();
    v9 = sub_24E348258();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_24DE53000, v8, v9, "FriendRequestsDataSource - acceptFriendRequest didAccept call to daemon failed with error: %@", v10, 0xCu);
      sub_24E0C60AC(v11);
      MEMORY[0x253040EE0](v11, -1, -1);
      MEMORY[0x253040EE0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v15[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
    return sub_24E348008();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
    return sub_24E348018();
  }
}

void sub_24E0DF8F4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 friendServicePrivate];

  v12 = [a2 playerID];
  if (!v12)
  {
    sub_24E347CF8();
    v12 = sub_24E347CB8();
  }

  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_24E0E0C54;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_43;
  v15 = _Block_copy(aBlock);

  [v11 acceptFriendInvitationWithPlayerID:v12 completion:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

uint64_t sub_24E0DFB48(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_24E343CC8();
    v7 = a1;
    v8 = sub_24E343F78();
    v9 = sub_24E348258();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_24DE53000, v8, v9, "FriendRequestsDataSource - acceptFriendRequest acceptFriendInvitation call to daemon failed with error: %@", v10, 0xCu);
      sub_24E0C60AC(v11);
      MEMORY[0x253040EE0](v11, -1, -1);
      MEMORY[0x253040EE0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_24E0DE5D0();
    v15[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
    return sub_24E348008();
  }

  else
  {
    sub_24E0DE5D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
    return sub_24E348018();
  }
}

void sub_24E0DFD5C(void *a1)
{
  v3 = [a1 inboxEntry];
  if (v3)
  {

    v4 = [objc_opt_self() proxyForLocalPlayer];
    v5 = [v4 friendServicePrivate];

    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = a1;
    OUTLINED_FUNCTION_0_95();
    v16 = 1107296256;
    v17 = sub_24E052CF0;
    v18 = &block_descriptor_28;
    v7 = _Block_copy(&v15);

    v8 = a1;

    [v5 didAccept:0 friendRequest:v8 handler:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = [objc_opt_self() proxyForLocalPlayer];
    v10 = [v9 friendServicePrivate];

    v11 = [a1 playerID];
    if (!v11)
    {
      sub_24E347CF8();
      v11 = sub_24E347CB8();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    OUTLINED_FUNCTION_0_95();
    v16 = 1107296256;
    v17 = sub_24E052CF0;
    v18 = &block_descriptor_44;
    v13 = _Block_copy(&v15);

    v14 = a1;

    [v10 ignoreFriendInvitationWithPlayerID:v11 completion:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24E0DFFB8(void *a1, uint64_t a2, void *a3, const char *a4)
{
  v7 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    sub_24E343CC8();
    v14 = a1;
    v15 = sub_24E343F78();
    v16 = sub_24E348258();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_24DE53000, v15, v16, a4, v17, 0xCu);
      sub_24E0C60AC(v18);
      MEMORY[0x253040EE0](v18, -1, -1);
      MEMORY[0x253040EE0](v17, -1, -1);
    }

    else
    {
    }

    return (*(v9 + 8))(v12, v7);
  }

  else
  {
    v22 = sub_24E0DE044(v27);
    if (*v21)
    {
      sub_24E0E086C(v21, a3);
      v24 = v23;
      result = sub_24DFD8654();
      if (result < v24)
      {
        __break(1u);
      }

      else
      {
        sub_24E25DE10(v24, result);
        return (v22)(v27, 0);
      }
    }

    else
    {
      return (v22)(v27, 0);
    }
  }

  return result;
}

id sub_24E0E0208(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCC12GameCenterUI24FriendRequestsDataSourceP33_EC238EB52926426EF919E35F59F47DC431FriendRequestDataUpdateDelegate_updateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 daemonProxy];
  [v10 addDataUpdateDelegate_];

  return v9;
}

uint64_t sub_24E0E02D0(uint64_t result)
{
  if (result == 3)
  {
    return (*(v1 + OBJC_IVAR____TtCC12GameCenterUI24FriendRequestsDataSourceP33_EC238EB52926426EF919E35F59F47DC431FriendRequestDataUpdateDelegate_updateBlock))();
  }

  return result;
}

BOOL sub_24E0E04A8(unint64_t a1, unint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_24E12DB34(a1, a2);
  }

  return !v3;
}

BOOL sub_24E0E04E4(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for FriendRequestsDataSource.FriendRequestDataUpdateDelegate();
    v5 = a1;
    v6 = a2;
    v2 = sub_24E348628();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_24E0E0560()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI24FriendRequestsDataSource___observationRegistrar;
  v2 = sub_24E343578();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24E0E05D0()
{
  sub_24E0E0560();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FriendRequestsDataSource(uint64_t a1)
{
  result = qword_27F1E38E0;
  if (!qword_27F1E38E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0E067C(uint64_t a1)
{
  result = sub_24E343578();
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

id sub_24E0E0748()
{
  *(v0 + 16) = 0;
  result = [objc_opt_self() shared];
  if (result)
  {
    v2 = result;
    v3 = [result inboxContactsOnly];

    *(v0 + 24) = v3;
    *(v0 + 32) = 0;
    sub_24E343568();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24E0E086C(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_24E0DDD2C(v4, v5);
  if (v2)
  {
    goto LABEL_43;
  }

  v35 = v6;
  if (v7)
  {
    sub_24DFD8654();
LABEL_43:

    return;
  }

  v34 = a1;
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v9 = v4 >> 62 ? sub_24E348878() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 == v9)
      {
        goto LABEL_43;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25303F560](v8, v4);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          break;
        }

        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 playerID];
      v13 = sub_24E347CF8();
      v15 = v14;

      v16 = v5;
      v17 = [v5 playerID];
      v18 = sub_24E347CF8();
      v20 = v19;

      if (v13 == v18 && v15 == v20)
      {
      }

      else
      {
        v22 = sub_24E348C08();

        if ((v22 & 1) == 0)
        {
          v23 = v35;
          if (v35 != v8)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x25303F560]();
              v25 = MEMORY[0x25303F560](v8, v4);
            }

            else
            {
              if ((v35 & 0x8000000000000000) != 0)
              {
                goto LABEL_49;
              }

              v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v35 >= v26)
              {
                goto LABEL_50;
              }

              if (v8 >= v26)
              {
                goto LABEL_51;
              }

              v27 = *(v4 + 32 + 8 * v8);
              v24 = *(v4 + 32 + 8 * v35);
              v25 = v27;
            }

            v28 = v25;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_24E25ACD8();
              v29 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v29) = 0;
            }

            v5 = (v4 & 0xFFFFFFFFFFFFFF8);
            v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20) = v28;

            if ((v4 & 0x8000000000000000) != 0 || v29)
            {
              v4 = sub_24E25ACD8();
              v5 = (v4 & 0xFFFFFFFFFFFFFF8);
              if ((v8 & 0x8000000000000000) != 0)
              {
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }
            }

            else if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v8 >= v5[2])
            {
              goto LABEL_48;
            }

            v31 = &v5[v8];
            v32 = v31[4];
            v31[4] = v24;

            v23 = v35;
            *v34 = v4;
          }

          v35 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_47;
          }
        }
      }

      v5 = v16;
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

uint64_t objectdestroy_33Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_24E0E0C6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

unint64_t sub_24E0E0D18()
{
  result = qword_27F1E3908;
  if (!qword_27F1E3908)
  {
    type metadata accessor for FriendRequestsDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3908);
  }

  return result;
}

uint64_t sub_24E0E0DD0()
{
  swift_getKeyPath();
  v0 = sub_24E0E1A90();
  OUTLINED_FUNCTION_6_42(v0, v1);
}

uint64_t sub_24E0E0E60(unint64_t a1)
{

  v4 = sub_24E0E04A8(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_81();
    sub_24E0E177C(v6, sub_24E0E1AE8, v7);
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

uint64_t sub_24E0E0F48(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

void *sub_24E0E0F84()
{
  swift_getKeyPath();
  v1 = sub_24E0E1A90();
  OUTLINED_FUNCTION_6_42(v1, v2);

  v3 = *(v0 + 24);
  v4 = v3;
  return v3;
}

void sub_24E0E0FEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E0E101C(v1);
}

void sub_24E0E101C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = v3;
  LOBYTE(v3) = sub_24E0E1804(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_81();
    sub_24E0E177C(v6, sub_24E0E1A74, v7);
  }

  else
  {
    v8 = *(v1 + 24);
    *(v1 + 24) = a1;
  }
}

void sub_24E0E1100(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  v3 = a2;
}

uint64_t sub_24E0E1134()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_24E343568();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = objc_allocWithZone(type metadata accessor for AllFriendsDataSource.FriendDataUpdateDelegate());
  v4 = sub_24E0E1564(sub_24E0E1A5C, v2);
  sub_24E0E101C(v4);
  return v1;
}

uint64_t sub_24E0E11C8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E0E1220();
  }

  return result;
}

uint64_t sub_24E0E1344(void *a1)
{

  v3 = sub_24E0833B4(v1);
  sub_24E1D4198(&v3);
  return sub_24E0E0E60(v3);
}

uint64_t sub_24E0E13B0(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343CC8();
  v6 = a1;
  v7 = sub_24E343F78();
  v8 = sub_24E348258();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24DE53000, v7, v8, "Unable to fetch friends list: %@", v9, 0xCu);
    sub_24E0C60AC(v10);
    MEMORY[0x253040EE0](v10, -1, -1);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_24E0E0E60(MEMORY[0x277D84F90]);
}

id sub_24E0E1564(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCC12GameCenterUI20AllFriendsDataSourceP33_761C47502D29AA1BE27B103BF361D03024FriendDataUpdateDelegate_updateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 daemonProxy];
  [v10 addDataUpdateDelegate_];

  return v9;
}

uint64_t sub_24E0E162C(uint64_t result)
{
  if (result == 2)
  {
    return (*(v1 + OBJC_IVAR____TtCC12GameCenterUI20AllFriendsDataSourceP33_761C47502D29AA1BE27B103BF361D03024FriendDataUpdateDelegate_updateBlock))();
  }

  return result;
}

BOOL sub_24E0E1804(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for AllFriendsDataSource.FriendDataUpdateDelegate();
    v5 = a1;
    v6 = a2;
    v2 = sub_24E348628();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_24E0E1880()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI20AllFriendsDataSource___observationRegistrar;
  v2 = sub_24E343578();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24E0E18F0()
{
  sub_24E0E1880();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AllFriendsDataSource(uint64_t a1)
{
  result = qword_27F1E3920;
  if (!qword_27F1E3920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0E199C(uint64_t a1)
{
  result = sub_24E343578();
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

unint64_t sub_24E0E1A90()
{
  result = qword_27F1E3940;
  if (!qword_27F1E3940)
  {
    type metadata accessor for AllFriendsDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3940);
  }

  return result;
}

GameCenterUI::JetDashboardSectionType_optional __swiftcall JetDashboardSectionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24E0E1B24()
{
  result = qword_27F1E3950;
  if (!qword_27F1E3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3950);
  }

  return result;
}

uint64_t sub_24E0E1B80@<X0>(uint64_t *a1@<X8>)
{
  result = JetDashboardSectionType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for JetDashboardSectionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E0E1C88()
{
  result = qword_27F1E3958;
  if (!qword_27F1E3958)
  {
    type metadata accessor for JetDashboardSectionData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3958);
  }

  return result;
}

uint64_t type metadata accessor for JetDashboardSectionData(uint64_t a1)
{
  result = qword_27F1E3960;
  if (!qword_27F1E3960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0E1D84(uint64_t a1)
{
  sub_24DF9E030(319, &qword_280BE0128, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24DFC2AD4(319, &qword_280BE0130, &qword_27F1DF158, &unk_24E37CFA0);
    if (v2 <= 0x3F)
    {
      sub_24DFC2AD4(319, &qword_280BDFB80, &qword_27F1E0F10, qword_24E36FB80);
      if (v3 <= 0x3F)
      {
        sub_24DF9E0E0(319);
        if (v4 <= 0x3F)
        {
          sub_24DF9E030(319, &qword_27F1E3970, &type metadata for Highlight);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id sub_24E0E1EB8(uint64_t a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v7 = type metadata accessor for ExternalUrlAction(0);
  sub_24DFD8A60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
  v8 = sub_24E347AD8();
  LODWORD(v6) = *(a1 + *(v7 + 20));
  result = [objc_opt_self() defaultWorkspace];
  v10 = result;
  if (v6 == 1)
  {
    if (result)
    {
      v11 = sub_24E343228();
      [v10 openSensitiveURL:v11 withOptions:0];
LABEL_6:

      (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
      sub_24E347AC8();
      (*(v3 + 8))(v5, v2);
      return v8;
    }

    __break(1u);
  }

  else if (result)
  {
    v11 = sub_24E343228();
    [v10 openURL_];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_24E0E20A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ExternalUrlActionImplementation();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_24E0E2100(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ExternalUrlActionImplementation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_24E0E215C()
{
  result = qword_27F1DF0A8;
  if (!qword_27F1DF0A8)
  {
    type metadata accessor for ExternalUrlAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF0A8);
  }

  return result;
}

_OWORD *sub_24E0E21CC(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2440, &qword_24E372AA0);
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  v2[1] = xmmword_24E36A270;
  v2[2] = v3;
  v2[3] = v4;
  *(v2 + 57) = *(a1 + 25);
  sub_24E0E7650(&v11);
  v5 = v12[0];
  v2[5] = v11;
  v2[6] = v5;
  *(v2 + 105) = *(v12 + 9);
  sub_24E0E767C(&v13);
  v6 = v14;
  if (v14)
  {
    v7 = v13;
    sub_24E0E7BB8(a1, v10);
    sub_24E0773DC(1, 3, 1, v2);
    v2 = v8;
    *(v8 + 16) = 3;
    *(v8 + 128) = v7;
    *(v8 + 136) = v6;
    *(v8 + 144) = v15[0];
    *(v8 + 153) = *(v15 + 9);
  }

  else
  {
    sub_24E0E7BB8(a1, v10);
  }

  return v2;
}

void sub_24E0E22BC()
{
  OUTLINED_FUNCTION_32();
  v43 = v2;
  v44 = v0;
  v46 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v45 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for PlayerProfileAction(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  OUTLINED_FUNCTION_0_14();
  v42 = v22;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  OUTLINED_FUNCTION_4_5(v26);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27_6();
  v28 = (v7 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_displayedInPlayerProfile);
  v29 = *(v7 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_displayedInPlayerProfile + 8);
  v30 = *v9;
  v31 = v9[1];
  if (v29 && (v30 == *v28 ? (v32 = v29 == v31) : (v32 = 0), v32 || (sub_24E348C08() & 1) != 0))
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
    sub_24E347328();
    if (__swift_getEnumTagSinglePayload(v1, 1, v33) == 1)
    {
      sub_24DF8BFF4(v1, &unk_27F1EAC90, &unk_24E36E890);
    }

    else
    {
      v47[3] = type metadata accessor for ScrollToTopAction(0);
      v47[4] = sub_24E0E88B4(&qword_27F1E3990, type metadata accessor for ScrollToTopAction, &unk_24E38D75C);
      __swift_allocate_boxed_opaque_existential_1(v47);
      sub_24E3471C8();
      v40 = v42;
      (*(v42 + 104))(v25, *MEMORY[0x277D21E18], v21);
      sub_24E3473B8();

      (*(v40 + 8))(v25, v21);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_22_0();
      (*(v41 + 8))(v1, v33);
    }
  }

  else
  {
    v42 = v5;
    v34 = 0xEA0000000000656DLL;
    v35 = 0x614E726579616C70;
    v36 = sub_24E323448(v46);
    if (v36 == 1802398060 && v37 == 0xE400000000000000)
    {
    }

    else
    {
      v39 = OUTLINED_FUNCTION_20_18(v36, v37);

      if ((v39 & 1) == 0)
      {
        v35 = 0x49656C69666F7270;
        v34 = 0xEC0000006567616DLL;
      }
    }

    sub_24E0E5630(v46, v35, v34, v43, v15);

    *v20 = v30;
    *(v20 + 8) = v31;
    *(v20 + 16) = 1;
    (*(v11 + 32))(v20 + *(v16 + 24), v15, v45);
    *(v20 + *(v16 + 28)) = 0;
    sub_24E0E7874(v20, v42);
    sub_24E0E885C(v20, type metadata accessor for PlayerProfileAction);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E0E26E8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  sub_24E0E8958(v3, v19 - v8, &unk_27F1DFC70, &qword_24E36BAF0);
  v10 = sub_24E348098();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v9, &unk_27F1DFC70, &qword_24E36BAF0);
  }

  else
  {
    sub_24E348088();
    OUTLINED_FUNCTION_22_0();
    (*(v12 + 8))(v9, v10);
  }

  v13 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_24E347FF8();
    v16 = v15;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v17 = sub_24E347D58() + 32;

      if (v16 | v14)
      {
        v20[0] = 0;
        v20[1] = 0;
        v18 = v20;
        v20[2] = v14;
        v20[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v19[1] = 7;
      v19[2] = v18;
      v19[3] = v17;
      OUTLINED_FUNCTION_44_5();

      sub_24DF8BFF4(v3, &unk_27F1DFC70, &qword_24E36BAF0);

      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_24DF8BFF4(v3, &unk_27F1DFC70, &qword_24E36BAF0);
  if (v16 | v14)
  {
    v20[4] = 0;
    v20[5] = 0;
    v20[6] = v14;
    v20[7] = v16;
  }

  OUTLINED_FUNCTION_44_5();
LABEL_14:
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0E293C(const void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27_6();
  sub_24E348098();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a3;
  memcpy((v16 + 40), a1, 0x48uLL);
  *(v16 + 112) = v5;
  *(v16 + 120) = a4;
  *(v16 + 128) = a5;

  sub_24E00FD28(a1, v18);

  sub_24E0E26E8();
}

void sub_24E0E2A64()
{
  OUTLINED_FUNCTION_32();
  v69 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for ActivityFeedRelationshipAchievement(0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_7_1();
  v12 = (v11 - v10);
  v13 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v68 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v66 = v17 - v16;
  v18 = OUTLINED_FUNCTION_18_1();
  v65 = type metadata accessor for GameAchievementsAction(v18);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v67 = (v21 - v20);
  v22 = v6 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships;
  v23 = *(v6 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v24 = *(v22 + 8);

  sub_24E150D04(v23, v24);
  v26 = v25;

  v64 = v26;
  if (v26)
  {
    v63 = v13;
    v27 = MEMORY[0x277D84F90];
    v70 = *(v8 + 16);
    v60 = v8;
    if (v70)
    {
      v62 = v2;
      v61 = v4;
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_18();
      v29 = v8 + v28;
      v31 = *(v30 + 72);
      v32 = v70;
      do
      {
        OUTLINED_FUNCTION_9_34();
        sub_24E0E88FC(v29, v12, v33);
        v35 = *v12;
        v34 = v12[1];

        OUTLINED_FUNCTION_12_22();
        v37 = *(v27 + 16);
        v36 = *(v27 + 24);
        if (v37 >= v36 >> 1)
        {
          v39 = OUTLINED_FUNCTION_14_2(v36);
          sub_24E12F080(v39, v37 + 1, 1);
        }

        *(v27 + 16) = v37 + 1;
        v38 = v27 + 16 * v37;
        *(v38 + 32) = v35;
        *(v38 + 40) = v34;
        v29 += v31;
        --v32;
      }

      while (v32);
      v4 = v61;
      v40 = v69;
      v2 = v62;
    }

    else
    {
      v40 = v69;
    }

    v41 = sub_24E323448(v2);
    if (v41 == 1802398060 && v42 == 0xE400000000000000)
    {
      OUTLINED_FUNCTION_40_6();
    }

    else
    {
      v44 = OUTLINED_FUNCTION_20_18(v41, v42);

      if ((v44 & 1) == 0)
      {
        if (v70)
        {
          v71 = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_43_4();
          v46 = v70;
          OUTLINED_FUNCTION_23_18();
          v48 = v60 + v47;
          v50 = *(v49 + 72);
          do
          {
            OUTLINED_FUNCTION_9_34();
            sub_24E0E88FC(v48, v12, v51);
            v53 = *v12;
            v52 = v12[1];

            OUTLINED_FUNCTION_12_22();
            v55 = *(v71 + 16);
            v54 = *(v71 + 24);
            if (v55 >= v54 >> 1)
            {
              v57 = OUTLINED_FUNCTION_14_2(v54);
              sub_24E12F080(v57, v55 + 1, 1);
            }

            *(v71 + 16) = v55 + 1;
            v56 = v71 + 16 * v55;
            *(v56 + 32) = v53;
            *(v56 + 40) = v52;
            v48 += v50;
            --v46;
          }

          while (v46);
          v40 = v69;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338, &qword_24E36DB80);
        sub_24E00FE20();
        v12 = sub_24E347C78();
        v45 = v58;

        v2 = v2;
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_40_6();
    }

    v45 = 0xEB00000000746E65;
LABEL_24:
    sub_24E0E5630(v2, v12, v45, v40, v66);

    *v67 = v64;
    *(v67 + 1) = v27;
    (*(v68 + 32))(&v67[*(v65 + 24)], v66, v63);
    v59 = &v67[*(v65 + 28)];
    *v59 = 0x72616F6268736164;
    *(v59 + 1) = 0xE900000000000064;
    sub_24E0E7E90(v67, v4);
    sub_24E0E885C(v67, type metadata accessor for GameAchievementsAction);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E0E2EEC()
{
  OUTLINED_FUNCTION_32();
  v48 = v1;
  v51 = v2;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v49 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for GameLeaderboardsAction(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27_6();
  v16 = v5 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships;

  v17 = OUTLINED_FUNCTION_19_1();
  sub_24E150D04(v17, v18);
  v52 = v19;

  if (!v52)
  {
    goto LABEL_15;
  }

  v20 = *v16;
  if (*(*v16 + 16))
  {
    v43 = v14;
    v21 = v20[5];
    v45 = v20[4];
    v46 = v8;
    v22 = v20[10];
    v23 = v7[8];
    v25 = *v7;
    v24 = v7[1];
    v26 = sub_24E323448(v51);
    v28 = v26 == 1802398060 && v27 == 0xE400000000000000;
    v47 = v22;
    v44 = v25;
    if (v28)
    {
      v42 = v24;

      swift_bridgeObjectRetain_n();

      v39 = v22;
      v35 = v21;
      v31 = v23;
      v40 = v23;

      v36 = v46;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_20_18(v26, v27);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v29 = v22;
      v30 = v21;
      v31 = v23;
      v32 = v23;

      v33 = v25;
      v34 = v24;
      v35 = v30;
      v36 = v46;
      if ((v41 & 1) == 0)
      {
LABEL_14:
        sub_24E0E5630(v51, v33, v24, v48, v13);

        *v0 = v52;
        *(v0 + 1) = v31;
        *(v0 + 2) = v44;
        *(v0 + 3) = v34;
        *(v0 + 4) = v45;
        *(v0 + 5) = v35;
        (*(v49 + 32))(&v0[*(v43 + 32)], v13, v36);
        sub_24E0E81D4(v0, v50);

        sub_24E0E885C(v0, type metadata accessor for GameLeaderboardsAction);
LABEL_15:
        OUTLINED_FUNCTION_18();
        return;
      }

      v42 = v24;
    }

    v24 = 0x800000024E3A7170;
    v33 = 0xD000000000000016;
    v34 = v42;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0E326C()
{

  return OUTLINED_FUNCTION_19_1();
}

void sub_24E0E32D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int a6, uint64_t a7)
{
  LODWORD(v373) = a6;
  v357 = a3;
  v13 = sub_24E347458();
  v14 = OUTLINED_FUNCTION_4_5(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v338 = v16 - v15;
  OUTLINED_FUNCTION_18_1();
  v17 = sub_24E347478();
  v18 = OUTLINED_FUNCTION_4_5(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v337 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_4_5(v21);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  v339 = &v314 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  OUTLINED_FUNCTION_4_5(v24);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v25);
  v340 = &v314 - v26;
  v27 = OUTLINED_FUNCTION_18_1();
  type metadata accessor for ActivityFeedRelationshipAchievement(v27);
  OUTLINED_FUNCTION_0_14();
  v342 = v29;
  v343 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_1();
  v348 = (v31 - v30);
  OUTLINED_FUNCTION_18_1();
  v372 = sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v363 = v32;
  MEMORY[0x28223BE20](v33);
  v347 = &v314 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v360 = &v314 - v36;
  *(v7 + 56) = 0u;
  v7[97] = 0;
  *(v7 + 72) = 0u;
  *(v7 + 11) = 0;
  v37 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_compactTitle];
  *v37 = 0;
  v37[1] = 0;
  v366 = v37;
  v38 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_activityIdentifier];
  *v38 = 0;
  v38[1] = 0;
  v365 = v38;
  v355 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_playerSubArtwork;
  *&v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_playerSubArtwork] = 0;
  v39 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cachedCalculatedHeight;
  sub_24E094DD8();
  v40 = sub_24E347C28();
  v353 = v39;
  *&v7[v39] = v40;
  v41 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_impressionMetrics;
  sub_24E3474B8();
  v354 = v41;
  OUTLINED_FUNCTION_8_6();
  v336 = v42;
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_mainActionLink];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = a1;
  sub_24DF8BD34(a1, (v7 + 16));
  v7[96] = v373;
  swift_beginAccess();
  v352 = v7 + 56;
  v48 = a2;
  sub_24DF8BDF0(a7, (v7 + 56));
  swift_endAccess();
  v49 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_displayedInPlayerProfile];
  *v49 = v357;
  *(v49 + 1) = a4;
  v350 = v49;
  v50 = v7;
  v51 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics];
  v52 = a5[1];
  *v51 = *a5;
  *(v51 + 1) = v52;
  v53 = a5[3];
  *(v51 + 2) = a5[2];
  *(v51 + 3) = v53;
  v351 = v51;

  v54 = sub_24E0E77AC(v48, &selRef_message);
  v356 = v55;
  if (!v55)
  {

    sub_24DF8BFF4(a7, &qword_27F1DEE90, &unk_24E369E90);
    sub_24DF8BE60(a1);
    v107 = 0;
    LODWORD(v58) = 0;
LABEL_26:
    v78 = v372;
    v62 = v50;
    goto LABEL_172;
  }

  v56 = v54;
  v57 = a7;
  v58 = [v48 timeStamp];
  if (!v58)
  {

    sub_24DF8BFF4(a7, &qword_27F1DEE90, &unk_24E369E90);
    sub_24DF8BE60(v47);
    v107 = 0;
    goto LABEL_26;
  }

  v367 = a4;
  v59 = v48;
  v60 = v56;
  v61 = v360;
  sub_24E343328();

  v62 = v50;
  v63 = &v50[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_title];
  v329 = v60;
  v64 = v356;
  *v63 = v60;
  *(v63 + 1) = v64;

  v65 = sub_24E0E77AC(v59, &selRef_summaryMessage);
  v66 = v366;
  *v366 = v65;
  v66[1] = v67;

  v68 = v372;
  v331 = *(v363 + 16);
  v332 = v363 + 16;
  v331(&v50[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_timestamp], v61);
  v69 = [v59 activityType];
  *&v50[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_brickType] = v69;
  v70 = [v59 layoutType];
  *&v50[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_layoutType] = v70;
  v71 = [v59 scrollId];
  v72 = sub_24E347CF8();
  v74 = v73;

  v75 = v365;
  *v365 = v72;
  v75[1] = v74;

  v349 = v59;
  v76 = sub_24E0E76C0([v59 relationships], &selRef_players, &qword_27F1E39E8, 0x277D0C1A8);
  v359 = v50;
  v370 = v47;
  v371 = v57;
  if (v76)
  {
    v77 = v76;
    v364 = sub_24DFD8654();
    v62 = 0;
    v361 = v77 & 0xFFFFFFFFFFFFFF8;
    v362 = v77 & 0xC000000000000001;
    v373 = MEMORY[0x277D84F90];
    v78 = v68;
    v358 = v77;
    while (v364 != v62)
    {
      if (v362)
      {
        v79 = MEMORY[0x25303F560](v62, v77);
      }

      else
      {
        if (v62 >= *(v361 + 16))
        {
          goto LABEL_178;
        }

        v79 = *(v77 + 8 * v62 + 32);
      }

      if (__OFADD__(v62, 1))
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:

        v57 = v371;
        v78 = v372;
        v47 = v370;
        v221 = v324;
LABEL_183:

        sub_24DF8BFF4(v57, &qword_27F1DEE90, &unk_24E369E90);
        sub_24DF8BE60(v47);
        v280 = OUTLINED_FUNCTION_3_64();
LABEL_145:
        v281(v280, v78);

        goto LABEL_146;
      }

      v80 = v79;
      v81 = sub_24E0E7808(v80, &selRef_identifier);
      if (!v82)
      {

        sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
        sub_24DF8BE60(v47);
        v158 = OUTLINED_FUNCTION_3_64();
LABEL_66:
        v159(v158, v78);
        goto LABEL_67;
      }

      v83 = v81;
      v84 = v82;
      v85 = v80;
      v86 = sub_24E0E7808(v85, &selRef_name);
      if (!v87)
      {

LABEL_65:

        sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
        sub_24DF8BE60(v370);
        v158 = OUTLINED_FUNCTION_3_64();
        v78 = v372;
        goto LABEL_66;
      }

      v88 = v86;
      v89 = v87;
      v90 = [v85 playerInternal];
      if (!v90)
      {

        goto LABEL_65;
      }

      v68 = v90;
      v91 = sub_24E0E7808(v85, &selRef_image);
      if (v92)
      {
        v93 = v91;
      }

      else
      {
        v93 = 0;
      }

      v94 = 0xE000000000000000;
      if (v92)
      {
        v94 = v92;
      }

      v368 = v94;
      v369 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = OUTLINED_FUNCTION_5_10();
        sub_24E0769D8(v100, v101, v102, v103);
        v373 = v104;
      }

      v96 = *(v373 + 16);
      v95 = *(v373 + 24);
      if (v96 >= v95 >> 1)
      {
        v105 = OUTLINED_FUNCTION_14_2(v95);
        sub_24E0769D8(v105, v96 + 1, 1, v373);
        v373 = v106;
      }

      v78 = v372;
      v97 = v373;
      *(v373 + 16) = v96 + 1;
      v98 = (v97 + 56 * v96);
      v98[4] = v83;
      v98[5] = v84;
      v98[6] = v88;
      v98[7] = v89;
      v99 = v368;
      v98[8] = v369;
      v98[9] = v99;
      v98[10] = v68;
      ++v62;
      v47 = v370;
      v57 = v371;
      v77 = v358;
    }

    v62 = v359;
  }

  else
  {
    v373 = MEMORY[0x277D84F90];
    v78 = v68;
  }

  v108 = sub_24E0E76C0([v349 relationships], &selRef_games, &qword_27F1E39E0, 0x277D0C190);
  if (!v108)
  {
    v111 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v109 = v108;
  v110 = sub_24DFD8654();
  OUTLINED_FUNCTION_26_14(v110);
  v111 = MEMORY[0x277D84F90];
  v341 = v109;
  while (v346 != v68)
  {
    v78 = v372;
    if (v345)
    {
      v112 = MEMORY[0x25303F560](v68, v109);
    }

    else
    {
      if (v68 >= *(v344 + 16))
      {
        goto LABEL_180;
      }

      v112 = v109[v68 + 4];
    }

    if (__OFADD__(v68, 1))
    {
      goto LABEL_179;
    }

    v113 = v112;
    v114 = sub_24E0E7808(v113, &selRef_identifier);
    if (!v115)
    {

      sub_24DF8BFF4(v57, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v47);
      v272 = OUTLINED_FUNCTION_3_64();
LABEL_135:
      v273(v272, v78);

      goto LABEL_170;
    }

    v364 = v114;
    v368 = v68;
    v369 = v115;
    v116 = v113;
    v117 = sub_24E0E7808(v116, &selRef_name);
    v58 = v118;
    if (!v118)
    {

      sub_24DF8BFF4(v57, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v47);
      v274 = OUTLINED_FUNCTION_3_64();
      v275(v274, v78);

LABEL_138:

      goto LABEL_171;
    }

    v362 = v117;
    v119 = [v116 adamId];
    if (!v119)
    {

      sub_24DF8BFF4(v57, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v47);
      v272 = OUTLINED_FUNCTION_3_64();
      v78 = v372;
      goto LABEL_135;
    }

    v120 = v119;
    v361 = v58;
    v121 = [v116 icon];
    if (!v121)
    {
      goto LABEL_49;
    }

    v122 = v121;
    sub_24DFAD518(v121);
    if (!v123)
    {

LABEL_49:
      v358 = 0;
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_35_9();
    v124 = [v122 width];
    if (!v124)
    {

      goto LABEL_49;
    }

    v125 = v124;
    v126 = [v122 height];
    if (!v126)
    {

      goto LABEL_49;
    }

    v127 = v126;
    v376[0] = v68;
    v376[1] = v62;
    [v125 floatValue];
    v129 = v128;
    [v127 floatValue];
    v131 = v130;
    v132 = [v122 platform];
    v133 = 0x10203040100uLL >> (8 * v132);
    if (v132 >= 6)
    {
      LOBYTE(v133) = 0;
    }

    v374 = v133;

    v375[0] = 25186;
    v375[1] = 0xE200000000000000;
    type metadata accessor for Artwork();
    swift_allocObject();
    v358 = Artwork.init(template:size:backgroundColor:style:crop:variants:)(v376, 0, &v374, v375, MEMORY[0x277D84F90], v129, v131);

LABEL_50:
    v134 = sub_24E0E7808(v116, &selRef_image);
    if (v135 || (v139 = [v116 icon]) != 0 && (v134 = sub_24E0E7808(v139, &selRef_url), v135))
    {
      v136 = v134;
      v137 = v135;
      v138 = v111;
    }

    else
    {
      v138 = v111;

      v136 = 0;
      v137 = 0xE000000000000000;
    }

    v140 = [v120 stringValue];
    v141 = sub_24E347CF8();
    v143 = v142;

    v144 = v138;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = OUTLINED_FUNCTION_5_10();
      sub_24E0769A8(v152, v153, v154, v138);
      v144 = v155;
    }

    v146 = *(v144 + 16);
    v145 = *(v144 + 24);
    v147 = v144;
    if (v146 >= v145 >> 1)
    {
      v156 = OUTLINED_FUNCTION_14_2(v145);
      sub_24E0769A8(v156, v146 + 1, 1, v144);
      v147 = v157;
    }

    v148 = v358;

    *(v147 + 16) = v146 + 1;
    v111 = v147;
    v149 = (v147 + 72 * v146);
    v150 = v369;
    v47 = v370;
    v149[4] = v364;
    v149[5] = v150;
    v151 = v361;
    v149[6] = v362;
    v149[7] = v151;
    v149[8] = v136;
    v149[9] = v137;
    v149[10] = v141;
    v149[11] = v143;
    v149[12] = v148;
    v68 = v368 + 1;
    v62 = v359;
    v57 = v371;
    v109 = v341;
  }

  v78 = v372;
LABEL_70:
  v160 = sub_24E0E76C0([v349 relationships], &selRef_leaderboards, &qword_27F1E39D8, 0x277D0C198);
  v368 = v111;
  if (!v160)
  {
    v325 = MEMORY[0x277D84F90];
    goto LABEL_114;
  }

  v161 = v160;
  v162 = sub_24DFD8654();
  v163 = 0;
  v322 = v161 & 0xC000000000000001;
  v321 = v161 + 32;
  v325 = MEMORY[0x277D84F90];
  v319 = v161;
  v315 = v162;
  while (1)
  {
    if (v163 == v162)
    {

LABEL_114:
      v238 = sub_24E0E76C0([v349 relationships], &selRef_achievements, &qword_27F1E39D0, 0x277D0C188);
      if (v238)
      {
        v239 = v238;
        v240 = sub_24DFD8654();
        OUTLINED_FUNCTION_26_14(v240);
        v241 = MEMORY[0x277D84F90];
        v341 = (v363 + 8);
        v335 = v239;
        while (v346 != v68)
        {
          if (v345)
          {
            v242 = MEMORY[0x25303F560](v68, v239);
          }

          else
          {
            if (v68 >= *(v344 + 16))
            {
              goto LABEL_187;
            }

            v242 = *(v239 + v68 + 4);
          }

          if (__OFADD__(v68, 1))
          {
            goto LABEL_186;
          }

          v243 = v242;
          v244 = sub_24E0E7808(v243, &selRef_identifier);
          if (!v245)
          {

            sub_24DF8BFF4(v57, &qword_27F1DEE90, &unk_24E369E90);
            sub_24DF8BE60(v370);
            v306 = OUTLINED_FUNCTION_14_23();
            v307(v306, v78);

            goto LABEL_146;
          }

          v246 = v245;
          v364 = v244;
          v247 = v243;
          v248 = sub_24E0E7808(v247, &selRef_name);
          if (!v249)
          {

LABEL_160:
            sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
            sub_24DF8BE60(v370);
            v308 = OUTLINED_FUNCTION_14_23();
            v309(v308, v78);

LABEL_146:

LABEL_170:

            LODWORD(v58) = 0;
LABEL_171:
            v107 = 1;
            goto LABEL_172;
          }

          v250 = v248;
          v369 = v249;
          v251 = sub_24E0E7808(v247, &selRef_image);
          if (!v252)
          {

            goto LABEL_160;
          }

          v253 = v251;
          v361 = v68;
          v362 = v252;
          sub_24E0E77AC(v247, &selRef_achDescription);
          if (!v254)
          {

            sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
            sub_24DF8BE60(v370);
            v310 = OUTLINED_FUNCTION_14_23();
            goto LABEL_163;
          }

          OUTLINED_FUNCTION_35_9();
          v255 = [v247 timeStamp];
          if (!v255)
          {

            sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
            sub_24DF8BE60(v370);
            v310 = OUTLINED_FUNCTION_14_23();
            v78 = v372;
LABEL_163:
            v311(v310, v78);

LABEL_67:

            LODWORD(v58) = 0;
            v107 = 1;
LABEL_68:
            v62 = v359;
LABEL_172:
            sub_24DF8BE60(v62 + 16);
            sub_24DF8BFF4(v352, &qword_27F1DEE90, &unk_24E369E90);
            if (v107)
            {
              (*(v363 + 8))(v62 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_timestamp, v78);
            }

            if (v58)
            {
            }

            sub_24DF8BFF4(v62 + v354, &qword_27F1E58A0, &unk_24E36BF80);

            type metadata accessor for ActivityFeedBaseData(0);
            swift_deallocPartialClassInstance();
            return;
          }

          v256 = v255;
          v358 = v246;
          v257 = v347;
          sub_24E343328();

          v258 = v343;
          v259 = v241;
          v260 = v348;
          (v331)(v348 + *(v343 + 32), v257, v372);
          v261 = [v247 progress];
          v262 = v358;
          *v260 = v364;
          v260[1] = v262;
          v263 = v369;
          v260[2] = v250;
          v260[3] = v263;
          v264 = v362;
          v260[4] = v253;
          v260[5] = v264;
          v260[6] = v68;
          v260[7] = v62;
          *(v260 + *(v258 + 36)) = v261;
          v241 = v259;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_10();
            sub_24E0767FC();
            v241 = v270;
          }

          v62 = v359;
          v265 = v361;
          v267 = *(v241 + 16);
          v266 = *(v241 + 24);
          v111 = v368;
          v78 = v372;
          if (v267 >= v266 >> 1)
          {
            OUTLINED_FUNCTION_14_2(v266);
            sub_24E0767FC();
            v241 = v271;
          }

          (*v341)(v347, v78);
          *(v241 + 16) = v267 + 1;
          OUTLINED_FUNCTION_23_18();
          sub_24E00FCC4(v348, v241 + v268 + *(v269 + 72) * v267);
          v68 = v265 + 1;
          v57 = v371;
          v239 = v335;
        }
      }

      else
      {
        v241 = MEMORY[0x277D84F90];
      }

      v284 = (v62 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
      *v284 = v373;
      v284[1] = v111;
      v284[2] = v325;
      v284[3] = v241;

      if ([v349 activityType] - 4 <= 2 && *(v111 + 16))
      {
        memcpy(v376, (v111 + 32), 0x48uLL);
        sub_24E00FD28(v376, v375);

        *&v359[v355] = v376[8];

        sub_24E00FD84(v376);
      }

      else
      {

        *&v359[v355] = 0;
      }

      v285 = *v284;
      v286 = v284[1];
      v287 = v284[2];
      v288 = v284[3];
      v289 = v340;
      (v331)(v340, v360, v78);
      __swift_storeEnumTagSinglePayload(v289, 0, 1, v78);

      v290 = sub_24E1568D8(v329, v356, v285, v286, v287, v288, v289, v357, v367);

      sub_24DF8BFF4(v289, &unk_27F1E5890, qword_24E377010);
      if (v290)
      {
        v291 = sub_24E3446E8();
        v292 = v290;
        sub_24E3446D8();
        v293 = objc_allocWithZone(v291);
        v294 = sub_24E3446F8();
        v295 = sub_24E3446C8();

        v296 = v359;
        *&v359[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_attributedTitle] = v295;
        v297 = *&v296[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics + 16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24E369E30;
        strcpy((inited + 32), "impressionType");
        *(inited + 47) = -18;
        v299 = MEMORY[0x277D837D0];
        *(inited + 48) = 0x74656C63696863;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 72) = v299;
        *(inited + 80) = 0x6973736572706D69;
        v300 = MEMORY[0x277D83B88];
        *(inited + 88) = 0xEF7865646E496E6FLL;
        *(inited + 96) = v297;
        *(inited + 120) = v300;
        *(inited + 128) = 0x657079546469;
        *(inited + 136) = 0xE600000000000000;
        *(inited + 144) = 0x636974617473;
        *(inited + 152) = 0xE600000000000000;
        *(inited + 168) = v299;
        *(inited + 176) = 1701667182;
        *(inited + 216) = v299;
        *(inited + 184) = 0xE400000000000000;
        *(inited + 192) = 0;
        *(inited + 200) = 0xE000000000000000;
        sub_24E347C28();

        sub_24E347468();
        sub_24E347448();
        v301 = MEMORY[0x277D84F90];
        sub_24E0241AC(MEMORY[0x277D84F90]);
        sub_24E0241AC(v301);
        v302 = v339;
        sub_24E347488();

        sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
        sub_24DF8BE60(v370);
        (*(v363 + 8))(v360, v78);
        __swift_storeEnumTagSinglePayload(v302, 0, 1, v336);
        v303 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_impressionMetrics;
        swift_beginAccess();
        sub_24DF8BEB4(v302, &v296[v303]);
        swift_endAccess();
        return;
      }

      sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v370);
      v304 = OUTLINED_FUNCTION_3_64();
      v305(v304, v78);
      v107 = 1;
      LODWORD(v58) = 1;
      goto LABEL_68;
    }

    v164 = v322;
    sub_24DFFA844();
    if (v164)
    {
      v165 = MEMORY[0x25303F560](v163, v161);
    }

    else
    {
      v165 = *(v321 + 8 * v163);
    }

    v318 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      goto LABEL_188;
    }

    v166 = v165;
    v167 = sub_24E0E7808(v166, &selRef_identifier);
    if (!v168)
    {

LABEL_169:
      sub_24DF8BFF4(v57, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v47);
      v312 = OUTLINED_FUNCTION_3_64();
      v313(v312, v78);

      goto LABEL_170;
    }

    v169 = v167;
    v323 = v168;
    v170 = sub_24E0E7808(v166, &selRef_name);
    if (!v171)
    {

LABEL_168:

      goto LABEL_169;
    }

    v316 = v170;
    v317 = v169;
    v320 = v171;
    v324 = v166;
    v172 = sub_24E0E773C(v166);
    if (!v172)
    {

      goto LABEL_168;
    }

    v173 = v172;
    v330 = sub_24DFD8654();
    v174 = 0;
    v327 = v173 & 0xFFFFFFFFFFFFFF8;
    v328 = v173 & 0xC000000000000001;
    v369 = MEMORY[0x277D84F90];
    v326 = v173;
LABEL_80:
    v175 = v349;
    if (v330 != v174)
    {
      break;
    }

    v220 = [v324 leaderboardInternal];
    if (!v220)
    {
      goto LABEL_181;
    }

    v221 = v220;
    v222 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
    v57 = v371;
    v78 = v372;
    v47 = v370;
    if (!v222)
    {

      goto LABEL_183;
    }

    v223 = v222;
    v224 = [v324 leaderboardType];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v231 = OUTLINED_FUNCTION_5_10();
      sub_24E0768C4(v231, v232, v233, v234);
      v325 = v235;
    }

    v68 = *(v325 + 16);
    v225 = *(v325 + 24);
    if (v68 >= v225 >> 1)
    {
      v236 = OUTLINED_FUNCTION_14_2(v225);
      sub_24E0768C4(v236, v68 + 1, 1, v325);
      v325 = v237;
    }

    v226 = v325;
    *(v325 + 16) = v68 + 1;
    v227 = (v226 + 72 * v68);
    v228 = v323;
    v227[4] = v317;
    v227[5] = v228;
    v162 = v315;
    v161 = v319;
    v229 = v320;
    v227[6] = v316;
    v227[7] = v229;
    v227[8] = 0;
    v227[9] = 0xE000000000000000;
    v230 = v369;
    v227[10] = v224;
    v227[11] = v230;
    v227[12] = v223;
    v62 = v359;
    v111 = v368;
    v163 = v318;
  }

  if (v328)
  {
    v178 = MEMORY[0x25303F560](v174, v173);
    v176 = v370;
    v177 = v371;
  }

  else
  {
    v176 = v370;
    v177 = v371;
    if (v174 >= *(v327 + 16))
    {
      goto LABEL_185;
    }

    v178 = *(v173 + 8 * v174 + 32);
  }

  if (!__OFADD__(v174, 1))
  {
    v179 = [v178 player];
    v58 = v179;
    if (!v179)
    {

      sub_24DF8BFF4(v177, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v176);
      v276 = OUTLINED_FUNCTION_25_16();
      v78 = v372;
      v277(v276, v372);

      goto LABEL_138;
    }

    v180 = [v179 playerInternal];
    if (!v180)
    {

LABEL_141:
      sub_24DF8BFF4(v177, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v176);
      v278 = OUTLINED_FUNCTION_25_16();
      v78 = v372;
      v279(v278, v372);

      goto LABEL_146;
    }

    v364 = v180;
    v181 = v58;
    v182 = sub_24E0E7808(v181, &selRef_identifier);
    if (!v183)
    {

      goto LABEL_141;
    }

    v358 = v182;
    v362 = v183;
    v184 = v181;
    v185 = sub_24E0E7808(v184, &selRef_name);
    if (!v186)
    {

      sub_24DF8BFF4(v177, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v176);
      v280 = OUTLINED_FUNCTION_25_16();
LABEL_144:
      v78 = v372;
      goto LABEL_145;
    }

    v187 = v185;
    v361 = v186;
    v188 = sub_24E0E7808(v184, &selRef_image);
    if (v189)
    {
      v190 = v188;
    }

    else
    {
      v190 = 0;
    }

    if (v189)
    {
      v191 = v189;
    }

    else
    {
      v191 = 0xE000000000000000;
    }

    v192 = sub_24E0E77AC(v178, &selRef_score);
    if (!v193)
    {

      sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v370);
      v280 = OUTLINED_FUNCTION_3_64();
      goto LABEL_144;
    }

    v194 = v192;
    v195 = v193;
    v346 = v191;
    v196 = sub_24E0E77AC(v178, &selRef_symbol);
    if (v197)
    {
      v198 = v196;
      v199 = v197;
      if (sub_24E347DD8() != 1)
      {

LABEL_148:

        sub_24DF8BFF4(v371, &qword_27F1DEE90, &unk_24E369E90);
        sub_24DF8BE60(v370);
        v282 = OUTLINED_FUNCTION_3_64();
        v78 = v372;
        v283(v282, v372);

        goto LABEL_67;
      }

      v200 = sub_24E16A2D0(v198, v199);

      if (!v200)
      {
        goto LABEL_148;
      }
    }

    v345 = v174;
    v201 = [v178 gained];
    v335 = [v178 rank];
    v202 = sub_24E0E77AC(v178, &selRef_message);
    v341 = v203;
    v204 = sub_24E0E77AC(v178, &selRef_symbol);
    v333 = v205;
    v334 = v204;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v344 = v202;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_5_10();
      sub_24E0768F4();
      v369 = v218;
    }

    v208 = *(v369 + 16);
    v207 = *(v369 + 24);
    if (v208 >= v207 >> 1)
    {
      OUTLINED_FUNCTION_14_2(v207);
      sub_24E0768F4();
      v369 = v219;
    }

    v209 = v369;
    *(v369 + 16) = v208 + 1;
    v210 = v209 + 120 * v208;
    *(v210 + 32) = v194;
    *(v210 + 40) = v195;
    *(v210 + 48) = v201;
    v211 = *(v376 + 3);
    *(v210 + 49) = v376[0];
    *(v210 + 52) = v211;
    v212 = v358;
    *(v210 + 56) = v335;
    *(v210 + 64) = v212;
    v213 = v361;
    *(v210 + 72) = v362;
    *(v210 + 80) = v187;
    *(v210 + 88) = v213;
    *(v210 + 96) = v190;
    v214 = v345;
    v215 = v364;
    *(v210 + 104) = v346;
    *(v210 + 112) = v215;
    v216 = v341;
    *(v210 + 120) = v344;
    *(v210 + 128) = v216;
    v217 = v333;
    *(v210 + 136) = v334;
    *(v210 + 144) = v217;
    v174 = v214 + 1;
    v62 = v359;
    v173 = v326;
    goto LABEL_80;
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
}

void sub_24E0E547C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v27 = *(v1 + 16);
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_displayedInPlayerProfile);

  v3 = v2;
  v4 = 0;
  v24 = MEMORY[0x277D84F90];
  v26 = v2;
LABEL_2:
  for (i = 56 * v4; ; i += 56)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = *(v1 + i + 32);
    v7 = *(v1 + i + 40);
    v9 = *(v1 + i + 48);
    v8 = *(v1 + i + 56);
    v11 = *(v1 + i + 64);
    v10 = *(v1 + i + 72);
    v12 = *(v1 + i + 80);
    v13 = v3[1];
    if (!v13 || (v6 == *v3 ? (v14 = v13 == v7) : (v14 = 0), !v14 && (v15 = sub_24E348C08(), v3 = v26, (v15 & 1) == 0)))
    {

      v23 = v12;
      v16 = v24;
      v28 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E12F7B8(0, *(v24 + 16) + 1, 1);
        v16 = v24;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = v18 + 1;
      v3 = v26;
      if (v18 >= v17 >> 1)
      {
        v21 = OUTLINED_FUNCTION_14_2(v17);
        v25 = v22;
        sub_24E12F7B8(v21, v22, 1);
        v19 = v25;
        v3 = v26;
        v16 = v28;
      }

      ++v4;
      *(v16 + 16) = v19;
      v24 = v16;
      v20 = (v16 + 56 * v18);
      v20[4] = v6;
      v20[5] = v7;
      v20[6] = v9;
      v20[7] = v8;
      v20[8] = v11;
      v20[9] = v10;
      v20[10] = v23;
      goto LABEL_2;
    }

    ++v4;
  }

  __break(1u);
}

uint64_t sub_24E0E5630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v40 = a2;
  v6 = a1;
  v8 = sub_24E347458();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24E347088();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v39 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v15 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v15;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  v16 = sub_24E347C28();
  v17 = *(a4 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v35 = v6;
    v36 = v11;
    v37 = v10;
    v38 = a5;
    *&v44[0] = MEMORY[0x277D84F90];
    sub_24E12F700(0, v17, 0);
    v18 = *&v44[0];
    v19 = (a4 + 32);
    do
    {
      v20 = v19[1];
      v47 = *v19;
      *v48 = v20;
      *&v48[9] = *(v19 + 25);
      sub_24E0E7BB8(&v47, &v45);
      v21 = sub_24E323A3C();
      sub_24E0E7C14(&v47);
      *&v44[0] = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24E12F700((v22 > 1), v23 + 1, 1);
        v18 = *&v44[0];
      }

      *(v18 + 16) = v23 + 1;
      *(v18 + 8 * v23 + 32) = v21;
      v19 += 3;
      --v17;
    }

    while (v17);
    v11 = v36;
    LOBYTE(v6) = v35;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3998, &qword_24E376FE8);
  *&v45 = v18;
  sub_24E024710(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v16;
  sub_24E058328(v44);
  v24 = v43;
  v25 = sub_24E323448(v6);
  v27 = v26;
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v28 = sub_24E347058();
  v29 = __swift_project_value_buffer(v28, qword_27F20AE00);
  v30 = v42;
  MEMORY[0x25303DB90](v40, v41, v25, v27, v24, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  (*(v12 + 16))(v32 + v31, v30, v11);
  sub_24E347448();
  sub_24E3471D8();
  return (*(v12 + 8))(v30, v11);
}

uint64_t sub_24E0E5A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 336) = a7;
  *(v8 + 176) = a6;
  *(v8 + 184) = a8;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v9 = sub_24E347208();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for LaunchGameAction(0);
  *(v8 + 224) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39A0, &unk_24E377000);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = type metadata accessor for AlertAction(0);
  *(v8 + 288) = swift_task_alloc();
  v11 = sub_24DF88A8C(0, &unk_27F1DFCF0, 0x277D0C048);
  v12 = swift_task_alloc();
  *(v8 + 296) = v12;
  *v12 = v8;
  v12[1] = sub_24E0E5CDC;

  return MEMORY[0x28217F210](v8 + 152, v11, v11);
}

uint64_t sub_24E0E5CDC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_24E0E667C;
  }

  else
  {
    v4 = sub_24E0E5DEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E0E5DEC()
{
  v1 = *(v0 + 152);
  if (!v1 || (v2 = [*(v0 + 152) internal], v1, !v2))
  {
    v3 = [objc_opt_self() currentGame];
    v2 = [v3 internal];

    if (!v2)
    {
      v5 = 0;
LABEL_17:
      v43 = *(v0 + 256);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
      sub_24E347328();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v44);
      sub_24DF8BFF4(v43, &unk_27F1EAC90, &unk_24E36E890);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_62();

        return sub_24E3472E8();
      }

      v68 = v5;
      OUTLINED_FUNCTION_17_21();
      v49 = *(v47 + 48);
      v48 = *(v47 + 56);
      v50 = sub_24E323448(*(v0 + 336));
      v52 = v50 == EnumTagSinglePayload && v51 == 0xE600000000000000;
      v66 = v49;
      if (v52)
      {
        OUTLINED_FUNCTION_5_55();

        sub_24E0E7E34(v0 + 56, v0 + 120);
        sub_24E0E7E34(v0 + 72, v0 + 136);
      }

      else
      {
        v53 = OUTLINED_FUNCTION_41_6(v50);
        swift_bridgeObjectRetain_n();
        sub_24E0E7E34(v0 + 56, v0 + 88);
        sub_24E0E7E34(v0 + 72, v0 + 104);

        v54 = v49;
        v55 = v48;
        if ((v53 & 1) == 0)
        {
LABEL_29:
          v57 = *(v0 + 216);
          v56 = *(v0 + 224);
          v58 = *(v0 + 200);
          v59 = *(v0 + 208);
          v60 = *(v0 + 192);
          v61 = *(v0 + 160);
          sub_24E0E5630(*(v0 + 336), v54, v55, *(v0 + 184), v59);

          v62 = OUTLINED_FUNCTION_36_7();
          *(v56 + 32) = v66;
          *(v56 + 40) = v48;
          *(v56 + 48) = 1;
          (*(v58 + 32))(v56 + *(v57 + 32), v59, v60, v62);
          sub_24E0E8518(v56, v61);

          OUTLINED_FUNCTION_13_28();
LABEL_30:
          OUTLINED_FUNCTION_15_22();

          OUTLINED_FUNCTION_3_43();
          OUTLINED_FUNCTION_62();

          __asm { BRAA            X1, X16 }
        }

        OUTLINED_FUNCTION_5_55();
      }

      v54 = EnumTagSinglePayload;
      v55 = 0xE800000000000000;
      goto LABEL_29;
    }
  }

  *(v0 + 304) = v2;
  v4 = *(v0 + 168);
  v5 = v2;
  v6 = [v5 bundleIdentifier];
  v7 = sub_24E347CF8();
  v9 = v8;

  if (v7 == *v4 && v9 == v4[1])
  {
  }

  else
  {
    v11 = sub_24E348C08();

    if ((v11 & 1) == 0)
    {

      goto LABEL_17;
    }
  }

  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  v14 = OUTLINED_FUNCTION_42_5();
  v15 = GKGameCenterUIFrameworkBundle();
  OUTLINED_FUNCTION_38_6();
  v16 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  OUTLINED_FUNCTION_35_9();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24E367D20;
  v18 = [v5 name];
  sub_24E347CF8();
  v67 = v5;

  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = sub_24DF95A7C();
  v20 = OUTLINED_FUNCTION_29_12(v19);
  v22 = v21;

  v23 = OUTLINED_FUNCTION_30_11();
  v24 = GKGameCenterUIFrameworkBundle();
  OUTLINED_FUNCTION_38_6();
  v25 = GKGetLocalizedStringFromTableInBundle();

  v26 = sub_24E347CF8();
  v28 = v27;

  sub_24E3471C8();
  *v12 = v20;
  v12[1] = v22;
  v12[2] = v26;
  v12[3] = v28;
  v12[4] = MEMORY[0x277D84F90];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  *(v0 + 312) = v29;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v13, 1, v29) == 1)
  {
    v30 = *(v0 + 264);
    OUTLINED_FUNCTION_0_96();
    sub_24E0E885C(v31, v32);

    sub_24DF8BFF4(v30, &unk_27F1EAC90, &unk_24E36E890);
    v33 = *(v0 + 272);
    sub_24E347218();
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    sub_24DF8BFF4(v33, &qword_27F1E39A0, &unk_24E377000);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_10_29();
  *(v0 + 48) = sub_24E0E88B4(v38, v39, &unk_24E371BAC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_11_25(boxed_opaque_existential_1);
  (*(v20 + 104))(v12, *MEMORY[0x277D21E18], v13);
  v41 = swift_task_alloc();
  *(v0 + 320) = v41;
  *v41 = v0;
  OUTLINED_FUNCTION_6_46(v41);
  OUTLINED_FUNCTION_62();

  return MEMORY[0x28217F468]();
}

uint64_t sub_24E0E63E4()
{
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v6 = v2;
  v2[41] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24E0E6C38;
  }

  else
  {
    v8 = v2[39];
    v9 = v2[33];
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    OUTLINED_FUNCTION_22_0();
    (*(v10 + 8))(v9, v8);
    v7 = sub_24E0E6590;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24E0E6590()
{
  v1 = v0[38];
  v2 = v0[36];

  OUTLINED_FUNCTION_0_96();
  sub_24E0E885C(v2, v3);
  v4 = v0[34];
  v5 = sub_24E347218();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_24DF8BFF4(v4, &qword_27F1E39A0, &unk_24E377000);
  OUTLINED_FUNCTION_15_22();

  OUTLINED_FUNCTION_3_43();

  return v6();
}

uint64_t sub_24E0E667C()
{
  v1 = [objc_opt_self() currentGame];
  v2 = [v1 internal];

  if (!v2)
  {
LABEL_8:
    v11 = *(v0 + 256);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
    sub_24E347328();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
    sub_24DF8BFF4(v11, &unk_27F1EAC90, &unk_24E36E890);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_62();

      return sub_24E3472E8();
    }

    OUTLINED_FUNCTION_17_21();
    v42 = *(v41 + 48);
    v43 = *(v41 + 56);
    v44 = sub_24E323448(*(v0 + 336));
    v46 = v44 == EnumTagSinglePayload && v45 == 0xE600000000000000;
    v65 = v42;
    if (v46)
    {
      OUTLINED_FUNCTION_5_55();

      sub_24E0E7E34(v0 + 56, v0 + 120);
      sub_24E0E7E34(v0 + 72, v0 + 136);
    }

    else
    {
      v47 = OUTLINED_FUNCTION_41_6(v44);
      swift_bridgeObjectRetain_n();
      sub_24E0E7E34(v0 + 56, v0 + 88);
      sub_24E0E7E34(v0 + 72, v0 + 104);

      v48 = v42;
      v49 = v43;
      if ((v47 & 1) == 0)
      {
LABEL_26:
        v55 = *(v0 + 216);
        v56 = *(v0 + 224);
        v58 = *(v0 + 200);
        v57 = *(v0 + 208);
        v59 = *(v0 + 192);
        v64 = *(v0 + 160);
        sub_24E0E5630(*(v0 + 336), v48, v49, *(v0 + 184), v57);

        v60 = OUTLINED_FUNCTION_36_7();
        *(v56 + 32) = v65;
        *(v56 + 40) = v43;
        *(v56 + 48) = 1;
        (*(v58 + 32))(v56 + *(v55 + 32), v57, v59, v60);
        sub_24E0E8518(v56, v64);

        OUTLINED_FUNCTION_13_28();
LABEL_27:
        OUTLINED_FUNCTION_15_22();

        OUTLINED_FUNCTION_3_43();
        OUTLINED_FUNCTION_62();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_5_55();
    }

    v48 = EnumTagSinglePayload;
    v49 = 0xE800000000000000;
    goto LABEL_26;
  }

  *(v0 + 304) = v2;
  v3 = *(v0 + 168);
  v4 = v2;
  v5 = [v4 bundleIdentifier];
  v6 = sub_24E347CF8();
  v8 = v7;

  if (v6 == *v3 && v8 == v3[1])
  {
  }

  else
  {
    v10 = sub_24E348C08();

    if ((v10 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v16 = *(v0 + 288);
  v63 = *(v0 + 264);
  v17 = OUTLINED_FUNCTION_42_5();
  v18 = GKGameCenterUIFrameworkBundle();
  OUTLINED_FUNCTION_38_6();
  v19 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  OUTLINED_FUNCTION_35_9();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24E367D20;
  v21 = [v4 name];
  sub_24E347CF8();

  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_24DF95A7C();
  v23 = OUTLINED_FUNCTION_29_12(v22);
  v25 = v24;

  v26 = OUTLINED_FUNCTION_30_11();
  v27 = GKGameCenterUIFrameworkBundle();
  OUTLINED_FUNCTION_38_6();
  v28 = GKGetLocalizedStringFromTableInBundle();

  v29 = sub_24E347CF8();
  v31 = v30;

  sub_24E3471C8();
  *v16 = v23;
  v16[1] = v25;
  v16[2] = v29;
  v16[3] = v31;
  v16[4] = MEMORY[0x277D84F90];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  *(v0 + 312) = v32;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v63, 1, v32) == 1)
  {
    v33 = *(v0 + 264);
    OUTLINED_FUNCTION_0_96();
    sub_24E0E885C(v34, v35);

    sub_24DF8BFF4(v33, &unk_27F1EAC90, &unk_24E36E890);
    v36 = *(v0 + 272);
    sub_24E347218();
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_24DF8BFF4(v36, &qword_27F1E39A0, &unk_24E377000);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_10_29();
  *(v0 + 48) = sub_24E0E88B4(v50, v51, &unk_24E371BAC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_11_25(boxed_opaque_existential_1);
  (*(v23 + 104))(v4, *MEMORY[0x277D21E18], v63);
  v53 = swift_task_alloc();
  *(v0 + 320) = v53;
  *v53 = v0;
  OUTLINED_FUNCTION_6_46(v53);
  OUTLINED_FUNCTION_62();

  return MEMORY[0x28217F468]();
}

uint64_t sub_24E0E6C38()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[33];

  OUTLINED_FUNCTION_0_96();
  sub_24E0E885C(v3, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_22_0();
  (*(v6 + 8))(v4, v1);

  v7 = v0[1];

  return v7();
}

void sub_24E0E6D4C()
{
  OUTLINED_FUNCTION_32();
  v9 = sub_24E343028();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27_6();
  sub_24E343018();
  sub_24E343008();
  MEMORY[0x253039B20](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0, qword_24E37F540);
  sub_24E342F68();
  *(swift_allocObject() + 16) = xmmword_24E36D920;
  sub_24E342F38();
  sub_24E342F38();
  sub_24E342F38();
  sub_24E342F38();
  sub_24E342F38();
  sub_24E348998();

  v4 = [objc_opt_self() local];
  v5 = [v4 alias];

  v6 = sub_24E347CF8();
  v8 = v7;

  MEMORY[0x25303E950](v6, v8);

  sub_24E342F38();

  sub_24E342F38();
  sub_24E342F88();
  sub_24E342FA8();
  (*(v2 + 8))(v0, v9);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0E7144()
{
  sub_24DF8BE60(v0 + 16);
  sub_24DF8BFF4(v0 + 56, &qword_27F1DEE90, &unk_24E369E90);
  v1 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_timestamp;
  sub_24E343368();
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_32_13();
  OUTLINED_FUNCTION_32_13();
  OUTLINED_FUNCTION_32_13();

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_impressionMetrics, &qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_32_13();

  OUTLINED_FUNCTION_32_13();
  return v0;
}

uint64_t sub_24E0E72AC()
{
  sub_24E0E7144();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ActivityFeedBaseData(uint64_t a1)
{
  result = qword_27F1E3978;
  if (!qword_27F1E3978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0E7358(uint64_t a1)
{
  sub_24E343368();
  if (v1 <= 0x3F)
  {
    sub_24DF9E0E0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24E0E74A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0E74E0(uint64_t result, int a2, int a3)
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

uint64_t sub_24E0E7540@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E0E8958(v3 + 56, a1, &qword_27F1DEE90, &unk_24E369E90);
}

uint64_t sub_24E0E759C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_impressionMetrics;
  swift_beginAccess();
  return sub_24E0E8958(v3 + v4, a1, &qword_27F1E58A0, &unk_24E36BF80);
}

uint64_t sub_24E0E7650@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics + 8);
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 1;
}

uint64_t sub_24E0E767C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics;
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics + 32);
  if (v3)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 40);
    v6 = 2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t sub_24E0E76C0(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_24DF88A8C(0, a3, a4);
  v8 = sub_24E347F08();

  return v8;
}

uint64_t sub_24E0E773C(void *a1)
{
  v1 = [a1 scores];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_24DF88A8C(0, &qword_27F1E39C8, 0x277D0C1A0);
  v3 = sub_24E347F08();

  return v3;
}

uint64_t sub_24E0E77AC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_24E347CF8();
  }

  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_24E0E7808(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24E347CF8();

  return v4;
}

uint64_t sub_24E0E7874(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18[-1] - v8;
  v10 = sub_24E347638();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = type metadata accessor for PlayerProfileAction(0);
  v18[4] = sub_24E0E88B4(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction, &unk_24E38C764);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_24E0E88FC(a1, boxed_opaque_existential_1, type metadata accessor for PlayerProfileAction);
  sub_24E05F70C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v15) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
  }

  else
  {
    (*(v11 + 16))(v6, v13, v10);
    (*(v4 + 104))(v6, *MEMORY[0x277D21E10], v3);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
    (*(*(v15 - 8) + 8))(v9, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_24E0E7C68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 112);
  v8 = *(v1 + 128);
  v9 = *(v1 + 120);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E0E7D48;

  return sub_24E0E5A70(a1, v4, v5, v6, v1 + 40, v7, v9, v8);
}

uint64_t sub_24E0E7D48()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24E0E7E90(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18[-1] - v8;
  v10 = sub_24E347638();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = type metadata accessor for GameAchievementsAction(0);
  v18[4] = sub_24E0E88B4(&qword_27F1E2698, type metadata accessor for GameAchievementsAction, &unk_24E38B588);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_24E0E88FC(a1, boxed_opaque_existential_1, type metadata accessor for GameAchievementsAction);
  sub_24E05F70C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v15) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
  }

  else
  {
    (*(v11 + 16))(v6, v13, v10);
    (*(v4 + 104))(v6, *MEMORY[0x277D21E10], v3);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
    (*(*(v15 - 8) + 8))(v9, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_24E0E81D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18[-1] - v8;
  v10 = sub_24E347638();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = type metadata accessor for GameLeaderboardsAction(0);
  v18[4] = sub_24E0E88B4(&qword_27F1E39B8, type metadata accessor for GameLeaderboardsAction, &unk_24E38E5D8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_24E0E88FC(a1, boxed_opaque_existential_1, type metadata accessor for GameLeaderboardsAction);
  sub_24E05F70C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v15) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
  }

  else
  {
    (*(v11 + 16))(v6, v13, v10);
    (*(v4 + 104))(v6, *MEMORY[0x277D21E10], v3);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
    (*(*(v15 - 8) + 8))(v9, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_24E0E8518(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18[-1] - v8;
  v10 = sub_24E347638();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = type metadata accessor for LaunchGameAction(0);
  v18[4] = sub_24E0E88B4(&qword_27F1E39B0, type metadata accessor for LaunchGameAction, &unk_24E388CE0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_24E0E88FC(a1, boxed_opaque_existential_1, type metadata accessor for LaunchGameAction);
  sub_24E05F70C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v9, 1, v15) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_24DF8BFF4(v9, &unk_27F1EAC90, &unk_24E36E890);
  }

  else
  {
    (*(v11 + 16))(v6, v13, v10);
    (*(v4 + 104))(v6, *MEMORY[0x277D21E10], v3);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
    (*(*(v15 - 8) + 8))(v9, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_24E0E885C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E0E88B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E0E88FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E0E8958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1)
{

  return sub_24E0E88FC(v1, a1, type metadata accessor for AlertAction);
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return sub_24E0E885C(v0, type metadata accessor for ActivityFeedRelationshipAchievement);
}

uint64_t OUTLINED_FUNCTION_13_28()
{

  return sub_24E0E885C(v0, type metadata accessor for LaunchGameAction);
}

uint64_t OUTLINED_FUNCTION_15_22()
{
}

__n128 OUTLINED_FUNCTION_17_21()
{
  v1 = *(v0 + 168);
  *(v0 + 56) = *(v1 + 16);
  result = *v1;
  *(v0 + 72) = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_18(uint64_t a1, uint64_t a2)
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_26_14(uint64_t result)
{
  v1[31] = v2 & 0xC000000000000001;
  v1[32] = result;
  v1[30] = v2 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1)
{
  v1[8] = a1;
  v1[4] = v2;
  v1[5] = v3;

  return sub_24E347CC8();
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_32_13()
{
}

__n128 OUTLINED_FUNCTION_36_7()
{
  *v1 = *(v0 + 56);
  result = *(v0 + 72);
  *(v1 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_6(uint64_t a1)
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_24E347CB8();
}

char *OUTLINED_FUNCTION_43_4()
{
  v2 = *(v0 - 96);

  return sub_24E12F080(0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return swift_task_create();
}

id sub_24E0E8CBC(void *a1, void *a2)
{
  sub_24E343368();
  OUTLINED_FUNCTION_1_23();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v27 - v18;
  result = [a1 lastPlayedDate];
  if (result)
  {
    v21 = result;
    sub_24E343328();

    v22 = *(v6 + 32);
    v22(v19, v15, v2);
    v23 = [a2 lastPlayedDate];
    if (v23)
    {
      v24 = v23;
      sub_24E343328();

      v22(v12, v9, v2);
      v25 = sub_24E343348();
      v26 = *(v6 + 8);
      v26(v12, v2);
      v26(v19, v2);
      return (v25 == 1);
    }

    else
    {
      (*(v6 + 8))(v19, v2);
      return 0;
    }
  }

  return result;
}

BOOL sub_24E0E8EBC(void *a1, void *a2)
{
  sub_24E342EE8();
  OUTLINED_FUNCTION_1_23();
  v6 = v5;
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 displayNameWithOptions_];
  v12 = sub_24E347CF8();
  v14 = v13;

  v31 = v12;
  v32 = v14;
  sub_24E342E98();
  sub_24DF90C4C();
  v28 = OUTLINED_FUNCTION_1_82();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v10, v2);

  v18 = [a2 displayNameWithOptions_];
  v19 = sub_24E347CF8();
  v21 = v20;

  v31 = v19;
  v32 = v21;
  sub_24E342E98();
  v22 = OUTLINED_FUNCTION_1_82();
  v24 = v23;
  v17(v10, v2);

  v31 = v28;
  v32 = v16;
  v29 = v22;
  v30 = v24;
  v25 = sub_24E348758();

  return v25 == -1;
}

uint64_t OUTLINED_FUNCTION_1_82()
{

  return sub_24E348718();
}

id sub_24E0E90C4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 _gkGameLayerModuleVisualEffect];
  if (!v3)
  {
    sub_24DFEC928();
    sub_24E347F08();
    v3 = sub_24E347EE8();
  }

  [v2 setBackgroundEffects_];

  sub_24E193BDC(0x6579614C656D6167, 0xEE0070756F724772, v2);
  return v2;
}

uint64_t sub_24E0E91B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E0E92A4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E0E9218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E0E92A4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E0E927C(uint64_t a1)
{
  sub_24E0E92A4();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E0E92A4()
{
  result = qword_27F1E39F0;
  if (!qword_27F1E39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E39F0);
  }

  return result;
}

uint64_t AppStoreContentMetadataPresenter.__allocating_init(sources:gameFilter:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppStoreContentMetadataPresenter.init(sources:gameFilter:)(a1, a2);
  return v4;
}

void *AppStoreContentMetadataPresenter.init(sources:gameFilter:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ArtworkLoader();
  v2[2] = sub_24E2002B8(0);
  v6 = [objc_opt_self() local];
  v7 = [v6 internal];

  type metadata accessor for AppStoreContentLookupPresenter();
  OUTLINED_FUNCTION_16_4();
  v8 = swift_allocObject();
  type metadata accessor for ASCLockupBatchPresenter();
  v9 = sub_24E347C28();
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v3[3] = v8;
  v3[4] = a1;
  v3[5] = a2;
  return v3;
}

uint64_t sub_24E0E9444(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  v7 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v8 = *(v4 + 32);
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = (v8 + 32);
    do
    {
      v12 = *v11++;
      LOBYTE(v27[0]) = v12;
      v13 = sub_24E347CB8();
      v14 = GKGameCenterUIFrameworkBundle();
      v15 = GKGetLocalizedStringFromTableInBundle();

      v16 = sub_24E347CF8();
      v18 = v17;

      sub_24E0E9B14(v27, v16, v18, a1 & 1);

      MEMORY[0x25303EA30](v19);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      --v9;
    }

    while (v9);
    v7 = v28;
    v6 = a2;
    v5 = a3;
  }

  v27[0] = v7;
  OUTLINED_FUNCTION_21_2();
  *(swift_allocObject() + 16) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3A00, &unk_24E3771B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3A08, &qword_24E38A4E0);
  sub_24DFB4C28(&qword_27F1E3A10, &qword_27F1E3A00, &unk_24E3771B0, MEMORY[0x277D83970]);
  sub_24DFB4C28(&qword_27F1E3A18, &qword_27F1E39F8, &qword_24E3771A8, MEMORY[0x277D224B8]);
  sub_24E347A28();

  OUTLINED_FUNCTION_16_4();
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v5;
  OUTLINED_FUNCTION_16_4();
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v5;
  v22 = sub_24E085260();
  swift_retain_n();
  v23 = sub_24E348368();
  v27[3] = v22;
  v27[4] = MEMORY[0x277D225C0];
  v27[0] = v23;
  sub_24E347A78();

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_24E0E975C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_24E0EAC60();
  v4 = sub_24E347C28();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      memcpy(__dst, v6, 0x80uLL);
      v7 = LOBYTE(__dst[0]);
      if (__dst[2])
      {
        sub_24E0EACB4(__dst, __src);
        sub_24E0EACEC(&__dst[1], __src);
        swift_isUniquelyReferenced_nonNull_native();
        v35 = v4;
        v8 = sub_24E26AF54(v7);
        if (__OFADD__(v4[2], (v9 & 1) == 0))
        {
          goto LABEL_31;
        }

        v10 = v8;
        v11 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F1E3A28, &unk_24E3771C0);
        if (sub_24E348AB8())
        {
          v12 = sub_24E26AF54(v7);
          if ((v11 & 1) != (v13 & 1))
          {
            goto LABEL_33;
          }

          v10 = v12;
        }

        memcpy(__src, &__dst[1], 0x70uLL);
        if ((v11 & 1) == 0)
        {
          v4 = v35;
          v35[(v10 >> 6) + 8] |= 1 << v10;
          *(v4[6] + v10) = v7;
          memcpy((v4[7] + 112 * v10), __src, 0x70uLL);
          sub_24E0EA91C(__dst);
          v18 = v4[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_32;
          }

          v4[2] = v20;
          goto LABEL_15;
        }

        v4 = v35;
        v14 = (v35[7] + 112 * v10);
        memcpy(v32, v14, sizeof(v32));
        memmove(v14, &__dst[1], 0x70uLL);
        sub_24E0EAAF0(v32);
      }

      else
      {
        sub_24E0EACB4(__dst, __src);
        v15 = sub_24E26AF54(v7);
        if (v16)
        {
          v17 = v15;
          swift_isUniquelyReferenced_nonNull_native();
          v32[0] = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F1E3A28, &unk_24E3771C0);
          sub_24E348AB8();
          v4 = v32[0];
          memcpy(__src, (*(v32[0] + 56) + 112 * v17), 0x70uLL);
          sub_24E0EAAF0(__src);
          sub_24E348AD8();
        }
      }

      sub_24E0EA91C(__dst);
LABEL_15:
      v6 += 128;
      --v5;
    }

    while (v5);
  }

  v21 = 0;
  v22 = *(a2 + 16);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v22 == v21)
    {

      *a3 = v23;
      return result;
    }

    if (v21 >= v22)
    {
      break;
    }

    if (__OFADD__(v21, 1))
    {
      goto LABEL_30;
    }

    if (v4[2] && (v24 = sub_24E26AF54(*(a2 + 32 + v21)), (v25 & 1) != 0))
    {
      memcpy(__dst, (v4[7] + 112 * v24), 0x70uLL);
      sub_24E0EAA94(__dst, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E077BC4();
        v23 = v27;
      }

      v26 = *(v23 + 16);
      if (v26 >= *(v23 + 24) >> 1)
      {
        sub_24E077BC4();
        v23 = v28;
      }

      *(v23 + 16) = v26 + 1;
      memcpy((v23 + 112 * v26 + 32), __dst, 0x70uLL);
      ++v21;
    }

    else
    {
      ++v21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_24E348C98();
  __break(1u);
  return result;
}

uint64_t sub_24E0E9B14(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39F8, &qword_24E3771A8);
  v9 = sub_24E347AD8();
  LOBYTE(v16[0]) = v8;
  sub_24E167BCC(v16, 1, *(v4 + 40));
  OUTLINED_FUNCTION_21_2();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = v8;
  *(v11 + 33) = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  v13 = sub_24E085260();
  swift_retain_n();

  v14 = sub_24E348368();
  v16[3] = v13;
  v16[4] = MEMORY[0x277D225C0];
  v16[0] = v14;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v9;
}

uint64_t sub_24E0E9C9C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  result = sub_24E347A48();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (sub_24DFD8654())
      {
        sub_24DFFA844();
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x25303F560](0, v12);
        }

        else
        {
          v14 = *(v12 + 32);
        }

        v15 = v14;
        v16 = [v14 icon];
        if (v16)
        {
          v17 = v16;
          v30 = v15;
          [v16 width];
          [v17 height];
          [v17 width];
          v19 = v18;
          [v17 height];
          v21 = 300.0 / (v19 / v20);
          type metadata accessor for Artwork();
          v22 = [v17 URLTemplate];
          v23 = sub_24E347CF8();
          v25 = v24;

          *&__dst[0] = v23;
          *(&__dst[0] + 1) = v25;
          __src[0] = 25186;
          __src[1] = 0xE200000000000000;
          Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(__dst, 0, __src, MEMORY[0x277D84F90], 300.0, v21);
          __dst[0] = xmmword_24E377130;
          v29 = sub_24E0ABE8C(__dst, 0, 300.0, v21);

          memset(__dst, 0, 40);
          v26 = swift_allocObject();
          *(v26 + 16) = a2;
          *(v26 + 24) = a4;
          *(v26 + 25) = a5 & 1;
          *(v26 + 32) = 0x4072C00000000000;
          *(v26 + 40) = v21;
          *(v26 + 48) = v17;
          *(v26 + 56) = a6;
          *(v26 + 64) = a7;
          *(v26 + 72) = v30;

          v27 = v17;

          v28 = v30;
          sub_24E200340(v29, 2, 1, __dst, sub_24E0EA94C, v26);

          sub_24DFD8588(__dst);
        }
      }

      else
      {
      }
    }

    LOBYTE(__src[0]) = a4;
    memset(&__src[1], 0, 120);
    sub_24E347AC8();
    memcpy(__dst, __src, sizeof(__dst));
    return sub_24E0EA91C(__dst);
  }

  return result;
}

uint64_t sub_24E0E9FB8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  result = sub_24E347A48();
  if ((result & 1) == 0)
  {
    if (a6)
    {
      LOBYTE(v55[0]) = a8;
      memset(&v55[1], 0, 112);
      v55[15] = a6;
      v21 = a6;
      sub_24E347AC8();
LABEL_22:
      memcpy(__dst, v55, 0x80uLL);
      return sub_24E0EA91C(__dst);
    }

    if (a9)
    {
      type metadata accessor for ArtworkView();
      v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v23 = [objc_opt_self() clearColor];
      [v22 setBackgroundColor_];

      sub_24E0D90D8(a1, 0);
      sub_24E0D8E04(a2, a3);
      sub_24E220DD8([a10 decoration], __dst);
      sub_24E0D8DC8(__dst);
      v24 = 0;
      v25 = 5;
      a1 = v22;
LABEL_15:
      LOBYTE(__dst[0]) = a8;
      sub_24E0EA9F4(a1, v24, 0, v25);
      v34 = sub_24E0EA990(a13);
      v36 = sub_24E0EA3E4(v34, v35);
      v38 = v37;

      v39 = sub_24E0EA990(a13);
      __src[0] = a11;
      __src[1] = a12;
      if (v40)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0;
      }

      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0xE000000000000000;
      }

      __src[2] = a1;
      __src[3] = v24;
      __src[4] = 0;
      LOBYTE(__src[5]) = v25;
      __src[6] = v36;
      __src[7] = v38;
      __src[8] = v41;
      __src[9] = v42;
      LOBYTE(__src[10]) = 0;
      __src[11] = 0;
      __src[12] = 0xE000000000000000;
      __src[13] = 0;
      memcpy(&v56[7], __src, 0x70uLL);
      LOBYTE(v55[0]) = a8;
      memcpy(v55 + 1, v56, 0x77uLL);
      v55[15] = 0;

      sub_24E0EAA94(__src, __dst);
      sub_24E347AC8();
      sub_24E0EAAF0(__src);
      sub_24E0EAB44(a1, v24, 0, v25);
      goto LABEL_22;
    }

    v26 = [a10 decoration];
    v27 = sub_24E347CF8();
    v29 = v28;
    if (v27 == sub_24E347CF8() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_24E348C08();

      if ((v32 & 1) == 0)
      {
        v43 = sub_24E347CF8();
        v45 = v44;
        if (v43 == sub_24E347CF8() && v45 == v46)
        {
        }

        else
        {
          v48 = sub_24E348C08();

          if ((v48 & 1) == 0)
          {
            v49 = sub_24E347CF8();
            v51 = v50;
            if (v49 == sub_24E347CF8() && v51 == v52)
            {

              v24 = 3;
            }

            else
            {
              v54 = sub_24E348C08();

              if (v54)
              {
                v24 = 3;
              }

              else
              {
                v24 = 2;
              }
            }

            goto LABEL_14;
          }
        }

        v24 = 1;
LABEL_14:
        v33 = a1;
        v25 = 3;
        goto LABEL_15;
      }
    }

    v24 = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_24E0EA3E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v4 = sub_24E347CB8();
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24E367D20;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_24DF95A7C();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    v8 = sub_24E347D18();
  }

  else
  {
    v9 = sub_24E347CB8();
    v10 = GKGameCenterUIFrameworkBundle();
    v11 = GKGetLocalizedStringFromTableInBundle();

    v8 = sub_24E347CF8();
  }

  return v8;
}

uint64_t sub_24E0EA784(void *a1, uint64_t a2, char a3)
{
  LOBYTE(v5[0]) = a3;
  memset(&v5[1], 0, 112);
  v5[15] = a1;
  v3 = a1;
  sub_24E347AC8();
  memcpy(__dst, v5, sizeof(__dst));
  return sub_24E0EA91C(__dst);
}

uint64_t AppStoreContentMetadataPresenter.deinit()
{

  return v0;
}

uint64_t AppStoreContentMetadataPresenter.__deallocating_deinit()
{
  AppStoreContentMetadataPresenter.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_24E0EA990(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

void sub_24E0EA9F4(void *a1, uint64_t a2, void *a3, char a4)
{
  switch(a4)
  {
    case 0:

      break;
    case 1:
    case 2:
    case 3:
    case 5:

      v5 = a1;
      break;
    case 4:
      v6 = a1;

      goto LABEL_7;
    case 6:

LABEL_7:

      break;
    default:
      return;
  }
}

void sub_24E0EAB44(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:

      break;
    case 1:
    case 2:
    case 3:
    case 5:

      goto LABEL_4;
    case 4:
      v5 = a1;

      a1 = v5;

LABEL_4:

      break;
    case 6:

      break;
    default:
      return;
  }
}

unint64_t sub_24E0EAC60()
{
  result = qword_27F1E3A20;
  if (!qword_27F1E3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3A20);
  }

  return result;
}

uint64_t sub_24E0EACEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF038, &unk_24E36F2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI9HighlightV5GlyphO(uint64_t a1)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 24) & 0xF;
  }
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI9HighlightVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E0EAD90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0EADE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24E0EAE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24E0EAED8(uint64_t a1, uint64_t a2)
{
  v34[1] = a2;
  v3 = sub_24E347218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v11 = OUTLINED_FUNCTION_0_97();
  type metadata accessor for SwiftUIHostingViewControllerAction(v11, v12, v13, v14);
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = v3;
    if (*(a1 + 16) == 1)
    {
      OUTLINED_FUNCTION_0_97();
      sub_24E345D68();
      (*a1)();
      v18 = sub_24E345D48();
      [v18 setModalPresentationStyle_];
      [v16 presentViewController:v18 animated:1 completion:0];
    }

    else
    {
      v20 = OUTLINED_FUNCTION_0_97();
      type metadata accessor for BaseHostingViewController(v20, v21, v22, v23);
      (*a1)();
      v24 = sub_24E0EDDA4(v9);
      v25 = [v24 navigationItem];
      v26 = sub_24E347CB8();
      v27 = GKGameCenterUIFrameworkBundle();
      v28 = GKGetLocalizedStringFromTableInBundle();

      if (!v28)
      {
        sub_24E347CF8();
        v28 = sub_24E347CB8();
      }

      [v25 setTitle_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0, qword_24E375630);
      sub_24E347328();
      if (v36)
      {
        sub_24DE56CE8(&v35, v37);
        v29 = v38;
        v30 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        (*(v30 + 8))(v24, 1, v29, v30);

        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {
        sub_24E0B9DD0(&v35);
        v31 = [v16 navigationController];
        if (v31)
        {
          v32 = v31;
          [v31 pushViewController:v24 animated:1];
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v17);
    v19 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v3);
    return sub_24E347AA8();
  }

  return v19;
}

JUMeasurements __swiftcall GKDashboardPlayerPhotoView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [v2 sizeThatFits_];
  v5 = 0.0;
  v6 = v4;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

unint64_t sub_24E0EB35C()
{
  result = qword_27F1E3AB0;
  if (!qword_27F1E3AB0)
  {
    type metadata accessor for ArcadePageAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3AB0);
  }

  return result;
}

uint64_t sub_24E0EB3B4(void **a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  type metadata accessor for ArcadePageAction(0);
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *a1;
    v10 = objc_allocWithZone(type metadata accessor for AppStoreContentViewController());
    v11 = v9;
    v12 = AppStoreContentViewController.init(gameRecord:)(v9);
    v13 = [v8 navigationController];
    if (v13)
    {
      v14 = v13;
      [v13 pushViewController:v12 animated:1];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    v15 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    return sub_24E347AA8();
  }

  return v15;
}

uint64_t ExtendedMarkdownText.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_24E343128();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  (*(v6 + 16))(v5 - v4, v1);
  result = sub_24E3464D8();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t ExtendedMarkdownText.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E0EB6CC(a1, a2);
  sub_24E343128();
  OUTLINED_FUNCTION_5_2();
  v5 = *(v4 + 8);

  return v5(a1, v3);
}

uint64_t sub_24E0EB6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3AC8, &qword_24E377588);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - v5;
  v7 = sub_24E343088();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v56 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3AD0, &qword_24E377590);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  v73 = &v56 - v15;
  v72 = sub_24E3430F8();
  OUTLINED_FUNCTION_0_14();
  v70 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v71 = v19 - v18;
  v69 = sub_24E3430D8();
  OUTLINED_FUNCTION_0_14();
  v65 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_1();
  v68 = v23 - v22;
  v24 = sub_24E343108();
  OUTLINED_FUNCTION_0_14();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3AD8, &qword_24E377598);
  v32 = v31 - 8;
  MEMORY[0x28223BE20](v31);
  v34 = &v56 - v33;
  sub_24E343128();
  OUTLINED_FUNCTION_5_2();
  (*(v35 + 16))(a2, a1);
  v64 = a2;
  v36 = v7;
  sub_24E343118();
  (*(v26 + 16))(v34, v30, v24);
  v37 = *(v32 + 44);
  sub_24E0EBF10(&qword_27F1E3AE0, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_24E3481A8();
  (*(v26 + 8))(v30, v24);
  v38 = v56;
  ++v70;
  v39 = v65++;
  v66 = (v39 + 2);
  v60 = (v9 + 16);
  v61 = (v9 + 32);
  v59 = (v9 + 88);
  v58 = *MEMORY[0x277D0C818];
  v57 = (v9 + 8);
  v67 = v37;
  while (1)
  {
    v40 = v71;
    sub_24E3481B8();
    sub_24E0EBF10(&qword_27F1E3AE8, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v41 = v24;
    v42 = v72;
    v43 = sub_24E347CA8();
    (*v70)(v40, v42);
    if (v43)
    {
      return sub_24DF8BFF4(v34, &qword_27F1E3AD8, &qword_24E377598);
    }

    v44 = sub_24E3481E8();
    v46 = v68;
    v45 = v69;
    (*v66)(v68);
    v44(v75, 0);
    v47 = v41;
    sub_24E3481C8();
    sub_24E3430C8();
    sub_24E343098();
    sub_24E0EBF10(&qword_27F1E3AF0, MEMORY[0x277D0C828], MEMORY[0x277D0C820]);
    sub_24E3430E8();
    (*v65)(v46, v45);
    if (__swift_getEnumTagSinglePayload(v6, 1, v36) == 1)
    {
      sub_24DF8BFF4(v73, &qword_27F1E3AD0, &qword_24E377590);
      sub_24DF8BFF4(v6, &qword_27F1E3AC8, &qword_24E377588);
      goto LABEL_7;
    }

    v48 = v73;
    v49 = v6;
    (*v61)(v38, v6, v36);
    v50 = v38;
    v51 = v63;
    (*v60)(v63, v50, v36);
    v52 = (*v59)(v51, v36);
    if (v52 != v58)
    {
      break;
    }

    v53 = sub_24E3469D8();
    sub_24E0EBF58();
    v54 = sub_24E343158();
    v74 = v53;
    sub_24E0EBFBC();
    sub_24E343188();
    v54(v75, 0);
    (*v57)(v50, v36);
    sub_24DF8BFF4(v48, &qword_27F1E3AD0, &qword_24E377590);
    v6 = v49;
    v38 = v50;
LABEL_7:
    v24 = v47;
  }

  result = sub_24E348BF8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ExtendedMarkdownText(uint64_t a1)
{
  result = qword_27F1E3AB8;
  if (!qword_27F1E3AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0EBEA4(uint64_t a1)
{
  result = sub_24E343128();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E0EBF10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E0EBF58()
{
  result = qword_27F1E3AF8;
  if (!qword_27F1E3AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3AD0, &qword_24E377590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3AF8);
  }

  return result;
}

unint64_t sub_24E0EBFBC()
{
  result = qword_27F1E3B00;
  if (!qword_27F1E3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B00);
  }

  return result;
}

uint64_t sub_24E0EC01C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0EC05C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void *OnboardingOverlayView.init(gameBundleID:dismissAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24E346B78();
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  result = sub_24E346B78();
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t OnboardingOverlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B08, &qword_24E377660);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = v1[1];
  v20[0] = *v1;
  v20[1] = v7;
  v8 = v1[3];
  v20[2] = v1[2];
  v21 = v8;
  *v6 = sub_24E345CF8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B10, &unk_24E377668);
  sub_24E0EC3E4(&v6[*(v9 + 44)]);
  v10 = sub_24E345708();
  v11 = sub_24E3461E8();
  v12 = &v6[*(v3 + 36)];
  *v12 = v10;
  v12[8] = v11;
  v19 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346BA8();
  OUTLINED_FUNCTION_2_61();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_98(v13);
  OUTLINED_FUNCTION_2_61();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_0_98(v14);
  sub_24E0ECA40(v20, &v18);
  sub_24E0ECA40(v20, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B18, &qword_24E377678);
  sub_24E0ECA78();
  sub_24E0ECB68();
  sub_24E346868();

  sub_24DF8BFF4(v6, &qword_27F1E3B08, &qword_24E377660);
  OUTLINED_FUNCTION_2_61();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_0_98(v15);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B68, &qword_24E3776A8) + 36));
  sub_24E345528();
  sub_24E0ECA40(v20, &v18);
  result = sub_24E348078();
  *v16 = &unk_24E3776A0;
  v16[1] = v15;
  return result;
}

uint64_t sub_24E0EC3E4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF930, &qword_24E36BC90);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  sub_24E345348();
  v9 = &v8[*(v3 + 44)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF938, &qword_24E36BC98) + 28);
  v11 = *MEMORY[0x277CDF440];
  v12 = sub_24E345248();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  sub_24E0ED234(v8, v5);
  *a1 = 0;
  *(a1 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B80, qword_24E3777C0);
  sub_24E0ED234(v5, a1 + *(v13 + 48));
  v14 = a1 + *(v13 + 64);
  *v14 = 0;
  *(v14 + 8) = 1;
  sub_24DF8BFF4(v8, &qword_27F1DF930, &qword_24E36BC90);
  return sub_24DF8BFF4(v5, &qword_27F1DF930, &qword_24E36BC90);
}

uint64_t sub_24E0EC58C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24E0EC5BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E345FA8();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B58, &qword_24E377690);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B50, &qword_24E377688);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B78, &qword_24E377788);
  MEMORY[0x28223BE20](v13);
  v15 = (&v37 - v14);
  v43 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v46 == 1)
  {
    v17 = a1[2];
    v16 = a1[3];
    *v15 = v17;
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    sub_24DF88BEC(v17, v16);
    sub_24E0ECBF4();
    sub_24E0ECC48();
    return sub_24E345E38();
  }

  else
  {
    v39 = a2;
    v20 = *a1;
    v19 = a1[1];
    v21 = swift_allocObject();
    v38 = v10;
    v22 = v21;
    v23 = *(a1 + 1);
    v21[1] = *a1;
    v21[2] = v23;
    v24 = *(a1 + 3);
    v21[3] = *(a1 + 2);
    v21[4] = v24;
    v25 = swift_allocObject();
    v26 = *(a1 + 1);
    v25[1] = *a1;
    v25[2] = v26;
    v27 = *(a1 + 3);
    v25[3] = *(a1 + 2);
    v25[4] = v27;
    v46 = v20;
    v47 = v19;
    v48 = sub_24E0ED0EC;
    v49 = v22;
    v50 = 6;
    v51 = sub_24E05BE00;
    v52 = v25;
    sub_24E0ECA40(a1, &v43);
    sub_24E0ECA40(a1, &v43);

    sub_24E345C58();
    v28 = sub_24E0ECD5C();
    sub_24E346748();
    (*(v40 + 8))(v6, v4);
    v29 = v48;
    v30 = v49;
    v32 = v51;
    v31 = v52;

    sub_24DE73FA0(v29, v30);
    sub_24DE73FA0(v32, v31);
    *&v43 = &type metadata for AuthenticationWithOnboardingView;
    *(&v43 + 1) = v4;
    v44 = v28;
    v45 = MEMORY[0x277CDE280];
    swift_getOpaqueTypeConformance2();
    v33 = v42;
    sub_24E3467E8();
    (*(v41 + 8))(v9, v33);
    v34 = sub_24E345708();
    v35 = sub_24E3461E8();
    v36 = &v12[*(v38 + 36)];
    *v36 = v34;
    v36[8] = v35;
    sub_24DE60CC8(v12, v15);
    swift_storeEnumTagMultiPayload();
    sub_24E0ECBF4();
    sub_24E0ECC48();
    sub_24E345E38();
    return sub_24DE60D30(v12);
  }
}

unint64_t sub_24E0ECA78()
{
  result = qword_27F1E3B20;
  if (!qword_27F1E3B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B08, &qword_24E377660);
    sub_24E0ECB04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B20);
  }

  return result;
}

unint64_t sub_24E0ECB04()
{
  result = qword_27F1E3B28;
  if (!qword_27F1E3B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B30, &qword_24E377680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B28);
  }

  return result;
}

unint64_t sub_24E0ECB68()
{
  result = qword_27F1E3B38;
  if (!qword_27F1E3B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B18, &qword_24E377678);
    sub_24E0ECBF4();
    sub_24E0ECC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B38);
  }

  return result;
}

unint64_t sub_24E0ECBF4()
{
  result = qword_27F1E3B40;
  if (!qword_27F1E3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B40);
  }

  return result;
}

unint64_t sub_24E0ECC48()
{
  result = qword_27F1E3B48;
  if (!qword_27F1E3B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B50, &qword_24E377688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B58, &qword_24E377690);
    sub_24E345FA8();
    sub_24E0ECD5C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B48);
  }

  return result;
}

unint64_t sub_24E0ECD5C()
{
  result = qword_27F1E3B60;
  if (!qword_27F1E3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B60);
  }

  return result;
}

uint64_t sub_24E0ECE04(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_24E348068();
  *(v1 + 40) = sub_24E348058();
  v3 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E0ECE9C, v3, v2);
}

uint64_t sub_24E0ECE9C()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 48);
  *(v0 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B98();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E0ECF34()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24DF8CD84;

  return sub_24E0ECE04(v0 + 16);
}

unint64_t sub_24E0ECFF8()
{
  result = qword_27F1E3B70;
  if (!qword_27F1E3B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B68, &qword_24E3776A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B08, &qword_24E377660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B18, &qword_24E377678);
    sub_24E0ECA78();
    sub_24E0ECB68();
    swift_getOpaqueTypeConformance2();
    sub_24E0CA2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B70);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_2_61();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24E0ED16C(uint64_t a1)
{
  v2 = sub_24E345248();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x25303C410](v5);
}

uint64_t sub_24E0ED234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF930, &qword_24E36BC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_0_98(uint64_t a1)
{
  v2 = *(v1 - 128);
  *(a1 + 16) = *(v1 - 144);
  *(a1 + 32) = v2;
  result = *(v1 - 112);
  v4 = *(v1 - 96);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t sub_24E0ED2C4(uint64_t a1)
{
  type metadata accessor for ReportUserProfileSection();
  result = swift_allocObject();
  *(result + 16) = 276;
  return result;
}

uint64_t sub_24E0ED2F0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347478();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_7_1();
  v69 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v61 - v6;
  v8 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v68 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = sub_24E347458();
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_7_1();
  v70 = v18 - v17;
  v19 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v25 = v24 - v23;
  sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v71 = v27;
  v72 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_1();
  v30 = v29 - v28;
  memcpy(v77, __src, sizeof(v77));
  if (sub_24DF8BF80(v77) == 1 || (v77[1] & 1) != 0)
  {
    return 0;
  }

  v65 = v7;
  v66 = __src;
  v63 = v77[0];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v67 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v33 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v33;
  *(inited + 48) = 0x74726F706572;
  *(inited + 56) = 0xE600000000000000;
  memcpy(v76, __dst, sizeof(v76));
  sub_24DF8BF98(v76, v75);
  v34 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v35 = sub_24E347058();
  v36 = __swift_project_value_buffer(v35, qword_27F20AE00);
  MEMORY[0x25303DB90](0x464174726F706572, 0xED0000646E656972, 0x6E6F74747562, 0xE600000000000000, v34, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v37 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v67;
  (*(v21 + 16))(v38 + v37, v25, v19);
  sub_24E347448();
  v62 = v30;
  sub_24E3471D8();
  (*(v21 + 8))(v25, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
  v31 = swift_allocObject();
  *(v31 + 16) = v67;
  v39 = sub_24E347CB8();
  v40 = GKGameCenterUIFrameworkBundle();
  v41 = GKGetLocalizedStringFromTableInBundle();

  *&v67 = sub_24E347CF8();
  v43 = v42;

  memset(v75, 0, 64);
  v75[64] = -1;
  v44 = type metadata accessor for ReportFriendAction(0);
  v74[3] = v44;
  v74[4] = sub_24E0EDC24(&qword_27F1E0AD0, type metadata accessor for ReportFriendAction, &unk_24E383B30);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  (*(v71 + 16))(boxed_opaque_existential_1 + *(v44 + 20), v30, v72);
  v46 = v63;
  *boxed_opaque_existential_1 = v63;
  v47 = v46;
  sub_24E343398();
  v48 = v68;
  (*(v68 + 16))(v12, v15, v8);
  sub_24E0EDC24(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v48 + 8))(v15, v8);
  v49 = type metadata accessor for DetailData(0);
  *(v31 + 56) = v49;
  *(v31 + 64) = sub_24E0EDC24(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
  v50 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
  *(v50 + 25) = 0u;
  v50[27] = 0;
  *(v50 + 23) = 0u;
  v51 = *(v49 + 56);
  v52 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v50 + v51, 1, 1, v52);
  v53 = v50 + *(v49 + 60);
  sub_24DF8BD34(v73, v50);
  *(v50 + 40) = 1;
  v54 = v67;
  v50[6] = v67;
  v50[7] = v43;
  v50[9] = 0;
  v50[10] = 0;
  v50[8] = 0;
  sub_24DF8C8EC(v75, (v50 + 11));
  v50[20] = 0;
  v50[21] = 0;
  *(v50 + 88) = 256;
  *v53 = 0;
  v53[8] = 0;

  sub_24DF8BDF0(v74, (v50 + 23));
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_24E369E30;
  strcpy((v55 + 32), "impressionType");
  *(v55 + 47) = -18;
  *(v55 + 48) = 0x74656C63696863;
  *(v55 + 56) = 0xE700000000000000;
  v56 = MEMORY[0x277D837D0];
  *(v55 + 72) = MEMORY[0x277D837D0];
  *(v55 + 80) = 0x6973736572706D69;
  v57 = MEMORY[0x277D83B88];
  *(v55 + 88) = 0xEF7865646E496E6FLL;
  *(v55 + 96) = 0;
  *(v55 + 120) = v57;
  *(v55 + 128) = 0x657079546469;
  *(v55 + 136) = 0xE600000000000000;
  *(v55 + 144) = 0x636974617473;
  *(v55 + 152) = 0xE600000000000000;
  *(v55 + 168) = v56;
  *(v55 + 176) = 1701667182;
  *(v55 + 216) = v56;
  *(v55 + 184) = 0xE400000000000000;
  *(v55 + 192) = v54;
  *(v55 + 200) = v43;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v58 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v58);
  v59 = v65;
  sub_24E347488();
  sub_24DF8BE60(v73);
  sub_24DF8C95C(v75, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DF8C95C(v74, &qword_27F1DEE90, &unk_24E369E90);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v52);
  sub_24DF8BEB4(v59, v50 + v51);
  sub_24DF8C95C(v66, &qword_27F1DEEA0, qword_24E369EA0);
  (*(v71 + 8))(v62, v72);
  return v31;
}