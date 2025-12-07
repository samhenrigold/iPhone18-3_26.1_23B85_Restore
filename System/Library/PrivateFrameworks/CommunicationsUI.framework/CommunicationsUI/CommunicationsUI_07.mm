void (*SuggestionsView.isExpanded.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1C2D2A418;
}

void sub_1C2D2A418(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_36;
    }

    v7 = *(v2 + 24);
    v8 = 0.0;
    if (v5)
    {
      v8 = 1.0;
    }

    [*(v2 + 24) setAlpha_];
    v9 = [v7 arrangedSubviews];
    sub_1C2C6E1B4(0, &qword_1EC062710, 0x1E69DD250);
    v10 = sub_1C2E75D74();

    if (v10 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1C6927010](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        [v13 setHidden_];

        ++v12;
        if (v15 == i)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    goto LABEL_35;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_36;
  }

  v16 = *(v2 + 24);
  v17 = 0.0;
  if (v5)
  {
    v17 = 1.0;
  }

  [*(v2 + 24) setAlpha_];
  v18 = [v16 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710, 0x1E69DD250);
  v10 = sub_1C2E75D74();

  if (v10 >> 62)
  {
    v19 = sub_1C2E764E4();
    if (v19)
    {
LABEL_20:
      v20 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1C6927010](v20, v10);
        }

        else
        {
          if (v20 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v21 = *(v10 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_29;
        }

        [v21 setHidden_];

        ++v20;
      }

      while (v23 != v19);
    }
  }

  else
  {
    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_20;
    }
  }

LABEL_35:

LABEL_36:

  free(v2);
}

Swift::Void __swiftcall SuggestionsView.setSuggestions(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = [v1 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710, 0x1E69DD250);
  v5 = sub_1C2E75D74();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C6927010](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v31 = MEMORY[0x1E69E7CC0];
  v11 = *(a1._rawValue + 2);
  v12 = v2;
  if (v11)
  {
    v13 = (a1._rawValue + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      v16 = sub_1C2D2AAA0(v14, v15);
      [v12 addArrangedSubview_];
      v17 = [v12 widthAnchor];
      v18 = [v16 widthAnchor];
      v19 = [v17 constraintGreaterThanOrEqualToAnchor_];

      MEMORY[0x1C6926780]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();

      v13 += 2;
      --v11;
    }

    while (v11);
  }

  v20 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670, 0x1E696ACD8);
  v21 = sub_1C2E75D64();
  [v20 activateConstraints_];

  v22 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  swift_beginAccess();
  v23 = 0.0;
  if (*(v12 + v22))
  {
    v23 = 1.0;
  }

  [v12 setAlpha_];
  v24 = [v12 arrangedSubviews];
  v25 = sub_1C2E75D74();

  if (v25 >> 62)
  {
    goto LABEL_33;
  }

  for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1C2E764E4())
  {
    v27 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1C6927010](v27, v25);
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      [v28 setHidden_];

      ++v27;
      if (v30 == j)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:
}

id sub_1C2D2AAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E762B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_1C2E763A4();
  v8 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-v12];
  sub_1C2E76364();
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  sub_1C2E76314();
  v16 = [v14 whiteColor];
  sub_1C2E76324();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC508], v4);
  sub_1C2E762C4();

  sub_1C2E76374();
  v17 = sub_1C2E762D4();
  *v18 = 0x4022000000000000;
  v17(v34, 0);
  v19 = sub_1C2E762D4();
  *(v20 + 8) = 0x4030000000000000;
  v19(v34, 0);
  v21 = sub_1C2E762D4();
  *(v22 + 24) = 0x4030000000000000;
  v21(v34, 0);
  v23 = sub_1C2E762D4();
  *(v24 + 16) = 0x4022000000000000;
  v23(v34, 0);
  type metadata accessor for SuggestionButton();
  v25 = v33;
  (*(v8 + 16))(v10, v13, v33);
  v26 = sub_1C2E763B4();
  sub_1C2D2AEE4();
  sub_1C2C6E1B4(0, &qword_1EC05CA60, 0x1E69DC628);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a1;
  v28[4] = a2;

  v29 = sub_1C2E76264();
  [v26 addAction:v29 forControlEvents:64];

  v30 = v26;
  LODWORD(v31) = 1148846080;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];
  [v30 setOverrideUserInterfaceStyle_];

  (*(v8 + 8))(v13, v25);
  return v30;
}

uint64_t SuggestionsView.addSuggestionHandler(_:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler);
  v6 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler);
  v5 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_1C2C71668(v6, v5);
}

void sub_1C2D2AEE4()
{
  [v0 setClipsToBounds_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v12[0] = xmmword_1C2E82470;
  v12[1] = xmmword_1C2E82480;
  v12[2] = xmmword_1C2E82490;
  v12[3] = xmmword_1C2E824A0;
  v12[4] = xmmword_1C2E7A980;
  v10 = [objc_opt_self() _colorEffectCAMatrix_];
  v11 = [objc_opt_self() effectWithBlurRadius_];
  *&v12[0] = MEMORY[0x1E69E7CC0];
  v2 = v10;
  v3 = v11;
  for (i = 0; i != 2; ++i)
  {
    v5 = v9[i + 4];
    if (v5)
    {
      v6 = v5;
      MEMORY[0x1C6926780]();
      if (*((*&v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v12[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD78, &qword_1C2E82508);
  swift_arrayDestroy();
  sub_1C2C6E1B4(0, &qword_1EC05FD80, 0x1E69DD290);
  v7 = sub_1C2E75D64();

  [v1 setBackgroundEffects_];

  [v1 setUserInteractionEnabled_];
  [v0 insertSubview:v1 atIndex:0];

  v8 = *&v0[OBJC_IVAR____TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton_effectView];
  *&v0[OBJC_IVAR____TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton_effectView] = v1;
}

void sub_1C2D2B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *&Strong[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler];
    if (v8)
    {
      v9 = *&Strong[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler + 8];
      sub_1C2C6EE50(*&Strong[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler], v9);

      v8(a3, a4);
      sub_1C2C71668(v8, v9);
    }

    else
    {
    }
  }
}

id SuggestionsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1C2D2B314()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton_effectView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = [v0 layer];
  [v0 bounds];
  [v3 setCornerRadius_];
}

uint64_t sub_1C2D2B56C()
{
  v1 = *(v0 + 32);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_1C2E764E4();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1C6927010](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    v4 = v3;
    v5 = [objc_opt_self() stringFromContact:v3 style:1000];
    if (!v5)
    {
      v5 = [v4 givenName];
    }

    v6 = v5;
    v7 = sub_1C2E75C64();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t VoicemailDetailNavigationTitleViewModel.__allocating_init(messageSenderHandleString:contacts:isUnknownCaller:location:avatarAction:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 72) = a6;
  *(result + 32) = a3;
  *(result + 40) = a7;
  *(result + 48) = a8;
  return result;
}

uint64_t VoicemailDetailNavigationTitleViewModel.init(messageSenderHandleString:contacts:isUnknownCaller:location:avatarAction:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  return v8;
}

void *VoicemailDetailNavigationTitleViewModel.deinit()
{

  return v0;
}

uint64_t VoicemailDetailNavigationTitleViewModel.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1C2D2B784@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD88, &unk_1C2E82550);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for VoicemailDetailNavigationTitleView(0);
  sub_1C2C736A4(v1 + *(v10 + 28), v9, &qword_1EC05FD88, &unk_1C2E82550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C2C71D5C(v9, a1, &qword_1EC05FDB0, &qword_1C2E82688);
  }

  sub_1C2E75FD4();
  v12 = sub_1C2E74404();
  sub_1C2E72B14();

  sub_1C2E73B94();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t VoicemailDetailNavigationTitleView.init(viewModel:contactLabel:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for VoicemailDetailNavigationTitleView(0);
  v11 = v10[7];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD88, &unk_1C2E82550);
  swift_storeEnumTagMultiPayload();
  *(a5 + v10[8]) = 0x4028000000000000;
  *(a5 + v10[9]) = 0x4040000000000000;
  *(a5 + v10[10]) = 0x404E000000000000;
  *(a5 + v10[11]) = 0xC028000000000000;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return sub_1C2C71D5C(a4, a5 + v10[6], &qword_1EC05EFF8, &qword_1C2E89AC0);
}

uint64_t type metadata accessor for VoicemailDetailNavigationTitleView(uint64_t a1)
{
  result = qword_1EC05BC40;
  if (!qword_1EC05BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VoicemailDetailNavigationTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for VoicemailDetailNavigationTitleView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD90, &qword_1C2E82560);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-v9];
  sub_1C2D2ED14(v2, &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1C2D2F358(&v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for VoicemailDetailNavigationTitleView);
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD98, &qword_1C2E82568);
  sub_1C2C94F38(&qword_1EC05B348, &qword_1EC05FD98, &qword_1C2E82568, MEMORY[0x1E6981870]);
  sub_1C2E751C4();
  sub_1C2C94F38(&qword_1EC05B3A0, &qword_1EC05FD90, &qword_1C2E82560, MEMORY[0x1E697D680]);
  sub_1C2D2EE00();
  sub_1C2E74984();
  (*(v8 + 8))(v10, v7);
  LOBYTE(v7) = sub_1C2E74464();
  sub_1C2D2CB2C();
  sub_1C2E73034();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDA0, &qword_1C2E82570);
  v22 = a1 + *(result + 36);
  *v22 = v7;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1C2D2BD80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1C2E73DC4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE40, &qword_1C2E82A60);
  return sub_1C2D2BDD8(a1, a2 + *(v4 + 44));
}

uint64_t sub_1C2D2BDD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE48, &qword_1C2E82A68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = v53 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE50, &qword_1C2E82A70);
  MEMORY[0x1EEE9AC00](v55);
  v6 = v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE58, &qword_1C2E82A78);
  MEMORY[0x1EEE9AC00](v7);
  v59 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v58 = v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE60, &qword_1C2E82A80);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE68, &qword_1C2E82A88);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v23 = v53 - v21;
  v24 = *a1;
  if (*(*a1 + 56))
  {
    (*(v14 + 56))(v53 - v21, 1, 1, v13, v22);
  }

  else
  {
    v53[0] = v13;
    sub_1C2D2C324(v16);
    *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE70, &qword_1C2E82A90) + 36)] = 0x3FF0000000000000;
    sub_1C2E74F84();
    v25 = sub_1C2E74F74();
    v53[1] = a1;
    v26 = v25;

    v27 = v53[0];
    v28 = &v16[*(v53[0] + 36)];
    *v28 = v26;
    *(v28 + 1) = 0x4014000000000000;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    sub_1C2C71D5C(v16, v23, &qword_1EC05FE60, &qword_1C2E82A80);
    (*(v14 + 56))(v23, 0, 1, v27, v29);
  }

  v30 = v56;
  if (*(v24 + 56) == 1)
  {
    v31 = *(v24 + 16);
    v32 = *(v24 + 24);

    v33 = v31;
  }

  else
  {
    v33 = sub_1C2D2B56C();
    v32 = v34;
  }

  sub_1C2D2C7D4(v33, v32, v30);

  v35 = sub_1C2E74464();
  if ((*(v24 + 56) & 1) == 0)
  {
    type metadata accessor for VoicemailDetailNavigationTitleView(0);
  }

  sub_1C2E73034();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_1C2C71D5C(v30, v6, &qword_1EC05FE48, &qword_1C2E82A68);
  v44 = &v6[*(v55 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  sub_1C2E74F84();
  v45 = sub_1C2E74F74();

  v46 = v57;
  sub_1C2C71D5C(v6, v57, &qword_1EC05FE50, &qword_1C2E82A70);
  v47 = (v46 + *(v7 + 36));
  *v47 = v45;
  v47[1] = 0x4020000000000000;
  v47[2] = 0;
  v47[3] = 0;
  v48 = v58;
  sub_1C2C71D5C(v46, v58, &qword_1EC05FE58, &qword_1C2E82A78);
  sub_1C2C736A4(v23, v19, &qword_1EC05FE68, &qword_1C2E82A88);
  v49 = v59;
  sub_1C2C736A4(v48, v59, &qword_1EC05FE58, &qword_1C2E82A78);
  v50 = v54;
  sub_1C2C736A4(v19, v54, &qword_1EC05FE68, &qword_1C2E82A88);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE78, &qword_1C2E82A98);
  sub_1C2C736A4(v49, v50 + *(v51 + 48), &qword_1EC05FE58, &qword_1C2E82A78);
  sub_1C2C73644(v48, &qword_1EC05FE58, &qword_1C2E82A78);
  sub_1C2C73644(v23, &qword_1EC05FE68, &qword_1C2E82A88);
  sub_1C2C73644(v49, &qword_1EC05FE58, &qword_1C2E82A78);
  return sub_1C2C73644(v19, &qword_1EC05FE68, &qword_1C2E82A88);
}

void *sub_1C2D2C324@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = sub_1C2E718A4();
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E71514();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEC8, &qword_1C2E82AE8);
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v33 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FED0, &unk_1C2E82AF0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v33 - v11;
  v12 = *v1;
  v13 = *(*v1 + 32);
  if (v13 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C2E7A720;
  *(v14 + 32) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
LABEL_6:
  sub_1C2E71504();
  v15 = *(v12 + 32);
  v38 = v9;
  if (v15 >> 62)
  {
    v16 = sub_1C2E764E4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
LABEL_18:
    v29 = v42;
    (*(v41 + 32))(v42, v38, v7);
    *(v29 + *(v37 + 52)) = v17;
    type metadata accessor for VoicemailDetailNavigationTitleView(0);
    sub_1C2E75744();
    sub_1C2E73274();
    v30 = v40;
    sub_1C2C71D5C(v29, v40, &qword_1EC05FEC8, &qword_1C2E82AE8);
    v31 = (v30 + *(v39 + 36));
    v32 = v46;
    *v31 = v45;
    v31[1] = v32;
    v31[2] = v47;
    return sub_1C2C71D5C(v30, a1, &qword_1EC05FED0, &unk_1C2E82AF0);
  }

  *&v45 = MEMORY[0x1E69E7CC0];

  result = sub_1C2C7F4A8(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v43 = v16;
    v34 = v7;
    v35 = v2;
    v36 = a1;
    v19 = 0;
    v17 = v45;
    v20 = v15 & 0xC000000000000001;
    v21 = v15;
    v22 = v15;
    do
    {
      if (v20)
      {
        v23 = MEMORY[0x1C6927010](v19, v21);
      }

      else
      {
        v23 = *(v21 + 8 * v19 + 32);
      }

      v24 = v23;
      v25 = [v24 id];
      sub_1C2E71884();

      *&v45 = v17;
      v26 = v6;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C2C7F4A8((v27 > 1), v28 + 1, 1);
        v17 = v45;
      }

      ++v19;
      *(v17 + 16) = v28 + 1;
      (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v26, v44);
      v6 = v26;
      v21 = v22;
    }

    while (v43 != v19);

    a1 = v36;
    v7 = v34;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2D2C7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE80, &qword_1C2E82AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE88, &qword_1C2E82AA8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE90, &qword_1C2E82AB0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  *v9 = sub_1C2E73DC4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE98, &qword_1C2E82AB8);
  sub_1C2D2D004(a1, a2, v3, &v9[*(v16 + 44)]);
  type metadata accessor for VoicemailDetailNavigationTitleView(0);
  sub_1C2E75744();
  sub_1C2E737F4();
  sub_1C2C71D5C(v9, v12, &qword_1EC05FE80, &qword_1C2E82AA0);
  v17 = &v12[*(v10 + 36)];
  v18 = v40;
  *(v17 + 4) = v39;
  *(v17 + 5) = v18;
  *(v17 + 6) = v41;
  v19 = v36;
  *v17 = v35;
  *(v17 + 1) = v19;
  v20 = v38;
  *(v17 + 2) = v37;
  *(v17 + 3) = v20;
  LOBYTE(v9) = sub_1C2E744B4();
  v21 = *v3;
  sub_1C2E73034();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1C2C71D5C(v12, v15, &qword_1EC05FE88, &qword_1C2E82AA8);
  v30 = &v15[*(v13 + 36)];
  *v30 = v9;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = *(v21 + 56) != 1 || !*(v21 + 72);
  sub_1C2C71D5C(v15, a3, &qword_1EC05FE90, &qword_1C2E82AB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE48, &qword_1C2E82A68);
  v33 = a3 + *(result + 36);
  *v33 = 0x4032000000000000;
  *(v33 + 8) = v31;
  return result;
}

double sub_1C2D2CB2C()
{
  v0 = sub_1C2E74134();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE38, &qword_1C2E82A58);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDB0, &qword_1C2E82688);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v26 = objc_opt_self();
  v15 = [v26 currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    return 44.0;
  }

  sub_1C2D2B784(v14);
  (*(v1 + 104))(v11, *MEMORY[0x1E697FF38], v0);
  (*(v1 + 56))(v11, 0, 1, v0);
  v18 = *(v3 + 48);
  sub_1C2C736A4(v14, v5, &qword_1EC05FDB0, &qword_1C2E82688);
  sub_1C2C736A4(v11, &v5[v18], &qword_1EC05FDB0, &qword_1C2E82688);
  v19 = *(v1 + 48);
  if (v19(v5, 1, v0) == 1)
  {
    sub_1C2C73644(v11, &qword_1EC05FDB0, &qword_1C2E82688);
    sub_1C2C73644(v14, &qword_1EC05FDB0, &qword_1C2E82688);
    if (v19(&v5[v18], 1, v0) == 1)
    {
      sub_1C2C73644(v5, &qword_1EC05FDB0, &qword_1C2E82688);
      return 5.0;
    }
  }

  else
  {
    sub_1C2C736A4(v5, v8, &qword_1EC05FDB0, &qword_1C2E82688);
    if (v19(&v5[v18], 1, v0) != 1)
    {
      v22 = v25;
      (*(v1 + 32))(v25, &v5[v18], v0);
      sub_1C2D2FDE8(&qword_1EC05B488, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v23 = sub_1C2E75BA4();
      v24 = *(v1 + 8);
      v24(v22, v0);
      sub_1C2C73644(v11, &qword_1EC05FDB0, &qword_1C2E82688);
      sub_1C2C73644(v14, &qword_1EC05FDB0, &qword_1C2E82688);
      v24(v8, v0);
      sub_1C2C73644(v5, &qword_1EC05FDB0, &qword_1C2E82688);
      result = 5.0;
      if (v23)
      {
        return result;
      }

      goto LABEL_9;
    }

    sub_1C2C73644(v11, &qword_1EC05FDB0, &qword_1C2E82688);
    sub_1C2C73644(v14, &qword_1EC05FDB0, &qword_1C2E82688);
    (*(v1 + 8))(v8, v0);
  }

  sub_1C2C73644(v5, &qword_1EC05FE38, &qword_1C2E82A58);
LABEL_9:
  v20 = [v26 currentDevice];
  v21 = [v20 userInterfaceIdiom];

  result = 36.0;
  if (v21 == 1)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1C2D2D004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEA0, &qword_1C2E82AC0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  v72 = a1;
  v73 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEA8, &qword_1C2E82AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEB0, &qword_1C2E82AD0);
  sub_1C2D2F6F0();
  sub_1C2D2F7D0();
  sub_1C2E750E4();
  LOBYTE(a2) = sub_1C2E74444();
  type metadata accessor for VoicemailDetailNavigationTitleView(0);
  sub_1C2E73034();
  v14 = &v13[*(v8 + 44)];
  *v14 = a2;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  v19 = *a3;
  v20 = *(*a3 + 56);
  v21 = 0;
  v71 = v10;
  if (v20 == 1 && (v22 = *(v19 + 72)) != 0)
  {
    v82 = *(v19 + 64);
    v83 = v22;
    sub_1C2C74960();

    v23 = sub_1C2E748A4();
    v25 = v24;
    v27 = v26;
    sub_1C2E744F4();
    v28 = sub_1C2E747F4();
    v65 = v13;
    v30 = v29;
    v32 = v31;

    sub_1C2C72340(v23, v25, v27 & 1);

    LODWORD(v82) = sub_1C2E740F4();
    v33 = sub_1C2E74794();
    v68 = v34;
    v69 = v33;
    v36 = v35;
    v66 = v37;
    v38 = v30;
    v13 = v65;
    sub_1C2C72340(v28, v38, v32 & 1);

    KeyPath = swift_getKeyPath();
    v39 = sub_1C2E74444();
    sub_1C2E73034();
    v21 = v40;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    LOBYTE(v82) = v36 & 1;
    LOBYTE(v75) = 0;
    v74 = 0;
    v47 = v36 & 1;
    v48 = v39;
    v10 = v71;
    v49 = 1;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v66 = 0;
    KeyPath = 0;
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v42 = 0;
    v44 = 0;
    v46 = 0;
  }

  sub_1C2C736A4(v13, v10, &qword_1EC05FEA0, &qword_1C2E82AC0);
  v50 = v70;
  sub_1C2C736A4(v10, v70, &qword_1EC05FEA0, &qword_1C2E82AC0);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEB8, &qword_1C2E82AD8) + 48);
  v53 = v68;
  v52 = v69;
  *&v75 = v69;
  *(&v75 + 1) = v68;
  v54 = v47;
  v56 = v66;
  v55 = KeyPath;
  *&v76 = v47;
  *(&v76 + 1) = v66;
  *&v77 = KeyPath;
  *(&v77 + 1) = v49;
  v57 = v49;
  *&v78 = 0;
  *(&v78 + 1) = v48;
  *&v79 = v21;
  *(&v79 + 1) = v42;
  *&v80 = v44;
  *(&v80 + 1) = v46;
  v81 = 0;
  *(v51 + 96) = 0;
  v58 = v76;
  *v51 = v75;
  *(v51 + 16) = v58;
  v59 = v78;
  *(v51 + 32) = v77;
  *(v51 + 48) = v59;
  v60 = v80;
  *(v51 + 64) = v79;
  *(v51 + 80) = v60;
  v61 = v52;
  v62 = v53;
  sub_1C2C736A4(&v75, &v82, &qword_1EC05FEC0, &qword_1C2E82AE0);
  sub_1C2C73644(v13, &qword_1EC05FEA0, &qword_1C2E82AC0);
  v82 = v61;
  v83 = v62;
  v84 = v54;
  v85 = v56;
  v86 = v55;
  v87 = v57;
  v88 = 0;
  v89 = v48;
  v90 = v21;
  v91 = v42;
  v92 = v44;
  v93 = v46;
  v94 = 0;
  sub_1C2C73644(&v82, &qword_1EC05FEC0, &qword_1C2E82AE0);
  return sub_1C2C73644(v71, &qword_1EC05FEA0, &qword_1C2E82AC0);
}

uint64_t sub_1C2D2D454@<X0>(uint64_t a3@<X8>)
{
  sub_1C2C74960();

  result = sub_1C2E748A4();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0x3FEA3D70A3D70A3DLL;
  return result;
}

uint64_t sub_1C2D2D4D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E75044();
  *a1 = result;
  return result;
}

uint64_t sub_1C2D2D514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDF8, &qword_1C2E82940);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE00, &qword_1C2E82948);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE08, &unk_1C2E82950) + 36)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0, &unk_1C2E7B640) + 28);
  v11 = *MEMORY[0x1E69816C8];
  v12 = sub_1C2E750B4();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE10, &unk_1C2E82990);
  (*(*(v13 - 8) + 16))(v4, a1, v13);
  *&v4[*(v2 + 36)] = sub_1C2E740F4();
  sub_1C2E74574();
  v14 = sub_1C2D2F468();
  sub_1C2E74934();
  sub_1C2C73644(v4, &qword_1EC05FDF8, &qword_1C2E82940);
  v16[0] = v2;
  v16[1] = v14;
  swift_getOpaqueTypeConformance2();
  sub_1C2E74A44();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2D2D7A8@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1C2E74154();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1C2E74174();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1C2E74184();
  sub_1C2E74164();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEE8, &qword_1C2E82BE0) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_1C2D2DA38@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1C2E73C24();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEE0, &qword_1C2E82BD8);
  return sub_1C2D2D7A8((a2 + *(v3 + 44)));
}

uint64_t sub_1C2D2DA90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDF0, &qword_1C2E82938);
  sub_1C2C94F38(&qword_1EC05B4A8, &qword_1EC05FDF0, &qword_1C2E82938, MEMORY[0x1E697FDF8]);
  sub_1C2D2F414();
  return sub_1C2E74954();
}

uint64_t sub_1C2D2DB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE18, &qword_1C2E829A0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = sub_1C2E74514();
  KeyPath = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE20, &unk_1C2E829D8);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v9;
  sub_1C2E74554();
  sub_1C2D2F604();
  sub_1C2E74934();
  sub_1C2C73644(v8, &qword_1EC05FE18, &qword_1C2E829A0);
  v13 = swift_getKeyPath();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE28, &qword_1C2E82A18) + 36);
  *v14 = v13;
  *(v14 + 8) = 1;
  *(v14 + 16) = 0;
  v15 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FE30, &qword_1C2E82A50);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = a3;
  return result;
}

uint64_t sub_1C2D2DCF0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v39 = a1;
  v40 = a3;
  v6 = sub_1C2E737C4();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v37 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v37 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDC0, &qword_1C2E828D8);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDC8, &qword_1C2E828E0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v37 - v18;
  if (a2)
  {
    a4 = 200.0;
  }

  v19 = *(v7 + 28);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1C2E73D44();
  v22 = *(*(v21 - 8) + 104);
  v22(v11 + v19, v20, v21);
  *v11 = a4;
  v11[1] = a4;
  v23 = &v15[*(v13 + 44)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDD0, &qword_1C2E828E8);
  v25 = MEMORY[0x1E697EAF0];
  sub_1C2D2F358(v11, &v23[*(v24 + 36)], MEMORY[0x1E697EAF0]);
  *v23 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDD8, &unk_1C2E828F0);
  (*(*(v26 - 8) + 16))(v15, v39, v26);
  v27 = *(v7 + 28);
  v28 = v37;
  v22(v37 + v27, v20, v21);
  *v28 = a4;
  v28[1] = a4;
  v29 = v38;
  v30 = &v38[*(v17 + 44)];
  sub_1C2D2F358(v28, v30, v25);
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDE0, &qword_1C2E931A0) + 36)) = 256;
  sub_1C2C71D5C(v15, v29, &qword_1EC05FDC0, &qword_1C2E828D8);
  v31 = sub_1C2E74F84();
  KeyPath = swift_getKeyPath();
  v33 = v29;
  v34 = v40;
  sub_1C2C71D5C(v33, v40, &qword_1EC05FDC8, &qword_1C2E828E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDE8, &qword_1C2E82930);
  v36 = (v34 + *(result + 36));
  *v36 = KeyPath;
  v36[1] = v31;
  return result;
}

uint64_t sub_1C2D2E02C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E741B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E741C4();
  if (sub_1C2E741D4())
  {
    v6 = 0.4;
  }

  else
  {
    v6 = 1.0;
  }

  (*(v3 + 32))(a1, v5, v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDB8, &qword_1C2E828D0);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_1C2D2E13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[2] = a1;
  v22[3] = a3;
  swift_getWitnessTable();
  v5 = sub_1C2E74094();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v5;
  v30 = MEMORY[0x1E6981CD8];
  v31 = OpaqueTypeMetadata2;
  v32 = OpaqueTypeMetadata2;
  v33 = WitnessTable;
  v34 = MEMORY[0x1E6981CD0];
  v35 = OpaqueTypeConformance2;
  v36 = OpaqueTypeConformance2;
  v22[1] = MEMORY[0x1E6981460];
  v9 = swift_getOpaqueTypeMetadata2();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  sub_1C2E756E4();
  v16 = *(a2 + 24);
  v26 = *(a2 + 16);
  v27 = v16;
  v28 = v3;
  v23 = v26;
  v24 = v16;
  v25 = v3;
  v17 = swift_checkMetadataState();
  v18 = swift_checkMetadataState();
  v19 = MEMORY[0x1E6981CD8];
  sub_1C2E74E04();
  v29 = v17;
  v30 = v19;
  v31 = v18;
  v32 = v18;
  v33 = WitnessTable;
  v34 = MEMORY[0x1E6981CD0];
  v35 = OpaqueTypeConformance2;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1C2C6EE48(v12);
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_1C2C6EE48(v15);
  return (v20)(v15, v9);
}

uint64_t sub_1C2D2E424@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v45 = a1;
  v46 = a5;
  v42 = sub_1C2E755F4();
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  v14 = sub_1C2E756D4();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = type metadata accessor for GlassPlatterModifier(255, a3, a4, v17);
  swift_getWitnessTable();
  v18 = sub_1C2E74094();
  WitnessTable = swift_getWitnessTable();
  v47 = v18;
  v48 = WitnessTable;
  v37 = WitnessTable;
  v38 = MEMORY[0x1E6981290];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v36 - v24;
  sub_1C2E755C4();
  sub_1C2E755A4();
  v26 = *(v8 + 8);
  v27 = v10;
  v28 = v42;
  v26(v27, v42);
  sub_1C2E75624();
  v26(v13, v28);
  v29 = *(swift_checkMetadataState() + 36);
  v30 = swift_checkMetadataState();
  v31 = v16;
  v32 = v16;
  v33 = v37;
  sub_1C2D2E7C8(v32, &a2[v29], v30, v40, v37, v41);
  (*(v43 + 8))(v31, v44);
  v47 = v30;
  v48 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1C2C6EE48(v22);
  v34 = *(v39 + 8);
  v34(v22, OpaqueTypeMetadata2);
  sub_1C2C6EE48(v25);
  return (v34)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_1C2D2E7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[2] = a5;
  v17[0] = a1;
  v17[1] = a3;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C2E75924();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEF0, &qword_1C2E82BE8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C2E7A930;
  (*(v8 + 16))(v10, a2, a4);
  *(v15 + 32) = sub_1C2E754A4();
  sub_1C2E75914();
  sub_1C2E74A64();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1C2D2E9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v27 = a2;
  v29 = a1;
  v30 = a5;
  v28 = sub_1C2E756D4();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GlassPlatterModifier(255, a3, a4, v9);
  swift_getWitnessTable();
  v10 = sub_1C2E74094();
  WitnessTable = swift_getWitnessTable();
  v31 = v10;
  v32 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  sub_1C2E75604();
  v19 = *(swift_checkMetadataState() + 36);
  v20 = swift_checkMetadataState();
  sub_1C2D2E7C8(v8, v27 + v19, v20, v24, WitnessTable, v25);
  (*(v26 + 8))(v8, v28);
  v31 = v20;
  v32 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_1C2C6EE48(v15);
  v21 = *(v13 + 8);
  v21(v15, OpaqueTypeMetadata2);
  sub_1C2C6EE48(v18);
  return (v21)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_1C2D2EC6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDB0, &qword_1C2E82688);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C2C736A4(a1, &v5 - v3, &qword_1EC05FDB0, &qword_1C2E82688);
  return sub_1C2E73A24();
}

uint64_t sub_1C2D2ED14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailDetailNavigationTitleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C2D2ED78()
{
  v1 = *(type metadata accessor for VoicemailDetailNavigationTitleView(0) - 8);
  v2 = *(*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80))) + 40);

  v2(v3);

  return result;
}

unint64_t sub_1C2D2EE00()
{
  result = qword_1EC05C130;
  if (!qword_1EC05C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C130);
  }

  return result;
}

void sub_1C2D2EF0C(uint64_t a1)
{
  type metadata accessor for VoicemailDetailNavigationTitleViewModel();
  sub_1C2D2EFC8();
  if (v1 <= 0x3F)
  {
    sub_1C2D2F018(319);
    if (v2 <= 0x3F)
    {
      sub_1C2D2F070(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2D2EFC8()
{
  if (!qword_1EC05B2D0)
  {
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05B2D0);
    }
  }
}

void sub_1C2D2F018(uint64_t a1)
{
  if (!qword_1EC05CA30)
  {
    sub_1C2E71844();
    v1 = sub_1C2E76424();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05CA30);
    }
  }
}

void sub_1C2D2F070(uint64_t a1)
{
  if (!qword_1EC05BAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDB0, &qword_1C2E82688);
    v1 = sub_1C2E730F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05BAA0);
    }
  }
}

unint64_t sub_1C2D2F0D4()
{
  result = qword_1EC05B8A8;
  if (!qword_1EC05B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDA0, &qword_1C2E82570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FD90, &qword_1C2E82560);
    sub_1C2C94F38(&qword_1EC05B3A0, &qword_1EC05FD90, &qword_1C2E82560, MEMORY[0x1E697D680]);
    sub_1C2D2EE00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolBarButtonViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolBarButtonViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C2D2F358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C2D2F414()
{
  result = qword_1EC05BD00;
  if (!qword_1EC05BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD00);
  }

  return result;
}

unint64_t sub_1C2D2F468()
{
  result = qword_1EC05B7A8;
  if (!qword_1EC05B7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDF8, &qword_1C2E82940);
    sub_1C2D2F520();
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548, &qword_1C2E83180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7A8);
  }

  return result;
}

unint64_t sub_1C2D2F520()
{
  result = qword_1EC05B938;
  if (!qword_1EC05B938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FE08, &unk_1C2E82950);
    sub_1C2C94F38(&qword_1EC05B4B8, &qword_1EC05FE10, &unk_1C2E82990, MEMORY[0x1E697FDF8]);
    sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0, &unk_1C2E7B640, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B938);
  }

  return result;
}

unint64_t sub_1C2D2F604()
{
  result = qword_1EC05B958;
  if (!qword_1EC05B958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FE18, &qword_1C2E829A0);
    sub_1C2C94F38(&qword_1EC05B4D8, &qword_1EC05FE20, &unk_1C2E829D8, MEMORY[0x1E697FDF8]);
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B958);
  }

  return result;
}

unint64_t sub_1C2D2F6F0()
{
  result = qword_1EC05B8F8;
  if (!qword_1EC05B8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FEA8, &qword_1C2E82AC8);
    sub_1C2D2F77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8F8);
  }

  return result;
}

unint64_t sub_1C2D2F77C()
{
  result = qword_1EC05BEA0;
  if (!qword_1EC05BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BEA0);
  }

  return result;
}

unint64_t sub_1C2D2F7D0()
{
  result = qword_1EC05B870;
  if (!qword_1EC05B870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FEB0, &qword_1C2E82AD0);
    sub_1C2D2F85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B870);
  }

  return result;
}

unint64_t sub_1C2D2F85C()
{
  result = qword_1EC05BD30;
  if (!qword_1EC05BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD30);
  }

  return result;
}

uint64_t sub_1C2D2F8B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C2D2F930(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
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
        LODWORD(v9) = *a1 | (a1[2] << 16);
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

void sub_1C2D2FABC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

unint64_t sub_1C2D2FD2C()
{
  result = qword_1EC05B908;
  if (!qword_1EC05B908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDB8, &qword_1C2E828D0);
    sub_1C2D2FDE8(&qword_1EC05CB20, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B908);
  }

  return result;
}

uint64_t sub_1C2D2FDE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C2D2FE30()
{
  result = qword_1EC05B6D8;
  if (!qword_1EC05B6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDE8, &qword_1C2E82930);
    sub_1C2D2FEE8();
    sub_1C2C94F38(&qword_1EC05CB00, &qword_1EC05DD80, &qword_1C2E7B840, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B6D8);
  }

  return result;
}

unint64_t sub_1C2D2FEE8()
{
  result = qword_1EC05B7B8;
  if (!qword_1EC05B7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDC8, &qword_1C2E828E0);
    sub_1C2D2FFA0();
    sub_1C2C94F38(&qword_1EC05BA80, &qword_1EC05FDE0, &qword_1C2E931A0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7B8);
  }

  return result;
}

unint64_t sub_1C2D2FFA0()
{
  result = qword_1EC05B948;
  if (!qword_1EC05B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDC0, &qword_1C2E828D8);
    sub_1C2C94F38(&qword_1EC05B4C8, &qword_1EC05FDD8, &unk_1C2E828F0, MEMORY[0x1E697FDF8]);
    sub_1C2C94F38(qword_1EC05C140, &qword_1EC05FDD0, &qword_1C2E828E8, &unk_1C2E82B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B948);
  }

  return result;
}

unint64_t sub_1C2D30084()
{
  result = qword_1EC05B758;
  if (!qword_1EC05B758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FE30, &qword_1C2E82A50);
    sub_1C2D3013C();
    sub_1C2C94F38(&qword_1EC05CB10, &qword_1EC05FED8, &qword_1C2E85890, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B758);
  }

  return result;
}

unint64_t sub_1C2D3013C()
{
  result = qword_1EC05B8D8;
  if (!qword_1EC05B8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FE28, &qword_1C2E82A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FE18, &qword_1C2E829A0);
    sub_1C2D2F604();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570, &qword_1C2E80140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8D8);
  }

  return result;
}

uint64_t sub_1C2D302A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C2D302F0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C2D3035C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1C2E73174();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v63 = (v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1C2E73184();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = (v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_1C2E73194();
  v65 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF20, &qword_1C2E82DE0);
  MEMORY[0x1EEE9AC00](v69);
  v70 = (v56 - v13);
  v14 = sub_1C2E75524();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v57 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = v56 - v17;
  v76 = a2;
  v77 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF00, &qword_1C2E82D98);
  sub_1C2E75184();
  v18 = *(v74 + 16);

  if (v18)
  {
    v76 = a2;
    v77 = a3;
    sub_1C2E75184();
    a1 = v74;
  }

  else
  {
  }

  v19 = *(a1 + 16);
  if (v19 == 1)
  {
    v20 = *(a1 + 32);

    v76 = a2;
    v77 = a3;
    sub_1C2E75184();
    v21 = *(v74 + 16);

    if (v21)
    {
      v22 = [objc_opt_self() systemBackgroundColor];
      sub_1C2E74E94();
      v23 = v66;
      sub_1C2E75504();
      v24 = sub_1C2E74EE4();

      (*(v67 + 8))(v23, v68);
      v74 = v24;
      v75 = 1;
    }

    else
    {
      v74 = v20;
      v75 = 0;
    }

    sub_1C2E73F44();
    v44 = v77;
    v45 = v70;
    *v70 = v76;
    *(v45 + 8) = v44;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF30, &unk_1C2E82DF0);
    sub_1C2D328E4();
    sub_1C2D32E74(&qword_1EC05CBE8, MEMORY[0x1E697DE90], MEMORY[0x1E697DE88]);
    sub_1C2E73F44();
  }

  else
  {
    if (v19 >= 4)
    {
      sub_1C2D3280C(a1, a1 + 32, 0, 7uLL);
      v26 = v25;

      a1 = v26;
    }

    v56[1] = a4;
    v27 = sub_1C2D30C74(5, a1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF28, &qword_1C2E82DE8);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C2E82C00;
    *(v28 + 32) = 0;
    *(v28 + 40) = 1048576000;
    *(v28 + 48) = 1056964608;
    *(v28 + 56) = 1061158912;
    *(v28 + 64) = 1065353216;
    *(v28 + 72) = 0x3DEAB72ABB23065ELL;
    *(v28 + 80) = 0x3E4B46E23E7D73E7;
    *(v28 + 88) = 0x3E818FEA3EFEB9F3;
    *(v28 + 96) = 0x3E60C1B53F406CAFLL;
    *(v28 + 104) = 0x3DEAB72A3F7F5CFALL;
    *(v28 + 112) = 0x3F00000000000000;
    *(v28 + 120) = 0x3F0000003E800000;
    *(v28 + 128) = 0x3F0000003F000000;
    *(v28 + 136) = 0x3F0000003F400000;
    *(v28 + 144) = 0x3F0000003F800000;
    *(v28 + 152) = 0x3F61C82780000000;
    *(v28 + 160) = 0x3F3FB5043E800000;
    *(v28 + 168) = 0x3F2EE9EF3F000000;
    *(v28 + 176) = 0x3F3B50423F400000;
    *(v28 + 184) = 0x3F61C8273F800000;
    *(v28 + 192) = 0x3F80000000000000;
    *(v28 + 200) = 0x3F8000003E800000;
    *(v28 + 208) = 0x3F8000003F000000;
    __asm { FMOV            V1.2S, #1.0 }

    *(v28 + 216) = 0x3F8000003F400000;
    *(v28 + 224) = _D1;
    v56[0] = v28;
    v73 = *(v27 + 16);
    if (v73)
    {
      v34 = 0;
      v72 = v27 + 32;
      v35 = MEMORY[0x1E69E7CC0];
      v36 = MEMORY[0x1E69815C0];
      while (v34 < *(v27 + 16))
      {
        v37 = *(v72 + 8 * v34);

        v38 = v36;
        v39 = sub_1C2E75DA4();
        v39[2] = 5;
        v39[4] = v37;
        v39[5] = v37;
        v39[6] = v37;
        v39[7] = v37;
        v39[8] = v37;
        v40 = *(v35 + 16);
        v41 = __OFADD__(v40, 5);
        swift_retain_n();
        if (v41)
        {
          goto LABEL_30;
        }

        swift_retain_n();
        if (!swift_isUniquelyReferenced_nonNull_native() || v40 + 5 > *(v35 + 24) >> 1)
        {
          v35 = sub_1C2E765F4();
        }

        if (!v39[2])
        {
          goto LABEL_33;
        }

        if (((*(v35 + 24) >> 1) - *(v35 + 16)) < 5)
        {
          goto LABEL_31;
        }

        v36 = v38;
        swift_arrayInitWithCopy();

        v42 = *(v35 + 16);
        _VF = __OFADD__(v42, 5);
        v43 = v42 + 5;
        if (_VF)
        {
          goto LABEL_32;
        }

        ++v34;
        *(v35 + 16) = v43;
        if (v73 == v34)
        {
          goto LABEL_27;
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

      __break(1u);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
LABEL_27:

      sub_1C2E74F44();
      v46 = v66;
      sub_1C2E75514();
      v47 = v59;
      v48 = v60;
      *v60 = v56[0];
      (*(v58 + 104))(v48, *MEMORY[0x1E697DE80], v47);
      v49 = v62;
      v50 = v63;
      *v63 = v35;
      (*(v61 + 104))(v50, *MEMORY[0x1E697DE78], v49);
      v52 = v67;
      v51 = v68;
      (*(v67 + 16))(v57, v46, v68);
      v53 = v64;
      sub_1C2E73164();
      (*(v52 + 8))(v46, v51);
      v54 = v65;
      v55 = v71;
      (*(v65 + 16))(v70, v53, v71);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF30, &unk_1C2E82DF0);
      sub_1C2D328E4();
      sub_1C2D32E74(&qword_1EC05CBE8, MEMORY[0x1E697DE90], MEMORY[0x1E697DE88]);
      sub_1C2E73F44();
      (*(v54 + 8))(v53, v55);
    }
  }
}

uint64_t sub_1C2D30C74(uint64_t a1, uint64_t a2)
{
  v13 = sub_1C2E75524();
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7 < 2 || a1 < 2)
  {

    return a2;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1C2E76634();
    v10 = 0;
    while (1)
    {
      v11 = v10 / (a1 - 1) * (v7 - 1);
      if (COERCE__INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_18;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_19;
      }

      v12 = v11;
      if ((v7 - 2) < v11)
      {
        v12 = v7 - 2;
      }

      if (v12 < 0)
      {
        goto LABEL_20;
      }

      if (v12 + 1 >= v7)
      {
        goto LABEL_21;
      }

      ++v10;

      sub_1C2E75504();
      sub_1C2E74EE4();

      (*(v4 + 8))(v6, v13);
      sub_1C2E76614();
      sub_1C2E76644();
      sub_1C2E76654();
      result = sub_1C2E76624();
      if (a1 == v10)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2D30EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560, &qword_1C2E7A890);
  v4[6] = swift_task_alloc();
  sub_1C2E75E34();
  v4[7] = sub_1C2E75E24();
  v6 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2D30F84, v6, v5);
}

uint64_t sub_1C2D30F84()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  sub_1C2E75E44();
  v6 = sub_1C2E75E74();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v2;
  v7[7] = v3;

  sub_1C2D3219C(0, 0, v1, &unk_1C2E82DD0, v7);

  sub_1C2C73644(v1, &unk_1EC064560, &qword_1C2E7A890);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1C2D310D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[20] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C2D310F8, 0, 0);
}

uint64_t sub_1C2D310F8()
{
  *(v0 + 184) = sub_1C2E75E34();
  *(v0 + 192) = sub_1C2E75E24();
  v2 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2D31190, v2, v1);
}

uint64_t sub_1C2D31190()
{
  v1 = v0[21];
  v2 = v0[22];

  v0[10] = v1;
  v0[11] = v2;

  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF00, &qword_1C2E82D98);
  sub_1C2E75184();
  v0[26] = v0[18];

  return MEMORY[0x1EEE6DFA0](sub_1C2D31248, 0, 0);
}

uint64_t sub_1C2D31248()
{
  v2 = v0[20];
  v3 = *(v0[26] + 16);

  if (v2 >> 62)
  {
    if (v3 < sub_1C2E764E4())
    {
      v0[18] = MEMORY[0x1E69E7CC0];
      v4 = sub_1C2E764E4();
      v0[27] = v4;
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < v4)
    {
      v0[18] = MEMORY[0x1E69E7CC0];
      v0[27] = v4;
      if (v4)
      {
LABEL_4:
        v5 = objc_opt_self();
        v0[28] = v5;
        if (v4 >= 1)
        {
          v6 = v0[20];
          v7 = MEMORY[0x1E69E7CC0];
          v0[29] = 0;
          v0[30] = v7;
          if ((v6 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1C6927010](0);
            v9 = v0[28];
          }

          else
          {
            v9 = v5;
            v8 = *(v6 + 32);
          }

          v0[31] = v8;
          v0[2] = v0;
          v0[7] = v0 + 19;
          v0[3] = sub_1C2D315E8;
          v10 = swift_continuation_init();
          v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF18, &qword_1C2E82DD8);
          v0[10] = MEMORY[0x1E69E9820];
          v0[11] = 1107296256;
          v0[12] = sub_1C2D320BC;
          v0[13] = &block_descriptor_7;
          v0[14] = v10;
          [v9 fetchTintedAvatarColorsForContact:v8 completionHandler:v0 + 10];
          v11 = (v0 + 2);

          return MEMORY[0x1EEE6DEC8](v11);
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_13:
      v4 = MEMORY[0x1E69E7CC0];
      v1 = MEMORY[0x1E69E7CC0] >> 62;
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        v12 = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
LABEL_27:
          v17 = MEMORY[0x1E69E7CC0];

LABEL_28:
          v0[33] = v17;
          v0[34] = sub_1C2E75E24();
          v19 = sub_1C2E75DD4();

          return MEMORY[0x1EEE6DFA0](sub_1C2D31BB8, v19, v18);
        }

LABEL_15:
        v11 = sub_1C2E76634();
        if (v12 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v11);
        }

        v13 = 0;
        do
        {
          if (v1)
          {
            MEMORY[0x1C6927010](v13, v4);
          }

          else
          {
            v14 = *(v4 + 8 * v13 + 32);
          }

          ++v13;
          sub_1C2E74E94();
          sub_1C2E76614();
          sub_1C2E76644();
          sub_1C2E76654();
          sub_1C2E76624();
        }

        while (v12 != v13);

        v17 = v4;
        goto LABEL_28;
      }

LABEL_26:
      v12 = sub_1C2E764E4();
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_15;
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1C2D315E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1C2D31C7C;
  }

  else
  {
    v2 = sub_1C2D316F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C2D316F8()
{
  v1 = v0[19];
  if (v1 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_3;
    }

LABEL_10:

    if (qword_1EC05CC40 != -1)
    {
      swift_once();
    }

    v7 = v0[31];
    v8 = sub_1C2E72B44();
    __swift_project_value_buffer(v8, qword_1EC075A30);
    v9 = v7;
    v10 = sub_1C2E72B24();
    v11 = sub_1C2E75FC4();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[31];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&dword_1C2C6B000, v10, v11, "Failed to find colors for contact: %@", v14, 0xCu);
      sub_1C2C73644(v15, &unk_1EC062DD0, &qword_1C2E7C890);
      MEMORY[0x1C6927DF0](v15, -1, -1);
      MEMORY[0x1C6927DF0](v14, -1, -1);
    }

    else
    {
    }

    v4 = v0 + 30;
    goto LABEL_16;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6927010](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = v0 + 18;

  v5 = v3;
  MEMORY[0x1C6926780]();
  if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  v6 = v0[31];
  sub_1C2E75DB4();

LABEL_16:
  v1 = *v4;
  v17 = v0[29] + 1;
  if (v17 != v0[27])
  {
    v0[29] = v17;
    v0[30] = v1;
    v22 = v0[20];
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1C6927010]();
    }

    else
    {
      v23 = *(v22 + 8 * v17 + 32);
    }

    v25 = v23;
    v0[31] = v23;
    v26 = v0[28];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_1C2D315E8;
    v27 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF18, &qword_1C2E82DD8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C2D320BC;
    v0[13] = &block_descriptor_7;
    v0[14] = v27;
    [v26 fetchTintedAvatarColorsForContact:v25 completionHandler:v0 + 10];
    v19 = (v0 + 2);

    return MEMORY[0x1EEE6DEC8](v19);
  }

  if (v1 >> 62)
  {
LABEL_34:
    v18 = sub_1C2E764E4();
    if (v18)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

  v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
LABEL_19:
    v31 = MEMORY[0x1E69E7CC0];
    v19 = sub_1C2E76634();
    if ((v18 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6927010](v20, v1);
        }

        else
        {
          v21 = *(v1 + 8 * v20 + 32);
        }

        ++v20;
        sub_1C2E74E94();
        sub_1C2E76614();
        sub_1C2E76644();
        sub_1C2E76654();
        sub_1C2E76624();
      }

      while (v18 != v20);

      v24 = v31;
      goto LABEL_36;
    }

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v19);
  }

LABEL_35:

  v24 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v0[33] = v24;
  v0[34] = sub_1C2E75E24();
  v29 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2D31BB8, v29, v28);
}

uint64_t sub_1C2D31BB8()
{
  v1 = v0[33];
  v3 = v0[21];
  v2 = v0[22];

  v0[10] = v3;
  v0[11] = v2;
  v0[19] = v1;
  sub_1C2E75194();

  return MEMORY[0x1EEE6DFA0](sub_1C2D31C64, 0, 0);
}

uint64_t sub_1C2D31C7C()
{
  swift_willThrow();
  if (qword_1EC05CC40 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = sub_1C2E72B44();
  __swift_project_value_buffer(v3, qword_1EC075A30);
  v4 = v2;
  v5 = v1;
  v6 = sub_1C2E72B24();
  v7 = sub_1C2E75FC4();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[31];
  v9 = v0[32];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = v10;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&dword_1C2C6B000, v6, v7, "Failed to find colors for contact: %@, error: %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062DD0, &qword_1C2E7C890);
    swift_arrayDestroy();
    MEMORY[0x1C6927DF0](v12, -1, -1);
    MEMORY[0x1C6927DF0](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[29] + 1;
  if (v16 != v0[27])
  {
    v0[29] = v16;
    v22 = v0[20];
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1C6927010]();
    }

    else
    {
      v23 = *(v22 + 8 * v16 + 32);
    }

    v25 = v23;
    v0[31] = v23;
    v26 = v0[28];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_1C2D315E8;
    v27 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF18, &qword_1C2E82DD8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C2D320BC;
    v0[13] = &block_descriptor_7;
    v0[14] = v27;
    [v26 fetchTintedAvatarColorsForContact:v25 completionHandler:v0 + 10];
    v19 = (v0 + 2);

    return MEMORY[0x1EEE6DEC8](v19);
  }

  v17 = v0[30];
  if (v17 >> 62)
  {
    v18 = sub_1C2E764E4();
    if (v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_9:
      v31 = MEMORY[0x1E69E7CC0];
      v19 = sub_1C2E76634();
      if ((v18 & 0x8000000000000000) == 0)
      {
        v20 = 0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1C6927010](v20, v17);
          }

          else
          {
            v21 = *(v17 + 8 * v20 + 32);
          }

          ++v20;
          sub_1C2E74E94();
          sub_1C2E76614();
          sub_1C2E76644();
          sub_1C2E76654();
          sub_1C2E76624();
        }

        while (v18 != v20);

        v24 = v31;
        goto LABEL_24;
      }

      __break(1u);
      return MEMORY[0x1EEE6DEC8](v19);
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v0[33] = v24;
  v0[34] = sub_1C2E75E24();
  v29 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2D31BB8, v29, v28);
}

uint64_t sub_1C2D320BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580, &unk_1C2E81EE0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1C2D327C0();
    **(*(v4 + 64) + 40) = sub_1C2E75D74();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1C2D3219C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560, &qword_1C2E7A890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C2D326B4(a3, v22 - v9);
  v11 = sub_1C2E75E74();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C2C73644(v10, &unk_1EC064560, &qword_1C2E7A890);
  }

  else
  {
    sub_1C2E75E64();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C2E75DD4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C2E75CB4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C2D323F8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  sub_1C2D3035C(v3, v5, v6, a1);
  v7 = MEMORY[0x1C69261C0](0.5, 1.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF00, &qword_1C2E82D98);
  sub_1C2E75184();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF08, &qword_1C2E82DA0) + 36));
  *v8 = v7;
  v8[1] = v12;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v5;
  v9[5] = v6;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF10, &unk_1C2E82DB8) + 36));
  sub_1C2E733B4();

  result = sub_1C2E75E44();
  *v10 = &unk_1C2E82DB0;
  v10[1] = v9;
  return result;
}

uint64_t sub_1C2D32534()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C2C7DC10;

  return sub_1C2D30EB0(v2, v3, v5, v4);
}

uint64_t sub_1C2D325E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C2C7DC10;

  return sub_1C2D310D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C2D326B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560, &qword_1C2E7A890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D32734(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C2D327C0()
{
  result = qword_1EC05CA78;
  if (!qword_1EC05CA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05CA78);
  }

  return result;
}

void sub_1C2D3280C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E800, &qword_1C2E93350);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1C2D328E4()
{
  result = qword_1EC05CB40;
  if (!qword_1EC05CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF30, &unk_1C2E82DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB40);
  }

  return result;
}

unint64_t sub_1C2D32960(unint64_t a1, void *a2)
{
  v18 = MEMORY[0x1E69E7CC0];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_30:
    v5 = sub_1C2E764E4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_27:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF38, &qword_1C2E82E00);
    sub_1C2E75174();
    return a1;
  }

  v6 = 0;
  v7 = *MEMORY[0x1E695C268];
  v8 = &selRef_insertSublayer_atIndex_;
  v17 = a2;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6927010](v9, a1);
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_29;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      a2 = v10;
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ([v10 v8[29]])
      {
        v11 = [a2 backgroundColors];
        if (v11)
        {
          break;
        }
      }

LABEL_7:
      ++v9;
      if (v6 == v5)
      {
        goto LABEL_27;
      }
    }

    v12 = v11;
    v13 = [v11 contactImage];

    sub_1C2D327C0();
    v14 = sub_1C2E75D74();

    if (!(v14 >> 62))
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    result = sub_1C2E764E4();
    if (!result)
    {
LABEL_16:

      v8 = &selRef_insertSublayer_atIndex_;
      goto LABEL_7;
    }

LABEL_19:
    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6927010](0, v14);
LABEL_22:

      sub_1C2E74E94();

      MEMORY[0x1C6926780]();
      if (*(v18 + 16) >= *(v18 + 24) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();
      a2 = v17;
      v8 = &selRef_insertSublayer_atIndex_;
      if (v6 == v5)
      {
        goto LABEL_27;
      }

      continue;
    }

    break;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C2D32C0C()
{
  result = qword_1EC05CB88;
  if (!qword_1EC05CB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF10, &unk_1C2E82DB8);
    sub_1C2D32CC8();
    sub_1C2D32E74(&qword_1EC05CBD8, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB88);
  }

  return result;
}

unint64_t sub_1C2D32CC8()
{
  result = qword_1EC05CBC0;
  if (!qword_1EC05CBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF08, &qword_1C2E82DA0);
    sub_1C2D32D54();
    sub_1C2D32E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CBC0);
  }

  return result;
}

unint64_t sub_1C2D32D54()
{
  result = qword_1EC05CB38;
  if (!qword_1EC05CB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF40, &qword_1C2E82E08);
    sub_1C2D328E4();
    sub_1C2D32E74(&qword_1EC05CBE8, MEMORY[0x1E697DE90], MEMORY[0x1E697DE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB38);
  }

  return result;
}

unint64_t sub_1C2D32E10()
{
  result = qword_1EC05CB58;
  if (!qword_1EC05CB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF48, &unk_1C2E82E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB58);
  }

  return result;
}

uint64_t sub_1C2D32E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FTMenuView.init(viewModel:dismissHandler:sheetPresentation:isUIKit:hideBackButton:customNavigation:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for FTMenuView(0);
  v16 = (a8 + v15[5]);
  sub_1C2E721C4();
  result = sub_1C2E75174();
  *v16 = v19;
  v16[1] = v20;
  v18 = (a8 + v15[10]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + v15[6]) = a4;
  *(a8 + v15[7]) = a5;
  *(a8 + v15[8]) = a6;
  *(a8 + v15[9]) = a7;
  return result;
}

uint64_t type metadata accessor for FTMenuView(uint64_t a1)
{
  result = qword_1EC05C9F8;
  if (!qword_1EC05C9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FTMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = type metadata accessor for FTMenuView(0);
  v4 = (v3 - 8);
  v63 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v73 = v5;
  v74 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF50, &qword_1C2E82E58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v57 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF58, &qword_1C2E82E60);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v57 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF60, &qword_1C2E82E68);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v57 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF68, &qword_1C2E82E70);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v57 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF70, &qword_1C2E82E78);
  v66 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF78, &qword_1C2E82E80);
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v57 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF80, &qword_1C2E82E88);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v57 - v16;
  v17 = [objc_opt_self() currentDevice];
  [v17 userInterfaceIdiom];

  *v8 = sub_1C2E73DC4();
  *(v8 + 1) = 0x4038000000000000;
  v8[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF88, &qword_1C2E82E90);
  sub_1C2D33884(v2, &v8[*(v18 + 44)]);
  v19 = *(v2 + v4[8]);
  v20 = *(v2 + v4[9]);
  v21 = v2;
  v22 = (v2 + v4[7]);
  v24 = *v22;
  v23 = v22[1];
  v78 = v24;
  v79 = v24;
  v77 = v23;
  v80 = v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF90, &qword_1C2E82E98);
  sub_1C2E75184();
  v25 = sub_1C2E72184();
  v27 = v26;
  v29 = v28;

  if (v27)
  {
    sub_1C2D375EC(v25, v27, v29);
  }

  sub_1C2C71D5C(v8, v10, &qword_1EC05FF50, &qword_1C2E82E58);
  v30 = &v10[*(v61 + 9)];
  *v30 = v19;
  v30[1] = v20;
  v30[2] = v27 != 0;
  *(v30 + 1) = 0x4034000000000000;
  v31 = v10;
  v32 = v59;
  sub_1C2C71D5C(v31, v59, &qword_1EC05FF58, &qword_1C2E82E60);
  v33 = (v32 + *(v60 + 36));
  *v33 = v19;
  v33[1] = v20;
  v34 = v21;
  v35 = v21;
  v58 = v21;
  v36 = v74;
  v61 = type metadata accessor for FTMenuView;
  sub_1C2D37CA8(v35, v74, type metadata accessor for FTMenuView);
  v37 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v38 = swift_allocObject();
  sub_1C2D370E8(v36, v38 + v37);
  v39 = v32;
  v40 = v62;
  sub_1C2C71D5C(v39, v62, &qword_1EC05FF60, &qword_1C2E82E68);
  v41 = v64;
  v42 = (v40 + *(v64 + 36));
  *v42 = 0;
  v42[1] = 0;
  v42[2] = sub_1C2D3714C;
  v42[3] = v38;
  v79 = v78;
  v80 = v77;
  sub_1C2E75184();
  v43 = sub_1C2E72194();

  LOBYTE(v79) = v43 & 1;
  sub_1C2D37CA8(v34, v36, type metadata accessor for FTMenuView);
  v44 = swift_allocObject();
  sub_1C2D370E8(v36, v44 + v37);
  v45 = sub_1C2D3717C();
  v46 = v65;
  sub_1C2E74DD4();

  sub_1C2C73644(v40, &qword_1EC05FF68, &qword_1C2E82E70);
  v79 = v78;
  v80 = v77;
  sub_1C2E75184();
  v47 = sub_1C2E72174();

  LOBYTE(v83) = v47 & 1;
  sub_1C2D37CA8(v58, v36, v61);
  v48 = swift_allocObject();
  sub_1C2D370E8(v36, v48 + v37);
  v79 = v41;
  v80 = MEMORY[0x1E69E6370];
  v81 = v45;
  v82 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v50 = v69;
  v49 = v70;
  sub_1C2E74DD4();

  (*(v66 + 8))(v46, v49);
  KeyPath = swift_getKeyPath();
  v52 = v67;
  v53 = &v67[*(v68 + 36)];
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FFC8, &qword_1C2E82ED0) + 28);
  sub_1C2E75634();
  v55 = sub_1C2E756D4();
  (*(*(v55 - 8) + 56))(v53 + v54, 0, 1, v55);
  *v53 = KeyPath;
  (*(v71 + 32))(v52, v50, v72);
  sub_1C2D374A0();
  sub_1C2E74BD4();
  return sub_1C2C73644(v52, &qword_1EC05FF80, &qword_1C2E82E88);
}

uint64_t sub_1C2D33884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v64 = sub_1C2E73FE4();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v50 - v5;
  v6 = sub_1C2E74004();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v50 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060058, &qword_1C2E830C8);
  MEMORY[0x1EEE9AC00](v72);
  v63 = &v50 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060060, &qword_1C2E830D0);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v50 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060068, &qword_1C2E830D8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v50 - v12;
  v13 = type metadata accessor for FTMenuView(0);
  v67 = *(v13 - 1);
  v14 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060070, &qword_1C2E830E0);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v50 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060078, &qword_1C2E830E8);
  MEMORY[0x1EEE9AC00](v53);
  v17 = &v50 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060080, &qword_1C2E830F0);
  MEMORY[0x1EEE9AC00](v69);
  v56 = &v50 - v18;
  v19 = (a1 + v13[5]);
  v21 = *v19;
  v20 = v19[1];
  v74 = *v19;
  v75 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF90, &qword_1C2E82E98);
  sub_1C2E75184();
  sub_1C2E72184();
  v68 = v22;
  v24 = v23;

  if (!v24)
  {
    goto LABEL_4;
  }

  if (*(a1 + v13[9]))
  {

LABEL_4:
    v74 = v21;
    v75 = v20;
    sub_1C2E75184();
    v25 = sub_1C2E721A4();

    v74 = v25;
    sub_1C2D37CA8(a1, &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FTMenuView);
    v26 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v27 = swift_allocObject();
    sub_1C2D370E8(&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060088, &qword_1C2E830F8);
    sub_1C2E718A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060090, &qword_1C2E83100);
    sub_1C2C94F38(&qword_1EC060098, &qword_1EC060088, &qword_1C2E830F8, MEMORY[0x1E69E6338]);
    sub_1C2C94F38(&qword_1EC0600A0, &qword_1EC060090, &qword_1C2E83100, MEMORY[0x1E6981F48]);
    sub_1C2D3842C(&qword_1EC0600A8, MEMORY[0x1E6995DD0], MEMORY[0x1E6995DE0]);
    v28 = v63;
    sub_1C2E75444();
    v29 = v58;
    sub_1C2E73FD4();
    v30 = v62;
    v31 = v64;
    (*(v62 + 16))(v59, v29, v64);
    v32 = v61;
    sub_1C2E73FF4();
    (*(v30 + 8))(v29, v31);
    v34 = v65;
    v33 = v66;
    (*(v65 + 16))(v60, v32, v66);
    sub_1C2D3842C(&qword_1EC0600B0, MEMORY[0x1E697FBD0], MEMORY[0x1E697FBC8]);
    v35 = sub_1C2E73294();
    (*(v34 + 8))(v32, v33);
    v36 = v71;
    *(v28 + *(v72 + 36)) = v35;
    v37 = &qword_1EC060058;
    v38 = &qword_1C2E830C8;
    sub_1C2C736A4(v28, v36, &qword_1EC060058, &qword_1C2E830C8);
    swift_storeEnumTagMultiPayload();
    sub_1C2D37DEC();
    sub_1C2D38020();
    sub_1C2E73F44();
    v39 = v28;
    return sub_1C2C73644(v39, v37, v38);
  }

  sub_1C2D342CC(a1, v68, v17);
  v40 = v53;
  v17[*(v53 + 36)] = 0;
  if (*(a1 + v13[8]) == 1)
  {
    sub_1C2D37CA8(a1, &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FTMenuView);
    v41 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v42 = swift_allocObject();
    sub_1C2D370E8(&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
    v43 = sub_1C2D37EB8();
    v44 = v51;
    sub_1C2E749F4();

    v45 = v52;
    v46 = v55;
    (*(v52 + 16))(v57, v44, v55);
    swift_storeEnumTagMultiPayload();
    v74 = v40;
    v75 = v43;
    swift_getOpaqueTypeConformance2();
    v47 = v56;
    sub_1C2E73F44();
    (*(v45 + 8))(v44, v46);
  }

  else
  {
    sub_1C2C736A4(v17, v57, &qword_1EC060078, &qword_1C2E830E8);
    swift_storeEnumTagMultiPayload();
    v48 = sub_1C2D37EB8();
    v74 = v40;
    v75 = v48;
    swift_getOpaqueTypeConformance2();
    v47 = v56;
    sub_1C2E73F44();
  }

  sub_1C2C73644(v17, &qword_1EC060078, &qword_1C2E830E8);
  v37 = &qword_1EC060080;
  v38 = &qword_1C2E830F0;
  sub_1C2C736A4(v47, v71, &qword_1EC060080, &qword_1C2E830F0);
  swift_storeEnumTagMultiPayload();
  sub_1C2D37DEC();
  sub_1C2D38020();
  sub_1C2E73F44();

  v39 = v47;
  return sub_1C2C73644(v39, v37, v38);
}

uint64_t sub_1C2D342CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060110, &qword_1C2E83130);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v29 - v10);
  *v11 = sub_1C2E75754();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060118, &qword_1C2E83138);
  sub_1C2D352A4(a1, (v11 + *(v13 + 44)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060120, &qword_1C2E83140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A110;
  v15 = sub_1C2E74444();
  *(inited + 32) = v15;
  v16 = sub_1C2E74474();
  *(inited + 33) = v16;
  v17 = sub_1C2E74494();
  sub_1C2E74494();
  if (sub_1C2E74494() != v15)
  {
    v17 = sub_1C2E74494();
  }

  sub_1C2E74494();
  if (sub_1C2E74494() != v16)
  {
    v17 = sub_1C2E74494();
  }

  v18 = [objc_opt_self() currentDevice];
  [v18 userInterfaceIdiom];

  sub_1C2E73034();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1C2C736A4(v11, v8, &qword_1EC060110, &qword_1C2E83130);
  sub_1C2C736A4(v8, a3, &qword_1EC060110, &qword_1C2E83130);
  v27 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060128, &qword_1C2E83148) + 48);
  *v27 = a2;
  *(v27 + 8) = v17;
  *(v27 + 16) = v20;
  *(v27 + 24) = v22;
  *(v27 + 32) = v24;
  *(v27 + 40) = v26;
  *(v27 + 48) = 0;
  swift_retain_n();
  sub_1C2C73644(v11, &qword_1EC060110, &qword_1C2E83130);

  return sub_1C2C73644(v8, &qword_1EC060110, &qword_1C2E83130);
}

double sub_1C2D3454C(uint64_t a1)
{
  type metadata accessor for FTMenuView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF90, &qword_1C2E82E98);
  sub_1C2E75184();
  sub_1C2E72164();

  return result;
}

double sub_1C2D345BC(uint64_t a1)
{
  type metadata accessor for FTMenuView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF90, &qword_1C2E82E98);
  sub_1C2E75184();
  sub_1C2E721B4();

  return result;
}

void sub_1C2D34640(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1C2E732B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = v7;
    v11 = a3 + *(type metadata accessor for FTMenuView(0) + 40);
    v12 = *v11;
    if (*v11)
    {
      v13 = *(v11 + 8);

      v12(v14);

      sub_1C2C71668(v12, v13);
    }

    else
    {
      sub_1C2D34998(v9);
      sub_1C2E732A4();
      (*(v6 + 8))(v9, v10);
    }
  }
}

uint64_t sub_1C2D34780(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_1C2E732B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  result = type metadata accessor for FTMenuView(0);
  if (*(a3 + *(result + 36)) == 1 && v9 != 0)
  {
    v12 = a3 + *(result + 40);
    v13 = *v12;
    if (*v12)
    {
      v14 = *(v12 + 8);

      v13(v15);

      return sub_1C2C71668(v13, v14);
    }

    else
    {
      sub_1C2D34998(v8);
      sub_1C2E732A4();
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_1C2D348F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060050, &qword_1C2E830C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C2C736A4(a1, &v5 - v3, &qword_1EC060050, &qword_1C2E830C0);
  return sub_1C2E739C4();
}

uint64_t sub_1C2D34998@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C2E73BA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C2C736A4(v2, &v14 - v9, &qword_1EC05ECC0, &qword_1C2E82E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E732B4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1C2D34B98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v55 = a2;
  v64 = a3;
  v60 = sub_1C2E75424();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060190, &qword_1C2E83280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v54 - v8;
  v65 = sub_1C2E74264();
  v9 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2E73D84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060198, &qword_1C2E83288);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0601A0, &unk_1C2E83290);
  v56 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v23 = *a1;
  v68 = 0;
  v69 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB40, &unk_1C2E7AFB0);
  sub_1C2E75174();
  v24 = *&v66[16];
  v25 = *v66;
  *v66 = v23;
  *&v66[8] = v25;
  v67 = v24;
  sub_1C2E73D64();
  sub_1C2D3831C();
  sub_1C2E74C34();
  (*(v13 + 8))(v15, v12);
  v26 = *&v66[8];
  v27 = *&v66[16];

  sub_1C2C71668(v26, v27);

  sub_1C2E74244();
  sub_1C2D38370();
  v57 = v22;
  sub_1C2E74C04();
  (*(v9 + 8))(v11, v65);
  sub_1C2C73644(v18, &qword_1EC060198, &qword_1C2E83288);
  if ((sub_1C2E71F94() & 1) == 0)
  {
    v41 = 1;
    v37 = v63;
    v38 = v64;
    v43 = v59;
    v42 = v60;
    v44 = v58;
    v40 = v61;
    v39 = v62;
    goto LABEL_17;
  }

  v28 = (v55 + *(type metadata accessor for FTMenuView(0) + 20));
  v30 = *v28;
  v29 = v28[1];
  *v66 = v30;
  *&v66[8] = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF90, &qword_1C2E82E98);
  sub_1C2E75184();
  v31 = sub_1C2E721A4();

  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_14:

    goto LABEL_15;
  }

  v32 = sub_1C2E764E4();
  if (!v32)
  {
    goto LABEL_14;
  }

LABEL_4:
  v33 = __OFSUB__(v32, 1);
  result = v32 - 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v35 = MEMORY[0x1C6927010](result, v31);
LABEL_9:

    *v66 = v23;
    if (v35)
    {
      v68 = v35;
      sub_1C2E720E4();
      sub_1C2D3842C(&qword_1EC0601C0, MEMORY[0x1E6995DD0], MEMORY[0x1E6995DD8]);
      v36 = sub_1C2E75BA4();

      v37 = v63;
      v38 = v64;
      v40 = v61;
      v39 = v62;
      if (v36)
      {
        v41 = 1;
        v43 = v59;
        v42 = v60;
        v44 = v58;
LABEL_17:
        (*(v44 + 56))(v43, v41, 1, v42);
        v47 = v56;
        v48 = *(v56 + 16);
        v49 = v40;
        v50 = v40;
        v51 = v57;
        v48(v49, v57, v39);
        sub_1C2C736A4(v43, v37, &qword_1EC060190, &qword_1C2E83280);
        v48(v38, v50, v39);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0601B8, &qword_1C2E832A0);
        sub_1C2C736A4(v37, &v38[*(v52 + 48)], &qword_1EC060190, &qword_1C2E83280);
        sub_1C2C73644(v43, &qword_1EC060190, &qword_1C2E83280);
        v53 = *(v47 + 8);
        v53(v51, v39);
        sub_1C2C73644(v37, &qword_1EC060190, &qword_1C2E83280);
        return (v53)(v50, v39);
      }

LABEL_16:
      v45 = v54;
      sub_1C2E75414();
      v44 = v58;
      v43 = v59;
      v46 = v45;
      v42 = v60;
      (*(v58 + 32))(v59, v46, v60);
      v41 = 0;
      goto LABEL_17;
    }

LABEL_15:

    v37 = v63;
    v38 = v64;
    v40 = v61;
    v39 = v62;
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v31 + 8 * result + 32);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2D352A4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v91 = a2;
  v3 = sub_1C2E742D4();
  v84 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FTMenuView(0);
  v77 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v78 = v6;
  v79 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060130, &qword_1C2E83150);
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060138, &qword_1C2E83158);
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060140, &qword_1C2E83160);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  v16 = sub_1C2E74624();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v5;
  v87 = a1;
  v20 = (a1 + *(v5 + 20));
  v22 = *v20;
  v21 = v20[1];
  *&v111 = v22;
  *(&v111 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF90, &qword_1C2E82E98);
  sub_1C2E75184();
  v23 = sub_1C2E72184();
  v25 = v24;

  if (v25)
  {

    *&v111 = v23;
    *(&v111 + 1) = v25;
    sub_1C2C74960();
    v26 = sub_1C2E748A4();
    v28 = v27;
    v30 = v29;
    sub_1C2E74694();
    v76 = v15;
    (*(v17 + 104))(v19, *MEMORY[0x1E6980EA8], v16);
    sub_1C2E74664();
    v75 = v3;

    (*(v17 + 8))(v19, v16);
    v31 = sub_1C2E747F4();
    v33 = v32;
    v35 = v34;

    sub_1C2C72340(v26, v28, v30 & 1);

    LODWORD(v111) = sub_1C2E740D4();
    v36 = sub_1C2E74794();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v33;
    v15 = v76;
    sub_1C2C72340(v31, v43, v35 & 1);

    sub_1C2E75744();
    sub_1C2E737F4();
    LOBYTE(v101[0]) = v40 & 1;
    *&v102 = v36;
    *(&v102 + 1) = v38;
    v3 = v75;
    LOBYTE(v103) = v40 & 1;
    *(&v103 + 1) = v42;
    CGPointMake();
    v117 = v108;
    v118 = v109;
    v119 = v110;
    v113 = v104;
    v114 = v105;
    v115 = v106;
    v116 = v107;
    v111 = v102;
    v112 = v103;
  }

  else
  {
    sub_1C2D381A0(&v111);
  }

  v44 = v89;
  if (*(v87 + *(v86 + 32)))
  {
    v45 = 1;
  }

  else
  {
    v46 = v79;
    sub_1C2D37CA8(v87, v79, type metadata accessor for FTMenuView);
    v47 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v48 = swift_allocObject();
    sub_1C2D370E8(v46, v48 + v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060148, &qword_1C2E83168);
    sub_1C2D38248();
    v49 = v80;
    sub_1C2E751C4();
    v50 = v83;
    sub_1C2E742C4();
    sub_1C2C94F38(&qword_1EC060158, &qword_1EC060130, &qword_1C2E83150, MEMORY[0x1E697D680]);
    sub_1C2D3842C(&qword_1EC060160, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    v51 = v85;
    v52 = v82;
    sub_1C2E74974();
    (*(v84 + 8))(v50, v3);
    (*(v81 + 8))(v49, v52);
    v53 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060168, &unk_1C2E83188) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DFA8, &unk_1C2E7BDD0);
    sub_1C2E73814();
    *v53 = swift_getKeyPath();
    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v54 = sub_1C2E74F74();

    KeyPath = swift_getKeyPath();
    *&v102 = v54;
    v56 = sub_1C2E73284();
    v57 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060170, &qword_1C2E831F8) + 36));
    *v57 = KeyPath;
    v57[1] = v56;
    v58 = (v51 + *(v44 + 36));
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060178, &qword_1C2E83200) + 28);
    v60 = *MEMORY[0x1E697DC10];
    v61 = sub_1C2E730E4();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    sub_1C2C71D5C(v51, v15, &qword_1EC060138, &qword_1C2E83158);
    v45 = 0;
  }

  (*(v88 + 56))(v15, v45, 1, v44);
  v98 = v117;
  v99 = v118;
  v100 = v119;
  v94 = v113;
  v95 = v114;
  v96 = v115;
  v97 = v116;
  v92 = v111;
  v93 = v112;
  v62 = v90;
  sub_1C2C736A4(v15, v90, &qword_1EC060140, &qword_1C2E83160);
  v63 = v99;
  v101[6] = v98;
  v101[7] = v99;
  v64 = v100;
  v101[8] = v100;
  v65 = v94;
  v66 = v95;
  v101[2] = v94;
  v101[3] = v95;
  v68 = v96;
  v67 = v97;
  v101[4] = v96;
  v101[5] = v97;
  v70 = v92;
  v69 = v93;
  v101[0] = v92;
  v101[1] = v93;
  v71 = v91;
  v91[6] = v98;
  v71[7] = v63;
  v71[8] = v64;
  v71[2] = v65;
  v71[3] = v66;
  v71[4] = v68;
  v71[5] = v67;
  *v71 = v70;
  v71[1] = v69;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060180, &qword_1C2E83238);
  sub_1C2C736A4(v62, v71 + *(v72 + 48), &qword_1EC060140, &qword_1C2E83160);
  sub_1C2C736A4(v101, &v102, &qword_1EC060188, &unk_1C2E83240);
  sub_1C2C73644(v15, &qword_1EC060140, &qword_1C2E83160);
  sub_1C2C73644(v62, &qword_1EC060140, &qword_1C2E83160);
  v108 = v98;
  v109 = v99;
  v110 = v100;
  v104 = v94;
  v105 = v95;
  v106 = v96;
  v107 = v97;
  v102 = v92;
  v103 = v93;
  return sub_1C2C73644(&v102, &qword_1EC060188, &unk_1C2E83240);
}

double sub_1C2D35C78()
{
  sub_1C2E757C4();
  sub_1C2E733C4();

  return result;
}

double sub_1C2D35CE8(uint64_t a1)
{
  type metadata accessor for FTMenuView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FF90, &qword_1C2E82E98);
  sub_1C2E75184();
  sub_1C2E72164();

  return result;
}

uint64_t sub_1C2D35D60@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810, &qword_1C2E7B9B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1C2E75044();
  v6 = sub_1C2E74534();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_1C2E745C4();
  sub_1C2C73644(v4, &qword_1EC05D810, &qword_1C2E7B9B0);
  KeyPath = swift_getKeyPath();
  result = sub_1C2E740D4();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1C2D35E94@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v52 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060038, &qword_1C2E830A8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v43 - v4;
  v5 = sub_1C2E75924();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E74124();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1C2E755F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C2E756D4();
  v44 = *(v17 - 8);
  v45 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060040, &unk_1C2E830B0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  if (a2 & 0x100) == 0 || (a2)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060018, &qword_1C2E83098);
    (*(*(v41 - 8) + 16))(v51, v49, v41);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1C2C94F38(&qword_1EC060028, &qword_1EC060018, &qword_1C2E83098, MEMORY[0x1E697FDF8]);
    v53 = v41;
    v54 = v42;
    swift_getOpaqueTypeConformance2();
    return sub_1C2E73F44();
  }

  else
  {
    v43 = v21;
    sub_1C2E755C4();
    sub_1C2E75624();
    (*(v14 + 8))(v16, v13);
    sub_1C2E73F74();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = *(v7 + 20);
    v33 = *MEMORY[0x1E697F468];
    v34 = sub_1C2E73D44();
    (*(*(v34 - 8) + 104))(&v12[v32], v33, v34);
    *v12 = v25;
    *(v12 + 1) = v27;
    *(v12 + 2) = v29;
    *(v12 + 3) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEF0, &qword_1C2E82BE8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C2E7A930;
    sub_1C2D37CA8(v12, v9, MEMORY[0x1E697FF20]);
    sub_1C2D3842C(&qword_1EC060048, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
    *(v35 + 32) = sub_1C2E754A4();
    v36 = v46;
    sub_1C2E75914();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060018, &qword_1C2E83098);
    v38 = sub_1C2C94F38(&qword_1EC060028, &qword_1EC060018, &qword_1C2E83098, MEMORY[0x1E697FDF8]);
    sub_1C2E74A64();
    (*(v47 + 8))(v36, v48);
    sub_1C2D37D10(v12);
    (*(v44 + 8))(v19, v45);
    v39 = v43;
    (*(v43 + 16))(v51, v23, v20);
    swift_storeEnumTagMultiPayload();
    v53 = v37;
    v54 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    return (*(v39 + 8))(v23, v20);
  }
}

uint64_t sub_1C2D36504@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060038, &qword_1C2E830A8);
  MEMORY[0x1EEE9AC00](v47);
  v6 = v41 - v5;
  v7 = sub_1C2E75924();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E74124();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - v14;
  v16 = sub_1C2E756D4();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060040, &unk_1C2E830B0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v41 - v21;
  if (a2 & 0x100) == 0 || (a2)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060018, &qword_1C2E83098);
    (*(*(v39 - 8) + 16))(v6, v46, v39);
    swift_storeEnumTagMultiPayload();
    v40 = sub_1C2C94F38(&qword_1EC060028, &qword_1EC060018, &qword_1C2E83098, MEMORY[0x1E697FDF8]);
    v48 = v39;
    v49 = v40;
    swift_getOpaqueTypeConformance2();
    return sub_1C2E73F44();
  }

  else
  {
    v41[0] = v20;
    sub_1C2E75644();
    sub_1C2E73F74();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v41[1] = a3;
    v31 = *(v10 + 20);
    v32 = *MEMORY[0x1E697F468];
    v33 = sub_1C2E73D44();
    (*(*(v33 - 8) + 104))(&v15[v31], v32, v33);
    *v15 = v24;
    *(v15 + 1) = v26;
    *(v15 + 2) = v28;
    *(v15 + 3) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEF0, &qword_1C2E82BE8);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C2E7A930;
    sub_1C2D37CA8(v15, v12, MEMORY[0x1E697FF20]);
    sub_1C2D3842C(&qword_1EC060048, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
    *(v34 + 32) = sub_1C2E754A4();
    sub_1C2E75914();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060018, &qword_1C2E83098);
    v36 = sub_1C2C94F38(&qword_1EC060028, &qword_1EC060018, &qword_1C2E83098, MEMORY[0x1E697FDF8]);
    sub_1C2E74A64();
    (*(v44 + 8))(v9, v45);
    sub_1C2D37D10(v15);
    (*(v42 + 8))(v18, v43);
    v37 = v41[0];
    (*(v41[0] + 16))(v6, v22, v19);
    swift_storeEnumTagMultiPayload();
    v48 = v35;
    v49 = v36;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    return (*(v37 + 8))(v22, v19);
  }
}

uint64_t sub_1C2D36AC8(uint64_t a1)
{
  sub_1C2E756E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060018, &qword_1C2E83098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060020, &qword_1C2E830A0);
  sub_1C2C94F38(&qword_1EC060028, &qword_1EC060018, &qword_1C2E83098, MEMORY[0x1E697FDF8]);
  sub_1C2D37BB0();
  return sub_1C2E74E04();
}

void sub_1C2D36BE8(int a1)
{
  if ((a1 & 0x100) != 0)
  {
    if ((a1 & 0x10000) != 0)
    {
      return;
    }
  }

  else if ((a1 & 0x10000) != 0)
  {
    return;
  }

  v1 = [objc_opt_self() currentDevice];
  [v1 userInterfaceIdiom];
}

uint64_t sub_1C2D36CB0(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = a2 & 0x10000;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FFE0, &qword_1C2E83078);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FFE8, &qword_1C2E83080);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FFF0, &qword_1C2E83088);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  if (v2)
  {
    v14 = sub_1C2E744B4();
    sub_1C2D36BE8(v2 & 0x100 | v4 | 1);
    sub_1C2E73034();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FFF8, &qword_1C2E83090);
    (*(*(v23 - 8) + 16))(v13, a1, v23);
    v24 = &v13[*(v5 + 36)];
    *v24 = v14;
    *(v24 + 1) = v16;
    *(v24 + 2) = v18;
    *(v24 + 3) = v20;
    *(v24 + 4) = v22;
    v24[40] = 0;
    v25 = sub_1C2E74444();
    if (!v4)
    {
      v26 = [objc_opt_self() currentDevice];
      [v26 userInterfaceIdiom];
    }

    sub_1C2E73034();
    v27 = &v13[*(v11 + 36)];
    *v27 = v25;
    *(v27 + 1) = v28;
    *(v27 + 2) = v29;
    *(v27 + 3) = v30;
    *(v27 + 4) = v31;
    v27[40] = 0;
    sub_1C2C736A4(v13, v10, &qword_1EC05FFF0, &qword_1C2E83088);
    swift_storeEnumTagMultiPayload();
    sub_1C2D37A34();
    sub_1C2D37AC0();
    sub_1C2E73F44();
    v32 = v13;
    v33 = &qword_1EC05FFF0;
    v34 = &qword_1C2E83088;
  }

  else
  {
    if (!v4)
    {
      v35 = [objc_opt_self() currentDevice];
      [v35 userInterfaceIdiom];
    }

    v36 = sub_1C2E74454();
    sub_1C2E73034();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FFF8, &qword_1C2E83090);
    (*(*(v45 - 8) + 16))(v7, a1, v45);
    v46 = &v7[*(v5 + 36)];
    *v46 = v36;
    *(v46 + 1) = v38;
    *(v46 + 2) = v40;
    *(v46 + 3) = v42;
    *(v46 + 4) = v44;
    v46[40] = 0;
    sub_1C2C736A4(v7, v10, &qword_1EC05FFE0, &qword_1C2E83078);
    swift_storeEnumTagMultiPayload();
    sub_1C2D37A34();
    sub_1C2D37AC0();
    sub_1C2E73F44();
    v32 = v7;
    v33 = &qword_1EC05FFE0;
    v34 = &qword_1C2E83078;
  }

  return sub_1C2C73644(v32, v33, v34);
}

uint64_t sub_1C2D370B4(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_1C2D36CB0(a1, v3 | v4);
}

uint64_t sub_1C2D370E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2D3717C()
{
  result = qword_1EC05FF98;
  if (!qword_1EC05FF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF68, &qword_1C2E82E70);
    sub_1C2D37208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FF98);
  }

  return result;
}

unint64_t sub_1C2D37208()
{
  result = qword_1EC05FFA0;
  if (!qword_1EC05FFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF60, &qword_1C2E82E68);
    sub_1C2D37294();
    sub_1C2D373A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FFA0);
  }

  return result;
}

unint64_t sub_1C2D37294()
{
  result = qword_1EC05FFA8;
  if (!qword_1EC05FFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF58, &qword_1C2E82E60);
    sub_1C2C94F38(&qword_1EC05FFB0, &qword_1EC05FF50, &qword_1C2E82E58, MEMORY[0x1E6981870]);
    sub_1C2D3734C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FFA8);
  }

  return result;
}

unint64_t sub_1C2D3734C()
{
  result = qword_1EC05FFB8;
  if (!qword_1EC05FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FFB8);
  }

  return result;
}

unint64_t sub_1C2D373A0()
{
  result = qword_1EC05FFC0;
  if (!qword_1EC05FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FFC0);
  }

  return result;
}

uint64_t sub_1C2D3740C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for FTMenuView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1C2D374A0()
{
  result = qword_1EC05FFD0;
  if (!qword_1EC05FFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF80, &qword_1C2E82E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF70, &qword_1C2E82E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF68, &qword_1C2E82E70);
    sub_1C2D3717C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05FFD8, &qword_1EC05FFC8, &qword_1C2E82ED0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05FFD0);
  }

  return result;
}

double sub_1C2D375EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

void sub_1C2D37674(uint64_t a1)
{
  sub_1C2D37784(319, &qword_1EC05BAA8, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1C2D37784(319, &qword_1EC05B3E0, MEMORY[0x1E6995E38], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1C2CFFD98(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2D37784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for MenuViewBackgroundModifier(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for MenuViewBackgroundModifier(_WORD *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MenuViewPaddingModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MenuViewPaddingModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C2D37A34()
{
  result = qword_1EC060000;
  if (!qword_1EC060000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FFF0, &qword_1C2E83088);
    sub_1C2D37AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060000);
  }

  return result;
}

unint64_t sub_1C2D37AC0()
{
  result = qword_1EC060008;
  if (!qword_1EC060008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FFE0, &qword_1C2E83078);
    sub_1C2C94F38(&qword_1EC060010, &qword_1EC05FFF8, &qword_1C2E83090, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060008);
  }

  return result;
}

uint64_t sub_1C2D37B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1C2D35E94(a1, v3 | *(v2 + 16), a2);
}

uint64_t sub_1C2D37B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1C2D36504(a1, v3 | *(v2 + 16), a2);
}

unint64_t sub_1C2D37BB0()
{
  result = qword_1EC060030;
  if (!qword_1EC060030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060020, &qword_1C2E830A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060018, &qword_1C2E83098);
    sub_1C2C94F38(&qword_1EC060028, &qword_1EC060018, &qword_1C2E83098, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060030);
  }

  return result;
}

uint64_t sub_1C2D37CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D37D10(uint64_t a1)
{
  v2 = sub_1C2E74124();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C2D37D6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for FTMenuView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C2D34B98(a1, v6, a2);
}

unint64_t sub_1C2D37DEC()
{
  result = qword_1EC0600B8;
  if (!qword_1EC0600B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060080, &qword_1C2E830F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060078, &qword_1C2E830E8);
    sub_1C2D37EB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0600B8);
  }

  return result;
}

unint64_t sub_1C2D37EB8()
{
  result = qword_1EC0600C0;
  if (!qword_1EC0600C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060078, &qword_1C2E830E8);
    sub_1C2D37F70();
    sub_1C2C94F38(&qword_1EC05E4A0, &qword_1EC05E4A8, &qword_1C2E7CAE0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0600C0);
  }

  return result;
}

unint64_t sub_1C2D37F70()
{
  result = qword_1EC0600C8;
  if (!qword_1EC0600C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0600D0, &qword_1C2E83108);
    sub_1C2C94F38(&qword_1EC0600D8, &qword_1EC0600E0, &unk_1C2E83110, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0600C8);
  }

  return result;
}

unint64_t sub_1C2D38020()
{
  result = qword_1EC0600E8;
  if (!qword_1EC0600E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060058, &qword_1C2E830C8);
    sub_1C2D380D8();
    sub_1C2C94F38(&qword_1EC060100, &qword_1EC060108, &qword_1C2E83128, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0600E8);
  }

  return result;
}

unint64_t sub_1C2D380D8()
{
  result = qword_1EC0600F0;
  if (!qword_1EC0600F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0600F8, &qword_1C2E83120);
    sub_1C2C94F38(&qword_1EC0600A0, &qword_1EC060090, &qword_1C2E83100, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0600F0);
  }

  return result;
}

double sub_1C2D381A0(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_1C2D381D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FTMenuView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1C2D38248()
{
  result = qword_1EC060150;
  if (!qword_1EC060150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060148, &qword_1C2E83168);
    sub_1C2C76120();
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548, &qword_1C2E83180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060150);
  }

  return result;
}

unint64_t sub_1C2D3831C()
{
  result = qword_1EC0601A8;
  if (!qword_1EC0601A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0601A8);
  }

  return result;
}

unint64_t sub_1C2D38370()
{
  result = qword_1EC0601B0;
  if (!qword_1EC0601B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060198, &qword_1C2E83288);
    sub_1C2D3831C();
    sub_1C2D3842C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0601B0);
  }

  return result;
}

uint64_t sub_1C2D3842C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C2D38474()
{
  result = qword_1EC0601C8;
  if (!qword_1EC0601C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0601D0, &qword_1C2E832A8);
    sub_1C2D37A34();
    sub_1C2D37AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0601C8);
  }

  return result;
}

double sub_1C2D38500(uint64_t a1)
{
  v2 = sub_1C2E73DB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8.n128_u64[0] = 26.0;
  if (v7 != *MEMORY[0x1E697F658] && v7 != *MEMORY[0x1E697F690])
  {
    v10 = v7 == *MEMORY[0x1E697F698] || v7 == *MEMORY[0x1E697F680];
    v11 = v10 || v7 == *MEMORY[0x1E697F650];
    v12 = v11 || v7 == *MEMORY[0x1E697F660];
    if (!v12 && v7 != *MEMORY[0x1E697F630])
    {
      if (v7 == *MEMORY[0x1E697F670] || v7 == *MEMORY[0x1E697F668] || v7 == *MEMORY[0x1E697F678] || v7 == *MEMORY[0x1E697F640] || v7 == *MEMORY[0x1E697F648])
      {
        v8.n128_u64[0] = 0x4041000000000000;
      }

      else
      {
        (*(v3 + 8))(v6, v2, v8);
        v8.n128_u64[0] = 26.0;
      }
    }
  }

  return v8.n128_f64[0];
}

uint64_t sub_1C2D386D8(uint64_t a1)
{
  v27[2] = 0;
  v2 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v13 = sub_1C2E74F74();

  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v14 = sub_1C2E74F74();

  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = a1;
  swift_storeEnumTagMultiPayload();
  sub_1C2C70B1C(v11, v12, a1);
  v15 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v28 = v10;
  sub_1C2D15F5C(v10, v7);
  v31 = v7;
  sub_1C2D15F5C(v7, v4);
  type metadata accessor for ControlButtonConfiguration(0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v17 + 56) = -256;
  v18 = (v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v19 = 0;
  v19[1] = 0;
  v20 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v20 = 0;
  *(v20 + 8) = 1;

  sub_1C2E71A94();
  *(v16 + 16) = 1;
  v29 = v13;
  *(v16 + 24) = v13;
  *(v16 + 32) = 1;
  v27[1] = v14;
  *(v16 + 40) = v14;
  *(v16 + 48) = 1;
  v30 = v4;
  sub_1C2D15F5C(v4, v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element);
  *(v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = v15;
  v21 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v22 = sub_1C2D3972C;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v37 = -256;
  v27[3] = v15;

  sub_1C2D7E988(v35);
  swift_beginAccess();
  if (v18[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v27[-3] = 0;
    v27[-2] = 0;
    v27[-4] = v16;
    v34 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();
  }

  else
  {
    *v18 = 0;
    v18[1] = 0;
  }

  swift_beginAccess();
  if (v19[1])
  {
    v24 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v24);
    v27[-3] = 0;
    v27[-2] = 0;
    v27[-4] = v16;
    v33 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();
  }

  else
  {
    *v19 = 0;
    v19[1] = 0;
  }

  swift_beginAccess();
  if (*(v20 + 8))
  {

    sub_1C2D15FC0(v30);
    sub_1C2D15FC0(v31);
    sub_1C2D15FC0(v28);
    *v20 = 0;
    *(v20 + 8) = 1;
  }

  else
  {
    v25 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v25);
    v27[-4] = v16;
    v27[-3] = 0;
    LOBYTE(v27[-2]) = 1;
    v32 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();

    sub_1C2D15FC0(v30);
    sub_1C2D15FC0(v31);
    sub_1C2D15FC0(v28);
  }

  return v16;
}

uint64_t sub_1C2D38C18(uint64_t a1)
{
  v27[2] = 0;
  v2 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  v13 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v14 = sub_1C2E74F74();

  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = a1;
  swift_storeEnumTagMultiPayload();
  sub_1C2C70B1C(v11, v12, a1);
  v15 = _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  v28 = v10;
  sub_1C2D15F5C(v10, v7);
  v31 = v7;
  sub_1C2D15F5C(v7, v4);
  type metadata accessor for ControlButtonConfiguration(0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v17 + 56) = -256;
  v18 = (v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v19 = 0;
  v19[1] = 0;
  v20 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v20 = 0;
  *(v20 + 8) = 1;

  sub_1C2E71A94();
  *(v16 + 16) = 1;
  v29 = v13;
  *(v16 + 24) = v13;
  *(v16 + 32) = 1;
  v27[1] = v14;
  *(v16 + 40) = v14;
  *(v16 + 48) = 1;
  v30 = v4;
  sub_1C2D15F5C(v4, v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element);
  *(v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = v15;
  v21 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v22 = sub_1C2D3972C;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v37 = -256;
  v27[3] = v15;

  sub_1C2D7E988(v35);
  swift_beginAccess();
  if (v18[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v27[-3] = 0;
    v27[-2] = 0;
    v27[-4] = v16;
    v34 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();
  }

  else
  {
    *v18 = 0;
    v18[1] = 0;
  }

  swift_beginAccess();
  if (v19[1])
  {
    v24 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v24);
    v27[-3] = 0;
    v27[-2] = 0;
    v27[-4] = v16;
    v33 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();
  }

  else
  {
    *v19 = 0;
    v19[1] = 0;
  }

  swift_beginAccess();
  if (*(v20 + 8))
  {

    sub_1C2D15FC0(v30);
    sub_1C2D15FC0(v31);
    sub_1C2D15FC0(v28);
    *v20 = 0;
    *(v20 + 8) = 1;
  }

  else
  {
    v25 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v25);
    v27[-4] = v16;
    v27[-3] = 0;
    LOBYTE(v27[-2]) = 1;
    v32 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();

    sub_1C2D15FC0(v30);
    sub_1C2D15FC0(v31);
    sub_1C2D15FC0(v28);
  }

  return v16;
}

unint64_t sub_1C2D39140()
{
  result = qword_1EC05BDA0;
  if (!qword_1EC05BDA0)
  {
    type metadata accessor for ControlButtonConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BDA0);
  }

  return result;
}

uint64_t sub_1C2D391B8(uint64_t a1)
{
  v27[2] = 0;
  v2 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v13 = sub_1C2E74F74();

  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v14 = sub_1C2E74F74();

  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = a1;
  swift_storeEnumTagMultiPayload();
  sub_1C2C70B1C(v11, v12, a1);
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v15 = sub_1C2E74F74();

  v28 = v10;
  sub_1C2D15F5C(v10, v7);
  v31 = v7;
  sub_1C2D15F5C(v7, v4);
  type metadata accessor for ControlButtonConfiguration(0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__menuConfiguration;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v17 + 56) = -256;
  v18 = (v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityIdentifier);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityValue);
  *v19 = 0;
  v19[1] = 0;
  v20 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__accessibilityTraits;
  *v20 = 0;
  *(v20 + 8) = 1;

  sub_1C2E71A94();
  *(v16 + 16) = 0;
  v29 = v13;
  *(v16 + 24) = v13;
  *(v16 + 32) = 1;
  v27[1] = v14;
  *(v16 + 40) = v14;
  *(v16 + 48) = 1;
  v30 = v4;
  sub_1C2D15F5C(v4, v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__element);
  *(v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__elementColor) = v15;
  v21 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__clipShape;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v16 + OBJC_IVAR____TtC16CommunicationsUI26ControlButtonConfiguration__fontConfiguration;
  *v22 = sub_1C2D3972C;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v37 = -256;
  v27[3] = v15;

  sub_1C2D7E988(v35);
  swift_beginAccess();
  if (v18[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v27[-3] = 0;
    v27[-2] = 0;
    v27[-4] = v16;
    v34 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();
  }

  else
  {
    *v18 = 0;
    v18[1] = 0;
  }

  swift_beginAccess();
  if (v19[1])
  {
    v24 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v24);
    v27[-3] = 0;
    v27[-2] = 0;
    v27[-4] = v16;
    v33 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();
  }

  else
  {
    *v19 = 0;
    v19[1] = 0;
  }

  swift_beginAccess();
  if (*(v20 + 8))
  {

    sub_1C2D15FC0(v30);
    sub_1C2D15FC0(v31);
    sub_1C2D15FC0(v28);
    *v20 = 0;
    *(v20 + 8) = 1;
  }

  else
  {
    v25 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v25);
    v27[-4] = v16;
    v27[-3] = 0;
    LOBYTE(v27[-2]) = 1;
    v32 = v16;
    sub_1C2D39140();
    sub_1C2E71A54();

    sub_1C2D15FC0(v30);
    sub_1C2D15FC0(v31);
    sub_1C2D15FC0(v28);
  }

  return v16;
}

char *BlurryMaskView.init(textSize:isBottomVisiblePublisher:topPositions:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC00, &unk_1C2E7B180);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v32 - v8;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_subscription] = 0;
  v3[OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_isBottomVisible] = 1;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_textSize] = a3;
  *&v3[OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_topPositions] = a2;
  v9 = type metadata accessor for BlurryMaskView();
  v41.receiver = v3;
  v41.super_class = v9;
  v10 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  v14 = [v12 layer];
  objc_opt_self();
  v35 = swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A700;
  *(inited + 32) = [v11 clearColor];
  *(inited + 40) = [v11 blackColor];
  *(inited + 48) = [v11 blackColor];
  *(inited + 56) = [v11 clearColor];
  v40 = MEMORY[0x1E69E7CC0];
  result = sub_1C2CA4B74(0, 4, 0);
  v17 = v40;
  if ((inited & 0xC000000000000001) != 0 || *((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v33 = a1;
    v34 = v7;
    for (i = 0; i != 4; ++i)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1C6927010](i, inited);
      }

      else
      {
        v19 = *(inited + 8 * i + 32);
      }

      v20 = v19;
      v21 = [v19 CGColor];
      type metadata accessor for CGColor(0);
      v39 = v22;

      *&v38 = v21;
      v40 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C2CA4B74((v23 > 1), v24 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v24 + 1;
      sub_1C2D3A588(&v38, (v17 + 32 * v24 + 32));
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    v25 = sub_1C2E75D64();

    [v35 setColors_];

    v26 = [v12 layer];
    objc_opt_self();
    v27 = swift_dynamicCastObjCClassUnconditional();
    sub_1C2D3A2CC(1);
    sub_1C2C6E1B4(0, &qword_1EC0626C0, 0x1E696AD98);
    v28 = sub_1C2E75D64();

    [v27 setLocations_];

    *&v38 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC10, &qword_1C2E7B190);
    sub_1C2C94F38(&qword_1EC05BAC8, &qword_1EC05DC10, &qword_1C2E7B190, MEMORY[0x1E695BED8]);
    v29 = v36;
    sub_1C2E72F04();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C2C94F38(&qword_1EC05DC18, &qword_1EC05DC00, &unk_1C2E7B180, MEMORY[0x1E695BD38]);
    v30 = v34;
    v31 = sub_1C2E72F14();

    (*(v37 + 8))(v29, v30);
    *&v12[OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_subscription] = v31;

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C2D39D78(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_isBottomVisible);
    *(Strong + OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_isBottomVisible) = v2;
    if (v2 != v5)
    {
      sub_1C2D3A038(v2);
    }
  }
}

void sub_1C2D39ECC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BlurryMaskView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  [v0 bounds];
  [v2 setFrame_];
}

void sub_1C2D3A038(uint64_t a1)
{
  v2 = a1;
  v3 = objc_opt_self();
  [v3 begin];
  sub_1C2D3A2CC(v2);
  v4 = sub_1C2E75C24();
  v5 = [objc_opt_self() animationWithKeyPath_];

  v6 = *MEMORY[0x1E69797E8];
  v14 = v5;
  [v14 setFillMode_];
  v7 = [v1 layer];
  objc_opt_self();
  v8 = [swift_dynamicCastObjCClassUnconditional() locations];

  [v14 setFromValue_];
  sub_1C2C6E1B4(0, &qword_1EC0626C0, 0x1E696AD98);
  v9 = sub_1C2E75D64();
  [v14 setToValue_];

  [v14 setDuration_];
  v10 = [v1 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  v12 = sub_1C2E75D64();

  [v11 setLocations_];

  v13 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() addAnimation:v14 forKey:0];

  [v3 commit];
}

uint64_t sub_1C2D3A2CC(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_topPositions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060200, &unk_1C2E83360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A110;
  [v1 bounds];
  v6 = v5 + *&v1[OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_textSize] * -1.5;
  [v1 bounds];
  v8 = v6 / v7;
  if (a1)
  {
    v8 = 0.99;
  }

  *(inited + 32) = v8;
  *(inited + 40) = 0x3FF0000000000000;

  sub_1C2CA2FD4(inited);
  v9 = *(v3 + 16);
  if (v9)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1C2E76634();
    v10 = 32;
    do
    {
      sub_1C2E71B54();
      sub_1C2E76614();
      sub_1C2E76644();
      sub_1C2E76654();
      sub_1C2E76624();
      v10 += 8;
      --v9;
    }

    while (v9);

    return v12;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

id BlurryMaskView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BlurryMaskView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurryMaskView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *sub_1C2D3A588(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1C2D3A5CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1C2E75C64();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1C2D3A624()
{
  result = [objc_opt_self() isCommunicationSafetyEnabled];
  byte_1EC060208 = result;
  return result;
}

uint64_t ContactAvatarBackgroundView.init(state:prefersBlurOnFullBleedImageStyles:wantsLargePoster:wantsBlurWholePoster:)@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v20 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v22 = a1;
  sub_1C2C6E3A4(a1, v37);
  LOBYTE(v26) = 0;
  sub_1C2E75174();
  v13 = v28[0];
  v14 = v29;
  v33 = v28[0];
  v34 = v29;
  v24 = 0;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060210, &unk_1C2E83370);
  sub_1C2E75174();
  v15 = v26;
  sub_1C2C6E3A4(v37, v28);
  v30 = a2;
  v24 = 0;
  v25 = 0;
  sub_1C2E75174();
  sub_1C2C71668(v15, *(&v15 + 1));

  v35 = v26;
  v36 = v27;
  v31 = a3;
  v32 = a4;
  v16 = v38;
  v17 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v17 + 40))(v16, v17);
  LOBYTE(v26) = v13;
  *(&v26 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8, &unk_1C2E7D350);
  sub_1C2E75184();
  if ((v24 & 1) == 0)
  {
    v18 = v21;
    sub_1C2D3D368(v12, v21, type metadata accessor for ContactAvatarTileView.ImageStyle);
    if ((swift_getEnumCaseMultiPayload() | 2) == 2)
    {
      sub_1C2C7348C(v18, type metadata accessor for ContactAvatarTileView.ImageStyle);
      LOBYTE(v26) = v13;
      *(&v26 + 1) = v14;
      LOBYTE(v24) = 1;
      sub_1C2E75194();
    }

    else
    {
      sub_1C2C7348C(v18, type metadata accessor for ContactAvatarTileView.ImageStyle);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_1C2C7348C(v12, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2C7360C(v28, v23);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1C2C746B0(v28);
}

uint64_t sub_1C2D3A938@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602E0, &qword_1C2E83520);
  MEMORY[0x1EEE9AC00](v159);
  v160 = (&v135 - v3);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602B8, &qword_1C2E833E8);
  MEMORY[0x1EEE9AC00](v173);
  v161 = &v135 - v4;
  v139 = type metadata accessor for CUVideoMessagingURLImageView(0);
  MEMORY[0x1EEE9AC00](v139);
  v144 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602E8, &qword_1C2E83528);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v135 - v6;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602C8, &qword_1C2E833F0);
  MEMORY[0x1EEE9AC00](v158);
  v141 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v146 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20, &qword_1C2E83530);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v157 = &v135 - v11;
  v145 = sub_1C2E71784();
  v156 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v155 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for CUPosterOrAvatarView(0);
  MEMORY[0x1EEE9AC00](v138);
  v148 = (&v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602A8, &qword_1C2E833E0);
  MEMORY[0x1EEE9AC00](v151);
  v135 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v135 - v16;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602F0, &qword_1C2E83538);
  MEMORY[0x1EEE9AC00](v149);
  v150 = (&v135 - v17);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060288, &qword_1C2E833C8);
  MEMORY[0x1EEE9AC00](v168);
  v152 = &v135 - v18;
  v19 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v147 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for ClippedImageBackgroundView(0);
  MEMORY[0x1EEE9AC00](v154);
  v22 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v140 = &v135 - v24;
  v137 = type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v137);
  v153 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602F8, &qword_1C2E83540);
  MEMORY[0x1EEE9AC00](v170);
  v172 = &v135 - v26;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060300, &qword_1C2E83548);
  MEMORY[0x1EEE9AC00](v165);
  v167 = &v135 - v27;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060308, &unk_1C2E83550);
  MEMORY[0x1EEE9AC00](v163);
  v164 = &v135 - v28;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060258, &qword_1C2E833A0);
  MEMORY[0x1EEE9AC00](v166);
  v162 = &v135 - v29;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060250, &qword_1C2E83398);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v135 - v30;
  v31 = sub_1C2E75054();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  (*(v38 + 40))(v39, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v77 = *v37;
      v78 = sub_1C2E73674();
      v79 = sub_1C2E74454();
      v80 = v160;
      *v160 = v77;
      v80[1] = v78;
      *(v80 + 16) = v79;
      *(v80 + 17) = 0;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602D0, &qword_1C2E833F8);
      sub_1C2C94F38(&qword_1EC0602C0, &qword_1EC0602C8, &qword_1C2E833F0, MEMORY[0x1E6981810]);
      sub_1C2C74AE0();
      v81 = v161;
      sub_1C2E73F44();
      sub_1C2C736A4(v81, v172, &qword_1EC0602B8, &qword_1C2E833E8);
      swift_storeEnumTagMultiPayload();
      sub_1C2D3C970();
      sub_1C2D3CD44();
      sub_1C2E73F44();

      v82 = v81;
      v83 = &qword_1EC0602B8;
      v84 = &qword_1C2E833E8;
      return sub_1C2C73644(v82, v83, v84);
    }

    if (EnumCaseMultiPayload != 4)
    {
      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F140, &qword_1C2E7EA08) + 48);
      v91 = v156;
      v92 = v155;
      v35 = v145;
      (*(v156 + 32))(v155, v37, v145);
      v93 = &v37[v90];
      v94 = v157;
      sub_1C2C71D5C(v93, v157, &unk_1EC061C20, &qword_1C2E83530);
      v59 = *(v91 + 16);
      v32 = v144;
      (v59)(v144, v92, v35);
      v95 = v139;
      sub_1C2C736A4(v94, v32 + *(v139 + 20), &unk_1EC061C20, &qword_1C2E83530);
      v96 = a1[3];
      v97 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v96);
      (*(v97 + 16))(&v177, v96, v97);
      v98 = *(v95 + 24);
      v176 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C30, &unk_1C2E83560);
      sub_1C2E75174();
      *(v32 + v98) = v175;
      sub_1C2C736A4(&v177, &v175, &unk_1EC061C40, &qword_1C2E7EA40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C40, &qword_1C2E7EA40);
      sub_1C2E75174();
      sub_1C2C73644(&v177, &unk_1EC061C40, &qword_1C2E7EA40);
      v99 = a1[3];
      v100 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v99);
      (*(v100 + 16))(&v177, v99, v100);
      v101 = *(&v178 + 1);
      if (*(&v178 + 1))
      {
        v102 = v179;
        __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
        v103 = (*(v102 + 40))(v101, v102);
        __swift_destroy_boxed_opaque_existential_1(&v177);
        if (v103)
        {
          if (qword_1EC05CF60 == -1)
          {
            goto LABEL_30;
          }

          goto LABEL_57;
        }
      }

      else
      {
        sub_1C2C73644(&v177, &unk_1EC061C40, &qword_1C2E7EA40);
      }

LABEL_33:
      v104 = 0.0;
LABEL_34:
      v105 = v142;
      sub_1C2D3D300(v32, v142, type metadata accessor for CUVideoMessagingURLImageView);
      v106 = v105 + *(v143 + 36);
      *v106 = v104;
      *(v106 + 8) = 1;
      v107 = v141;
      sub_1C2C71D5C(v105, v141, &qword_1EC0602E8, &qword_1C2E83528);
      v108 = v155;
      (v59)(v107 + *(v158 + 52), v155, v35);
      v109 = v146;
      sub_1C2C71D5C(v107, v146, &qword_1EC0602C8, &qword_1C2E833F0);
      sub_1C2C736A4(v109, v160, &qword_1EC0602C8, &qword_1C2E833F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0602D0, &qword_1C2E833F8);
      sub_1C2C94F38(&qword_1EC0602C0, &qword_1EC0602C8, &qword_1C2E833F0, MEMORY[0x1E6981810]);
      sub_1C2C74AE0();
      v110 = v161;
      sub_1C2E73F44();
      sub_1C2C736A4(v110, v172, &qword_1EC0602B8, &qword_1C2E833E8);
      swift_storeEnumTagMultiPayload();
      sub_1C2D3C970();
      sub_1C2D3CD44();
      sub_1C2E73F44();
      sub_1C2C73644(v110, &qword_1EC0602B8, &qword_1C2E833E8);
      sub_1C2C73644(v109, &qword_1EC0602C8, &qword_1C2E833F0);
      sub_1C2C73644(v157, &unk_1EC061C20, &qword_1C2E83530);
      return (*(v156 + 8))(v108, v35);
    }

    v57 = *v37;
    KeyPath = swift_getKeyPath();
    v59 = v148;
    *v148 = KeyPath;
    v59[1] = 0;
    *(v59 + 16) = 0;
    v60 = swift_allocObject();
    v60[3] = 0;
    v60[4] = 0;
    v60[2] = v57;
    _s5ModelCMa(0);

    sub_1C2E73074();
    if (v57 >> 62)
    {
      v61 = sub_1C2E764E4();
      if (v61)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v61 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
LABEL_11:
        *&v177 = MEMORY[0x1E69E7CC0];
        sub_1C2C7B754(0, v61 & ~(v61 >> 63), 0);
        if ((v61 & 0x8000000000000000) == 0)
        {
          v62 = 0;
          v63 = v177;
          do
          {
            if ((v57 & 0xC000000000000001) != 0)
            {
              v64 = MEMORY[0x1C6927010](v62, v57);
            }

            else
            {
              v64 = *(v57 + 8 * v62 + 32);
            }

            v65 = v64;
            v66 = [v65 identifier];
            v67 = sub_1C2E75C64();
            v69 = v68;

            *&v177 = v63;
            v71 = *(v63 + 16);
            v70 = *(v63 + 24);
            if (v71 >= v70 >> 1)
            {
              sub_1C2C7B754((v70 > 1), v71 + 1, 1);
              v63 = v177;
            }

            ++v62;
            *(v63 + 16) = v71 + 1;
            v72 = v63 + 16 * v71;
            *(v72 + 32) = v67;
            *(v72 + 40) = v69;
          }

          while (v61 != v62);

          goto LABEL_54;
        }

        __break(1u);
LABEL_57:
        swift_once();
LABEL_30:
        v104 = 30.0;
        if (byte_1EC060208)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    v63 = MEMORY[0x1E69E7CC0];
LABEL_54:
    *&v177 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EB28, &qword_1C2E7D7F0);
    sub_1C2C94F38(&qword_1EC05EB30, &qword_1EC05EB28, &qword_1C2E7D7F0, MEMORY[0x1E69E6310]);
    v127 = sub_1C2E75B74();
    v129 = v128;

    v130 = v135;
    sub_1C2D3D300(v148, v135, type metadata accessor for CUPosterOrAvatarView);
    v131 = (v130 + *(v151 + 52));
    *v131 = v127;
    v131[1] = v129;
    v132 = v136;
    sub_1C2C71D5C(v130, v136, &qword_1EC0602A8, &qword_1C2E833E0);
    sub_1C2C736A4(v132, v150, &qword_1EC0602A8, &qword_1C2E833E0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060290, &unk_1C2E833D0);
    sub_1C2C749B4();
    sub_1C2C94F38(&qword_1EC0602A0, &qword_1EC0602A8, &qword_1C2E833E0, MEMORY[0x1E6981810]);
    v133 = v152;
    sub_1C2E73F44();
    sub_1C2C736A4(v133, v167, &qword_1EC060288, &qword_1C2E833C8);
    swift_storeEnumTagMultiPayload();
    sub_1C2D3C9FC();
    sub_1C2D3CC1C();
    v134 = v169;
    sub_1C2E73F44();
    sub_1C2C73644(v133, &qword_1EC060288, &qword_1C2E833C8);
    sub_1C2C736A4(v134, v172, &qword_1EC060250, &qword_1C2E83398);
    swift_storeEnumTagMultiPayload();
    sub_1C2D3C970();
    sub_1C2D3CD44();
    sub_1C2E73F44();
    sub_1C2C73644(v134, &qword_1EC060250, &qword_1C2E83398);
    v82 = v132;
    v83 = &qword_1EC0602A8;
    v84 = &qword_1C2E833E0;
    return sub_1C2C73644(v82, v83, v84);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = v37;
      v42 = v153;
      sub_1C2D3D300(v41, v153, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
      v43 = *v42;
      v161 = *(v42 + 8);
      v44 = *(v42 + 16);
      v158 = *(v42 + 24);
      v45 = *(v42 + 32);
      v46 = *(v42 + 40);
      v157 = *(v42 + 48);
      v47 = *(v42 + 56);
      v160 = *(v42 + 64);
      v48 = *(v42 + 72);
      v49 = v147;
      sub_1C2D3D368(v42 + *(v137 + 36), v147, type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
      v50 = v43;
      v51 = v161;
      *v22 = v43;
      *(v22 + 1) = v51;
      LODWORD(v159) = v44;
      v22[16] = v44;
      *(v22 + 3) = v158;
      v22[32] = v45;
      v52 = v157;
      *(v22 + 5) = v46;
      *(v22 + 6) = v52;
      v22[56] = v47;
      sub_1C2D3D368(v49, &v22[*(v154 + 32)], type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
      v53 = v48;
      if (v48)
      {
        v54 = v164;
        if (v48 == 1)
        {
          sub_1C2C70B1C(v43, v161, v159);
          sub_1C2C7348C(v49, type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
          v161 = 0;
          v55 = -96;
          v50 = v160;
          v56 = v162;
        }

        else
        {
          v56 = v162;
          if (!v160)
          {
            if (v159)
            {
              v124 = v161;
              if (v159 == 1)
              {
                sub_1C2C70B1C(v43, v161, 1u);
                sub_1C2C70B1C(v43, v124, 1u);
                v125 = sub_1C2E75064();
              }

              else
              {
                sub_1C2C70B1C(v43, v161, 2u);
                sub_1C2C70B1C(v43, v124, 2u);
                v125 = sub_1C2E75034();
              }
            }

            else
            {
              v126 = v161;
              sub_1C2C70B1C(v43, v161, 0);
              sub_1C2C70B1C(v43, v126, 0);
              v125 = sub_1C2E750D4();
            }

            v50 = v125;
            v112 = v140;
            sub_1C2C7348C(v147, type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
            v161 = 0;
            v55 = 96;
            goto LABEL_43;
          }

          v116 = v161;
          v117 = v159;
          sub_1C2C70B1C(v43, v161, v159);
          sub_1C2C70B1C(v43, v116, v117);
          sub_1C2C7348C(v147, type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
          v55 = v117 | 0x80;
        }

        v112 = v140;
      }

      else
      {
        sub_1C2C70B1C(v43, v161, v159);
        sub_1C2C7348C(v49, type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
        v161 = 0;
        v55 = 32;
        v50 = v160;
        v56 = v162;
        v112 = v140;
        v54 = v164;
      }

LABEL_43:
      v118 = v161;
      *(v22 + 8) = v50;
      *(v22 + 9) = v118;
      v22[80] = v55;
      sub_1C2D3D300(v22, v112, type metadata accessor for ClippedImageBackgroundView);
      sub_1C2D3D368(v112, v54, type metadata accessor for ClippedImageBackgroundView);
      swift_storeEnumTagMultiPayload();
      sub_1C2D29128(v160, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060260, &qword_1C2E833A8);
      sub_1C2D3CAB8();
      sub_1C2D3CE80(&qword_1EC05CE38, type metadata accessor for ClippedImageBackgroundView, &protocol conformance descriptor for ClippedImageBackgroundView);
      sub_1C2E73F44();
      sub_1C2C736A4(v56, v167, &qword_1EC060258, &qword_1C2E833A0);
      swift_storeEnumTagMultiPayload();
      sub_1C2D3C9FC();
      sub_1C2D3CC1C();
      v119 = v169;
      sub_1C2E73F44();
      sub_1C2C73644(v56, &qword_1EC060258, &qword_1C2E833A0);
      sub_1C2C736A4(v119, v172, &qword_1EC060250, &qword_1C2E83398);
      swift_storeEnumTagMultiPayload();
      sub_1C2D3C970();
      sub_1C2D3CD44();
      sub_1C2E73F44();
      sub_1C2C73644(v119, &qword_1EC060250, &qword_1C2E83398);
      sub_1C2C7348C(v112, type metadata accessor for ClippedImageBackgroundView);
      return sub_1C2C7348C(v153, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
    }

    v86 = *v37;
    v85 = *(v37 + 1);
    v87 = v37[16];
    if (v37[16])
    {
      v88 = *v37;
      v89 = *(v37 + 1);
      if (v87 == 1)
      {
        sub_1C2C70B1C(v88, v89, 1u);
        sub_1C2E75064();
      }

      else
      {
        sub_1C2C70B1C(v88, v89, 2u);
        sub_1C2E75034();
      }
    }

    else
    {
      sub_1C2C70B1C(*v37, *(v37 + 1), 0);
      sub_1C2E750D4();
    }

    (*(v32 + 104))(v34, *MEMORY[0x1E6981630], v31);
    v120 = sub_1C2E750C4();

    (*(v32 + 8))(v34, v31);
    v121 = v150;
    *v150 = v120;
    v121[1] = 0;
    *(v121 + 16) = 1;
    *(v121 + 17) = 1;
    *(v121 + 19) = 0;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060290, &unk_1C2E833D0);
    sub_1C2C749B4();
    sub_1C2C94F38(&qword_1EC0602A0, &qword_1EC0602A8, &qword_1C2E833E0, MEMORY[0x1E6981810]);
    v122 = v152;
    sub_1C2E73F44();
    sub_1C2C736A4(v122, v167, &qword_1EC060288, &qword_1C2E833C8);
    swift_storeEnumTagMultiPayload();
    sub_1C2D3C9FC();
    sub_1C2D3CC1C();
    v123 = v169;
    sub_1C2E73F44();
    sub_1C2C73644(v122, &qword_1EC060288, &qword_1C2E833C8);
    sub_1C2C736A4(v123, v172, &qword_1EC060250, &qword_1C2E83398);
    swift_storeEnumTagMultiPayload();
    sub_1C2D3C970();
    sub_1C2D3CD44();
    sub_1C2E73F44();

    sub_1C2C77608(v86, v85, v87);
    v82 = v123;
    v83 = &qword_1EC060250;
    v84 = &qword_1C2E83398;
  }

  else
  {
    v74 = *v37;
    v73 = *(v37 + 1);
    v75 = v37[16];
    v161 = v73;
    if (v75)
    {
      v76 = v164;
      if (v75 == 1)
      {
        sub_1C2C70B1C(v74, v73, 1u);
        sub_1C2E75064();
      }

      else
      {
        sub_1C2C70B1C(v74, v73, 2u);
        sub_1C2E75034();
      }
    }

    else
    {
      sub_1C2C70B1C(v74, v73, 0);
      sub_1C2E750D4();
      v76 = v164;
    }

    (*(v32 + 104))(v34, *MEMORY[0x1E6981630], v31);
    v113 = sub_1C2E750C4();

    (*(v32 + 8))(v34, v31);
    LOBYTE(v176) = 1;
    v177 = v113;
    v178 = 0uLL;
    LOBYTE(v179) = 1;
    *(&v179 + 1) = 1;
    BYTE3(v179) = 0;
    *v76 = v113;
    *(v76 + 1) = 0uLL;
    *(v76 + 8) = v179;
    swift_storeEnumTagMultiPayload();
    sub_1C2C736A4(&v177, &v175, &qword_1EC060260, &qword_1C2E833A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060260, &qword_1C2E833A8);
    sub_1C2D3CAB8();
    sub_1C2D3CE80(&qword_1EC05CE38, type metadata accessor for ClippedImageBackgroundView, &protocol conformance descriptor for ClippedImageBackgroundView);
    v114 = v162;
    sub_1C2E73F44();
    sub_1C2C736A4(v114, v167, &qword_1EC060258, &qword_1C2E833A0);
    swift_storeEnumTagMultiPayload();
    sub_1C2D3C9FC();
    sub_1C2D3CC1C();
    v115 = v169;
    sub_1C2E73F44();
    sub_1C2C73644(v114, &qword_1EC060258, &qword_1C2E833A0);
    sub_1C2C736A4(v115, v172, &qword_1EC060250, &qword_1C2E83398);
    swift_storeEnumTagMultiPayload();
    sub_1C2D3C970();
    sub_1C2D3CD44();
    sub_1C2E73F44();
    sub_1C2C73644(&v177, &qword_1EC060260, &qword_1C2E833A8);
    sub_1C2C77608(v74, v161, v75);
    v82 = v115;
    v83 = &qword_1EC060250;
    v84 = &qword_1C2E83398;
  }

  return sub_1C2C73644(v82, v83, v84);
}

void *sub_1C2D3C670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 48);
  v9 = *(a3 + 56);
  v13 = v8;
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8, &unk_1C2E7D350);
  result = sub_1C2E75184();
  if ((v12 & 1) == 0)
  {
    sub_1C2D3D368(a2, v7, type metadata accessor for ContactAvatarTileView.ImageStyle);
    if ((swift_getEnumCaseMultiPayload() | 2) == 2)
    {
      sub_1C2C7348C(v7, type metadata accessor for ContactAvatarTileView.ImageStyle);
      v13 = v8;
      v14 = v9;
      v12 = 1;
      return sub_1C2E75194();
    }

    else
    {
      return sub_1C2C7348C(v7, type metadata accessor for ContactAvatarTileView.ImageStyle);
    }
  }

  return result;
}

unint64_t sub_1C2D3C7D4()
{
  result = qword_1EC060228;
  if (!qword_1EC060228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060220, &qword_1C2E83388);
    sub_1C2D3C860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060228);
  }

  return result;
}

unint64_t sub_1C2D3C860()
{
  result = qword_1EC060230;
  if (!qword_1EC060230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060218, &qword_1C2E83380);
    sub_1C2D3C8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060230);
  }

  return result;
}

unint64_t sub_1C2D3C8E4()
{
  result = qword_1EC060238;
  if (!qword_1EC060238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060240, &qword_1C2E83390);
    sub_1C2D3C970();
    sub_1C2D3CD44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060238);
  }

  return result;
}

unint64_t sub_1C2D3C970()
{
  result = qword_1EC060248;
  if (!qword_1EC060248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060250, &qword_1C2E83398);
    sub_1C2D3C9FC();
    sub_1C2D3CC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060248);
  }

  return result;
}

unint64_t sub_1C2D3C9FC()
{
  result = qword_1EC05B578;
  if (!qword_1EC05B578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060258, &qword_1C2E833A0);
    sub_1C2D3CAB8();
    sub_1C2D3CE80(&qword_1EC05CE38, type metadata accessor for ClippedImageBackgroundView, &protocol conformance descriptor for ClippedImageBackgroundView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B578);
  }

  return result;
}

unint64_t sub_1C2D3CAB8()
{
  result = qword_1EC05B690;
  if (!qword_1EC05B690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060260, &qword_1C2E833A8);
    sub_1C2D3CB70();
    sub_1C2C94F38(&qword_1EC05CBF0, &qword_1EC060278, &qword_1C2E833C0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B690);
  }

  return result;
}

unint64_t sub_1C2D3CB70()
{
  result = qword_1EC05B728;
  if (!qword_1EC05B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060268, &qword_1C2E833B0);
    sub_1C2D3CCD4(&qword_1EC05B868, &qword_1EC060270, &qword_1C2E833B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B728);
  }

  return result;
}

unint64_t sub_1C2D3CC1C()
{
  result = qword_1EC060280;
  if (!qword_1EC060280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060288, &qword_1C2E833C8);
    sub_1C2C749B4();
    sub_1C2C94F38(&qword_1EC0602A0, &qword_1EC0602A8, &qword_1C2E833E0, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060280);
  }

  return result;
}

uint64_t sub_1C2D3CCD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2D3CD44()
{
  result = qword_1EC0602B0;
  if (!qword_1EC0602B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0602B8, &qword_1C2E833E8);
    sub_1C2C94F38(&qword_1EC0602C0, &qword_1EC0602C8, &qword_1C2E833F0, MEMORY[0x1E6981810]);
    sub_1C2C74AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0602B0);
  }

  return result;
}

unint64_t sub_1C2D3CDFC()
{
  result = qword_1EC05CBA0;
  if (!qword_1EC05CBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0602D8, &qword_1C2E83400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CBA0);
  }

  return result;
}

uint64_t sub_1C2D3CE80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ContactAvatarBackgroundView.onPreferredForegroundColorChange(onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22 = a1;
  v23 = a3;
  v20 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  sub_1C2C6E3A4(v4, v37);
  v10 = *(v4 + 40);
  v11 = *(v4 + 41);
  LOBYTE(v26) = 0;
  sub_1C2E75174();
  v12 = v28[0];
  v13 = v29;
  v33 = v28[0];
  v34 = v29;
  v24 = 0;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060210, &unk_1C2E83370);
  sub_1C2E75174();
  v14 = v26;
  sub_1C2C6E3A4(v37, v28);
  v30 = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = v22;
  *(v15 + 24) = a2;
  v24 = sub_1C2D3D1D8;
  v25 = v15;

  sub_1C2E75174();
  sub_1C2C71668(v14, *(&v14 + 1));

  v35 = v26;
  v36 = v27;
  v31 = v11;
  v32 = 0;
  v16 = v38;
  v17 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v17 + 40))(v16, v17);
  LOBYTE(v26) = v12;
  *(&v26 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8, &unk_1C2E7D350);
  sub_1C2E75184();
  if ((v24 & 1) == 0)
  {
    v18 = v21;
    sub_1C2D3D368(v9, v21, type metadata accessor for ContactAvatarTileView.ImageStyle);
    if ((swift_getEnumCaseMultiPayload() | 2) == 2)
    {
      sub_1C2C7348C(v18, type metadata accessor for ContactAvatarTileView.ImageStyle);
      LOBYTE(v26) = v12;
      *(&v26 + 1) = v13;
      LOBYTE(v24) = 1;
      sub_1C2E75194();
    }

    else
    {
      sub_1C2C7348C(v18, type metadata accessor for ContactAvatarTileView.ImageStyle);
    }
  }

  sub_1C2C7348C(v9, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2C7360C(v28, v23);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1C2C746B0(v28);
}

uint64_t sub_1C2D3D300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2D3D368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void static RecentCellStyle.phone.getter(void *a1@<X8>)
{
  v2 = sub_1C2E74624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E74694();
  v6 = *MEMORY[0x1E6980EA8];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  sub_1C2E74664();

  v8 = *(v3 + 8);
  v8(v5, v2);
  v9 = sub_1C2E74654();

  sub_1C2E744F4();
  v7(v5, v6, v2);
  sub_1C2E74664();

  v8(v5, v2);
  v10 = sub_1C2E74654();

  *a1 = 0x4049000000000000;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = 0x4024000000000000;
}

void static RecentCellStyle.mac.getter(void *a2@<X8>)
{
  sub_1C2E74514();
  sub_1C2E74584();
  sub_1C2E74604();

  v3 = sub_1C2E74654();

  sub_1C2E744F4();
  v4 = sub_1C2E74654();

  *a2 = 0x4042000000000000;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = 0x4020000000000000;
}

void static RecentCellStyle.vision.getter(void *a2@<X8>)
{
  sub_1C2E74694();
  sub_1C2E745A4();
  sub_1C2E74604();

  v3 = sub_1C2E74654();

  sub_1C2E744F4();
  sub_1C2E74594();
  sub_1C2E74604();

  v4 = sub_1C2E74654();

  *a2 = 0x404A000000000000;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = 0x4028000000000000;
}

void static RecentCellStyle.current.getter(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];

  static RecentCellStyle.phone.getter(a1);
}

void *EnvironmentValues.recentCellStyle.getter()
{
  sub_1C2C7CFC4();

  return sub_1C2E73BB4();
}

uint64_t (*EnvironmentValues.recentCellStyle.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_1C2C7CFC4();
  sub_1C2E73BB4();
  return sub_1C2D3D87C;
}

void sub_1C2D3D87C(void **a1, char a2)
{
  v2 = *a1;
  (*a1)[4] = **a1;
  v3 = v2[2];
  v4 = v2[3];
  v2[5] = v2[1];
  v2[6] = v3;
  v2[7] = v4;
  if (a2)
  {

    sub_1C2E73BC4();
  }

  else
  {
    sub_1C2E73BC4();
  }

  free(v2);
}

uint64_t FavoriteTile.init(width:state:imageView:badgeView:)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, uint64_t a9)
{
  *(a7 + 48) = swift_getKeyPath();
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 0;
  *a7 = a8;
  sub_1C2C6E3A4(a1, a7 + 8);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a9;
  type metadata accessor for FavoriteTile(0, v19);
  v17 = a2();
  a3(v17);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double FavoriteTileImage.init(contact:shadowRadius:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = swift_getKeyPath();
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = a1;
  *(a2 + 56) = a3;
  return result;
}

uint64_t FavoriteTileImage.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_1C2D3E460;
  a1[1] = v5;
  return sub_1C2D3E468(v10, &v9);
}

uint64_t sub_1C2D3DB08@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v74 = sub_1C2E718A4();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C2E737C4();
  MEMORY[0x1EEE9AC00](v67);
  v69 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_1C2E73BA4();
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CUPosterOrAvatarView(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060340, &qword_1C2E83878);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v59 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060348, &qword_1C2E83880);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v59 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E800, &qword_1C2E93350);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C2E7A930;
  v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  *&v85 = sub_1C2CF0D4C;
  *(&v85 + 1) = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v84 = sub_1C2CF0DD4;
  *(&v84 + 1) = &block_descriptor_8;
  v16 = _Block_copy(&aBlock);
  [v15 initWithDynamicProvider_];
  _Block_release(v16);

  *(v14 + 32) = sub_1C2E74E94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C2E7A720;
  v18 = *(a2 + 6);
  *(v17 + 32) = v18;
  *v11 = swift_getKeyPath();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = 0;
  v19[4] = v14;
  _s5ModelCMa(0);
  v20 = v18;

  sub_1C2E73074();
  sub_1C2E732C4();
  v71 = a1;
  sub_1C2E732C4();
  v21 = a2[1];
  v86 = *a2;
  *v87 = v21;
  v70 = a2;
  *&v87[9] = *(a2 + 25);
  v22 = v86;
  v23 = *&v87[16];
  v24 = v87[24];
  v61 = v8;
  v60 = v21;
  v59 = *&v87[8];
  if (v87[24] == 1)
  {
    v76 = v86;
    v77 = *v87;
    v78 = *&v87[16];
    sub_1C2C736A4(&v86, &aBlock, &qword_1EC060350, &qword_1C2E838B0);
    v25 = v65;
  }

  else
  {
    sub_1C2C736A4(&v86, &aBlock, &qword_1EC060350, &qword_1C2E838B0);
    sub_1C2E75FD4();
    v26 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2C73644(&v86, &qword_1EC060350, &qword_1C2E838B0);
    v25 = v65;
    (*(v66 + 8))(v8, v65);
  }

  sub_1C2E75744();
  sub_1C2E73274();
  v27 = v64;
  sub_1C2D4082C(v11, v64);
  v28 = (v27 + *(v62 + 36));
  v29 = v84;
  *v28 = aBlock;
  v28[1] = v29;
  v28[2] = v85;
  KeyPath = swift_getKeyPath();
  v31 = v68;
  sub_1C2C71D5C(v27, v68, &qword_1EC060340, &qword_1C2E83878);
  v32 = v31 + *(v63 + 36);
  *v32 = KeyPath;
  *(v32 + 8) = 0;
  *(v32 + 16) = v14;
  if (v24)
  {
    v79 = v22;
    v80 = v60;
    v81 = v59;
    v82 = v23;
    sub_1C2C736A4(&v86, &v76, &qword_1EC060350, &qword_1C2E838B0);
    v33 = *(&v22 + 1);
  }

  else
  {
    sub_1C2C736A4(&v86, &v76, &qword_1EC060350, &qword_1C2E838B0);
    sub_1C2E75FD4();
    v34 = sub_1C2E74404();
    sub_1C2E72B14();

    v35 = v61;
    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2C73644(&v86, &qword_1EC060350, &qword_1C2E838B0);
    (*(v66 + 8))(v35, v25);
    v33 = *(&v79 + 1);
  }

  v36 = *(v70 + 7);

  sub_1C2E732C4();
  v38 = v33 * v37;
  v39 = *(v67 + 20);
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1C2E73D44();
  v42 = v69;
  (*(*(v41 - 8) + 104))(v69 + v39, v40, v41);
  *v42 = v38;
  v42[1] = v38;
  sub_1C2E732C4();
  v44 = v43;
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060358, &qword_1C2E838B8);
  v48 = v75;
  v49 = (v75 + *(v47 + 36));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060360, &qword_1C2E838C0);
  sub_1C2D40890(v42, v49 + v50[10]);
  *v49 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9E0, &qword_1C2E7D4E0);
  swift_storeEnumTagMultiPayload();
  *(v49 + v50[9]) = v36;
  v51 = (v49 + v50[11]);
  *v51 = v44;
  v51[1] = v46;
  v52 = v49 + v50[12];
  v53 = v72;
  sub_1C2E71894();
  v54 = sub_1C2E71854();
  v56 = v55;
  (*(v73 + 8))(v53, v74);
  *&v79 = v54;
  *(&v79 + 1) = v56;
  sub_1C2E75174();
  sub_1C2D408F4(v42);
  v57 = v77;
  *v52 = v76;
  *(v52 + 2) = v57;
  return sub_1C2C71D5C(v31, v48, &qword_1EC060348, &qword_1C2E83880);
}

uint64_t sub_1C2D3E4A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v12 = *(v1 + 80);
  if (*(v1 + 88) == 1)
  {
    *a1 = v9;
    a1[1] = v8;
    a1[2] = v11;
    a1[3] = v10;
    a1[4] = v12;
  }

  else
  {
    v16 = v5;

    sub_1C2E75FD4();
    v14 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2C7DF38(v9, v8, v11, v10, v12, 0);
    return (*(v4 + 8))(v7, v16);
  }
}

uint64_t sub_1C2D3E64C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v102 = a5;
  v101 = a2;
  v95 = a1;
  v85 = a6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1A0, &qword_1C2E7C1D0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v69 - v10;
  v96 = sub_1C2E73554();
  v98 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v90 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1A8, &qword_1C2E7C1D8);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v69 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060310, &qword_1C2E842A0);
  v86 = a3;
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F548, &qword_1C2E83180);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570, &qword_1C2E80140);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0, &unk_1C2E7B640);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060318, &qword_1C2E83698);
  swift_getTupleTypeMetadata2();
  v93 = sub_1C2E75844();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1C2E752E4();
  v94 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v69 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8, &unk_1C2E7C240);
  v89 = v16;
  v18 = sub_1C2E73654();
  v77 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v69 - v19;
  v20 = swift_getWitnessTable();
  v88 = v20;
  v21 = sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
  v115 = v20;
  v116 = v21;
  v87 = MEMORY[0x1E697E858];
  v22 = swift_getWitnessTable();
  v23 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8, &qword_1C2E7C1D8, MEMORY[0x1E69E5FB8]);
  v79 = v18;
  v111 = v18;
  v112 = v14;
  v83 = v14;
  v72 = v22;
  v113 = v22;
  v114 = v23;
  v71 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v76 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v75 = &v69 - v26;
  v27 = v101;
  v28 = sub_1C2E73654();
  v99 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v69 - v32;
  v34 = v95;
  v111 = v27;
  v112 = a3;
  v113 = a4;
  v114 = v102;
  type metadata accessor for FavoriteTile(0, &v111);
  sub_1C2D3E4A0(&v111);

  sub_1C2D3E4A0(&v111);

  sub_1C2E75744();
  v35 = v101;
  sub_1C2E74D14();
  v110[2] = a4;
  v110[3] = MEMORY[0x1E697E040];
  v36 = swift_getWitnessTable();
  v70 = v33;
  v69 = v36;
  sub_1C2C6EE48(v30);
  v37 = v99 + 8;
  v38 = *(v99 + 8);
  v73 = v30;
  v87 = v28;
  v38(v30, v28);
  sub_1C2E73DC4();
  v103 = v35;
  v104 = v86;
  v105 = a4;
  v106 = v102;
  v107 = v34;
  v39 = v91;
  sub_1C2E752D4();
  sub_1C2D3E4A0(&v111);
  v40 = v89;
  sub_1C2E74CE4();

  (*(v94 + 8))(v39, v40);
  v41 = v98;
  v42 = v97;
  v43 = *(v98 + 104);
  v44 = v96;
  v43(v97, *MEMORY[0x1E697E6F0], v96);
  v45 = v90;
  v43(v90, *MEMORY[0x1E697E728], v44);
  sub_1C2C6EA44(&qword_1EC05CBC8, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1C2E75B94();
  if (result)
  {
    v102 = v38;
    v47 = *(v41 + 32);
    v48 = v81;
    v47(v81, v42, v44);
    v49 = v82;
    v47((v48 + *(v82 + 48)), v45, v44);
    v50 = v84;
    sub_1C2C736A4(v48, v84, &qword_1EC05E1A0, &qword_1C2E7C1D0);
    v51 = *(v49 + 48);
    v52 = v80;
    v47(v80, v50, v44);
    v101 = v37;
    v53 = *(v41 + 8);
    v53(v50 + v51, v44);
    sub_1C2C71D5C(v48, v50, &qword_1EC05E1A0, &qword_1C2E7C1D0);
    v54 = v83;
    v47((v52 + *(v83 + 36)), (v50 + *(v49 + 48)), v44);
    v53(v50, v44);
    v55 = v76;
    v56 = v79;
    v57 = v72;
    v58 = v71;
    v59 = v100;
    sub_1C2E74A84();
    sub_1C2C73644(v52, &qword_1EC05E1A8, &qword_1C2E7C1D8);
    (*(v77 + 8))(v59, v56);
    v111 = v56;
    v112 = v54;
    v113 = v57;
    v114 = v58;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = v75;
    v62 = OpaqueTypeMetadata2;
    sub_1C2C6EE48(v55);
    v63 = v74;
    v64 = *(v74 + 8);
    v64(v55, v62);
    v65 = v73;
    v66 = v70;
    v67 = v87;
    (*(v99 + 16))(v73, v70, v87);
    v111 = v65;
    (*(v63 + 16))(v55, v61, v62);
    v112 = v55;
    v110[0] = v67;
    v110[1] = v62;
    v108 = v69;
    v109 = OpaqueTypeConformance2;
    sub_1C2C6EC40(&v111, 2uLL, v110);
    v64(v61, v62);
    v68 = v102;
    v102(v66, v67);
    v64(v55, v62);
    return v68(v65, v67);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2D3F31C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a4;
  v61 = a2;
  v70 = a1;
  v69 = a6;
  v65 = sub_1C2E750B4();
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060310, &qword_1C2E842A0);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v8 = sub_1C2E75214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F548, &qword_1C2E83180);
  v12 = sub_1C2E73654();
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570, &qword_1C2E80140);
  v15 = sub_1C2E73654();
  v66 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0, &unk_1C2E7B640);
  v73 = sub_1C2E73654();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v61 - v20;
  v75 = v61;
  v76 = a3;
  v77 = v63;
  v78 = v62;
  v21 = v70;
  v79 = v70;
  sub_1C2E73C24();
  sub_1C2E75204();
  LODWORD(v83) = sub_1C2E740F4();
  WitnessTable = swift_getWitnessTable();
  sub_1C2E74A94();
  (*(v9 + 8))(v11, v8);
  v24 = v21[4];
  v23 = v21[5];
  __swift_project_boxed_opaque_existential_1(v21 + 1, v24);
  (*(v23 + 32))(v24, v23);
  v25 = sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548, &qword_1C2E83180, MEMORY[0x1E6980490]);
  v90[6] = WitnessTable;
  v90[7] = v25;
  v26 = swift_getWitnessTable();
  v27 = v17;
  sub_1C2E74E54();
  (*(v64 + 8))(v14, v12);
  v28 = v68;
  v29 = v67;
  v30 = v65;
  (*(v68 + 104))(v67, *MEMORY[0x1E69816C8], v65);
  v31 = MEMORY[0x1E6980A18];
  v32 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570, &qword_1C2E80140, MEMORY[0x1E6980A18]);
  v90[4] = v26;
  v90[5] = v32;
  v33 = swift_getWitnessTable();
  v34 = v74;
  sub_1C2E74944();
  (*(v28 + 8))(v29, v30);
  (*(v66 + 8))(v27, v15);
  v35 = sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0, &unk_1C2E7B640, v31);
  v90[2] = v33;
  v90[3] = v35;
  v36 = v73;
  v67 = swift_getWitnessTable();
  sub_1C2C6EE48(v34);
  v68 = *(v71 + 8);
  (v68)(v34, v36);
  v37 = v70[4];
  v38 = v70[5];
  __swift_project_boxed_opaque_existential_1(v70 + 1, v37);
  v39 = (*(v38 + 24))(v37, v38);
  if (v40)
  {
    v83 = v39;
    v84 = v40;
    sub_1C2C74960();
    v41 = sub_1C2E748A4();
    v43 = v42;
    v45 = v44;
    LODWORD(v83) = sub_1C2E740E4();
    v46 = sub_1C2E74794();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_1C2C72340(v41, v43, v45 & 1);

    KeyPath = swift_getKeyPath();
    v54 = v50 & 1;
    sub_1C2C72330(v46, v48, v50 & 1);

    v55 = 1;
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v54 = 0;
    v52 = 0;
    KeyPath = 0;
    v55 = 0;
  }

  v56 = v74;
  v57 = v72;
  v58 = v73;
  (*(v71 + 16))(v74, v72, v73);
  v83 = v46;
  v84 = v48;
  v85 = v54;
  v86 = v52;
  v87 = KeyPath;
  v88 = v55;
  v89 = 0;
  v90[0] = v56;
  v90[1] = &v83;
  v82[0] = v58;
  v82[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060318, &qword_1C2E83698);
  v80 = v67;
  v81 = sub_1C2D40714();
  sub_1C2C6EC40(v90, 2uLL, v82);
  sub_1C2C71E88(v46, v48, v54, v52, KeyPath);
  v59 = v68;
  (v68)(v57, v58);
  sub_1C2C71E88(v83, v84, v85, v86, v87);
  return v59(v56, v58);
}

uint64_t sub_1C2D3FC14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v11 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  *&v53 = a4;
  *(&v53 + 1) = a5;
  v19 = a1 + *(type metadata accessor for FavoriteTile(0, &v52) + 64);
  v42 = a5;
  sub_1C2C6EE48(v19);
  v20 = a1[4];
  v21 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v20);
  if ((*(v21 + 8))(v20, v21))
  {
    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E73CC4();
    sub_1C2E73CE4();
    v23 = a1[4];
    v22 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1 + 1, v23);
    (*(v22 + 16))(v23, v22);
    sub_1C2E73CD4();

    sub_1C2E73CE4();
    sub_1C2E73D24();
    v24 = sub_1C2E74884();
    v26 = v25;
    v47 = v24;
    v48 = v25;
    LOBYTE(v22) = v27 & 1;
    v49 = v27 & 1;
    v50 = v28;
    v51 = 0;
    sub_1C2C72330(v24, v25, v27 & 1);

    sub_1C2C72330(v24, v26, v22);

    sub_1C2E73F44();

    sub_1C2C72340(v24, v26, v22);

    sub_1C2C72340(v24, v26, v22);
  }

  else
  {
    v29 = a1[4];
    v30 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1 + 1, v29);
    *&v52 = (*(v30 + 16))(v29, v30);
    *(&v52 + 1) = v31;
    sub_1C2C74960();
    v47 = sub_1C2E748A4();
    v48 = v33;
    v49 = v32 & 1;
    v50 = v34;
    v51 = 1;
    sub_1C2E73F44();
  }

  v40 = v52;
  v41 = v53;
  v35 = v54;
  (*(v12 + 16))(v15, v18, a3);
  v52 = v40;
  v53 = v41;
  v54 = v35;
  v47 = v15;
  v48 = &v52;
  v36 = v40;
  v37 = v41;
  sub_1C2D1EF64(v40, *(&v40 + 1), v41, *(&v41 + 1));
  v46[0] = a3;
  v46[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060310, &qword_1C2E842A0);
  v44 = v42;
  v45 = sub_1C2D40798();
  sub_1C2C6EC40(&v47, 2uLL, v46);
  sub_1C2D1EFA0(v36, *(&v36 + 1), v37, *(&v37 + 1));
  v38 = *(v12 + 8);
  v38(v18, a3);
  sub_1C2D1EFA0(v52, *(&v52 + 1), v53, *(&v53 + 1));
  return (v38)(v15, a3);
}

uint64_t sub_1C2D400DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2D40124(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1C2D40174(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 89) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      v23 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (((v23 + 47) & 0xFFFFFFFFFFFFFFF8) + v9 + 41) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v25);
        }

        else
        {
          return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v24 = *(v23 + 24);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1C2D403A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 89) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v24 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (((v24 + 47) & 0xFFFFFFFFFFFFFFF8) + v10 + 41) & ~v10;
    if (v8 == v14)
    {
      v26 = *(v6 + 56);

      v26(v25);
    }

    else
    {
      v27 = *(v9 + 56);
      v28 = (v25 + v11 + v12) & ~v12;

      v27(v28);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v24 + 8) = 0u;
    *(v24 + 24) = 0u;
    *v24 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v24 + 24) = a2 - 1;
  }
}

unint64_t sub_1C2D40714()
{
  result = qword_1EC060330;
  if (!qword_1EC060330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060318, &qword_1C2E83698);
    sub_1C2C74F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060330);
  }

  return result;
}

unint64_t sub_1C2D40798()
{
  result = qword_1EC060338;
  if (!qword_1EC060338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060310, &qword_1C2E842A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060338);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D4082C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUPosterOrAvatarView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D40890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E737C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2D408F4(uint64_t a1)
{
  v2 = sub_1C2E737C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InfoButtonConfiguration.action.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t InfoButtonConfiguration.init(color:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C2D409E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  *a1 = v1[1];
  *(a1 + 8) = v3;
  *(a1 + 16) = xmmword_1C2E83900;
  *(a1 + 32) = 1;
  *(a1 + 40) = v2;
}

uint64_t sub_1C2D40A58@<X0>(uint64_t *a2@<X8>)
{
  result = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  *a2 = result;
  a2[1] = CGPointMake;
  a2[2] = 0;
  return result;
}

unint64_t sub_1C2D40A94()
{
  result = qword_1EC060368;
  if (!qword_1EC060368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060370, &qword_1C2E83A70);
    sub_1C2D40B20();
    sub_1C2D40B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060368);
  }

  return result;
}

unint64_t sub_1C2D40B20()
{
  result = qword_1EC060378;
  if (!qword_1EC060378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060378);
  }

  return result;
}

unint64_t sub_1C2D40B74()
{
  result = qword_1EC060380;
  if (!qword_1EC060380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060380);
  }

  return result;
}

unint64_t sub_1C2D40BC8()
{
  result = qword_1EC060388;
  if (!qword_1EC060388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060390, qword_1C2E83A78);
    sub_1C2D40C54();
    sub_1C2D40CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060388);
  }

  return result;
}

unint64_t sub_1C2D40C54()
{
  result = qword_1EC060398;
  if (!qword_1EC060398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060398);
  }

  return result;
}

unint64_t sub_1C2D40CA8()
{
  result = qword_1EDDCDA28[0];
  if (!qword_1EDDCDA28[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0, &qword_1C2E7C220);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDCDA28);
  }

  return result;
}

id sub_1C2D40D54()
{
  type metadata accessor for BundleType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC0603A0 = result;
  return result;
}

id static NSBundle.communicationsUI.getter()
{
  if (qword_1EC05CF70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC0603A0;

  return v1;
}

uint64_t IntelligenceBottomApertureView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for IntelligenceMessageViewModel(0);
  result = sub_1C2E75174();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for IntelligenceMessageViewModel(uint64_t a1)
{
  result = qword_1EC060428;
  if (!qword_1EC060428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceMessageViewModel.__allocating_init(statusMessageLeadingImage:statusMessage:secondaryMessage:centerAlignText:spacingToDivider:lineLimit:messageStyle:secondaryMessageStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v35 = a6;
  v36 = a7;
  v33 = a1;
  v34 = a5;
  v32 = a4;
  v30 = a2;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
  v17 = sub_1C2E71664();
  v18 = *(*(v17 - 8) + 56);
  v18(v15 + v16, 1, 1, v17);
  *(v15 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage) = 0;
  v19 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage;
  v18(v15 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage, 1, 1, v17);
  v20 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle;
  v21 = sub_1C2E72244();
  v22 = *(*(v21 - 8) + 56);
  v22(v15 + v20, 1, 1, v21);
  v22(v15 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle, 1, 1, v21);
  sub_1C2E71A94();
  v23 = v30;
  sub_1C2C736A4(v30, v14, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C73644(v15 + v16, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C71D5C(v14, v15 + v16, &qword_1EC05E088, &qword_1C2E80EE0);
  v24 = v31;
  sub_1C2C736A4(v31, v14, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C73644(v15 + v19, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C71D5C(v14, v15 + v19, &qword_1EC05E088, &qword_1C2E80EE0);
  *(v15 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_centerAlignText) = v32;
  *(v15 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_lineLimit) = v34;
  *(v15 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_spacingToDivider) = a8;

  sub_1C2D414B0(v25);
  v26 = v35;
  sub_1C2C736A4(v35, v11, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2D41C54(v11, &OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle, &unk_1C2E83AD0, sub_1C2D4501C);
  v27 = v36;
  sub_1C2C736A4(v36, v11, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2D41C54(v11, &OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle, &unk_1C2E83AF8, sub_1C2D44FA0);

  sub_1C2C73644(v27, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2C73644(v26, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2C73644(v24, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C73644(v23, &qword_1EC05E088, &qword_1C2E80EE0);
  return v15;
}

uint64_t sub_1C2D41324()
{
  swift_getKeyPath();
  sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
  sub_1C2E71A64();
}

uint64_t sub_1C2D413D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage);
}

double sub_1C2D414B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage;
  if (!*(v1 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
    sub_1C2E71A54();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1C2E75084();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

void sub_1C2D41620(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage) = a2;
}

uint64_t sub_1C2D41688@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
  sub_1C2E71A64();

  v10 = *a2;
  swift_beginAccess();
  return sub_1C2C736A4(v12 + v10, a5, a3, a4);
}

uint64_t sub_1C2D41768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C2C736A4(a1, &v6 - v3, &qword_1EC05E088, &qword_1C2E80EE0);
  return sub_1C2D41860(v4, &OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage, &unk_1C2E83D30, sub_1C2D44ED0);
}

uint64_t sub_1C2D41860(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v14 - v8;
  v10 = *a2;
  swift_beginAccess();
  sub_1C2C736A4(v4 + v10, v9, &qword_1EC05E088, &qword_1C2E80EE0);
  LOBYTE(a2) = sub_1C2D44BB0(v9, a1, v11);
  sub_1C2C73644(v9, &qword_1EC05E088, &qword_1C2E80EE0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = v4;
    v14[-1] = a1;
    v14[2] = v4;
    sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2D44F38(a1, v4 + v10, &qword_1EC05E088, &qword_1C2E80EE0);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC05E088, &qword_1C2E80EE0);
}

uint64_t sub_1C2D41A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1C2D44F38(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1C2D41B20@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
  sub_1C2E71A64();

  v11 = *a3;
  swift_beginAccess();
  return sub_1C2C736A4(v10 + v11, a6, a4, a5);
}

uint64_t sub_1C2D41C54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v13 - v8;
  v10 = *a2;
  swift_beginAccess();
  sub_1C2C736A4(v4 + v10, v9, &qword_1EC0603A8, &unk_1C2E83AC0);
  LOBYTE(a2) = sub_1C2D44890(v9, a1);
  sub_1C2C73644(v9, &qword_1EC0603A8, &unk_1C2E83AC0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v4;
    v13[-1] = a1;
    v13[2] = v4;
    sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2D44F38(a1, v4 + v10, &qword_1EC0603A8, &unk_1C2E83AC0);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC0603A8, &unk_1C2E83AC0);
}

uint64_t sub_1C2D41EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1C2C736A4(a1, &v15 - v12, &qword_1EC0603A8, &unk_1C2E83AC0);
  return sub_1C2D41C54(v13, a5, a6, a7);
}

uint64_t IntelligenceMessageViewModel.init(statusMessageLeadingImage:statusMessage:secondaryMessage:centerAlignText:spacingToDivider:lineLimit:messageStyle:secondaryMessageStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v35 = a6;
  v36 = a7;
  v33 = a1;
  v34 = a5;
  v32 = a4;
  v30 = a2;
  v31 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  v16 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
  v17 = sub_1C2E71664();
  v18 = *(*(v17 - 8) + 56);
  v18(v8 + v16, 1, 1, v17);
  *(v8 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage) = 0;
  v19 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage;
  v18(v8 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage, 1, 1, v17);
  v20 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle;
  v21 = sub_1C2E72244();
  v22 = *(*(v21 - 8) + 56);
  v22(v8 + v20, 1, 1, v21);
  v22(v8 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle, 1, 1, v21);
  sub_1C2E71A94();
  v23 = v30;
  sub_1C2C736A4(v30, v15, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C73644(v8 + v16, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C71D5C(v15, v8 + v16, &qword_1EC05E088, &qword_1C2E80EE0);
  v24 = v31;
  sub_1C2C736A4(v31, v15, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C73644(v8 + v19, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C71D5C(v15, v8 + v19, &qword_1EC05E088, &qword_1C2E80EE0);
  *(v8 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_centerAlignText) = v32;
  *(v8 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_lineLimit) = v34;
  *(v8 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_spacingToDivider) = a8;

  sub_1C2D414B0(v25);
  v26 = v35;
  sub_1C2C736A4(v35, v12, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2D41C54(v12, &OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle, &unk_1C2E83AD0, sub_1C2D4501C);
  v27 = v36;
  sub_1C2C736A4(v36, v12, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2D41C54(v12, &OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle, &unk_1C2E83AF8, sub_1C2D44FA0);

  sub_1C2C73644(v27, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2C73644(v26, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2C73644(v24, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C73644(v23, &qword_1EC05E088, &qword_1C2E80EE0);
  return v8;
}

double IntelligenceMessageViewModel.updateLeadingImage(image:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage;
  if (!*(v1 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
    sub_1C2E71A54();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1C2E75084();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1C2D42530(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1C2C736A4(a1, &v12 - v9, &qword_1EC05E088, &qword_1C2E80EE0);
  return sub_1C2D41860(v10, a2, a3, a4);
}

uint64_t IntelligenceMessageViewModel.deinit()
{
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage, &qword_1EC05E088, &qword_1C2E80EE0);

  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle, &qword_1EC0603A8, &unk_1C2E83AC0);
  v1 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IntelligenceMessageViewModel.__deallocating_deinit()
{
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage, &qword_1EC05E088, &qword_1C2E80EE0);

  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle, &qword_1EC0603A8, &unk_1C2E83AC0);
  v1 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t IntelligenceBottomApertureView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E75184();
  return v1;
}

double sub_1C2D42870(uint64_t *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E75194();

  return result;
}

void (*IntelligenceBottomApertureView.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E75184();
  return sub_1C2CBDA7C;
}

uint64_t IntelligenceBottomApertureView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E751A4();
  return v1;
}

uint64_t IntelligenceBottomApertureView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603E0, &qword_1C2E83B50);
  MEMORY[0x1EEE9AC00](v66);
  v61 = (&v53 - v2);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603E8, &qword_1C2E83B58);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v53 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603F0, &qword_1C2E83B60);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = (&v53 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v53 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v56 = (&v53 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v53 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603F8, &qword_1C2E83B68);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v63 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_1C2E71664();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v73 = *v1;
  v74 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E75184();
  v23 = v71;
  swift_getKeyPath();
  v73 = v23;
  sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
  sub_1C2E71A64();

  v24 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
  swift_beginAccess();
  sub_1C2C736A4(v23 + v24, v16, &qword_1EC05E088, &qword_1C2E80EE0);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1C2C73644(v16, &qword_1EC05E088, &qword_1C2E80EE0);
    return (*(v67 + 56))(v68, 1, 1, v69);
  }

  else
  {
    v26 = v67;
    v54 = v18;
    v27 = *(v18 + 32);
    v55 = v17;
    v27(v20, v16, v17);
    v71 = v22;
    v72 = v21;
    sub_1C2E75184();
    v28 = *(v70 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_centerAlignText);

    v29 = v21;
    if (v28 == 1)
    {
      v71 = v22;
      v72 = v21;
      sub_1C2E75184();
      v30 = *(v70 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_centerAlignText);

      v31 = v68;
      if (v30 == 1)
      {
        v32 = sub_1C2E73DC4();
      }

      else
      {
        v32 = sub_1C2E73DD4();
      }

      v38 = v69;
      v39 = v56;
      *v56 = v32;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060408, &qword_1C2E83BA0);
      sub_1C2D432D4(v22, v29, v20, v39 + *(v40 + 44));
      v41 = v58;
      sub_1C2C71D5C(v39, v58, &qword_1EC0603F0, &qword_1C2E83B60);
      v42 = v20;
      sub_1C2C736A4(v41, v65, &qword_1EC0603F0, &qword_1C2E83B60);
      swift_storeEnumTagMultiPayload();
      sub_1C2C94F38(&qword_1EC060418, &qword_1EC0603F0, &qword_1C2E83B60, MEMORY[0x1E6981870]);
      sub_1C2C94F38(&qword_1EC060420, &qword_1EC0603E0, &qword_1C2E83B50, MEMORY[0x1E69817F8]);
      v43 = v63;
      sub_1C2E73F44();
      sub_1C2C73644(v41, &qword_1EC0603F0, &qword_1C2E83B60);
    }

    else
    {
      v33 = sub_1C2E73C24();
      v34 = v61;
      *v61 = v33;
      v34[1] = 0;
      *(v34 + 16) = 0;
      v71 = v22;
      v72 = v21;
      sub_1C2E75184();
      v35 = *(v70 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_centerAlignText);

      v36 = v22;
      if (v35 == 1)
      {
        v37 = sub_1C2E73DC4();
      }

      else
      {
        v37 = sub_1C2E73DD4();
      }

      v44 = v37;
      v43 = v63;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060400, &qword_1C2E83B98);
      v46 = v61;
      v47 = v61 + *(v45 + 44);
      v48 = v57;
      *v57 = v44;
      *(v48 + 8) = 0;
      *(v48 + 16) = 0;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060408, &qword_1C2E83BA0);
      sub_1C2D432D4(v36, v21, v20, v48 + *(v49 + 44));
      v50 = v59;
      sub_1C2C71D5C(v48, v59, &qword_1EC0603F0, &qword_1C2E83B60);
      v51 = v60;
      sub_1C2C736A4(v50, v60, &qword_1EC0603F0, &qword_1C2E83B60);
      sub_1C2C736A4(v51, v47, &qword_1EC0603F0, &qword_1C2E83B60);
      v52 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060410, &qword_1C2E83BA8) + 48);
      *v52 = 0;
      *(v52 + 8) = 1;
      sub_1C2C73644(v50, &qword_1EC0603F0, &qword_1C2E83B60);
      sub_1C2C73644(v51, &qword_1EC0603F0, &qword_1C2E83B60);
      v42 = v20;
      sub_1C2C736A4(v46, v65, &qword_1EC0603E0, &qword_1C2E83B50);
      swift_storeEnumTagMultiPayload();
      sub_1C2C94F38(&qword_1EC060418, &qword_1EC0603F0, &qword_1C2E83B60, MEMORY[0x1E6981870]);
      sub_1C2C94F38(&qword_1EC060420, &qword_1EC0603E0, &qword_1C2E83B50, MEMORY[0x1E69817F8]);
      sub_1C2E73F44();
      sub_1C2C73644(v46, &qword_1EC0603E0, &qword_1C2E83B50);
      v31 = v68;
      v38 = v69;
    }

    sub_1C2C71D5C(v43, v31, &qword_1EC0603F8, &qword_1C2E83B68);
    (*(v26 + 56))(v31, 0, 1, v38);
    return (*(v54 + 8))(v42, v55);
  }
}

uint64_t sub_1C2D432D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v114 = a4;
  v7 = sub_1C2E71664();
  v128 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v105 - v12;
  v119 = sub_1C2E74624();
  v124 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v105 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v105 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060460, &qword_1C2E83CF8);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v105 - v25;
  sub_1C2E75414();
  v27 = sub_1C2E74474();
  v146 = a1;
  v147 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E75184();

  sub_1C2E73034();
  v29 = *(v22 + 44);
  v130 = v26;
  v30 = &v26[v29];
  *v30 = v27;
  *(v30 + 1) = v31.n128_u64[0];
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v146 = a1;
  v147 = a2;
  v35 = sub_1C2D4403C(v132, v31);
  v126 = v36;
  v127 = v35;
  LODWORD(v122) = v37;
  v129 = v38;
  v146 = a1;
  v147 = a2;
  sub_1C2E75184();
  *(&v125 + 1) = *(v134 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_lineLimit);

  *&v125 = swift_getKeyPath();
  v146 = a1;
  v133 = a2;
  v147 = a2;
  v116 = v28;
  sub_1C2E75184();
  v39 = v134;
  swift_getKeyPath();
  v146 = v39;
  sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
  sub_1C2E71A64();

  v40 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage;
  swift_beginAccess();
  sub_1C2C736A4(v39 + v40, v20, &qword_1EC05E088, &qword_1C2E80EE0);

  v42 = v128 + 48;
  v41 = *(v128 + 48);
  v132 = v7;
  v115 = v41;
  LODWORD(v40) = v41(v20, 1, v7);
  sub_1C2C73644(v20, &qword_1EC05E088, &qword_1C2E80EE0);
  v43 = (v124 + 104);
  v44 = (v124 + 8);
  v111 = v42;
  if (v40 == 1)
  {
    sub_1C2E74514();
  }

  else
  {
    sub_1C2E744F4();
  }

  v45 = *v43;
  v47 = v118;
  v46 = v119;
  v106 = *MEMORY[0x1E6980EA8];
  v107 = v45;
  v108 = v43;
  v45(v118);
  v124 = sub_1C2E74664();

  v48 = *v44;
  v109 = v44;
  v105 = v48;
  v48(v47, v46);
  KeyPath = swift_getKeyPath();
  v121 = v122 & 1;
  v163 = v122 & 1;
  v161 = 0;
  v122 = swift_getKeyPath();
  v146 = a1;
  v49 = v133;
  v147 = v133;
  *&v134 = a1;
  *(&v134 + 1) = v133;
  sub_1C2E75184();
  v50 = v145[0];
  swift_getKeyPath();
  *&v134 = v50;
  sub_1C2E71A64();

  v51 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle;
  swift_beginAccess();
  v52 = v117;
  sub_1C2C736A4(v50 + v51, v117, &qword_1EC0603A8, &unk_1C2E83AC0);

  v53 = sub_1C2D442C0(v52);
  sub_1C2C73644(v52, &qword_1EC0603A8, &unk_1C2E83AC0);
  if (v53)
  {
    v54 = a1;
    v120 = v53;
  }

  else
  {
    v54 = a1;
    v146 = a1;
    v147 = v49;
    sub_1C2E75184();
    v55 = v134;
    swift_getKeyPath();
    v146 = v55;
    sub_1C2E71A64();

    v56 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage;
    swift_beginAccess();
    v57 = v55 + v56;
    v58 = v120;
    sub_1C2C736A4(v57, v120, &qword_1EC05E088, &qword_1C2E80EE0);

    LODWORD(v55) = v115(v58, 1, v132);
    sub_1C2C73644(v58, &qword_1EC05E088, &qword_1C2E80EE0);
    if (v55 == 1)
    {
      v59 = sub_1C2E74FA4();
    }

    else
    {
      v59 = sub_1C2E74F84();
    }

    v120 = v59;
  }

  v60 = v54;
  v146 = v54;
  v61 = v133;
  v147 = v133;
  sub_1C2E75184();
  v62 = v134;
  swift_getKeyPath();
  v146 = v62;
  sub_1C2E71A64();

  v63 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage;
  swift_beginAccess();
  v64 = v112;
  sub_1C2C736A4(v62 + v63, v112, &qword_1EC05E088, &qword_1C2E80EE0);

  if (v115(v64, 1, v132) == 1)
  {
    sub_1C2C73644(v64, &qword_1EC05E088, &qword_1C2E80EE0);
    v112 = 0;
    v116 = 0;
    v117 = 0;
    v115 = 0;
    v65 = 0;
    v66 = 0;
    v133 = 0;
    v67 = 0;
  }

  else
  {
    v68 = v128;
    v69 = v113;
    v70 = v64;
    v71 = v132;
    (*(v128 + 32))(v113, v70, v132);
    (*(v68 + 16))(v110, v69, v71);
    v72 = sub_1C2E74894();
    v110 = v73;
    v111 = v74;
    v76 = v75;
    v146 = v60;
    v147 = v61;
    *&v134 = v60;
    *(&v134 + 1) = v61;
    sub_1C2E75184();
    v77 = v145[0];
    swift_getKeyPath();
    *&v134 = v77;
    sub_1C2E71A64();

    v78 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle;
    swift_beginAccess();
    v79 = v117;
    sub_1C2C736A4(v77 + v78, v117, &qword_1EC0603A8, &unk_1C2E83AC0);

    v80 = sub_1C2D442C0(v79);
    sub_1C2C73644(v79, &qword_1EC0603A8, &unk_1C2E83AC0);
    if (!v80)
    {
      v80 = sub_1C2E74FA4();
    }

    v146 = v80;
    v81 = v110;
    v112 = sub_1C2E74794();
    v117 = v82;
    v84 = v83;
    v115 = v85;
    sub_1C2C72340(v72, v81, v76 & 1);

    v146 = v60;
    v147 = v133;
    sub_1C2E75184();
    v65 = *(v134 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_lineLimit);

    v116 = swift_getKeyPath();
    sub_1C2E744F4();
    v87 = v118;
    v86 = v119;
    v107(v118, v106, v119);
    v133 = sub_1C2E74664();

    v105(v87, v86);
    (*(v128 + 8))(v113, v132);
    v66 = swift_getKeyPath();
    LOBYTE(v146) = v84 & 1;
    LOBYTE(v134) = 0;
    v67 = v84 & 1;
  }

  v88 = v131;
  sub_1C2C736A4(v130, v131, &qword_1EC060460, &qword_1C2E83CF8);
  v89 = v114;
  sub_1C2C736A4(v88, v114, &qword_1EC060460, &qword_1C2E83CF8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060468, &qword_1C2E83DB8);
  v91 = (v89 + *(v90 + 48));
  *&v134 = v127;
  *(&v134 + 1) = v126;
  LOBYTE(v135) = v121;
  *(&v135 + 1) = *v162;
  DWORD1(v135) = *&v162[3];
  *(&v135 + 1) = v129;
  v136 = v125;
  LOBYTE(v137) = 0;
  *(&v137 + 1) = *v160;
  DWORD1(v137) = *&v160[3];
  *(&v137 + 1) = KeyPath;
  *&v138 = v124;
  *(&v138 + 1) = v122;
  LOBYTE(v139) = 0;
  *(&v139 + 1) = v164[0];
  DWORD1(v139) = *(v164 + 3);
  *(&v139 + 1) = v120;
  v92 = v135;
  *v91 = v134;
  v91[1] = v92;
  v93 = v136;
  v94 = v137;
  v95 = v139;
  v91[4] = v138;
  v91[5] = v95;
  v91[2] = v93;
  v91[3] = v94;
  v96 = v89 + *(v90 + 64);
  v97 = v112;
  v98 = v117;
  *&v140 = v112;
  *(&v140 + 1) = v117;
  v132 = v67;
  v99 = v115;
  *&v141 = v67;
  *(&v141 + 1) = v115;
  v100 = v116;
  *&v142 = v116;
  *(&v142 + 1) = v65;
  v128 = 0;
  *&v143 = 0;
  *(&v143 + 1) = v66;
  v101 = v133;
  v144 = v133;
  *(v96 + 64) = v133;
  v102 = v141;
  *v96 = v140;
  *(v96 + 16) = v102;
  v103 = v143;
  *(v96 + 32) = v142;
  *(v96 + 48) = v103;
  sub_1C2C736A4(&v134, &v146, &qword_1EC060470, &qword_1C2E83DC0);
  sub_1C2C736A4(&v140, &v146, &qword_1EC060478, &qword_1C2E83DC8);
  sub_1C2C73644(v130, &qword_1EC060460, &qword_1C2E83CF8);
  v145[0] = v97;
  v145[1] = v98;
  v145[2] = v132;
  v145[3] = v99;
  v145[4] = v100;
  v145[5] = v65;
  v145[6] = v128;
  v145[7] = v66;
  v145[8] = v101;
  sub_1C2C73644(v145, &qword_1EC060478, &qword_1C2E83DC8);
  v146 = v127;
  v147 = v126;
  v148 = v121;
  *v149 = *v162;
  *&v149[3] = *&v162[3];
  v150 = v129;
  v151 = v125;
  v152 = 0;
  *v153 = *v160;
  *&v153[3] = *&v160[3];
  v154 = KeyPath;
  v155 = v124;
  v156 = v122;
  v157 = 0;
  *v158 = v164[0];
  *&v158[3] = *(v164 + 3);
  v159 = v120;
  sub_1C2C73644(&v146, &qword_1EC060470, &qword_1C2E83DC0);
  return sub_1C2C73644(v131, &qword_1EC060460, &qword_1C2E83CF8);
}

uint64_t sub_1C2D4403C(uint64_t a1, __n128 a2)
{
  v4 = sub_1C2E71664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = v2[1];
  v15 = *v2;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E038, &unk_1C2E7BEB0);
  sub_1C2E75184();
  v10 = v14[3];
  swift_getKeyPath();
  v15 = v10;
  sub_1C2D44FD4(&qword_1EC05E090, type metadata accessor for IntelligenceMessageViewModel, &protocol conformance descriptor for IntelligenceMessageViewModel);
  sub_1C2E71A64();

  v11 = *(v10 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage);

  if (v11)
  {
    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E73CC4();
    sub_1C2E73CE4();
    sub_1C2E73CA4();
    sub_1C2E73CE4();
    sub_1C2E73D24();
    v12 = sub_1C2E74884();

    return v12;
  }

  else
  {
    (*(v5 + 16))(v7, a1, v4);
    return sub_1C2E74894();
  }
}

uint64_t sub_1C2D442C0(uint64_t a1)
{
  v2 = sub_1C2E72244();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  sub_1C2C736A4(a1, &v18 - v10, &qword_1EC0603A8, &unk_1C2E83AC0);
  v12 = (*(v3 + 48))(v11, 1, v2);
  result = 0;
  if (v12 != 1)
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v5, v8, v2);
    v14 = (*(v3 + 88))(v5, v2);
    if (v14 == *MEMORY[0x1E6995E70])
    {
      v15 = sub_1C2E74F84();
    }

    else if (v14 == *MEMORY[0x1E6995E80])
    {
      v15 = sub_1C2E74FA4();
    }

    else
    {
      if (v14 != *MEMORY[0x1E6995E78])
      {
        v17 = *(v3 + 8);
        v17(v8, v2);
        v17(v5, v2);
        return 0;
      }

      v15 = sub_1C2E74F54();
    }

    v16 = v15;
    (*(v3 + 8))(v8, v2);
    return v16;
  }

  return result;
}

void sub_1C2D44538(uint64_t a1)
{
  sub_1C2D446C4(319, &qword_1EC060438, MEMORY[0x1E6968848]);
  if (v1 <= 0x3F)
  {
    sub_1C2D446C4(319, &qword_1EC060440, MEMORY[0x1E6995E88]);
    if (v2 <= 0x3F)
    {
      sub_1C2E71AA4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C2D446C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2E76424();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C2D44728()
{
  result = qword_1EC060448;
  if (!qword_1EC060448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060450, &qword_1C2E83CF0);
    sub_1C2D447AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060448);
  }

  return result;
}

unint64_t sub_1C2D447AC()
{
  result = qword_1EC060458;
  if (!qword_1EC060458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0603F8, &qword_1C2E83B68);
    sub_1C2C94F38(&qword_1EC060418, &qword_1EC0603F0, &qword_1C2E83B60, MEMORY[0x1E6981870]);
    sub_1C2C94F38(&qword_1EC060420, &qword_1EC0603E0, &qword_1C2E83B50, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC060458);
  }

  return result;
}

uint64_t sub_1C2D44890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E72244();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8, &unk_1C2E83AC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060490, &qword_1C2E83DD8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1C2C736A4(a1, &v21 - v12, &qword_1EC0603A8, &unk_1C2E83AC0);
  sub_1C2C736A4(a2, &v13[v15], &qword_1EC0603A8, &unk_1C2E83AC0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C2C736A4(v13, v10, &qword_1EC0603A8, &unk_1C2E83AC0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C2D44FD4(&qword_1EC060498, MEMORY[0x1E6995E88], MEMORY[0x1E6995E90]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v13, &qword_1EC0603A8, &unk_1C2E83AC0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v13, &qword_1EC060490, &qword_1C2E83DD8);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v13, &qword_1EC0603A8, &unk_1C2E83AC0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2D44BB0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1C2E71664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088, &qword_1C2E80EE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060480, &qword_1C2E83DD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  sub_1C2C736A4(a1, &v22 - v13, &qword_1EC05E088, &qword_1C2E80EE0);
  sub_1C2C736A4(a2, &v14[v16], &qword_1EC05E088, &qword_1C2E80EE0);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) != 1)
  {
    sub_1C2C736A4(v14, v11, &qword_1EC05E088, &qword_1C2E80EE0);
    if (v17(&v14[v16], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v14[v16], v5);
      sub_1C2D44FD4(&qword_1EC060488, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
      v19 = sub_1C2E75BA4();
      v20 = *(v6 + 8);
      v20(v8, v5);
      v20(v11, v5);
      sub_1C2C73644(v14, &qword_1EC05E088, &qword_1C2E80EE0);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v6 + 8))(v11, v5);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v5) != 1)
  {
LABEL_6:
    sub_1C2C73644(v14, &qword_1EC060480, &qword_1C2E83DD0);
    v18 = 1;
    return v18 & 1;
  }

  sub_1C2C73644(v14, &qword_1EC05E088, &qword_1C2E80EE0);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C2D44F38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C2D44FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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